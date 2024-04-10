Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C11C089F138
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7551F60876;
	Wed, 10 Apr 2024 11:49:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tZ6tkGCxHihQ; Wed, 10 Apr 2024 11:49:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C06F3607A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749759;
	bh=XlQBFW1Jy4FEH+8IAy3+RnqD/Vl3NFXabLbEkvgc2Hc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LpVq5ElrbYDRLmYIaYggIi4co2Y6VQ20d77lsn1jNnNU7adtL8eMjr8SiprQaZFv1
	 EiKp1zZLfQCPY2IKEw2Mj8RIndNAbjb5b+qvDUXdXcJtqRBEOiI6xM0b59W8W1uKOk
	 B7ycvX87r0QD5hRus3Elf9A22V5jOpVBGEKTvh5Md7QbAoo9myyIK1cFjzAt3tqo4E
	 kEaSHckss+NjmbxI3MzBHTE5s4Gh4a6qNUUDRYeh0z7tp45+gpUYtrM4CK0jhMvP6q
	 SzzISQXe89EdU7PMpTaSjzr3gIVQuXLlbr7UxNee7bmP+pMF8mcIvVK4MFfgoL9sjJ
	 33h9DBqOkdQjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C06F3607A4;
	Wed, 10 Apr 2024 11:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DEB5E1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D77D74059A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lgQCNcGBvqLh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:49:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 004A74058C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 004A74058C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 004A74058C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:16 +0000 (UTC)
X-CSE-ConnectionGUID: G1kkahDpSWWwgKr3pYXm9A==
X-CSE-MsgGUID: QO/nH4voR1qF2JBuvUdEnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944151"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944151"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:49:17 -0700
X-CSE-ConnectionGUID: 5A3mY6mfRr2dgbpjguUwgw==
X-CSE-MsgGUID: q9o9df5xRVG7+JFItyOufg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769273"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:49:09 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:23 +0530
Message-Id: <20240410114828.25581-7-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749757; x=1744285757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rZDLfhfpSZ9NfdEthCrn4EePA9THWzFIkSeNAaXhRPI=;
 b=GU1QgR521/4pg3dnT3B2eR5tICQpC4lzxLy8IeUqX/W3B+t1AlxB2Yjs
 U93hgmf0N5iAmhPUw33U7n4iZUmvnqHkNK9UiUhtMf0jYEKHVlkC+fI4p
 DmfgapoITIOxH9kpqUtz1i/Ds8j9wlWJufpoRo+NbTBeKsEKHpU+2hcux
 FPCvno0E60fDP1AMUgU+Z1UcNc0iXMmM6jRNc3+fVXUZvS6FpYwh2QnUh
 58kAXeAi2tANx76GCeilvrOfBv0E6Ng+tAzgxgW9V/W6px/UygxYwWFcc
 eHhw7MdvD8Uvp08qw8rR4RXqgnq40yGAult1Xq+ICYVh0W/agd2+acEXT
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GU1QgR52
Subject: [Intel-wired-lan] [PATCH v6 06/11] ice/ptp: remove
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

