Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4760649F8F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 13:11:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD95F404CD;
	Fri, 28 Jan 2022 12:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bLsno7INIoRA; Fri, 28 Jan 2022 12:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16DD1404CA;
	Fri, 28 Jan 2022 12:11:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 304551C1162
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 12:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D4EB60B0E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 12:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnwTWOpoUL9G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 12:11:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A3BD60A92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 12:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643371870; x=1674907870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B5rqMKB3/M8nxF176lBBCL7DAjpqVEXkXv4Oz1DXzLs=;
 b=ROjQU+KWVPthd6mn9pRw76dWnK9kzmrOgt6+PeroGeewNl0H1pTw/JXK
 vv4ymfVzB7GUfUbSk1YJzE3SiSy924tnrFBlUhgnfHIsC0TnxKvpwbHZ8
 Pz6Vf5eK/yovCnBs5yyQB6xu8BUW+XnxmM0Iwhz098lvNL+NMHgeCd0gK
 I+n0bxXLbcoJRhsAvlbdr+/Mil5XxO3Ou5qbKL9mZwGg65EOTU5dQS3mu
 GSNYoM6l9SqyfZl9TSPvLg2FZO39sjg9FG3XRgFV8saDaMcY+o0Pdjh6r
 iwpGs4EY+2yFQsthIDDHXUD8mpTxNKJiJaAsaubKhWxZjB6p2mU26tMXM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="333461197"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="333461197"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 04:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="697074071"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 28 Jan 2022 04:11:07 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SCB6ox020130; Fri, 28 Jan 2022 12:11:06 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 13:09:24 +0100
Message-Id: <20220128120924.20808-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128001009.721392-5-alan.brady@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-5-alan.brady@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
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
Cc: intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 27 Jan 2022 16:09:54 -0800

> Initializing device registers is offloaded into function pointers given
> to iecm from the dependent device driver for a given device, as offsets
> can vary wildly. This also adds everything needed to setup and use a
> controlq which uses some of those registers.
> 
> At the end of probe we kicked off a hard reset and this implements what's
> needed to handle that reset and continue init.
> 
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/iecm/Makefile      |   3 +
>  .../net/ethernet/intel/iecm/iecm_controlq.c   | 649 ++++++++++++++++++
>  .../ethernet/intel/iecm/iecm_controlq_setup.c | 175 +++++
>  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 191 +++++-
>  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 172 +++++
>  drivers/net/ethernet/intel/include/iecm.h     |  52 ++
>  .../ethernet/intel/include/iecm_controlq.h    | 117 ++++
>  .../intel/include/iecm_controlq_api.h         | 185 +++++
>  drivers/net/ethernet/intel/include/iecm_mem.h |  20 +
>  9 files changed, 1563 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq.c
>  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
>  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
>  create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq.h
>  create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq_api.h
>  create mode 100644 drivers/net/ethernet/intel/include/iecm_mem.h
> 

--- 8< ---

> diff --git a/drivers/net/ethernet/intel/include/iecm_controlq_api.h b/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> new file mode 100644
> index 000000000000..5f624f005d33
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> @@ -0,0 +1,185 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (c) 2020, Intel Corporation. */
> +
> +#ifndef _IECM_CONTROLQ_API_H_
> +#define _IECM_CONTROLQ_API_H_
> +
> +#include "iecm_mem.h"
> +
> +struct iecm_hw;
> +
> +/* Used for queue init, response and events */
> +enum iecm_ctlq_type {
> +	IECM_CTLQ_TYPE_MAILBOX_TX	= 0,
> +	IECM_CTLQ_TYPE_MAILBOX_RX	= 1,
> +	IECM_CTLQ_TYPE_CONFIG_TX	= 2,
> +	IECM_CTLQ_TYPE_CONFIG_RX	= 3,
> +	IECM_CTLQ_TYPE_EVENT_RX		= 4,
> +	IECM_CTLQ_TYPE_RDMA_TX		= 5,
> +	IECM_CTLQ_TYPE_RDMA_RX		= 6,
> +	IECM_CTLQ_TYPE_RDMA_COMPL	= 7
> +};
> +
> +/* Generic Control Queue Structures */
> +struct iecm_ctlq_reg {
> +	/* used for queue tracking */
> +	u32 head;
> +	u32 tail;
> +	/* Below applies only to default mb (if present) */
> +	u32 len;
> +	u32 bah;
> +	u32 bal;
> +	u32 len_mask;
> +	u32 len_ena_mask;
> +	u32 head_mask;
> +};
> +
> +/* Generic queue msg structure */
> +struct iecm_ctlq_msg {
> +	u16 vmvf_type; /* represents the source of the message on recv */
> +#define IECM_VMVF_TYPE_VF 0
> +#define IECM_VMVF_TYPE_VM 1
> +#define IECM_VMVF_TYPE_PF 2
> +	u16 opcode;
> +	u16 data_len;	/* data_len = 0 when no payload is attached */
> +	union {
> +		u16 func_id;	/* when sending a message */
> +		u16 status;	/* when receiving a message */
> +	};
> +	union {
> +		struct {
> +			u32 chnl_retval;
> +			u32 chnl_opcode;
> +		} mbx;
> +	} cookie;

One field union? If it will be expanded later, please unionize it
only then.

> +	union {
> +#define IECM_DIRECT_CTX_SIZE	16
> +#define IECM_INDIRECT_CTX_SIZE	8
> +		/* 16 bytes of context can be provided or 8 bytes of context
> +		 * plus the address of a DMA buffer
> +		 */
> +		u8 direct[IECM_DIRECT_CTX_SIZE];
> +		struct {
> +			u8 context[IECM_INDIRECT_CTX_SIZE];
> +			struct iecm_dma_mem *payload;
> +		} indirect;
> +	} ctx;
> +};
> +
> +/* Generic queue info structures */
> +/* MB, CONFIG and EVENT q do not have extended info */
> +struct iecm_ctlq_create_info {
> +	enum iecm_ctlq_type type;
> +	int id; /* absolute queue offset passed as input
> +		 * -1 for default mailbox if present
> +		 */
> +	u16 len; /* Queue length passed as input */
> +	u16 buf_size; /* buffer size passed as input */
> +	u64 base_address; /* output, HPA of the Queue start  */
> +	struct iecm_ctlq_reg reg; /* registers accessed by ctlqs */
> +
> +	int ext_info_size;
> +	void *ext_info; /* Specific to q type */
> +};
> +
> +/* Control Queue information */
> +struct iecm_ctlq_info {
> +	struct list_head cq_list;
> +
> +	enum iecm_ctlq_type cq_type;
> +	int q_id;
> +	/* control queue lock */
> +	struct mutex cq_lock;
> +
> +	/* used for interrupt processing */
> +	u16 next_to_use;
> +	u16 next_to_clean;
> +	u16 next_to_post;		/* starting descriptor to post buffers
> +					 * to after recev
> +					 */
> +
> +	struct iecm_dma_mem desc_ring;	/* descriptor ring memory
> +					 * iecm_dma_mem is defined in OSdep.h
> +					 */
> +	union {
> +		struct iecm_dma_mem **rx_buff;
> +		struct iecm_ctlq_msg **tx_msg;
> +	} bi;
> +
> +	u16 buf_size;			/* queue buffer size */
> +	u16 ring_size;			/* Number of descriptors */
> +	struct iecm_ctlq_reg reg;	/* registers accessed by ctlqs */
> +};
> +
> +/* PF/VF mailbox commands */
> +enum iecm_mbx_opc {
> +	/* iecm_mbq_opc_send_msg_to_pf:
> +	 *	usage: used by PF or VF to send a message to its CPF
> +	 *	target: RX queue and function ID of parent PF taken from HW
> +	 */
> +	iecm_mbq_opc_send_msg_to_pf		= 0x0801,
> +
> +	/* iecm_mbq_opc_send_msg_to_vf:
> +	 *	usage: used by PF to send message to a VF
> +	 *	target: VF control queue ID must be specified in descriptor
> +	 */
> +	iecm_mbq_opc_send_msg_to_vf		= 0x0802,
> +
> +	/* iecm_mbq_opc_send_msg_to_peer_pf:
> +	 *	usage: used by any function to send message to any peer PF
> +	 *	target: RX queue and host of parent PF taken from HW
> +	 */
> +	iecm_mbq_opc_send_msg_to_peer_pf	= 0x0803,
> +
> +	/* iecm_mbq_opc_send_msg_to_peer_drv:
> +	 *	usage: used by any function to send message to any peer driver
> +	 *	target: RX queue and target host must be specific in descriptor
> +	 */
> +	iecm_mbq_opc_send_msg_to_peer_drv	= 0x0804,
> +};
> +
> +/* API support for control queue management */
> +
> +/* Will init all required q including default mb.  "q_info" is an array of
> + * create_info structs equal to the number of control queues to be created.
> + */
> +int iecm_ctlq_init(struct iecm_hw *hw, u8 num_q,
> +		   struct iecm_ctlq_create_info *q_info);
> +
> +/* Allocate and initialize a single control queue, which will be added to the
> + * control queue list; returns a handle to the created control queue
> + */
> +int iecm_ctlq_add(struct iecm_hw *hw,
> +		  struct iecm_ctlq_create_info *qinfo,
> +		  struct iecm_ctlq_info **cq);
> +
> +/* Deinitialize and deallocate a single control queue */
> +void iecm_ctlq_remove(struct iecm_hw *hw,
> +		      struct iecm_ctlq_info *cq);
> +
> +/* Sends messages to HW and will also free the buffer*/
> +int iecm_ctlq_send(struct iecm_hw *hw,
> +		   struct iecm_ctlq_info *cq,
> +		   u16 num_q_msg,
> +		   struct iecm_ctlq_msg q_msg[]);
> +
> +/* Receives messages and called by interrupt handler/polling
> + * initiated by app/process. Also caller is supposed to free the buffers
> + */
> +int iecm_ctlq_recv(struct iecm_ctlq_info *cq, u16 *num_q_msg,
> +		   struct iecm_ctlq_msg *q_msg);
> +
> +/* Reclaims send descriptors on HW write back */
> +int iecm_ctlq_clean_sq(struct iecm_ctlq_info *cq, u16 *clean_count,
> +		       struct iecm_ctlq_msg *msg_status[]);
> +
> +/* Indicate RX buffers are done being processed */
> +int iecm_ctlq_post_rx_buffs(struct iecm_hw *hw,
> +			    struct iecm_ctlq_info *cq,
> +			    u16 *buff_count,
> +			    struct iecm_dma_mem **buffs);
> +
> +/* Will destroy all q including the default mb */
> +int iecm_ctlq_deinit(struct iecm_hw *hw);
> +
> +#endif /* _IECM_CONTROLQ_API_H_ */

--- 8< ---

> -- 
> 2.33.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
