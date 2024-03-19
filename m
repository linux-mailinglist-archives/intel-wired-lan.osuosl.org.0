Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F089587FE63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 14:13:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A534B4011E;
	Tue, 19 Mar 2024 13:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6eijZ9LAjNZJ; Tue, 19 Mar 2024 13:13:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A6B40150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710854034;
	bh=XlQBFW1Jy4FEH+8IAy3+RnqD/Vl3NFXabLbEkvgc2Hc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oVEGMCek0fUXo/yrPBd+KTycqfm3MzKPd51VStZ0OUnsuxln9SUrM0imfyyl6i7A2
	 oCNsR/nMl1OH4effI0Nh0xpIAjDVeU9JCg4x3q9eUreHWPdYoXq43qA23uRC5E2L+o
	 uC+AuWnzns4oPfiRWSTw9ERwI3SkCgKQbtGdulaR30EZSuRNhwPBhfQnd9W712LMfP
	 RhdtT1IMM0iHV1Y8XLfiSACU9JPVgEQeuoF1Q/7ZetiGQfCat6Vho3/Z0bSmnsSEEm
	 rNfeHJhErkAg6VriV1xQ3OD0Lvm30FVa0eTTk0ib1y0Xr6IY6s2vxIZM7jnu4CNYoy
	 BxJelKWpBavpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6A6B40150;
	Tue, 19 Mar 2024 13:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AEA51BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 878A940327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93BYjL8d8baV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 13:13:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD20A40192
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD20A40192
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD20A40192
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5843026"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5843026"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 06:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="44883240"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 19 Mar 2024 06:06:38 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 19 Mar 2024 18:35:43 +0530
Message-Id: <20240319130547.4195-8-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710854032; x=1742390032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rZDLfhfpSZ9NfdEthCrn4EePA9THWzFIkSeNAaXhRPI=;
 b=WleG5T7WnjKJH1vWyL0zcFqczWNoNtjYaGx5OU/f5konboA+C4WpCTfT
 rYmKnEHHgpCq3QiCVv4vWkgf+iMrkkwi7KIKctUZy+vsLpQhETqggoF2H
 N8YPt31mQol9OM7V14K5gcdl2PXIkdyFjNs7fcXCwvHrlnDxhDunD5nUK
 AJgJr+Qd3ul5XedAGNdoj89OwaeuWdFQH1ku8BhU4mYXtgkByu1Se69bf
 UOIAg8I1XFhwH22m2OmO89QK7ZzyJmYA6RX3I07oIZJMFJjdodWsYuuPy
 ZZuh9SFFM4f7B8FNpulfU6yFS7ORMEK4knqwRYlweEL4S+H7TaC4VLkPa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WleG5T7W
Subject: [Intel-wired-lan] [PATCH v5 07/11] ice/ptp: remove
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index c11eba07283c..c416dd2e6622 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2116,7 +2116,8 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
 			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
 			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
-			*system = convert_art_ns_to_tsc(hh_ts);
+			system->cycles = hh_ts;
+			system->cs_id = CSID_X86_ART;
 			/* Read Device source clock time */
 			hh_ts_lo = rd32(hw, GLTSYN_HHTIME_L(tmr_idx));
 			hh_ts_hi = rd32(hw, GLTSYN_HHTIME_H(tmr_idx));
-- 
2.35.3

