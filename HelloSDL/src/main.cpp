#include <SDL2/SDL.h>
#include <SDL2/SDL_error.h>
#include <SDL2/SDL_events.h>
#include <SDL2/SDL_pixels.h>
#include <SDL2/SDL_surface.h>
#include <SDL2/SDL_video.h>
#include <stdio.h>

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

bool init();

bool loadMedia();

void close();

SDL_Window *gWindow = NULL;

SDL_Surface *gScreenSurface = NULL;

SDL_Surface *gHelloWorld = NULL;

bool init() {
  bool success = true;

  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
    success = false;
  } else {
    gWindow = SDL_CreateWindow("SDL Hello World", SDL_WINDOWPOS_UNDEFINED,
                               SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH,
                               SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    if (gWindow == NULL) {
      printf("Could not create window! SDL_Error: %s\n", SDL_GetError());
      success = false;
    } else {
      gScreenSurface = SDL_GetWindowSurface(gWindow);
    }
  }
  return success;
}

bool loadMedia() {
  bool success = true;

  gHelloWorld = SDL_LoadBMP("../hello_world.bmp");
  if (gHelloWorld == NULL) {
    printf("SDL could not upload image! SDL_Error: %s\n", SDL_GetError());
    success = false;
  }
  return success;
}

void close() {
  SDL_FreeSurface(gHelloWorld);
  gHelloWorld = NULL;

  SDL_DestroyWindow(gWindow);
  gWindow = NULL;

  SDL_Quit();
}

int main(int argc, char *args[]) {
  if (!init()) {
    printf("Failed to initialize!\n");
  } else {
    if (!loadMedia()) {
      printf("Failed to load media!\n");
    } else {
      SDL_BlitSurface(gHelloWorld, NULL, gScreenSurface, NULL);
      SDL_UpdateWindowSurface(gWindow);
      SDL_Event e;
      bool quit = false;

      while (quit == false) {
        while (SDL_PollEvent(&e)) {
          if (e.type == SDL_QUIT) {
            quit = true;
          }
        }
      }
    }
  }
  close();
  return 0;
}
