package com.Entity;

public class Flight {

	private int id;
	private String flightName;
	private String date;
	private String source;
	private String destination;
	private String price;
	private String duration;

	public Flight() {

	}

	public Flight(String flightName, String date, String source, String destination, String price, String duration) {
		this.flightName = flightName;
		this.date = date;
		this.source = source;
		this.destination = destination;
		this.price = price;
		this.duration = duration;
	}

	public Flight(int id, String flightName, String date, String source, String destination, String price,
			String duration) {
		super();
		this.id = id;
		this.flightName = flightName;
		this.date = date;
		this.source = source;
		this.destination = destination;
		this.price = price;
		this.duration = duration;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "Flight [id=" + id + ", flightName=" + flightName + ", date=" + date + ", source=" + source
				+ ", destination=" + destination + ", price=" + price + ", duration=" + duration + "]";
	}

}
