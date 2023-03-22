NAME = Inception

.SILENT:

all: $(NAME)

$(NAME):
	docker-compose -f srcs/docker-compose.yml build && docker-compose -f srcs/docker-compose.yml up -d

clean:
	docker-compose -f srcs/docker-compose.yml down --volumes

fclean: clean
	docker rmi nginx mariadb wordpress ; yes | docker system prune -a

re: clean all
