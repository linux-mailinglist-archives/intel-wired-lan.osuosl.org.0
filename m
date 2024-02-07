Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 991EA84C4AD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 07:09:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54FAC61363;
	Wed,  7 Feb 2024 06:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxfEH6B_jXts; Wed,  7 Feb 2024 06:09:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9AFF61342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707286192;
	bh=T7N1fL6c3qpJ/euIKukZsyS6B5nxXU+Kxr4k1JyagBY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YG39uERT1OlDwgOZGDzm+t4NkDZolgDF1tOPN5McuBh65Ox6FqRm8CYUFFH96eX4v
	 zaJ+nxTdNwClB2wH0+Git2iWs56QM0Cme35XKfV55z4iq09SsILJTHIMZofJFPEsCs
	 r+t3JXJFujBhFn6KnkAEIXUHn0VVMC6mZgCXdr1etiUCQxxlJq6HcvomsC/BdTUuLN
	 lGYUsJNNINe4a5uJ+uLEmb3JLicO/26kRXVLxQ+Skgo/mqnoPEFvmZP7W8t1TjOWH1
	 5xJIgZK4CoFEKGT13ukDs3qUxBnFaSmLvzGj/g4evxoT550XFXBClq5BdkSuLnTERC
	 0fyK2npxaxiIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9AFF61342;
	Wed,  7 Feb 2024 06:09:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4ECC81BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48DC741E85
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0R49OUkG0DB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 06:09:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AF8C841E7A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF8C841E7A
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF8C841E7A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="436054042"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="436054042"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:09:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5849830"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa004.fm.intel.com with ESMTP; 06 Feb 2024 22:09:42 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  7 Feb 2024 11:38:50 +0530
Message-Id: <20240207060854.6524-8-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
References: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707286189; x=1738822189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ts9UT2ntYUOZBJlItohtQOI0E/fFKNFBPAIy0JZJFSY=;
 b=h4qqeLTIxEZn5wAbu4yZAiWprgIgOucYPm2vmIPwwdUPh5FpTGZX91Hj
 cYE7ixlehBRTdix35CppXfwUWQqqvY3s7pyOnHdK5Tk3s7A1jvvwfNgRN
 RkoShRl4H2mSjs1QUjaY4UiXsgZyAgaEzmHcVC/Xqb/kpZK4mandmnw62
 id/x3tPZ2TGiKAvAIZ/7RKKLlEoI1Cgn+iIcz5AqfuHKw1sj2blEF/FEH
 Zkrg2nNNU17FQjCgZedvrc1BLMfusM2EmXUbVt38d+XaL0qoJNE4a4ll4
 coL8aOFpifguUQENZN8LaCqCj7o+FJgFTRK+Kk0jX1ifP1DoUf/3i8fKc
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h4qqeLTI
Subject: [Intel-wired-lan] [PATCH v4 07/11] ice/ptp: remove
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 3b6605c8585e..104b3f7a7cfc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2101,7 +2101,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
 			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
 			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
-			*system = convert_art_ns_to_tsc(hh_ts);
+			system->cycles = hh_ts;
 			/* Read Device source clock time */
 			hh_ts_lo = rd32(hw, GLTSYN_HHTIME_L(tmr_idx));
 			hh_ts_hi = rd32(hw, GLTSYN_HHTIME_H(tmr_idx));
-- 
2.35.3

