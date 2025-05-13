Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5A1AB5F97
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 00:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9747260AC6;
	Tue, 13 May 2025 22:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QBaBKd8u-vKN; Tue, 13 May 2025 22:40:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9536F60AB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747176024;
	bh=RSXcNK9afbZfDS02iEQ039LRO1YK/rtmQ05CWBqOFLE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ugoRjfGUKHuuT5AqrObQjwNs2sADqBUoJa1cwS8HaIg5kxdn2sbJn9aQ81lV2YS7S
	 AM4xVeqMQdRcCkYr+NxI1RGk4xUouNxuoaiuvPGJpdHNDX2DiacvHzcnLqo/AwT7SK
	 2iUlD/gjaQM2Rc82PJvapdcir6AvGc/eqHAmedUOHjy6YCN8N73WABN20U4dNjO9iO
	 0pxpNyAQBct5ZgbBSsCfTRHtwvhmrG2Ico7thS4Uo7wlItgvzsUopEmgTcr/Mk6JbT
	 2p0GlRmTUF4V2HrmZidVOseEokOV5FlYr44PuU1+XCIoXQyo599Z0ZSerLEoZm6G+/
	 5UcWhvf+F8Q6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9536F60AB9;
	Tue, 13 May 2025 22:40:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C0BDD153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B18CE60AAD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 50eC91xLCPDl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 22:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::361; helo=mail-ot1-x361.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C68E660A9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C68E660A9F
Received: from mail-ot1-x361.google.com (mail-ot1-x361.google.com
 [IPv6:2607:f8b0:4864:20::361])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C68E660A9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:40:21 +0000 (UTC)
Received: by mail-ot1-x361.google.com with SMTP id
 46e09a7af769-72c14235af3so3843662a34.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 15:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747176020; x=1747780820;
 h=content-transfer-encoding:references:in-reply-to:message-id:date
 :subject:cc:to:from:dkim-signature:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RSXcNK9afbZfDS02iEQ039LRO1YK/rtmQ05CWBqOFLE=;
 b=jdBxXaZBV2RLk2QnaB5DUZfEg3Wg1eAeJBzp7Xw+MzJP1yT/oKVC1mfXdeGSe48q0Q
 YqMgeBYQT+GWEvkXE7k3I/Z1nigc+h7mj6LWle+6UwZOshLq7hXLalYfo7HtRf5EKBXu
 tVRqCPuX3eiHxnjcjJ3fYvlarLzVlOTIyKan3xu0yMyxTE6AuPHO7IBl4b9kQSKxRm3a
 Q0GAhO8NQVimLe9dhuZugRurndg4a8zcsC9S1LSR1T7ucJqyu+/pptqOO6AWlwM+I3dp
 QNjDCFdPywYKZIROZ7wiu565NTiRaoOotqPvy77U1hP5c3LaMl8Fnss5B+yapn8dJMKy
 S5oA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGKXs2HcTGwhiCi/ym/y+HshFSF+cYjwijS4FDo6cUsi3GD0Og1Y2h9XnVRpkkCjz7+yYgR1Rgj1Yxs3Q/TgA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz2E1/mkTmziihwg9CVKoe57hsSsfz7To2dkyUOXHu+nPFSiayp
 KUryemdzb97+MafUrTpUpkXlZl8pzWyGRwQ3Aw7tkTVi1SCGZy5ccbzyEy1Gn6UfdUz4VN1ljXZ
 GmkyXXa67RwZYgHGozBNZ1FeOGC5soA==
X-Gm-Gg: ASbGncsI/TJCcoJN/9hvMd6uqJRWpOwT4YrASswltUfXflfDxZeeem3KiCsSkL+qijD
 URJ7+nzhxbHn/pJ0FnP5wc/YeHevUDPmy1cO0XsUp4iK6d/fNGfEkvDDW93WuBuRIzg8QcgTbhV
 O8Fhtr1RtGdFOWG3yp9iposLpLXuLe/4AyO2j3uCHhjPo5K4dWjykPeOXj858ZrtDD6HOrB3Yig
 pRNRQxA2JovkLcXovBtW5AE2jW81hybFJoQBwtNXkFkDaFiX6DAVqKhFCiIYR3QPsyJ9feEwKrL
 Xcgh5NbnBkbDwOq04S8Utwg=
X-Google-Smtp-Source: AGHT+IFw4unP4TtYCivnsEjLNivZRwen5oTYduVSjB3bBq5EZtnvuAolbMdZu0cxcPIEN54gp8SoPF72SJFn
X-Received: by 2002:a05:6830:6015:b0:72b:f997:19c4 with SMTP id
 46e09a7af769-734e1579a25mr728416a34.26.1747176020382; 
 Tue, 13 May 2025 15:40:20 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 46e09a7af769-732265b6624sm336246a34.11.2025.05.13.15.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 May 2025 15:40:20 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (mpazdan-home-zvfkk.sjc.aristanetworks.com [10.244.171.242])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 6CC5E10023F;
 Tue, 13 May 2025 22:40:19 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id 67FC940B24; Tue, 13 May 2025 22:40:19 +0000 (UTC)
X-SMTP-Authentication: Allow-List-permitted
X-SMTP-Authentication: Allow-List-permitted
From: Marek Pazdan <mpazdan@arista.com>
To: andrew@lunn.ch
Cc: aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, daniel.zahka@gmail.com,
 davem@davemloft.net, ecree.xilinx@gmail.com, edumazet@google.com,
 gal@nvidia.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 jianbol@nvidia.com, kory.maincent@bootlin.com, kuba@kernel.org,
 linux-kernel@vger.kernel.org, mpazdan@arista.com, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com, willemb@google.com
Date: Tue, 13 May 2025 22:40:01 +0000
Message-ID: <20250513224017.202236-2-mpazdan@arista.com>
In-Reply-To: <20250513224017.202236-1-mpazdan@arista.com>
References: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
 <20250513224017.202236-1-mpazdan@arista.com>
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1747176019;
 bh=RSXcNK9afbZfDS02iEQ039LRO1YK/rtmQ05CWBqOFLE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y8nLf22JYSSZzUgIGcjeKAfu8JLFvmD7chCGdWHp0zh8t5XS8oQaRXDtROquAv3fy
 nnIWd8zhH22TvPkDhOeygWMant5PK+UFtDAkDEefvAaqZfi5RPmdZtR2uE1yLJGxAU
 dXuMVRMSPe6V1oAGCubGnm0pqVh7OGqJtd28RjUJPyPsl/CGzKqTXoOMQtg0LYhdWL
 N/Gw9tEZNEYcqD/MsRD1ekaVEzrskDOtKYsISiZd2Lh5Si1FS44cCBkd8b1HEmmiyU
 BZh2Q4v9+WjRFTLK4WgJiwu9u3NREdxMq2QzYkkIbEb5bGbHqnkLFB2Yf+U1zhm7v8
 OHyBW9UaiEXTg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=Y8nLf22J
Subject: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: add qsfp transceiver
 reset, interrupt and presence pin control
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

Add get/set implenentation for ethtool's module management signal
API.
Examples:
ethtool --get-module-mgmt-signal eth16 type reset
reset: low

ethtool --get-module-mgmt-signal eth16 type int
reset: low

ethtool --get-module-mgmt-signal eth16 type present
reset: high

sudo ethtool --set-module-mgmt-signal eth16 type reset value high
ethtool --get-module-mgmt-signal eth16 type reset
reset: high

sudo ethtool --set-module-mgmt-signal eth16 type reset value low
ethtool --get-module-mgmt-signal eth16 type reset
reset: low

Ice driver gets link event notification when module gets restarted.
There is 'ice_handle_link_event' which handles the notification and
updates link status information.

Signed-off-by: Marek Pazdan <mpazdan@arista.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  6 ++
 drivers/net/ethernet/intel/ice/ice_common.c  | 21 +++++
 drivers/net/ethernet/intel/ice/ice_common.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 94 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  1 +
 drivers/net/ethernet/intel/ice/ice_type.h    |  2 +-
 6 files changed, 124 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fd083647c14a..3b95a69140e8 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -195,6 +195,12 @@
 
 #define ice_pf_src_tmr_owned(pf) ((pf)->hw.func_caps.ts_func_info.src_tmr_owned)
 
+enum ice_mgmt_pin {
+	ICE_MGMT_PIN_RESET = 0,
+	ICE_MGMT_PIN_INT,
+	ICE_MGMT_PIN_PRESENT
+};
+
 enum ice_feature {
 	ICE_F_DSCP,
 	ICE_F_PHY_RCLK,
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 59df31c2c83f..2d643a7cc90f 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -6096,3 +6096,24 @@ u32 ice_get_link_speed(u16 index)
 
 	return ice_aq_to_link_speed[index];
 }
+
+/**
+ * ice_set_has_gpios - Sets availability of SDP GPIO pins.
+ * @hw: pointer to the HW structure
+ *
+ * This function sets availability of GPIO software defined pins
+ * (SDP) which are connected to transceiver slots and are used
+ * for transceiver control.
+ */
+bool ice_set_has_gpios(struct ice_hw *hw)
+{
+	if (hw->vendor_id != PCI_VENDOR_ID_INTEL)
+		return false;
+
+	switch (hw->device_id) {
+	case ICE_DEV_ID_E810C_QSFP:
+		return true;
+	default:
+		return false;
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 9b00aa0ddf10..b64629b1d60d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -304,4 +304,5 @@ ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_addr,
 int ice_get_pca9575_handle(struct ice_hw *hw, u16 *pca9575_handle);
 int ice_read_pca9575_reg(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw);
+bool ice_set_has_gpios(struct ice_hw *hw);
 #endif /* _ICE_COMMON_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 7c2dc347e4e5..bf6a803729d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3848,6 +3848,96 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
 	ch->max_other = ch->other_count;
 }
 
+/**
+ * ice_get_module_mgmt_signal - get module management signal status
+ * @dev: network interface device structure
+ * @params: ethtool module management signal params
+ * @extack: extended ACK from the Netlink message
+ *
+ * Returns -EIO if AQ command for GPIO get failed, otherwise
+ * returns 0 and current status of requested signal in params.
+ */
+static int
+ice_get_module_mgmt_signal(struct net_device *dev,
+			   struct ethtool_module_mgmt_params *params,
+			   struct netlink_ext_ack *extack)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_pf *pf = np->vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u16 gpio_handle = 0; /* SOC/on-chip GPIO */
+	bool value;
+	int ret = 0;
+
+	if (hw->has_module_mgmt_gpio) {
+		switch (params->type) {
+		case ETHTOOL_MODULE_MGMT_RESET:
+			ret = ice_aq_get_gpio(hw, gpio_handle,
+					      ICE_MGMT_PIN_RESET, &value, NULL);
+			break;
+		case ETHTOOL_MODULE_MGMT_INT:
+			ret = ice_aq_get_gpio(hw, gpio_handle,
+					      ICE_MGMT_PIN_INT, &value, NULL);
+			break;
+		case ETHTOOL_MODULE_MGMT_PRESENT:
+			ret = ice_aq_get_gpio(hw, gpio_handle,
+					      ICE_MGMT_PIN_PRESENT, &value, NULL);
+			break;
+		default:
+			dev_dbg(ice_pf_to_dev(pf), "Incorrect management signal requested: %d\n",
+				params->type);
+			return -EINVAL;
+		}
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	if (ret == 0) {
+		params->value = value ? ETHTOOL_MODULE_MGMT_SIGNAL_HIGH :
+			ETHTOOL_MODULE_MGMT_SIGNAL_LOW;
+	}
+	return ret;
+}
+
+/**
+ * ice_set_module_mgmt_signal - set module management signal config
+ * @dev: network interface device structure
+ * @params: ethtool module management signal params
+ * @extack: extended ACK from the Netlink message
+ *
+ * Returns -EIO if AQ command for GPIO set failed, otherwise
+ * returns 0.
+ */
+static int
+ice_set_module_mgmt_signal(struct net_device *dev,
+			   const struct ethtool_module_mgmt_params *params,
+			   struct netlink_ext_ack *extack)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_pf *pf = np->vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u16 gpio_handle = 0; /* SOC/on-chip GPIO */
+	bool value = params->value == ETHTOOL_MODULE_MGMT_SIGNAL_HIGH ? true : false;
+	int ret = 0;
+
+	if (hw->has_module_mgmt_gpio) {
+		switch (params->type) {
+		case ETHTOOL_MODULE_MGMT_RESET:
+			ret = ice_aq_set_gpio(hw, gpio_handle,
+					      ICE_MGMT_PIN_RESET, value, NULL);
+			break;
+		default:
+			dev_dbg(ice_pf_to_dev(pf), "Incorrect management signal requested: %d\n",
+				params->type);
+			return -EINVAL;
+		}
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	return ret;
+}
+
 /**
  * ice_get_valid_rss_size - return valid number of RSS queues
  * @hw: pointer to the HW structure
@@ -4815,6 +4905,8 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_fecparam		= ice_set_fecparam,
 	.get_module_info	= ice_get_module_info,
 	.get_module_eeprom	= ice_get_module_eeprom,
+	.get_module_mgmt_signal	= ice_get_module_mgmt_signal,
+	.set_module_mgmt_signal = ice_set_module_mgmt_signal,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
@@ -4837,6 +4929,8 @@ static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
 	.set_ringparam		= ice_set_ringparam,
 	.nway_reset		= ice_nway_reset,
 	.get_channels		= ice_get_channels,
+	.get_module_mgmt_signal	= ice_get_module_mgmt_signal,
+	.set_module_mgmt_signal = ice_set_module_mgmt_signal,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d390157b59fe..02b9809561e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5294,6 +5294,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	hw->port_info = NULL;
 	hw->vendor_id = pdev->vendor;
 	hw->device_id = pdev->device;
+	hw->has_module_mgmt_gpio = ice_set_has_gpios(hw);
 	pci_read_config_byte(pdev, PCI_REVISION_ID, &hw->revision_id);
 	hw->subsystem_vendor_id = pdev->subsystem_vendor;
 	hw->subsystem_device_id = pdev->subsystem_device;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 0aab21113cc4..e88075ae4c8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -895,7 +895,7 @@ struct ice_hw {
 	u32 psm_clk_freq;
 	u64 debug_mask;		/* bitmap for debug mask */
 	enum ice_mac_type mac_type;
-
+	bool has_module_mgmt_gpio;	/* has GPIO for module management */
 	u16 fd_ctr_base;	/* FD counter base index */
 
 	/* pci info */
-- 
2.45.2

