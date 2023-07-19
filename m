Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE7575A17D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 00:12:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AD5A4159A;
	Wed, 19 Jul 2023 22:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AD5A4159A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689804775;
	bh=MFDgRxShILCGWtW3JscDCxyIs/Yi5fkL8hAM8O+AV50=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oAy4HgiYiLZ9l6+Vku/CiS8W5H+EP569TarwYfvw2EfS/7deq4fHL1iYQRw07ksp7
	 Z/Fy2D7+JqZggSjXTczzyRv/jMGTtloEFSsEXqqeS5IKdUy8eI2l3QiqNAIe4bBMrg
	 fJU6pYAeQXzF5geON66rfniYtb4oqV304OeyITgoXfJHlKY1+o3Hbax8DeMoOaddrK
	 pzTZIHZPMtqI7SqqqAWHrqK/FrQF+/8LK1qi77qP/zT3ReGRf2AsUQOd1uYNnF8Hrh
	 VEsLSBSiLBsLEgmS7n7dnayStpjenz43vCCFHkCvS7m9zbN047FHK+RkEgsjG77piM
	 oPgbbcNFt24GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7_cm3U6SxnE; Wed, 19 Jul 2023 22:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2978140391;
	Wed, 19 Jul 2023 22:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2978140391
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01CFC1BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E70078209A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E70078209A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1t9g1mxSUA8d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 450C8820B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 22:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 450C8820B7
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="365460317"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="365460317"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="701411242"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701411242"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:05:32 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 19 Jul 2023 15:05:24 -0700
Message-ID: <20230719220525.3153469-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230719220525.3153469-1-jacob.e.keller@intel.com>
References: <20230719220525.3153469-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689804760; x=1721340760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Mbjus+kYdx2VoWIobnBbLzCfv9VtnYcLZWOCwUYV60=;
 b=neLaOQZGpvpsl5j9YD3Z+t7tcoFSQk7DnwEEpwqVRwwYq66GKFk9OUgo
 Dvy2RhRwoC38/qFcenXzvM5PXlJxjGCaor+WYgDGH4BNcs13wyB2uegNA
 Uzaxal2NBJXL/ql8RrMYBJmm4LuxC1qU375nO9x5KTEBqmqw43z6k8wzC
 I8HAsNNCNDnYo6hzJ5gcTPr/ovKjo4zW121dsmkGIvm9ttv/oLsHQQUJZ
 ZpDO0MveWgN4hi2zRnyJsOibORngdtuBFszMiAe5G/dbg7zgTzgUipU54
 bCQ7lrGjh+IqyojxzegypAKarp1zoTWyTN3mq7aMZDVBKx+KsUR/8CafJ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=neLaOQZG
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: PTP: move quad value
 check inside ice_fill_phy_msg_e822
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

The callers of ice_fill_phy_msg_e822 check for whether the quad number is
within the expected range. Move this check inside the ice_fill_phy_msg_e822
function instead of duplicating it twice.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2f01f12a5391..168e72de06d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -505,11 +505,14 @@ ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
  * Fill a message buffer for accessing a register in a quad shared between
  * multiple PHYs.
  */
-static void
+static int
 ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 {
 	u32 addr;
 
+	if (quad >= ICE_MAX_QUAD)
+		return -EINVAL;
+
 	msg->dest_dev = rmn_0;
 
 	if ((quad % ICE_QUADS_PER_PHY_E822) == 0)
@@ -519,6 +522,8 @@ ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 
 	msg->msg_addr_low = lower_16_bits(addr);
 	msg->msg_addr_high = upper_16_bits(addr);
+
+	return 0;
 }
 
 /**
@@ -537,10 +542,10 @@ ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	if (quad >= ICE_MAX_QUAD)
-		return -EINVAL;
+	err = ice_fill_quad_msg_e822(&msg, quad, offset);
+	if (err)
+		return err;
 
-	ice_fill_quad_msg_e822(&msg, quad, offset);
 	msg.opcode = ice_sbq_msg_rd;
 
 	err = ice_sbq_rw_reg(hw, &msg);
@@ -571,10 +576,10 @@ ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	if (quad >= ICE_MAX_QUAD)
-		return -EINVAL;
+	err = ice_fill_quad_msg_e822(&msg, quad, offset);
+	if (err)
+		return err;
 
-	ice_fill_quad_msg_e822(&msg, quad, offset);
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
