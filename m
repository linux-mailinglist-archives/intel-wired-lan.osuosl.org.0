Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6C8A3755A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2025 17:02:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B421A810B3;
	Sun, 16 Feb 2025 16:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bIrM2ZqKKkJ5; Sun, 16 Feb 2025 16:02:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F81081EE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739721726;
	bh=BbUw1c1JOQIlxC4TeNRgzkU2NKaHh/NvpIvOxIRfJY0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PahCj4Zht2J7a1gnih/4nezVOeAyBRLmxFK4Aj7bkrJR90jr0WB3L7SHQVXEG5ZcB
	 8IYW4/ZECUrC0KvhC6lMpDD1y3QB+XPFY42fvb8E3AsBH3btnV1yXlQF1CB/Wl0/dB
	 zf5d1vnI7nwhWRYJQ3xbmJmNCfmeR3Pg1wFYGWvxkuN4P6WO8+eLy9pFQCHxIAA9Ay
	 W7RNokhzC+j3UaTmPW+Q3WvRKTcb/PGzAUtDcf63nbqa74o2o6KbbOEhboXCNdxhqo
	 E8DP/4bAcRFLSFfABQ9d4zwK4vVRRd2WWgHv46KNcGqnaygGVCAevVpkQ81rBboPTa
	 gU/RgyqU0bCuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F81081EE1;
	Sun, 16 Feb 2025 16:02:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BE1D72
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 16:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B13640350
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 16:02:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QzHzW-KA4ezT for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2025 16:02:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42e; helo=mail-wr1-x42e.google.com;
 envelope-from=wejmanpm@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8349E40291
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8349E40291
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8349E40291
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 16:02:01 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-38f325ddbc2so1229695f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 08:02:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739721720; x=1740326520;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BbUw1c1JOQIlxC4TeNRgzkU2NKaHh/NvpIvOxIRfJY0=;
 b=WwHyGN8bT86TpYSL7co0ezxkdrKDUlufESZq8L8ZVYn+cFE9H75nHdW36VxwNoWTUm
 M+4qT/MyJyniSD19JMPHAoce8aGCXTiRE3dMz+sh3ORk9/KsnW0O2vbzG8C+klAgquae
 9w5zw9Kgkitg+134AHfJHynoCkYpJm59bi1CuSxnBa849Z+0PmvIsIYhFbmA2OsyheTp
 AMiBI19t8LO8OCWzGJzuywjMBvF/LbtGmM3SBKcIRH6nyL9TfrG7PsIPquqdC9Jrs6cW
 w+sKaBLmeYbzkOcG4sDvGw+DqJJ05w/V0G9nYH2c/DpMUcHdoo+5wEXuvTyY8EVIzOKu
 Jvpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgJKvZEGW/2yik+HQ/BzTSxdAp0m9/eZ1nW9gypNX1EabGuv28kwflNtLoHf3WSWvNS6zgr8vzyxe++CO1svE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzD5p+BS2xX9QTGGRD6P0SJws04hL/z4B76fa/+2hTprFhSYzO2
 zzPRpgn5XvyZZHqiNZZtcjbNi+x4nZhy4jyRDXNCzcaKTDPKMi26
X-Gm-Gg: ASbGncs+lftgEzNePQZ1w0adTNF50Nl/u+NG7H2wrKCquC1W1ozHcg5EmqG3+/VxhfT
 xThGgvqyJodBzVWm7IG9rdq7S2LZA9rqyyAInoO7DxXl8Dnx+ONLLYmZYTQWriRPxwDk/X9sGWo
 Hzna+27lNr8n2QCGXDZBCXbfDm6XuVVrDCtBMXOpbl+VmNAT0nlZ88MYuAn6acxkCnlO/kysZdh
 t5B7vyog1WX5Ux6hPP7B901Awc8pN3BNaMAnl1R8CE2zi33hv+JXJ1uKKBFkPRkrz+q2fcM8+Yp
 FqiZUkDewjP9e6lF/1GsopmnUqo+
X-Google-Smtp-Source: AGHT+IG773EBbxr/8BmHY+hEC2ivt+Y27B2ALPOEMnFLMRnN7wzGv18SFHpN8LvmF4i9DV5DjKkx6w==
X-Received: by 2002:a05:6000:1f87:b0:38f:2c10:da07 with SMTP id
 ffacd0b85a97d-38f340735d8mr6657944f8f.45.1739721719467; 
 Sun, 16 Feb 2025 08:01:59 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:a92:c660:d870:1798:194c:aafb])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38f259d5c29sm9962334f8f.72.2025.02.16.08.01.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2025 08:01:58 -0800 (PST)
From: Piotr Wejman <wejmanpm@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Piotr Wejman <wejmanpm@gmail.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Date: Sun, 16 Feb 2025 16:57:28 +0100
Message-Id: <20250216155729.63862-1-wejmanpm@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739721720; x=1740326520; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=BbUw1c1JOQIlxC4TeNRgzkU2NKaHh/NvpIvOxIRfJY0=;
 b=UXEenn85ZYe2VArblA8uYYGl1kDcXK2WT0jcRRq/sKTmK6Eh8PXRJJdMGEHcL/oX9r
 kersDcyHKZgfp72O4nAxPlWvX8bgBIcfbGZXg+uFnm+GarrjF4Z/yZmAzykO4Rjs+lXi
 Ni/mY5tG/pWhr/5Ey6fkPJ0yQ/H8GJ40vcrVdgEJ3kiidLxzjy4QpO35cn7X0fk8idyr
 UzbQE2A2MM8NKgxedRTUWJeLRKp8uYNVp1NYCPuZcbdlfklI12ekHMs1YI9DVykw8oS0
 o3gkXQO1YNUjLdJsSM67dJkH25avR66krFqRLHwV1rBE2VXZMdXrXk7tRrfL57lnxClh
 4Xpw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=UXEenn85
Subject: [Intel-wired-lan] [PATCH iwl-next v3] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

Update the driver to use the new hardware timestamping API added in commit
66f7223039c0 ("net: add NDOs for configuring hardware timestamping").
Use Netlink extack for error reporting in e1000e_config_hwtstamp.
Align the indentation of net_device_ops.

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
---
Changes in v3:
  - remove new lines at the end of the extack
  - add error print in e1000e_systim_reset
  - Link to v2: https://lore.kernel.org/netdev/20250208154350.75316-1-wejmanpm@gmail.com/

Changes in v2:
  - amend commit message
  - use extack for error reporting
  - rename e1000_mii_ioctl to e1000_ioctl
  - Link to v1: https://lore.kernel.org/netdev/20250202170839.47375-1-piotrwejman90@gmail.com/

 drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 73 +++++++++++-----------
 2 files changed, 36 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba9c19e6994c..952898151565 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -319,7 +319,7 @@ struct e1000_adapter {
 	u16 tx_ring_count;
 	u16 rx_ring_count;
 
-	struct hwtstamp_config hwtstamp_config;
+	struct kernel_hwtstamp_config hwtstamp_config;
 	struct delayed_work systim_overflow_work;
 	struct sk_buff *tx_hwtstamp_skb;
 	unsigned long tx_hwtstamp_start;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 286155efcedf..1485c46ecb88 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3574,6 +3574,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
  * e1000e_config_hwtstamp - configure the hwtstamp registers and enable/disable
  * @adapter: board private structure
  * @config: timestamp configuration
+ * @extack: netlink extended ACK for error report
  *
  * Outgoing time stamping can be enabled and disabled. Play nice and
  * disable it when requested, although it shouldn't cause any overhead
@@ -3587,7 +3588,8 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
  * exception of "all V2 events regardless of level 2 or 4".
  **/
 static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
-				  struct hwtstamp_config *config)
+				  struct kernel_hwtstamp_config *config,
+				  struct netlink_ext_ack *extack)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
@@ -3598,8 +3600,10 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 	bool is_l2 = false;
 	u32 regval;
 
-	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
+	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP)) {
+		NL_SET_ERR_MSG(extack, "No HW timestamp support");
 		return -EINVAL;
+	}
 
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
@@ -3608,6 +3612,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 	case HWTSTAMP_TX_ON:
 		break;
 	default:
+		NL_SET_ERR_MSG(extack, "Unsupported TX HW timestamp type");
 		return -ERANGE;
 	}
 
@@ -3681,6 +3686,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
 	default:
+		NL_SET_ERR_MSG(extack, "Unsupported RX HW timestamp filter");
 		return -ERANGE;
 	}
 
@@ -3693,7 +3699,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 	ew32(TSYNCTXCTL, regval);
 	if ((er32(TSYNCTXCTL) & E1000_TSYNCTXCTL_ENABLED) !=
 	    (regval & E1000_TSYNCTXCTL_ENABLED)) {
-		e_err("Timesync Tx Control register not set as expected\n");
+		NL_SET_ERR_MSG(extack, "Timesync Tx Control register not set as expected");
 		return -EAGAIN;
 	}
 
@@ -3706,7 +3712,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 				 E1000_TSYNCRXCTL_TYPE_MASK)) !=
 	    (regval & (E1000_TSYNCRXCTL_ENABLED |
 		       E1000_TSYNCRXCTL_TYPE_MASK))) {
-		e_err("Timesync Rx Control register not set as expected\n");
+		NL_SET_ERR_MSG(extack, "Timesync Rx Control register not set as expected");
 		return -EAGAIN;
 	}
 
@@ -3901,6 +3907,7 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 {
 	struct ptp_clock_info *info = &adapter->ptp_clock_info;
 	struct e1000_hw *hw = &adapter->hw;
+	struct netlink_ext_ack extack = {};
 	unsigned long flags;
 	u32 timinca;
 	s32 ret_val;
@@ -3932,7 +3939,11 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 	spin_unlock_irqrestore(&adapter->systim_lock, flags);
 
 	/* restore the previous hwtstamp configuration settings */
-	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
+	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config, &extack);
+	if (ret_val) {
+		if (extack._msg)
+			e_err("%s\n", extack._msg);
+	}
 }
 
 /**
@@ -6079,8 +6090,8 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
-static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
-			   int cmd)
+static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr,
+		       int cmd)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct mii_ioctl_data *data = if_mii(ifr);
@@ -6140,7 +6151,8 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
 /**
  * e1000e_hwtstamp_set - control hardware time stamping
  * @netdev: network interface device structure
- * @ifr: interface request
+ * @config: timestamp configuration
+ * @extack: netlink extended ACK report
  *
  * Outgoing time stamping can be enabled and disabled. Play nice and
  * disable it when requested, although it shouldn't cause any overhead
@@ -6153,20 +6165,18 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
  * specified. Matching the kind of event packet is not supported, with the
  * exception of "all V2 events regardless of level 2 or 4".
  **/
-static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
+static int e1000e_hwtstamp_set(struct net_device *netdev,
+			       struct kernel_hwtstamp_config *config,
+			       struct netlink_ext_ack *extack)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
-	struct hwtstamp_config config;
 	int ret_val;
 
-	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
-		return -EFAULT;
-
-	ret_val = e1000e_config_hwtstamp(adapter, &config);
+	ret_val = e1000e_config_hwtstamp(adapter, config, extack);
 	if (ret_val)
 		return ret_val;
 
-	switch (config.rx_filter) {
+	switch (config->rx_filter) {
 	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_SYNC:
@@ -6178,38 +6188,23 @@ static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
 		 * by hardware so notify the caller the requested packets plus
 		 * some others are time stamped.
 		 */
-		config.rx_filter = HWTSTAMP_FILTER_SOME;
+		config->rx_filter = HWTSTAMP_FILTER_SOME;
 		break;
 	default:
 		break;
 	}
 
-	return copy_to_user(ifr->ifr_data, &config,
-			    sizeof(config)) ? -EFAULT : 0;
+	return 0;
 }
 
-static int e1000e_hwtstamp_get(struct net_device *netdev, struct ifreq *ifr)
+static int e1000e_hwtstamp_get(struct net_device *netdev,
+			       struct kernel_hwtstamp_config *kernel_config)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
-	return copy_to_user(ifr->ifr_data, &adapter->hwtstamp_config,
-			    sizeof(adapter->hwtstamp_config)) ? -EFAULT : 0;
-}
+	*kernel_config = adapter->hwtstamp_config;
 
-static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
-{
-	switch (cmd) {
-	case SIOCGMIIPHY:
-	case SIOCGMIIREG:
-	case SIOCSMIIREG:
-		return e1000_mii_ioctl(netdev, ifr, cmd);
-	case SIOCSHWTSTAMP:
-		return e1000e_hwtstamp_set(netdev, ifr);
-	case SIOCGHWTSTAMP:
-		return e1000e_hwtstamp_get(netdev, ifr);
-	default:
-		return -EOPNOTSUPP;
-	}
+	return 0;
 }
 
 static int e1000_init_phy_wakeup(struct e1000_adapter *adapter, u32 wufc)
@@ -7346,9 +7341,11 @@ static const struct net_device_ops e1000e_netdev_ops = {
 #ifdef CONFIG_NET_POLL_CONTROLLER
 	.ndo_poll_controller	= e1000_netpoll,
 #endif
-	.ndo_set_features = e1000_set_features,
-	.ndo_fix_features = e1000_fix_features,
+	.ndo_set_features	= e1000_set_features,
+	.ndo_fix_features	= e1000_fix_features,
 	.ndo_features_check	= passthru_features_check,
+	.ndo_hwtstamp_get	= e1000e_hwtstamp_get,
+	.ndo_hwtstamp_set	= e1000e_hwtstamp_set,
 };
 
 /**
-- 
2.25.1

