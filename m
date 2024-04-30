Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B128F8B6D63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 10:53:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5815F81F11;
	Tue, 30 Apr 2024 08:53:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GpWn0cE8lN7J; Tue, 30 Apr 2024 08:53:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C64E81257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467184;
	bh=ctccFuzOIHSR6wxuV6SotfOznbxPKQQaMU06/bru3UA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tqqKhrh7kouW3OnG3ul3buul4MzU7bhTKPnocFgMXJo/rs6pl2zm1HFQfRX0OkmVW
	 W9BmlCQ5OOY7HAO3oJjyjozW23BJFZ/nrVjpKYfF8tcI22WHWCrrgfVH1dEUXW5vfe
	 NI+Mrkv392ahtqCT8s3o87m/7Unoe3WTDOLeVwYxACJ9ABqaxplacelC1Wf/Oh/lnz
	 x9n7wDYBocaHZvrSoPMUS190VxZFVHkjpVOjYNn+ZFtVJ8kV6PiaG7pdWTrIiEbupR
	 a1Ir0N0S0rWVv/XeFDClhDu9CZYaWbiemtPXoxlBKwf0yaHsv0q5NxuAu1fuOxhBbU
	 WixsoMzOAAv6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C64E81257;
	Tue, 30 Apr 2024 08:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 643C41BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E521608AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48BGBt673vkw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 08:53:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A5BF1605BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5BF1605BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5BF1605BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:01 +0000 (UTC)
X-CSE-ConnectionGUID: B9gzIMd+QKCHXIuQhHsDNw==
X-CSE-MsgGUID: DWDtGhuyTwiM4sYJ5Qpd/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="21311373"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="21311373"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:53:01 -0700
X-CSE-ConnectionGUID: CdPgzq2HRl2lDZmLrv1utQ==
X-CSE-MsgGUID: o36HLBf7SJKALATptWxugQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26891514"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orviesa007.jf.intel.com with ESMTP; 30 Apr 2024 01:52:54 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2024 14:22:17 +0530
Message-Id: <20240430085225.18086-5-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714467182; x=1746003182;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E24oiqBr9fZRW5QO8Q7Dp8xrmLM7n8Eet5142z/yLlA=;
 b=Cj+4pMzduWbHPJ+hPE/9jeJmAhJCWLgOU7YZyvxSkdPLInD8Y/Fu22MT
 d3wC7SWacem4NI2h7EaTg+hlsKxHmvUgfzCvuEi1xZkaJy16qHiyjQZl8
 QLb165zPXKYiUsrsjss4fC6RWGtYcUDSwij8UTcVjxVYEY6a0mtjSJhAH
 JnEGOiOHcWiXWjz5XOiCy3CofId/PJP5CVZFdy5j40rrZaSTUNlvHUFhm
 ngeNcCbY0JG9g5szHAefkJAeyaw+sPsJreAMSsd+1GpCwh9hkcG1/uDZp
 clazVkW5IUFamw/1PQ/lazOrzfU/cFFiKRzM97fK/sVD2JRF6v/0CtpHE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cj+4pMzd
Subject: [Intel-wired-lan] [PATCH v7 04/12] igc: remove
 convert_art_ns_to_tsc()
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

Replace the direct conversion via convert_art_ns_to_tsc() by filling in
the required data.

No functional change intended.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 885faaa7b9de..39656489d73e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -901,7 +901,11 @@ static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
 {
 #if IS_ENABLED(CONFIG_X86_TSC) && !defined(CONFIG_UML)
-	return convert_art_ns_to_tsc(tstamp);
+	return (struct system_counterval_t) {
+		.cs_id		= CSID_X86_ART,
+		.cycles		= tstamp,
+		.use_nsecs	= true,
+	};
 #else
 	return (struct system_counterval_t) { };
 #endif
-- 
2.35.3

