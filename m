Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5BEA25F8E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 17:13:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0676181EA2;
	Mon,  3 Feb 2025 16:13:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ASugL4_rGd_G; Mon,  3 Feb 2025 16:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31B2181EAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738599228;
	bh=Gc62Mcb8WfUfiQxYaCnCZ+JSusxB/1LQagA0LnXU69I=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=42nRZe+xlVOsEhcHh4lBwvvhoPgkPaRneUWJx4F+9howERtt7OFRwfvpxD4edI14v
	 Dy1xtrhQzD8SaMUxcsKvkcu6NIGlOwtnDz7ueo/wW537RIgmMtHF8/ZStiu+kPc51V
	 fNnVW2eMfuuLrDW09+U3U1CBX8rwuTo8DcPDKP1HSH+e2kqKYlqdYtdXeJg+HV6Kbu
	 D/juTMvpIBbQn7R8a2C9k5AUzQcNEpFs99IfaY8+Hk3+brBbX+0FGTYkVdTj51xPU5
	 Oa9gynS+8BsQsyqW98Jy2YjwL4qriJZwm8CVwX/VhUXr+05kqjnW9Eq4TMdWcdnWH7
	 72/aoxHx+nRiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31B2181EAB;
	Mon,  3 Feb 2025 16:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 605A4198
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Feb 2025 17:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5080F81F1C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Feb 2025 17:16:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uow_xwcuhZXN for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Feb 2025 17:16:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::433; helo=mail-wr1-x433.google.com;
 envelope-from=piotrwejman90@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D5DC81F18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D5DC81F18
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D5DC81F18
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Feb 2025 17:16:06 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-388cae9eb9fso2033918f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 02 Feb 2025 09:16:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738516565; x=1739121365;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Gc62Mcb8WfUfiQxYaCnCZ+JSusxB/1LQagA0LnXU69I=;
 b=oGcVnMAGgTEFwq08TO6bmecbRUizFheFL00KbxDcmBh4v8u0Vf7jeQlfMIClCJnujG
 X4f+P7GpySTNFddl+hL2WOhTrAsSlnsgSQgfWUEpvD3IHiTENpMNq0gFHh/X7gObSPw9
 J2kXMxsF2mi+dXTDI+Y9Cwgen5pyqzhzo4QW8N4SkKBeS48934vTNSS5oHjAMdQNfQUB
 mbDt0LAvU0kho5e1R1zURNVTbaKDfuLprZ2lI6Le9NpmVEM91O+/RziNrdzjpWfi4Vyn
 mgK6rm0KkfxxT7eUn8LgT5Sga2Cl7uIfRe+i0K5AGDs5TP4pYy1mh1XJbhbOGL3LWH/t
 v8fw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWS6JZeNw2L90OCJQfb0fsyU0Blr597r6tk+hiO4PtgbYoNkHSBrYgvrq3AwQf4y+RJ9ZvzTWhwuWvlolTIf74=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwXkp3hOu2m7bV82+NzNbZQHcsrTikoBobIznCvFvSk8NGYka/9
 buee0fCc+JMHUr1oeO87D9AOVAcuhiU1lFJlPuXCuvjX6G3I0urW
X-Gm-Gg: ASbGnctmGao6AFtUqlOCg20DTm2yWhZRsJ+bA/sENQvgDmRCICEPJGcHFzW5HSXfnE2
 lgwJVfLYh2/d/1Jcy0raN9NRoq2zVLrfkr2wmxXOHLfRDJdiTJeMnsSpxKTeCDz+UzUF2RS4p4t
 shLEP4hX3qtjVjBGOlc7dQvG6BKuwpTenJ1cS4uTz9QcnO2uZczErW9M13sdRkXFd9MPN+D9rVq
 dK+jaPRoaF1puNRRQsX24QCKsSIJgZPnFUIIWbIyWgzcipGKR4vgp+9w8Ok7HCS472rJJSwUu2L
 wnOXypsInamNKQ72Ssnn5IKsUe5fvKGvO84=
X-Google-Smtp-Source: AGHT+IFEnfGxR95PvmrGvDdLZOWBVlGXHXzgm+XtnTVAW0zPWH1dengr7T0wghbeV0+bel4vM7OtZQ==
X-Received: by 2002:a5d:58f3:0:b0:38c:3f12:64a7 with SMTP id
 ffacd0b85a97d-38c520ba30bmr10852219f8f.50.1738516564796; 
 Sun, 02 Feb 2025 09:16:04 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:a92:c660:cf11:24fb:f4d7:3dfa])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-438dcc81d74sm161064105e9.37.2025.02.02.09.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2025 09:16:04 -0800 (PST)
From: Piotr Wejman <piotrwejman90@gmail.com>
To: 
Cc: Piotr Wejman <piotrwejman90@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Sun,  2 Feb 2025 18:08:39 +0100
Message-Id: <20250202170839.47375-1-piotrwejman90@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Feb 2025 16:13:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738516565; x=1739121365; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Gc62Mcb8WfUfiQxYaCnCZ+JSusxB/1LQagA0LnXU69I=;
 b=SEReykQVs4hwTcBdl9nDiwM+yAyVgZfBfeP87whwN8gOBzmpT/7hh6AeztV9vAWgLe
 FnBPbZTb+aAK7L9QyZCK9CpQIaBJB6V5AS7elD0gHL9LvNur10PY91nVWRiVfN1ijpc7
 OwQ1qtE4/U+pkCrifqbYER6urfX885XNVeE1+/FyPSUlVvLWdqoIVuZn44kViRf29y3Z
 ix+f71eLp6GD5adoDTLii6lb0n8Atnx9VUIOV7DGwskpAVjTWatgETg3esx3AdvFEOOd
 83VXsGiLg7w0NLCxHfw/sUYr9FKaPJoaLWijlcw2RMAo5U6Z6540Uv/nejk1i/IJCr8F
 sbAA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=SEReykQV
Subject: [Intel-wired-lan] [PATCH] net: e1000e: convert to
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

Update the driver to the new hw timestamping API.

Signed-off-by: Piotr Wejman <piotrwejman90@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 52 ++++++++--------------
 2 files changed, 20 insertions(+), 34 deletions(-)

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
index 286155efcedf..15f0794afddd 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3587,7 +3587,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
  * exception of "all V2 events regardless of level 2 or 4".
  **/
 static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
-				  struct hwtstamp_config *config)
+				  struct kernel_hwtstamp_config *config)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
@@ -6140,7 +6140,8 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
 /**
  * e1000e_hwtstamp_set - control hardware time stamping
  * @netdev: network interface device structure
- * @ifr: interface request
+ * @config: timestamp configuration
+ * @extack: netlink extended ACK report
  *
  * Outgoing time stamping can be enabled and disabled. Play nice and
  * disable it when requested, although it shouldn't cause any overhead
@@ -6153,20 +6154,18 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
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
+	ret_val = e1000e_config_hwtstamp(adapter, config);
 	if (ret_val)
 		return ret_val;
 
-	switch (config.rx_filter) {
+	switch (config->rx_filter) {
 	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_SYNC:
@@ -6178,38 +6177,23 @@ static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
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
@@ -7337,7 +7321,7 @@ static const struct net_device_ops e1000e_netdev_ops = {
 	.ndo_set_rx_mode	= e1000e_set_rx_mode,
 	.ndo_set_mac_address	= e1000_set_mac,
 	.ndo_change_mtu		= e1000_change_mtu,
-	.ndo_eth_ioctl		= e1000_ioctl,
+	.ndo_eth_ioctl		= e1000_mii_ioctl,
 	.ndo_tx_timeout		= e1000_tx_timeout,
 	.ndo_validate_addr	= eth_validate_addr,
 
@@ -7346,9 +7330,11 @@ static const struct net_device_ops e1000e_netdev_ops = {
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

