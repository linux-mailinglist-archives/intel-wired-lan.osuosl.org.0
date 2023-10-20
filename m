Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F1F7D1658
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 21:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2047584CC5;
	Fri, 20 Oct 2023 19:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2047584CC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697830695;
	bh=2v/ZobI3NrPFG5Buux0bjLnntujrXcBFWEVpV7pCAVw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oIhVqQlhrPyDTwsXqqnE4EMw/kSYVCUxOEEcv9Ic0VROrq2iz61M4I6yAwN0CYcBq
	 e1b3ChigN/3hRFwlrB0prcGJOaQeaH94GXKejMFEKu+94+efZkZ+NWsnKdUothFigx
	 NR4HMFdL+FrzQjEVezpkwIuCSEXD75xK+19/AeL+WxVGKF9aVqOrUTRiMpAl8ULkFU
	 4Ww6VhedWPXjbrAQq/L+XJq7NvBCaGAKX/FsgAuTLNIJtTywY4ClztKv6NttUO7LCw
	 M+B8tx/x6lT4OPPzsgyW29djSKcz3fCYwwgi4Jm/D67i6IfySjNid+KFRiXAAqfbKJ
	 yU//ngudTlubA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGkeXxSpIAu6; Fri, 20 Oct 2023 19:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D2E384C07;
	Fri, 20 Oct 2023 19:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D2E384C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86AE71BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6035061184
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6035061184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hU4s3OEY3lIw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 19:38:05 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A47E60F9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 19:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A47E60F9F
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-183-o5n6vH6gMZOluGXvWLhgMg-1; Fri,
 20 Oct 2023 15:37:58 -0400
X-MC-Unique: o5n6vH6gMZOluGXvWLhgMg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C82671C068E1;
 Fri, 20 Oct 2023 19:37:57 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED61BC15BB8;
 Fri, 20 Oct 2023 19:37:55 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Oct 2023 21:37:40 +0200
Message-ID: <20231020193746.2274379-4-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-1-ivecera@redhat.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697830683;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DNL/UcNiDceyojz4DABQ0Wm5rSVww1Pxi5fo+C0lryQ=;
 b=I223KzyTYX3a4jTRJ5pJlVU8ZXHPwTnPh6Hct29Q6zbj/eojF2tZYMU9Ea+d8axGLEcGs+
 xrEnP3Ug9JfJKsoxdd38wzPLCuQVt6uM4gR4oWbOK5EuFAaRhc57hlGHAwNHlycNo7o3oA
 T9QpfzDAV12ktyF/dqr6iBbZJ28t2oA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=I223KzyT
Subject: [Intel-wired-lan] [PATCH iwl-next 4/6] i40e: Use DECLARE_BITMAP for
 flags field in i40e_hw
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
Cc: Eric Dumazet <edumazet@google.com>, dacampbe@redhat.com,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Convert flags field in i40e_hw from u64 to bitmap and its usage
to use bit access functions and rename the field to 'caps' as
this field describes capabilities that are set once on init and
read many times later.

Changes:
- Convert "hw_ptr->flags & FLAG" to "test_bit(FLAG, ...)"
- Convert "hw_ptr->flags |= FLAG" to "set_bit(FLAG, ...)"
- Convert "hw_ptr->flags &= ~FLAG" to "clear_bit(FLAG, ...)"
- Rename i40e_hw.flags to i40e_hw.caps
- Rename i40e_set_hw_flags() to i40e_set_hw_caps()
- Adjust caps names so they are prefixed by I40E_HW_CAP_ and existing
  _CAPABLE suffixes are stripped

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 38 +++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_common.c | 20 +++++-----
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  2 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 10 ++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    | 10 ++---
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 22 ++++++-----
 7 files changed, 55 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 9a5a47b29bb7..6754f6b3508c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -503,44 +503,44 @@ static int i40e_shutdown_arq(struct i40e_hw *hw)
 }
 
 /**
- *  i40e_set_hw_flags - set HW flags
+ *  i40e_set_hw_caps - set HW flags
  *  @hw: pointer to the hardware structure
  **/
-static void i40e_set_hw_flags(struct i40e_hw *hw)
+static void i40e_set_hw_caps(struct i40e_hw *hw)
 {
 	struct i40e_adminq_info *aq = &hw->aq;
 
-	hw->flags = 0;
+	bitmap_zero(hw->caps, I40E_HW_CAPS_NBITS);
 
 	switch (hw->mac.type) {
 	case I40E_MAC_XL710:
 		if (aq->api_maj_ver > 1 ||
 		    (aq->api_maj_ver == 1 &&
 		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710)) {
-			hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
-			hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+			set_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps);
+			set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
 			/* The ability to RX (not drop) 802.1ad frames */
-			hw->flags |= I40E_HW_FLAG_802_1AD_CAPABLE;
+			set_bit(I40E_HW_CAP_802_1AD, hw->caps);
 		}
 		break;
 	case I40E_MAC_X722:
-		hw->flags |= I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE |
-			     I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;
+		set_bit(I40E_HW_CAP_AQ_SRCTL_ACCESS_ENABLE, hw->caps);
+		set_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps);
 
 		if (aq->api_maj_ver > 1 ||
 		    (aq->api_maj_ver == 1 &&
 		     aq->api_min_ver >= I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722))
-			hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+			set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
 
 		if (aq->api_maj_ver > 1 ||
 		    (aq->api_maj_ver == 1 &&
 		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_X722))
-			hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
+			set_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps);
 
 		if (aq->api_maj_ver > 1 ||
 		    (aq->api_maj_ver == 1 &&
 		     aq->api_min_ver >= I40E_MINOR_VER_FW_REQUEST_FEC_X722))
-			hw->flags |= I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE;
+			set_bit(I40E_HW_CAP_X722_FEC_REQUEST, hw->caps);
 
 		fallthrough;
 	default:
@@ -551,17 +551,17 @@ static void i40e_set_hw_flags(struct i40e_hw *hw)
 	if (aq->api_maj_ver > 1 ||
 	    (aq->api_maj_ver == 1 &&
 	     aq->api_min_ver >= 5))
-		hw->flags |= I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;
+		set_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps);
 
 	if (aq->api_maj_ver > 1 ||
 	    (aq->api_maj_ver == 1 &&
 	     aq->api_min_ver >= 8))
-		hw->flags |= I40E_HW_FLAG_FW_LLDP_PERSISTENT;
+		set_bit(I40E_HW_CAP_FW_LLDP_PERSISTENT, hw->caps);
 
 	if (aq->api_maj_ver > 1 ||
 	    (aq->api_maj_ver == 1 &&
 	     aq->api_min_ver >= 9))
-		hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED;
+		set_bit(I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED, hw->caps);
 }
 
 /**
@@ -631,7 +631,7 @@ int i40e_init_adminq(struct i40e_hw *hw)
 	/* Some features were introduced in different FW API version
 	 * for different MAC type.
 	 */
-	i40e_set_hw_flags(hw);
+	i40e_set_hw_caps(hw);
 
 	/* get the NVM version info */
 	i40e_read_nvm_word(hw, I40E_SR_NVM_DEV_STARTER_VERSION,
@@ -649,20 +649,20 @@ int i40e_init_adminq(struct i40e_hw *hw)
 	if (hw->mac.type == I40E_MAC_XL710 &&
 	    hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
 	    hw->aq.api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710) {
-		hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
-		hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+		set_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps);
+		set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
 	}
 	if (hw->mac.type == I40E_MAC_X722 &&
 	    hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
 	    hw->aq.api_min_ver >= I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722) {
-		hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+		set_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps);
 	}
 
 	/* The ability to RX (not drop) 802.1ad frames was added in API 1.7 */
 	if (hw->aq.api_maj_ver > 1 ||
 	    (hw->aq.api_maj_ver == 1 &&
 	     hw->aq.api_min_ver >= 7))
-		hw->flags |= I40E_HW_FLAG_802_1AD_CAPABLE;
+		set_bit(I40E_HW_CAP_802_1AD, hw->caps);
 
 	if (hw->aq.api_maj_ver > I40E_FW_API_VERSION_MAJOR) {
 		ret_code = -EIO;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index d7e24d661724..7fce881abc93 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1650,7 +1650,7 @@ int i40e_aq_get_link_info(struct i40e_hw *hw,
 	     hw->aq.fw_min_ver < 40)) && hw_link_info->phy_type == 0xE)
 		hw_link_info->phy_type = I40E_PHY_TYPE_10GBASE_SFPP_CU;
 
-	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE &&
+	if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps) &&
 	    hw->mac.type != I40E_MAC_X722) {
 		__le32 tmp;
 
@@ -2253,7 +2253,7 @@ int i40e_aq_set_switch_config(struct i40e_hw *hw,
 	scfg->flags = cpu_to_le16(flags);
 	scfg->valid_flags = cpu_to_le16(valid_flags);
 	scfg->mode = mode;
-	if (hw->flags & I40E_HW_FLAG_802_1AD_CAPABLE) {
+	if (test_bit(I40E_HW_CAP_802_1AD, hw->caps)) {
 		scfg->switch_tag = cpu_to_le16(hw->switch_tag);
 		scfg->first_tag = cpu_to_le16(hw->first_tag);
 		scfg->second_tag = cpu_to_le16(hw->second_tag);
@@ -3637,7 +3637,7 @@ i40e_aq_restore_lldp(struct i40e_hw *hw, u8 *setting, bool restore,
 		(struct i40e_aqc_lldp_restore *)&desc.params.raw;
 	int status;
 
-	if (!(hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT)) {
+	if (!test_bit(I40E_HW_CAP_FW_LLDP_PERSISTENT, hw->caps)) {
 		i40e_debug(hw, I40E_DEBUG_ALL,
 			   "Restore LLDP not supported by current FW version.\n");
 		return -ENODEV;
@@ -3680,7 +3680,7 @@ int i40e_aq_stop_lldp(struct i40e_hw *hw, bool shutdown_agent,
 		cmd->command |= I40E_AQ_LLDP_AGENT_SHUTDOWN;
 
 	if (persist) {
-		if (hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT)
+		if (test_bit(I40E_HW_CAP_FW_LLDP_PERSISTENT, hw->caps))
 			cmd->command |= I40E_AQ_LLDP_AGENT_STOP_PERSIST;
 		else
 			i40e_debug(hw, I40E_DEBUG_ALL,
@@ -3713,7 +3713,7 @@ int i40e_aq_start_lldp(struct i40e_hw *hw, bool persist,
 	cmd->command = I40E_AQ_LLDP_AGENT_START;
 
 	if (persist) {
-		if (hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT)
+		if (test_bit(I40E_HW_CAP_FW_LLDP_PERSISTENT, hw->caps))
 			cmd->command |= I40E_AQ_LLDP_AGENT_START_PERSIST;
 		else
 			i40e_debug(hw, I40E_DEBUG_ALL,
@@ -3741,7 +3741,7 @@ i40e_aq_set_dcb_parameters(struct i40e_hw *hw, bool dcb_enable,
 		(struct i40e_aqc_set_dcb_parameters *)&desc.params.raw;
 	int status;
 
-	if (!(hw->flags & I40E_HW_FLAG_FW_LLDP_STOPPABLE))
+	if (!test_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, hw->caps))
 		return -ENODEV;
 
 	i40e_fill_default_direct_cmd_desc(&desc,
@@ -5043,7 +5043,7 @@ static int i40e_led_get_reg(struct i40e_hw *hw, u16 led_addr,
 	u32 i;
 
 	*reg_val = 0;
-	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
+	if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps)) {
 		status =
 		       i40e_aq_get_phy_register(hw,
 						I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
@@ -5076,7 +5076,7 @@ static int i40e_led_set_reg(struct i40e_hw *hw, u16 led_addr,
 	int status;
 	u32 i;
 
-	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
+	if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps)) {
 		status =
 		       i40e_aq_set_phy_register(hw,
 						I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
@@ -5115,7 +5115,7 @@ int i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
 	u8 port_num;
 	u32 i;
 
-	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
+	if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps)) {
 		status =
 		      i40e_aq_get_phy_register(hw,
 					       I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
@@ -5335,7 +5335,7 @@ static void i40e_mdio_if_number_selection(struct i40e_hw *hw, bool set_mdio,
 					  struct i40e_aqc_phy_register_access *cmd)
 {
 	if (set_mdio && cmd->phy_interface == I40E_AQ_PHY_REG_ACCESS_EXTERNAL) {
-		if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED)
+		if (test_bit(I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED, hw->caps))
 			cmd->cmd_flags |=
 				I40E_AQ_PHY_REG_ACCESS_SET_MDIO_IF_NUMBER |
 				((mdio_num <<
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 68602fc375f6..39e44a2e0677 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -877,7 +877,7 @@ int i40e_init_dcb(struct i40e_hw *hw, bool enable_mib_change)
 		return -EOPNOTSUPP;
 
 	/* Read LLDP NVM area */
-	if (hw->flags & I40E_HW_FLAG_FW_LLDP_PERSISTENT) {
+	if (test_bit(I40E_HW_CAP_FW_LLDP_PERSISTENT, hw->caps)) {
 		u8 offset = 0;
 
 		if (hw->mac.type == I40E_MAC_XL710)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index ed47a7f14122..b0a869a39ed1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1597,7 +1597,7 @@ static int i40e_set_fec_param(struct net_device *netdev,
 		return -EPERM;
 
 	if (hw->mac.type == I40E_MAC_X722 &&
-	    !(hw->flags & I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE)) {
+	    !test_bit(I40E_HW_CAP_X722_FEC_REQUEST, hw->caps)) {
 		netdev_err(netdev, "Setting FEC encoding not supported by firmware. Please update the NVM image.\n");
 		return -EOPNOTSUPP;
 	}
@@ -2831,7 +2831,7 @@ static int i40e_set_phys_id(struct net_device *netdev,
 		if (!test_bit(I40E_HW_PHY_CONTROLS_LEDS, pf->hw_features)) {
 			pf->led_status = i40e_led_get(hw);
 		} else {
-			if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE))
+			if (!test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps))
 				i40e_aq_set_phy_debug(hw, I40E_PHY_DEBUG_ALL,
 						      NULL);
 			ret = i40e_led_get_phy(hw, &temp_status,
@@ -2858,7 +2858,7 @@ static int i40e_set_phys_id(struct net_device *netdev,
 			ret = i40e_led_set_phy(hw, false, pf->led_status,
 					       (pf->phy_led_val |
 					       I40E_PHY_LED_MODE_ORIG));
-			if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE))
+			if (!test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps))
 				i40e_aq_set_phy_debug(hw, 0, NULL);
 		}
 		break;
@@ -5340,7 +5340,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	 * LLDP with this flag on unsupported FW versions.
 	 */
 	if (test_bit(I40E_FLAG_FW_LLDP_DIS, changed_flags) &&
-	    (!(pf->hw.flags & I40E_HW_FLAG_FW_LLDP_STOPPABLE))) {
+	    !test_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, pf->hw.caps)) {
 		dev_warn(&pf->pdev->dev,
 			 "Device does not support changing FW LLDP\n");
 		return -EOPNOTSUPP;
@@ -5511,7 +5511,7 @@ static int i40e_get_module_info(struct net_device *netdev,
 	int status;
 
 	/* Check if firmware supports reading module EEPROM. */
-	if (!(hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE)) {
+	if (!test_bit(I40E_HW_CAP_AQ_PHY_ACCESS, hw->caps)) {
 		netdev_err(vsi->netdev, "Module EEPROM memory read not supported. Please update the NVM image.\n");
 		return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d79edab64560..f5fe50265270 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12872,8 +12872,8 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	 */
 	if (pf->hw.mac.type == I40E_MAC_XL710 &&
 	    pf->hw.func_caps.npar_enable &&
-	    (pf->hw.flags & I40E_HW_FLAG_FW_LLDP_STOPPABLE))
-		pf->hw.flags &= ~I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+	    test_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, pf->hw.caps))
+		clear_bit(I40E_HW_CAP_FW_LLDP_STOPPABLE, pf->hw.caps);
 
 #ifdef CONFIG_PCI_IOV
 	if (pf->hw.func_caps.num_vfs && pf->hw.partition_id == 1) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index f20f3b0fd893..bebf9d4e9068 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -291,7 +291,7 @@ static int i40e_read_nvm_word_aq(struct i40e_hw *hw, u16 offset,
 static int __i40e_read_nvm_word(struct i40e_hw *hw,
 				u16 offset, u16 *data)
 {
-	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE)
+	if (test_bit(I40E_HW_CAP_AQ_SRCTL_ACCESS_ENABLE, hw->caps))
 		return i40e_read_nvm_word_aq(hw, offset, data);
 
 	return i40e_read_nvm_word_srctl(hw, offset, data);
@@ -310,14 +310,14 @@ int i40e_read_nvm_word(struct i40e_hw *hw, u16 offset,
 {
 	int ret_code = 0;
 
-	if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
+	if (test_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps))
 		ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 	if (ret_code)
 		return ret_code;
 
 	ret_code = __i40e_read_nvm_word(hw, offset, data);
 
-	if (hw->flags & I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK)
+	if (test_bit(I40E_HW_CAP_NVM_READ_REQUIRES_LOCK, hw->caps))
 		i40e_release_nvm(hw);
 
 	return ret_code;
@@ -499,7 +499,7 @@ static int __i40e_read_nvm_buffer(struct i40e_hw *hw,
 				  u16 offset, u16 *words,
 				  u16 *data)
 {
-	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE)
+	if (test_bit(I40E_HW_CAP_AQ_SRCTL_ACCESS_ENABLE, hw->caps))
 		return i40e_read_nvm_buffer_aq(hw, offset, words, data);
 
 	return i40e_read_nvm_buffer_srctl(hw, offset, words, data);
@@ -521,7 +521,7 @@ int i40e_read_nvm_buffer(struct i40e_hw *hw, u16 offset,
 {
 	int ret_code = 0;
 
-	if (hw->flags & I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE) {
+	if (test_bit(I40E_HW_CAP_AQ_SRCTL_ACCESS_ENABLE, hw->caps)) {
 		ret_code = i40e_acquire_nvm(hw, I40E_RESOURCE_READ);
 		if (!ret_code) {
 			ret_code = i40e_read_nvm_buffer_aq(hw, offset, words,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 2c791b7342b9..bf10acf543a0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -482,6 +482,18 @@ struct i40e_dcbx_config {
 	struct i40e_dcb_app_priority_table app[I40E_DCBX_MAX_APPS];
 };
 
+enum i40e_hw_flags {
+	I40E_HW_CAP_AQ_SRCTL_ACCESS_ENABLE,
+	I40E_HW_CAP_802_1AD,
+	I40E_HW_CAP_AQ_PHY_ACCESS,
+	I40E_HW_CAP_NVM_READ_REQUIRES_LOCK,
+	I40E_HW_CAP_FW_LLDP_STOPPABLE,
+	I40E_HW_CAP_FW_LLDP_PERSISTENT,
+	I40E_HW_CAP_AQ_PHY_ACCESS_EXTENDED,
+	I40E_HW_CAP_X722_FEC_REQUEST,
+	I40E_HW_CAPS_NBITS,
+};
+
 /* Port hardware description */
 struct i40e_hw {
 	u8 __iomem *hw_addr;
@@ -546,15 +558,7 @@ struct i40e_hw {
 	struct i40e_dcbx_config remote_dcbx_config; /* Peer Cfg */
 	struct i40e_dcbx_config desired_dcbx_config; /* CEE Desired Cfg */
 
-#define I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE BIT_ULL(0)
-#define I40E_HW_FLAG_802_1AD_CAPABLE        BIT_ULL(1)
-#define I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE  BIT_ULL(2)
-#define I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK BIT_ULL(3)
-#define I40E_HW_FLAG_FW_LLDP_STOPPABLE      BIT_ULL(4)
-#define I40E_HW_FLAG_FW_LLDP_PERSISTENT     BIT_ULL(5)
-#define I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED BIT_ULL(6)
-#define I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE BIT_ULL(7)
-	u64 flags;
+	DECLARE_BITMAP(caps, I40E_HW_CAPS_NBITS);
 
 	/* Used in set switch config AQ command */
 	u16 switch_tag;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
