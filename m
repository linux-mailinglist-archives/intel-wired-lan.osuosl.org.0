Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7530A8B4255
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 00:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C025783BEA;
	Fri, 26 Apr 2024 22:47:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GATABkqYOsJM; Fri, 26 Apr 2024 22:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFF9483BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714171652;
	bh=B+pkY6ZAc/PqYzyupRaBlf502fMBZF5wgxE4YcXwoFQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NQfcvvGMspDbnm28K/xBufyI8YfGhypS/JJh25j9YwyM2yNZ331VH8B2u5v4QwHS0
	 WUPJXHY0Ck8s1AILrp3cA8PdntyFCaxFHxt7EzUBKT/joWeWK1pPNtdd88mdjrP9VC
	 fy3I7zOCpSXd3heb9iMe9GksjCpEuW/hmQqVM8EKmatloflX3qShdU4097mzbbpyxJ
	 NVIGoN1mPr8iYnK09lsaMVQmq/Sz69lXbebX4Mmu7eY0S4JnitEvxxPJ+MZ2i7vGhA
	 QmEeIa2BDRxlo7LCt7XR6h+LJlsKB74KgcsnVDNDg0OjE3xoHLrlxWSTiRamy1LbHQ
	 dYM4iTtx5qSmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFF9483BD6;
	Fri, 26 Apr 2024 22:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6764B1BF372
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 22:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5278B41552
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 22:47:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zevI--LqbQq3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 22:47:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE293409ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE293409ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE293409ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 22:47:28 +0000 (UTC)
X-CSE-ConnectionGUID: Px87QFJNQBWDXp46LxKLKg==
X-CSE-MsgGUID: jrk5OktxSqKxxVKfN07zRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="27375866"
X-IronPort-AV: E=Sophos;i="6.07,233,1708416000"; d="scan'208";a="27375866"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 15:47:27 -0700
X-CSE-ConnectionGUID: B4NqEIQdTimjQGZKmoT2MQ==
X-CSE-MsgGUID: ahVuu76MQKi3jvq8qblU9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,233,1708416000"; d="scan'208";a="56732049"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 15:47:27 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 26 Apr 2024 15:47:09 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240426-mirrors-iwl-v1-1-284c1d7fdc94@intel.com>
X-B4-Tracking: v=1; b=H4sIAOwuLGYC/x2M3QpAQBQGX0Xn2hY6fvIqciE+nGLprFCbd7dcT
 s2MJwcVOKojT4pTnGw2QBpH1M+dnWBkCExZknHCaWFWUd3UGbkWUyEHuOKSi5xCsStGuf9bQ59
 gcR/UPs8L+0ogqWcAAAA=
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.13.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714171649; x=1745707649;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=N3XdHSdXJy4QWfkyiI3cKsNPeRu03mhwkst/L/YERTM=;
 b=jlcTs6yPAp8qM0TWjXg0gNVxRaJjLkXJ0yptLusnnGZzZqXf8ublssI8
 PJBfJ76Nj6FeW1w+jbH6xsXNBbMFtCk2DHOT1GAXoKxclmJdqaAkqUufo
 NuaqhOkMRV92Wo2SEluR2G2ubyg6P5mRGegXD55+Tf7olJXmuGEJ+C661
 z4QAoXzSPsraT/Min9n7ZFyqFyJ1qaMdMh5cLoXU8IO4nkr6nfWb0avRO
 i1phMmiyEaW8WxgolOABxnv2KpOW8hMSSJfrTHdWDyXj1/I/qV1G8t3gw
 F7M5xPNHQNyW3KfPH+AWvVQDskWulKScxyYd6rtESifLcUwyBgvAiLEAO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jlcTs6yP
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add and use roundup_u64
 instead of open coding equivalent
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_ptp_cfg_clkout(), the ice driver needs to calculate the nearest next
second of a current time value specified in nanoseconds. It implements this
using div64_u64, because the time value is a u64. It could use div_u64
since NSEC_PER_SEC is smaller than 32-bits.

Ideally this would be implemented directly with roundup(), but that can't
work on all platforms due to a division which requires using the specific
macros and functions due to platform restrictions, and to ensure that the
most appropriate and fast instructions are used.

The kernel doesn't currently provide any 64-bit equivalents for doing
roundup. Attempting to use roundup() on a 32-bit platform will result in a
link failure due to not having a direct 64-bit division.

The closest equivalent for this is DIV64_U64_ROUND_UP, which does a
division always rounding up. However, this only computes the division, and
forces use of the div64_u64 in cases where the divisor is a 32bit value and
could make use of div_u64.

Introduce DIV_U64_ROUND_UP based on div_u64, and then use it to implement
roundup_u64 which takes a u64 input value and a u32 rounding value.

The name roundup_u64 matches the naming scheme of div_u64, and future
patches could implement roundup64_u64 if they need to round by a multiple
that is greater than 32-bits.

Replace the logic in ice_ptp.c which does this equivalent with the newly
added roundup_u64.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1:
* add DIV_U64_ROUND_UP and use it for clarity
---
 drivers/net/ethernet/intel/ice/ice_ptp.c |  3 +--
 include/linux/math64.h                   | 27 +++++++++++++++++++++++++++
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0f17fc1181d2..a95af8d638a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1714,8 +1714,7 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	 * maintaining phase
 	 */
 	if (start_time < current_time)
-		start_time = div64_u64(current_time + NSEC_PER_SEC - 1,
-				       NSEC_PER_SEC) * NSEC_PER_SEC + phase;
+		start_time = roundup_u64(current_time, NSEC_PER_SEC) + phase;
 
 	if (ice_is_e810(hw))
 		start_time -= E810_OUT_PROP_DELAY_NS;
diff --git a/include/linux/math64.h b/include/linux/math64.h
index bf74478926d4..ef881eeda2f6 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -301,6 +301,19 @@ u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div);
 #define DIV64_U64_ROUND_UP(ll, d)	\
 	({ u64 _tmp = (d); div64_u64((ll) + _tmp - 1, _tmp); })
 
+/**
+ * DIV_U64_ROUND_UP - unsigned 64bit divide with 32bit divisor rounded up
+ * @ll: unsigned 64bit dividend
+ * @d: unsigned 32bit divisor
+ *
+ * Divide unsigned 64bit dividend by unsigned 32bit divisor
+ * and round up.
+ *
+ * Return: dividend / divisor rounded up
+ */
+#define DIV_U64_ROUND_UP(ll, d)		\
+	({ u32 _tmp = (d); div_u64((ll) + _tmp - 1, _tmp); })
+
 /**
  * DIV64_U64_ROUND_CLOSEST - unsigned 64bit divide with 64bit divisor rounded to nearest integer
  * @dividend: unsigned 64bit dividend
@@ -346,4 +359,18 @@ u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div);
 		div_s64((__x - (__d / 2)), __d);	\
 }							\
 )
+
+/**
+ * roundup_u64 - Round up a 64bit value to the next specified 32bit multiple
+ * @x: the value to up
+ * @y: 32bit multiple to round up to
+ * @y: multiple to round up to
+ *
+ * Rounds @x to the next multiple of @y. For 32bit @x values, see roundup and
+ * the faster round_up() for powers of 2.
+ */
+static inline u64 roundup_u64(u64 x, u32 y)
+{
+	return DIV_U64_ROUND_UP(x, y) * y;
+}
 #endif /* _LINUX_MATH64_H */

---
base-commit: 1bede0a12d3a45bd366d3cf9e1c7611d86f1bc1f
change-id: 20240416-mirrors-iwl-8e5ee4847465

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

