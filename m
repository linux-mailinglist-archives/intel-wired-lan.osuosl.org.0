Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8EC82311D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F57A419E9;
	Wed,  3 Jan 2024 16:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F57A419E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298710;
	bh=F6DDAwnJyc7gqeXQy1eTazJ5RGN2XJInOFeV5shtaVI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=os6mr463NJR6Mda6pLAsuf7vhxkDTwtq9wwdipmkE/gdV/k378LGcaeB1rZFVPfqY
	 EPFXlpT9k5bSfFUMyQa4KhK6+85ynC19wxA1UFBg9btjOIijvMs7bsUpjftO8+v2JW
	 a8Z6d2NfW1YNAH/2DGdMPq2DvvjhJk2AzghhfKB8B/mFuZOiCOTQMyiAdKCe2aVnIs
	 uZ2E5qz/4v5qjK3knvKOaGZSKGdmxqtaXmWZwrCfdL4Q84dVh1tF3MKTNXqL+gWGbC
	 C0I2MowIlREhVE18/i6cEnG8oYkjeCAtr1RTDKIqgbWWvtqILFIm3qCkI+TCryXD7H
	 Zl2pLfZeK2B5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vWFlymbPcsGN; Wed,  3 Jan 2024 16:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 400DD419B2;
	Wed,  3 Jan 2024 16:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 400DD419B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 813281BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65048417B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65048417B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dFLqbyxuPhs3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 11:56:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4B1541775
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4B1541775
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="428169549"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="428169549"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:56:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="1111348097"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="1111348097"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2024 03:56:41 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  3 Jan 2024 17:25:57 +0530
Message-Id: <20240103115602.19044-7-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
References: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704283008; x=1735819008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C3p46caV8CRS4j/dEHJyoZnEtIablwurupbiv6nNHMI=;
 b=Joy6xZsYPVJ9sEqGtDp0gBRpCZFaYlsLlOc6W/ep4ZcufDCBhznB+iSn
 VRT6I0sp+40RtIQytLfb/SK14af7Ljk2CZApkVDk1zkr7dhLbZlritlTD
 V8lxy3eXhB7Muu4x9Hd9dBbccNoJRPHJkZ/LXC0VdDu77p1R4N5ob5TBC
 f1R9kVPUVenFfIHkTWuEOH9iM16MjnW8pAKONgo+BBNVgmxQ00KAGRL0o
 HxxD4+SBikXqsMH0vGLjFil+t99zsfVXj8pIplWGWYk59Sbu/g60vGPYW
 ODgfAFcrvL/tkuFZrEIt86d69ofpxHz1SoRREMk7WWPXJglkVGiDjmcCx
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Joy6xZsY
Subject: [Intel-wired-lan] [RFC PATCH v3 06/11] ALSA: hda: remove
 convert_art_to_tsc()
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
Cc: christopher.s.hall@intel.com, lakshmi.sowjanya.d@intel.com,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, jesse.brandeburg@intel.com,
 linux-sound@vger.kernel.org, alexandre.torgue@foss.st.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 sound/pci/hda/hda_controller.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/pci/hda/hda_controller.c b/sound/pci/hda/hda_controller.c
index c42e9ffff9db..787521d7f3b1 100644
--- a/sound/pci/hda/hda_controller.c
+++ b/sound/pci/hda/hda_controller.c
@@ -457,7 +457,8 @@ static int azx_get_sync_time(ktime_t *device,
 	*device = ktime_add_ns(*device, (wallclk_cycles * NSEC_PER_SEC) /
 			       ((HDA_MAX_CYCLE_VALUE + 1) * runtime->rate));
 
-	*system = convert_art_to_tsc(tsc_counter);
+	system->cycles = tsc_counter;
+	system->cs_id = CSID_X86_ART;
 
 	return 0;
 }
-- 
2.35.3

