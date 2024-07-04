#include <SDL3/SDL.h>
#include <SDL3/SDL_error.h>
#include <SDL3/SDL_events.h>
#include <SDL3/SDL_init.h>
#include <SDL3/SDL_oldnames.h>
#include <SDL3/SDL_pixels.h>
#include <SDL3/SDL_surface.h>
#include <SDL3/SDL_video.h>
#include <stdio.h>

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

int main(int argc, char *args[]) {
  SDL_Window *window = NULL;

  SDL_Surface *screenSurface = NULL;

  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
  } else {
    window = SDL_CreateWindow("HelloSDL", SCREEN_WIDTH, SCREEN_HEIGHT,
                              SDL_WindowFlags());
    if (window == NULL) {
      printf("Window could not be created: %s\n", SDL_GetError());
    } else {
      screenSurface = SDL_GetWindowSurface(window);

      SDL_FillSurfaceRect(screenSurface, NULL,
                          SDL_MapRGB(screenSurface->format, 0xFF, 0xFF, 0xFF));

      SDL_UpdateWindowSurface(window);
      SDL_Event e;
      bool quit;
      while (quit == false) {
        while (SDL_PollEvent(&e)) {
          if (e.type == SDL_EVENT_QUIT) {
            quit = true;
          }
        }
      }
    }
  }
  SDL_DestroyWindow(window);
  SDL_Quit();

  return 0;
}
