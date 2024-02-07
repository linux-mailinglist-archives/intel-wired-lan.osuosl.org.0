Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F7284C4A0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 07:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6172B6136F;
	Wed,  7 Feb 2024 06:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FaL6Swsv5oM3; Wed,  7 Feb 2024 06:09:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC83061364
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707286148;
	bh=5XqyLgu/Kmy7i9eqIhdlVwDqU8zRtsp5uyMY86j5MQA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0l580qVKbVmc0hMqVFhmsJEZ50kLecJ3HIhGNiYWKBUj2lfUag+wNQSFUrIZ6Grco
	 ePEs4vOGYLbwHgnJY0xlvlG0OWVOtPNTFQI+VI2TaCiKWUB9s3S9S8CLDn0LnWwHAf
	 uZ73MXUE9n3v2Z52Lk//MqNLG8Ijk1TGK+WetS7JQCmnLlNPbyWUWuJ8IlBOk6f9au
	 xKBdZBaexaomyRl6Pkc7z5oT02prZw70JQiQAEfcXv6FWlvzD4gWOhCr6KyL6XUfN6
	 sBI7KVUZ8KMa4bHIgNqR56fY+Zy6OZ0VYBJmh84naaRiRdyMNXMhYg12O6q5WsYxo9
	 jZigMTnIxiAlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC83061364;
	Wed,  7 Feb 2024 06:09:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE9931BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA43161361
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5XnQEJGdEIDj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 06:09:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C688961360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C688961360
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C688961360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="436053917"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="436053917"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:09:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5849712"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa004.fm.intel.com with ESMTP; 06 Feb 2024 22:08:55 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  7 Feb 2024 11:38:43 +0530
Message-Id: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707286144; x=1738822144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vs1FYrqvUZywrcGV2m/wp+FHWnAAr2xnvErEgB/L2sU=;
 b=dlYnArTcmXWwypzRs7AYFO4W4rhQxHVKYOtjAaqbM7NJh5b8wH2n0e3p
 EZVDwbbeJ1B4a/XKIx0z0TTFsCIZxHkPiZdzemnYANsYKO2Vg86q+bBXR
 W3oBT1q22lu42e2evTnigfWcW5Ttq2TJbjRhOi0HAqwTYRWcF8YeZTjKE
 cjDGayIvNneuoxslWBCM/WNssuAzJGz3GeBmXdiY8SoGOXDByACOfgr1S
 4vftiP9CR9gYX30HqYabws4nc7TcVYRSAheiCrC33M404taAJXHd+NzcM
 VpKlFJsqHZXAkRvy1fC8rFdKAC9jwKbm1ZH6/7YjSEu3pa2j8Lv88omz2
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dlYnArTc
Subject: [Intel-wired-lan] [PATCH v4 00/11] Add support for Intel PPS
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
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

The goal of the PPS(Pulse Per Second) hardware/software is to generate a
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
device. When enabled, a pulse-per-second(PPS) synchronized with the
system clock is continuously produced on the Timed I/O pin, otherwise it
is pulled low.

The Timed I/O signal on the motherboard is enabled in the BIOS setup.

This patchset is dependent on an on-going patch series [1].

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

[1] https://lore.kernel.org/all/20240201010453.2212371-3-peter.hilber@opensynergy.com/T/

Please help to review the changes.

Thanks in advance,
Sowjanya

Changes from v2:
 - Split patch 1 to remove the functions in later stages.
 - Include required headers in pps_gen_tio.

Changes from v3:
 - Corrections in Documentation.
 - Introducing non-RFC version of the patch series

Lakshmi Sowjanya D (6):
  x86/tsc: Add base clock properties in clocksource structure
  timekeeping: Add function to convert realtime to base clock
  x86/tsc: Remove art to tsc conversion functions which are obsolete
  pps: generators: Add PPS Generator TIO Driver
  Documentation: driver-api: pps: Add Intel Timed I/O PPS generator
  ABI: pps: Add ABI documentation for Intel TIO

Thomas Gleixner (5):
  e10002: remove convert_art_to_tsc()
  igc: remove convert_art_to_tsc()
  stmmac: intel: remove convert_art_to_tsc()
  ALSA: hda: remove convert_art_to_tsc()
  ice/ptp: remove convert_art_to_tsc()

 .../ABI/testing/sysfs-platform-pps-tio        |   7 +
 Documentation/driver-api/pps.rst              |  22 ++
 arch/x86/include/asm/tsc.h                    |   3 -
 arch/x86/kernel/tsc.c                         |  90 ++-----
 drivers/net/ethernet/intel/e1000e/ptp.c       |   3 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   2 +-
 drivers/net/ethernet/intel/igc/igc_ptp.c      |   6 +-
 .../net/ethernet/stmicro/stmmac/dwmac-intel.c |   3 +-
 drivers/pps/generators/Kconfig                |  16 ++
 drivers/pps/generators/Makefile               |   1 +
 drivers/pps/generators/pps_gen_tio.c          | 245 ++++++++++++++++++
 include/linux/clocksource.h                   |  27 ++
 include/linux/clocksource_ids.h               |   1 +
 include/linux/timekeeping.h                   |   6 +
 kernel/time/timekeeping.c                     | 112 +++++++-
 sound/pci/hda/hda_controller.c                |   3 +-
 16 files changed, 466 insertions(+), 81 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio
 create mode 100644 drivers/pps/generators/pps_gen_tio.c

-- 
2.35.3

