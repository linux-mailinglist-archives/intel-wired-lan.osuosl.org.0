Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A53063ADC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F059A60BD6;
	Mon, 28 Nov 2022 16:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F059A60BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653122;
	bh=S2dWEQw0Bgtb15DEtj/3/imqo5U6gXQiFf7A11PBxqs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aW61gFeggasAGrqF9XImf0Ege+TBr/ElOnOH1jmaCBeBEkYIZzHIRN0u/gakutyaF
	 6nPGTiM4l3JVmVXU0B0f3FuRs56lwVwvQt7r5K+DgSZ7C8Ku2RNkdsY4FCmLQmUTgO
	 e0VcBYvZF4el5OdQtbf0shcwAyk1PYsgFpJKQeTIMG/oAv3DILBgPmUSGpoqPIu8xD
	 CewUGy4a4l2ArY5jAFjPLvXZYsVfwz+PvEICA2wsU1Uqfh9XO2Byt/HZVaEPbleREW
	 bXD3UYJAciieLKTMsmonMzclG/FVM5emYQudRUiEZifS9I5kqhezvjUOopp4eU+wgH
	 bV+U1tARPDqzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYpWvdcMrbD2; Mon, 28 Nov 2022 16:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBA7760B69;
	Mon, 28 Nov 2022 16:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBA7760B69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1980B1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 20:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DFA82419AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 20:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFA82419AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BSRwJHwLsNrF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 20:26:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D96EA419A2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D96EA419A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 20:26:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="314188204"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="314188204"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 12:26:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="674846380"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="674846380"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.80.24])
 by orsmga001.jf.intel.com with ESMTP; 23 Nov 2022 12:26:25 -0800
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Nov 2022 15:20:57 -0500
Message-Id: <20221123202057.159444-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669235187; x=1700771187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0rCS/vEc/7eHJLIPiFlTRjn7tEuEx2wlo9I56vLCiE4=;
 b=NHRp507rXsLj+XCC1Q6wDZDpPuX8MWnU66oEPZ14z8cyjfWVHbWjEj1T
 cJwNYVmGgfiLJXeAE3sNkc69Bgn0oYgN4DCZp5cbvBb3q4w+ypX8wevHt
 0Bgc9e6IlpJgouPxyOXA3Shrkn1qyzOhQtoLXyVJxL1P6ilD4THPzqCV/
 RVPAW3sOc7UG+u8yOACepFtG0qX/oCh7Ws5SVjUmHQtht/Vxl1guRoU84
 asQyvX4GqE+7h93d2YsgDW1QInAS0GJygRCu4KOzykz0teS2v4VnGqVik
 inypK/adpRkgM46rxvKQBsapt5as9cpjyQx6TRlr6HG16hNFnS9rDFUk1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NHRp507r
Subject: [Intel-wired-lan] [PATCH RFC net-next 1/1] idpf: introduce IDPF
 driver
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
Cc: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This adds all of the IDPF driver code. To start with, probe gets
called which kicks off the driver initialization by spawning the
'vc_event_task' work queue which inturn calls the 'hard reset'
function. As part of that, mailbox is initialized and it is used
to send/receive the virtchnl messages to/from the Control Plane
(CP). Once that is done, 'core init' kicks in and IDPF gets all
the required global resources from the CP.

Based on the capability information received, driver creates the
said number of vports and each vport is associated to a netdev.
Also each vport has its own resources such as queues, vectors etc.
From there rest of the netdev_ops and data path are added.

IDPF implements both singleq which is traditional queueing model
as well as splitq model. In splitq model, it uses separate queue
for both completion descriptors and buffers which helps to
implement out-of-order completions handling. Using this model,
we can also implement asymmetric queue handling, for example
multiple RX completion queues can be handled by a single RX
buffer queue and multiple TX buffer queues can be handled by
a single TX completion queue. It also supports features such
as rx-hw-gro, generic checksum offload, early departure time
(EDT) etc.

Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
Co-developed-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Phani Burra <phani.r.burra@intel.com>
Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/Makefile           |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   20 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  847 +++
 .../net/ethernet/intel/idpf/idpf_controlq.c   |  646 +++
 .../net/ethernet/intel/idpf/idpf_controlq.h   |  128 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  190 +
 .../ethernet/intel/idpf/idpf_controlq_setup.c |  175 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  212 +
 drivers/net/ethernet/intel/idpf/idpf_devids.h |   10 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 1477 +++++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  136 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  422 ++
 .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  119 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 2663 +++++++++
 drivers/net/ethernet/intel/idpf/idpf_main.c   |  128 +
 drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 +
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 1331 +++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 4937 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  852 +++
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  195 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 3980 +++++++++++++
 include/linux/avf/virtchnl2.h                 | 1490 +++++
 include/linux/avf/virtchnl2_lan_desc.h        |  605 ++
 23 files changed, 20584 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ethtool.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
 create mode 100644 include/linux/avf/virtchnl2.h
 create mode 100644 include/linux/avf/virtchnl2_lan_desc.h

diff --git a/drivers/net/ethernet/intel/Makefile b/drivers/net/ethernet/intel/Makefile
index 3075290063f6..70cc2ae1cb97 100644
--- a/drivers/net/ethernet/intel/Makefile
+++ b/drivers/net/ethernet/intel/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_IXGB) += ixgb/
 obj-$(CONFIG_IAVF) += iavf/
 obj-$(CONFIG_FM10K) += fm10k/
 obj-$(CONFIG_ICE) += ice/
+obj-$(CONFIG_IDPF) += idpf/
diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
new file mode 100644
index 000000000000..53c49752a186
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/Makefile
@@ -0,0 +1,20 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Copyright (C) 2022 Intel Corporation
+
+#
+# Makefile for the Infrastructure Data Path Function Linux Driver
+#
+
+obj-$(CONFIG_IDPF) += idpf.o
+
+idpf-y := \
+	idpf_lib.o \
+	idpf_virtchnl.o \
+	idpf_txrx.o \
+	idpf_singleq_txrx.o \
+	idpf_ethtool.o \
+	idpf_controlq.o \
+	idpf_controlq_setup.o \
+	idpf_main.o \
+	idpf_dev.o \
+	idpf_vf_dev.o
diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
new file mode 100644
index 000000000000..9374e5426839
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -0,0 +1,847 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2022 Intel Corporation */
+
+#ifndef _IDPF_H_
+#define _IDPF_H_
+
+/* Forward declaration */
+struct idpf_adapter;
+struct idpf_vport;
+struct idpf_queue;
+struct idpf_vport_max_q;
+
+#include <net/pkt_sched.h>
+#include <net/pkt_cls.h>
+#include <linux/aer.h>
+#include <linux/bitfield.h>
+#include <linux/pci.h>
+#include <linux/sctp.h>
+#include <linux/etherdevice.h>
+#include <linux/ethtool.h>
+#include <net/gro.h>
+#include <net/tcp.h>
+#include <net/ip6_checksum.h>
+#include <net/ipv6.h>
+#include <net/sch_generic.h>
+#include <linux/version.h>
+#include <linux/dim.h>
+#include <linux/avf/virtchnl2.h>
+
+#include "idpf_lan_txrx.h"
+
+#include "idpf_txrx.h"
+#include "idpf_controlq.h"
+
+#define MAKEMASK(m, s)	((m) << (s))
+#define GETMAXVAL(num_bits)	((1 << (num_bits)) - 1)
+
+#define IDPF_BAR0			0
+#define IDPF_NO_FREE_SLOT		0xffff
+
+/* Default Mailbox settings */
+#define IDPF_DFLT_MBX_BUF_SIZE		(4 * 1024)
+#define IDPF_NUM_QCTX_PER_MSG		3
+#define IDPF_NUM_FILTERS_PER_MSG	20
+#define IDPF_NUM_DFLT_MBX_Q             2       /* includes both TX and RX */
+#define IDPF_DFLT_MBX_Q_LEN		64
+#define IDPF_DFLT_MBX_ID		-1
+/* maximum number of times to try before resetting mailbox */
+#define IDPF_MB_MAX_ERR			20
+#define IDPF_NUM_CHUNKS_PER_MSG(a, b)	((IDPF_DFLT_MBX_BUF_SIZE - (a)) / (b))
+#define IDPF_WAIT_FOR_EVENT_TIMEO_MIN	2000
+#define IDPF_WAIT_FOR_EVENT_TIMEO	60000
+#define IDPF_MAX_CLOUD_ADQ_FILTERS	128
+
+#define IDPF_GTPU_HDR_TEID_OFFS0	4
+#define IDPF_GTPU_HDR_TEID_OFFS1	6
+#define IDPF_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS	10
+#define IDPF_GTPU_HDR_NEXT_EXTHDR_TYPE_MASK		0x00FF /* skip N_PDU */
+/* PDU Session Container Extension Header (PSC) */
+#define IDPF_GTPU_PSC_EXTHDR_TYPE			0x85
+#define IDPF_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS		13
+#define IDPF_GTPU_HDR_PSC_PDU_QFI_MASK			0x3F /* skip Type */
+#define IDPF_GTPU_EH_QFI_IDX				1
+
+#define IDPF_PFCP_HDR_SFIELD_AND_MSG_TYPE_OFFS	0
+
+#define IDPF_NAT_T_ESP_SPI_OFFS0	0
+#define IDPF_NAT_T_ESP_SPI_OFFS1	2
+
+#define IDPF_GTPU_PORT		2152
+#define IDPF_NAT_T_ESP_PORT	4500
+#define IDPF_PFCP_PORT		8805
+
+#define IDPF_USERDEF_FLEX_WORD_M	GENMASK(15, 0)
+#define IDPF_USERDEF_FLEX_OFFS_S	16
+#define IDPF_USERDEF_FLEX_OFFS_M	GENMASK(31, IDPF_USERDEF_FLEX_OFFS_S)
+#define IDPF_USERDEF_FLEX_FLTR_M	GENMASK(31, 0)
+
+#define IDPF_USERDEF_FLEX_MAX_OFFS_VAL 504
+
+/* available message levels */
+#define IDPF_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
+
+#define IDPF_MBPS_DIVISOR		125000 /* divisor to convert to Mbps */
+
+#define IDPF_VIRTCHNL_VERSION_MAJOR VIRTCHNL2_VERSION_MAJOR_2
+#define IDPF_VIRTCHNL_VERSION_MINOR VIRTCHNL2_VERSION_MINOR_0
+
+struct idpf_mac_filter {
+	struct list_head list;
+	u8 macaddr[ETH_ALEN];
+	bool remove;		/* filter needs to be removed */
+	bool add;		/* filter needs to be added */
+};
+
+enum idpf_state {
+	__IDPF_STARTUP,
+	__IDPF_VER_CHECK,
+	__IDPF_GET_CAPS,
+	__IDPF_INIT_SW,
+	__IDPF_STATE_LAST /* this member MUST be last */
+};
+
+enum idpf_flags {
+	/* Hard reset causes */
+	__IDPF_HR_FUNC_RESET, /* Hard reset when txrx timeout */
+	__IDPF_HR_CORE_RESET, /* when reset event is received on virtchannel */
+	__IDPF_HR_DRV_LOAD, /* Set on driver load for a clean HW */
+	/* Reset in progress */
+	__IDPF_HR_RESET_IN_PROG,
+	/* Resources release in progress*/
+	__IDPF_REL_RES_IN_PROG,
+	/* Generic bits to share a message */
+	__IDPF_UP_REQUESTED, /* Set if open to be called explicitly by driver */
+	/* Mailbox interrupt event */
+	__IDPF_MB_INTR_MODE,
+	__IDPF_MB_INTR_TRIGGER,
+	/* Device specific bits */
+	/* Request split queue model when creating vport */
+	__IDPF_REQ_TX_SPLITQ,
+	__IDPF_REQ_RX_SPLITQ,
+	/* Asynchronous add/del ether address in flight */
+	__IDPF_ADD_MAC_REQ,
+	__IDPF_DEL_MAC_REQ,
+	/* Virtchnl message buffer received needs to be processed */
+	__IDPF_VC_MSG_PENDING,
+	/* Do not schedule service task if bit is set */
+	__IDPF_CANCEL_SERVICE_TASK,
+	/* Do not schedule stats task if bit is set */
+	__IDPF_CANCEL_STATS_TASK,
+	/* Driver remove in progress */
+	__IDPF_REMOVE_IN_PROG,
+	/* Add queues is initiated */
+	__IDPF_ADD_QUEUES,
+	/* must be last */
+	__IDPF_FLAGS_NBITS,
+};
+
+/* enum used to distinquish which capability field to check */
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
+	IDPF_CAP_FIELD_LAST,
+};
+
+struct idpf_netdev_priv {
+	struct idpf_vport *vport;
+};
+
+struct idpf_reset_reg {
+	u8 __iomem *rstat;
+	u32 rstat_m;
+};
+
+/* Max queues on a vport */
+struct idpf_vport_max_q {
+	u16 max_rxq;
+	u16 max_txq;
+	u16 max_bufq;
+	u16 max_complq;
+};
+
+/* product specific register API */
+struct idpf_reg_ops {
+	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
+	int (*intr_reg_init)(struct idpf_vport *vport);
+	void (*mb_intr_reg_init)(struct idpf_adapter *adapter);
+	void (*reset_reg_init)(struct idpf_adapter *adapter);
+	void (*trigger_reset)(struct idpf_adapter *adapter,
+			      enum idpf_flags trig_cause);
+	u64 (*read_master_time)(struct idpf_hw *hw);
+};
+
+struct idpf_dev_ops {
+	void (*crc_enable)(u64 *td_cmd);
+	struct idpf_reg_ops reg_ops;
+
+	u64 bar0_region1_size;	/* non-cached BAR0 region 1 size */
+	u64 bar0_region2_start;	/* non-cached BAR0 region 2 start address */
+};
+
+/* These macros allow us to generate an enum and a matching char * array of
+ * stringified enums that are always in sync. Checkpatch issues a bogus warning
+ * about this being a complex macro; but it's wrong, these are never used as a
+ * statement and instead only used to define the enum and array.
+ */
+#define IDPF_FOREACH_VPORT_VC_STATE(STATE)	\
+	STATE(IDPF_VC_CREATE_VPORT)		\
+	STATE(IDPF_VC_CREATE_VPORT_ERR)		\
+	STATE(IDPF_VC_ENA_VPORT)		\
+	STATE(IDPF_VC_ENA_VPORT_ERR)		\
+	STATE(IDPF_VC_DIS_VPORT)		\
+	STATE(IDPF_VC_DIS_VPORT_ERR)		\
+	STATE(IDPF_VC_DESTROY_VPORT)		\
+	STATE(IDPF_VC_DESTROY_VPORT_ERR)	\
+	STATE(IDPF_VC_CONFIG_TXQ)		\
+	STATE(IDPF_VC_CONFIG_TXQ_ERR)		\
+	STATE(IDPF_VC_CONFIG_RXQ)		\
+	STATE(IDPF_VC_CONFIG_RXQ_ERR)		\
+	STATE(IDPF_VC_ENA_QUEUES)		\
+	STATE(IDPF_VC_ENA_QUEUES_ERR)		\
+	STATE(IDPF_VC_DIS_QUEUES)		\
+	STATE(IDPF_VC_DIS_QUEUES_ERR)		\
+	STATE(IDPF_VC_ENA_CHANNELS)		\
+	STATE(IDPF_VC_ENA_CHANNELS_ERR)		\
+	STATE(IDPF_VC_DIS_CHANNELS)		\
+	STATE(IDPF_VC_DIS_CHANNELS_ERR)		\
+	STATE(IDPF_VC_MAP_IRQ)			\
+	STATE(IDPF_VC_MAP_IRQ_ERR)		\
+	STATE(IDPF_VC_UNMAP_IRQ)		\
+	STATE(IDPF_VC_UNMAP_IRQ_ERR)		\
+	STATE(IDPF_VC_ADD_QUEUES)		\
+	STATE(IDPF_VC_ADD_QUEUES_ERR)		\
+	STATE(IDPF_VC_DEL_QUEUES)		\
+	STATE(IDPF_VC_REQUEST_QUEUES)		\
+	STATE(IDPF_VC_REQUEST_QUEUES_ERR)	\
+	STATE(IDPF_VC_DEL_QUEUES_ERR)		\
+	STATE(IDPF_VC_ALLOC_VECTORS)		\
+	STATE(IDPF_VC_ALLOC_VECTORS_ERR)	\
+	STATE(IDPF_VC_DEALLOC_VECTORS)		\
+	STATE(IDPF_VC_DEALLOC_VECTORS_ERR)	\
+	STATE(IDPF_VC_SET_SRIOV_VFS)		\
+	STATE(IDPF_VC_SET_SRIOV_VFS_ERR)	\
+	STATE(IDPF_VC_GET_RSS_HASH)		\
+	STATE(IDPF_VC_GET_RSS_HASH_ERR)		\
+	STATE(IDPF_VC_SET_RSS_HASH)		\
+	STATE(IDPF_VC_SET_RSS_HASH_ERR)		\
+	STATE(IDPF_VC_GET_RSS_LUT)		\
+	STATE(IDPF_VC_GET_RSS_LUT_ERR)		\
+	STATE(IDPF_VC_SET_RSS_LUT)		\
+	STATE(IDPF_VC_SET_RSS_LUT_ERR)		\
+	STATE(IDPF_VC_GET_RSS_KEY)		\
+	STATE(IDPF_VC_GET_RSS_KEY_ERR)		\
+	STATE(IDPF_VC_SET_RSS_KEY)		\
+	STATE(IDPF_VC_SET_RSS_KEY_ERR)		\
+	STATE(IDPF_VC_GET_STATS)		\
+	STATE(IDPF_VC_GET_STATS_ERR)		\
+	STATE(IDPF_VC_ENA_STRIP_VLAN_TAG)	\
+	STATE(IDPF_VC_ENA_STRIP_VLAN_TAG_ERR)	\
+	STATE(IDPF_VC_DIS_STRIP_VLAN_TAG)	\
+	STATE(IDPF_VC_DIS_STRIP_VLAN_TAG_ERR)	\
+	STATE(IDPF_VC_IWARP_IRQ_MAP_UNMAP)	\
+	STATE(IDPF_VC_IWARP_IRQ_MAP_UNMAP_ERR)	\
+	STATE(IDPF_VC_IWARP_SEND_SYNC)		\
+	STATE(IDPF_VC_IWARP_SEND_SYNC_ERR)	\
+	STATE(IDPF_VC_ADD_MAC_ADDR)		\
+	STATE(IDPF_VC_ADD_MAC_ADDR_ERR)		\
+	STATE(IDPF_VC_DEL_MAC_ADDR)		\
+	STATE(IDPF_VC_DEL_MAC_ADDR_ERR)		\
+	STATE(IDPF_VC_PROMISC)			\
+	STATE(IDPF_VC_ADD_CLOUD_FILTER)		\
+	STATE(IDPF_VC_ADD_CLOUD_FILTER_ERR)	\
+	STATE(IDPF_VC_DEL_CLOUD_FILTER)		\
+	STATE(IDPF_VC_DEL_CLOUD_FILTER_ERR)	\
+	STATE(IDPF_VC_OFFLOAD_VLAN_V2_CAPS)	\
+	STATE(IDPF_VC_OFFLOAD_VLAN_V2_CAPS_ERR)	\
+	STATE(IDPF_VC_INSERTION_ENA_VLAN_V2)	\
+	STATE(IDPF_VC_INSERTION_ENA_VLAN_V2_ERR)\
+	STATE(IDPF_VC_INSERTION_DIS_VLAN_V2)	\
+	STATE(IDPF_VC_INSERTION_DIS_VLAN_V2_ERR)\
+	STATE(IDPF_VC_STRIPPING_ENA_VLAN_V2)	\
+	STATE(IDPF_VC_STRIPPING_ENA_VLAN_V2_ERR)\
+	STATE(IDPF_VC_STRIPPING_DIS_VLAN_V2)	\
+	STATE(IDPF_VC_STRIPPING_DIS_VLAN_V2_ERR)\
+	STATE(IDPF_VC_GET_SUPPORTED_RXDIDS)	\
+	STATE(IDPF_VC_GET_SUPPORTED_RXDIDS_ERR)	\
+	STATE(IDPF_VC_GET_PTYPE_INFO)		\
+	STATE(IDPF_VC_GET_PTYPE_INFO_ERR)	\
+	STATE(IDPF_VC_LOOPBACK_STATE)		\
+	STATE(IDPF_VC_LOOPBACK_STATE_ERR)	\
+	STATE(IDPF_VC_CREATE_ADI)		\
+	STATE(IDPF_VC_CREATE_ADI_ERR)		\
+	STATE(IDPF_VC_DESTROY_ADI)		\
+	STATE(IDPF_VC_DESTROY_ADI_ERR)		\
+	STATE(IDPF_VC_NBITS)
+
+#define IDPF_GEN_ENUM(ENUM) ENUM,
+#define IDPF_GEN_STRING(STRING) #STRING,
+
+enum idpf_vport_vc_state {
+	IDPF_FOREACH_VPORT_VC_STATE(IDPF_GEN_ENUM)
+};
+
+extern const char * const idpf_vport_vc_state_str[];
+
+enum idpf_vport_flags {
+	/* Soft reset causes */
+	__IDPF_SR_Q_CHANGE, /* Soft reset to do queue change */
+	__IDPF_SR_Q_DESC_CHANGE,
+	__IDPF_SR_Q_SCH_CHANGE, /* Scheduling mode change in queue context */
+	__IDPF_SR_MTU_CHANGE,
+	__IDPF_SR_TC_CHANGE,
+	__IDPF_SR_RSC_CHANGE,
+	__IDPF_SR_HSPLIT_CHANGE,
+	/* To send delete queues message */
+	__IDPF_VPORT_DEL_QUEUES,
+	/* Virtchnl message buffer received needs to be processed */
+	__IDPF_VPORT_VC_MSG_PENDING,
+	/* To process software marker packets */
+	__IDPF_VPORT_SW_MARKER,
+	__IDPF_VPORT_FLAGS_NBITS,
+};
+
+enum idpf_tw_tstamp_granularity {
+	IDPF_TW_TIME_STAMP_GRAN_512_DIV_S = 9,
+	IDPF_TW_TIME_STAMP_GRAN_1024_DIV_S = 10,
+	IDPF_TW_TIME_STAMP_GRAN_2048_DIV_S = 11,
+	IDPF_TW_TIME_STAMP_GRAN_4096_DIV_S = 12,
+};
+
+/* Horizon value in nanoseconds (MS * 1024 * 1024)*/
+enum idpf_tw_horizon {
+	IDPF_TW_HORIZON_32MS = 32 << 20,
+	IDPF_TW_HORIZON_128MS = 128 << 20,
+	IDPF_TW_HORIZON_512MS = 512 << 20,
+};
+
+struct idpf_port_stats {
+	struct u64_stats_sync stats_sync;
+	u64 rx_hw_csum_err;
+	u64 rx_hsplit;
+	u64 rx_hsplit_hbo;
+	u64 rx_bad_descs;
+	u64 tx_linearize;
+	u64 tx_busy;
+	u64 tx_drops;
+	u64 tx_dma_errs;
+	struct virtchnl2_vport_stats vport_stats;
+};
+
+enum idpf_vport_state {
+	__IDPF_VPORT_DOWN,
+	__IDPF_VPORT_UP,
+	__IDPF_VPORT_STATE_LAST, /* this member MUST be last */
+};
+
+struct idpf_vport {
+	/* TX */
+	int num_txq;
+	int num_complq;
+	/* It makes more sense for descriptor count to be part of only idpf
+	 * queue structure. But when user changes the count via ethtool, driver
+	 * has to store that value somewhere other than queue structure as the
+	 * queues will be freed and allocated again.
+	 */
+	int txq_desc_count;
+	int complq_desc_count;
+	int compln_clean_budget;
+	int num_txq_grp;
+	struct idpf_txq_group *txq_grps;
+	u32 txq_model;
+	/* Used only in hotpath to get to the right queue very fast */
+	struct idpf_queue **txqs;
+	/* TX Timing Wheel parameters */
+	enum idpf_tw_tstamp_granularity ts_gran;
+	enum idpf_tw_horizon tw_horizon;
+
+	/* RX */
+	int num_rxq;
+	int num_bufq;
+	int rxq_desc_count;
+	u8 num_bufqs_per_qgrp;
+	int bufq_desc_count[IDPF_MAX_BUFQS_PER_RXQ_GRP];
+	u32 bufq_size[IDPF_MAX_BUFQS_PER_RXQ_GRP];
+	int num_rxq_grp;
+	struct idpf_rxq_group *rxq_grps;
+	u32 rxq_model;
+	struct idpf_rx_ptype_decoded rx_ptype_lkup[IDPF_RX_MAX_PTYPE];
+
+	struct idpf_adapter *adapter;
+	struct net_device *netdev;
+	DECLARE_BITMAP(flags, __IDPF_VPORT_FLAGS_NBITS);
+	u16 vport_type;
+	u32 vport_id;
+	u16 idx;		 /* software index in adapter vports struct */
+	bool default_vport;
+	bool base_rxd;
+
+	u16 num_q_vectors;
+	struct idpf_q_vector *q_vectors;	/* q vector array */
+	u16 *q_vector_idxs;			/* q vector index array */
+	u16 max_mtu;
+	u8 default_mac_addr[ETH_ALEN];
+	u16 qset_handle;
+	/* ITR profiles for the DIM algorithm */
+#define IDPF_DIM_PROFILE_SLOTS	5
+	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
+	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
+	struct rtnl_link_stats64 netstats;
+	struct idpf_port_stats port_stats;
+
+	bool link_up;
+	s32 link_speed;
+	/* This is only populated if the advance link speed is set in the
+	 * capabilities. This field should be used going forward and
+	 * the enum virtchnl_link_speed above should be considered the legacy
+	 * way of storing/communicating link speeds.
+	 */
+	u32 link_speed_mbps;
+
+	char vc_msg[IDPF_DFLT_MBX_BUF_SIZE];
+
+	/* Everything below this will NOT be copied during soft reset */
+	enum idpf_vport_state state;
+	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
+	wait_queue_head_t vchnl_wq;
+	wait_queue_head_t sw_marker_wq;
+	/* lock to protect against multiple stop threads, which can happen when
+	 * the driver is in a namespace in a system that is being shutdown
+	 */
+	struct mutex stop_mutex;
+	/* lock to protect soft reset flow */
+	struct mutex soft_reset_lock;
+
+	/* lock to protect mac filters */
+	spinlock_t mac_filter_list_lock;
+};
+
+enum idpf_user_flags {
+	__IDPF_PRIV_FLAGS_HDR_SPLIT = 0,
+	__IDPF_PROMISC_UC = 32,
+	__IDPF_PROMISC_MC,
+	__IDPF_USER_FLAGS_NBITS,
+};
+
+struct idpf_rss_data {
+	u64 rss_hash;
+	u16 rss_key_size;
+	u8 *rss_key;
+	u16 rss_lut_size;
+	u32 *rss_lut;
+	u32 *cached_lut;
+};
+
+/* User defined configuration values for each vport */
+struct idpf_vport_user_config_data {
+	struct idpf_rss_data rss_data;
+	u32 num_req_tx_qs; /* user requested TX queues through ethtool */
+	u32 num_req_rx_qs; /* user requested RX queues through ethtool */
+	u32 num_req_txq_desc; /* user requested TX queue descriptors through ethtool */
+	u32 num_req_rxq_desc; /* user requested RX queue descriptors through ethtool */
+	DECLARE_BITMAP(user_flags, __IDPF_USER_FLAGS_NBITS);
+	DECLARE_BITMAP(etf_qenable, IDPF_LARGE_MAX_Q);
+	struct list_head mac_filter_list;
+};
+
+enum idpf_vport_config_flags {
+	/* Register netdev */
+	__IDPF_VPORT_REG_NETDEV,
+	/* set if interface up is requested on core reset */
+	__IDPF_VPORT_UP_REQUESTED,
+	__IDPF_VPORT_CONFIG_FLAGS_NBITS
+};
+
+/* Maintain total queues available after allocating max queues to each vport.
+ * To start with, initialize the max queue limits from the
+ * virtchnl2_get_capabilities.
+ */
+struct idpf_avail_queue_info {
+	u16 avail_rxq;
+	u16 avail_txq;
+	u16 avail_bufq;
+	u16 avail_complq;
+};
+
+/* Utility structure to pass function arguments as a structure */
+struct idpf_vector_info {
+	/* Vectors required based on the number of queues updated by the user
+	 * via ethtool
+	 */
+	u16 num_req_vecs;
+	u16 num_curr_vecs;	/* Vectors previously allocated */
+	u16 index;		/* Vport relative index */
+	bool default_vport;
+};
+
+/* Stack to maintain vector indexes used for 'vector distribution' algorithm */
+struct idpf_vector_lifo {
+	/* Vector stack maintains all the relative vector indexes at the
+	 * *adapter* level. This stack is divided into 2 parts, first one is
+	 * called as 'default pool' and other one is called 'free pool'.
+	 * Vector distribution algorithm gives priority to default vports in
+	 * a way that at least IDPF_MIN_Q_VEC vectors are allocated per
+	 * default vport and the relative vector indexes for those are
+	 * maintained in default pool. Free pool contains all the unallocated
+	 * vector indexes which can be allocated on-demand basis.
+	 * Mailbox vector index is maitained in the default pool of the stack
+	 */
+	u16 top;	/* Points to stack top i.e. next available vector index */
+	u16 base;	/* Always points to start of the 'free pool' */
+	u16 size;	/* Total size of the vector stack */
+	u16 *vec_idx;	/* Array to store all the vector indexes */
+};
+
+/* vport configuration data */
+struct idpf_vport_config {
+	struct idpf_vport_user_config_data user_config;
+	struct idpf_vport_max_q max_q;
+	void *req_qs_chunks;
+	DECLARE_BITMAP(flags, __IDPF_VPORT_CONFIG_FLAGS_NBITS);
+};
+
+struct idpf_adapter {
+	struct pci_dev *pdev;
+	u32 virt_ver_maj;
+	u32 virt_ver_min;
+
+	u32 msg_enable;
+	u32 mb_wait_count;
+	enum idpf_state state;
+	DECLARE_BITMAP(flags, __IDPF_FLAGS_NBITS);
+	struct idpf_reset_reg reset_reg;
+	struct idpf_hw hw;
+	u16 num_req_msix;
+	u16 num_avail_msix;
+	u16 num_msix_entries;
+	struct msix_entry *msix_entries;
+	struct virtchnl2_alloc_vectors *req_vec_chunks;
+	struct idpf_q_vector mb_vector;
+	/* Stack to store the msix vector indexes */
+	struct idpf_vector_lifo vector_stack;
+	/* handler for hard interrupt for mailbox*/
+	irqreturn_t (*irq_mb_handler)(int irq, void *data);
+
+	/* vport structs */
+	u32 tx_timeout_count;
+	u16 vectors_per_vport;
+	struct idpf_avail_queue_info avail_queues;
+	/* array to store vports created by the driver */
+	struct idpf_vport **vports;
+	struct net_device **netdevs;	/* associated vport netdevs */
+	/* Store the resources data received from control plane */
+	void **vport_params_reqd;
+	void **vport_params_recvd;
+	u32 *vport_ids;
+
+	/* vport parameters */
+	struct idpf_vport_config **vport_config;
+	/* maximum number of vports that can be created by the driver */
+	u16 max_vports;
+	/* current number of vports created by the driver */
+	u16 num_alloc_vports;
+	u16 next_vport;		/* Next free slot in pf->vport[] - 0-based! */
+
+	struct delayed_work init_task; /* delayed init task */
+	struct workqueue_struct *init_wq;
+	struct delayed_work serv_task; /* delayed service task */
+	struct workqueue_struct *serv_wq;
+	struct delayed_work vc_event_task; /* delayed virtchannel event task */
+	struct workqueue_struct *vc_event_wq;
+	struct delayed_work stats_task; /* delayed statistics task */
+	struct workqueue_struct *stats_wq;
+	struct virtchnl2_get_capabilities caps;
+
+	wait_queue_head_t vchnl_wq;
+	DECLARE_BITMAP(vc_state, IDPF_VC_NBITS);
+	char vc_msg[IDPF_DFLT_MBX_BUF_SIZE];
+	struct idpf_dev_ops dev_ops;
+	int num_vfs;
+
+	struct mutex reset_lock;	/* lock to protect reset flows */
+	struct mutex sw_mutex;		/* lock to protect vport alloc flow */
+	struct mutex vector_lock;	/* lock to protect vector distribution */
+	struct mutex queue_lock;	/* lock to protect queue distribution */
+};
+
+#define idpf_adapter_to_dev(pf) (&((pf)->pdev->dev))
+
+/**
+ * idpf_is_queue_model_split - check if queue model is split
+ * @q_model: queue model single or split
+ *
+ * Returns true if queue model is split else false
+ */
+static inline int idpf_is_queue_model_split(u16 q_model)
+{
+	return (q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT);
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
+	VIRTCHNL2_CAP_RSS_IPV4_AH	|\
+	VIRTCHNL2_CAP_RSS_IPV4_ESP	|\
+	VIRTCHNL2_CAP_RSS_IPV4_AH_ESP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_UDP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_SCTP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_OTHER	|\
+	VIRTCHNL2_CAP_RSS_IPV6_AH	|\
+	VIRTCHNL2_CAP_RSS_IPV6_ESP	|\
+	VIRTCHNL2_CAP_RSS_IPV6_AH_ESP)
+
+#define IDPF_CAP_RSC (\
+	VIRTCHNL2_CAP_RSC_IPV4_TCP	|\
+	VIRTCHNL2_CAP_RSC_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_RSC_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RSC_IPV6_SCTP)
+
+#define IDPF_CAP_HSPLIT	(\
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L2	|\
+	VIRTCHNL2_CAP_RX_HSPLIT_AT_L3	|\
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
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP)
+
+#define IDPF_CAP_SCTP_CSUM (\
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP)
+
+#define IDPF_CAP_TUNNEL_TX_CSUM (\
+	VIRTCHNL2_CAP_TX_CSUM_L3_SINGLE_TUNNEL	|\
+	VIRTCHNL2_CAP_TX_CSUM_L3_DOUBLE_TUNNEL	|\
+	VIRTCHNL2_CAP_TX_CSUM_L4_SINGLE_TUNNEL	|\
+	VIRTCHNL2_CAP_TX_CSUM_L4_DOUBLE_TUNNEL)
+
+#define IDPF_CAP_TUNNEL_RX_CSUM (\
+	VIRTCHNL2_CAP_RX_CSUM_L3_SINGLE_TUNNEL	|\
+	VIRTCHNL2_CAP_RX_CSUM_L3_DOUBLE_TUNNEL	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_SINGLE_TUNNEL	|\
+	VIRTCHNL2_CAP_RX_CSUM_L4_DOUBLE_TUNNEL)
+
+#define IDPF_CAP_TUNNEL (\
+	VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL |\
+	VIRTCHNL2_CAP_SEG_TX_DOUBLE_TUNNEL)
+
+/**
+ * idpf_get_reserved_vecs - Get reserved vectors
+ * @adapter: private data struct
+ */
+static inline u16 idpf_get_reserved_vecs(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.num_allocated_vectors);
+}
+
+/**
+ * idpf_get_default_vports - Get default number of vports
+ * @adapter: private data struct
+ */
+static inline u16 idpf_get_default_vports(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.default_num_vports);
+}
+
+/**
+ * idpf_get_max_vports - Get max number of vports
+ * @adapter: private data struct
+ */
+static inline u16 idpf_get_max_vports(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.max_vports);
+}
+
+/**
+ * idpf_get_max_tx_bufs - Get max scatter-gather buffers supported by the device
+ * @adapter: private data struct
+ */
+static inline unsigned int idpf_get_max_tx_bufs(struct idpf_adapter *adapter)
+{
+	return adapter->caps.max_sg_bufs_per_tx_pkt;
+}
+
+/**
+ * idpf_get_min_tx_pkt_len - Get min packet length supported by the device
+ * @adapter: private data struct
+ */
+static inline u8 idpf_get_min_tx_pkt_len(struct idpf_adapter *adapter)
+{
+	u8 pkt_len = adapter->caps.min_sso_packet_len;
+
+	return pkt_len ? pkt_len : IDPF_TX_MIN_LEN;
+}
+
+/**
+ * idpf_get_reg_addr - Get BAR0 register address
+ * @adapter: private data struct
+ * @reg_offset: register offset value
+ *
+ * Based on the register offset, return the actual BAR0 register address
+ */
+static inline u8 __iomem *idpf_get_reg_addr(struct idpf_adapter *adapter, u32 reg_offset)
+{
+	struct idpf_hw *hw = &adapter->hw;
+
+	if (reg_offset < adapter->dev_ops.bar0_region1_size)
+		return (u8 __iomem *)(hw->hw_addr + reg_offset);
+	else
+		return (u8 __iomem *)(hw->hw_addr_region2 + reg_offset -
+				      adapter->dev_ops.bar0_region2_start);
+}
+
+/**
+ * idpf_is_reset_detected - check if we were reset at some point
+ * @adapter: driver specific private structure
+ *
+ * Returns true if we are either in reset currently or were previously reset.
+ */
+static inline bool idpf_is_reset_detected(struct idpf_adapter *adapter)
+{
+	if (!adapter->hw.arq)
+		return true;
+
+	/* Simics/CP isn't clearing the enable bit, just the length which isn't
+	 * how it works in legacy iavf.
+	 */
+	return !(readl(idpf_get_reg_addr(adapter, adapter->hw.arq->reg.len)) &
+			adapter->hw.arq->reg.len_mask);
+}
+
+/**
+ * idpf_is_reset_in_prog - check if reset is in progress
+ * @adapter: driver specific private structure
+ *
+ * Returns true if hard reset is in progress, false otherwise
+ */
+static inline bool idpf_is_reset_in_prog(struct idpf_adapter *adapter)
+{
+	return (test_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags) ||
+		test_bit(__IDPF_HR_FUNC_RESET, adapter->flags) ||
+		test_bit(__IDPF_HR_CORE_RESET, adapter->flags) ||
+		test_bit(__IDPF_HR_DRV_LOAD, adapter->flags));
+}
+
+int idpf_vport_adjust_qs(struct idpf_vport *vport);
+int idpf_pf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter);
+int idpf_vf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter);
+int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter);
+void idpf_remove_common(struct pci_dev *pdev);
+int idpf_init_dflt_mbx(struct idpf_adapter *adapter);
+void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter);
+int idpf_vc_core_init(struct idpf_adapter *adapter);
+int idpf_intr_req(struct idpf_adapter *adapter);
+void idpf_intr_rel(struct idpf_adapter *adapter);
+int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+			   struct idpf_vec_regs *reg_vals);
+int idpf_wait_for_event(struct idpf_adapter *adapter,
+			struct idpf_vport *vport,
+			enum idpf_vport_vc_state state,
+			enum idpf_vport_vc_state err_check);
+int idpf_msec_wait_for_event(struct idpf_adapter *adapter,
+			     struct idpf_vport *vport,
+			     enum idpf_vport_vc_state state,
+			     enum idpf_vport_vc_state err_check,
+			     int timeout);
+u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
+int idpf_send_delete_queues_msg(struct idpf_vport *vport);
+int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
+			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
+int idpf_initiate_soft_reset(struct idpf_vport *vport,
+			     enum idpf_vport_flags reset_cause);
+int idpf_send_config_tx_queues_msg(struct idpf_vport *vport);
+int idpf_send_config_rx_queues_msg(struct idpf_vport *vport);
+int idpf_send_enable_vport_msg(struct idpf_vport *vport);
+int idpf_send_disable_vport_msg(struct idpf_vport *vport);
+int idpf_send_destroy_vport_msg(struct idpf_vport *vport);
+int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport);
+int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport);
+int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
+int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
+int idpf_send_get_set_rss_hash_msg(struct idpf_vport *vport, bool get);
+int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter);
+int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors);
+void idpf_init_task(struct work_struct *work);
+void idpf_deinit_task(struct idpf_adapter *adapter);
+int idpf_init_vector_stack(struct idpf_adapter *adapter);
+void idpf_deinit_vector_stack(struct idpf_adapter *adapter);
+int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter,
+				u16 *q_vector_idxs,
+				struct idpf_vector_info *vec_info);
+int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport);
+void idpf_vc_core_deinit(struct idpf_adapter *adapter);
+struct idpf_vport *idpf_netdev_to_vport(struct net_device *netdev);
+int idpf_send_get_stats_msg(struct idpf_vport *vport);
+int idpf_get_vec_ids(struct idpf_adapter *adapter,
+		     u16 *vecids, int num_vecids,
+		     struct virtchnl2_vector_chunks *chunks);
+int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
+		     void *msg, int msg_size);
+int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
+		     u16 msg_size, u8 *msg);
+void idpf_set_ethtool_ops(struct net_device *netdev);
+void idpf_vport_set_hsplit(struct idpf_vport *vport, bool ena);
+int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
+			    struct idpf_vport_max_q *max_q);
+void idpf_vport_dealloc_max_qs(struct idpf_adapter *adapter,
+			       struct idpf_vport_max_q *max_q);
+int idpf_add_del_mac_filters(struct idpf_vport *vport, bool add, bool async);
+int idpf_set_promiscuous(struct idpf_vport *vport);
+int idpf_send_disable_queues_msg(struct idpf_vport *vport);
+void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q);
+u32 idpf_get_vport_id(struct idpf_vport *vport);
+int idpf_vport_queue_ids_init(struct idpf_vport *vport);
+int idpf_queue_reg_init(struct idpf_vport *vport);
+int idpf_send_config_queues_msg(struct idpf_vport *vport);
+int idpf_send_enable_queues_msg(struct idpf_vport *vport);
+int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
+			       struct idpf_vport_max_q *max_q);
+int idpf_check_supported_desc_ids(struct idpf_vport *vport);
+bool idpf_is_feature_ena(struct idpf_vport *vport, netdev_features_t feature);
+void idpf_vport_intr_write_itr(struct idpf_q_vector *q_vector,
+			       u16 itr, bool tx);
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map);
+int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
+int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
+
+#endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
new file mode 100644
index 000000000000..51bb761941b6
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -0,0 +1,646 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include "idpf_controlq.h"
+
+/**
+ * idpf_ctlq_setup_regs - initialize control queue registers
+ * @cq: pointer to the specific control queue
+ * @q_create_info: structs containing info for each queue to be initialized
+ */
+static void
+idpf_ctlq_setup_regs(struct idpf_ctlq_info *cq,
+		     struct idpf_ctlq_create_info *q_create_info)
+{
+	/* set head and tail registers in our local struct */
+	cq->reg.head = q_create_info->reg.head;
+	cq->reg.tail = q_create_info->reg.tail;
+	cq->reg.len = q_create_info->reg.len;
+	cq->reg.bah = q_create_info->reg.bah;
+	cq->reg.bal = q_create_info->reg.bal;
+	cq->reg.len_mask = q_create_info->reg.len_mask;
+	cq->reg.len_ena_mask = q_create_info->reg.len_ena_mask;
+	cq->reg.head_mask = q_create_info->reg.head_mask;
+}
+
+/**
+ * idpf_ctlq_init_regs - Initialize control queue registers
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ * @is_rxq: true if receive control queue, false otherwise
+ *
+ * Initialize registers. The caller is expected to have already initialized the
+ * descriptor ring memory and buffer memory
+ */
+static void idpf_ctlq_init_regs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
+				bool is_rxq)
+{
+	/* Update tail to post pre-allocated buffers for rx queues */
+	if (is_rxq)
+		wr32(hw, cq->reg.tail, (u32)(cq->ring_size - 1));
+
+	/* For non-Mailbox control queues only TAIL need to be set */
+	if (cq->q_id != -1)
+		return;
+
+	/* Clear Head for both send or receive */
+	wr32(hw, cq->reg.head, 0);
+
+	/* set starting point */
+	wr32(hw, cq->reg.bal, lower_32_bits(cq->desc_ring.pa));
+	wr32(hw, cq->reg.bah, upper_32_bits(cq->desc_ring.pa));
+	wr32(hw, cq->reg.len, (cq->ring_size | cq->reg.len_ena_mask));
+}
+
+/**
+ * idpf_ctlq_init_rxq_bufs - populate receive queue descriptors with buf
+ * @cq: pointer to the specific Control queue
+ *
+ * Record the address of the receive queue DMA buffers in the descriptors.
+ * The buffers must have been previously allocated.
+ */
+static void idpf_ctlq_init_rxq_bufs(struct idpf_ctlq_info *cq)
+{
+	int i = 0;
+
+	for (i = 0; i < cq->ring_size; i++) {
+		struct idpf_ctlq_desc *desc = IDPF_CTLQ_DESC(cq, i);
+		struct idpf_dma_mem *bi = cq->bi.rx_buff[i];
+
+		/* No buffer to post to descriptor, continue */
+		if (!bi)
+			continue;
+
+		desc->flags =
+			cpu_to_le16(IDPF_CTLQ_FLAG_BUF | IDPF_CTLQ_FLAG_RD);
+		desc->opcode = 0;
+		desc->datalen = (__le16)cpu_to_le16(bi->size);
+		desc->ret_val = 0;
+		desc->cookie_high = 0;
+		desc->cookie_low = 0;
+		desc->params.indirect.addr_high =
+			cpu_to_le32(upper_32_bits(bi->pa));
+		desc->params.indirect.addr_low =
+			cpu_to_le32(lower_32_bits(bi->pa));
+		desc->params.indirect.param0 = 0;
+		desc->params.indirect.param1 = 0;
+	}
+}
+
+/**
+ * idpf_ctlq_shutdown - shutdown the CQ
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * The main shutdown routine for any controq queue
+ */
+static void idpf_ctlq_shutdown(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	mutex_lock(&cq->cq_lock);
+
+	if (!cq->ring_size)
+		goto shutdown_sq_out;
+
+	/* free ring buffers and the ring itself */
+	idpf_ctlq_dealloc_ring_res(hw, cq);
+
+	/* Set ring_size to 0 to indicate uninitialized queue */
+	cq->ring_size = 0;
+
+shutdown_sq_out:
+	mutex_unlock(&cq->cq_lock);
+	mutex_destroy(&cq->cq_lock);
+}
+
+/**
+ * idpf_ctlq_add - add one control queue
+ * @hw: pointer to hardware struct
+ * @qinfo: info for queue to be created
+ * @cq_out: (output) double pointer to control queue to be created
+ *
+ * Allocate and initialize a control queue and add it to the control queue list.
+ * The cq parameter will be allocated/initialized and passed back to the caller
+ * if no errors occur.
+ *
+ * Note: idpf_ctlq_init must be called prior to any calls to idpf_ctlq_add
+ */
+int idpf_ctlq_add(struct idpf_hw *hw,
+		  struct idpf_ctlq_create_info *qinfo,
+		  struct idpf_ctlq_info **cq_out)
+{
+	bool is_rxq = false;
+	int status = 0;
+
+	if (!qinfo->len || !qinfo->buf_size ||
+	    qinfo->len > IDPF_CTLQ_MAX_RING_SIZE ||
+	    qinfo->buf_size > IDPF_CTLQ_MAX_BUF_LEN)
+		return -EINVAL;
+
+	*cq_out = kcalloc(1, sizeof(struct idpf_ctlq_info), GFP_KERNEL);
+	if (!(*cq_out))
+		return -ENOMEM;
+
+	(*cq_out)->cq_type = qinfo->type;
+	(*cq_out)->q_id = qinfo->id;
+	(*cq_out)->buf_size = qinfo->buf_size;
+	(*cq_out)->ring_size = qinfo->len;
+
+	(*cq_out)->next_to_use = 0;
+	(*cq_out)->next_to_clean = 0;
+	(*cq_out)->next_to_post = (*cq_out)->ring_size - 1;
+
+	switch (qinfo->type) {
+	case IDPF_CTLQ_TYPE_MAILBOX_RX:
+		is_rxq = true;
+		fallthrough;
+	case IDPF_CTLQ_TYPE_MAILBOX_TX:
+		status = idpf_ctlq_alloc_ring_res(hw, *cq_out);
+		break;
+	default:
+		status = -EBADR;
+		break;
+	}
+
+	if (status)
+		goto init_free_q;
+
+	if (is_rxq) {
+		idpf_ctlq_init_rxq_bufs(*cq_out);
+	} else {
+		/* Allocate the array of msg pointers for TX queues */
+		(*cq_out)->bi.tx_msg = kcalloc(qinfo->len,
+					       sizeof(struct idpf_ctlq_msg *),
+					       GFP_KERNEL);
+		if (!(*cq_out)->bi.tx_msg) {
+			status = -ENOMEM;
+			goto init_dealloc_q_mem;
+		}
+	}
+
+	idpf_ctlq_setup_regs(*cq_out, qinfo);
+
+	idpf_ctlq_init_regs(hw, *cq_out, is_rxq);
+
+	mutex_init(&(*cq_out)->cq_lock);
+
+	list_add(&(*cq_out)->cq_list, &hw->cq_list_head);
+
+	return status;
+
+init_dealloc_q_mem:
+	/* free ring buffers and the ring itself */
+	idpf_ctlq_dealloc_ring_res(hw, *cq_out);
+init_free_q:
+	kfree(*cq_out);
+
+	return status;
+}
+
+/**
+ * idpf_ctlq_remove - deallocate and remove specified control queue
+ * @hw: pointer to hardware struct
+ * @cq: pointer to control queue to be removed
+ */
+void idpf_ctlq_remove(struct idpf_hw *hw,
+		      struct idpf_ctlq_info *cq)
+{
+	list_del(&cq->cq_list);
+	idpf_ctlq_shutdown(hw, cq);
+	kfree(cq);
+}
+
+/**
+ * idpf_ctlq_init - main initialization routine for all control queues
+ * @hw: pointer to hardware struct
+ * @num_q: number of queues to initialize
+ * @q_info: array of structs containing info for each queue to be initialized
+ *
+ * This initializes any number and any type of control queues. This is an all
+ * or nothing routine; if one fails, all previously allocated queues will be
+ * destroyed. This must be called prior to using the individual add/remove
+ * APIs.
+ */
+int idpf_ctlq_init(struct idpf_hw *hw, u8 num_q,
+		   struct idpf_ctlq_create_info *q_info)
+{
+	struct idpf_ctlq_info *cq = NULL, *tmp = NULL;
+	int ret_code = 0;
+	int i = 0;
+
+	INIT_LIST_HEAD(&hw->cq_list_head);
+
+	for (i = 0; i < num_q; i++) {
+		struct idpf_ctlq_create_info *qinfo = q_info + i;
+
+		ret_code = idpf_ctlq_add(hw, qinfo, &cq);
+		if (ret_code)
+			goto init_destroy_qs;
+	}
+
+	return ret_code;
+
+init_destroy_qs:
+	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
+		idpf_ctlq_remove(hw, cq);
+
+	return ret_code;
+}
+
+/**
+ * idpf_ctlq_deinit - destroy all control queues
+ * @hw: pointer to hw struct
+ */
+int idpf_ctlq_deinit(struct idpf_hw *hw)
+{
+	struct idpf_ctlq_info *cq = NULL, *tmp = NULL;
+	int ret_code = 0;
+
+	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
+		idpf_ctlq_remove(hw, cq);
+
+	return ret_code;
+}
+
+/**
+ * idpf_ctlq_send - send command to Control Queue (CTQ)
+ * @hw: pointer to hw struct
+ * @cq: handle to control queue struct to send on
+ * @num_q_msg: number of messages to send on control queue
+ * @q_msg: pointer to array of queue messages to be sent
+ *
+ * The caller is expected to allocate DMAable buffers and pass them to the
+ * send routine via the q_msg struct / control queue specific data struct.
+ * The control queue will hold a reference to each send message until
+ * the completion for that message has been cleaned.
+ */
+int idpf_ctlq_send(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
+		   u16 num_q_msg, struct idpf_ctlq_msg q_msg[])
+{
+	struct idpf_ctlq_desc *desc;
+	int num_desc_avail = 0;
+	int status = 0;
+	int i = 0;
+
+	if (!cq || !cq->ring_size)
+		return -ENOBUFS;
+
+	mutex_lock(&cq->cq_lock);
+
+	/* Ensure there are enough descriptors to send all messages */
+	num_desc_avail = IDPF_CTLQ_DESC_UNUSED(cq);
+	if (num_desc_avail == 0 || num_desc_avail < num_q_msg) {
+		status = -ENOSPC;
+		goto sq_send_command_out;
+	}
+
+	for (i = 0; i < num_q_msg; i++) {
+		struct idpf_ctlq_msg *msg = &q_msg[i];
+
+		desc = IDPF_CTLQ_DESC(cq, cq->next_to_use);
+
+		desc->opcode = cpu_to_le16(msg->opcode);
+		desc->pfid_vfid = cpu_to_le16(msg->func_id);
+
+		desc->cookie_high = cpu_to_le32(msg->cookie.mbx.chnl_opcode);
+		desc->cookie_low = cpu_to_le32(msg->cookie.mbx.chnl_retval);
+
+		desc->flags = cpu_to_le16((msg->host_id & IDPF_HOST_ID_MASK) <<
+					  IDPF_CTLQ_FLAG_HOST_ID_S);
+		if (msg->data_len) {
+			struct idpf_dma_mem *buff = msg->ctx.indirect.payload;
+
+			desc->datalen |= cpu_to_le16(msg->data_len);
+			desc->flags |= cpu_to_le16(IDPF_CTLQ_FLAG_BUF);
+			desc->flags |= cpu_to_le16(IDPF_CTLQ_FLAG_RD);
+
+			/* Update the address values in the desc with the pa
+			 * value for respective buffer
+			 */
+			desc->params.indirect.addr_high =
+				cpu_to_le32(upper_32_bits(buff->pa));
+			desc->params.indirect.addr_low =
+				cpu_to_le32(lower_32_bits(buff->pa));
+
+			memcpy(&desc->params, msg->ctx.indirect.context,
+			       IDPF_INDIRECT_CTX_SIZE);
+		} else {
+			memcpy(&desc->params, msg->ctx.direct,
+			       IDPF_DIRECT_CTX_SIZE);
+		}
+
+		/* Store buffer info */
+		cq->bi.tx_msg[cq->next_to_use] = msg;
+
+		(cq->next_to_use)++;
+		if (cq->next_to_use == cq->ring_size)
+			cq->next_to_use = 0;
+	}
+
+	/* Force memory write to complete before letting hardware
+	 * know that there are new descriptors to fetch.
+	 */
+	dma_wmb();
+
+	wr32(hw, cq->reg.tail, cq->next_to_use);
+
+sq_send_command_out:
+	mutex_unlock(&cq->cq_lock);
+
+	return status;
+}
+
+/**
+ * idpf_ctlq_clean_sq - reclaim send descriptors on HW write back for the
+ * requested queue
+ * @cq: pointer to the specific Control queue
+ * @clean_count: (input|output) number of descriptors to clean as input, and
+ * number of descriptors actually cleaned as output
+ * @msg_status: (output) pointer to msg pointer array to be populated; needs
+ * to be allocated by caller
+ *
+ * Returns an array of message pointers associated with the cleaned
+ * descriptors. The pointers are to the original ctlq_msgs sent on the cleaned
+ * descriptors.  The status will be returned for each; any messages that failed
+ * to send will have a non-zero status. The caller is expected to free original
+ * ctlq_msgs and free or reuse the DMA buffers.
+ */
+int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
+		       struct idpf_ctlq_msg *msg_status[])
+{
+	struct idpf_ctlq_desc *desc;
+	u16 i = 0, num_to_clean;
+	u16 ntc, desc_err;
+	int ret = 0;
+
+	if (!cq || !cq->ring_size)
+		return -ENOBUFS;
+
+	if (*clean_count == 0)
+		return 0;
+	if (*clean_count > cq->ring_size)
+		return -EBADR;
+
+	mutex_lock(&cq->cq_lock);
+
+	ntc = cq->next_to_clean;
+
+	num_to_clean = *clean_count;
+
+	for (i = 0; i < num_to_clean; i++) {
+		/* Fetch next descriptor and check if marked as done */
+		desc = IDPF_CTLQ_DESC(cq, ntc);
+		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
+			break;
+
+		desc_err = le16_to_cpu(desc->ret_val);
+		if (desc_err) {
+			/* strip off FW internal code */
+			desc_err &= 0xff;
+		}
+
+		msg_status[i] = cq->bi.tx_msg[ntc];
+		msg_status[i]->status = desc_err;
+
+		cq->bi.tx_msg[ntc] = NULL;
+
+		/* Zero out any stale data */
+		memset(desc, 0, sizeof(*desc));
+
+		ntc++;
+		if (ntc == cq->ring_size)
+			ntc = 0;
+	}
+
+	cq->next_to_clean = ntc;
+
+	mutex_unlock(&cq->cq_lock);
+
+	/* Return number of descriptors actually cleaned */
+	*clean_count = i;
+
+	return ret;
+}
+
+/**
+ * idpf_ctlq_post_rx_buffs - post buffers to descriptor ring
+ * @hw: pointer to hw struct
+ * @cq: pointer to control queue handle
+ * @buff_count: (input|output) input is number of buffers caller is trying to
+ * return; output is number of buffers that were not posted
+ * @buffs: array of pointers to dma mem structs to be given to hardware
+ *
+ * Caller uses this function to return DMA buffers to the descriptor ring after
+ * consuming them; buff_count will be the number of buffers.
+ *
+ * Note: this function needs to be called after a receive call even
+ * if there are no DMA buffers to be returned, i.e. buff_count = 0,
+ * buffs = NULL to support direct commands
+ */
+int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
+			    u16 *buff_count, struct idpf_dma_mem **buffs)
+{
+	struct idpf_ctlq_desc *desc;
+	u16 ntp = cq->next_to_post;
+	bool buffs_avail = false;
+	u16 tbp = ntp + 1;
+	int status = 0;
+	int i = 0;
+
+	if (*buff_count > cq->ring_size)
+		return -EBADR;
+
+	if (*buff_count > 0)
+		buffs_avail = true;
+
+	mutex_lock(&cq->cq_lock);
+
+	if (tbp >= cq->ring_size)
+		tbp = 0;
+
+	if (tbp == cq->next_to_clean)
+		/* Nothing to do */
+		goto post_buffs_out;
+
+	/* Post buffers for as many as provided or up until the last one used */
+	while (ntp != cq->next_to_clean) {
+		desc = IDPF_CTLQ_DESC(cq, ntp);
+
+		if (cq->bi.rx_buff[ntp])
+			goto fill_desc;
+		if (!buffs_avail) {
+			/* If the caller hasn't given us any buffers or
+			 * there are none left, search the ring itself
+			 * for an available buffer to move to this
+			 * entry starting at the next entry in the ring
+			 */
+			tbp = ntp + 1;
+
+			/* Wrap ring if necessary */
+			if (tbp >= cq->ring_size)
+				tbp = 0;
+
+			while (tbp != cq->next_to_clean) {
+				if (cq->bi.rx_buff[tbp]) {
+					cq->bi.rx_buff[ntp] =
+						cq->bi.rx_buff[tbp];
+					cq->bi.rx_buff[tbp] = NULL;
+
+					/* Found a buffer, no need to
+					 * search anymore
+					 */
+					break;
+				}
+
+				/* Wrap ring if necessary */
+				tbp++;
+				if (tbp >= cq->ring_size)
+					tbp = 0;
+			}
+
+			if (tbp == cq->next_to_clean)
+				goto post_buffs_out;
+		} else {
+			/* Give back pointer to DMA buffer */
+			cq->bi.rx_buff[ntp] = buffs[i];
+			i++;
+
+			if (i >= *buff_count)
+				buffs_avail = false;
+		}
+
+fill_desc:
+		desc->flags =
+			cpu_to_le16(IDPF_CTLQ_FLAG_BUF | IDPF_CTLQ_FLAG_RD);
+
+		/* Post buffers to descriptor */
+		desc->datalen = cpu_to_le16(cq->bi.rx_buff[ntp]->size);
+		desc->params.indirect.addr_high =
+			cpu_to_le32(upper_32_bits(cq->bi.rx_buff[ntp]->pa));
+		desc->params.indirect.addr_low =
+			cpu_to_le32(lower_32_bits(cq->bi.rx_buff[ntp]->pa));
+
+		ntp++;
+		if (ntp == cq->ring_size)
+			ntp = 0;
+	}
+
+post_buffs_out:
+	/* Only update tail if buffers were actually posted */
+	if (cq->next_to_post != ntp) {
+		if (ntp)
+			/* Update next_to_post to ntp - 1 since current ntp
+			 * will not have a buffer
+			 */
+			cq->next_to_post = ntp - 1;
+		else
+			/* Wrap to end of end ring since current ntp is 0 */
+			cq->next_to_post = cq->ring_size - 1;
+
+		wr32(hw, cq->reg.tail, cq->next_to_post);
+	}
+
+	mutex_unlock(&cq->cq_lock);
+
+	/* return the number of buffers that were not posted */
+	*buff_count = *buff_count - i;
+
+	return status;
+}
+
+/**
+ * idpf_ctlq_recv - receive control queue message call back
+ * @cq: pointer to control queue handle to receive on
+ * @num_q_msg: (input|output) input number of messages that should be received;
+ * output number of messages actually received
+ * @q_msg: (output) array of received control queue messages on this q;
+ * needs to be pre-allocated by caller for as many messages as requested
+ *
+ * Called by interrupt handler or polling mechanism. Caller is expected
+ * to free buffers
+ */
+int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
+		   struct idpf_ctlq_msg *q_msg)
+{
+	u16 num_to_clean, ntc, ret_val, flags;
+	struct idpf_ctlq_desc *desc;
+	int ret_code = 0;
+	u16 i = 0;
+
+	if (!cq || !cq->ring_size)
+		return -ENOBUFS;
+
+	if (*num_q_msg == 0)
+		return 0;
+	else if (*num_q_msg > cq->ring_size)
+		return -EBADR;
+
+	/* take the lock before we start messing with the ring */
+	mutex_lock(&cq->cq_lock);
+
+	ntc = cq->next_to_clean;
+
+	num_to_clean = *num_q_msg;
+
+	for (i = 0; i < num_to_clean; i++) {
+		/* Fetch next descriptor and check if marked as done */
+		desc = IDPF_CTLQ_DESC(cq, ntc);
+		flags = le16_to_cpu(desc->flags);
+
+		if (!(flags & IDPF_CTLQ_FLAG_DD))
+			break;
+
+		ret_val = le16_to_cpu(desc->ret_val);
+
+		q_msg[i].vmvf_type = (flags &
+				      (IDPF_CTLQ_FLAG_FTYPE_VM |
+				       IDPF_CTLQ_FLAG_FTYPE_PF)) >>
+				      IDPF_CTLQ_FLAG_FTYPE_S;
+
+		if (flags & IDPF_CTLQ_FLAG_ERR)
+			ret_code = -EBADMSG;
+
+		q_msg[i].cookie.mbx.chnl_opcode =
+				le32_to_cpu(desc->cookie_high);
+		q_msg[i].cookie.mbx.chnl_retval =
+				le32_to_cpu(desc->cookie_low);
+
+		q_msg[i].opcode = le16_to_cpu(desc->opcode);
+		q_msg[i].data_len = le16_to_cpu(desc->datalen);
+		q_msg[i].status = ret_val;
+
+		if (desc->datalen) {
+			memcpy(q_msg[i].ctx.indirect.context,
+			       &desc->params.indirect, IDPF_INDIRECT_CTX_SIZE);
+
+			/* Assign pointer to dma buffer to ctlq_msg array
+			 * to be given to upper layer
+			 */
+			q_msg[i].ctx.indirect.payload = cq->bi.rx_buff[ntc];
+
+			/* Zero out pointer to DMA buffer info;
+			 * will be repopulated by post buffers API
+			 */
+			cq->bi.rx_buff[ntc] = NULL;
+		} else {
+			memcpy(q_msg[i].ctx.direct, desc->params.raw,
+			       IDPF_DIRECT_CTX_SIZE);
+		}
+
+		/* Zero out stale data in descriptor */
+		memset(desc, 0, sizeof(struct idpf_ctlq_desc));
+
+		ntc++;
+		if (ntc == cq->ring_size)
+			ntc = 0;
+	};
+
+	cq->next_to_clean = ntc;
+
+	mutex_unlock(&cq->cq_lock);
+
+	*num_q_msg = i;
+	if (*num_q_msg == 0)
+		ret_code = -ENOMSG;
+
+	return ret_code;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.h b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
new file mode 100644
index 000000000000..b972a2912cb0
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.h
@@ -0,0 +1,128 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _IDPF_CONTROLQ_H_
+#define _IDPF_CONTROLQ_H_
+
+#include <linux/slab.h>
+
+#include "idpf_controlq_api.h"
+
+/* Maximum buffer lengths for all control queue types */
+#define IDPF_CTLQ_MAX_RING_SIZE 1024
+#define IDPF_CTLQ_MAX_BUF_LEN	4096
+
+#define IDPF_CTLQ_DESC(R, i) \
+	(&(((struct idpf_ctlq_desc *)((R)->desc_ring.va))[i]))
+
+#define IDPF_CTLQ_DESC_UNUSED(R) \
+	((u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->ring_size) + \
+	      (R)->next_to_clean - (R)->next_to_use - 1))
+
+/* Control Queue default settings */
+#define IDPF_CTRL_SQ_CMD_TIMEOUT	250  /* msecs */
+
+struct idpf_ctlq_desc {
+	__le16	flags;
+	__le16	opcode;
+	__le16	datalen;	/* 0 for direct commands */
+	union {
+		__le16 ret_val;
+		__le16 pfid_vfid;
+#define IDPF_CTLQ_DESC_VF_ID_S	0
+#define IDPF_CTLQ_DESC_VF_ID_M	(0x7FF << IDPF_CTLQ_DESC_VF_ID_S)
+#define IDPF_CTLQ_DESC_PF_ID_S	11
+#define IDPF_CTLQ_DESC_PF_ID_M	(0x1F << IDPF_CTLQ_DESC_PF_ID_S)
+	};
+	__le32 cookie_high;
+	__le32 cookie_low;
+	union {
+		struct {
+			__le32 param0;
+			__le32 param1;
+			__le32 param2;
+			__le32 param3;
+		} direct;
+		struct {
+			__le32 param0;
+			__le32 param1;
+			__le32 addr_high;
+			__le32 addr_low;
+		} indirect;
+		u8 raw[16];
+	} params;
+};
+
+/* Flags sub-structure
+ * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
+ * |DD |CMP|ERR|  * RSV *  |FTYPE  | *RSV* |RD |VFC|BUF|  HOST_ID  |
+ */
+/* command flags and offsets */
+#define IDPF_CTLQ_FLAG_DD_S		0
+#define IDPF_CTLQ_FLAG_CMP_S		1
+#define IDPF_CTLQ_FLAG_ERR_S		2
+#define IDPF_CTLQ_FLAG_FTYPE_S		6
+#define IDPF_CTLQ_FLAG_RD_S		10
+#define IDPF_CTLQ_FLAG_VFC_S		11
+#define IDPF_CTLQ_FLAG_BUF_S		12
+#define IDPF_CTLQ_FLAG_HOST_ID_S	13
+
+#define IDPF_CTLQ_FLAG_DD	BIT(IDPF_CTLQ_FLAG_DD_S)	/* 0x1	  */
+#define IDPF_CTLQ_FLAG_CMP	BIT(IDPF_CTLQ_FLAG_CMP_S)	/* 0x2	  */
+#define IDPF_CTLQ_FLAG_ERR	BIT(IDPF_CTLQ_FLAG_ERR_S)	/* 0x4	  */
+#define IDPF_CTLQ_FLAG_FTYPE_VM	BIT(IDPF_CTLQ_FLAG_FTYPE_S)	/* 0x40	  */
+#define IDPF_CTLQ_FLAG_FTYPE_PF	BIT(IDPF_CTLQ_FLAG_FTYPE_S + 1)	/* 0x80   */
+#define IDPF_CTLQ_FLAG_RD	BIT(IDPF_CTLQ_FLAG_RD_S)	/* 0x400  */
+#define IDPF_CTLQ_FLAG_VFC	BIT(IDPF_CTLQ_FLAG_VFC_S)	/* 0x800  */
+#define IDPF_CTLQ_FLAG_BUF	BIT(IDPF_CTLQ_FLAG_BUF_S)	/* 0x1000 */
+
+/* Host ID is a special field that has 3b and not a 1b flag */
+#define IDPF_CTLQ_FLAG_HOST_ID_M MAKE_MASK(0x7000UL, IDPF_CTLQ_FLAG_HOST_ID_S)
+
+struct idpf_mbxq_desc {
+	u8 pad[8];		/* CTLQ flags/opcode/len/retval fields */
+	u32 chnl_opcode;	/* avoid confusion with desc->opcode */
+	u32 chnl_retval;	/* ditto for desc->retval */
+	u32 pf_vf_id;		/* used by CP when sending to PF */
+};
+
+/* Define the APF hardware struct to replace other control structs as needed
+ * Align to ctlq_hw_info
+ */
+struct idpf_hw {
+	/* Some part of BAR0 address space is not mapped by the LAN driver.
+	 * This results in 2 regions of BAR0 to be mapped by LAN driver which
+	 * will have its own base hardware address when mapped.
+	 */
+	u8 __iomem *hw_addr;
+	u8 __iomem *hw_addr_region2;
+	u64 hw_addr_len;
+	u64 hw_addr_region2_len;
+
+	void *back;
+
+	/* control queue - send and receive */
+	struct idpf_ctlq_info *asq;
+	struct idpf_ctlq_info *arq;
+
+	/* pci info */
+	u16 device_id;
+	u16 vendor_id;
+	u16 subsystem_device_id;
+	u16 subsystem_vendor_id;
+	u8 revision_id;
+	bool adapter_stopped;
+
+	struct list_head cq_list_head;
+};
+
+int idpf_ctlq_alloc_ring_res(struct idpf_hw *hw,
+			     struct idpf_ctlq_info *cq);
+
+void idpf_ctlq_dealloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq);
+
+/* prototype for functions used for dynamic memory allocation */
+void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem,
+			 u64 size);
+void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem);
+#endif /* _IDPF_CONTROLQ_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
new file mode 100644
index 000000000000..d7e20e7a8832
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
@@ -0,0 +1,190 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _IDPF_CONTROLQ_API_H_
+#define _IDPF_CONTROLQ_API_H_
+
+#include "idpf_mem.h"
+
+struct idpf_hw;
+
+/* Used for queue init, response and events */
+enum idpf_ctlq_type {
+	IDPF_CTLQ_TYPE_MAILBOX_TX	= 0,
+	IDPF_CTLQ_TYPE_MAILBOX_RX	= 1,
+	IDPF_CTLQ_TYPE_CONFIG_TX	= 2,
+	IDPF_CTLQ_TYPE_CONFIG_RX	= 3,
+	IDPF_CTLQ_TYPE_EVENT_RX		= 4,
+	IDPF_CTLQ_TYPE_RDMA_TX		= 5,
+	IDPF_CTLQ_TYPE_RDMA_RX		= 6,
+	IDPF_CTLQ_TYPE_RDMA_COMPL	= 7
+};
+
+/* Generic Control Queue Structures */
+struct idpf_ctlq_reg {
+	/* used for queue tracking */
+	u32 head;
+	u32 tail;
+	/* Below applies only to default mb (if present) */
+	u32 len;
+	u32 bah;
+	u32 bal;
+	u32 len_mask;
+	u32 len_ena_mask;
+	u32 head_mask;
+};
+
+/* Generic queue msg structure */
+struct idpf_ctlq_msg {
+	u8 vmvf_type; /* represents the source of the message on recv */
+#define IDPF_VMVF_TYPE_VF 0
+#define IDPF_VMVF_TYPE_VM 1
+#define IDPF_VMVF_TYPE_PF 2
+	u8 host_id;
+	/* 3b field used only when sending a message to peer - to be used in
+	 * combination with target func_id to route the message
+	 */
+#define IDPF_HOST_ID_MASK 0x7
+
+	u16 opcode;
+	u16 data_len;	/* data_len = 0 when no payload is attached */
+	union {
+		u16 func_id;	/* when sending a message */
+		u16 status;	/* when receiving a message */
+	};
+	union {
+		struct {
+			u32 chnl_opcode;
+			u32 chnl_retval;
+		} mbx;
+	} cookie;
+	union {
+#define IDPF_DIRECT_CTX_SIZE	16
+#define IDPF_INDIRECT_CTX_SIZE	8
+		/* 16 bytes of context can be provided or 8 bytes of context
+		 * plus the address of a DMA buffer
+		 */
+		u8 direct[IDPF_DIRECT_CTX_SIZE];
+		struct {
+			u8 context[IDPF_INDIRECT_CTX_SIZE];
+			struct idpf_dma_mem *payload;
+		} indirect;
+	} ctx;
+};
+
+/* Generic queue info structures */
+/* MB, CONFIG and EVENT q do not have extended info */
+struct idpf_ctlq_create_info {
+	enum idpf_ctlq_type type;
+	int id; /* absolute queue offset passed as input
+		 * -1 for default mailbox if present
+		 */
+	u16 len; /* Queue length passed as input */
+	u16 buf_size; /* buffer size passed as input */
+	u64 base_address; /* output, HPA of the Queue start  */
+	struct idpf_ctlq_reg reg; /* registers accessed by ctlqs */
+
+	int ext_info_size;
+	void *ext_info; /* Specific to q type */
+};
+
+/* Control Queue information */
+struct idpf_ctlq_info {
+	struct list_head cq_list;
+
+	enum idpf_ctlq_type cq_type;
+	int q_id;
+	struct mutex cq_lock;		/* queue lock
+					 * idpf_lock is defined in OSdep.h
+					 */
+	/* used for interrupt processing */
+	u16 next_to_use;
+	u16 next_to_clean;
+	u16 next_to_post;		/* starting descriptor to post buffers
+					 * to after recev
+					 */
+
+	struct idpf_dma_mem desc_ring;	/* descriptor ring memory
+					 * idpf_dma_mem is defined in OSdep.h
+					 */
+	union {
+		struct idpf_dma_mem **rx_buff;
+		struct idpf_ctlq_msg **tx_msg;
+	} bi;
+
+	u16 buf_size;			/* queue buffer size */
+	u16 ring_size;			/* Number of descriptors */
+	struct idpf_ctlq_reg reg;	/* registers accessed by ctlqs */
+};
+
+/* PF/VF mailbox commands */
+enum idpf_mbx_opc {
+	/* idpf_mbq_opc_send_msg_to_pf:
+	 *	usage: used by PF or VF to send a message to its CPF
+	 *	target: RX queue and function ID of parent PF taken from HW
+	 */
+	idpf_mbq_opc_send_msg_to_pf		= 0x0801,
+
+	/* idpf_mbq_opc_send_msg_to_vf:
+	 *	usage: used by PF to send message to a VF
+	 *	target: VF control queue ID must be specified in descriptor
+	 */
+	idpf_mbq_opc_send_msg_to_vf		= 0x0802,
+
+	/* idpf_mbq_opc_send_msg_to_peer_pf:
+	 *	usage: used by any function to send message to any peer PF
+	 *	target: RX queue and host of parent PF taken from HW
+	 */
+	idpf_mbq_opc_send_msg_to_peer_pf	= 0x0803,
+
+	/* idpf_mbq_opc_send_msg_to_peer_drv:
+	 *	usage: used by any function to send message to any peer driver
+	 *	target: RX queue and target host must be specific in descriptor
+	 */
+	idpf_mbq_opc_send_msg_to_peer_drv	= 0x0804,
+};
+
+/* API supported for control queue management */
+/* Will init all required q including default mb.  "q_info" is an array of
+ * create_info structs equal to the number of control queues to be created.
+ */
+int idpf_ctlq_init(struct idpf_hw *hw, u8 num_q,
+		   struct idpf_ctlq_create_info *q_info);
+
+/* Allocate and initialize a single control queue, which will be added to the
+ * control queue list; returns a handle to the created control queue
+ */
+int idpf_ctlq_add(struct idpf_hw *hw,
+		  struct idpf_ctlq_create_info *qinfo,
+		  struct idpf_ctlq_info **cq);
+
+/* Deinitialize and deallocate a single control queue */
+void idpf_ctlq_remove(struct idpf_hw *hw,
+		      struct idpf_ctlq_info *cq);
+
+/* Sends messages to HW and will also free the buffer*/
+int idpf_ctlq_send(struct idpf_hw *hw,
+		   struct idpf_ctlq_info *cq,
+		   u16 num_q_msg,
+		   struct idpf_ctlq_msg q_msg[]);
+
+/* Receives messages and called by interrupt handler/polling
+ * initiated by app/process. Also caller is supposed to free the buffers
+ */
+int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
+		   struct idpf_ctlq_msg *q_msg);
+
+/* Reclaims send descriptors on HW write back */
+int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
+		       struct idpf_ctlq_msg *msg_status[]);
+
+/* Indicate RX buffers are done being processed */
+int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw,
+			    struct idpf_ctlq_info *cq,
+			    u16 *buff_count,
+			    struct idpf_dma_mem **buffs);
+
+/* Will destroy all q including the default mb */
+int idpf_ctlq_deinit(struct idpf_hw *hw);
+
+#endif /* _IDPF_CONTROLQ_API_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c b/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
new file mode 100644
index 000000000000..704503102474
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (c) 2022, Intel Corporation. */
+
+#include "idpf_controlq.h"
+
+/**
+ * idpf_ctlq_alloc_desc_ring - Allocate Control Queue (CQ) rings
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ */
+static int
+idpf_ctlq_alloc_desc_ring(struct idpf_hw *hw,
+			  struct idpf_ctlq_info *cq)
+{
+	size_t size = cq->ring_size * sizeof(struct idpf_ctlq_desc);
+
+	cq->desc_ring.va = idpf_alloc_dma_mem(hw, &cq->desc_ring, size);
+	if (!cq->desc_ring.va)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * idpf_ctlq_alloc_bufs - Allocate Control Queue (CQ) buffers
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * Allocate the buffer head for all control queues, and if it's a receive
+ * queue, allocate DMA buffers
+ */
+static int idpf_ctlq_alloc_bufs(struct idpf_hw *hw,
+				struct idpf_ctlq_info *cq)
+{
+	int i = 0;
+
+	/* Do not allocate DMA buffers for transmit queues */
+	if (cq->cq_type == IDPF_CTLQ_TYPE_MAILBOX_TX)
+		return 0;
+
+	/* We'll be allocating the buffer info memory first, then we can
+	 * allocate the mapped buffers for the event processing
+	 */
+	cq->bi.rx_buff = kcalloc(cq->ring_size, sizeof(struct idpf_dma_mem *),
+				 GFP_KERNEL);
+	if (!cq->bi.rx_buff)
+		return -ENOMEM;
+
+	/* allocate the mapped buffers (except for the last one) */
+	for (i = 0; i < cq->ring_size - 1; i++) {
+		struct idpf_dma_mem *bi;
+		int num = 1; /* number of idpf_dma_mem to be allocated */
+
+		cq->bi.rx_buff[i] = kcalloc(num, sizeof(struct idpf_dma_mem),
+					    GFP_KERNEL);
+		if (!cq->bi.rx_buff[i])
+			goto unwind_alloc_cq_bufs;
+
+		bi = cq->bi.rx_buff[i];
+
+		bi->va = idpf_alloc_dma_mem(hw, bi, cq->buf_size);
+		if (!bi->va) {
+			/* unwind will not free the failed entry */
+			kfree(cq->bi.rx_buff[i]);
+			goto unwind_alloc_cq_bufs;
+		}
+	}
+
+	return 0;
+
+unwind_alloc_cq_bufs:
+	/* don't try to free the one that failed... */
+	i--;
+	for (; i >= 0; i--) {
+		idpf_free_dma_mem(hw, cq->bi.rx_buff[i]);
+		kfree(cq->bi.rx_buff[i]);
+	}
+	kfree(cq->bi.rx_buff);
+
+	return -ENOMEM;
+}
+
+/**
+ * idpf_ctlq_free_desc_ring - Free Control Queue (CQ) rings
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * This assumes the posted send buffers have already been cleaned
+ * and de-allocated
+ */
+static void idpf_ctlq_free_desc_ring(struct idpf_hw *hw,
+				     struct idpf_ctlq_info *cq)
+{
+	idpf_free_dma_mem(hw, &cq->desc_ring);
+}
+
+/**
+ * idpf_ctlq_free_bufs - Free CQ buffer info elements
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * Free the DMA buffers for RX queues, and DMA buffer header for both RX and TX
+ * queues.  The upper layers are expected to manage freeing of TX DMA buffers
+ */
+static void idpf_ctlq_free_bufs(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	void *bi;
+
+	if (cq->cq_type == IDPF_CTLQ_TYPE_MAILBOX_RX) {
+		int i;
+
+		/* free DMA buffers for rx queues*/
+		for (i = 0; i < cq->ring_size; i++) {
+			if (cq->bi.rx_buff[i]) {
+				idpf_free_dma_mem(hw, cq->bi.rx_buff[i]);
+				kfree(cq->bi.rx_buff[i]);
+			}
+		}
+
+		bi = (void *)cq->bi.rx_buff;
+	} else {
+		bi = (void *)cq->bi.tx_msg;
+	}
+
+	/* free the buffer header */
+	kfree(bi);
+}
+
+/**
+ * idpf_ctlq_dealloc_ring_res - Free memory allocated for control queue
+ * @hw: pointer to hw struct
+ * @cq: pointer to the specific Control queue
+ *
+ * Free the memory used by the ring, buffers and other related structures
+ */
+void idpf_ctlq_dealloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	/* free ring buffers and the ring itself */
+	idpf_ctlq_free_bufs(hw, cq);
+	idpf_ctlq_free_desc_ring(hw, cq);
+}
+
+/**
+ * idpf_ctlq_alloc_ring_res - allocate memory for descriptor ring and bufs
+ * @hw: pointer to hw struct
+ * @cq: pointer to control queue struct
+ *
+ * Do *NOT* hold the lock when calling this as the memory allocation routines
+ * called are not going to be atomic context safe
+ */
+int idpf_ctlq_alloc_ring_res(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
+{
+	int ret_code;
+
+	/* verify input for valid configuration */
+	if (!cq->ring_size || !cq->buf_size)
+		return -EINVAL;
+
+	/* allocate the ring memory */
+	ret_code = idpf_ctlq_alloc_desc_ring(hw, cq);
+	if (ret_code)
+		return ret_code;
+
+	/* allocate buffers in the rings */
+	ret_code = idpf_ctlq_alloc_bufs(hw, cq);
+	if (ret_code)
+		goto idpf_init_cq_free_ring;
+
+	/* success! */
+	return 0;
+
+idpf_init_cq_free_ring:
+	idpf_free_dma_mem(hw, &cq->desc_ring);
+	return ret_code;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
new file mode 100644
index 000000000000..6e17947c1fe2
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
@@ -0,0 +1,212 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_lan_pf_regs.h"
+
+/* LAN driver does not own all the BAR0 address space. This results in 2 BAR0
+ * regions for PF device and the driver should map each region separately.
+ */
+#define IDPF_PF_BAR0_REGION1_END	0xC001000	/* 192MB + 4KB */
+#define IDPF_PF_BAR0_REGION2_START	0x10000000	/* 256MB */
+
+#define IDPF_PF_ITR_IDX_SPACING		0x4
+
+/**
+ * idpf_ctlq_reg_init - initialize default mailbox registers
+ * @cq: pointer to the array of create control queues
+ */
+static void idpf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
+{
+	int i;
+
+	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
+		struct idpf_ctlq_create_info *ccq = cq + i;
+
+		switch (ccq->type) {
+		case IDPF_CTLQ_TYPE_MAILBOX_TX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = PF_FW_ATQH;
+			ccq->reg.tail = PF_FW_ATQT;
+			ccq->reg.len = PF_FW_ATQLEN;
+			ccq->reg.bah = PF_FW_ATQBAH;
+			ccq->reg.bal = PF_FW_ATQBAL;
+			ccq->reg.len_mask = PF_FW_ATQLEN_ATQLEN_M;
+			ccq->reg.len_ena_mask = PF_FW_ATQLEN_ATQENABLE_M;
+			ccq->reg.head_mask = PF_FW_ATQH_ATQH_M;
+			break;
+		case IDPF_CTLQ_TYPE_MAILBOX_RX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = PF_FW_ARQH;
+			ccq->reg.tail = PF_FW_ARQT;
+			ccq->reg.len = PF_FW_ARQLEN;
+			ccq->reg.bah = PF_FW_ARQBAH;
+			ccq->reg.bal = PF_FW_ARQBAL;
+			ccq->reg.len_mask = PF_FW_ARQLEN_ARQLEN_M;
+			ccq->reg.len_ena_mask = PF_FW_ARQLEN_ARQENABLE_M;
+			ccq->reg.head_mask = PF_FW_ARQH_ARQH_M;
+			break;
+		default:
+			break;
+		}
+	}
+}
+
+/**
+ * idpf_mb_intr_reg_init - Initialize mailbox interrupt register
+ * @adapter: adapter structure
+ */
+static void idpf_mb_intr_reg_init(struct idpf_adapter *adapter)
+{
+	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
+	u32 dyn_ctl = le32_to_cpu(adapter->caps.mailbox_dyn_ctl);
+
+	intr->dyn_ctl = idpf_get_reg_addr(adapter, dyn_ctl);
+	intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
+	intr->dyn_ctl_itridx_m = PF_GLINT_DYN_CTL_ITR_INDX_M;
+	intr->icr_ena = idpf_get_reg_addr(adapter, PF_INT_DIR_OICR_ENA);
+	intr->icr_ena_ctlq_m = PF_INT_DIR_OICR_ENA_M;
+}
+
+/**
+ * idpf_intr_reg_init - Initialize interrupt registers
+ * @vport: virtual port structure
+ */
+static int idpf_intr_reg_init(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int num_vecs = vport->num_q_vectors;
+	struct idpf_vec_regs *reg_vals;
+	int num_regs, i, err = 0;
+	u32 rx_itr, tx_itr;
+	u16 total_vecs;
+
+	total_vecs = idpf_get_reserved_vecs(vport->adapter);
+	reg_vals = kcalloc(total_vecs, sizeof(struct idpf_vec_regs),
+			   GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	if (num_regs < num_vecs) {
+		err = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	for (i = 0; i < num_vecs; i++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
+		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		u32 spacing;
+
+		intr->dyn_ctl = idpf_get_reg_addr(adapter,
+						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl_clrpba_m = PF_GLINT_DYN_CTL_CLEARPBA_M;
+		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
+		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
+		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
+
+		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
+					       IDPF_PF_ITR_IDX_SPACING);
+		rx_itr = PF_GLINT_ITR_ADDR(VIRTCHNL2_ITR_IDX_0,
+					   reg_vals[vec_id].itrn_reg,
+					   spacing);
+		tx_itr = PF_GLINT_ITR_ADDR(VIRTCHNL2_ITR_IDX_1,
+					   reg_vals[vec_id].itrn_reg,
+					   spacing);
+		intr->rx_itr = idpf_get_reg_addr(adapter, rx_itr);
+		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
+	}
+
+free_reg_vals:
+	kfree(reg_vals);
+	return err;
+}
+
+/**
+ * idpf_reset_reg_init - Initialize reset registers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_reset_reg_init(struct idpf_adapter *adapter)
+{
+	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, PFGEN_RSTAT);
+	adapter->reset_reg.rstat_m = PFGEN_RSTAT_PFR_STATE_M;
+}
+
+/**
+ * idpf_trigger_reset - trigger reset
+ * @adapter: Driver specific private structure
+ * @trig_cause: Reason to trigger a reset
+ */
+static void idpf_trigger_reset(struct idpf_adapter *adapter,
+			       enum idpf_flags __always_unused trig_cause)
+{
+	u32 reset_reg;
+
+	reset_reg = readl(idpf_get_reg_addr(adapter, PFGEN_CTRL));
+	writel(reset_reg | PFGEN_CTRL_PFSWR, idpf_get_reg_addr(adapter, PFGEN_CTRL));
+}
+
+/**
+ * idpf_read_master_time_ns - Gets Master time in nanoseconds
+ * @hw: pointer to hw struct
+ */
+static u64 idpf_read_master_time_ns(struct idpf_hw *hw)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+	u32 ts1 = 0, ts2 = 0;
+	u64 ns_time = 0;
+
+	/* Must be performed in 2 separate steps according to HAS */
+	writel(PF_GLTSYN_CMD_SYNC_SHTIME_EN_M,
+	       idpf_get_reg_addr(adapter, PF_GLTSYN_CMD_SYNC));
+	writel(PF_GLTSYN_CMD_SYNC_EXEC_CMD_M | PF_GLTSYN_CMD_SYNC_SHTIME_EN_M,
+	       idpf_get_reg_addr(adapter, PF_GLTSYN_CMD_SYNC));
+
+	ts1 = readl(idpf_get_reg_addr(adapter, PF_GLTSYN_SHTIME_L));
+	ts2 = readl(idpf_get_reg_addr(adapter, PF_GLTSYN_SHTIME_H));
+
+	ns_time = (u64)ts2 << 32;
+	ns_time |= (u64)ts1;
+
+	return ns_time;
+}
+
+/**
+ * idpf_reg_ops_init - Initialize register API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_reg_ops_init(struct idpf_adapter *adapter)
+{
+	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.intr_reg_init = idpf_intr_reg_init;
+	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_mb_intr_reg_init;
+	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
+	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
+	adapter->dev_ops.reg_ops.read_master_time = idpf_read_master_time_ns;
+}
+
+/**
+ * idpf_dev_ops_init - Initialize device API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_dev_ops_init(struct idpf_adapter *adapter)
+{
+	idpf_reg_ops_init(adapter);
+
+	adapter->dev_ops.bar0_region1_size = IDPF_PF_BAR0_REGION1_END;
+	adapter->dev_ops.bar0_region2_start = IDPF_PF_BAR0_REGION2_START;
+}
+
+/**
+ * idpf_pf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @adapter: pointer to adapter structure allocated by caller
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_pf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter)
+{
+	idpf_dev_ops_init(adapter);
+	return idpf_probe_common(pdev, adapter);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_devids.h b/drivers/net/ethernet/intel/idpf/idpf_devids.h
new file mode 100644
index 000000000000..eb3932db894b
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_devids.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2022 Intel Corporation */
+
+#ifndef _IDPF_DEVIDS_H_
+#define _IDPF_DEVIDS_H_
+
+#define IDPF_DEV_ID_PF			0x1452
+#define IAVF_DEV_ID_VF			0x145C
+
+#endif /* _IDPF_DEVIDS_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
new file mode 100644
index 000000000000..c9e20ec3b8cc
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -0,0 +1,1477 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#include "idpf.h"
+
+/**
+ * idpf_get_rxnfc - command to get RX flow classification rules
+ * @netdev: network interface device structure
+ * @cmd: ethtool rxnfc command
+ * @rule_locs: pointer to store rule locations
+ *
+ * Returns Success if the command is supported.
+ */
+static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
+			  u32 __always_unused *rule_locs)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	int ret = -EOPNOTSUPP;
+
+	if (!vport)
+		return -EINVAL;
+
+	switch (cmd->cmd) {
+	case ETHTOOL_GRXRINGS:
+		cmd->data = vport->num_rxq;
+		ret = 0;
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+
+/**
+ * idpf_set_rxnfc - command to set Rx flow rules.
+ * @netdev: network interface device structure
+ * @cmd: ethtool rxnfc command
+ *
+ * Returns 0 for success and negative values for errors
+ */
+static int idpf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	int ret = -EOPNOTSUPP;
+
+	if (!vport)
+		return -EINVAL;
+
+	switch (cmd->cmd) {
+	default:
+		break;
+	}
+
+	return ret;
+}
+
+/**
+ * idpf_get_rxfh_key_size - get the RSS hash key size
+ * @netdev: network interface device structure
+ *
+ * Returns the table size.
+ */
+static u32 idpf_get_rxfh_key_size(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	u16 idx;
+
+	if (!vport)
+		return -EINVAL;
+
+	idx = vport->idx;
+
+	if (!idpf_is_cap_ena_all(vport->adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
+		dev_info(&vport->adapter->pdev->dev, "RSS is not supported on this device\n");
+		return 0;
+	}
+
+	return vport->adapter->vport_config[idx]->user_config.rss_data.rss_key_size;
+}
+
+/**
+ * idpf_get_rxfh_indir_size - get the rx flow hash indirection table size
+ * @netdev: network interface device structure
+ *
+ * Returns the table size.
+ */
+static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	u16 idx;
+
+	if (!vport)
+		return -EINVAL;
+
+	idx = vport->idx;
+
+	if (!idpf_is_cap_ena_all(vport->adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
+		dev_info(&vport->adapter->pdev->dev, "RSS is not supported on this device\n");
+		return 0;
+	}
+
+	return vport->adapter->vport_config[idx]->user_config.rss_data.rss_lut_size;
+}
+
+/**
+ * idpf_get_rxfh - get the rx flow hash indirection table
+ * @netdev: network interface device structure
+ * @indir: indirection table
+ * @key: hash key
+ * @hfunc: hash function in use
+ *
+ * Reads the indirection table directly from the hardware. Always returns 0.
+ */
+static int idpf_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key,
+			 u8 *hfunc)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_rss_data *rss_data;
+	struct idpf_adapter *adapter;
+	u16 i;
+
+	if (!vport)
+		return 0;
+
+	adapter = vport->adapter;
+
+	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
+		dev_info(&vport->adapter->pdev->dev, "RSS is not supported on this device\n");
+		return 0;
+	}
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	if (vport->state != __IDPF_VPORT_UP)
+		return 0;
+
+	if (hfunc)
+		*hfunc = ETH_RSS_HASH_TOP;
+
+	if (key)
+		memcpy(key, rss_data->rss_key, rss_data->rss_key_size);
+
+	if (indir) {
+		/* Each 32 bits pointed by 'indir' is stored with a lut entry */
+		for (i = 0; i < rss_data->rss_lut_size; i++)
+			indir[i] = rss_data->rss_lut[i];
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_set_rxfh - set the rx flow hash indirection table
+ * @netdev: network interface device structure
+ * @indir: indirection table
+ * @key: hash key
+ * @hfunc: hash function to use
+ *
+ * Returns -EINVAL if the table specifies an invalid queue id, otherwise
+ * returns 0 after programming the table.
+ */
+static int idpf_set_rxfh(struct net_device *netdev, const u32 *indir,
+			 const u8 *key, const u8 hfunc)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_rss_data *rss_data;
+	struct idpf_adapter *adapter;
+	u16 lut;
+
+	if (!vport)
+		return -EINVAL;
+
+	adapter = vport->adapter;
+
+	if (!idpf_is_cap_ena_all(adapter, IDPF_RSS_CAPS, IDPF_CAP_RSS)) {
+		dev_info(&adapter->pdev->dev, "RSS is not supported on this device\n");
+		return 0;
+	}
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	if (vport->state != __IDPF_VPORT_UP)
+		return 0;
+	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_TOP)
+		return -EOPNOTSUPP;
+
+	if (key)
+		memcpy(rss_data->rss_key, key, rss_data->rss_key_size);
+
+	if (indir) {
+		for (lut = 0; lut < rss_data->rss_lut_size; lut++)
+			rss_data->rss_lut[lut] = indir[lut];
+	}
+
+	return idpf_config_rss(vport);
+}
+
+/**
+ * idpf_get_channels: get the number of channels supported by the device
+ * @netdev: network interface device structure
+ * @ch: channel information structure
+ *
+ * Report maximum of TX and RX. Report one extra channel to match our MailBox
+ * Queue.
+ */
+static void idpf_get_channels(struct net_device *netdev,
+			      struct ethtool_channels *ch)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_config *vport_config;
+	unsigned int combined;
+	int num_txq, num_rxq;
+	u16 idx;
+
+	if (!vport)
+		return;
+
+	idx = vport->idx;
+	vport_config = vport->adapter->vport_config[idx];
+
+	num_txq = vport_config->user_config.num_req_tx_qs;
+	num_rxq = vport_config->user_config.num_req_rx_qs;
+
+	combined = min(num_txq, num_rxq);
+
+	/* Report maximum channels */
+	ch->max_combined = min_t(u16, vport_config->max_q.max_txq,
+				 vport_config->max_q.max_rxq);
+	ch->max_rx = vport_config->max_q.max_rxq;
+	ch->max_tx = vport_config->max_q.max_txq;
+
+	ch->max_other = IDPF_MAX_NONQ;
+	ch->other_count = IDPF_MAX_NONQ;
+
+	ch->combined_count = combined;
+	ch->rx_count = num_rxq - combined;
+	ch->tx_count = num_txq - combined;
+}
+
+/**
+ * idpf_set_channels: set the new channel count
+ * @netdev: network interface device structure
+ * @ch: channel information structure
+ *
+ * Negotiate a new number of channels with CP. Returns 0 on success, negative
+ * on failure.
+ */
+static int idpf_set_channels(struct net_device *netdev,
+			     struct ethtool_channels *ch)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_config *vport_config;
+	int combined, num_txq, num_rxq, err;
+	unsigned int num_req_tx_q;
+	unsigned int num_req_rx_q;
+	u16 idx;
+
+	if (!vport)
+		return -EBUSY;
+
+	idx = vport->idx;
+	vport_config = vport->adapter->vport_config[idx];
+
+	num_txq = vport_config->user_config.num_req_tx_qs;
+	num_rxq = vport_config->user_config.num_req_rx_qs;
+
+	combined = min(num_txq, num_rxq);
+
+	/* these checks are for cases where user didn't specify a particular
+	 * value on cmd line but we get non-zero value anyway via
+	 * get_channels(); look at ethtool.c in ethtool repository (the user
+	 * space part), particularly, do_schannels() routine
+	 */
+	if (ch->combined_count == combined)
+		ch->combined_count = 0;
+	if (ch->combined_count && ch->rx_count == num_rxq - combined)
+		ch->rx_count = 0;
+	if (ch->combined_count && ch->tx_count == num_txq - combined)
+		ch->tx_count = 0;
+
+	if (!(ch->combined_count || (ch->rx_count && ch->tx_count))) {
+		dev_info(&vport->adapter->pdev->dev, "Please specify at least 1 Rx and 1 Tx channel\n");
+		return -EINVAL;
+	}
+
+	num_req_tx_q = ch->combined_count + ch->tx_count;
+	num_req_rx_q = ch->combined_count + ch->rx_count;
+
+	/* It's possible to specify number of queues that exceeds max in a way
+	 * that stack won't catch for us, this should catch that.
+	 */
+	if (num_req_tx_q > vport_config->max_q.max_txq) {
+		dev_info(&vport->adapter->pdev->dev, "Maximum TX queues is %d\n",
+			 vport_config->max_q.max_txq);
+		return -EINVAL;
+	}
+	if (num_req_rx_q > vport_config->max_q.max_rxq) {
+		dev_info(&vport->adapter->pdev->dev, "Maximum RX queues is %d\n",
+			 vport_config->max_q.max_rxq);
+		return -EINVAL;
+	}
+
+	if (num_req_tx_q == num_txq && num_req_rx_q == num_rxq)
+		return 0;
+
+	vport_config->user_config.num_req_tx_qs = num_req_tx_q;
+	vport_config->user_config.num_req_rx_qs = num_req_rx_q;
+
+	err = idpf_initiate_soft_reset(vport, __IDPF_SR_Q_CHANGE);
+
+	if (err) {
+		/* roll back queue change */
+		vport_config->user_config.num_req_tx_qs = num_txq;
+		vport_config->user_config.num_req_rx_qs = num_rxq;
+	}
+
+	return err;
+}
+
+/**
+ * idpf_get_ringparam - Get ring parameters
+ * @netdev: network interface device structure
+ * @ring: ethtool ringparam structure
+ * @kring: unused
+ * @ext_ack: unused
+ *
+ * Returns current ring parameters. TX and RX rings are reported separately,
+ * but the number of rings is not reported.
+ */
+static void idpf_get_ringparam(struct net_device *netdev,
+			       struct ethtool_ringparam *ring,
+			       struct kernel_ethtool_ringparam *kring,
+			       struct netlink_ext_ack *ext_ack)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return;
+
+	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
+	ring->tx_max_pending = IDPF_MAX_TXQ_DESC;
+	ring->rx_pending = vport->rxq_desc_count;
+	ring->tx_pending = vport->txq_desc_count;
+}
+
+/**
+ * idpf_set_ringparam - Set ring parameters
+ * @netdev: network interface device structure
+ * @ring: ethtool ringparam structure
+ * @kring: unused
+ * @ext_ack: unused
+ *
+ * Sets ring parameters. TX and RX rings are controlled separately, but the
+ * number of rings is not specified, so all rings get the same settings.
+ */
+static int idpf_set_ringparam(struct net_device *netdev,
+			      struct ethtool_ringparam *ring,
+			      struct kernel_ethtool_ringparam *kring,
+			      struct netlink_ext_ack *ext_ack)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_user_config_data *config_data;
+	u32 new_rx_count, new_tx_count;
+	u16 idx;
+	int i;
+
+	if (!vport)
+		return -EINVAL;
+
+	idx = vport->idx;
+
+	if (ring->tx_pending > IDPF_MAX_TXQ_DESC ||
+	    ring->tx_pending < IDPF_MIN_TXQ_DESC) {
+		netdev_err(netdev, "Descriptors requested (Tx: %d) out of range [%d-%d] (increment %d)\n",
+			   ring->tx_pending,
+			   IDPF_MIN_TXQ_DESC, IDPF_MAX_TXQ_DESC,
+			   IDPF_REQ_DESC_MULTIPLE);
+		return -EINVAL;
+	}
+
+	if (ring->rx_pending > IDPF_MAX_RXQ_DESC ||
+	    ring->rx_pending < IDPF_MIN_RXQ_DESC) {
+		netdev_err(netdev, "Descriptors requested (Rx: %d) out of range [%d-%d] (increment %d)\n",
+			   ring->rx_pending,
+			   IDPF_MIN_RXQ_DESC, IDPF_MAX_RXQ_DESC,
+			   IDPF_REQ_RXQ_DESC_MULTIPLE);
+		return -EINVAL;
+	}
+
+	new_rx_count = ALIGN(ring->rx_pending, IDPF_REQ_RXQ_DESC_MULTIPLE);
+	if (new_rx_count != ring->rx_pending)
+		netdev_info(netdev, "Requested Rx descriptor count rounded up to %d\n",
+			    new_rx_count);
+
+	new_tx_count = ALIGN(ring->tx_pending, IDPF_REQ_DESC_MULTIPLE);
+	if (new_tx_count != ring->tx_pending)
+		netdev_info(netdev, "Requested Tx descriptor count rounded up to %d\n",
+			    new_tx_count);
+
+	/* if nothing to do return success */
+	if (new_tx_count == vport->txq_desc_count &&
+	    new_rx_count == vport->rxq_desc_count)
+		return 0;
+
+	config_data = &vport->adapter->vport_config[idx]->user_config;
+	config_data->num_req_txq_desc = new_tx_count;
+	config_data->num_req_rxq_desc = new_rx_count;
+
+	/* Since we adjusted the RX completion queue count, the RX buffer queue
+	 * descriptor count needs to be adjusted as well
+	 */
+	for (i = 0; i < vport->num_bufqs_per_qgrp; i++)
+		vport->bufq_desc_count[i] =
+			IDPF_RX_BUFQ_DESC_COUNT(new_rx_count,
+						vport->num_bufqs_per_qgrp);
+
+	return idpf_initiate_soft_reset(vport, __IDPF_SR_Q_DESC_CHANGE);
+}
+
+/**
+ * struct idpf_stats - definition for an ethtool statistic
+ * @stat_string: statistic name to display in ethtool -S output
+ * @sizeof_stat: the sizeof() the stat, must be no greater than sizeof(u64)
+ * @stat_offset: offsetof() the stat from a base pointer
+ *
+ * This structure defines a statistic to be added to the ethtool stats buffer.
+ * It defines a statistic as offset from a common base pointer. Stats should
+ * be defined in constant arrays using the IDPF_STAT macro, with every element
+ * of the array using the same _type for calculating the sizeof_stat and
+ * stat_offset.
+ *
+ * The @sizeof_stat is expected to be sizeof(u8), sizeof(u16), sizeof(u32) or
+ * sizeof(u64). Other sizes are not expected and will produce a WARN_ONCE from
+ * the idpf_add_ethtool_stat() helper function.
+ *
+ * The @stat_string is interpreted as a format string, allowing formatted
+ * values to be inserted while looping over multiple structures for a given
+ * statistics array. Thus, every statistic string in an array should have the
+ * same type and number of format specifiers, to be formatted by variadic
+ * arguments to the idpf_add_stat_string() helper function.
+ */
+struct idpf_stats {
+	char stat_string[ETH_GSTRING_LEN];
+	int sizeof_stat;
+	int stat_offset;
+};
+
+/* Helper macro to define an idpf_stat structure with proper size and type.
+ * Use this when defining constant statistics arrays. Note that @_type expects
+ * only a type name and is used multiple times.
+ */
+#define IDPF_STAT(_type, _name, _stat) { \
+	.stat_string = _name, \
+	.sizeof_stat = sizeof_field(_type, _stat), \
+	.stat_offset = offsetof(_type, _stat) \
+}
+
+/* Helper macro for defining some statistics related to queues */
+#define IDPF_QUEUE_STAT(_name, _stat) \
+	IDPF_STAT(struct idpf_queue, _name, _stat)
+
+/* Stats associated with a Tx queue */
+static const struct idpf_stats idpf_gstrings_tx_queue_stats[] = {
+	IDPF_QUEUE_STAT("packets", q_stats.tx.packets),
+	IDPF_QUEUE_STAT("bytes", q_stats.tx.bytes),
+	IDPF_QUEUE_STAT("lso_pkts", q_stats.tx.lso_pkts),
+};
+
+/* Stats associated with an Rx queue */
+static const struct idpf_stats idpf_gstrings_rx_queue_stats[] = {
+	IDPF_QUEUE_STAT("packets", q_stats.rx.packets),
+	IDPF_QUEUE_STAT("bytes", q_stats.rx.bytes),
+	IDPF_QUEUE_STAT("rsc_pkts", q_stats.rx.rsc_pkts),
+};
+
+#define IDPF_TX_QUEUE_STATS_LEN		ARRAY_SIZE(idpf_gstrings_tx_queue_stats)
+#define IDPF_RX_QUEUE_STATS_LEN		ARRAY_SIZE(idpf_gstrings_rx_queue_stats)
+
+#define IDPF_PORT_STAT(_name, _stat) \
+	IDPF_STAT(struct idpf_vport,  _name, _stat)
+
+static const struct idpf_stats idpf_gstrings_port_stats[] = {
+	IDPF_PORT_STAT("port-rx-csum_errors", port_stats.rx_hw_csum_err),
+	IDPF_PORT_STAT("port-rx-hsplit", port_stats.rx_hsplit),
+	IDPF_PORT_STAT("port-rx-hsplit_hbo", port_stats.rx_hsplit_hbo),
+	IDPF_PORT_STAT("port-rx-bad_descs", port_stats.rx_bad_descs),
+	IDPF_PORT_STAT("port-rx-length_errors", port_stats.vport_stats.rx_invalid_frame_length),
+	IDPF_PORT_STAT("port-tx-skb_drops", port_stats.tx_drops),
+	IDPF_PORT_STAT("port-tx-dma_errs", port_stats.tx_dma_errs),
+	IDPF_PORT_STAT("tx-linearized_pkts", port_stats.tx_linearize),
+	IDPF_PORT_STAT("tx-busy_events", port_stats.tx_busy),
+	IDPF_PORT_STAT("port-rx_bytes", port_stats.vport_stats.rx_bytes),
+	IDPF_PORT_STAT("port-rx-unicast_pkts", port_stats.vport_stats.rx_unicast),
+	IDPF_PORT_STAT("port-rx-multicast_pkts", port_stats.vport_stats.rx_multicast),
+	IDPF_PORT_STAT("port-rx-broadcast_pkts", port_stats.vport_stats.rx_broadcast),
+	IDPF_PORT_STAT("port-rx-unknown_protocol", port_stats.vport_stats.rx_unknown_protocol),
+	IDPF_PORT_STAT("port-tx_bytes", port_stats.vport_stats.tx_bytes),
+	IDPF_PORT_STAT("port-tx-unicast_pkts", port_stats.vport_stats.tx_unicast),
+	IDPF_PORT_STAT("port-tx-multicast_pkts", port_stats.vport_stats.tx_multicast),
+	IDPF_PORT_STAT("port-tx-broadcast_pkts", port_stats.vport_stats.tx_broadcast),
+	IDPF_PORT_STAT("port-tx_errors", port_stats.vport_stats.tx_errors),
+};
+
+#define IDPF_PORT_STATS_LEN ARRAY_SIZE(idpf_gstrings_port_stats)
+
+struct idpf_priv_flags {
+	char flag_string[ETH_GSTRING_LEN];
+	bool read_only;
+	u32 bitno;
+};
+
+#define IDPF_PRIV_FLAG(_name, _bitno, _read_only) { \
+	.read_only = _read_only, \
+	.flag_string = _name, \
+	.bitno = _bitno, \
+}
+
+static const struct idpf_priv_flags idpf_gstrings_priv_flags[] = {
+	IDPF_PRIV_FLAG("header-split", __IDPF_PRIV_FLAGS_HDR_SPLIT, 0),
+};
+
+#define IDPF_PRIV_FLAGS_STR_LEN ARRAY_SIZE(idpf_gstrings_priv_flags)
+
+/**
+ * __idpf_add_qstat_strings - copy stat strings into ethtool buffer
+ * @p: ethtool supplied buffer
+ * @stats: stat definitions array
+ * @size: size of the stats array
+ * @type: stat type
+ * @idx: stat index
+ *
+ * Format and copy the strings described by stats into the buffer pointed at
+ * by p.
+ */
+static void __idpf_add_qstat_strings(u8 **p, const struct idpf_stats stats[],
+				     const unsigned int size, const char *type,
+				     unsigned int idx)
+{
+	unsigned int i;
+
+	for (i = 0; i < size; i++) {
+		snprintf((char *)*p, ETH_GSTRING_LEN,
+			 "%2s_q-%u.%.17s", type, idx, stats[i].stat_string);
+		*p += ETH_GSTRING_LEN;
+	}
+}
+
+/**
+ * idpf_add_qstat_strings - Copy queue stat strings into ethtool buffer
+ * @p: ethtool supplied buffer
+ * @stats: stat definitions array
+ * @type: stat type
+ * @idx: stat idx
+ *
+ * Format and copy the strings described by the const static stats value into
+ * the buffer pointed at by p.
+ *
+ * The parameter @stats is evaluated twice, so parameters with side effects
+ * should be avoided. Additionally, stats must be an array such that
+ * ARRAY_SIZE can be called on it.
+ */
+#define idpf_add_qstat_strings(p, stats, type, idx) \
+	__idpf_add_qstat_strings(p, stats, ARRAY_SIZE(stats), type, idx)
+
+/**
+ * idpf_add_port_stat_strings - Copy port stat strings into ethtool buffer
+ * @p: ethtool buffer
+ * @stats: struct to copy from
+ */
+static void idpf_add_port_stat_strings(u8 **p, const struct idpf_stats stats[])
+{
+	const unsigned int size = IDPF_PORT_STATS_LEN;
+	unsigned int i;
+
+	for (i = 0; i < size; i++) {
+		snprintf((char *)*p, ETH_GSTRING_LEN, "%.32s",
+			 stats[i].stat_string);
+		*p += ETH_GSTRING_LEN;
+	}
+}
+
+/**
+ * idpf_get_stat_strings - Get stat strings
+ * @netdev: network interface device structure
+ * @data: buffer for string data
+ *
+ * Builds the statistics string table
+ */
+static void idpf_get_stat_strings(struct net_device *netdev, u8 *data)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_config *vport_config;
+	unsigned int i;
+
+	if (!vport)
+		return;
+
+	idpf_add_port_stat_strings(&data, idpf_gstrings_port_stats);
+
+	vport_config = vport->adapter->vport_config[vport->idx];
+	/* It's critical that we always report a constant number of strings and
+	 * that the strings are reported in the same order regardless of how
+	 * many queues are actually in use.
+	 */
+	for (i = 0; i < vport_config->max_q.max_txq; i++)
+		idpf_add_qstat_strings(&data, idpf_gstrings_tx_queue_stats,
+				       "tx", i);
+	for (i = 0; i < vport_config->max_q.max_rxq; i++)
+		idpf_add_qstat_strings(&data, idpf_gstrings_rx_queue_stats,
+				       "rx", i);
+}
+
+/**
+ * idpf_get_priv_flag_strings - Get private flag strings
+ * @netdev: network interface device structure
+ * @data: buffer for string data
+ *
+ * Builds the private flags string table
+ */
+static void idpf_get_priv_flag_strings(struct net_device *netdev, u8 *data)
+{
+	unsigned int i;
+
+	for (i = 0; i < IDPF_PRIV_FLAGS_STR_LEN; i++) {
+		snprintf((char *)data, ETH_GSTRING_LEN, "%s",
+			 idpf_gstrings_priv_flags[i].flag_string);
+		data += ETH_GSTRING_LEN;
+	}
+}
+
+/**
+ * idpf_get_priv_flags - report device private flags
+ * @dev: network interface device structure
+ *
+ * The get string set count and the string set should be matched for each
+ * flag returned.  Add new strings for each flag to the idpf_gstrings_priv_flags
+ * array.
+ *
+ * Returns a u32 bitmap of flags.
+ **/
+static u32 idpf_get_priv_flags(struct net_device *dev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(dev);
+	struct idpf_vport_user_config_data *user_data;
+	u32 i, ret_flags = 0;
+
+	if (!vport)
+		return 0;
+
+	user_data = &vport->adapter->vport_config[vport->idx]->user_config;
+
+	for (i = 0; i < IDPF_PRIV_FLAGS_STR_LEN; i++) {
+		const struct idpf_priv_flags *priv_flag;
+
+		priv_flag = &idpf_gstrings_priv_flags[i];
+
+		if (test_bit(priv_flag->bitno, user_data->user_flags))
+			ret_flags |= BIT(i);
+	}
+
+	return ret_flags;
+}
+
+/**
+ * idpf_set_priv_flags - set private flags
+ * @dev: network interface device structure
+ * @flags: bit flags to be set
+ **/
+static int idpf_set_priv_flags(struct net_device *dev, u32 flags)
+{
+	DECLARE_BITMAP(change_flags, __IDPF_USER_FLAGS_NBITS);
+	struct idpf_vport *vport = idpf_netdev_to_vport(dev);
+	DECLARE_BITMAP(orig_flags, __IDPF_USER_FLAGS_NBITS);
+	struct idpf_vport_user_config_data *user_data;
+	int err = 0;
+	u32 i;
+
+	if (!vport)
+		return -EINVAL;
+
+	if (flags > BIT(IDPF_PRIV_FLAGS_STR_LEN))
+		return -EINVAL;
+
+	user_data = &vport->adapter->vport_config[vport->idx]->user_config;
+
+	if ((!idpf_is_cap_ena_all(vport->adapter, IDPF_HSPLIT_CAPS,
+				  IDPF_CAP_HSPLIT) ||
+	     !idpf_is_queue_model_split(vport->rxq_model)) &&
+	    (flags & BIT(__IDPF_PRIV_FLAGS_HDR_SPLIT)))
+		return -EOPNOTSUPP;
+
+	bitmap_copy(orig_flags, user_data->user_flags, __IDPF_USER_FLAGS_NBITS);
+
+	for (i = 0; i < IDPF_PRIV_FLAGS_STR_LEN; i++) {
+		const struct idpf_priv_flags *priv_flag;
+
+		priv_flag = &idpf_gstrings_priv_flags[i];
+
+		if (flags & BIT(i)) {
+			/* If this is a read-only flag, it can't be changed */
+			if (priv_flag->read_only)
+				return -EOPNOTSUPP;
+
+			set_bit(priv_flag->bitno, user_data->user_flags);
+		} else {
+			clear_bit(priv_flag->bitno, user_data->user_flags);
+		}
+	}
+
+	bitmap_xor(change_flags, user_data->user_flags,
+		   orig_flags, __IDPF_USER_FLAGS_NBITS);
+
+	if (test_bit(__IDPF_PRIV_FLAGS_HDR_SPLIT, change_flags))
+		err = idpf_initiate_soft_reset(vport, __IDPF_SR_HSPLIT_CHANGE);
+
+	return err;
+}
+
+/**
+ * idpf_get_strings - Get string set
+ * @netdev: network interface device structure
+ * @sset: id of string set
+ * @data: buffer for string data
+ *
+ * Builds string tables for various string sets
+ */
+static void idpf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
+{
+	switch (sset) {
+	case ETH_SS_STATS:
+		idpf_get_stat_strings(netdev, data);
+		break;
+	case ETH_SS_PRIV_FLAGS:
+		idpf_get_priv_flag_strings(netdev, data);
+		break;
+	default:
+		break;
+	}
+}
+
+/**
+ * idpf_get_sset_count - Get length of string set
+ * @netdev: network interface device structure
+ * @sset: id of string set
+ *
+ * Reports size of various string tables.
+ */
+static
+int idpf_get_sset_count(struct net_device *netdev, int sset)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_config *vport_config;
+	u16 max_txq, max_rxq;
+
+	if (sset == ETH_SS_PRIV_FLAGS)
+		return IDPF_PRIV_FLAGS_STR_LEN;
+
+	if (sset != ETH_SS_STATS)
+		return -EINVAL;
+
+	if (!vport)
+		return -EINVAL;
+
+	vport_config = vport->adapter->vport_config[vport->idx];
+	/* This size reported back here *must* be constant throughout the
+	 * lifecycle of the netdevice, i.e. we must report the maximum length
+	 * even for queues that don't technically exist.  This is due to the
+	 * fact that this userspace API uses three separate ioctl calls to get
+	 * stats data but has no way to communicate back to userspace when that
+	 * size has changed, which can typically happen as a result of changing
+	 * number of queues. If the number/order of stats change in the middle
+	 * of this call chain it will lead to userspace crashing/accessing bad
+	 * data through buffer under/overflow.
+	 */
+	max_txq = vport_config->max_q.max_txq;
+	max_rxq = vport_config->max_q.max_rxq;
+
+	return IDPF_PORT_STATS_LEN + (IDPF_TX_QUEUE_STATS_LEN * max_txq) +
+		(IDPF_RX_QUEUE_STATS_LEN * max_rxq);
+}
+
+/**
+ * idpf_add_one_ethtool_stat - copy the stat into the supplied buffer
+ * @data: location to store the stat value
+ * @pstat: old stat pointer to copy from
+ * @stat: the stat definition
+ *
+ * Copies the stat data defined by the pointer and stat structure pair into
+ * the memory supplied as data. Used to implement idpf_add_ethtool_stats and
+ * idpf_add_queue_stats. If the pointer is null, data will be zero'd.
+ */
+static void
+idpf_add_one_ethtool_stat(u64 *data, void *pstat,
+			  const struct idpf_stats *stat)
+{
+	char *p;
+
+	if (!pstat) {
+		/* Ensure that the ethtool data buffer is zero'd for any stats
+		 * which don't have a valid pointer.
+		 */
+		*data = 0;
+		return;
+	}
+
+	p = (char *)pstat + stat->stat_offset;
+	switch (stat->sizeof_stat) {
+	case sizeof(u64):
+		*data = *((u64 *)p);
+		break;
+	case sizeof(u32):
+		*data = *((u32 *)p);
+		break;
+	case sizeof(u16):
+		*data = *((u16 *)p);
+		break;
+	case sizeof(u8):
+		*data = *((u8 *)p);
+		break;
+	default:
+		WARN_ONCE(1, "unexpected stat size for %s",
+			  stat->stat_string);
+		*data = 0;
+	}
+}
+
+/**
+ * idpf_add_queue_stats - copy queue statistics into supplied buffer
+ * @data: ethtool stats buffer
+ * @q: the queue to copy
+ *
+ * Queue statistics must be copied while protected by
+ * u64_stats_fetch_begin_irq, so we can't directly use idpf_add_ethtool_stats.
+ * Assumes that queue stats are defined in idpf_gstrings_queue_stats. If the
+ * queue pointer is null, zero out the queue stat values and update the data
+ * pointer. Otherwise safely copy the stats from the queue into the supplied
+ * buffer and update the data pointer when finished.
+ *
+ * This function expects to be called while under rcu_read_lock().
+ */
+static void
+idpf_add_queue_stats(u64 **data, struct idpf_queue *q)
+{
+	const struct idpf_stats *stats;
+	unsigned int start;
+	unsigned int size;
+	unsigned int i;
+
+	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
+		size = IDPF_RX_QUEUE_STATS_LEN;
+		stats = idpf_gstrings_rx_queue_stats;
+	} else {
+		size = IDPF_TX_QUEUE_STATS_LEN;
+		stats = idpf_gstrings_tx_queue_stats;
+	}
+
+	/* To avoid invalid statistics values, ensure that we keep retrying
+	 * the copy until we get a consistent value according to
+	 * u64_stats_fetch_retry_irq. But first, make sure our queue is
+	 * non-null before attempting to access its syncp.
+	 */
+	do {
+		start = u64_stats_fetch_begin_irq(&q->stats_sync);
+		for (i = 0; i < size; i++)
+			idpf_add_one_ethtool_stat(&(*data)[i], q, &stats[i]);
+	} while (u64_stats_fetch_retry_irq(&q->stats_sync, start));
+
+	/* Once we successfully copy the stats in, update the data pointer */
+	*data += size;
+}
+
+/**
+ * idpf_add_empty_queue_stats - Add stats for a non-existent queue
+ * @data: pointer to data buffer
+ * @qtype: type of data queue
+ *
+ * We must report a constant length of stats back to userspace regardless of
+ * how many queues are actually in use because stats collection happens over
+ * three separate ioctls and there's no way to notify userspace the size
+ * changed between those calls. This adds empty to data to the stats since we
+ * don't have a real queue to refer to for this stats slot.
+ */
+static void
+idpf_add_empty_queue_stats(u64 **data, u16 qtype)
+{
+	unsigned int i;
+	int stats_len;
+
+	if (qtype == VIRTCHNL2_QUEUE_TYPE_RX)
+		stats_len = IDPF_RX_QUEUE_STATS_LEN;
+	else
+		stats_len = IDPF_TX_QUEUE_STATS_LEN;
+
+	for (i = 0; i < stats_len; i++)
+		(*data)[i] = 0;
+	*data += stats_len;
+}
+
+/**
+ * idpf_add_port_stats - Copy port stats into ethtool buffer
+ * @vport: virtual port struct
+ * @data: ethtool buffer to copy into
+ */
+static void idpf_add_port_stats(struct idpf_vport *vport, u64 **data)
+{
+	unsigned int size = IDPF_PORT_STATS_LEN;
+	unsigned int start;
+	unsigned int i;
+
+	/* To avoid invalid statistics values, ensure that we keep retrying
+	 * the copy until we get a consistent value according to
+	 * u64_stats_fetch_retry_irq.
+	 */
+	do {
+		start = u64_stats_fetch_begin_irq(&vport->port_stats.stats_sync);
+		for (i = 0; i < size; i++) {
+			idpf_add_one_ethtool_stat(&(*data)[i], vport,
+						  &idpf_gstrings_port_stats[i]);
+		}
+	} while (u64_stats_fetch_retry_irq(&vport->port_stats.stats_sync, start));
+
+	*data += size;
+}
+
+/**
+ * idpf_collect_queue_stats - accumulate various per queue stats
+ * into port level stats
+ * @vport: pointer to vport struct
+ **/
+static void idpf_collect_queue_stats(struct idpf_vport *vport)
+{
+	int i, j;
+
+	/* zero out perf stats since they're actually tracked in per
+	 * queue stats; this is only for reporting
+	 */
+	vport->port_stats.rx_hw_csum_err = 0;
+	vport->port_stats.rx_hsplit = 0;
+	vport->port_stats.rx_hsplit_hbo = 0;
+	vport->port_stats.rx_bad_descs = 0;
+	vport->port_stats.tx_linearize = 0;
+	vport->port_stats.tx_busy = 0;
+	vport->port_stats.tx_drops = 0;
+	vport->port_stats.tx_dma_errs = 0;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rxq_grp = &vport->rxq_grps[i];
+		int num_rxq;
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rxq_grp->splitq.num_rxq_sets;
+		else
+			num_rxq = rxq_grp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			u64 hw_csum_err, hsplit, hsplit_hbo, bad_descs;
+			struct idpf_queue *rxq;
+			unsigned int start;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
+			else
+				rxq = rxq_grp->singleq.rxqs[j];
+
+			if (!rxq)
+				continue;
+
+			/* To avoid invalid statistics values, ensure that we keep retrying
+			 * the copy until we get a consistent value according to
+			 * u64_stats_fetch_retry_irq. But first, make sure our queue is
+			 * non-null before attempting to access its syncp.
+			 */
+			do {
+				start = u64_stats_fetch_begin_irq(&rxq->stats_sync);
+
+				hw_csum_err = rxq->q_stats.rx.hw_csum_err;
+				hsplit = rxq->q_stats.rx.hsplit_pkts;
+				hsplit_hbo = rxq->q_stats.rx.hsplit_buf_ovf;
+				bad_descs = rxq->q_stats.rx.bad_descs;
+			} while (u64_stats_fetch_retry_irq(&rxq->stats_sync, start));
+
+			vport->port_stats.rx_hw_csum_err += hw_csum_err;
+			vport->port_stats.rx_hsplit += hsplit;
+			vport->port_stats.rx_hsplit_hbo += hsplit_hbo;
+			vport->port_stats.rx_bad_descs += bad_descs;
+		}
+	}
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+
+		for (j = 0; j < txq_grp->num_txq; j++) {
+			u64 linearize, qbusy, skb_drops, dma_errs;
+			struct idpf_queue *txq = txq_grp->txqs[j];
+			unsigned int start;
+
+			if (!txq)
+				continue;
+
+			/* To avoid invalid statistics values, ensure that we keep retrying
+			 * the copy until we get a consistent value according to
+			 * u64_stats_fetch_retry_irq. But first, make sure our queue is
+			 * non-null before attempting to access its syncp.
+			 */
+			do {
+				start = u64_stats_fetch_begin_irq(&txq->stats_sync);
+
+				linearize = txq->q_stats.tx.linearize;
+				qbusy = txq->q_stats.tx.q_busy;
+				skb_drops = txq->q_stats.tx.skb_drops;
+				dma_errs = txq->q_stats.tx.dma_errs;
+			} while (u64_stats_fetch_retry_irq(&txq->stats_sync, start));
+
+			vport->port_stats.tx_linearize += linearize;
+			vport->port_stats.tx_busy += qbusy;
+			vport->port_stats.tx_drops += skb_drops;
+			vport->port_stats.tx_dma_errs += dma_errs;
+		}
+	}
+}
+
+/**
+ * idpf_get_ethtool_stats - report device statistics
+ * @netdev: network interface device structure
+ * @stats: ethtool statistics structure
+ * @data: pointer to data buffer
+ *
+ * All statistics are added to the data buffer as an array of u64.
+ */
+static void idpf_get_ethtool_stats(struct net_device *netdev,
+				   struct ethtool_stats __always_unused *stats,
+				   u64 *data)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_config *vport_config;
+	unsigned int total = 0;
+	unsigned int i, j;
+	u16 qtype;
+
+	if (!vport || vport->state != __IDPF_VPORT_UP)
+		return;
+
+	rcu_read_lock();
+
+	idpf_collect_queue_stats(vport);
+	idpf_add_port_stats(vport, &data);
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+
+		qtype = VIRTCHNL2_QUEUE_TYPE_TX;
+
+		for (j = 0; j < txq_grp->num_txq; j++, total++) {
+			struct idpf_queue *txq = txq_grp->txqs[j];
+
+			if (!txq)
+				idpf_add_empty_queue_stats(&data, qtype);
+			else
+				idpf_add_queue_stats(&data, txq);
+		}
+	}
+
+	vport_config = vport->adapter->vport_config[vport->idx];
+	/* It is critical we provide a constant number of stats back to
+	 * userspace regardless of how many queues are actually in use because
+	 * there is no way to inform userspace the size has changed between
+	 * ioctl calls. This will fill in any missing stats with zero.
+	 */
+	for (; total < vport_config->max_q.max_txq; total++)
+		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_TX);
+	total = 0;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rxq_grp = &vport->rxq_grps[i];
+		int num_rxq;
+
+		qtype = VIRTCHNL2_QUEUE_TYPE_RX;
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rxq_grp->splitq.num_rxq_sets;
+		else
+			num_rxq = rxq_grp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, total++) {
+			struct idpf_queue *rxq;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
+			else
+				rxq = rxq_grp->singleq.rxqs[j];
+			if (!rxq)
+				idpf_add_empty_queue_stats(&data, qtype);
+			else
+				idpf_add_queue_stats(&data, rxq);
+		}
+	}
+	for (; total < vport_config->max_q.max_rxq; total++)
+		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_RX);
+	rcu_read_unlock();
+}
+
+/**
+ * idpf_find_rxq - find rxq from q index
+ * @vport: virtual port associated to queue
+ * @q_num: q index used to find queue
+ *
+ * returns pointer to rx queue
+ */
+static struct idpf_queue *
+idpf_find_rxq(struct idpf_vport *vport, int q_num)
+{
+	int q_grp, q_idx;
+
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		return vport->rxq_grps->singleq.rxqs[q_num];
+
+	q_grp = q_num / IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
+	q_idx = q_num % IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
+
+	return &vport->rxq_grps[q_grp].splitq.rxq_sets[q_idx]->rxq;
+}
+
+/**
+ * idpf_find_txq - find txq from q index
+ * @vport: virtual port associated to queue
+ * @q_num: q index used to find queue
+ *
+ * returns pointer to tx queue
+ */
+static struct idpf_queue *
+idpf_find_txq(struct idpf_vport *vport, int q_num)
+{
+	int q_grp = q_num / IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		return vport->txqs[q_num];
+
+	return vport->txq_grps[q_grp].complq;
+}
+
+/**
+ * __idpf_get_q_coalesce - get ITR values for specific queue
+ * @ec: ethtool structure to fill with driver's coalesce settings
+ * @q: quuee of Rx or Tx
+ */
+static void
+__idpf_get_q_coalesce(struct ethtool_coalesce *ec, struct idpf_queue *q)
+{
+	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
+		ec->use_adaptive_rx_coalesce =
+				IDPF_ITR_IS_DYNAMIC(q->q_vector->rx_intr_mode);
+		ec->rx_coalesce_usecs = q->q_vector->rx_itr_value;
+	} else {
+		ec->use_adaptive_tx_coalesce =
+				IDPF_ITR_IS_DYNAMIC(q->q_vector->tx_intr_mode);
+		ec->tx_coalesce_usecs = q->q_vector->tx_itr_value;
+	}
+}
+
+/**
+ * idpf_get_q_coalesce - get ITR values for specific queue
+ * @netdev: pointer to the netdev associated with this query
+ * @ec: coalesce settings to program the device with
+ * @q_num: update ITR/INTRL (coalesce) settings for this queue number/index
+ *
+ * Return 0 on success, and negative on failure
+ */
+static int
+idpf_get_q_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
+		    u32 q_num)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	if (vport->state != __IDPF_VPORT_UP)
+		return 0;
+
+	if (q_num >= vport->num_rxq && q_num >= vport->num_txq)
+		return -EINVAL;
+
+	if (q_num < vport->num_rxq)
+		__idpf_get_q_coalesce(ec, idpf_find_rxq(vport, q_num));
+
+	if (q_num < vport->num_txq)
+		__idpf_get_q_coalesce(ec, idpf_find_txq(vport, q_num));
+	return 0;
+}
+
+/**
+ * idpf_get_coalesce - get ITR values as requested by user
+ * @netdev: pointer to the netdev associated with this query
+ * @ec: coalesce settings to be filled
+ * @kec: unused
+ * @extack: unused
+ *
+ * Return 0 on success, and negative on failure
+ */
+static int
+idpf_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
+		  struct kernel_ethtool_coalesce *kec,
+		  struct netlink_ext_ack *extack)
+{
+	/* Return coalesce based on queue number zero */
+	return idpf_get_q_coalesce(netdev, ec, 0);
+}
+
+/**
+ * idpf_get_per_q_coalesce - get ITR values as requested by user
+ * @netdev: pointer to the netdev associated with this query
+ * @q_num: queue for which the itr values has to retrieved
+ * @ec: coalesce settings to be filled
+ *
+ * Return 0 on success, and negative on failure
+ */
+
+static int
+idpf_get_per_q_coalesce(struct net_device *netdev, u32 q_num,
+			struct ethtool_coalesce *ec)
+{
+	return idpf_get_q_coalesce(netdev, ec, q_num);
+}
+
+/**
+ * __idpf_set_q_coalesce - set ITR values for specific queue
+ * @ec: ethtool structure from user to update ITR settings
+ * @q: queue for which itr values has to be set
+ *
+ * Returns 0 on success, negative otherwise.
+ */
+static int
+__idpf_set_q_coalesce(struct ethtool_coalesce *ec, struct idpf_queue *q)
+{
+	u32 use_adaptive_coalesce, coalesce_usecs;
+	struct idpf_q_vector *qv = q->q_vector;
+	bool is_dim_ena = false;
+
+	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
+		is_dim_ena = IDPF_ITR_IS_DYNAMIC(qv->rx_intr_mode);
+		use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
+		coalesce_usecs = ec->rx_coalesce_usecs;
+	} else {
+		is_dim_ena = IDPF_ITR_IS_DYNAMIC(qv->tx_intr_mode);
+		use_adaptive_coalesce = ec->use_adaptive_tx_coalesce;
+		coalesce_usecs = ec->tx_coalesce_usecs;
+	}
+
+	if (coalesce_usecs && use_adaptive_coalesce) {
+		netdev_info(q->vport->netdev, "Cannot set coalesce usecs if adaptive enabled\n");
+		return -EINVAL;
+	}
+
+	if (is_dim_ena && use_adaptive_coalesce)
+		return 0;
+
+	if (coalesce_usecs > IDPF_ITR_MAX) {
+		netdev_info(q->vport->netdev,
+			    "Invalid value, %d-usecs range is 0-%d\n",
+			    coalesce_usecs, IDPF_ITR_MAX);
+		return -EINVAL;
+	}
+
+	if (coalesce_usecs % 2 != 0) {
+		coalesce_usecs = coalesce_usecs & 0xFFFFFFFE;
+		netdev_info(q->vport->netdev,
+			    "HW only supports even ITR values, ITR rounded to %d\n",
+			    coalesce_usecs);
+	}
+
+	if (q->q_type == VIRTCHNL2_QUEUE_TYPE_RX) {
+		qv->rx_itr_value = coalesce_usecs;
+		if (use_adaptive_coalesce) {
+			qv->rx_intr_mode = IDPF_ITR_DYNAMIC;
+		} else {
+			qv->rx_intr_mode = !IDPF_ITR_DYNAMIC;
+			idpf_vport_intr_write_itr(qv, qv->rx_itr_value,
+						  false);
+		}
+	} else {
+		qv->tx_itr_value = coalesce_usecs;
+		if (use_adaptive_coalesce) {
+			qv->tx_intr_mode = IDPF_ITR_DYNAMIC;
+		} else {
+			qv->tx_intr_mode = !IDPF_ITR_DYNAMIC;
+			idpf_vport_intr_write_itr(qv, qv->tx_itr_value, true);
+		}
+	}
+	/* Update of static/dynamic itr will be taken care when interrupt is
+	 * fired
+	 */
+	return 0;
+}
+
+/**
+ * idpf_set_q_coalesce - set ITR values for specific queue
+ * @vport: vport associated to the queue that need updating
+ * @ec: coalesce settings to program the device with
+ * @q_num: update ITR/INTRL (coalesce) settings for this queue number/index
+ * @is_rxq: is queue type rx
+ *
+ * Return 0 on success, and negative on failure
+ */
+static int
+idpf_set_q_coalesce(struct idpf_vport *vport, struct ethtool_coalesce *ec,
+		    int q_num, bool is_rxq)
+{
+	struct idpf_queue *q;
+
+	if (is_rxq)
+		q = idpf_find_rxq(vport, q_num);
+	else
+		q = idpf_find_txq(vport, q_num);
+
+	if (q && __idpf_set_q_coalesce(ec, q))
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * idpf_set_coalesce - set ITR values as requested by user
+ * @netdev: pointer to the netdev associated with this query
+ * @ec: coalesce settings to program the device with
+ * @kec: unused
+ * @extack: unused
+ *
+ * Return 0 on success, and negative on failure
+ */
+static int
+idpf_set_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
+		  struct kernel_ethtool_coalesce *kec,
+		  struct netlink_ext_ack *extack)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	int i, err = 0;
+
+	if (!vport)
+		return -EINVAL;
+
+	if (vport->state != __IDPF_VPORT_UP)
+		return 0;
+
+	for (i = 0; i < vport->num_txq; i++) {
+		err = idpf_set_q_coalesce(vport, ec, i, false);
+		if (err)
+			return err;
+	}
+
+	for (i = 0; i < vport->num_rxq; i++) {
+		err = idpf_set_q_coalesce(vport, ec, i, true);
+		if (err)
+			return err;
+	}
+	return 0;
+}
+
+/**
+ * idpf_set_per_q_coalesce - set ITR values as requested by user
+ * @netdev: pointer to the netdev associated with this query
+ * @q_num: queue for which the itr values has to be set
+ * @ec: coalesce settings to program the device with
+ *
+ * Return 0 on success, and negative on failure
+ */
+static int
+idpf_set_per_q_coalesce(struct net_device *netdev, u32 q_num,
+			struct ethtool_coalesce *ec)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	int err;
+
+	if (!vport)
+		return -EINVAL;
+
+	err = idpf_set_q_coalesce(vport, ec, q_num, false);
+	if (err)
+		return err;
+
+	return idpf_set_q_coalesce(vport, ec, q_num, true);
+}
+
+/**
+ * idpf_get_msglevel - Get debug message level
+ * @netdev: network interface device structure
+ *
+ * Returns current debug message level.
+ */
+static u32 idpf_get_msglevel(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return 0;
+
+	return vport->adapter->msg_enable;
+}
+
+/**
+ * idpf_set_msglevel - Set debug message level
+ * @netdev: network interface device structure
+ * @data: message level
+ *
+ * Set current debug message level. Higher values cause the driver to
+ * be noisier.
+ */
+static void idpf_set_msglevel(struct net_device *netdev, u32 data)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return;
+
+	vport->adapter->msg_enable = data;
+}
+
+/**
+ * idpf_get_link_ksettings - Get Link Speed and Duplex settings
+ * @netdev: network interface device structure
+ * @cmd: ethtool command
+ *
+ * Reports speed/duplex settings.
+ **/
+static int idpf_get_link_ksettings(struct net_device *netdev,
+				   struct ethtool_link_ksettings *cmd)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	ethtool_link_ksettings_zero_link_mode(cmd, supported);
+	cmd->base.autoneg = AUTONEG_DISABLE;
+	cmd->base.port = PORT_NONE;
+	cmd->base.duplex = DUPLEX_FULL;
+	cmd->base.speed = vport->link_speed_mbps;
+	return 0;
+}
+
+static const struct ethtool_ops idpf_ethtool_ops = {
+	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
+				     ETHTOOL_COALESCE_USE_ADAPTIVE,
+	.get_msglevel		= idpf_get_msglevel,
+	.set_msglevel		= idpf_set_msglevel,
+	.get_link		= ethtool_op_get_link,
+	.get_coalesce		= idpf_get_coalesce,
+	.set_coalesce		= idpf_set_coalesce,
+	.get_per_queue_coalesce = idpf_get_per_q_coalesce,
+	.set_per_queue_coalesce = idpf_set_per_q_coalesce,
+	.get_ethtool_stats	= idpf_get_ethtool_stats,
+	.get_strings		= idpf_get_strings,
+	.get_sset_count		= idpf_get_sset_count,
+	.get_priv_flags		= idpf_get_priv_flags,
+	.set_priv_flags		= idpf_set_priv_flags,
+	.get_rxnfc		= idpf_get_rxnfc,
+	.set_rxnfc		= idpf_set_rxnfc,
+	.get_rxfh_key_size	= idpf_get_rxfh_key_size,
+	.get_rxfh_indir_size	= idpf_get_rxfh_indir_size,
+	.get_rxfh		= idpf_get_rxfh,
+	.set_rxfh		= idpf_set_rxfh,
+	.get_channels		= idpf_get_channels,
+	.set_channels		= idpf_set_channels,
+	.get_ringparam		= idpf_get_ringparam,
+	.set_ringparam		= idpf_set_ringparam,
+	.get_link_ksettings	= idpf_get_link_ksettings,
+};
+
+/**
+ * idpf_set_ethtool_ops - Initialize ethtool ops struct
+ * @netdev: network interface device structure
+ *
+ * Sets ethtool ops struct in our netdev so that ethtool can call
+ * our functions.
+ */
+void idpf_set_ethtool_ops(struct net_device *netdev)
+{
+	netdev->ethtool_ops = &idpf_ethtool_ops;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
new file mode 100644
index 000000000000..1933e452305e
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
@@ -0,0 +1,136 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _IDPF_LAN_PF_REGS_H_
+#define _IDPF_LAN_PF_REGS_H_
+
+/* Receive queues */
+#define PF_QRX_BASE			0x00000000
+#define PF_QRX_TAIL(_QRX)		(PF_QRX_BASE + (((_QRX) * 0x1000)))
+#define PF_QRX_BUFFQ_BASE		0x03000000
+#define PF_QRX_BUFFQ_TAIL(_QRX)		(PF_QRX_BUFFQ_BASE + (((_QRX) * 0x1000)))
+
+/* Transmit queues */
+#define PF_QTX_BASE			0x05000000
+#define PF_QTX_COMM_DBELL(_DBQM)	(PF_QTX_BASE + ((_DBQM) * 0x1000))
+
+/* Control(PF Mailbox) Queue */
+#define PF_FW_BASE			0x08400000
+
+#define PF_FW_ARQBAL			(PF_FW_BASE)
+#define PF_FW_ARQBAH			(PF_FW_BASE + 0x4)
+#define PF_FW_ARQLEN			(PF_FW_BASE + 0x8)
+#define PF_FW_ARQLEN_ARQLEN_S		0
+#define PF_FW_ARQLEN_ARQLEN_M		MAKEMASK(0x1FFF, PF_FW_ARQLEN_ARQLEN_S)
+#define PF_FW_ARQLEN_ARQVFE_S		28
+#define PF_FW_ARQLEN_ARQVFE_M		BIT(PF_FW_ARQLEN_ARQVFE_S)
+#define PF_FW_ARQLEN_ARQOVFL_S		29
+#define PF_FW_ARQLEN_ARQOVFL_M		BIT(PF_FW_ARQLEN_ARQOVFL_S)
+#define PF_FW_ARQLEN_ARQCRIT_S		30
+#define PF_FW_ARQLEN_ARQCRIT_M		BIT(PF_FW_ARQLEN_ARQCRIT_S)
+#define PF_FW_ARQLEN_ARQENABLE_S	31
+#define PF_FW_ARQLEN_ARQENABLE_M	BIT(PF_FW_ARQLEN_ARQENABLE_S)
+#define PF_FW_ARQH			(PF_FW_BASE + 0xC)
+#define PF_FW_ARQH_ARQH_S		0
+#define PF_FW_ARQH_ARQH_M		MAKEMASK(0x1FFF, PF_FW_ARQH_ARQH_S)
+#define PF_FW_ARQT			(PF_FW_BASE + 0x10)
+
+#define PF_FW_ATQBAL			(PF_FW_BASE + 0x14)
+#define PF_FW_ATQBAH			(PF_FW_BASE + 0x18)
+#define PF_FW_ATQLEN			(PF_FW_BASE + 0x1C)
+#define PF_FW_ATQLEN_ATQLEN_S		0
+#define PF_FW_ATQLEN_ATQLEN_M		MAKEMASK(0x3FF, PF_FW_ATQLEN_ATQLEN_S)
+#define PF_FW_ATQLEN_ATQVFE_S		28
+#define PF_FW_ATQLEN_ATQVFE_M		BIT(PF_FW_ATQLEN_ATQVFE_S)
+#define PF_FW_ATQLEN_ATQOVFL_S		29
+#define PF_FW_ATQLEN_ATQOVFL_M		BIT(PF_FW_ATQLEN_ATQOVFL_S)
+#define PF_FW_ATQLEN_ATQCRIT_S		30
+#define PF_FW_ATQLEN_ATQCRIT_M		BIT(PF_FW_ATQLEN_ATQCRIT_S)
+#define PF_FW_ATQLEN_ATQENABLE_S	31
+#define PF_FW_ATQLEN_ATQENABLE_M	BIT(PF_FW_ATQLEN_ATQENABLE_S)
+#define PF_FW_ATQH			(PF_FW_BASE + 0x20)
+#define PF_FW_ATQH_ATQH_S		0
+#define PF_FW_ATQH_ATQH_M		MAKEMASK(0x3FF, PF_FW_ATQH_ATQH_S)
+#define PF_FW_ATQT			(PF_FW_BASE + 0x24)
+
+/* Interrupts */
+#define PF_GLINT_BASE			0x08900000
+#define PF_GLINT_DYN_CTL(_INT)		(PF_GLINT_BASE + ((_INT) * 0x1000))
+#define PF_GLINT_DYN_CTL_INTENA_S	0
+#define PF_GLINT_DYN_CTL_INTENA_M	BIT(PF_GLINT_DYN_CTL_INTENA_S)
+#define PF_GLINT_DYN_CTL_CLEARPBA_S	1
+#define PF_GLINT_DYN_CTL_CLEARPBA_M	BIT(PF_GLINT_DYN_CTL_CLEARPBA_S)
+#define PF_GLINT_DYN_CTL_SWINT_TRIG_S	2
+#define PF_GLINT_DYN_CTL_SWINT_TRIG_M	BIT(PF_GLINT_DYN_CTL_SWINT_TRIG_S)
+#define PF_GLINT_DYN_CTL_ITR_INDX_S	3
+#define PF_GLINT_DYN_CTL_ITR_INDX_M	MAKEMASK(0x3, PF_GLINT_DYN_CTL_ITR_INDX_S)
+#define PF_GLINT_DYN_CTL_INTERVAL_S	5
+#define PF_GLINT_DYN_CTL_INTERVAL_M	BIT(PF_GLINT_DYN_CTL_INTERVAL_S)
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_S	24
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_M BIT(PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_S)
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_S	25
+#define PF_GLINT_DYN_CTL_SW_ITR_INDX_M	BIT(PF_GLINT_DYN_CTL_SW_ITR_INDX_S)
+#define PF_GLINT_DYN_CTL_WB_ON_ITR_S	30
+#define PF_GLINT_DYN_CTL_WB_ON_ITR_M	BIT(PF_GLINT_DYN_CTL_WB_ON_ITR_S)
+#define PF_GLINT_DYN_CTL_INTENA_MSK_S	31
+#define PF_GLINT_DYN_CTL_INTENA_MSK_M	BIT(PF_GLINT_DYN_CTL_INTENA_MSK_S)
+/* _ITR is ITR index, _INT is interrupt index, _itrn_indx_spacing is
+ * spacing b/w itrn registers of the same vector.
+ */
+#define PF_GLINT_ITR_ADDR(_ITR, _reg_start, _itrn_indx_spacing) \
+		((_reg_start) + (((_ITR)) * (_itrn_indx_spacing)))
+/* For PF, itrn_indx_spacing is 4 and itrn_reg_spacing is 0x1000 */
+#define PF_GLINT_ITR(_ITR, _INT) (PF_GLINT_BASE + (((_ITR) + 1) * 4) + ((_INT) * 0x1000))
+#define PF_GLINT_ITR_MAX_INDEX		2
+#define PF_GLINT_ITR_INTERVAL_S		0
+#define PF_GLINT_ITR_INTERVAL_M		MAKEMASK(0xFFF, PF_GLINT_ITR_INTERVAL_S)
+
+/* Timesync registers */
+#define PF_TIMESYNC_BASE		0x08404000
+#define PF_GLTSYN_CMD_SYNC		(PF_TIMESYNC_BASE)
+#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_S	0
+#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_M	MAKEMASK(0x3, PF_GLTSYN_CMD_SYNC_EXEC_CMD_S)
+#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_S	2
+#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_M	BIT(PF_GLTSYN_CMD_SYNC_SHTIME_EN_S)
+#define PF_GLTSYN_SHTIME_0		(PF_TIMESYNC_BASE + 0x4)
+#define PF_GLTSYN_SHTIME_L		(PF_TIMESYNC_BASE + 0x8)
+#define PF_GLTSYN_SHTIME_H		(PF_TIMESYNC_BASE + 0xC)
+#define PF_GLTSYN_ART_L			(PF_TIMESYNC_BASE + 0x10)
+#define PF_GLTSYN_ART_H			(PF_TIMESYNC_BASE + 0x14)
+
+/* Generic registers */
+#define PF_INT_DIR_OICR_ENA		0x08406000
+#define PF_INT_DIR_OICR_ENA_S		0
+#define PF_INT_DIR_OICR_ENA_M	MAKEMASK(0xFFFFFFFF, PF_INT_DIR_OICR_ENA_S)
+#define PF_INT_DIR_OICR			0x08406004
+#define PF_INT_DIR_OICR_TSYN_EVNT	0
+#define PF_INT_DIR_OICR_PHY_TS_0	BIT(1)
+#define PF_INT_DIR_OICR_PHY_TS_1	BIT(2)
+#define PF_INT_DIR_OICR_CAUSE		0x08406008
+#define PF_INT_DIR_OICR_CAUSE_CAUSE_S	0
+#define PF_INT_DIR_OICR_CAUSE_CAUSE_M	MAKEMASK(0xFFFFFFFF, PF_INT_DIR_OICR_CAUSE_CAUSE_S)
+#define PF_INT_PBA_CLEAR		0x0840600C
+
+#define PF_FUNC_RID			0x08406010
+#define PF_FUNC_RID_FUNCTION_NUMBER_S	0
+#define PF_FUNC_RID_FUNCTION_NUMBER_M	MAKEMASK(0x7, PF_FUNC_RID_FUNCTION_NUMBER_S)
+#define PF_FUNC_RID_DEVICE_NUMBER_S	3
+#define PF_FUNC_RID_DEVICE_NUMBER_M	MAKEMASK(0x1F, PF_FUNC_RID_DEVICE_NUMBER_S)
+#define PF_FUNC_RID_BUS_NUMBER_S	8
+#define PF_FUNC_RID_BUS_NUMBER_M	MAKEMASK(0xFF, PF_FUNC_RID_BUS_NUMBER_S)
+
+/* Reset registers */
+#define PFGEN_RTRIG			0x08407000
+#define PFGEN_RTRIG_CORER_S		0
+#define PFGEN_RTRIG_CORER_M		BIT(0)
+#define PFGEN_RTRIG_LINKR_S		1
+#define PFGEN_RTRIG_LINKR_M		BIT(1)
+#define PFGEN_RTRIG_IMCR_S		2
+#define PFGEN_RTRIG_IMCR_M		BIT(2)
+#define PFGEN_RSTAT			0x08407008 /* PFR Status */
+#define PFGEN_RSTAT_PFR_STATE_S		0
+#define PFGEN_RSTAT_PFR_STATE_M		MAKEMASK(0x3, PFGEN_RSTAT_PFR_STATE_S)
+#define PFGEN_CTRL			0x0840700C
+#define PFGEN_CTRL_PFSWR		BIT(0)
+
+#endif
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
new file mode 100644
index 000000000000..d58f1e7a7fc4
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_txrx.h
@@ -0,0 +1,422 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _IDPF_LAN_TXRX_H_
+#define _IDPF_LAN_TXRX_H_
+
+enum idpf_rss_hash {
+	/* Values 0 - 28 are reserved for future use */
+	IDPF_HASH_INVALID		= 0,
+	IDPF_HASH_NONF_UNICAST_IPV4_UDP	= 29,
+	IDPF_HASH_NONF_MULTICAST_IPV4_UDP,
+	IDPF_HASH_NONF_IPV4_UDP,
+	IDPF_HASH_NONF_IPV4_TCP_SYN_NO_ACK,
+	IDPF_HASH_NONF_IPV4_TCP,
+	IDPF_HASH_NONF_IPV4_SCTP,
+	IDPF_HASH_NONF_IPV4_OTHER,
+	IDPF_HASH_FRAG_IPV4,
+	/* Values 37-38 are reserved */
+	IDPF_HASH_NONF_UNICAST_IPV6_UDP	= 39,
+	IDPF_HASH_NONF_MULTICAST_IPV6_UDP,
+	IDPF_HASH_NONF_IPV6_UDP,
+	IDPF_HASH_NONF_IPV6_TCP_SYN_NO_ACK,
+	IDPF_HASH_NONF_IPV6_TCP,
+	IDPF_HASH_NONF_IPV6_SCTP,
+	IDPF_HASH_NONF_IPV6_OTHER,
+	IDPF_HASH_FRAG_IPV6,
+	IDPF_HASH_NONF_RSVD47,
+	IDPF_HASH_NONF_FCOE_OX,
+	IDPF_HASH_NONF_FCOE_RX,
+	IDPF_HASH_NONF_FCOE_OTHER,
+	/* Values 51-62 are reserved */
+	IDPF_HASH_L2_PAYLOAD		= 63,
+	IDPF_HASH_MAX
+};
+
+/* Supported RSS offloads */
+#define IDPF_DEFAULT_RSS_HASH ( \
+	BIT_ULL(IDPF_HASH_NONF_IPV4_UDP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV4_SCTP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV4_TCP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV4_OTHER) | \
+	BIT_ULL(IDPF_HASH_FRAG_IPV4) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV6_UDP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV6_TCP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV6_SCTP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV6_OTHER) | \
+	BIT_ULL(IDPF_HASH_FRAG_IPV6) | \
+	BIT_ULL(IDPF_HASH_L2_PAYLOAD))
+
+	/* TODO: Wrap belwo comment under internal flag
+	 * Below 6 pcktypes are not supported by FVL or older products
+	 * They are supported by FPK and future products
+	 */
+#define IDPF_DEFAULT_RSS_HASH_EXPANDED (IDPF_DEFAULT_RSS_HASH | \
+	BIT_ULL(IDPF_HASH_NONF_IPV4_TCP_SYN_NO_ACK) | \
+	BIT_ULL(IDPF_HASH_NONF_UNICAST_IPV4_UDP) | \
+	BIT_ULL(IDPF_HASH_NONF_MULTICAST_IPV4_UDP) | \
+	BIT_ULL(IDPF_HASH_NONF_IPV6_TCP_SYN_NO_ACK) | \
+	BIT_ULL(IDPF_HASH_NONF_UNICAST_IPV6_UDP) | \
+	BIT_ULL(IDPF_HASH_NONF_MULTICAST_IPV6_UDP))
+
+/* For idpf_splitq_base_tx_compl_desc */
+#define IDPF_TXD_COMPLQ_GEN_S	15
+#define IDPF_TXD_COMPLQ_GEN_M		BIT_ULL(IDPF_TXD_COMPLQ_GEN_S)
+#define IDPF_TXD_COMPLQ_COMPL_TYPE_S	11
+#define IDPF_TXD_COMPLQ_COMPL_TYPE_M	\
+	MAKEMASK(0x7UL, IDPF_TXD_COMPLQ_COMPL_TYPE_S)
+#define IDPF_TXD_COMPLQ_QID_S	0
+#define IDPF_TXD_COMPLQ_QID_M		MAKEMASK(0x3FFUL, IDPF_TXD_COMPLQ_QID_S)
+
+/* For base mode TX descriptors */
+
+#define IDPF_TXD_CTX_QW0_TUNN_L4T_CS_S	23
+#define IDPF_TXD_CTX_QW0_TUNN_L4T_CS_M	BIT_ULL(IDPF_TXD_CTX_QW0_TUNN_L4T_CS_S)
+#define IDPF_TXD_CTX_QW0_TUNN_DECTTL_S	19
+#define IDPF_TXD_CTX_QW0_TUNN_DECTTL_M	\
+	(0xFULL << IDPF_TXD_CTX_QW0_TUNN_DECTTL_S)
+#define IDPF_TXD_CTX_QW0_TUNN_NATLEN_S	12
+#define IDPF_TXD_CTX_QW0_TUNN_NATLEN_M	\
+	(0X7FULL << IDPF_TXD_CTX_QW0_TUNN_NATLEN_S)
+#define IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_S	11
+#define IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_M    \
+	BIT_ULL(IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_S)
+#define IDPF_TXD_CTX_EIP_NOINC_IPID_CONST	\
+	IDPF_TXD_CTX_QW0_TUNN_EIP_NOINC_M
+#define IDPF_TXD_CTX_QW0_TUNN_NATT_S	        9
+#define IDPF_TXD_CTX_QW0_TUNN_NATT_M	(0x3ULL << IDPF_TXD_CTX_QW0_TUNN_NATT_S)
+#define IDPF_TXD_CTX_UDP_TUNNELING	BIT_ULL(IDPF_TXD_CTX_QW0_TUNN_NATT_S)
+#define IDPF_TXD_CTX_GRE_TUNNELING	(0x2ULL << IDPF_TXD_CTX_QW0_TUNN_NATT_S)
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_S	2
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_M	\
+	(0x3FULL << IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_S)
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IP_S	0
+#define IDPF_TXD_CTX_QW0_TUNN_EXT_IP_M	\
+	(0x3ULL << IDPF_TXD_CTX_QW0_TUNN_EXT_IP_S)
+
+#define IDPF_TXD_CTX_QW1_MSS_S		50
+#define IDPF_TXD_CTX_QW1_MSS_M		\
+	MAKEMASK(0x3FFFULL, IDPF_TXD_CTX_QW1_MSS_S)
+#define IDPF_TXD_CTX_QW1_TSO_LEN_S	30
+#define IDPF_TXD_CTX_QW1_TSO_LEN_M	\
+	MAKEMASK(0x3FFFFULL, IDPF_TXD_CTX_QW1_TSO_LEN_S)
+#define IDPF_TXD_CTX_QW1_CMD_S		4
+#define IDPF_TXD_CTX_QW1_CMD_M		\
+	MAKEMASK(0xFFFUL, IDPF_TXD_CTX_QW1_CMD_S)
+#define IDPF_TXD_CTX_QW1_DTYPE_S	0
+#define IDPF_TXD_CTX_QW1_DTYPE_M	\
+	MAKEMASK(0xFUL, IDPF_TXD_CTX_QW1_DTYPE_S)
+#define IDPF_TXD_QW1_L2TAG1_S		48
+#define IDPF_TXD_QW1_L2TAG1_M		\
+	MAKEMASK(0xFFFFULL, IDPF_TXD_QW1_L2TAG1_S)
+#define IDPF_TXD_QW1_TX_BUF_SZ_S	34
+#define IDPF_TXD_QW1_TX_BUF_SZ_M	\
+	MAKEMASK(0x3FFFULL, IDPF_TXD_QW1_TX_BUF_SZ_S)
+#define IDPF_TXD_QW1_OFFSET_S		16
+#define IDPF_TXD_QW1_OFFSET_M		\
+	MAKEMASK(0x3FFFFULL, IDPF_TXD_QW1_OFFSET_S)
+#define IDPF_TXD_QW1_CMD_S		4
+#define IDPF_TXD_QW1_CMD_M		MAKEMASK(0xFFFUL, IDPF_TXD_QW1_CMD_S)
+#define IDPF_TXD_QW1_DTYPE_S		0
+#define IDPF_TXD_QW1_DTYPE_M		MAKEMASK(0xFUL, IDPF_TXD_QW1_DTYPE_S)
+
+/* TX Completion Descriptor Completion Types */
+#define IDPF_TXD_COMPLT_ITR_FLUSH	0
+#define IDPF_TXD_COMPLT_RULE_MISS	1
+#define IDPF_TXD_COMPLT_RS		2
+#define IDPF_TXD_COMPLT_REINJECTED	3
+#define IDPF_TXD_COMPLT_RE		4
+#define IDPF_TXD_COMPLT_SW_MARKER	5
+
+enum idpf_tx_desc_dtype_value {
+	IDPF_TX_DESC_DTYPE_DATA				= 0,
+	IDPF_TX_DESC_DTYPE_CTX				= 1,
+	IDPF_TX_DESC_DTYPE_REINJECT_CTX			= 2,
+	IDPF_TX_DESC_DTYPE_FLEX_DATA			= 3,
+	IDPF_TX_DESC_DTYPE_FLEX_CTX			= 4,
+	IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX			= 5,
+	IDPF_TX_DESC_DTYPE_FLEX_TSYN_L2TAG1		= 6,
+	IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2		= 7,
+	IDPF_TX_DESC_DTYPE_FLEX_TSO_L2TAG2_PARSTAG_CTX	= 8,
+	IDPF_TX_DESC_DTYPE_FLEX_HOSTSPLIT_SA_TSO_CTX	= 9,
+	IDPF_TX_DESC_DTYPE_FLEX_HOSTSPLIT_SA_CTX	= 10,
+	IDPF_TX_DESC_DTYPE_FLEX_L2TAG2_CTX		= 11,
+	IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE		= 12,
+	IDPF_TX_DESC_DTYPE_FLEX_HOSTSPLIT_TSO_CTX	= 13,
+	IDPF_TX_DESC_DTYPE_FLEX_HOSTSPLIT_CTX		= 14,
+	/* DESC_DONE - HW has completed write-back of descriptor */
+	IDPF_TX_DESC_DTYPE_DESC_DONE			= 15,
+};
+
+enum idpf_tx_ctx_desc_cmd_bits {
+	IDPF_TX_CTX_DESC_TSO		= 0x01,
+	IDPF_TX_CTX_DESC_TSYN		= 0x02,
+	IDPF_TX_CTX_DESC_IL2TAG2	= 0x04,
+	IDPF_TX_CTX_DESC_RSVD		= 0x08,
+	IDPF_TX_CTX_DESC_SWTCH_NOTAG	= 0x00,
+	IDPF_TX_CTX_DESC_SWTCH_UPLINK	= 0x10,
+	IDPF_TX_CTX_DESC_SWTCH_LOCAL	= 0x20,
+	IDPF_TX_CTX_DESC_SWTCH_VSI	= 0x30,
+	IDPF_TX_CTX_DESC_FILT_AU_EN	= 0x40,
+	IDPF_TX_CTX_DESC_FILT_AU_EVICT	= 0x80,
+	IDPF_TX_CTX_DESC_RSVD1		= 0xF00
+};
+
+enum idpf_tx_desc_len_fields {
+	/* Note: These are predefined bit offsets */
+	IDPF_TX_DESC_LEN_MACLEN_S	= 0, /* 7 BITS */
+	IDPF_TX_DESC_LEN_IPLEN_S	= 7, /* 7 BITS */
+	IDPF_TX_DESC_LEN_L4_LEN_S	= 14 /* 4 BITS */
+};
+
+enum idpf_tx_base_desc_cmd_bits {
+	IDPF_TX_DESC_CMD_EOP			= 0x0001,
+	IDPF_TX_DESC_CMD_RS			= 0x0002,
+	 /* only on VFs else RSVD */
+	IDPF_TX_DESC_CMD_ICRC			= 0x0004,
+	IDPF_TX_DESC_CMD_IL2TAG1		= 0x0008,
+	IDPF_TX_DESC_CMD_RSVD1			= 0x0010,
+	IDPF_TX_DESC_CMD_IIPT_NONIP		= 0x0000, /* 2 BITS */
+	IDPF_TX_DESC_CMD_IIPT_IPV6		= 0x0020, /* 2 BITS */
+	IDPF_TX_DESC_CMD_IIPT_IPV4		= 0x0040, /* 2 BITS */
+	IDPF_TX_DESC_CMD_IIPT_IPV4_CSUM		= 0x0060, /* 2 BITS */
+	IDPF_TX_DESC_CMD_RSVD2			= 0x0080,
+	IDPF_TX_DESC_CMD_L4T_EOFT_UNK		= 0x0000, /* 2 BITS */
+	IDPF_TX_DESC_CMD_L4T_EOFT_TCP		= 0x0100, /* 2 BITS */
+	IDPF_TX_DESC_CMD_L4T_EOFT_SCTP		= 0x0200, /* 2 BITS */
+	IDPF_TX_DESC_CMD_L4T_EOFT_UDP		= 0x0300, /* 2 BITS */
+	IDPF_TX_DESC_CMD_RSVD3			= 0x0400,
+	IDPF_TX_DESC_CMD_RSVD4			= 0x0800,
+};
+
+/* Transmit descriptors  */
+/* splitq tx buf, singleq tx buf and singleq compl desc */
+struct idpf_base_tx_desc {
+	__le64 buf_addr; /* Address of descriptor's data buf */
+	__le64 qw1; /* type_cmd_offset_bsz_l2tag1 */
+};/* read used with buffer queues*/
+
+struct idpf_splitq_tx_compl_desc {
+	/* qid=[10:0] comptype=[13:11] rsvd=[14] gen=[15] */
+	__le16 qid_comptype_gen;
+	union {
+		__le16 q_head; /* Queue head */
+		__le16 compl_tag; /* Completion tag */
+	} q_head_compl_tag;
+	u8 ts[3];
+	u8 rsvd; /* Reserved */
+
+};/* writeback used with completion queues*/
+
+/* Context descriptors */
+struct idpf_base_tx_ctx_desc {
+	struct {
+		__le32 tunneling_params;
+		__le16 l2tag2;
+		__le16 rsvd1;
+	} qw0;
+	__le64 qw1; /* type_cmd_tlen_mss/rt_hint */
+};
+
+/* Common cmd field defines for all desc except Flex Flow Scheduler (0x0C) */
+enum idpf_tx_flex_desc_cmd_bits {
+	IDPF_TX_FLEX_DESC_CMD_EOP			= 0x01,
+	IDPF_TX_FLEX_DESC_CMD_RS			= 0x02,
+	IDPF_TX_FLEX_DESC_CMD_RE			= 0x04,
+	IDPF_TX_FLEX_DESC_CMD_IL2TAG1			= 0x08,
+	IDPF_TX_FLEX_DESC_CMD_DUMMY			= 0x10,
+	IDPF_TX_FLEX_DESC_CMD_CS_EN			= 0x20,
+	IDPF_TX_FLEX_DESC_CMD_FILT_AU_EN		= 0x40,
+	IDPF_TX_FLEX_DESC_CMD_FILT_AU_EVICT		= 0x80,
+};
+
+struct idpf_flex_tx_desc {
+	__le64 buf_addr;	/* Packet buffer address */
+	struct {
+		__le16 cmd_dtype;
+#define IDPF_FLEX_TXD_QW1_DTYPE_S		0
+#define IDPF_FLEX_TXD_QW1_DTYPE_M		\
+		MAKEMASK(0x1FUL, IDPF_FLEX_TXD_QW1_DTYPE_S)
+#define IDPF_FLEX_TXD_QW1_CMD_S		5
+#define IDPF_FLEX_TXD_QW1_CMD_M		MAKEMASK(0x7FFUL, IDPF_TXD_QW1_CMD_S)
+		union {
+			/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_DATA_(0x03) */
+			u8 raw[4];
+
+			/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_TSYN_L2TAG1 (0x06) */
+			struct {
+				__le16 l2tag1;
+				u8 flex;
+				u8 tsync;
+			} tsync;
+
+			/* DTYPE=IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2 (0x07) */
+			struct {
+				__le16 l2tag1;
+				__le16 l2tag2;
+			} l2tags;
+		} flex;
+		__le16 buf_size;
+	} qw1;
+};
+
+struct idpf_flex_tx_sched_desc {
+	__le64 buf_addr;	/* Packet buffer address */
+
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE_16B (0x0C) */
+	struct {
+		u8 cmd_dtype;
+#define IDPF_TXD_FLEX_FLOW_DTYPE_M	0x1F
+#define IDPF_TXD_FLEX_FLOW_CMD_EOP	0x20
+#define IDPF_TXD_FLEX_FLOW_CMD_CS_EN	0x40
+#define IDPF_TXD_FLEX_FLOW_CMD_RE	0x80
+
+		/* [23:23] Horizon Overflow bit, [22:0] timestamp */
+		u8 ts[3];
+#define IDPF_TXD_FLOW_SCH_HORIZON_OVERFLOW_M	0x80
+
+		__le16 compl_tag;
+		__le16 rxr_bufsize;
+#define IDPF_TXD_FLEX_FLOW_RXR		0x4000
+#define IDPF_TXD_FLEX_FLOW_BUFSIZE_M	0x3FFF
+	} qw1;
+};
+
+/* Common cmd fields for all flex context descriptors
+ * Note: these defines already account for the 5 bit dtype in the cmd_dtype
+ * field
+ */
+enum idpf_tx_flex_ctx_desc_cmd_bits {
+	IDPF_TX_FLEX_CTX_DESC_CMD_TSO			= 0x0020,
+	IDPF_TX_FLEX_CTX_DESC_CMD_TSYN_EN		= 0x0040,
+	IDPF_TX_FLEX_CTX_DESC_CMD_L2TAG2		= 0x0080,
+	IDPF_TX_FLEX_CTX_DESC_CMD_SWTCH_UPLNK		= 0x0200, /* 2 bits */
+	IDPF_TX_FLEX_CTX_DESC_CMD_SWTCH_LOCAL		= 0x0400, /* 2 bits */
+	IDPF_TX_FLEX_CTX_DESC_CMD_SWTCH_TARGETVSI	= 0x0600, /* 2 bits */
+};
+
+/* Standard flex descriptor TSO context quad word */
+struct idpf_flex_tx_tso_ctx_qw {
+	__le32 flex_tlen;
+#define IDPF_TXD_FLEX_CTX_TLEN_M	0x3FFFF
+#define IDPF_TXD_FLEX_TSO_CTX_FLEX_S	24
+	__le16 mss_rt;
+#define IDPF_TXD_FLEX_CTX_MSS_RT_M	0x3FFF
+	u8 hdr_len;
+	u8 flex;
+};
+
+union idpf_flex_tx_ctx_desc {
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_CTX (0x04) */
+	struct {
+		u8 qw0_flex[8];
+		struct {
+			__le16 cmd_dtype;
+			__le16 l2tag1;
+			u8 qw1_flex[4];
+		} qw1;
+	} gen;
+
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX (0x05) */
+	struct {
+		struct idpf_flex_tx_tso_ctx_qw qw0;
+		struct {
+			__le16 cmd_dtype;
+			u8 flex[6];
+		} qw1;
+	} tso;
+
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_TSO_L2TAG2_PARSTAG_CTX (0x08) */
+	struct {
+		struct idpf_flex_tx_tso_ctx_qw qw0;
+		struct {
+			__le16 cmd_dtype;
+			__le16 l2tag2;
+			u8 flex0;
+			u8 ptag;
+			u8 flex1[2];
+		} qw1;
+	} tso_l2tag2_ptag;
+
+	/* DTYPE = IDPF_TX_DESC_DTYPE_FLEX_L2TAG2_CTX (0x0B) */
+	struct {
+		u8 qw0_flex[8];
+		struct {
+			__le16 cmd_dtype;
+			__le16 l2tag2;
+			u8 flex[4];
+		} qw1;
+	} l2tag2;
+
+	/* DTYPE = IDPF_TX_DESC_DTYPE_REINJECT_CTX (0x02) */
+	struct {
+		struct {
+			__le32 sa_domain;
+#define IDPF_TXD_FLEX_CTX_SA_DOM_M	0xFFFF
+#define IDPF_TXD_FLEX_CTX_SA_DOM_VAL	0x10000
+			__le32 sa_idx;
+#define IDPF_TXD_FLEX_CTX_SAIDX_M	0x1FFFFF
+		} qw0;
+		struct {
+			__le16 cmd_dtype;
+			__le16 txr2comp;
+#define IDPF_TXD_FLEX_CTX_TXR2COMP	0x1
+			__le16 miss_txq_comp_tag;
+			__le16 miss_txq_id;
+		} qw1;
+	} reinjection_pkt;
+};
+
+/* Host Split Context Descriptors */
+struct idpf_flex_tx_hs_ctx_desc {
+	union {
+		struct {
+			__le32 host_fnum_tlen;
+#define IDPF_TXD_FLEX_CTX_TLEN_S	0
+/* see IDPF_TXD_FLEX_CTX_TLEN_M for mask definition */
+#define IDPF_TXD_FLEX_CTX_FNUM_S	18
+#define IDPF_TXD_FLEX_CTX_FNUM_M	0x7FF
+#define IDPF_TXD_FLEX_CTX_HOST_S	29
+#define IDPF_TXD_FLEX_CTX_HOST_M	0x7
+			__le16 ftype_mss_rt;
+#define IDPF_TXD_FLEX_CTX_MSS_RT_0	0
+#define IDPF_TXD_FLEX_CTX_MSS_RT_M	0x3FFF
+#define IDPF_TXD_FLEX_CTX_FTYPE_S	14
+#define IDPF_TXD_FLEX_CTX_FTYPE_VF	MAKEMASK(0x0, IDPF_TXD_FLEX_CTX_FTYPE_S)
+#define IDPF_TXD_FLEX_CTX_FTYPE_VDEV	MAKEMASK(0x1, IDPF_TXD_FLEX_CTX_FTYPE_S)
+#define IDPF_TXD_FLEX_CTX_FTYPE_PF	MAKEMASK(0x2, IDPF_TXD_FLEX_CTX_FTYPE_S)
+			u8 hdr_len;
+			u8 ptag;
+		} tso;
+		struct {
+			u8 flex0[2];
+			__le16 host_fnum_ftype;
+			u8 flex1[3];
+			u8 ptag;
+		} no_tso;
+	} qw0;
+
+	__le64 qw1_cmd_dtype;
+#define IDPF_TXD_FLEX_CTX_QW1_PASID_S		16
+#define IDPF_TXD_FLEX_CTX_QW1_PASID_M		0xFFFFF
+#define IDPF_TXD_FLEX_CTX_QW1_PASID_VALID_S	36
+#define IDPF_TXD_FLEX_CTX_QW1_PASID_VALID	\
+		MAKEMASK(0x1, IDPF_TXD_FLEX_CTX_PASID_VALID_S)
+#define IDPF_TXD_FLEX_CTX_QW1_TPH_S		37
+#define IDPF_TXD_FLEX_CTX_QW1_TPH \
+		MAKEMASK(0x1, IDPF_TXD_FLEX_CTX_TPH_S)
+#define IDPF_TXD_FLEX_CTX_QW1_PFNUM_S		38
+#define IDPF_TXD_FLEX_CTX_QW1_PFNUM_M		0xF
+/* The following are only valid for DTYPE = 0x09 and DTYPE = 0x0A */
+#define IDPF_TXD_FLEX_CTX_QW1_SAIDX_S		42
+#define IDPF_TXD_FLEX_CTX_QW1_SAIDX_M		0x1FFFFF
+#define IDPF_TXD_FLEX_CTX_QW1_SAIDX_VAL_S	63
+#define IDPF_TXD_FLEX_CTX_QW1_SAIDX_VALID	\
+		MAKEMASK(0x1, IDPF_TXD_FLEX_CTX_QW1_SAIDX_VAL_S)
+/* The following are only valid for DTYPE = 0x0D and DTYPE = 0x0E */
+#define IDPF_TXD_FLEX_CTX_QW1_FLEX0_S		48
+#define IDPF_TXD_FLEX_CTX_QW1_FLEX0_M		0xFF
+#define IDPF_TXD_FLEX_CTX_QW1_FLEX1_S		56
+#define IDPF_TXD_FLEX_CTX_QW1_FLEX1_M		0xFF
+};
+#endif /* _IDPF_LAN_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
new file mode 100644
index 000000000000..25f3b12a129f
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lan_vf_regs.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _IDPF_LAN_VF_REGS_H_
+#define _IDPF_LAN_VF_REGS_H_
+
+/* Reset */
+#define VFGEN_RSTAT			0x00008800
+#define VFGEN_RSTAT_VFR_STATE_S		0
+#define VFGEN_RSTAT_VFR_STATE_M		MAKEMASK(0x3, VFGEN_RSTAT_VFR_STATE_S)
+
+/* Control(VF Mailbox) Queue */
+#define VF_BASE				0x00006000
+
+#define VF_ATQBAL			(VF_BASE + 0x1C00)
+#define VF_ATQBAH			(VF_BASE + 0x1800)
+#define VF_ATQLEN			(VF_BASE + 0x0800)
+#define VF_ATQLEN_ATQLEN_S		0
+#define VF_ATQLEN_ATQLEN_M		MAKEMASK(0x3FF, VF_ATQLEN_ATQLEN_S)
+#define VF_ATQLEN_ATQVFE_S		28
+#define VF_ATQLEN_ATQVFE_M		BIT(VF_ATQLEN_ATQVFE_S)
+#define VF_ATQLEN_ATQOVFL_S		29
+#define VF_ATQLEN_ATQOVFL_M		BIT(VF_ATQLEN_ATQOVFL_S)
+#define VF_ATQLEN_ATQCRIT_S		30
+#define VF_ATQLEN_ATQCRIT_M		BIT(VF_ATQLEN_ATQCRIT_S)
+#define VF_ATQLEN_ATQENABLE_S		31
+#define VF_ATQLEN_ATQENABLE_M		BIT(VF_ATQLEN_ATQENABLE_S)
+#define VF_ATQH				(VF_BASE + 0x0400)
+#define VF_ATQH_ATQH_S			0
+#define VF_ATQH_ATQH_M			MAKEMASK(0x3FF, VF_ATQH_ATQH_S)
+#define VF_ATQT				(VF_BASE + 0x2400)
+
+#define VF_ARQBAL			(VF_BASE + 0x0C00)
+#define VF_ARQBAH			(VF_BASE)
+#define VF_ARQLEN			(VF_BASE + 0x2000)
+#define VF_ARQLEN_ARQLEN_S		0
+#define VF_ARQLEN_ARQLEN_M		MAKEMASK(0x3FF, VF_ARQLEN_ARQLEN_S)
+#define VF_ARQLEN_ARQVFE_S		28
+#define VF_ARQLEN_ARQVFE_M		BIT(VF_ARQLEN_ARQVFE_S)
+#define VF_ARQLEN_ARQOVFL_S		29
+#define VF_ARQLEN_ARQOVFL_M		BIT(VF_ARQLEN_ARQOVFL_S)
+#define VF_ARQLEN_ARQCRIT_S		30
+#define VF_ARQLEN_ARQCRIT_M		BIT(VF_ARQLEN_ARQCRIT_S)
+#define VF_ARQLEN_ARQENABLE_S		31
+#define VF_ARQLEN_ARQENABLE_M		BIT(VF_ARQLEN_ARQENABLE_S)
+#define VF_ARQH				(VF_BASE + 0x1400)
+#define VF_ARQH_ARQH_S			0
+#define VF_ARQH_ARQH_M			MAKEMASK(0x1FFF, VF_ARQH_ARQH_S)
+#define VF_ARQT				(VF_BASE + 0x1000)
+
+/* Transmit queues */
+#define VF_QTX_TAIL_BASE		0x00000000
+#define VF_QTX_TAIL(_QTX)		(VF_QTX_TAIL_BASE + (_QTX) * 0x4)
+#define VF_QTX_TAIL_EXT_BASE		0x00040000
+#define VF_QTX_TAIL_EXT(_QTX)		(VF_QTX_TAIL_EXT_BASE + ((_QTX) * 4))
+
+/* Receive queues */
+#define VF_QRX_TAIL_BASE		0x00002000
+#define VF_QRX_TAIL(_QRX)		(VF_QRX_TAIL_BASE + ((_QRX) * 4))
+#define VF_QRX_TAIL_EXT_BASE		0x00050000
+#define VF_QRX_TAIL_EXT(_QRX)		(VF_QRX_TAIL_EXT_BASE + ((_QRX) * 4))
+#define VF_QRXB_TAIL_BASE		0x00060000
+#define VF_QRXB_TAIL(_QRX)		(VF_QRXB_TAIL_BASE + ((_QRX) * 4))
+
+/* Interrupts */
+#define VF_INT_DYN_CTL0			0x00005C00
+#define VF_INT_DYN_CTL0_INTENA_S	0
+#define VF_INT_DYN_CTL0_INTENA_M	BIT(VF_INT_DYN_CTL0_INTENA_S)
+#define VF_INT_DYN_CTL0_ITR_INDX_S	3
+#define VF_INT_DYN_CTL0_ITR_INDX_M MAKEMASK(0x3, VF_INT_DYN_CTL0_ITR_INDX_S)
+#define VF_INT_DYN_CTLN(_INT)		(0x00003800 + ((_INT) * 4))
+#define VF_INT_DYN_CTLN_EXT(_INT)	(0x00070000 + ((_INT) * 4))
+#define VF_INT_DYN_CTLN_INTENA_S	0
+#define VF_INT_DYN_CTLN_INTENA_M	BIT(VF_INT_DYN_CTLN_INTENA_S)
+#define VF_INT_DYN_CTLN_CLEARPBA_S	1
+#define VF_INT_DYN_CTLN_CLEARPBA_M	BIT(VF_INT_DYN_CTLN_CLEARPBA_S)
+#define VF_INT_DYN_CTLN_SWINT_TRIG_S	2
+#define VF_INT_DYN_CTLN_SWINT_TRIG_M	BIT(VF_INT_DYN_CTLN_SWINT_TRIG_S)
+#define VF_INT_DYN_CTLN_ITR_INDX_S	3
+#define VF_INT_DYN_CTLN_ITR_INDX_M	MAKEMASK(0x3, VF_INT_DYN_CTLN_ITR_INDX_S)
+#define VF_INT_DYN_CTLN_INTERVAL_S	5
+#define VF_INT_DYN_CTLN_INTERVAL_M	BIT(VF_INT_DYN_CTLN_INTERVAL_S)
+#define VF_INT_DYN_CTLN_SW_ITR_INDX_ENA_S 24
+#define VF_INT_DYN_CTLN_SW_ITR_INDX_ENA_M BIT(VF_INT_DYN_CTLN_SW_ITR_INDX_ENA_S)
+#define VF_INT_DYN_CTLN_SW_ITR_INDX_S	25
+#define VF_INT_DYN_CTLN_SW_ITR_INDX_M	BIT(VF_INT_DYN_CTLN_SW_ITR_INDX_S)
+#define VF_INT_DYN_CTLN_WB_ON_ITR_S	30
+#define VF_INT_DYN_CTLN_WB_ON_ITR_M	BIT(VF_INT_DYN_CTLN_WB_ON_ITR_S)
+#define VF_INT_DYN_CTLN_INTENA_MSK_S	31
+#define VF_INT_DYN_CTLN_INTENA_MSK_M	BIT(VF_INT_DYN_CTLN_INTENA_MSK_S)
+/* _ITR is ITR index, _INT is interrupt index, _itrn_indx_spacing is spacing
+ * b/w itrn registers of the same vector
+ */
+#define VF_INT_ITR0(_ITR)		(0x00004C00 + ((_ITR) * 4))
+#define VF_INT_ITRN_ADDR(_ITR, _reg_start, _itrn_indx_spacing) \
+		 ((_reg_start) + (((_ITR)) * (_itrn_indx_spacing)))
+/* For VF with 16 vector support, itrn_reg_spacing is 0x4 and itrn_indx_spacing is 0x40 */
+#define VF_INT_ITRN(_INT, _ITR)	(0x00002800 + ((_INT) * 4) + ((_ITR) * 0x40))
+/* For VF with 64 vector support, itrn_reg_spacing is 0x4 and itrn_indx_spacing is 0x100 */
+#define VF_INT_ITRN_64(_INT, _ITR) (0x00002C00 + ((_INT) * 4) + ((_ITR) * 0x100))
+/* For VF with 2k vector support, itrn_reg_spacing is 0x4 and itrn_indx_spacing is 0x2000 */
+#define VF_INT_ITRN_2K(_INT, _ITR) (0x00072000 + ((_INT) * 4) + ((_ITR) * 0x2000))
+#define VF_INT_ITRN_MAX_INDEX		2
+#define VF_INT_ITRN_INTERVAL_S		0
+#define VF_INT_ITRN_INTERVAL_M		MAKEMASK(0xFFF, VF_INT_ITRN_INTERVAL_S)
+#define VF_INT_PBA_CLEAR		0x00008900
+
+#define VF_INT_ICR0_ENA1		0x00005000
+#define VF_INT_ICR0_ENA1_ADMINQ_S	30
+#define VF_INT_ICR0_ENA1_ADMINQ_M	BIT(VF_INT_ICR0_ENA1_ADMINQ_S)
+#define VF_INT_ICR0_ENA1_RSVD_S		31
+#define VF_INT_ICR01			0x00004800
+#define VF_QF_HENA(_i)			(0x0000C400 + ((_i) * 4))
+#define VF_QF_HENA_MAX_INDX		1
+#define VF_QF_HKEY(_i)			(0x0000CC00 + ((_i) * 4))
+#define VF_QF_HKEY_MAX_INDX		12
+#define VF_QF_HLUT(_i)			(0x0000D000 + ((_i) * 4))
+#define VF_QF_HLUT_MAX_INDX		15
+#endif
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
new file mode 100644
index 000000000000..92dd067702b5
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -0,0 +1,2663 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include "idpf.h"
+
+static const struct net_device_ops idpf_netdev_ops_splitq;
+static const struct net_device_ops idpf_netdev_ops_singleq;
+
+const char * const idpf_vport_vc_state_str[] = {
+	IDPF_FOREACH_VPORT_VC_STATE(IDPF_GEN_STRING)
+};
+
+/**
+ * idpf_is_feature_ena - Determine if a particular feature is enabled
+ * @vport: vport to check
+ * @feature: netdev flag to check
+ *
+ * Returns true or false if a particular feature is enabled.
+ */
+bool idpf_is_feature_ena(struct idpf_vport *vport, netdev_features_t feature)
+{
+	return vport->netdev->features & feature;
+}
+
+/**
+ * idpf_netdev_to_vport - get a vport handle from a netdev
+ * @netdev: network interface device structure
+ *
+ * It's possible for the vport to be NULL. Caller must check for a valid
+ * pointer.
+ */
+struct idpf_vport *idpf_netdev_to_vport(struct net_device *netdev)
+{
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+
+	return np->vport;
+}
+
+/**
+ * idpf_init_vector_stack - Fill the MSIX vector stack with vector index
+ * @adapter: private data struct
+ *
+ * Return 0 on success, error on failure
+ */
+int idpf_init_vector_stack(struct idpf_adapter *adapter)
+{
+	struct idpf_vector_lifo *stack;
+	int i, err = 0;
+	u16 min_vec;
+
+	mutex_lock(&adapter->vector_lock);
+	min_vec = adapter->num_msix_entries - adapter->num_avail_msix;
+	stack = &adapter->vector_stack;
+	stack->size = adapter->num_msix_entries;
+	/* set the base and top to point at start of the 'free pool' to
+	 * distribute the unused vectors on-demand basis
+	 */
+	stack->base = min_vec;
+	stack->top = min_vec;
+
+	stack->vec_idx = kcalloc(stack->size, sizeof(u16), GFP_KERNEL);
+	if (!stack->vec_idx) {
+		err = -ENOMEM;
+		goto rel_lock;
+	}
+
+	for (i = 0; i < stack->size; i++)
+		stack->vec_idx[i] = i;
+
+rel_lock:
+	mutex_unlock(&adapter->vector_lock);
+
+	return err;
+}
+
+/**
+ * idpf_deinit_vector_stack - zero out the MSIX vector stack
+ * @adapter: private data struct
+ */
+void idpf_deinit_vector_stack(struct idpf_adapter *adapter)
+{
+	struct idpf_vector_lifo *stack;
+
+	mutex_lock(&adapter->vector_lock);
+	stack = &adapter->vector_stack;
+	kfree(stack->vec_idx);
+	stack->vec_idx = NULL;
+	mutex_unlock(&adapter->vector_lock);
+}
+
+/**
+ * idpf_mb_intr_rel_irq - Free the IRQ association with the OS
+ * @adapter: adapter structure
+ */
+static void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
+{
+	int irq_num;
+
+	irq_num = adapter->msix_entries[0].vector;
+	free_irq(irq_num, adapter);
+}
+
+/**
+ * idpf_intr_rel - Release interrupt capabilities and free memory
+ * @adapter: adapter to disable interrupts on
+ */
+void idpf_intr_rel(struct idpf_adapter *adapter)
+{
+	int err;
+
+	if (!adapter->msix_entries)
+		return;
+	clear_bit(__IDPF_MB_INTR_MODE, adapter->flags);
+	clear_bit(__IDPF_MB_INTR_TRIGGER, adapter->flags);
+	idpf_mb_intr_rel_irq(adapter);
+
+	pci_free_irq_vectors(adapter->pdev);
+
+	err = idpf_send_dealloc_vectors_msg(adapter);
+	if (err)
+		dev_err(&adapter->pdev->dev,
+			"Failed to deallocate vectors: %d\n", err);
+	idpf_deinit_vector_stack(adapter);
+	kfree(adapter->msix_entries);
+	adapter->msix_entries = NULL;
+}
+
+/**
+ * idpf_mb_intr_clean - Interrupt handler for the mailbox
+ * @irq: interrupt number
+ * @data: pointer to the adapter structure
+ */
+static irqreturn_t idpf_mb_intr_clean(int __always_unused irq, void *data)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)data;
+
+	set_bit(__IDPF_MB_INTR_TRIGGER, adapter->flags);
+	mod_delayed_work(adapter->serv_wq, &adapter->serv_task,
+			 msecs_to_jiffies(0));
+	return IRQ_HANDLED;
+}
+
+/**
+ * idpf_mb_irq_enable - Enable MSIX interrupt for the mailbox
+ * @adapter: adapter to get the hardware address for register write
+ */
+static void idpf_mb_irq_enable(struct idpf_adapter *adapter)
+{
+	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
+	u32 val;
+
+	val = intr->dyn_ctl_intena_m | intr->dyn_ctl_itridx_m;
+	writel(val, intr->dyn_ctl);
+	writel(intr->icr_ena_ctlq_m, intr->icr_ena);
+}
+
+/**
+ * idpf_mb_intr_req_irq - Request irq for the mailbox interrupt
+ * @adapter: adapter structure to pass to the mailbox irq handler
+ */
+static int idpf_mb_intr_req_irq(struct idpf_adapter *adapter)
+{
+	struct idpf_q_vector *mb_vector = &adapter->mb_vector;
+	int irq_num, mb_vidx = 0, err;
+
+	irq_num = adapter->msix_entries[mb_vidx].vector;
+	snprintf(mb_vector->name, sizeof(mb_vector->name) - 1,
+		 "%s-%s-%d", dev_driver_string(&adapter->pdev->dev),
+		 "Mailbox", mb_vidx);
+	err = request_irq(irq_num, adapter->irq_mb_handler, 0,
+			  mb_vector->name, adapter);
+	if (err) {
+		dev_err(&adapter->pdev->dev,
+			"Request_irq for mailbox failed, error: %d\n", err);
+		return err;
+	}
+	set_bit(__IDPF_MB_INTR_MODE, adapter->flags);
+	return 0;
+}
+
+/**
+ * idpf_get_mb_vec_id - Get vector index for mailbox
+ * @adapter: adapter structure to access the vector chunks
+ *
+ * The first vector id in the requested vector chunks from the CP is for
+ * the mailbox
+ */
+static void idpf_get_mb_vec_id(struct idpf_adapter *adapter)
+{
+	if (adapter->req_vec_chunks)
+		adapter->mb_vector.v_idx =
+			le16_to_cpu(adapter->caps.mailbox_vector_id);
+	else
+		adapter->mb_vector.v_idx = 0;
+}
+
+/**
+ * idpf_mb_intr_init - Initialize the mailbox interrupt
+ * @adapter: adapter structure to store the mailbox vector
+ */
+static int idpf_mb_intr_init(struct idpf_adapter *adapter)
+{
+	adapter->dev_ops.reg_ops.mb_intr_reg_init(adapter);
+	adapter->irq_mb_handler = idpf_mb_intr_clean;
+	return idpf_mb_intr_req_irq(adapter);
+}
+
+/**
+ * idpf_vector_lifo_push - push MSIX vector index onto stack
+ * @adapter: private data struct
+ * @vec_idx: vector index to store
+ */
+static int idpf_vector_lifo_push(struct idpf_adapter *adapter, u16 vec_idx)
+{
+	struct idpf_vector_lifo *stack = &adapter->vector_stack;
+
+	lockdep_assert_held(&adapter->vector_lock);
+
+	if (stack->top == stack->base) {
+		dev_err(&adapter->pdev->dev, "Exceeded the vector stack limit: %d\n",
+			stack->top);
+		return -EINVAL;
+	}
+
+	stack->vec_idx[--stack->top] = vec_idx;
+	return 0;
+}
+
+/**
+ * idpf_vector_lifo_pop - pop MSIX vector index from stack
+ * @adapter: private data struct
+ */
+static int idpf_vector_lifo_pop(struct idpf_adapter *adapter)
+{
+	struct idpf_vector_lifo *stack = &adapter->vector_stack;
+
+	lockdep_assert_held(&adapter->vector_lock);
+
+	if (stack->top == stack->size) {
+		dev_err(&adapter->pdev->dev, "No interrupt vectors are available to distribute!\n");
+		return -EINVAL;
+	}
+
+	return stack->vec_idx[stack->top++];
+}
+
+/**
+ * idpf_vector_stash - Store the vector indexes onto the stack
+ * @adapter: private data struct
+ * @q_vector_idxs: vector index array
+ * @vec_info: info related to the number of vectors
+ *
+ * This function is a no-op if there are no vectors indexes to be stashed
+ */
+static void idpf_vector_stash(struct idpf_adapter *adapter, u16 *q_vector_idxs,
+			      struct idpf_vector_info *vec_info)
+{
+	int i, base = 0;
+	u16 vec_idx;
+
+	lockdep_assert_held(&adapter->vector_lock);
+
+	if (!vec_info->num_curr_vecs)
+		return;
+
+	/* For default vports, no need to stash vector allocated from the
+	 * default pool onto the stack
+	 */
+	if (vec_info->default_vport)
+		base = IDPF_MIN_Q_VEC;
+
+	for (i = vec_info->num_curr_vecs - 1; i >= base ; i--) {
+		vec_idx = q_vector_idxs[i];
+		idpf_vector_lifo_push(adapter, vec_idx);
+		adapter->num_avail_msix++;
+	}
+}
+
+/**
+ * idpf_req_rel_vector_indexes - Request or release MSIX vector indexes
+ * @adapter: driver specific private structure
+ * @q_vector_idxs: vector index array
+ * @vec_info: info related to the number of vectors
+ *
+ * This is the core function to distribute the MSIX vectors acquired from the
+ * OS. It expectes the caller to pass the number of vectors required and
+ * also previously allocated. First, it stashes previously allocated vector
+ * indexes on to the stack and then figures out if it can allocate requested
+ * vectors. It can wait on acquiring the mutex lock. If the caller passes 0 as
+ * requested vectors, then this function just stashes the already allocated
+ * vectors and returns 0.
+ *
+ * Returns actual number of vectors allocated on success, error value on failure
+ * If 0 is returned, implies the stack has no vectors to allocate which is also
+ * a failure case for the caller
+ */
+int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter, u16 *q_vector_idxs,
+				struct idpf_vector_info *vec_info)
+{
+	u16 avail_q_vecs, num_req_vecs, num_alloc_vecs = 0;
+	struct idpf_vector_lifo *stack;
+	int i, j, vecid, max_vecs = 0;
+
+	mutex_lock(&adapter->vector_lock);
+	stack = &adapter->vector_stack;
+	num_req_vecs = vec_info->num_req_vecs;
+
+	/* Stash interrupt vector indexes onto the stack if required */
+	idpf_vector_stash(adapter, q_vector_idxs, vec_info);
+
+	if (!num_req_vecs)
+		goto rel_lock;
+
+	if (vec_info->default_vport) {
+		/* As IDPF_MIN_Q_VEC per default vport is put aside in the
+		 * default pool of the stack, use them for default vports
+		 */
+		j = (vec_info->index * IDPF_MIN_Q_VEC)  + IDPF_MBX_Q_VEC;
+		for (i = 0; i < IDPF_MIN_Q_VEC; i++) {
+			q_vector_idxs[num_alloc_vecs++] = stack->vec_idx[j++];
+			num_req_vecs--;
+		}
+	}
+
+	/* Find if stack has enough vector to allocate */
+	avail_q_vecs = adapter->num_avail_msix;
+	if (avail_q_vecs >= num_req_vecs)
+		max_vecs = num_req_vecs;
+	else if (avail_q_vecs)
+		max_vecs = avail_q_vecs;
+
+	for (j = 0; j < max_vecs; j++) {
+		vecid = idpf_vector_lifo_pop(adapter);
+		q_vector_idxs[num_alloc_vecs++] = vecid;
+	}
+	adapter->num_avail_msix -= max_vecs;
+
+rel_lock:
+	mutex_unlock(&adapter->vector_lock);
+	return num_alloc_vecs;
+}
+
+/**
+ * idpf_intr_req - Request interrupt capabilities
+ * @adapter: adapter to enable interrupts on
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_intr_req(struct idpf_adapter *adapter)
+{
+	u16 default_vports = idpf_get_default_vports(adapter);
+	int num_q_vecs, total_vecs, num_vec_ids;
+	int min_vectors, v_actual, err = 0;
+	unsigned int vector;
+	u16 *vecids;
+
+	total_vecs = idpf_get_reserved_vecs(adapter);
+	num_q_vecs = total_vecs - IDPF_MBX_Q_VEC;
+
+	err = idpf_send_alloc_vectors_msg(adapter, num_q_vecs);
+	if (err) {
+		dev_err(&adapter->pdev->dev,
+			"Failed to allocate vectors: %d\n", err);
+		return -EAGAIN;
+	}
+
+	min_vectors = IDPF_MBX_Q_VEC + (IDPF_MIN_Q_VEC * default_vports);
+	v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
+					 total_vecs, PCI_IRQ_MSIX);
+	if (v_actual < min_vectors) {
+		dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors: %d\n",
+			v_actual);
+		err = -EAGAIN;
+		goto send_dealloc_vecs;
+	}
+
+	adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
+					GFP_KERNEL);
+
+	if (!adapter->msix_entries) {
+		err = -ENOMEM;
+		goto free_irq;
+	}
+
+	idpf_get_mb_vec_id(adapter);
+
+	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
+	if (!vecids) {
+		err = -ENOMEM;
+		goto free_msix;
+	}
+
+	if (adapter->req_vec_chunks) {
+		struct virtchnl2_vector_chunks *vchunks;
+		struct virtchnl2_alloc_vectors *ac;
+
+		ac = adapter->req_vec_chunks;
+		vchunks = &ac->vchunks;
+
+		num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
+					       vchunks);
+		if (num_vec_ids < v_actual) {
+			err = -EINVAL;
+			goto free_vecids;
+		}
+	} else {
+		int i = 0;
+
+		for (i = 0; i < v_actual; i++)
+			vecids[i] = i;
+	}
+
+	for (vector = 0; vector < v_actual; vector++) {
+		adapter->msix_entries[vector].entry = vecids[vector];
+		adapter->msix_entries[vector].vector =
+			pci_irq_vector(adapter->pdev, vector);
+	}
+
+	adapter->num_req_msix = total_vecs;
+	adapter->num_msix_entries = v_actual;
+	/* 'num_avail_msix' is used to distribute excess vectors to the vports
+	 * after considering the minimum vectors required per each default
+	 * vport
+	 */
+	adapter->num_avail_msix = v_actual - min_vectors;
+
+	/* Fill MSIX vector lifo stack with vector indexes */
+	err = idpf_init_vector_stack(adapter);
+	if (err)
+		goto free_vecids;
+
+	err = idpf_mb_intr_init(adapter);
+	if (err)
+		goto deinit_vec_stack;
+	idpf_mb_irq_enable(adapter);
+	kfree(vecids);
+	return err;
+
+deinit_vec_stack:
+	idpf_deinit_vector_stack(adapter);
+free_vecids:
+	kfree(vecids);
+free_msix:
+	kfree(adapter->msix_entries);
+	adapter->msix_entries = NULL;
+free_irq:
+	pci_free_irq_vectors(adapter->pdev);
+send_dealloc_vecs:
+	idpf_send_dealloc_vectors_msg(adapter);
+
+	return err;
+}
+
+/**
+ * idpf_find_mac_filter - Search filter list for specific mac filter
+ * @vport: main vport structure
+ * @macaddr: the MAC address
+ *
+ * Returns ptr to the filter object or NULL. Must be called while holding the
+ * mac_filter_list_lock.
+ **/
+static struct
+idpf_mac_filter *idpf_find_mac_filter(struct idpf_vport *vport,
+				      const u8 *macaddr)
+{
+	struct idpf_vport_user_config_data *config_data;
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_mac_filter *f;
+
+	if (!macaddr)
+		return NULL;
+
+	config_data = &adapter->vport_config[vport->idx]->user_config;
+	list_for_each_entry(f, &config_data->mac_filter_list, list) {
+		if (ether_addr_equal(macaddr, f->macaddr))
+			return f;
+	}
+	return NULL;
+}
+
+/**
+ * __idpf_del_mac_filter - Delete a MAC filter from the filter list
+ * @vport: main vport structure
+ * @macaddr: the MAC address
+ *
+ * Removes filter from list
+ **/
+static int __idpf_del_mac_filter(struct idpf_vport *vport, const u8 *macaddr)
+{
+	struct idpf_mac_filter *f;
+
+	if (!macaddr)
+		return -EINVAL;
+
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	f = idpf_find_mac_filter(vport, macaddr);
+	if (f) {
+		list_del(&f->list);
+		kfree(f);
+	}
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+
+	return 0;
+}
+
+/**
+ * idpf_del_mac_filter - Delete a MAC filter from the filter list
+ * @vport: main vport structure
+ * @macaddr: the MAC address
+ * @async: Don't wait for return message
+ *
+ * Removes filter from list and if interface is up, tells hardware about the
+ * removed filter.
+ **/
+static int idpf_del_mac_filter(struct idpf_vport *vport, const u8 *macaddr,
+			       bool async)
+{
+	struct idpf_mac_filter *f;
+	int err = 0;
+
+	if (!macaddr)
+		return -EINVAL;
+
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	f = idpf_find_mac_filter(vport, macaddr);
+	if (f) {
+		f->remove = true;
+	} else {
+		spin_unlock_bh(&vport->mac_filter_list_lock);
+		return -EINVAL;
+	}
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+
+	if (vport->state == __IDPF_VPORT_UP) {
+		err = idpf_add_del_mac_filters(vport, false, async);
+		if (err)
+			return err;
+	}
+
+	return  __idpf_del_mac_filter(vport, macaddr);
+}
+
+/**
+ * __idpf_add_mac_filter - Add mac filter helper function
+ * @vport: main vport struct
+ * @macaddr: address to add
+ *
+ * Takes mac_filter_list_lock spinlock to add new filter to list.
+ */
+static int __idpf_add_mac_filter(struct idpf_vport *vport, const u8 *macaddr)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	struct idpf_mac_filter *f = NULL;
+	int err = 0;
+
+	vport_config = adapter->vport_config[vport->idx];
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	f = idpf_find_mac_filter(vport, macaddr);
+	if (f) {
+		f->remove = false;
+		goto unlock;
+	}
+
+	f = kzalloc(sizeof(*f), GFP_ATOMIC);
+	if (!f) {
+		err = -ENOMEM;
+		goto unlock;
+	}
+
+	ether_addr_copy(f->macaddr, macaddr);
+	list_add_tail(&f->list, &vport_config->user_config.mac_filter_list);
+	f->add = true;
+
+unlock:
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+	return err;
+}
+
+/**
+ * idpf_add_mac_filter - Add a mac filter to the filter list
+ * @vport: main vport structure
+ * @macaddr: the MAC address
+ * @async: Don't wait for return message
+ *
+ * Returns 0 on success or error on failure. If interface is up, we'll also
+ * send the virtchnl message to tell hardware about the filter.
+ **/
+static int idpf_add_mac_filter(struct idpf_vport *vport,
+			       const u8 *macaddr, bool async)
+{
+	int err = 0;
+
+	if (!macaddr)
+		return -EINVAL;
+
+	err = __idpf_add_mac_filter(vport, macaddr);
+	if (err)
+		return err;
+
+	if (vport->state == __IDPF_VPORT_UP)
+		err = idpf_add_del_mac_filters(vport, true, async);
+
+	return err;
+}
+
+/**
+ * idpf_del_all_mac_filters - Delete all MAC filters in list
+ * @vport: main vport struct
+ *
+ * Takes mac_filter_list_lock spinlock.  Deletes all filters
+ */
+static void idpf_del_all_mac_filters(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	struct idpf_mac_filter *f, *ftmp;
+
+	vport_config = adapter->vport_config[vport->idx];
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	list_for_each_entry_safe(f, ftmp, &vport_config->user_config.mac_filter_list,
+				 list) {
+		list_del(&f->list);
+		kfree(f);
+	}
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+}
+
+/**
+ * idpf_restore_mac_filters - Re-add all MAC filters in list
+ * @vport: main vport struct
+ *
+ * Takes mac_filter_list_lock spinlock.  Sets add field to true for filters to
+ * resync filters back to HW.
+ */
+static void idpf_restore_mac_filters(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	struct idpf_mac_filter *f;
+
+	vport_config = adapter->vport_config[vport->idx];
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	list_for_each_entry(f, &vport_config->user_config.mac_filter_list, list)
+		f->add = true;
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+
+	idpf_add_del_mac_filters(vport, true, false);
+}
+
+/**
+ * idpf_remove_mac_filters - Remove all MAC filters in list
+ * @vport: main vport struct
+ *
+ * Takes mac_filter_list_lock spinlock.  Sets remove field to true for filters to
+ * remove filters in  HW.
+ */
+static void idpf_remove_mac_filters(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	struct idpf_mac_filter *f;
+
+	vport_config = adapter->vport_config[vport->idx];
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	list_for_each_entry(f, &vport_config->user_config.mac_filter_list, list)
+		f->remove = true;
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+
+	idpf_add_del_mac_filters(vport, false, false);
+}
+
+/**
+ * idpf_deinit_mac_addr - deinitialize mac address for vport
+ * @vport: main vport structure
+ */
+static void idpf_deinit_mac_addr(struct idpf_vport *vport)
+{
+	struct idpf_mac_filter *f;
+
+	spin_lock_bh(&vport->mac_filter_list_lock);
+	f = idpf_find_mac_filter(vport, vport->default_mac_addr);
+	if (f) {
+		list_del(&f->list);
+		kfree(f);
+	}
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+}
+
+/**
+ * idpf_init_mac_addr - initialize mac address for vport
+ * @vport: main vport structure
+ * @netdev: pointer to netdev struct associated with this vport
+ */
+static int idpf_init_mac_addr(struct idpf_vport *vport,
+			      struct net_device *netdev)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int err = 0;
+
+	if (is_valid_ether_addr(vport->default_mac_addr)) {
+		eth_hw_addr_set(netdev, vport->default_mac_addr);
+		ether_addr_copy(netdev->perm_addr, vport->default_mac_addr);
+		return idpf_add_mac_filter(vport, vport->default_mac_addr, false);
+	}
+
+	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+			     VIRTCHNL2_CAP_MACFILTER)) {
+		dev_err(&adapter->pdev->dev,
+			"MAC address not provided and capability is not set\n");
+		return -EINVAL;
+	}
+	eth_hw_addr_random(netdev);
+	err = idpf_add_mac_filter(vport, netdev->dev_addr, false);
+	if (err)
+		return err;
+	ether_addr_copy(vport->default_mac_addr, netdev->dev_addr);
+	dev_info(&adapter->pdev->dev, "Invalid MAC address %pM, using random\n",
+		 vport->default_mac_addr);
+
+	return 0;
+}
+
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
+	int err;
+
+	vport_config = adapter->vport_config[idx];
+
+	/* It's possible we already have a netdev allocated and registered for
+	 * this vport
+	 */
+	if (test_bit(__IDPF_VPORT_REG_NETDEV, vport_config->flags)) {
+		netdev = adapter->netdevs[idx];
+		np = netdev_priv(netdev);
+		np->vport = vport;
+		vport->netdev = netdev;
+
+		return idpf_init_mac_addr(vport, netdev);
+	}
+
+	netdev = alloc_etherdev_mqs(sizeof(struct idpf_netdev_priv),
+				    vport_config->max_q.max_txq,
+				    vport_config->max_q.max_rxq);
+	if (!netdev)
+		return -ENOMEM;
+	vport->netdev = netdev;
+	np = netdev_priv(netdev);
+	np->vport = vport;
+
+	err = idpf_init_mac_addr(vport, netdev);
+	if (err)
+		goto err;
+
+	/* assign netdev_ops */
+	if (idpf_is_queue_model_split(vport->txq_model))
+		netdev->netdev_ops = &idpf_netdev_ops_splitq;
+	else
+		netdev->netdev_ops = &idpf_netdev_ops_singleq;
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
+	if (idpf_is_cap_ena_all(vport->adapter, IDPF_SEG_CAPS,
+				IDPF_CAP_TUNNEL)) {
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
+	netdev->features |= dflt_features;
+	netdev->hw_features |= dflt_features | offloads;
+	netdev->hw_enc_features |= dflt_features | offloads;
+	idpf_set_ethtool_ops(netdev);
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
+err:
+	free_netdev(vport->netdev);
+	vport->netdev = NULL;
+
+	return err;
+}
+
+/**
+ * idpf_cfg_hw - Initialize HW struct
+ * @adapter: adapter to setup hw struct for
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_cfg_hw(struct idpf_adapter *adapter)
+{
+	u64 region2_start = adapter->dev_ops.bar0_region2_start;
+	struct pci_dev *pdev = adapter->pdev;
+	struct idpf_hw *hw = &adapter->hw;
+	resource_size_t res_start;
+	long len;
+
+	res_start = pci_resource_start(pdev, 0);
+	len = adapter->dev_ops.bar0_region1_size;
+	hw->hw_addr = ioremap(res_start, len);
+	if (!hw->hw_addr) {
+		dev_info(&pdev->dev, "ioremap(0x%04llx) region1 failed:\n",
+			 res_start);
+		return -EIO;
+	}
+	hw->hw_addr_len = len;
+
+	len = pci_resource_len(pdev, 0) - region2_start;
+	if (len <= 0)
+		goto store_adapter;
+
+	hw->hw_addr_region2 = ioremap(res_start + region2_start, len);
+	if (!hw->hw_addr_region2) {
+		dev_info(&pdev->dev, "ioremap(0x%04llx) region2 failed:\n",
+			 res_start + region2_start);
+		return -EIO;
+	}
+	hw->hw_addr_region2_len = len;
+
+store_adapter:
+	hw->back = adapter;
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
+	for (i = 0; i < adapter->max_vports; ++i)
+		if (!adapter->vports[i])
+			break;
+	return (i == adapter->max_vports) ? IDPF_NO_FREE_SLOT : i;
+}
+
+/**
+ * idpf_remove_features - Turn off feature configs
+ * @vport: virtual port structure
+ */
+static void idpf_remove_features(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_MACFILTER))
+		idpf_remove_mac_filters(vport);
+}
+
+/**
+ * idpf_vport_stop - Disable a vport
+ * @vport: vport to disable
+ */
+static void idpf_vport_stop(struct idpf_vport *vport)
+{
+	mutex_lock(&vport->stop_mutex);
+	if (vport->state <= __IDPF_VPORT_DOWN)
+		goto stop_unlock;
+
+	netif_tx_stop_all_queues(vport->netdev);
+	netif_carrier_off(vport->netdev);
+	netif_tx_disable(vport->netdev);
+
+	idpf_send_disable_vport_msg(vport);
+	idpf_send_disable_queues_msg(vport);
+	idpf_send_map_unmap_queue_vector_msg(vport, false);
+	/* Normally we ask for queues in create_vport, but if we're changing
+	 * number of requested queues we do a delete then add instead of
+	 * deleting and reallocating the vport.
+	 */
+	if (test_and_clear_bit(__IDPF_VPORT_DEL_QUEUES, vport->flags))
+		idpf_send_delete_queues_msg(vport);
+
+	idpf_remove_features(vport);
+
+	vport->link_up = false;
+	idpf_vport_intr_deinit(vport);
+	idpf_vport_intr_rel(vport);
+	idpf_vport_queues_rel(vport);
+	vport->state = __IDPF_VPORT_DOWN;
+
+stop_unlock:
+	mutex_unlock(&vport->stop_mutex);
+}
+
+/**
+ * idpf_stop - Disables a network interface
+ * @netdev: network interface device structure
+ *
+ * The stop entry point is called when an interface is de-activated by the OS,
+ * and the netdevice enters the DOWN state.  The hardware is still under the
+ * driver's control, but the netdev interface is disabled.
+ *
+ * Returns success only - not allowed to fail
+ */
+static int idpf_stop(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return 0;
+
+	idpf_vport_stop(vport);
+
+	return 0;
+}
+
+/**
+ * idpf_decfg_netdev - Unregister the netdev
+ * @vport: vport for which netdev to be unregistred
+ */
+static void idpf_decfg_netdev(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+
+	if (!vport->netdev)
+		return;
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
+	struct idpf_vector_info vec_info;
+	struct idpf_rss_data *rss_data;
+	struct idpf_vport_max_q max_q;
+	u16 idx = vport->idx;
+	int i;
+
+	vport_config = adapter->vport_config[vport->idx];
+	idpf_deinit_rss(vport);
+	rss_data = &vport_config->user_config.rss_data;
+	kfree(rss_data->rss_key);
+	rss_data->rss_key = NULL;
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
+	mutex_destroy(&vport->stop_mutex);
+	mutex_destroy(&vport->soft_reset_lock);
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
+	/* Release all the allocated vectors on the stack */
+	vec_info.num_req_vecs = 0;
+	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.default_vport = vport->default_vport;
+
+	idpf_req_rel_vector_indexes(adapter, vport->q_vector_idxs, &vec_info);
+
+	kfree(vport->q_vector_idxs);
+	vport->q_vector_idxs = NULL;
+
+	kfree(adapter->vport_params_recvd[idx]);
+	adapter->vport_params_recvd[idx] = NULL;
+	kfree(adapter->vport_params_reqd[idx]);
+	adapter->vport_params_reqd[idx] = NULL;
+	if (adapter->vport_config[idx]) {
+		kfree(adapter->vport_config[idx]->req_qs_chunks);
+		adapter->vport_config[idx]->req_qs_chunks = NULL;
+	}
+	kfree(vport);
+	adapter->num_alloc_vports--;
+}
+
+/**
+ * idpf_del_user_cfg_data - delete all user configuration data
+ * @vport: virtual port private structue
+ */
+static void idpf_del_user_cfg_data(struct idpf_vport *vport)
+{
+	idpf_del_all_mac_filters(vport);
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
+	struct idpf_netdev_priv *np;
+	unsigned int i;
+
+	i = vport->idx;
+	idpf_deinit_mac_addr(vport);
+	idpf_vport_stop(vport);
+	if (!test_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags))
+		idpf_decfg_netdev(vport);
+	if (test_bit(__IDPF_REMOVE_IN_PROG, adapter->flags))
+		idpf_del_user_cfg_data(vport);
+	if (adapter->netdevs[i]) {
+		np = netdev_priv(adapter->netdevs[i]);
+		if (np)
+			np->vport = NULL;
+	}
+	idpf_vport_rel(vport);
+	adapter->vports[i] = NULL;
+	adapter->next_vport = idpf_get_free_slot(adapter);
+}
+
+/**
+ * idpf_vport_set_hsplit - enable or disable header split on a given vport
+ * @vport: virtual port
+ * @ena: flag controlling header split, On (true) or Off (false)
+ */
+void idpf_vport_set_hsplit(struct idpf_vport *vport, bool ena)
+{
+	struct idpf_vport_user_config_data *config_data;
+
+	config_data = &vport->adapter->vport_config[vport->idx]->user_config;
+	if (idpf_is_cap_ena_all(vport->adapter, IDPF_HSPLIT_CAPS,
+				IDPF_CAP_HSPLIT) &&
+	    idpf_is_queue_model_split(vport->rxq_model))
+		set_bit(__IDPF_PRIV_FLAGS_HDR_SPLIT, config_data->user_flags);
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
+	struct idpf_vport *vport = NULL;
+	struct idpf_rss_data *rss_data;
+	u16 size, num_max_q;
+
+	if (adapter->next_vport == IDPF_NO_FREE_SLOT)
+		return vport;
+
+	vport = kzalloc(sizeof(*vport), GFP_KERNEL);
+	if (!vport)
+		return vport;
+
+	if (!adapter->vport_config[adapter->next_vport]) {
+		size = sizeof(struct idpf_vport_config);
+		adapter->vport_config[adapter->next_vport] =
+			kzalloc(size, GFP_KERNEL);
+		if (!adapter->vport_config[adapter->next_vport]) {
+			kfree(vport);
+			return NULL;
+		}
+	}
+
+	vport->adapter = adapter;
+	vport->idx = adapter->next_vport;
+	vport->compln_clean_budget = IDPF_TX_COMPLQ_CLEAN_BUDGET;
+	vport->default_vport = adapter->num_alloc_vports <
+			       idpf_get_default_vports(adapter);
+
+	num_max_q = max_t(u16, max_q->max_txq, max_q->max_rxq);
+	vport->q_vector_idxs = kcalloc(num_max_q, sizeof(u16), GFP_KERNEL);
+	if (!vport->q_vector_idxs) {
+		kfree(vport);
+		return NULL;
+	}
+	idpf_vport_init(vport, max_q);
+
+	/* This alloc is done separate from the LUT because it's not strictly
+	 * dependent on how many queues we have. If we change number of queues
+	 * and soft reset we'll need a new LUT but the key can remain the same
+	 * for as long as the vport exists.
+	 */
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	rss_data->rss_key = kzalloc(rss_data->rss_key_size, GFP_KERNEL);
+	if (!rss_data->rss_key) {
+		kfree(vport->q_vector_idxs);
+		kfree(vport);
+		return NULL;
+	}
+	/* Initialize default rss key */
+	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
+
+	mutex_init(&vport->stop_mutex);
+
+	/* fill vport slot in the adapter struct */
+	adapter->vports[adapter->next_vport] = vport;
+	adapter->vport_ids[adapter->next_vport] = idpf_get_vport_id(vport);
+
+	adapter->num_alloc_vports++;
+	/* prepare adapter->next_vport for next use */
+	adapter->next_vport = idpf_get_free_slot(adapter);
+
+	return vport;
+}
+
+/**
+ * idpf_statistics_task - Delayed task to get statistics over mailbox
+ * @work: work_struct handle to our data
+ */
+static void idpf_statistics_task(struct work_struct *work)
+{
+	struct idpf_adapter *adapter = container_of(work,
+						    struct idpf_adapter,
+						    stats_task.work);
+	int i;
+
+	for (i = 0; i < adapter->max_vports; i++) {
+		struct idpf_vport *vport = adapter->vports[i];
+
+		if (vport && !test_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags))
+			idpf_send_get_stats_msg(vport);
+	}
+
+	if (!test_bit(__IDPF_CANCEL_STATS_TASK, adapter->flags))
+		queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
+				   msecs_to_jiffies(10000));
+}
+
+/**
+ * idpf_service_task - Delayed task for handling mailbox responses
+ * @work: work_struct handle to our data
+ *
+ */
+static void idpf_service_task(struct work_struct *work)
+{
+	struct idpf_adapter *adapter = container_of(work,
+						    struct idpf_adapter,
+						    serv_task.work);
+
+	if (test_bit(__IDPF_MB_INTR_MODE, adapter->flags)) {
+		if (test_and_clear_bit(__IDPF_MB_INTR_TRIGGER,
+				       adapter->flags)) {
+			idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_UNKNOWN, NULL, 0);
+			idpf_mb_irq_enable(adapter);
+		}
+	} else {
+		idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_UNKNOWN, NULL, 0);
+	}
+
+	if (idpf_is_reset_detected(adapter) &&
+	    !idpf_is_reset_in_prog(adapter) &&
+	    !test_bit(__IDPF_REMOVE_IN_PROG, adapter->flags)) {
+		dev_info(&adapter->pdev->dev, "HW reset detected\n");
+		set_bit(__IDPF_HR_FUNC_RESET, adapter->flags);
+		queue_delayed_work(adapter->vc_event_wq,
+				   &adapter->vc_event_task,
+				   msecs_to_jiffies(10));
+	}
+
+	if (!test_bit(__IDPF_CANCEL_SERVICE_TASK, adapter->flags))
+		queue_delayed_work(adapter->serv_wq, &adapter->serv_task,
+				   msecs_to_jiffies(300));
+}
+
+/**
+ * idpf_restore_features - Restore feature configs
+ * @vport: virtual port structure
+ */
+static void idpf_restore_features(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_MACFILTER))
+		idpf_restore_mac_filters(vport);
+}
+
+/**
+ * idpf_set_real_num_queues - set number of queues for netdev
+ * @vport: virtual port structure
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_set_real_num_queues(struct idpf_vport *vport)
+{
+	int err;
+
+	/* If we're in normal up path, the stack already takes the rtnl_lock
+	 * for us, however, if we're doing up as a part of a hard reset, we'll
+	 * need to take the lock ourself before touching the netdev.
+	 */
+	if (test_bit(__IDPF_HR_RESET_IN_PROG, vport->adapter->flags))
+		rtnl_lock();
+	err = netif_set_real_num_rx_queues(vport->netdev, vport->num_rxq);
+	if (err)
+		goto error;
+	err = netif_set_real_num_tx_queues(vport->netdev, vport->num_txq);
+error:
+	if (test_bit(__IDPF_HR_RESET_IN_PROG, vport->adapter->flags))
+		rtnl_unlock();
+	return err;
+}
+
+/**
+ * idpf_up_complete - Complete interface up sequence
+ * @vport: virtual port strucutre
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_up_complete(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_set_real_num_queues(vport);
+	if (err)
+		return err;
+
+	if (vport->link_up && !netif_carrier_ok(vport->netdev)) {
+		netif_carrier_on(vport->netdev);
+		netif_tx_start_all_queues(vport->netdev);
+	}
+
+	vport->state = __IDPF_VPORT_UP;
+	return 0;
+}
+
+/**
+ * idpf_rx_init_buf_tail - Write initial buffer ring tail value
+ * @vport: virtual port struct
+ */
+static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
+{
+	int i, j;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *grp = &vport->rxq_grps[i];
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+				struct idpf_queue *q =
+					&grp->splitq.bufq_sets[j].bufq;
+
+				writel(q->next_to_alloc, q->tail);
+			}
+		} else {
+			for (j = 0; j < grp->singleq.num_rxq; j++) {
+				struct idpf_queue *q =
+					grp->singleq.rxqs[j];
+
+				writel(q->next_to_alloc, q->tail);
+			}
+		}
+	}
+}
+
+/**
+ * idpf_vport_open - Bring up a vport
+ * @vport: vport to bring up
+ * @alloc_res: allocate queue resources
+ */
+static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	int err;
+
+	vport_config = adapter->vport_config[vport->idx];
+	if (vport->state != __IDPF_VPORT_DOWN)
+		return -EBUSY;
+
+	/* we do not allow interface up just yet */
+	netif_carrier_off(vport->netdev);
+
+	if (alloc_res) {
+		err = idpf_vport_queues_alloc(vport);
+		if (err)
+			return err;
+	}
+
+	err = idpf_vport_intr_alloc(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Call to interrupt alloc returned %d\n",
+			err);
+		goto unroll_queues_alloc;
+	}
+
+	err = idpf_vport_queue_ids_init(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Call to queue ids init returned %d\n",
+			err);
+		goto unroll_intr_alloc;
+	}
+
+	err = idpf_queue_reg_init(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Call to queue reg init returned %d\n",
+			err);
+		goto unroll_intr_alloc;
+	}
+	idpf_rx_init_buf_tail(vport);
+
+	err = idpf_vport_intr_init(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Call to vport interrupt init returned %d\n",
+			err);
+		goto unroll_intr_alloc;
+	}
+	err = idpf_send_config_queues_msg(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to config queues\n");
+		goto unroll_config_queues;
+	}
+	err = idpf_send_map_unmap_queue_vector_msg(vport, true);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Call to irq_map_unmap returned %d\n",
+			err);
+		goto unroll_config_queues;
+	}
+	err = idpf_send_enable_queues_msg(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to enable queues\n");
+		goto unroll_enable_queues;
+	}
+
+	err = idpf_send_enable_vport_msg(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to enable vport\n");
+		err = -EAGAIN;
+		goto unroll_vport_enable;
+	}
+
+	idpf_restore_features(vport);
+
+	if (vport_config->user_config.rss_data.rss_lut)
+		err = idpf_config_rss(vport);
+	else
+		err = idpf_init_rss(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to init RSS\n");
+		goto unroll_init_rss;
+	}
+	err = idpf_up_complete(vport);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to complete up\n");
+		goto unroll_up_comp;
+	}
+
+	return 0;
+
+unroll_up_comp:
+	idpf_deinit_rss(vport);
+unroll_init_rss:
+	idpf_send_disable_vport_msg(vport);
+unroll_vport_enable:
+	idpf_send_disable_queues_msg(vport);
+unroll_enable_queues:
+	idpf_send_map_unmap_queue_vector_msg(vport, false);
+unroll_config_queues:
+	idpf_vport_intr_deinit(vport);
+unroll_intr_alloc:
+	idpf_vport_intr_rel(vport);
+unroll_queues_alloc:
+	if (alloc_res)
+		idpf_vport_queues_rel(vport);
+
+	return err;
+}
+
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
+	struct idpf_adapter *adapter = container_of(work,
+						    struct idpf_adapter,
+						    init_task.work);
+	struct idpf_vport_config *vport_config;
+	struct idpf_vport_max_q max_q;
+	u16 num_default_vports = 0;
+	struct idpf_vport *vport;
+	struct pci_dev *pdev;
+	bool dynamic_vport;
+	int index, err;
+
+	/* Need to protect the allocation of the vports at the adapter level */
+	mutex_lock(&adapter->sw_mutex);
+	num_default_vports = idpf_get_default_vports(adapter);
+	if (adapter->num_alloc_vports < num_default_vports)
+		dynamic_vport = false;
+	else
+		dynamic_vport = true;
+	err = idpf_vport_alloc_max_qs(adapter, &max_q);
+	if (err) {
+		mutex_unlock(&adapter->sw_mutex);
+		goto unwind_vports;
+	}
+
+	err = idpf_send_create_vport_msg(adapter, &max_q);
+	if (err) {
+		idpf_vport_dealloc_max_qs(adapter, &max_q);
+		mutex_unlock(&adapter->sw_mutex);
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
+		mutex_unlock(&adapter->sw_mutex);
+		goto unwind_vports;
+	}
+	mutex_unlock(&adapter->sw_mutex);
+
+	index = vport->idx;
+	vport_config = adapter->vport_config[index];
+	init_waitqueue_head(&vport->sw_marker_wq);
+	init_waitqueue_head(&vport->vchnl_wq);
+	mutex_init(&vport->soft_reset_lock);
+
+	spin_lock_init(&vport->mac_filter_list_lock);
+	INIT_LIST_HEAD(&vport_config->user_config.mac_filter_list);
+
+	err = idpf_check_supported_desc_ids(vport);
+	if (err) {
+		dev_err(&pdev->dev, "failed to get required descriptor ids\n");
+		goto cfg_netdev_err;
+	}
+
+	if (idpf_cfg_netdev(vport))
+		goto cfg_netdev_err;
+
+	err = idpf_send_get_rx_ptype_msg(vport);
+	if (err)
+		goto handle_err;
+	/* Once state is put into DOWN, driver is ready for dev_open */
+	vport->state = __IDPF_VPORT_DOWN;
+	if (test_and_clear_bit(__IDPF_VPORT_UP_REQUESTED, vport_config->flags))
+		idpf_vport_open(vport, true);
+
+	mutex_lock(&adapter->sw_mutex);
+
+	/* Spawn and return 'idpf_init_task' work queue until all the
+	 * default vports are created
+	 */
+	if (adapter->num_alloc_vports < num_default_vports) {
+		queue_delayed_work(adapter->init_wq, &adapter->init_task,
+				   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
+		mutex_unlock(&adapter->sw_mutex);
+
+		return;
+	}
+	mutex_unlock(&adapter->sw_mutex);
+
+	for (index = 0; index < adapter->max_vports; index++) {
+		if (adapter->netdevs[index] &&
+		    !test_bit(__IDPF_VPORT_REG_NETDEV,
+			      adapter->vport_config[index]->flags)) {
+			register_netdev(adapter->netdevs[index]);
+			set_bit(__IDPF_VPORT_REG_NETDEV,
+				adapter->vport_config[index]->flags);
+		}
+	}
+
+	/* As all the required vports are created, clear the reset flag
+	 * unconditionally here in case we were in reset and the link was down.
+	 */
+	clear_bit(__IDPF_HR_RESET_IN_PROG, vport->adapter->flags);
+	 /* Start the statistics task now */
+	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
+			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
+
+	return;
+
+handle_err:
+	idpf_decfg_netdev(vport);
+cfg_netdev_err:
+	idpf_vport_rel(vport);
+	adapter->vports[index] = NULL;
+unwind_vports:
+	/* We need not release everything on failure to create dynamic vport */
+	if (!dynamic_vport) {
+		for (index = 0; index < adapter->max_vports; index++) {
+			if (adapter->vports[index])
+				idpf_vport_dealloc(adapter->vports[index]);
+		}
+	}
+}
+
+/**
+ * idpf_sriov_ena - Enable or change number of VFs
+ * @adapter: private data struct
+ * @num_vfs: number of VFs to allocate
+ */
+static int idpf_sriov_ena(struct idpf_adapter *adapter, int num_vfs)
+{
+	struct device *dev = &adapter->pdev->dev;
+	int err;
+
+	err = idpf_send_set_sriov_vfs_msg(adapter, num_vfs);
+	if (err) {
+		dev_err(dev, "Failed to allocate VFs: %d\n", err);
+		return err;
+	}
+
+	err = pci_enable_sriov(adapter->pdev, num_vfs);
+	if (err) {
+		num_vfs = 0;
+		idpf_send_set_sriov_vfs_msg(adapter, num_vfs);
+		dev_err(dev, "Failed to enable SR-IOV: %d\n", err);
+		return err;
+	}
+
+	adapter->num_vfs = num_vfs;
+	return num_vfs;
+}
+
+/**
+ * idpf_sriov_configure - Configure the requested VFs
+ * @pdev: pointer to a pci_dev structure
+ * @num_vfs: number of vfs to allocate
+ *
+ * Enable or change the number of VFs. Called when the user updates the number
+ * of VFs in sysfs.
+ **/
+int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_SRIOV)) {
+		dev_info(&pdev->dev, "SR-IOV is not supported on this device\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (num_vfs)
+		return idpf_sriov_ena(adapter, num_vfs);
+
+	if (!pci_vfs_assigned(pdev)) {
+		pci_disable_sriov(adapter->pdev);
+		idpf_send_set_sriov_vfs_msg(adapter, 0);
+		adapter->num_vfs = 0;
+	} else {
+		dev_warn(&pdev->dev, "Unable to free VFs because some are assigned to VMs\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_deinit_task - Device deinit routine
+ * @adapter: Driver specific private structue
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
+	/* Required to indicate periodic task not to schedule again */
+	set_bit(__IDPF_CANCEL_STATS_TASK, adapter->flags);
+	cancel_delayed_work_sync(&adapter->stats_task);
+	clear_bit(__IDPF_CANCEL_STATS_TASK, adapter->flags);
+	for (i = 0; i < adapter->max_vports; i++) {
+		if (adapter->vports[i])
+			idpf_vport_dealloc(adapter->vports[i]);
+	}
+}
+
+/**
+ * idpf_check_reset_complete - check that reset is complete
+ * @hw: pointer to hw struct
+ * @reset_reg: struct with reset registers
+ *
+ * Returns 0 if device is ready to use, or -EBUSY if it's in reset.
+ **/
+static int idpf_check_reset_complete(struct idpf_hw *hw,
+				     struct idpf_reset_reg *reset_reg)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+	int i;
+
+	for (i = 0; i < 2000; i++) {
+		u32 reg_val = readl(reset_reg->rstat);
+
+		/* 0xFFFFFFFF might be read if other side hasn't cleared the
+		 * register for us yet and 0xFFFFFFFF is not a valid value for
+		 * the register, so treat that as invalid.
+		 */
+		if (reg_val != 0xFFFFFFFF && (reg_val & reset_reg->rstat_m))
+			return 0;
+		usleep_range(5000, 10000);
+	}
+
+	dev_warn(&adapter->pdev->dev, "Device reset timeout!\n");
+	/* Clear the reset flag unconditionally here since the reset
+	 * technically isn't in progress anymore from the driver's perspective
+	 */
+	clear_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags);
+
+	return -EBUSY;
+}
+
+/**
+ * idpf_set_vport_state - Set the vport state to be after the reset
+ * @adapter: Driver specific private structure
+ */
+static void idpf_set_vport_state(struct idpf_adapter *adapter)
+{
+	u16 i;
+
+	for (i = 0; i < adapter->max_vports; i++) {
+		if (adapter->vports[i] &&
+		    adapter->vports[i]->state == __IDPF_VPORT_UP)
+			set_bit(__IDPF_VPORT_UP_REQUESTED,
+				adapter->vport_config[i]->flags);
+	}
+}
+
+/**
+ * idpf_init_hard_reset - Initiate a hardware reset
+ * @adapter: Driver specific private structure
+ *
+ * Deallocate the vports and all the resources associated with them and
+ * reallocate. Also reinitialize the mailbox. Return 0 on success,
+ * negative on failure.
+ */
+static int idpf_init_hard_reset(struct idpf_adapter *adapter)
+{
+	int err = 0;
+
+	mutex_lock(&adapter->reset_lock);
+
+	dev_info(&adapter->pdev->dev, "Device HW Reset initiated\n");
+	/* Prepare for reset */
+	if (test_and_clear_bit(__IDPF_HR_DRV_LOAD, adapter->flags)) {
+		adapter->dev_ops.reg_ops.trigger_reset(adapter,
+						       __IDPF_HR_DRV_LOAD);
+	} else if (test_and_clear_bit(__IDPF_HR_FUNC_RESET, adapter->flags)) {
+		bool is_reset = idpf_is_reset_detected(adapter);
+
+		idpf_set_vport_state(adapter);
+		idpf_vc_core_deinit(adapter);
+		if (!is_reset)
+			adapter->dev_ops.reg_ops.trigger_reset(adapter,
+							       __IDPF_HR_FUNC_RESET);
+		idpf_deinit_dflt_mbx(adapter);
+	} else if (test_and_clear_bit(__IDPF_HR_CORE_RESET, adapter->flags)) {
+		idpf_set_vport_state(adapter);
+		idpf_vc_core_deinit(adapter);
+	} else {
+		dev_err(&adapter->pdev->dev, "Unhandled hard reset cause\n");
+		err = -EBADRQC;
+		goto handle_err;
+	}
+
+	/* Wait for reset to complete */
+	err = idpf_check_reset_complete(&adapter->hw, &adapter->reset_reg);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "The driver was unable to contact the device's firmware.  Check that the FW is running. Driver state=%u\n",
+			adapter->state);
+		goto handle_err;
+	}
+
+	/* Reset is complete and so start building the driver resources again */
+	err = idpf_init_dflt_mbx(adapter);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to initialize default mailbox: %d\n",
+			err);
+	}
+
+	/* Initialize the state machine, also allocate memory and request
+	 * resources
+	 */
+	err = idpf_vc_core_init(adapter);
+	if (err)
+		goto init_err;
+
+	mutex_unlock(&adapter->reset_lock);
+	return 0;
+
+init_err:
+	idpf_deinit_dflt_mbx(adapter);
+handle_err:
+	mutex_unlock(&adapter->reset_lock);
+	return err;
+}
+
+/**
+ * idpf_vc_event_task - Handle virtchannel event logic
+ * @work: work queue struct
+ */
+static void idpf_vc_event_task(struct work_struct *work)
+{
+	struct idpf_adapter *adapter = container_of(work,
+						    struct idpf_adapter,
+						    vc_event_task.work);
+
+	if (test_bit(__IDPF_REMOVE_IN_PROG, adapter->flags))
+		return;
+
+	if (test_bit(__IDPF_HR_CORE_RESET, adapter->flags) ||
+	    test_bit(__IDPF_HR_FUNC_RESET, adapter->flags) ||
+	    test_bit(__IDPF_HR_DRV_LOAD, adapter->flags)) {
+		set_bit(__IDPF_HR_RESET_IN_PROG, adapter->flags);
+		idpf_init_hard_reset(adapter);
+	}
+}
+
+/**
+ * idpf_initiate_soft_reset - Initiate a software reset
+ * @vport: virtual port data struct
+ * @reset_cause: reason for the soft reset
+ *
+ * Soft reset only reallocs vport queue resources. Returns 0 on success,
+ * negative on failure.
+ */
+int idpf_initiate_soft_reset(struct idpf_vport *vport,
+			     enum idpf_vport_flags reset_cause)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	enum idpf_vport_state current_state;
+	struct idpf_vport *new_vport;
+	int err = 0, i;
+
+	current_state = vport->state;
+
+	/* make sure we do not end up in initiating multiple resets */
+	mutex_lock(&vport->soft_reset_lock);
+
+	/* If the system is low on memory, we can end up in bad state if we
+	 * free all the memory for queue resources and try to allocate them
+	 * again. Instead, we can pre-allocate the new resources before doing
+	 * anything and bailing if the alloc fails.
+	 *
+	 * Make a clone of the existing vport to mimic its current configuration,
+	 * then modify the new structure with any requested changes. Once the
+	 * allocation of the new resources is done, stop the existing vport and
+	 * copy the configuration to the main vport. If an error occurred, the
+	 * existing vport will be untouched.
+	 *
+	 */
+	new_vport = kzalloc(sizeof(*vport), GFP_KERNEL);
+	if (!new_vport) {
+		mutex_unlock(&vport->soft_reset_lock);
+		return -ENOMEM;
+	}
+	/* This purposely avoids copying the end of the struct because it
+	 * contains wait_queues and mutexes and other stuff we don't want to
+	 * mess with. Nothing below should use those variables from new_vport
+	 * and should instead always refer to them in vport if they need to.
+	 */
+	memcpy(new_vport, vport, offsetof(struct idpf_vport, state));
+
+	/* Adjust resource parameters prior to reallocating resources */
+	switch (reset_cause) {
+	case __IDPF_SR_Q_CHANGE:
+		err =  idpf_vport_adjust_qs(new_vport);
+		if (err)
+			goto free_vport;
+		break;
+	case __IDPF_SR_Q_DESC_CHANGE:
+		/* Update queue parameters before allocating resources */
+		idpf_vport_calc_num_q_desc(new_vport);
+		break;
+	case __IDPF_SR_Q_SCH_CHANGE:
+	case __IDPF_SR_MTU_CHANGE:
+	case __IDPF_SR_RSC_CHANGE:
+	case __IDPF_SR_HSPLIT_CHANGE:
+		break;
+	default:
+		dev_err(&adapter->pdev->dev, "Unhandled soft reset cause\n");
+		err = -EINVAL;
+		goto free_vport;
+	}
+
+	err = idpf_vport_queues_alloc(new_vport);
+	if (err)
+		goto free_vport;
+	if (current_state <= __IDPF_VPORT_DOWN) {
+		idpf_send_delete_queues_msg(vport);
+	} else {
+		set_bit(__IDPF_VPORT_DEL_QUEUES, vport->flags);
+		idpf_vport_stop(vport);
+	}
+
+	idpf_deinit_rss(vport);
+	/* We're passing in vport here because we need it's wait_queue
+	 * to send a message and it should be getting all the vport
+	 * config data out of the adapter but we need to be careful not
+	 * to add code to add_queues to change the vport config within
+	 * vport itself as it will be wiped with a memcpy later.
+	 */
+	err = idpf_send_add_queues_msg(vport, new_vport->num_txq,
+				       new_vport->num_complq,
+				       new_vport->num_rxq,
+				       new_vport->num_bufq);
+	if (err)
+		goto err_reset;
+
+	/* Same comment as above regarding avoiding copying the wait_queues and
+	 * mutexes applies here. We do not want to mess with those if possible.
+	 */
+	memcpy(vport, new_vport, offsetof(struct idpf_vport, state));
+
+	/* Since idpf_vport_queues_alloc was called with new_port, the queue
+	 * back pointers are currently pointing to the local new_vport. Reset
+	 * the backpointers to the original vport here
+	 */
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		int j;
+
+		tx_qgrp->vport = vport;
+		for (j = 0; j < tx_qgrp->num_txq; j++)
+			tx_qgrp->txqs[j]->vport = vport;
+
+		if (idpf_is_queue_model_split(vport->txq_model))
+			tx_qgrp->complq->vport = vport;
+	}
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		struct idpf_queue *q;
+		int j, num_rxq;
+
+		rx_qgrp->vport = vport;
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++)
+			rx_qgrp->splitq.bufq_sets[j].bufq.vport = vport;
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				q = rx_qgrp->singleq.rxqs[j];
+			q->vport = vport;
+		}
+	}
+
+	kfree(new_vport);
+
+	if (reset_cause == __IDPF_SR_Q_CHANGE)
+		idpf_vport_alloc_vec_indexes(vport);
+
+	if (current_state == __IDPF_VPORT_UP)
+		err = idpf_vport_open(vport, false);
+	mutex_unlock(&vport->soft_reset_lock);
+	return err;
+err_reset:
+	idpf_vport_queues_rel(new_vport);
+free_vport:
+	kfree(new_vport);
+	mutex_unlock(&vport->soft_reset_lock);
+	return err;
+}
+
+/**
+ * idpf_probe_common - Device initialization routine
+ * @pdev: PCI device information struct
+ * @adapter: driver specific private structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_probe_common(struct pci_dev *pdev, struct idpf_adapter *adapter)
+{
+	int err;
+
+	adapter->pdev = pdev;
+	err = pci_enable_device(pdev);
+	if (err)
+		return err;
+
+	err = pci_request_mem_regions(pdev, pci_name(pdev));
+	if (err) {
+		dev_err(&pdev->dev,
+			"pci_request_selected_regions failed %d\n", err);
+		pci_disable_device(pdev);
+		return err;
+	}
+
+	/* set up for high or low dma */
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (err)
+		err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
+	if (err) {
+		dev_err(&pdev->dev, "DMA configuration failed: 0x%x\n", err);
+		return err;
+	}
+
+	pci_enable_pcie_error_reporting(pdev);
+	pci_set_master(pdev);
+	pci_set_drvdata(pdev, adapter);
+
+	adapter->init_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->init_wq) {
+		dev_err(&pdev->dev, "Failed to allocate init workqueue\n");
+		err = -ENOMEM;
+		goto err_wq_alloc;
+	}
+
+	adapter->serv_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->serv_wq) {
+		dev_err(&pdev->dev, "Failed to allocate service workqueue\n");
+		err = -ENOMEM;
+		goto err_mbx_wq_alloc;
+	}
+
+	adapter->stats_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->stats_wq) {
+		dev_err(&pdev->dev, "Failed to allocate statistics workqueue\n");
+		err = -ENOMEM;
+		goto err_stats_wq_alloc;
+	}
+
+	adapter->vc_event_wq =
+		alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	if (!adapter->vc_event_wq) {
+		dev_err(&pdev->dev, "Failed to allocate virtchnl event workqueue\n");
+		err = -ENOMEM;
+		goto err_vc_event_wq_alloc;
+	}
+
+	/* setup msglvl */
+	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
+
+	err = idpf_cfg_hw(adapter);
+	if (err) {
+		dev_err(&pdev->dev, "Failed to configure HW structure for adapter: %d\n",
+			err);
+		goto err_cfg_hw;
+	}
+
+	mutex_init(&adapter->sw_mutex);
+	mutex_init(&adapter->reset_lock);
+	mutex_init(&adapter->vector_lock);
+	mutex_init(&adapter->queue_lock);
+	init_waitqueue_head(&adapter->vchnl_wq);
+
+	INIT_DELAYED_WORK(&adapter->stats_task, idpf_statistics_task);
+	INIT_DELAYED_WORK(&adapter->serv_task, idpf_service_task);
+	INIT_DELAYED_WORK(&adapter->init_task, idpf_init_task);
+	INIT_DELAYED_WORK(&adapter->vc_event_task, idpf_vc_event_task);
+
+	adapter->dev_ops.reg_ops.reset_reg_init(adapter);
+	set_bit(__IDPF_HR_DRV_LOAD, adapter->flags);
+	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
+			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
+
+	return 0;
+
+err_cfg_hw:
+	destroy_workqueue(adapter->vc_event_wq);
+err_vc_event_wq_alloc:
+	destroy_workqueue(adapter->stats_wq);
+err_stats_wq_alloc:
+	destroy_workqueue(adapter->serv_wq);
+err_mbx_wq_alloc:
+	destroy_workqueue(adapter->init_wq);
+err_wq_alloc:
+	pci_disable_pcie_error_reporting(pdev);
+	return err;
+}
+
+/**
+ * idpf_remove_common - Device removal routine
+ * @pdev: PCI device information struct
+ */
+void idpf_remove_common(struct pci_dev *pdev)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+	int i = 0;
+
+	if (!adapter)
+		return;
+
+	dev_info(&pdev->dev, "Removing device\n");
+	set_bit(__IDPF_REMOVE_IN_PROG, adapter->flags);
+
+	/* Wait until vc_event_task is done to consider if any hard reset is
+	 * in progress else we may go ahead and release the resources but the
+	 * thread doing the hard reset might continue the init path and
+	 * end up in bad state.
+	 */
+	cancel_delayed_work_sync(&adapter->vc_event_task);
+	if (adapter->num_vfs)
+		idpf_sriov_configure(pdev, 0);
+	idpf_vc_core_deinit(adapter);
+	/* Be a good citizen and leave the device clean on exit */
+	adapter->dev_ops.reg_ops.trigger_reset(adapter, __IDPF_HR_FUNC_RESET);
+	idpf_deinit_dflt_mbx(adapter);
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
+	msleep(20);
+	destroy_workqueue(adapter->serv_wq);
+	destroy_workqueue(adapter->vc_event_wq);
+	destroy_workqueue(adapter->stats_wq);
+	destroy_workqueue(adapter->init_wq);
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
+	mutex_destroy(&adapter->sw_mutex);
+	mutex_destroy(&adapter->reset_lock);
+	mutex_destroy(&adapter->vector_lock);
+	mutex_destroy(&adapter->queue_lock);
+
+	pci_disable_pcie_error_reporting(pdev);
+	iounmap(adapter->hw.hw_addr);
+	if (adapter->hw.hw_addr_region2)
+		iounmap(adapter->hw.hw_addr_region2);
+	pci_release_mem_regions(pdev);
+	pci_disable_device(pdev);
+}
+
+/**
+ * idpf_addr_sync - Callback for dev_(mc|uc)_sync to add address
+ * @netdev: the netdevice
+ * @addr: address to add
+ *
+ * Called by __dev_(mc|uc)_sync when an address needs to be added. We call
+ * __dev_(uc|mc)_sync from .set_rx_mode. Kernel takes addr_list_lock spinlock
+ * meaning we cannot sleep in this context. Due to this, we have to add the
+ * filter and send the virtchnl message asynchronously without waiting for the
+ * response from the other side. We won't know whether or not the operation
+ * actually succeeded until we get the message back.  Returns 0 on success,
+ * negative on failure.
+ */
+static int idpf_addr_sync(struct net_device *netdev, const u8 *addr)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	return idpf_add_mac_filter(vport, addr, true);
+}
+
+/**
+ * idpf_addr_unsync - Callback for dev_(mc|uc)_sync to remove address
+ * @netdev: the netdevice
+ * @addr: address to add
+ *
+ * Called by __dev_(mc|uc)_sync when an address needs to be added. We call
+ * __dev_(uc|mc)_sync from .set_rx_mode. Kernel takes addr_list_lock spinlock
+ * meaning we cannot sleep in this context. Due to this we have to delete the
+ * filter and send the virtchnl message asychronously without waiting for the
+ * return from the other side.  We won't know whether or not the operation
+ * actually succeeded until we get the message back. Returns 0 on success,
+ * negative on failure.
+ */
+static int idpf_addr_unsync(struct net_device *netdev, const u8 *addr)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	/* Under some circumstances, we might receive a request to delete
+	 * our own device address from our uc list. Because we store the
+	 * device address in the VSI's MAC filter list, we need to ignore
+	 * such requests and not delete our device address from this list.
+	 */
+	if (ether_addr_equal(addr, netdev->dev_addr))
+		return 0;
+
+	idpf_del_mac_filter(vport, addr, true);
+
+	return 0;
+}
+
+/**
+ * idpf_set_rx_mode - NDO callback to set the netdev filters
+ * @netdev: network interface device structure
+ *
+ * Stack takes addr_list_lock spinlock before calling our .set_rx_mode.  We
+ * cannot sleep in this context.
+ */
+static void idpf_set_rx_mode(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_vport_user_config_data *config_data;
+	struct idpf_adapter *adapter;
+	bool changed = false;
+	int err;
+
+	if (!vport)
+		return;
+
+	adapter = vport->adapter;
+
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_MACFILTER)) {
+		__dev_uc_sync(netdev, idpf_addr_sync, idpf_addr_unsync);
+		__dev_mc_sync(netdev, idpf_addr_sync, idpf_addr_unsync);
+	}
+
+	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_PROMISC))
+		return;
+
+	config_data = &adapter->vport_config[vport->idx]->user_config;
+	/* IFF_PROMISC enables both unicast and multicast promiscuous,
+	 * while IFF_ALLMULTI only enables multicast such that:
+	 *
+	 * promisc  + allmulti		= unicast | multicast
+	 * promisc  + !allmulti		= unicast | multicast
+	 * !promisc + allmulti		= multicast
+	 */
+	if ((netdev->flags & IFF_PROMISC) &&
+	    !test_and_set_bit(__IDPF_PROMISC_UC,
+			      config_data->user_flags)) {
+		changed = true;
+		dev_info(&adapter->pdev->dev, "Entering promiscuous mode\n");
+		if (!test_and_set_bit(__IDPF_PROMISC_MC,
+				      adapter->flags))
+			dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
+	}
+	if (!(netdev->flags & IFF_PROMISC) &&
+	    test_and_clear_bit(__IDPF_PROMISC_UC,
+			       config_data->user_flags)) {
+		changed = true;
+		dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
+	}
+	if (netdev->flags & IFF_ALLMULTI &&
+	    !test_and_set_bit(__IDPF_PROMISC_MC,
+			      config_data->user_flags)) {
+		changed = true;
+		dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
+	}
+	if (!(netdev->flags & (IFF_ALLMULTI | IFF_PROMISC)) &&
+	    test_and_clear_bit(__IDPF_PROMISC_MC,
+			       config_data->user_flags)) {
+		changed = true;
+		dev_info(&adapter->pdev->dev, "Leaving multicast promiscuous mode\n");
+	}
+
+	if (changed) {
+		err = idpf_set_promiscuous(vport);
+		if (err) {
+			dev_info(&adapter->pdev->dev, "Failed to set promiscuous mode: %d\n",
+				 err);
+		}
+	}
+}
+
+/**
+ * idpf_vport_manage_rss_lut - disable/enable RSS
+ * @adapter: adapter structure
+ * @vport: the vport being changed
+ * @ena: boolean value indicating if this is an enable or disable request
+ *
+ * In the event of disable request for RSS, this function will zero out RSS
+ * LUT, while in the event of enable request for RSS, it will reconfigure RSS
+ * LUT with the default LUT configuration.
+ */
+static int idpf_vport_manage_rss_lut(struct idpf_adapter *adapter,
+				     struct idpf_vport *vport, bool ena)
+{
+	struct idpf_rss_data *rss_data =
+		&adapter->vport_config[vport->idx]->user_config.rss_data;
+	int lut_size = rss_data->rss_lut_size * sizeof(u32);
+
+	if (ena) {
+		/* This will contain the default or user configured LUT */
+		memcpy(rss_data->rss_lut, rss_data->cached_lut, lut_size);
+	} else {
+		/* Save a copy of the current LUT to be restored later if
+		 * requested. Use a previously allocated buffer if available
+		 */
+		memcpy(rss_data->cached_lut, rss_data->rss_lut, lut_size);
+
+		/* Zero out the current LUT to disable */
+		memset(rss_data->rss_lut, 0, lut_size);
+	}
+
+	return idpf_config_rss(vport);
+}
+
+/**
+ * idpf_set_features - set the netdev feature flags
+ * @netdev: ptr to the netdev being adjusted
+ * @features: the feature set that the stack is suggesting
+ */
+static int idpf_set_features(struct net_device *netdev,
+			     netdev_features_t features)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_adapter *adapter;
+	int err = 0;
+
+	if (!vport)
+		return -EINVAL;
+
+	adapter = vport->adapter;
+
+	if (idpf_is_reset_in_prog(adapter)) {
+		dev_err(&adapter->pdev->dev, "Device is resetting, changing advanced netdev features temporarily unavailable.\n");
+		return -EBUSY;
+	}
+
+	if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH)) {
+		err = idpf_vport_manage_rss_lut(adapter, vport, true);
+		if (err)
+			goto set_feature_err;
+	} else if (!(features & NETIF_F_RXHASH) &&
+		   netdev->features & NETIF_F_RXHASH) {
+		err = idpf_vport_manage_rss_lut(adapter, vport, false);
+		if (err)
+			goto set_feature_err;
+	}
+
+	if ((netdev->features ^ features) & NETIF_F_GRO_HW) {
+		netdev->features ^= NETIF_F_GRO_HW;
+		err = idpf_initiate_soft_reset(vport, __IDPF_SR_RSC_CHANGE);
+		if (err)
+			goto set_feature_err;
+	}
+
+	if ((netdev->features ^ features) & NETIF_F_LOOPBACK) {
+		netdev->features ^= NETIF_F_LOOPBACK;
+		err = idpf_send_ena_dis_loopback_msg(vport);
+	}
+
+set_feature_err:
+	return err;
+}
+
+/**
+ * idpf_fix_features - fix up the netdev feature bits
+ * @netdev: our net device
+ * @features: desired feature bits
+ *
+ * Returns fixed-up features bits
+ */
+static netdev_features_t idpf_fix_features(struct net_device *netdev,
+					   netdev_features_t features)
+{
+	return features;
+}
+
+/**
+ * idpf_open - Called when a network interface becomes active
+ * @netdev: network interface device structure
+ *
+ * The open entry point is called when a network interface is made
+ * active by the system (IFF_UP).  At this point all resources needed
+ * for transmit and receive operations are allocated, the interrupt
+ * handler is registered with the OS, the netdev watchdog is enabled,
+ * and the stack is notified that the interface is ready.
+ *
+ * Returns 0 on success, negative value on failure
+ */
+static int idpf_open(struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	return idpf_vport_open(vport, true);
+}
+
+/**
+ * idpf_change_mtu - NDO callback to change the MTU
+ * @netdev: network interface device structure
+ * @new_mtu: new value for maximum frame size
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_change_mtu(struct net_device *netdev, int new_mtu)
+{
+	struct idpf_vport *vport =  idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	netdev->mtu = new_mtu;
+
+	return idpf_initiate_soft_reset(vport, __IDPF_SR_MTU_CHANGE);
+}
+
+/**
+ * idpf_features_check - Validate packet conforms to limits
+ * @skb: skb buffer
+ * @netdev: This port's netdev
+ * @features: Offload features that the stack believes apply
+ */
+static netdev_features_t
+idpf_features_check(struct sk_buff *skb,
+		    struct net_device *netdev,
+		    netdev_features_t features)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_adapter *adapter = vport->adapter;
+	size_t len;
+
+	/* No point in doing any of this if neither checksum nor GSO are
+	 * being requested for this frame.  We can rule out both by just
+	 * checking for CHECKSUM_PARTIAL
+	 */
+	if (skb->ip_summed != CHECKSUM_PARTIAL)
+		return features;
+
+	/* We cannot support GSO if the MSS is going to be less than
+	 * 88 bytes. If it is then we need to drop support for GSO.
+	 */
+	if (skb_is_gso(skb) &&
+	    (skb_shinfo(skb)->gso_size < IDPF_TX_TSO_MIN_MSS))
+		features &= ~NETIF_F_GSO_MASK;
+
+	/* Ensure MACLEN is <= 126 bytes (63 words) and not an odd size */
+	len = skb_network_header(skb) - skb->data;
+	if (len & ~(126))
+		goto out_err;
+
+	len = skb_transport_header(skb) - skb_network_header(skb);
+	if (unlikely(len > idpf_get_max_tx_hdr_size(adapter)))
+		goto out_err;
+
+	if (!skb->encapsulation)
+		return features;
+
+	/* L4TUNLEN can support 127 words */
+	len = skb_inner_network_header(skb) - skb_transport_header(skb);
+	if (len & ~(127 * 2))
+		goto out_err;
+
+	/* IPLEN can support at most 127 dwords */
+	len = skb_inner_transport_header(skb) -
+	      skb_inner_network_header(skb);
+	if (unlikely(len > idpf_get_max_tx_hdr_size(adapter)))
+		goto out_err;
+
+	/* No need to validate L4LEN as TCP is the only protocol with a
+	 * a flexible value and we support all possible values supported
+	 * by TCP, which is at most 15 dwords
+	 */
+
+	return features;
+
+out_err:
+	return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
+}
+
+/**
+ * idpf_change_tx_sch_mode - reset queue context with appropriate
+ * tx scheduling mode
+ * @vport: virtual port data structure
+ * @txq: queue to reset
+ * @flow_sched: true if flow scheduling requested, false otherwise
+ */
+static int idpf_change_tx_sch_mode(struct idpf_vport *vport,
+				   struct idpf_queue *txq,
+				   bool flow_sched)
+{
+	if (flow_sched && !test_bit(__IDPF_Q_FLOW_SCH_EN, txq->flags))
+		return idpf_initiate_soft_reset(vport,
+						__IDPF_SR_Q_SCH_CHANGE);
+	else if (!flow_sched && test_bit(__IDPF_Q_FLOW_SCH_EN, txq->flags))
+		return idpf_initiate_soft_reset(vport,
+						__IDPF_SR_Q_SCH_CHANGE);
+
+	return 0;
+}
+
+static int idpf_offload_txtime(struct idpf_vport *vport,
+			       struct tc_etf_qopt_offload *qopt)
+{
+	struct idpf_vport_user_config_data *config_data;
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_queue *tx_q;
+
+	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_EDT))
+		return -EOPNOTSUPP;
+
+	if (qopt->queue < 0 || qopt->queue > vport->num_txq)
+		return -EINVAL;
+
+	config_data = &adapter->vport_config[vport->idx]->user_config;
+	/* Set config data to enable in future when queues are allocated */
+	if (qopt->enable)
+		set_bit(qopt->queue, config_data->etf_qenable);
+	else
+		clear_bit(qopt->queue, config_data->etf_qenable);
+
+	tx_q = vport->txqs[qopt->queue];
+
+	/* MEV-1 does not support queue based scheduling in the split queue
+	 * mode.  It will only be enabled in MEV-2 and beyond based on the CP
+	 * advertising the VIRTCHNL2_CAP_SPLITQ_QSCHED capability flag
+	 */
+	if (idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
+			    VIRTCHNL2_CAP_SPLITQ_QSCHED))
+		return idpf_change_tx_sch_mode(vport, tx_q, qopt->enable);
+
+	/* Set bit in queue itself if queues are already allocated */
+	if (qopt->enable)
+		set_bit(__IDPF_Q_ETF_EN, tx_q->flags);
+	else
+		clear_bit(__IDPF_Q_ETF_EN, tx_q->flags);
+
+	return 0;
+}
+
+/**
+ * idpf_setup_tc - ndo callback to setup up TC schedulers
+ * @netdev: pointer to net_device struct
+ * @type: TC type
+ * @type_data: TC type specific data
+ */
+static int idpf_setup_tc(struct net_device *netdev, enum tc_setup_type type,
+			 void *type_data)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return -EINVAL;
+
+	switch (type) {
+	case TC_SETUP_QDISC_ETF:
+		if (!idpf_is_queue_model_split(vport->txq_model))
+			return -EOPNOTSUPP;
+		return idpf_offload_txtime(vport,
+				       (struct tc_etf_qopt_offload *)type_data);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+/**
+ * idpf_set_mac - NDO callback to set port mac address
+ * @netdev: network interface device structure
+ * @p: pointer to an address structure
+ *
+ * Returns 0 on success, negative on failure
+ **/
+static int idpf_set_mac(struct net_device *netdev, void *p)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct sockaddr *addr = p;
+	int err = 0;
+
+	if (!vport)
+		return -EINVAL;
+
+	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+			     VIRTCHNL2_CAP_MACFILTER)) {
+		dev_info(&vport->adapter->pdev->dev, "Setting MAC address is not supported\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (!is_valid_ether_addr(addr->sa_data)) {
+		dev_info(&vport->adapter->pdev->dev, "Invalid MAC address: %pM\n",
+			 addr->sa_data);
+		return -EADDRNOTAVAIL;
+	}
+
+	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
+		return 0;
+
+	/* Add new filter */
+	err = idpf_add_mac_filter(vport, addr->sa_data, false);
+	if (err) {
+		__idpf_del_mac_filter(vport, addr->sa_data);
+		return err;
+	}
+
+	/* Delete the current filter */
+	if (is_valid_ether_addr(vport->default_mac_addr))
+		idpf_del_mac_filter(vport, vport->default_mac_addr, false);
+
+	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
+	eth_hw_addr_set(netdev, addr->sa_data);
+
+	return err;
+}
+
+/**
+ * idpf_alloc_dma_mem - Allocate dma memory
+ * @hw: pointer to hw struct
+ * @mem: pointer to dma_mem struct
+ * @size: size of the memory to allocate
+ */
+void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem, u64 size)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+	size_t sz = ALIGN(size, 4096);
+
+	mem->va = dma_alloc_coherent(&adapter->pdev->dev, sz,
+				     &mem->pa, GFP_KERNEL | __GFP_ZERO);
+	mem->size = sz;
+
+	return mem->va;
+}
+
+/**
+ * idpf_free_dma_mem - Free the allocated dma memory
+ * @hw: pointer to hw struct
+ * @mem: pointer to dma_mem struct
+ */
+void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
+{
+	struct idpf_adapter *adapter = (struct idpf_adapter *)hw->back;
+
+	dma_free_coherent(&adapter->pdev->dev, mem->size,
+			  mem->va, mem->pa);
+	mem->size = 0;
+	mem->va = NULL;
+	mem->pa = 0;
+}
+
+static const struct net_device_ops idpf_netdev_ops_splitq = {
+	.ndo_open = idpf_open,
+	.ndo_stop = idpf_stop,
+	.ndo_start_xmit = idpf_tx_splitq_start,
+	.ndo_features_check = idpf_features_check,
+	.ndo_set_rx_mode = idpf_set_rx_mode,
+	.ndo_validate_addr = eth_validate_addr,
+	.ndo_set_mac_address = idpf_set_mac,
+	.ndo_change_mtu = idpf_change_mtu,
+	.ndo_get_stats64 = idpf_get_stats64,
+	.ndo_fix_features = idpf_fix_features,
+	.ndo_set_features = idpf_set_features,
+	.ndo_setup_tc = idpf_setup_tc,
+};
+
+static const struct net_device_ops idpf_netdev_ops_singleq = {
+	.ndo_open = idpf_open,
+	.ndo_stop = idpf_stop,
+	.ndo_start_xmit = idpf_tx_singleq_start,
+	.ndo_features_check = idpf_features_check,
+	.ndo_set_rx_mode = idpf_set_rx_mode,
+	.ndo_validate_addr = eth_validate_addr,
+	.ndo_set_mac_address = idpf_set_mac,
+	.ndo_change_mtu = idpf_change_mtu,
+	.ndo_get_stats64 = idpf_get_stats64,
+	.ndo_fix_features = idpf_fix_features,
+	.ndo_set_features = idpf_set_features,
+	.ndo_setup_tc = idpf_setup_tc,
+};
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
new file mode 100644
index 000000000000..28b68aae288a
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include "idpf.h"
+#include "idpf_devids.h"
+
+#define DRV_SUMMARY	"Infrastructure Data Path Function Linux Driver"
+static const char idpf_driver_string[] = DRV_SUMMARY;
+static const char idpf_copyright[] = "Copyright (c) 2022, Intel Corporation.";
+
+MODULE_DESCRIPTION(DRV_SUMMARY);
+MODULE_LICENSE("GPL");
+
+/**
+ * idpf_remove - Device removal routine
+ * @pdev: PCI device information struct
+ */
+static void idpf_remove(struct pci_dev *pdev)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+
+	idpf_remove_common(pdev);
+	pci_set_drvdata(pdev, NULL);
+	kfree(adapter);
+}
+
+/**
+ * idpf_shutdown - PCI callback for shutting down device
+ * @pdev: PCI device information struct
+ */
+static void idpf_shutdown(struct pci_dev *pdev)
+{
+	idpf_remove(pdev);
+
+	if (system_state == SYSTEM_POWER_OFF)
+		pci_set_power_state(pdev, PCI_D3hot);
+}
+
+/**
+ * idpf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @ent: entry in idpf_pci_tbl
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+{
+	struct idpf_adapter *adapter;
+
+	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
+	if (!adapter)
+		return -ENOMEM;
+	set_bit(__IDPF_REQ_TX_SPLITQ, adapter->flags);
+	set_bit(__IDPF_REQ_RX_SPLITQ, adapter->flags);
+	if (ent->device == IDPF_DEV_ID_PF)
+		return idpf_pf_probe(pdev, adapter);
+	if (ent->device == IAVF_DEV_ID_VF)
+		return idpf_vf_probe(pdev, adapter);
+
+	dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
+		ent->device);
+	return -EINVAL;
+}
+
+/* idpf_pci_tbl - PCI Dev iapf ID Table
+ *
+ * Wildcard entries (PCI_ANY_ID) should come last
+ * Last entry must be all 0s
+ *
+ * { Vendor ID, Device ID, SubVendor ID, SubDevice ID,
+ *   Class, Class Mask, private data (not used) }
+ */
+static const struct pci_device_id idpf_pci_tbl[] = {
+	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF), 0 },
+	{ PCI_VDEVICE(INTEL, IAVF_DEV_ID_VF), 0 },
+
+	/* required last entry */
+	{ 0, }
+};
+MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
+
+static struct pci_driver idpf_driver = {
+	.name = KBUILD_MODNAME,
+	.id_table = idpf_pci_tbl,
+	.probe = idpf_probe,
+	.sriov_configure = idpf_sriov_configure,
+	.remove = idpf_remove,
+	.shutdown = idpf_shutdown,
+};
+
+/**
+ * idpf_module_init - Driver registration routine
+ *
+ * idpf_module_init is the first routine called when the driver is
+ * loaded. All it does is register with the PCI subsystem.
+ */
+static int __init idpf_module_init(void)
+{
+	int status;
+
+	pr_info("%s - version %d\n", idpf_driver_string, LINUX_VERSION_CODE);
+	pr_info("%s\n", idpf_copyright);
+
+	status = pci_register_driver(&idpf_driver);
+	if (status)
+		pr_err("failed to register pci driver, err %d\n", status);
+
+	return status;
+}
+module_init(idpf_module_init);
+
+/**
+ * idpf_module_exit - Driver exit cleanup routine
+ *
+ * idpf_module_exit is called just before the driver is removed
+ * from memory.
+ */
+static void __exit idpf_module_exit(void)
+{
+	pci_unregister_driver(&idpf_driver);
+	pr_info("module unloaded\n");
+}
+module_exit(idpf_module_exit);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_mem.h b/drivers/net/ethernet/intel/idpf/idpf_mem.h
new file mode 100644
index 000000000000..f06a676513eb
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_mem.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2022 Intel Corporation */
+
+#ifndef _IDPF_MEM_H_
+#define _IDPF_MEM_H_
+
+#include <linux/io.h>
+
+struct idpf_dma_mem {
+	void *va;
+	dma_addr_t pa;
+	size_t size;
+};
+
+#define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
+#define rd32(a, reg)		readl((a)->hw_addr + (reg))
+#define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
+#define rd64(a, reg)		readq((a)->hw_addr + (reg))
+
+#endif /* _IDPF_MEM_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
new file mode 100644
index 000000000000..4fef7436f6dc
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -0,0 +1,1331 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#include <linux/prefetch.h>
+#include "idpf.h"
+
+/**
+ * idpf_tx_singleq_csum - Enable tx checksum offloads
+ * @skb: pointer to skb
+ * @off: pointer to struct that holds offload parameters
+ *
+ * Returns 0 or error (negative) if checksum offload
+ */
+static
+int idpf_tx_singleq_csum(struct sk_buff *skb,
+			 struct idpf_tx_offload_params *off)
+{
+	u32 l4_len = 0, l3_len = 0, l2_len = 0;
+	union {
+		struct iphdr *v4;
+		struct ipv6hdr *v6;
+		unsigned char *hdr;
+	} ip;
+	union {
+		struct tcphdr *tcp;
+		unsigned char *hdr;
+	} l4;
+	__be16 frag_off;
+	unsigned char *exthdr;
+	u32 offset, cmd = 0;
+	u8 l4_proto = 0;
+	bool is_tso;
+
+	if (skb->ip_summed != CHECKSUM_PARTIAL)
+		return 0;
+
+	ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_transport_header(skb);
+
+	/* compute outer L2 header size */
+	l2_len = ip.hdr - skb->data;
+	offset = (l2_len / 2) << IDPF_TX_DESC_LEN_MACLEN_S;
+	is_tso = (off->tx_flags & IDPF_TX_FLAGS_TSO) ? true : false;
+	if (skb->encapsulation) {
+		u32 tunnel = 0;
+
+		/* define outer network header type */
+		if (off->tx_flags & IDPF_TX_FLAGS_IPV4) {
+			tunnel |= is_tso ?
+				  IDPF_TX_CTX_EXT_IP_IPV4 :
+				  IDPF_TX_CTX_EXT_IP_IPV4_NO_CSUM;
+
+			l4_proto = ip.v4->protocol;
+		} else if (off->tx_flags & IDPF_TX_FLAGS_IPV6) {
+			tunnel |= IDPF_TX_CTX_EXT_IP_IPV6;
+
+			exthdr = ip.hdr + sizeof(*ip.v6);
+			l4_proto = ip.v6->nexthdr;
+			if (l4.hdr != exthdr)
+				ipv6_skip_exthdr(skb, exthdr - skb->data,
+						 &l4_proto, &frag_off);
+		}
+
+		/* define outer transport */
+		switch (l4_proto) {
+		case IPPROTO_UDP:
+			tunnel |= IDPF_TXD_CTX_UDP_TUNNELING;
+			off->tx_flags |= IDPF_TX_FLAGS_TUNNEL;
+			break;
+		case IPPROTO_GRE:
+			tunnel |= IDPF_TXD_CTX_GRE_TUNNELING;
+			off->tx_flags |= IDPF_TX_FLAGS_TUNNEL;
+			break;
+		case IPPROTO_IPIP:
+		case IPPROTO_IPV6:
+			off->tx_flags |= IDPF_TX_FLAGS_TUNNEL;
+			l4.hdr = skb_inner_network_header(skb);
+			break;
+		default:
+			if (is_tso)
+				return -1;
+
+			skb_checksum_help(skb);
+			return 0;
+		}
+
+		/* compute outer L3 header size */
+		tunnel |= ((l4.hdr - ip.hdr) / 4) <<
+			  IDPF_TXD_CTX_QW0_TUNN_EXT_IPLEN_S;
+
+		/* switch IP header pointer from outer to inner header */
+		ip.hdr = skb_inner_network_header(skb);
+
+		/* compute tunnel header size */
+		tunnel |= ((ip.hdr - l4.hdr) / 2) <<
+			  IDPF_TXD_CTX_QW0_TUNN_NATLEN_S;
+
+		/* indicate if we need to offload outer UDP header */
+		if (is_tso &&
+		    !(skb_shinfo(skb)->gso_type & SKB_GSO_PARTIAL) &&
+		    (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_TUNNEL_CSUM))
+			tunnel |= IDPF_TXD_CTX_QW0_TUNN_L4T_CS_M;
+
+		/* record tunnel offload values */
+		off->cd_tunneling |= tunnel;
+
+		/* switch L4 header pointer from outer to inner */
+		l4.hdr = skb_inner_transport_header(skb);
+		l4_proto = 0;
+
+		/* reset type as we transition from outer to inner headers */
+		off->tx_flags &= ~(IDPF_TX_FLAGS_IPV4 | IDPF_TX_FLAGS_IPV6);
+		if (ip.v4->version == 4)
+			off->tx_flags |= IDPF_TX_FLAGS_IPV4;
+		if (ip.v6->version == 6)
+			off->tx_flags |= IDPF_TX_FLAGS_IPV6;
+	}
+
+	/* Enable IP checksum offloads */
+	if (off->tx_flags & IDPF_TX_FLAGS_IPV4) {
+		l4_proto = ip.v4->protocol;
+		/* the stack computes the IP header already, the only time we
+		 * need the hardware to recompute it is in the case of TSO.
+		 */
+		if (is_tso)
+			cmd |= IDPF_TX_DESC_CMD_IIPT_IPV4_CSUM;
+		else
+			cmd |= IDPF_TX_DESC_CMD_IIPT_IPV4;
+
+	} else if (off->tx_flags & IDPF_TX_FLAGS_IPV6) {
+		cmd |= IDPF_TX_DESC_CMD_IIPT_IPV6;
+		exthdr = ip.hdr + sizeof(struct ipv6hdr);
+		l4_proto = ip.v6->nexthdr;
+		if (l4.hdr != exthdr)
+			ipv6_skip_exthdr(skb, exthdr - skb->data, &l4_proto,
+					 &frag_off);
+	} else {
+		return -1;
+	}
+
+	/* compute inner L3 header size */
+	l3_len = l4.hdr - ip.hdr;
+	offset |= (l3_len / 4) << IDPF_TX_DESC_LEN_IPLEN_S;
+
+	/* Enable L4 checksum offloads */
+	switch (l4_proto) {
+	case IPPROTO_TCP:
+		/* enable checksum offloads */
+		cmd |= IDPF_TX_DESC_CMD_L4T_EOFT_TCP;
+		l4_len = l4.tcp->doff;
+		offset |= l4_len << IDPF_TX_DESC_LEN_L4_LEN_S;
+		break;
+	case IPPROTO_UDP:
+		/* enable UDP checksum offload */
+		cmd |= IDPF_TX_DESC_CMD_L4T_EOFT_UDP;
+		l4_len = (sizeof(struct udphdr) >> 2);
+		offset |= l4_len << IDPF_TX_DESC_LEN_L4_LEN_S;
+		break;
+	case IPPROTO_SCTP:
+		/* enable SCTP checksum offload */
+		cmd |= IDPF_TX_DESC_CMD_L4T_EOFT_SCTP;
+		l4_len = sizeof(struct sctphdr) >> 2;
+		offset |= l4_len << IDPF_TX_DESC_LEN_L4_LEN_S;
+		break;
+
+	default:
+		if (is_tso)
+			return -1;
+		skb_checksum_help(skb);
+		return 0;
+	}
+
+	off->td_cmd |= cmd;
+	off->hdr_offsets |= offset;
+	return 1;
+}
+
+/**
+ * idpf_tx_singleq_map - Build the Tx base descriptor
+ * @tx_q: queue to send buffer on
+ * @first: first buffer info buffer to use
+ * @offloads: pointer to struct that holds offload parameters
+ *
+ * This function loops over the skb data pointed to by *first
+ * and gets a physical address for each memory location and programs
+ * it and the length into the transmit base mode descriptor.
+ */
+static void
+idpf_tx_singleq_map(struct idpf_queue *tx_q, struct idpf_tx_buf *first,
+		    struct idpf_tx_offload_params *offloads)
+{
+	u32 offsets = offloads->hdr_offsets;
+	struct idpf_base_tx_desc *tx_desc;
+	u64 td_cmd = offloads->td_cmd;
+	unsigned int data_len, size;
+	struct idpf_tx_buf *tx_buf;
+	u16 i = tx_q->next_to_use;
+	struct netdev_queue *nq;
+	struct sk_buff *skb;
+	skb_frag_t *frag;
+	dma_addr_t dma;
+	u64 td_tag = 0;
+
+	skb = first->skb;
+
+	data_len = skb->data_len;
+	size = skb_headlen(skb);
+
+	tx_desc = IDPF_BASE_TX_DESC(tx_q, i);
+
+	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
+
+	tx_buf = first;
+
+	/* write each descriptor with CRC bit */
+	if (tx_q->vport->adapter->dev_ops.crc_enable)
+		tx_q->vport->adapter->dev_ops.crc_enable(&td_cmd);
+
+	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
+		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+
+		if (dma_mapping_error(tx_q->dev, dma))
+			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buf, len, size);
+		dma_unmap_addr_set(tx_buf, dma, dma);
+
+		/* align size to end of page */
+		max_data += -dma & (IDPF_TX_MAX_READ_REQ_SIZE - 1);
+		tx_desc->buf_addr = cpu_to_le64(dma);
+
+		/* account for data chunks larger than the hardware
+		 * can handle
+		 */
+		while (unlikely(size > IDPF_TX_MAX_DESC_DATA)) {
+			tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd,
+								  offsets,
+								  max_data,
+								  td_tag);
+			tx_desc++;
+			i++;
+
+			if (i == tx_q->desc_count) {
+				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+				i = 0;
+			}
+
+			dma += max_data;
+			size -= max_data;
+
+			max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+			tx_desc->buf_addr = cpu_to_le64(dma);
+		}
+
+		if (likely(!data_len))
+			break;
+		tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd, offsets,
+							  size, td_tag);
+		tx_desc++;
+		i++;
+
+		if (i == tx_q->desc_count) {
+			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			i = 0;
+		}
+
+		size = skb_frag_size(frag);
+		data_len -= size;
+
+		dma = skb_frag_dma_map(tx_q->dev, frag, 0, size,
+				       DMA_TO_DEVICE);
+
+		tx_buf = &tx_q->tx_buf[i];
+	}
+
+	/* record bytecount for BQL */
+	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	netdev_tx_sent_queue(nq, first->bytecount);
+
+	/* record SW timestamp if HW timestamp is not available */
+	skb_tx_timestamp(first->skb);
+
+	/* write last descriptor with RS and EOP bits */
+	td_cmd |= (u64)(IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS);
+
+	tx_desc->qw1 = idpf_tx_singleq_build_ctob(td_cmd, offsets, size, td_tag);
+
+	i++;
+	if (i == tx_q->desc_count)
+		i = 0;
+
+	/* set next_to_watch value indicating a packet is present */
+	first->next_to_watch = tx_desc;
+
+	idpf_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
+}
+
+/**
+ * idpf_tx_singleq_get_ctx_desc - grab next desc and update buffer ring
+ * @txq: queue to put context descriptor on
+ *
+ * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
+ * ring entry to reflect that this index is a context descriptor
+ */
+static struct idpf_base_tx_ctx_desc *
+idpf_tx_singleq_get_ctx_desc(struct idpf_queue *txq)
+{
+	struct idpf_base_tx_ctx_desc *ctx_desc;
+	int i = txq->next_to_use;
+
+	memset(&txq->tx_buf[i], 0, sizeof(struct idpf_tx_buf));
+	txq->tx_buf[i].ctx_entry = true;
+
+	/* grab the next descriptor */
+	ctx_desc = IDPF_BASE_TX_CTX_DESC(txq, i);
+	i++;
+	txq->next_to_use = (i < txq->desc_count) ? i : 0;
+
+	return ctx_desc;
+}
+
+/**
+ * idpf_tx_singleq_frame - Sends buffer on Tx ring using base descriptors
+ * @skb: send buffer
+ * @tx_q: queue to send buffer on
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+static netdev_tx_t
+idpf_tx_singleq_frame(struct sk_buff *skb, struct idpf_queue *tx_q)
+{
+	struct idpf_tx_offload_params offload = {0};
+	struct idpf_tx_buf *first;
+	unsigned int count;
+	int csum, tso;
+	__be16 protocol;
+
+	count = idpf_tx_desc_count_required(skb);
+
+	if (idpf_chk_linearize(skb, tx_q->tx_max_bufs, count)) {
+		if (__skb_linearize(skb))
+			return idpf_tx_drop_skb(tx_q, skb);
+
+		count = idpf_size_to_txd_count(skb->len);
+		u64_stats_update_begin(&tx_q->stats_sync);
+		tx_q->q_stats.tx.linearize++;
+		u64_stats_update_end(&tx_q->stats_sync);
+	}
+
+	if (idpf_tx_maybe_stop_common(tx_q,
+				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
+				      IDPF_TX_DESCS_FOR_CTX)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+		return NETDEV_TX_BUSY;
+	}
+
+	protocol = vlan_get_protocol(skb);
+	if (protocol == htons(ETH_P_IP))
+		offload.tx_flags |= IDPF_TX_FLAGS_IPV4;
+	else if (protocol == htons(ETH_P_IPV6))
+		offload.tx_flags |= IDPF_TX_FLAGS_IPV6;
+
+	tso = idpf_tso(skb, &offload);
+	if (tso < 0)
+		goto out_drop;
+
+	csum = idpf_tx_singleq_csum(skb, &offload);
+	if (csum < 0)
+		goto out_drop;
+
+	if (tso || offload.cd_tunneling) {
+		struct idpf_base_tx_ctx_desc *ctx_desc =
+			idpf_tx_singleq_get_ctx_desc(tx_q);
+		u64 qw1 = (u64)IDPF_TX_DESC_DTYPE_CTX;
+
+		if (tso) {
+			qw1 |= IDPF_TX_CTX_DESC_TSO << IDPF_TXD_CTX_QW1_CMD_S;
+			qw1 |= ((u64)offload.tso_len << IDPF_TXD_CTX_QW1_TSO_LEN_S) &
+				IDPF_TXD_CTX_QW1_TSO_LEN_M;
+			qw1 |= ((u64)offload.mss << IDPF_TXD_CTX_QW1_MSS_S) &
+				IDPF_TXD_CTX_QW1_MSS_M;
+
+			u64_stats_update_begin(&tx_q->stats_sync);
+			tx_q->q_stats.tx.lso_pkts++;
+			u64_stats_update_end(&tx_q->stats_sync);
+		}
+
+		ctx_desc->qw0.tunneling_params =
+			cpu_to_le32(offload.cd_tunneling);
+
+		ctx_desc->qw0.l2tag2 = cpu_to_le16(0);
+		ctx_desc->qw0.rsvd1 = cpu_to_le16(0);
+		ctx_desc->qw1 = cpu_to_le64(qw1);
+	}
+
+	/* record the location of the first descriptor for this packet */
+	first = &tx_q->tx_buf[tx_q->next_to_use];
+	first->skb = skb;
+
+	if (tso) {
+		first->gso_segs = offload.tso_segs;
+		first->bytecount = skb->len + ((first->gso_segs - 1) * offload.tso_hdr_len);
+	} else {
+		first->bytecount = max_t(unsigned int, skb->len, ETH_ZLEN);
+		first->gso_segs = 1;
+	}
+	idpf_tx_singleq_map(tx_q, first, &offload);
+
+	return NETDEV_TX_OK;
+
+out_drop:
+	return idpf_tx_drop_skb(tx_q, skb);
+}
+
+/**
+ * idpf_tx_singleq_start - Selects the right Tx queue to send buffer
+ * @skb: send buffer
+ * @netdev: network interface device structure
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
+				  struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_queue *tx_q;
+
+	if (!vport || test_bit(__IDPF_HR_RESET_IN_PROG, vport->adapter->flags))
+		return NETDEV_TX_BUSY;
+
+	tx_q = vport->txqs[skb->queue_mapping];
+
+	/* hardware can't handle really short frames, hardware padding works
+	 * beyond this point
+	 */
+	if (skb_put_padto(skb, IDPF_TX_MIN_LEN)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+		return NETDEV_TX_OK;
+	}
+
+	return idpf_tx_singleq_frame(skb, tx_q);
+}
+
+/**
+ * idpf_tx_singleq_clean - Reclaim resources from queue
+ * @tx_q: Tx queue to clean
+ * @napi_budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ */
+static bool idpf_tx_singleq_clean(struct idpf_queue *tx_q, int napi_budget, int *cleaned)
+{
+	unsigned int budget = tx_q->vport->compln_clean_budget;
+	unsigned int total_bytes = 0, total_pkts = 0;
+	struct idpf_base_tx_desc *tx_desc;
+	s16 ntc = tx_q->next_to_clean;
+	struct idpf_tx_buf *tx_buf;
+	struct idpf_vport *vport;
+	struct netdev_queue *nq;
+
+	tx_desc = IDPF_BASE_TX_DESC(tx_q, ntc);
+	tx_buf = &tx_q->tx_buf[ntc];
+	ntc -= tx_q->desc_count;
+
+	do {
+		struct idpf_base_tx_desc *eop_desc;
+
+		/* If this entry in the ring was used as a context descriptor,
+		 * it's corresponding entry in the buffer ring will indicate as
+		 * such. We can skip this descriptor since there is no buffer
+		 * to clean.
+		 */
+		if (tx_buf->ctx_entry) {
+			/* Clear this flag here to avoid stale flag values when this
+			 * buffer is used for actual data in the future. There are
+			 * cases where the tx_buf struct / the flags field will not
+			 * be cleared before being reused.
+			 */
+			tx_buf->ctx_entry = false;
+			goto fetch_next_txq_desc;
+		}
+
+		/* if next_to_watch is not set then no work pending */
+		eop_desc = (struct idpf_base_tx_desc *)tx_buf->next_to_watch;
+		if (!eop_desc)
+			break;
+
+		/* prevent any other reads prior to eop_desc */
+		smp_rmb();
+
+		/* if the descriptor isn't done, no work yet to do */
+		if (!(eop_desc->qw1 &
+		      cpu_to_le64(IDPF_TX_DESC_DTYPE_DESC_DONE)))
+			break;
+
+		/* clear next_to_watch to prevent false hangs */
+		tx_buf->next_to_watch = NULL;
+
+		/* update the statistics for this packet */
+		total_bytes += tx_buf->bytecount;
+		total_pkts += tx_buf->gso_segs;
+
+		napi_consume_skb(tx_buf->skb, napi_budget);
+
+		/* unmap skb header data */
+		dma_unmap_single(tx_q->dev,
+				 dma_unmap_addr(tx_buf, dma),
+				 dma_unmap_len(tx_buf, len),
+				 DMA_TO_DEVICE);
+
+		/* clear tx_buf data */
+		tx_buf->skb = NULL;
+		dma_unmap_len_set(tx_buf, len, 0);
+
+		/* unmap remaining buffers */
+		while (tx_desc != eop_desc) {
+			tx_buf++;
+			tx_desc++;
+			ntc++;
+			if (unlikely(!ntc)) {
+				ntc -= tx_q->desc_count;
+				tx_buf = tx_q->tx_buf;
+				tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+			}
+
+			/* unmap any remaining paged data */
+			if (dma_unmap_len(tx_buf, len)) {
+				dma_unmap_page(tx_q->dev,
+					       dma_unmap_addr(tx_buf, dma),
+					       dma_unmap_len(tx_buf, len),
+					       DMA_TO_DEVICE);
+				dma_unmap_len_set(tx_buf, len, 0);
+			}
+		}
+
+		/* update budget only if we did something */
+		budget--;
+
+fetch_next_txq_desc:
+		tx_buf++;
+		tx_desc++;
+		ntc++;
+		if (unlikely(!ntc)) {
+			ntc -= tx_q->desc_count;
+			tx_buf = tx_q->tx_buf;
+			tx_desc = IDPF_BASE_TX_DESC(tx_q, 0);
+		}
+	} while (likely(budget));
+
+	ntc += tx_q->desc_count;
+	tx_q->next_to_clean = ntc;
+
+	*cleaned += total_pkts;
+
+	u64_stats_update_begin(&tx_q->stats_sync);
+	tx_q->q_stats.tx.packets += total_pkts;
+	tx_q->q_stats.tx.bytes += total_bytes;
+	u64_stats_update_end(&tx_q->stats_sync);
+
+	vport = tx_q->vport;
+	nq = netdev_get_tx_queue(vport->netdev, tx_q->idx);
+	netdev_tx_completed_queue(nq, total_pkts, total_bytes);
+
+	if (unlikely(total_pkts && netif_carrier_ok(vport->netdev) &&
+		     (IDPF_DESC_UNUSED(tx_q) >= IDPF_TX_WAKE_THRESH))) {
+		/* Make sure any other threads stopping queue after this see
+		 * new next_to_clean.
+		 */
+		smp_mb();
+		if (__netif_subqueue_stopped(vport->netdev, tx_q->idx) &&
+		    vport->state == __IDPF_VPORT_UP)
+			netif_wake_subqueue(tx_q->vport->netdev, tx_q->idx);
+	}
+
+	return !!budget;
+}
+
+/**
+ * idpf_tx_singleq_clean_all - Clean all Tx queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool
+idpf_tx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget, int *cleaned)
+{
+	int num_txq = q_vec->num_txq;
+	bool clean_complete = true;
+	struct idpf_queue *q;
+	int i, budget_per_q;
+
+	budget_per_q = num_txq ? max(budget / num_txq, 1) : 0;
+	for (i = 0; i < num_txq; i++) {
+		q = q_vec->tx[i];
+		clean_complete = idpf_tx_singleq_clean(q, budget_per_q, cleaned);
+	}
+
+	return clean_complete;
+}
+
+/**
+ * idpf_rx_singleq_test_staterr - tests bits in Rx descriptor
+ * status and error fields
+ * @rx_desc: pointer to receive descriptor (in le64 format)
+ * @stat_err_bits: value to mask
+ *
+ * This function does some fast chicanery in order to return the
+ * value of the mask which is really only used for boolean tests.
+ * The status_error_ptype_len doesn't need to be shifted because it begins
+ * at offset zero.
+ */
+bool
+idpf_rx_singleq_test_staterr(union virtchnl2_rx_desc *rx_desc,
+			     const u64 stat_err_bits)
+{
+	return !!(rx_desc->base_wb.qword1.status_error_ptype_len &
+		  cpu_to_le64(stat_err_bits));
+}
+
+/**
+ * idpf_rx_singleq_is_non_eop - process handling of non-EOP buffers
+ * @rxq: Rx ring being processed
+ * @rx_desc: Rx descriptor for current buffer
+ * @skb: Current socket buffer containing buffer in progress
+ */
+bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
+				union virtchnl2_rx_desc *rx_desc,
+				struct sk_buff *skb)
+{
+	/* if we are the last buffer then there is nothing else to do */
+	if (likely(idpf_rx_singleq_test_staterr(rx_desc, IDPF_RXD_EOF_SINGLEQ)))
+		return false;
+
+	/* place skb in next buffer to be received */
+	rxq->rx_buf.buf[rxq->next_to_clean].skb = skb;
+
+	return true;
+}
+
+/**
+ * idpf_rx_singleq_csum - Indicate in skb if checksum is good
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: skb currently being received and modified
+ * @csum_bits: checksum bits from descriptor
+ * @ptype: the packet type decoded by hardware
+ *
+ * skb->protocol must be set before this function is called
+ */
+static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
+				 struct idpf_rx_csum_decoded *csum_bits,
+				 u16 ptype)
+{
+	struct idpf_rx_ptype_decoded decoded;
+	bool ipv4, ipv6;
+
+	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
+	skb->ip_summed = CHECKSUM_NONE;
+	skb_checksum_none_assert(skb);
+
+	/* check if Rx checksum is enabled */
+	if (!(rxq->vport->netdev->features & NETIF_F_RXCSUM))
+		return;
+
+	/* check if HW has decoded the packet and checksum */
+	if (!(csum_bits->l3l4p))
+		return;
+
+	decoded = rxq->vport->rx_ptype_lkup[ptype];
+	if (!(decoded.known && decoded.outer_ip))
+		return;
+
+	ipv4 = (decoded.outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&
+	       (decoded.outer_ip_ver == IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = (decoded.outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&
+	       (decoded.outer_ip_ver == IDPF_RX_PTYPE_OUTER_IPV6);
+
+	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
+		goto checksum_fail;
+	else if (ipv6 && (csum_bits->ipv6exadd))
+		goto checksum_fail;
+
+	/* check for L4 errors and handle packets that were not able to be
+	 * checksummed due to arrival speed
+	 */
+	if (csum_bits->l4e)
+		goto checksum_fail;
+
+	if (csum_bits->nat && csum_bits->eudpe)
+		goto checksum_fail;
+
+	/* Handle packets that were not able to be checksummed due to arrival
+	 * speed, in this case the stack can compute the csum.
+	 */
+	if (csum_bits->pprs)
+		return;
+
+	/* If there is an outer header present that might contain a checksum
+	 * we need to bump the checksum level by 1 to reflect the fact that
+	 * we are indicating we validated the inner checksum.
+	 */
+	if (decoded.tunnel_type >= IDPF_RX_PTYPE_TUNNEL_IP_GRENAT)
+		skb->csum_level = 1;
+
+	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
+	switch (decoded.inner_prot) {
+	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
+	case IDPF_RX_PTYPE_INNER_PROT_TCP:
+	case IDPF_RX_PTYPE_INNER_PROT_UDP:
+	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+	default:
+		break;
+	}
+	return;
+
+checksum_fail:
+	u64_stats_update_begin(&rxq->stats_sync);
+	rxq->q_stats.rx.hw_csum_err++;
+	u64_stats_update_end(&rxq->stats_sync);
+}
+
+/**
+ * idpf_rx_singleq_base_csum - Indicate in skb if hw indicated a good cksum
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ * @ptype: Rx packet type
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M legacy 32byte
+ * descriptor writeback format.
+ **/
+static void
+idpf_rx_singleq_base_csum(struct idpf_queue *rx_q, struct sk_buff *skb,
+			  union virtchnl2_rx_desc *rx_desc, u16 ptype)
+{
+	struct idpf_rx_csum_decoded csum_bits;
+	u32 rx_error, rx_status;
+	u64 qword;
+
+	qword = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
+
+	rx_status = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_M, qword);
+	rx_error = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, qword);
+
+	csum_bits.ipe = !!FIELD_GET(BIT(VIRTCHNL2_RX_BASE_DESC_ERROR_IPE_S),
+				    rx_error);
+	csum_bits.eipe = !!FIELD_GET(BIT(VIRTCHNL2_RX_BASE_DESC_ERROR_EIPE_S),
+				     rx_error);
+	csum_bits.l4e = !!FIELD_GET(BIT(VIRTCHNL2_RX_BASE_DESC_ERROR_L4E_S),
+				    rx_error);
+	csum_bits.pprs = !!FIELD_GET(BIT(VIRTCHNL2_RX_BASE_DESC_ERROR_PPRS_S),
+				     rx_error);
+	csum_bits.l3l4p =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_BASE_DESC_STATUS_L3L4P_S),
+			    rx_status);
+	csum_bits.ipv6exadd =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_S),
+			    rx_status);
+	csum_bits.nat = 0;
+	csum_bits.eudpe = 0;
+
+	idpf_rx_singleq_csum(rx_q, skb, &csum_bits, ptype);
+}
+
+/**
+ * idpf_rx_singleq_flex_csum - Indicate in skb if hw indicated a good cksum
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: the receive descriptor
+ * @ptype: Rx packet type
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static void
+idpf_rx_singleq_flex_csum(struct idpf_queue *rx_q, struct sk_buff *skb,
+			  union virtchnl2_rx_desc *rx_desc, u16 ptype)
+{
+	struct idpf_rx_csum_decoded csum_bits;
+	u16 rx_status0, rx_status1;
+
+	rx_status0 = le16_to_cpu(rx_desc->flex_nic_wb.status_error0);
+	rx_status1 = le16_to_cpu(rx_desc->flex_nic_wb.status_error1);
+
+	csum_bits.ipe =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_IPE_S),
+			    rx_status0);
+	csum_bits.eipe =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S),
+			    rx_status0);
+	csum_bits.l4e =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_L4E_S),
+			    rx_status0);
+	csum_bits.eudpe =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S),
+			    rx_status0);
+	csum_bits.l3l4p =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_L3L4P_S),
+			    rx_status0);
+	csum_bits.ipv6exadd =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_IPV6EXADD_S),
+			    rx_status0);
+	csum_bits.nat =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_S),
+			    rx_status1);
+	csum_bits.pprs = 0;
+
+	idpf_rx_singleq_csum(rx_q, skb, &csum_bits, ptype);
+}
+
+/**
+ * idpf_rx_singleq_base_hash - set the hash value in the skb
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: specific descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M legacy 32byte
+ * descriptor writeback format.
+ **/
+static void
+idpf_rx_singleq_base_hash(struct idpf_queue *rx_q, struct sk_buff *skb,
+			  union virtchnl2_rx_desc *rx_desc,
+			  struct idpf_rx_ptype_decoded *decoded)
+{
+	const __le64 rss_mask =
+		cpu_to_le64((u64)VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH <<
+				VIRTCHNL2_RX_BASE_DESC_STATUS_FLTSTAT_S);
+	u32 hash;
+
+	if (!(rx_q->vport->netdev->features & NETIF_F_RXHASH))
+		return;
+
+	if ((rx_desc->base_wb.qword1.status_error_ptype_len & rss_mask) ==
+								rss_mask) {
+		hash = le32_to_cpu(rx_desc->base_wb.qword0.hi_dword.rss);
+		skb_set_hash(skb, hash, idpf_ptype_to_htype(decoded));
+	}
+}
+
+/**
+ * idpf_rx_singleq_flex_hash - set the hash value in the skb
+ * @rx_q: Rx completion queue
+ * @skb: skb currently being received and modified
+ * @rx_desc: specific descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ **/
+static void
+idpf_rx_singleq_flex_hash(struct idpf_queue *rx_q, struct sk_buff *skb,
+			  union virtchnl2_rx_desc *rx_desc,
+			  struct idpf_rx_ptype_decoded *decoded)
+{
+	if (!(rx_q->vport->netdev->features & NETIF_F_RXHASH))
+		return;
+
+	if (FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S),
+		      le16_to_cpu(rx_desc->flex_nic_wb.status_error0)))
+		skb_set_hash(skb, le32_to_cpu(rx_desc->flex_nic_wb.rss_hash),
+			     idpf_ptype_to_htype(decoded));
+}
+
+/**
+ * idpf_rx_singleq_process_skb_fields - Populate skb header fields from Rx
+ * descriptor
+ * @rx_q: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @rx_desc: descriptor for skb
+ * @ptype: packet type
+ *
+ * This function checks the ring, descriptor, and packet information in
+ * order to populate the hash, checksum, VLAN, protocol, and
+ * other fields within the skb.
+ */
+void
+idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q, struct sk_buff *skb,
+				   union virtchnl2_rx_desc *rx_desc,
+				   u16 ptype)
+{
+	struct idpf_rx_ptype_decoded decoded =
+					rx_q->vport->rx_ptype_lkup[ptype];
+
+	/* modifies the skb - consumes the enet header */
+	skb->protocol = eth_type_trans(skb, rx_q->vport->netdev);
+
+	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
+		idpf_rx_singleq_base_hash(rx_q, skb, rx_desc, &decoded);
+		idpf_rx_singleq_base_csum(rx_q, skb, rx_desc, ptype);
+	} else {
+		idpf_rx_singleq_flex_hash(rx_q, skb, rx_desc, &decoded);
+		idpf_rx_singleq_flex_csum(rx_q, skb, rx_desc, ptype);
+	}
+}
+
+/**
+ * idpf_rx_singleq_buf_hw_alloc_all - Replace used receive buffers
+ * @rx_q: queue for which the hw buffers are allocated
+ * @cleaned_count: number of buffers to replace
+ *
+ * Returns false if all allocations were successful, true if any fail
+ */
+bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rx_q,
+				      u16 cleaned_count)
+{
+	struct virtchnl2_singleq_rx_buf_desc *singleq_rx_desc = NULL;
+	struct idpf_page_info *page_info;
+	u16 nta = rx_q->next_to_alloc;
+	struct idpf_rx_buf *buf;
+
+	/* do nothing if no valid netdev defined */
+	if (!rx_q->vport->netdev || !cleaned_count)
+		return false;
+
+	singleq_rx_desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, nta);
+	buf = &rx_q->rx_buf.buf[nta];
+	page_info = &buf->page_info[buf->page_indx];
+
+	do {
+		if (unlikely(!page_info->page)) {
+			if (!idpf_init_rx_buf_hw_alloc(rx_q, buf))
+				break;
+		}
+
+		/* Refresh the desc even if buffer_addrs didn't change
+		 * because each write-back erases this info.
+		 */
+		singleq_rx_desc->pkt_addr =
+			cpu_to_le64(page_info->dma + page_info->page_offset);
+		singleq_rx_desc->hdr_addr = 0;
+		singleq_rx_desc++;
+
+		buf++;
+		nta++;
+		if (unlikely(nta == rx_q->desc_count)) {
+			singleq_rx_desc = IDPF_SINGLEQ_RX_BUF_DESC(rx_q, 0);
+			buf = rx_q->rx_buf.buf;
+			nta = 0;
+		}
+
+		page_info = &buf->page_info[buf->page_indx];
+
+		cleaned_count--;
+	} while (cleaned_count);
+
+	if (rx_q->next_to_alloc != nta) {
+		idpf_rx_buf_hw_update(rx_q, nta);
+		rx_q->next_to_alloc = nta;
+	}
+
+	return !!cleaned_count;
+}
+
+/**
+ * idpf_rx_reuse_page - Put recycled buffer back onto ring
+ * @rxq: Rx descriptor ring to store buffers on
+ * @old_buf: donor buffer to have page reused
+ */
+static void idpf_rx_reuse_page(struct idpf_queue *rxq,
+			       struct idpf_rx_buf *old_buf)
+{
+	u16 ntu = rxq->next_to_use;
+	struct idpf_rx_buf *new_buf;
+
+	new_buf = &rxq->rx_buf.buf[ntu];
+
+	/* Transfer page from old buffer to new buffer.  Move each member
+	 * individually to avoid possible store forwarding stalls and
+	 * unnecessary copy of skb.
+	 */
+	new_buf->page_info[new_buf->page_indx].dma =
+				old_buf->page_info[old_buf->page_indx].dma;
+	new_buf->page_info[new_buf->page_indx].page =
+				old_buf->page_info[old_buf->page_indx].page;
+	new_buf->page_info[new_buf->page_indx].page_offset =
+			old_buf->page_info[old_buf->page_indx].page_offset;
+	new_buf->page_info[new_buf->page_indx].pagecnt_bias =
+			old_buf->page_info[old_buf->page_indx].pagecnt_bias;
+}
+
+/**
+ * idpf_rx_singleq_recycle_buf - Clean up used buffer and either recycle or free
+ * @rxq: Rx descriptor queue to transact packets on
+ * @rx_buf: Rx buffer to pull data from
+ *
+ * This function will clean up the contents of the rx_buf. It will either
+ * recycle the buffer or unmap it and free the associated resources.
+ *
+ * Returns true if the buffer is reused, false if the buffer is freed.
+ */
+static bool idpf_rx_singleq_recycle_buf(struct idpf_queue *rxq,
+					struct idpf_rx_buf *rx_buf)
+{
+	struct idpf_page_info *page_info =
+			&rx_buf->page_info[rx_buf->page_indx];
+
+	bool recycled = false;
+
+	if (idpf_rx_can_reuse_page(rx_buf)) {
+		/* hand second half of page back to the queue */
+		idpf_rx_reuse_page(rxq, rx_buf);
+		recycled = true;
+	} else {
+		/* we are not reusing the buffer so unmap it */
+		dma_unmap_page_attrs(rxq->dev, page_info->dma, PAGE_SIZE,
+				     DMA_FROM_DEVICE, IDPF_RX_DMA_ATTR);
+		__page_frag_cache_drain(page_info->page,
+					page_info->pagecnt_bias);
+	}
+
+	/* clear contents of buffer_info */
+	page_info->page = NULL;
+	rx_buf->skb = NULL;
+
+	return recycled;
+}
+
+/**
+ * idpf_rx_singleq_put_buf - Wrapper function to clean and recycle buffers
+ * @rxq: Rx descriptor queue to transact packets on
+ * @rx_buf: Rx buffer to pull data from
+ *
+ * This function will update the next_to_use/next_to_alloc if the current
+ * buffer is recycled.
+ */
+static void idpf_rx_singleq_put_buf(struct idpf_queue *rxq,
+				    struct idpf_rx_buf *rx_buf)
+{
+	u16 ntu = rxq->next_to_use;
+	bool recycled = false;
+
+	recycled = idpf_rx_singleq_recycle_buf(rxq, rx_buf);
+
+	/* update, and store next to alloc if the buffer was recycled */
+	if (recycled) {
+		ntu++;
+		rxq->next_to_use = (ntu < rxq->desc_count) ? ntu : 0;
+	}
+}
+
+/**
+ * idpf_rx_singleq_bump_ntc - Bump and wrap q->next_to_clean value
+ * @rxq: queue to bump
+ */
+void idpf_rx_singleq_bump_ntc(struct idpf_queue *rxq)
+{
+	u16 ntc = rxq->next_to_clean + 1;
+	/* fetch, update, and store next to clean */
+	if (ntc < rxq->desc_count)
+		rxq->next_to_clean = ntc;
+	else
+		rxq->next_to_clean = 0;
+}
+
+/**
+ * idpf_rx_singleq_get_buf_page - Fetch Rx buffer page and synchronize data
+ * @dev: device struct
+ * @rx_buf: Rx buf to fetch page for
+ * @size: size of buffer to add to skb
+ *
+ * This function will pull an Rx buffer page from the ring and synchronize it
+ * for use by the CPU.
+ */
+static struct sk_buff *
+idpf_rx_singleq_get_buf_page(struct device *dev, struct idpf_rx_buf *rx_buf,
+			     const unsigned int size)
+{
+	struct idpf_page_info *page_info;
+
+	page_info = &rx_buf->page_info[rx_buf->page_indx];
+	prefetch(page_info->page);
+
+	/* we are reusing so sync this buffer for CPU use */
+	dma_sync_single_range_for_cpu(dev, page_info->dma,
+				      page_info->page_offset, size,
+				      DMA_FROM_DEVICE);
+
+	/* We have pulled a buffer for use, so decrement pagecnt_bias */
+	page_info->pagecnt_bias--;
+
+	return rx_buf->skb;
+}
+
+/**
+ * idpf_rx_singleq_extract_base_fields - Extract fields from the Rx descriptor
+ * @rx_q: Rx descriptor queue
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size and Rx packet type.
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_1_32B_BASE_M legacy 32byte
+ * descriptor writeback format.
+ */
+static inline void
+idpf_rx_singleq_extract_base_fields(struct idpf_queue *rx_q,
+				    union virtchnl2_rx_desc *rx_desc,
+				    struct idpf_rx_extracted *fields)
+{
+	u64 qword;
+
+	qword = le64_to_cpu(rx_desc->base_wb.qword1.status_error_ptype_len);
+
+	fields->size = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M, qword);
+	fields->rx_ptype = FIELD_GET(VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M, qword);
+}
+
+/**
+ * idpf_rx_singleq_extract_flex_fields - Extract fields from the Rx descriptor
+ * @rx_q: Rx descriptor queue
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ * Decode the Rx descriptor and extract relevant information including the
+ * size and Rx packet type.
+ *
+ * This function only operates on the VIRTCHNL2_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ */
+static inline void
+idpf_rx_singleq_extract_flex_fields(struct idpf_queue *rx_q,
+				    union virtchnl2_rx_desc *rx_desc,
+				    struct idpf_rx_extracted *fields)
+{
+	fields->size = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M,
+				 le16_to_cpu(rx_desc->flex_nic_wb.pkt_len));
+	fields->rx_ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_PTYPE_M,
+				     le16_to_cpu(rx_desc->flex_nic_wb.ptype_flex_flags0));
+}
+
+/**
+ * idpf_rx_singleq_extract_fields - Extract fields from the Rx descriptor
+ * @rx_q: Rx descriptor queue
+ * @rx_desc: the descriptor to process
+ * @fields: storage for extracted values
+ *
+ */
+void
+idpf_rx_singleq_extract_fields(struct idpf_queue *rx_q,
+			       union virtchnl2_rx_desc *rx_desc,
+			       struct idpf_rx_extracted *fields)
+{
+	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
+		idpf_rx_singleq_extract_base_fields(rx_q, rx_desc, fields);
+	else
+		idpf_rx_singleq_extract_flex_fields(rx_q, rx_desc, fields);
+}
+
+/**
+ * idpf_rx_singleq_clean - Reclaim resources after receive completes
+ * @rx_q: rx queue to clean
+ * @budget: Total limit on number of packets to process
+ *
+ * Returns true if there's any budget left (e.g. the clean is finished)
+ */
+static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
+{
+	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
+	u16 cleaned_count = 0;
+	bool failure = false;
+
+	/* Process Rx packets bounded by budget */
+	while (likely(total_rx_pkts < (unsigned int)budget)) {
+		struct idpf_rx_extracted fields = {};
+		union virtchnl2_rx_desc *rx_desc;
+		struct sk_buff *skb = NULL;
+		struct idpf_rx_buf *rx_buf;
+
+		/* get the Rx desc from Rx queue based on 'next_to_clean' */
+		rx_desc = IDPF_RX_DESC(rx_q, rx_q->next_to_clean);
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc
+		 */
+		dma_rmb();
+
+		/* status_error_ptype_len will always be zero for unused
+		 * descriptors because it's cleared in cleanup, and overlaps
+		 * with hdr_addr which is always zero because packet split
+		 * isn't used, if the hardware wrote DD then the length will be
+		 * non-zero
+		 */
+#define IDPF_RXD_DD BIT(VIRTCHNL2_RX_BASE_DESC_STATUS_DD_S)
+		if (!idpf_rx_singleq_test_staterr(rx_desc,
+						  IDPF_RXD_DD))
+			break;
+		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
+
+		if (!fields.size)
+			break;
+
+		rx_buf = &rx_q->rx_buf.buf[rx_q->next_to_clean];
+		skb = idpf_rx_singleq_get_buf_page(rx_q->dev, rx_buf,
+						   fields.size);
+
+		if (skb)
+			idpf_rx_add_frag(rx_buf, skb, fields.size);
+		else
+			skb = idpf_rx_construct_skb(rx_q, rx_buf, fields.size);
+
+		/* exit if we failed to retrieve a buffer */
+		if (!skb) {
+			rx_buf->page_info[rx_buf->page_indx].pagecnt_bias++;
+			break;
+		}
+
+		idpf_rx_singleq_put_buf(rx_q, rx_buf);
+		idpf_rx_singleq_bump_ntc(rx_q);
+
+		cleaned_count++;
+
+		/* skip if it is non EOP desc */
+		if (idpf_rx_singleq_is_non_eop(rx_q, rx_desc,
+					       skb))
+			continue;
+
+#define IDPF_RXD_ERR_S BIT(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_S)
+		if (unlikely(idpf_rx_singleq_test_staterr(rx_desc,
+							  IDPF_RXD_ERR_S))) {
+			dev_kfree_skb_any(skb);
+			skb = NULL;
+			continue;
+		}
+
+		/* pad skb if needed (to make valid ethernet frame) */
+		if (eth_skb_pad(skb)) {
+			skb = NULL;
+			continue;
+		}
+
+		/* probably a little skewed due to removing CRC */
+		total_rx_bytes += skb->len;
+
+		/* protocol */
+		idpf_rx_singleq_process_skb_fields(rx_q, skb,
+						   rx_desc, fields.rx_ptype);
+
+		/* send completed skb up the stack */
+		napi_gro_receive(&rx_q->q_vector->napi, skb);
+
+		/* update budget accounting */
+		total_rx_pkts++;
+	}
+	if (cleaned_count)
+		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
+
+	u64_stats_update_begin(&rx_q->stats_sync);
+	rx_q->q_stats.rx.packets += total_rx_pkts;
+	rx_q->q_stats.rx.bytes += total_rx_bytes;
+	u64_stats_update_end(&rx_q->stats_sync);
+
+	/* guarantee a trip back through this routine if there was a failure */
+	return failure ? budget : (int)total_rx_pkts;
+}
+
+/**
+ * idpf_rx_singleq_clean_all - Clean all Rx queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool
+idpf_rx_singleq_clean_all(struct idpf_q_vector *q_vec, int budget,
+			  int *cleaned)
+{
+	int num_rxq = q_vec->num_rxq;
+	bool clean_complete = true;
+	int pkts_cleaned_per_q;
+	int budget_per_q, i;
+
+	/* We attempt to distribute budget to each Rx queue fairly, but don't
+	 * allow the budget to go below 1 because that would exit polling early.
+	 */
+	budget_per_q = num_rxq ? max(budget / num_rxq, 1) : 0;
+	for (i = 0; i < num_rxq; i++) {
+		struct idpf_queue *rxq = q_vec->rx[i];
+
+		pkts_cleaned_per_q = idpf_rx_singleq_clean(rxq, budget_per_q);
+
+		/* if we clean as many as budgeted, we must not be done */
+		if (pkts_cleaned_per_q >= budget_per_q)
+			clean_complete = false;
+		*cleaned += pkts_cleaned_per_q;
+	}
+
+	return clean_complete;
+}
+
+/**
+ * idpf_vport_singleq_napi_poll - NAPI handler
+ * @napi: struct from which you get q_vector
+ * @budget: budget provided by stack
+ */
+int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
+{
+	struct idpf_q_vector *q_vector =
+				container_of(napi, struct idpf_q_vector, napi);
+	bool clean_complete;
+	int work_done = 0;
+
+	/* Handle case where we are called by netpoll with a budget of 0 */
+	if (budget <= 0) {
+		idpf_tx_singleq_clean_all(q_vector, budget, &work_done);
+		return budget;
+	}
+
+	clean_complete = idpf_rx_singleq_clean_all(q_vector, budget,
+						   &work_done);
+	clean_complete &= idpf_tx_singleq_clean_all(q_vector, budget, &work_done);
+
+	/* If work not completed, return budget and polling will return */
+	if (!clean_complete)
+		return budget;
+
+	work_done = min_t(int, work_done, budget - 1);
+
+	/* Exit the polling mode, but don't re-enable interrupts if stack might
+	 * poll us due to busy-polling
+	 */
+	if (likely(napi_complete_done(napi, work_done)))
+		idpf_vport_intr_update_itr_ena_irq(q_vector);
+	return work_done;
+}
+
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
new file mode 100644
index 000000000000..59e89344b69e
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -0,0 +1,4937 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#include <linux/timer.h>
+#include "idpf.h"
+
+/**
+ * idpf_buf_lifo_push - push a buffer pointer onto stack
+ * @stack: pointer to stack struct
+ * @buf: pointer to buf to push
+ *
+ * Returns 0 on success, negative on failure
+ **/
+static int idpf_buf_lifo_push(struct idpf_buf_lifo *stack,
+			      struct idpf_tx_stash *buf)
+{
+	if (stack->top == stack->size)
+		return -ENOSPC;
+
+	stack->bufs[stack->top++] = buf;
+
+	return 0;
+}
+
+/**
+ * idpf_buf_lifo_pop - pop a buffer pointer from stack
+ * @stack: pointer to stack struct
+ **/
+static struct idpf_tx_stash *idpf_buf_lifo_pop(struct idpf_buf_lifo *stack)
+{
+	if (!stack->top)
+		return NULL;
+
+	return stack->bufs[--stack->top];
+}
+
+/**
+ * idpf_get_stats64 - get statistics for network device structure
+ * @netdev: network interface device structure
+ * @stats: main device statistics structure
+ */
+void idpf_get_stats64(struct net_device *netdev,
+		      struct rtnl_link_stats64 *stats)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+
+	if (!vport)
+		return;
+
+	*stats = vport->netstats;
+}
+
+/**
+ * idpf_tx_buf_rel - Release a Tx buffer
+ * @tx_q: the queue that owns the buffer
+ * @tx_buf: the buffer to free
+ */
+void idpf_tx_buf_rel(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf)
+{
+	if (tx_buf->skb) {
+		if (dma_unmap_len(tx_buf, len))
+			dma_unmap_single(tx_q->dev,
+					 dma_unmap_addr(tx_buf, dma),
+					 dma_unmap_len(tx_buf, len),
+					 DMA_TO_DEVICE);
+		dev_kfree_skb_any(tx_buf->skb);
+	} else if (dma_unmap_len(tx_buf, len)) {
+		dma_unmap_page(tx_q->dev,
+			       dma_unmap_addr(tx_buf, dma),
+			       dma_unmap_len(tx_buf, len),
+			       DMA_TO_DEVICE);
+	}
+
+	tx_buf->next_to_watch = NULL;
+	tx_buf->skb = NULL;
+	tx_buf->compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+	dma_unmap_len_set(tx_buf, len, 0);
+}
+
+/**
+ * idpf_tx_buf_rel_all - Free any empty Tx buffers
+ * @txq: queue to be cleaned
+ */
+static void idpf_tx_buf_rel_all(struct idpf_queue *txq)
+{
+	u16 i;
+
+	/* Buffers already cleared, nothing to do */
+	if (!txq->tx_buf)
+		return;
+
+	/* Free all the Tx buffer sk_buffs */
+	for (i = 0; i < txq->desc_count; i++)
+		idpf_tx_buf_rel(txq, &txq->tx_buf[i]);
+
+	kfree(txq->tx_buf);
+	txq->tx_buf = NULL;
+
+	if (!txq->buf_stack.bufs)
+		return;
+	for (i = 0; i < txq->buf_stack.size; i++)
+		kfree(txq->buf_stack.bufs[i]);
+	kfree(txq->buf_stack.bufs);
+	txq->buf_stack.bufs = NULL;
+}
+
+/**
+ * idpf_tx_desc_rel - Free Tx resources per queue
+ * @txq: Tx descriptor ring for a specific queue
+ * @bufq: buffer q or completion q
+ *
+ * Free all transmit software resources
+ */
+static void idpf_tx_desc_rel(struct idpf_queue *txq, bool bufq)
+{
+	if (bufq) {
+		idpf_tx_buf_rel_all(txq);
+			netdev_tx_reset_queue(netdev_get_tx_queue(txq->vport->netdev,
+								  txq->idx));
+	}
+
+	if (!txq->desc_ring)
+		return;
+	dmam_free_coherent(txq->dev, txq->size,
+			   txq->desc_ring, txq->dma);
+	txq->desc_ring = NULL;
+	txq->next_to_alloc = 0;
+	txq->next_to_use = 0;
+	txq->next_to_clean = 0;
+}
+
+/**
+ * idpf_tx_desc_rel_all - Free Tx Resources for All Queues
+ * @vport: virtual port structure
+ *
+ * Free all transmit software resources
+ */
+static void idpf_tx_desc_rel_all(struct idpf_vport *vport)
+{
+	int i, j;
+
+	if (!vport->txq_grps)
+		return;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
+
+		for (j = 0; j < txq_grp->num_txq; j++)
+			idpf_tx_desc_rel(txq_grp->txqs[j], true);
+		if (idpf_is_queue_model_split(vport->txq_model))
+			idpf_tx_desc_rel(txq_grp->complq, false);
+	}
+}
+
+/**
+ * idpf_tx_buf_alloc_all - Allocate memory for all buffer resources
+ * @tx_q: queue for which the buffers are allocated
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_tx_buf_alloc_all(struct idpf_queue *tx_q)
+{
+	int buf_size;
+	int i = 0;
+
+	/* Allocate book keeping buffers only. Buffers to be supplied to HW
+	 * are allocated by kernel network stack and received as part of skb
+	 */
+	buf_size = sizeof(struct idpf_tx_buf) * tx_q->desc_count;
+	tx_q->tx_buf = kzalloc(buf_size, GFP_KERNEL);
+	if (!tx_q->tx_buf)
+		return -ENOMEM;
+
+	/* Initialize tx_bufs with invalid completion tags */
+	for (i = 0; i < tx_q->desc_count; i++)
+		tx_q->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+
+	/* Initialize tx buf stack for out-of-order completions if
+	 * flow scheduling offload is enabled
+	 */
+	tx_q->buf_stack.bufs =
+		kcalloc(tx_q->desc_count, sizeof(struct idpf_tx_stash *),
+			GFP_KERNEL);
+	if (!tx_q->buf_stack.bufs)
+		return -ENOMEM;
+
+	tx_q->buf_stack.size = tx_q->desc_count;
+	tx_q->buf_stack.top = tx_q->desc_count;
+
+	for (i = 0; i < tx_q->desc_count; i++) {
+		tx_q->buf_stack.bufs[i] = kzalloc(sizeof(*tx_q->buf_stack.bufs[i]),
+						  GFP_KERNEL);
+		if (!tx_q->buf_stack.bufs[i])
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
+/**
+ * idpf_tx_desc_alloc - Allocate the Tx descriptors
+ * @tx_q: the tx ring to set up
+ * @bufq: buffer or completion queue
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_tx_desc_alloc(struct idpf_queue *tx_q, bool bufq)
+{
+	struct device *dev = tx_q->dev;
+	int err = 0;
+
+	if (bufq) {
+		err = idpf_tx_buf_alloc_all(tx_q);
+		if (err)
+			goto err_alloc;
+		tx_q->size = tx_q->desc_count *
+				sizeof(struct idpf_base_tx_desc);
+	} else {
+		tx_q->size = tx_q->desc_count *
+				sizeof(struct idpf_splitq_tx_compl_desc);
+	}
+
+	/* Allocate descriptors also round up to nearest 4K */
+	tx_q->size = ALIGN(tx_q->size, 4096);
+	tx_q->desc_ring = dmam_alloc_coherent(dev, tx_q->size, &tx_q->dma,
+					      GFP_KERNEL);
+	if (!tx_q->desc_ring) {
+		dev_info(dev, "Unable to allocate memory for the Tx descriptor ring, size=%d\n",
+			 tx_q->size);
+		err = -ENOMEM;
+		goto err_alloc;
+	}
+
+	tx_q->next_to_alloc = 0;
+	tx_q->next_to_use = 0;
+	tx_q->next_to_clean = 0;
+	set_bit(__IDPF_Q_GEN_CHK, tx_q->flags);
+
+err_alloc:
+	if (err)
+		idpf_tx_desc_rel(tx_q, bufq);
+	return err;
+}
+
+/**
+ * idpf_tx_desc_alloc_all - allocate all queues Tx resources
+ * @vport: virtual port private structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_tx_desc_alloc_all(struct idpf_vport *vport)
+{
+	struct pci_dev *pdev = vport->adapter->pdev;
+	int err = 0;
+	int i, j;
+
+	/* Setup buffer queues. In single queue model buffer queues and
+	 * completion queues will be same
+	 */
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		for (j = 0; j < vport->txq_grps[i].num_txq; j++) {
+			struct idpf_queue *txq = vport->txq_grps[i].txqs[j];
+			u8 gen_bits = 0;
+			u16 bufidx_mask;
+
+			err = idpf_tx_desc_alloc(txq, true);
+			if (err) {
+				dev_err(&pdev->dev,
+					"Allocation for Tx Queue %u failed\n",
+					i);
+				goto err_out;
+			}
+
+			if (!idpf_is_queue_model_split(vport->txq_model))
+				continue;
+
+			txq->compl_tag_cur_gen = 0;
+
+			/* Determine the number of bits in the bufid
+			 * mask and add one to get the start of the
+			 * generation bits
+			 */
+			bufidx_mask = txq->desc_count - 1;
+			while (bufidx_mask >> 1) {
+				txq->compl_tag_gen_s++;
+				bufidx_mask = bufidx_mask >> 1;
+			}
+			txq->compl_tag_gen_s++;
+
+			/* Determine the maximum number of generations.
+			 * Note: we have to lose a generation since
+			 * 0xFFFF indicates an invalid completion tag.
+			 */
+			gen_bits = IDPF_TX_SPLITQ_COMPL_TAG_WIDTH -
+				   txq->compl_tag_gen_s;
+			txq->compl_tag_gen_max = GETMAXVAL(gen_bits) - 1;
+
+			/* Set bufid mask based on location of first
+			 * gen bit; it cannot simply be the descriptor
+			 * ring size-1 since we can have size values
+			 * where not all of those bits are set.
+			 */
+			txq->compl_tag_bufid_m =
+				GETMAXVAL(txq->compl_tag_gen_s);
+		}
+
+		if (!idpf_is_queue_model_split(vport->txq_model))
+			continue;
+		/* Setup completion queues */
+		err = idpf_tx_desc_alloc(vport->txq_grps[i].complq, false);
+		if (err) {
+			dev_err(&pdev->dev, "Allocation for Tx Completion Queue %u failed\n",
+				i);
+			goto err_out;
+		}
+	}
+err_out:
+	if (err)
+		idpf_tx_desc_rel_all(vport);
+	return err;
+}
+
+/**
+ * idpf_rx_page_rel - Release an rx buffer page
+ * @rxq: the queue that owns the buffer
+ * @page_info: pointer to page metadata of page to be freed
+ */
+static void idpf_rx_page_rel(struct idpf_queue *rxq,
+			     struct idpf_page_info *page_info)
+{
+	if (!page_info->page)
+		return;
+
+	/* free resources associated with mapping */
+	dma_unmap_page_attrs(rxq->dev, page_info->dma, PAGE_SIZE,
+			     DMA_FROM_DEVICE, IDPF_RX_DMA_ATTR);
+
+	__page_frag_cache_drain(page_info->page, page_info->pagecnt_bias);
+
+	page_info->page = NULL;
+	page_info->page_offset = 0;
+}
+
+/**
+ * idpf_rx_buf_rel - Release a rx buffer
+ * @rxq: the queue that owns the buffer
+ * @rx_buf: the buffer to free
+ */
+static void idpf_rx_buf_rel(struct idpf_queue *rxq,
+			    struct idpf_rx_buf *rx_buf)
+{
+	idpf_rx_page_rel(rxq, &rx_buf->page_info[0]);
+	if (PAGE_SIZE < 8192 && rx_buf->buf_size > IDPF_RX_BUF_2048)
+		idpf_rx_page_rel(rxq, &rx_buf->page_info[1]);
+
+	if (rx_buf->skb) {
+		dev_kfree_skb_any(rx_buf->skb);
+		rx_buf->skb = NULL;
+	}
+}
+
+/**
+ * idpf_rx_hdr_buf_rel_all - Release header buffer memory
+ * @rxq: queue to use
+ */
+static void idpf_rx_hdr_buf_rel_all(struct idpf_queue *rxq)
+{
+	int i;
+
+	if (!rxq)
+		return;
+
+	if (!rxq->rx_buf.hdr_buf)
+		goto rel_pages;
+	for (i = 0; i < rxq->desc_count; i++) {
+		kfree(rxq->rx_buf.hdr_buf[i]);
+		rxq->rx_buf.hdr_buf[i] = NULL;
+	}
+	kfree(rxq->rx_buf.hdr_buf);
+	rxq->rx_buf.hdr_buf = NULL;
+
+rel_pages:
+	for (i = 0; i < rxq->hbuf_pages.nr_pages; i++)
+		idpf_rx_page_rel(rxq, &rxq->hbuf_pages.pages[i]);
+
+	kfree(rxq->hbuf_pages.pages);
+}
+
+/**
+ * idpf_rx_buf_rel_all - Free all Rx buffer resources for a queue
+ * @rxq: queue to be cleaned
+ */
+static void idpf_rx_buf_rel_all(struct idpf_queue *rxq)
+{
+	u16 i;
+
+	/* queue already cleared, nothing to do */
+	if (!rxq->rx_buf.buf)
+		return;
+
+	/* Free all the bufs allocated and given to hw on Rx queue */
+	for (i = 0; i < rxq->desc_count; i++)
+		idpf_rx_buf_rel(rxq, &rxq->rx_buf.buf[i]);
+	if (rxq->rx_hsplit_en)
+		idpf_rx_hdr_buf_rel_all(rxq);
+
+	kfree(rxq->rx_buf.buf);
+	rxq->rx_buf.buf = NULL;
+	kfree(rxq->rx_buf.hdr_buf);
+	rxq->rx_buf.hdr_buf = NULL;
+}
+
+/**
+ * idpf_rx_desc_rel - Free a specific Rx q resources
+ * @rxq: queue to clean the resources from
+ * @bufq: buffer q or completion q
+ * @q_model: single or split q model
+ *
+ * Free a specific rx queue resources
+ */
+static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
+{
+	if (!rxq)
+		return;
+
+	if (!bufq && idpf_is_queue_model_split(q_model) && rxq->skb) {
+		dev_kfree_skb_any(rxq->skb);
+		rxq->skb = NULL;
+	}
+
+	if (bufq || !idpf_is_queue_model_split(q_model))
+		idpf_rx_buf_rel_all(rxq);
+
+	rxq->next_to_alloc = 0;
+	rxq->next_to_clean = 0;
+	rxq->next_to_use = 0;
+	if (!rxq->desc_ring)
+		return;
+	dmam_free_coherent(rxq->dev, rxq->size,
+			   rxq->desc_ring, rxq->dma);
+	rxq->desc_ring = NULL;
+}
+
+/**
+ * idpf_rx_desc_rel_all - Free Rx Resources for All Queues
+ * @vport: virtual port structure
+ *
+ * Free all rx queues resources
+ */
+static void idpf_rx_desc_rel_all(struct idpf_vport *vport)
+{
+	struct idpf_rxq_group *rx_qgrp;
+	int i, j, num_rxq;
+
+	if (!vport->rxq_grps)
+		return;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+
+		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
+				idpf_rx_desc_rel(rx_qgrp->singleq.rxqs[j],
+						 false, vport->rxq_model);
+			continue;
+		}
+		num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		for (j = 0; j < num_rxq; j++)
+			idpf_rx_desc_rel(&rx_qgrp->splitq.rxq_sets[j]->rxq,
+					 false, vport->rxq_model);
+
+		if (!rx_qgrp->splitq.bufq_sets)
+			continue;
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			struct idpf_bufq_set *bufq_set =
+				&rx_qgrp->splitq.bufq_sets[j];
+
+			idpf_rx_desc_rel(&bufq_set->bufq, true,
+					 vport->rxq_model);
+		}
+	}
+}
+
+/**
+ * idpf_rx_buf_hw_update - Store the new tail and head values
+ * @rxq: queue to bump
+ * @val: new head index
+ */
+void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val)
+{
+	rxq->next_to_use = val;
+
+	if (unlikely(!rxq->tail))
+		return;
+	/* writel has an implicit memory barrier */
+	writel(val, rxq->tail);
+}
+
+/**
+ * idpf_alloc_page - allocate page to back RX buffer
+ * @rxbufq: pointer to queue to struct; equivalent to rxq when operating
+ * in singleq mode
+ * @page_info: pointer to page metadata struct
+ */
+static int
+idpf_alloc_page(struct idpf_queue *rxbufq, struct idpf_page_info *page_info)
+{
+	/* alloc new page for storage */
+	page_info->page = alloc_page(GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!page_info->page))
+		return -ENOMEM;
+
+	/* map page for use */
+	page_info->dma = dma_map_page_attrs(rxbufq->dev, page_info->page,
+					    0, PAGE_SIZE, DMA_FROM_DEVICE,
+					    IDPF_RX_DMA_ATTR);
+
+	/* if mapping failed free memory back to system since
+	 * there isn't much point in holding memory we can't use
+	 */
+	if (dma_mapping_error(rxbufq->dev, page_info->dma)) {
+		__free_pages(page_info->page, 0);
+		return -ENOMEM;
+	}
+
+	page_info->page_offset = 0;
+
+	/* initialize pagecnt_bias to claim we fully own page */
+	page_ref_add(page_info->page, USHRT_MAX - 1);
+	page_info->pagecnt_bias = USHRT_MAX;
+
+	return 0;
+}
+
+/**
+ * idpf_init_rx_buf_hw_alloc - allocate initial RX buffer pages
+ * @rxbufq: ring to use; equivalent to rxq when operating in singleq mode
+ * @buf: rx_buffer struct to modify
+ *
+ * Returns true if the page was successfully allocated or
+ * reused.
+ */
+bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxbufq, struct idpf_rx_buf *buf)
+{
+	if (idpf_alloc_page(rxbufq, &buf->page_info[0]))
+		return false;
+
+	if (PAGE_SIZE < 8192 && rxbufq->rx_buf_size > IDPF_RX_BUF_2048)
+		if (idpf_alloc_page(rxbufq, &buf->page_info[1]))
+			return false;
+
+	buf->page_indx = 0;
+	buf->buf_size = rxbufq->rx_buf_size;
+
+	return true;
+}
+
+/**
+ * idpf_rx_hdr_buf_alloc_all - Allocate memory for header buffers
+ * @rxq: ring to use
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_rx_hdr_buf_alloc_all(struct idpf_queue *rxq)
+{
+	struct idpf_page_info *page_info;
+	int nr_pages, offset;
+	int i, j = 0;
+
+	rxq->rx_buf.hdr_buf = kcalloc(rxq->desc_count,
+				      sizeof(struct idpf_dma_mem *),
+				      GFP_KERNEL);
+	if (!rxq->rx_buf.hdr_buf)
+		return -ENOMEM;
+
+	for (i = 0; i < rxq->desc_count; i++) {
+		rxq->rx_buf.hdr_buf[i] = kcalloc(1,
+						 sizeof(struct idpf_dma_mem),
+						 GFP_KERNEL);
+		if (!rxq->rx_buf.hdr_buf[i])
+			goto unroll_buf_alloc;
+	}
+
+	/* Determine the number of pages necessary to back the total number of
+	 * header buffers.
+	 */
+	nr_pages = (rxq->desc_count * rxq->rx_hbuf_size) / PAGE_SIZE;
+	rxq->hbuf_pages.pages = kcalloc(nr_pages,
+					sizeof(struct idpf_page_info),
+					GFP_KERNEL);
+	if (!rxq->hbuf_pages.pages)
+		goto unroll_buf_alloc;
+
+	rxq->hbuf_pages.nr_pages = nr_pages;
+	for (i = 0; i < nr_pages; i++) {
+		if (idpf_alloc_page(rxq, &rxq->hbuf_pages.pages[i]))
+			goto unroll_buf_alloc;
+	}
+
+	page_info = &rxq->hbuf_pages.pages[0];
+	for (i = 0, offset = 0; i < rxq->desc_count; i++,
+	     offset += rxq->rx_hbuf_size) {
+		struct idpf_dma_mem *hbuf = rxq->rx_buf.hdr_buf[i];
+
+		/* Move to next page */
+		if (offset >= PAGE_SIZE) {
+			offset = 0;
+			page_info = &rxq->hbuf_pages.pages[++j];
+		}
+
+		hbuf->va = page_address(page_info->page) + offset;
+		hbuf->pa = page_info->dma + offset;
+		hbuf->size = rxq->rx_hbuf_size;
+	}
+
+	return 0;
+unroll_buf_alloc:
+	idpf_rx_hdr_buf_rel_all(rxq);
+	return -ENOMEM;
+}
+
+/**
+ * idpf_rx_buf_hw_alloc_all - Allocate receive buffers
+ * @rxbufq: queue for which the hw buffers are allocated; equivalent to rxq
+ * when operating in singleq mode
+ * @alloc_count: number of buffers to allocate
+ *
+ * Returns false if all allocations were successful, true if any fail
+ */
+static bool
+idpf_rx_buf_hw_alloc_all(struct idpf_queue *rxbufq, u16 alloc_count)
+{
+	u16 nta = rxbufq->next_to_alloc;
+	struct idpf_rx_buf *buf;
+
+	if (!alloc_count)
+		return false;
+
+	buf = &rxbufq->rx_buf.buf[nta];
+
+	do {
+		if (!idpf_init_rx_buf_hw_alloc(rxbufq, buf))
+			break;
+
+		buf++;
+		nta++;
+		if (unlikely(nta == rxbufq->desc_count)) {
+			buf = rxbufq->rx_buf.buf;
+			nta = 0;
+		}
+
+		alloc_count--;
+	} while (alloc_count);
+
+	return !!alloc_count;
+}
+
+/**
+ * idpf_rx_post_buf_refill - Post buffer id to refill queue
+ * @refillq: refill queue to post to
+ * @buf_id: buffer id to post
+ */
+void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id)
+{
+	u16 nta = refillq->next_to_alloc;
+	u16 *bi;
+
+	bi = IDPF_SPLITQ_RX_BI_DESC(refillq, nta);
+	/* store the buffer ID and the SW maintained GEN bit to the refillq */
+	*bi = ((buf_id << IDPF_RX_BI_BUFID_S) & IDPF_RX_BI_BUFID_M) |
+	      (!!(test_bit(__IDPF_Q_GEN_CHK, refillq->flags)) <<
+	       IDPF_RX_BI_GEN_S);
+
+	nta++;
+	if (unlikely(nta == refillq->desc_count)) {
+		nta = 0;
+		change_bit(__IDPF_Q_GEN_CHK, refillq->flags);
+	}
+	refillq->next_to_alloc = nta;
+}
+
+/**
+ * idpf_rx_post_buf_desc - Post buffer to bufq descriptor ring
+ * @bufq: buffer queue to post to
+ * @buf_id: buffer id to post
+ */
+static void idpf_rx_post_buf_desc(struct idpf_queue *bufq, u16 buf_id)
+{
+	struct virtchnl2_splitq_rx_buf_desc *splitq_rx_desc = NULL;
+	struct idpf_page_info *page_info;
+	u16 nta = bufq->next_to_alloc;
+	struct idpf_dma_mem *hdr_buf;
+	struct idpf_rx_buf *buf;
+
+	splitq_rx_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, nta);
+	buf = &bufq->rx_buf.buf[buf_id];
+	page_info = &buf->page_info[buf->page_indx];
+	if (bufq->rx_hsplit_en) {
+		hdr_buf = bufq->rx_buf.hdr_buf[buf_id];
+		splitq_rx_desc->hdr_addr =
+			cpu_to_le64(hdr_buf->pa);
+	}
+	dma_sync_single_range_for_device(bufq->dev, page_info->dma,
+					 page_info->page_offset,
+					 bufq->rx_buf_size,
+					 DMA_FROM_DEVICE);
+	splitq_rx_desc->pkt_addr = cpu_to_le64(page_info->dma +
+					       page_info->page_offset);
+	splitq_rx_desc->qword0.buf_id = cpu_to_le16(buf_id);
+
+	nta++;
+	if (unlikely(nta == bufq->desc_count))
+		nta = 0;
+	bufq->next_to_alloc = nta;
+}
+
+/**
+ * idpf_rx_post_init_bufs - Post initial buffers to bufq
+ * @bufq: buffer queue to post working set to
+ * @working_set: number of buffers to put in working set
+ */
+static void idpf_rx_post_init_bufs(struct idpf_queue *bufq,
+				   u16 working_set)
+{
+	int i;
+
+	for (i = 0; i < working_set; i++)
+		idpf_rx_post_buf_desc(bufq, i);
+
+	idpf_rx_buf_hw_update(bufq, bufq->next_to_alloc & ~(bufq->rx_buf_stride - 1));
+}
+
+/**
+ * idpf_rx_buf_alloc_all - Allocate memory for all buffer resources
+ * @rxbufq: queue for which the buffers are allocated; equivalent to
+ * rxq when operating in singleq mode
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_buf_alloc_all(struct idpf_queue *rxbufq)
+{
+	int err = 0;
+
+	/* Allocate book keeping buffers */
+	rxbufq->rx_buf.buf = kcalloc(rxbufq->desc_count,
+				     sizeof(struct idpf_rx_buf), GFP_KERNEL);
+	if (!rxbufq->rx_buf.buf) {
+		err = -ENOMEM;
+		goto rx_buf_alloc_all_out;
+	}
+
+	if (rxbufq->rx_hsplit_en) {
+		err = idpf_rx_hdr_buf_alloc_all(rxbufq);
+		if (err)
+			goto rx_buf_alloc_all_out;
+	}
+
+	/* Allocate buffers to be given to HW.	 */
+	if (idpf_is_queue_model_split(rxbufq->vport->rxq_model)) {
+		if (idpf_rx_buf_hw_alloc_all(rxbufq, rxbufq->desc_count - 1))
+			err = -ENOMEM;
+	} else {
+		if (idpf_rx_singleq_buf_hw_alloc_all(rxbufq, rxbufq->desc_count - 1))
+			err = -ENOMEM;
+	}
+
+rx_buf_alloc_all_out:
+	if (err)
+		idpf_rx_buf_rel_all(rxbufq);
+	return err;
+}
+
+/**
+ * idpf_rx_desc_alloc - Allocate queue Rx resources
+ * @rxq: Rx queue for which the resources are setup
+ * @bufq: buffer or completion queue
+ * @q_model: single or split queue model
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_desc_alloc(struct idpf_queue *rxq, bool bufq, s32 q_model)
+{
+	struct device *dev = rxq->dev;
+	int err;
+
+	/* As both single and split descriptors are 32 byte, memory size
+	 * will be same for all three singleq_base rx, buf., splitq_base
+	 * rx. So pick anyone of them for size
+	 */
+	if (bufq)
+		rxq->size = rxq->desc_count *
+			sizeof(struct virtchnl2_splitq_rx_buf_desc);
+	else
+		rxq->size = rxq->desc_count *
+			sizeof(union virtchnl2_rx_desc);
+
+	/* Allocate descriptors and also round up to nearest 4K */
+	rxq->size = ALIGN(rxq->size, 4096);
+	rxq->desc_ring = dmam_alloc_coherent(dev, rxq->size,
+					     &rxq->dma, GFP_KERNEL);
+	if (!rxq->desc_ring) {
+		dev_info(dev, "Unable to allocate memory for the Rx descriptor ring, size=%d\n",
+			 rxq->size);
+		return -ENOMEM;
+	}
+
+	rxq->next_to_alloc = 0;
+	rxq->next_to_clean = 0;
+	rxq->next_to_use = 0;
+	set_bit(__IDPF_Q_GEN_CHK, rxq->flags);
+
+	if (!bufq && idpf_is_queue_model_split(q_model))
+		return 0;
+	/* Allocate buffers for a rx queue if the q_model is single OR if it
+	 * is a buffer queue in split queue model
+	 */
+	err = idpf_rx_buf_alloc_all(rxq);
+	if (err) {
+		idpf_rx_desc_rel(rxq, bufq, q_model);
+		return err;
+	}
+	return 0;
+}
+
+/**
+ * idpf_rx_desc_alloc_all - allocate all RX queues resources
+ * @vport: virtual port structure
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rx_desc_alloc_all(struct idpf_vport *vport)
+{
+	struct device *dev = &vport->adapter->pdev->dev;
+	struct idpf_rxq_group *rx_qgrp;
+	int i, j, num_rxq, working_set;
+	struct idpf_queue *q;
+	int err = 0;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				q = rx_qgrp->singleq.rxqs[j];
+			err = idpf_rx_desc_alloc(q, false, vport->rxq_model);
+			if (err) {
+				dev_err(dev, "Memory allocation for Rx Queue %u failed\n",
+					i);
+				goto err_out;
+			}
+		}
+
+		if (!idpf_is_queue_model_split(vport->rxq_model))
+			continue;
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			err = idpf_rx_desc_alloc(q, true,
+						 vport->rxq_model);
+			if (err) {
+				dev_err(dev, "Memory allocation for Rx Buffer Queue %u failed\n",
+					i);
+				goto err_out;
+			}
+
+			working_set = IDPF_RX_BUFQ_WORKING_SET(q);
+			idpf_rx_post_init_bufs(q, working_set);
+		}
+	}
+err_out:
+	if (err)
+		idpf_rx_desc_rel_all(vport);
+	return err;
+}
+
+/**
+ * idpf_txq_group_rel - Release all resources for txq groups
+ * @vport: vport to release txq groups on
+ */
+static void idpf_txq_group_rel(struct idpf_vport *vport)
+{
+	struct idpf_txq_group *txq_grp;
+	int i, j, num_txq;
+
+	if (!vport->txq_grps)
+		return;
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		txq_grp = &vport->txq_grps[i];
+		num_txq = txq_grp->num_txq;
+
+		for (j = 0; j < num_txq; j++) {
+			kfree(txq_grp->txqs[j]);
+			txq_grp->txqs[j] = NULL;
+		}
+		kfree(txq_grp->complq);
+		txq_grp->complq = NULL;
+	}
+	kfree(vport->txq_grps);
+	vport->txq_grps = NULL;
+}
+
+/**
+ * idpf_rxq_sw_queue_rel - Release software queue resources
+ * @rx_qgrp: rx queue group with software queues
+ */
+static void idpf_rxq_sw_queue_rel(struct idpf_rxq_group *rx_qgrp)
+{
+	int i, j;
+
+	if (!rx_qgrp->splitq.bufq_sets)
+		return;
+
+	for (i = 0; i < rx_qgrp->vport->num_bufqs_per_qgrp; i++) {
+		struct idpf_bufq_set *bufq_set = &rx_qgrp->splitq.bufq_sets[i];
+
+		for (j = 0; j < bufq_set->num_refillqs; j++) {
+			kfree(bufq_set->refillqs[j].ring);
+			bufq_set->refillqs[j].ring = NULL;
+		}
+		kfree(bufq_set->refillqs);
+		bufq_set->refillqs = NULL;
+	}
+}
+
+/**
+ * idpf_rxq_group_rel - Release all resources for rxq groups
+ * @vport: vport to release rxq groups on
+ */
+static void idpf_rxq_group_rel(struct idpf_vport *vport)
+{
+	int i;
+
+	if (!vport->rxq_grps)
+		return;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		int j, num_rxq;
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+			for (j = 0; j < num_rxq; j++) {
+				kfree(rx_qgrp->splitq.rxq_sets[j]);
+				rx_qgrp->splitq.rxq_sets[j] = NULL;
+			}
+			idpf_rxq_sw_queue_rel(rx_qgrp);
+			kfree(rx_qgrp->splitq.bufq_sets);
+			rx_qgrp->splitq.bufq_sets = NULL;
+		} else {
+			num_rxq = rx_qgrp->singleq.num_rxq;
+			for (j = 0; j < num_rxq; j++) {
+				kfree(rx_qgrp->singleq.rxqs[j]);
+				rx_qgrp->singleq.rxqs[j] = NULL;
+			}
+		}
+	}
+	kfree(vport->rxq_grps);
+	vport->rxq_grps = NULL;
+}
+
+/**
+ * idpf_vport_queue_grp_rel_all - Release all queue groups
+ * @vport: vport to release queue groups for
+ */
+static void idpf_vport_queue_grp_rel_all(struct idpf_vport *vport)
+{
+	idpf_txq_group_rel(vport);
+	idpf_rxq_group_rel(vport);
+}
+
+/**
+ * idpf_vport_queues_rel - Free memory for all queues
+ * @vport: virtual port
+ *
+ * Free the memory allocated for queues associated to a vport
+ */
+void idpf_vport_queues_rel(struct idpf_vport *vport)
+{
+	idpf_tx_desc_rel_all(vport);
+	idpf_rx_desc_rel_all(vport);
+	idpf_vport_queue_grp_rel_all(vport);
+
+	kfree(vport->txqs);
+	vport->txqs = NULL;
+}
+
+/**
+ * idpf_vport_init_fast_path_txqs - Initialize fast path txq array
+ * @vport: vport to init txqs on
+ *
+ * We get a queue index from skb->queue_mapping and we need a fast way to
+ * dereference the queue from queue groups.  This allows us to quickly pull a
+ * txq based on a queue index.
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_vport_init_fast_path_txqs(struct idpf_vport *vport)
+{
+	int i, j, k = 0;
+
+	vport->txqs = kcalloc(vport->num_txq, sizeof(struct idpf_queue *),
+			      GFP_KERNEL);
+
+	if (!vport->txqs)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_grp = &vport->txq_grps[i];
+
+		for (j = 0; j < tx_grp->num_txq; j++, k++) {
+			vport->txqs[k] = tx_grp->txqs[j];
+			vport->txqs[k]->idx = k;
+		}
+	}
+	return 0;
+}
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
+	int num_req_txq_desc, num_req_rxq_desc;
+	u16 idx = vport->idx;
+	int i = 0;
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
+		vport->txq_desc_count =
+			IDPF_DFLT_TX_Q_DESC_COUNT;
+		if (idpf_is_queue_model_split(vport->txq_model)) {
+			vport->complq_desc_count =
+				IDPF_DFLT_TX_COMPLQ_DESC_COUNT;
+		}
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
+	struct idpf_vport_config *vport_config = NULL;
+	u32 num_req_tx_qs = 0, num_req_rx_qs = 0;
+	int num_txq_grps, num_rxq_grps;
+	int num_cpus;
+
+	vport_config = adapter->vport_config[vport_idx];
+	if (vport_config) {
+		num_req_tx_qs = vport_config->user_config.num_req_tx_qs;
+		num_req_rx_qs = vport_config->user_config.num_req_rx_qs;
+
+		if (num_req_tx_qs > vport_config->max_q.max_txq ||
+		    num_req_rx_qs > vport_config->max_q.max_rxq)
+			return -EINVAL;
+	} else {
+		/* Restrict num of queues to cpus online as a default configuration
+		 * to give best performance. User can always override to a max
+		 * number of queues via ethtool.
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
+		vport_msg->num_tx_q =
+				cpu_to_le16(num_txq_grps *
+					    (num_req_tx_qs ? num_req_tx_qs :
+					    dflt_singleq_txqs));
+		vport_msg->num_tx_complq = 0;
+	}
+	if (idpf_is_queue_model_split(le16_to_cpu(vport_msg->rxq_model))) {
+		num_rxq_grps = num_req_rx_qs ? num_req_rx_qs : dflt_splitq_rxq_grps;
+		vport_msg->num_rx_bufq =
+					cpu_to_le16(num_rxq_grps *
+						    IDPF_MAX_BUFQS_PER_RXQ_GRP);
+
+		vport_msg->num_rx_q = cpu_to_le16(num_rxq_grps *
+						  IDPF_DFLT_SPLITQ_RXQ_PER_GROUP);
+	} else {
+		num_rxq_grps = IDPF_DFLT_SINGLEQ_RX_Q_GROUPS;
+		vport_msg->num_rx_bufq = 0;
+		vport_msg->num_rx_q =
+				cpu_to_le16(num_rxq_grps *
+					    (num_req_rx_qs ? num_req_rx_qs :
+					    dflt_singleq_rxqs));
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
+
+/**
+ * idpf_vport_calc_numq_per_grp - Calculate number of queues per group
+ * @vport: vport to calculate queues for
+ * @num_txq: int return parameter
+ * @num_rxq: int return parameter
+ */
+static void idpf_vport_calc_numq_per_grp(struct idpf_vport *vport,
+					 int *num_txq, int *num_rxq)
+{
+	if (idpf_is_queue_model_split(vport->txq_model))
+		*num_txq = IDPF_DFLT_SPLITQ_TXQ_PER_GROUP;
+	else
+		*num_txq = vport->num_txq;
+
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		*num_rxq = IDPF_DFLT_SPLITQ_RXQ_PER_GROUP;
+	else
+		*num_rxq = vport->num_rxq;
+}
+
+/**
+ * idpf_rxq_set_descids - set the descids supported by this queue
+ * @vport: virtual port data structure
+ * @q: rx queue for which descids are set
+ *
+ */
+static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
+{
+	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
+		q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M;
+	} else {
+		if (vport->base_rxd)
+			q->rxdids = VIRTCHNL2_RXDID_1_32B_BASE_M;
+		else
+			q->rxdids = VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M;
+	}
+}
+
+/**
+ * idpf_txq_group_alloc - Allocate all txq group resources
+ * @vport: vport to allocate txq groups for
+ * @num_txq: number of txqs to allocate for each group
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_txq_group_alloc(struct idpf_vport *vport, int num_txq)
+{
+	int err = 0, i;
+
+	vport->txq_grps = kcalloc(vport->num_txq_grp,
+				  sizeof(*vport->txq_grps), GFP_KERNEL);
+	if (!vport->txq_grps)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		struct idpf_adapter *adapter = vport->adapter;
+		int j;
+
+		tx_qgrp->vport = vport;
+		tx_qgrp->num_txq = num_txq;
+
+		for (j = 0; j < tx_qgrp->num_txq; j++) {
+			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
+						   GFP_KERNEL);
+			if (!tx_qgrp->txqs[j]) {
+				err = -ENOMEM;
+				goto err_alloc;
+			}
+		}
+
+		for (j = 0; j < tx_qgrp->num_txq; j++) {
+			struct idpf_queue *q = tx_qgrp->txqs[j];
+
+			q->dev = &adapter->pdev->dev;
+			q->desc_count = vport->txq_desc_count;
+			q->tx_max_bufs = idpf_get_max_tx_bufs(adapter);
+			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
+			q->vport = vport;
+			q->txq_grp = tx_qgrp;
+			hash_init(q->sched_buf_hash);
+
+			if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
+					     VIRTCHNL2_CAP_SPLITQ_QSCHED))
+				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
+		}
+
+		if (!idpf_is_queue_model_split(vport->txq_model))
+			continue;
+
+		tx_qgrp->complq = kcalloc(IDPF_COMPLQ_PER_GROUP,
+					  sizeof(*tx_qgrp->complq),
+					  GFP_KERNEL);
+		if (!tx_qgrp->complq) {
+			err = -ENOMEM;
+			goto err_alloc;
+		}
+
+		tx_qgrp->complq->dev = &adapter->pdev->dev;
+		tx_qgrp->complq->desc_count = vport->complq_desc_count;
+		tx_qgrp->complq->vport = vport;
+		tx_qgrp->complq->txq_grp = tx_qgrp;
+	}
+
+err_alloc:
+	if (err)
+		idpf_txq_group_rel(vport);
+	return err;
+}
+
+/**
+ * idpf_rxq_group_alloc - Allocate all rxq group resources
+ * @vport: vport to allocate rxq groups for
+ * @num_rxq: number of rxqs to allocate for each group
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_rxq_group_alloc(struct idpf_vport *vport, int num_rxq)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_queue *q;
+	u16 idx = vport->idx;
+	int i, k, err = 0;
+
+	vport->rxq_grps = kcalloc(vport->num_rxq_grp,
+				  sizeof(struct idpf_rxq_group), GFP_KERNEL);
+	if (!vport->rxq_grps)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		struct idpf_vport_user_config_data *config_data;
+		int j;
+
+		config_data = &adapter->vport_config[idx]->user_config;
+		rx_qgrp->vport = vport;
+		if (!idpf_is_queue_model_split(vport->rxq_model)) {
+			rx_qgrp->singleq.num_rxq = num_rxq;
+			for (j = 0; j < num_rxq; j++) {
+				rx_qgrp->singleq.rxqs[j] =
+				kzalloc(sizeof(*rx_qgrp->singleq.rxqs[j]),
+					GFP_KERNEL);
+				if (!rx_qgrp->singleq.rxqs[j]) {
+					err = -ENOMEM;
+					goto err_alloc;
+				}
+			}
+			goto skip_splitq_rx_init;
+		}
+		rx_qgrp->splitq.num_rxq_sets = num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			rx_qgrp->splitq.rxq_sets[j] =
+				kzalloc(sizeof(struct idpf_rxq_set),
+					GFP_KERNEL);
+			if (!rx_qgrp->splitq.rxq_sets[j]) {
+				err = -ENOMEM;
+				goto err_alloc;
+			}
+		}
+
+		rx_qgrp->splitq.bufq_sets = kcalloc(vport->num_bufqs_per_qgrp,
+						    sizeof(struct idpf_bufq_set),
+						    GFP_KERNEL);
+		if (!rx_qgrp->splitq.bufq_sets) {
+			err = -ENOMEM;
+			goto err_alloc;
+		}
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+			struct idpf_bufq_set *bufq_set =
+				&rx_qgrp->splitq.bufq_sets[j];
+			int swq_size = sizeof(struct idpf_sw_queue);
+
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			q->dev = &adapter->pdev->dev;
+			q->desc_count = vport->bufq_desc_count[j];
+			q->vport = vport;
+			q->rxq_grp = rx_qgrp;
+			q->idx = j;
+			q->rx_buf_size = vport->bufq_size[j];
+			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
+			q->rx_buf_stride = IDPF_RX_BUF_STRIDE;
+
+			if (test_bit(__IDPF_PRIV_FLAGS_HDR_SPLIT,
+				     config_data->user_flags)) {
+				q->rx_hsplit_en = true;
+				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
+			}
+
+			bufq_set->num_refillqs = num_rxq;
+			bufq_set->refillqs = kcalloc(num_rxq, swq_size,
+						     GFP_KERNEL);
+			if (!bufq_set->refillqs) {
+				err = -ENOMEM;
+				goto err_alloc;
+			}
+			for (k = 0; k < bufq_set->num_refillqs; k++) {
+				struct idpf_sw_queue *refillq =
+					&bufq_set->refillqs[k];
+
+				refillq->dev = &vport->adapter->pdev->dev;
+				refillq->buf_size = q->rx_buf_size;
+				refillq->desc_count =
+					vport->bufq_desc_count[j];
+				set_bit(__IDPF_Q_GEN_CHK, refillq->flags);
+				set_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags);
+				refillq->ring = kcalloc(refillq->desc_count,
+							sizeof(u16),
+							GFP_KERNEL);
+				if (!refillq->ring) {
+					err = -ENOMEM;
+					goto err_alloc;
+				}
+			}
+		}
+
+skip_splitq_rx_init:
+		for (j = 0; j < num_rxq; j++) {
+			if (!idpf_is_queue_model_split(vport->rxq_model)) {
+				q = rx_qgrp->singleq.rxqs[j];
+				goto setup_rxq;
+			}
+			q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			rx_qgrp->splitq.rxq_sets[j]->refillq0 =
+			      &rx_qgrp->splitq.bufq_sets[0].refillqs[j];
+			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP)
+				rx_qgrp->splitq.rxq_sets[j]->refillq1 =
+				      &rx_qgrp->splitq.bufq_sets[1].refillqs[j];
+
+			if (test_bit(__IDPF_PRIV_FLAGS_HDR_SPLIT,
+				     config_data->user_flags)) {
+				q->rx_hsplit_en = true;
+				q->rx_hbuf_size = IDPF_HDR_BUF_SIZE;
+			}
+
+setup_rxq:
+			q->dev = &adapter->pdev->dev;
+			q->desc_count = vport->rxq_desc_count;
+			q->vport = vport;
+			q->rxq_grp = rx_qgrp;
+			q->idx = (i * num_rxq) + j;
+			/* In splitq mode, RXQ buffer size should be
+			 * set to that of the first buffer queue
+			 * associated with this RXQ
+			 */
+			q->rx_buf_size = vport->bufq_size[0];
+			q->rx_buffer_low_watermark = IDPF_LOW_WATERMARK;
+			q->rx_max_pkt_size = vport->netdev->mtu +
+							IDPF_PACKET_HDR_PAD;
+			idpf_rxq_set_descids(vport, q);
+		}
+	}
+err_alloc:
+	if (err)
+		idpf_rxq_group_rel(vport);
+	return err;
+}
+
+/**
+ * idpf_vport_queue_grp_alloc_all - Allocate all queue groups/resources
+ * @vport: vport with qgrps to allocate
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_vport_queue_grp_alloc_all(struct idpf_vport *vport)
+{
+	int num_txq, num_rxq;
+	int err;
+
+	idpf_vport_calc_numq_per_grp(vport, &num_txq, &num_rxq);
+
+	err = idpf_txq_group_alloc(vport, num_txq);
+	if (err)
+		goto err_out;
+
+	err = idpf_rxq_group_alloc(vport, num_rxq);
+err_out:
+	if (err)
+		idpf_vport_queue_grp_rel_all(vport);
+	return err;
+}
+
+/**
+ * idpf_vport_queues_alloc - Allocate memory for all queues
+ * @vport: virtual port
+ *
+ * Allocate memory for queues associated with a vport.  Returns 0 on success,
+ * negative on failure.
+ */
+int idpf_vport_queues_alloc(struct idpf_vport *vport)
+{
+	struct idpf_vport_user_config_data *config_data;
+	int err;
+	int i;
+
+	err = idpf_vport_queue_grp_alloc_all(vport);
+	if (err)
+		goto err_out;
+
+	err = idpf_tx_desc_alloc_all(vport);
+	if (err)
+		goto err_out;
+
+	err = idpf_rx_desc_alloc_all(vport);
+	if (err)
+		goto err_out;
+
+	err = idpf_vport_init_fast_path_txqs(vport);
+	if (err)
+		goto err_out;
+
+	config_data = &vport->adapter->vport_config[vport->idx]->user_config;
+	/* Initialize flow scheduling for queues that were requested
+	 * before the interface was brought up
+	 */
+	for (i = 0; i < vport->num_txq; i++) {
+		if (test_bit(i, config_data->etf_qenable)) {
+			set_bit(__IDPF_Q_FLOW_SCH_EN, vport->txqs[i]->flags);
+			set_bit(__IDPF_Q_ETF_EN, vport->txqs[i]->flags);
+		}
+	}
+
+	return 0;
+err_out:
+	idpf_vport_queues_rel(vport);
+	return err;
+}
+
+/**
+ * idpf_tx_handle_sw_marker - Handle queue marker packet
+ * @tx_q: tx queue to handle software marker
+ */
+static void idpf_tx_handle_sw_marker(struct idpf_queue *tx_q)
+{
+	struct idpf_vport *vport = tx_q->vport;
+	bool drain_complete = true;
+	int i;
+
+	clear_bit(__IDPF_Q_SW_MARKER, tx_q->flags);
+	/* Hardware must write marker packets to all queues associated with
+	 * completion queues. So check if all queues received marker packets
+	 */
+	for (i = 0; i < vport->num_txq; i++)
+		if (test_bit(__IDPF_Q_SW_MARKER, vport->txqs[i]->flags))
+			drain_complete = false;
+	if (drain_complete) {
+		set_bit(__IDPF_VPORT_SW_MARKER, vport->flags);
+		wake_up(&vport->sw_marker_wq);
+	}
+}
+
+/**
+ * idpf_tx_splitq_unmap_hdr - unmap DMA buffer for header
+ * @tx_q: tx queue to clean buffer from
+ * @tx_buf: buffer to be cleaned
+ */
+static void
+idpf_tx_splitq_unmap_hdr(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf)
+{
+	/* unmap skb header data */
+	dma_unmap_single(tx_q->dev,
+			 dma_unmap_addr(tx_buf, dma),
+			 dma_unmap_len(tx_buf, len),
+			 DMA_TO_DEVICE);
+
+	/* clear tx_buf data */
+	tx_buf->skb = NULL;
+	dma_unmap_len_set(tx_buf, len, 0);
+}
+
+/**
+ * idpf_tx_splitq_clean_hdr - Clean TX buffer resources for header portion of
+ * packet
+ * @tx_q: tx queue to clean buffer from
+ * @tx_buf: buffer to be cleaned
+ * @napi_budget: Used to determine if we are in netpoll
+ */
+static struct idpf_tx_queue_stats
+idpf_tx_splitq_clean_hdr(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf,
+			 int napi_budget)
+{
+	struct idpf_tx_queue_stats cleaned_stats = {0};
+
+	napi_consume_skb(tx_buf->skb, napi_budget);
+
+	if (dma_unmap_len(tx_buf, len))
+		idpf_tx_splitq_unmap_hdr(tx_q, tx_buf);
+
+	cleaned_stats.bytes += tx_buf->bytecount;
+	cleaned_stats.packets += tx_buf->gso_segs;
+
+	return cleaned_stats;
+}
+
+/**
+ * idpf_tx_hw_tstamp - report hw timestamp from completion desc to stack
+ * @skb: original skb
+ * @desc_ts: pointer to 3 byte timestamp from descriptor
+ */
+static void idpf_tx_hw_tstamp(struct sk_buff *skb, u8 *desc_ts)
+{
+	struct skb_shared_hwtstamps hwtstamps;
+	u64 tstamp;
+
+	/* Only report timestamp to stack if requested */
+	if (!likely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP))
+		return;
+
+	tstamp = (desc_ts[0] | (desc_ts[1] << 8) | (desc_ts[2] << 16));
+	hwtstamps.hwtstamp =
+		ns_to_ktime(tstamp << IDPF_TW_TIME_STAMP_GRAN_512_DIV_S);
+
+	skb_tstamp_tx(skb, &hwtstamps);
+}
+
+/**
+ * idpf_tx_clean_stashed_bufs - clean bufs that were stored for
+ * out of order completions
+ * @txq: queue to clean
+ * @compl_tag: completion tag of packet to clean (from completion descriptor)
+ * @desc_ts: pointer to 3 byte timestamp from descriptor
+ * @budget: Used to determine if we are in netpoll
+ */
+static struct idpf_tx_queue_stats
+idpf_tx_clean_stashed_bufs(struct idpf_queue *txq, u16 compl_tag, u8 *desc_ts, int budget)
+{
+	struct idpf_tx_queue_stats cleaned_stats = {0};
+	struct idpf_tx_stash *stash = NULL;
+	struct hlist_node *tmp_buf = NULL;
+
+	/* Buffer completion */
+	hash_for_each_possible_safe(txq->sched_buf_hash, stash, tmp_buf,
+				    hlist, compl_tag) {
+		if (stash->buf.compl_tag != compl_tag)
+			continue;
+
+		if (unlikely(stash->buf.skb)) {
+			/* fetch timestamp from completion
+			 * descriptor to report to stack
+			 */
+			idpf_tx_hw_tstamp(stash->buf.skb, desc_ts);
+
+			cleaned_stats = idpf_tx_splitq_clean_hdr(txq, &stash->buf, budget);
+		} else if (dma_unmap_len(&stash->buf, len)) {
+			dma_unmap_page(txq->dev,
+				       dma_unmap_addr(&stash->buf, dma),
+				       dma_unmap_len(&stash->buf, len),
+				       DMA_TO_DEVICE);
+			dma_unmap_len_set(&stash->buf, len, 0);
+		}
+		if (stash->miss_pkt)
+			del_timer(&stash->reinject_timer);
+
+		/* Push shadow buf back onto stack */
+		idpf_buf_lifo_push(&txq->buf_stack, stash);
+
+		hash_del(&stash->hlist);
+	}
+
+	return cleaned_stats;
+}
+
+/**
+ * idpf_tx_find_stashed_bufs - fetch "first" buffer for a packet with the given
+ * completion tag
+ * @txq: queue to clean
+ * @compl_tag: completion tag of packet to clean (from completion descriptor)
+ */
+static struct idpf_tx_stash *
+idpf_tx_find_stashed_bufs(struct idpf_queue *txq, u16 compl_tag)
+{
+	struct idpf_tx_stash *stash = NULL;
+	struct hlist_node *tmp_buf = NULL;
+
+	/* Buffer completion */
+	hash_for_each_possible_safe(txq->sched_buf_hash, stash, tmp_buf,
+				    hlist, compl_tag) {
+		if (stash->buf.compl_tag != compl_tag)
+			continue;
+
+		if (unlikely(stash->buf.skb))
+			return stash;
+	}
+
+	return NULL;
+}
+
+/**
+ * idpf_tx_handle_reinject_expire - handler for miss completion timer
+ * @timer: pointer to timer that expired
+ */
+static void idpf_tx_handle_reinject_expire(struct timer_list *timer)
+{
+	struct idpf_tx_stash *stash = from_timer(stash, timer, reinject_timer);
+
+	idpf_tx_clean_stashed_bufs(stash->txq, stash->buf.compl_tag, NULL, 1);
+}
+
+/**
+ * idpf_tx_start_reinject_timer - start timer to wait for reinject completion
+ * @txq: pointer to queue struct
+ * @stash: stash of packet to start timer for
+ */
+static void idpf_tx_start_reinject_timer(struct idpf_queue *txq,
+					 struct idpf_tx_stash *stash)
+{
+	/* Back pointer to txq so timer expire handler knows what to
+	 * clean if timer expires.
+	 */
+	stash->txq = txq;
+	timer_setup(&stash->reinject_timer, idpf_tx_handle_reinject_expire, 0);
+	mod_timer(&stash->reinject_timer, jiffies + msecs_to_jiffies(1000));
+}
+
+/**
+ * idpf_stash_flow_sch_buffers - store buffer parameters info to be freed at a
+ * later time (only relevant for flow scheduling mode)
+ * @txq: Tx queue to clean
+ * @tx_buf: buffer to store
+ * @compl_type: type of completion, determines what extra steps need to be
+ * taken when stashing, such as starting the reinject timer on a miss
+ * completion. Only IDPF_TXD_COMPLT_RULE_MISS and IDPF_TXD_COMPLT_REINJECTED
+ * are relevant
+ */
+static int
+idpf_stash_flow_sch_buffers(struct idpf_queue *txq, struct idpf_tx_buf *tx_buf,
+			    u8 compl_type)
+{
+	struct idpf_adapter *adapter = txq->vport->adapter;
+	struct idpf_tx_stash *stash;
+
+	if (likely(!dma_unmap_addr(tx_buf, dma) && !dma_unmap_len(tx_buf, len)))
+		return 0;
+
+	stash = idpf_buf_lifo_pop(&txq->buf_stack);
+	if (!stash) {
+		dev_err(&adapter->pdev->dev,
+			"No out-of-order TX buffers left!\n");
+		return -ENOMEM;
+	}
+
+	/* Store buffer params in shadow buffer */
+	stash->buf.skb = tx_buf->skb;
+	stash->buf.bytecount = tx_buf->bytecount;
+	stash->buf.gso_segs = tx_buf->gso_segs;
+	dma_unmap_addr_set(&stash->buf, dma, dma_unmap_addr(tx_buf, dma));
+	dma_unmap_len_set(&stash->buf, len, dma_unmap_len(tx_buf, len));
+	stash->buf.compl_tag = tx_buf->compl_tag;
+
+	if (unlikely(compl_type == IDPF_TXD_COMPLT_RULE_MISS)) {
+		idpf_tx_start_reinject_timer(txq, stash);
+		stash->miss_pkt = true;
+	} else if (unlikely(compl_type == IDPF_TXD_COMPLT_REINJECTED)) {
+		stash->miss_pkt = true;
+	}
+
+	/* Add buffer to buf_hash table to be freed
+	 * later
+	 */
+	hash_add(txq->sched_buf_hash, &stash->hlist,
+		 stash->buf.compl_tag);
+
+	memset(tx_buf, 0, sizeof(struct idpf_tx_buf));
+
+	/* Reinitialize buf_id portion of tag */
+	tx_buf->compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+
+	return 0;
+}
+
+/**
+ * idpf_tx_splitq_clean - Reclaim resources from buffer queue
+ * @tx_q: Tx queue to clean
+ * @end: queue index until which it should be cleaned
+ * @napi_budget: Used to determine if we are in netpoll
+ * @descs_only: true if queue is using flow-based scheduling and should
+ * not clean buffers at this time
+ *
+ * Cleans the queue descriptor ring. If the queue is using queue-based
+ * scheduling, the buffers will be cleaned as well and this function will
+ * return the number of bytes/packets cleaned. If the queue is using flow-based
+ * scheduling, only the descriptors are cleaned at this time. Separate packet
+ * completion events will be reported on the completion queue, and the buffers
+ * will be cleaned separately. The stats returned from this function when using
+ * flow-based scheduling are irrelevant.
+ */
+static struct idpf_tx_queue_stats
+idpf_tx_splitq_clean(struct idpf_queue *tx_q, u16 end, int napi_budget,
+		     bool descs_only)
+{
+	union idpf_tx_flex_desc *next_pending_desc = NULL;
+	struct idpf_tx_queue_stats cleaned_stats = {0};
+	union idpf_tx_flex_desc *tx_desc;
+	s16 ntc = tx_q->next_to_clean;
+	struct idpf_tx_buf *tx_buf;
+
+	tx_desc = IDPF_FLEX_TX_DESC(tx_q, ntc);
+	next_pending_desc = IDPF_FLEX_TX_DESC(tx_q, end);
+	tx_buf = &tx_q->tx_buf[ntc];
+	ntc -= tx_q->desc_count;
+
+	while (tx_desc != next_pending_desc) {
+		union idpf_tx_flex_desc *eop_desc;
+
+		/* If this entry in the ring was used as a context descriptor,
+		 * it's corresponding entry in the buffer ring will have an
+		 * invalid completion tag since no buffer was used.  We can
+		 * skip this descriptor since there is no buffer to clean.
+		 */
+		if (tx_buf->compl_tag == IDPF_SPLITQ_TX_INVAL_COMPL_TAG)
+			goto fetch_next_txq_desc;
+
+		eop_desc = (union idpf_tx_flex_desc *)tx_buf->next_to_watch;
+
+		/* clear next_to_watch to prevent false hangs */
+		tx_buf->next_to_watch = NULL;
+
+		if (descs_only) {
+			if (idpf_stash_flow_sch_buffers(tx_q, tx_buf, IDPF_TXD_COMPLT_RE))
+				goto tx_splitq_clean_out;
+
+			while (tx_desc != eop_desc) {
+				tx_buf++;
+				tx_desc++;
+				ntc++;
+				if (unlikely(!ntc)) {
+					ntc -= tx_q->desc_count;
+					tx_buf = tx_q->tx_buf;
+					tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+				}
+
+				if (dma_unmap_len(tx_buf, len)) {
+					if (idpf_stash_flow_sch_buffers(tx_q,
+									tx_buf,
+									IDPF_TXD_COMPLT_RE))
+						goto tx_splitq_clean_out;
+				}
+			}
+		} else {
+			cleaned_stats = idpf_tx_splitq_clean_hdr(tx_q, tx_buf, napi_budget);
+
+			/* unmap remaining buffers */
+			while (tx_desc != eop_desc) {
+				tx_buf++;
+				tx_desc++;
+				ntc++;
+				if (unlikely(!ntc)) {
+					ntc -= tx_q->desc_count;
+					tx_buf = tx_q->tx_buf;
+					tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+				}
+
+				/* unmap any remaining paged data */
+				if (dma_unmap_len(tx_buf, len)) {
+					dma_unmap_page(tx_q->dev,
+						       dma_unmap_addr(tx_buf, dma),
+						       dma_unmap_len(tx_buf, len),
+						       DMA_TO_DEVICE);
+					dma_unmap_len_set(tx_buf, len, 0);
+				}
+			}
+		}
+
+fetch_next_txq_desc:
+		tx_buf++;
+		tx_desc++;
+		ntc++;
+		if (unlikely(!ntc)) {
+			ntc -= tx_q->desc_count;
+			tx_buf = tx_q->tx_buf;
+			tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+		}
+	}
+
+tx_splitq_clean_out:
+	ntc += tx_q->desc_count;
+	tx_q->next_to_clean = ntc;
+
+	return cleaned_stats;
+}
+
+/**
+ * idpf_tx_clean_buf_ring - clean flow scheduling TX queue buffers
+ * @txq: queue to clean
+ * @compl_tag: completion tag of packet to clean (from completion descriptor)
+ * @stats: bytes/packets cleaned
+ * @compl_type: completion type
+ *	IDPF_TXD_COMPLT_RS - clean all buffers with given completion tag and
+ *	stash any buffers on the ring prior to this packet.
+ *
+ *	IDPF_TXD_COMPLT_RULE_MISS - stash the skb and unmap/free DMA buffers.
+ *
+ *	IDPF_TXD_COMPLT_REINJECTED - stash buffers with this completion tag and
+ *	any buffers on the ring prior to this packet.
+ * @desc_ts: pointer to 3 byte timestamp from descriptor
+ * @budget: Used to determine if we are in netpoll
+ *
+ * Cleans all buffers associated with the input completion tag either from the
+ * TX buffer ring or from the hash table if the buffers were previously
+ * stashed. Returns the byte/segment count for the cleaned packet associated
+ * this completion tag.
+ */
+static bool
+idpf_tx_clean_buf_ring(struct idpf_queue *txq, u16 compl_tag, u8 compl_type,
+		       struct idpf_tx_queue_stats *stats,
+		       u8 *desc_ts, int budget)
+{
+	u16 ring_idx = compl_tag & txq->compl_tag_bufid_m;
+	struct idpf_tx_buf *tx_buf = NULL;
+	u16 ntc = txq->next_to_clean;
+	u16 orig_ring_idx = ring_idx;
+
+	tx_buf = &txq->tx_buf[ring_idx];
+
+	while (tx_buf->compl_tag == compl_tag) {
+		if (unlikely(compl_type == IDPF_TXD_COMPLT_REINJECTED)) {
+			idpf_stash_flow_sch_buffers(txq, tx_buf, compl_type);
+		} else if (tx_buf->skb) {
+			if (unlikely(compl_type == IDPF_TXD_COMPLT_RULE_MISS)) {
+				/* Since we received a miss completion, we can
+				 * free all of the buffers, but cannot free the
+				 * skb or update the stack BQL yet. We will
+				 * stash the skb and start the timer to wait
+				 * for the reinject completion
+				 */
+				idpf_tx_splitq_unmap_hdr(txq, tx_buf);
+
+				idpf_stash_flow_sch_buffers(txq, tx_buf,
+							    compl_type);
+			} else {
+				*stats = idpf_tx_splitq_clean_hdr(txq, tx_buf, budget);
+			}
+		} else if (dma_unmap_len(tx_buf, len)) {
+			dma_unmap_page(txq->dev,
+				       dma_unmap_addr(tx_buf, dma),
+				       dma_unmap_len(tx_buf, len),
+				       DMA_TO_DEVICE);
+			dma_unmap_len_set(tx_buf, len, 0);
+		}
+
+		memset(tx_buf, 0, sizeof(struct idpf_tx_buf));
+		tx_buf->compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+
+		tx_buf++;
+		ring_idx++;
+		if (ring_idx == txq->desc_count) {
+			tx_buf = txq->tx_buf;
+			ring_idx = 0;
+		}
+	}
+
+	/* If we didn't clean anything on the ring for this completion, there's
+	 * nothing more to do.
+	 */
+	if (unlikely(ring_idx == orig_ring_idx))
+		return false;
+
+	/* Otherwise, if we did clean a packet on the ring directly, it's safe
+	 * to assume that the descriptors starting from the original
+	 * next_to_clean up until the previously cleaned packet can be reused.
+	 * Therefore, we will go back in the ring and stash any buffers still
+	 * in the ring into the hash table to be cleaned later.
+	 */
+	tx_buf = &txq->tx_buf[ntc];
+	while (tx_buf != &txq->tx_buf[orig_ring_idx]) {
+		idpf_stash_flow_sch_buffers(txq, tx_buf, IDPF_TXD_COMPLT_RS);
+
+		tx_buf++;
+		ntc++;
+		if (unlikely(ntc == txq->desc_count)) {
+			tx_buf = txq->tx_buf;
+			ntc = 0;
+		}
+	}
+
+	/* Finally, update next_to_clean to reflect the work that was just done
+	 * on the ring, if any. If the packet was only cleaned from the hash
+	 * table, the ring will not be impacted, therefore we should not touch
+	 * next_to_clean. The updated ring_idx is used here
+	 */
+	txq->next_to_clean = ring_idx;
+
+	return true;
+}
+
+/**
+ * idpf_tx_handle_rs_completion - clean a single packet and all of its buffers
+ * whether on the buffer ring or in the hash table
+ * @txq: Tx ring to clean
+ * @desc: pointer to completion queue descriptor to extract completion
+ * information from
+ * @budget: Used to determine if we are in netpoll
+ *
+ * Returns bytes/packets cleaned
+ */
+static struct idpf_tx_queue_stats
+idpf_tx_handle_rs_completion(struct idpf_queue *txq,
+			     struct idpf_splitq_tx_compl_desc *desc,
+			     int budget)
+{
+	struct idpf_tx_queue_stats stats = {0};
+
+	if (test_bit(__IDPF_Q_FLOW_SCH_EN, txq->flags)) {
+		u16 compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
+		bool cleaned = false;
+
+		cleaned = idpf_tx_clean_buf_ring(txq, compl_tag,
+						 IDPF_TXD_COMPLT_RS,
+						 &stats,
+						 desc->ts,
+						 budget);
+
+		/* If we didn't clean anything on the ring, this packet must be
+		 * in the hash table. Go clean it there.
+		 */
+		if (!cleaned) {
+			stats = idpf_tx_clean_stashed_bufs(txq, compl_tag,
+							   desc->ts,
+							   budget);
+		}
+	} else {
+		u16 hw_head = le16_to_cpu(desc->q_head_compl_tag.q_head);
+
+		stats = idpf_tx_splitq_clean(txq, hw_head, budget, false);
+	}
+
+	return stats;
+}
+
+/**
+ * idpf_tx_handle_miss_completion
+ * @txq: Tx ring to clean
+ * @desc: pointer to completion queue descriptor to extract completion
+ * information from
+ * @budget: Used to determine if we are in netpoll
+ *
+ * Determines where the packet is located, the hash table or the ring. If the
+ * packet is on the ring, the ring cleaning function will take care of freeing
+ * the DMA buffers and stash the SKB. The stashing function, called inside the
+ * ring cleaning function, will take care of starting the timer.
+ *
+ * If packet is already in the hashtable, determine if we need to finish up the
+ * reinject completion or start the timer to wait for the reinject completion.
+ *
+ * Returns cleaned bytes/packets only if we're finishing up the reinject
+ * completion and freeing the skb. Otherwise, the stats are 0 / irrelevant
+ */
+static struct idpf_tx_queue_stats
+idpf_tx_handle_miss_completion(struct idpf_queue *txq,
+			       struct idpf_splitq_tx_compl_desc *desc,
+			       int budget)
+{
+	u16 compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
+	struct idpf_tx_queue_stats stats = {0};
+	struct idpf_tx_stash *stash;
+
+	/* First determine if this packet was already stashed */
+	stash = idpf_tx_find_stashed_bufs(txq, compl_tag);
+	if (!stash) {
+		/* Packet must still be on the ring, go pull it from there. */
+		idpf_tx_clean_buf_ring(txq, compl_tag,
+				       IDPF_TXD_COMPLT_RULE_MISS,
+				       &stats,
+				       desc->ts,
+				       budget);
+	} else {
+		if (stash->miss_pkt)
+			/* If it was previously stashed because
+			 * of a reinject completion, we can go
+			 * ahead and clean everything up
+			 */
+			stats = idpf_tx_clean_stashed_bufs(txq, compl_tag,
+							   desc->ts,
+							   budget);
+		else
+			/* If it was previously stashed because
+			 * of an RE completion, we just need to
+			 * start the timer while we wait for
+			 * the reinject completion
+			 */
+			idpf_tx_start_reinject_timer(txq, stash);
+	}
+
+	return stats;
+}
+
+/**
+ * idpf_tx_handle_reinject_completion
+ * @txq: Tx ring to clean
+ * @desc: pointer to completion queue descriptor to extract completion
+ * information from
+ * @budget: Used to determine if we are in netpoll
+ *
+ * Returns cleaned bytes/packets only if we're finishing up the reinject
+ * completion and freeing the skb. Otherwise, the stats are 0 / irrelevant
+ */
+static struct idpf_tx_queue_stats
+idpf_tx_handle_reinject_completion(struct idpf_queue *txq,
+				   struct idpf_splitq_tx_compl_desc *desc,
+				   int budget)
+{
+	u16 compl_tag = le16_to_cpu(desc->q_head_compl_tag.compl_tag);
+	struct idpf_tx_queue_stats stats = {0};
+	struct idpf_tx_stash *stash;
+
+	/* First check if the packet has already been stashed because of a miss
+	 * completion
+	 */
+	stash = idpf_tx_find_stashed_bufs(txq, compl_tag);
+	if (stash) {
+		if (stash->miss_pkt)
+			/* If it was previously stashed because of a miss
+			 * completion, we can go ahead and clean everything up
+			 */
+			stats = idpf_tx_clean_stashed_bufs(txq, compl_tag,
+							   desc->ts,
+							   budget);
+		else
+			/* If it was previously stashed because of a RE or out
+			 * of order RS completion, it means we received the
+			 * reinject completion before the miss completion.
+			 * However, since the packet did take the miss path, it
+			 * is guaranteed to get a miss completion Therefore,
+			 * mark it as a miss path packet in the hash table so
+			 * it will be cleaned upon receiving the miss
+			 * completion
+			 */
+			stash->miss_pkt = true;
+	} else {
+		/* If it was not in the hash table, the packet is still on the
+		 * ring.  This is another scenario in which the reinject
+		 * completion arrives before the miss completion.  We can
+		 * simply stash all of the buffers associated with this packet
+		 * and any buffers on the ring prior to it.  We will clean the
+		 * packet and all of its buffers associated with this
+		 * completion tag upon receiving the miss completion, and clean
+		 * the others upon receiving their respective RS completions.
+		 */
+		idpf_tx_clean_buf_ring(txq, compl_tag, IDPF_TXD_COMPLT_REINJECTED,
+				       &stats,
+				       desc->ts,
+				       budget);
+	}
+
+	/* If the packet is not in the ring or hash table, it means we either
+	 * received a regular completion already or the timer expired on the
+	 * miss completion.  In either case, everything should already be
+	 * cleaned up and we should ignore this completion.
+	 */
+
+	return stats;
+}
+
+/**
+ * idpf_tx_clean_complq - Reclaim resources on completion queue
+ * @complq: Tx ring to clean
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns true if there's any budget left (e.g. the clean is finished)
+ */
+static bool
+idpf_tx_clean_complq(struct idpf_queue *complq, int budget, int *cleaned)
+{
+	struct idpf_splitq_tx_compl_desc *tx_desc;
+	struct idpf_vport *vport = complq->vport;
+	s16 ntc = complq->next_to_clean;
+	bool clean_completed = false;
+	unsigned int complq_budget;
+	bool complq_ok = true;
+	int i;
+
+	complq_budget = vport->compln_clean_budget;
+	tx_desc = IDPF_SPLITQ_TX_COMPLQ_DESC(complq, ntc);
+	ntc -= complq->desc_count;
+
+	do {
+		struct idpf_tx_queue_stats cleaned_stats = {0};
+		struct idpf_queue *tx_q;
+		int rel_tx_qid;
+		u16 hw_head;
+		u8 ctype;	/* completion type */
+		u16 gen;
+
+		/* if the descriptor isn't done, no work yet to do */
+		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
+		      IDPF_TXD_COMPLQ_GEN_M) >> IDPF_TXD_COMPLQ_GEN_S;
+		if (test_bit(__IDPF_Q_GEN_CHK, complq->flags) != gen)
+			break;
+
+		/* Find necessary info of TX queue to clean buffers */
+		rel_tx_qid = (le16_to_cpu(tx_desc->qid_comptype_gen) &
+			 IDPF_TXD_COMPLQ_QID_M) >> IDPF_TXD_COMPLQ_QID_S;
+		if (rel_tx_qid >= complq->txq_grp->num_txq ||
+		    !complq->txq_grp->txqs[rel_tx_qid]) {
+			dev_err(&complq->vport->adapter->pdev->dev,
+				"TxQ not found\n");
+			goto fetch_next_desc;
+		}
+		tx_q = complq->txq_grp->txqs[rel_tx_qid];
+
+		/* Determine completion type */
+		ctype = (le16_to_cpu(tx_desc->qid_comptype_gen) &
+			IDPF_TXD_COMPLQ_COMPL_TYPE_M) >>
+			IDPF_TXD_COMPLQ_COMPL_TYPE_S;
+		switch (ctype) {
+		case IDPF_TXD_COMPLT_RE:
+			hw_head = le16_to_cpu(tx_desc->q_head_compl_tag.q_head);
+
+			cleaned_stats = idpf_tx_splitq_clean(tx_q, hw_head,
+							     budget, true);
+			break;
+		case IDPF_TXD_COMPLT_RS:
+			cleaned_stats =
+				idpf_tx_handle_rs_completion(tx_q, tx_desc, budget);
+
+			break;
+		case IDPF_TXD_COMPLT_SW_MARKER:
+			idpf_tx_handle_sw_marker(tx_q);
+			break;
+		case IDPF_TXD_COMPLT_RULE_MISS:
+			cleaned_stats =
+				idpf_tx_handle_miss_completion(tx_q, tx_desc, budget);
+
+			break;
+		case IDPF_TXD_COMPLT_REINJECTED:
+			cleaned_stats =
+				idpf_tx_handle_reinject_completion(tx_q, tx_desc, budget);
+			break;
+		default:
+			dev_err(&tx_q->vport->adapter->pdev->dev,
+				"Unknown TX completion type: %d\n",
+				ctype);
+			goto fetch_next_desc;
+		}
+
+		u64_stats_update_begin(&tx_q->stats_sync);
+		tx_q->q_stats.tx.packets += cleaned_stats.packets;
+		tx_q->q_stats.tx.bytes += cleaned_stats.bytes;
+		tx_q->cleaned_pkts += cleaned_stats.packets;
+		tx_q->cleaned_bytes += cleaned_stats.bytes;
+		complq->num_completions++;
+		u64_stats_update_end(&tx_q->stats_sync);
+
+fetch_next_desc:
+		tx_desc++;
+		ntc++;
+		if (unlikely(!ntc)) {
+			ntc -= complq->desc_count;
+			tx_desc = IDPF_SPLITQ_TX_COMPLQ_DESC(complq, 0);
+			change_bit(__IDPF_Q_GEN_CHK, complq->flags);
+		}
+
+		prefetch(tx_desc);
+
+		/* update budget accounting */
+		complq_budget--;
+	} while (likely(complq_budget));
+
+	/* Store the state of the complq to be used later in deciding if a
+	 * TXQ can be started again
+	 */
+	if (unlikely(IDPF_TX_COMPLQ_PENDING(complq->txq_grp) >
+		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(complq)))
+		complq_ok = false;
+
+	for (i = 0; i < complq->txq_grp->num_txq; ++i) {
+		struct idpf_queue *tx_q = complq->txq_grp->txqs[i];
+		struct netdev_queue *nq;
+
+		/* We didn't clean anything on this queue, move along */
+		if (!tx_q->cleaned_bytes)
+			continue;
+
+		*cleaned += tx_q->cleaned_pkts;
+
+		/* Update BQL */
+		nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+		netdev_tx_completed_queue(nq, tx_q->cleaned_pkts, tx_q->cleaned_bytes);
+
+		/* Reset cleaned stats for the next time this queue is cleaned */
+		tx_q->cleaned_bytes = 0;
+		tx_q->cleaned_pkts = 0;
+
+		/* Check if the TXQ needs to and can be restarted */
+		if (unlikely(netif_tx_queue_stopped(nq) && complq_ok &&
+			     netif_carrier_ok(tx_q->vport->netdev) &&
+			     (IDPF_TX_BUF_UNUSED(tx_q) >= tx_q->desc_count >> 2) &&
+			     (IDPF_DESC_UNUSED(tx_q) >= IDPF_TX_WAKE_THRESH))) {
+			/* Make sure any other threads stopping queue after
+			 * this see new next_to_clean.
+			 */
+			smp_mb();
+			if (complq->vport->state == __IDPF_VPORT_UP)
+				netif_tx_wake_queue(nq);
+		}
+	}
+
+	ntc += complq->desc_count;
+	complq->next_to_clean = ntc;
+
+	clean_completed = !!complq_budget;
+
+	return clean_completed;
+}
+
+/**
+ * idpf_tx_splitq_build_ctb - populate command tag and size for queue
+ * based scheduling descriptors
+ * @desc: descriptor to populate
+ * @parms: pointer to tx params struct
+ * @td_cmd: command to be filled in desc
+ * @size: size of buffer
+ */
+void
+idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
+			 struct idpf_tx_splitq_params *parms,
+			 u16 td_cmd, u16 size)
+{
+	desc->q.qw1.cmd_dtype =
+		cpu_to_le16(parms->dtype & IDPF_FLEX_TXD_QW1_DTYPE_M);
+	desc->q.qw1.cmd_dtype |=
+		cpu_to_le16((td_cmd << IDPF_FLEX_TXD_QW1_CMD_S) &
+			    IDPF_FLEX_TXD_QW1_CMD_M);
+	desc->q.qw1.buf_size = cpu_to_le16((u16)size);
+	desc->q.qw1.flex.l2tags.l2tag1 = cpu_to_le16(parms->td_tag);
+}
+
+/**
+ * idpf_tx_splitq_build_flow_desc - populate command tag and size for flow
+ * scheduling descriptors
+ * @desc: descriptor to populate
+ * @parms: pointer to tx params struct
+ * @td_cmd: command to be filled in desc
+ * @size: size of buffer
+ */
+void
+idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
+			       struct idpf_tx_splitq_params *parms,
+			       u16 td_cmd, u16 size)
+{
+	desc->flow.qw1.cmd_dtype = (u16)parms->dtype | td_cmd;
+	desc->flow.qw1.rxr_bufsize = cpu_to_le16((u16)size);
+	desc->flow.qw1.compl_tag = cpu_to_le16(parms->compl_tag);
+
+	desc->flow.qw1.ts[0] = parms->offload.desc_ts[0];
+	desc->flow.qw1.ts[1] = parms->offload.desc_ts[1];
+	desc->flow.qw1.ts[2] = parms->offload.desc_ts[2];
+}
+
+/**
+ * __idpf_tx_maybe_stop_common - 2nd level check for common Tx stop conditions
+ * @tx_q: the queue to be checked
+ * @size: the size buffer we want to assure is available
+ *
+ * Returns -EBUSY if a stop is needed, else 0
+ */
+static int
+__idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
+{
+	netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
+
+	/* Memory barrier before checking head and tail */
+	smp_mb();
+
+	/* Check again in a case another CPU has just made room available. */
+	if (likely(IDPF_DESC_UNUSED(tx_q) < size))
+		return -EBUSY;
+
+	/* A reprieve! - use start_subqueue because it doesn't call schedule */
+	netif_start_subqueue(tx_q->vport->netdev, tx_q->idx);
+
+	return 0;
+}
+
+/**
+ * idpf_tx_maybe_stop_common - 1st level check for common Tx stop conditions
+ * @tx_q: the queue to be checked
+ * @size: number of descriptors we want to assure is available
+ *
+ * Returns 0 if stop is not needed
+ */
+int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size)
+{
+	if (likely(IDPF_DESC_UNUSED(tx_q) >= size))
+		return 0;
+
+	u64_stats_update_begin(&tx_q->stats_sync);
+	tx_q->q_stats.tx.q_busy++;
+	u64_stats_update_end(&tx_q->stats_sync);
+
+	return __idpf_tx_maybe_stop_common(tx_q, size);
+}
+
+/**
+ * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
+ * @tx_q: the queue to be checked
+ *
+ * Returns 0 if stop is not needed
+ */
+static int idpf_tx_maybe_stop_splitq(struct idpf_queue *tx_q)
+{
+	/* If there are too many outstanding completions expected on the
+	 * completion queue, stop the TX queue to give the device some time to
+	 * catch up
+	 */
+	if (unlikely(IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
+		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq)))
+		goto splitq_stop;
+
+	/* Also check for available book keeping buffers; if we have less than
+	 * a quarter of the total desc_count left stop the queue to wait for
+	 * more completions
+	 */
+	if (unlikely(IDPF_TX_BUF_UNUSED(tx_q) < tx_q->desc_count >> 2))
+		goto splitq_stop;
+
+	return 0;
+
+splitq_stop:
+	u64_stats_update_begin(&tx_q->stats_sync);
+	tx_q->q_stats.tx.q_busy++;
+	u64_stats_update_end(&tx_q->stats_sync);
+	netif_stop_subqueue(tx_q->vport->netdev, tx_q->idx);
+	return -EBUSY;
+}
+
+/**
+ * idpf_tx_buf_hw_update - Store the new tail value
+ * @tx_q: queue to bump
+ * @val: new tail index
+ * @xmit_more: more skb's pending
+ *
+ * The naming here is special in that 'hw' signals that this function is about
+ * to do a register write to update our queue status. We know this can only
+ * mean tail here as HW should be owning head for TX.
+ */
+void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+			   bool xmit_more)
+{
+	struct netdev_queue *nq;
+
+	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	tx_q->next_to_use = val;
+
+	idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED);
+
+	/* Force memory writes to complete before letting h/w
+	 * know there are new descriptors to fetch.  (Only
+	 * applicable for weak-ordered memory model archs,
+	 * such as IA-64).
+	 */
+	wmb();
+
+	/* notify HW of packet */
+	if (netif_xmit_stopped(nq) || !xmit_more)
+		writel(val, tx_q->tail);
+}
+
+/**
+ * idpf_tx_desc_count_required - calculate number of Tx descriptors needed
+ * @skb: send buffer
+ *
+ * Returns number of data descriptors needed for this skb.
+ */
+unsigned int idpf_tx_desc_count_required(struct sk_buff *skb)
+{
+	const skb_frag_t *frag = &skb_shinfo(skb)->frags[0];
+	unsigned int nr_frags = skb_shinfo(skb)->nr_frags;
+	unsigned int count = 0, size, i;
+
+	for (i = 0; i < nr_frags; i++) {
+		size = skb_frag_size(frag++);
+
+		/* We only need to use the idpf_size_to_txd_count check if the
+		 * fragment is going to span multiple descriptors,
+		 * i.e. size >= 16K, which is 2^14, so we can do a quick bit
+		 * shift check.
+		 */
+		if (size >> 14)
+			count += idpf_size_to_txd_count(size);
+		else
+			count++;
+	}
+
+	count += !!skb_headlen(skb);
+
+	return count;
+}
+
+/**
+ * idpf_tx_dma_map_error - handle TX DMA map errors
+ * @txq: queue to send buffer on
+ * @skb: send buffer
+ * @first: original first buffer info buffer for packet
+ * @ring_idx: starting point on ring to unwind
+ */
+void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+			   struct idpf_tx_buf *first, u16 ring_idx)
+{
+	union idpf_tx_flex_desc *tx_desc;
+	struct idpf_tx_buf *tx_buf;
+
+	u64_stats_update_begin(&txq->stats_sync);
+	txq->q_stats.tx.dma_errs++;
+	u64_stats_update_end(&txq->stats_sync);
+
+	/* clear dma mappings for failed tx_buf map */
+	for (;;) {
+		tx_buf = &txq->tx_buf[ring_idx];
+		idpf_tx_buf_rel(txq, tx_buf);
+		if (tx_buf == first)
+			break;
+		if (ring_idx == 0)
+			ring_idx = txq->desc_count;
+		ring_idx--;
+	}
+
+	if (skb_is_gso(skb)) {
+		/* If we failed a DMA mapping for a TSO packet, we will have
+		 * tried to use one additional descriptor for a context
+		 * descriptor. Reset that here.
+		 */
+		tx_desc = IDPF_FLEX_TX_DESC(txq, ring_idx);
+		memset(tx_desc, 0, sizeof(union idpf_flex_tx_ctx_desc));
+		if (ring_idx == 0)
+			ring_idx = txq->desc_count;
+		ring_idx--;
+	}
+	txq->next_to_use = ring_idx;
+
+	/* Update tail in case netdev_xmit_more was previously true */
+	idpf_tx_buf_hw_update(txq, ring_idx, false);
+}
+
+/**
+ * idpf_tx_splitq_map - Build the Tx flex descriptor
+ * @tx_q: queue to send buffer on
+ * @parms: pointer to splitq params struct
+ * @first: first buffer info buffer to use
+ *
+ * This function loops over the skb data pointed to by *first
+ * and gets a physical address for each memory location and programs
+ * it and the length into the transmit flex descriptor.
+ */
+static void
+idpf_tx_splitq_map(struct idpf_queue *tx_q,
+		   struct idpf_tx_splitq_params *parms,
+		   struct idpf_tx_buf *first)
+{
+	union idpf_tx_flex_desc *tx_desc;
+	unsigned int data_len, size;
+	struct idpf_tx_buf *tx_buf;
+	u16 i = tx_q->next_to_use;
+	struct netdev_queue *nq;
+	struct sk_buff *skb;
+	skb_frag_t *frag;
+	u16 td_cmd = 0;
+	dma_addr_t dma;
+
+	skb = first->skb;
+
+	td_cmd = parms->offload.td_cmd;
+
+	data_len = skb->data_len;
+	size = skb_headlen(skb);
+
+	tx_desc = IDPF_FLEX_TX_DESC(tx_q, i);
+
+	dma = dma_map_single(tx_q->dev, skb->data, size, DMA_TO_DEVICE);
+
+	tx_buf = first;
+
+	parms->compl_tag =
+		(tx_q->compl_tag_cur_gen << tx_q->compl_tag_gen_s) | i;
+
+	for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
+		unsigned int max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+
+		if (dma_mapping_error(tx_q->dev, dma))
+			return idpf_tx_dma_map_error(tx_q, skb, first, i);
+
+		tx_buf->compl_tag = parms->compl_tag;
+
+		/* record length, and DMA address */
+		dma_unmap_len_set(tx_buf, len, size);
+		dma_unmap_addr_set(tx_buf, dma, dma);
+
+		/* buf_addr is in same location for both desc types */
+		tx_desc->q.buf_addr = cpu_to_le64(dma);
+
+		/* The stack can send us fragments that are too large for a
+		 * single descriptor i.e. frag size > 16K-1. We will need to
+		 * split the fragment across multiple descriptors in this case.
+		 * To adhere to HW alignment restrictions, the fragment needs
+		 * to be split such that the first chunk ends on a 4K boundary
+		 * and all subsequent chunks start on a 4K boundary. We still
+		 * want to send as much data as possible though, so our
+		 * intermediate descriptor chunk size will be 12K.
+		 *
+		 * For example, consider a 32K fragment mapped to DMA addr 2600.
+		 * ------------------------------------------------------------
+		 * |                    frag_size = 32K                       |
+		 * ------------------------------------------------------------
+		 * |2600		  |16384	    |28672
+		 *
+		 * 3 descriptors will be used for this fragment. The HW expects
+		 * the descriptors to contain the following:
+		 * ------------------------------------------------------------
+		 * | size = 13784         | size = 12K      | size = 12K      |
+		 * | dma = 2600           | dma = 16384     | dma = 28672     |
+		 * ------------------------------------------------------------
+		 *
+		 * We need to first adjust the max_data for the first chunk so
+		 * that it ends on a 4K boundary. By negating the value of the
+		 * DMA address and taking only the low order bits, we're
+		 * effectively calculating
+		 *	4K - (DMA addr lower order bits) = bytes to next boundary.
+		 *
+		 * Add that to our base aligned max_data (12K) and we have
+		 * our first chunk size. In the example above,
+		 *	13784 = 12K + (4096-2600)
+		 *
+		 * After guaranteeing the first chunk ends on a 4K boundary, we
+		 * will give the intermediate descriptors 12K chunks and
+		 * whatever is left to the final descriptor. This ensures that
+		 * all descriptors used for the remaining chunks of the
+		 * fragment start on a 4K boundary and we use as few
+		 * descriptors as possible.
+		 */
+		max_data += -dma & (IDPF_TX_MAX_READ_REQ_SIZE - 1);
+		while (unlikely(size > IDPF_TX_MAX_DESC_DATA)) {
+			parms->splitq_build_ctb(tx_desc, parms, td_cmd,
+						max_data);
+
+			tx_desc++;
+			i++;
+
+			if (i == tx_q->desc_count) {
+				tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+				i = 0;
+				tx_q->compl_tag_cur_gen =
+					IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
+			}
+
+			/* Associate this buffer with the first buffers
+			 * completion tag so we don't break the cleaning loop.
+			 */
+			memset(&tx_q->tx_buf[i], 0, sizeof(struct idpf_tx_buf));
+			tx_q->tx_buf[i].compl_tag = parms->compl_tag;
+
+			/* Adjust the DMA offset and the remaining size of the
+			 * fragment.  On the first iteration of this loop,
+			 * max_data will be > 12K and <= 16K-1.  On any
+			 * subsequent iteration of this loop, max_data will
+			 * always be 12K.
+			 */
+			dma += max_data;
+			size -= max_data;
+
+			/* Reset max_data since remaining chunks will be 12K at most */
+			max_data = IDPF_TX_MAX_DESC_DATA_ALIGNED;
+
+			/* buf_addr is in same location for both desc types */
+			tx_desc->q.buf_addr = cpu_to_le64(dma);
+		}
+
+		if (likely(!data_len))
+			break;
+		parms->splitq_build_ctb(tx_desc, parms, td_cmd, size);
+		tx_desc++;
+		i++;
+
+		if (i == tx_q->desc_count) {
+			tx_desc = IDPF_FLEX_TX_DESC(tx_q, 0);
+			i = 0;
+			tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
+		}
+
+		size = skb_frag_size(frag);
+		data_len -= size;
+
+		dma = skb_frag_dma_map(tx_q->dev, frag, 0, size,
+				       DMA_TO_DEVICE);
+
+		tx_buf = &tx_q->tx_buf[i];
+	}
+
+	/* record bytecount for BQL */
+	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
+	netdev_tx_sent_queue(nq, first->bytecount);
+
+	/* record SW timestamp if HW timestamp is not available */
+	skb_tx_timestamp(first->skb);
+
+	/* write last descriptor with RS and EOP bits */
+	td_cmd |= parms->eop_cmd;
+	parms->splitq_build_ctb(tx_desc, parms, td_cmd, size);
+	i++;
+	if (i == tx_q->desc_count) {
+		i = 0;
+		tx_q->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(tx_q);
+	}
+
+	/* set next_to_watch value indicating a packet is present */
+	first->next_to_watch = tx_desc;
+
+	tx_q->txq_grp->num_completions_pending++;
+
+	idpf_tx_buf_hw_update(tx_q, i, netdev_xmit_more());
+}
+
+/**
+ * idpf_tso - computes mss and TSO length to prepare for TSO
+ * @skb: pointer to skb
+ * @off: pointer to struct that holds offload parameters
+ *
+ * Returns error (negative) if TSO was requested but cannot be applied to the given skb,
+ * 0 if TSO does not apply to the given skb, or 1 otherwise.
+ *
+ * Note: this function can be used in the splitq and singleq paths
+ */
+int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
+{
+	union {
+		struct iphdr *v4;
+		struct ipv6hdr *v6;
+		unsigned char *hdr;
+	} ip;
+	union {
+		struct tcphdr *tcp;
+		struct udphdr *udp;
+		unsigned char *hdr;
+	} l4;
+	u32 paylen, l4_start;
+	int err;
+
+	if (!skb_is_gso(skb))
+		return 0;
+
+	err = skb_cow_head(skb, 0);
+	if (err < 0)
+		return err;
+
+	ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_transport_header(skb);
+
+	/* initialize outer IP header fields */
+	if (ip.v4->version == 4) {
+		ip.v4->tot_len = 0;
+		ip.v4->check = 0;
+	} else if (ip.v6->version == 6) {
+		ip.v6->payload_len = 0;
+	} else {
+		return -EINVAL;
+	}
+
+	l4_start = skb_transport_offset(skb);
+
+	/* remove payload length from checksum */
+	paylen = skb->len - l4_start;
+
+	switch (skb_shinfo(skb)->gso_type & ~SKB_GSO_DODGY) {
+	case SKB_GSO_TCPV4:
+	case SKB_GSO_TCPV6:
+		csum_replace_by_diff(&l4.tcp->check,
+				     (__force __wsum)htonl(paylen));
+
+		/* compute length of segmentation header */
+		off->tso_hdr_len = (l4.tcp->doff * 4) + l4_start;
+		break;
+	case SKB_GSO_UDP_L4:
+		csum_replace_by_diff(&l4.udp->check,
+				     (__force __wsum)htonl(paylen));
+		/* compute length of segmentation header */
+		off->tso_hdr_len = sizeof(struct udphdr) + l4_start;
+		l4.udp->len =
+			htons(skb_shinfo(skb)->gso_size +
+			      sizeof(struct udphdr));
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	off->tso_len = skb->len - off->tso_hdr_len;
+	off->mss = skb_shinfo(skb)->gso_size;
+	off->tso_segs = skb_shinfo(skb)->gso_segs;
+
+	off->tx_flags |= IDPF_TX_FLAGS_TSO;
+
+	return 1;
+}
+
+/**
+ * idpf_get_flow_sche_tstamp - fetch timestamp from SKB for
+ * flow scheduling offload
+ * @skb: send buffer to extract timestamp from
+ * @txq: pointer to txq
+ * @offload: pointer to offload parameters struct
+ */
+static void
+idpf_get_flow_sche_tstamp(struct sk_buff *skb, struct idpf_queue *txq,
+			  struct idpf_tx_offload_params *offload)
+{
+	struct idpf_adapter *adapter = txq->vport->adapter;
+	/* skb timestamp field changed around same time ETF support was added */
+	u64 ts_ns = skb->skb_mstamp_ns;
+	u64 cur_time = 0;
+
+	/* TODO: revisit how to sync device time with OS time */
+	if (unlikely(adapter->dev_ops.reg_ops.read_master_time))
+		cur_time =
+			adapter->dev_ops.reg_ops.read_master_time(&adapter->hw);
+	else
+		/* When PTM support is enabled host time will be synced with
+		 * master timer.
+		 */
+		cur_time = ktime_get_real_ns();
+
+	/* The format of the timestamp is the 23 least significant bits of
+	 * absolute time in units of X ns. Bit 23 indicates overflow if the
+	 * given timestamp is beyond current horizon. Zero means no timestamp,
+	 * so if the 23 lsb and overflow bit are zero, the timestamp should be
+	 * written as 1.
+	 */
+	if (ts_ns <= cur_time) {
+		/* When timestamp is before horizon, use current time
+		 * to fill in desc_ts.
+		 */
+		ts_ns = cur_time >> txq->vport->ts_gran;
+		offload->desc_ts[0] = ts_ns & 0xff;
+		offload->desc_ts[1] = (ts_ns >> 8) & 0xff;
+		offload->desc_ts[2] = ((ts_ns >> 16) & 0x7f);
+	} else if (ts_ns <= cur_time + txq->vport->tw_horizon) {
+		ts_ns = ts_ns >> txq->vport->ts_gran;
+
+		offload->desc_ts[0] = ts_ns & 0xff;
+		offload->desc_ts[1] = (ts_ns >> 8) & 0xff;
+		offload->desc_ts[2] = ((ts_ns >> 16) & 0x7f);
+	} else {
+		/* Set only the SW overflow bit for the whole timestamp field */
+		offload->desc_ts[2] = IDPF_TXD_FLOW_SCH_HORIZON_OVERFLOW_M;
+	}
+
+	/* If the timestamp is zero, set it to 1, as discussed in the comment above. */
+	if (!offload->desc_ts[0] && !offload->desc_ts[1] &&
+	    !offload->desc_ts[2])
+		offload->desc_ts[0] = 0x1;
+}
+
+/**
+ * __idpf_chk_linearize - Check skb is not using too many buffers
+ * @skb: send buffer
+ * @max_bufs: maximum number of buffers
+ *
+ * For TSO we need to count the TSO header and segment payload separately.  As
+ * such we need to check cases where we have max_bufs-1 fragments or more as we
+ * can potentially require max_bufs+1 DMA transactions, 1 for the TSO header, 1
+ * for the segment payload in the first descriptor, and another max_buf-1 for
+ * the fragments.
+ */
+static bool __idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs)
+{
+	const skb_frag_t *frag, *stale;
+	int nr_frags, sum;
+
+	/* no need to check if number of frags is less than max_bufs - 1 */
+	nr_frags = skb_shinfo(skb)->nr_frags;
+	if (nr_frags < (max_bufs - 1))
+		return false;
+
+	/* We need to walk through the list and validate that each group
+	 * of max_bufs-2 fragments totals at least gso_size.
+	 */
+	nr_frags -= max_bufs - 2;
+	frag = &skb_shinfo(skb)->frags[0];
+
+	/* Initialize size to the negative value of gso_size minus 1.  We use
+	 * this as the worst case scenario in which the frag ahead of us only
+	 * provides one byte which is why we are limited to max_bufs-2
+	 * descriptors for a single transmit as the header and previous
+	 * fragment are already consuming 2 descriptors.
+	 */
+	sum = 1 - skb_shinfo(skb)->gso_size;
+
+	/* Add size of frags 0 through 4 to create our initial sum */
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+	sum += skb_frag_size(frag++);
+
+	/* Walk through fragments adding latest fragment, testing it, and
+	 * then removing stale fragments from the sum.
+	 */
+	for (stale = &skb_shinfo(skb)->frags[0];; stale++) {
+		int stale_size = skb_frag_size(stale);
+
+		sum += skb_frag_size(frag++);
+
+		/* The stale fragment may present us with a smaller
+		 * descriptor than the actual fragment size. To account
+		 * for that we need to remove all the data on the front and
+		 * figure out what the remainder would be in the last
+		 * descriptor associated with the fragment.
+		 */
+		if (stale_size > IDPF_TX_MAX_DESC_DATA) {
+			int align_pad = -(skb_frag_off(stale)) &
+					(IDPF_TX_MAX_READ_REQ_SIZE - 1);
+
+			sum -= align_pad;
+			stale_size -= align_pad;
+
+			do {
+				sum -= IDPF_TX_MAX_DESC_DATA_ALIGNED;
+				stale_size -= IDPF_TX_MAX_DESC_DATA_ALIGNED;
+			} while (stale_size > IDPF_TX_MAX_DESC_DATA);
+		}
+
+		/* if sum is negative we failed to make sufficient progress */
+		if (sum < 0)
+			return true;
+
+		if (!nr_frags--)
+			break;
+
+		sum -= stale_size;
+	}
+
+	return false;
+}
+
+/**
+ * idpf_chk_linearize - Check if skb exceeds max descriptors per packet
+ * @skb: send buffer
+ * @max_bufs: maximum scatter gather buffers for single packet
+ * @count: number of buffers this packet needs
+ *
+ * Make sure we don't exceed maximum scatter gather buffers for a single
+ * packet. We have to do some special checking around the boundary (max_bufs-1)
+ * if TSO is on since we need count the TSO header and payload separately.
+ * E.g.: a packet with 7 fragments can require 9 DMA transactions; 1 for TSO
+ * header, 1 for segment payload, and then 7 for the fragments.
+ */
+bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			unsigned int count)
+{
+	if (likely(count < max_bufs))
+		return false;
+	if (skb_is_gso(skb))
+		return __idpf_chk_linearize(skb, max_bufs);
+
+	return count != max_bufs;
+}
+
+/**
+ * idpf_tx_splitq_get_ctx_desc - grab next desc and update buffer ring
+ * @txq: queue to put context descriptor on
+ *
+ * Since the TX buffer rings mimics the descriptor ring, update the tx buffer
+ * ring entry to reflect that this index is a context descriptor
+ */
+static union idpf_flex_tx_ctx_desc *
+idpf_tx_splitq_get_ctx_desc(struct idpf_queue *txq)
+{
+	union idpf_flex_tx_ctx_desc *desc;
+	int i = txq->next_to_use;
+
+	memset(&txq->tx_buf[i], 0, sizeof(struct idpf_tx_buf));
+	txq->tx_buf[i].compl_tag = IDPF_SPLITQ_TX_INVAL_COMPL_TAG;
+
+	/* grab the next descriptor */
+	desc = IDPF_FLEX_TX_CTX_DESC(txq, i);
+	i++;
+	if (i == txq->desc_count) {
+		i = 0;
+		txq->compl_tag_cur_gen = IDPF_TX_ADJ_COMPL_TAG_GEN(txq);
+	}
+	txq->next_to_use = i;
+
+	return desc;
+}
+
+/**
+ * idpf_tx_drop_skb - free the SKB and bump tail if necessary
+ * @tx_q: queue to send buffer on
+ * @skb: pointer to skb
+ */
+netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb)
+{
+	u64_stats_update_begin(&tx_q->stats_sync);
+	tx_q->q_stats.tx.skb_drops++;
+	u64_stats_update_end(&tx_q->stats_sync);
+
+	idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+
+	dev_kfree_skb_any(skb);
+	return NETDEV_TX_OK;
+}
+
+/**
+ * idpf_tx_splitq_frame - Sends buffer on Tx ring using flex descriptors
+ * @skb: send buffer
+ * @tx_q: queue to send buffer on
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+static netdev_tx_t
+idpf_tx_splitq_frame(struct sk_buff *skb, struct idpf_queue *tx_q)
+{
+	struct idpf_tx_splitq_params tx_parms = {
+		NULL, (enum idpf_tx_desc_dtype_value)0, 0, {0}, {0}
+	};
+	struct idpf_tx_buf *first;
+	unsigned int count;
+	int tso;
+
+	count = idpf_tx_desc_count_required(skb);
+	if (idpf_chk_linearize(skb, tx_q->tx_max_bufs, count)) {
+		if (__skb_linearize(skb))
+			return idpf_tx_drop_skb(tx_q, skb);
+
+		count = idpf_size_to_txd_count(skb->len);
+		u64_stats_update_begin(&tx_q->stats_sync);
+		tx_q->q_stats.tx.linearize++;
+		u64_stats_update_end(&tx_q->stats_sync);
+	}
+
+	tso = idpf_tso(skb, &tx_parms.offload);
+	if (unlikely(tso < 0))
+		return idpf_tx_drop_skb(tx_q, skb);
+
+	if (idpf_tx_maybe_stop_common(tx_q,
+				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
+				      tso)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+		return NETDEV_TX_BUSY;
+	}
+
+	/* Check for splitq specific TX resources */
+	if (idpf_tx_maybe_stop_splitq(tx_q)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+		return NETDEV_TX_BUSY;
+	}
+
+	if (tso) {
+		/* If tso is needed, set up context desc */
+		union idpf_flex_tx_ctx_desc *ctx_desc =
+			idpf_tx_splitq_get_ctx_desc(tx_q);
+
+		ctx_desc->tso.qw1.cmd_dtype =
+				cpu_to_le16(IDPF_TX_DESC_DTYPE_FLEX_TSO_CTX |
+					    IDPF_TX_FLEX_CTX_DESC_CMD_TSO);
+		ctx_desc->tso.qw0.flex_tlen =
+				cpu_to_le32(tx_parms.offload.tso_len &
+					    IDPF_TXD_FLEX_CTX_TLEN_M);
+		ctx_desc->tso.qw0.mss_rt =
+				cpu_to_le16(tx_parms.offload.mss &
+					    IDPF_TXD_FLEX_CTX_MSS_RT_M);
+		ctx_desc->tso.qw0.hdr_len = tx_parms.offload.tso_hdr_len;
+
+		u64_stats_update_begin(&tx_q->stats_sync);
+		tx_q->q_stats.tx.lso_pkts++;
+		u64_stats_update_end(&tx_q->stats_sync);
+	}
+
+	/* record the location of the first descriptor for this packet */
+	first = &tx_q->tx_buf[tx_q->next_to_use];
+	first->skb = skb;
+
+	if (tso) {
+		first->gso_segs = tx_parms.offload.tso_segs;
+		first->bytecount = skb->len +
+			((first->gso_segs - 1) * tx_parms.offload.tso_hdr_len);
+	} else {
+		first->gso_segs = 1;
+		first->bytecount = max_t(unsigned int, skb->len, ETH_ZLEN);
+	}
+
+	if (test_bit(__IDPF_Q_FLOW_SCH_EN, tx_q->flags)) {
+		if (unlikely(test_bit(__IDPF_Q_ETF_EN, tx_q->flags)))
+			idpf_get_flow_sche_tstamp(skb, tx_q, &tx_parms.offload);
+
+		tx_parms.dtype = IDPF_TX_DESC_DTYPE_FLEX_FLOW_SCHE;
+		tx_parms.splitq_build_ctb = idpf_tx_splitq_build_flow_desc;
+		tx_parms.eop_cmd = IDPF_TXD_FLEX_FLOW_CMD_EOP;
+		if (unlikely(!(tx_q->next_to_use % IDPF_TX_SPLITQ_RE_MIN_GAP))) {
+			tx_parms.eop_cmd |= IDPF_TXD_FLEX_FLOW_CMD_RE;
+			tx_q->txq_grp->num_completions_pending++;
+		}
+
+		if (skb->ip_summed == CHECKSUM_PARTIAL)
+			tx_parms.offload.td_cmd |= IDPF_TXD_FLEX_FLOW_CMD_CS_EN;
+
+	} else {
+		tx_parms.dtype = IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2;
+		tx_parms.splitq_build_ctb = idpf_tx_splitq_build_ctb;
+		tx_parms.eop_cmd = IDPF_TXD_LAST_DESC_CMD;
+
+		if (skb->ip_summed == CHECKSUM_PARTIAL)
+			tx_parms.offload.td_cmd |= IDPF_TX_FLEX_DESC_CMD_CS_EN;
+	}
+
+	idpf_tx_splitq_map(tx_q, &tx_parms, first);
+
+	return NETDEV_TX_OK;
+}
+
+/**
+ * idpf_tx_splitq_start - Selects the right Tx queue to send buffer
+ * @skb: send buffer
+ * @netdev: network interface device structure
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
+				 struct net_device *netdev)
+{
+	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
+	struct idpf_queue *tx_q;
+
+	if (unlikely(skb->queue_mapping >= vport->num_txq)) {
+		dev_kfree_skb_any(skb);
+		return NETDEV_TX_OK;
+	}
+
+	tx_q = vport->txqs[skb->queue_mapping];
+
+	/* hardware can't handle really short frames, hardware padding works
+	 * beyond this point
+	 */
+	if (skb_put_padto(skb, tx_q->tx_min_pkt_len)) {
+		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+		return NETDEV_TX_OK;
+	}
+
+	return idpf_tx_splitq_frame(skb, tx_q);
+}
+
+/**
+ * idpf_ptype_to_htype - get a hash type
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * Returns appropriate hash type (such as PKT_HASH_TYPE_L2/L3/L4) to be used by
+ * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
+ * Rx desc.
+ */
+enum
+pkt_hash_types idpf_ptype_to_htype(struct idpf_rx_ptype_decoded *decoded)
+{
+	if (!decoded->known)
+		return PKT_HASH_TYPE_NONE;
+	if (decoded->payload_layer == IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2 &&
+	    decoded->inner_prot)
+		return PKT_HASH_TYPE_L4;
+	if (decoded->payload_layer == IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2 &&
+	    decoded->outer_ip)
+		return PKT_HASH_TYPE_L3;
+	if (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_L2)
+		return PKT_HASH_TYPE_L2;
+
+	return PKT_HASH_TYPE_NONE;
+}
+
+/**
+ * idpf_rx_hash - set the hash value in the skb
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @rx_desc: Receive descriptor
+ * @decoded: Decoded Rx packet type related fields
+ */
+static void
+idpf_rx_hash(struct idpf_queue *rxq, struct sk_buff *skb,
+	     struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+	     struct idpf_rx_ptype_decoded *decoded)
+{
+	u32 hash;
+
+	if (!idpf_is_feature_ena(rxq->vport, NETIF_F_RXHASH))
+		return;
+
+	hash = le16_to_cpu(rx_desc->hash1) |
+	       (rx_desc->ff2_mirrid_hash2.hash2 << 16) |
+	       (rx_desc->hash3 << 24);
+
+	skb_set_hash(skb, hash, idpf_ptype_to_htype(decoded));
+}
+
+/**
+ * idpf_rx_csum - Indicate in skb if checksum is good
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @csum_bits: checksum fields extracted from the descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * skb->protocol must be set before this function is called
+ */
+static void idpf_rx_csum(struct idpf_queue *rxq, struct sk_buff *skb,
+			 struct idpf_rx_csum_decoded *csum_bits,
+			 struct idpf_rx_ptype_decoded *decoded)
+{
+	bool ipv4, ipv6;
+
+	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
+	skb->ip_summed = CHECKSUM_NONE;
+
+	/* check if Rx checksum is enabled */
+	if (!idpf_is_feature_ena(rxq->vport, NETIF_F_RXCSUM))
+		return;
+
+	/* check if HW has decoded the packet and checksum */
+	if (!(csum_bits->l3l4p))
+		return;
+
+	ipv4 = (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&
+	       (decoded->outer_ip_ver == IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&
+	       (decoded->outer_ip_ver == IDPF_RX_PTYPE_OUTER_IPV6);
+
+	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
+		goto checksum_fail;
+
+	if (ipv6 && csum_bits->ipv6exadd)
+		return;
+
+	/* HW checksum will be invalid if vlan stripping is not enabled and
+	 * packet has an outer vlan tag. raw_csum_inv will also not be set
+	 * even though it's invalid.
+	 */
+	if (skb_vlan_tag_present(skb))
+		return;
+
+	/* check for L4 errors and handle packets that were not able to be
+	 * checksummed
+	 */
+	if (csum_bits->l4e)
+		goto checksum_fail;
+
+	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
+	switch (decoded->inner_prot) {
+	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
+	case IDPF_RX_PTYPE_INNER_PROT_TCP:
+	case IDPF_RX_PTYPE_INNER_PROT_UDP:
+		if (!csum_bits->rsc && !csum_bits->raw_csum_inv) {
+			skb->csum = (__force __wsum)~htons(csum_bits->raw_csum);
+			skb->ip_summed = CHECKSUM_COMPLETE;
+		} else {
+			skb->ip_summed = CHECKSUM_UNNECESSARY;
+		}
+		break;
+	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+	default:
+		break;
+	}
+	return;
+
+checksum_fail:
+	u64_stats_update_begin(&rxq->stats_sync);
+	rxq->q_stats.rx.hw_csum_err++;
+	u64_stats_update_end(&rxq->stats_sync);
+}
+
+/**
+ * idpf_rx_splitq_extract_csum_bits - Extract checksum bits from descriptor
+ * @rx_desc: receive descriptor
+ * @csum: structure to extract checksum fields
+ *
+ **/
+static void
+idpf_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+				 struct idpf_rx_csum_decoded *csum)
+{
+	u8 qword0, qword1;
+
+	qword0 = rx_desc->status_err0_qw0;
+	qword1 = rx_desc->status_err0_qw1;
+
+	csum->ipe =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_S),
+			    qword1);
+	csum->eipe =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_S),
+			    qword1);
+	csum->l4e =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_S),
+			    qword1);
+	csum->l3l4p =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_S),
+			    qword1);
+	csum->ipv6exadd =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_S),
+			    qword0);
+	csum->rsc =
+		!!FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M,
+			    le16_to_cpu(rx_desc->hdrlen_flags));
+	csum->raw_csum_inv =
+		!!FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S),
+			    le16_to_cpu(rx_desc->ptype_err_fflags0));
+	csum->raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
+	csum->pprs = 0;
+}
+
+/**
+ * idpf_rx_rsc - Set the RSC fields in the skb
+ * @rxq : Rx descriptor ring packet is being transacted on
+ * @skb : pointer to current skb being populated
+ * @rx_desc: Receive descriptor
+ * @decoded: Decoded Rx packet type related fields
+ *
+ * Return 0 on success and error code on failure
+ *
+ * Populate the skb fields with the total number of RSC segments, RSC payload
+ * length and packet type.
+ */
+static int idpf_rx_rsc(struct idpf_queue *rxq, struct sk_buff *skb,
+		       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+		       struct idpf_rx_ptype_decoded *decoded)
+{
+	u16 rsc_segments, rsc_payload_len;
+	struct ipv6hdr *ipv6h;
+	struct tcphdr *tcph;
+	struct iphdr *ipv4h;
+	bool ipv4, ipv6;
+
+	if (!decoded->outer_ip)
+		return -EINVAL;
+
+	rsc_payload_len = le16_to_cpu(rx_desc->misc.rscseglen);
+	if (!rsc_payload_len)
+		return -EINVAL;
+
+	ipv4 = (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&
+		(decoded->outer_ip_ver == IDPF_RX_PTYPE_OUTER_IPV4);
+	ipv6 = (decoded->outer_ip == IDPF_RX_PTYPE_OUTER_IP) &&
+		(decoded->outer_ip_ver == IDPF_RX_PTYPE_OUTER_IPV6);
+
+	if (!(ipv4 ^ ipv6))
+		return -EINVAL;
+
+	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_payload_len);
+
+	NAPI_GRO_CB(skb)->count = rsc_segments;
+	skb_shinfo(skb)->gso_size = rsc_payload_len;
+
+	skb_reset_network_header(skb);
+
+	if (ipv4) {
+		ipv4h = ip_hdr(skb);
+		skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
+
+		/* Reset and set transport header offset in skb */
+		skb_set_transport_header(skb, sizeof(struct iphdr));
+		tcph = tcp_hdr(skb);
+
+		/* Compute the TCP pseudo header checksum*/
+		tcph->check =
+			~tcp_v4_check(skb->len - skb_transport_offset(skb),
+				      ipv4h->saddr, ipv4h->daddr, 0);
+	} else {
+		ipv6h = ipv6_hdr(skb);
+		skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
+		skb_set_transport_header(skb, sizeof(struct ipv6hdr));
+		tcph = tcp_hdr(skb);
+		tcph->check =
+			~tcp_v6_check(skb->len - skb_transport_offset(skb),
+				      &ipv6h->saddr, &ipv6h->daddr, 0);
+	}
+
+	tcp_gro_complete(skb);
+
+	u64_stats_update_begin(&rxq->stats_sync);
+	rxq->q_stats.rx.rsc_pkts++;
+	u64_stats_update_end(&rxq->stats_sync);
+
+	return 0;
+}
+
+/**
+ * idpf_rx_process_skb_fields - Populate skb header fields from Rx descriptor
+ * @rxq: Rx descriptor ring packet is being transacted on
+ * @skb: pointer to current skb being populated
+ * @rx_desc: Receive descriptor
+ *
+ * This function checks the ring, descriptor, and packet information in
+ * order to populate the hash, checksum, protocol, and
+ * other fields within the skb.
+ */
+int
+idpf_rx_process_skb_fields(struct idpf_queue *rxq, struct sk_buff *skb,
+			   struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+{
+	struct idpf_rx_ptype_decoded decoded;
+	struct idpf_rx_csum_decoded csum_bits;
+	u16 rx_ptype;
+	int err = 0;
+
+	rx_ptype = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M,
+			     le16_to_cpu(rx_desc->ptype_err_fflags0));
+
+	decoded = rxq->vport->rx_ptype_lkup[rx_ptype];
+	/* modifies the skb - consumes the enet header */
+	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
+	/* If we don't know the ptype we can't do anything else with it. Just
+	 * pass it up the stack as-is.
+	 */
+	if (!decoded.known)
+		return 0;
+
+	idpf_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
+	idpf_rx_csum(rxq, skb, &csum_bits, &decoded);
+	/* process RSS/hash */
+	idpf_rx_hash(rxq, skb, rx_desc, &decoded);
+
+	if (csum_bits.rsc)
+		err = idpf_rx_rsc(rxq, skb, rx_desc, &decoded);
+
+	return err;
+}
+
+/**
+ * idpf_rx_page_is_reserved - check if reuse is possible
+ * @page: page struct to check
+ */
+static bool idpf_rx_page_is_reserved(struct page *page)
+{
+	return (page_to_nid(page) != numa_mem_id()) || page_is_pfmemalloc(page);
+}
+
+/**
+ * idpf_rx_buf_adjust_pg - Prepare rx buffer for reuse
+ * @rx_buf: Rx buffer to adjust
+ * @size: Size of adjustment
+ *
+ * Update the offset within page so that rx buf will be ready to be reused.
+ * For systems with PAGE_SIZE < 8192 this function will flip the page offset
+ * so the second half of page assigned to rx buffer will be used, otherwise
+ * the offset is moved by the @size bytes
+ */
+void
+idpf_rx_buf_adjust_pg(struct idpf_rx_buf *rx_buf, unsigned int size)
+{
+	struct idpf_page_info *page_info;
+
+	page_info = &rx_buf->page_info[rx_buf->page_indx];
+
+	if (PAGE_SIZE < 8192)
+		if (rx_buf->buf_size > IDPF_RX_BUF_2048)
+			/* flip to second page */
+			rx_buf->page_indx = !rx_buf->page_indx;
+		else
+			/* flip page offset to other buffer */
+			page_info->page_offset ^= size;
+	else
+		/* move offset up to the next cache line */
+		page_info->page_offset += size;
+}
+
+/**
+ * idpf_rx_can_reuse_page - Determine if page can be reused for another rx
+ * @rx_buf: buffer containing the page
+ *
+ * If page is reusable, we have a green light for calling idpf_reuse_rx_page,
+ * which will assign the current buffer to the buffer that next_to_alloc is
+ * pointing to; otherwise, the dma mapping needs to be destroyed and
+ * page freed
+ */
+bool idpf_rx_can_reuse_page(struct idpf_rx_buf *rx_buf)
+{
+	unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
+	struct idpf_page_info *page_info;
+	unsigned int pagecnt_bias;
+	struct page *page;
+
+	page_info = &rx_buf->page_info[rx_buf->page_indx];
+	pagecnt_bias = page_info->pagecnt_bias;
+	page = page_info->page;
+
+	/* avoid re-using remote pages */
+	if (unlikely(idpf_rx_page_is_reserved(page)))
+		return false;
+
+	if (PAGE_SIZE < 8192) {
+		int reuse_bias = rx_buf->buf_size > IDPF_RX_BUF_2048 ? 0 : 1;
+
+		/* if we are only owner of page we can reuse it */
+		if (unlikely((page_count(page) - pagecnt_bias) > reuse_bias))
+			return false;
+	} else if (page_info->page_offset > last_offset) {
+		return false;
+	}
+
+	/* If we have drained the page fragment pool we need to update
+	 * the pagecnt_bias and page count so that we fully restock the
+	 * number of references the driver holds.
+	 */
+	if (unlikely(pagecnt_bias == 1)) {
+		page_ref_add(page, USHRT_MAX - 1);
+		page_info->pagecnt_bias = USHRT_MAX;
+	}
+
+	return true;
+}
+
+/**
+ * idpf_rx_frame_truesize - Returns an actual size of Rx frame in memory
+ * @buf: pointer to buffer metadata struct
+ * @size: Packet length from rx_desc
+ *
+ * Returns an actual size of Rx frame in memory, considering page size
+ * and SKB data alignment.
+ */
+static unsigned int
+idpf_rx_frame_truesize(struct idpf_rx_buf *buf, unsigned int size)
+{
+	return PAGE_SIZE >= 8192 ? SKB_DATA_ALIGN(size) : buf->buf_size;
+}
+
+/**
+ * idpf_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag
+ * @rx_buf: buffer containing page to add
+ * @skb: sk_buff to place the data into
+ * @size: packet length from rx_desc
+ *
+ * This function will add the data contained in rx_buf->page to the skb.
+ * It will just attach the page as a frag to the skb.
+ * The function will then update the page offset.
+ */
+void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
+		      unsigned int size)
+{
+	unsigned int truesize = idpf_rx_frame_truesize(rx_buf, size);
+	struct idpf_page_info *page_info;
+
+	page_info = &rx_buf->page_info[rx_buf->page_indx];
+	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page_info->page,
+			page_info->page_offset, size, truesize);
+
+	idpf_rx_buf_adjust_pg(rx_buf, truesize);
+}
+
+/**
+ * idpf_rx_get_buf_page - Fetch Rx buffer page and synchronize data for use
+ * @dev: device struct
+ * @rx_buf: Rx buf to fetch page for
+ * @size: size of buffer to add to skb
+ *
+ * This function will pull an Rx buffer page from the ring and synchronize it
+ * for use by the CPU.
+ */
+static void
+idpf_rx_get_buf_page(struct device *dev, struct idpf_rx_buf *rx_buf,
+		     const unsigned int size)
+{
+	struct idpf_page_info *page_info;
+
+	page_info = &rx_buf->page_info[rx_buf->page_indx];
+	prefetch(page_info->page);
+
+	/* we are reusing so sync this buffer for CPU use */
+	dma_sync_single_range_for_cpu(dev, page_info->dma,
+				      page_info->page_offset, size,
+				      DMA_FROM_DEVICE);
+
+	/* We have pulled a buffer for use, so decrement pagecnt_bias */
+	page_info->pagecnt_bias--;
+}
+
+/**
+ * idpf_rx_construct_skb - Allocate skb and populate it
+ * @rxq: Rx descriptor queue
+ * @rx_buf: Rx buffer to pull data from
+ * @size: the length of the packet
+ *
+ * This function allocates an skb. It then populates it with the page
+ * data from the current receive descriptor, taking care to set up the
+ * skb correctly.
+ */
+struct sk_buff *
+idpf_rx_construct_skb(struct idpf_queue *rxq, struct idpf_rx_buf *rx_buf,
+		      unsigned int size)
+{
+	struct idpf_page_info *page_info;
+	unsigned int headlen, truesize;
+	struct sk_buff *skb;
+	void *va;
+
+	page_info = &rx_buf->page_info[rx_buf->page_indx];
+	va = page_address(page_info->page) + page_info->page_offset;
+
+	/* prefetch first cache line of first page */
+	prefetch(va);
+#if L1_CACHE_BYTES < 128
+	prefetch((u8 *)va + L1_CACHE_BYTES);
+#endif /* L1_CACHE_BYTES */
+	/* allocate a skb to store the frags */
+	skb = __napi_alloc_skb(&rxq->q_vector->napi, IDPF_RX_HDR_SIZE,
+			       GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!skb))
+		return NULL;
+
+	skb_record_rx_queue(skb, rxq->idx);
+
+	/* Determine available headroom for copy */
+	headlen = size;
+	if (headlen > IDPF_RX_HDR_SIZE)
+		headlen = eth_get_headlen(skb->dev, va, IDPF_RX_HDR_SIZE);
+
+	/* align pull length to size of long to optimize memcpy performance */
+	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
+
+	/* if we exhaust the linear part then add what is left as a frag */
+	size -= headlen;
+	if (!size) {
+		/* buffer is unused, reset bias back to rx_buf; data was copied
+		 * onto skb's linear part so there's no need for adjusting
+		 * page offset and we can reuse this buffer as-is
+		 */
+		page_info->pagecnt_bias++;
+		return skb;
+	}
+
+	truesize = idpf_rx_frame_truesize(rx_buf, size);
+	skb_add_rx_frag(skb, 0, page_info->page,
+			page_info->page_offset + headlen, size,
+			truesize);
+	/* buffer is used by skb, update page_offset */
+	idpf_rx_buf_adjust_pg(rx_buf, truesize);
+
+	return skb;
+}
+
+/**
+ * idpf_rx_hdr_construct_skb - Allocate skb and populate it from header buffer
+ * @rxq: Rx descriptor queue
+ * @hdr_buf: Rx buffer to pull data from
+ * @size: the length of the packet
+ *
+ * This function allocates an skb. It then populates it with the page data from
+ * the current receive descriptor, taking care to set up the skb correctly.
+ * This specifcally uses a header buffer to start building the skb.
+ */
+static struct sk_buff *
+idpf_rx_hdr_construct_skb(struct idpf_queue *rxq, struct idpf_dma_mem *hdr_buf,
+			  unsigned int size)
+{
+	struct sk_buff *skb;
+
+	/* allocate a skb to store the frags */
+	skb = __napi_alloc_skb(&rxq->q_vector->napi, IDPF_RX_HDR_SIZE,
+			       GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!skb))
+		return NULL;
+
+	skb_record_rx_queue(skb, rxq->idx);
+
+	memcpy(__skb_put(skb, size), hdr_buf->va, size);
+
+	return skb;
+}
+
+/**
+ * idpf_rx_splitq_test_staterr - tests bits in Rx descriptor
+ * status and error fields
+ * @stat_err_field: field from descriptor to test bits in
+ * @stat_err_bits: value to mask
+ *
+ */
+bool
+idpf_rx_splitq_test_staterr(u8 stat_err_field, const u8 stat_err_bits)
+{
+	return !!(stat_err_field & stat_err_bits);
+}
+
+/**
+ * idpf_rx_splitq_is_eop - process handling of EOP buffers
+ * @rx_desc: Rx descriptor for current buffer
+ *
+ * If the buffer is an EOP buffer, this function exits returning true,
+ * otherwise return false indicating that this is in fact a non-EOP buffer.
+ */
+static bool
+idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+{
+	/* if we are the last buffer then there is nothing else to do */
+	return likely(idpf_rx_splitq_test_staterr(rx_desc->status_err0_qw1,
+						  IDPF_RXD_EOF_SPLITQ));
+}
+
+/**
+ * idpf_rx_splitq_recycle_buf - Attempt to recycle or realloc buffer
+ * @rxbufq: receive queue
+ * @rx_buf: Rx buffer to pull data from
+ *
+ * This function will clean up the contents of the rx_buf. It will either
+ * recycle the buffer or unmap it and free the associated resources. The buffer
+ * will then be placed on a refillq where it will later be reclaimed by the
+ * corresponding bufq.
+ *
+ * This works based on page flipping. If we assume e.g., a 4k page, it will be
+ * divided into two 2k buffers. We post the first half to hardware and, after
+ * using it, flip to second half of the page with idpf_adjust_pg_offset and
+ * post that to hardware. The third time through we'll flip back to first half
+ * of page and check if stack is still using it, if not we can reuse the buffer
+ * as is, otherwise we'll drain it and get a new page.
+ */
+static void idpf_rx_splitq_recycle_buf(struct idpf_queue *rxbufq,
+				       struct idpf_rx_buf *rx_buf)
+{
+	struct idpf_page_info *page_info =
+					&rx_buf->page_info[rx_buf->page_indx];
+
+	if (idpf_rx_can_reuse_page(rx_buf))
+		return;
+
+	/* we are not reusing the buffer so unmap it */
+	dma_unmap_page_attrs(rxbufq->dev, page_info->dma, PAGE_SIZE,
+			     DMA_FROM_DEVICE, IDPF_RX_DMA_ATTR);
+	__page_frag_cache_drain(page_info->page,
+				page_info->pagecnt_bias);
+
+	/* clear contents of buffer_info */
+	page_info->page = NULL;
+	rx_buf->skb = NULL;
+
+	/* It's possible the alloc can fail here but there's not much
+	 * we can do, bufq will have to try and realloc to fill the
+	 * hole.
+	 */
+	idpf_alloc_page(rxbufq, page_info);
+}
+
+/**
+ * idpf_rx_bump_ntc - Bump and wrap q->next_to_clean value
+ * @q: queue to bump
+ */
+void idpf_rx_bump_ntc(struct idpf_queue *q)
+{
+	u16 ntc = q->next_to_clean + 1;
+	/* fetch, update, and store next to clean */
+	if (ntc < q->desc_count) {
+		q->next_to_clean = ntc;
+		return;
+	}
+	q->next_to_clean = 0;
+	change_bit(__IDPF_Q_GEN_CHK, q->flags);
+}
+
+/**
+ * idpf_rx_splitq_clean - Clean completed descriptors from Rx queue
+ * @rxq: Rx descriptor queue to retrieve receive buffer queue
+ * @budget: Total limit on number of packets to process
+ *
+ * This function provides a "bounce buffer" approach to Rx interrupt
+ * processing. The advantage to this is that on systems that have
+ * expensive overhead for IOMMU access this provides a means of avoiding
+ * it by maintaining the mapping of the page to the system.
+ *
+ * Returns amount of work completed
+ */
+static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
+{
+	int total_rx_bytes = 0, total_rx_pkts = 0;
+	struct idpf_queue *rx_bufq = NULL;
+	struct sk_buff *skb = rxq->skb;
+	bool failure = false;
+
+	/* Process Rx packets bounded by budget */
+	while (likely(total_rx_pkts < budget)) {
+		struct virtchnl2_rx_flex_desc_adv_nic_3 *splitq_flex_rx_desc;
+		struct idpf_sw_queue *refillq = NULL;
+		struct idpf_dma_mem *hdr_buf = NULL;
+		struct idpf_rxq_set *rxq_set = NULL;
+		struct idpf_rx_buf *rx_buf = NULL;
+		union virtchnl2_rx_desc *rx_desc;
+		unsigned int pkt_len = 0;
+		unsigned int hdr_len = 0;
+		u16 gen_id, buf_id = 0;
+		 /* Header buffer overflow only valid for header split */
+		bool hbo = false;
+		int bufq_id;
+		u8 rxdid;
+
+		/* get the Rx desc from Rx queue based on 'next_to_clean' */
+		rx_desc = IDPF_RX_DESC(rxq, rxq->next_to_clean);
+		splitq_flex_rx_desc = (struct virtchnl2_rx_flex_desc_adv_nic_3 *)rx_desc;
+
+		/* This memory barrier is needed to keep us from reading
+		 * any other fields out of the rx_desc
+		 */
+		dma_rmb();
+
+		/* if the descriptor isn't done, no work yet to do */
+		gen_id = le16_to_cpu(splitq_flex_rx_desc->pktlen_gen_bufq_id);
+		gen_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M, gen_id);
+
+		if (test_bit(__IDPF_Q_GEN_CHK, rxq->flags) != gen_id)
+			break;
+
+		rxdid = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M,
+				  splitq_flex_rx_desc->rxdid_ucast);
+		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
+			idpf_rx_bump_ntc(rxq);
+			u64_stats_update_begin(&rxq->stats_sync);
+			rxq->q_stats.rx.bad_descs++;
+			u64_stats_update_end(&rxq->stats_sync);
+			continue;
+		}
+
+		pkt_len = le16_to_cpu(splitq_flex_rx_desc->pktlen_gen_bufq_id);
+		pkt_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M,
+				    pkt_len);
+
+		hbo = FIELD_GET(BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_S),
+				splitq_flex_rx_desc->status_err0_qw1);
+
+		if (unlikely(hbo)) {
+			u64_stats_update_begin(&rxq->stats_sync);
+			rxq->q_stats.rx.hsplit_buf_ovf++;
+			u64_stats_update_end(&rxq->stats_sync);
+			goto bypass_hsplit;
+		}
+
+		hdr_len = le16_to_cpu(splitq_flex_rx_desc->hdrlen_flags);
+		hdr_len = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M,
+				    hdr_len);
+
+bypass_hsplit:
+		bufq_id = le16_to_cpu(splitq_flex_rx_desc->pktlen_gen_bufq_id);
+		bufq_id = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M,
+				    bufq_id);
+
+		rxq_set = container_of(rxq, struct idpf_rxq_set, rxq);
+		if (!bufq_id)
+			refillq = rxq_set->refillq0;
+		else
+			refillq = rxq_set->refillq1;
+
+		/* retrieve buffer from the rxq */
+		rx_bufq = &rxq->rxq_grp->splitq.bufq_sets[bufq_id].bufq;
+
+		buf_id = le16_to_cpu(splitq_flex_rx_desc->buf_id);
+
+		if (pkt_len) {
+			rx_buf = &rx_bufq->rx_buf.buf[buf_id];
+			idpf_rx_get_buf_page(rx_bufq->dev, rx_buf, pkt_len);
+		}
+
+		if (hdr_len) {
+			hdr_buf = rx_bufq->rx_buf.hdr_buf[buf_id];
+
+			dma_sync_single_for_cpu(rxq->dev, hdr_buf->pa, hdr_buf->size,
+						DMA_FROM_DEVICE);
+
+			skb = idpf_rx_hdr_construct_skb(rxq, hdr_buf, hdr_len);
+			u64_stats_update_begin(&rxq->stats_sync);
+			rxq->q_stats.rx.hsplit_pkts++;
+			u64_stats_update_end(&rxq->stats_sync);
+		}
+
+		if (pkt_len) {
+			if (skb)
+				idpf_rx_add_frag(rx_buf, skb, pkt_len);
+			else
+				skb = idpf_rx_construct_skb(rxq, rx_buf,
+							    pkt_len);
+		}
+
+		/* exit if we failed to retrieve a buffer */
+		if (!skb) {
+			/* If we fetched a buffer, but didn't use it
+			 * undo pagecnt_bias decrement
+			 */
+			if (rx_buf)
+				rx_buf->page_info[rx_buf->page_indx].pagecnt_bias++;
+			break;
+		}
+
+		if (rx_buf)
+			idpf_rx_splitq_recycle_buf(rx_bufq, rx_buf);
+		idpf_rx_post_buf_refill(refillq, buf_id);
+
+		idpf_rx_bump_ntc(rxq);
+		/* skip if it is non EOP desc */
+		if (!idpf_rx_splitq_is_eop(splitq_flex_rx_desc))
+			continue;
+
+		/* pad skb if needed (to make valid ethernet frame) */
+		if (eth_skb_pad(skb)) {
+			skb = NULL;
+			continue;
+		}
+
+		/* probably a little skewed due to removing CRC */
+		total_rx_bytes += skb->len;
+
+		/* protocol */
+		if (unlikely(idpf_rx_process_skb_fields(rxq, skb,
+							splitq_flex_rx_desc))) {
+			dev_kfree_skb_any(skb);
+			skb = NULL;
+			continue;
+		}
+
+		/* send completed skb up the stack */
+		napi_gro_receive(&rxq->q_vector->napi, skb);
+		skb = NULL;
+
+		/* update budget accounting */
+		total_rx_pkts++;
+	}
+	rxq->skb = skb;
+	u64_stats_update_begin(&rxq->stats_sync);
+	rxq->q_stats.rx.packets += total_rx_pkts;
+	rxq->q_stats.rx.bytes += total_rx_bytes;
+	u64_stats_update_end(&rxq->stats_sync);
+
+	/* guarantee a trip back through this routine if there was a failure */
+	return unlikely(failure) ? budget : total_rx_pkts;
+}
+
+/**
+ * idpf_rx_update_bufq_desc - Update buffer queue descriptor
+ * @bufq: Pointer to the buffer queue
+ * @desc: Refill queue descriptor
+ * @buf_desc: Buffer queue descriptor
+ *
+ * Return 0 on success and negative on failure.
+ */
+static int idpf_rx_update_bufq_desc(struct idpf_queue *bufq, u16 *desc,
+				    struct virtchnl2_splitq_rx_buf_desc *buf_desc)
+{
+	struct idpf_page_info *page_info;
+	struct idpf_dma_mem *hdr_buf;
+	struct idpf_rx_buf *buf;
+	u16 buf_id;
+
+	buf_id = FIELD_GET(IDPF_RX_BI_BUFID_M, *desc);
+
+	buf = &bufq->rx_buf.buf[buf_id];
+	page_info = &buf->page_info[buf->page_indx];
+
+	/* It's possible page alloc failed during rxq clean, try to
+	 * recover here.
+	 */
+	if (unlikely(!page_info->page))
+		if (idpf_alloc_page(bufq, page_info))
+			return -ENOMEM;
+	dma_sync_single_range_for_device(bufq->dev, page_info->dma,
+					 page_info->page_offset,
+					 bufq->rx_buf_size,
+					 DMA_FROM_DEVICE);
+	buf_desc->pkt_addr =
+		cpu_to_le64(page_info->dma + page_info->page_offset);
+	buf_desc->qword0.buf_id = cpu_to_le16(buf_id);
+
+	if (!bufq->rx_hsplit_en)
+		return 0;
+
+	hdr_buf = bufq->rx_buf.hdr_buf[buf_id];
+	buf_desc->hdr_addr = cpu_to_le64(hdr_buf->pa);
+
+	dma_sync_single_for_device(bufq->dev, hdr_buf->pa,
+				   hdr_buf->size, DMA_FROM_DEVICE);
+
+	return 0;
+}
+
+/**
+ * idpf_rx_clean_refillq - Clean refill queue buffers
+ * @bufq: buffer queue to post buffers back to
+ * @refillq: refill queue to clean
+ *
+ * This function takes care of the buffer refill management
+ */
+static void idpf_rx_clean_refillq(struct idpf_queue *bufq,
+				  struct idpf_sw_queue *refillq)
+{
+	struct virtchnl2_splitq_rx_buf_desc *buf_desc;
+	u16 refillq_ntc = refillq->next_to_clean;
+	u16 bufq_nta = bufq->next_to_alloc;
+	bool failure = false;
+	u16 *refill_desc;
+	int cleaned = 0;
+	u16 gen;
+
+	refill_desc = IDPF_SPLITQ_RX_BI_DESC(refillq, refillq_ntc);
+	buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, bufq_nta);
+
+	/* make sure we stop at ring wrap in the unlikely case ring is full */
+	while (likely(cleaned < refillq->desc_count)) {
+		gen = FIELD_GET(IDPF_RX_BI_GEN_M, *refill_desc);
+		if (test_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags) != gen)
+			break;
+
+		failure = idpf_rx_update_bufq_desc(bufq, refill_desc,
+						   buf_desc);
+		if (failure)
+			break;
+
+		refillq_ntc++;
+		refill_desc++;
+		bufq_nta++;
+		buf_desc++;
+		cleaned++;
+
+		if (unlikely(refillq_ntc == refillq->desc_count)) {
+			change_bit(__IDPF_RFLQ_GEN_CHK, refillq->flags);
+			refill_desc = IDPF_SPLITQ_RX_BI_DESC(refillq, 0);
+			refillq_ntc = 0;
+		}
+		if (unlikely(bufq_nta == bufq->desc_count)) {
+			buf_desc = IDPF_SPLITQ_RX_BUF_DESC(bufq, 0);
+			bufq_nta = 0;
+		}
+	}
+
+	if (!cleaned)
+		return;
+
+	/* Do some weird math to figure out how many descriptors have been
+	 * cleaned since last time we updated tail. We want to limit how many
+	 * transactions on the bus we trigger with tail writes so we only do it
+	 * in strides.
+	 *
+	 * The math is funky here because it's a ring queue. If nta > ntu then
+	 * it's easy and number cleaned is just nta - ntu. If we've wrapped
+	 * around the ring though, nta can be less than ntu. In that case
+	 * desc_count + (nta - ntu) should give us the right number (as nta -
+	 * ntu will be negative).
+	 *
+	 * It's also important we align the write to a multiple of 8 as
+	 * required by HW.
+	 */
+	if (((bufq->next_to_use <= bufq_nta ? 0 : bufq->desc_count) +
+	    bufq_nta - bufq->next_to_use) >= IDPF_RX_BUF_POST_STRIDE)
+		idpf_rx_buf_hw_update(bufq, ALIGN_DOWN(bufq_nta,
+						       IDPF_RX_BUF_POST_STRIDE));
+
+	/* update next to alloc since we have filled the ring */
+	refillq->next_to_clean = refillq_ntc;
+	bufq->next_to_alloc = bufq_nta;
+}
+
+/**
+ * idpf_rx_clean_refillq_all - Clean all refill queues
+ * @bufq: buffer queue with refill queues
+ *
+ * Iterates through all refill queues assigned to the buffer queue assigned to
+ * this vector.  Returns true if clean is complete within budget, false
+ * otherwise.
+ */
+static void idpf_rx_clean_refillq_all(struct idpf_queue *bufq)
+{
+	struct idpf_bufq_set *bufq_set;
+	struct idpf_sw_queue *refillq;
+	int i = 0;
+
+	bufq_set = container_of(bufq, struct idpf_bufq_set, bufq);
+	for (i = 0; i < bufq_set->num_refillqs; i++) {
+		refillq = &bufq_set->refillqs[i];
+		idpf_rx_clean_refillq(bufq, refillq);
+	}
+}
+
+/**
+ * idpf_vport_intr_clean_queues - MSIX mode Interrupt Handler
+ * @irq: interrupt number
+ * @data: pointer to a q_vector
+ *
+ */
+irqreturn_t
+idpf_vport_intr_clean_queues(int __always_unused irq, void *data)
+{
+	struct idpf_q_vector *q_vector = (struct idpf_q_vector *)data;
+
+	q_vector->total_events++;
+	napi_schedule(&q_vector->napi);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * idpf_vport_intr_napi_del_all - Unregister napi for all q_vectors in vport
+ * @vport: virtual port structure
+ *
+ */
+static void idpf_vport_intr_napi_del_all(struct idpf_vport *vport)
+{
+	u16 v_idx;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++)
+		netif_napi_del(&vport->q_vectors[v_idx].napi);
+}
+
+/**
+ * idpf_vport_intr_napi_dis_all - Disable NAPI for all q_vectors in the vport
+ * @vport: main vport structure
+ */
+static void idpf_vport_intr_napi_dis_all(struct idpf_vport *vport)
+{
+	int v_idx;
+
+	if (!vport->netdev)
+		return;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++)
+		napi_disable(&vport->q_vectors[v_idx].napi);
+}
+
+/**
+ * idpf_vport_intr_rel - Free memory allocated for interrupt vectors
+ * @vport: virtual port
+ *
+ * Free the memory allocated for interrupt vectors  associated to a vport
+ */
+void idpf_vport_intr_rel(struct idpf_vport *vport)
+{
+	int i, j, v_idx;
+
+	if (!vport->netdev)
+		return;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+
+		kfree(q_vector->bufq);
+		q_vector->bufq = NULL;
+		kfree(q_vector->tx);
+		q_vector->tx = NULL;
+		kfree(q_vector->rx);
+		q_vector->rx = NULL;
+	}
+
+	/* Clean up the mapping of queues to vectors */
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			for (j = 0; j < rx_qgrp->splitq.num_rxq_sets; j++)
+				rx_qgrp->splitq.rxq_sets[j]->rxq.q_vector =
+									   NULL;
+		else
+			for (j = 0; j < rx_qgrp->singleq.num_rxq; j++)
+				rx_qgrp->singleq.rxqs[j]->q_vector = NULL;
+	}
+
+	if (idpf_is_queue_model_split(vport->txq_model))
+		for (i = 0; i < vport->num_txq_grp; i++)
+			vport->txq_grps[i].complq->q_vector = NULL;
+	else
+		for (i = 0; i < vport->num_txq_grp; i++)
+			for (j = 0; j < vport->txq_grps[i].num_txq; j++)
+				vport->txq_grps[i].txqs[j]->q_vector = NULL;
+
+	kfree(vport->q_vectors);
+	vport->q_vectors = NULL;
+}
+
+/**
+ * idpf_vport_intr_rel_irq - Free the IRQ association with the OS
+ * @vport: main vport structure
+ */
+static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int vector;
+
+	for (vector = 0; vector < vport->num_q_vectors; vector++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+		int irq_num, vidx;
+
+		/* free only the irqs that were actually requested */
+		if (!q_vector)
+			continue;
+
+		vidx = vport->q_vector_idxs[vector];
+		irq_num = adapter->msix_entries[vidx].vector;
+
+		/* clear the affinity_mask in the IRQ descriptor */
+		irq_set_affinity_hint(irq_num, NULL);
+		free_irq(irq_num, q_vector);
+	}
+}
+
+/**
+ * idpf_vport_intr_dis_irq_all - Disable each interrupt
+ * @vport: main vport structure
+ */
+void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
+{
+	struct idpf_q_vector *q_vector = vport->q_vectors;
+	int q_idx;
+
+	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
+		writel(0, q_vector[q_idx].intr_reg.dyn_ctl);
+}
+
+/**
+ * idpf_vport_intr_buildreg_itr - Enable default interrupt generation settings
+ * @q_vector: pointer to q_vector
+ * @type: itr index
+ * @itr: itr value
+ */
+static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector,
+					const int type, u16 itr)
+{
+	u32 itr_val;
+
+	itr &= IDPF_ITR_MASK;
+	/* Don't clear PBA because that can cause lost interrupts that
+	 * came in while we were cleaning/polling
+	 */
+	itr_val = q_vector->intr_reg.dyn_ctl_intena_m |
+		  (type << q_vector->intr_reg.dyn_ctl_itridx_s) |
+		  (itr << (q_vector->intr_reg.dyn_ctl_intrvl_s - 1));
+
+	return itr_val;
+}
+
+/**
+ * idpf_net_dim - Update net DIM algorithm
+ * @q_vector: the vector associated with the interrupt
+ *
+ * Create a DIM sample and notify net_dim() so that it can possibly decide
+ * a new ITR value based on incoming packets, bytes, and interrupts.
+ *
+ * This function is a no-op if the queue is not configured to dynamic ITR.
+ */
+static void idpf_net_dim(struct idpf_q_vector *q_vector)
+{
+	struct dim_sample dim_sample = {};
+	u64 packets = 0, bytes = 0;
+	int i;
+
+	if (!IDPF_ITR_IS_DYNAMIC(q_vector->tx_intr_mode))
+		goto check_rx_itr;
+
+	for (i = 0; i < q_vector->num_txq; i++) {
+		packets += q_vector->tx[i]->q_stats.tx.packets;
+		bytes += q_vector->tx[i]->q_stats.tx.bytes;
+	}
+
+	dim_update_sample(q_vector->total_events, packets, bytes,
+			  &dim_sample);
+	net_dim(&q_vector->tx_dim, dim_sample);
+
+check_rx_itr:
+	if (!IDPF_ITR_IS_DYNAMIC(q_vector->rx_intr_mode))
+		return;
+
+	packets = 0;
+	bytes = 0;
+	for (i = 0; i < q_vector->num_rxq; i++) {
+		packets += q_vector->rx[i]->q_stats.rx.packets;
+		bytes += q_vector->rx[i]->q_stats.rx.bytes;
+	}
+
+	dim_update_sample(q_vector->total_events, packets, bytes,
+			  &dim_sample);
+	net_dim(&q_vector->rx_dim, dim_sample);
+}
+
+/**
+ * idpf_vport_intr_update_itr_ena_irq - Update itr and re-enable MSIX interrupt
+ * @q_vector: q_vector for which itr is being updated and interrupt enabled
+ *
+ * Update the net_dim() algorithm and re-enable the interrupt associated with
+ * this vector.
+ */
+void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
+{
+	u32 intval;
+
+	/* net_dim() updates ITR out-of-band using a work item */
+	idpf_net_dim(q_vector);
+
+	intval = idpf_vport_intr_buildreg_itr(q_vector,
+					      IDPF_NO_ITR_UPDATE_IDX, 0);
+
+	writel(intval, q_vector->intr_reg.dyn_ctl);
+}
+
+/**
+ * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
+ * @vport: main vport structure
+ * @basename: name for the vector
+ */
+static int
+idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int vector, err, irq_num, vidx;
+	const char *vec_name;
+
+	for (vector = 0; vector < vport->num_q_vectors; vector++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
+
+		vidx = vport->q_vector_idxs[vector];
+		irq_num = adapter->msix_entries[vidx].vector;
+
+		if (q_vector->num_rxq && q_vector->num_txq)
+			vec_name = "TxRx";
+		else if (q_vector->num_rxq)
+			vec_name = "Rx";
+		else if (q_vector->num_txq)
+			vec_name = "Tx";
+		else
+			vec_name = "None";
+
+		snprintf(q_vector->name, sizeof(q_vector->name) - 1,
+			 "%s-%s-%d", basename, vec_name, vidx);
+
+		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
+				  q_vector->name, q_vector);
+		if (err) {
+			netdev_err(vport->netdev,
+				   "Request_irq failed, error: %d\n", err);
+			goto free_q_irqs;
+		}
+		/* assign the mask for this irq */
+		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
+	}
+
+	return 0;
+
+free_q_irqs:
+	while (vector) {
+		vector--;
+		vidx = vport->q_vector_idxs[vector];
+		irq_num = adapter->msix_entries[vidx].vector;
+		free_irq(irq_num, &vport->q_vectors[vector]);
+	}
+	return err;
+}
+
+/**
+ * idpf_vport_intr_write_itr - Write ITR value to the ITR register
+ * @q_vector: q_vector structure
+ * @itr: Interrupt throttling rate
+ * @tx: Tx or Rx ITR
+ */
+void idpf_vport_intr_write_itr(struct idpf_q_vector *q_vector, u16 itr, bool tx)
+{
+	struct idpf_intr_reg *intr_reg;
+
+	if (tx && !q_vector->tx)
+		return;
+	else if (!tx && !q_vector->rx)
+		return;
+
+	intr_reg = &q_vector->intr_reg;
+	writel(ITR_REG_ALIGN(itr) >> IDPF_ITR_GRAN_S,
+	       tx ? intr_reg->tx_itr : intr_reg->rx_itr);
+}
+
+/**
+ * idpf_vport_intr_ena_irq_all - Enable IRQ for the given vport
+ * @vport: main vport structure
+ */
+void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport)
+{
+	int q_idx;
+
+	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[q_idx];
+
+		/* Write the default ITR values */
+		if (q_vector->num_rxq)
+			idpf_vport_intr_write_itr(q_vector, q_vector->rx_itr_value,
+						  false);
+		if (q_vector->num_txq)
+			idpf_vport_intr_write_itr(q_vector, q_vector->tx_itr_value,
+						  true);
+		if (q_vector->num_rxq || q_vector->num_txq)
+			idpf_vport_intr_update_itr_ena_irq(q_vector);
+	}
+}
+
+/**
+ * idpf_vport_intr_deinit - Release all vector associations for the vport
+ * @vport: main vport structure
+ */
+void idpf_vport_intr_deinit(struct idpf_vport *vport)
+{
+	idpf_vport_intr_napi_dis_all(vport);
+	idpf_vport_intr_napi_del_all(vport);
+	idpf_vport_intr_dis_irq_all(vport);
+	idpf_vport_intr_rel_irq(vport);
+}
+
+/**
+ * idpf_tx_dim_work - Call back from the stack
+ * @work: work queue structure
+ */
+static void idpf_tx_dim_work(struct work_struct *work)
+{
+	struct idpf_q_vector *q_vector;
+	struct idpf_vport *vport;
+	struct dim *dim;
+	u16 itr;
+
+	dim = container_of(work, struct dim, work);
+	q_vector = container_of(dim, struct idpf_q_vector, tx_dim);
+	vport = q_vector->vport;
+
+	if (dim->profile_ix >= ARRAY_SIZE(vport->tx_itr_profile))
+		dim->profile_ix = ARRAY_SIZE(vport->tx_itr_profile) - 1;
+
+	/* look up the values in our local table */
+	itr = vport->tx_itr_profile[dim->profile_ix];
+
+	idpf_vport_intr_write_itr(q_vector, itr, true);
+
+	dim->state = DIM_START_MEASURE;
+}
+
+/**
+ * idpf_rx_dim_work - Call back from the stack
+ * @work: work queue structure
+ */
+static void idpf_rx_dim_work(struct work_struct *work)
+{
+	struct idpf_q_vector *q_vector;
+	struct idpf_vport *vport;
+	struct dim *dim;
+	u16 itr;
+
+	dim = container_of(work, struct dim, work);
+	q_vector = container_of(dim, struct idpf_q_vector, rx_dim);
+	vport = q_vector->vport;
+
+	if (dim->profile_ix >= ARRAY_SIZE(vport->rx_itr_profile))
+		dim->profile_ix = ARRAY_SIZE(vport->rx_itr_profile) - 1;
+
+	/* look up the values in our local table */
+	itr = vport->rx_itr_profile[dim->profile_ix];
+
+	idpf_vport_intr_write_itr(q_vector, itr, false);
+
+	dim->state = DIM_START_MEASURE;
+}
+
+/**
+ * idpf_vport_intr_napi_ena_all - Enable NAPI for all q_vectors in the vport
+ * @vport: main vport structure
+ */
+static void
+idpf_vport_intr_napi_ena_all(struct idpf_vport *vport)
+{
+	int q_idx;
+
+	if (!vport->netdev)
+		return;
+
+	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[q_idx];
+
+		INIT_WORK(&q_vector->tx_dim.work, idpf_tx_dim_work);
+		q_vector->tx_dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+
+		INIT_WORK(&q_vector->rx_dim.work, idpf_rx_dim_work);
+		q_vector->rx_dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+
+		napi_enable(&q_vector->napi);
+	}
+}
+
+/**
+ * idpf_tx_splitq_clean_all- Clean completetion queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool
+idpf_tx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget, int *cleaned)
+{
+	int num_txq = q_vec->num_txq;
+	bool clean_complete = true;
+	int i, budget_per_q;
+
+	budget_per_q = num_txq ?  max(budget / num_txq, 1) : 0;
+	for (i = 0; i < num_txq; i++)
+		if (!idpf_tx_clean_complq(q_vec->tx[i], budget_per_q, cleaned))
+			clean_complete = false;
+	return clean_complete;
+}
+
+/**
+ * idpf_rx_splitq_clean_all- Clean completetion queues
+ * @q_vec: queue vector
+ * @budget: Used to determine if we are in netpoll
+ * @cleaned: returns number of packets cleaned
+ *
+ * Returns false if clean is not complete else returns true
+ */
+static bool
+idpf_rx_splitq_clean_all(struct idpf_q_vector *q_vec, int budget,
+			 int *cleaned)
+{
+	int pkts_cleaned_per_q, pkts_cleaned = 0;
+	int num_rxq = q_vec->num_rxq;
+	bool clean_complete = true;
+	int i, budget_per_q;
+
+	/* We attempt to distribute budget to each Rx queue fairly, but don't
+	 * allow the budget to go below 1 because that would exit polling early.
+	 */
+	budget_per_q = num_rxq ? max(budget / num_rxq, 1) : 0;
+	for (i = 0; i < num_rxq; i++) {
+		struct idpf_queue *rxq = q_vec->rx[i];
+
+		pkts_cleaned_per_q = idpf_rx_splitq_clean(rxq, budget_per_q);
+		/* if we clean as many as budgeted, we must not
+		 * be done
+		 */
+		if (pkts_cleaned_per_q >= budget_per_q)
+			clean_complete = false;
+		pkts_cleaned += pkts_cleaned_per_q;
+	}
+	*cleaned = pkts_cleaned;
+
+	for (i = 0; i < q_vec->num_bufq; i++)
+		idpf_rx_clean_refillq_all(q_vec->bufq[i]);
+
+	return clean_complete;
+}
+
+/**
+ * idpf_vport_splitq_napi_poll - NAPI handler
+ * @napi: struct from which you get q_vector
+ * @budget: budget provided by stack
+ */
+static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
+{
+	struct idpf_q_vector *q_vector =
+				container_of(napi, struct idpf_q_vector, napi);
+	bool clean_complete;
+	int work_done = 0;
+
+	/* Handle case where we are called by netpoll with a budget of 0 */
+	if (budget <= 0) {
+		idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
+		return budget;
+	}
+
+	clean_complete = idpf_rx_splitq_clean_all(q_vector, budget, &work_done);
+	clean_complete &= idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
+
+	/* If work not completed, return budget and polling will return */
+	if (!clean_complete)
+		return budget;
+
+	work_done = min_t(int, work_done, budget - 1);
+
+	/* Exit the polling mode, but don't re-enable interrupts if stack might
+	 * poll us due to busy-polling
+	 */
+	if (likely(napi_complete_done(napi, work_done)))
+		idpf_vport_intr_update_itr_ena_irq(q_vector);
+
+	/* Switch to poll mode in the tear-down path after sending disable queues
+	 * virtchnl message, as the interrupts will be disabled after that
+	 */
+	if (unlikely(q_vector->num_txq && test_bit(__IDPF_Q_POLL_MODE,
+						   q_vector->tx[0]->flags)))
+		return budget;
+	else
+		return work_done;
+}
+
+/**
+ * idpf_vport_intr_map_vector_to_qs - Map vectors to queues
+ * @vport: virtual port
+ *
+ * Mapping for vectors to queues
+ */
+static void idpf_vport_intr_map_vector_to_qs(struct idpf_vport *vport)
+{
+	int num_txq_grp = vport->num_txq_grp, bufq_vidx = 0;
+	int i, j, qv_idx = 0, num_rxq, num_txq, q_index;
+	struct idpf_rxq_group *rx_qgrp;
+	struct idpf_txq_group *tx_qgrp;
+	struct idpf_queue *q, *bufq;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		rx_qgrp = &vport->rxq_grps[i];
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++) {
+			if (qv_idx >= vport->num_q_vectors)
+				qv_idx = 0;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				q = rx_qgrp->singleq.rxqs[j];
+			q->q_vector = &vport->q_vectors[qv_idx];
+			q_index = q->q_vector->num_rxq;
+			q->q_vector->rx[q_index] = q;
+			q->q_vector->num_rxq++;
+			qv_idx++;
+		}
+
+		if (idpf_is_queue_model_split(vport->rxq_model)) {
+			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+				bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
+				bufq->q_vector = &vport->q_vectors[bufq_vidx];
+				q_index = bufq->q_vector->num_bufq;
+				bufq->q_vector->bufq[q_index] = bufq;
+				bufq->q_vector->num_bufq++;
+			}
+			if (++bufq_vidx >= vport->num_q_vectors)
+				bufq_vidx = 0;
+		}
+	}
+	qv_idx = 0;
+	for (i = 0; i < num_txq_grp; i++) {
+		tx_qgrp = &vport->txq_grps[i];
+		num_txq = tx_qgrp->num_txq;
+
+		if (idpf_is_queue_model_split(vport->txq_model)) {
+			if (qv_idx >= vport->num_q_vectors)
+				qv_idx = 0;
+
+			q = tx_qgrp->complq;
+			q->q_vector = &vport->q_vectors[qv_idx];
+			q_index = q->q_vector->num_txq;
+			q->q_vector->tx[q_index] = q;
+			q->q_vector->num_txq++;
+			qv_idx++;
+		} else {
+			for (j = 0; j < num_txq; j++) {
+				if (qv_idx >= vport->num_q_vectors)
+					qv_idx = 0;
+
+				q = tx_qgrp->txqs[j];
+				q->q_vector = &vport->q_vectors[qv_idx];
+				q_index = q->q_vector->num_txq;
+				q->q_vector->tx[q_index] = q;
+				q->q_vector->num_txq++;
+
+				qv_idx++;
+			}
+		}
+	}
+}
+
+/**
+ * idpf_vport_intr_init_vec_idx - Initialize the vector indexes
+ * @vport: virtual port
+ *
+ * Initialize vector indexes with values returened over mailbox
+ */
+static int idpf_vport_intr_init_vec_idx(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vector_chunks *vchunks;
+	struct virtchnl2_alloc_vectors *ac;
+	struct idpf_q_vector *q_vector;
+	u16 *vecids, total_vecs;
+	int i;
+
+	ac = adapter->req_vec_chunks;
+	if (!ac) {
+		for (i = 0; i < vport->num_q_vectors; i++) {
+			q_vector = &vport->q_vectors[i];
+			q_vector->v_idx = vport->q_vector_idxs[i];
+		}
+		return 0;
+	}
+
+	vchunks = &ac->vchunks;
+	total_vecs = idpf_get_reserved_vecs(adapter);
+	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
+	if (!vecids)
+		return -ENOMEM;
+
+	idpf_get_vec_ids(adapter, vecids, total_vecs, vchunks);
+
+	for (i = 0; i < vport->num_q_vectors; i++) {
+		q_vector = &vport->q_vectors[i];
+		q_vector->v_idx = vecids[vport->q_vector_idxs[i]];
+	}
+	kfree(vecids);
+
+	return 0;
+}
+
+/**
+ * idpf_vport_intr_napi_add_all- Register napi handler for all qvectors
+ * @vport: virtual port structure
+ */
+static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport)
+{
+	int (*napi_poll)(struct napi_struct *napi, int budget);
+	u16 v_idx;
+
+	if (idpf_is_queue_model_split(vport->txq_model))
+		napi_poll = idpf_vport_splitq_napi_poll;
+	else
+		napi_poll = idpf_vport_singleq_napi_poll;
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[v_idx];
+
+		netif_napi_add(vport->netdev, &q_vector->napi, napi_poll);
+
+		/* only set affinity_mask if the CPU is online */
+		if (cpu_online(v_idx))
+			cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
+	}
+}
+
+/**
+ * idpf_vport_intr_alloc - Allocate memory for interrupt vectors
+ * @vport: virtual port
+ *
+ * We allocate one q_vector per queue interrupt. If allocation fails we
+ * return -ENOMEM.
+ */
+int idpf_vport_intr_alloc(struct idpf_vport *vport)
+{
+	int txqs_per_vector, rxqs_per_vector, bufqs_per_vector;
+	struct idpf_q_vector *q_vector;
+	int v_idx, err = 0;
+
+	if (vport->num_q_vectors == 0) {
+		netdev_err(vport->netdev, "No free Queue vector");
+		return -ENOMEM;
+	}
+
+	vport->q_vectors = kcalloc(vport->num_q_vectors,
+				   sizeof(struct idpf_q_vector), GFP_KERNEL);
+
+	if (!vport->q_vectors)
+		return -ENOMEM;
+	txqs_per_vector = DIV_ROUND_UP(vport->num_txq, vport->num_q_vectors);
+	rxqs_per_vector = DIV_ROUND_UP(vport->num_rxq, vport->num_q_vectors);
+	bufqs_per_vector = vport->num_bufqs_per_qgrp *
+			   DIV_ROUND_UP(vport->num_rxq_grp, vport->num_q_vectors);
+
+	for (v_idx = 0; v_idx < vport->num_q_vectors; v_idx++) {
+		q_vector = &vport->q_vectors[v_idx];
+		q_vector->vport = vport;
+
+		q_vector->tx_itr_value = IDPF_ITR_TX_DEF;
+		q_vector->tx_intr_mode = IDPF_ITR_DYNAMIC;
+		q_vector->tx_itr_idx = VIRTCHNL2_ITR_IDX_1;
+
+		q_vector->rx_itr_value = IDPF_ITR_RX_DEF;
+		q_vector->rx_intr_mode = IDPF_ITR_DYNAMIC;
+		q_vector->rx_itr_idx = VIRTCHNL2_ITR_IDX_0;
+
+		q_vector->tx = kcalloc(txqs_per_vector,
+				       sizeof(struct idpf_queue *),
+				       GFP_KERNEL);
+		if (!q_vector->tx) {
+			err = -ENOMEM;
+			goto error;
+		}
+
+		q_vector->rx = kcalloc(rxqs_per_vector,
+				       sizeof(struct idpf_queue *),
+				       GFP_KERNEL);
+		if (!q_vector->rx) {
+			err = -ENOMEM;
+			goto error;
+		}
+
+		if (!idpf_is_queue_model_split(vport->rxq_model))
+			continue;
+		q_vector->bufq = kcalloc(bufqs_per_vector,
+					 sizeof(struct idpf_queue *),
+					 GFP_KERNEL);
+		if (!q_vector->bufq) {
+			err = -ENOMEM;
+			goto error;
+		}
+	}
+
+	return 0;
+
+error:
+	idpf_vport_intr_rel(vport);
+	return err;
+}
+
+/**
+ * idpf_vport_intr_init - Setup all vectors for the given vport
+ * @vport: virtual port
+ *
+ * Returns 0 on success or negative on failure
+ */
+int idpf_vport_intr_init(struct idpf_vport *vport)
+{
+	char int_name[IDPF_INT_NAME_STR_LEN];
+	int err = 0;
+
+	err = idpf_vport_intr_init_vec_idx(vport);
+	if (err)
+		goto handle_err;
+
+	idpf_vport_intr_map_vector_to_qs(vport);
+	idpf_vport_intr_napi_add_all(vport);
+	idpf_vport_intr_napi_ena_all(vport);
+
+	err = vport->adapter->dev_ops.reg_ops.intr_reg_init(vport);
+	if (err)
+		goto unroll_vectors_alloc;
+
+	snprintf(int_name, sizeof(int_name) - 1, "%s-%s",
+		 dev_driver_string(&vport->adapter->pdev->dev),
+		 vport->netdev->name);
+
+	err = idpf_vport_intr_req_irq(vport, int_name);
+	if (err)
+		goto unroll_vectors_alloc;
+
+	idpf_vport_intr_ena_irq_all(vport);
+	goto handle_err;
+unroll_vectors_alloc:
+	idpf_vport_intr_napi_dis_all(vport);
+	idpf_vport_intr_napi_del_all(vport);
+handle_err:
+	return err;
+}
+
+/**
+ * idpf_config_rss - Prepare for RSS
+ * @vport: virtual port
+ *
+ * Return 0 on success, negative on failure
+ */
+int idpf_config_rss(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_send_get_set_rss_key_msg(vport, false);
+	if (err)
+		return err;
+
+	return idpf_send_get_set_rss_lut_msg(vport, false);
+}
+
+/**
+ * idpf_fill_dflt_rss_lut - Fill the indirection table with the default values
+ * @vport: virtual port structure
+ */
+void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
+{
+	u16 num_active_rxq = vport->num_rxq;
+	struct idpf_rss_data *rss_data;
+	int i;
+
+	rss_data =
+		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
+
+	for (i = 0; i < rss_data->rss_lut_size; i++) {
+		rss_data->rss_lut[i] = i % num_active_rxq;
+		rss_data->cached_lut[i] = rss_data->rss_lut[i];
+	}
+}
+
+/**
+ * idpf_init_rss - Prepare for RSS
+ * @vport: virtual port
+ *
+ * Return 0 on success, negative on failure
+ */
+int idpf_init_rss(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_rss_data *rss_data;
+	u32 lut_size, dflt_qid;
+	int i;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+
+	lut_size = rss_data->rss_lut_size * sizeof(u32);
+	rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
+	if (!rss_data->rss_lut)
+		return -ENOMEM;
+
+	rss_data->cached_lut = kzalloc(lut_size, GFP_KERNEL);
+	if (!rss_data->cached_lut) {
+		kfree(rss_data->rss_lut);
+		rss_data->rss_lut = NULL;
+		return -ENOMEM;
+	}
+
+	if (!(rss_data->rss_lut_size % vport->num_rxq))
+		goto fill_dflt;
+
+	/* Set all entries to a default RX queue if the algorithm below
+	 * won't fill all entries
+	 */
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		dflt_qid = vport->rxq_grps[0].splitq.rxq_sets[0]->rxq.q_id;
+	else
+		dflt_qid = vport->rxq_grps[0].singleq.rxqs[0]->q_id;
+
+	for (i = 0; i < rss_data->rss_lut_size; i++)
+		rss_data->rss_lut[i] = dflt_qid;
+
+fill_dflt:
+	/* Fill the default RSS lut values*/
+	idpf_fill_dflt_rss_lut(vport);
+
+	return idpf_config_rss(vport);
+}
+
+/**
+ * idpf_deinit_rss - Prepare for RSS
+ * @vport: virtual port
+ *
+ */
+void idpf_deinit_rss(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_rss_data *rss_data;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	kfree(rss_data->cached_lut);
+	rss_data->cached_lut = NULL;
+	kfree(rss_data->rss_lut);
+	rss_data->rss_lut = NULL;
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
new file mode 100644
index 000000000000..b54a11ec48b4
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -0,0 +1,852 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2022 Intel Corporation */
+
+#ifndef _IDPF_TXRX_H_
+#define _IDPF_TXRX_H_
+
+#include <linux/avf/virtchnl2_lan_desc.h>
+#include <linux/indirect_call_wrapper.h>
+
+#define IDPF_LARGE_MAX_Q			256
+#define IDPF_MAX_Q				16
+#define IDPF_MIN_Q				2
+/* Mailbox Queue */
+#define IDPF_MAX_NONQ				1
+
+#define IDPF_MAX_DYNAMIC_VPORT			450
+#define IDPF_MIN_TXQ_DESC			64
+#define IDPF_MIN_RXQ_DESC			64
+#define IDPF_MIN_TXQ_COMPLQ_DESC		256
+/* Number of descriptors in a queue should be a multiple of 32. RX queue
+ * descriptors alone should be a multiple of (IDPF_MAX_BUFQS_PER_RXQ_GRP * 32)
+ * to achieve BufQ descriptors aligned to 32
+ */
+#define IDPF_REQ_DESC_MULTIPLE			32
+#define IDPF_REQ_RXQ_DESC_MULTIPLE (IDPF_MAX_BUFQS_PER_RXQ_GRP * 32)
+#define IDPF_MIN_TX_DESC_NEEDED (MAX_SKB_FRAGS + 6)
+#define IDPF_TX_WAKE_THRESH ((s16)IDPF_MIN_TX_DESC_NEEDED * 2)
+
+#define IDPF_MAX_DESCS				8160
+#define IDPF_MAX_TXQ_DESC ALIGN_DOWN(IDPF_MAX_DESCS, IDPF_REQ_DESC_MULTIPLE)
+#define IDPF_MAX_RXQ_DESC ALIGN_DOWN(IDPF_MAX_DESCS, IDPF_REQ_RXQ_DESC_MULTIPLE)
+
+#define IDPF_DFLT_SINGLEQ_TX_Q_GROUPS		1
+#define IDPF_DFLT_SINGLEQ_RX_Q_GROUPS		1
+#define IDPF_DFLT_SINGLEQ_TXQ_PER_GROUP		4
+#define IDPF_DFLT_SINGLEQ_RXQ_PER_GROUP		4
+
+#define IDPF_COMPLQ_PER_GROUP			1
+#define IDPF_SINGLE_BUFQ_PER_RXQ_GRP		1
+#define IDPF_MAX_BUFQS_PER_RXQ_GRP		2
+#define IDPF_BUFQ2_ENA				1
+
+#define IDPF_DFLT_SPLITQ_TXQ_PER_GROUP         1
+#define IDPF_DFLT_SPLITQ_RXQ_PER_GROUP         1
+
+/* Default vector sharing */
+#define IDPF_MBX_Q_VEC		1
+#define IDPF_MAX_Q_VEC		4 /* For Tx Completion queue and Rx queue */
+#define IDPF_MIN_Q_VEC		1
+#define IDPF_MAX_RDMA_VEC	2 /* To share with RDMA */
+#define IDPF_MIN_RDMA_VEC	1 /* Minimum vectors to be shared with RDMA */
+
+#define IDPF_DFLT_TX_Q_DESC_COUNT		512
+#define IDPF_DFLT_TX_COMPLQ_DESC_COUNT		512
+#define IDPF_DFLT_RX_Q_DESC_COUNT		512
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
+#define IDPF_RX_BUFQ_WORKING_SET(R)		((R)->desc_count - 1)
+#define IDPF_RX_BUFQ_NON_WORKING_SET(R)		((R)->desc_count - \
+						 IDPF_RX_BUFQ_WORKING_SET(R))
+
+#define IDPF_RX_HDR_SIZE			256
+#define IDPF_RX_BUF_2048			2048
+#define IDPF_RX_BUF_4096			4096
+#define IDPF_RX_BUF_STRIDE			32
+#define IDPF_RX_BUF_POST_STRIDE			16
+#define IDPF_LOW_WATERMARK			64
+#define IDPF_HDR_BUF_SIZE			256
+#define IDPF_PACKET_HDR_PAD	\
+	(ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
+#define IDPF_MAX_RXBUFFER			9728
+#define IDPF_MAX_MTU		\
+	(IDPF_MAX_RXBUFFER - IDPF_PACKET_HDR_PAD)
+#define IDPF_TX_TSO_MIN_MSS		88
+
+/* Minimum number of descriptors between 2 descriptors with the RE bit set;
+ * only relevant in flow scheduling mode
+ */
+#define IDPF_TX_SPLITQ_RE_MIN_GAP	64
+
+#define IDPF_RX_BI_BUFID_S		0
+#define IDPF_RX_BI_BUFID_M		GENMASK(14, 0)
+#define IDPF_RX_BI_GEN_S		15
+#define IDPF_RX_BI_GEN_M		BIT(IDPF_RX_BI_GEN_S)
+#define IDPF_RXD_EOF_SPLITQ		BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_S)
+#define IDPF_RXD_EOF_SINGLEQ		BIT(VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_S)
+
+#define IDPF_SINGLEQ_RX_BUF_DESC(R, i)	\
+	(&(((struct virtchnl2_singleq_rx_buf_desc *)((R)->desc_ring))[i]))
+#define IDPF_SPLITQ_RX_BUF_DESC(R, i)	\
+	(&(((struct virtchnl2_splitq_rx_buf_desc *)((R)->desc_ring))[i]))
+#define IDPF_SPLITQ_RX_BI_DESC(R, i)	\
+	(&(((u16 *)((R)->ring))[i]))
+
+#define IDPF_BASE_TX_DESC(R, i)	\
+	(&(((struct idpf_base_tx_desc *)((R)->desc_ring))[i]))
+#define IDPF_BASE_TX_CTX_DESC(R, i) \
+	(&(((struct idpf_base_tx_ctx_desc *)((R)->desc_ring))[i]))
+#define IDPF_SPLITQ_TX_COMPLQ_DESC(R, i)	\
+	(&(((struct idpf_splitq_tx_compl_desc *)((R)->desc_ring))[i]))
+
+#define IDPF_FLEX_TX_DESC(R, i)	\
+	(&(((union idpf_tx_flex_desc *)((R)->desc_ring))[i]))
+#define IDPF_FLEX_TX_CTX_DESC(R, i)	\
+	(&(((union idpf_flex_tx_ctx_desc *)((R)->desc_ring))[i]))
+
+#define IDPF_DESC_UNUSED(R)	\
+	((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->desc_count) + \
+	(R)->next_to_clean - (R)->next_to_use - 1)
+
+#define IDPF_TX_BUF_UNUSED(R)	((R)->buf_stack.top)
+
+/* The TX completion queue needs to maintain a cache line sized free space
+ * to avoid potentially overwriting a cache line that hasn't been read by
+ * SW yet. In this case, that is 16 entries.
+ */
+#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(R)	((R)->desc_count >> 1)
+#define IDPF_TX_COMPLQ_PENDING(R)	\
+	(((R)->num_completions_pending >= (R)->complq->num_completions ? \
+	0 : U64_MAX) + \
+	(R)->num_completions_pending - (R)->complq->num_completions)
+
+#define IDPF_TX_SPLITQ_COMPL_TAG_WIDTH	16
+#define IDPF_TX_ADJ_COMPL_TAG_GEN(R) \
+	((++(R)->compl_tag_cur_gen) >= (R)->compl_tag_gen_max ? \
+	0 : (R)->compl_tag_cur_gen)
+
+#define IDPF_TXD_LAST_DESC_CMD (IDPF_TX_DESC_CMD_EOP | IDPF_TX_DESC_CMD_RS)
+
+union idpf_tx_flex_desc {
+	struct idpf_flex_tx_desc q; /* queue based scheduling */
+	struct idpf_flex_tx_sched_desc flow; /* flow based scheduling */
+};
+
+struct idpf_tx_buf {
+	void *next_to_watch;
+	union {
+		struct sk_buff *skb;
+		struct xdp_frame *xdpf;
+	};
+	unsigned int bytecount;
+	unsigned short gso_segs;
+	DEFINE_DMA_UNMAP_ADDR(dma);
+	DEFINE_DMA_UNMAP_LEN(len);
+
+	union {
+		/* Splitq only: Unique identifier for a buffer; used to compare
+		 * with completion tag returned in buffer completion event.
+		 * Because the completion tag is expected to be the same in all
+		 * data descriptors for a given packet, and a single packet can
+		 * span multiple buffers, we need this field to track all
+		 * buffers associated with this completion tag independently of
+		 * the buf_id. The tag consists of a N bit buf_id and M upper
+		 * order "generation bits". See compl_tag_bufid_m and
+		 * compl_tag_gen_s in struct idpf_queue.
+		 */
+		u16 compl_tag;
+
+		/* Legacy queue only: used to indicate the corresponding entry
+		 * in the descriptor ring was used for a context descriptor and
+		 * this buffer entry should be skipped.
+		 */
+		bool ctx_entry;
+	};
+
+};
+
+struct idpf_tx_stash {
+	struct hlist_node hlist;
+	struct timer_list reinject_timer;
+	struct idpf_tx_buf buf;
+	struct idpf_queue *txq;
+	/* Keep track of whether this packet was sent on the exception path
+	 * either because the driver received a miss completion and is waiting
+	 * on a reinject completion or because the driver received a reinject
+	 * completion and is waiting on a follow up completion.
+	 */
+	bool miss_pkt;
+};
+
+struct idpf_buf_lifo {
+	u16 top;
+	u16 size;
+	struct idpf_tx_stash **bufs;
+};
+
+struct idpf_tx_offload_params {
+	u16 td_cmd;	/* command field to be inserted into descriptor */
+
+#define IDPF_TX_FLAGS_TSO			BIT(0)
+#define IDPF_TX_FLAGS_IPV4			BIT(1)
+#define IDPF_TX_FLAGS_IPV6			BIT(2)
+#define IDPF_TX_FLAGS_TUNNEL			BIT(3)
+	u32 tx_flags;
+
+	u32 tso_len;	/* total length of payload to segment */
+	u16 mss;
+	u8 tso_hdr_len;	/* length of headers to be duplicated */
+	u16 tso_segs;   /* Number of segments to be sent */
+
+	/* Flow scheduling offload timestamp, formatting as hw expects it */
+	/* timestamp = bits[0:22], overflow = bit[23] */
+	u8 desc_ts[3];
+
+	/* For legacy offloads */
+	u32 hdr_offsets;
+	u32 cd_tunneling;
+};
+
+struct idpf_tx_splitq_params {
+	/* Descriptor build function pointer */
+	void (*splitq_build_ctb)(union idpf_tx_flex_desc *desc,
+				 struct idpf_tx_splitq_params *params,
+				 u16 td_cmd, u16 size);
+
+	/* General descriptor info */
+	enum idpf_tx_desc_dtype_value dtype;
+	u16 eop_cmd;
+	union {
+		u16 compl_tag; /* only relevant for flow scheduling */
+		u16 td_tag; /* only relevant for queue scheduling */
+	};
+
+	struct idpf_tx_offload_params offload;
+};
+
+enum idpf_tx_ctx_desc_eipt_offload {
+	IDPF_TX_CTX_EXT_IP_NONE         = 0x0,
+	IDPF_TX_CTX_EXT_IP_IPV6         = 0x1,
+	IDPF_TX_CTX_EXT_IP_IPV4_NO_CSUM = 0x2,
+	IDPF_TX_CTX_EXT_IP_IPV4         = 0x3
+};
+
+/* Checksum offload bits decoded from the receive descriptor. */
+struct idpf_rx_csum_decoded {
+	u8 l3l4p : 1;
+	u8 ipe : 1;
+	u8 eipe : 1;
+	u8 eudpe : 1;
+	u8 ipv6exadd : 1;
+	u8 l4e : 1;
+	u8 pprs : 1;
+	u8 nat : 1;
+	u8 rsc : 1;
+	u8 raw_csum_inv : 1;
+	u16 raw_csum;
+};
+
+struct idpf_rx_extracted {
+	unsigned int size;
+	u16 rx_ptype;
+};
+
+#define IDPF_TX_COMPLQ_CLEAN_BUDGET	256
+#define IDPF_TX_MIN_LEN			17
+#define IDPF_TX_DESCS_FOR_SKB_DATA_PTR	1
+#define IDPF_TX_MAX_BUF			8
+#define IDPF_TX_DESCS_PER_CACHE_LINE	4
+#define IDPF_TX_DESCS_FOR_CTX		1
+/* TX descriptors needed, worst case */
+#define IDPF_TX_DESC_NEEDED (MAX_SKB_FRAGS + IDPF_TX_DESCS_FOR_CTX + \
+			     IDPF_TX_DESCS_PER_CACHE_LINE + \
+			     IDPF_TX_DESCS_FOR_SKB_DATA_PTR)
+
+/* The size limit for a transmit buffer in a descriptor is (16K - 1).
+ * In order to align with the read requests we will align the value to
+ * the nearest 4K which represents our maximum read request size.
+ */
+#define IDPF_TX_MAX_READ_REQ_SIZE	SZ_4K
+#define IDPF_TX_MAX_DESC_DATA		(SZ_16K - 1)
+#define IDPF_TX_MAX_DESC_DATA_ALIGNED \
+	ALIGN_DOWN(IDPF_TX_MAX_DESC_DATA, IDPF_TX_MAX_READ_REQ_SIZE)
+
+#define IDPF_RX_DMA_ATTR \
+	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
+#define IDPF_RX_DESC(R, i)	\
+	(&(((union virtchnl2_rx_desc *)((R)->desc_ring))[i]))
+
+struct idpf_page_info {
+	dma_addr_t dma;
+	struct page *page;
+	unsigned int page_offset;
+	u16 pagecnt_bias;
+};
+
+struct idpf_rx_hdr_buf_pages {
+	u32 nr_pages;
+	struct idpf_page_info *pages;
+};
+
+struct idpf_rx_buf {
+#define IDPF_RX_BUF_MAX_PAGES 2
+	struct idpf_page_info page_info[IDPF_RX_BUF_MAX_PAGES];
+	u8 page_indx;
+	u16 buf_size;
+	struct sk_buff *skb;
+};
+
+#define IDPF_GET_PTYPE_SIZE(p) \
+	(sizeof(struct virtchnl2_ptype) + \
+	(((p)->proto_id_count ? ((p)->proto_id_count - 1) : 0) * sizeof(u16)))
+
+#define IDPF_TUN_IP_GRE (\
+	IDPF_PTYPE_TUNNEL_IP |\
+	IDPF_PTYPE_TUNNEL_IP_GRENAT)
+
+#define IDPF_TUN_IP_GRE_MAC (\
+	IDPF_TUN_IP_GRE |\
+	IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC)
+
+#define IDPF_RX_MAX_PTYPE	1024
+#define IDPF_RX_MAX_BASE_PTYPE	256
+#define IDPF_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
+
+/* Packet type non-ip values */
+enum idpf_rx_ptype_l2 {
+	IDPF_RX_PTYPE_L2_RESERVED	= 0,
+	IDPF_RX_PTYPE_L2_MAC_PAY2	= 1,
+	IDPF_RX_PTYPE_L2_TIMESYNC_PAY2	= 2,
+	IDPF_RX_PTYPE_L2_FIP_PAY2	= 3,
+	IDPF_RX_PTYPE_L2_OUI_PAY2	= 4,
+	IDPF_RX_PTYPE_L2_MACCNTRL_PAY2	= 5,
+	IDPF_RX_PTYPE_L2_LLDP_PAY2	= 6,
+	IDPF_RX_PTYPE_L2_ECP_PAY2	= 7,
+	IDPF_RX_PTYPE_L2_EVB_PAY2	= 8,
+	IDPF_RX_PTYPE_L2_QCN_PAY2	= 9,
+	IDPF_RX_PTYPE_L2_EAPOL_PAY2	= 10,
+	IDPF_RX_PTYPE_L2_ARP		= 11,
+};
+
+enum idpf_rx_ptype_outer_ip {
+	IDPF_RX_PTYPE_OUTER_L2	= 0,
+	IDPF_RX_PTYPE_OUTER_IP	= 1,
+};
+
+enum idpf_rx_ptype_outer_ip_ver {
+	IDPF_RX_PTYPE_OUTER_NONE	= 0,
+	IDPF_RX_PTYPE_OUTER_IPV4	= 1,
+	IDPF_RX_PTYPE_OUTER_IPV6	= 2,
+};
+
+enum idpf_rx_ptype_outer_fragmented {
+	IDPF_RX_PTYPE_NOT_FRAG	= 0,
+	IDPF_RX_PTYPE_FRAG	= 1,
+};
+
+enum idpf_rx_ptype_tunnel_type {
+	IDPF_RX_PTYPE_TUNNEL_NONE		= 0,
+	IDPF_RX_PTYPE_TUNNEL_IP_IP		= 1,
+	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT		= 2,
+	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC	= 3,
+	IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC_VLAN	= 4,
+};
+
+enum idpf_rx_ptype_tunnel_end_prot {
+	IDPF_RX_PTYPE_TUNNEL_END_NONE	= 0,
+	IDPF_RX_PTYPE_TUNNEL_END_IPV4	= 1,
+	IDPF_RX_PTYPE_TUNNEL_END_IPV6	= 2,
+};
+
+enum idpf_rx_ptype_inner_prot {
+	IDPF_RX_PTYPE_INNER_PROT_NONE		= 0,
+	IDPF_RX_PTYPE_INNER_PROT_UDP		= 1,
+	IDPF_RX_PTYPE_INNER_PROT_TCP		= 2,
+	IDPF_RX_PTYPE_INNER_PROT_SCTP		= 3,
+	IDPF_RX_PTYPE_INNER_PROT_ICMP		= 4,
+	IDPF_RX_PTYPE_INNER_PROT_TIMESYNC	= 5,
+};
+
+enum idpf_rx_ptype_payload_layer {
+	IDPF_RX_PTYPE_PAYLOAD_LAYER_NONE	= 0,
+	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2	= 1,
+	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY3	= 2,
+	IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY4	= 3,
+};
+
+enum idpf_tunnel_state {
+	IDPF_PTYPE_TUNNEL_IP                    = BIT(0),
+	IDPF_PTYPE_TUNNEL_IP_GRENAT             = BIT(1),
+	IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC         = BIT(2),
+};
+
+struct idpf_ptype_state {
+	bool outer_ip;
+	bool outer_frag;
+	u8 tunnel_state;
+};
+
+struct idpf_rx_ptype_decoded {
+	u32 ptype:10;
+	u32 known:1;
+	u32 outer_ip:1;
+	u32 outer_ip_ver:2;
+	u32 outer_frag:1;
+	u32 tunnel_type:3;
+	u32 tunnel_end_prot:2;
+	u32 tunnel_end_frag:1;
+	u32 inner_prot:4;
+	u32 payload_layer:3;
+};
+
+enum idpf_rx_hsplit {
+	IDPF_RX_NO_HDR_SPLIT = 0,
+	IDPF_RX_HDR_SPLIT = 1,
+};
+
+enum idpf_queue_flags_t {
+	__IDPF_Q_GEN_CHK,
+	__IDPF_RFLQ_GEN_CHK,
+	__IDPF_Q_FLOW_SCH_EN,
+	__IDPF_Q_ETF_EN,
+	__IDPF_Q_SW_MARKER,
+	__IDPF_Q_POLL_MODE,
+	__IDPF_Q_FLAGS_NBITS,
+};
+
+struct idpf_vec_regs {
+	u32 dyn_ctl_reg;
+	u32 itrn_reg;
+	u32 itrn_index_spacing;
+};
+
+struct idpf_intr_reg {
+	u8 __iomem *dyn_ctl;
+	u32 dyn_ctl_intena_m;
+	u32 dyn_ctl_clrpba_m;
+	u32 dyn_ctl_itridx_s;
+	u32 dyn_ctl_itridx_m;
+	u32 dyn_ctl_intrvl_s;
+	u8 __iomem *rx_itr;
+	u8 __iomem *tx_itr;
+	u8 __iomem *icr_ena;
+	u32 icr_ena_ctlq_m;
+};
+
+struct idpf_q_vector {
+	struct idpf_vport *vport;
+	cpumask_t affinity_mask;
+	struct napi_struct napi;
+	u16 v_idx;		/* index in the vport->q_vector array */
+	struct idpf_intr_reg intr_reg;
+
+	int num_txq;
+	struct idpf_queue **tx;
+	struct dim tx_dim;	/* data for net_dim algorithm */
+	u16 tx_itr_value;
+	bool tx_intr_mode;
+	u32 tx_itr_idx;
+
+	int num_rxq;
+	struct idpf_queue **rx;
+	struct dim rx_dim;	/* data for net_dim algorithm */
+	u16 rx_itr_value;
+	bool rx_intr_mode;
+	u32 rx_itr_idx;
+
+	int num_bufq;
+	struct idpf_queue **bufq;
+
+	u16 total_events;       /* net_dim(): number of interrupts processed */
+	char name[IDPF_INT_NAME_STR_LEN];
+};
+
+struct idpf_rx_queue_stats {
+	u64 packets;
+	u64 bytes;
+	u64 rsc_pkts;
+	u64 hw_csum_err;
+	u64 hsplit_pkts;
+	u64 hsplit_buf_ovf;
+	u64 bad_descs;
+};
+
+struct idpf_tx_queue_stats {
+	u64 packets;
+	u64 bytes;
+	u64 lso_pkts;
+	u64 linearize;
+	u64 q_busy;
+	u64 skb_drops;
+	u64 dma_errs;
+};
+
+union idpf_queue_stats {
+	struct idpf_rx_queue_stats rx;
+	struct idpf_tx_queue_stats tx;
+};
+
+#define IDPF_ITR_DYNAMIC	1
+#define IDPF_ITR_MAX		0x1FE0
+#define IDPF_ITR_20K		0x0032
+#define IDPF_ITR_GRAN_S		1	/* Assume ITR granularity is 2us */
+#define IDPF_ITR_MASK		0x1FFE	/* ITR register value alignment mask */
+#define ITR_REG_ALIGN(setting)	((setting) & IDPF_ITR_MASK)
+#define IDPF_ITR_IS_DYNAMIC(itr_mode) (itr_mode)
+#define IDPF_ITR_TX_DEF		IDPF_ITR_20K
+#define IDPF_ITR_RX_DEF		IDPF_ITR_20K
+#define IDPF_NO_ITR_UPDATE_IDX	3
+#define IDPF_ITR_IDX_SPACING(spacing, dflt)	(spacing ? spacing : dflt)
+
+/* queue associated with a vport */
+struct idpf_queue {
+	struct device *dev;		/* Used for DMA mapping */
+	struct idpf_vport *vport;	/* Backreference to associated vport */
+	union {
+		struct idpf_txq_group *txq_grp;
+		struct idpf_rxq_group *rxq_grp;
+	};
+	/* bufq: Used as group id, either 0 or 1, on clean Buf Q uses this
+	 *       index to determine which group of refill queues to clean.
+	 *       Bufqs are use in splitq only.
+	 * txq: Index to map between Tx Q group and hot path Tx ptrs stored in
+	 *      vport.  Used in both single Q/split Q
+	 * rxq: Index to total rxq across groups, used for skb reporting
+	 */
+	u16 idx;
+	/* Used for both Q models single and split. In split Q model relevant
+	 * only to Tx Q and Rx Q
+	 */
+	u8 __iomem *tail;
+	/* Used in both single and split Q.  In single Q, Tx Q uses tx_buf and
+	 * Rx Q uses rx_buf.  In split Q, Tx Q uses tx_buf, Rx Q uses skb, and
+	 * Buf Q uses rx_buf.
+	 */
+	union {
+		struct idpf_tx_buf *tx_buf;
+		struct {
+			struct idpf_rx_buf *buf;
+			struct idpf_dma_mem **hdr_buf;
+		} rx_buf;
+		struct sk_buff *skb;
+	};
+	u16 q_type;
+	/* Queue id(Tx/Tx compl/Rx/Bufq) */
+	u32 q_id;
+	u16 desc_count;		/* Number of descriptors */
+
+	/* Relevant in both split & single Tx Q & Buf Q*/
+	u16 next_to_use;
+	/* In split q model only relevant for Tx Compl Q and Rx Q */
+	u16 next_to_clean;	/* used in interrupt processing */
+	/* Used only for Rx. In split Q model only relevant to Rx Q */
+	u16 next_to_alloc;
+	/* Generation bit check stored, as HW flips the bit at Queue end */
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS);
+
+	union idpf_queue_stats q_stats;
+	struct u64_stats_sync stats_sync;
+
+	/* Splitq only, TXQ only: When a TX completion is received on the TX
+	 * completion queue, it can be for any TXQ associated with that
+	 * completion queue. This means we can clean up to N TXQs during a
+	 * single call to clean the completion queue. cleaned_bytes|pkts tracks
+	 * the clean stats per TXQ during that single call to clean the
+	 * completion queue. By doing so, we can update BQL with aggregate
+	 * cleaned stats for each TXQ only once at the end of the cleaning
+	 * routine.
+	 */
+	u32 cleaned_bytes;
+	u16 cleaned_pkts;
+
+	bool rx_hsplit_en;
+
+	u16 rx_hbuf_size;	/* Header buffer size */
+	u16 rx_buf_size;
+	u16 rx_max_pkt_size;
+	u16 rx_buf_stride;
+	u8 rx_buffer_low_watermark;
+	u64 rxdids;
+	/* Used for both Q models single and split. In split Q model relavant
+	 * only to Tx compl Q and Rx compl Q
+	 */
+	struct idpf_q_vector *q_vector;	/* Backreference to associated vector */
+	unsigned int size;		/* length of descriptor ring in bytes */
+	dma_addr_t dma;			/* physical address of ring */
+	void *desc_ring;		/* Descriptor ring memory */
+
+	u16 tx_max_bufs;		/* Max buffers that can be transmitted
+					 * with scatter-gather
+					 */
+	u8 tx_min_pkt_len;		/* Min supported packet length */
+
+	u64 num_completions;		/* Only relevant for tx completion
+					 * queue; tracks the number of
+					 * completions received to compare
+					 * against the number of completions
+					 * pending, as accumulated by the TXQs
+					 */
+
+	/* Flow based scheduling related fields only */
+	struct idpf_buf_lifo buf_stack; /* Stack of empty buffers to store
+					 * buffer info for out of order
+					 * buffer completions
+					 */
+
+	/* The format of the completion tag will change based on the TXQ
+	 * descriptor ring size so that we can maintain roughly the same level
+	 * of "uniqueness" across all descriptor sizes. For example, if the
+	 * TXQ descriptor ring size is 64 (the minimum size supported), the
+	 * completion tag will be formatted as below:
+	 * 15                 6 5         0
+	 * --------------------------------
+	 * |    GEN=0-1023     |IDX = 0-63|
+	 * --------------------------------
+	 *
+	 * This gives us 64*1024 = 65536 possible unique values. Similarly, if
+	 * the TXQ descriptor ring size is 8160 (the maximum size supported),
+	 * the completion tag will be formatted as below:
+	 * 15 13 12                       0
+	 * --------------------------------
+	 * |GEN |       IDX = 0-8159      |
+	 * --------------------------------
+	 *
+	 * This gives us 8*8160 = 65280 possible unique values. However,
+	 * because we are using 0xFFFF to represent an invalid tag, we lose one
+	 * generation.
+	 */
+	u16 compl_tag_bufid_m;
+	u16 compl_tag_gen_s;
+#define IDPF_SPLITQ_TX_INVAL_COMPL_TAG 0xFFFF
+
+	/* compl_tag_cur_gen keeps track of the current completion tag generation,
+	 * whereas compl_tag_gen_max determines when compl_tag_cur_gen should be
+	 * reset.
+	 */
+	u16 compl_tag_cur_gen;
+	u16 compl_tag_gen_max;
+
+	DECLARE_HASHTABLE(sched_buf_hash, 12);
+
+	struct idpf_rx_hdr_buf_pages hbuf_pages;
+} ____cacheline_internodealigned_in_smp;
+
+/* Software queues are used in splitq mode to manage buffers between rxq
+ * producer and the bufq consumer.  These are required in order to maintain a
+ * lockless buffer management system and are strictly software only constructs.
+ */
+struct idpf_sw_queue {
+	u16 next_to_clean ____cacheline_aligned_in_smp;
+	u16 next_to_alloc ____cacheline_aligned_in_smp;
+	u16 next_to_use ____cacheline_aligned_in_smp;
+	DECLARE_BITMAP(flags, __IDPF_Q_FLAGS_NBITS)
+		____cacheline_aligned_in_smp;
+	u16 *ring ____cacheline_aligned_in_smp;
+	u16 desc_count;
+	u16 buf_size;
+	struct device *dev;
+} ____cacheline_internodealigned_in_smp;
+
+/* Splitq only.  idpf_rxq_set associates an rxq with at an array of refillqs.
+ * Each rxq needs a refillq to return used buffers back to the respective bufq.
+ * Bufqs then clean these refillqs for buffers to give to hardware.
+ */
+struct idpf_rxq_set {
+	struct idpf_queue rxq;
+	/* refillqs assoc with bufqX mapped to this rxq */
+	struct idpf_sw_queue *refillq0;
+	struct idpf_sw_queue *refillq1;
+};
+
+/* Splitq only.  idpf_bufq_set associates a bufq to an array of refillqs.
+ * In this bufq_set, there will be one refillq for each rxq in this rxq_group.
+ * Used buffers received by rxqs will be put on refillqs which bufqs will
+ * clean to return new buffers back to hardware.
+ *
+ * Buffers needed by some number of rxqs associated in this rxq_group are
+ * managed by at most two bufqs (depending on performance configuration).
+ */
+struct idpf_bufq_set {
+	struct idpf_queue bufq;
+	/* This is always equal to num_rxq_sets in idpf_rxq_group */
+	int num_refillqs;
+	struct idpf_sw_queue *refillqs;
+};
+
+/* In singleq mode, an rxq_group is simply an array of rxqs.  In splitq, a
+ * rxq_group contains all the rxqs, bufqs and refillqs needed to
+ * manage buffers in splitq mode.
+ */
+struct idpf_rxq_group {
+	struct idpf_vport *vport; /* back pointer */
+
+	union {
+		struct {
+			int num_rxq;
+			/* store queue pointers */
+			struct idpf_queue *rxqs[IDPF_LARGE_MAX_Q];
+		} singleq;
+		struct {
+			int num_rxq_sets;
+			/* store queue pointers */
+			struct idpf_rxq_set *rxq_sets[IDPF_LARGE_MAX_Q];
+			struct idpf_bufq_set *bufq_sets;
+		} splitq;
+	};
+};
+
+/* Between singleq and splitq, a txq_group is largely the same except for the
+ * complq.  In splitq a single complq is responsible for handling completions
+ * for some number of txqs associated in this txq_group.
+ */
+struct idpf_txq_group {
+	struct idpf_vport *vport; /* back pointer */
+
+	int num_txq;
+	/* store queue pointers */
+	struct idpf_queue *txqs[IDPF_LARGE_MAX_Q];
+
+	/* splitq only */
+	struct idpf_queue *complq;
+
+	/* Total number of completions pending for the completion queue,
+	 * acculumated for all txqs associated with that completion queue
+	 */
+	u64 num_completions_pending;
+};
+
+/**
+ * idpf_size_to_txd_count - Get the number of descriptors needed for Tx
+ * @size: transmit request size in bytes
+ *
+ * Due to hardware alignment restrictions (4K alignment), we need to assume
+ * that we can have no more than 12K of data per descriptor, even though each
+ * descriptor can take up to 16K - 1 bytes of aligned memory.
+ */
+static inline unsigned int idpf_size_to_txd_count(unsigned int size)
+{
+	return DIV_ROUND_UP(size, IDPF_TX_MAX_DESC_DATA_ALIGNED);
+}
+
+/**
+ * idpf_tx_singleq_build_ctob - populate command tag offset and size
+ * @td_cmd: Command to be filled in desc
+ * @td_offset: Offset to be filled in desc
+ * @size: Size of the buffer
+ * @td_tag: td tag to be filled
+ *
+ * Returns the 64 bit value populated with the input parameters
+ */
+static inline __le64
+idpf_tx_singleq_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size,
+			   u64 td_tag)
+{
+	return cpu_to_le64(IDPF_TX_DESC_DTYPE_DATA |
+			   (td_cmd    << IDPF_TXD_QW1_CMD_S) |
+			   (td_offset << IDPF_TXD_QW1_OFFSET_S) |
+			   ((u64)size << IDPF_TXD_QW1_TX_BUF_SZ_S) |
+			   (td_tag    << IDPF_TXD_QW1_L2TAG1_S));
+}
+
+void idpf_tx_splitq_build_ctb(union idpf_tx_flex_desc *desc,
+			      struct idpf_tx_splitq_params *parms,
+			      u16 td_cmd, u16 size);
+void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
+				    struct idpf_tx_splitq_params *parms,
+				    u16 td_cmd, u16 size);
+int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
+void idpf_vport_init_num_qs(struct idpf_vport *vport,
+			    struct virtchnl2_create_vport *vport_msg);
+void idpf_vport_calc_num_q_desc(struct idpf_vport *vport);
+int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_index,
+			     struct virtchnl2_create_vport *vport_msg,
+			     struct idpf_vport_max_q *max_q);
+void idpf_vport_calc_num_q_groups(struct idpf_vport *vport);
+int idpf_vport_queues_alloc(struct idpf_vport *vport);
+void idpf_rx_post_buf_refill(struct idpf_sw_queue *refillq, u16 buf_id);
+void idpf_vport_queues_rel(struct idpf_vport *vport);
+void idpf_vport_calc_q_vec_base(struct idpf_adapter *adapter,
+				struct idpf_vport *vport);
+void idpf_vport_intr_rel(struct idpf_vport *vport);
+int idpf_vport_intr_alloc(struct idpf_vport *vport);
+void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport);
+void idpf_vport_intr_clear_dflt_itr(struct idpf_vport *vport);
+void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector);
+void idpf_vport_intr_deinit(struct idpf_vport *vport);
+int idpf_vport_intr_init(struct idpf_vport *vport);
+irqreturn_t
+idpf_vport_intr_clean_queues(int __always_unused irq, void *data);
+void idpf_vport_intr_ena_irq_all(struct idpf_vport *vport);
+enum
+pkt_hash_types idpf_ptype_to_htype(struct idpf_rx_ptype_decoded *decoded);
+int idpf_config_rss(struct idpf_vport *vport);
+void idpf_fill_dflt_rss_lut(struct idpf_vport *vport);
+int idpf_init_rss(struct idpf_vport *vport);
+void idpf_deinit_rss(struct idpf_vport *vport);
+bool idpf_rx_can_reuse_page(struct idpf_rx_buf *rx_buf);
+void idpf_rx_buf_adjust_pg(struct idpf_rx_buf *rx_buf, unsigned int size);
+void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
+		      unsigned int size);
+struct sk_buff *idpf_rx_construct_skb(struct idpf_queue *rxq,
+				      struct idpf_rx_buf *rx_buf,
+				      unsigned int size);
+bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxq, struct idpf_rx_buf *buf);
+void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val);
+void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
+			   bool xmit_more);
+void idpf_rx_splitq_put_bufs(struct idpf_queue *rx_bufq,
+			     struct idpf_rx_buf *hdr_buf,
+			     struct idpf_rx_buf *rx_buf);
+bool idpf_rx_splitq_test_staterr(u8 stat_err_field, const u8 stat_err_bits);
+bool idpf_rx_singleq_test_staterr(union virtchnl2_rx_desc *rx_desc,
+				  const u64 stat_err_bits);
+int idpf_rx_process_skb_fields(struct idpf_queue *rxq, struct sk_buff *skb,
+			       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc);
+void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q, struct sk_buff *skb,
+					union virtchnl2_rx_desc *rx_desc, u16 ptype);
+void idpf_rx_singleq_extract_fields(struct idpf_queue *rx_q,
+				    union virtchnl2_rx_desc *rx_desc,
+				    struct idpf_rx_extracted *fields);
+void idpf_rx_singleq_bump_ntc(struct idpf_queue *q);
+bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
+				union virtchnl2_rx_desc *rx_desc,
+				struct sk_buff *skb);
+void idpf_rx_bump_ntc(struct idpf_queue *q);
+void idpf_tx_buf_rel(struct idpf_queue *tx_q, struct idpf_tx_buf *tx_buf);
+unsigned int idpf_size_to_txd_count(unsigned int size);
+netdev_tx_t idpf_tx_drop_skb(struct idpf_queue *tx_q, struct sk_buff *skb);
+void idpf_tx_dma_map_error(struct idpf_queue *txq, struct sk_buff *skb,
+			   struct idpf_tx_buf *first, u16 ring_idx);
+unsigned int idpf_tx_desc_count_required(struct sk_buff *skb);
+bool idpf_chk_linearize(struct sk_buff *skb, unsigned int max_bufs,
+			unsigned int count);
+int idpf_tx_maybe_stop_common(struct idpf_queue *tx_q, unsigned int size);
+void idpf_tx_timeout(struct net_device *netdev,
+		     unsigned int __always_unused txqueue);
+netdev_tx_t idpf_tx_splitq_start(struct sk_buff *skb,
+				 struct net_device *netdev);
+netdev_tx_t idpf_tx_singleq_start(struct sk_buff *skb,
+				  struct net_device *netdev);
+bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_queue *rxq,
+				      u16 cleaned_count);
+void idpf_get_stats64(struct net_device *netdev,
+		      struct rtnl_link_stats64 *stats);
+int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
+
+#endif /* !_IDPF_TXRX_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
new file mode 100644
index 000000000000..7aa1d49d1c4d
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#include "idpf.h"
+#include "idpf_lan_vf_regs.h"
+
+/* LAN driver does not own all the BAR0 address space. This results in 2 BAR0
+ * regions for VF device and the driver should map each region separately.
+ */
+#define IDPF_VF_BAR0_REGION1_END	0x11000		/* 64KB + 4KB */
+#define IDPF_VF_BAR0_REGION2_START	0x20000		/* 128KB */
+
+#define IDPF_VF_ITR_IDX_SPACING		0x40
+
+/**
+ * idpf_vf_ctlq_reg_init - initialize default mailbox registers
+ * @cq: pointer to the array of create control queues
+ */
+static void idpf_vf_ctlq_reg_init(struct idpf_ctlq_create_info *cq)
+{
+	int i;
+
+	for (i = 0; i < IDPF_NUM_DFLT_MBX_Q; i++) {
+		struct idpf_ctlq_create_info *ccq = cq + i;
+
+		switch (ccq->type) {
+		case IDPF_CTLQ_TYPE_MAILBOX_TX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = VF_ATQH;
+			ccq->reg.tail = VF_ATQT;
+			ccq->reg.len = VF_ATQLEN;
+			ccq->reg.bah = VF_ATQBAH;
+			ccq->reg.bal = VF_ATQBAL;
+			ccq->reg.len_mask = VF_ATQLEN_ATQLEN_M;
+			ccq->reg.len_ena_mask = VF_ATQLEN_ATQENABLE_M;
+			ccq->reg.head_mask = VF_ATQH_ATQH_M;
+			break;
+		case IDPF_CTLQ_TYPE_MAILBOX_RX:
+			/* set head and tail registers in our local struct */
+			ccq->reg.head = VF_ARQH;
+			ccq->reg.tail = VF_ARQT;
+			ccq->reg.len = VF_ARQLEN;
+			ccq->reg.bah = VF_ARQBAH;
+			ccq->reg.bal = VF_ARQBAL;
+			ccq->reg.len_mask = VF_ARQLEN_ARQLEN_M;
+			ccq->reg.len_ena_mask = VF_ARQLEN_ARQENABLE_M;
+			ccq->reg.head_mask = VF_ARQH_ARQH_M;
+			break;
+		default:
+			break;
+		}
+	}
+}
+
+/**
+ * idpf_vf_mb_intr_reg_init - Initialize the mailbox register
+ * @adapter: adapter structure
+ */
+static void idpf_vf_mb_intr_reg_init(struct idpf_adapter *adapter)
+{
+	struct idpf_intr_reg *intr = &adapter->mb_vector.intr_reg;
+	u32 dyn_ctl = le32_to_cpu(adapter->caps.mailbox_dyn_ctl);
+
+	intr->dyn_ctl = idpf_get_reg_addr(adapter, dyn_ctl);
+	intr->dyn_ctl_intena_m = VF_INT_DYN_CTL0_INTENA_M;
+	intr->dyn_ctl_itridx_m = VF_INT_DYN_CTL0_ITR_INDX_M;
+	intr->icr_ena = idpf_get_reg_addr(adapter, VF_INT_ICR0_ENA1);
+	intr->icr_ena_ctlq_m = VF_INT_ICR0_ENA1_ADMINQ_M;
+}
+
+/**
+ * idpf_vf_intr_reg_init - Initialize interrupt registers
+ * @vport: virtual port structure
+ */
+static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int num_vecs = vport->num_q_vectors;
+	struct idpf_vec_regs *reg_vals;
+	int num_regs, i, err = 0;
+	u32 rx_itr, tx_itr;
+	u16 total_vecs;
+
+	total_vecs = idpf_get_reserved_vecs(vport->adapter);
+	reg_vals = kcalloc(total_vecs, sizeof(struct idpf_vec_regs),
+			   GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	num_regs = idpf_get_reg_intr_vecs(vport, reg_vals);
+	if (num_regs < num_vecs) {
+		err = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	for (i = 0; i < num_vecs; i++) {
+		struct idpf_q_vector *q_vector = &vport->q_vectors[i];
+		struct idpf_intr_reg *intr = &q_vector->intr_reg;
+		u16 vec_id = vport->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
+		u32 spacing;
+
+		intr->dyn_ctl = idpf_get_reg_addr(adapter,
+						  reg_vals[vec_id].dyn_ctl_reg);
+		intr->dyn_ctl_clrpba_m = VF_INT_DYN_CTLN_CLEARPBA_M;
+		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
+		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
+
+		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
+					       IDPF_VF_ITR_IDX_SPACING);
+		rx_itr = VF_INT_ITRN_ADDR(VIRTCHNL2_ITR_IDX_0,
+					  reg_vals[vec_id].itrn_reg,
+					  spacing);
+		tx_itr = VF_INT_ITRN_ADDR(VIRTCHNL2_ITR_IDX_1,
+					  reg_vals[vec_id].itrn_reg,
+					  spacing);
+		intr->rx_itr = idpf_get_reg_addr(adapter, rx_itr);
+		intr->tx_itr = idpf_get_reg_addr(adapter, tx_itr);
+	}
+
+free_reg_vals:
+	kfree(reg_vals);
+	return err;
+}
+
+/**
+ * idpf_vf_reset_reg_init - Initialize reset registers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_vf_reset_reg_init(struct idpf_adapter *adapter)
+{
+	adapter->reset_reg.rstat = idpf_get_reg_addr(adapter, VFGEN_RSTAT);
+	adapter->reset_reg.rstat_m = VFGEN_RSTAT_VFR_STATE_M;
+}
+
+/**
+ * idpf_vf_trigger_reset - trigger reset
+ * @adapter: Driver specific private structure
+ * @trig_cause: Reason to trigger a reset
+ */
+static void idpf_vf_trigger_reset(struct idpf_adapter *adapter,
+				  enum idpf_flags trig_cause)
+{
+	/* Do not send VIRTCHNL2_OP_RESET_VF message on driver unload */
+	if (trig_cause == __IDPF_HR_FUNC_RESET &&
+	    !test_bit(__IDPF_REMOVE_IN_PROG, adapter->flags))
+		idpf_send_mb_msg(adapter, VIRTCHNL2_OP_RESET_VF, 0, NULL);
+}
+
+/**
+ * idpf_vf_reg_ops_init - Initialize register API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_vf_reg_ops_init(struct idpf_adapter *adapter)
+{
+	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_vf_ctlq_reg_init;
+	adapter->dev_ops.reg_ops.intr_reg_init = idpf_vf_intr_reg_init;
+	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_vf_mb_intr_reg_init;
+	adapter->dev_ops.reg_ops.reset_reg_init = idpf_vf_reset_reg_init;
+	adapter->dev_ops.reg_ops.trigger_reset = idpf_vf_trigger_reset;
+}
+
+/**
+ * idpf_vf_crc_enable - Enable CRC insertion offload
+ * @td_cmd: command to be filled with ICRC
+ */
+static void idpf_vf_crc_enable(u64 *td_cmd)
+{
+	*td_cmd |= (u64)(IDPF_TX_DESC_CMD_ICRC);
+}
+
+/**
+ * idpf_vf_dev_ops_init - Initialize device API function pointers
+ * @adapter: Driver specific private structure
+ */
+static void idpf_vf_dev_ops_init(struct idpf_adapter *adapter)
+{
+	idpf_vf_reg_ops_init(adapter);
+	adapter->dev_ops.crc_enable = idpf_vf_crc_enable;
+
+	adapter->dev_ops.bar0_region1_size = IDPF_VF_BAR0_REGION1_END;
+	adapter->dev_ops.bar0_region2_start = IDPF_VF_BAR0_REGION2_START;
+}
+
+/**
+ * idpf_vf_probe - Device initialization routine
+ * @pdev: PCI device information struct
+ * @adapter: pointer to adapter structure allocated by caller
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_vf_probe(struct pci_dev *pdev, struct idpf_adapter *adapter)
+{
+	idpf_vf_dev_ops_init(adapter);
+	return idpf_probe_common(pdev, adapter);
+}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
new file mode 100644
index 000000000000..d43adcbe061d
--- /dev/null
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -0,0 +1,3980 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2022 Intel Corporation */
+
+#include "idpf.h"
+
+/**
+ * idpf_recv_event_msg - Receive virtchnl event message
+ * @vport: virtual port structure
+ *
+ * Receive virtchnl event message
+ */
+static void idpf_recv_event_msg(struct idpf_vport *vport)
+{
+	struct virtchnl2_event *v2e = NULL;
+	bool link_status;
+	u32 event;
+
+	v2e = (struct virtchnl2_event *)vport->vc_msg;
+	event = le32_to_cpu(v2e->event);
+
+	switch (event) {
+	case VIRTCHNL2_EVENT_LINK_CHANGE:
+		vport->link_speed_mbps = le32_to_cpu(v2e->link_speed);
+		link_status = v2e->link_status;
+
+		if (vport->link_up != link_status) {
+			vport->link_up = link_status;
+			if (vport->state == __IDPF_VPORT_UP) {
+				if (vport->link_up) {
+					netif_tx_start_all_queues(vport->netdev);
+					netif_carrier_on(vport->netdev);
+				} else {
+					netif_tx_stop_all_queues(vport->netdev);
+					netif_carrier_off(vport->netdev);
+				}
+			}
+		}
+		break;
+	default:
+		dev_err(&vport->adapter->pdev->dev,
+			"Unknown event %d from PF\n", event);
+		break;
+	}
+	clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+}
+
+/**
+ * idpf_mb_clean - Reclaim the send mailbox queue entries
+ * @adapter: Driver specific private structure
+ *
+ * Reclaim the send mailbox queue entries to be used to send further messages
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int idpf_mb_clean(struct idpf_adapter *adapter)
+{
+	u16 i, num_q_msg = IDPF_DFLT_MBX_Q_LEN;
+	struct idpf_ctlq_msg **q_msg;
+	struct idpf_dma_mem *dma_mem;
+	int err = 0;
+
+	if (!adapter->hw.asq)
+		return -EINVAL;
+
+	q_msg = kcalloc(num_q_msg, sizeof(struct idpf_ctlq_msg *), GFP_ATOMIC);
+	if (!q_msg)
+		return -ENOMEM;
+
+	err = idpf_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
+	if (err)
+		goto error;
+
+	for (i = 0; i < num_q_msg; i++) {
+		if (!q_msg[i])
+			continue;
+		dma_mem = q_msg[i]->ctx.indirect.payload;
+		if (dma_mem)
+			dmam_free_coherent(&adapter->pdev->dev, dma_mem->size,
+					   dma_mem->va, dma_mem->pa);
+		kfree(q_msg[i]);
+		kfree(dma_mem);
+	}
+error:
+	kfree(q_msg);
+	return err;
+}
+
+/**
+ * idpf_send_mb_msg - Send message over mailbox
+ * @adapter: Driver specific private structure
+ * @op: virtchnl opcode
+ * @msg_size: size of the payload
+ * @msg: pointer to buffer holding the payload
+ *
+ * Will prepare the control queue message and initiates the send api
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_send_mb_msg(struct idpf_adapter *adapter, u32 op,
+		     u16 msg_size, u8 *msg)
+{
+	struct idpf_ctlq_msg *ctlq_msg;
+	struct idpf_dma_mem *dma_mem;
+	int err = 0;
+
+	/* If we are here and a reset is detected nothing much can be
+	 * done. This thread should silently abort and expected to
+	 * be corrected with a new run either by user or driver
+	 * flows after reset
+	 */
+	if (idpf_is_reset_detected(adapter))
+		return 0;
+
+	err = idpf_mb_clean(adapter);
+	if (err)
+		return err;
+
+	ctlq_msg = kzalloc(sizeof(*ctlq_msg), GFP_ATOMIC);
+	if (!ctlq_msg)
+		return -ENOMEM;
+
+	dma_mem = kzalloc(sizeof(*dma_mem), GFP_ATOMIC);
+	if (!dma_mem) {
+		err = -ENOMEM;
+		goto dma_mem_error;
+	}
+
+	memset(ctlq_msg, 0, sizeof(struct idpf_ctlq_msg));
+	ctlq_msg->opcode = idpf_mbq_opc_send_msg_to_pf;
+	ctlq_msg->func_id = 0;
+	ctlq_msg->data_len = msg_size;
+	ctlq_msg->cookie.mbx.chnl_opcode = op;
+	ctlq_msg->cookie.mbx.chnl_retval = VIRTCHNL2_STATUS_SUCCESS;
+	dma_mem->size = IDPF_DFLT_MBX_BUF_SIZE;
+	dma_mem->va = dmam_alloc_coherent(&adapter->pdev->dev, dma_mem->size,
+					  &dma_mem->pa, GFP_ATOMIC);
+	if (!dma_mem->va) {
+		err = -ENOMEM;
+		goto dma_alloc_error;
+	}
+	memcpy(dma_mem->va, msg, msg_size);
+	ctlq_msg->ctx.indirect.payload = dma_mem;
+
+	err = idpf_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
+	if (err)
+		goto send_error;
+
+	return 0;
+send_error:
+	dmam_free_coherent(&adapter->pdev->dev, dma_mem->size, dma_mem->va,
+			   dma_mem->pa);
+dma_alloc_error:
+	kfree(dma_mem);
+dma_mem_error:
+	kfree(ctlq_msg);
+	return err;
+}
+
+/**
+ * idpf_find_vport - Find vport pointer from control queue message
+ * @adapter: driver specific private structure
+ * @vport: address of vport pointer to copy the vport from adapters vport list
+ * @ctlq_msg: control queue message
+ *
+ * This function does check for the opcodes which expect to receive payload and
+ * return error value if it is not the case.
+ * For virtchnl 2.0 opcodes, return 0 on success, error value on failure and
+ * for other opcodes, return 0 always
+ */
+static int idpf_find_vport(struct idpf_adapter *adapter,
+			   struct idpf_vport **vport,
+			   struct idpf_ctlq_msg *ctlq_msg)
+{
+	bool no_op = false, vid_found = false;
+	int i, err = 0, payload_size = 0;
+	u16 num_max_vports;
+	char *vc_msg;
+	u32 v_id;
+
+	vc_msg = kcalloc(IDPF_DFLT_MBX_BUF_SIZE, sizeof(char), GFP_KERNEL);
+	if (!vc_msg)
+		return -ENOMEM;
+
+	if (ctlq_msg->data_len) {
+		payload_size = ctlq_msg->ctx.indirect.payload->size;
+		memcpy(vc_msg, ctlq_msg->ctx.indirect.payload->va,
+		       min_t(int, payload_size, IDPF_DFLT_MBX_BUF_SIZE));
+	}
+
+	switch (ctlq_msg->cookie.mbx.chnl_opcode) {
+	case VIRTCHNL2_OP_VERSION:
+	case VIRTCHNL2_OP_GET_CAPS:
+	case VIRTCHNL2_OP_CREATE_VPORT:
+	case VIRTCHNL2_OP_SET_SRIOV_VFS:
+	case VIRTCHNL2_OP_ALLOC_VECTORS:
+	case VIRTCHNL2_OP_DEALLOC_VECTORS:
+	case VIRTCHNL2_OP_GET_PTYPE_INFO:
+		if (payload_size)
+			goto free_vc_msg;
+		else
+			goto no_payload;
+		goto free_vc_msg;
+	case VIRTCHNL2_OP_ENABLE_VPORT:
+	case VIRTCHNL2_OP_DISABLE_VPORT:
+	case VIRTCHNL2_OP_DESTROY_VPORT:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_vport *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_config_tx_queues *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_config_rx_queues *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+	case VIRTCHNL2_OP_DEL_QUEUES:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_del_ena_dis_queues *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_ADD_QUEUES:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_add_queues *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_queue_vector_maps *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_GET_STATS:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_vport_stats *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_GET_RSS_HASH:
+	case VIRTCHNL2_OP_SET_RSS_HASH:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_rss_hash *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_GET_RSS_LUT:
+	case VIRTCHNL2_OP_SET_RSS_LUT:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_rss_lut *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_GET_RSS_KEY:
+	case VIRTCHNL2_OP_SET_RSS_KEY:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_rss_key *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_EVENT:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_event *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_LOOPBACK:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_loopback *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_promisc_info *)vc_msg)->vport_id);
+		break;
+	case VIRTCHNL2_OP_ADD_MAC_ADDR:
+	case VIRTCHNL2_OP_DEL_MAC_ADDR:
+		if (!payload_size)
+			goto no_payload;
+		v_id = le32_to_cpu(((struct virtchnl2_mac_addr_list *)vc_msg)->vport_id);
+		break;
+	default:
+		no_op = true;
+		break;
+	}
+
+	if (no_op)
+		goto free_vc_msg;
+
+	num_max_vports = idpf_get_max_vports(adapter);
+	for (i = 0; i < num_max_vports; i++) {
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
+	goto free_vc_msg;
+
+no_payload:
+	err = -EINVAL;
+	dev_info(&adapter->pdev->dev, "Failed to receive payload buffer\n");
+free_vc_msg:
+	kfree(vc_msg);
+	return err;
+}
+
+/**
+ * idpf_set_msg_pending_bit - Wait for clear and set msg pending
+ * @adapter: driver specific private structure
+ * @vport: virtual port structure
+ *
+ * If clear sets msg pending bit, otherwise waits for it to clear before
+ * setting it again. Returns 0 on success, negative on failure.
+ */
+static int idpf_set_msg_pending_bit(struct idpf_adapter *adapter,
+				    struct idpf_vport *vport)
+{
+	unsigned int retries = 100;
+
+	/* If msg pending bit already set, there's a message waiting to be
+	 * parsed and we must wait for it to be cleared before copying a new
+	 * message into the vc_msg buffer or else we'll stomp all over the
+	 * previous message.
+	 */
+	while (retries) {
+		if (vport) {
+			if (!test_and_set_bit(__IDPF_VPORT_VC_MSG_PENDING,
+					      vport->flags))
+				break;
+		} else {
+			if (!test_and_set_bit(__IDPF_VC_MSG_PENDING,
+					      adapter->flags))
+				break;
+		}
+		msleep(20);
+		retries--;
+	}
+	return retries ? 0 : -ETIMEDOUT;
+}
+
+/**
+ * idpf_set_msg_pending - Wait for msg pending bit and copy msg to buf
+ * @adapter: driver specific private structure
+ * @vport: virtual port structure
+ * @ctlq_msg: msg to copy from
+ * @err_enum: err bit to set on error
+ *
+ * Copies payload from ctlq_msg into vc_msg buf in adapter and sets msg pending
+ * bit. Returns 0 on success, negative on failure.
+ */
+static int idpf_set_msg_pending(struct idpf_adapter *adapter,
+				struct idpf_vport *vport,
+				struct idpf_ctlq_msg *ctlq_msg,
+				enum idpf_vport_vc_state err_enum)
+{
+	if (ctlq_msg->cookie.mbx.chnl_retval) {
+		if (vport)
+			set_bit(err_enum, vport->vc_state);
+		else
+			set_bit(err_enum, adapter->vc_state);
+		return -EINVAL;
+	}
+
+	if (idpf_set_msg_pending_bit(adapter, vport)) {
+		if (vport)
+			set_bit(err_enum, vport->vc_state);
+		else
+			set_bit(err_enum, adapter->vc_state);
+		dev_info(&adapter->pdev->dev, "Timed out setting msg pending\n");
+		return -ETIMEDOUT;
+	}
+
+	if (vport)
+		memcpy(vport->vc_msg, ctlq_msg->ctx.indirect.payload->va,
+		       min_t(int, ctlq_msg->ctx.indirect.payload->size,
+			     IDPF_DFLT_MBX_BUF_SIZE));
+	else
+		memcpy(adapter->vc_msg, ctlq_msg->ctx.indirect.payload->va,
+		       min_t(int, ctlq_msg->ctx.indirect.payload->size,
+			     IDPF_DFLT_MBX_BUF_SIZE));
+	return 0;
+}
+
+/**
+ * idpf_recv_vchnl_op - helper function with common logic when handling the
+ * reception of VIRTCHNL OPs.
+ * @adapter: driver specific private structure
+ * @vport: virtual port structure
+ * @ctlq_msg: msg to copy from
+ * @state: state bit used on timeout check
+ * @err_state: err bit to set on error
+ */
+static void idpf_recv_vchnl_op(struct idpf_adapter *adapter,
+			       struct idpf_vport *vport,
+			       struct idpf_ctlq_msg *ctlq_msg,
+			       enum idpf_vport_vc_state state,
+			       enum idpf_vport_vc_state err_state)
+{
+	wait_queue_head_t *vchnl_wq;
+	int err;
+
+	if (vport)
+		vchnl_wq = &vport->vchnl_wq;
+	else
+		vchnl_wq = &adapter->vchnl_wq;
+
+	err = idpf_set_msg_pending(adapter, vport, ctlq_msg, err_state);
+	if (wq_has_sleeper(vchnl_wq)) {
+		/* sleeper is present and we got the pending bit */
+		if (vport)
+			set_bit(state, vport->vc_state);
+		else
+			set_bit(state, adapter->vc_state);
+
+		wake_up(vchnl_wq);
+	} else {
+		if (!err) {
+			/* We got the pending bit, but release it if we cannot
+			 * find a thread waiting for the message.
+			 */
+			dev_warn(&adapter->pdev->dev, "opcode %d received without waiting thread\n",
+				 ctlq_msg->cookie.mbx.chnl_opcode);
+			if (vport)
+				clear_bit(__IDPF_VPORT_VC_MSG_PENDING,
+					  vport->flags);
+			else
+				clear_bit(__IDPF_VC_MSG_PENDING,
+					  adapter->flags);
+		} else {
+			/* Clear the errors since there is no sleeper to pass them on */
+			if (vport)
+				clear_bit(err_state, vport->vc_state);
+			else
+				clear_bit(err_state, adapter->vc_state);
+		}
+	}
+}
+
+/**
+ * idpf_recv_mb_msg - Receive message over mailbox
+ * @adapter: Driver specific private structure
+ * @op: virtchannel operation code
+ * @msg: Received message holding buffer
+ * @msg_size: message size
+ *
+ * Will receive control queue message and posts the receive buffer. Returns 0
+ * on success and negative on failure.
+ */
+int idpf_recv_mb_msg(struct idpf_adapter *adapter, u32 op,
+		     void *msg, int msg_size)
+{
+	struct idpf_vport *vport = NULL;
+	struct idpf_ctlq_msg ctlq_msg;
+	struct idpf_dma_mem *dma_mem;
+	bool work_done = false;
+	int num_retry = 2000;
+	u16 num_q_msg;
+	int err = 0;
+
+	while (1) {
+		int payload_size = 0;
+
+		/* Try to get one message */
+		num_q_msg = 1;
+		dma_mem = NULL;
+		err = idpf_ctlq_recv(adapter->hw.arq, &num_q_msg, &ctlq_msg);
+		/* If no message then decide if we have to retry based on
+		 * opcode
+		 */
+		if (err || !num_q_msg) {
+			/* Increasing num_retry to consider the delayed
+			 * responses because of large number of VF's mailbox
+			 * messages. If the mailbox message is received from
+			 * the other side, we come out of the sleep cycle
+			 * immediately else we wait for more time.
+			 */
+			if (!op || !num_retry--)
+				break;
+			if (test_bit(__IDPF_REL_RES_IN_PROG, adapter->flags)) {
+				err = -EIO;
+				break;
+			}
+			msleep(20);
+			continue;
+		}
+
+		/* If we are here a message is received. Check if we are looking
+		 * for a specific message based on opcode. If it is different
+		 * ignore and post buffers
+		 */
+		if (op && ctlq_msg.cookie.mbx.chnl_opcode != op)
+			goto post_buffs;
+
+		err = idpf_find_vport(adapter, &vport, &ctlq_msg);
+		if (err)
+			goto post_buffs;
+
+		if (ctlq_msg.data_len)
+			payload_size = ctlq_msg.ctx.indirect.payload->size;
+
+		/* All conditions are met. Either a message requested is
+		 * received or we received a message to be processed
+		 */
+		switch (ctlq_msg.cookie.mbx.chnl_opcode) {
+		case VIRTCHNL2_OP_VERSION:
+		case VIRTCHNL2_OP_GET_CAPS:
+			if (ctlq_msg.cookie.mbx.chnl_retval) {
+				dev_info(&adapter->pdev->dev, "Failure initializing, vc op: %u retval: %u\n",
+					 ctlq_msg.cookie.mbx.chnl_opcode,
+					 ctlq_msg.cookie.mbx.chnl_retval);
+				err = -EBADMSG;
+			} else if (msg) {
+				memcpy(msg, ctlq_msg.ctx.indirect.payload->va,
+				       min_t(int,
+					     payload_size, msg_size));
+			}
+			work_done = true;
+			break;
+		case VIRTCHNL2_OP_CREATE_VPORT:
+			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
+					   IDPF_VC_CREATE_VPORT,
+					   IDPF_VC_CREATE_VPORT_ERR);
+			break;
+		case VIRTCHNL2_OP_ENABLE_VPORT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_ENA_VPORT,
+					   IDPF_VC_ENA_VPORT_ERR);
+			break;
+		case VIRTCHNL2_OP_DISABLE_VPORT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DIS_VPORT,
+					   IDPF_VC_DIS_VPORT_ERR);
+			break;
+		case VIRTCHNL2_OP_DESTROY_VPORT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DESTROY_VPORT,
+					   IDPF_VC_DESTROY_VPORT_ERR);
+			break;
+		case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_CONFIG_TXQ,
+					   IDPF_VC_CONFIG_TXQ_ERR);
+			break;
+		case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_CONFIG_RXQ,
+					   IDPF_VC_CONFIG_RXQ_ERR);
+			break;
+		case VIRTCHNL2_OP_ENABLE_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_ENA_QUEUES,
+					   IDPF_VC_ENA_QUEUES_ERR);
+			break;
+		case VIRTCHNL2_OP_DISABLE_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DIS_QUEUES,
+					   IDPF_VC_DIS_QUEUES_ERR);
+			break;
+		case VIRTCHNL2_OP_ADD_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_ADD_QUEUES,
+					   IDPF_VC_ADD_QUEUES_ERR);
+			break;
+		case VIRTCHNL2_OP_DEL_QUEUES:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DEL_QUEUES,
+					   IDPF_VC_DEL_QUEUES_ERR);
+			break;
+		case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_MAP_IRQ,
+					   IDPF_VC_MAP_IRQ_ERR);
+			break;
+		case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_UNMAP_IRQ,
+					   IDPF_VC_UNMAP_IRQ_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_STATS:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_GET_STATS,
+					   IDPF_VC_GET_STATS_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_RSS_HASH:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_GET_RSS_HASH,
+					   IDPF_VC_GET_RSS_HASH_ERR);
+			break;
+		case VIRTCHNL2_OP_SET_RSS_HASH:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_SET_RSS_HASH,
+					   IDPF_VC_SET_RSS_HASH_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_RSS_LUT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_GET_RSS_LUT,
+					   IDPF_VC_GET_RSS_LUT_ERR);
+			break;
+		case VIRTCHNL2_OP_SET_RSS_LUT:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_SET_RSS_LUT,
+					   IDPF_VC_SET_RSS_LUT_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_RSS_KEY:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_GET_RSS_KEY,
+					   IDPF_VC_GET_RSS_KEY_ERR);
+			break;
+		case VIRTCHNL2_OP_SET_RSS_KEY:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_SET_RSS_KEY,
+					   IDPF_VC_SET_RSS_KEY_ERR);
+			break;
+		case VIRTCHNL2_OP_SET_SRIOV_VFS:
+			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
+					   IDPF_VC_SET_SRIOV_VFS,
+					   IDPF_VC_SET_SRIOV_VFS_ERR);
+			break;
+		case VIRTCHNL2_OP_ALLOC_VECTORS:
+			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
+					   IDPF_VC_ALLOC_VECTORS,
+					   IDPF_VC_ALLOC_VECTORS_ERR);
+			break;
+		case VIRTCHNL2_OP_DEALLOC_VECTORS:
+			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
+					   IDPF_VC_DEALLOC_VECTORS,
+					   IDPF_VC_DEALLOC_VECTORS_ERR);
+			break;
+		case VIRTCHNL2_OP_GET_PTYPE_INFO:
+			idpf_recv_vchnl_op(adapter, NULL, &ctlq_msg,
+					   IDPF_VC_GET_PTYPE_INFO,
+					   IDPF_VC_GET_PTYPE_INFO);
+			break;
+		case VIRTCHNL2_OP_LOOPBACK:
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_LOOPBACK_STATE,
+					   IDPF_VC_LOOPBACK_STATE_ERR);
+			break;
+		case VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE:
+			/* This message can only be sent asynchronously. As
+			 * such we'll have lost the context in which it was
+			 * called and thus can only really report if it looks
+			 * like an error occurred. Don't bother setting ERR bit
+			 * or waking chnl_wq since no work queue will be waiting
+			 * to read the message.
+			 */
+			if (ctlq_msg.cookie.mbx.chnl_retval) {
+				dev_err(&adapter->pdev->dev, "Failed to set promiscuous mode: %d\n",
+					ctlq_msg.cookie.mbx.chnl_retval);
+			}
+			break;
+		case VIRTCHNL2_OP_ADD_MAC_ADDR:
+			if (test_and_clear_bit(__IDPF_ADD_MAC_REQ, adapter->flags)) {
+				/* Message was sent asynchronously. We don't
+				 * normally print errors here, instead
+				 * preferring to handle errors in the function
+				 * calling wait_for_event. However, we will
+				 * have lost the context in which we sent the
+				 * message if asynchronous. We can't really do
+				 * anything about at it this point, but we
+				 * should at a minimum indicate that it looks
+				 * like something went wrong. Also don't bother
+				 * setting ERR bit or waking vchnl_wq since no
+				 * one will be waiting to read the async
+				 * message.
+				 */
+				if (ctlq_msg.cookie.mbx.chnl_retval) {
+					dev_err(&adapter->pdev->dev, "Failed to add MAC address: %d\n",
+						ctlq_msg.cookie.mbx.chnl_retval);
+				}
+				break;
+			}
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_ADD_MAC_ADDR,
+					   IDPF_VC_ADD_MAC_ADDR_ERR);
+			break;
+		case VIRTCHNL2_OP_DEL_MAC_ADDR:
+			if (test_and_clear_bit(__IDPF_DEL_MAC_REQ, adapter->flags)) {
+				/* Message was sent asynchronously. We don't
+				 * normally print errors here, instead
+				 * preferring to handle errors in the function
+				 * calling wait_for_event. However, we will
+				 * have lost the context in which we sent the
+				 * message if asynchronous. We can't really do
+				 * anything about at it this point, but we
+				 * should at a minimum indicate that it looks
+				 * like something went wrong. Also don't bother
+				 * setting ERR bit or waking vchnl_wq since no
+				 * one will be waiting to read the async
+				 * message.
+				 */
+				if (ctlq_msg.cookie.mbx.chnl_retval) {
+					dev_err(&adapter->pdev->dev, "Failed to delete MAC address: %d\n",
+						ctlq_msg.cookie.mbx.chnl_retval);
+				}
+				break;
+			}
+			idpf_recv_vchnl_op(adapter, vport, &ctlq_msg,
+					   IDPF_VC_DEL_MAC_ADDR,
+					   IDPF_VC_DEL_MAC_ADDR_ERR);
+			break;
+		case VIRTCHNL2_OP_EVENT:
+			if (idpf_set_msg_pending_bit(adapter, vport)) {
+				dev_info(&adapter->pdev->dev, "Timed out setting msg pending\n");
+			} else {
+				memcpy(vport->vc_msg,
+				       ctlq_msg.ctx.indirect.payload->va,
+				       min_t(int, payload_size,
+					     IDPF_DFLT_MBX_BUF_SIZE));
+				idpf_recv_event_msg(vport);
+			}
+			break;
+		default:
+			dev_warn(&adapter->pdev->dev,
+				 "Unhandled virtchnl response %d\n",
+				 ctlq_msg.cookie.mbx.chnl_opcode);
+			break;
+		} /* switch v_opcode */
+post_buffs:
+		if (ctlq_msg.data_len)
+			dma_mem = ctlq_msg.ctx.indirect.payload;
+		else
+			num_q_msg = 0;
+
+		err = idpf_ctlq_post_rx_buffs(&adapter->hw, adapter->hw.arq,
+					      &num_q_msg, &dma_mem);
+		/* If post failed clear the only buffer we supplied */
+		if (err && dma_mem)
+			dmam_free_coherent(&adapter->pdev->dev, dma_mem->size,
+					   dma_mem->va, dma_mem->pa);
+		/* Applies only if we are looking for a specific opcode */
+		if (work_done)
+			break;
+	}
+
+	return err;
+}
+
+/**
+ * __idpf_wait_for_event - wrapper function for wait on virtchannel response
+ * @adapter: Driver private data structure
+ * @vport: virtual port structure
+ * @state: check on state upon timeout
+ * @err_check: check if this specific error bit is set
+ * @timeout: Max time to wait
+ *
+ * Checks if state is set upon expiry of timeout.  Returns 0 on success,
+ * negative on failure.
+ */
+static int __idpf_wait_for_event(struct idpf_adapter *adapter,
+				 struct idpf_vport *vport,
+				 enum idpf_vport_vc_state state,
+				 enum idpf_vport_vc_state err_check,
+				 int timeout)
+{
+#define IDPF_MAX_WAIT 500
+	int time_to_wait, num_waits, event;
+	wait_queue_head_t *vchnl_wq;
+	unsigned long *vc_state;
+
+	time_to_wait = ((timeout <= IDPF_MAX_WAIT) ? timeout : IDPF_MAX_WAIT);
+	num_waits = ((timeout <= IDPF_MAX_WAIT) ? 1 : timeout / IDPF_MAX_WAIT);
+
+	if (vport) {
+		vchnl_wq = &vport->vchnl_wq;
+		vc_state = vport->vc_state;
+	} else {
+		vchnl_wq = &adapter->vchnl_wq;
+		vc_state = adapter->vc_state;
+	}
+
+	while (num_waits) {
+		/* If we are here and a reset is detected do not wait but
+		 * return. Reset timing is out of drivers control. So
+		 * while we are cleaning resources as part of reset if the
+		 * underlying HW mailbox is gone, wait on mailbox messages
+		 * is not meaningful
+		 */
+		if (idpf_is_reset_detected(adapter))
+			return 0;
+
+		event = wait_event_timeout(*vchnl_wq,
+					   test_and_clear_bit(state, vc_state),
+					   msecs_to_jiffies(time_to_wait));
+		if (event) {
+			if (test_and_clear_bit(err_check, vc_state)) {
+				dev_err(&adapter->pdev->dev, "VC response error %s\n",
+					idpf_vport_vc_state_str[err_check]);
+				return -EINVAL;
+			}
+			return 0;
+		}
+		num_waits--;
+	}
+
+	/* Timeout occurred */
+	dev_err(&adapter->pdev->dev, "VC timeout, state = %s\n",
+		idpf_vport_vc_state_str[state]);
+	return -ETIMEDOUT;
+}
+
+/**
+ * idpf_msec_wait_for_event - wait up to msec timeout for virtchnl response
+ * @adapter: Driver private data structure
+ * @vport: virtual port structure
+ * @state: check on state upon timeout
+ * @err_check: check if this specific error bit is set
+ * @timeout: Max time to wait
+ *
+ * Wait up to timeout msecs for virtchnl response. Returns 0 on success,
+ * negative on failure.
+ */
+int idpf_msec_wait_for_event(struct idpf_adapter *adapter,
+			     struct idpf_vport *vport,
+			     enum idpf_vport_vc_state state,
+			     enum idpf_vport_vc_state err_check,
+			     int timeout)
+{
+	return __idpf_wait_for_event(adapter, vport, state, err_check, timeout);
+}
+
+/**
+ * idpf_min_wait_for_event - wait for virtchannel response
+ * @adapter: Driver private data structure
+ * @vport: virtual port structure
+ * @state: check on state upon timeout
+ * @err_check: check if this specific error bit is set
+ *
+ * Returns 0 on success, negative on failure.
+ */
+static int idpf_min_wait_for_event(struct idpf_adapter *adapter,
+				   struct idpf_vport *vport,
+				   enum idpf_vport_vc_state state,
+				   enum idpf_vport_vc_state err_check)
+{
+	return __idpf_wait_for_event(adapter, vport, state, err_check,
+				     IDPF_WAIT_FOR_EVENT_TIMEO_MIN);
+}
+
+/**
+ * idpf_wait_for_event - wait for virtchannel response
+ * @adapter: Driver private data structure
+ * @vport: virtual port structure
+ * @state: check on state upon timeout after 500ms
+ * @err_check: check if this specific error bit is set
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_wait_for_event(struct idpf_adapter *adapter,
+			struct idpf_vport *vport,
+			enum idpf_vport_vc_state state,
+			enum idpf_vport_vc_state err_check)
+{
+	/* Increasing the timeout in __IDPF_INIT_SW flow to consider large
+	 * number of VF's mailbox message responses. When a message is received
+	 * on mailbox, this thread is wake up by the idpf_recv_mb_msg before the
+	 * timeout expires. Only in the error case i.e. if no message is
+	 * received on mailbox, we wait for the complete timeout which is
+	 * less likely to happen.
+	 */
+	return __idpf_wait_for_event(adapter, vport, state, err_check,
+				     IDPF_WAIT_FOR_EVENT_TIMEO);
+}
+
+/**
+ * idpf_wait_for_marker_event - wait for software marker response
+ * @vport: virtual port data structure
+ *
+ * Returns 0 success, negative on failure.
+ **/
+static int idpf_wait_for_marker_event(struct idpf_vport *vport)
+{
+	int event = 0;
+	int i;
+
+	for (i = 0; i < vport->num_txq; i++)
+		set_bit(__IDPF_Q_SW_MARKER, vport->txqs[i]->flags);
+
+	event = wait_event_timeout(vport->sw_marker_wq,
+				   test_and_clear_bit(__IDPF_VPORT_SW_MARKER,
+						      vport->flags),
+				   msecs_to_jiffies(500));
+
+	for (i = 0; i < vport->num_txq; i++)
+		clear_bit(__IDPF_Q_POLL_MODE, vport->txqs[i]->flags);
+
+	if (event)
+		return 0;
+
+	dev_warn(&vport->adapter->pdev->dev, "Failed to receive marker packets\n");
+	return -ETIMEDOUT;
+}
+
+/**
+ * idpf_send_ver_msg - send virtchnl version message
+ * @adapter: Driver specific private structure
+ *
+ * Send virtchnl version message.  Returns 0 on success, negative on failure.
+ */
+static int idpf_send_ver_msg(struct idpf_adapter *adapter)
+{
+	struct virtchnl2_version_info vvi;
+
+	if (adapter->virt_ver_maj) {
+		vvi.major = adapter->virt_ver_maj;
+		vvi.minor = adapter->virt_ver_min;
+	} else {
+		vvi.major = IDPF_VIRTCHNL_VERSION_MAJOR;
+		vvi.minor = IDPF_VIRTCHNL_VERSION_MINOR;
+	}
+
+	return idpf_send_mb_msg(adapter, VIRTCHNL2_OP_VERSION, sizeof(vvi),
+				(u8 *)&vvi);
+}
+
+/**
+ * idpf_recv_ver_msg - Receive virtchnl version message
+ * @adapter: Driver specific private structure
+ *
+ * Receive virtchnl version message. Returns 0 on success, -EAGAIN if we need
+ * to send version message again, otherwise negative on failure.
+ */
+static int idpf_recv_ver_msg(struct idpf_adapter *adapter)
+{
+	struct virtchnl2_version_info vvi;
+	int err = 0;
+
+	err = idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_VERSION, &vvi, sizeof(vvi));
+	if (err)
+		return err;
+
+	if (vvi.major > IDPF_VIRTCHNL_VERSION_MAJOR) {
+		dev_warn(&adapter->pdev->dev, "Virtchnl major version greater than supported\n");
+		return -EINVAL;
+	}
+	if (vvi.major == IDPF_VIRTCHNL_VERSION_MAJOR &&
+	    vvi.minor > IDPF_VIRTCHNL_VERSION_MINOR)
+		dev_warn(&adapter->pdev->dev, "Virtchnl minor version not matched\n");
+
+	/* If we have a mismatch, resend version to update receiver on what
+	 * version we will use.
+	 */
+	if (!adapter->virt_ver_maj &&
+	    vvi.major != IDPF_VIRTCHNL_VERSION_MAJOR &&
+	    vvi.minor != IDPF_VIRTCHNL_VERSION_MINOR)
+		err = -EAGAIN;
+
+	adapter->virt_ver_maj = vvi.major;
+	adapter->virt_ver_min = vvi.minor;
+
+	return err;
+}
+
+/**
+ * idpf_get_max_tx_hdr_size -- get the size of tx header
+ * @adapter: Driver specific private structure
+ */
+u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.max_tx_hdr_size);
+}
+
+/**
+ * idpf_send_get_caps_msg - Send virtchnl get capabilities message
+ * @adapter: Driver specific private structure
+ *
+ * Send virtchl get capabilities message. Returns 0 on success, negative on
+ * failure.
+ */
+static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
+{
+	struct virtchnl2_get_capabilities caps = {0};
+
+	caps.csum_caps =
+		cpu_to_le32(VIRTCHNL2_CAP_TX_CSUM_L3_IPV4	|
+			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_TCP	|
+			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_UDP	|
+			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	|
+			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_TCP	|
+			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_UDP	|
+			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	|
+			    VIRTCHNL2_CAP_TX_CSUM_GENERIC	|
+			    VIRTCHNL2_CAP_RX_CSUM_L3_IPV4	|
+			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	|
+			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	|
+			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|
+			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|
+			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	|
+			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP	|
+			    VIRTCHNL2_CAP_TX_CSUM_L3_SINGLE_TUNNEL |
+			    VIRTCHNL2_CAP_TX_CSUM_L3_DOUBLE_TUNNEL |
+			    VIRTCHNL2_CAP_RX_CSUM_L3_SINGLE_TUNNEL |
+			    VIRTCHNL2_CAP_RX_CSUM_L3_DOUBLE_TUNNEL |
+			    VIRTCHNL2_CAP_TX_CSUM_L4_SINGLE_TUNNEL |
+			    VIRTCHNL2_CAP_TX_CSUM_L4_DOUBLE_TUNNEL |
+			    VIRTCHNL2_CAP_RX_CSUM_L4_SINGLE_TUNNEL |
+			    VIRTCHNL2_CAP_RX_CSUM_L4_DOUBLE_TUNNEL |
+			    VIRTCHNL2_CAP_RX_CSUM_GENERIC);
+
+	caps.seg_caps =
+		cpu_to_le32(VIRTCHNL2_CAP_SEG_IPV4_TCP		|
+			    VIRTCHNL2_CAP_SEG_IPV4_UDP		|
+			    VIRTCHNL2_CAP_SEG_IPV4_SCTP		|
+			    VIRTCHNL2_CAP_SEG_IPV6_TCP		|
+			    VIRTCHNL2_CAP_SEG_IPV6_UDP		|
+			    VIRTCHNL2_CAP_SEG_IPV6_SCTP		|
+			    VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL	|
+			    VIRTCHNL2_CAP_SEG_TX_DOUBLE_TUNNEL	|
+			    VIRTCHNL2_CAP_SEG_GENERIC);
+
+	caps.rss_caps =
+		cpu_to_le64(VIRTCHNL2_CAP_RSS_IPV4_TCP		|
+			    VIRTCHNL2_CAP_RSS_IPV4_UDP		|
+			    VIRTCHNL2_CAP_RSS_IPV4_SCTP		|
+			    VIRTCHNL2_CAP_RSS_IPV4_OTHER	|
+			    VIRTCHNL2_CAP_RSS_IPV6_TCP		|
+			    VIRTCHNL2_CAP_RSS_IPV6_UDP		|
+			    VIRTCHNL2_CAP_RSS_IPV6_SCTP		|
+			    VIRTCHNL2_CAP_RSS_IPV6_OTHER	|
+			    VIRTCHNL2_CAP_RSS_IPV4_AH		|
+			    VIRTCHNL2_CAP_RSS_IPV4_ESP		|
+			    VIRTCHNL2_CAP_RSS_IPV4_AH_ESP	|
+			    VIRTCHNL2_CAP_RSS_IPV6_AH		|
+			    VIRTCHNL2_CAP_RSS_IPV6_ESP		|
+			    VIRTCHNL2_CAP_RSS_IPV6_AH_ESP);
+
+	caps.hsplit_caps =
+		cpu_to_le32(VIRTCHNL2_CAP_RX_HSPLIT_AT_L2	|
+			    VIRTCHNL2_CAP_RX_HSPLIT_AT_L3	|
+			    VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4	|
+			    VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6);
+
+	caps.rsc_caps =
+		cpu_to_le32(VIRTCHNL2_CAP_RSC_IPV4_TCP		|
+			    VIRTCHNL2_CAP_RSC_IPV4_SCTP		|
+			    VIRTCHNL2_CAP_RSC_IPV6_TCP		|
+			    VIRTCHNL2_CAP_RSC_IPV6_SCTP);
+
+	caps.other_caps =
+		cpu_to_le64(VIRTCHNL2_CAP_RDMA			|
+			    VIRTCHNL2_CAP_SRIOV			|
+			    VIRTCHNL2_CAP_MACFILTER		|
+			    VIRTCHNL2_CAP_FLOW_DIRECTOR		|
+			    VIRTCHNL2_CAP_SPLITQ_QSCHED		|
+			    VIRTCHNL2_CAP_CRC			|
+			    VIRTCHNL2_CAP_PROMISC		|
+			    VIRTCHNL2_CAP_INLINE_IPSEC		|
+			    VIRTCHNL2_CAP_EDT			|
+			    VIRTCHNL2_CAP_LOOPBACK		|
+			    VIRTCHNL2_CAP_RX_FLEX_DESC);
+
+	return idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS, sizeof(caps),
+				(u8 *)&caps);
+}
+
+/**
+ * idpf_recv_get_caps_msg - Receive virtchnl get capabilities message
+ * @adapter: Driver specific private structure
+ *
+ * Receive virtchnl get capabilities message.  Returns 0 on succes, negative on
+ * failure.
+ */
+static int idpf_recv_get_caps_msg(struct idpf_adapter *adapter)
+{
+	return idpf_recv_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS, &adapter->caps,
+				sizeof(struct virtchnl2_get_capabilities));
+}
+
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
+	int max_rx_q, max_tx_q;
+	u16 default_vports;
+	int err = 0;
+
+	default_vports = idpf_get_default_vports(adapter);
+	mutex_lock(&adapter->queue_lock);
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
+		err = -EINVAL;
+		goto rel_lock;
+	}
+
+	avail_queues->avail_rxq -= max_q->max_rxq;
+	avail_queues->avail_txq -= max_q->max_txq;
+	avail_queues->avail_bufq -= max_q->max_bufq;
+	avail_queues->avail_complq -= max_q->max_complq;
+
+rel_lock:
+	mutex_unlock(&adapter->queue_lock);
+
+	return err;
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
+	struct virtchnl2_get_capabilities *caps = &adapter->caps;
+
+	adapter->avail_queues.avail_rxq = le16_to_cpu(caps->max_rx_q);
+	adapter->avail_queues.avail_txq = le16_to_cpu(caps->max_tx_q);
+	adapter->avail_queues.avail_bufq = le16_to_cpu(caps->max_rx_bufq);
+	adapter->avail_queues.avail_complq = le16_to_cpu(caps->max_tx_complq);
+}
+
+/**
+ * idpf_get_reg_intr_vecs - Get vector queue register offset
+ * @vport: virtual port structure
+ * @reg_vals: Register offsets to store in
+ *
+ * Returns number of regsiters that got populated
+ */
+int idpf_get_reg_intr_vecs(struct idpf_vport *vport,
+			   struct idpf_vec_regs *reg_vals)
+{
+	struct virtchnl2_vector_chunks *chunks;
+	struct virtchnl2_vector_chunk *chunk;
+	struct idpf_vec_regs reg_val;
+	u16 num_vchunks, num_vec;
+	int num_regs = 0, i, j;
+
+	chunks = &vport->adapter->req_vec_chunks->vchunks;
+	num_vchunks = le16_to_cpu(chunks->num_vchunks);
+
+	for (j = 0; j < num_vchunks; j++) {
+		chunk = &chunks->vchunks[j];
+		num_vec = le16_to_cpu(chunk->num_vectors);
+		reg_val.dyn_ctl_reg = le32_to_cpu(chunk->dynctl_reg_start);
+		reg_val.itrn_reg = le32_to_cpu(chunk->itrn_reg_start);
+		reg_val.itrn_index_spacing = le32_to_cpu(chunk->itrn_index_spacing);
+		for (i = 0; i < num_vec; i++) {
+			reg_vals[num_regs].dyn_ctl_reg = reg_val.dyn_ctl_reg;
+			reg_vals[num_regs].itrn_reg = reg_val.itrn_reg;
+			reg_vals[num_regs].itrn_index_spacing =
+						reg_val.itrn_index_spacing;
+
+			reg_val.dyn_ctl_reg +=
+				le32_to_cpu(chunk->dynctl_reg_spacing);
+			reg_val.itrn_reg +=
+				le32_to_cpu(chunk->itrn_reg_spacing);
+			num_regs++;
+		}
+	}
+
+	return num_regs;
+}
+
+/**
+ * idpf_vport_get_q_reg - Get the queue registers for the vport
+ * @reg_vals: register values needing to be set
+ * @num_regs: amount we expect to fill
+ * @q_type: queue model
+ * @chunks: queue regs received over mailbox
+ */
+static int
+idpf_vport_get_q_reg(u32 *reg_vals, int num_regs, u32 q_type,
+		     struct virtchnl2_queue_reg_chunks *chunks)
+{
+	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
+	struct virtchnl2_queue_reg_chunk *chunk;
+	int reg_filled = 0, i;
+	u32 reg_val;
+	u16 num_q;
+
+	while (num_chunks--) {
+		chunk = &chunks->chunks[num_chunks];
+		if (le32_to_cpu(chunk->type) != q_type)
+			continue;
+		num_q = le32_to_cpu(chunk->num_queues);
+		reg_val = le64_to_cpu(chunk->qtail_reg_start);
+		for (i = 0; i < num_q; i++) {
+			if (reg_filled == num_regs)
+				break;
+			reg_vals[reg_filled++] = reg_val;
+			reg_val += le32_to_cpu(chunk->qtail_reg_spacing);
+		}
+	}
+
+	return reg_filled;
+}
+
+/**
+ * __idpf_queue_reg_init - initialize queue registers
+ * @vport: virtual port structure
+ * @reg_vals: registers we are initializing
+ * @num_regs: how many registers there are in total
+ * @q_type: queue model
+ *
+ * Return number of queues that are initialized
+ */
+static int
+__idpf_queue_reg_init(struct idpf_vport *vport, u32 *reg_vals,
+		      int num_regs, u32 q_type)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_queue *q;
+	int i, j, k = 0;
+
+	switch (q_type) {
+	case VIRTCHNL2_QUEUE_TYPE_TX:
+		for (i = 0; i < vport->num_txq_grp; i++) {
+			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+			for (j = 0; j < tx_qgrp->num_txq; j++) {
+				if (k == num_regs)
+					break;
+
+				tx_qgrp->txqs[j]->tail =
+					idpf_get_reg_addr(adapter, reg_vals[k]);
+				k++;
+			}
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			int num_rxq = rx_qgrp->singleq.num_rxq;
+
+			for (j = 0; j < num_rxq; j++) {
+				if (k == num_regs)
+					break;
+
+				q = rx_qgrp->singleq.rxqs[j];
+				q->tail = idpf_get_reg_addr(adapter,
+							    reg_vals[k]);
+				k++;
+			}
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
+				if (k == num_regs)
+					break;
+
+				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+				q->tail = idpf_get_reg_addr(adapter,
+							    reg_vals[k]);
+				k++;
+			}
+		}
+		break;
+	default:
+		break;
+	}
+
+	return k;
+}
+
+/**
+ * idpf_queue_reg_init - initialize queue registers
+ * @vport: virtual port structure
+ *
+ * Return 0 on success, negative on failure
+ */
+int idpf_queue_reg_init(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport *vport_params;
+	struct virtchnl2_queue_reg_chunks *chunks;
+	struct idpf_vport_config *vport_config;
+	u16 vport_idx = vport->idx;
+	int num_regs, ret = 0;
+	u32 *reg_vals;
+
+	/* We may never deal with more than 256 same type of queues */
+	reg_vals = kzalloc(sizeof(void *) * IDPF_LARGE_MAX_Q, GFP_KERNEL);
+	if (!reg_vals)
+		return -ENOMEM;
+
+	vport_config = vport->adapter->vport_config[vport_idx];
+	if (vport_config->req_qs_chunks) {
+		struct virtchnl2_add_queues *vc_aq =
+		  (struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
+		chunks = &vc_aq->chunks;
+	} else {
+		vport_params = (struct virtchnl2_create_vport *)
+			vport->adapter->vport_params_recvd[vport_idx];
+		chunks = &vport_params->chunks;
+	}
+
+	/* Initialize Tx queue tail register address */
+	num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
+					VIRTCHNL2_QUEUE_TYPE_TX,
+					chunks);
+	if (num_regs < vport->num_txq) {
+		ret = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+					 VIRTCHNL2_QUEUE_TYPE_TX);
+	if (num_regs < vport->num_txq) {
+		ret = -EINVAL;
+		goto free_reg_vals;
+	}
+
+	/* Initialize Rx/buffer queue tail register address based on Rx queue
+	 * model
+	 */
+	if (idpf_is_queue_model_split(vport->rxq_model)) {
+		num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
+						VIRTCHNL2_QUEUE_TYPE_RX_BUFFER,
+						chunks);
+		if (num_regs < vport->num_bufq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+
+		num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+						 VIRTCHNL2_QUEUE_TYPE_RX_BUFFER);
+		if (num_regs < vport->num_bufq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+	} else {
+		num_regs = idpf_vport_get_q_reg(reg_vals, IDPF_LARGE_MAX_Q,
+						VIRTCHNL2_QUEUE_TYPE_RX,
+						chunks);
+		if (num_regs < vport->num_rxq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+
+		num_regs = __idpf_queue_reg_init(vport, reg_vals, num_regs,
+						 VIRTCHNL2_QUEUE_TYPE_RX);
+		if (num_regs < vport->num_rxq) {
+			ret = -EINVAL;
+			goto free_reg_vals;
+		}
+	}
+
+free_reg_vals:
+	kfree(reg_vals);
+	return ret;
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
+	vport_msg = (struct virtchnl2_create_vport *)
+			adapter->vport_params_reqd[idx];
+	vport_msg->vport_type = cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
+	vport_msg->vport_index = cpu_to_le16(idx);
+
+	if (test_bit(__IDPF_REQ_TX_SPLITQ, adapter->flags))
+		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
+	else
+		vport_msg->txq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
+
+	if (test_bit(__IDPF_REQ_RX_SPLITQ, adapter->flags))
+		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
+	else
+		vport_msg->rxq_model = cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
+
+	err = idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Enough queues are not available");
+		return err;
+	}
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CREATE_VPORT, buf_size,
+			       (u8 *)vport_msg);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_CREATE_VPORT,
+				  IDPF_VC_CREATE_VPORT_ERR);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "Failed to receive create vport message");
+		return err;
+	}
+
+	if (!adapter->vport_params_recvd[idx]) {
+		adapter->vport_params_recvd[idx] = kzalloc(IDPF_DFLT_MBX_BUF_SIZE,
+							   GFP_KERNEL);
+		if (!adapter->vport_params_recvd[idx]) {
+			err = -ENOMEM;
+			goto clear_bit;
+		}
+	}
+
+	vport_msg = (struct virtchnl2_create_vport *)
+			adapter->vport_params_recvd[idx];
+	memcpy(vport_msg, adapter->vc_msg, IDPF_DFLT_MBX_BUF_SIZE);
+
+clear_bit:
+	clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
+	return err;
+}
+
+/**
+ * idpf_check_supported_desc_ids - Verify we have required descriptor support
+ * @vport: virtual port structure
+ *
+ * Return 0 on success, error on failure
+ */
+int idpf_check_supported_desc_ids(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_create_vport *vport_msg;
+	u64 rx_desc_ids, tx_desc_ids;
+
+	vport_msg = (struct virtchnl2_create_vport *)
+				adapter->vport_params_recvd[vport->idx];
+
+	rx_desc_ids = le64_to_cpu(vport_msg->rx_desc_ids);
+	tx_desc_ids = le64_to_cpu(vport_msg->tx_desc_ids);
+
+	if (vport->rxq_model == VIRTCHNL2_QUEUE_MODEL_SPLIT) {
+		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M)) {
+			dev_info(&adapter->pdev->dev, "RX descriptors not provided, using the default\n");
+			vport_msg->rx_desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
+		}
+	} else {
+		if (!(rx_desc_ids & VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M))
+			vport->base_rxd = true;
+	}
+
+	if (vport->txq_model != VIRTCHNL2_QUEUE_MODEL_SPLIT)
+		return 0;
+
+#define MIN_SUPPORT_TXDID (\
+	VIRTCHNL2_TXDID_FLEX_FLOW_SCHED |\
+	VIRTCHNL2_TXDID_FLEX_TSO_CTX |\
+	VIRTCHNL2_TXDID_FLEX_DATA)
+	if ((tx_desc_ids & MIN_SUPPORT_TXDID) != MIN_SUPPORT_TXDID) {
+		dev_info(&adapter->pdev->dev, "Minimum TX descriptor support not provided, using the default\n");
+		vport_msg->tx_desc_ids = cpu_to_le64(MIN_SUPPORT_TXDID);
+	}
+	return 0;
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
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DESTROY_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		return err;
+
+	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DESTROY_VPORT,
+				      IDPF_VC_DESTROY_VPORT_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_enable_vport_msg - Send virtchnl enable vport message
+ * @vport: virtual port data structure
+ *
+ * Send enable vport virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_enable_vport_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vport v_id;
+	int err;
+
+	v_id.vport_id = cpu_to_le32(vport->vport_id);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ENABLE_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_ENA_VPORT,
+				  IDPF_VC_ENA_VPORT_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_disable_vport_msg - Send virtchnl disable vport message
+ * @vport: virtual port data structure
+ *
+ * Send disable vport virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_disable_vport_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vport v_id;
+	int err;
+
+	v_id.vport_id = cpu_to_le32(vport->vport_id);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DISABLE_VPORT,
+			       sizeof(v_id), (u8 *)&v_id);
+	if (err)
+		return err;
+
+	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DIS_VPORT,
+				      IDPF_VC_DIS_VPORT_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_config_tx_queues_msg - Send virtchnl config tx queues message
+ * @vport: virtual port data structure
+ *
+ * Send config tx queues virtchnl message. Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
+{
+	struct virtchnl2_config_tx_queues *ctq = NULL;
+	int config_data_size, chunk_size, buf_size = 0;
+	int totqs, num_msgs, num_chunks;
+	struct virtchnl2_txq_info *qi;
+	int err = 0, i, k = 0;
+	bool alloc = false;
+
+	totqs = vport->num_txq + vport->num_complq;
+	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
+	if (!qi)
+		return -ENOMEM;
+
+	/* Populate the queue info buffer with all queue context info */
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+		int j;
+
+		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			qi[k].queue_id =
+				cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+			qi[k].model =
+				cpu_to_le16(vport->txq_model);
+			qi[k].type =
+				cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			qi[k].ring_len =
+				cpu_to_le16(tx_qgrp->txqs[j]->desc_count);
+			qi[k].dma_ring_addr =
+				cpu_to_le64(tx_qgrp->txqs[j]->dma);
+			if (idpf_is_queue_model_split(vport->txq_model)) {
+				struct idpf_queue *q = tx_qgrp->txqs[j];
+
+				qi[k].tx_compl_queue_id =
+					cpu_to_le16(tx_qgrp->complq->q_id);
+				qi[k].relative_queue_id = cpu_to_le16(j);
+
+				if (test_bit(__IDPF_Q_FLOW_SCH_EN, q->flags))
+					qi[k].sched_mode =
+					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_FLOW);
+				else
+					qi[k].sched_mode =
+					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
+			} else {
+				qi[k].sched_mode =
+					cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
+			}
+		}
+
+		if (idpf_is_queue_model_split(vport->txq_model)) {
+			qi[k].queue_id =
+				cpu_to_le32(tx_qgrp->complq->q_id);
+			qi[k].model =
+				cpu_to_le16(vport->txq_model);
+			qi[k].type =
+				cpu_to_le32(tx_qgrp->complq->q_type);
+			qi[k].ring_len =
+				cpu_to_le16(tx_qgrp->complq->desc_count);
+			qi[k].dma_ring_addr =
+				cpu_to_le64(tx_qgrp->complq->dma);
+			k++;
+		}
+	}
+
+	/* Make sure accounting agrees */
+	if (k != totqs) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	/* Chunk up the queue contexts into multiple messages to avoid
+	 * sending a control queue message buffer that is too large
+	 */
+	config_data_size = sizeof(struct virtchnl2_config_tx_queues);
+	chunk_size = sizeof(struct virtchnl2_txq_info);
+
+	num_chunks = IDPF_NUM_CHUNKS_PER_MSG(config_data_size, chunk_size) + 1;
+	if (totqs < num_chunks)
+		num_chunks = totqs;
+
+	num_msgs = totqs / num_chunks;
+	if (totqs % num_chunks)
+		num_msgs++;
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		if (!ctq || alloc) {
+			buf_size = (chunk_size * (num_chunks - 1)) +
+					config_data_size;
+			kfree(ctq);
+			ctq = kzalloc(buf_size, GFP_KERNEL);
+			if (!ctq) {
+				err = -ENOMEM;
+				goto error;
+			}
+		} else {
+			memset(ctq, 0, buf_size);
+		}
+
+		ctq->vport_id = cpu_to_le32(vport->vport_id);
+		ctq->num_qinfo = cpu_to_le16(num_chunks);
+		memcpy(ctq->qinfo, &qi[k], chunk_size * num_chunks);
+
+		err = idpf_send_mb_msg(vport->adapter,
+				       VIRTCHNL2_OP_CONFIG_TX_QUEUES,
+				       buf_size, (u8 *)ctq);
+		if (err)
+			goto mbx_error;
+
+		err = idpf_wait_for_event(vport->adapter, vport, IDPF_VC_CONFIG_TXQ,
+					  IDPF_VC_CONFIG_TXQ_ERR);
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		totqs -= num_chunks;
+		if (totqs < num_chunks) {
+			num_chunks = totqs;
+			alloc = true;
+		}
+
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+	}
+
+mbx_error:
+	kfree(ctq);
+error:
+	kfree(qi);
+	return err;
+}
+
+/**
+ * idpf_send_config_rx_queues_msg - Send virtchnl config rx queues message
+ * @vport: virtual port data structure
+ *
+ * Send config rx queues virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_config_rx_queues_msg(struct idpf_vport *vport)
+{
+	struct virtchnl2_config_rx_queues *crq = NULL;
+	int config_data_size, chunk_size, buf_size = 0;
+	int totqs, num_msgs, num_chunks;
+	struct virtchnl2_rxq_info *qi;
+	int err = 0, i, k = 0;
+	bool alloc = false;
+
+	totqs = vport->num_rxq + vport->num_bufq;
+	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
+	if (!qi)
+		return -ENOMEM;
+
+	/* Populate the queue info buffer with all queue context info */
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		int num_rxq;
+		int j;
+
+		if (!idpf_is_queue_model_split(vport->rxq_model))
+			goto setup_rxqs;
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
+			struct idpf_queue *bufq =
+				&rx_qgrp->splitq.bufq_sets[j].bufq;
+
+			qi[k].queue_id = cpu_to_le32(bufq->q_id);
+			qi[k].model = cpu_to_le16(vport->rxq_model);
+			qi[k].type = cpu_to_le32(bufq->q_type);
+			qi[k].desc_ids = cpu_to_le64(VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M);
+			qi[k].ring_len = cpu_to_le16(bufq->desc_count);
+			qi[k].dma_ring_addr = cpu_to_le64(bufq->dma);
+			qi[k].data_buffer_size = cpu_to_le32(bufq->rx_buf_size);
+			qi[k].buffer_notif_stride = bufq->rx_buf_stride;
+			qi[k].rx_buffer_low_watermark =
+				cpu_to_le16(bufq->rx_buffer_low_watermark);
+			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
+		}
+
+setup_rxqs:
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, k++) {
+			struct idpf_queue *rxq;
+
+			if (!idpf_is_queue_model_split(vport->rxq_model)) {
+				rxq = rx_qgrp->singleq.rxqs[j];
+				goto common_qi_fields;
+			}
+			rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			qi[k].rx_bufq1_id =
+			  cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[0].bufq.q_id);
+			if (vport->num_bufqs_per_qgrp > IDPF_SINGLE_BUFQ_PER_RXQ_GRP) {
+				qi[k].bufq2_ena = IDPF_BUFQ2_ENA;
+				qi[k].rx_bufq2_id =
+				  cpu_to_le16(rxq->rxq_grp->splitq.bufq_sets[1].bufq.q_id);
+			}
+			qi[k].rx_buffer_low_watermark =
+				cpu_to_le16(rxq->rx_buffer_low_watermark);
+			if (idpf_is_feature_ena(vport, NETIF_F_GRO_HW))
+				qi[k].qflags |= cpu_to_le16(VIRTCHNL2_RXQ_RSC);
+
+common_qi_fields:
+			if (rxq->rx_hsplit_en) {
+				qi[k].qflags =
+					cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
+				qi[k].hdr_buffer_size =
+					cpu_to_le16(rxq->rx_hbuf_size);
+			}
+			qi[k].queue_id = cpu_to_le32(rxq->q_id);
+			qi[k].model = cpu_to_le16(vport->rxq_model);
+			qi[k].type = cpu_to_le32(rxq->q_type);
+			qi[k].ring_len = cpu_to_le16(rxq->desc_count);
+			qi[k].dma_ring_addr = cpu_to_le64(rxq->dma);
+			qi[k].max_pkt_size = cpu_to_le32(rxq->rx_max_pkt_size);
+			qi[k].data_buffer_size = cpu_to_le32(rxq->rx_buf_size);
+			qi[k].qflags |=
+				cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
+			qi[k].desc_ids = cpu_to_le64(rxq->rxdids);
+		}
+	}
+
+	/* Make sure accounting agrees */
+	if (k != totqs) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	/* Chunk up the queue contexts into multiple messages to avoid
+	 * sending a control queue message buffer that is too large
+	 */
+	config_data_size = sizeof(struct virtchnl2_config_rx_queues);
+	chunk_size = sizeof(struct virtchnl2_rxq_info);
+
+	num_chunks = IDPF_NUM_CHUNKS_PER_MSG(config_data_size, chunk_size) + 1;
+	if (totqs < num_chunks)
+		num_chunks = totqs;
+
+	num_msgs = totqs / num_chunks;
+	if (totqs % num_chunks)
+		num_msgs++;
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		if (!crq || alloc) {
+			buf_size = (chunk_size * (num_chunks - 1)) +
+					config_data_size;
+			kfree(crq);
+			crq = kzalloc(buf_size, GFP_KERNEL);
+			if (!crq) {
+				err = -ENOMEM;
+				goto error;
+			}
+		} else {
+			memset(crq, 0, buf_size);
+		}
+
+		crq->vport_id = cpu_to_le32(vport->vport_id);
+		crq->num_qinfo = cpu_to_le16(num_chunks);
+		memcpy(crq->qinfo, &qi[k], chunk_size * num_chunks);
+
+		err = idpf_send_mb_msg(vport->adapter,
+				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
+				       buf_size, (u8 *)crq);
+		if (err)
+			goto mbx_error;
+
+		err = idpf_wait_for_event(vport->adapter, vport, IDPF_VC_CONFIG_RXQ,
+					  IDPF_VC_CONFIG_RXQ_ERR);
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		totqs -= num_chunks;
+		if (totqs < num_chunks) {
+			num_chunks = totqs;
+			alloc = true;
+		}
+
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+	}
+
+mbx_error:
+	kfree(crq);
+error:
+	kfree(qi);
+	return err;
+}
+
+/**
+ * idpf_send_ena_dis_queues_msg - Send virtchnl enable or disable
+ * queues message
+ * @vport: virtual port data structure
+ * @vc_op: virtchnl op code to send
+ *
+ * Send enable or disable queues virtchnl message. Returns 0 on success,
+ * negative on failure.
+ */
+static int idpf_send_ena_dis_queues_msg(struct idpf_vport *vport, u32 vc_op)
+{
+	int num_msgs, num_chunks, config_data_size, chunk_size;
+	int num_txq, num_rxq, num_q, buf_size, err = 0;
+	struct virtchnl2_del_ena_dis_queues *eq = NULL;
+	struct virtchnl2_queue_chunk *qc;
+	bool alloc = false;
+	int i, j, k = 0;
+
+	/* validate virtchnl op */
+	switch (vc_op) {
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	num_txq = vport->num_txq + vport->num_complq;
+	num_rxq = vport->num_rxq + vport->num_bufq;
+	num_q = num_txq + num_rxq;
+	buf_size = sizeof(struct virtchnl2_queue_chunk) * (num_q);
+	qc = kzalloc(buf_size, GFP_KERNEL);
+	if (!qc)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			qc[k].type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			qc[k].start_queue_id =
+					cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+			qc[k].num_queues = cpu_to_le32(1);
+		}
+	}
+	if (vport->num_txq != k) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		goto setup_rx;
+
+	for (i = 0; i < vport->num_txq_grp; i++, k++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		qc[k].type = cpu_to_le32(tx_qgrp->complq->q_type);
+		qc[k].start_queue_id =
+				cpu_to_le32(tx_qgrp->complq->q_id);
+		qc[k].num_queues = cpu_to_le32(1);
+	}
+	if (vport->num_complq != (k - vport->num_txq)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+setup_rx:
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, k++) {
+			if (idpf_is_queue_model_split(vport->rxq_model)) {
+				qc[k].start_queue_id =
+				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_id);
+				qc[k].type =
+				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]->rxq.q_type);
+			} else {
+				qc[k].start_queue_id =
+				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_id);
+				qc[k].type =
+				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_type);
+			}
+			qc[k].num_queues = cpu_to_le32(1);
+		}
+	}
+	if (vport->num_rxq != k - (vport->num_txq + vport->num_complq)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		goto send_msg;
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		struct idpf_queue *q;
+
+		for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
+			q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			qc[k].type = cpu_to_le32(q->q_type);
+			qc[k].start_queue_id = cpu_to_le32(q->q_id);
+			qc[k].num_queues = cpu_to_le32(1);
+		}
+	}
+	if (vport->num_bufq != k - (vport->num_txq +
+				       vport->num_complq +
+				       vport->num_rxq)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+send_msg:
+	/* Chunk up the queue info into multiple messages */
+	config_data_size = sizeof(struct virtchnl2_del_ena_dis_queues);
+	chunk_size = sizeof(struct virtchnl2_queue_chunk);
+
+	num_chunks = IDPF_NUM_CHUNKS_PER_MSG(config_data_size, chunk_size) + 1;
+	if (num_q < num_chunks)
+		num_chunks = num_q;
+
+	num_msgs = num_q / num_chunks;
+	if (num_q % num_chunks)
+		num_msgs++;
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		if (!eq || alloc) {
+			buf_size = (chunk_size * (num_chunks - 1)) +
+					config_data_size;
+			kfree(eq);
+			eq = kzalloc(buf_size, GFP_KERNEL);
+			if (!eq) {
+				err = -ENOMEM;
+				goto error;
+			}
+		} else {
+			memset(eq, 0, buf_size);
+		}
+		eq->vport_id = cpu_to_le32(vport->vport_id);
+		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
+		memcpy(eq->chunks.chunks, &qc[k], chunk_size * num_chunks);
+
+		err = idpf_send_mb_msg(vport->adapter, vc_op, buf_size,
+				       (u8 *)eq);
+		if (err)
+			goto mbx_error;
+		k += num_chunks;
+		num_q -= num_chunks;
+		if (num_q < num_chunks) {
+			num_chunks = num_q;
+			alloc = true;
+		}
+	}
+mbx_error:
+	kfree(eq);
+error:
+	kfree(qc);
+	return err;
+}
+
+/**
+ * idpf_send_map_unmap_queue_vector_msg - Send virtchnl map or unmap queue
+ * vector message
+ * @vport: virtual port data structure
+ * @map: true for map and false for unmap
+ *
+ * Send map or unmap queue vector virtchnl message.  Returns 0 on success,
+ * negative on failure.
+ */
+int idpf_send_map_unmap_queue_vector_msg(struct idpf_vport *vport, bool map)
+{
+	int num_msgs, num_chunks, config_data_size, chunk_size;
+	struct virtchnl2_queue_vector_maps *vqvm = NULL;
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_queue_vector *vqv;
+	int buf_size, num_q, err = 0;
+	bool alloc = false;
+	int i, j, k = 0;
+
+	num_q = vport->num_txq + vport->num_rxq;
+
+	buf_size = sizeof(struct virtchnl2_queue_vector) * num_q;
+	vqv = kzalloc(buf_size, GFP_KERNEL);
+	if (!vqv)
+		return -ENOMEM;
+
+	for (i = 0; i < vport->num_txq_grp; i++) {
+		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
+			vqv[k].queue_type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
+			vqv[k].queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
+
+			if (idpf_is_queue_model_split(vport->txq_model)) {
+				vqv[k].vector_id =
+				cpu_to_le16(tx_qgrp->complq->q_vector->v_idx);
+				vqv[k].itr_idx =
+				cpu_to_le32(tx_qgrp->complq->q_vector->tx_itr_idx);
+			} else {
+				vqv[k].vector_id =
+				cpu_to_le16(tx_qgrp->txqs[j]->q_vector->v_idx);
+				vqv[k].itr_idx =
+				cpu_to_le32(tx_qgrp->txqs[j]->q_vector->tx_itr_idx);
+			}
+		}
+	}
+
+	if (vport->num_txq != k) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	for (i = 0; i < vport->num_rxq_grp; i++) {
+		struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+		int num_rxq;
+
+		if (idpf_is_queue_model_split(vport->rxq_model))
+			num_rxq = rx_qgrp->splitq.num_rxq_sets;
+		else
+			num_rxq = rx_qgrp->singleq.num_rxq;
+
+		for (j = 0; j < num_rxq; j++, k++) {
+			struct idpf_queue *rxq;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+			else
+				rxq = rx_qgrp->singleq.rxqs[j];
+
+			vqv[k].queue_type = cpu_to_le32(rxq->q_type);
+			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
+			vqv[k].vector_id = cpu_to_le16(rxq->q_vector->v_idx);
+			vqv[k].itr_idx = cpu_to_le32(rxq->q_vector->rx_itr_idx);
+		}
+	}
+
+	if (idpf_is_queue_model_split(vport->txq_model)) {
+		if (vport->num_rxq != k - vport->num_complq) {
+			err = -EINVAL;
+			goto error;
+		}
+	} else {
+		if (vport->num_rxq != k - vport->num_txq) {
+			err = -EINVAL;
+			goto error;
+		}
+	}
+
+	/* Chunk up the vector info into multiple messages */
+	config_data_size = sizeof(struct virtchnl2_queue_vector_maps);
+	chunk_size = sizeof(struct virtchnl2_queue_vector);
+
+	num_chunks = IDPF_NUM_CHUNKS_PER_MSG(config_data_size, chunk_size) + 1;
+	if (num_q < num_chunks)
+		num_chunks = num_q;
+
+	num_msgs = num_q / num_chunks;
+	if (num_q % num_chunks)
+		num_msgs++;
+
+	for (i = 0, k = 0; i < num_msgs; i++) {
+		if (!vqvm || alloc) {
+			buf_size = (chunk_size * (num_chunks - 1)) +
+					config_data_size;
+			kfree(vqvm);
+			vqvm = kzalloc(buf_size, GFP_KERNEL);
+			if (!vqvm) {
+				err = -ENOMEM;
+				goto error;
+			}
+		} else {
+			memset(vqvm, 0, buf_size);
+		}
+		vqvm->vport_id = cpu_to_le32(vport->vport_id);
+		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
+		memcpy(vqvm->qv_maps, &vqv[k], chunk_size * num_chunks);
+
+		if (map) {
+			err = idpf_send_mb_msg(adapter,
+					       VIRTCHNL2_OP_MAP_QUEUE_VECTOR,
+					       buf_size, (u8 *)vqvm);
+			if (!err)
+				err = idpf_wait_for_event(adapter, vport,
+							  IDPF_VC_MAP_IRQ,
+							  IDPF_VC_MAP_IRQ_ERR);
+		} else {
+			err = idpf_send_mb_msg(adapter,
+					       VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
+					       buf_size, (u8 *)vqvm);
+			if (!err)
+				err =
+				idpf_min_wait_for_event(adapter, vport,
+							IDPF_VC_UNMAP_IRQ,
+							IDPF_VC_UNMAP_IRQ_ERR);
+		}
+		if (err)
+			goto mbx_error;
+
+		k += num_chunks;
+		num_q -= num_chunks;
+		if (num_q < num_chunks) {
+			num_chunks = num_q;
+			alloc = true;
+		}
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+	}
+mbx_error:
+	kfree(vqvm);
+error:
+	kfree(vqv);
+	return err;
+}
+
+/**
+ * idpf_send_enable_queues_msg - send enable queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send enable queues virtchnl message.  Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_enable_queues_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int err;
+
+	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_ENABLE_QUEUES);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_ENA_QUEUES,
+				  IDPF_VC_ENA_QUEUES_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_disable_queues_msg - send disable queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send disable queues virtchnl message.  Returns 0 on success, negative
+ * on failure.
+ */
+int idpf_send_disable_queues_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	int err, i;
+
+	err = idpf_send_ena_dis_queues_msg(vport, VIRTCHNL2_OP_DISABLE_QUEUES);
+	if (err)
+		return err;
+
+	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DIS_QUEUES,
+				      IDPF_VC_DIS_QUEUES_ERR);
+	if (err)
+		return err;
+
+	clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	/* switch to poll mode as interrupts will be disabled after disable
+	 * queues virtchnl message is sent
+	 */
+	for (i = 0; i < vport->num_txq; i++)
+		set_bit(__IDPF_Q_POLL_MODE, vport->txqs[i]->flags);
+
+	/* schedule the napi to receive all the marker packets */
+	for (i = 0; i < vport->num_q_vectors; i++)
+		napi_schedule(&vport->q_vectors[i].napi);
+
+	return idpf_wait_for_marker_event(vport);
+}
+
+/**
+ * idpf_convert_reg_to_queue_chunks - Copy queue chunk information to the right
+ * structure
+ * @dchunks: Destination chunks to store data to
+ * @schunks: Source chunks to copy data from
+ * @num_chunks: number of chunks to copy
+ */
+static void
+idpf_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk *dchunks,
+				 struct virtchnl2_queue_reg_chunk *schunks,
+				 u16 num_chunks)
+{
+	u16 i;
+
+	for (i = 0; i < num_chunks; i++) {
+		dchunks[i].type = schunks[i].type;
+		dchunks[i].start_queue_id = schunks[i].start_queue_id;
+		dchunks[i].num_queues = schunks[i].num_queues;
+	}
+}
+
+/**
+ * idpf_send_delete_queues_msg - send delete queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send delete queues virtchnl message. Return 0 on success, negative on
+ * failure.
+ */
+int idpf_send_delete_queues_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_create_vport *vport_params;
+	struct virtchnl2_queue_reg_chunks *chunks;
+	struct virtchnl2_del_ena_dis_queues *eq;
+	struct idpf_vport_config *vport_config;
+	u16 vport_idx = vport->idx;
+	int buf_size, err;
+	u16 num_chunks;
+
+	vport_config = adapter->vport_config[vport_idx];
+	if (vport_config->req_qs_chunks) {
+		struct virtchnl2_add_queues *vc_aq =
+			(struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
+		chunks = &vc_aq->chunks;
+	} else {
+		vport_params = (struct virtchnl2_create_vport *)
+				vport->adapter->vport_params_recvd[vport_idx];
+		chunks = &vport_params->chunks;
+	}
+
+	num_chunks = le16_to_cpu(chunks->num_chunks);
+	buf_size = sizeof(struct virtchnl2_del_ena_dis_queues) +
+			  (sizeof(struct virtchnl2_queue_chunk) *
+			  (num_chunks - 1));
+
+	eq = kzalloc(buf_size, GFP_KERNEL);
+	if (!eq)
+		return -ENOMEM;
+
+	eq->vport_id = cpu_to_le32(vport->vport_id);
+	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
+
+	idpf_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks->chunks,
+					 num_chunks);
+
+	err = idpf_send_mb_msg(vport->adapter, VIRTCHNL2_OP_DEL_QUEUES,
+			       buf_size, (u8 *)eq);
+	if (err)
+		goto error;
+
+	err = idpf_min_wait_for_event(adapter, vport, IDPF_VC_DEL_QUEUES,
+				      IDPF_VC_DEL_QUEUES_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+error:
+	kfree(eq);
+	return err;
+}
+
+/**
+ * idpf_send_config_queues_msg - Send config queues virtchnl message
+ * @vport: Virtual port private data structure
+ *
+ * Will send config queues virtchnl message. Returns 0 on success, negative on
+ * failure.
+ */
+int idpf_send_config_queues_msg(struct idpf_vport *vport)
+{
+	int err;
+
+	err = idpf_send_config_tx_queues_msg(vport);
+	if (err)
+		return err;
+
+	return idpf_send_config_rx_queues_msg(vport);
+}
+
+/**
+ * idpf_send_add_queues_msg - Send virtchnl add queues message
+ * @vport: Virtual port private data structure
+ * @num_tx_q: number of transmit queues
+ * @num_complq: number of transmit completion queues
+ * @num_rx_q: number of receive queues
+ * @num_rx_bufq: number of receive buffer queues
+ *
+ * Returns 0 on success, negative on failure. vport _MUST_ be const here as
+ * we should not change any fields within vport itself in this function.
+ */
+int idpf_send_add_queues_msg(const struct idpf_vport *vport, u16 num_tx_q,
+			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_vport_config *vport_config;
+	struct virtchnl2_add_queues aq = {0};
+	struct virtchnl2_add_queues *vc_msg;
+	u16 vport_idx = vport->idx;
+	int size, err;
+
+	vport_config = adapter->vport_config[vport_idx];
+
+	aq.vport_id = cpu_to_le32(vport->vport_id);
+	aq.num_tx_q = cpu_to_le16(num_tx_q);
+	aq.num_tx_complq = cpu_to_le16(num_complq);
+	aq.num_rx_q = cpu_to_le16(num_rx_q);
+	aq.num_rx_bufq = cpu_to_le16(num_rx_bufq);
+
+	err = idpf_send_mb_msg(adapter,
+			       VIRTCHNL2_OP_ADD_QUEUES,
+			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq);
+	if (err)
+		return err;
+
+	/* We want vport to be const to prevent incidental code changes making
+	 * changes to the vport config. We're making a special exception here
+	 * to discard const to use the virtchnl.
+	 */
+	err = idpf_wait_for_event(adapter, (struct idpf_vport *)vport,
+				  IDPF_VC_ADD_QUEUES, IDPF_VC_ADD_QUEUES_ERR);
+	if (err)
+		return err;
+
+	kfree(vport_config->req_qs_chunks);
+	vport_config->req_qs_chunks = NULL;
+
+	vc_msg = (struct virtchnl2_add_queues *)vport->vc_msg;
+	/* compare vc_msg num queues with vport num queues */
+	if (le16_to_cpu(vc_msg->num_tx_q) != num_tx_q ||
+	    le16_to_cpu(vc_msg->num_rx_q) != num_rx_q ||
+	    le16_to_cpu(vc_msg->num_tx_complq) != num_complq ||
+	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	size = sizeof(struct virtchnl2_add_queues) +
+			((le16_to_cpu(vc_msg->chunks.num_chunks) - 1) *
+			sizeof(struct virtchnl2_queue_reg_chunk));
+	vport_config->req_qs_chunks = kzalloc(size, GFP_KERNEL);
+	if (!vport_config->req_qs_chunks) {
+		err = -ENOMEM;
+		goto error;
+	}
+	memcpy(vport_config->req_qs_chunks, vc_msg, size);
+error:
+	clear_bit(__IDPF_VPORT_VC_MSG_PENDING,
+		  ((struct idpf_vport *)vport)->flags);
+	return err;
+}
+
+/**
+ * idpf_send_alloc_vectors_msg - Send virtchnl alloc vectors message
+ * @adapter: Driver specific private structure
+ * @num_vectors: number of vectors to be allocated
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_alloc_vectors_msg(struct idpf_adapter *adapter, u16 num_vectors)
+{
+	struct virtchnl2_alloc_vectors *alloc_vec, *rcvd_vec;
+	struct virtchnl2_alloc_vectors ac = {0};
+	u16 num_vchunks;
+	int size, err;
+
+	ac.num_vectors = cpu_to_le16(num_vectors);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_ALLOC_VECTORS,
+			       sizeof(ac), (u8 *)&ac);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_ALLOC_VECTORS,
+				  IDPF_VC_ALLOC_VECTORS_ERR);
+	if (err)
+		return err;
+
+	rcvd_vec = (struct virtchnl2_alloc_vectors *)adapter->vc_msg;
+	num_vchunks = le16_to_cpu(rcvd_vec->vchunks.num_vchunks);
+
+	size = sizeof(struct virtchnl2_alloc_vectors) +
+		((num_vchunks - 1) * sizeof(struct virtchnl2_vector_chunk));
+
+	if (size > sizeof(adapter->vc_msg)) {
+		err = -EINVAL;
+		goto error;
+	}
+
+	kfree(adapter->req_vec_chunks);
+	adapter->req_vec_chunks = NULL;
+	adapter->req_vec_chunks = kzalloc(size, GFP_KERNEL);
+	if (!adapter->req_vec_chunks) {
+		err = -ENOMEM;
+		goto error;
+	}
+	memcpy(adapter->req_vec_chunks, adapter->vc_msg, size);
+
+	alloc_vec = adapter->req_vec_chunks;
+	if (le16_to_cpu(alloc_vec->num_vectors) < num_vectors) {
+		kfree(adapter->req_vec_chunks);
+		adapter->req_vec_chunks = NULL;
+		err = -EINVAL;
+	}
+error:
+	clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
+	return err;
+}
+
+/**
+ * idpf_send_dealloc_vectors_msg - Send virtchnl de allocate vectors message
+ * @adapter: Driver specific private structure
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_dealloc_vectors_msg(struct idpf_adapter *adapter)
+{
+	struct virtchnl2_vector_chunks *vcs;
+	struct virtchnl2_alloc_vectors *ac;
+	int buf_size, err;
+
+	ac = adapter->req_vec_chunks;
+	vcs = &ac->vchunks;
+
+	buf_size = sizeof(struct virtchnl2_vector_chunks) +
+			((le16_to_cpu(vcs->num_vchunks) - 1) *
+			sizeof(struct virtchnl2_vector_chunk));
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_DEALLOC_VECTORS, buf_size,
+			       (u8 *)vcs);
+	if (err)
+		return err;
+	err = idpf_min_wait_for_event(adapter, NULL, IDPF_VC_DEALLOC_VECTORS,
+				      IDPF_VC_DEALLOC_VECTORS_ERR);
+	if (err)
+		return err;
+
+	kfree(adapter->req_vec_chunks);
+	adapter->req_vec_chunks = NULL;
+	clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
+	return err;
+}
+
+/**
+ * idpf_get_max_vfs - Get max number of vfs supported
+ * @adapter: Driver specific private structure
+ *
+ * Returns max number of VFs
+ */
+static int idpf_get_max_vfs(struct idpf_adapter *adapter)
+{
+	return le16_to_cpu(adapter->caps.max_sriov_vfs);
+}
+
+/**
+ * idpf_send_set_sriov_vfs_msg - Send virtchnl set sriov vfs message
+ * @adapter: Driver specific private structure
+ * @num_vfs: number of virtual functions to be created
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
+{
+	struct virtchnl2_sriov_vfs_info svi = {0};
+	int err;
+
+	svi.num_vfs = cpu_to_le16(num_vfs);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_SRIOV_VFS,
+			       sizeof(svi), (u8 *)&svi);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, NULL, IDPF_VC_SET_SRIOV_VFS,
+				  IDPF_VC_SET_SRIOV_VFS_ERR);
+	if (!err)
+		clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_get_stats_msg - Send virtchnl get statistics message
+ * @vport: vport to get stats for
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_get_stats_msg(struct idpf_vport *vport)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_vport_stats stats_msg = {0};
+	struct virtchnl2_vport_stats *stats;
+	int err = 0;
+
+	/* Don't send get_stats message if the link is down */
+	if (vport->state <= __IDPF_VPORT_DOWN)
+		return err;
+
+	stats_msg.vport_id = cpu_to_le32(vport->vport_id);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_STATS,
+			       sizeof(struct virtchnl2_vport_stats),
+			       (u8 *)&stats_msg);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_STATS,
+				  IDPF_VC_GET_STATS_ERR);
+	if (err)
+		return err;
+
+	stats = (struct virtchnl2_vport_stats *)vport->vc_msg;
+
+	vport->netstats.rx_packets = le64_to_cpu(stats->rx_unicast) +
+				     le64_to_cpu(stats->rx_multicast) +
+				     le64_to_cpu(stats->rx_broadcast);
+	vport->netstats.rx_bytes = le64_to_cpu(stats->rx_bytes);
+	vport->netstats.rx_dropped = le64_to_cpu(stats->rx_discards);
+	vport->netstats.rx_over_errors = le64_to_cpu(stats->rx_overflow_drop);
+	vport->netstats.rx_length_errors = le64_to_cpu(stats->rx_invalid_frame_length);
+
+	vport->netstats.tx_packets = le64_to_cpu(stats->tx_unicast) +
+				     le64_to_cpu(stats->tx_multicast) +
+				     le64_to_cpu(stats->tx_broadcast);
+	vport->netstats.tx_bytes = le64_to_cpu(stats->tx_bytes);
+	vport->netstats.tx_errors = le64_to_cpu(stats->tx_errors);
+	vport->netstats.tx_dropped = le64_to_cpu(stats->tx_discards);
+
+	vport->port_stats.vport_stats = *stats;
+
+	clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_get_set_rss_hash_msg - Send set or get rss hash message
+ * @vport: virtual port data structure
+ * @get: flag to get or set rss hash
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_get_set_rss_hash_msg(struct idpf_vport *vport, bool get)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_hash rh = {0};
+	struct idpf_rss_data *rss_data;
+	int err;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	rh.vport_id = cpu_to_le32(vport->vport_id);
+	rh.ptype_groups = cpu_to_le64(rss_data->rss_hash);
+
+	if (!get)
+		goto do_set;
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_HASH,
+			       sizeof(rh), (u8 *)&rh);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_HASH,
+				  IDPF_VC_GET_RSS_HASH_ERR);
+	if (err)
+		return err;
+
+	memcpy(&rh, vport->vc_msg, sizeof(rh));
+	rss_data->rss_hash = le64_to_cpu(rh.ptype_groups);
+	/* Leave the buffer clean for next message */
+	memset(vport->vc_msg, 0, IDPF_DFLT_MBX_BUF_SIZE);
+	clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return 0;
+
+do_set:
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_HASH,
+			       sizeof(rh), (u8 *)&rh);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_HASH,
+				  IDPF_VC_SET_RSS_HASH_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_send_get_set_rss_lut_msg - Send virtchnl get or set rss lut message
+ * @vport: virtual port data structure
+ * @get: flag to set or get rss look up table
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_lut *recv_rl;
+	struct idpf_rss_data *rss_data;
+	struct virtchnl2_rss_lut *rl;
+	int buf_size, lut_buf_size;
+	int i, err = 0;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	buf_size = sizeof(struct virtchnl2_rss_lut) +
+		       (sizeof(u32) * (rss_data->rss_lut_size - 1));
+	rl = kzalloc(buf_size, GFP_KERNEL);
+	if (!rl)
+		return -ENOMEM;
+
+	rl->vport_id = cpu_to_le32(vport->vport_id);
+	if (!get) {
+		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
+		for (i = 0; i < rss_data->rss_lut_size; i++)
+			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
+
+		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_LUT,
+				       buf_size, (u8 *)rl);
+		if (err)
+			goto done;
+
+		err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_LUT,
+					  IDPF_VC_SET_RSS_LUT_ERR);
+		if (!err)
+			clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+		goto done;
+	}
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_LUT,
+			       buf_size, (u8 *)rl);
+	if (err)
+		goto done;
+
+	err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_LUT,
+				  IDPF_VC_GET_RSS_LUT_ERR);
+	if (err)
+		goto done;
+
+	recv_rl = (struct virtchnl2_rss_lut *)vport->vc_msg;
+	if (rss_data->rss_lut_size == le16_to_cpu(recv_rl->lut_entries))
+		goto do_memcpy;
+
+	rss_data->rss_lut_size = le16_to_cpu(recv_rl->lut_entries);
+	kfree(rss_data->rss_lut);
+
+	lut_buf_size = rss_data->rss_lut_size * sizeof(u32);
+	rss_data->rss_lut = kzalloc(lut_buf_size, GFP_KERNEL);
+	if (!rss_data->rss_lut) {
+		rss_data->rss_lut_size = 0;
+		/* Leave the buffer clean */
+		memset(vport->vc_msg, 0, IDPF_DFLT_MBX_BUF_SIZE);
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+		err = -ENOMEM;
+		goto done;
+	}
+
+do_memcpy:
+	memcpy(rss_data->rss_lut, vport->vc_msg, rss_data->rss_lut_size);
+	/* Leave the buffer clean for next message */
+	memset(vport->vc_msg, 0, IDPF_DFLT_MBX_BUF_SIZE);
+	clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+done:
+	kfree(rl);
+	return err;
+}
+
+/**
+ * idpf_send_get_set_rss_key_msg - Send virtchnl get or set rss key message
+ * @vport: virtual port data structure
+ * @get: flag to set or get rss look up table
+ *
+ * Returns 0 on success, negative on failure
+ */
+int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get)
+{
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_rss_key *recv_rk;
+	struct idpf_rss_data *rss_data;
+	struct virtchnl2_rss_key *rk;
+	int i, buf_size, err = 0;
+
+	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	buf_size = sizeof(struct virtchnl2_rss_key) +
+		       (sizeof(u8) * (rss_data->rss_key_size - 1));
+	rk = kzalloc(buf_size, GFP_KERNEL);
+	if (!rk)
+		return -ENOMEM;
+	rk->vport_id = cpu_to_le32(vport->vport_id);
+
+	if (get) {
+		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_RSS_KEY,
+				       buf_size, (u8 *)rk);
+		if (err)
+			goto error;
+
+		err = idpf_wait_for_event(adapter, vport, IDPF_VC_GET_RSS_KEY,
+					  IDPF_VC_GET_RSS_KEY_ERR);
+		if (err)
+			goto error;
+
+		recv_rk = (struct virtchnl2_rss_key *)vport->vc_msg;
+		if (rss_data->rss_key_size !=
+		    le16_to_cpu(recv_rk->key_len)) {
+			rss_data->rss_key_size =
+				min_t(u16, NETDEV_RSS_KEY_LEN,
+				      le16_to_cpu(recv_rk->key_len));
+			kfree(rss_data->rss_key);
+			rss_data->rss_key = kzalloc(rss_data->rss_key_size,
+						    GFP_KERNEL);
+			if (!rss_data->rss_key) {
+				rss_data->rss_key_size = 0;
+				/* Leave the buffer clean */
+				memset(vport->vc_msg, 0,
+				       IDPF_DFLT_MBX_BUF_SIZE);
+				clear_bit(__IDPF_VPORT_VC_MSG_PENDING,
+					  vport->flags);
+				err = -ENOMEM;
+				goto error;
+			}
+		}
+		memcpy(rss_data->rss_key, vport->vc_msg,
+		       rss_data->rss_key_size);
+		/* Leave the buffer clean for next message */
+		memset(vport->vc_msg, 0, IDPF_DFLT_MBX_BUF_SIZE);
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+	} else {
+		rk->key_len = cpu_to_le16(rss_data->rss_key_size);
+		for (i = 0; i < rss_data->rss_key_size; i++)
+			rk->key[i] = rss_data->rss_key[i];
+
+		err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_SET_RSS_KEY,
+				       buf_size, (u8 *)rk);
+		if (err)
+			goto error;
+
+		err = idpf_wait_for_event(adapter, vport, IDPF_VC_SET_RSS_KEY,
+					  IDPF_VC_SET_RSS_KEY_ERR);
+		if (!err)
+			clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+	}
+error:
+	kfree(rk);
+	return err;
+}
+
+/**
+ * idpf_fill_ptype_lookup - Fill L3 specific fields in ptype lookup table
+ * @ptype: ptype lookup table
+ * @pstate: state machine for ptype lookup table
+ * @ipv4: ipv4 or ipv6
+ * @frag: fragmentation allowed
+ *
+ */
+static void idpf_fill_ptype_lookup(struct idpf_rx_ptype_decoded *ptype,
+				   struct idpf_ptype_state *pstate,
+				   bool ipv4, bool frag)
+{
+	if (!pstate->outer_ip || !pstate->outer_frag) {
+		ptype->outer_ip = IDPF_RX_PTYPE_OUTER_IP;
+		pstate->outer_ip = true;
+
+		if (ipv4)
+			ptype->outer_ip_ver = IDPF_RX_PTYPE_OUTER_IPV4;
+		else
+			ptype->outer_ip_ver = IDPF_RX_PTYPE_OUTER_IPV6;
+
+		if (frag) {
+			ptype->outer_frag = IDPF_RX_PTYPE_FRAG;
+			pstate->outer_frag = true;
+		}
+	} else {
+		ptype->tunnel_type = IDPF_RX_PTYPE_TUNNEL_IP_IP;
+		pstate->tunnel_state = IDPF_PTYPE_TUNNEL_IP;
+
+		if (ipv4)
+			ptype->tunnel_end_prot =
+					IDPF_RX_PTYPE_TUNNEL_END_IPV4;
+		else
+			ptype->tunnel_end_prot =
+					IDPF_RX_PTYPE_TUNNEL_END_IPV6;
+
+		if (frag)
+			ptype->tunnel_end_frag = IDPF_RX_PTYPE_FRAG;
+	}
+}
+
+/**
+ * idpf_send_get_rx_ptype_msg - Send virtchnl for ptype info
+ * @vport: virtual port data structure
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
+{
+	struct idpf_rx_ptype_decoded *ptype_lkup = vport->rx_ptype_lkup;
+	struct virtchnl2_get_ptype_info *get_ptype_info, *ptype_info;
+	int max_ptype, ptypes_recvd = 0, len, ptype_offset;
+	struct idpf_adapter *adapter = vport->adapter;
+	int err = 0, i, j, k = 0;
+
+	if (idpf_is_queue_model_split(vport->rxq_model))
+		max_ptype = IDPF_RX_MAX_PTYPE;
+	else
+		max_ptype = IDPF_RX_MAX_BASE_PTYPE;
+
+	memset(vport->rx_ptype_lkup, 0, sizeof(vport->rx_ptype_lkup));
+
+	len = sizeof(struct virtchnl2_get_ptype_info);
+	get_ptype_info = kzalloc(len, GFP_KERNEL);
+	if (!get_ptype_info)
+		return -ENOMEM;
+
+	get_ptype_info->start_ptype_id = 0;
+	get_ptype_info->num_ptypes = cpu_to_le16(max_ptype);
+
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_GET_PTYPE_INFO,
+			       len, (u8 *)get_ptype_info);
+	if (err)
+		goto get_ptype_rel;
+
+	while (ptypes_recvd < max_ptype) {
+		err = idpf_wait_for_event(adapter, NULL, IDPF_VC_GET_PTYPE_INFO,
+					  IDPF_VC_GET_PTYPE_INFO_ERR);
+		if (err)
+			goto get_ptype_rel;
+
+		len = IDPF_DFLT_MBX_BUF_SIZE;
+		ptype_info = kzalloc(len, GFP_KERNEL);
+		if (!ptype_info) {
+			err = -ENOMEM;
+			goto clear_vc_flag;
+		}
+
+		memcpy(ptype_info, adapter->vc_msg, len);
+
+		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
+		if (ptypes_recvd > max_ptype) {
+			err = -EINVAL;
+			goto ptype_rel;
+		}
+
+		ptype_offset = sizeof(struct virtchnl2_get_ptype_info) -
+						sizeof(struct virtchnl2_ptype);
+
+		for (i = 0; i < le16_to_cpu(ptype_info->num_ptypes); i++) {
+			struct idpf_ptype_state pstate = { 0 };
+			struct virtchnl2_ptype *ptype;
+			u16 id;
+
+			ptype = (struct virtchnl2_ptype *)
+					((u8 *)ptype_info + ptype_offset);
+
+			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
+			if (ptype_offset > len) {
+				err = -EINVAL;
+				goto ptype_rel;
+			}
+
+			if (le16_to_cpu(ptype->ptype_id_10) == 0xFFFF)
+				goto ptype_rel;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				k = le16_to_cpu(ptype->ptype_id_10);
+			else
+				k = ptype->ptype_id_8;
+
+			if (ptype->proto_id_count)
+				ptype_lkup[k].known = 1;
+
+			for (j = 0; j < ptype->proto_id_count; j++) {
+				id = le16_to_cpu(ptype->proto_id[j]);
+				switch (id) {
+				case VIRTCHNL2_PROTO_HDR_GRE:
+					if (pstate.tunnel_state ==
+							IDPF_PTYPE_TUNNEL_IP) {
+						ptype_lkup[k].tunnel_type =
+						IDPF_RX_PTYPE_TUNNEL_IP_GRENAT;
+						pstate.tunnel_state |=
+						IDPF_PTYPE_TUNNEL_IP_GRENAT;
+					}
+					break;
+				case VIRTCHNL2_PROTO_HDR_MAC:
+					ptype_lkup[k].outer_ip =
+						IDPF_RX_PTYPE_OUTER_L2;
+					if (pstate.tunnel_state ==
+							IDPF_TUN_IP_GRE) {
+						ptype_lkup[k].tunnel_type =
+						IDPF_RX_PTYPE_TUNNEL_IP_GRENAT_MAC;
+						pstate.tunnel_state |=
+						IDPF_PTYPE_TUNNEL_IP_GRENAT_MAC;
+					}
+					break;
+				case VIRTCHNL2_PROTO_HDR_IPV4:
+					idpf_fill_ptype_lookup(&ptype_lkup[k],
+							       &pstate, true,
+							       false);
+					break;
+				case VIRTCHNL2_PROTO_HDR_IPV6:
+					idpf_fill_ptype_lookup(&ptype_lkup[k],
+							       &pstate, false,
+							       false);
+					break;
+				case VIRTCHNL2_PROTO_HDR_IPV4_FRAG:
+					idpf_fill_ptype_lookup(&ptype_lkup[k],
+							       &pstate, true,
+							       true);
+					break;
+				case VIRTCHNL2_PROTO_HDR_IPV6_FRAG:
+					idpf_fill_ptype_lookup(&ptype_lkup[k],
+							       &pstate, false,
+							       true);
+					break;
+				case VIRTCHNL2_PROTO_HDR_UDP:
+					ptype_lkup[k].inner_prot =
+					IDPF_RX_PTYPE_INNER_PROT_UDP;
+					break;
+				case VIRTCHNL2_PROTO_HDR_TCP:
+					ptype_lkup[k].inner_prot =
+					IDPF_RX_PTYPE_INNER_PROT_TCP;
+					break;
+				case VIRTCHNL2_PROTO_HDR_SCTP:
+					ptype_lkup[k].inner_prot =
+					IDPF_RX_PTYPE_INNER_PROT_SCTP;
+					break;
+				case VIRTCHNL2_PROTO_HDR_ICMP:
+					ptype_lkup[k].inner_prot =
+					IDPF_RX_PTYPE_INNER_PROT_ICMP;
+					break;
+				case VIRTCHNL2_PROTO_HDR_PAY:
+					ptype_lkup[k].payload_layer =
+						IDPF_RX_PTYPE_PAYLOAD_LAYER_PAY2;
+					break;
+				case VIRTCHNL2_PROTO_HDR_ICMPV6:
+				case VIRTCHNL2_PROTO_HDR_IPV6_EH:
+				case VIRTCHNL2_PROTO_HDR_PRE_MAC:
+				case VIRTCHNL2_PROTO_HDR_POST_MAC:
+				case VIRTCHNL2_PROTO_HDR_ETHERTYPE:
+				case VIRTCHNL2_PROTO_HDR_SVLAN:
+				case VIRTCHNL2_PROTO_HDR_CVLAN:
+				case VIRTCHNL2_PROTO_HDR_MPLS:
+				case VIRTCHNL2_PROTO_HDR_MMPLS:
+				case VIRTCHNL2_PROTO_HDR_PTP:
+				case VIRTCHNL2_PROTO_HDR_CTRL:
+				case VIRTCHNL2_PROTO_HDR_LLDP:
+				case VIRTCHNL2_PROTO_HDR_ARP:
+				case VIRTCHNL2_PROTO_HDR_ECP:
+				case VIRTCHNL2_PROTO_HDR_EAPOL:
+				case VIRTCHNL2_PROTO_HDR_PPPOD:
+				case VIRTCHNL2_PROTO_HDR_PPPOE:
+				case VIRTCHNL2_PROTO_HDR_IGMP:
+				case VIRTCHNL2_PROTO_HDR_AH:
+				case VIRTCHNL2_PROTO_HDR_ESP:
+				case VIRTCHNL2_PROTO_HDR_IKE:
+				case VIRTCHNL2_PROTO_HDR_NATT_KEEP:
+				case VIRTCHNL2_PROTO_HDR_L2TPV2:
+				case VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL:
+				case VIRTCHNL2_PROTO_HDR_L2TPV3:
+				case VIRTCHNL2_PROTO_HDR_GTP:
+				case VIRTCHNL2_PROTO_HDR_GTP_EH:
+				case VIRTCHNL2_PROTO_HDR_GTPCV2:
+				case VIRTCHNL2_PROTO_HDR_GTPC_TEID:
+				case VIRTCHNL2_PROTO_HDR_GTPU:
+				case VIRTCHNL2_PROTO_HDR_GTPU_UL:
+				case VIRTCHNL2_PROTO_HDR_GTPU_DL:
+				case VIRTCHNL2_PROTO_HDR_ECPRI:
+				case VIRTCHNL2_PROTO_HDR_VRRP:
+				case VIRTCHNL2_PROTO_HDR_OSPF:
+				case VIRTCHNL2_PROTO_HDR_TUN:
+				case VIRTCHNL2_PROTO_HDR_NVGRE:
+				case VIRTCHNL2_PROTO_HDR_VXLAN:
+				case VIRTCHNL2_PROTO_HDR_VXLAN_GPE:
+				case VIRTCHNL2_PROTO_HDR_GENEVE:
+				case VIRTCHNL2_PROTO_HDR_NSH:
+				case VIRTCHNL2_PROTO_HDR_QUIC:
+				case VIRTCHNL2_PROTO_HDR_PFCP:
+				case VIRTCHNL2_PROTO_HDR_PFCP_NODE:
+				case VIRTCHNL2_PROTO_HDR_PFCP_SESSION:
+				case VIRTCHNL2_PROTO_HDR_RTP:
+				case VIRTCHNL2_PROTO_HDR_NO_PROTO:
+				default:
+					continue;
+				}
+			}
+		}
+		clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
+		kfree(ptype_info);
+	}
+	kfree(get_ptype_info);
+	return 0;
+
+ptype_rel:
+	kfree(ptype_info);
+clear_vc_flag:
+	clear_bit(__IDPF_VC_MSG_PENDING, adapter->flags);
+get_ptype_rel:
+	kfree(get_ptype_info);
+	return err;
+}
+
+/**
+ * idpf_send_ena_dis_loopback_msg - Send virtchnl enable/disable loopback message
+ * @vport: virtual port data structure
+ *
+ * Returns 0 on success, negative on failure.
+ */
+int idpf_send_ena_dis_loopback_msg(struct idpf_vport *vport)
+{
+	struct virtchnl2_loopback loopback;
+	int err = 0;
+
+	loopback.vport_id = cpu_to_le32(vport->vport_id);
+	loopback.enable = idpf_is_feature_ena(vport, NETIF_F_LOOPBACK);
+
+	err = idpf_send_mb_msg(vport->adapter, VIRTCHNL2_OP_LOOPBACK,
+			       sizeof(loopback), (u8 *)&loopback);
+	if (err)
+		return err;
+
+	err = idpf_wait_for_event(vport->adapter, vport,
+				  IDPF_VC_LOOPBACK_STATE,
+				  IDPF_VC_LOOPBACK_STATE_ERR);
+	if (!err)
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+
+	return err;
+}
+
+/**
+ * idpf_find_ctlq - Given a type and id, find ctlq info
+ * @hw: hardware struct
+ * @type: type of ctrlq to find
+ * @id: ctlq id to find
+ *
+ * Returns pointer to found ctlq info struct, NULL otherwise.
+ */
+static struct idpf_ctlq_info *idpf_find_ctlq(struct idpf_hw *hw,
+					     enum idpf_ctlq_type type, int id)
+{
+	struct idpf_ctlq_info *cq, *tmp;
+
+	list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
+		if (cq->q_id == id && cq->cq_type == type)
+			return cq;
+
+	return NULL;
+}
+
+/**
+ * idpf_init_dflt_mbx - Setup default mailbox parameters and make request
+ * @adapter: adapter info struct
+ *
+ * Returns 0 on success, negative otherwise
+ */
+int idpf_init_dflt_mbx(struct idpf_adapter *adapter)
+{
+	struct idpf_ctlq_create_info ctlq_info[] = {
+		{
+			.type = IDPF_CTLQ_TYPE_MAILBOX_TX,
+			.id = IDPF_DFLT_MBX_ID,
+			.len = IDPF_DFLT_MBX_Q_LEN,
+			.buf_size = IDPF_DFLT_MBX_BUF_SIZE
+		},
+		{
+			.type = IDPF_CTLQ_TYPE_MAILBOX_RX,
+			.id = IDPF_DFLT_MBX_ID,
+			.len = IDPF_DFLT_MBX_Q_LEN,
+			.buf_size = IDPF_DFLT_MBX_BUF_SIZE
+		}
+	};
+	struct idpf_hw *hw = &adapter->hw;
+	int err;
+
+	adapter->dev_ops.reg_ops.ctlq_reg_init(ctlq_info);
+
+	err = idpf_ctlq_init(hw, IDPF_NUM_DFLT_MBX_Q, ctlq_info);
+	if (err)
+		return err;
+
+	hw->asq = idpf_find_ctlq(hw, IDPF_CTLQ_TYPE_MAILBOX_TX,
+				 IDPF_DFLT_MBX_ID);
+	hw->arq = idpf_find_ctlq(hw, IDPF_CTLQ_TYPE_MAILBOX_RX,
+				 IDPF_DFLT_MBX_ID);
+
+	if (!hw->asq || !hw->arq) {
+		idpf_ctlq_deinit(hw);
+		return -ENOENT;
+	}
+	adapter->state = __IDPF_STARTUP;
+	return 0;
+}
+
+/**
+ * idpf_deinit_dflt_mbx - Free up ctlqs setup
+ * @adapter: Driver specific private data structure
+ */
+void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)
+{
+	if (adapter->hw.arq && adapter->hw.asq) {
+		idpf_mb_clean(adapter);
+		idpf_ctlq_deinit(&adapter->hw);
+	}
+	adapter->hw.arq = NULL;
+	adapter->hw.asq = NULL;
+}
+
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
+	return -ENOMEM;
+}
+
+/**
+ * idpf_vc_core_init - Initialize state machine and get driver specific
+ * resources
+ * @adapter: Driver specific private structure
+ *
+ * This function will initialize the state machine and request all necessary
+ * resources required by the device driver. Once the state machine is
+ * initialized, allocate memory to store vport specific information and also
+ * requests required interrupts.
+ *
+ * Returns 0 on success, -EAGAIN function will get called again,
+ * otherwise negative on failure.
+ */
+int idpf_vc_core_init(struct idpf_adapter *adapter)
+{
+	int task_delay = 30;
+	u16 num_max_vports;
+	int err = 0;
+
+	while (adapter->state != __IDPF_INIT_SW) {
+		switch (adapter->state) {
+		case __IDPF_STARTUP:
+			if (idpf_send_ver_msg(adapter))
+				goto init_failed;
+			adapter->state = __IDPF_VER_CHECK;
+			goto restart;
+		case __IDPF_VER_CHECK:
+			err = idpf_recv_ver_msg(adapter);
+			if (err == -EIO) {
+				return err;
+			} else if (err == -EAGAIN) {
+				adapter->state = __IDPF_STARTUP;
+				goto restart;
+			} else if (err) {
+				goto init_failed;
+			}
+			if (idpf_send_get_caps_msg(adapter))
+				goto init_failed;
+			adapter->state = __IDPF_GET_CAPS;
+			goto restart;
+		case __IDPF_GET_CAPS:
+			if (idpf_recv_get_caps_msg(adapter))
+				goto init_failed;
+			adapter->state = __IDPF_INIT_SW;
+			break;
+		default:
+			dev_err(&adapter->pdev->dev, "Device is in bad state: %d\n",
+				adapter->state);
+			goto init_failed;
+		}
+		break;
+restart:
+		/* Give enough time before proceeding further with
+		 * state machine
+		 */
+		msleep(task_delay);
+	}
+
+	pci_sriov_set_totalvfs(adapter->pdev, idpf_get_max_vfs(adapter));
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
+		goto err_buf_alloc;
+	}
+
+	/* Start the service task before requesting vectors. This will ensure
+	 * vector information response from mailbox is handled
+	 */
+	queue_delayed_work(adapter->serv_wq, &adapter->serv_task,
+			   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
+
+	err = idpf_intr_req(adapter);
+	if (err) {
+		dev_err(&adapter->pdev->dev, "failed to enable interrupt vectors: %d\n",
+			err);
+		goto err_intr_req;
+	}
+
+	idpf_init_avail_queues(adapter);
+
+	/* Skew the delay for init tasks for each function based on fn number
+	 * to prevent every function from making the same call simulatenously.
+	 */
+	queue_delayed_work(adapter->init_wq, &adapter->init_task,
+			   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
+
+	goto no_err;
+
+err_intr_req:
+	cancel_delayed_work_sync(&adapter->serv_task);
+	idpf_vport_params_buf_rel(adapter);
+err_buf_alloc:
+err_netdev_alloc:
+	kfree(adapter->vports);
+	adapter->vports = NULL;
+no_err:
+	return err;
+
+init_failed:
+	if (++adapter->mb_wait_count > IDPF_MB_MAX_ERR) {
+		dev_err(&adapter->pdev->dev, "Failed to establish mailbox communications with hardware\n");
+		return -EFAULT;
+	}
+	/* If it reached here, it is possible that mailbox queue initialization
+	 * register writes might not have taken effect. Retry to initialize
+	 * the mailbox again
+	 */
+	adapter->state = __IDPF_STARTUP;
+	idpf_deinit_dflt_mbx(adapter);
+	set_bit(__IDPF_HR_DRV_LOAD, adapter->flags);
+	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
+			   msecs_to_jiffies(task_delay));
+	return -EAGAIN;
+}
+
+/**
+ * idpf_vc_core_deinit - Device deinit routine
+ * @adapter: Driver specific private structue
+ *
+ */
+void idpf_vc_core_deinit(struct idpf_adapter *adapter)
+{
+	int i = 0;
+
+	set_bit(__IDPF_REL_RES_IN_PROG, adapter->flags);
+
+	idpf_deinit_task(adapter);
+	idpf_intr_rel(adapter);
+	/* Set all bits as we dont know on which vc_state the vhnl_wq is
+	 * waiting on and wakeup the virtchnl workqueue even if it is waiting
+	 * for the response as we are going down
+	 */
+	for (i = 0; i < IDPF_VC_NBITS; i++)
+		set_bit(i, adapter->vc_state);
+	wake_up(&adapter->vchnl_wq);
+
+	/* Required to indicate periodic task not to schedule again */
+	set_bit(__IDPF_CANCEL_SERVICE_TASK, adapter->flags);
+	cancel_delayed_work_sync(&adapter->serv_task);
+	clear_bit(__IDPF_CANCEL_SERVICE_TASK, adapter->flags);
+	idpf_vport_params_buf_rel(adapter);
+	/* Clear all the bits */
+	for (i = 0; i < IDPF_VC_NBITS; i++)
+		clear_bit(i, adapter->vc_state);
+
+	kfree(adapter->vports);
+	adapter->vports = NULL;
+	clear_bit(__IDPF_REL_RES_IN_PROG, adapter->flags);
+}
+
+/**
+ * idpf_vport_alloc_vec_indexes - Get relative vector indexes
+ * @vport: virtual port data struct
+ *
+ * This function requests the vector information required for the vport and
+ * stores the vector indexes received from the 'global vector distribution'
+ * in the vport's queue vectors array.
+ *
+ * Return 0 on success, error on failure
+ */
+int idpf_vport_alloc_vec_indexes(struct idpf_vport *vport)
+{
+	struct idpf_vector_info vec_info;
+	int num_alloc_vecs;
+
+	vec_info.num_curr_vecs = vport->num_q_vectors;
+	vec_info.num_req_vecs = max_t(u16, vport->num_txq, vport->num_rxq);
+	vec_info.default_vport = vport->default_vport;
+	vec_info.index = vport->idx;
+
+	num_alloc_vecs = idpf_req_rel_vector_indexes(vport->adapter,
+						     vport->q_vector_idxs,
+						     &vec_info);
+	if (num_alloc_vecs <= 0) {
+		dev_err(&vport->adapter->pdev->dev, "Vector distribution failed: %d\n",
+			num_alloc_vecs);
+		return -EINVAL;
+	}
+	vport->num_q_vectors = num_alloc_vecs;
+	return 0;
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
+	u16 rx_itr[] = {2, 8, 32, 96, 128};
+	u16 tx_itr[] = {2, 8, 64, 128, 256};
+	struct idpf_rss_data *rss_data;
+	u16 idx = vport->idx;
+
+	vport_config = adapter->vport_config[idx];
+	rss_data = &vport_config->user_config.rss_data;
+	vport_msg = (struct virtchnl2_create_vport *)
+				adapter->vport_params_recvd[idx];
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
+	rss_data->rss_key_size = min_t(u16, NETDEV_RSS_KEY_LEN,
+				       le16_to_cpu(vport_msg->rss_key_size));
+	rss_data->rss_lut_size = le16_to_cpu(vport_msg->rss_lut_size);
+
+	ether_addr_copy(vport->default_mac_addr, vport_msg->default_mac_addr);
+	vport->max_mtu = IDPF_MAX_MTU;
+
+	/*Initialize Tx and Rx profiles for Dynamic Interrupt Moderation */
+	memcpy(vport->rx_itr_profile, rx_itr, IDPF_DIM_PROFILE_SLOTS);
+	memcpy(vport->tx_itr_profile, tx_itr, IDPF_DIM_PROFILE_SLOTS);
+
+	idpf_vport_set_hsplit(vport, true);
+
+	vport->ts_gran = IDPF_TW_TIME_STAMP_GRAN_512_DIV_S;
+	vport->tw_horizon = IDPF_TW_HORIZON_512MS;
+
+	idpf_vport_init_num_qs(vport, vport_msg);
+	idpf_vport_calc_num_q_desc(vport);
+	idpf_vport_calc_num_q_groups(vport);
+	idpf_vport_alloc_vec_indexes(vport);
+}
+
+/**
+ * idpf_get_vec_ids - Initialize vector id from Mailbox parameters
+ * @adapter: adapter structure to get the mailbox vector id
+ * @vecids: Array of vector ids
+ * @num_vecids: number of vector ids
+ * @chunks: vector ids received over mailbox
+ *
+ * Will initialize the mailbox vector id which is received from the
+ * get capabilities and data queue vector ids with ids received as
+ * mailbox parameters.
+ * Returns number of ids filled
+ */
+int idpf_get_vec_ids(struct idpf_adapter *adapter,
+		     u16 *vecids, int num_vecids,
+		     struct virtchnl2_vector_chunks *chunks)
+{
+	u16 num_chunks = le16_to_cpu(chunks->num_vchunks);
+	struct virtchnl2_vector_chunk *chunk;
+	u16 start_vecid, num_vec;
+	int num_vecid_filled = 0;
+	int i, j;
+
+	vecids[num_vecid_filled] = adapter->mb_vector.v_idx;
+	num_vecid_filled++;
+
+	for (j = 0; j < num_chunks; j++) {
+		chunk = &chunks->vchunks[j];
+		num_vec = le16_to_cpu(chunk->num_vectors);
+		start_vecid = le16_to_cpu(chunk->start_vector_id);
+		for (i = 0; i < num_vec; i++) {
+			if ((num_vecid_filled + i) < num_vecids) {
+				vecids[num_vecid_filled + i] = start_vecid;
+				start_vecid++;
+			} else {
+				break;
+			}
+		}
+		num_vecid_filled = num_vecid_filled + i;
+	}
+
+	return num_vecid_filled;
+}
+
+/**
+ * idpf_vport_get_queue_ids - Initialize queue id from Mailbox parameters
+ * @qids: Array of queue ids
+ * @num_qids: number of queue ids
+ * @q_type: queue model
+ * @chunks: queue ids received over mailbox
+ *
+ * Will initialize all queue ids with ids received as mailbox parameters
+ * Returns number of ids filled
+ */
+static int
+idpf_vport_get_queue_ids(u32 *qids, int num_qids, u16 q_type,
+			 struct virtchnl2_queue_reg_chunks *chunks)
+{
+	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
+	struct virtchnl2_queue_reg_chunk *chunk;
+	u32 num_q_id_filled = 0, i;
+	u32 start_q_id, num_q;
+
+	while (num_chunks--) {
+		chunk = &chunks->chunks[num_chunks];
+		if (le32_to_cpu(chunk->type) != q_type)
+			continue;
+		num_q = le32_to_cpu(chunk->num_queues);
+		start_q_id = le32_to_cpu(chunk->start_queue_id);
+		for (i = 0; i < num_q; i++) {
+			if ((num_q_id_filled + i) < num_qids) {
+				qids[num_q_id_filled + i] = start_q_id;
+				start_q_id++;
+			} else {
+				break;
+			}
+		}
+		num_q_id_filled = num_q_id_filled + i;
+	}
+
+	return num_q_id_filled;
+}
+
+/**
+ * __idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
+ * @vport: virtual port for which the queues ids are initialized
+ * @qids: queue ids
+ * @num_qids: number of queue ids
+ * @q_type: type of queue
+ *
+ * Will initialize all queue ids with ids received as mailbox
+ * parameters. Returns number of queue ids initialized.
+ */
+static int
+__idpf_vport_queue_ids_init(struct idpf_vport *vport, u32 *qids,
+			    int num_qids, u32 q_type)
+{
+	struct idpf_queue *q;
+	int i, j, k = 0;
+
+	switch (q_type) {
+	case VIRTCHNL2_QUEUE_TYPE_TX:
+		for (i = 0; i < vport->num_txq_grp; i++) {
+			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+			for (j = 0; j < tx_qgrp->num_txq && k < num_qids; j++) {
+				tx_qgrp->txqs[j]->q_id = qids[k];
+				tx_qgrp->txqs[j]->q_type =
+					VIRTCHNL2_QUEUE_TYPE_TX;
+				k++;
+			}
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+			int num_rxq;
+
+			if (idpf_is_queue_model_split(vport->rxq_model))
+				num_rxq = rx_qgrp->splitq.num_rxq_sets;
+			else
+				num_rxq = rx_qgrp->singleq.num_rxq;
+
+			for (j = 0; j < num_rxq && k < num_qids; j++, k++) {
+				if (idpf_is_queue_model_split(vport->rxq_model))
+					q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
+				else
+					q = rx_qgrp->singleq.rxqs[j];
+				q->q_id = qids[k];
+				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX;
+			}
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION:
+		for (i = 0; i < vport->num_txq_grp && k < num_qids; i++) {
+			struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
+
+			tx_qgrp->complq->q_id = qids[k];
+			tx_qgrp->complq->q_type =
+				VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
+			k++;
+		}
+		break;
+	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
+		for (i = 0; i < vport->num_rxq_grp; i++) {
+			struct idpf_rxq_group *rx_qgrp = &vport->rxq_grps[i];
+
+			for (j = 0; j < vport->num_bufqs_per_qgrp && k < num_qids; j++) {
+				q = &rx_qgrp->splitq.bufq_sets[j].bufq;
+				q->q_id = qids[k];
+				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
+				k++;
+			}
+		}
+		break;
+	default:
+		break;
+	}
+
+	return k;
+}
+
+/**
+ * idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
+ * @vport: virtual port for which the queues ids are initialized
+ *
+ * Will initialize all queue ids with ids received as mailbox parameters.
+ * Returns 0 on success, negative if all the queues are not initialized.
+ */
+int idpf_vport_queue_ids_init(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport *vport_params;
+	struct virtchnl2_queue_reg_chunks *chunks;
+	struct idpf_vport_config *vport_config;
+	u16 vport_idx = vport->idx;
+	/* We may never deal with more than 256 same type of queues */
+#define IDPF_MAX_QIDS	256
+	u32 qids[IDPF_MAX_QIDS];
+	int num_ids;
+	u16 q_type;
+
+	vport_config = vport->adapter->vport_config[vport_idx];
+	if (vport_config->req_qs_chunks) {
+		struct virtchnl2_add_queues *vc_aq =
+			(struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
+		chunks = &vc_aq->chunks;
+	} else {
+		vport_params = (struct virtchnl2_create_vport *)
+				vport->adapter->vport_params_recvd[vport_idx];
+		chunks = &vport_params->chunks;
+	}
+
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
+					   VIRTCHNL2_QUEUE_TYPE_TX,
+					   chunks);
+	if (num_ids < vport->num_txq)
+		return -EINVAL;
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+					      VIRTCHNL2_QUEUE_TYPE_TX);
+	if (num_ids < vport->num_txq)
+		return -EINVAL;
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
+					   VIRTCHNL2_QUEUE_TYPE_RX,
+					   chunks);
+	if (num_ids < vport->num_rxq)
+		return -EINVAL;
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+					      VIRTCHNL2_QUEUE_TYPE_RX);
+	if (num_ids < vport->num_rxq)
+		return -EINVAL;
+
+	if (!idpf_is_queue_model_split(vport->txq_model))
+		goto check_rxq;
+	q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type,
+					   chunks);
+	if (num_ids < vport->num_complq)
+		return -EINVAL;
+	num_ids = __idpf_vport_queue_ids_init(vport, qids,
+					      num_ids,
+					      q_type);
+	if (num_ids < vport->num_complq)
+		return -EINVAL;
+
+check_rxq:
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		return 0;
+	q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
+	num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type,
+					   chunks);
+	if (num_ids < vport->num_bufq)
+		return -EINVAL;
+	num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
+					      q_type);
+	if (num_ids < vport->num_bufq)
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * idpf_vport_adjust_qs - Adjust to new requested queues
+ * @vport: virtual port data struct
+ *
+ * Renegotiate queues.  Returns 0 on success, negative on failure.
+ */
+int idpf_vport_adjust_qs(struct idpf_vport *vport)
+{
+	struct virtchnl2_create_vport vport_msg;
+	int err = 0;
+
+	vport_msg.txq_model = cpu_to_le16(vport->txq_model);
+	vport_msg.rxq_model = cpu_to_le16(vport->rxq_model);
+	err = idpf_vport_calc_total_qs(vport->adapter, vport->idx, &vport_msg, NULL);
+	if (err)
+		return err;
+
+	idpf_vport_init_num_qs(vport, &vport_msg);
+	idpf_vport_calc_num_q_groups(vport);
+
+	return err;
+}
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
+	if (field >= IDPF_CAP_FIELD_LAST) {
+		dev_err(&adapter->pdev->dev, "Bad capability field: %d\n",
+			field);
+		return false;
+	}
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
+	vport_msg = (struct virtchnl2_create_vport *)
+				vport->adapter->vport_params_recvd[vport->idx];
+	return le32_to_cpu(vport_msg->vport_id);
+}
+
+/**
+ * idpf_add_del_mac_filters - Add/del mac filters
+ * @vport: virtual port data structure
+ * @add: Add or delete flag
+ * @async: Don't wait for return message
+ *
+ * Returns 0 on success, error on failre.
+ **/
+int idpf_add_del_mac_filters(struct idpf_vport *vport, bool add, bool async)
+{
+	struct virtchnl2_mac_addr_list *ma_list = NULL;
+	struct idpf_adapter *adapter = vport->adapter;
+	int num_entries, num_msgs, total_filters = 0;
+	struct idpf_vport_config *vport_config;
+	struct pci_dev *pdev = adapter->pdev;
+	enum idpf_vport_vc_state vc, vc_err;
+	struct virtchnl2_mac_addr *mac_addr;
+	struct idpf_mac_filter *f, *tmp;
+	int i = 0, k = 0, err = 0;
+	u32 vop;
+
+	vport_config = adapter->vport_config[vport->idx];
+	spin_lock_bh(&vport->mac_filter_list_lock);
+
+	/* Find the number of newly added filters */
+	list_for_each_entry(f, &vport_config->user_config.mac_filter_list, list) {
+		if (add && f->add)
+			total_filters++;
+		else if (!add && f->remove)
+			total_filters++;
+	}
+	if (!total_filters) {
+		spin_unlock_bh(&vport->mac_filter_list_lock);
+		goto error;
+	}
+
+	/* Fill all the new filters into virtchannel message */
+	mac_addr = kcalloc(total_filters, sizeof(struct virtchnl2_mac_addr),
+			   GFP_ATOMIC);
+	if (!mac_addr) {
+		err = -ENOMEM;
+		spin_unlock_bh(&vport->mac_filter_list_lock);
+		goto error;
+	}
+	list_for_each_entry_safe(f, tmp, &vport_config->user_config.mac_filter_list,
+				 list) {
+		if (add && f->add) {
+			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			i++;
+			f->add = false;
+			if (i == total_filters)
+				break;
+		}
+		if (!add && f->remove) {
+			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			i++;
+			f->remove = false;
+			if (i == total_filters)
+				break;
+		}
+	}
+
+	spin_unlock_bh(&vport->mac_filter_list_lock);
+
+	/* Chunk up the filters into multiple messages to avoid
+	 * sending a control queue message buffer that is too large
+	 */
+	if (total_filters < IDPF_NUM_FILTERS_PER_MSG)
+		num_entries = total_filters;
+	else
+		num_entries = IDPF_NUM_FILTERS_PER_MSG;
+	num_msgs = DIV_ROUND_UP(total_filters, IDPF_NUM_FILTERS_PER_MSG);
+
+	for (i = 0, k = 0; i < num_msgs || num_entries; i++) {
+		int buf_size = sizeof(struct virtchnl2_mac_addr_list) +
+			(sizeof(struct virtchnl2_mac_addr) * num_entries);
+		if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
+			kfree(ma_list);
+			ma_list = kzalloc(buf_size, GFP_ATOMIC);
+			if (!ma_list) {
+				err = -ENOMEM;
+				goto list_prep_error;
+			}
+		} else {
+			memset(ma_list, 0, buf_size);
+		}
+
+		ma_list->vport_id = cpu_to_le32(vport->vport_id);
+		ma_list->num_mac_addr = cpu_to_le16(num_entries);
+		memcpy(ma_list->mac_addr_list, &mac_addr[k],
+		       sizeof(struct virtchnl2_mac_addr) * num_entries);
+
+		if (add) {
+			vop = VIRTCHNL2_OP_ADD_MAC_ADDR;
+			vc = IDPF_VC_ADD_MAC_ADDR;
+			vc_err = IDPF_VC_ADD_MAC_ADDR_ERR;
+			if (async) {
+				set_bit(__IDPF_ADD_MAC_REQ, vport->adapter->flags);
+			} else {
+				clear_bit(IDPF_VC_ADD_MAC_ADDR, adapter->vc_state);
+				clear_bit(IDPF_VC_ADD_MAC_ADDR_ERR, adapter->vc_state);
+			}
+		} else  {
+			vop = VIRTCHNL2_OP_DEL_MAC_ADDR;
+			vc = IDPF_VC_DEL_MAC_ADDR;
+			vc_err = IDPF_VC_DEL_MAC_ADDR_ERR;
+			if (async) {
+				set_bit(__IDPF_DEL_MAC_REQ, vport->adapter->flags);
+			} else {
+				clear_bit(IDPF_VC_DEL_MAC_ADDR, adapter->vc_state);
+				clear_bit(IDPF_VC_DEL_MAC_ADDR_ERR, adapter->vc_state);
+			}
+		}
+		err = idpf_send_mb_msg(vport->adapter, vop, buf_size,
+				       (u8 *)ma_list);
+		if (err)
+			goto mbx_error;
+		if (!async) {
+			err = idpf_wait_for_event(vport->adapter, vport, vc, vc_err);
+			if (err)
+				goto mbx_error;
+		}
+
+		k += num_entries;
+		total_filters -= num_entries;
+		if (total_filters < IDPF_NUM_FILTERS_PER_MSG)
+			num_entries = total_filters;
+		clear_bit(__IDPF_VPORT_VC_MSG_PENDING, vport->flags);
+	}
+mbx_error:
+	kfree(ma_list);
+list_prep_error:
+	kfree(mac_addr);
+error:
+	if (err)
+		dev_err(&pdev->dev, "Failed to add or del mac filters %d", err);
+
+	return err;
+}
+
+/**
+ * idpf_set_promiscuous - set promiscuous and send message to mailbox
+ * @vport: virtual port structure
+ *
+ * Request to enable promiscuous mode for the vport. Message is sent
+ * asynchronously and won't wait for response.  Returns 0 on success, negative
+ * on failure;
+ */
+int idpf_set_promiscuous(struct idpf_vport *vport)
+{
+	struct idpf_vport_user_config_data *config_data;
+	struct idpf_adapter *adapter = vport->adapter;
+	struct virtchnl2_promisc_info vpi;
+	u16 flags = 0;
+	int err = 0;
+
+	config_data = &adapter->vport_config[vport->idx]->user_config;
+	if (test_bit(__IDPF_PROMISC_UC, config_data->user_flags))
+		flags |= VIRTCHNL2_UNICAST_PROMISC;
+	if (test_bit(__IDPF_PROMISC_MC, config_data->user_flags))
+		flags |= VIRTCHNL2_MULTICAST_PROMISC;
+
+	vpi.vport_id = cpu_to_le32(vport->vport_id);
+	vpi.flags = cpu_to_le16(flags);
+	err = idpf_send_mb_msg(adapter, VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE,
+			       sizeof(struct virtchnl2_promisc_info),
+			       (u8 *)&vpi);
+	return err;
+}
+
diff --git a/include/linux/avf/virtchnl2.h b/include/linux/avf/virtchnl2.h
new file mode 100644
index 000000000000..15a43ce318d0
--- /dev/null
+++ b/include/linux/avf/virtchnl2.h
@@ -0,0 +1,1490 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+#ifndef _VIRTCHNL2_H_
+#define _VIRTCHNL2_H_
+
+/* All opcodes associated with virtchnl 2 are prefixed with virtchnl2 or
+ * VIRTCHNL2. Any future opcodes, offloads/capabilities, structures,
+ * and defines must be prefixed with virtchnl2 or VIRTCHNL2 to avoid confusion.
+ */
+
+#include "virtchnl2_lan_desc.h"
+
+/* VIRTCHNL2_ERROR_CODES */
+/* success */
+#define	VIRTCHNL2_STATUS_SUCCESS	0
+/* Operation not permitted, used in case of command not permitted for sender */
+#define	VIRTCHNL2_STATUS_ERR_EPERM	1
+/* Bad opcode - virtchnl interface problem */
+#define	VIRTCHNL2_STATUS_ERR_ESRCH	3
+/* I/O error - HW access error */
+#define	VIRTCHNL2_STATUS_ERR_EIO	5
+/* No such resource - Referenced resource is not allacated */
+#define	VIRTCHNL2_STATUS_ERR_ENXIO	6
+/* Permission denied - Resource is not permitted to caller */
+#define	VIRTCHNL2_STATUS_ERR_EACCES	13
+/* Device or resource busy - In case shared resource is in use by others */
+#define	VIRTCHNL2_STATUS_ERR_EBUSY	16
+/* Object already exists and not free */
+#define	VIRTCHNL2_STATUS_ERR_EEXIST	17
+/* Invalid input argument in command */
+#define	VIRTCHNL2_STATUS_ERR_EINVAL	22
+/* No space left or allocation failure */
+#define	VIRTCHNL2_STATUS_ERR_ENOSPC	28
+/* Parameter out of range */
+#define	VIRTCHNL2_STATUS_ERR_ERANGE	34
+
+/* Op not allowed in current dev mode */
+#define	VIRTCHNL2_STATUS_ERR_EMODE	200
+/* State Machine error - Command sequence problem */
+#define	VIRTCHNL2_STATUS_ERR_ESM	201
+
+/* These macros are used to generate compilation errors if a structure/union
+ * is not exactly the correct length. It gives a divide by zero error if the
+ * structure/union is not of the correct size, otherwise it creates an enum
+ * that is never used.
+ */
+#define VIRTCHNL2_CHECK_STRUCT_LEN(n, X) enum virtchnl2_static_assert_enum_##X \
+	{ virtchnl2_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
+#define VIRTCHNL2_CHECK_UNION_LEN(n, X) enum virtchnl2_static_asset_enum_##X \
+	{ virtchnl2_static_assert_##X = (n)/((sizeof(union X) == (n)) ? 1 : 0) }
+
+/* New major set of opcodes introduced and so leaving room for
+ * old misc opcodes to be added in future. Also these opcodes may only
+ * be used if both the PF and VF have successfully negotiated the
+ * VIRTCHNL version as 2.0 during VIRTCHNL22_OP_VERSION exchange.
+ */
+#define		VIRTCHNL2_OP_UNKNOWN			0
+#define		VIRTCHNL2_OP_VERSION			1
+#define		VIRTCHNL2_OP_GET_CAPS			500
+#define		VIRTCHNL2_OP_CREATE_VPORT		501
+#define		VIRTCHNL2_OP_DESTROY_VPORT		502
+#define		VIRTCHNL2_OP_ENABLE_VPORT		503
+#define		VIRTCHNL2_OP_DISABLE_VPORT		504
+#define		VIRTCHNL2_OP_CONFIG_TX_QUEUES		505
+#define		VIRTCHNL2_OP_CONFIG_RX_QUEUES		506
+#define		VIRTCHNL2_OP_ENABLE_QUEUES		507
+#define		VIRTCHNL2_OP_DISABLE_QUEUES		508
+#define		VIRTCHNL2_OP_ADD_QUEUES			509
+#define		VIRTCHNL2_OP_DEL_QUEUES			510
+#define		VIRTCHNL2_OP_MAP_QUEUE_VECTOR		511
+#define		VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR		512
+#define		VIRTCHNL2_OP_GET_RSS_KEY		513
+#define		VIRTCHNL2_OP_SET_RSS_KEY		514
+#define		VIRTCHNL2_OP_GET_RSS_LUT		515
+#define		VIRTCHNL2_OP_SET_RSS_LUT		516
+#define		VIRTCHNL2_OP_GET_RSS_HASH		517
+#define		VIRTCHNL2_OP_SET_RSS_HASH		518
+#define		VIRTCHNL2_OP_SET_SRIOV_VFS		519
+#define		VIRTCHNL2_OP_ALLOC_VECTORS		520
+#define		VIRTCHNL2_OP_DEALLOC_VECTORS		521
+#define		VIRTCHNL2_OP_EVENT			522
+#define		VIRTCHNL2_OP_GET_STATS			523
+#define		VIRTCHNL2_OP_RESET_VF			524
+#define		VIRTCHNL2_OP_GET_EDT_CAPS		525
+#define		VIRTCHNL2_OP_GET_PTYPE_INFO		526
+	/* opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID and
+	 * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW
+	 */
+	/* opcodes 529, 530, and 531 are reserved */
+#define		VIRTCHNL2_OP_CREATE_ADI			532
+#define		VIRTCHNL2_OP_DESTROY_ADI		533
+#define		VIRTCHNL2_OP_LOOPBACK			534
+#define		VIRTCHNL2_OP_ADD_MAC_ADDR		535
+#define		VIRTCHNL2_OP_DEL_MAC_ADDR		536
+#define		VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE	537
+
+#define VIRTCHNL2_RDMA_INVALID_QUEUE_IDX	0xFFFF
+
+/* VIRTCHNL2_VPORT_TYPE
+ * Type of virtual port
+ */
+#define VIRTCHNL2_VPORT_TYPE_DEFAULT		0
+#define VIRTCHNL2_VPORT_TYPE_SRIOV		1
+#define VIRTCHNL2_VPORT_TYPE_SIOV		2
+#define VIRTCHNL2_VPORT_TYPE_SUBDEV		3
+#define VIRTCHNL2_VPORT_TYPE_MNG		4
+
+/* VIRTCHNL2_QUEUE_MODEL
+ * Type of queue model
+ *
+ * In the single queue model, the same transmit descriptor queue is used by
+ * software to post descriptors to hardware and by hardware to post completed
+ * descriptors to software.
+ * Likewise, the same receive descriptor queue is used by hardware to post
+ * completions to software and by software to post buffers to hardware.
+ */
+#define VIRTCHNL2_QUEUE_MODEL_SINGLE		0
+/* In the split queue model, hardware uses transmit completion queues to post
+ * descriptor/buffer completions to software, while software uses transmit
+ * descriptor queues to post descriptors to hardware.
+ * Likewise, hardware posts descriptor completions to the receive descriptor
+ * queue, while software uses receive buffer queues to post buffers to hardware.
+ */
+#define VIRTCHNL2_QUEUE_MODEL_SPLIT		1
+
+/* VIRTCHNL2_CHECKSUM_OFFLOAD_CAPS
+ * Checksum offload capability flags
+ */
+#define VIRTCHNL2_CAP_TX_CSUM_L3_IPV4		BIT(0)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_TCP	BIT(1)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_UDP	BIT(2)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	BIT(3)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_TCP	BIT(4)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_UDP	BIT(5)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	BIT(6)
+#define VIRTCHNL2_CAP_TX_CSUM_GENERIC		BIT(7)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_IPV4		BIT(8)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	BIT(9)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	BIT(10)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	BIT(11)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	BIT(12)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	BIT(13)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP	BIT(14)
+#define VIRTCHNL2_CAP_RX_CSUM_GENERIC		BIT(15)
+#define VIRTCHNL2_CAP_TX_CSUM_L3_SINGLE_TUNNEL	BIT(16)
+#define VIRTCHNL2_CAP_TX_CSUM_L3_DOUBLE_TUNNEL	BIT(17)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_SINGLE_TUNNEL	BIT(18)
+#define VIRTCHNL2_CAP_RX_CSUM_L3_DOUBLE_TUNNEL	BIT(19)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_SINGLE_TUNNEL	BIT(20)
+#define VIRTCHNL2_CAP_TX_CSUM_L4_DOUBLE_TUNNEL	BIT(21)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_SINGLE_TUNNEL	BIT(22)
+#define VIRTCHNL2_CAP_RX_CSUM_L4_DOUBLE_TUNNEL	BIT(23)
+
+/* VIRTCHNL2_SEGMENTATION_OFFLOAD_CAPS
+ * Segmentation offload capability flags
+ */
+#define VIRTCHNL2_CAP_SEG_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_SEG_IPV4_UDP		BIT(1)
+#define VIRTCHNL2_CAP_SEG_IPV4_SCTP		BIT(2)
+#define VIRTCHNL2_CAP_SEG_IPV6_TCP		BIT(3)
+#define VIRTCHNL2_CAP_SEG_IPV6_UDP		BIT(4)
+#define VIRTCHNL2_CAP_SEG_IPV6_SCTP		BIT(5)
+#define VIRTCHNL2_CAP_SEG_GENERIC		BIT(6)
+#define VIRTCHNL2_CAP_SEG_TX_SINGLE_TUNNEL	BIT(7)
+#define VIRTCHNL2_CAP_SEG_TX_DOUBLE_TUNNEL	BIT(8)
+
+/* VIRTCHNL2_RSS_FLOW_TYPE_CAPS
+ * Receive Side Scaling Flow type capability flags
+ */
+#define VIRTCHNL2_CAP_RSS_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_RSS_IPV4_UDP		BIT(1)
+#define VIRTCHNL2_CAP_RSS_IPV4_SCTP		BIT(2)
+#define VIRTCHNL2_CAP_RSS_IPV4_OTHER		BIT(3)
+#define VIRTCHNL2_CAP_RSS_IPV6_TCP		BIT(4)
+#define VIRTCHNL2_CAP_RSS_IPV6_UDP		BIT(5)
+#define VIRTCHNL2_CAP_RSS_IPV6_SCTP		BIT(6)
+#define VIRTCHNL2_CAP_RSS_IPV6_OTHER		BIT(7)
+#define VIRTCHNL2_CAP_RSS_IPV4_AH		BIT(8)
+#define VIRTCHNL2_CAP_RSS_IPV4_ESP		BIT(9)
+#define VIRTCHNL2_CAP_RSS_IPV4_AH_ESP		BIT(10)
+#define VIRTCHNL2_CAP_RSS_IPV6_AH		BIT(11)
+#define VIRTCHNL2_CAP_RSS_IPV6_ESP		BIT(12)
+#define VIRTCHNL2_CAP_RSS_IPV6_AH_ESP		BIT(13)
+
+/* VIRTCHNL2_HEADER_SPLIT_CAPS
+ * Header split capability flags
+ */
+/* for prepended metadata  */
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L2		BIT(0)
+/* all VLANs go into header buffer */
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L3		BIT(1)
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4		BIT(2)
+#define VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6		BIT(3)
+
+/* VIRTCHNL2_RSC_OFFLOAD_CAPS
+ * Receive Side Coalescing offload capability flags
+ */
+#define VIRTCHNL2_CAP_RSC_IPV4_TCP		BIT(0)
+#define VIRTCHNL2_CAP_RSC_IPV4_SCTP		BIT(1)
+#define VIRTCHNL2_CAP_RSC_IPV6_TCP		BIT(2)
+#define VIRTCHNL2_CAP_RSC_IPV6_SCTP		BIT(3)
+
+/* VIRTCHNL2_OTHER_CAPS
+ * Other capability flags
+ * SPLITQ_QSCHED: Queue based scheduling using split queue model
+ * TX_VLAN: VLAN tag insertion
+ * RX_VLAN: VLAN tag stripping
+ */
+#define VIRTCHNL2_CAP_RDMA			BIT(0)
+#define VIRTCHNL2_CAP_SRIOV			BIT(1)
+#define VIRTCHNL2_CAP_MACFILTER			BIT(2)
+#define VIRTCHNL2_CAP_FLOW_DIRECTOR		BIT(3)
+#define VIRTCHNL2_CAP_SPLITQ_QSCHED		BIT(4)
+#define VIRTCHNL2_CAP_CRC			BIT(5)
+#define VIRTCHNL2_CAP_ADQ			BIT(6)
+#define VIRTCHNL2_CAP_WB_ON_ITR			BIT(7)
+#define VIRTCHNL2_CAP_PROMISC			BIT(8)
+#define VIRTCHNL2_CAP_LINK_SPEED		BIT(9)
+#define VIRTCHNL2_CAP_INLINE_IPSEC		BIT(10)
+#define VIRTCHNL2_CAP_LARGE_NUM_QUEUES		BIT(11)
+/* require additional info */
+#define VIRTCHNL2_CAP_VLAN			BIT(12)
+#define VIRTCHNL2_CAP_PTP			BIT(13)
+/* EDT: Earliest Departure Time capability used for Timing Wheel */
+#define VIRTCHNL2_CAP_EDT			BIT(14)
+#define VIRTCHNL2_CAP_ADV_RSS			BIT(15)
+#define VIRTCHNL2_CAP_FDIR			BIT(16)
+#define VIRTCHNL2_CAP_RX_FLEX_DESC		BIT(17)
+#define VIRTCHNL2_CAP_PTYPE			BIT(18)
+#define VIRTCHNL2_CAP_LOOPBACK			BIT(19)
+/* this must be the last capability */
+#define VIRTCHNL2_CAP_OEM			BIT(63)
+
+/* VIRTCHNL2_DEVICE_TYPE */
+/* underlying device type */
+#define VIRTCHNL2_MEV_DEVICE			0
+
+/* VIRTCHNL2_TXQ_SCHED_MODE
+ * Transmit Queue Scheduling Modes - Queue mode is the legacy mode i.e. inorder
+ * completions where descriptors and buffers are completed at the same time.
+ * Flow scheduling mode allows for out of order packet processing where
+ * descriptors are cleaned in order, but buffers can be completed out of order.
+ */
+#define VIRTCHNL2_TXQ_SCHED_MODE_QUEUE		0
+#define VIRTCHNL2_TXQ_SCHED_MODE_FLOW		1
+
+/* VIRTCHNL2_TXQ_FLAGS
+ * Transmit Queue feature flags
+ *
+ * Enable rule miss completion type; packet completion for a packet
+ * sent on exception path; only relevant in flow scheduling mode
+ */
+#define VIRTCHNL2_TXQ_ENABLE_MISS_COMPL		BIT(0)
+
+/* VIRTCHNL2_PEER_TYPE
+ * Transmit mailbox peer type
+ */
+#define VIRTCHNL2_RDMA_CPF			0
+#define VIRTCHNL2_NVME_CPF			1
+#define VIRTCHNL2_ATE_CPF			2
+#define VIRTCHNL2_LCE_CPF			3
+
+/* VIRTCHNL2_RXQ_FLAGS
+ * Receive Queue Feature flags
+ */
+#define VIRTCHNL2_RXQ_RSC			BIT(0)
+#define VIRTCHNL2_RXQ_HDR_SPLIT			BIT(1)
+/* When set, packet descriptors are flushed by hardware immediately after
+ * processing each packet.
+ */
+#define VIRTCHNL2_RXQ_IMMEDIATE_WRITE_BACK	BIT(2)
+#define VIRTCHNL2_RX_DESC_SIZE_16BYTE		BIT(3)
+#define VIRTCHNL2_RX_DESC_SIZE_32BYTE		BIT(4)
+
+/* VIRTCHNL2_RSS_ALGORITHM
+ * Type of RSS algorithm
+ */
+#define VIRTCHNL2_RSS_ALG_TOEPLITZ_ASYMMETRIC		0
+#define VIRTCHNL2_RSS_ALG_R_ASYMMETRIC			1
+#define VIRTCHNL2_RSS_ALG_TOEPLITZ_SYMMETRIC		2
+#define VIRTCHNL2_RSS_ALG_XOR_SYMMETRIC			3
+
+/* VIRTCHNL2_EVENT_CODES
+ * Type of event
+ */
+#define VIRTCHNL2_EVENT_UNKNOWN			0
+#define VIRTCHNL2_EVENT_LINK_CHANGE		1
+/* These messages are only sent to PF from CP */
+#define VIRTCHNL2_EVENT_START_RESET_ADI		2
+#define VIRTCHNL2_EVENT_FINISH_RESET_ADI	3
+
+/* VIRTCHNL2_QUEUE_TYPE
+ * Transmit and Receive queue types are valid in legacy as well as split queue
+ * models. With Split Queue model, 2 additional types are introduced -
+ * TX_COMPLETION and RX_BUFFER. In split queue model, receive  corresponds to
+ * the queue where hardware posts completions.
+ */
+#define VIRTCHNL2_QUEUE_TYPE_TX			0
+#define VIRTCHNL2_QUEUE_TYPE_RX			1
+#define VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION	2
+#define VIRTCHNL2_QUEUE_TYPE_RX_BUFFER		3
+#define VIRTCHNL2_QUEUE_TYPE_CONFIG_TX		4
+#define VIRTCHNL2_QUEUE_TYPE_CONFIG_RX		5
+#define VIRTCHNL2_QUEUE_TYPE_P2P_TX		6
+#define VIRTCHNL2_QUEUE_TYPE_P2P_RX		7
+#define VIRTCHNL2_QUEUE_TYPE_P2P_TX_COMPLETION	8
+#define VIRTCHNL2_QUEUE_TYPE_P2P_RX_BUFFER	9
+#define VIRTCHNL2_QUEUE_TYPE_MBX_TX		10
+#define VIRTCHNL2_QUEUE_TYPE_MBX_RX		11
+
+/* VIRTCHNL2_ITR_IDX
+ * Virtchannel interrupt throttling rate index
+ */
+#define VIRTCHNL2_ITR_IDX_0			0
+#define VIRTCHNL2_ITR_IDX_1			1
+
+/* VIRTCHNL2_VECTOR_LIMITS
+ * Since PF/VF messages are limited by __le16 size, precalculate the maximum
+ * possible values of nested elements in virtchnl structures that virtual
+ * channel can possibly handle in a single message.
+ */
+
+#define VIRTCHNL2_OP_DEL_ENABLE_DISABLE_QUEUES_MAX (\
+		((__le16)(~0) - sizeof(struct virtchnl2_del_ena_dis_queues)) / \
+		sizeof(struct virtchnl2_queue_chunk))
+
+#define VIRTCHNL2_OP_MAP_UNMAP_QUEUE_VECTOR_MAX (\
+		((__le16)(~0) - sizeof(struct virtchnl2_queue_vector_maps)) / \
+		sizeof(struct virtchnl2_queue_vector))
+
+/* VIRTCHNL2_MAC_TYPE
+ * VIRTCHNL2_MAC_ADDR_PRIMARY
+ * PF/VF driver should set @type to VIRTCHNL2_MAC_ADDR_PRIMARY for the
+ * primary/device unicast MAC address filter for VIRTCHNL2_OP_ADD_MAC_ADDR and
+ * VIRTCHNL2_OP_DEL_MAC_ADDR. This allows for the underlying control plane
+ * function to accurately track the MAC address and for VM/function reset.
+ *
+ * VIRTCHNL2_MAC_ADDR_EXTRA
+ * PF/VF driver should set @type to VIRTCHNL2_MAC_ADDR_EXTRA for any extra
+ * unicast and/or multicast filters that are being added/deleted via
+ * VIRTCHNL2_OP_ADD_MAC_ADDR/VIRTCHNL2_OP_DEL_MAC_ADDR respectively.
+ */
+#define VIRTCHNL2_MAC_ADDR_PRIMARY		1
+#define VIRTCHNL2_MAC_ADDR_EXTRA		2
+
+/* VIRTCHNL2_PROMISC_FLAGS
+ * Flags used for promiscuous mode
+ */
+#define VIRTCHNL2_UNICAST_PROMISC		BIT(0)
+#define VIRTCHNL2_MULTICAST_PROMISC		BIT(1)
+
+/* VIRTCHNL2_PROTO_HDR_TYPE
+ * Protocol header type within a packet segment. A segment consists of one or
+ * more protocol headers that make up a logical group of protocol headers. Each
+ * logical group of protocol headers encapsulates or is encapsulated using/by
+ * tunneling or encapsulation protocols for network virtualization.
+ */
+/* VIRTCHNL2_PROTO_HDR_ANY is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ANY			0
+#define VIRTCHNL2_PROTO_HDR_PRE_MAC		1
+/* VIRTCHNL2_PROTO_HDR_MAC is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_MAC			2
+#define VIRTCHNL2_PROTO_HDR_POST_MAC		3
+#define VIRTCHNL2_PROTO_HDR_ETHERTYPE		4
+#define VIRTCHNL2_PROTO_HDR_VLAN		5
+#define VIRTCHNL2_PROTO_HDR_SVLAN		6
+#define VIRTCHNL2_PROTO_HDR_CVLAN		7
+#define VIRTCHNL2_PROTO_HDR_MPLS		8
+#define VIRTCHNL2_PROTO_HDR_UMPLS		9
+#define VIRTCHNL2_PROTO_HDR_MMPLS		10
+#define VIRTCHNL2_PROTO_HDR_PTP			11
+#define VIRTCHNL2_PROTO_HDR_CTRL		12
+#define VIRTCHNL2_PROTO_HDR_LLDP		13
+#define VIRTCHNL2_PROTO_HDR_ARP			14
+#define VIRTCHNL2_PROTO_HDR_ECP			15
+#define VIRTCHNL2_PROTO_HDR_EAPOL		16
+#define VIRTCHNL2_PROTO_HDR_PPPOD		17
+#define VIRTCHNL2_PROTO_HDR_PPPOE		18
+/* VIRTCHNL2_PROTO_HDR_IPV4 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV4		19
+/* IPv4 and IPv6 Fragment header types are only associated to
+ * VIRTCHNL2_PROTO_HDR_IPV4 and VIRTCHNL2_PROTO_HDR_IPV6 respectively,
+ * cannot be used independently.
+ */
+/* VIRTCHNL2_PROTO_HDR_IPV4_FRAG is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV4_FRAG		20
+/* VIRTCHNL2_PROTO_HDR_IPV6 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV6		21
+/* VIRTCHNL2_PROTO_HDR_IPV6_FRAG is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_IPV6_FRAG		22
+#define VIRTCHNL2_PROTO_HDR_IPV6_EH		23
+/* VIRTCHNL2_PROTO_HDR_UDP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_UDP			24
+/* VIRTCHNL2_PROTO_HDR_TCP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_TCP			25
+/* VIRTCHNL2_PROTO_HDR_SCTP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_SCTP		26
+/* VIRTCHNL2_PROTO_HDR_ICMP is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ICMP		27
+/* VIRTCHNL2_PROTO_HDR_ICMPV6 is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_ICMPV6		28
+#define VIRTCHNL2_PROTO_HDR_IGMP		29
+#define VIRTCHNL2_PROTO_HDR_AH			30
+#define VIRTCHNL2_PROTO_HDR_ESP			31
+#define VIRTCHNL2_PROTO_HDR_IKE			32
+#define VIRTCHNL2_PROTO_HDR_NATT_KEEP		33
+/* VIRTCHNL2_PROTO_HDR_PAY is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_PAY			34
+#define VIRTCHNL2_PROTO_HDR_L2TPV2		35
+#define VIRTCHNL2_PROTO_HDR_L2TPV2_CONTROL	36
+#define VIRTCHNL2_PROTO_HDR_L2TPV3		37
+#define VIRTCHNL2_PROTO_HDR_GTP			38
+#define VIRTCHNL2_PROTO_HDR_GTP_EH		39
+#define VIRTCHNL2_PROTO_HDR_GTPCV2		40
+#define VIRTCHNL2_PROTO_HDR_GTPC_TEID		41
+#define VIRTCHNL2_PROTO_HDR_GTPU		42
+#define VIRTCHNL2_PROTO_HDR_GTPU_UL		43
+#define VIRTCHNL2_PROTO_HDR_GTPU_DL		44
+#define VIRTCHNL2_PROTO_HDR_ECPRI		45
+#define VIRTCHNL2_PROTO_HDR_VRRP		46
+#define VIRTCHNL2_PROTO_HDR_OSPF		47
+/* VIRTCHNL2_PROTO_HDR_TUN is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_TUN			48
+#define VIRTCHNL2_PROTO_HDR_GRE			49
+#define VIRTCHNL2_PROTO_HDR_NVGRE		50
+#define VIRTCHNL2_PROTO_HDR_VXLAN		51
+#define VIRTCHNL2_PROTO_HDR_VXLAN_GPE		52
+#define VIRTCHNL2_PROTO_HDR_GENEVE		53
+#define VIRTCHNL2_PROTO_HDR_NSH			54
+#define VIRTCHNL2_PROTO_HDR_QUIC		55
+#define VIRTCHNL2_PROTO_HDR_PFCP		56
+#define VIRTCHNL2_PROTO_HDR_PFCP_NODE		57
+#define VIRTCHNL2_PROTO_HDR_PFCP_SESSION	58
+#define VIRTCHNL2_PROTO_HDR_RTP			59
+#define VIRTCHNL2_PROTO_HDR_ROCE		60
+#define VIRTCHNL2_PROTO_HDR_ROCEV1		61
+#define VIRTCHNL2_PROTO_HDR_ROCEV2		62
+/* protocol ids upto 32767 are reserved for AVF use */
+/* 32768 - 65534 are used for user defined protocol ids */
+/* VIRTCHNL2_PROTO_HDR_NO_PROTO is a mandatory protocol id */
+#define VIRTCHNL2_PROTO_HDR_NO_PROTO		65535
+
+#define VIRTCHNL2_VERSION_MAJOR_2        2
+#define VIRTCHNL2_VERSION_MINOR_0        0
+
+/* VIRTCHNL2_OP_GET_EDT_CAPS
+ * Get EDT granularity and time horizon
+ */
+struct virtchnl2_edt_caps {
+	/* Timestamp granularity in nanoseconds */
+	__le64 tstamp_granularity_ns;
+	/* Total time window in nanoseconds */
+	__le64 time_horizon_ns;
+};
+
+/* VIRTCHNL2_OP_VERSION
+ * PF/VF posts its version number to the CP. CP responds with its version number
+ * in the same format, along with a return code.
+ * If there is a major version mismatch, then the PF/VF cannot operate.
+ * If there is a minor version mismatch, then the PF/VF can operate but should
+ * add a warning to the system log.
+ *
+ * This version opcode MUST always be specified as == 1, regardless of other
+ * changes in the API. The CP must always respond to this message without
+ * error regardless of version mismatch.
+ */
+struct virtchnl2_version_info {
+	u32 major;
+	u32 minor;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
+
+/* VIRTCHNL2_OP_GET_CAPS
+ * Dataplane driver sends this message to CP to negotiate capabilities and
+ * provides a virtchnl2_get_capabilities structure with its desired
+ * capabilities, max_sriov_vfs and num_allocated_vectors.
+ * CP responds with a virtchnl2_get_capabilities structure updated
+ * with allowed capabilities and the other fields as below.
+ * If PF sets max_sriov_vfs as 0, CP will respond with max number of VFs
+ * that can be created by this PF. For any other value 'n', CP responds
+ * with max_sriov_vfs set to min(n, x) where x is the max number of VFs
+ * allowed by CP's policy. max_sriov_vfs is not applicable for VFs.
+ * If dataplane driver sets num_allocated_vectors as 0, CP will respond with 1
+ * which is default vector associated with the default mailbox. For any other
+ * value 'n', CP responds with a value <= n based on the CP's policy of
+ * max number of vectors for a PF.
+ * CP will respond with the vector ID of mailbox allocated to the PF in
+ * mailbox_vector_id and the number of itr index registers in itr_idx_map.
+ * It also responds with default number of vports that the dataplane driver
+ * should comeup with in default_num_vports and maximum number of vports that
+ * can be supported in max_vports
+ */
+struct virtchnl2_get_capabilities {
+	/* see VIRTCHNL2_CHECKSUM_OFFLOAD_CAPS definitions */
+	__le32 csum_caps;
+
+	/* see VIRTCHNL2_SEGMENTATION_OFFLOAD_CAPS definitions */
+	__le32 seg_caps;
+
+	/* see VIRTCHNL2_HEADER_SPLIT_CAPS definitions */
+	__le32 hsplit_caps;
+
+	/* see VIRTCHNL2_RSC_OFFLOAD_CAPS definitions */
+	__le32 rsc_caps;
+
+	/* see VIRTCHNL2_RSS_FLOW_TYPE_CAPS definitions  */
+	__le64 rss_caps;
+
+
+	/* see VIRTCHNL2_OTHER_CAPS definitions  */
+	__le64 other_caps;
+
+	/* DYN_CTL register offset and vector id for mailbox provided by CP */
+	__le32 mailbox_dyn_ctl;
+	__le16 mailbox_vector_id;
+	/* Maximum number of allocated vectors for the device */
+	__le16 num_allocated_vectors;
+
+	/* Maximum number of queues that can be supported */
+	__le16 max_rx_q;
+	__le16 max_tx_q;
+	__le16 max_rx_bufq;
+	__le16 max_tx_complq;
+
+	/* The PF sends the maximum VFs it is requesting. The CP responds with
+	 * the maximum VFs granted.
+	 */
+	__le16 max_sriov_vfs;
+
+	/* maximum number of vports that can be supported */
+	__le16 max_vports;
+	/* default number of vports driver should allocate on load */
+	__le16 default_num_vports;
+
+	/* Max header length hardware can parse/checksum, in bytes */
+	__le16 max_tx_hdr_size;
+
+	/* Max number of scatter gather buffers that can be sent per transmit
+	 * packet without needing to be linearized
+	 */
+	u8 max_sg_bufs_per_tx_pkt;
+
+	u8 reserved1;
+	__le16 pad1;
+
+	/* version of Control Plane that is running */
+	__le16 oem_cp_ver_major;
+	__le16 oem_cp_ver_minor;
+	/* see VIRTCHNL2_DEVICE_TYPE definitions */
+	__le32 device_type;
+
+	/* min packet length supported by device for single segment offload */
+	u8 min_sso_packet_len;
+	/* max number of header buffers that can be used for an LSO */
+	u8 max_hdr_buf_per_lso;
+
+	u8 reserved[10];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(80, virtchnl2_get_capabilities);
+
+struct virtchnl2_queue_reg_chunk {
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	__le32 pad;
+
+	/* Queue tail register offset and spacing provided by CP */
+	__le64 qtail_reg_start;
+	__le32 qtail_reg_spacing;
+
+	u8 reserved[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_queue_reg_chunk);
+
+/* structure to specify several chunks of contiguous queues */
+struct virtchnl2_queue_reg_chunks {
+	__le16 num_chunks;
+	u8 reserved[6];
+	struct virtchnl2_queue_reg_chunk chunks[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(40, virtchnl2_queue_reg_chunks);
+
+/* VIRTCHNL2_OP_CREATE_VPORT
+ * PF sends this message to CP to create a vport by filling in required
+ * fields of virtchnl2_create_vport structure.
+ * CP responds with the updated virtchnl2_create_vport structure containing the
+ * necessary fields followed by chunks which in turn will have an array of
+ * num_chunks entries of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_create_vport {
+	/* PF/VF populates the following fields on request */
+	/* see VIRTCHNL2_VPORT_TYPE definitions */
+	__le16 vport_type;
+
+	/* see VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 txq_model;
+
+	/* see VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 rxq_model;
+	__le16 num_tx_q;
+	/* valid only if txq_model is split queue */
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	/* valid only if rxq_model is split queue */
+	__le16 num_rx_bufq;
+	/* relative receive queue index to be used as default */
+	__le16 default_rx_q;
+	/* used to align PF and CP in case of default multiple vports, it is
+	 * filled by the PF and CP returns the same value, to enable the driver
+	 * to support multiple asynchronous parallel CREATE_VPORT requests and
+	 * associate a response to a specific request
+	 */
+	__le16 vport_index;
+
+	/* CP populates the following fields on response */
+	__le16 max_mtu;
+	__le32 vport_id;
+	u8 default_mac_addr[ETH_ALEN];
+	__le16 pad;
+	/* see VIRTCHNL2_RX_DESC_IDS definitions */
+	__le64 rx_desc_ids;
+	/* see VIRTCHNL2_TX_DESC_IDS definitions */
+	__le64 tx_desc_ids;
+
+	u8 reserved1[72];
+
+	/* see VIRTCHNL2_RSS_ALGORITHM definitions */
+	__le32 rss_algorithm;
+	__le16 rss_key_size;
+	__le16 rss_lut_size;
+
+	/* see VIRTCHNL2_HEADER_SPLIT_CAPS definitions */
+	__le32 rx_split_pos;
+
+	u8 reserved[20];
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(192, virtchnl2_create_vport);
+
+/* VIRTCHNL2_OP_DESTROY_VPORT
+ * VIRTCHNL2_OP_ENABLE_VPORT
+ * VIRTCHNL2_OP_DISABLE_VPORT
+ * PF sends this message to CP to destroy, enable or disable a vport by filling
+ * in the vport_id in virtchnl2_vport structure.
+ * CP responds with the status of the requested operation.
+ */
+struct virtchnl2_vport {
+	__le32 vport_id;
+	u8 reserved[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_vport);
+
+/* Transmit queue config info */
+struct virtchnl2_txq_info {
+	__le64 dma_ring_addr;
+
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+
+	__le32 queue_id;
+	/* valid only if queue model is split and type is trasmit queue. Used
+	 * in many to one mapping of transmit queues to completion queue
+	 */
+	__le16 relative_queue_id;
+
+	/* see VIRTCHNL2_QUEUE_MODEL definitions */
+	__le16 model;
+
+	/* see VIRTCHNL2_TXQ_SCHED_MODE definitions */
+	__le16 sched_mode;
+
+	/* see VIRTCHNL2_TXQ_FLAGS definitions */
+	__le16 qflags;
+	__le16 ring_len;
+
+	/* valid only if queue model is split and type is transmit queue */
+	__le16 tx_compl_queue_id;
+	/* valid only if queue type is VIRTCHNL2_QUEUE_TYPE_MAILBOX_TX */
+	/* see VIRTCHNL2_PEER_TYPE definitions */
+	__le16 peer_type;
+	/* valid only if queue type is CONFIG_TX and used to deliver messages
+	 * for the respective CONFIG_TX queue
+	 */
+	__le16 peer_rx_queue_id;
+
+	u8 pad[4];
+
+	/* Egress pasid is used for SIOV use case */
+	__le32 egress_pasid;
+	__le32 egress_hdr_pasid;
+	__le32 egress_buf_pasid;
+
+	u8 reserved[8];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(56, virtchnl2_txq_info);
+
+/* VIRTCHNL2_OP_CONFIG_TX_QUEUES
+ * PF sends this message to set up parameters for one or more transmit queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_txq_info
+ * structures. CP configures requested queues and returns a status code. If
+ * num_qinfo specified is greater than the number of queues associated with the
+ * vport, an error is returned and no queues are configured.
+ */
+struct virtchnl2_config_tx_queues {
+	__le32 vport_id;
+	__le16 num_qinfo;
+
+	u8 reserved[10];
+	struct virtchnl2_txq_info qinfo[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(72, virtchnl2_config_tx_queues);
+
+/* Receive queue config info */
+struct virtchnl2_rxq_info {
+	/* see VIRTCHNL2_RX_DESC_IDS definitions */
+	__le64 desc_ids;
+	__le64 dma_ring_addr;
+
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 queue_id;
+
+	/* see QUEUE_MODEL definitions */
+	__le16 model;
+
+	__le16 hdr_buffer_size;
+	__le32 data_buffer_size;
+	__le32 max_pkt_size;
+
+	__le16 ring_len;
+	u8 buffer_notif_stride;
+	u8 pad[1];
+
+	/* Applicable only for receive buffer queues */
+	__le64 dma_head_wb_addr;
+
+	/* Applicable only for receive completion queues */
+	/* see VIRTCHNL2_RXQ_FLAGS definitions */
+	__le16 qflags;
+
+	__le16 rx_buffer_low_watermark;
+
+	/* valid only in split queue model */
+	__le16 rx_bufq1_id;
+	/* valid only in split queue model */
+	__le16 rx_bufq2_id;
+	/* it indicates if there is a second buffer, rx_bufq2_id is valid only
+	 * if this field is set
+	 */
+	u8 bufq2_ena;
+	u8 pad2[3];
+
+	/* Ingress pasid is used for SIOV use case */
+	__le32 ingress_pasid;
+	__le32 ingress_hdr_pasid;
+	__le32 ingress_buf_pasid;
+
+	u8 reserved[16];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(88, virtchnl2_rxq_info);
+
+/* VIRTCHNL2_OP_CONFIG_RX_QUEUES
+ * PF sends this message to set up parameters for one or more receive queues.
+ * This message contains an array of num_qinfo instances of virtchnl2_rxq_info
+ * structures. CP configures requested queues and returns a status code.
+ * If the number of queues specified is greater than the number of queues
+ * associated with the vport, an error is returned and no queues are configured.
+ */
+struct virtchnl2_config_rx_queues {
+	__le32 vport_id;
+	__le16 num_qinfo;
+
+	u8 reserved[18];
+	struct virtchnl2_rxq_info qinfo[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(112, virtchnl2_config_rx_queues);
+
+/* VIRTCHNL2_OP_ADD_QUEUES
+ * PF sends this message to request additional transmit/receive queues beyond
+ * the ones that were assigned via CREATE_VPORT request. virtchnl2_add_queues
+ * structure is used to specify the number of each type of queues.
+ * CP responds with the same structure with the actual number of queues assigned
+ * followed by num_chunks of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_add_queues {
+	__le32 vport_id;
+	__le16 num_tx_q;
+	__le16 num_tx_complq;
+	__le16 num_rx_q;
+	__le16 num_rx_bufq;
+	u8 reserved[4];
+	struct virtchnl2_queue_reg_chunks chunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(56, virtchnl2_add_queues);
+
+/* Structure to specify a chunk of contiguous interrupt vectors */
+struct virtchnl2_vector_chunk {
+	__le16 start_vector_id;
+	__le16 start_evv_id;
+	__le16 num_vectors;
+	__le16 pad1;
+
+	/* Register offsets and spacing provided by CP.
+	 * dynamic control registers are used for enabling/disabling/re-enabling
+	 * interrupts and updating interrupt rates in the hotpath. Any changes
+	 * to interrupt rates in the dynamic control registers will be reflected
+	 * in the interrupt throttling rate registers.
+	 * itrn registers are used to update interrupt rates for specific
+	 * interrupt indices without modifying the state of the interrupt.
+	 */
+	__le32 dynctl_reg_start;
+	/* register spacing between dynctl registers of 2 consecutive vectors */
+	__le32 dynctl_reg_spacing;
+
+	__le32 itrn_reg_start;
+	/* register spacing between itrn registers of 2 consecutive vectors */
+	__le32 itrn_reg_spacing;
+	/* register spacing between itrn registers of the same vector
+	 * where n=0..2
+	 */
+	__le32 itrn_index_spacing;
+	u8 reserved[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_vector_chunk);
+
+/* Structure to specify several chunks of contiguous interrupt vectors */
+struct virtchnl2_vector_chunks {
+	__le16 num_vchunks;
+	u8 reserved[14];
+	struct virtchnl2_vector_chunk vchunks[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(48, virtchnl2_vector_chunks);
+
+/* VIRTCHNL2_OP_ALLOC_VECTORS
+ * PF sends this message to request additional interrupt vectors beyond the
+ * ones that were assigned via GET_CAPS request. virtchnl2_alloc_vectors
+ * structure is used to specify the number of vectors requested. CP responds
+ * with the same structure with the actual number of vectors assigned followed
+ * by virtchnl2_vector_chunks structure identifying the vector ids.
+ */
+struct virtchnl2_alloc_vectors {
+	__le16 num_vectors;
+	u8 reserved[14];
+	struct virtchnl2_vector_chunks vchunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(64, virtchnl2_alloc_vectors);
+
+/* VIRTCHNL2_OP_DEALLOC_VECTORS
+ * PF sends this message to release the vectors.
+ * PF sends virtchnl2_vector_chunks struct to specify the vectors it is giving
+ * away. CP performs requested action and returns status.
+ */
+
+/* VIRTCHNL2_OP_GET_RSS_LUT
+ * VIRTCHNL2_OP_SET_RSS_LUT
+ * PF sends this message to get or set RSS lookup table. Only supported if
+ * both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation. Uses the virtchnl2_rss_lut structure
+ */
+struct virtchnl2_rss_lut {
+	__le32 vport_id;
+	__le16 lut_entries_start;
+	__le16 lut_entries;
+	u8 reserved[4];
+	__le32 lut[1]; /* RSS lookup table */
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_rss_lut);
+
+/* VIRTCHNL2_OP_GET_RSS_KEY
+ * PF sends this message to get RSS key. Only supported if both PF and CP
+ * drivers set the VIRTCHNL2_CAP_RSS bit during configuration negotiation. Uses
+ * the virtchnl2_rss_key structure
+ */
+
+/* VIRTCHNL2_OP_GET_RSS_HASH
+ * VIRTCHNL2_OP_SET_RSS_HASH
+ * PF sends these messages to get and set the hash filter enable bits for RSS.
+ * By default, the CP sets these to all possible traffic types that the
+ * hardware supports. The PF can query this value if it wants to change the
+ * traffic types that are hashed by the hardware.
+ * Only supported if both PF and CP drivers set the VIRTCHNL2_CAP_RSS bit
+ * during configuration negotiation.
+ */
+struct virtchnl2_rss_hash {
+	/* Packet Type Groups bitmap */
+	__le64 ptype_groups;
+	__le32 vport_id;
+	u8 reserved[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_rss_hash);
+
+/* VIRTCHNL2_OP_SET_SRIOV_VFS
+ * This message is used to set number of SRIOV VFs to be created. The actual
+ * allocation of resources for the VFs in terms of vport, queues and interrupts
+ * is done by CP. When this call completes, the APF driver calls
+ * pci_enable_sriov to let the OS instantiate the SRIOV PCIE devices.
+ * The number of VFs set to 0 will destroy all the VFs of this function.
+ */
+
+struct virtchnl2_sriov_vfs_info {
+	__le16 num_vfs;
+	__le16 pad;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(4, virtchnl2_sriov_vfs_info);
+
+/* VIRTCHNL2_OP_CREATE_ADI
+ * PF sends this message to CP to create ADI by filling in required
+ * fields of virtchnl2_create_adi structure.
+ * CP responds with the updated virtchnl2_create_adi structure containing the
+ * necessary fields followed by chunks which in turn will have an array of
+ * num_chunks entries of virtchnl2_queue_chunk structures.
+ */
+struct virtchnl2_create_adi {
+	/* PF sends PASID to CP */
+	__le32 pasid;
+	/*
+	 * mbx_id is set to 1 by PF when requesting CP to provide HW mailbox
+	 * id else it is set to 0 by PF
+	 */
+	__le16 mbx_id;
+	/* PF sends mailbox vector id to CP */
+	__le16 mbx_vec_id;
+	/* CP populates ADI id */
+	__le16 adi_id;
+	u8 reserved[64];
+	u8 pad[6];
+	/* CP populates queue chunks */
+	struct virtchnl2_queue_reg_chunks chunks;
+	/* PF sends vector chunks to CP */
+	struct virtchnl2_vector_chunks vchunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(168, virtchnl2_create_adi);
+
+/* VIRTCHNL2_OP_DESTROY_ADI
+ * PF sends this message to CP to destroy ADI by filling
+ * in the adi_id in virtchnl2_destropy_adi structure.
+ * CP responds with the status of the requested operation.
+ */
+struct virtchnl2_destroy_adi {
+	__le16 adi_id;
+	u8 reserved[2];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(4, virtchnl2_destroy_adi);
+
+/* Based on the descriptor type the PF supports, CP fills ptype_id_10 or
+ * ptype_id_8 for flex and base descriptor respectively. If ptype_id_10 value
+ * is set to 0xFFFF, PF should consider this ptype as dummy one and it is the
+ * last ptype.
+ */
+struct virtchnl2_ptype {
+	__le16 ptype_id_10;
+	u8 ptype_id_8;
+	/* number of protocol ids the packet supports, maximum of 32
+	 * protocol ids are supported
+	 */
+	u8 proto_id_count;
+	__le16 pad;
+	/* proto_id_count decides the allocation of protocol id array */
+	/* see VIRTCHNL2_PROTO_HDR_TYPE */
+	__le16 proto_id[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptype);
+
+/* VIRTCHNL2_OP_GET_PTYPE_INFO
+ * PF sends this message to CP to get all supported packet types. It does by
+ * filling in start_ptype_id and num_ptypes. Depending on descriptor type the
+ * PF supports, it sets num_ptypes to 1024 (10-bit ptype) for flex descriptor
+ * and 256 (8-bit ptype) for base descriptor support. CP responds back to PF by
+ * populating start_ptype_id, num_ptypes and array of ptypes. If all ptypes
+ * doesn't fit into one mailbox buffer, CP splits ptype info into multiple
+ * messages, where each message will have the start ptype id, number of ptypes
+ * sent in that message and the ptype array itself. When CP is done updating
+ * all ptype information it extracted from the package (number of ptypes
+ * extracted might be less than what PF expects), it will append a dummy ptype
+ * (which has 'ptype_id_10' of 'struct virtchnl2_ptype' as 0xFFFF) to the ptype
+ * array. PF is expected to receive multiple VIRTCHNL2_OP_GET_PTYPE_INFO
+ * messages.
+ */
+struct virtchnl2_get_ptype_info {
+	__le16 start_ptype_id;
+	__le16 num_ptypes;
+	__le32 pad;
+	struct virtchnl2_ptype ptype[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_get_ptype_info);
+
+/* VIRTCHNL2_OP_GET_STATS
+ * PF/VF sends this message to CP to get the update stats by specifying the
+ * vport_id. CP responds with stats in struct virtchnl2_vport_stats.
+ */
+struct virtchnl2_vport_stats {
+	__le32 vport_id;
+	u8 pad[4];
+
+	__le64 rx_bytes;		/* received bytes */
+	__le64 rx_unicast;		/* received unicast pkts */
+	__le64 rx_multicast;		/* received multicast pkts */
+	__le64 rx_broadcast;		/* received broadcast pkts */
+	__le64 rx_discards;
+	__le64 rx_errors;
+	__le64 rx_unknown_protocol;
+	__le64 tx_bytes;		/* transmitted bytes */
+	__le64 tx_unicast;		/* transmitted unicast pkts */
+	__le64 tx_multicast;		/* transmitted multicast pkts */
+	__le64 tx_broadcast;		/* transmitted broadcast pkts */
+	__le64 tx_discards;
+	__le64 tx_errors;
+	__le64 rx_invalid_frame_length;
+	__le64 rx_overflow_drop;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(128, virtchnl2_vport_stats);
+
+/* VIRTCHNL2_OP_EVENT
+ * CP sends this message to inform the PF/VF driver of events that may affect
+ * it. No direct response is expected from the driver, though it may generate
+ * other messages in response to this one.
+ */
+struct virtchnl2_event {
+	/* see VIRTCHNL2_EVENT_CODES definitions */
+	__le32 event;
+	/* link_speed provided in Mbps */
+	__le32 link_speed;
+	__le32 vport_id;
+	u8 link_status;
+	u8 pad[1];
+	/* CP sends reset notification to PF with corresponding ADI ID */
+	__le16 adi_id;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_event);
+
+/* VIRTCHNL2_OP_GET_RSS_KEY
+ * VIRTCHNL2_OP_SET_RSS_KEY
+ * PF/VF sends this message to get or set RSS key. Only supported if both
+ * PF/VF and CP drivers set the VIRTCHNL2_CAP_RSS bit during configuration
+ * negotiation. Uses the virtchnl2_rss_key structure
+ */
+struct virtchnl2_rss_key {
+	__le32 vport_id;
+	__le16 key_len;
+	u8 pad;
+	u8 key[1];         /* RSS hash key, packed bytes */
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_rss_key);
+
+/* structure to specify a chunk of contiguous queues */
+struct virtchnl2_queue_chunk {
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 type;
+	__le32 start_queue_id;
+	__le32 num_queues;
+	u8 reserved[4];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_queue_chunk);
+
+/* structure to specify several chunks of contiguous queues */
+struct virtchnl2_queue_chunks {
+	__le16 num_chunks;
+	u8 reserved[6];
+	struct virtchnl2_queue_chunk chunks[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_queue_chunks);
+
+/* VIRTCHNL2_OP_ENABLE_QUEUES
+ * VIRTCHNL2_OP_DISABLE_QUEUES
+ * VIRTCHNL2_OP_DEL_QUEUES
+ *
+ * PF sends these messages to enable, disable or delete queues specified in
+ * chunks. PF sends virtchnl2_del_ena_dis_queues struct to specify the queues
+ * to be enabled/disabled/deleted. Also applicable to single queue receive or
+ * transmit. CP performs requested action and returns status.
+ */
+struct virtchnl2_del_ena_dis_queues {
+	__le32 vport_id;
+	u8 reserved[4];
+	struct virtchnl2_queue_chunks chunks;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(32, virtchnl2_del_ena_dis_queues);
+
+/* Queue to vector mapping */
+struct virtchnl2_queue_vector {
+	__le32 queue_id;
+	__le16 vector_id;
+	u8 pad[2];
+
+	/* see VIRTCHNL2_ITR_IDX definitions */
+	__le32 itr_idx;
+
+	/* see VIRTCHNL2_QUEUE_TYPE definitions */
+	__le32 queue_type;
+	u8 reserved[8];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(24, virtchnl2_queue_vector);
+
+/* VIRTCHNL2_OP_MAP_QUEUE_VECTOR
+ * VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR
+ *
+ * PF sends this message to map or unmap queues to vectors and interrupt
+ * throttling rate index registers. External data buffer contains
+ * virtchnl2_queue_vector_maps structure that contains num_qv_maps of
+ * virtchnl2_queue_vector structures. CP maps the requested queue vector maps
+ * after validating the queue and vector ids and returns a status code.
+ */
+struct virtchnl2_queue_vector_maps {
+	__le32 vport_id;
+	__le16 num_qv_maps;
+	u8 pad[10];
+	struct virtchnl2_queue_vector qv_maps[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(40, virtchnl2_queue_vector_maps);
+
+/* VIRTCHNL2_OP_LOOPBACK
+ *
+ * PF/VF sends this message to transition to/from the loopback state. Setting
+ * the 'enable' to 1 enables the loopback state and setting 'enable' to 0
+ * disables it. CP configures the state to loopback and returns status.
+ */
+struct virtchnl2_loopback {
+	__le32 vport_id;
+	u8 enable;
+	u8 pad[3];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_loopback);
+
+/* structure to specify each MAC address */
+struct virtchnl2_mac_addr {
+	u8 addr[ETH_ALEN];
+	/* see VIRTCHNL2_MAC_TYPE definitions */
+	u8 type;
+	u8 pad;
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_mac_addr);
+
+/* VIRTCHNL2_OP_ADD_MAC_ADDR
+ * VIRTCHNL2_OP_DEL_MAC_ADDR
+ *
+ * PF/VF driver uses this structure to send list of MAC addresses to be
+ * added/deleted to the CP where as CP performs the action and returns the
+ * status.
+ */
+struct virtchnl2_mac_addr_list {
+	__le32 vport_id;
+	__le16 num_mac_addr;
+	u8 pad[2];
+	struct virtchnl2_mac_addr mac_addr_list[1];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(16, virtchnl2_mac_addr_list);
+
+/* VIRTCHNL2_OP_CONFIG_PROMISCUOUS_MODE
+ *
+ * PF/VF sends vport id and flags to the CP where as CP performs the action
+ * and returns the status.
+ */
+struct virtchnl2_promisc_info {
+	__le32 vport_id;
+	/* see VIRTCHNL2_PROMISC_FLAGS definitions */
+	__le16 flags;
+	u8 pad[2];
+};
+
+VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_promisc_info);
+
+static inline const char *virtchnl2_op_str(__le32 v_opcode)
+{
+	switch (v_opcode) {
+	case VIRTCHNL2_OP_VERSION:
+		return "VIRTCHNL2_OP_VERSION";
+	case VIRTCHNL2_OP_GET_CAPS:
+		return "VIRTCHNL2_OP_GET_CAPS";
+	case VIRTCHNL2_OP_CREATE_VPORT:
+		return "VIRTCHNL2_OP_CREATE_VPORT";
+	case VIRTCHNL2_OP_DESTROY_VPORT:
+		return "VIRTCHNL2_OP_DESTROY_VPORT";
+	case VIRTCHNL2_OP_ENABLE_VPORT:
+		return "VIRTCHNL2_OP_ENABLE_VPORT";
+	case VIRTCHNL2_OP_DISABLE_VPORT:
+		return "VIRTCHNL2_OP_DISABLE_VPORT";
+	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+		return "VIRTCHNL2_OP_CONFIG_TX_QUEUES";
+	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+		return "VIRTCHNL2_OP_CONFIG_RX_QUEUES";
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+		return "VIRTCHNL2_OP_ENABLE_QUEUES";
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+		return "VIRTCHNL2_OP_DISABLE_QUEUES";
+	case VIRTCHNL2_OP_ADD_QUEUES:
+		return "VIRTCHNL2_OP_ADD_QUEUES";
+	case VIRTCHNL2_OP_DEL_QUEUES:
+		return "VIRTCHNL2_OP_DEL_QUEUES";
+	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+		return "VIRTCHNL2_OP_MAP_QUEUE_VECTOR";
+	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+		return "VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR";
+	case VIRTCHNL2_OP_GET_RSS_KEY:
+		return "VIRTCHNL2_OP_GET_RSS_KEY";
+	case VIRTCHNL2_OP_SET_RSS_KEY:
+		return "VIRTCHNL2_OP_SET_RSS_KEY";
+	case VIRTCHNL2_OP_GET_RSS_LUT:
+		return "VIRTCHNL2_OP_GET_RSS_LUT";
+	case VIRTCHNL2_OP_SET_RSS_LUT:
+		return "VIRTCHNL2_OP_SET_RSS_LUT";
+	case VIRTCHNL2_OP_GET_RSS_HASH:
+		return "VIRTCHNL2_OP_GET_RSS_HASH";
+	case VIRTCHNL2_OP_SET_RSS_HASH:
+		return "VIRTCHNL2_OP_SET_RSS_HASH";
+	case VIRTCHNL2_OP_SET_SRIOV_VFS:
+		return "VIRTCHNL2_OP_SET_SRIOV_VFS";
+	case VIRTCHNL2_OP_ALLOC_VECTORS:
+		return "VIRTCHNL2_OP_ALLOC_VECTORS";
+	case VIRTCHNL2_OP_DEALLOC_VECTORS:
+		return "VIRTCHNL2_OP_DEALLOC_VECTORS";
+	case VIRTCHNL2_OP_GET_PTYPE_INFO:
+		return "VIRTCHNL2_OP_GET_PTYPE_INFO";
+	case VIRTCHNL2_OP_GET_STATS:
+		return "VIRTCHNL2_OP_GET_STATS";
+	case VIRTCHNL2_OP_EVENT:
+		return "VIRTCHNL2_OP_EVENT";
+	case VIRTCHNL2_OP_RESET_VF:
+		return "VIRTCHNL2_OP_RESET_VF";
+	case VIRTCHNL2_OP_CREATE_ADI:
+		return "VIRTCHNL2_OP_CREATE_ADI";
+	case VIRTCHNL2_OP_DESTROY_ADI:
+		return "VIRTCHNL2_OP_DESTROY_ADI";
+	default:
+		return "Unsupported (update virtchnl2.h)";
+	}
+}
+
+/**
+ * virtchnl2_vc_validate_vf_msg
+ * @ver: Virtchnl2 version info
+ * @v_opcode: Opcode for the message
+ * @msg: pointer to the msg buffer
+ * @msglen: msg length
+ *
+ * validate msg format against struct for each opcode
+ */
+static inline int
+virtchnl2_vc_validate_vf_msg(struct virtchnl2_version_info *ver, u32 v_opcode,
+			     u8 *msg, __le16 msglen)
+{
+	bool err_msg_format = false;
+	__le32 valid_len = 0;
+
+	/* Validate message length. */
+	switch (v_opcode) {
+	case VIRTCHNL2_OP_VERSION:
+		valid_len = sizeof(struct virtchnl2_version_info);
+		break;
+	case VIRTCHNL2_OP_GET_CAPS:
+		valid_len = sizeof(struct virtchnl2_get_capabilities);
+		break;
+	case VIRTCHNL2_OP_CREATE_VPORT:
+		valid_len = sizeof(struct virtchnl2_create_vport);
+		if (msglen >= valid_len) {
+			struct virtchnl2_create_vport *cvport =
+				(struct virtchnl2_create_vport *)msg;
+
+			if (cvport->chunks.num_chunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			valid_len += (cvport->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_reg_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_CREATE_ADI:
+		valid_len = sizeof(struct virtchnl2_create_adi);
+		if (msglen >= valid_len) {
+			struct virtchnl2_create_adi *cadi =
+				(struct virtchnl2_create_adi *)msg;
+
+			if (cadi->chunks.num_chunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			if (cadi->vchunks.num_vchunks == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (cadi->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_reg_chunk);
+			valid_len += (cadi->vchunks.num_vchunks - 1) *
+				      sizeof(struct virtchnl2_vector_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_DESTROY_ADI:
+		valid_len = sizeof(struct virtchnl2_destroy_adi);
+		break;
+	case VIRTCHNL2_OP_DESTROY_VPORT:
+	case VIRTCHNL2_OP_ENABLE_VPORT:
+	case VIRTCHNL2_OP_DISABLE_VPORT:
+		valid_len = sizeof(struct virtchnl2_vport);
+		break;
+	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
+		valid_len = sizeof(struct virtchnl2_config_tx_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_config_tx_queues *ctq =
+				(struct virtchnl2_config_tx_queues *)msg;
+			if (ctq->num_qinfo == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (ctq->num_qinfo - 1) *
+				     sizeof(struct virtchnl2_txq_info);
+		}
+		break;
+	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
+		valid_len = sizeof(struct virtchnl2_config_rx_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_config_rx_queues *crq =
+				(struct virtchnl2_config_rx_queues *)msg;
+			if (crq->num_qinfo == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (crq->num_qinfo - 1) *
+				     sizeof(struct virtchnl2_rxq_info);
+		}
+		break;
+	case VIRTCHNL2_OP_ADD_QUEUES:
+		valid_len = sizeof(struct virtchnl2_add_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_add_queues *add_q =
+				(struct virtchnl2_add_queues *)msg;
+
+			if (add_q->chunks.num_chunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			valid_len += (add_q->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_reg_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_ENABLE_QUEUES:
+	case VIRTCHNL2_OP_DISABLE_QUEUES:
+	case VIRTCHNL2_OP_DEL_QUEUES:
+		valid_len = sizeof(struct virtchnl2_del_ena_dis_queues);
+		if (msglen >= valid_len) {
+			struct virtchnl2_del_ena_dis_queues *qs =
+				(struct virtchnl2_del_ena_dis_queues *)msg;
+			if (qs->chunks.num_chunks == 0 ||
+			    qs->chunks.num_chunks > VIRTCHNL2_OP_DEL_ENABLE_DISABLE_QUEUES_MAX) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (qs->chunks.num_chunks - 1) *
+				      sizeof(struct virtchnl2_queue_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
+	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
+		valid_len = sizeof(struct virtchnl2_queue_vector_maps);
+		if (msglen >= valid_len) {
+			struct virtchnl2_queue_vector_maps *v_qp =
+				(struct virtchnl2_queue_vector_maps *)msg;
+			if (v_qp->num_qv_maps == 0 ||
+			    v_qp->num_qv_maps > VIRTCHNL2_OP_MAP_UNMAP_QUEUE_VECTOR_MAX) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (v_qp->num_qv_maps - 1) *
+				      sizeof(struct virtchnl2_queue_vector);
+		}
+		break;
+	case VIRTCHNL2_OP_ALLOC_VECTORS:
+		valid_len = sizeof(struct virtchnl2_alloc_vectors);
+		if (msglen >= valid_len) {
+			struct virtchnl2_alloc_vectors *v_av =
+				(struct virtchnl2_alloc_vectors *)msg;
+
+			if (v_av->vchunks.num_vchunks == 0) {
+				/* zero chunks is allowed as input */
+				break;
+			}
+
+			valid_len += (v_av->vchunks.num_vchunks - 1) *
+				      sizeof(struct virtchnl2_vector_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_DEALLOC_VECTORS:
+		valid_len = sizeof(struct virtchnl2_vector_chunks);
+		if (msglen >= valid_len) {
+			struct virtchnl2_vector_chunks *v_chunks =
+				(struct virtchnl2_vector_chunks *)msg;
+			if (v_chunks->num_vchunks == 0) {
+				err_msg_format = true;
+				break;
+			}
+			valid_len += (v_chunks->num_vchunks - 1) *
+				      sizeof(struct virtchnl2_vector_chunk);
+		}
+		break;
+	case VIRTCHNL2_OP_GET_RSS_KEY:
+	case VIRTCHNL2_OP_SET_RSS_KEY:
+		valid_len = sizeof(struct virtchnl2_rss_key);
+		if (msglen >= valid_len) {
+			struct virtchnl2_rss_key *vrk =
+				(struct virtchnl2_rss_key *)msg;
+
+			if (vrk->key_len == 0) {
+				/* zero length is allowed as input */
+				break;
+			}
+
+			valid_len += vrk->key_len - 1;
+		}
+		break;
+	case VIRTCHNL2_OP_GET_RSS_LUT:
+	case VIRTCHNL2_OP_SET_RSS_LUT:
+		valid_len = sizeof(struct virtchnl2_rss_lut);
+		if (msglen >= valid_len) {
+			struct virtchnl2_rss_lut *vrl =
+				(struct virtchnl2_rss_lut *)msg;
+
+			if (vrl->lut_entries == 0) {
+				/* zero entries is allowed as input */
+				break;
+			}
+
+			valid_len += (vrl->lut_entries - 1) * sizeof(vrl->lut);
+		}
+		break;
+	case VIRTCHNL2_OP_GET_RSS_HASH:
+	case VIRTCHNL2_OP_SET_RSS_HASH:
+		valid_len = sizeof(struct virtchnl2_rss_hash);
+		break;
+	case VIRTCHNL2_OP_SET_SRIOV_VFS:
+		valid_len = sizeof(struct virtchnl2_sriov_vfs_info);
+		break;
+	case VIRTCHNL2_OP_GET_PTYPE_INFO:
+		valid_len = sizeof(struct virtchnl2_get_ptype_info);
+		break;
+	case VIRTCHNL2_OP_GET_STATS:
+		valid_len = sizeof(struct virtchnl2_vport_stats);
+		break;
+	case VIRTCHNL2_OP_RESET_VF:
+		break;
+	case VIRTCHNL2_OP_GET_EDT_CAPS:
+		break;
+	/* These are always errors coming from the VF. */
+	case VIRTCHNL2_OP_EVENT:
+	case VIRTCHNL2_OP_UNKNOWN:
+	default:
+		return VIRTCHNL2_STATUS_ERR_ESRCH;
+	}
+	/* few more checks */
+	if (err_msg_format || valid_len != msglen)
+		return VIRTCHNL2_STATUS_ERR_EINVAL;
+
+	return 0;
+}
+
+#endif /* _VIRTCHNL_2_H_ */
diff --git a/include/linux/avf/virtchnl2_lan_desc.h b/include/linux/avf/virtchnl2_lan_desc.h
new file mode 100644
index 000000000000..6bdc9539d231
--- /dev/null
+++ b/include/linux/avf/virtchnl2_lan_desc.h
@@ -0,0 +1,605 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2022, Intel Corporation. */
+
+/*
+ * Copyright (C) 2019 Intel Corporation
+ *
+ * For licensing information, see the file 'LICENSE' in the root folder
+ */
+#ifndef _VIRTCHNL2_LAN_DESC_H_
+#define _VIRTCHNL2_LAN_DESC_H_
+
+/* VIRTCHNL2_TX_DESC_IDS
+ * Transmit descriptor ID flags
+ */
+#define VIRTCHNL2_TXDID_DATA				BIT(0)
+#define VIRTCHNL2_TXDID_CTX				BIT(1)
+#define VIRTCHNL2_TXDID_REINJECT_CTX			BIT(2)
+#define VIRTCHNL2_TXDID_FLEX_DATA			BIT(3)
+#define VIRTCHNL2_TXDID_FLEX_CTX			BIT(4)
+#define VIRTCHNL2_TXDID_FLEX_TSO_CTX			BIT(5)
+#define VIRTCHNL2_TXDID_FLEX_TSYN_L2TAG1		BIT(6)
+#define VIRTCHNL2_TXDID_FLEX_L2TAG1_L2TAG2		BIT(7)
+#define VIRTCHNL2_TXDID_FLEX_TSO_L2TAG2_PARSTAG_CTX	BIT(8)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_SA_TSO_CTX	BIT(9)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_SA_CTX		BIT(10)
+#define VIRTCHNL2_TXDID_FLEX_L2TAG2_CTX			BIT(11)
+#define VIRTCHNL2_TXDID_FLEX_FLOW_SCHED			BIT(12)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_TSO_CTX		BIT(13)
+#define VIRTCHNL2_TXDID_FLEX_HOSTSPLIT_CTX		BIT(14)
+#define VIRTCHNL2_TXDID_DESC_DONE			BIT(15)
+
+/* VIRTCHNL2_RX_DESC_IDS
+ * Receive descriptor IDs (range from 0 to 63)
+ */
+#define VIRTCHNL2_RXDID_0_16B_BASE			0
+#define VIRTCHNL2_RXDID_1_32B_BASE			1
+/* FLEX_SQ_NIC and FLEX_SPLITQ share desc ids because they can be
+ * differentiated based on queue model; e.g. single queue model can
+ * only use FLEX_SQ_NIC and split queue model can only use FLEX_SPLITQ
+ * for DID 2.
+ */
+#define VIRTCHNL2_RXDID_2_FLEX_SPLITQ			2
+#define VIRTCHNL2_RXDID_2_FLEX_SQ_NIC			2
+#define VIRTCHNL2_RXDID_3_FLEX_SQ_SW			3
+#define VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB		4
+#define VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL		5
+#define VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2			6
+#define VIRTCHNL2_RXDID_7_HW_RSVD			7
+/* 9 through 15 are reserved */
+#define VIRTCHNL2_RXDID_16_COMMS_GENERIC		16
+#define VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN		17
+#define VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4		18
+#define VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6		19
+#define VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW		20
+#define VIRTCHNL2_RXDID_21_COMMS_AUX_TCP		21
+/* 22 through 63 are reserved */
+
+/* VIRTCHNL2_RX_DESC_ID_BITMASKS
+ * Receive descriptor ID bitmasks
+ */
+#define VIRTCHNL2_RXDID_0_16B_BASE_M		BIT(VIRTCHNL2_RXDID_0_16B_BASE)
+#define VIRTCHNL2_RXDID_1_32B_BASE_M		BIT(VIRTCHNL2_RXDID_1_32B_BASE)
+#define VIRTCHNL2_RXDID_2_FLEX_SPLITQ_M		BIT(VIRTCHNL2_RXDID_2_FLEX_SPLITQ)
+#define VIRTCHNL2_RXDID_2_FLEX_SQ_NIC_M		BIT(VIRTCHNL2_RXDID_2_FLEX_SQ_NIC)
+#define VIRTCHNL2_RXDID_3_FLEX_SQ_SW_M		BIT(VIRTCHNL2_RXDID_3_FLEX_SQ_SW)
+#define VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB_M	BIT(VIRTCHNL2_RXDID_4_FLEX_SQ_NIC_VEB)
+#define VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL_M	BIT(VIRTCHNL2_RXDID_5_FLEX_SQ_NIC_ACL)
+#define VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2_M	BIT(VIRTCHNL2_RXDID_6_FLEX_SQ_NIC_2)
+#define VIRTCHNL2_RXDID_7_HW_RSVD_M		BIT(VIRTCHNL2_RXDID_7_HW_RSVD)
+/* 9 through 15 are reserved */
+#define VIRTCHNL2_RXDID_16_COMMS_GENERIC_M	BIT(VIRTCHNL2_RXDID_16_COMMS_GENERIC)
+#define VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN_M	BIT(VIRTCHNL2_RXDID_17_COMMS_AUX_VLAN)
+#define VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4_M	BIT(VIRTCHNL2_RXDID_18_COMMS_AUX_IPV4)
+#define VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6_M	BIT(VIRTCHNL2_RXDID_19_COMMS_AUX_IPV6)
+#define VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW_M	BIT(VIRTCHNL2_RXDID_20_COMMS_AUX_FLOW)
+#define VIRTCHNL2_RXDID_21_COMMS_AUX_TCP_M	BIT(VIRTCHNL2_RXDID_21_COMMS_AUX_TCP)
+/* 22 through 63 are reserved */
+
+/* Rx */
+/* For splitq virtchnl2_rx_flex_desc_adv desc members */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M		\
+	MAKEMASK(0xFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M		\
+	MAKEMASK(0x3FFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_S		10
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_M		\
+	MAKEMASK(0x3UL, VIRTCHNL2_RX_FLEX_DESC_ADV_UMBCAST_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_M			\
+	MAKEMASK(0xFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M	\
+	MAKEMASK(0x3FFFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M			\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M		\
+	MAKEMASK(0x3FFUL, VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_S		10
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M			\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_S		11
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_M			\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_SPH_S)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_M			\
+	MAKEMASK(0x7UL, VIRTCHNL2_RX_FLEX_DESC_ADV_FF1_M)
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_M		\
+	BIT_ULL(VIRTCHNL2_RX_FLEX_DESC_ADV_MISS_S)
+
+/* VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_0_QW1_BITS
+ * for splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_DD_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_S		1
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EUDPE_S		7
+
+/* VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_0_QW0_BITS
+ * for splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LPBK_S		0
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_S		1
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RXE_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_CRCP_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RSS_VALID_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L2TAG1P_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD0_VALID_S	6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XTRMD1_VALID_S	7
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_LAST			8 /* this entry must be last!!! */
+
+/* VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS_ERROR_1_BITS
+ * for splitq virtchnl2_rx_flex_desc_adv
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_RSVD_S		0 /* 2 bits */
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_ATRAEFAIL_S		2
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_L2TAG2P_S		3
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD2_VALID_S	4
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD3_VALID_S	5
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD4_VALID_S	6
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_XTRMD5_VALID_S	7
+#define VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_LAST			8 /* this entry must be last!!! */
+
+/* for singleq (flex) virtchnl2_rx_flex_desc fields */
+/* for virtchnl2_rx_flex_desc.ptype_flex_flags0 member */
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_PTYPE_M			\
+	MAKEMASK(0x3FFUL, VIRTCHNL2_RX_FLEX_DESC_PTYPE_S) /* 10 bits */
+
+/* for virtchnl2_rx_flex_desc.pkt_length member */
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_M			\
+	MAKEMASK(0x3FFFUL, VIRTCHNL2_RX_FLEX_DESC_PKT_LEN_S) /* 14 bits */
+
+/* VIRTCHNL2_RX_FLEX_DESC_STATUS_ERROR_0_BITS
+ * for singleq (flex) virtchnl2_rx_flex_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_DD_S			0
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_EOF_S			1
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_HBO_S			2
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_L3L4P_S			3
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_IPE_S		4
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_L4E_S		5
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S		6
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S		7
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_LPBK_S			8
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_IPV6EXADD_S		9
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_RXE_S			10
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_CRCP_S			11
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_RSS_VALID_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_L2TAG1P_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS0_LAST			16 /* this entry must be last!!! */
+
+/* VIRTCHNL2_RX_FLEX_DESC_STATUS_ERROR_1_BITS
+ * for singleq (flex) virtchnl2_rx_flex_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_CPM_S			0 /* 4 bits */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_NAT_S			4
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_CRYPTO_S			5
+/* [10:6] reserved */
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_L2TAG2P_S		11
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_S		12
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_S		13
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_S		14
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_S		15
+#define VIRTCHNL2_RX_FLEX_DESC_STATUS1_LAST			16 /* this entry must be last!!! */
+
+/* for virtchnl2_rx_flex_desc.ts_low member */
+#define VIRTCHNL2_RX_FLEX_TSTAMP_VALID				BIT(0)
+
+/* For singleq (non flex) virtchnl2_singleq_base_rx_desc legacy desc members */
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_S	63
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_M	\
+	BIT_ULL(VIRTCHNL2_RX_BASE_DESC_QW1_LEN_SPH_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_S	52
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_M	\
+	MAKEMASK(0x7FFULL, VIRTCHNL2_RX_BASE_DESC_QW1_LEN_HBUF_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_S	38
+#define VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_M	\
+	MAKEMASK(0x3FFFULL, VIRTCHNL2_RX_BASE_DESC_QW1_LEN_PBUF_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_S	30
+#define VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_M	\
+	MAKEMASK(0xFFULL, VIRTCHNL2_RX_BASE_DESC_QW1_PTYPE_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_S	19
+#define VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M	\
+	MAKEMASK(0xFFUL, VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_S)
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_S	0
+#define VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_M	\
+	MAKEMASK(0x7FFFFUL, VIRTCHNL2_RX_BASE_DESC_QW1_STATUS_S)
+
+/* VIRTCHNL2_RX_BASE_DESC_STATUS_BITS
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_DD_S		0
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_EOF_S		1
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_L2TAG1P_S		2
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_L3L4P_S		3
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_CRCP_S		4
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD_S		5 /* 3 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_EXT_UDP_0_S	8
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_UMBCAST_S		9 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_FLM_S		11
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_FLTSTAT_S		12 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_LPBK_S		14
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_IPV6EXADD_S	15
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_RSVD1_S		16 /* 2 bits */
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_INT_UDP_0_S	18
+#define VIRTCHNL2_RX_BASE_DESC_STATUS_LAST		19 /* this entry must be last!!! */
+
+/* VIRTCHNL2_RX_BASE_DESC_EXT_STATUS_BITS
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_EXT_STATUS_L2TAG2P_S	0
+
+/* VIRTCHNL2_RX_BASE_DESC_ERROR_BITS
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_S		0
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_ATRAEFAIL_S	1
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_HBO_S		2
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_L3L4E_S		3 /* 3 bits */
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_IPE_S		3
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_L4E_S		4
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_EIPE_S		5
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_OVERSIZE_S		6
+#define VIRTCHNL2_RX_BASE_DESC_ERROR_PPRS_S		7
+
+/* VIRTCHNL2_RX_BASE_DESC_FLTSTAT_VALUES
+ * for singleq (base) virtchnl2_rx_base_desc
+ * Note: These are predefined bit offsets
+ */
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_NO_DATA		0
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_FD_ID		1
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSV		2
+#define VIRTCHNL2_RX_BASE_DESC_FLTSTAT_RSS_HASH		3
+
+/* Receive Descriptors */
+/* splitq buf
+ * |                                       16|                   0|
+ * ----------------------------------------------------------------
+ * | RSV                                     | Buffer ID          |
+ * ----------------------------------------------------------------
+ * | Rx packet buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | Rx header buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * |                                                             0|
+ */
+struct virtchnl2_splitq_rx_buf_desc {
+	struct {
+		__le16  buf_id; /* Buffer Identifier */
+		__le16  rsvd0;
+		__le32  rsvd1;
+	} qword0;
+	__le64  pkt_addr; /* Packet buffer address */
+	__le64  hdr_addr; /* Header buffer address */
+	__le64  rsvd2;
+}; /* read used with buffer queues*/
+
+/* singleq buf
+ * |                                                             0|
+ * ----------------------------------------------------------------
+ * | Rx packet buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | Rx header buffer adresss                                     |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * | RSV                                                          |
+ * ----------------------------------------------------------------
+ * |                                                             0|
+ */
+struct virtchnl2_singleq_rx_buf_desc {
+	__le64  pkt_addr; /* Packet buffer address */
+	__le64  hdr_addr; /* Header buffer address */
+	__le64  rsvd1;
+	__le64  rsvd2;
+}; /* read used with buffer queues*/
+
+union virtchnl2_rx_buf_desc {
+	struct virtchnl2_singleq_rx_buf_desc		read;
+	struct virtchnl2_splitq_rx_buf_desc		split_rd;
+};
+
+/* (0x00) singleq wb(compl) */
+struct virtchnl2_singleq_base_rx_desc {
+	struct {
+		struct {
+			__le16 mirroring_status;
+			__le16 l2tag1;
+		} lo_dword;
+		union {
+			__le32 rss; /* RSS Hash */
+			__le32 fd_id; /* Flow Director filter id */
+		} hi_dword;
+	} qword0;
+	struct {
+		/* status/error/PTYPE/length */
+		__le64 status_error_ptype_len;
+	} qword1;
+	struct {
+		__le16 ext_status; /* extended status */
+		__le16 rsvd;
+		__le16 l2tag2_1;
+		__le16 l2tag2_2;
+	} qword2;
+	struct {
+		__le32 reserved;
+		__le32 fd_id;
+	} qword3;
+}; /* writeback */
+
+/* (0x01) singleq flex compl */
+struct virtchnl2_rx_flex_desc {
+	/* Qword 0 */
+	u8 rxdid; /* descriptor builder profile id */
+	u8 mir_id_umb_cast; /* mirror=[5:0], umb=[7:6] */
+	__le16 ptype_flex_flags0; /* ptype=[9:0], ff0=[15:10] */
+	__le16 pkt_len; /* [15:14] are reserved */
+	__le16 hdr_len_sph_flex_flags1; /* header=[10:0] */
+					/* sph=[11:11] */
+					/* ff1/ext=[15:12] */
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le16 flex_meta0;
+	__le16 flex_meta1;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flex_flags2;
+	u8 time_stamp_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flex_meta2;
+	__le16 flex_meta3;
+	union {
+		struct {
+			__le16 flex_meta4;
+			__le16 flex_meta5;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/* (0x02) */
+struct virtchnl2_rx_flex_desc_nic {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le32 flow_id;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/* Rx Flex Descriptor Switch Profile
+ * RxDID Profile Id 3
+ * Flex-field 0: Source Vsi
+ */
+struct virtchnl2_rx_flex_desc_sw {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le16 src_vsi; /* [10:15] are reserved */
+	__le16 flex_md1_rsvd;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flex_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le32 rsvd; /* flex words 2-3 are reserved */
+	__le32 ts_high;
+};
+
+/* Rx Flex Descriptor NIC Profile
+ * RxDID Profile Id 6
+ * Flex-field 0: RSS hash lower 16-bits
+ * Flex-field 1: RSS hash upper 16-bits
+ * Flex-field 2: Flow Id lower 16-bits
+ * Flex-field 3: Source Vsi
+ * Flex-field 4: reserved, Vlan id taken from L2Tag
+ */
+struct virtchnl2_rx_flex_desc_nic_2 {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flex_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flow_id;
+	__le16 src_vsi;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
+/* Rx Flex Descriptor Advanced (Split Queue Model)
+ * RxDID Profile Id 7
+ */
+struct virtchnl2_rx_flex_desc_adv {
+	/* Qword 0 */
+	u8 rxdid_ucast; /* profile_id=[3:0] */
+			/* rsvd=[5:4] */
+			/* ucast=[7:6] */
+	u8 status_err0_qw0;
+	__le16 ptype_err_fflags0;	/* ptype=[9:0] */
+					/* ip_hdr_err=[10:10] */
+					/* udp_len_err=[11:11] */
+					/* ff0=[15:12] */
+	__le16 pktlen_gen_bufq_id;	/* plen=[13:0] */
+					/* gen=[14:14]  only in splitq */
+					/* bufq_id=[15:15] only in splitq */
+	__le16 hdrlen_flags;		/* header=[9:0] */
+					/* rsc=[10:10] only in splitq */
+					/* sph=[11:11] only in splitq */
+					/* ext_udp_0=[12:12] */
+					/* int_udp_0=[13:13] */
+					/* trunc_mirr=[14:14] */
+					/* miss_prepend=[15:15] */
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	__le16 fmd0;
+	__le16 fmd1;
+	/* Qword 2 */
+	__le16 fmd2;
+	u8 fflags2;
+	u8 hash3;
+	__le16 fmd3;
+	__le16 fmd4;
+	/* Qword 3 */
+	__le16 fmd5;
+	__le16 fmd6;
+	__le16 fmd7_0;
+	__le16 fmd7_1;
+}; /* writeback */
+
+/* Rx Flex Descriptor Advanced (Split Queue Model) NIC Profile
+ * RxDID Profile Id 8
+ * Flex-field 0: BufferID
+ * Flex-field 1: Raw checksum/L2TAG1/RSC Seg Len (determined by HW)
+ * Flex-field 2: Hash[15:0]
+ * Flex-flags 2: Hash[23:16]
+ * Flex-field 3: L2TAG2
+ * Flex-field 5: L2TAG1
+ * Flex-field 7: Timestamp (upper 32 bits)
+ */
+struct virtchnl2_rx_flex_desc_adv_nic_3 {
+	/* Qword 0 */
+	u8 rxdid_ucast; /* profile_id=[3:0] */
+			/* rsvd=[5:4] */
+			/* ucast=[7:6] */
+	u8 status_err0_qw0;
+	__le16 ptype_err_fflags0;	/* ptype=[9:0] */
+					/* ip_hdr_err=[10:10] */
+					/* udp_len_err=[11:11] */
+					/* ff0=[15:12] */
+	__le16 pktlen_gen_bufq_id;	/* plen=[13:0] */
+					/* gen=[14:14]  only in splitq */
+					/* bufq_id=[15:15] only in splitq */
+	__le16 hdrlen_flags;		/* header=[9:0] */
+					/* rsc=[10:10] only in splitq */
+					/* sph=[11:11] only in splitq */
+					/* ext_udp_0=[12:12] */
+					/* int_udp_0=[13:13] */
+					/* trunc_mirr=[14:14] */
+					/* miss_prepend=[15:15] */
+	/* Qword 1 */
+	u8 status_err0_qw1;
+	u8 status_err1;
+	u8 fflags1;
+	u8 ts_low;
+	__le16 buf_id; /* only in splitq */
+	union {
+		__le16 raw_cs;
+		__le16 l2tag1;
+		__le16 rscseglen;
+	} misc;
+	/* Qword 2 */
+	__le16 hash1;
+	union {
+		u8 fflags2;
+		u8 mirrorid;
+		u8 hash2;
+	} ff2_mirrid_hash2;
+	u8 hash3;
+	__le16 l2tag2;
+	__le16 fmd4;
+	/* Qword 3 */
+	__le16 l2tag1;
+	__le16 fmd6;
+	__le32 ts_high;
+}; /* writeback */
+
+union virtchnl2_rx_desc {
+	struct virtchnl2_singleq_rx_buf_desc		read;
+	struct virtchnl2_singleq_base_rx_desc		base_wb;
+	struct virtchnl2_rx_flex_desc			flex_wb;
+	struct virtchnl2_rx_flex_desc_nic		flex_nic_wb;
+	struct virtchnl2_rx_flex_desc_sw		flex_sw_wb;
+	struct virtchnl2_rx_flex_desc_nic_2		flex_nic_2_wb;
+	struct virtchnl2_rx_flex_desc_adv		flex_adv_wb;
+	struct virtchnl2_rx_flex_desc_adv_nic_3		flex_adv_nic_3_wb;
+};
+
+#endif /* _VIRTCHNL_LAN_DESC_H_ */
-- 
2.37.3


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

