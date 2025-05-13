Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 843DBAB5F98
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 00:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E4FE814C9;
	Tue, 13 May 2025 22:40:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XIVTV3j0daiY; Tue, 13 May 2025 22:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EBD981570
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747176025;
	bh=32ZBz3FCAeqAihSO9T1d8nkx6GezZ2lSPWDyzjR2Oh4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R46UoGnnGQTochGuut5Kl04bzKXLu5FHW+qG0izjQZHQX66p6jgTZowT5bOVu6wBl
	 +cExkW8bH6CMDh5Hvm3o9PhcVFf+gHsLsEKPL+TaTzbK+kDFr1rySw3sj3hW5pdIEm
	 pZroIuSbhFfDNvWQl2aAGH6AeVd72PYP9WrjjRvqF0s2cilfHcH9PNKQoaf5S0pj/C
	 GKj/pBFFGLAZc4XvpYdEwNyv9fToOTSQZg9HtQGZov4TQ3oQZj2dhajti91Olmdial
	 3hED3cT+6yuR4LoyQU/GIotcQYtpg4y8+3DbErTFvsBGz2kA0oAhoCcjB55hA3fxii
	 dW7bniaOfLVKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EBD981570;
	Tue, 13 May 2025 22:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AC30412A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91E1260A9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LAIJPFv94o7Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 22:40:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::161; helo=mail-il1-x161.google.com;
 envelope-from=mpazdan@arista.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40B0960AA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40B0960AA8
Received: from mail-il1-x161.google.com (mail-il1-x161.google.com
 [IPv6:2607:f8b0:4864:20::161])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40B0960AA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:40:22 +0000 (UTC)
Received: by mail-il1-x161.google.com with SMTP id
 e9e14a558f8ab-3da739653b2so21396355ab.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 15:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747176021; x=1747780821;
 h=content-transfer-encoding:references:in-reply-to:message-id:date
 :subject:cc:to:from:dkim-signature:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=32ZBz3FCAeqAihSO9T1d8nkx6GezZ2lSPWDyzjR2Oh4=;
 b=JXfF9MUNdrYNNBs2dH7Z/niVUF8du9bnNsChKwAQIofictyNqhjX1hIIK/Ud6OQ5qh
 zDDedVaD/cWJXEk73nYaXLM23x530Tgq0Z4Osw0zyO0D8vK3+2yofGcKykJ8iytZHOtq
 7rUE7e5YkQLfD9Bo6ilkYU0ohZvBjTD/Fd7mL/ULXM9AfGROVlyN2NnQM40+oj2rfrnT
 YayDXAiMy1Oqzx49UBTqU9BpnCSSAAZKt86KlAcXqv1KeDLaoqXlquGSsS36r+vJ9t8e
 6q9LHMOBUwuw2rJWSJSr2ykhCRwsHLWw9BJnJm8xMceCi86NBGqdCLRy2dtbJ9c6Z5O1
 lxTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgTetb+ucEVffpVjMboPhv+Qa/tMtufYl44IAoX7J0/vOU7Chh5koTM4jrqc29DeS+zaxecELzG8cvpSvPoGM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyeppjpRJ29bTPiEWeiE32oWV78XFgNFCOpJ3J3lG4DKrzjSqq9
 3fJlTnNnarw3MrBkNS8WUE62cVoihWoCTfNLmtzlu4HFGTiE8YpZlnSyldYvONjBqIQewoMX3Bb
 HKojg7yyUnI8OaO4BjLV5jQdIc/V0Vg==
X-Gm-Gg: ASbGncvAJgc0m72jxmiramTywlcef3NsDEkTxtoeXQU6nvuc/AID6XtL4WsXKdwTyIA
 xtjNqvGjZcl1Xw/kUmX1cSqxWUtRLcvUc+cZXBILCPH8MhyEqrrUZqOUhIXXfj5SV5bBPSQNERA
 QUTpDKwkxrLNbALgWZBVhQ9/lttIKEgCXEvwlLn0s981X90X11z0drZBq19LKJPi6dm5CHa+ZNM
 1UMsdMcj4ehM12IdvTsBJs3NP6wdSErUE3o24KGv26lU2CtIb7vD/spbeNtyWdSEHvT8UKvOImm
 gNwKYV48nISK42gIHfkCcuQ=
X-Google-Smtp-Source: AGHT+IGlvTOo0NYuA6nAIG0JEAZZnvY/kK/JYrWqsh38s5L960gyueBNO+EP2KRNqda2PybMP39jIg6412nw
X-Received: by 2002:a05:6e02:17c6:b0:3d8:8900:9a30 with SMTP id
 e9e14a558f8ab-3db6f806e44mr15360375ab.20.1747176021081; 
 Tue, 13 May 2025 15:40:21 -0700 (PDT)
Received: from smtp.aristanetworks.com ([74.123.28.25])
 by smtp-relay.gmail.com with ESMTPS id
 8926c6da1cb9f-4fa2262eba5sm164310173.62.2025.05.13.15.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 May 2025 15:40:21 -0700 (PDT)
X-Relaying-Domain: arista.com
Received: from mpazdan-home-zvfkk.localdomain
 (mpazdan-home-zvfkk.sjc.aristanetworks.com [10.244.171.242])
 by smtp.aristanetworks.com (Postfix) with ESMTP id 6919B10023B;
 Tue, 13 May 2025 22:40:19 +0000 (UTC)
Received: by mpazdan-home-zvfkk.localdomain (Postfix, from userid 91835)
 id 61F8D40B22; Tue, 13 May 2025 22:40:19 +0000 (UTC)
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
Date: Tue, 13 May 2025 22:40:00 +0000
Message-ID: <20250513224017.202236-1-mpazdan@arista.com>
In-Reply-To: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
References: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=Arista-A; t=1747176019;
 bh=32ZBz3FCAeqAihSO9T1d8nkx6GezZ2lSPWDyzjR2Oh4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bikl8v/dcbkKUkRCRYvBfwVpWSxyIqr4ANUOxi0MGeijzEMXp2eX4hmzO+AK0Wuu1
 GCcU81rWQ+ysb0DbO9RKE0vz35NF+780inAm4E/ksI/1I56Zb5aC0V46RrBIlfZtiJ
 Vr9fuWPaqgRx7lXte2OMwRxAz70BWAS+ztgF8OSVmFFE21EYMtmUGdG52Xks/FfS9F
 3VbC2tZb+WPsf1Daa/WXTfBZ83bsvCnnJ2luAyCz/Va1BYqtaAFpo9dYPl5Ck8X2l+
 KCdlEwTx/d+xoqa/sqAChc+fJ5aPJXJoGR9Q1rAui7z016oRtW0cJBTDTDftQhEsUn
 Rvd2ioccLPBDA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=arista.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=arista.com header.i=@arista.com header.a=rsa-sha256
 header.s=Arista-A header.b=bikl8v/d
Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] ethtool: qsfp transceiver
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

Common Management Interface Specification defines
Management Signaling Layer (MSL) control and status signals. This change
provides API for following signals status reading:
- signal allowing the host to request module reset (Reset)
- signal allowing the host to detect module presence (Presence)
- signal allowing the host to detect module interrupt (Int)
Additionally API allows for Reset signal assertion with
following constraints:
- reset cannot be asserted if firmware update is in progress
- if reset is asserted, firmware update cannot be started
- if reset is asserted, power mode cannot be get/set
In all above constraint cases -EBUSY error is returned.

After reset, module will set all registers to default
values. Default value for Page0 byte 93 register is 0x00 what implies that
module power mode after reset depends on LPMode HW pin state.
If software power mode control is required, bit 0 of Page0 byte93 needs
to be enabled.
Module reset assertion implies failure of every module's related
SMBus transactions. Device driver developers should take this into
consideration if driver provides API for querying module's related data.
One example can be HWMON providing module temperature report.
In such case driver should monitor module status and in time of reset
assertion it should return HWMON report which informs that temperature
data is not available due to module's reset state.
The same applies to power mode set/get. Ethtool API has already
checking for module reset state but similar checking needs to be
implemented in the driver if it requests power mode for other
functionality.
Additionally module reset is link hitful operation. Link is brought down
when reset is asserted. If device driver doesn't provide functionality
for monitoring transceiver state, it needs to be implemented in parallel
to get/set_module_mgmt_signal API. When module reset gets deasserted,
transceiver process reinitialization. The end of reinitialization
process is signalled via Page 00h Byte 6 bit 0 "Initialization complete
flags". If there is no implementation for monitoring this bit in place,
it needs to be added to bring up the link after transceiver
initialization is complete.

Signed-off-by: Marek Pazdan <mpazdan@arista.com>
---
 Documentation/netlink/specs/ethtool.yaml |  48 +++++
 include/linux/ethtool.h                  |  29 ++-
 include/uapi/linux/ethtool.h             |  29 +++
 net/ethtool/module.c                     | 230 +++++++++++++++++++++--
 net/ethtool/netlink.c                    |  20 ++
 net/ethtool/netlink.h                    |   3 +
 6 files changed, 347 insertions(+), 12 deletions(-)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index c650cd3dcb80..38eebbe18f55 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -1528,6 +1528,24 @@ attribute-sets:
         name: hwtstamp-flags
         type: nest
         nested-attributes: bitset
+  -
+    name: module-mgmt
+    attr-cnt-name: __ethtool-a-module-mgmt-cnt
+    attributes:
+      -
+        name: unspec
+        type: unused
+        value: 0
+      -
+        name: header
+        type: nest
+        nested-attributes: header
+      -
+        name: type
+        type: u8
+      -
+        name: value
+        type: u8
 
 operations:
   enum-model: directional
@@ -2384,3 +2402,33 @@ operations:
           attributes: *tsconfig
         reply:
           attributes: *tsconfig
+    -
+      name: module-mgmt-get
+      doc: Get module management signal status.
+
+      attribute-set: module-mgmt
+
+      do: &module-mgmt-get-op
+        request:
+          attributes:
+            - header
+            - type
+        reply:
+          attributes: &module-mgmt
+            - header
+            - type
+            - value
+      dump: *module-mgmt-get-op
+    -
+      name: module-mgmt-set
+      doc: Set module management signal state.
+
+      attribute-set: module-mgmt
+
+      do:
+        request:
+          attributes: *module-mgmt
+    -
+      name: module-mgmt-ntf
+      doc: Notification for change in module management signal status.
+      notify: module-mgmt-get
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index 8210ece94fa6..d5dd238b4b61 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -126,6 +126,7 @@ enum ethtool_supported_ring_param {
 
 struct net_device;
 struct netlink_ext_ack;
+struct ethtool_module_mgmt_params;
 
 /* Link extended state and substate. */
 struct ethtool_link_ext_state_info {
@@ -626,6 +627,19 @@ struct ethtool_module_power_mode_params {
 	enum ethtool_module_power_mode mode;
 };
 
+/**
+ * struct ethtool_module_mgmt_params - module management signal parameters
+ * @type: The management signal type of the MSL (Management Signaling Layer) signal
+ *		connecting host with the plug-in module to be set or get.
+ * @value: The management signal value of the MSL signal connecting host with
+ *		the plug-in module. It is filled by user for set operation or by
+ *		the driver for get operation.
+ */
+struct ethtool_module_mgmt_params {
+	enum ethtool_module_mgmt_signal_type type;
+	enum ethtool_module_mgmt_signal_value value;
+};
+
 /**
  * struct ethtool_mm_state - 802.3 MAC merge layer state
  * @verify_time:
@@ -985,6 +999,11 @@ struct kernel_ethtool_ts_info {
  *	plugged-in.
  * @set_module_power_mode: Set the power mode policy for the plug-in module
  *	used by the network device.
+ * @get_module_mgmt_signal: Get the MSL (Management Signaling Layer) signal
+ *	value for the plug-in module used by network device. MSL layer
+ *	description is included in CMIS Common Management Interface Specification.
+ * @set_module_mgmt_signal: Set the MSL (Management Signaling Layer) output
+ *	signal value for the plug-in module used by network device, if plugged-in.
  * @get_mm: Query the 802.3 MAC Merge layer state.
  * @set_mm: Set the 802.3 MAC Merge layer parameters.
  * @get_mm_stats: Query the 802.3 MAC Merge layer statistics.
@@ -1146,6 +1165,12 @@ struct ethtool_ops {
 	int	(*set_module_power_mode)(struct net_device *dev,
 					 const struct ethtool_module_power_mode_params *params,
 					 struct netlink_ext_ack *extack);
+	int	(*get_module_mgmt_signal)(struct net_device *dev,
+					  struct ethtool_module_mgmt_params *params,
+					  struct netlink_ext_ack *extack);
+	int	(*set_module_mgmt_signal)(struct net_device *dev,
+					  const struct ethtool_module_mgmt_params *params,
+					  struct netlink_ext_ack *extack);
 	int	(*get_mm)(struct net_device *dev, struct ethtool_mm_state *state);
 	int	(*set_mm)(struct net_device *dev, struct ethtool_mm_cfg *cfg,
 			  struct netlink_ext_ack *extack);
@@ -1179,13 +1204,15 @@ int ethtool_virtdev_set_link_ksettings(struct net_device *dev,
  * @rss_lock:		Protects entries in @rss_ctx.  May be taken from
  *			within RTNL.
  * @wol_enabled:	Wake-on-LAN is enabled
- * @module_fw_flash_in_progress: Module firmware flashing is in progress.
+ * @module_fw_flash_in_progress:	Module firmware flashing is in progress.
+ * @module_reset_asserted:		Module reset signal is asserted.
  */
 struct ethtool_netdev_state {
 	struct xarray		rss_ctx;
 	struct mutex		rss_lock;
 	unsigned		wol_enabled:1;
 	unsigned		module_fw_flash_in_progress:1;
+	unsigned		module_reset_asserted:1;
 };
 
 struct phy_device;
diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index 84833cca29fe..097b81334798 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -756,6 +756,35 @@ enum ethtool_module_power_mode {
 	ETHTOOL_MODULE_POWER_MODE_HIGH,
 };
 
+/**
+ * enum ethtool_module_mgmt_signal_type - plug-in module discrete
+ *	status hardware signals for management as per CMIS spec.
+ * @ETHTOOL_MODULE_MGMT_RESET: Signal allowing the host to request
+ *	a module reset.
+ * @ETHTOOL_MODULE_MGMT_INT: Signal allowing the module to assert
+ *	an interrupt request to the host.
+ * @ETHTOOL_MODULE_MGMT_PRESENT: Signal allowing the module to signal
+ *	its presence status to the host.
+ */
+enum ethtool_module_mgmt_signal_type {
+	ETHTOOL_MODULE_MGMT_RESET = 1,
+	ETHTOOL_MODULE_MGMT_INT,
+	ETHTOOL_MODULE_MGMT_PRESENT,
+};
+
+/**
+ * enum ethtool_module_mgmt_signal_value - Value of plug-in module
+ *	hardware signal status for management signaling
+ *	as specified in CMIS spec.
+ * @ETHTOOL_MODULE_MGMT_SIGNAL_LOW: Signal low value.
+ * @ETHTOOL_MODULE_MGMT_SIGNAL_HIGH: Signal high value.
+ *	for reset signal when plug-in module is not inserted.
+ */
+enum ethtool_module_mgmt_signal_value {
+	ETHTOOL_MODULE_MGMT_SIGNAL_LOW = 1,
+	ETHTOOL_MODULE_MGMT_SIGNAL_HIGH,
+};
+
 /**
  * enum ethtool_c33_pse_ext_state - groups of PSE extended states
  *      functions. IEEE 802.3-2022 33.2.4.4 Variables
diff --git a/net/ethtool/module.c b/net/ethtool/module.c
index 4d4e0a82579a..d0ae2c1e0966 100644
--- a/net/ethtool/module.c
+++ b/net/ethtool/module.c
@@ -23,6 +23,24 @@ struct module_reply_data {
 #define MODULE_REPDATA(__reply_base) \
 	container_of(__reply_base, struct module_reply_data, base)
 
+static bool module_busy(const struct ethtool_netdev_state *state,
+			struct netlink_ext_ack *extack)
+{
+	if (state->module_fw_flash_in_progress) {
+		if (extack)
+			NL_SET_ERR_MSG(extack,
+				       "Module firmware flashing is in progress");
+		return true;
+	}
+	if (state->module_reset_asserted) {
+		if (extack)
+			NL_SET_ERR_MSG(extack,
+				       "Module reset is in progress");
+		return true;
+	}
+	return false;
+}
+
 /* MODULE_GET */
 
 const struct nla_policy ethnl_module_get_policy[ETHTOOL_A_MODULE_HEADER + 1] = {
@@ -38,11 +56,8 @@ static int module_get_power_mode(struct net_device *dev,
 	if (!ops->get_module_power_mode)
 		return 0;
 
-	if (dev->ethtool->module_fw_flash_in_progress) {
-		NL_SET_ERR_MSG(extack,
-			       "Module firmware flashing is in progress");
+	if (module_busy(dev->ethtool, extack))
 		return -EBUSY;
-	}
 
 	return ops->get_module_power_mode(dev, &data->power, extack);
 }
@@ -120,11 +135,8 @@ ethnl_set_module_validate(struct ethnl_req_info *req_info,
 	if (!tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY])
 		return 0;
 
-	if (req_info->dev->ethtool->module_fw_flash_in_progress) {
-		NL_SET_ERR_MSG(info->extack,
-			       "Module firmware flashing is in progress");
+	if (module_busy(req_info->dev->ethtool, info->extack))
 		return -EBUSY;
-	}
 
 	if (!ops->get_module_power_mode || !ops->set_module_power_mode) {
 		NL_SET_ERR_MSG_ATTR(info->extack,
@@ -176,6 +188,204 @@ const struct ethnl_request_ops ethnl_module_request_ops = {
 	.set_ntf_cmd		= ETHTOOL_MSG_MODULE_NTF,
 };
 
+/* MODULE_MGMT_GET */
+struct module_mgmt_req_data {
+	struct ethnl_req_info base;
+	struct ethtool_module_mgmt_params mgmt;
+};
+
+#define MODULE_MGMT_REQINFO(__req_base) \
+	container_of(__req_base, struct module_mgmt_req_data, base)
+
+struct module_mgmt_reply_data {
+	struct ethnl_reply_data	base;
+	struct ethtool_module_mgmt_params mgmt;
+};
+
+#define MODULE_MGMT_REPDATA(__reply_base) \
+	container_of(__reply_base, struct module_mgmt_reply_data, base)
+
+const struct nla_policy ethnl_module_mgmt_get_policy[ETHTOOL_A_MODULE_MGMT_TYPE + 1] = {
+	[ETHTOOL_A_MODULE_MGMT_HEADER] = NLA_POLICY_NESTED(ethnl_header_policy),
+	[ETHTOOL_A_MODULE_MGMT_TYPE] =
+		NLA_POLICY_RANGE(NLA_U8, ETHTOOL_MODULE_MGMT_RESET,
+				 ETHTOOL_MODULE_MGMT_PRESENT),
+};
+
+static int module_mgmt_get(struct net_device *dev,
+			   struct module_mgmt_reply_data *data,
+			   const struct genl_info *info)
+{
+	const struct ethtool_ops *ops = dev->ethtool_ops;
+	struct netlink_ext_ack *extack = info ? info->extack : NULL;
+
+	if (!ops->get_module_mgmt_signal)
+		return -EOPNOTSUPP;
+
+	return ops->get_module_mgmt_signal(dev, &data->mgmt, extack);
+}
+
+static int module_mgmt_parse_request(struct ethnl_req_info *req_info, struct nlattr **tb,
+				     struct netlink_ext_ack *extack)
+{
+	struct module_mgmt_req_data *req_data = MODULE_MGMT_REQINFO(req_info);
+
+	if (!tb[ETHTOOL_A_MODULE_MGMT_TYPE])
+		return -EINVAL;
+	req_data->mgmt.type = nla_get_u8(tb[ETHTOOL_A_MODULE_MGMT_TYPE]);
+
+	return 0;
+}
+
+static int module_mgmt_prepare_data(const struct ethnl_req_info *req_base,
+				    struct ethnl_reply_data *reply_base,
+				    const struct genl_info *info)
+{
+	struct module_mgmt_reply_data *data = MODULE_MGMT_REPDATA(reply_base);
+	struct module_mgmt_req_data *req = MODULE_MGMT_REQINFO(req_base);
+	struct net_device *dev = reply_base->dev;
+	int ret;
+
+	if (!info || !info->attrs[ETHTOOL_A_MODULE_MGMT_TYPE])
+		return -EINVAL;
+	req->mgmt.type = nla_get_u8(info->attrs[ETHTOOL_A_MODULE_MGMT_TYPE]);
+	data->mgmt.type = req->mgmt.type;
+
+	ret = ethnl_ops_begin(dev);
+	if (ret < 0)
+		return ret;
+
+	ret = module_mgmt_get(dev, data, info);
+	if (ret < 0)
+		goto out_complete;
+
+out_complete:
+	ethnl_ops_complete(dev);
+	return ret;
+}
+
+static int module_mgmt_reply_size(const struct ethnl_req_info *req_base,
+				  const struct ethnl_reply_data *reply_base)
+{
+	struct module_mgmt_reply_data *data = MODULE_MGMT_REPDATA(reply_base);
+	int len = 0;
+
+	if (data->mgmt.type)
+		len += nla_total_size(sizeof(u8));	/* _MODULE_MGMT_TYPE */
+
+	if (data->mgmt.value)
+		len += nla_total_size(sizeof(u8));	/* _MODULE_MGMT_VALUE */
+
+	return len;
+}
+
+static int module_mgmt_fill_reply(struct sk_buff *skb,
+				  const struct ethnl_req_info *req_base,
+				  const struct ethnl_reply_data *reply_base)
+{
+	struct module_mgmt_reply_data *data = MODULE_MGMT_REPDATA(reply_base);
+
+	if (data->mgmt.type &&
+	    nla_put_u8(skb, ETHTOOL_A_MODULE_MGMT_TYPE,
+		       data->mgmt.type))
+		return -EMSGSIZE;
+
+	if (data->mgmt.value &&
+	    nla_put_u8(skb, ETHTOOL_A_MODULE_MGMT_VALUE, data->mgmt.value))
+		return -EMSGSIZE;
+
+	if (data->mgmt.type == ETHTOOL_MODULE_MGMT_RESET) {
+		req_base->dev->ethtool->module_reset_asserted =
+			(data->mgmt.value == ETHTOOL_MODULE_MGMT_SIGNAL_HIGH) ? 1 : 0;
+	}
+
+	return 0;
+}
+
+/* MODULE_MGMT_SET */
+const struct nla_policy ethnl_module_mgmt_set_policy[ETHTOOL_A_MODULE_MGMT_VALUE + 1] = {
+	[ETHTOOL_A_MODULE_MGMT_HEADER] = NLA_POLICY_NESTED(ethnl_header_policy),
+	[ETHTOOL_A_MODULE_MGMT_TYPE] =
+		NLA_POLICY_RANGE(NLA_U8, ETHTOOL_MODULE_MGMT_RESET,
+				 ETHTOOL_MODULE_MGMT_PRESENT),
+	[ETHTOOL_A_MODULE_MGMT_VALUE] =
+		NLA_POLICY_RANGE(NLA_U8, ETHTOOL_MODULE_MGMT_SIGNAL_LOW,
+				 ETHTOOL_MODULE_MGMT_SIGNAL_HIGH),
+};
+
+static int
+ethnl_module_mgmt_validate(struct ethnl_req_info *req_info,
+			   struct genl_info *info)
+{
+	const struct ethtool_ops *ops = req_info->dev->ethtool_ops;
+	struct netlink_ext_ack *extack = info ? info->extack : NULL;
+	struct nlattr **tb = info->attrs;
+
+	if (!tb[ETHTOOL_A_MODULE_MGMT_TYPE] || !tb[ETHTOOL_A_MODULE_MGMT_VALUE])
+		return 0;
+
+	if (req_info->dev->ethtool->module_fw_flash_in_progress) {
+		if (extack)
+			NL_SET_ERR_MSG(extack, "Module firmware flashing is in progress");
+		return -EBUSY;
+	}
+
+	if (!ops->get_module_mgmt_signal || !ops->set_module_mgmt_signal) {
+		if (extack)
+			NL_SET_ERR_MSG_ATTR(extack,
+					    tb[ETHTOOL_A_MODULE_MGMT_TYPE],
+					    "Setting module management signal is not supported by this device");
+		return -EOPNOTSUPP;
+	}
+
+	return 1;
+}
+
+static int
+ethnl_module_mgmt_set(struct ethnl_req_info *req_info, struct genl_info *info)
+{
+	struct netlink_ext_ack *extack = info ? info->extack : NULL;
+	struct ethtool_module_mgmt_params mgmt = {};
+	struct ethtool_module_mgmt_params mgmt_new;
+	const struct ethtool_ops *ops;
+	struct net_device *dev = req_info->dev;
+	struct nlattr **tb = info->attrs;
+	int ret;
+
+	ops = dev->ethtool_ops;
+
+	mgmt_new.type = nla_get_u8(tb[ETHTOOL_A_MODULE_MGMT_TYPE]);
+	mgmt.type = mgmt_new.type;
+	mgmt_new.value = nla_get_u8(tb[ETHTOOL_A_MODULE_MGMT_VALUE]);
+	ret = ops->get_module_mgmt_signal(dev, &mgmt, extack);
+	if (ret < 0)
+		return ret;
+
+	if (mgmt.value == mgmt_new.value)
+		return 0;
+
+	ret = ops->set_module_mgmt_signal(dev, &mgmt_new, extack);
+
+	return ret < 0 ? ret : 1;
+}
+
+const struct ethnl_request_ops ethnl_module_mgmt_request_ops = {
+	.request_cmd		= ETHTOOL_MSG_MODULE_MGMT_GET,
+	.reply_cmd		= ETHTOOL_MSG_MODULE_MGMT_GET_REPLY,
+	.hdr_attr		= ETHTOOL_A_MODULE_MGMT_HEADER,
+	.req_info_size		= sizeof(struct module_mgmt_req_data),
+	.reply_data_size	= sizeof(struct module_mgmt_reply_data),
+
+	.parse_request		= module_mgmt_parse_request,
+	.prepare_data		= module_mgmt_prepare_data,
+	.reply_size		= module_mgmt_reply_size,
+	.fill_reply		= module_mgmt_fill_reply,
+
+	.set_validate		= ethnl_module_mgmt_validate,
+	.set			= ethnl_module_mgmt_set,
+	.set_ntf_cmd		= ETHTOOL_MSG_MODULE_MGMT_NTF,
+};
+
 /* MODULE_FW_FLASH_ACT */
 
 const struct nla_policy
@@ -386,10 +596,8 @@ static int ethnl_module_fw_flash_validate(struct net_device *dev,
 		return -EOPNOTSUPP;
 	}
 
-	if (dev->ethtool->module_fw_flash_in_progress) {
-		NL_SET_ERR_MSG(extack, "Module firmware flashing already in progress");
+	if (module_busy(dev->ethtool, extack))
 		return -EBUSY;
-	}
 
 	if (dev->flags & IFF_UP) {
 		NL_SET_ERR_MSG(extack, "Netdevice is up, so flashing is not permitted");
diff --git a/net/ethtool/netlink.c b/net/ethtool/netlink.c
index 977beeaaa2f9..10dc56830943 100644
--- a/net/ethtool/netlink.c
+++ b/net/ethtool/netlink.c
@@ -400,6 +400,8 @@ ethnl_default_requests[__ETHTOOL_MSG_USER_CNT] = {
 	[ETHTOOL_MSG_MM_SET]		= &ethnl_mm_request_ops,
 	[ETHTOOL_MSG_TSCONFIG_GET]	= &ethnl_tsconfig_request_ops,
 	[ETHTOOL_MSG_TSCONFIG_SET]	= &ethnl_tsconfig_request_ops,
+	[ETHTOOL_MSG_MODULE_MGMT_GET]	= &ethnl_module_mgmt_request_ops,
+	[ETHTOOL_MSG_MODULE_MGMT_SET]	= &ethnl_module_mgmt_request_ops,
 };
 
 static struct ethnl_dump_ctx *ethnl_dump_context(struct netlink_callback *cb)
@@ -755,6 +757,7 @@ ethnl_default_notify_ops[ETHTOOL_MSG_KERNEL_MAX + 1] = {
 	[ETHTOOL_MSG_MODULE_NTF]	= &ethnl_module_request_ops,
 	[ETHTOOL_MSG_PLCA_NTF]		= &ethnl_plca_cfg_request_ops,
 	[ETHTOOL_MSG_MM_NTF]		= &ethnl_mm_request_ops,
+	[ETHTOOL_MSG_MODULE_MGMT_NTF]	= &ethnl_module_mgmt_request_ops,
 };
 
 /* default notification handler */
@@ -856,6 +859,7 @@ static const ethnl_notify_handler_t ethnl_notify_handlers[] = {
 	[ETHTOOL_MSG_MODULE_NTF]	= ethnl_default_notify,
 	[ETHTOOL_MSG_PLCA_NTF]		= ethnl_default_notify,
 	[ETHTOOL_MSG_MM_NTF]		= ethnl_default_notify,
+	[ETHTOOL_MSG_MODULE_MGMT_NTF]	= ethnl_default_notify,
 };
 
 void ethtool_notify(struct net_device *dev, unsigned int cmd, const void *data)
@@ -1294,6 +1298,22 @@ static const struct genl_ops ethtool_genl_ops[] = {
 		.policy = ethnl_tsconfig_set_policy,
 		.maxattr = ARRAY_SIZE(ethnl_tsconfig_set_policy) - 1,
 	},
+	{
+		.cmd	= ETHTOOL_MSG_MODULE_MGMT_GET,
+		.doit	= ethnl_default_doit,
+		.start	= ethnl_default_start,
+		.dumpit	= ethnl_default_dumpit,
+		.done	= ethnl_default_done,
+		.policy = ethnl_module_mgmt_get_policy,
+		.maxattr = ARRAY_SIZE(ethnl_module_mgmt_get_policy) - 1,
+	},
+	{
+		.cmd	= ETHTOOL_MSG_MODULE_MGMT_SET,
+		.flags	= GENL_UNS_ADMIN_PERM,
+		.doit	= ethnl_default_set_doit,
+		.policy = ethnl_module_mgmt_set_policy,
+		.maxattr = ARRAY_SIZE(ethnl_module_mgmt_set_policy) - 1,
+	},
 };
 
 static const struct genl_multicast_group ethtool_nl_mcgrps[] = {
diff --git a/net/ethtool/netlink.h b/net/ethtool/netlink.h
index ec6ab5443a6f..e200f8193328 100644
--- a/net/ethtool/netlink.h
+++ b/net/ethtool/netlink.h
@@ -437,6 +437,7 @@ extern const struct ethnl_request_ops ethnl_plca_status_request_ops;
 extern const struct ethnl_request_ops ethnl_mm_request_ops;
 extern const struct ethnl_request_ops ethnl_phy_request_ops;
 extern const struct ethnl_request_ops ethnl_tsconfig_request_ops;
+extern const struct ethnl_request_ops ethnl_module_mgmt_request_ops;
 
 extern const struct nla_policy ethnl_header_policy[ETHTOOL_A_HEADER_FLAGS + 1];
 extern const struct nla_policy ethnl_header_policy_stats[ETHTOOL_A_HEADER_FLAGS + 1];
@@ -489,6 +490,8 @@ extern const struct nla_policy ethnl_module_fw_flash_act_policy[ETHTOOL_A_MODULE
 extern const struct nla_policy ethnl_phy_get_policy[ETHTOOL_A_PHY_HEADER + 1];
 extern const struct nla_policy ethnl_tsconfig_get_policy[ETHTOOL_A_TSCONFIG_HEADER + 1];
 extern const struct nla_policy ethnl_tsconfig_set_policy[ETHTOOL_A_TSCONFIG_MAX + 1];
+extern const struct nla_policy ethnl_module_mgmt_get_policy[ETHTOOL_A_MODULE_MGMT_TYPE + 1];
+extern const struct nla_policy ethnl_module_mgmt_set_policy[ETHTOOL_A_MODULE_MGMT_VALUE + 1];
 
 int ethnl_set_features(struct sk_buff *skb, struct genl_info *info);
 int ethnl_act_cable_test(struct sk_buff *skb, struct genl_info *info);
-- 
2.45.2

