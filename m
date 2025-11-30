Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6D8C9514F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Nov 2025 16:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67E9B409F7;
	Sun, 30 Nov 2025 15:23:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vEviNL9B22Jw; Sun, 30 Nov 2025 15:23:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EBEA409EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764516222;
	bh=82Ryh1Vp2a+g+zrTWDXp16XSXhO0zbmK3Pm3YpzKixQ=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=syYekPr72fa/8mgDIspSgvsez1wVbfRr2hFsCVkqItrUw5EqG6tyVwsHmAEcvIJdL
	 EAhJR1jkp5L6vzNx6WO8qigBYE55Y4b4Rrjx3OZEqKvsl89KPdSnUKbsUF8r6pepTG
	 hwtgpVyeZWm1Bx1OAzucEMQ7BUvh/gKO1yWmmDnwyUhlj8XFltw93WXTfbBpD7Bgk8
	 DSh67qPY+LfaBI3Fp1cOEe7Hf3Yh5JoZ9/YCXv8iMXig5Smp52HkcsjJ7N+tKzlo7p
	 JSe0LI9iAQB0R1DYo0yAajDcnZXErDppwAtj8K9Vj8ylzFPNe4Zr0WIL4KADUeG9/N
	 if6ISXBxxcU6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EBEA409EF;
	Sun, 30 Nov 2025 15:23:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F5041A9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 15:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3120660706
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 15:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cooll4StT_BA for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Nov 2025 15:23:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=151.80.40.192;
 helo=smtp.blochl.de; envelope-from=markus@blochl.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5458D606F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5458D606F7
Received: from smtp.blochl.de (mail.blochl.de [151.80.40.192])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5458D606F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 15:23:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.blochl.de 9700D4641E8D
Received: from WorkKnecht (ppp-93-104-7-227.dynamic.mnet-online.de
 [93.104.7.227])
 by smtp.blochl.de (Postfix) with ESMTPSA id 9700D4641E8D;
 Sun, 30 Nov 2025 15:23:34 +0000 (UTC)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at 449b6f9d6baf
Date: Sun, 30 Nov 2025 16:23:30 +0100
From: Markus =?utf-8?Q?Bl=C3=B6chl?= <markus@blochl.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Cc: Richard Cochran <richardcochran@gmail.com>, 
 Markus =?utf-8?Q?Bl=C3=B6chl?= <markus.bloechl@ipetronik.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus =?utf-8?Q?Bl=C3=B6chl?= <markus@blochl.de>
Message-ID: <20251130-i40e_ptp_link_down-v2-1-8d6dfc10a661@blochl.de>
X-B4-Tracking: v=1; b=H4sIAJlgLGkC/32NXQrCMBCEr1L22Ug3P0h98h5Sgm22drEkJSlVK
 bm7IQfw8ZthvjkgUWRKcG0OiLRz4uALyFMD4/zwTxLsCoNspUHETrBuya7bahf2L+vC2wt96ZS
 eOkJjHJThGmniT5XewdMGfQlnTluI33q0Y63+OXcUKAZlcCInjR7UbVjCOC9nR9DnnH8SFuKwu
 QAAAA==
X-Change-ID: 20251119-i40e_ptp_link_down-47934f9e155d
X-Mailer: b4 0.14.3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4
 (smtp.blochl.de [0.0.0.0]); Sun, 30 Nov 2025 15:23:35 +0000 (UTC)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 spf=fail smtp.mailfrom=blochl.de
Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix ptp time increment while
 link is down
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When an X710 ethernet port with an active ptp daemon (like the ptp4l and
phc2sys combo) suddenly loses its link and regains it after a while, the
ptp daemon has a hard time to recover synchronization and sometimes
entirely fails to do so.

The issue seems to be related to a wrongly configured increment while the
link is down. This could not be observed with the Intel reference driver.
We identified the fix to appear in Intels official ethernet-linux-i40e
release version 2.17.4.

Include the relevant changes in the kernel version of this driver.

Fixes: beb0dff1251d ("i40e: enable PTP")
Cc: stable@vger.kernel.org
Signed-off-by: Markus Blöchl <markus@blochl.de>
---
Tested with an X710 at 10G link speed and kernel version 6.12.42.
---
Changes in v2:
- Fix kdoc and code formatting
- Rebase onto net tree
- Link to v1: https://lore.kernel.org/r/20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de
---
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h |  9 +++
 drivers/net/ethernet/intel/i40e/i40e_ptp.c        | 69 +++++++++++++++++++++--
 drivers/net/ethernet/intel/i40e/i40e_register.h   |  9 +++
 drivers/net/ethernet/intel/i40e/i40e_type.h       |  8 +++
 4 files changed, 90 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index cc02a85ad42b..ec176e9569ad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -1488,6 +1488,15 @@ enum i40e_aq_link_speed {
 	I40E_LINK_SPEED_25GB	= BIT(I40E_LINK_SPEED_25GB_SHIFT),
 };
 
+enum i40e_prt_mac_pcs_link_speed {
+	I40E_PRT_MAC_PCS_LINK_SPEED_UNKNOWN = 0,
+	I40E_PRT_MAC_PCS_LINK_SPEED_100MB,
+	I40E_PRT_MAC_PCS_LINK_SPEED_1GB,
+	I40E_PRT_MAC_PCS_LINK_SPEED_10GB,
+	I40E_PRT_MAC_PCS_LINK_SPEED_40GB,
+	I40E_PRT_MAC_PCS_LINK_SPEED_20GB
+};
+
 struct i40e_aqc_module_desc {
 	u8 oui[3];
 	u8 reserved1;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 33535418178b..89abe2f22216 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -847,6 +847,66 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index)
 	i40e_ptp_convert_to_hwtstamp(skb_hwtstamps(skb), ns);
 }
 
+/**
+ * i40e_ptp_get_link_speed_hw - get the link speed
+ * @pf: Board private structure
+ *
+ * Calculate link speed depending on the link status.
+ *
+ * Return: current link speed.
+ **/
+static enum i40e_aq_link_speed i40e_ptp_get_link_speed_hw(struct i40e_pf *pf)
+{
+	bool link_up = pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
+	enum i40e_aq_link_speed link_speed = I40E_LINK_SPEED_UNKNOWN;
+	struct i40e_hw *hw = &pf->hw;
+
+	if (link_up) {
+		struct i40e_link_status *hw_link_info = &hw->phy.link_info;
+
+		i40e_aq_get_link_info(hw, true, NULL, NULL);
+		link_speed = hw_link_info->link_speed;
+	} else {
+		enum i40e_prt_mac_link_speed prtmac_linksta;
+		u64 prtmac_pcs_linksta;
+
+		prtmac_linksta = (rd32(hw, I40E_PRTMAC_LINKSTA(0)) &
+				  I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK) >>
+				  I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT;
+		if (prtmac_linksta == I40E_PRT_MAC_LINK_SPEED_40GB) {
+			link_speed = I40E_LINK_SPEED_40GB;
+		} else {
+			i40e_aq_debug_read_register(hw,
+						    I40E_PRTMAC_PCS_LINK_STATUS1(0),
+						    &prtmac_pcs_linksta,
+						    NULL);
+
+			prtmac_pcs_linksta = (prtmac_pcs_linksta &
+					      I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK) >>
+					      I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT;
+
+			switch (prtmac_pcs_linksta) {
+			case I40E_PRT_MAC_PCS_LINK_SPEED_100MB:
+				link_speed = I40E_LINK_SPEED_100MB;
+				break;
+			case I40E_PRT_MAC_PCS_LINK_SPEED_1GB:
+				link_speed = I40E_LINK_SPEED_1GB;
+				break;
+			case I40E_PRT_MAC_PCS_LINK_SPEED_10GB:
+				link_speed = I40E_LINK_SPEED_10GB;
+				break;
+			case I40E_PRT_MAC_PCS_LINK_SPEED_20GB:
+				link_speed = I40E_LINK_SPEED_20GB;
+				break;
+			default:
+				link_speed = I40E_LINK_SPEED_UNKNOWN;
+			}
+		}
+	}
+
+	return link_speed;
+}
+
 /**
  * i40e_ptp_set_increment - Utility function to update clock increment rate
  * @pf: Board private structure
@@ -857,16 +917,14 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index)
  **/
 void i40e_ptp_set_increment(struct i40e_pf *pf)
 {
-	struct i40e_link_status *hw_link_info;
+	enum i40e_aq_link_speed link_speed;
 	struct i40e_hw *hw = &pf->hw;
 	u64 incval;
 	u32 mult;
 
-	hw_link_info = &hw->phy.link_info;
+	link_speed = i40e_ptp_get_link_speed_hw(pf);
 
-	i40e_aq_get_link_info(&pf->hw, true, NULL, NULL);
-
-	switch (hw_link_info->link_speed) {
+	switch (link_speed) {
 	case I40E_LINK_SPEED_10GB:
 		mult = I40E_PTP_10GB_INCVAL_MULT;
 		break;
@@ -909,6 +967,7 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
 	/* Update the base adjustement value. */
 	WRITE_ONCE(pf->ptp_adj_mult, mult);
 	smp_mb(); /* Force the above update. */
+	i40e_ptp_set_1pps_signal_hw(pf);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 432afbb64201..c4051dbcc297 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -530,6 +530,15 @@
 #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT 0
 #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK I40E_MASK(0xFFFF, \
 	I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT)
+/* _i=0...3 */ /* Reset: GLOBR */
+#define I40E_PRTMAC_PCS_LINK_STATUS1(_i) (0x0008C200 + ((_i) * 4))
+#define I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT 24
+#define I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK I40E_MASK(0x7, I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT)
+#define I40E_PRTMAC_PCS_LINK_STATUS2 0x0008C220
+/* _i=0...3 */ /* Reset: GLOBR */
+#define I40E_PRTMAC_LINKSTA(_i) (0x001E2420 + ((_i) * 4))
+#define I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT 27
+#define I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK I40E_MASK(0x7, I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT)
 #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
 #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
 #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKED_SHIFT)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index ed8bbdb586da..98c8c5709e5f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -115,6 +115,14 @@ enum i40e_queue_type {
 	I40E_QUEUE_TYPE_UNKNOWN
 };
 
+enum i40e_prt_mac_link_speed {
+	I40E_PRT_MAC_LINK_SPEED_100MB = 0,
+	I40E_PRT_MAC_LINK_SPEED_1GB,
+	I40E_PRT_MAC_LINK_SPEED_10GB,
+	I40E_PRT_MAC_LINK_SPEED_40GB,
+	I40E_PRT_MAC_LINK_SPEED_20GB
+};
+
 struct i40e_link_status {
 	enum i40e_aq_phy_type phy_type;
 	enum i40e_aq_link_speed link_speed;

---
base-commit: e5235eb6cfe02a51256013a78f7b28779a7740d5
change-id: 20251119-i40e_ptp_link_down-47934f9e155d

Best regards,
-- 
Markus Blöchl <markus@blochl.de>


-- 
