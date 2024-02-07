Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E3884C4AC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 07:09:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06F7361366;
	Wed,  7 Feb 2024 06:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3iWJD9kLnIF; Wed,  7 Feb 2024 06:09:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 516F661363
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707286186;
	bh=3oqOWK4mlIlAwgo8wYo2agAGNTVZM1RQKGIq1lFPuXY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F2EEKgWPEA5v1AMCkobYsX4M5Tz4Yhu5DL0yBiHxpolCWZ5JaKKbcSzdcqk6jwQ1c
	 P/DTsoJmokyxriRDJ1GjvhkoSwwV+CWEoT2QpQvgqfXl76h14ikkTe3vCidVB+VdKk
	 VAh+08mHo57cKhsAZZwoxe6hCiRnGJldf0jX+JfjhsRdysdUazTf0IvnhLOn1vc/mc
	 L67DaMipPt8ezAi37ksbVRn/En+sYuCpIrwtbqjVYONn7q8tI+OweDOKn726NL7EnG
	 Rk+7QLWvE5cAOGjAnXXVB0iKpGxvtQnrmWK92Hf49xgKeFJun3QOjIuQTpUuE8Wsau
	 ERQnPf7IoqgoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 516F661363;
	Wed,  7 Feb 2024 06:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 66BE21BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F3AA4031F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITtH95JCt_RH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 06:09:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6C72E402E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C72E402E8
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C72E402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="436054021"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="436054021"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:09:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5849799"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa004.fm.intel.com with ESMTP; 06 Feb 2024 22:09:36 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  7 Feb 2024 11:38:49 +0530
Message-Id: <20240207060854.6524-7-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
References: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707286183; x=1738822183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W10ncAbxufnh5zyGwKufTz7fuO6HXps1+JuIZZy6KjQ=;
 b=KQ0raAcmpgkT+Ren+8Qc69oo7XAgfGW766kIoTip/Gj6OS0FNoBVu5Bt
 elHAAopyCuvXS/wHCxY2e1O91Fvg4PeMe/3kJmS5hBx/ajdQykkoennQj
 w0kVoCQBC37uLKvhUqRtCzWpXLO5Bk1OXQ9hITOE3CZaXsvYkXsINtw7R
 Q1YhLX2mPpiaUq3rvuDp8TkiWKKytOuJdPWS1ESzCbvbE5kz/nQba+Bm/
 k/Buw3FTNKr1D/+XRFAqH4FiHxy22F6bxVJ4sbpp7MhpTyGdXsylSj7dv
 Uhn/aIs3CJTrhstBYwQ1BycFAaCZ4ZBUVat40gsW+zV9qsmwUxUM7JOhk
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KQ0raAcm
Subject: [Intel-wired-lan] [PATCH v4 06/11] ALSA: hda: remove
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
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
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
index 3e7bfeee84fd..5206adedb000 100644
--- a/sound/pci/hda/hda_controller.c
+++ b/sound/pci/hda/hda_controller.c
@@ -455,7 +455,8 @@ static int azx_get_sync_time(ktime_t *device,
 	*device = ktime_add_ns(*device, (wallclk_cycles * NSEC_PER_SEC) /
 			       ((HDA_MAX_CYCLE_VALUE + 1) * runtime->rate));
 
-	*system = convert_art_to_tsc(tsc_counter);
+	system->cycles = tsc_counter;
+	system->cs_id = CSID_X86_ART;
 
 	return 0;
 }
-- 
2.35.3

