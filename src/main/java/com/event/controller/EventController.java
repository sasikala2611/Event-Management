package com.event.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.event.model.Event;
import com.event.service.EventService;

@Controller
public class EventController {

	@Autowired
	EventService service;

	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("totalEvents", service.getTotalEvents());
		model.addAttribute("upcomingCount", service.getUpcomingCount());
		model.addAttribute("completedCount", service.getCompletedCount());

		return "dashboard";
	}

	@PostMapping("/addEvent")
	public String addEvent(@ModelAttribute Event event) {
		service.addEvent(event);
		return "redirect:/";
	}

	@GetMapping("/addEventPage")
	public String addEventPage() {
		return "eventHome";
	}

	@GetMapping("/viewEvents")
	public String viewEvents(Model model) {
		model.addAttribute("events", service.getAllEvents());
		return "viewEvents";
	}

	@GetMapping("/editEvent")
	public String editEvent(@RequestParam("name") String name, Model model) {
		Event event = service.getEventByName(name);
		model.addAttribute("event", event);
		return "editEvent";
	}

	@PostMapping("/updateEvent")
	public String updateEvent(@ModelAttribute Event event) {
		service.updateEvent(event);
		return "redirect:/viewEvents";
	}

	@GetMapping("/deleteEvent")
	public String deleteEvent(@RequestParam("name") String name, Model model) {
		Event event = service.getEventByName(name);
		model.addAttribute("event", event);
		return "deleteEvent";
	}

	@GetMapping("/confirmDelete")
	public String confirmDelete(@RequestParam("name") String name) {
		service.deleteEvent(name);
		return "redirect:/viewEvents";
	}

	@GetMapping("/search")
	public String searchPage() {
		return "searchEvent";
	}

	@GetMapping("/searchEvent")
	public String searchEvent(@RequestParam("name") String name, Model model) {
		Event event = service.searchEventByName(name);
		model.addAttribute("event", event);
		return "searchEvent";
	}

	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("totalEvents", service.getTotalEvents());
		model.addAttribute("upcomingCount", service.getUpcomingCount());
		model.addAttribute("completedCount", service.getCompletedCount());

		return "dashboard";
	}
}
