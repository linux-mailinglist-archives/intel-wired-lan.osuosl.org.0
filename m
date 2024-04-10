Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9693E89F136
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A71E60897;
	Wed, 10 Apr 2024 11:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 20qVIsSlfExl; Wed, 10 Apr 2024 11:49:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABCAB608A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749753;
	bh=sx9hCoRsk1hQP+wQSHdsR78bBWM/LX54nhJ5yAXu9lE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DNOmn5Kzp7jQINh3AWURJxO9zNJAIU9p83xIGoth3ySIxbNTn4RGO+qhOdVJgO07v
	 jAbv4h7TiBh4IF4RNY2Ize0L8NGrA2+WqjhqDaE+h8JLZDzws9r/snSwvHREyt7Occ
	 PX2wuX9fXvfp+6M4g9SYeJ0JU5W0bN9dNW3Bs3mtDcL0RKeS/o1brab0TyJlZHpbAS
	 hos/UoSC3GF2Z05XmWw8+tB46c8dCoOJzgmk0Tu/d74jy2paGdnQo6m0FY04Pgptkt
	 NXuE03Ry4s9XqODZZ0E3GldfzsTOHIdk65+cpQgOYUu8rIKkX2Jf8WkuheaGgPdk4E
	 udMeC1SBeyTXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABCAB608A1;
	Wed, 10 Apr 2024 11:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8A731BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0D5781E0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFNg5hRLzF1k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:49:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0144E81365
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0144E81365
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0144E81365
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:10 +0000 (UTC)
X-CSE-ConnectionGUID: xt3SYuv7SjiFup/jnpsjzg==
X-CSE-MsgGUID: 3nkv0xNkTPKSQcc4G8S2kg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944139"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944139"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:49:10 -0700
X-CSE-ConnectionGUID: CPy+j/t/T/aJT9389dDQcA==
X-CSE-MsgGUID: 7d+OO9KrQT21fLhg+OKhiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769266"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:49:03 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:22 +0530
Message-Id: <20240410114828.25581-6-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749751; x=1744285751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lrwNQNbX+WXy0lfMMpmVqKt2xS86UNsIcJDE0QsIpSg=;
 b=hqMCVXwZ2uY+bZAj684qoED1ViXgU2UUD+Q4FC1810hMzFsQXrrH1qbl
 4VNlTvpxRwbhx1PewaabYRYIsP48Jdoib4/4LOHaM1E4p/4VDf9feScK6
 3hdlXpNInKbeBT9Rnw6MkrPlKCipAxiZBg1MO6S+hRKJ5CNO0Nsr5lG76
 Y087cG3Rlmf86e+bzbyLZuMQ5ByMggUlzg8EIgHhjFh5Pqu52aicvLsUy
 slAZJy6uWWxzwe8DgQFFmp4eJ8UimURTRxSh+P07gVmpQzKwgr+7Wodbf
 tK8+zP+yLHKi1NUsXM6q1WGLB3vFFUy2NzXK/PasqmA5m6nxNJU/pMF5O
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hqMCVXwZ
Subject: [Intel-wired-lan] [PATCH v6 05/11] ALSA: hda: remove
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

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 sound/pci/hda/hda_controller.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/pci/hda/hda_controller.c b/sound/pci/hda/hda_controller.c
index 206306a0eb82..6f648fae7a7b 100644
--- a/sound/pci/hda/hda_controller.c
+++ b/sound/pci/hda/hda_controller.c
@@ -463,7 +463,8 @@ static int azx_get_sync_time(ktime_t *device,
 	*device = ktime_add_ns(*device, (wallclk_cycles * NSEC_PER_SEC) /
 			       ((HDA_MAX_CYCLE_VALUE + 1) * runtime->rate));
 
-	*system = convert_art_to_tsc(tsc_counter);
+	system->cycles = tsc_counter;
+	system->cs_id = CSID_X86_ART;
 
 	return 0;
 }
-- 
2.35.3

