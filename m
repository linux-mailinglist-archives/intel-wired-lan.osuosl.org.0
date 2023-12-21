Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F9881BBC0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 17:18:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7C2B42257;
	Thu, 21 Dec 2023 16:18:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7C2B42257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703175511;
	bh=5Lfz62QsRSYCCmvJugGhU//3VjNs3k4oB4E5E3LhtAU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lKwDfbc7++0dQzAVBS0Psbeep1zENT0yDuLc0LtM1/xv03pkXzI5wRwATDTvUjD6D
	 EkJFN3drnwmGp7emvruC/Aesuk2go2x5DiI5c+mL7vPqKUXbNrid43WxaKCk2VJ2mT
	 Sb1v4Ddb3Jka+YLRCrq4MsBYw5arjkl3uBFOfSABjUCIdJGN3PH7sCKMempbPqkgbC
	 0uMGSoSntObBLN/oZQmJK+TYJmQT6VFLnQ3ZqBk/0rg1DGnThmEk7SSL8G3NNg7ih+
	 sRSqevhLavu/2Pp3ZyMy63vsRGld668l20P+wQQ9WMBU65FEDbETsnRPr5LPbfvoZy
	 +VOkJow4QAszw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rr1pLwbL6gdI; Thu, 21 Dec 2023 16:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C68534191F;
	Thu, 21 Dec 2023 16:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C68534191F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD3DD1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94F2780ECA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94F2780ECA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tcbWHBvB466 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 09:33:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D150A80EA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 09:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D150A80EA8
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3188558"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="3188558"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 01:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="810918202"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="810918202"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orsmga001.jf.intel.com with ESMTP; 21 Dec 2023 01:33:21 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Thu, 21 Dec 2023 15:02:48 +0530
Message-Id: <20231221093254.9599-5-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
References: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 21 Dec 2023 16:18:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703151209; x=1734687209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FqzmFJD7Hjfw0d9iCOZZDYcOM+cgVL/B/wnjWMOn7QY=;
 b=A/BcfrWut87MppKhCfM4aerC7XSLR3Ws1ZsOmUeLQlB5EAcNYq89wApB
 rS8Cosz4ZPCRc6e3stm3Ws4V4WYCO6f4kB9ifGA6EC7S1l5kzyGQtaho1
 MkTYT4EFVnIF7ZdDsf/YPNfP3usyXDS33zr0C5tzVdeG1f9+hWZhrBWpm
 R6ZrJZWpz2U2AhwdC3fRoYpeMvpK/DLMBXsUWWC2pg48m0R4bk2+DwJpH
 hGObVNrF6Fw4fVSCdUAe1rsWDLoFlX2jDUVDEGzupvLALZU9Fz9PLjd4S
 4/wbSBVRd5sDRYo0MrhBOR7bGoA42bNADJdixpWnBIHDAsn7MFUyCi4gM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A/BcfrWu
Subject: [Intel-wired-lan] [RFC PATCH v2 04/10] igc: remove
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 928f38792203..11108eb075bc 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -911,7 +911,11 @@ static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
 {
 #if IS_ENABLED(CONFIG_X86_TSC) && !defined(CONFIG_UML)
-	return convert_art_ns_to_tsc(tstamp);
+	return (struct system_counterval_t) {
+		.cs_id    = CSID_X86_ART,
+		.cycles    = tstamp,
+		.nsecs    = true,
+	};
 #else
 	return (struct system_counterval_t) { };
 #endif
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
