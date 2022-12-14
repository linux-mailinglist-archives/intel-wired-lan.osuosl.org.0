Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D524A64C4C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 09:13:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2764C40235;
	Wed, 14 Dec 2022 08:13:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2764C40235
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671005614;
	bh=nSLuc5qMQGjO6XQVnVjWM5fXV4jwQbbBZdQTVfmNhTo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fQLKvqx9SgznEk535tCQeg/RUuyvXyW4HLlpuAXrkgnEjTOVPCxQ+qHgNbg3xdGwL
	 X5+YAMsFCeUBQbsBTTHo3F8RGbakVnGCeLlOL5mo7gDVxwNq/E1dxYc2OaKhqKyyoz
	 kM1j5IFCKE/fZ2ydRiZoNHt71ECekX0LMya+nv4601R7FLbRcXJTl4zfnWgPiVupmh
	 ftjAWTuS5qLgnayZl0gMjeh2ZaYg0Xr6Lj4LuE2oxHKwrqN9fuXEkusccDdPLg/p5r
	 GwqZXj7Yw9lTVUj2blenpuue6AHVIu5+had8qjkDb0jVhmI9E9BwF7eDdS45yFtWN8
	 JjgjzJmmoGw3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AfphNsTeZuCD; Wed, 14 Dec 2022 08:13:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DB4340181;
	Wed, 14 Dec 2022 08:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DB4340181
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 183801BF4D5
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 08:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E705A40181
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 08:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E705A40181
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNPp9FRuzWyF for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 08:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 113E9400C8
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 113E9400C8
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 08:13:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="305981078"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="305981078"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 00:13:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="894198165"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="894198165"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga006.fm.intel.com with ESMTP; 14 Dec 2022 00:13:23 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Wed, 14 Dec 2022 16:10:38 +0800
Message-Id: <20221214081038.1720-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671005607; x=1702541607;
 h=from:to:cc:subject:date:message-id;
 bh=FjYsdMKbSjMYSiyaZwMM0F6QvjFZXs3qm/uC/s9/3g4=;
 b=Pk7pYD5Tql4r3nBLi4ze330a8Gd0K0Yrq/MFS/w4a5p8eJ7ONFXFhXSY
 jC5u1aIF0GkQxC6QSzJz/uiK4h5SlRUY3dfg9/57osba5vGJC52TeSiV3
 jCVlf/6uQ3FdbYU4sYa6zB/kCNiNlZGwi5hZLiPD8cG0TKnVdorpieLta
 DOgo59lkQFnpg2/xoW+7QWje2HCD4ZxrzWqEg+B00MNgWqj2AVuVerLfh
 y1xPaRE6UTi7a9PUjFMAz9riZgcBIkyEF2bqcJhcnHRKLzA3urJYdcmpq
 kRExai//toKO66ff0N9t8jKtvKkGibiR+iSVyTlUzLJvWWbRkpqabVg2p
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pk7pYD5T
Subject: [Intel-wired-lan] [PATCH net v1] igc: Fix PPS delta between two
 synchronized end-points
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
Cc: christopher.s.hall@intel.com, muhammad.husaini.zulkifli@intel.com,
 anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christopher S Hall <christopher.s.hall@intel.com>

This patch fix the pulse per second output delta between
two synchronized end-points.

Based on Intel Discrete I225 Software User Manual Section
4.2.15 TimeSync Auxiliary Control Register, ST0[Bit 4] and
ST1[Bit 7] must be set to ensure that clock output will be
toggles based on frequency value defined. This is to ensure
that output of the PPS is aligned with the clock.

How to test:

1) Running time synchronization on both end points.
Ex: ptp4l --step_threshold=1 -m -f gPTP.cfg -i <interface name>

2) Configure PPS output using below command for both end-points
Ex: SDP0 on I225 REV4 SKU variant

./testptp -d /dev/ptp0 -L 0,2
./testptp -d /dev/ptp0 -p 1000000000

3) Measure the output using analyzer for both end-points

Fixes: 87938851b6ef ("igc: enable auxiliary PHC functions for the i225")
Signed-off-by: Christopher S Hall <christopher.s.hall@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 ++
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 10 ++++++----
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index a7b22639cfcd..e9747ec5ac0b 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -475,7 +475,9 @@
 #define IGC_TSAUXC_EN_TT0	BIT(0)  /* Enable target time 0. */
 #define IGC_TSAUXC_EN_TT1	BIT(1)  /* Enable target time 1. */
 #define IGC_TSAUXC_EN_CLK0	BIT(2)  /* Enable Configurable Frequency Clock 0. */
+#define IGC_TSAUXC_ST0		BIT(4)  /* Start Clock 0 Toggle on Target Time 0. */
 #define IGC_TSAUXC_EN_CLK1	BIT(5)  /* Enable Configurable Frequency Clock 1. */
+#define IGC_TSAUXC_ST1		BIT(7)  /* Start Clock 1 Toggle on Target Time 1. */
 #define IGC_TSAUXC_EN_TS0	BIT(8)  /* Enable hardware timestamp 0. */
 #define IGC_TSAUXC_AUTT0	BIT(9)  /* Auxiliary Timestamp Taken. */
 #define IGC_TSAUXC_EN_TS1	BIT(10) /* Enable hardware timestamp 0. */
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 8dbb9f903ca7..c34734d432e0 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -322,7 +322,7 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 		ts = ns_to_timespec64(ns);
 		if (rq->perout.index == 1) {
 			if (use_freq) {
-				tsauxc_mask = IGC_TSAUXC_EN_CLK1;
+				tsauxc_mask = IGC_TSAUXC_EN_CLK1 | IGC_TSAUXC_ST1;
 				tsim_mask = 0;
 			} else {
 				tsauxc_mask = IGC_TSAUXC_EN_TT1;
@@ -333,7 +333,7 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 			freqout = IGC_FREQOUT1;
 		} else {
 			if (use_freq) {
-				tsauxc_mask = IGC_TSAUXC_EN_CLK0;
+				tsauxc_mask = IGC_TSAUXC_EN_CLK0 | IGC_TSAUXC_ST0;
 				tsim_mask = 0;
 			} else {
 				tsauxc_mask = IGC_TSAUXC_EN_TT0;
@@ -347,10 +347,12 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 		tsauxc = rd32(IGC_TSAUXC);
 		tsim = rd32(IGC_TSIM);
 		if (rq->perout.index == 1) {
-			tsauxc &= ~(IGC_TSAUXC_EN_TT1 | IGC_TSAUXC_EN_CLK1);
+			tsauxc &= ~(IGC_TSAUXC_EN_TT1 | IGC_TSAUXC_EN_CLK1 |
+				    IGC_TSAUXC_ST1);
 			tsim &= ~IGC_TSICR_TT1;
 		} else {
-			tsauxc &= ~(IGC_TSAUXC_EN_TT0 | IGC_TSAUXC_EN_CLK0);
+			tsauxc &= ~(IGC_TSAUXC_EN_TT0 | IGC_TSAUXC_EN_CLK0 |
+				    IGC_TSAUXC_ST0);
 			tsim &= ~IGC_TSICR_TT0;
 		}
 		if (on) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
