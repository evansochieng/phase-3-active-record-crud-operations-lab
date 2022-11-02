class Movie < ActiveRecord::Base
    #Create methods
    #create a new record
    def self.create_with_title(title)
        self.create(title: title)
    end

    #Read methods
    #return first item
    def self.first_movie
        self.first
    end

    #return last movie
    def self.last_movie
        self.last
    end

    #return movie count
    def self.movie_count
        self.count
    end

    #find by id
    def self.find_movie_with_id(id)
        self.find(id)
    end

    #find by attribute
    def self.find_movie_with_attributes(*attrs)
        self.find_by(*attrs)
    end

    #movies released after 2022
    def self.find_movies_after_2002
        self.where('movies.release_date > ?', 2002)
    end

    #Update Methods
    ##update_with_attributes
    def update_with_attributes(new_attr_hash)
        self.update(new_attr_hash)
    end

    #update all titles
    def self.update_all_titles(new_title)
        self.update(title: new_title)
    end

    #Delete methods
    #delete by id
    def self.delete_by_id(id)
        self.destroy_by(id: id)
    end

    #delete all
    def self.delete_all_movies
        self.destroy_all
    end
end