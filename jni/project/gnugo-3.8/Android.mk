# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := gnuGo-3.8

LOCAL_CFLAGS := -DHAVE_CONFIG_H \
-I$(LOCAL_PATH) \
-I$(LOCAL_PATH)/engine \
-I$(LOCAL_PATH)/interface \
-I$(LOCAL_PATH)/patterns \
-I$(LOCAL_PATH)/sgf \
-I$(LOCAL_PATH)/utils

LOCAL_SRC_FILES := \
\
engine/aftermath.c \
engine/board.c \
engine/boardlib.c \
engine/breakin.c \
engine/cache.c \
engine/clock.c \
engine/combination.c \
engine/dragon.c \
engine/endgame.c \
engine/filllib.c \
engine/fuseki.c \
engine/genmove.c \
engine/globals.c \
engine/handicap.c \
engine/hash.c \
engine/influence.c \
engine/interface.c \
engine/matchpat.c \
engine/montecarlo.c \
engine/move_reasons.c \
engine/movelist.c \
engine/optics.c \
engine/oracle.c \
engine/owl.c \
engine/persistent.c \
engine/printutils.c \
engine/readconnect.c \
engine/reading.c \
engine/semeai.c \
engine/sgfdecide.c \
engine/sgffile.c \
engine/shapes.c \
engine/showbord.c \
engine/surround.c \
engine/unconditional.c \
engine/utils.c \
engine/value_moves.c \
engine/worm.c \
\
interface/gtp.c \
interface/play_gtp.c \
interface/java_bridge.c \
\
patterns/aa_attackpat.c \
patterns/apatterns.c \
patterns/barriers.c \
patterns/conn.c \
patterns/connections.c \
patterns/dfa.c \
patterns/dpatterns.c \
patterns/eyes.c \
patterns/fuseki9.c \
patterns/fuseki13.c \
patterns/fuseki19.c \
patterns/fusekipat.c \
patterns/handipat.c \
patterns/helpers.c \
patterns/influence.c \
patterns/josekidb.c \
patterns/mcpat.c \
patterns/oraclepat.c \
patterns/owl_attackpat.c \
patterns/owl_defendpat.c \
patterns/owl_vital_apat.c \
patterns/endgame.c \
patterns/patterns.c \
patterns/transform.c \
\
sgf/sgf_utils.c \
sgf/sgfnode.c \
sgf/sgftree.c \
\
utils/gg_utils.c \
utils/random.c \
utils/winsocket.c

include $(BUILD_SHARED_LIBRARY)
