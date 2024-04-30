Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A18B6D65
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 10:53:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EE8D81F1E;
	Tue, 30 Apr 2024 08:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HPjbqH3fiFNu; Tue, 30 Apr 2024 08:53:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E61E981F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467199;
	bh=DrNygNEyxQmIWBVSeCvrTGRFxaHr5chnl/SwdswQaQQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ef2ZJmtsSuhPu8Mcl2UF9LEVod50DYuHa4aTE+FhB56ieSnnr4jb/kLcQBIVb/Mn8
	 g29d/7/b/CRviZQfEHMA/6k5UMjo40Q4W8Lf1O/OaaZOlmFJKD63NQxWivNDEygVsS
	 RneCKd6NrVBvezCikWBhfEdmxkQ+C82PoMvNnDEBDQRDRVu26zP3PXwYRGP4aE/Ikt
	 I6i+gKCdE6UrtMPuHuf6l7d6ZG88HHdMZa/jelO08m3J4k5Seg6QorHjoz2vBuHIa2
	 KXuL9SEdIfBGZVQxeZITcC44BLq7uGYn2cGdpdMO3ooRHS6oxcfj+Onx5Rrh7G9Rv9
	 KMjLtY1F/bhMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E61E981F15;
	Tue, 30 Apr 2024 08:53:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14A2D1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F40AD40580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iNxbI9xf4q37 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 08:53:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C0834055D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C0834055D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C0834055D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:15 +0000 (UTC)
X-CSE-ConnectionGUID: VzpGrF5MT0qiOPJL/WZMHw==
X-CSE-MsgGUID: bRiTykuOSVixRqRQEATj/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="21311427"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="21311427"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:53:15 -0700
X-CSE-ConnectionGUID: zhTc8/nxT/yRhvzIncDbKQ==
X-CSE-MsgGUID: hhZxfrHWRTu7Tk7BdZaqSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26891595"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orviesa007.jf.intel.com with ESMTP; 30 Apr 2024 01:53:08 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2024 14:22:19 +0530
Message-Id: <20240430085225.18086-7-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714467196; x=1746003196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nsT1fHcZuDOMnnkyajwqgfQmhXr/KNG+7QbC/xy9bQU=;
 b=CHKtOcAJoKdZqT6QoavSd5sbeRtqV5c/PQr43q+RF2HpkVbrjlSkVYl6
 vCcP6N6mkA1CV6pRFvQK7nhaq6FGiC6S/TU5rdJE60hztDHbAnL/lHMbc
 jQakTEN7mvDmjdbnf+Nu3jAAllh9Qev7ZiJadfhF/HIHLiE7xFVushoc8
 hAvjSHeNbXvibeE1dGI6ZYxXkTF0RuUDeI6ITj9hxjNMU7ROnLXnG4TXR
 CEbndW/M606dPD2FBjBOEjyu6TFjMSscD33IvnCw+WHBSlFW01itSS1hs
 AqEgCzvWXAx1E8cOPfp09HYQP38j8UDN+lPA6yeIxNnz6cL/S1VbCo6I9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CHKtOcAJ
Subject: [Intel-wired-lan] [PATCH v7 06/12] ALSA: hda: remove
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

The core code provides a mechanism to convert the ART base clock to the
corresponding TSC value without requiring an architecture specific
function.

All what is required is to store the ART clocksoure ID and the cycles
value in the provided system_counterval structure.

Replace the direct conversion via convert_art_to_tsc() by filling in the
required data.

No functional change intended.

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

