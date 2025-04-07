Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C79A7E35F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61CDD60A6D;
	Mon,  7 Apr 2025 15:10:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9sTx5rCaavUg; Mon,  7 Apr 2025 15:10:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9241160ABE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038625;
	bh=Trgvy9GTSGogGCZdfDcgDmfNiW583yZjnxh1kXgKLxA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=spF8DivxcZ9YyaDysTTV2obDTruL1Iur/yMHz9w6D7rKNaWr3wkdfVDJ57syOp37h
	 jCHtXkwi2LP+MwCicEJx5bSi6Zi90s6HI3kMrnrV6fflpz9HBQ09bIW5iF7C75R6J/
	 7/NQdgRstSBt0ss2u9n5+yDymUZJkxVmV5pbbhIaNAHieQTwR9BWlyA8sZcwkJwV/L
	 CY7Ugzq6wdtmgduFcwzd3oVabfh6bup3CKGbRRoGh8n8KWBQCYFf5Afz3rLERM/Fvr
	 ZzDHAiQa/o4KqcEfyHolzRaKlLFDG7pFhFpjBmIbLpkM5YXV93fS70KGBDGZ80WVC/
	 FMHbLZkyo1wWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9241160ABE;
	Mon,  7 Apr 2025 15:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 25FE21F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C1446104E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EpB1AzkR8WXZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 12:37:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1163; helo=mail-yw1-x1163.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0F6FF60D5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F6FF60D5D
Received: from mail-yw1-x1163.google.com (mail-yw1-x1163.google.com
 [IPv6:2607:f8b0:4864:20::1163])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F6FF60D5D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 12:37:20 +0000 (UTC)
Received: by mail-yw1-x1163.google.com with SMTP id
 00721157ae682-7040ac93c29so11701087b3.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Apr 2025 05:37:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744029440; x=1744634240;
 h=content-transfer-encoding:references:in-reply-to:message-id:date
 :subject:cc:to:from:dkim-signature:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Trgvy9GTSGogGCZdfDcgDmfNiW583yZjnxh1kXgKLxA=;
 b=dIk1wkzrzsM/TO1EHab13wVzZE5Prs1yUXPGYeCeQWgUgDrSlum7Tu9nxiTNVbRi4X
 MMnTxOYFiPB1laBt5hM2cs+n1MdS/uxFapwtr0kW3eSWyr4FauX92RRQcgCgdkQkhJ3t
 WVmBfvCrMwno6mgHLVqOOBvrcJtH70cdVZd3VJwln83cKaY+AzuMwlh8AP4kaDLbPERt
 dlz7K/PLvEm7tVDaI+GCG2clAjm5psMsdPtSlrx1w7hRPVOt8EbjgaHwn6DzuJCLiceJ
 5HvZRopJqnmHx0zV9n9WWkuxUuTTaJZ+hhAlIgGrRIkA/NmV8DaKZWR+a9G2kw3Bsz6V
 VYrQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXf7jiFDMUwfUX0Yr51X87U0W3zof1wKfVw5EtL1bcjM9aENBMTd1k0ROr8wgNoO9m4pWDEfta2OK6GEYpxWr8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyMXD9JuaP66ySpEzz57P/6EVXJSKLg3pcXl0YGTHPIW00pcnsQ
 c1cVxgi/IEeLjkSwTY4+/sUyiiympCXwRBSUMSKV/U3h01bpvHqwVcj0BuG6ofHtbclmAgJHkAR
 gnQu+6uqh+UfEw62IdSaT+JKBEUJ6Yg==
X-Gm-Gg: ASbGncu791/ij8akqsLn60ZM1E3akewZH1TGsAzJVBv2LKtEOGSfXYvIQ5wPaD6hJJW
 KSu/nXDEvJHuWXQgPWdg/6Bip2IkGJ0a49Zgc3czspnyhgvoYGRV9FzAMsuPJfKv/GW2k9hr4IC
 mYk3sHj4P9Acj8qDNPhpLVwcHN6lvnx9bnvaLLHToEaZbMYB3471WbubiwEZ5IiYR6OKwOm6th5
 EXYmfgSPoDdi5ID4Jv7ghYJO1boLRoRKxXj4sph6EzMfJPg24vpBeCkciKfPGdAOUfX0k05jmRj
 zMpWwFoyEg1cDttE8iTdtUyGhJA=
X-Google-Smtp-Source: AGHT+IE+hzviWhN6B0jWB5QM/z49QcOQQ2Yro+qHcz4urLr6lrNbJexRdmOvEMe55nbtS4Vx+x0TJ+wyDeYK
X-Received: by 2002:a05:690c:700c:b0:703:d0b5:7abc with SMTP id
 00721157ae682-703e313e2f6mr203015537b3.9.1744029439891; 
 Mon, 07 Apr 2025 05:37:19 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 00721157ae682-703d1e8238asm9016807b3.39.2025.04.07.05.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Apr 2025 05:37:19 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (pinkesh-itest-2-us285.sjc.aristanetworks.com [10.244.168.54])
 by smtp.aristanetworks.com (Postfix) with ESMTP id D090210023B;
 Mon,  7 Apr 2025 12:37:18 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id C8B8B40B16; Mon,  7 Apr 2025 12:37:18 +0000 (UTC)
X-SMTP-Authentication: Allow-List-permitted
X-SMTP-Authentication: Allow-List-permitted
From: Marek Pazdan <mpazdan@arista.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Willem de Bruijn <willemb@google.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Mina Almasry <almasrymina@google.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Daniel Zahka <daniel.zahka@gmail.com>, Jianbo Liu <jianbol@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, Marek Pazdan <mpazdan@arista.com>
Date: Mon,  7 Apr 2025 12:35:38 +0000
Message-ID: <20250407123714.21646-2-mpazdan@arista.com>
In-Reply-To: <20250407123714.21646-1-mpazdan@arista.com>
References: <20250407123714.21646-1-mpazdan@arista.com>
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1744029438;
 bh=Trgvy9GTSGogGCZdfDcgDmfNiW583yZjnxh1kXgKLxA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Oycb19f6Bi4C5MrT2AQjPil4ELQBt6HQceZ5HE13kolKKMtyTKdfxXt0OxSEFxFoD
 +TRl7QefdMkOQ/w41zvyDTJTDj7mALuN8mIXvOurDs/EivQS9wMDUAht660sf1Nt2G
 M0nNr/d+z1j19rHU1z0GVVLBh3Qyh6K8SZis7Ix6zqirc2QbgOdgm+cZnIx2WOmLS7
 ql0PsRQ5elnuxrbUbt03A4MiR9oiY6hBstfIyy1C5qc76fOKLBpiEShK1EYCCPOGyz
 TzqvHH8PEXcWkXT9Q09iP4wBA9BiQCaFa7j2sVZylNyYwamHKmBdoEKavkrEaSfZ9k
 slFyLTUGsRpPg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=Oycb19f6
Subject: [Intel-wired-lan] [PATCH 2/2] ice: add qsfp transceiver reset and
 presence pin control
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

Commit f3c1c896f5a8 ("ethtool: transceiver reset and presence pin control")
adds ioctl API extension for get/set-phy-tunable so that transceiver
reset and presence pin control is enabled.
This commit adds functionality to utilize the API in ice driver.
According to E810 datasheet QSFP reset and presence pins are being
connected to SDP0 and SDP2 pins on controller host. Those pins can
be accessed using AQ commands for GPIO get/set.[O

Signed-off-by: Marek Pazdan <mpazdan@arista.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  2 +
 drivers/net/ethernet/intel/ice/ice_common.c  | 21 ++++++
 drivers/net/ethernet/intel/ice/ice_common.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 72 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  1 +
 drivers/net/ethernet/intel/ice/ice_type.h    |  2 +
 6 files changed, 99 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fd083647c14a..2dbbcb20decf 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -106,6 +106,8 @@
 #define ICE_Q_WAIT_MAX_RETRY	(5 * ICE_Q_WAIT_RETRY_LIMIT)
 #define ICE_MAX_LG_RSS_QS	256
 #define ICE_INVAL_Q_INDEX	0xffff
+#define ICE_GPIO_QSFP0_RESET	0
+#define ICE_GPIO_QSFP0_PRESENT	2
 
 #define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
 
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
index 7c2dc347e4e5..20727c582ad5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4765,6 +4765,76 @@ static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
 	return ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
 }
 
+static int ice_get_phy_tunable(struct net_device *netdev,
+			       const struct ethtool_tunable *tuna, void *data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u16 gpio_handle = 0; /* SOC/on-chip GPIO */
+	u8 *enabled = data;
+	bool value;
+
+	switch (tuna->id) {
+	case ETHTOOL_PHY_MODULE_RESET:
+		if (!hw->has_gpios)
+			return -EOPNOTSUPP;
+
+		if (ice_aq_get_gpio(hw, gpio_handle, ICE_GPIO_QSFP0_PRESENT,
+				    &value, NULL))
+			return -EIO;
+		if (!value) {
+			*enabled = ETHTOOL_PHY_MODULE_RESET_NA;
+		} else {
+			if (ice_aq_get_gpio(hw, gpio_handle, ICE_GPIO_QSFP0_RESET,
+					    &value, NULL))
+				return -EIO;
+			*enabled = value ? ETHTOOL_PHY_MODULE_RESET_ON :
+						ETHTOOL_PHY_FAST_LINK_DOWN_OFF;
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int ice_set_phy_tunable(struct net_device *netdev,
+			       const struct ethtool_tunable *tuna, const void *data)
+{
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	u16 gpio_handle = 0; /* SOC/on-chip GPIO */
+	const u8 *enable = data;
+	bool value;
+
+	switch (tuna->id) {
+	case ETHTOOL_PHY_MODULE_RESET:
+		if (!hw->has_gpios)
+			return -EOPNOTSUPP;
+
+		if (*enable == ETHTOOL_PHY_MODULE_RESET_ON)
+			value = true;
+		else if (*enable == ETHTOOL_PHY_FAST_LINK_DOWN_OFF)
+			value = false;
+		else
+			return -EINVAL;
+
+		if (ice_aq_set_gpio(hw, gpio_handle, ICE_GPIO_QSFP0_RESET,
+				    value, NULL))
+			return -EIO;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
@@ -4815,6 +4885,8 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_fecparam		= ice_set_fecparam,
 	.get_module_info	= ice_get_module_info,
 	.get_module_eeprom	= ice_get_module_eeprom,
+	.get_phy_tunable	= ice_get_phy_tunable,
+	.set_phy_tunable	= ice_set_phy_tunable,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 049edeb60104..fa18fc965649 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5294,6 +5294,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	hw->port_info = NULL;
 	hw->vendor_id = pdev->vendor;
 	hw->device_id = pdev->device;
+	hw->has_gpios = ice_set_has_gpios(hw);
 	pci_read_config_byte(pdev, PCI_REVISION_ID, &hw->revision_id);
 	hw->subsystem_vendor_id = pdev->subsystem_vendor;
 	hw->subsystem_device_id = pdev->subsystem_device;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 0aab21113cc4..ff758b4b7070 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -896,6 +896,8 @@ struct ice_hw {
 	u64 debug_mask;		/* bitmap for debug mask */
 	enum ice_mac_type mac_type;
 
+	bool has_gpios;
+
 	u16 fd_ctr_base;	/* FD counter base index */
 
 	/* pci info */
-- 
2.47.0

