def return_genetic_algorithm_parameters():
    """Return default parameters for the knapsack genetic algorithm."""
    num_items = 32
    population_size = 100
    num_elite = 5
    num_crossover = 80
    num_mutated = 15  # num_elite + num_crossover + num_mutated == population_size

    return {
        "population_size": population_size,
        "chromosome_length": num_items,
        "num_elite": num_elite,
        "num_crossover": num_crossover,
        "num_mutated": num_mutated,
        "mutation_rate": 1 / num_items,
        "crossover_rate": 0.8,
        "generations": 10000,
        "tournament_size": 5,
    }
