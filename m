Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5AFA40871
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2025 13:51:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77512608FA;
	Sat, 22 Feb 2025 12:51:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rB0wGK_mKLSf; Sat, 22 Feb 2025 12:51:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5FA3608B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740228674;
	bh=dIB85NX55cr0Sxu2JumigyhMRgow9LLzALrybUQOOEw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W7ZEduQB1yiGxPY3FXRXFA22339IRrY1w/yeMMJyirmfzunMDIZ2FFBDrr3xvmN2T
	 7Wn4oyrzowkwQPTI5CyIiY6KZMypc0hS4I62pwEpNm9h2QL1AZnmLomSNzOPHw41to
	 tdW4j29N0PLxlib4CU3xYaZ1+Zdd/onnXsA1aO5nQrpyf57ShQoKGqpOVDtx6mKxOc
	 dn9/lHhBT+P8H7pLjnwgUG4FbSH+SOPhPEXUZqHONdOgtZc+3Hy/YRTAeRcEzUFkGp
	 s2ALI2961iBTGqpDrQfssf1MlNOF8hX+QBbRBzZ9COM00GI9psIgtJO7LXY0E0Y0tQ
	 utw3jcpPaORqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5FA3608B9;
	Sat, 22 Feb 2025 12:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E4343D92
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 12:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3B7B81092
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 12:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NLkjGI2ex42S for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2025 12:51:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=wejmanpm@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0F3C1811B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F3C1811B3
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F3C1811B3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 12:51:10 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-38f24fc466aso2190007f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 04:51:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740228669; x=1740833469;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dIB85NX55cr0Sxu2JumigyhMRgow9LLzALrybUQOOEw=;
 b=ediLhfgoZxkWSfu3aS1fPfXRvcqoH4Z8V0QOXRXN7VyF1m6QCiJFEI5muiWztev7/3
 cZ/Jo1dCEVl4kUhQbmF3SJN9F8zsC0XZI6tmha4ev7dGX+gEI2dnFdqKpl++iPNj+mh3
 WEYZIrqXfFVR5tVxK/1jzAHwgKCgLsg625aRc3yokfTdl++bgYYh9iK201N1CwyhagS8
 b65275uTV24JMOKCv/KhXNlJ8slrKKrw39e1TqoMFexsB+gR05Ur+OH2yQy4GOK8yhYp
 sbsnBTDyr3GisS6HxYg8BwatYdmqg9cTHT8bEflUS8PCDd1jEmrA+xWaFKQykQIlEIRG
 klOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRgdtqWQrgCDvZa4UX30fa//m9Jh5W2t681pN78U3DGYIVW3+JopuDTRNUH3H84qUMUwwWJBUOF1Oj25G7cPo=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyv3FYb1aA23HJoPTpZGICJq+bUj/WgVgm/ngyHOY/b2tyZcgu7
 YEAozXTVd6rh1c5tN3yaCkqjg+PXhIvBob+Ost8tdxYNQYWprtdG
X-Gm-Gg: ASbGncsPSNVRVtcVOyzr0h9yj7ZL9F3cbdFJBocEHPXxCRlphDuZUlIaJ5ckfix7y1F
 ZeuoApa7UyUkrfZa4RI11dSvcC5jvGoF5M4pSEkKLG4EplbjEYMV58y3GjcyVV4aH+F4gxcsu3K
 4eAQ04JoeRnNJxGuGiYDUk5XlD/xmeY6T9u/V7knLACLCM0a5NC9783utJBmu6tlDb1/7uVFbsh
 x8pGBEx4NcOvvDwzBlt7O+9HHgOztBlt9S7S6aT8eW1KDjBARIVfj7rY+6+mbAcTU9auMFNCL2s
 M3FwxC4sCd660zJ7Dthh5zGeLZazkHkgiMnwzuU=
X-Google-Smtp-Source: AGHT+IFIj+StWfoqjrtFysljTebHXH3AcvVHZLMeJi3pe/2IE8kYMkcE6K3cgL7B8b7Fxb+tHFrIWA==
X-Received: by 2002:a05:6000:154a:b0:38f:50fd:55a8 with SMTP id
 ffacd0b85a97d-38f70783eeamr5033329f8f.6.1740228668610; 
 Sat, 22 Feb 2025 04:51:08 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:a92:c660:b3a6:504f:bfca:6782])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38f25915719sm26416065f8f.60.2025.02.22.04.51.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2025 04:51:08 -0800 (PST)
From: Piotr Wejman <wejmanpm@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Piotr Wejman <wejmanpm@gmail.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Simon Horman <horms@kernel.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Sat, 22 Feb 2025 13:46:29 +0100
Message-Id: <20250222124629.35797-1-wejmanpm@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740228669; x=1740833469; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dIB85NX55cr0Sxu2JumigyhMRgow9LLzALrybUQOOEw=;
 b=ebG4RThQ3tKXT1+twmgLiD5iBYuun5HnR3vp69nWD+9jm/g1oR5emuUzbzhWhRNELO
 +Dz0pLMxm3d/mFyy8rc0zaAq26DzJLpnaEiJfUPGzv1h7ta14vhIMPN8OMBvUCachHZb
 AjdmDk2b4kkuyiLTtSxooaaY5Jl8zfXxpXbh4xOoR2Xnvp3hjW1IqYlsRbUeirOJu52D
 6AviweHhy341tV1XaYTkat6BCKmdQ/mkWGp3vjlMBE8JjyVlXIN4t5xsDP9XD/PKIwsa
 qrQdRpwuns7/hwh3U6ZaWc29zhXrufl3nl4zEd6spdKa1gZmICb1hOrYdw8v7UARZDfe
 ZVKQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ebG4RThQ
Subject: [Intel-wired-lan] [PATCH iwl-next v4] net: e1000e: convert to
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
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
---
Changes in v4:
  - fix line wrappnig
  - Linke to v3: https://lore.kernel.org/netdev/20250216155729.63862-1-wejmanpm@gmail.com/

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
 drivers/net/ethernet/intel/e1000e/netdev.c | 75 +++++++++++-----------
 2 files changed, 38 insertions(+), 39 deletions(-)

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
index 286155efcedf..e3887a5c7601 100644
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
 
@@ -3693,7 +3699,8 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 	ew32(TSYNCTXCTL, regval);
 	if ((er32(TSYNCTXCTL) & E1000_TSYNCTXCTL_ENABLED) !=
 	    (regval & E1000_TSYNCTXCTL_ENABLED)) {
-		e_err("Timesync Tx Control register not set as expected\n");
+		NL_SET_ERR_MSG(extack,
+			       "Timesync Tx Control register not set as expected");
 		return -EAGAIN;
 	}
 
@@ -3706,7 +3713,8 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 				 E1000_TSYNCRXCTL_TYPE_MASK)) !=
 	    (regval & (E1000_TSYNCRXCTL_ENABLED |
 		       E1000_TSYNCRXCTL_TYPE_MASK))) {
-		e_err("Timesync Rx Control register not set as expected\n");
+		NL_SET_ERR_MSG(extack,
+			       "Timesync Rx Control register not set as expected");
 		return -EAGAIN;
 	}
 
@@ -3901,6 +3909,7 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 {
 	struct ptp_clock_info *info = &adapter->ptp_clock_info;
 	struct e1000_hw *hw = &adapter->hw;
+	struct netlink_ext_ack extack = {};
 	unsigned long flags;
 	u32 timinca;
 	s32 ret_val;
@@ -3932,7 +3941,12 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 	spin_unlock_irqrestore(&adapter->systim_lock, flags);
 
 	/* restore the previous hwtstamp configuration settings */
-	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
+	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
+					 &extack);
+	if (ret_val) {
+		if (extack._msg)
+			e_err("%s\n", extack._msg);
+	}
 }
 
 /**
@@ -6079,8 +6093,7 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
-static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
-			   int cmd)
+static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct mii_ioctl_data *data = if_mii(ifr);
@@ -6140,7 +6153,8 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
 /**
  * e1000e_hwtstamp_set - control hardware time stamping
  * @netdev: network interface device structure
- * @ifr: interface request
+ * @config: timestamp configuration
+ * @extack: netlink extended ACK report
  *
  * Outgoing time stamping can be enabled and disabled. Play nice and
  * disable it when requested, although it shouldn't cause any overhead
@@ -6153,20 +6167,18 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
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
@@ -6178,38 +6190,23 @@ static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
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
@@ -7346,9 +7343,11 @@ static const struct net_device_ops e1000e_netdev_ops = {
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

