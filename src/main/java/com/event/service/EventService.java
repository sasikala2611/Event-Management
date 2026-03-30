package com.event.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import com.event.model.Event;

@Service
public class EventService {

	private static List<Event> events = new ArrayList<>();

	public void addEvent(Event event) {
		events.add(event);
	}

	public List<Event> getAllEvents() {
		return events;
	}

	public Event getEventByName(String name) {
		for (Event event : events) {
			if (event.getEventName().equals(name)) {
				return event;
			}
		}
		return null;
	}

	public void updateEvent(Event updatedEvent) {
		for (Event event : events) {
			if (event.getEventName().equals(updatedEvent.getEventName())) {
				event.setDate(updatedEvent.getDate());
				event.setVenue(updatedEvent.getVenue());
				event.setOrganizer(updatedEvent.getOrganizer());
				event.setStatus(updatedEvent.getStatus());
				break;
			}
		}
	}

	public void deleteEvent(String name) {
		events.removeIf(event -> event.getEventName().equals(name));
	}

	public Event searchEventByName(String name) {
		for (Event event : events) {
			if (event.getEventName().equalsIgnoreCase(name)) {
				return event;
			}
		}
		return null;
	}

	public int getTotalEvents() {
		return events.size();
	}

	public int getUpcomingCount() {
		int count = 0;
		for (Event event : events) {
			if (event.getStatus().equalsIgnoreCase("Upcoming")) {
				count++;
			}
		}
		return count;
	}

	public int getCompletedCount() {
		int count = 0;
		for (Event event : events) {
			if (event.getStatus().equalsIgnoreCase("Completed")) {
				count++;
			}
		}
		return count;
	}

}