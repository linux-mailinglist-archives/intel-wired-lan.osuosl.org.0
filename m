Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 464607D498B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 10:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B79384440;
	Tue, 24 Oct 2023 08:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B79384440
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698135156;
	bh=zX5bFKM96JjvE7fcfAGbjUkterUoYp9GuSu7UaPPzU8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PpzHwLAqBY/thyNI8MJtqVpPk2gA2MvbNwGkhygfqIYIE35hoXQ0TS3qJXRNFwv71
	 gcbmJWFc0mVutOtIdXthBURif0MTpeTBVeDq4sIz5js68bA3Vdr6X5nI3zPa1x6unR
	 f0HOLLUYo21lQdzCkGAtIamSIbjIXq2I/7Hwhm+AgWSpnJEJ7WZS63X2W6c36pTK8g
	 2HkAmt7IVUno1LBTBx77PA/y/vGJt7TS6pLOiX0f1oceRYgqITm5cKBxMVChHOI46P
	 AuBiEVE/otkOKguDawYzSbQA7mwpb/zWl7LpuLFhfT0jTDV94VVoLN3+cmYprKM+D8
	 h4CDw6Me1Q4Ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlcynshiMIUk; Tue, 24 Oct 2023 08:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0D6784434;
	Tue, 24 Oct 2023 08:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0D6784434
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C6161BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6176384441
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6176384441
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xq90-QPG0CW0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 08:12:28 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B5C18443A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B5C18443A
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-134--7Al3Y6IOwihqhgNwl0IrA-1; Tue,
 24 Oct 2023 04:12:18 -0400
X-MC-Unique: -7Al3Y6IOwihqhgNwl0IrA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2C312808FCE;
 Tue, 24 Oct 2023 08:12:17 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 16D71492BFB;
 Tue, 24 Oct 2023 08:12:15 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 10:12:09 +0200
Message-ID: <20231024081211.677502-2-ivecera@redhat.com>
In-Reply-To: <20231024081211.677502-1-ivecera@redhat.com>
References: <20231024081211.677502-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698135147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eYX4ieLYLS9vnBYSPGWi+1qAffL00yE5OYVTrAGUBLU=;
 b=iTchUPngzLNaVixgAW4932ODfD4zYKHLGergT57++Uh+dsSPaco0rYeMmPchxYtWkfQSey
 dIf0ZdS/sFcZUZHOURLTpmGfRQi5u0huTvGC6Ov/ZNesBLI4s6zm5iMkKulAFQ3UIe1gYY
 9xDwe6WQTqlMrpXXxokWnrKgrZVpXNM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iTchUPng
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] i40e: Move
 i40e_is_aq_api_ver_ge helper
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 dacampbe@redhat.com, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move i40e_is_aq_api_ver_ge helper function (used to check if AdminQ
API version is recent enough) to header so it can be used from
other .c files.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 23 ++++---------------
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 14 +++++++++++
 2 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 7fce881abc93..df7ba349030d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1749,21 +1749,6 @@ int i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
 	return status;
 }
 
-/**
- * i40e_is_aq_api_ver_ge
- * @aq: pointer to AdminQ info containing HW API version to compare
- * @maj: API major value
- * @min: API minor value
- *
- * Assert whether current HW API version is greater/equal than provided.
- **/
-static bool i40e_is_aq_api_ver_ge(struct i40e_adminq_info *aq, u16 maj,
-				  u16 min)
-{
-	return (aq->api_maj_ver > maj ||
-		(aq->api_maj_ver == maj && aq->api_min_ver >= min));
-}
-
 /**
  * i40e_aq_add_vsi
  * @hw: pointer to the hw struct
@@ -1890,14 +1875,14 @@ int i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
 
 	if (set) {
 		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
-		if (rx_only_promisc && i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+		if (rx_only_promisc && i40e_is_aq_api_ver_ge(hw, 1, 5))
 			flags |= I40E_AQC_SET_VSI_PROMISC_RX_ONLY;
 	}
 
 	cmd->promiscuous_flags = cpu_to_le16(flags);
 
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_UNICAST);
-	if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+	if (i40e_is_aq_api_ver_ge(hw, 1, 5))
 		cmd->valid_flags |=
 			cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_RX_ONLY);
 
@@ -2000,13 +1985,13 @@ int i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
 
 	if (enable) {
 		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
-		if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+		if (i40e_is_aq_api_ver_ge(hw, 1, 5))
 			flags |= I40E_AQC_SET_VSI_PROMISC_RX_ONLY;
 	}
 
 	cmd->promiscuous_flags = cpu_to_le16(flags);
 	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_UNICAST);
-	if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
+	if (i40e_is_aq_api_ver_ge(hw, 1, 5))
 		cmd->valid_flags |=
 			cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_RX_ONLY);
 	cmd->seid = cpu_to_le16(seid);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 22150368ba64..a21cc607c844 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -594,6 +594,20 @@ static inline bool i40e_is_vf(struct i40e_hw *hw)
 		hw->mac.type == I40E_MAC_X722_VF);
 }
 
+/**
+ * i40e_is_aq_api_ver_ge
+ * @hw: pointer to i40e_hw structure
+ * @maj: API major value to compare
+ * @min: API minor value to compare
+ *
+ * Assert whether current HW API version is greater/equal than provided.
+ **/
+static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
+{
+	return (hw->aq.api_maj_ver > maj ||
+		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
+}
+
 struct i40e_driver_version {
 	u8 major_version;
 	u8 minor_version;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
