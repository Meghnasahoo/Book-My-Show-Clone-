package com.movie.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Feeduser")
public class Feedback {
	
		@Id
		@Column(name="id")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private Integer id;

		@Column(name="name")
		private String name;


		@Column(name="feedback")
		private String feedback;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}


		public String getFeedback() {
			return feedback;
		}

		public void setFeedback(String feedback) {
			this.feedback = feedback;
		}
		
		
	}

