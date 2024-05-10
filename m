Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7A28C27B2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D3308456E;
	Fri, 10 May 2024 15:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K8tyPVu6ez_S; Fri, 10 May 2024 15:27:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E75A845FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354865;
	bh=LwBc+xh9KDOX3ou7jm4G91kkCP1H+TV9KsQ/gW2Ocvw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hKdGA7o5Px86u5/QcMw+rwuDfVQvRCLbqJEsiIaicZg+u/INuXyypuB/eavfS5oRG
	 KdJLOwAfH2zrI/krbh+l4mOGD9VWNXIcPb7Wf1ei7k6JDRn1P2FLovJFXvvuJmkgWj
	 GCS4J6tSDZ0VF9+INi3dmumGXoKk5l6eUGlWOKfVhi91ZQRinBg9mILoav3QiB1fBZ
	 XH1kzBpEMiJyxu7Tm3SLhwaxbm6TDZxgx4hAwlfzi/ix9hz3ZwgCoJUQePydjX7/Ab
	 4e4oz2C6aRUiqyEr3i8J98WgYbXHAAdfn85XA92ICep6v4FTC3eS3y1SWsiOcvzzgw
	 wFhbI0EGzasPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E75A845FA;
	Fri, 10 May 2024 15:27:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52A481BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EFA242048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9DI8vOnJjjWK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00D2042243
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00D2042243
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00D2042243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:40 +0000 (UTC)
X-CSE-ConnectionGUID: 1ElkMyHXRiytG1UTj1XWLg==
X-CSE-MsgGUID: iqAkd1cDSDOaOrOiLu63Qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152628"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152628"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:41 -0700
X-CSE-ConnectionGUID: qYimk+drTNisAs3/kNNFPg==
X-CSE-MsgGUID: nHt+izmCS16DdI97daUsKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208277"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:38 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:15 +0200
Message-ID: <20240510152620.2227312-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354861; x=1746890861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yn7lGldHXX5OMvMMtk0QpXcGdcB3Y+0iq/q74WMS+28=;
 b=WzpumAlHzQRSyYW6GsYVI1ZTB5HInKeWFBVlFplyHj3NGOZyPUcZirOb
 +lx8soXdoYcYS2JsyEi80jdyq2TwPzYIU43YKoAoF/FJN/OTQpR4nglP7
 fucdKBlKge5DdhW6PKROCmjXzSeUaNcdjOrqNU9JGzoHlzHus+RUB9Zzj
 JxWOgGBr5mbB+GloWF9/lXMm8exCZyP5hAYCW8WDkLSXwhn9ti36tn4rw
 Xh1MkSu3OBcVxNGBeVvWI5Y7Z6J57Nxd6X0WSMy19wIvP78gjlZ8FC1Oj
 mdun/gJnytbPS5vMM1yLJDleEXCISLXZDo09q0sNbtpOKSkkT9tXls+ME
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WzpumAlH
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 07/12] idpf: compile singleq
 code only under default-n CONFIG_IDPF_SINGLEQ
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, there's no HW supporting idpf in the singleq model. Still,
this dead code is supported by the driver and often times add hotpath
branches and redundant cacheline accesses.
While it can't currently be removed, add CONFIG_IDPF_SINGLEQ and build
the singleq code only when it's enabled manually. This corresponds to
-10 Kb of object code size and a good bunch of hotpath checks.
idpf_is_queue_model_split() works as a gate and compiles out to `true`
when the config option is disabled.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            | 13 +---------
 drivers/net/ethernet/intel/idpf/Kconfig       | 26 +++++++++++++++++++
 drivers/net/ethernet/intel/idpf/Makefile      |  3 ++-
 drivers/net/ethernet/intel/idpf/idpf.h        |  3 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  2 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 15 ++++++++---
 6 files changed, 43 insertions(+), 19 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/Kconfig

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index e0287fbd501d..0375c7448a57 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -384,17 +384,6 @@ config IGC_LEDS
 	  Optional support for controlling the NIC LED's with the netdev
 	  LED trigger.
 
-config IDPF
-	tristate "Intel(R) Infrastructure Data Path Function Support"
-	depends on PCI_MSI
-	select DIMLIB
-	select PAGE_POOL
-	select PAGE_POOL_STATS
-	help
-	  This driver supports Intel(R) Infrastructure Data Path Function
-	  devices.
-
-	  To compile this driver as a module, choose M here. The module
-	  will be called idpf.
+source "drivers/net/ethernet/intel/idpf/Kconfig"
 
 endif # NET_VENDOR_INTEL
diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
new file mode 100644
index 000000000000..bee83a40f218
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2024 Intel Corporation
+
+config IDPF
+	tristate "Intel(R) Infrastructure Data Path Function Support"
+	depends on PCI_MSI
+	select DIMLIB
+	select PAGE_POOL
+	select PAGE_POOL_STATS
+	help
+	  This driver supports Intel(R) Infrastructure Data Path Function
+	  devices.
+
+	  To compile this driver as a module, choose M here. The module
+	  will be called idpf.
+
+if IDPF
+
+config IDPF_SINGLEQ
+	bool "idpf singleq support"
+	help
+	  This option enables support for legacy single Rx/Tx queues w/no
+	  completion and fill queues. Only enable if you have such hardware
+	  as it increases the driver size and adds runtme checks on hotpath.
+
+endif # IDPF
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index 6844ead2f3ac..2ce01a0b5898 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -12,7 +12,8 @@ idpf-y := \
 	idpf_ethtool.o		\
 	idpf_lib.o		\
 	idpf_main.o		\
-	idpf_singleq_txrx.o	\
 	idpf_txrx.o		\
 	idpf_virtchnl.o 	\
 	idpf_vf_dev.o
+
+idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index f9e43d171f17..5d9529f5b41b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -599,7 +599,8 @@ struct idpf_adapter {
  */
 static inline int idpf_is_queue_model_split(u16 q_model)
 {
-	return q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
+	return !IS_ENABLED(CONFIG_IDPF_SINGLEQ) ||
+	       q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
 }
 
 #define idpf_is_cap_ena(adapter, field, flag) \
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 4aa5ee781bd7..2bc1a5a0b50f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1306,7 +1306,7 @@ static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
 static void idpf_rxq_set_descids(const struct idpf_vport *vport,
 				 struct idpf_rx_queue *q)
 {
-	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
+	if (idpf_is_queue_model_split(vport->rxq_model)) {
 		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
 	} else {
 		if (vport->base_rxd)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 44602b87cd41..d1705fcb701a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1256,12 +1256,12 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	vport_msg->vport_type = cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
 	vport_msg->vport_index = cpu_to_le16(idx);
 
-	if (adapter->req_tx_splitq)
+	if (adapter->req_tx_splitq || !IS_ENABLED(CONFIG_IDPF_SINGLEQ))
 		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
 	else
 		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
 
-	if (adapter->req_rx_splitq)
+	if (adapter->req_rx_splitq || !IS_ENABLED(CONFIG_IDPF_SINGLEQ))
 		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
 	else
 		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
@@ -1323,10 +1323,17 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
 
 	vport_msg = adapter->vport_params_recvd[vport->idx];
 
+	if (!IS_ENABLED(CONFIG_IDPF_SINGLEQ) &&
+	    (vport_msg->rxq_model == VIRTCHNL2_QUEUE_MODEL_SINGLE ||
+	     vport_msg->txq_model == VIRTCHNL2_QUEUE_MODEL_SINGLE)) {
+		dev_err(&adapter->pdev->dev, "singleq mode requested, but not compiled-in\n");
+		return -EOPNOTSUPP;
+	}
+
 	rx_desc_ids = le64_to_cpu(vport_msg->rx_desc_ids);
 	tx_desc_ids = le64_to_cpu(vport_msg->tx_desc_ids);
 
-	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
+	if (idpf_is_queue_model_split(vport->rxq_model)) {
 		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M)) {
 			dev_info(&adapter->pdev->dev, "Minimum RX descriptor support not provided, using the default\n");
 			vport_msg->rx_desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
@@ -1336,7 +1343,7 @@ int idpf_check_supported_desc_ids(struct idpf_vport *vport)
 			vport->base_rxd = true;
 	}
 
-	if (vport->txq_model != VIRTCHNL2_QUEUE_MODEL_SPLIT)
+	if (!idpf_is_queue_model_split(vport->txq_model))
 		return 0;
 
 	if ((tx_desc_ids & MIN_SUPPORT_TXDID) != MIN_SUPPORT_TXDID) {
-- 
2.45.0

