Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AE689F12C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:48:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9A8660853;
	Wed, 10 Apr 2024 11:48:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bARvQuO1OeUu; Wed, 10 Apr 2024 11:48:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B930060857
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749721;
	bh=JE1W2OThhxrweP4GB3+Wjo8nXjcbJgO62AN7qtZSKOI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rx32HTlDqZgw5N0hSGnQN/NUivOyuW5LbE0t8U/KWNJAWmGDGjKKfvH4XhGYvBx7r
	 hTHh71Mp5QOU3pemTKeDvbM3LUMIUth3mvsbIiKWttUosgeiDwMgpMIgzVEL1vvVIs
	 uihskXLnvtAyGcqs1zclSPybkvfwIdr67RXug5/XsM5QS6wVjr5+XgByKBtuC0VvTP
	 HG8csJf2XTSFwkRfGix6LlBveWZZ7nQ+DUP0Ohbc5pL6FubuIPXHWWmAujugIHjMzS
	 QYNKS8x/UX5gCKNsOs01MkBkb9A+eKo5IUpQ9am7tmUjke2NpLOvC39YkDBVZT1GME
	 b9LpTS/ibmK/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B930060857;
	Wed, 10 Apr 2024 11:48:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C45C1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07CAF607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0v3rBqZhPj8n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:48:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 78A4760845
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78A4760845
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78A4760845
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:37 +0000 (UTC)
X-CSE-ConnectionGUID: ldJAWgS4T8mHlqFY0+SOAA==
X-CSE-MsgGUID: PKcru6/1Q0G4MHNuhDqNdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944046"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944046"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:48:37 -0700
X-CSE-ConnectionGUID: cShSBgw5Tu+rDMKH3Ibh4A==
X-CSE-MsgGUID: nHnq7B66TIepyBTD5O5gWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769234"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:48:30 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:17 +0530
Message-Id: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749719; x=1744285719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=souuJwWgY2tifwYTnw9HWDzS9btUpbdg1MYPZs6YGPU=;
 b=BFNn2GKtXf8LdQM9b0P/PJ5MinIJFkYh/I561wnzFvLlfDAdBx/K4ZoF
 XpNDKqoAfmovC94PbOQ8ptUIyDHb3+GaNj2/S6uZ3VK7i00dIbeLXkVyT
 /4deT7HALqwiAtIqA7M8BIZtNoPdWby7Tn+zFMpw130lgvfoDDMkP3Ezj
 Ae4Aat/BVATZf8fi982UzxnvzpXcPD9Cgj3XaN86vz3xp/UjYPUcwqg1D
 LJc+5QxjmcYGRu/vNcgxcZg9szXc03unJtV0z5NjhvMVWdfeYOrNoqiox
 6+aMGZz3wVsdYZ9+VbuaLXlQKFQUZwi2R4qFX2vdWd+xc+nBpKfn9x3Ry
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BFNn2GKt
Subject: [Intel-wired-lan] [PATCH v6 00/11] Add support for Intel PPS
 Generator
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

The goal of the PPS (Pulse Per Second) hardware/software is to generate a
signal from the system on a wire so that some third-party hardware can
observe that signal and judge how close the system's time is to another
system or piece of hardware.

Existing methods (like parallel ports) require software to flip a bit at
just the right time to create a PPS signal. Many things can prevent
software from doing this precisely. This (Timed I/O) method is better
because software only "arms" the hardware in advance and then depends on
the hardware to "fire" and flip the signal at just the right time.

To generate a PPS signal with this new hardware, the kernel wakes up
twice a second, once for 1->0 edge and other for the 0->1 edge. It does
this shortly (~10ms) before the actual change in the signal needs to be
made. It computes the TSC value at which edge will happen, convert to a
value hardware understands and program this value to Timed I/O hardware.
The actual edge transition happens without any further action from the
kernel.

The result here is a signal coming out of the system that is roughly
1,000 times more accurate than the old methods. If the system is heavily
loaded, the difference in accuracy is larger in old methods.

Application Interface:
The API to use Timed I/O is very simple. It is enabled and disabled by
writing a '1' or '0' value to the sysfs enable attribute associated with
the Timed I/O PPS device. Each Timed I/O pin is represented by a PPS
device. When enabled, a pulse-per-second (PPS) synchronized with the
system clock is continuously produced on the Timed I/O pin, otherwise it
is pulled low. 

The Timed I/O signal on the motherboard is enabled in the BIOS setup.
Intel Advanced Menu -> PCH IO Configuration -> Timed I/O <Enable>

References:
https://en.wikipedia.org/wiki/Pulse-per-second_signal
https://drive.google.com/file/d/1vkBRRDuELmY8I3FlfOZaEBp-DxLW6t_V/view
https://youtu.be/JLUTT-lrDqw

Patch 1 adds base clock properties in clocksource structure
Patch 2 adds function to convert realtime to base clock
Patch 3 - 7 removes reference to convert_art_to_tsc function across
drivers
Patch 8 removes the convert art to tsc functions which are no longer
used
Patch 9 adds the pps(pulse per second) generator tio driver to the pps
subsystem.
Patch 10 documentation and usage of the pps tio generator module.
Patch 11 includes documentation for sysfs interface.

Please help to review the changes.

Thanks in advance,
Sowjanya

Changes from v2:
 - Split patch 1 to remove the functions in later stages.
 - Include required headers in pps_gen_tio.

Changes from v3:
 - Corrections in Documentation.
 - Introducing non-RFC version of the patch series.

Changes from v4:
 - Setting id in ice_ptp
 - Modified conversion logic in convert_base_to_cs.
 - Included the usage of the APIs in the commit message of 2nd patch.

Changes from v5:
 - Change nsecs variable to use_nsecs.
 - Change order of 1&2 patches and modify the commit message.
 - Add sysfs abi file entry in MAINTAINERS file.
 - Add check to find if any event is missed and diable hardware
   accordingly.

Lakshmi Sowjanya D (6):
  x86/tsc: Add base clock properties in clocksource structure
  x86/tsc: Remove art to tsc conversion functions which are obsolete
  timekeeping: Add function to convert realtime to base clock
  pps: generators: Add PPS Generator TIO Driver
  Documentation: driver-api: pps: Add Intel Timed I/O PPS generator
  ABI: pps: Add ABI documentation for Intel TIO

Thomas Gleixner (5):
  e1000e: remove convert_art_to_tsc()
  igc: remove convert_art_to_tsc()
  stmmac: intel: remove convert_art_to_tsc()
  ALSA: hda: remove convert_art_to_tsc()
  ice/ptp: remove convert_art_to_tsc()

 .../ABI/testing/sysfs-platform-pps-tio        |   7 +
 Documentation/driver-api/pps.rst              |  22 ++
 MAINTAINERS                                   |   1 +
 arch/x86/include/asm/tsc.h                    |   3 -
 arch/x86/kernel/tsc.c                         |  92 ++-----
 drivers/net/ethernet/intel/e1000e/ptp.c       |   3 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   3 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c      |   6 +-
 .../net/ethernet/stmicro/stmmac/dwmac-intel.c |   3 +-
 drivers/pps/generators/Kconfig                |  16 ++
 drivers/pps/generators/Makefile               |   1 +
 drivers/pps/generators/pps_gen_tio.c          | 258 ++++++++++++++++++
 include/linux/clocksource.h                   |  27 ++
 include/linux/clocksource_ids.h               |   1 +
 include/linux/timekeeping.h                   |   6 +
 kernel/time/timekeeping.c                     | 107 +++++++-
 sound/pci/hda/hda_controller.c                |   3 +-
 17 files changed, 476 insertions(+), 83 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio
 create mode 100644 drivers/pps/generators/pps_gen_tio.c

-- 
2.35.3

