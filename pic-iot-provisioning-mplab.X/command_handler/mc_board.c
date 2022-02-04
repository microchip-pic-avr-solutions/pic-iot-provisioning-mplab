#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <xc.h>

#include "parser/mc_parser.h"
#include "parser/mc_error.h"
#include "mc_commands.h"
#include "mc_board.h"
#include "../winc_commands.h"

#define LED_ON ("ON")
#define LED_OFF ("OFF")

#define VERSION_WINC ("WINC")

static void led_error_set_output(void) { _TRISB4 = 0; }
static void led_error_set(bool on) { _LATB4 = on ? 0 : 1; }
static bool led_error_is_on(void) { return _RB4 == 0; }

static void led_data_set_output(void) { _TRISC3 = 0; }
static void led_data_set(bool on) { _LATC3 = on ? 0 : 1; }
static bool led_data_is_on(void) { return _RC3 == 0; }

static void led_conn_set_output(void) { _TRISC4 = 0; }
static void led_conn_set(bool on) { _LATC4 = on ? 0 : 1; }
static bool led_conn_is_on(void) { return _RC4 == 0; }

static void led_wifi_set_output(void) { _TRISC5 = 0; }
static void led_wifi_set(bool on) { _LATC5 = on ? 0 : 1; }
static bool led_wifi_is_on(void) { return _RC5 == 0; }

static uint8_t parse_leds(const char *ledstr);

static uint16_t get_winc_version_string(char *version_string, uint16_t *version_length);

struct led_name
{
    const char* name;
    void (*set_output) (void);
    void (*set) (bool on);
    bool (*is_on) (void);
};

struct led_name led_table[] =
{
    {"ERROR", led_error_set_output, led_error_set, led_error_is_on},
    {"DATA", led_data_set_output, led_data_set, led_data_is_on},
    {"CONN", led_conn_set_output, led_conn_set, led_conn_is_on},
    {"WIFI", led_wifi_set_output, led_wifi_set, led_wifi_is_on}
};

struct led_name *active_led;



void mc_board_init( void )
{
    // All LEDs enabled and off
    for (uint8_t i = 0; i<4; i++) {
        led_table[i].set_output();
        led_table[i].set(false);
    }
}



uint16_t mc_set_led(uint8_t argc, char *argv[], uint8_t *data, uint16_t *data_length)
{
    if (argc != 2) {
        return MC_STATUS_BAD_ARGUMENT_COUNT;

    }
    uint8_t status = parse_leds(argv[0]);
    if (status) {
        return status;
    }

    if (mc_match_string(LED_ON,argv[1])) {
        active_led->set(true);
        return MC_STATUS_OK;
    }

    if (mc_match_string(LED_OFF,argv[1])) {
        active_led->set(false);
        return MC_STATUS_OK;
    }

    return MC_STATUS_BAD_ARGUMENT_VALUE;
}



uint16_t mc_get_led(uint8_t argc, char *argv[], uint8_t *data, uint16_t *data_length)
{
    if (argc != 1) {
        return MC_STATUS_BAD_ARGUMENT_COUNT;
    }
    uint8_t status = parse_leds(argv[0]);
    if (status) {
        return status;
    }
    if (active_led->is_on()) {
        *data_length = snprintf((char*)data,MC_DATA_BUFFER_LENGTH,"LED:%s is ON\n\r",active_led->name);
    } else {
        *data_length = snprintf((char*)data,MC_DATA_BUFFER_LENGTH,"LED:%s is OFF\n\r",active_led->name);
    }

    return MC_STATUS_OK;
}



static uint8_t parse_leds(const char *ledstr)
{
    for (uint8_t i = 0; i < sizeof(led_table)/sizeof(struct led_name); i++) {
        if (mc_match_string(led_table[i].name,ledstr)) {
            active_led = &led_table[i];
            return MC_STATUS_OK;
        }
    }
    return MC_STATUS_BAD_ARGUMENT_VALUE;
}



uint16_t mc_reset(uint8_t argc, char *argv[], uint8_t *data, uint16_t *data_length)
{
    // Software reset

    asm("RESET");

    // Execution will never reach this statement due to the reset, but it keeps
    // the compiler happy
    return MC_STATUS_OK;
}

// Extension to mc_version in mc_housekeeping for board specific versions
// The version_arg is the argument to the version command, example:
// MC+VERSION=WINC - The "WINC" part is the argument to be sent in as the version_arg argument
// The version argument is the buffer where the ready formatted version string will be returned
// The value version_length points to will be updated according to the length of the version string
uint16_t get_board_version(char* version_arg, char *version, uint16_t *version_length)
{
    if (mc_match_string(VERSION_WINC, version_arg)) {
        return get_winc_version_string(version, version_length);        
    }

    // Unknown version argument
    return MC_STATUS_BAD_ARGUMENT_VALUE;
}

// Get all board specific versions as one string (useful for MC+ABOUT command)
uint16_t get_board_versions(char *versions, uint16_t *version_length)
{
    // The only board specific version for this board is the WINC version
    return get_winc_version_string(versions, version_length);
}

/*
 *  Read out WINC version information and convert to a human readable string
 */
static uint16_t get_winc_version_string(char *version_string, uint16_t *version_length)
{
    uint16_t status;
    tstrM2mRev winc_version;

    status = read_winc_version(&winc_version);
    if (status != MC_STATUS_OK) {
        return status;
    }

    *version_length = snprintf(version_string, 
                               BOARD_VERSIONS_MAX_LENGTH,
                               "WINC firmware %d.%d.%d\r\nWINC driver %d.%d.%d\r\n",
                               winc_version.u8FirmwareMajor,
                               winc_version.u8FirmwareMinor,
                               winc_version.u8FirmwarePatch,
                               winc_version.u8DriverMajor,
                               winc_version.u8DriverMinor,
                               winc_version.u8DriverPatch);

    return MC_STATUS_OK;
}