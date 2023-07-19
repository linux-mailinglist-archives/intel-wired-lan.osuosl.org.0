Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D954675A17E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 00:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FBBF40A0E;
	Wed, 19 Jul 2023 22:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FBBF40A0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689804779;
	bh=XEIFQj0OPrDXxtvgUmnB9D1BCr9TBJ4s87yHITYSdMw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=quT+FYr6e6SNv4S3IIrjcmquqWSgvNgy8YP4FWtkMpqutROYouwLkKqBuLiu3rnNU
	 k6T/cDhrEKhDG655LR/k3p84TmoGRLNZ4l+sP/+u53HRR+pPSE3Fm4u2F2zUDMh03O
	 2qpjVrV9HbRWw4hgV5UStWQMxT4kvlMf8ZVL4M3s2jyr+/MzfmIMLdVNwIybbCJlVa
	 YQT8vlUfFXV0sLcPWzepDgaXMe6njfGfeLnn0k99AoH7fF0s8YyhKJK8meTU/JyZ44
	 nGFMFxMJkgAVklLiaTGSu/+BxdJX7RYc3pf6SUnNMwwujlX1VgBbDvKCfnMvUX6ZWt
	 znphGGmbf3iFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZtb7QE0mddP; Wed, 19 Jul 2023 22:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DB5E40391;
	Wed, 19 Jul 2023 22:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DB5E40391
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 127A31BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAFF382035
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAFF382035
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2fBSSY6QPk8C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A9578209B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A9578209B
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365460316"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="365460316"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701411239"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701411239"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 19 Jul 2023 15:05:23 -0700
Message-ID: <20230719220525.3153469-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230719220525.3153469-1-jacob.e.keller@intel.com>
References: <20230719220525.3153469-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689804760; x=1721340760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SX8tmzCyObl2OtufP9OwOBFfaLksPgihRe/imbI/Yb0=;
 b=Oex7VBalQlEl2G/YnOVoJ0fbwb/g+zSVy2sHD+zONP1rP4W2LPAD5v6k
 qs+BAFFnK/LVSRjDTXTxCvkJPxM/R/XYadAzv1wZNCreca2WsYzlaUbWJ
 UdYj+lbu/4tVmYu5RUnyP2c1YmdRFrAqZK/7tF867HPZOmidB++019eUo
 vYlBTEyUjkpsdFbCMaMioriXFJ1/kJgNmPc1KryePt4BKzyd7hmfUbY8a
 y6xPxiDUXcHRdez2EKk2iHhNp3SWh+NchEs1R/kwHikXgEQYvTHRAtAw/
 HuecOWGTjJX0XNC54iDzOtFyfiDDKijfH53KNLnk8A4eUSF9j1Qhw9RDL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oex7VBal
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: PTP: Rename macros used
 for PHY/QUAD port definitions
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

The ice_fill_phy_msg_e822 function uses several macros to specify the the
correct address when sending a sideband message to the PHY block in
hardware.

The names of these macros are fairly generic and confusing. Future
development is going to extend the driver to support new hardware families
which have different relationships between PHY and QUAD. Rename the macros
for clarity and to indicate that they are E822 specific. This also matches
closer to the hardware specification in the data sheet.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_type.h   | 14 +++++++-------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 6cab87595690..2f01f12a5391 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -178,9 +178,9 @@ ice_fill_phy_msg_e822(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
 {
 	int phy_port, phy, quadtype;
 
-	phy_port = port % ICE_PORTS_PER_PHY;
-	phy = port / ICE_PORTS_PER_PHY;
-	quadtype = (port / ICE_PORTS_PER_QUAD) % ICE_NUM_QUAD_TYPE;
+	phy_port = port % ICE_PORTS_PER_PHY_E822;
+	phy = port / ICE_PORTS_PER_PHY_E822;
+	quadtype = (port / ICE_PORTS_PER_QUAD) % ICE_QUADS_PER_PHY_E822;
 
 	if (quadtype == 0) {
 		msg->msg_addr_low = P_Q0_L(P_0_BASE + offset, phy_port);
@@ -512,7 +512,7 @@ ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 
 	msg->dest_dev = rmn_0;
 
-	if ((quad % ICE_NUM_QUAD_TYPE) == 0)
+	if ((quad % ICE_QUADS_PER_PHY_E822) == 0)
 		addr = Q_0_BASE + offset;
 	else
 		addr = Q_1_BASE + offset;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f1231a8162af..6419c83ee077 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -886,13 +886,13 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-#define ICE_PHY_PER_NAC		1
-#define ICE_MAX_QUAD		2
-#define ICE_NUM_QUAD_TYPE	2
-#define ICE_PORTS_PER_QUAD	4
-#define ICE_PHY_0_LAST_QUAD	1
-#define ICE_PORTS_PER_PHY	8
-#define ICE_NUM_EXTERNAL_PORTS		ICE_PORTS_PER_PHY
+#define ICE_PHY_PER_NAC_E822		1
+#define ICE_MAX_QUAD			2
+#define ICE_QUADS_PER_PHY_E822		2
+#define ICE_PORTS_PER_PHY_E822		8
+#define ICE_PORTS_PER_QUAD		4
+#define ICE_PORTS_PER_PHY_E810		4
+#define ICE_NUM_EXTERNAL_PORTS		(ICE_MAX_QUAD * ICE_PORTS_PER_QUAD)
 
 	/* Active package version (currently active) */
 	struct ice_pkg_ver active_pkg_ver;
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
