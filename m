Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50469A2F28E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 17:07:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3FA6818B5;
	Mon, 10 Feb 2025 16:07:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bowAhcFe-iSV; Mon, 10 Feb 2025 16:07:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C006B818C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739203649;
	bh=+uT+U1EtT2Wpz/dMctFha4plI+Mxk76y4F5kqaxtpiI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FnwuQ0L76LUEEGpFP/7Cfqc2hAN0zsaj0IUWX58VvDsU/hI63UnDlys6uYuztB5hh
	 HP05bDXvgxdiDBN7mwsRM1/Zr1UiKsDJzeKZVnhnNE2q8iSQPUOk7jzAXtO+EDZHET
	 9kvdd7AbTtZtUDE53FT8iZVxujVUl26ORCu+ot+I/1q6eB1dTQqGfX9lXjA2WA27xK
	 33N8SRcZsiZ7I80b+0Mv4BTwYdBeayQv5QOWN+xAMwWJJwp81jKdLFXUFrNwiiutFE
	 mtpbr+tHSoSQh4d9KTj2aI2HqbFTNvdAkIO0yu7CUVFpetxiiluTLcnT3q4NS+uJ2q
	 ixZMYc7fIzpbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C006B818C2;
	Mon, 10 Feb 2025 16:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F5E7CF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 15:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B3BA80F9E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 15:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ee3VQn7bMA3D for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Feb 2025 15:45:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=wejmanpm@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C606680F42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C606680F42
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C606680F42
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 15:45:22 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-38dc5764fc0so1864792f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 08 Feb 2025 07:45:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739029521; x=1739634321;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+uT+U1EtT2Wpz/dMctFha4plI+Mxk76y4F5kqaxtpiI=;
 b=Yuiyx0A8omGFHZL2Xu65nApX/5uqvEVb9WNDJ943IiAOU3k3hOnXBfjR3TtQITVB0t
 52CykKpT6if7rwq+q4xKOVabo04/GlQAntcUVyBxncew19FknLGJ6TTIAOSLjCqHwjk/
 cTkCzoMwChyZb+YyHC9kYAQv6MHORQH4kyShR0AeJ/mAQEIufgE9Jw5NJKbA76Ug2KEc
 MK7Tm1TkZ7ApLjgYtZoz1m2KZQ5dE4I+REXsrYLSRwMOSTgszjQ5PRyFerOInboD9x15
 GgrCkVwWrKxsXZtJb6d/PMqK569UFTVW5/OeWD3SP7qIqHV9roV9MtMelqyVhIBTwD6M
 KHzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXeghnrBkV9vAgtQZj/S2lXKiaIBj0aeKe9b3xkGAFWJk/I+Er7jAukEYCSgcJv2AGtrujctY9+906KfHmqYAY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxfAd7X1lH5USb9wStPQx4PwlktiYU+3WD5gI6onaTasHwm+RIZ
 KjVD2TPTXoFWaw+YTECXibPnNSeANJk1x1b2iDn5y1n5a9whFrRx
X-Gm-Gg: ASbGnctoWMRKY/LBdzBpp9Nw9m2vNvbXo6rZhDcp5jjzjbwn6/03bRzDsqGAqIIZ9+5
 +gQvG+1RkIRSPsCZc3J3+ez/uZT/MrZWEUwVA3EJZgVOUm+ZLY4YSEQuNGBY3dsB+IDZVX2z7Ty
 TMNvYasu5hAx1q0LR7pHuR86NcaNfetQ+3YfpKn8opjgnCtRaMZ/WCqfp3nFPB8/iF9sZ1lLZW4
 po3+bITzzyOtBs+XQG08RZs3kMOJHHvy1j9JcAKDrkLlzEYBqUvJN5N9jdacp5vyfwu8SL05Lb7
 dlqMt9vcECJu6ZK3/ghb3A6AcEDE
X-Google-Smtp-Source: AGHT+IHluwwAjXf04y50yLIxgiLJ0wsSQFnUUuleCSt1AYy/xobTI7OcnQVqA4ezyViuGT7gP7cUEw==
X-Received: by 2002:a5d:47a7:0:b0:38d:d8b2:ceef with SMTP id
 ffacd0b85a97d-38dd8b2d243mr212402f8f.13.1739029520538; 
 Sat, 08 Feb 2025 07:45:20 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:a92:c660:4e6d:9fdf:c6ef:8c92])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4391da96502sm91571575e9.1.2025.02.08.07.45.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2025 07:45:19 -0800 (PST)
From: Piotr Wejman <wejmanpm@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Piotr Wejman <wejmanpm@gmail.com>
Date: Sat,  8 Feb 2025 16:43:49 +0100
Message-Id: <20250208154350.75316-1-wejmanpm@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Feb 2025 16:07:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739029521; x=1739634321; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+uT+U1EtT2Wpz/dMctFha4plI+Mxk76y4F5kqaxtpiI=;
 b=FItHnjNDPrbh9QRlqWJl1GnQ0QZAn1YHPLdi9ORnevvlzOHjljmYOPxLnMpR+eAgFA
 52Lze5qcWJVBq8p6vzA4F+M7+fv+sVwdISHyzEXj5z4S2hv5wjTpDUZYs8AbuvmDUq6w
 VTPHB7+Thdv0km1LtPR7bswQyXRB+CO9zYiSRiuD+/WAxBxaRZJe2l1uFptB4by8oBQF
 kl912f3fRE1pURDXAdSl4uzFgm+vZ8VXyDdZ57tY8O2alidZ86Tl0Qb+i8rfZnvCi1Nv
 z5HxuSK5wt4tNB/Rqei66fNESkqHGdHuc7YWZKm7tGU/Z6/aoFoCg7QuodcOIdlr/Zgn
 TLeA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=FItHnjND
Subject: [Intel-wired-lan] [PATCH v2] net: e1000e: convert to
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
Use Netlink extack for error reporting in e1000e_hwtstamp_set.
Align the indentation of net_device_ops.

Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>
---
Changes in v2:
  - amend commit message
  - use extack for error reporting
  - rename e1000_mii_ioctl to e1000_ioctl
  - Link to v1: https://lore.kernel.org/netdev/20250202170839.47375-1-piotrwejman90@gmail.com/

 drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 68 ++++++++++------------
 2 files changed, 31 insertions(+), 39 deletions(-)

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
index 286155efcedf..43933e64819b 100644
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
+		NL_SET_ERR_MSG(extack, "No HW timestamp support\n");
 		return -EINVAL;
+	}
 
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
@@ -3608,6 +3612,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 	case HWTSTAMP_TX_ON:
 		break;
 	default:
+		NL_SET_ERR_MSG(extack, "Unsupported TX HW timestamp type\n");
 		return -ERANGE;
 	}
 
@@ -3681,6 +3686,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
 	default:
+		NL_SET_ERR_MSG(extack, "Unsupported RX HW timestamp filter\n");
 		return -ERANGE;
 	}
 
@@ -3693,7 +3699,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 	ew32(TSYNCTXCTL, regval);
 	if ((er32(TSYNCTXCTL) & E1000_TSYNCTXCTL_ENABLED) !=
 	    (regval & E1000_TSYNCTXCTL_ENABLED)) {
-		e_err("Timesync Tx Control register not set as expected\n");
+		NL_SET_ERR_MSG(extack, "Timesync Tx Control register not set as expected\n");
 		return -EAGAIN;
 	}
 
@@ -3706,7 +3712,7 @@ static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
 				 E1000_TSYNCRXCTL_TYPE_MASK)) !=
 	    (regval & (E1000_TSYNCRXCTL_ENABLED |
 		       E1000_TSYNCRXCTL_TYPE_MASK))) {
-		e_err("Timesync Rx Control register not set as expected\n");
+		NL_SET_ERR_MSG(extack, "Timesync Rx Control register not set as expected\n");
 		return -EAGAIN;
 	}
 
@@ -3932,7 +3938,7 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 	spin_unlock_irqrestore(&adapter->systim_lock, flags);
 
 	/* restore the previous hwtstamp configuration settings */
-	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
+	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config, NULL);
 }
 
 /**
@@ -6079,8 +6085,8 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
-static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
-			   int cmd)
+static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr,
+		       int cmd)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct mii_ioctl_data *data = if_mii(ifr);
@@ -6140,7 +6146,8 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
 /**
  * e1000e_hwtstamp_set - control hardware time stamping
  * @netdev: network interface device structure
- * @ifr: interface request
+ * @config: timestamp configuration
+ * @extack: netlink extended ACK report
  *
  * Outgoing time stamping can be enabled and disabled. Play nice and
  * disable it when requested, although it shouldn't cause any overhead
@@ -6153,20 +6160,18 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
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
@@ -6178,38 +6183,23 @@ static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
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
@@ -7346,9 +7336,11 @@ static const struct net_device_ops e1000e_netdev_ops = {
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

