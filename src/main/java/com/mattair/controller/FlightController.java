package com.mattair.controller;

import com.mattair.dto.FlightDto;

import java.util.List;

public interface FlightController {

    Iterable<FlightDto> getAllFlights();
}
