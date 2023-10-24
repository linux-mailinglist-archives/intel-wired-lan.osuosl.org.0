Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1727D498E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 10:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 687C584444;
	Tue, 24 Oct 2023 08:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 687C584444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698135165;
	bh=fAuxOovHicu044i4PELeoAJNtaBfv+Hb3CGtooSGwNI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WBfhdI0+bQXKx0NjKHQQy5/J3SO4q8vNv213hCoRa/kA7ik1u+bYVGCX9w1hSXVgu
	 weQ4h1l8brJPGp1cG68GJWRnZe8uJg5HQvpIsd81tb+7mFslKJFlYXLW71ybESUWxJ
	 ZnP3bmxCo5FIZxGWigUw8BGEVPzrjajEeE4qrIz+mB8/e9hqJmclchVrm0REfCCbxF
	 SWmGAo7W7NmIn4c/CUDT5U5E8wf9rDSoJVg81dyogWVz5md/9yqP3EkvojQMbPo9Np
	 YgJ85jr1Mv0KXfIuuxkWpcw5DubWsdGRbRADF32KweCy84JCJcv5ptmQqzIe2ePwyR
	 fiMxabnQxnlsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EfpH2EHcoopD; Tue, 24 Oct 2023 08:12:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E21BA8443A;
	Tue, 24 Oct 2023 08:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E21BA8443A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC35A1BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C22A4424A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C22A4424A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oY8uM2R3ekya for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 08:12:37 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E7E54249E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 08:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E7E54249E
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-509-ob0twX0ZNJ-hzizh2n60Ig-1; Tue, 24 Oct 2023 04:12:22 -0400
X-MC-Unique: ob0twX0ZNJ-hzizh2n60Ig-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D3FA1019C86;
 Tue, 24 Oct 2023 08:12:22 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 34D18492BFB;
 Tue, 24 Oct 2023 08:12:20 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 10:12:11 +0200
Message-ID: <20231024081211.677502-4-ivecera@redhat.com>
In-Reply-To: <20231024081211.677502-1-ivecera@redhat.com>
References: <20231024081211.677502-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698135156;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YUluDUpmuG9amo4am/A+EO++P8JxhoPDs9Zkr6J3kQM=;
 b=fM4UbgyuL6WpeFezKlGg0F67QsolhCb6hd4tuREoYFU7/emljY3NV5lVCbuUAIhaWAsq2/
 j2PkBo2+bZm9+VEMgnykbuIqUuYWd34lnNbQkzE5c0HaW+0NhDVVfCmLuhgqDStR4vDmM1
 XM2HIycCrHInEdScVCj67OahhcGgpic=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fM4Ubgyu
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] i40e: Use helpers to
 check running FW and AQ API versions
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

Use new helpers to check versions of running FW and provided
AQ API to make the code more readable.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 56 +++++++------------
 drivers/net/ethernet/intel/i40e/i40e_common.c | 25 ++++-----
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  7 +--
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  6 +-
 4 files changed, 36 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 86591140f748..29fc46abf690 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -508,42 +508,35 @@ static int i40e_shutdown_arq(struct i40e_hw *hw)
  **/
 static void i40e_set_hw_caps(struct i40e_hw *hw)
 {
-	struct i40e_adminq_info *aq = &hw->aq;
-
 	bitmap_zero(hw->caps, I40E_HW_CAPS_NBITS);
 
 	switch (hw->mac.type) {
 	case I40E_MAC_XL710:
-		if (aq->api_maj_ver > 1 ||
-		    (aq->api_maj_ver == 1 &&
-		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710)) {
+		if (i40e_is_aq_api_ver_ge(hw, 1,
+					  I40E_MINOR_VER_GET_LINK_INFO_XL710)) {
 			set_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps);
 			set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
 			/* The ability to RX (not drop) 802.1ad frames */
 			set_bit(I40E_HW_CAP_802_1AD, hw->caps);
 		}
-		if ((aq->api_maj_ver == 1 && aq->api_min_ver > 4) ||
-		    aq->api_maj_ver > 1) {
+		if (i40e_is_aq_api_ver_ge(hw, 1, 5)) {
 			/* Supported in FW API version higher than 1.4 */
 			set_bit(I40E_HW_CAP_GENEVE_OFFLOAD, hw->caps);
 		}
-		if ((aq->fw_maj_ver == 4 && aq->fw_min_ver < 33) ||
-		    aq->fw_maj_ver < 4) {
+		if (i40e_is_fw_ver_lt(hw, 4, 33)) {
 			set_bit(I40E_HW_CAP_RESTART_AUTONEG, hw->caps);
 			/* No DCB support  for FW < v4.33 */
 			set_bit(I40E_HW_CAP_NO_DCB_SUPPORT, hw->caps);
 		}
-		if ((aq->fw_maj_ver == 4 && aq->fw_min_ver < 3) ||
-		    aq->fw_maj_ver < 4) {
+		if (i40e_is_fw_ver_lt(hw, 4, 3)) {
 			/* Disable FW LLDP if FW < v4.3 */
 			set_bit(I40E_HW_CAP_STOP_FW_LLDP, hw->caps);
 		}
-		if ((aq->fw_maj_ver == 4 && aq->fw_min_ver >= 40) ||
-		    aq->fw_maj_ver >= 5) {
-			/* Use the FW Set LLDP MIB API if FW > v4.40 */
+		if (i40e_is_fw_ver_ge(hw, 4, 40)) {
+			/* Use the FW Set LLDP MIB API if FW >= v4.40 */
 			set_bit(I40E_HW_CAP_USE_SET_LLDP_MIB, hw->caps);
 		}
-		if (aq->fw_maj_ver >= 6) {
+		if (i40e_is_fw_ver_ge(hw, 6, 0)) {
 			/* Enable PTP L4 if FW > v6.0 */
 			set_bit(I40E_HW_CAP_PTP_L4, hw->caps);
 		}
@@ -569,19 +562,16 @@ static void i40e_set_hw_caps(struct i40e_hw *hw)
 			clear_bit(I40E_HW_CAP_ATR_EVICT, hw->caps);
 		}
 
-		if (aq->api_maj_ver > 1 ||
-		    (aq->api_maj_ver == 1 &&
-		     aq->api_min_ver >= I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722))
+		if (i40e_is_aq_api_ver_ge(hw, 1,
+					  I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722))
 			set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
 
-		if (aq->api_maj_ver > 1 ||
-		    (aq->api_maj_ver == 1 &&
-		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_X722))
+		if (i40e_is_aq_api_ver_ge(hw, 1,
+					  I40E_MINOR_VER_GET_LINK_INFO_X722))
 			set_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps);
 
-		if (aq->api_maj_ver > 1 ||
-		    (aq->api_maj_ver == 1 &&
-		     aq->api_min_ver >= I40E_MINOR_VER_FW_REQUEST_FEC_X722))
+		if (i40e_is_aq_api_ver_ge(hw, 1,
+					  I40E_MINOR_VER_FW_REQUEST_FEC_X722))
 			set_bit(I40E_HW_CAP_X722_FEC_REQUEST, hw->caps);
 
 		fallthrough;
@@ -590,25 +580,17 @@ static void i40e_set_hw_caps(struct i40e_hw *hw)
 	}
 
 	/* Newer versions of firmware require lock when reading the NVM */
-	if (aq->api_maj_ver > 1 ||
-	    (aq->api_maj_ver == 1 &&
-	     aq->api_min_ver >= 5))
+	if (i40e_is_aq_api_ver_ge(hw, 1, 5))
 		set_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps);
 
 	/* The ability to RX (not drop) 802.1ad frames was added in API 1.7 */
-	if (aq->api_maj_ver > 1 ||
-	    (aq->api_maj_ver == 1 &&
-	     aq->api_min_ver >= 7))
+	if (i40e_is_aq_api_ver_ge(hw, 1, 7))
 		set_bit(I40E_HW_CAP_802_1AD, hw->caps);
 
-	if (aq->api_maj_ver > 1 ||
-	    (aq->api_maj_ver == 1 &&
-	     aq->api_min_ver >= 8))
+	if (i40e_is_aq_api_ver_ge(hw, 1, 8))
 		set_bit(I40E_HW_CAP_FW_LLDP_PERSISTENT, hw->caps);
 
-	if (aq->api_maj_ver > 1 ||
-	    (aq->api_maj_ver == 1 &&
-	     aq->api_min_ver >= 9))
+	if (i40e_is_aq_api_ver_ge(hw, 1, 9))
 		set_bit(I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED, hw->caps);
 }
 
@@ -694,7 +676,7 @@ int i40e_init_adminq(struct i40e_hw *hw)
 			   &oem_lo);
 	hw->nvm.oem_ver = ((u32)oem_hi << 16) | oem_lo;
 
-	if (hw->aq.api_maj_ver > I40E_FW_API_VERSION_MAJOR) {
+	if (i40e_is_aq_api_ver_ge(hw, I40E_FW_API_VERSION_MAJOR + 1, 0)) {
 		ret_code = -EIO;
 		goto init_adminq_free_arq;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index df7ba349030d..e171f4814e21 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1374,8 +1374,8 @@ i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 
 	if (report_init) {
 		if (hw->mac.type ==  I40E_MAC_XL710 &&
-		    hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
-		    hw->aq.api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710) {
+		    i40e_is_aq_api_ver_ge(hw, I40E_FW_API_VERSION_MAJOR,
+					  I40E_MINOR_VER_GET_LINK_INFO_XL710)) {
 			status = i40e_aq_get_link_info(hw, true, NULL, NULL);
 		} else {
 			hw->phy.phy_types = le32_to_cpu(abilities->phy_type);
@@ -1645,9 +1645,8 @@ int i40e_aq_get_link_info(struct i40e_hw *hw,
 	else
 		hw_link_info->lse_enable = false;
 
-	if ((hw->mac.type == I40E_MAC_XL710) &&
-	    (hw->aq.fw_maj_ver < 4 || (hw->aq.fw_maj_ver == 4 &&
-	     hw->aq.fw_min_ver < 40)) && hw_link_info->phy_type == 0xE)
+	if (hw->mac.type == I40E_MAC_XL710 && i40e_is_fw_ver_lt(hw, 4, 40) &&
+	    hw_link_info->phy_type == 0xE)
 		hw_link_info->phy_type = I40E_PHY_TYPE_10GBASE_SFPP_CU;
 
 	if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps) &&
@@ -5223,14 +5222,14 @@ int i40e_aq_rx_ctl_read_register(struct i40e_hw *hw,
  **/
 u32 i40e_read_rx_ctl(struct i40e_hw *hw, u32 reg_addr)
 {
-	bool use_register;
+	bool use_register = false;
 	int status = 0;
 	int retry = 5;
 	u32 val = 0;
 
-	use_register = (((hw->aq.api_maj_ver == 1) &&
-			(hw->aq.api_min_ver < 5)) ||
-			(hw->mac.type == I40E_MAC_X722));
+	if (i40e_is_aq_api_ver_lt(hw, 1, 5) || hw->mac.type == I40E_MAC_X722)
+		use_register = true;
+
 	if (!use_register) {
 do_retry:
 		status = i40e_aq_rx_ctl_read_register(hw, reg_addr, &val, NULL);
@@ -5285,13 +5284,13 @@ int i40e_aq_rx_ctl_write_register(struct i40e_hw *hw,
  **/
 void i40e_write_rx_ctl(struct i40e_hw *hw, u32 reg_addr, u32 reg_val)
 {
-	bool use_register;
+	bool use_register = false;
 	int status = 0;
 	int retry = 5;
 
-	use_register = (((hw->aq.api_maj_ver == 1) &&
-			(hw->aq.api_min_ver < 5)) ||
-			(hw->mac.type == I40E_MAC_X722));
+	if (i40e_is_aq_api_ver_lt(hw, 1, 5) || hw->mac.type == I40E_MAC_X722)
+		use_register = true;
+
 	if (!use_register) {
 do_retry:
 		status = i40e_aq_rx_ctl_write_register(hw, reg_addr,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 39e44a2e0677..498728e16a37 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -804,14 +804,11 @@ int i40e_get_dcb_config(struct i40e_hw *hw)
 	int ret = 0;
 
 	/* If Firmware version < v4.33 on X710/XL710, IEEE only */
-	if ((hw->mac.type == I40E_MAC_XL710) &&
-	    (((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver < 33)) ||
-	      (hw->aq.fw_maj_ver < 4)))
+	if (hw->mac.type == I40E_MAC_XL710 && i40e_is_fw_ver_lt(hw, 4, 33))
 		return i40e_get_ieee_dcb_config(hw);
 
 	/* If Firmware version == v4.33 on X710/XL710, use old CEE struct */
-	if ((hw->mac.type == I40E_MAC_XL710) &&
-	    ((hw->aq.fw_maj_ver == 4) && (hw->aq.fw_min_ver == 33))) {
+	if (hw->mac.type == I40E_MAC_XL710 && i40e_is_fw_ver_eq(hw, 4, 33)) {
 		ret = i40e_aq_get_cee_dcb_config(hw, &cee_v1_cfg,
 						 sizeof(cee_v1_cfg), NULL);
 		if (!ret) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7001fe2870c4..df058540d277 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15830,15 +15830,15 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		 hw->vendor_id, hw->device_id, hw->subsystem_vendor_id,
 		 hw->subsystem_device_id);
 
-	if (hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
-	    hw->aq.api_min_ver > I40E_FW_MINOR_VERSION(hw))
+	if (i40e_is_aq_api_ver_ge(hw, I40E_FW_API_VERSION_MAJOR,
+				  I40E_FW_MINOR_VERSION(hw) + 1))
 		dev_dbg(&pdev->dev,
 			"The driver for the device detected a newer version of the NVM image v%u.%u than v%u.%u.\n",
 			 hw->aq.api_maj_ver,
 			 hw->aq.api_min_ver,
 			 I40E_FW_API_VERSION_MAJOR,
 			 I40E_FW_MINOR_VERSION(hw));
-	else if (hw->aq.api_maj_ver == 1 && hw->aq.api_min_ver < 4)
+	else if (i40e_is_aq_api_ver_lt(hw, 1, 4))
 		dev_info(&pdev->dev,
 			 "The driver for the device detected an older version of the NVM image v%u.%u than expected v%u.%u. Please update the NVM image.\n",
 			 hw->aq.api_maj_ver,
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
