Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9C179DA1F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 22:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D1EF41BA3;
	Tue, 12 Sep 2023 20:34:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D1EF41BA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694550859;
	bh=9nlHaaXwraqJKjSsIUD1zdhyKsQL+IUYGplcNkbOfbI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2JYjj1XTiyr3iWYYNtaZuY0SlYVS5EdmTc4/Q6yddj6l4a5ym2tx51Ai7IWtGu1zM
	 j2wYSRPv2Z9+f4YBLk2sPQoucPuiBfzYry59hSJmIN4oI5rjG9H9Gd2I5GmYaIbuIt
	 BH7taN4xcxq77bdiMZp4AcVzR2VHyWCrFxU0+vQQTxuvSTSjBM0zt6DmwD6UsjQAPI
	 6U0rUZ4lKR9zhAwq8NwN9Cz4xGwjkx1O8EGmmn1ZESkjHAqQFZhhDIXDo1AMUcZBKc
	 ec9MHpSJUXFYk0BYeP4L8Rg5r1zY9ebsjjVnEwC4aPDPdZB1D2lKmSK4lj3E7sdR24
	 gF2QZW+6w+ILw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VwBTXbulFjs7; Tue, 12 Sep 2023 20:34:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5764741B1A;
	Tue, 12 Sep 2023 20:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5764741B1A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07D751BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A6EC80002
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A6EC80002
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPzprbsWnVpi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 20:33:27 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2EF59821A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 20:33:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EF59821A4
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368753709"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="368753709"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:33:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="778942028"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="778942028"
Received: from unknown (HELO lo0-100.bstnma-vfttp-361.verizon-gni.com)
 ([10.166.80.24])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2023 13:33:17 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 13:31:39 -0700
Message-Id: <20230912203149.1728261-6-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
References: <20230912203149.1728261-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694550807; x=1726086807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ErpK6HOzf8ni0Jhh0V4f1Ue2LIsU5rWl9D5ClkDXNcA=;
 b=UrNiN5Dv5MpRtodK8EyEbuh/xKExhzei05ypKiy2uM9g/+imjAav9lN8
 Cu8Vq2TAWDU/+SdTBuqvd9tSAdWHde6+bh1D8wGWffuuy6YgmT+w+LGhr
 +e8wt9x66/zD6hTIUR/pD8lQoKapnSjzJinTQuWsVsy1lJafgT7BvqpvH
 hAi08tBHJzReEd3VsoEaMSktoB8XZGm7SYJ8y05QJ+b1Y4TZzX60W/Vj4
 yjGD3vImeau1VgQoE/Ztv/ISnX1jqcH7HKfkFwxblNVTJjSTfAhzxlLKK
 frKqtS8Mdkmd1IlsbiWmGWCrg8cpk++8grdnrtzoAhV/9PIR7yxuWTfP6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UrNiN5Dv
Subject: [Intel-wired-lan] [PATCH iwl-next v11 05/15] idpf: add create vport
 and netdev configuration
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
Cc: willemb@google.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add the required support to create a vport by spawning
the init task. Once the vport is created, initialize and
allocate the resources needed for it. Configure and register
a netdev for each vport with all the features supported
by the device based on the capabilities received from the
device Control Plane. Spawn the init task till all the default
vports are created.

Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Willem de Bruijn <willemb@google.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/Makefile      |   1 +
 drivers/net/ethernet/intel/idpf/idpf.h        | 307 ++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 431 ++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  49 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 178 ++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  52 ++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 524 +++++++++++++++++-
 7 files changed, 1522 insertions(+), 20 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c

diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
index bc359b4285d5..f70ffef9b11c 100644
--- a/drivers/net/ethernet/intel/idpf/Makefile
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -11,5 +11,6 @@ idpf-y := \
 	idpf_dev.o		\
 	idpf_lib.o		\
 	idpf_main.o		\
+	idpf_txrx.o		\
 	idpf_virtchnl.o 	\
 	idpf_vf_dev.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 699db47c507c..7b40e42665a4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -6,7 +6,10 @@
 
 /* Forward declaration */
 struct idpf_adapter;
+struct idpf_vport;
+struct idpf_vport_max_q;
 
+#include <net/pkt_sched.h>
 #include <linux/aer.h>
 #include <linux/etherdevice.h>
 #include <linux/pci.h>
@@ -15,6 +18,8 @@ struct idpf_adapter;
 #include "idpf_txrx.h"
 #include "idpf_controlq.h"
 
+#define IDPF_NO_FREE_SLOT		0xffff
+
 /* Default Mailbox settings */
 #define IDPF_NUM_DFLT_MBX_Q		2	/* includes both TX and RX */
 #define IDPF_DFLT_MBX_Q_LEN		64
@@ -66,6 +71,58 @@ enum idpf_flags {
 	IDPF_FLAGS_NBITS,
 };
 
+/**
+ * enum idpf_cap_field - Offsets into capabilities struct for specific caps
+ * @IDPF_BASE_CAPS: generic base capabilities
+ * @IDPF_CSUM_CAPS: checksum offload capabilities
+ * @IDPF_SEG_CAPS: segmentation offload capabilities
+ * @IDPF_RSS_CAPS: RSS offload capabilities
+ * @IDPF_HSPLIT_CAPS: Header split capabilities
+ * @IDPF_RSC_CAPS: RSC offload capabilities
+ * @IDPF_OTHER_CAPS: miscellaneous offloads
+ *
+ * Used when checking for a specific capability flag since different capability
+ * sets are not mutually exclusive numerically, the caller must specify which
+ * type of capability they are checking for.
+ */
+enum idpf_cap_field {
+	IDPF_BASE_CAPS		= -1,
+	IDPF_CSUM_CAPS		= offsetof(struct virtchnl2_get_capabilities,
+					   csum_caps),
+	IDPF_SEG_CAPS		= offsetof(struct virtchnl2_get_capabilities,
+					   seg_caps),
+	IDPF_RSS_CAPS		= offsetof(struct virtchnl2_get_capabilities,
+					   rss_caps),
+	IDPF_HSPLIT_CAPS	= offsetof(struct virtchnl2_get_capabilities,
+					   hsplit_caps),
+	IDPF_RSC_CAPS		= offsetof(struct virtchnl2_get_capabilities,
+					   rsc_caps),
+	IDPF_OTHER_CAPS		= offsetof(struct virtchnl2_get_capabilities,
+					   other_caps),
+};
+
+/**
+ * enum idpf_vport_state - Current vport state
+ * @__IDPF_VPORT_DOWN: Vport is down
+ * @__IDPF_VPORT_UP: Vport is up
+ * @__IDPF_VPORT_STATE_LAST: Must be last, number of states
+ */
+enum idpf_vport_state {
+	__IDPF_VPORT_DOWN,
+	__IDPF_VPORT_UP,
+	__IDPF_VPORT_STATE_LAST,
+};
+
+/**
+ * struct idpf_netdev_priv - Struct to store vport back pointer
+ * @vport: Vport back pointer
+ * @state: See enum idpf_vport_state
+ */
+struct idpf_netdev_priv {
+	struct idpf_vport *vport;
+	enum idpf_vport_state state;
+};
+
 /**
  * struct idpf_reset_reg - Reset register offsets/masks
  * @rstat: Reset status register
@@ -76,6 +133,20 @@ struct idpf_reset_reg {
 	u32 rstat_m;
 };
 
+/**
+ * struct idpf_vport_max_q - Queue limits
+ * @max_rxq: Maximum number of RX queues supported
+ * @max_txq: Maixmum number of TX queues supported
+ * @max_bufq: In splitq, maximum number of buffer queues supported
+ * @max_complq: In splitq, maximum number of completion queues supported
+ */
+struct idpf_vport_max_q {
+	u16 max_rxq;
+	u16 max_txq;
+	u16 max_bufq;
+	u16 max_complq;
+};
+
 /**
  * struct idpf_reg_ops - Device specific register operation function pointers
  * @ctlq_reg_init: Mailbox control queue register initialization
@@ -105,6 +176,10 @@ struct idpf_dev_ops {
  * statement and instead only used to define the enum and array.
  */
 #define IDPF_FOREACH_VPORT_VC_STATE(STATE)	\
+	STATE(IDPF_VC_CREATE_VPORT)		\
+	STATE(IDPF_VC_CREATE_VPORT_ERR)		\
+	STATE(IDPF_VC_DESTROY_VPORT)		\
+	STATE(IDPF_VC_DESTROY_VPORT_ERR)	\
 	STATE(IDPF_VC_ALLOC_VECTORS)		\
 	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
 	STATE(IDPF_VC_DEALLOC_VECTORS)		\
@@ -122,10 +197,114 @@ extern const char * const idpf_vport_vc_state_str[];
 
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
+ * @num_txq: Number of allocated TX queues
+ * @num_complq: Number of allocated completion queues
+ * @txq_desc_count: TX queue descriptor count
+ * @complq_desc_count: Completion queue descriptor count
+ * @num_txq_grp: Number of TX queue groups
+ * @txq_model: Split queue or single queue queuing model
+ * @num_rxq: Number of allocated RX queues
+ * @num_bufq: Number of allocated buffer queues
+ * @rxq_desc_count: RX queue descriptor count. *MUST* have enough descriptors
+ *		    to complete all buffer descriptors for all buffer queues in
+ *		    the worst case.
+ * @num_bufqs_per_qgrp: Buffer queues per RX queue in a given grouping
+ * @bufq_desc_count: Buffer queue descriptor count
+ * @bufq_size: Size of buffers in ring (e.g. 2K, 4K, etc)
+ * @num_rxq_grp: Number of RX queues in a group
+ * @rxq_model: Splitq queue or single queue queuing model
+ * @adapter: back pointer to associated adapter
+ * @netdev: Associated net_device. Each vport should have one and only one
+ *	    associated netdev.
+ * @vport_type: Default SRIOV, SIOV, etc.
  * @vport_id: Device given vport identifier
+ * @idx: Software index in adapter vports struct
+ * @default_vport: Use this vport if one isn't specified
+ * @max_mtu: device given max possible MTU
+ * @default_mac_addr: device will give a default MAC to use
+ * @vc_msg: Virtchnl message buffer
+ * @vc_state: Virtchnl message state
+ * @vchnl_wq: Wait queue for virtchnl messages
+ * @vc_buf_lock: Lock to protect virtchnl buffer
  */
 struct idpf_vport {
+	u16 num_txq;
+	u16 num_complq;
+	u32 txq_desc_count;
+	u32 complq_desc_count;
+	u16 num_txq_grp;
+	u32 txq_model;
+	u16 num_rxq;
+	u16 num_bufq;
+	u32 rxq_desc_count;
+	u8 num_bufqs_per_qgrp;
+	u32 bufq_desc_count[IDPF_MAX_BUFQS_PER_RXQ_GRP];
+	u32 bufq_size[IDPF_MAX_BUFQS_PER_RXQ_GRP];
+	u16 num_rxq_grp;
+	u32 rxq_model;
+
+	struct idpf_adapter *adapter;
+	struct net_device *netdev;
+	u16 vport_type;
 	u32 vport_id;
+	u16 idx;
+	bool default_vport;
+
+	u16 max_mtu;
+	u8 default_mac_addr[ETH_ALEN];
+
+	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
+	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
+
+	wait_queue_head_t vchnl_wq;
+	struct mutex vc_buf_lock;
+};
+
+/**
+ * struct idpf_vport_user_config_data - User defined configuration values for
+ *					each vport.
+ * @num_req_tx_qs: Number of user requested TX queues through ethtool
+ * @num_req_rx_qs: Number of user requested RX queues through ethtool
+ * @num_req_txq_desc: Number of user requested TX queue descriptors through
+ *		      ethtool
+ * @num_req_rxq_desc: Number of user requested RX queue descriptors through
+ *		      ethtool
+ *
+ * Used to restore configuration after a reset as the vport will get wiped.
+ */
+struct idpf_vport_user_config_data {
+	u16 num_req_tx_qs;
+	u16 num_req_rx_qs;
+	u32 num_req_txq_desc;
+	u32 num_req_rxq_desc;
+};
+
+/**
+ * enum idpf_vport_config_flags - Vport config flags
+ * @IDPF_VPORT_REG_NETDEV: Register netdev
+ * @IDPF_VPORT_UP_REQUESTED: Set if interface up is requested on core reset
+ * @IDPF_VPORT_CONFIG_FLAGS_NBITS: Must be last
+ */
+enum idpf_vport_config_flags {
+	IDPF_VPORT_REG_NETDEV,
+	IDPF_VPORT_UP_REQUESTED,
+	IDPF_VPORT_CONFIG_FLAGS_NBITS,
+};
+
+/**
+ * struct idpf_avail_queue_info
+ * @avail_rxq: Available RX queues
+ * @avail_txq: Available TX queues
+ * @avail_bufq: Available buffer queues
+ * @avail_complq: Available completion queues
+ *
+ * Maintain total queues available after allocating max queues to each vport.
+ */
+struct idpf_avail_queue_info {
+	u16 avail_rxq;
+	u16 avail_txq;
+	u16 avail_bufq;
+	u16 avail_complq;
 };
 
 /**
@@ -152,6 +331,18 @@ struct idpf_vector_lifo {
 	u16 *vec_idx;
 };
 
+/**
+ * struct idpf_vport_config - Vport configuration data
+ * @user_config: see struct idpf_vport_user_config_data
+ * @max_q: Maximum possible queues
+ * @flags: See enum idpf_vport_config_flags
+ */
+struct idpf_vport_config {
+	struct idpf_vport_user_config_data user_config;
+	struct idpf_vport_max_q max_q;
+	DECLARE_BITMAP(flags, IDPF_VPORT_CONFIG_FLAGS_NBITS);
+};
+
 /**
  * struct idpf_adapter - Device data struct generated on probe
  * @pdev: PCI device struct given on probe
@@ -171,6 +362,18 @@ struct idpf_vector_lifo {
  * @mb_vector: Mailbox vector data
  * @vector_stack: Stack to store the msix vector indexes
  * @irq_mb_handler: Handler for hard interrupt for mailbox
+ * @avail_queues: Device given queue limits
+ * @vports: Array to store vports created by the driver
+ * @netdevs: Associated Vport netdevs
+ * @vport_params_reqd: Vport params requested
+ * @vport_params_recvd: Vport params received
+ * @vport_ids: Array of device given vport identifiers
+ * @vport_config: Vport config parameters
+ * @max_vports: Maximum vports that can be allocated
+ * @num_alloc_vports: Current number of vports allocated
+ * @next_vport: Next free slot in pf->vport[] - 0-based!
+ * @init_task: Initialization task
+ * @init_wq: Workqueue for initialization task
  * @serv_task: Periodically recurring maintenance task
  * @serv_wq: Workqueue for service task
  * @mbx_task: Task to handle mailbox interrupts
@@ -182,8 +385,11 @@ struct idpf_vector_lifo {
  * @vc_state: Virtchnl message state
  * @vc_msg: Virtchnl message buffer
  * @dev_ops: See idpf_dev_ops
+ * @req_tx_splitq: TX split or single queue model to request
+ * @req_rx_splitq: RX split or single queue model to request
  * @vport_ctrl_lock: Lock to protect the vport control flow
  * @vector_lock: Lock to protect vector distribution
+ * @queue_lock: Lock to protect queue distribution
  * @vc_buf_lock: Lock to protect virtchnl buffer
  */
 struct idpf_adapter {
@@ -206,6 +412,20 @@ struct idpf_adapter {
 	struct idpf_vector_lifo vector_stack;
 	irqreturn_t (*irq_mb_handler)(int irq, void *data);
 
+	struct idpf_avail_queue_info avail_queues;
+	struct idpf_vport **vports;
+	struct net_device **netdevs;
+	struct virtchnl2_create_vport **vport_params_reqd;
+	struct virtchnl2_create_vport **vport_params_recvd;
+	u32 *vport_ids;
+
+	struct idpf_vport_config **vport_config;
+	u16 max_vports;
+	u16 num_alloc_vports;
+	u16 next_vport;
+
+	struct delayed_work init_task;
+	struct workqueue_struct *init_wq;
 	struct delayed_work serv_task;
 	struct workqueue_struct *serv_wq;
 	struct delayed_work mbx_task;
@@ -218,12 +438,79 @@ struct idpf_adapter {
 	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
 	char vc_msg[IDPF_CTLQ_MAX_BUF_LEN];
 	struct idpf_dev_ops dev_ops;
+	bool req_tx_splitq;
+	bool req_rx_splitq;
 
 	struct mutex vport_ctrl_lock;
 	struct mutex vector_lock;
+	struct mutex queue_lock;
 	struct mutex vc_buf_lock;
 };
 
+/**
+ * idpf_is_queue_model_split - check if queue model is split
+ * @q_model: queue model single or split
+ *
+ * Returns true if queue model is split else false
+ */
+static inline int idpf_is_queue_model_split(u16 q_model)
+{
+	return q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT;
+}
+
+#define idpf_is_cap_ena(adapter, field, flag) \
+	idpf_is_capability_ena(adapter, false, field, flag)
+#define idpf_is_cap_ena_all(adapter, field, flag) \
+	idpf_is_capability_ena(adapter, true, field, flag)
+
+bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
+			    enum idpf_cap_field field, u64 flag);
+
+#define IDPF_CAP_RSS (\
+	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
+	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
+	VIRTCHNL2_CAP_RSS_IPV4_UDP	|\
+	VIRTCHNL2_CAP_RSS_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_RSS_IPV4_OTHER	|\
+	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_UDP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_SCTP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_OTHER)
+
+#define IDPF_CAP_RSC (\
+	VIRTCHNL2_CAP_RSC_IPV4_TCP	|\
+	VIRTCHNL2_CAP_RSC_IPV6_TCP)
+
+#define IDPF_CAP_HSPLIT	(\
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4	|\
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6)
+
+#define IDPF_CAP_RX_CSUM_L4V4 (\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP)
+
+#define IDPF_CAP_RX_CSUM_L4V6 (\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP)
+
+#define IDPF_CAP_RX_CSUM (\
+	VIRTCHNL2_CAP_RX_CSUM_L3_IPV4		|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP)
+
+#define IDPF_CAP_SCTP_CSUM (\
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP)
+
+#define IDPF_CAP_TUNNEL_TX_CSUM (\
+	VIRTCHNL2_CAP_TX_CSUM_L3_SINGLE_TUNNEL	|\
+	VIRTCHNL2_CAP_TX_CSUM_L4_SINGLE_TUNNEL)
+
 /**
  * idpf_get_reserved_vecs - Get reserved vectors
  * @adapter: private data struct
@@ -242,6 +529,15 @@ static inline u16 idpf_get_default_vports(struct idpf_adapter *adapter)
 	return le16_to_cpu(adapter->caps.default_num_vports);
 }
 
+/**
+ * idpf_get_max_vports - Get max number of vports
+ * @adapter: private data struct
+ */
+static inline u16 idpf_get_max_vports(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.max_vports);
+}
+
 /**
  * idpf_get_reg_addr - Get BAR0 register address
  * @adapter: private data struct
@@ -283,6 +579,7 @@ static inline bool idpf_is_reset_in_prog(struct idpf_adapter *adapter)
 		test_bit(IDPF_HR_DRV_LOAD, adapter->flags));
 }
 
+void idpf_init_task(struct work_struct *work);
 void idpf_service_task(struct work_struct *work);
 void idpf_mbx_task(struct work_struct *work);
 void idpf_vc_event_task(struct work_struct *work);
@@ -294,8 +591,10 @@ int idpf_vc_core_init(struct idpf_adapter *adapter);
 void idpf_vc_core_deinit(struct idpf_adapter *adapter);
 int idpf_intr_req(struct idpf_adapter *adapter);
 void idpf_intr_rel(struct idpf_adapter *adapter);
+int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
 int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
 int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
+void idpf_deinit_task(struct idpf_adapter *adapter);
 int idpf_get_vec_ids(struct idpf_adapter *adapter,
 		     u16 *vecids, int num_vecids,
 		     struct virtchnl2_vector_chunks *chunks);
@@ -303,5 +602,13 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     void *msg, int msg_size);
 int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     u16 msg_size, u8 *msg);
+int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
+			    struct idpf_vport_max_q *max_q);
+void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
+			       struct idpf_vport_max_q *max_q);
+void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
+u32 idpf_get_vport_id(struct idpf_vport *vport);
+int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
+			       struct idpf_vport_max_q *max_q);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 9ad2b8529836..8b8d29ddfc71 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -293,6 +293,274 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 	return err;
 }
 
+/**
+ * idpf_cfg_netdev - Allocate, configure and register a netdev
+ * @vport: main vport structure
+ *
+ * Returns 0 on success, negative value on failure.
+ */
+static int idpf_cfg_netdev(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	netdev_features_t dflt_features;
+	netdev_features_t offloads = 0;
+	struct idpf_netdev_priv *np;
+	struct net_device *netdev;
+	u16 idx = vport->idx;
+
+	vport_config = adapter->vport_config[idx];
+
+	/* It's possible we already have a netdev allocated and registered for
+	 * this vport
+	 */
+	if (test_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags)) {
+		netdev = adapter->netdevs[idx];
+		np = netdev_priv(netdev);
+		np->vport = vport;
+		vport->netdev = netdev;
+
+		return 0;
+	}
+
+	netdev = alloc_etherdev_mqs(sizeof(struct idpf_netdev_priv),
+				    vport_config->max_q.max_txq,
+				    vport_config->max_q.max_rxq);
+	if (!netdev)
+		return -ENOMEM;
+
+	vport->netdev = netdev;
+	np = netdev_priv(netdev);
+	np->vport = vport;
+
+	/* setup watchdog timeout value to be 5 second */
+	netdev->watchdog_timeo = 5 * HZ;
+
+	/* configure default MTU size */
+	netdev->min_mtu = ETH_MIN_MTU;
+	netdev->max_mtu = vport->max_mtu;
+
+	dflt_features = NETIF_F_SG	|
+			NETIF_F_HIGHDMA;
+
+	if (idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS))
+		dflt_features |= NETIF_F_RXHASH;
+	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_RX_CSUM_L4V4))
+		dflt_features |= NETIF_F_IP_CSUM;
+	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_RX_CSUM_L4V6))
+		dflt_features |= NETIF_F_IPV6_CSUM;
+	if (idpf_is_cap_ena(adapter, IDPF_CSUM_CAPS, IDPF_CAP_RX_CSUM))
+		dflt_features |= NETIF_F_RXCSUM;
+	if (idpf_is_cap_ena_all(adapter, IDPF_CSUM_CAPS, IDPF_CAP_SCTP_CSUM))
+		dflt_features |= NETIF_F_SCTP_CRC;
+
+	if (idpf_is_cap_ena(adapter, IDPF_SEG_CAPS, VIRTCHNL2_CAP_SEG_IPV4_TCP))
+		dflt_features |= NETIF_F_TSO;
+	if (idpf_is_cap_ena(adapter, IDPF_SEG_CAPS, VIRTCHNL2_CAP_SEG_IPV6_TCP))
+		dflt_features |= NETIF_F_TSO6;
+	if (idpf_is_cap_ena_all(adapter, IDPF_SEG_CAPS,
+				VIRTCHNL2_CAP_SEG_IPV4_UDP |
+				VIRTCHNL2_CAP_SEG_IPV6_UDP))
+		dflt_features |= NETIF_F_GSO_UDP_L4;
+	if (idpf_is_cap_ena_all(adapter, IDPF_RSC_CAPS, IDPF_CAP_RSC))
+		offloads |= NETIF_F_GRO_HW;
+	/* advertise to stack only if offloads for encapsulated packets is
+	 * supported
+	 */
+	if (idpf_is_cap_ena(vport->adapter, IDPF_SEG_CAPS,
+			    VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL)) {
+		offloads |= NETIF_F_GSO_UDP_TUNNEL	|
+			    NETIF_F_GSO_GRE		|
+			    NETIF_F_GSO_GRE_CSUM	|
+			    NETIF_F_GSO_PARTIAL		|
+			    NETIF_F_GSO_UDP_TUNNEL_CSUM	|
+			    NETIF_F_GSO_IPXIP4		|
+			    NETIF_F_GSO_IPXIP6		|
+			    0;
+
+		if (!idpf_is_cap_ena_all(vport->adapter, IDPF_CSUM_CAPS,
+					 IDPF_CAP_TUNNEL_TX_CSUM))
+			netdev->gso_partial_features |=
+				NETIF_F_GSO_UDP_TUNNEL_CSUM;
+
+		netdev->gso_partial_features |= NETIF_F_GSO_GRE_CSUM;
+		offloads |= NETIF_F_TSO_MANGLEID;
+	}
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_LOOPBACK))
+		offloads |= NETIF_F_LOOPBACK;
+
+	netdev->features |= dflt_features;
+	netdev->hw_features |= dflt_features | offloads;
+	netdev->hw_enc_features |= dflt_features | offloads;
+	SET_NETDEV_DEV(netdev, &adapter->pdev->dev);
+
+	/* carrier off on init to avoid Tx hangs */
+	netif_carrier_off(netdev);
+
+	/* make sure transmit queues start off as stopped */
+	netif_tx_stop_all_queues(netdev);
+
+	/* The vport can be arbitrarily released so we need to also track
+	 * netdevs in the adapter struct
+	 */
+	adapter->netdevs[idx] = netdev;
+
+	return 0;
+}
+
+/**
+ * idpf_get_free_slot - get the next non-NULL location index in array
+ * @adapter: adapter in which to look for a free vport slot
+ */
+static int idpf_get_free_slot(struct idpf_adapter *adapter)
+{
+	unsigned int i;
+
+	for (i = 0; i < adapter->max_vports; i++) {
+		if (!adapter->vports[i])
+			return i;
+	}
+
+	return IDPF_NO_FREE_SLOT;
+}
+
+/**
+ * idpf_decfg_netdev - Unregister the netdev
+ * @vport: vport for which netdev to be unregistered
+ */
+static void idpf_decfg_netdev(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+
+	unregister_netdev(vport->netdev);
+	free_netdev(vport->netdev);
+	vport->netdev = NULL;
+
+	adapter->netdevs[vport->idx] = NULL;
+}
+
+/**
+ * idpf_vport_rel - Delete a vport and free its resources
+ * @vport: the vport being removed
+ */
+static void idpf_vport_rel(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	struct idpf_vport_max_q max_q;
+	u16 idx = vport->idx;
+	int i;
+
+	vport_config = adapter->vport_config[vport->idx];
+
+	idpf_send_destroy_vport_msg(vport);
+
+	/* Set all bits as we dont know on which vc_state the vport vhnl_wq
+	 * is waiting on and wakeup the virtchnl workqueue even if it is
+	 * waiting for the response as we are going down
+	 */
+	for (i = 0; i < IDPF_VC_NBITS; i++)
+		set_bit(i, vport->vc_state);
+	wake_up(&vport->vchnl_wq);
+
+	mutex_destroy(&vport->vc_buf_lock);
+
+	/* Clear all the bits */
+	for (i = 0; i < IDPF_VC_NBITS; i++)
+		clear_bit(i, vport->vc_state);
+
+	/* Release all max queues allocated to the adapter's pool */
+	max_q.max_rxq = vport_config->max_q.max_rxq;
+	max_q.max_txq = vport_config->max_q.max_txq;
+	max_q.max_bufq = vport_config->max_q.max_bufq;
+	max_q.max_complq = vport_config->max_q.max_complq;
+	idpf_vport_dealloc_max_qs(adapter, &max_q);
+
+	kfree(adapter->vport_params_recvd[idx]);
+	adapter->vport_params_recvd[idx] = NULL;
+	kfree(adapter->vport_params_reqd[idx]);
+	adapter->vport_params_reqd[idx] = NULL;
+	kfree(vport);
+	adapter->num_alloc_vports--;
+}
+
+/**
+ * idpf_vport_dealloc - cleanup and release a given vport
+ * @vport: pointer to idpf vport structure
+ *
+ * returns nothing
+ */
+static void idpf_vport_dealloc(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	unsigned int i = vport->idx;
+
+	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
+		idpf_decfg_netdev(vport);
+
+	if (adapter->netdevs[i]) {
+		struct idpf_netdev_priv *np = netdev_priv(adapter->netdevs[i]);
+
+		np->vport = NULL;
+	}
+
+	idpf_vport_rel(vport);
+
+	adapter->vports[i] = NULL;
+	adapter->next_vport = idpf_get_free_slot(adapter);
+}
+
+/**
+ * idpf_vport_alloc - Allocates the next available struct vport in the adapter
+ * @adapter: board private structure
+ * @max_q: vport max queue info
+ *
+ * returns a pointer to a vport on success, NULL on failure.
+ */
+static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
+					   struct idpf_vport_max_q *max_q)
+{
+	u16 idx = adapter->next_vport;
+	struct idpf_vport *vport;
+
+	if (idx == IDPF_NO_FREE_SLOT)
+		return NULL;
+
+	vport = kzalloc(sizeof(*vport), GFP_KERNEL);
+	if (!vport)
+		return vport;
+
+	if (!adapter->vport_config[idx]) {
+		struct idpf_vport_config *vport_config;
+
+		vport_config = kzalloc(sizeof(*vport_config), GFP_KERNEL);
+		if (!vport_config) {
+			kfree(vport);
+
+			return NULL;
+		}
+
+		adapter->vport_config[idx] = vport_config;
+	}
+
+	vport->idx = idx;
+	vport->adapter = adapter;
+	vport->default_vport = adapter->num_alloc_vports <
+			       idpf_get_default_vports(adapter);
+
+	idpf_vport_init(vport, max_q);
+
+	/* fill vport slot in the adapter struct */
+	adapter->vports[idx] = vport;
+	adapter->vport_ids[idx] = idpf_get_vport_id(vport);
+
+	adapter->num_alloc_vports++;
+	/* prepare adapter->next_vport for next use */
+	adapter->next_vport = idpf_get_free_slot(adapter);
+
+	return vport;
+}
+
 /**
  * idpf_mbx_task - Delayed task to handle mailbox responses
  * @work: work_struct handle
@@ -337,6 +605,128 @@ void idpf_service_task(struct work_struct *work)
 			   msecs_to_jiffies(300));
 }
 
+/**
+ * idpf_init_task - Delayed initialization task
+ * @work: work_struct handle to our data
+ *
+ * Init task finishes up pending work started in probe. Due to the asynchronous
+ * nature in which the device communicates with hardware, we may have to wait
+ * several milliseconds to get a response.  Instead of busy polling in probe,
+ * pulling it out into a delayed work task prevents us from bogging down the
+ * whole system waiting for a response from hardware.
+ */
+void idpf_init_task(struct work_struct *work)
+{
+	struct idpf_vport_max_q max_q;
+	struct idpf_adapter *adapter;
+	struct idpf_vport *vport;
+	u16 num_default_vports;
+	struct pci_dev *pdev;
+	bool default_vport;
+	int index, err;
+
+	adapter = container_of(work, struct idpf_adapter, init_task.work);
+
+	num_default_vports = idpf_get_default_vports(adapter);
+	if (adapter->num_alloc_vports < num_default_vports)
+		default_vport = true;
+	else
+		default_vport = false;
+
+	err = idpf_vport_alloc_max_qs(adapter, &max_q);
+	if (err)
+		goto unwind_vports;
+
+	err = idpf_send_create_vport_msg(adapter, &max_q);
+	if (err) {
+		idpf_vport_dealloc_max_qs(adapter, &max_q);
+		goto unwind_vports;
+	}
+
+	pdev = adapter->pdev;
+	vport = idpf_vport_alloc(adapter, &max_q);
+	if (!vport) {
+		err = -EFAULT;
+		dev_err(&pdev->dev, "failed to allocate vport: %d\n",
+			err);
+		idpf_vport_dealloc_max_qs(adapter, &max_q);
+		goto unwind_vports;
+	}
+
+	index = vport->idx;
+
+	init_waitqueue_head(&vport->vchnl_wq);
+
+	mutex_init(&vport->vc_buf_lock);
+
+	if (idpf_cfg_netdev(vport))
+		goto cfg_netdev_err;
+
+	/* Spawn and return 'idpf_init_task' work queue until all the
+	 * default vports are created
+	 */
+	if (adapter->num_alloc_vports < num_default_vports) {
+		queue_delayed_work(adapter->init_wq, &adapter->init_task,
+				   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
+
+		return;
+	}
+
+	for (index = 0; index < adapter->max_vports; index++) {
+		if (adapter->netdevs[index] &&
+		    !test_bit(IDPF_VPORT_REG_NETDEV,
+			      adapter->vport_config[index]->flags)) {
+			register_netdev(adapter->netdevs[index]);
+			set_bit(IDPF_VPORT_REG_NETDEV,
+				adapter->vport_config[index]->flags);
+		}
+	}
+
+	/* As all the required vports are created, clear the reset flag
+	 * unconditionally here in case we were in reset and the link was down.
+	 */
+	clear_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+
+	return;
+
+cfg_netdev_err:
+	idpf_vport_rel(vport);
+	adapter->vports[index] = NULL;
+unwind_vports:
+	if (default_vport) {
+		for (index = 0; index < adapter->max_vports; index++) {
+			if (adapter->vports[index])
+				idpf_vport_dealloc(adapter->vports[index]);
+		}
+	}
+	clear_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+}
+
+/**
+ * idpf_deinit_task - Device deinit routine
+ * @adapter: Driver specific private structure
+ *
+ * Extended remove logic which will be used for
+ * hard reset as well
+ */
+void idpf_deinit_task(struct idpf_adapter *adapter)
+{
+	unsigned int i;
+
+	/* Wait until the init_task is done else this thread might release
+	 * the resources first and the other thread might end up in a bad state
+	 */
+	cancel_delayed_work_sync(&adapter->init_task);
+
+	if (!adapter->vports)
+		return;
+
+	for (i = 0; i < adapter->max_vports; i++) {
+		if (adapter->vports[i])
+			idpf_vport_dealloc(adapter->vports[i]);
+	}
+}
+
 /**
  * idpf_check_reset_complete - check that reset is complete
  * @hw: pointer to hw struct
@@ -372,6 +762,27 @@ static int idpf_check_reset_complete(struct idpf_hw *hw,
 	return -EBUSY;
 }
 
+/**
+ * idpf_set_vport_state - Set the vport state to be after the reset
+ * @adapter: Driver specific private structure
+ */
+static void idpf_set_vport_state(struct idpf_adapter *adapter)
+{
+	u16 i;
+
+	for (i = 0; i < adapter->max_vports; i++) {
+		struct idpf_netdev_priv *np;
+
+		if (!adapter->netdevs[i])
+			continue;
+
+		np = netdev_priv(adapter->netdevs[i]);
+		if (np->state == __IDPF_VPORT_UP)
+			set_bit(IDPF_VPORT_UP_REQUESTED,
+				adapter->vport_config[i]->flags);
+	}
+}
+
 /**
  * idpf_init_hard_reset - Initiate a hardware reset
  * @adapter: Driver specific private structure
@@ -384,17 +795,31 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 {
 	struct idpf_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
 	struct device *dev = &adapter->pdev->dev;
+	struct net_device *netdev;
 	int err;
+	u16 i;
 
 	mutex_lock(&adapter->vport_ctrl_lock);
 
 	dev_info(dev, "Device HW Reset initiated\n");
+
+	/* Avoid TX hangs on reset */
+	for (i = 0; i < adapter->max_vports; i++) {
+		netdev = adapter->netdevs[i];
+		if (!netdev)
+			continue;
+
+		netif_carrier_off(netdev);
+		netif_tx_disable(netdev);
+	}
+
 	/* Prepare for reset */
 	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
 		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
 	} else if (test_and_clear_bit(IDPF_HR_FUNC_RESET, adapter->flags)) {
 		bool is_reset = idpf_is_reset_detected(adapter);
 
+		idpf_set_vport_state(adapter);
 		idpf_vc_core_deinit(adapter);
 		if (!is_reset)
 			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
@@ -429,6 +854,12 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 		goto unlock_mutex;
 	}
 
+	/* Wait till all the vports are initialized to release the reset lock,
+	 * else user space callbacks may access uninitialized vports
+	 */
+	while (test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
+		msleep(100);
+
 unlock_mutex:
 	mutex_unlock(&adapter->vport_ctrl_lock);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 3ead992427dd..d908f06a28d3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -16,6 +16,7 @@ MODULE_LICENSE("GPL");
 static void idpf_remove(struct pci_dev *pdev)
 {
 	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+	int i;
 
 	set_bit(IDPF_REMOVE_IN_PROG, adapter->flags);
 
@@ -30,11 +31,41 @@ static void idpf_remove(struct pci_dev *pdev)
 	adapter->dev_ops.reg_ops.trigger_reset(adapter, IDPF_HR_FUNC_RESET);
 	idpf_deinit_dflt_mbx(adapter);
 
+	if (!adapter->netdevs)
+		goto destroy_wqs;
+
+	/* There are some cases where it's possible to still have netdevs
+	 * registered with the stack at this point, e.g. if the driver detected
+	 * a HW reset and rmmod is called before it fully recovers. Unregister
+	 * any stale netdevs here.
+	 */
+	for (i = 0; i < adapter->max_vports; i++) {
+		if (!adapter->netdevs[i])
+			continue;
+		if (adapter->netdevs[i]->reg_state != NETREG_UNINITIALIZED)
+			unregister_netdev(adapter->netdevs[i]);
+		free_netdev(adapter->netdevs[i]);
+		adapter->netdevs[i] = NULL;
+	}
+
+destroy_wqs:
+	destroy_workqueue(adapter->init_wq);
 	destroy_workqueue(adapter->serv_wq);
 	destroy_workqueue(adapter->mbx_wq);
 	destroy_workqueue(adapter->vc_event_wq);
+
+	for (i = 0; i < adapter->max_vports; i++) {
+		kfree(adapter->vport_config[i]);
+		adapter->vport_config[i] = NULL;
+	}
+	kfree(adapter->vport_config);
+	adapter->vport_config = NULL;
+	kfree(adapter->netdevs);
+	adapter->netdevs = NULL;
+
 	mutex_destroy(&adapter->vport_ctrl_lock);
 	mutex_destroy(&adapter->vector_lock);
+	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
 
 	pci_set_drvdata(pdev, NULL);
@@ -93,6 +124,9 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!adapter)
 		return -ENOMEM;
 
+	adapter->req_tx_splitq = true;
+	adapter->req_rx_splitq = true;
+
 	switch (ent->device) {
 	case IDPF_DEV_ID_PF:
 		idpf_dev_ops_init(adapter);
@@ -130,13 +164,22 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_set_master(pdev);
 	pci_set_drvdata(pdev, adapter);
 
+	adapter->init_wq = alloc_workqueue("%s-%s-init", 0, 0,
+					   dev_driver_string(dev),
+					   dev_name(dev));
+	if (!adapter->init_wq) {
+		dev_err(dev, "Failed to allocate init workqueue\n");
+		err = -ENOMEM;
+		goto err_free;
+	}
+
 	adapter->serv_wq = alloc_workqueue("%s-%s-service", 0, 0,
 					   dev_driver_string(dev),
 					   dev_name(dev));
 	if (!adapter->serv_wq) {
 		dev_err(dev, "Failed to allocate service workqueue\n");
 		err = -ENOMEM;
-		goto err_free;
+		goto err_serv_wq_alloc;
 	}
 
 	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
@@ -169,10 +212,12 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	mutex_init(&adapter->vport_ctrl_lock);
 	mutex_init(&adapter->vector_lock);
+	mutex_init(&adapter->queue_lock);
 	mutex_init(&adapter->vc_buf_lock);
 
 	init_waitqueue_head(&adapter->vchnl_wq);
 
+	INIT_DELAYED_WORK(&adapter->init_task, idpf_init_task);
 	INIT_DELAYED_WORK(&adapter->serv_task, idpf_service_task);
 	INIT_DELAYED_WORK(&adapter->mbx_task, idpf_mbx_task);
 	INIT_DELAYED_WORK(&adapter->vc_event_task, idpf_vc_event_task);
@@ -190,6 +235,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	destroy_workqueue(adapter->mbx_wq);
 err_mbx_wq_alloc:
 	destroy_workqueue(adapter->serv_wq);
+err_serv_wq_alloc:
+	destroy_workqueue(adapter->init_wq);
 err_free:
 	kfree(adapter);
 	return err;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
new file mode 100644
index 000000000000..53ea62533ece
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2023 Intel Corporation */
+
+#include "idpf.h"
+
+/**
+ * idpf_vport_init_num_qs - Initialize number of queues
+ * @vport: vport to initialize queues
+ * @vport_msg: data to be filled into vport
+ */
+void idpf_vport_init_num_qs(struct idpf_vport *vport,
+			    struct virtchnl2_create_vport *vport_msg)
+{
+	struct idpf_vport_user_config_data *config_data;
+	u16 idx = vport->idx;
+
+	config_data = &vport->adapter->vport_config[idx]->user_config;
+	vport->num_txq = le16_to_cpu(vport_msg->num_tx_q);
+	vport->num_rxq = le16_to_cpu(vport_msg->num_rx_q);
+	/* number of txqs and rxqs in config data will be zeros only in the
+	 * driver load path and we dont update them there after
+	 */
+	if (!config_data->num_req_tx_qs && !config_data->num_req_rx_qs) {
+		config_data->num_req_tx_qs = le16_to_cpu(vport_msg->num_tx_q);
+		config_data->num_req_rx_qs = le16_to_cpu(vport_msg->num_rx_q);
+	}
+
+	if (idpf_is_queue_model_split(vport->txq_model))
+		vport->num_complq = le16_to_cpu(vport_msg->num_tx_complq);
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		vport->num_bufq = le16_to_cpu(vport_msg->num_rx_bufq);
+
+	/* Adjust number of buffer queues per Rx queue group. */
+	if (!idpf_is_queue_model_split(vport->rxq_model)) {
+		vport->num_bufqs_per_qgrp = 0;
+		vport->bufq_size[0] = IDPF_RX_BUF_2048;
+
+		return;
+	}
+
+	vport->num_bufqs_per_qgrp = IDPF_MAX_BUFQS_PER_RXQ_GRP;
+	/* Bufq[0] default buffer size is 4K
+	 * Bufq[1] default buffer size is 2K
+	 */
+	vport->bufq_size[0] = IDPF_RX_BUF_4096;
+	vport->bufq_size[1] = IDPF_RX_BUF_2048;
+}
+
+/**
+ * idpf_vport_calc_num_q_desc - Calculate number of queue groups
+ * @vport: vport to calculate q groups for
+ */
+void idpf_vport_calc_num_q_desc(struct idpf_vport *vport)
+{
+	struct idpf_vport_user_config_data *config_data;
+	int num_bufqs = vport->num_bufqs_per_qgrp;
+	u32 num_req_txq_desc, num_req_rxq_desc;
+	u16 idx = vport->idx;
+	int i;
+
+	config_data =  &vport->adapter->vport_config[idx]->user_config;
+	num_req_txq_desc = config_data->num_req_txq_desc;
+	num_req_rxq_desc = config_data->num_req_rxq_desc;
+
+	vport->complq_desc_count = 0;
+	if (num_req_txq_desc) {
+		vport->txq_desc_count = num_req_txq_desc;
+		if (idpf_is_queue_model_split(vport->txq_model)) {
+			vport->complq_desc_count = num_req_txq_desc;
+			if (vport->complq_desc_count < IDPF_MIN_TXQ_COMPLQ_DESC)
+				vport->complq_desc_count =
+					IDPF_MIN_TXQ_COMPLQ_DESC;
+		}
+	} else {
+		vport->txq_desc_count =	IDPF_DFLT_TX_Q_DESC_COUNT;
+		if (idpf_is_queue_model_split(vport->txq_model))
+			vport->complq_desc_count =
+				IDPF_DFLT_TX_COMPLQ_DESC_COUNT;
+	}
+
+	if (num_req_rxq_desc)
+		vport->rxq_desc_count = num_req_rxq_desc;
+	else
+		vport->rxq_desc_count = IDPF_DFLT_RX_Q_DESC_COUNT;
+
+	for (i = 0; i < num_bufqs; i++) {
+		if (!vport->bufq_desc_count[i])
+			vport->bufq_desc_count[i] =
+				IDPF_RX_BUFQ_DESC_COUNT(vport->rxq_desc_count,
+							num_bufqs);
+	}
+}
+
+/**
+ * idpf_vport_calc_total_qs - Calculate total number of queues
+ * @adapter: private data struct
+ * @vport_idx: vport idx to retrieve vport pointer
+ * @vport_msg: message to fill with data
+ * @max_q: vport max queue info
+ *
+ * Return 0 on success, error value on failure.
+ */
+int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
+			     struct virtchnl2_create_vport *vport_msg,
+			     struct idpf_vport_max_q *max_q)
+{
+	int dflt_splitq_txq_grps = 0, dflt_singleq_txqs = 0;
+	int dflt_splitq_rxq_grps = 0, dflt_singleq_rxqs = 0;
+	u16 num_req_tx_qs = 0, num_req_rx_qs = 0;
+	struct idpf_vport_config *vport_config;
+	u16 num_txq_grps, num_rxq_grps;
+	u32 num_qs;
+
+	vport_config = adapter->vport_config[vport_idx];
+	if (vport_config) {
+		num_req_tx_qs = vport_config->user_config.num_req_tx_qs;
+		num_req_rx_qs = vport_config->user_config.num_req_rx_qs;
+	} else {
+		int num_cpus;
+
+		/* Restrict num of queues to cpus online as a default
+		 * configuration to give best performance. User can always
+		 * override to a max number of queues via ethtool.
+		 */
+		num_cpus = num_online_cpus();
+
+		dflt_splitq_txq_grps = min_t(int, max_q->max_txq, num_cpus);
+		dflt_singleq_txqs = min_t(int, max_q->max_txq, num_cpus);
+		dflt_splitq_rxq_grps = min_t(int, max_q->max_rxq, num_cpus);
+		dflt_singleq_rxqs = min_t(int, max_q->max_rxq, num_cpus);
+	}
+
+	if (idpf_is_queue_model_split(le16_to_cpu(vport_msg->txq_model))) {
+		num_txq_grps = num_req_tx_qs ? num_req_tx_qs : dflt_splitq_txq_grps;
+		vport_msg->num_tx_complq = cpu_to_le16(num_txq_grps *
+						       IDPF_COMPLQ_PER_GROUP);
+		vport_msg->num_tx_q = cpu_to_le16(num_txq_grps *
+						  IDPF_DFLT_SPLITQ_TXQ_PER_GROUP);
+	} else {
+		num_txq_grps = IDPF_DFLT_SINGLEQ_TX_Q_GROUPS;
+		num_qs = num_txq_grps * (num_req_tx_qs ? num_req_tx_qs :
+					 dflt_singleq_txqs);
+		vport_msg->num_tx_q = cpu_to_le16(num_qs);
+		vport_msg->num_tx_complq = 0;
+	}
+	if (idpf_is_queue_model_split(le16_to_cpu(vport_msg->rxq_model))) {
+		num_rxq_grps = num_req_rx_qs ? num_req_rx_qs : dflt_splitq_rxq_grps;
+		vport_msg->num_rx_bufq = cpu_to_le16(num_rxq_grps *
+						     IDPF_MAX_BUFQS_PER_RXQ_GRP);
+		vport_msg->num_rx_q = cpu_to_le16(num_rxq_grps *
+						  IDPF_DFLT_SPLITQ_RXQ_PER_GROUP);
+	} else {
+		num_rxq_grps = IDPF_DFLT_SINGLEQ_RX_Q_GROUPS;
+		num_qs = num_rxq_grps * (num_req_rx_qs ? num_req_rx_qs :
+					 dflt_singleq_rxqs);
+		vport_msg->num_rx_q = cpu_to_le16(num_qs);
+		vport_msg->num_rx_bufq = 0;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_vport_calc_num_q_groups - Calculate number of queue groups
+ * @vport: vport to calculate q groups for
+ */
+void idpf_vport_calc_num_q_groups(struct idpf_vport *vport)
+{
+	if (idpf_is_queue_model_split(vport->txq_model))
+		vport->num_txq_grp = vport->num_txq;
+	else
+		vport->num_txq_grp = IDPF_DFLT_SINGLEQ_TX_Q_GROUPS;
+
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		vport->num_rxq_grp = vport->num_rxq;
+	else
+		vport->num_rxq_grp = IDPF_DFLT_SINGLEQ_RX_Q_GROUPS;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 8ae23131102d..7d23a9df2ed9 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -4,10 +4,53 @@
 #ifndef _IDPF_TXRX_H_
 #define _IDPF_TXRX_H_
 
+#define IDPF_MAX_Q				16
+#define IDPF_MIN_Q				2
+
+#define IDPF_MIN_TXQ_COMPLQ_DESC		256
+
+#define IDPF_DFLT_SINGLEQ_TX_Q_GROUPS		1
+#define IDPF_DFLT_SINGLEQ_RX_Q_GROUPS		1
+#define IDPF_DFLT_SINGLEQ_TXQ_PER_GROUP		4
+#define IDPF_DFLT_SINGLEQ_RXQ_PER_GROUP		4
+
+#define IDPF_COMPLQ_PER_GROUP			1
+#define IDPF_MAX_BUFQS_PER_RXQ_GRP		2
+
+#define IDPF_DFLT_SPLITQ_TXQ_PER_GROUP		1
+#define IDPF_DFLT_SPLITQ_RXQ_PER_GROUP		1
+
 /* Default vector sharing */
 #define IDPF_MBX_Q_VEC		1
 #define IDPF_MIN_Q_VEC		1
 
+#define IDPF_DFLT_TX_Q_DESC_COUNT		512
+#define IDPF_DFLT_TX_COMPLQ_DESC_COUNT		512
+#define IDPF_DFLT_RX_Q_DESC_COUNT		512
+
+/* IMPORTANT: We absolutely _cannot_ have more buffers in the system than a
+ * given RX completion queue has descriptors. This includes _ALL_ buffer
+ * queues. E.g.: If you have two buffer queues of 512 descriptors and buffers,
+ * you have a total of 1024 buffers so your RX queue _must_ have at least that
+ * many descriptors. This macro divides a given number of RX descriptors by
+ * number of buffer queues to calculate how many descriptors each buffer queue
+ * can have without overrunning the RX queue.
+ *
+ * If you give hardware more buffers than completion descriptors what will
+ * happen is that if hardware gets a chance to post more than ring wrap of
+ * descriptors before SW gets an interrupt and overwrites SW head, the gen bit
+ * in the descriptor will be wrong. Any overwritten descriptors' buffers will
+ * be gone forever and SW has no reasonable way to tell that this has happened.
+ * From SW perspective, when we finally get an interrupt, it looks like we're
+ * still waiting for descriptor to be done, stalling forever.
+ */
+#define IDPF_RX_BUFQ_DESC_COUNT(RXD, NUM_BUFQ)	((RXD) / (NUM_BUFQ))
+
+#define IDPF_RX_BUF_2048			2048
+#define IDPF_RX_BUF_4096			4096
+#define IDPF_PACKET_HDR_PAD	\
+	(ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN * 2)
+
 #define IDPF_INT_NAME_STR_LEN   (IFNAMSIZ + 16)
 
 /**
@@ -37,4 +80,13 @@ struct idpf_q_vector {
 	struct idpf_intr_reg intr_reg;
 	char name[IDPF_INT_NAME_STR_LEN];
 };
+
+void idpf_vport_init_num_qs(struct idpf_vport *vport,
+			    struct virtchnl2_create_vport *vport_msg);
+void idpf_vport_calc_num_q_desc(struct idpf_vport *vport);
+int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
+			     struct virtchnl2_create_vport *vport_msg,
+			     struct idpf_vport_max_q *max_q);
+void idpf_vport_calc_num_q_groups(struct idpf_vport *vport);
+
 #endif /* !_IDPF_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3a93fac009f1..4a662f36bbfd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -115,6 +115,79 @@ int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
 	return err;
 }
 
+/**
+ * idpf_find_vport - Find vport pointer from control queue message
+ * @adapter: driver specific private structure
+ * @vport: address of vport pointer to copy the vport from adapters vport list
+ * @ctlq_msg: control queue message
+ *
+ * Return 0 on success, error value on failure. Also this function does check
+ * for the opcodes which expect to receive payload and return error value if
+ * it is not the case.
+ */
+static int idpf_find_vport(struct idpf_adapter *adapter,
+			   struct idpf_vport **vport,
+			   struct idpf_ctlq_msg *ctlq_msg)
+{
+	bool no_op = false, vid_found = false;
+	int i, err = 0;
+	char *vc_msg;
+	u32 v_id;
+
+	vc_msg = kcalloc(IDPF_CTLQ_MAX_BUF_LEN, sizeof(char), GFP_KERNEL);
+	if (!vc_msg)
+		return -ENOMEM;
+
+	if (ctlq_msg->data_len) {
+		size_t payload_size = ctlq_msg->ctx.indirect.payload->size;
+
+		if (!payload_size) {
+			dev_err(&adapter->pdev->dev, "Failed to receive payload buffer\n");
+			kfree(vc_msg);
+
+			return -EINVAL;
+		}
+
+		memcpy(vc_msg, ctlq_msg->ctx.indirect.payload->va,
+		       min_t(size_t, payload_size, IDPF_CTLQ_MAX_BUF_LEN));
+	}
+
+	switch (ctlq_msg->cookie.mbx.chnl_opcode) {
+	case VIRTCHNL2_OP_VERSION:
+	case VIRTCHNL2_OP_GET_CAPS:
+	case VIRTCHNL2_OP_CREATE_VPORT:
+	case VIRTCHNL2_OP_ALLOC_VECTORS:
+	case VIRTCHNL2_OP_DEALLOC_VECTORS:
+		goto free_vc_msg;
+	case VIRTCHNL2_OP_DESTROY_VPORT:
+		v_id = le32_to_cpu(((struct virtchnl2_vport *)vc_msg)->vport_id);
+		break;
+	default:
+		no_op = true;
+		break;
+	}
+
+	if (no_op)
+		goto free_vc_msg;
+
+	for (i = 0; i < idpf_get_max_vports(adapter); i++) {
+		if (adapter->vport_ids[i] == v_id) {
+			vid_found = true;
+			break;
+		}
+	}
+
+	if (vid_found)
+		*vport = adapter->vports[i];
+	else
+		err = -EINVAL;
+
+free_vc_msg:
+	kfree(vc_msg);
+
+	return err;
+}
+
 /**
  * idpf_copy_data_to_vc_buf - Copy the virtchnl response data into the buffer.
  * @adapter: driver specific private structure
@@ -131,14 +204,22 @@ static int idpf_copy_data_to_vc_buf(struct idpf_adapter *adapter,
 				    enum idpf_vport_vc_state err_enum)
 {
 	if (ctlq_msg->cookie.mbx.chnl_retval) {
-		set_bit(err_enum, adapter->vc_state);
+		if (vport)
+			set_bit(err_enum, vport->vc_state);
+		else
+			set_bit(err_enum, adapter->vc_state);
 
 		return -EINVAL;
 	}
 
-	memcpy(adapter->vc_msg, ctlq_msg->ctx.indirect.payload->va,
-	       min_t(int, ctlq_msg->ctx.indirect.payload->size,
-		     IDPF_CTLQ_MAX_BUF_LEN));
+	if (vport)
+		memcpy(vport->vc_msg, ctlq_msg->ctx.indirect.payload->va,
+		       min_t(int, ctlq_msg->ctx.indirect.payload->size,
+			     IDPF_CTLQ_MAX_BUF_LEN));
+	else
+		memcpy(adapter->vc_msg, ctlq_msg->ctx.indirect.payload->va,
+		       min_t(int, ctlq_msg->ctx.indirect.payload->size,
+			     IDPF_CTLQ_MAX_BUF_LEN));
 
 	return 0;
 }
@@ -158,23 +239,35 @@ static void idpf_recv_vchnl_op(struct idpf_adapter *adapter,
 			       enum idpf_vport_vc_state state,
 			       enum idpf_vport_vc_state err_state)
 {
-	wait_queue_head_t *vchnl_wq = &adapter->vchnl_wq;
+	wait_queue_head_t *vchnl_wq;
 	int err;
 
+	if (vport)
+		vchnl_wq = &vport->vchnl_wq;
+	else
+		vchnl_wq = &adapter->vchnl_wq;
+
 	err = idpf_copy_data_to_vc_buf(adapter, vport, ctlq_msg, err_state);
 	if (wq_has_sleeper(vchnl_wq)) {
-		set_bit(state, adapter->vc_state);
+		if (vport)
+			set_bit(state, vport->vc_state);
+		else
+			set_bit(state, adapter->vc_state);
 
 		wake_up(vchnl_wq);
 	} else {
-		if (!err)
+		if (!err) {
 			dev_warn(&adapter->pdev->dev, "opcode %d received without waiting thread\n",
 				 ctlq_msg->cookie.mbx.chnl_opcode);
-		else
+		} else {
 			/* Clear the errors since there is no sleeper to pass
 			 * them on
 			 */
-			clear_bit(err_state, adapter->vc_state);
+			if (vport)
+				clear_bit(err_state, vport->vc_state);
+			else
+				clear_bit(err_state, adapter->vc_state);
+		}
 	}
 }
 
@@ -191,6 +284,7 @@ static void idpf_recv_vchnl_op(struct idpf_adapter *adapter,
 int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		     void *msg, int msg_size)
 {
+	struct idpf_vport *vport = NULL;
 	struct idpf_ctlq_msg ctlq_msg;
 	struct idpf_dma_mem *dma_mem;
 	bool work_done = false;
@@ -232,6 +326,10 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 		if (op && ctlq_msg.cookie.mbx.chnl_opcode != op)
 			goto post_buffs;
 
+		err = idpf_find_vport(adapter, &vport, &ctlq_msg);
+		if (err)
+			goto post_buffs;
+
 		if (ctlq_msg.data_len)
 			payload_size = ctlq_msg.ctx.indirect.payload->size;
 
@@ -252,6 +350,16 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
 			}
 			work_done = true;
 			break;
+		case VIRTCHNL2_OP_CREATE_VPORT:
+			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
+					   IDPF_VC_CREATE_VPORT,
+					   IDPF_VC_CREATE_VPORT_ERR);
+			break;
+		case VIRTCHNL2_OP_DESTROY_VPORT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DESTROY_VPORT,
+					   IDPF_VC_DESTROY_VPORT_ERR);
+			break;
 		case VIRTCHNL2_OP_ALLOC_VECTORS:
 			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
 					   IDPF_VC_ALLOC_VECTORS,
@@ -314,8 +422,13 @@ static int __idpf_wait_for_event(struct idpf_adapter *adapter,
 	time_to_wait = ((timeout <= IDPF_MAX_WAIT) ? timeout : IDPF_MAX_WAIT);
 	num_waits = ((timeout <= IDPF_MAX_WAIT) ? 1 : timeout / IDPF_MAX_WAIT);
 
-	vchnl_wq = &adapter->vchnl_wq;
-	vc_state = adapter->vc_state;
+	if (vport) {
+		vchnl_wq = &vport->vchnl_wq;
+		vc_state = vport->vc_state;
+	} else {
+		vchnl_wq = &adapter->vchnl_wq;
+		vc_state = adapter->vc_state;
+	}
 
 	while (num_waits) {
 		int event;
@@ -548,6 +661,197 @@ static int idpf_recv_get_caps_msg(struct idpf_adapter *adapter)
 				sizeof(struct virtchnl2_get_capabilities));
 }
 
+/**
+ * idpf_vport_alloc_max_qs - Allocate max queues for a vport
+ * @adapter: Driver specific private structure
+ * @max_q: vport max queue structure
+ */
+int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
+			    struct idpf_vport_max_q *max_q)
+{
+	struct idpf_avail_queue_info *avail_queues = &adapter->avail_queues;
+	struct virtchnl2_get_capabilities *caps = &adapter->caps;
+	u16 default_vports = idpf_get_default_vports(adapter);
+	int max_rx_q, max_tx_q;
+
+	mutex_lock(&adapter->queue_lock);
+
+	max_rx_q = le16_to_cpu(caps->max_rx_q) / default_vports;
+	max_tx_q = le16_to_cpu(caps->max_tx_q) / default_vports;
+	if (adapter->num_alloc_vports < default_vports) {
+		max_q->max_rxq = min_t(u16, max_rx_q, IDPF_MAX_Q);
+		max_q->max_txq = min_t(u16, max_tx_q, IDPF_MAX_Q);
+	} else {
+		max_q->max_rxq = IDPF_MIN_Q;
+		max_q->max_txq = IDPF_MIN_Q;
+	}
+	max_q->max_bufq = max_q->max_rxq * IDPF_MAX_BUFQS_PER_RXQ_GRP;
+	max_q->max_complq = max_q->max_txq;
+
+	if (avail_queues->avail_rxq < max_q->max_rxq ||
+	    avail_queues->avail_txq < max_q->max_txq ||
+	    avail_queues->avail_bufq < max_q->max_bufq ||
+	    avail_queues->avail_complq < max_q->max_complq) {
+		mutex_unlock(&adapter->queue_lock);
+
+		return -EINVAL;
+	}
+
+	avail_queues->avail_rxq -= max_q->max_rxq;
+	avail_queues->avail_txq -= max_q->max_txq;
+	avail_queues->avail_bufq -= max_q->max_bufq;
+	avail_queues->avail_complq -= max_q->max_complq;
+
+	mutex_unlock(&adapter->queue_lock);
+
+	return 0;
+}
+
+/**
+ * idpf_vport_dealloc_max_qs - Deallocate max queues of a vport
+ * @adapter: Driver specific private structure
+ * @max_q: vport max queue structure
+ */
+void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
+			       struct idpf_vport_max_q *max_q)
+{
+	struct idpf_avail_queue_info *avail_queues;
+
+	mutex_lock(&adapter->queue_lock);
+	avail_queues = &adapter->avail_queues;
+
+	avail_queues->avail_rxq += max_q->max_rxq;
+	avail_queues->avail_txq += max_q->max_txq;
+	avail_queues->avail_bufq += max_q->max_bufq;
+	avail_queues->avail_complq += max_q->max_complq;
+
+	mutex_unlock(&adapter->queue_lock);
+}
+
+/**
+ * idpf_init_avail_queues - Initialize available queues on the device
+ * @adapter: Driver specific private structure
+ */
+static void idpf_init_avail_queues(struct idpf_adapter *adapter)
+{
+	struct idpf_avail_queue_info *avail_queues = &adapter->avail_queues;
+	struct virtchnl2_get_capabilities *caps = &adapter->caps;
+
+	avail_queues->avail_rxq = le16_to_cpu(caps->max_rx_q);
+	avail_queues->avail_txq = le16_to_cpu(caps->max_tx_q);
+	avail_queues->avail_bufq = le16_to_cpu(caps->max_rx_bufq);
+	avail_queues->avail_complq = le16_to_cpu(caps->max_tx_complq);
+}
+
+/**
+ * idpf_send_create_vport_msg - Send virtchnl create vport message
+ * @adapter: Driver specific private structure
+ * @max_q: vport max queue info
+ *
+ * send virtchnl creae vport message
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
+			       struct idpf_vport_max_q *max_q)
+{
+	struct virtchnl2_create_vport *vport_msg;
+	u16 idx = adapter->next_vport;
+	int err, buf_size;
+
+	buf_size = sizeof(struct virtchnl2_create_vport);
+	if (!adapter->vport_params_reqd[idx]) {
+		adapter->vport_params_reqd[idx] = kzalloc(buf_size,
+							  GFP_KERNEL);
+		if (!adapter->vport_params_reqd[idx])
+			return -ENOMEM;
+	}
+
+	vport_msg = adapter->vport_params_reqd[idx];
+	vport_msg->vport_type = cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
+	vport_msg->vport_index = cpu_to_le16(idx);
+
+	if (adapter->req_tx_splitq)
+		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
+	else
+		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
+
+	if (adapter->req_rx_splitq)
+		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
+	else
+		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
+
+	err = idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Enough queues are not available");
+
+		return err;
+	}
+
+	mutex_lock(&adapter->vc_buf_lock);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CREATE_VPORT, buf_size,
+			       (u8 *)vport_msg);
+	if (err)
+		goto rel_lock;
+
+	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_CREATE_VPORT,
+				  IDPF_VC_CREATE_VPORT_ERR);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to receive create vport message");
+
+		goto rel_lock;
+	}
+
+	if (!adapter->vport_params_recvd[idx]) {
+		adapter->vport_params_recvd[idx] = kzalloc(IDPF_CTLQ_MAX_BUF_LEN,
+							   GFP_KERNEL);
+		if (!adapter->vport_params_recvd[idx]) {
+			err = -ENOMEM;
+			goto rel_lock;
+		}
+	}
+
+	vport_msg = adapter->vport_params_recvd[idx];
+	memcpy(vport_msg, adapter->vc_msg, IDPF_CTLQ_MAX_BUF_LEN);
+
+rel_lock:
+	mutex_unlock(&adapter->vc_buf_lock);
+
+	return err;
+}
+
+/**
+ * idpf_send_destroy_vport_msg - Send virtchnl destroy vport message
+ * @vport: virtual port data structure
+ *
+ * Send virtchnl destroy vport message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_destroy_vport_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vport v_id;
+	int err;
+
+	v_id.vport_id = cpu_to_le32(vport->vport_id);
+
+	mutex_lock(&vport->vc_buf_lock);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DESTROY_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		goto rel_lock;
+
+	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DESTROY_VPORT,
+				      IDPF_VC_DESTROY_VPORT_ERR);
+
+rel_lock:
+	mutex_unlock(&vport->vc_buf_lock);
+
+	return err;
+}
+
 /**
  * idpf_send_alloc_vectors_msg - Send virtchnl alloc vectors message
  * @adapter: Driver specific private structure
@@ -569,12 +873,12 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
 			       sizeof(ac), (u8 *)&ac);
 	if (err)
-		goto error;
+		goto rel_lock;
 
 	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_ALLOC_VECTORS,
 				  IDPF_VC_ALLOC_VECTORS_ERR);
 	if (err)
-		goto error;
+		goto rel_lock;
 
 	rcvd_vec = (struct virtchnl2_alloc_vectors *)adapter->vc_msg;
 	num_vchunks = le16_to_cpu(rcvd_vec->vchunks.num_vchunks);
@@ -582,7 +886,7 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 	size = struct_size(rcvd_vec, vchunks.vchunks, num_vchunks);
 	if (size > sizeof(adapter->vc_msg)) {
 		err = -EINVAL;
-		goto error;
+		goto rel_lock;
 	}
 
 	kfree(adapter->req_vec_chunks);
@@ -590,7 +894,7 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 	adapter->req_vec_chunks = kmemdup(adapter->vc_msg, size, GFP_KERNEL);
 	if (!adapter->req_vec_chunks) {
 		err = -ENOMEM;
-		goto error;
+		goto rel_lock;
 	}
 
 	alloc_vec = adapter->req_vec_chunks;
@@ -600,7 +904,7 @@ int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
 		err = -EINVAL;
 	}
 
-error:
+rel_lock:
 	mutex_unlock(&adapter->vc_buf_lock);
 
 	return err;
@@ -625,17 +929,17 @@ int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
 	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEALLOC_VECTORS, buf_size,
 			       (u8 *)vcs);
 	if (err)
-		goto error;
+		goto rel_lock;
 
 	err = idpf_min_wait_for_event(adapter, NULL, IDPF_VC_DEALLOC_VECTORS,
 				      IDPF_VC_DEALLOC_VECTORS_ERR);
 	if (err)
-		goto error;
+		goto rel_lock;
 
 	kfree(adapter->req_vec_chunks);
 	adapter->req_vec_chunks = NULL;
 
-error:
+rel_lock:
 	mutex_unlock(&adapter->vc_buf_lock);
 
 	return err;
@@ -722,6 +1026,65 @@ void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 	adapter->hw.asq = NULL;
 }
 
+/**
+ * idpf_vport_params_buf_rel - Release memory for MailBox resources
+ * @adapter: Driver specific private data structure
+ *
+ * Will release memory to hold the vport parameters received on MailBox
+ */
+static void idpf_vport_params_buf_rel(struct idpf_adapter *adapter)
+{
+	kfree(adapter->vport_params_recvd);
+	adapter->vport_params_recvd = NULL;
+	kfree(adapter->vport_params_reqd);
+	adapter->vport_params_reqd = NULL;
+	kfree(adapter->vport_ids);
+	adapter->vport_ids = NULL;
+}
+
+/**
+ * idpf_vport_params_buf_alloc - Allocate memory for MailBox resources
+ * @adapter: Driver specific private data structure
+ *
+ * Will alloc memory to hold the vport parameters received on MailBox
+ */
+static int idpf_vport_params_buf_alloc(struct idpf_adapter *adapter)
+{
+	u16 num_max_vports = idpf_get_max_vports(adapter);
+
+	adapter->vport_params_reqd = kcalloc(num_max_vports,
+					     sizeof(*adapter->vport_params_reqd),
+					     GFP_KERNEL);
+	if (!adapter->vport_params_reqd)
+		return -ENOMEM;
+
+	adapter->vport_params_recvd = kcalloc(num_max_vports,
+					      sizeof(*adapter->vport_params_recvd),
+					      GFP_KERNEL);
+	if (!adapter->vport_params_recvd)
+		goto err_mem;
+
+	adapter->vport_ids = kcalloc(num_max_vports, sizeof(u32), GFP_KERNEL);
+	if (!adapter->vport_ids)
+		goto err_mem;
+
+	if (adapter->vport_config)
+		return 0;
+
+	adapter->vport_config = kcalloc(num_max_vports,
+					sizeof(*adapter->vport_config),
+					GFP_KERNEL);
+	if (!adapter->vport_config)
+		goto err_mem;
+
+	return 0;
+
+err_mem:
+	idpf_vport_params_buf_rel(adapter);
+
+	return -ENOMEM;
+}
+
 /**
  * idpf_vc_core_init - Initialize state machine and get driver specific
  * resources
@@ -738,6 +1101,7 @@ void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
 int idpf_vc_core_init(struct idpf_adapter *adapter)
 {
 	int task_delay = 30;
+	u16 num_max_vports;
 	int err = 0;
 
 	while (adapter->state != __IDPF_INIT_SW) {
@@ -779,6 +1143,30 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		msleep(task_delay);
 	}
 
+	num_max_vports = idpf_get_max_vports(adapter);
+	adapter->max_vports = num_max_vports;
+	adapter->vports = kcalloc(num_max_vports, sizeof(*adapter->vports),
+				  GFP_KERNEL);
+	if (!adapter->vports)
+		return -ENOMEM;
+
+	if (!adapter->netdevs) {
+		adapter->netdevs = kcalloc(num_max_vports,
+					   sizeof(struct net_device *),
+					   GFP_KERNEL);
+		if (!adapter->netdevs) {
+			err = -ENOMEM;
+			goto err_netdev_alloc;
+		}
+	}
+
+	err = idpf_vport_params_buf_alloc(adapter);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to alloc vport params buffer: %d\n",
+			err);
+		goto err_netdev_alloc;
+	}
+
 	/* Start the mailbox task before requesting vectors. This will ensure
 	 * vector information response from mailbox is handled
 	 */
@@ -794,10 +1182,22 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		goto err_intr_req;
 	}
 
+	idpf_init_avail_queues(adapter);
+
+	/* Skew the delay for init tasks for each function based on fn number
+	 * to prevent every function from making the same call simultaneously.
+	 */
+	queue_delayed_work(adapter->init_wq, &adapter->init_task,
+			   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
+
 	goto no_err;
 
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
+	idpf_vport_params_buf_rel(adapter);
+err_netdev_alloc:
+	kfree(adapter->vports);
+	adapter->vports = NULL;
 no_err:
 	return err;
 
@@ -833,6 +1233,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
 	int i;
 
+	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
 	/* Set all bits as we dont know on which vc_state the vhnl_wq is
 	 * waiting on and wakeup the virtchnl workqueue even if it is waiting
@@ -844,9 +1245,50 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	cancel_delayed_work_sync(&adapter->serv_task);
 	cancel_delayed_work_sync(&adapter->mbx_task);
+
+	idpf_vport_params_buf_rel(adapter);
+
 	/* Clear all the bits */
 	for (i = 0; i < IDPF_VC_NBITS; i++)
 		clear_bit(i, adapter->vc_state);
+
+	kfree(adapter->vports);
+	adapter->vports = NULL;
+}
+
+/**
+ * idpf_vport_init - Initialize virtual port
+ * @vport: virtual port to be initialized
+ * @max_q: vport max queue info
+ *
+ * Will initialize vport with the info received through MB earlier
+ */
+void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_create_vport *vport_msg;
+	struct idpf_vport_config *vport_config;
+	u16 idx = vport->idx;
+
+	vport_config = adapter->vport_config[idx];
+	vport_msg = adapter->vport_params_recvd[idx];
+
+	vport_config->max_q.max_txq = max_q->max_txq;
+	vport_config->max_q.max_rxq = max_q->max_rxq;
+	vport_config->max_q.max_complq = max_q->max_complq;
+	vport_config->max_q.max_bufq = max_q->max_bufq;
+
+	vport->txq_model = le16_to_cpu(vport_msg->txq_model);
+	vport->rxq_model = le16_to_cpu(vport_msg->rxq_model);
+	vport->vport_type = le16_to_cpu(vport_msg->vport_type);
+	vport->vport_id = le32_to_cpu(vport_msg->vport_id);
+
+	ether_addr_copy(vport->default_mac_addr, vport_msg->default_mac_addr);
+	vport->max_mtu = le16_to_cpu(vport_msg->max_mtu) - IDPF_PACKET_HDR_PAD;
+
+	idpf_vport_init_num_qs(vport, vport_msg);
+	idpf_vport_calc_num_q_desc(vport);
+	idpf_vport_calc_num_q_groups(vport);
 }
 
 /**
@@ -893,3 +1335,47 @@ int idpf_get_vec_ids(struct idpf_adapter *adapter,
 
 	return num_vecid_filled;
 }
+
+/**
+ * idpf_is_capability_ena - Default implementation of capability checking
+ * @adapter: Private data struct
+ * @all: all or one flag
+ * @field: caps field to check for flags
+ * @flag: flag to check
+ *
+ * Return true if all capabilities are supported, false otherwise
+ */
+bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
+			    enum idpf_cap_field field, u64 flag)
+{
+	u8 *caps = (u8 *)&adapter->caps;
+	u32 *cap_field;
+
+	if (!caps)
+		return false;
+
+	if (field == IDPF_BASE_CAPS)
+		return false;
+
+	cap_field = (u32 *)(caps + field);
+
+	if (all)
+		return (*cap_field & flag) == flag;
+	else
+		return !!(*cap_field & flag);
+}
+
+/**
+ * idpf_get_vport_id: Get vport id
+ * @vport: virtual port structure
+ *
+ * Return vport id from the adapter persistent data
+ */
+u32 idpf_get_vport_id(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport *vport_msg;
+
+	vport_msg = vport->adapter->vport_params_recvd[vport->idx];
+
+	return le32_to_cpu(vport_msg->vport_id);
+}
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
