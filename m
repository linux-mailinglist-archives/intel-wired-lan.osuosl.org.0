Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78BC763E67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 20:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F2C840B9F;
	Wed, 26 Jul 2023 18:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F2C840B9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690396090;
	bh=qUn7xEq0g/w+hwA2jyXt0l76Mg1yBQVT6W0kIg8RNqg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wHxzZho1VJaT613ixNqh09K3/Q513mXHw7oIea7fUMKTbqF1lQ5NdQneMToCJot3M
	 zECSeqIZuw2wgCgIIjOYq+LLa+EiAt5UX7zvyrK2UVCPhBIVEbY6s7EBSAJ2ofC7Th
	 ZOD8i35F2FeNExSsw1Q11MdThynWD8tVZMz0FiVWvq3QiUNDNJoOsgqg0Rtjd6uGff
	 uZobftqkS7+OpG1Ro9Tgs7SMPW6vuokvPHaveUAKFnxFKgSklH01PFtUVzv1Uob4x7
	 l02RHRPhorrsg1orYZ/zQuJ2JzLIkWBA1qdm9Kv163qGpo71b2i6fE8S1ERZTgZzKD
	 3n4ozaaH7oHrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7BEYnCJEmVF; Wed, 26 Jul 2023 18:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 042DD40534;
	Wed, 26 Jul 2023 18:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 042DD40534
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57AE41BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:28:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 359FF41E0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:27:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 359FF41E0B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWlhUQBCcwtm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 18:27:58 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 50A1C41E44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 18:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50A1C41E44
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="358096581"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="358096581"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 11:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="796684728"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="796684728"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 11:27:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 26 Jul 2023 11:27:45 -0700
Message-ID: <20230726182745.1326754-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230726182745.1326754-1-jacob.e.keller@intel.com>
References: <20230726182745.1326754-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690396078; x=1721932078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cYHBq7TbywWprb/mF6YV4EvTP2ADpQScyI+IL2bHjuk=;
 b=VIZW7xNPx8kVoeYD50HBYW6lig4TxgAcNuodUnkAZ0pWaFPlmz+xdxmL
 x8t76WTmeA2oDIion+uK5VwivP4fwhPaNMpCsKrh5BkG2SKqv6BKLM872
 9d8j3LbPYaLxgOCFIP1jYOFYDGYFymsx010H4lQZHvy27dUg38EnfwPoW
 3oRscw1+zE/Q9ykWE+DwztzEPI2YXObAaPqFzxC/SA5gMPpWGLG92cRNn
 tXI7/8odOrZ+GCQx24w5oepwOU51L08cEwOEi4ZTQSBTs1CTJL/X0oVnh
 f3HLXH047fZ/mvnqq2uXspJkbJKE06bIIpwyDMgsjjyguKG12q2llJK+O
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VIZW7xNP
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: PTP: move quad value
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
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
index 7a9bf3ea1750..8009de9ba4af 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -495,11 +495,14 @@ ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
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
@@ -509,6 +512,8 @@ ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 
 	msg->msg_addr_low = lower_16_bits(addr);
 	msg->msg_addr_high = upper_16_bits(addr);
+
+	return 0;
 }
 
 /**
@@ -527,10 +532,10 @@ ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
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
@@ -561,10 +566,10 @@ ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
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
