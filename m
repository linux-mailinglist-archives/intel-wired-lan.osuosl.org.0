Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1C189F132
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E3A060857;
	Wed, 10 Apr 2024 11:48:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id km0pGT_C0iwn; Wed, 10 Apr 2024 11:48:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBF65607A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749733;
	bh=Q4FnrLrs9MFBQANCWt/hHLlfiWEcHo3QaAbd3iVCI3Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lfxSc0a+Wy1Ld7yKEWG7LDg1qYna5l8WBk6MG9KceXCXaOwE9eAyrD8mR6Y8DZ8Kr
	 1z2/tjfngCh4TThaeJ8ujfQtv2iM+mDfLoR86R4BIhXPIrClJLWIzA9yiX1kkXDYWi
	 /XYnK6UkK4OPOuz022ICNR1XmiQbz4b8cF9hdQPivZ9KdIdjzAHfxGgsm1cJ/RA9Sb
	 izXoylcnXXrPhN9CqiI7UQcraZzUaf/O92wAmXV4Oo0m4igP1lW3rIhfANuRvTf3TH
	 ZbMmO4iRo7ZU3QEcD7+EpBqgso7A30GLuoSfvg9qWMC3qd38CHl4sGzOAqvlW15XVj
	 cqMk4kOha5syQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBF65607A4;
	Wed, 10 Apr 2024 11:48:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 815511BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AE0740635
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r7DiqoNlOZlo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:48:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B1A6140133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1A6140133
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1A6140133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:50 +0000 (UTC)
X-CSE-ConnectionGUID: 8p0/4ybaQiyK4nf0BRhk8Q==
X-CSE-MsgGUID: w1tmV0fFSh6+3+kbUNVFRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944078"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944078"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:48:50 -0700
X-CSE-ConnectionGUID: QJH6IMdpTXu2SncDEgABkw==
X-CSE-MsgGUID: gDsYZPgtR2W7s9Z7JzU/NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769245"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:48:43 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:19 +0530
Message-Id: <20240410114828.25581-3-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749731; x=1744285731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9bM3pFe73YGrSI7VbFylL5q703Z79WRvHVA5lUksMX4=;
 b=QFjkKgY2ZTr2/jH47heFEBzWBhzaeIGPzNS8TjoD3vNb6HuhFRjLdqG8
 wbBpgnrUSLfox54rOBgq23lFM6h6NCJCtCcnJRvNAOmsk2RAXvj3uqcxx
 OvPUPXZoEVkn30QIgiwI67PFh8M7wkxgazG85J0lvLwCHSsFyPyB7IUyL
 8nDMbUPWvN+xQkLIbpdH5Dy88+qvndXmlAWeG5GW5QnCb4IyLSrLQAQ9q
 IoQlAbs1SJrA8pc8YSditL2cUp70dxVpRZtQqPw3pppfRWJxBeZ3vPuqe
 8J767c+LZigsJTKeoVEhh0A3q7ejDXuyraQEQmdWigGYi9wg5nsfKOxXl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QFjkKgY2
Subject: [Intel-wired-lan] [PATCH v6 02/11] e1000e: remove
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
 drivers/net/ethernet/intel/e1000e/ptp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index bbcfd529399b..89d57dd911dc 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -124,7 +124,8 @@ static int e1000e_phc_get_syncdevicetime(ktime_t *device,
 	sys_cycles = er32(PLTSTMPH);
 	sys_cycles <<= 32;
 	sys_cycles |= er32(PLTSTMPL);
-	*system = convert_art_to_tsc(sys_cycles);
+	system->cycles = sys_cycles;
+	system->cs_id = CSID_X86_ART;
 
 	return 0;
 }
-- 
2.35.3

