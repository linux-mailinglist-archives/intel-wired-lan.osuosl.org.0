Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIGuDMKBvWk4+gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:20:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6852DE7DB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B367A84940;
	Fri, 20 Mar 2026 17:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PiY7uQ0oYsuh; Fri, 20 Mar 2026 17:19:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C54584948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774027195;
	bh=xiMQwHGnLD5/XsfLBlV7SvVEPFXNa0BlQRc1VZzGUCs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1BOrE2BtEUuMXBOSlIeCxyJXkuiRCqR15UhAlP1jnX/LsQ9Uh+apnBN+Vel3mo1wC
	 VOiFvW0uQRfoZtPFYduqVW5QqSG+Nk4WSx3ZhVKlhX07y/fo4MljUGWvLXWynKA5B7
	 iNQplLxkFRyq2SSEh0X8mx4JMlEKyob+s3PGCXVLGeNRSLQOwiK8F5uL2H5X527c4e
	 hvuX7zL1xgktSq5BNs4lQuHdpYt/EYs85AcvaYo4H6c9/zgf2hoa/k2lXtYIRu3cOB
	 M7DbvqIgrsYnclnuxdaG76OOpP16JxnxN89+XHb05BKUQPRAki7/kbgFfAtZLeXOeu
	 ykK66CrbrK/Wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C54584948;
	Fri, 20 Mar 2026 17:19:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 628C81B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FED2413D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hy708QLPxbxs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 13:24:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFD0B4014E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFD0B4014E
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFD0B4014E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 13:24:17 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-486fd5360d4so15814035e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:24:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774013056; x=1774617856;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=xiMQwHGnLD5/XsfLBlV7SvVEPFXNa0BlQRc1VZzGUCs=;
 b=fDfwzNPgdCqpHEE1wBmoSHSgiKQ8hMI0wpjDEFIUsZpuSPyu6SsdOkYT1kZJmKiVoz
 uh7IMcqs3BhF6Q2kesX0QlFykUz1QDA9qkBWKPRKESsQ0PjvcPu3/QDWo/o07s8UZjym
 paTaRTl6U5UsnPBQfhWaqraV4OhRz6nkD5Fv5n6eUMjUdxwuShF2nLEEVbAVHnS8m649
 wU7eEhc0dG0QmWomxuDqeoJAbgkOjlp1e/75bw1nBVP5Zk1c0VvGZcmPF92bcc9bUdxR
 14BnyCPnkUtFSp2XBPkGfh3kiqRIF1BAyofCs9Hmo1oW++mKFhppdlkOswEWfbVcQNDZ
 T7Ew==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzRTJnk0b1qHXDEgCvDNcyagY3Z4aihzrTI8vzjiGg8BdSZjcbo3R+2blOB5/3ZZFagO7Ni9V2HKbIVwutBdI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzd2C3DeBuff82RMDSzLRJ1pBLPdqj2fO2vkV10gDpU6L3JaOwH
 aOXKHDL8wfQ8UEN6iqBSnzAgiXouoUFFwv0jeZGJEucsQHPVh8MNR6Eh
X-Gm-Gg: ATEYQzzEFB/y7UljLJsSHDskwBkBfeVWxxt2afGNlU9z4EPzE+Gl7EnCA9BTMLfTZyD
 XBXJR/pr8ZpjmHZfY9D7iEWeLjSA/MnaryabpyUoNdMkQWessOVo6wNFBlhDScV/wAtkxyA4hPe
 vTlGM+aV2Ukkt5lEuW41GhaE48tNqPBsl2Rd7vY6GrY7AK7afcm0LSevh1Bnlerl9czrA8pbv/R
 tw2cGBq415XmTIdMTaxuFbbO+FSrT7GKhBEUtp+qUqavW4Fl47DGVHoFtvj1b9TecQYmLrVsHFo
 Whec8OtioMbNkfZIQ7YQXhqIbYzMzxddzuqMlTXW1aU68U27qufPQEDyGLy8s618972b6D6ehXT
 5nJLwa/Fv8TUucQchYBXEq62Uub/oI8FnGSW1jr6zi1f1z4iTo3ggZsAOmafjkQY1SwPN6sUyv9
 vO5MJ6MFyp+dsbUWh/b91KYvavPPc9iZ1jzKICFFohlPZGXqUcvWW7/VFsz1wjsfJUGOm/vwK7
X-Received: by 2002:a05:600c:8b61:b0:485:3471:cffb with SMTP id
 5b1f17b1804b1-486fedd8164mr44729825e9.15.1774013055363; 
 Fri, 20 Mar 2026 06:24:15 -0700 (PDT)
Received: from turbo.teknoraver.net (net-5-95-156-124.cust.vodafonedsl.it.
 [5.95.156.124]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-487004e7bc4sm16427095e9.2.2026.03.20.06.24.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2026 06:24:14 -0700 (PDT)
From: Matteo Croce <technoboy85@gmail.com>
X-Google-Original-From: Matteo Croce <teknoraver@meta.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Date: Fri, 20 Mar 2026 14:23:55 +0100
Message-ID: <20260320132356.63194-2-teknoraver@meta.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320132356.63194-1-teknoraver@meta.com>
References: <20260320132356.63194-1-teknoraver@meta.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 20 Mar 2026 17:19:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774013056; x=1774617856; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xiMQwHGnLD5/XsfLBlV7SvVEPFXNa0BlQRc1VZzGUCs=;
 b=DCHs8NuncX96q7Zd1QL4QyugXO1bo4/S7QoFrtkSo0GcDsh0OCEb6pu+H1/7ztcUiR
 4aT2fohxGqd0Njp+5heyG8dGCzERdSRpW7f5tKsINoG1+l6Ad4NZg5+Q1fmnx+HIOcmm
 544iEi1SRIart6lL+1iW003tZMBpjSvQ+cqIJUnaGiRDXEfABzCdPKzez/VXfkgu4d5a
 EjBbjmu8UT5Xjj8p39tYYIhQ90nWw9/BPFcMUgtH23ttH9Kb2BkNkmkWc7Q5eO+PbaRw
 EGTeU/c/zFDvaIEson+UknhdGAOmFfKwZYMPhQcgLxzHDKTmqK+VIM6fcA6d3wCoQFY8
 sD0g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=DCHs8Nun
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] e1000e: add basic XDP
 support
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,meta.com:email,meta.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6B6852DE7DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add XDP support to the e1000e driver covering the actions defined by
NETDEV_XDP_ACT_BASIC: XDP_DROP, XDP_PASS, XDP_TX and XDP_ABORTED.

Infrastructure:
- e1000_xdp_setup() / e1000_xdp() for program attach/detach with
  MTU validation and close/open cycle
- ndo_bpf support in net_device_ops
- xdp_rxq_info registration in setup/free_rx_resources

Receive path:
- e1000_alloc_rx_buffers_xdp() for page-based Rx buffer allocation
  with XDP_PACKET_HEADROOM
- e1000_clean_rx_irq_xdp() as the XDP receive handler
- e1000_run_xdp() to execute the XDP program on received packets
- SKB building via napi_build_skb() for XDP_PASS with metadata,
  checksum offload and RSS hash support

Transmit path:
- e1000_xdp_xmit_ring() to DMA-map and enqueue an XDP frame
- e1000_xdp_xmit_back() to convert an xdp_buff to a frame and send it
- e1000_finalize_xdp() to flush the TX ring after XDP processing
- TX completion via xdp_return_frame() with buffer type tracking

Assisted-by: claude-opus-4-6
Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 drivers/net/ethernet/intel/Kconfig         |   1 +
 drivers/net/ethernet/intel/e1000e/e1000.h  |  18 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 523 ++++++++++++++++++++-
 3 files changed, 530 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 288fa8ce53af..46e37cb68e70 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -63,6 +63,7 @@ config E1000E
 	depends on PCI && (!SPARC32 || BROKEN)
 	depends on PTP_1588_CLOCK_OPTIONAL
 	select CRC32
+	select PAGE_POOL
 	help
 	  This driver supports the PCI-Express Intel(R) PRO/1000 gigabit
 	  ethernet family of adapters. For PCI or PCI-X e1000 adapters,
diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index 63ebe00376f5..4c1175d4e5cb 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -19,10 +19,13 @@
 #include <linux/net_tstamp.h>
 #include <linux/ptp_clock_kernel.h>
 #include <linux/ptp_classify.h>
+#include <linux/bpf.h>
 #include <linux/mii.h>
 #include <linux/mdio.h>
 #include <linux/mutex.h>
 #include <linux/pm_qos.h>
+#include <net/page_pool/helpers.h>
+#include <net/xdp.h>
 #include "hw.h"
 
 struct e1000_info;
@@ -126,12 +129,21 @@ struct e1000_ps_page {
 	u64 dma; /* must be u64 - written to hw */
 };
 
+enum e1000_tx_buf_type {
+	E1000_TX_BUF_SKB = 0,
+	E1000_TX_BUF_XDP,
+};
+
 /* wrappers around a pointer to a socket buffer,
  * so a DMA handle can be stored along with the buffer
  */
 struct e1000_buffer {
 	dma_addr_t dma;
-	struct sk_buff *skb;
+	union {
+		struct sk_buff *skb;
+		struct xdp_frame *xdpf;
+	};
+	enum e1000_tx_buf_type type;
 	union {
 		/* Tx */
 		struct {
@@ -259,6 +271,10 @@ struct e1000_adapter {
 			     gfp_t gfp);
 	struct e1000_ring *rx_ring;
 
+	struct bpf_prog *xdp_prog;
+	struct xdp_rxq_info xdp_rxq;
+	struct page_pool *page_pool;
+
 	u32 rx_int_delay;
 	u32 rx_abs_int_delay;
 
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9befdacd6730..3ee5246f0b84 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -25,6 +25,10 @@
 #include <linux/pm_runtime.h>
 #include <linux/prefetch.h>
 #include <linux/suspend.h>
+#include <linux/bpf.h>
+#include <linux/bpf_trace.h>
+#include <net/page_pool/helpers.h>
+#include <net/xdp.h>
 
 #include "e1000.h"
 #define CREATE_TRACE_POINTS
@@ -33,6 +37,11 @@
 char e1000e_driver_name[] = "e1000e";
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
+
+#define E1000_XDP_PASS		0
+#define E1000_XDP_CONSUMED	BIT(0)
+#define E1000_XDP_TX		BIT(1)
+
 static int debug = -1;
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
@@ -708,6 +717,369 @@ static void e1000_alloc_rx_buffers(struct e1000_ring *rx_ring,
 	rx_ring->next_to_use = i;
 }
 
+static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
+				 struct sk_buff *skb)
+{
+	if (netdev->features & NETIF_F_RXHASH)
+		skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
+}
+
+/**
+ * e1000_xdp_xmit_ring - transmit an XDP frame on the TX ring
+ * @adapter: board private structure
+ * @tx_ring: Tx descriptor ring
+ * @xdpf: XDP frame to transmit
+ *
+ * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
+ **/
+static int e1000_xdp_xmit_ring(struct e1000_adapter *adapter,
+			       struct e1000_ring *tx_ring,
+				struct xdp_frame *xdpf)
+{
+	struct e1000_buffer *buffer_info;
+	struct e1000_tx_desc *tx_desc;
+	dma_addr_t dma;
+	u16 i;
+
+	if (e1000_desc_unused(tx_ring) < 1)
+		return E1000_XDP_CONSUMED;
+
+	i = tx_ring->next_to_use;
+	buffer_info = &tx_ring->buffer_info[i];
+
+	dma = dma_map_single(&adapter->pdev->dev, xdpf->data, xdpf->len,
+			     DMA_TO_DEVICE);
+	if (dma_mapping_error(&adapter->pdev->dev, dma))
+		return E1000_XDP_CONSUMED;
+
+	buffer_info->xdpf = xdpf;
+	buffer_info->type = E1000_TX_BUF_XDP;
+	buffer_info->dma = dma;
+	buffer_info->length = xdpf->len;
+	buffer_info->time_stamp = jiffies;
+	buffer_info->next_to_watch = i;
+	buffer_info->segs = 1;
+	buffer_info->bytecount = xdpf->len;
+	buffer_info->mapped_as_page = 0;
+
+	tx_desc = E1000_TX_DESC(*tx_ring, i);
+	tx_desc->buffer_addr = cpu_to_le64(dma);
+	tx_desc->lower.data = cpu_to_le32(adapter->txd_cmd |
+					   E1000_TXD_CMD_IFCS |
+					   xdpf->len);
+	tx_desc->upper.data = 0;
+
+	i++;
+	if (i == tx_ring->count)
+		i = 0;
+	tx_ring->next_to_use = i;
+
+	return E1000_XDP_TX;
+}
+
+/**
+ * e1000_xdp_xmit_back - transmit an XDP buffer back on the same device
+ * @adapter: board private structure
+ * @xdp: XDP buffer to transmit
+ *
+ * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
+ **/
+static int e1000_xdp_xmit_back(struct e1000_adapter *adapter,
+			       struct xdp_buff *xdp)
+{
+	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
+
+	if (unlikely(!xdpf))
+		return E1000_XDP_CONSUMED;
+
+	return e1000_xdp_xmit_ring(adapter, adapter->tx_ring, xdpf);
+}
+
+/**
+ * e1000_finalize_xdp - flush XDP operations after NAPI Rx loop
+ * @adapter: board private structure
+ * @xdp_xmit: bitmask of XDP actions taken during Rx processing
+ **/
+static void e1000_finalize_xdp(struct e1000_adapter *adapter,
+			       unsigned int xdp_xmit)
+{
+	struct e1000_ring *tx_ring = adapter->tx_ring;
+
+	if (xdp_xmit & E1000_XDP_TX) {
+		/* Force memory writes to complete before letting h/w
+		 * know there are new descriptors to fetch.
+		 */
+		wmb();
+		if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
+			e1000e_update_tdt_wa(tx_ring,
+					     tx_ring->next_to_use);
+		else
+			writel(tx_ring->next_to_use, tx_ring->tail);
+	}
+}
+
+/**
+ * e1000_run_xdp - run an XDP program on a received packet
+ * @adapter: board private structure
+ * @xdp: XDP buffer containing packet data
+ *
+ * Returns E1000_XDP_PASS, E1000_XDP_TX, or E1000_XDP_CONSUMED
+ **/
+static int e1000_run_xdp(struct e1000_adapter *adapter, struct xdp_buff *xdp)
+{
+	struct bpf_prog *xdp_prog = READ_ONCE(adapter->xdp_prog);
+	struct net_device *netdev = adapter->netdev;
+	int result = E1000_XDP_PASS;
+	u32 act;
+
+	if (!xdp_prog)
+		return E1000_XDP_PASS;
+
+	prefetchw(xdp->data_hard_start);
+
+	act = bpf_prog_run_xdp(xdp_prog, xdp);
+	switch (act) {
+	case XDP_PASS:
+		break;
+	case XDP_TX:
+		result = e1000_xdp_xmit_back(adapter, xdp);
+		if (result == E1000_XDP_CONSUMED)
+			goto out_failure;
+		break;
+	default:
+		bpf_warn_invalid_xdp_action(netdev, xdp_prog, act);
+		fallthrough;
+	case XDP_ABORTED:
+out_failure:
+		trace_xdp_exception(netdev, xdp_prog, act);
+		fallthrough;
+	case XDP_DROP:
+		result = E1000_XDP_CONSUMED;
+		break;
+	}
+
+	return result;
+}
+
+/**
+ * e1000_alloc_rx_buffers_xdp - Replace used receive buffers for XDP
+ * @rx_ring: Rx descriptor ring
+ * @cleaned_count: number to reallocate
+ * @gfp: flags for allocation
+ *
+ * Allocates page-based Rx buffers with XDP_PACKET_HEADROOM headroom.
+ **/
+static void e1000_alloc_rx_buffers_xdp(struct e1000_ring *rx_ring,
+				       int cleaned_count, gfp_t gfp)
+{
+	struct e1000_adapter *adapter = rx_ring->adapter;
+	union e1000_rx_desc_extended *rx_desc;
+	struct e1000_buffer *buffer_info;
+	unsigned int i;
+
+	i = rx_ring->next_to_use;
+	buffer_info = &rx_ring->buffer_info[i];
+
+	while (cleaned_count--) {
+		if (!buffer_info->page) {
+			buffer_info->page = page_pool_alloc_pages(adapter->page_pool,
+								  gfp);
+			if (!buffer_info->page) {
+				adapter->alloc_rx_buff_failed++;
+				break;
+			}
+		}
+
+		if (!buffer_info->dma) {
+			buffer_info->dma = page_pool_get_dma_addr(buffer_info->page) +
+					   XDP_PACKET_HEADROOM;
+		}
+
+		rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
+		rx_desc->read.buffer_addr = cpu_to_le64(buffer_info->dma);
+
+		if (unlikely(!(i & (E1000_RX_BUFFER_WRITE - 1)))) {
+			/* Force memory writes to complete before letting
+			 * h/w know there are new descriptors to fetch.
+			 */
+			wmb();
+			if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
+				e1000e_update_rdt_wa(rx_ring, i);
+			else
+				writel(i, rx_ring->tail);
+		}
+		i++;
+		if (i == rx_ring->count)
+			i = 0;
+		buffer_info = &rx_ring->buffer_info[i];
+	}
+
+	rx_ring->next_to_use = i;
+}
+
+/**
+ * e1000_clean_rx_irq_xdp - Receive with XDP processing
+ * @rx_ring: Rx descriptor ring
+ * @work_done: output parameter for indicating completed work
+ * @work_to_do: how many packets we can clean
+ *
+ * Page-based receive path that runs an XDP program on each packet.
+ **/
+static bool e1000_clean_rx_irq_xdp(struct e1000_ring *rx_ring, int *work_done,
+				   int work_to_do)
+{
+	struct e1000_adapter *adapter = rx_ring->adapter;
+	struct net_device *netdev = adapter->netdev;
+	struct pci_dev *pdev = adapter->pdev;
+	union e1000_rx_desc_extended *rx_desc, *next_rxd;
+	struct e1000_buffer *buffer_info, *next_buffer;
+	struct xdp_buff xdp;
+	u32 length, staterr;
+	unsigned int i;
+	int cleaned_count = 0;
+	bool cleaned = false;
+	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
+	unsigned int xdp_xmit = 0;
+
+	xdp_init_buff(&xdp, PAGE_SIZE, &adapter->xdp_rxq);
+
+	i = rx_ring->next_to_clean;
+	rx_desc = E1000_RX_DESC_EXT(*rx_ring, i);
+	staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
+	buffer_info = &rx_ring->buffer_info[i];
+
+	while (staterr & E1000_RXD_STAT_DD) {
+		struct sk_buff *skb;
+		int xdp_res;
+
+		if (*work_done >= work_to_do)
+			break;
+		(*work_done)++;
+		dma_rmb();
+
+		i++;
+		if (i == rx_ring->count)
+			i = 0;
+		next_rxd = E1000_RX_DESC_EXT(*rx_ring, i);
+		prefetch(next_rxd);
+
+		next_buffer = &rx_ring->buffer_info[i];
+
+		cleaned = true;
+		cleaned_count++;
+
+		dma_sync_single_for_cpu(&pdev->dev, buffer_info->dma,
+					adapter->rx_buffer_len,
+				       DMA_FROM_DEVICE);
+		buffer_info->dma = 0;
+
+		length = le16_to_cpu(rx_desc->wb.upper.length);
+
+		/* Multi-descriptor packets not supported with XDP */
+		if (unlikely(!(staterr & E1000_RXD_STAT_EOP)))
+			adapter->flags2 |= FLAG2_IS_DISCARDING;
+
+		if (adapter->flags2 & FLAG2_IS_DISCARDING) {
+			if (staterr & E1000_RXD_STAT_EOP)
+				adapter->flags2 &= ~FLAG2_IS_DISCARDING;
+			page_pool_put_full_page(adapter->page_pool,
+						buffer_info->page, true);
+			buffer_info->page = NULL;
+			goto next_desc;
+		}
+
+		if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
+			     !(netdev->features & NETIF_F_RXALL))) {
+			page_pool_put_full_page(adapter->page_pool,
+						buffer_info->page, true);
+			buffer_info->page = NULL;
+			goto next_desc;
+		}
+
+		/* adjust length to remove Ethernet CRC */
+		if (!(adapter->flags2 & FLAG2_CRC_STRIPPING)) {
+			if (netdev->features & NETIF_F_RXFCS)
+				total_rx_bytes -= 4;
+			else
+				length -= 4;
+		}
+
+		/* Setup xdp_buff pointing at the page data */
+		xdp_prepare_buff(&xdp, page_address(buffer_info->page),
+				 XDP_PACKET_HEADROOM, length, true);
+		xdp_buff_clear_frags_flag(&xdp);
+
+		xdp_res = e1000_run_xdp(adapter, &xdp);
+
+		if (xdp_res == E1000_XDP_PASS) {
+			total_rx_bytes += length;
+			total_rx_packets++;
+
+			skb = napi_build_skb(xdp.data_hard_start, PAGE_SIZE);
+			if (unlikely(!skb)) {
+				page_pool_put_full_page(adapter->page_pool,
+							buffer_info->page,
+							true);
+				buffer_info->page = NULL;
+				goto next_desc;
+			}
+
+			skb_mark_for_recycle(skb);
+			skb_reserve(skb,
+				    xdp.data - xdp.data_hard_start);
+			skb_put(skb, xdp.data_end - xdp.data);
+
+			if (xdp.data_meta != xdp.data)
+				skb_metadata_set(skb, xdp.data - xdp.data_meta);
+
+			e1000_rx_checksum(adapter, staterr, skb);
+			e1000_rx_hash(netdev,
+				      rx_desc->wb.lower.hi_dword.rss, skb);
+			e1000_receive_skb(adapter, netdev, skb, staterr,
+					  rx_desc->wb.upper.vlan);
+
+			/* page consumed by skb */
+			buffer_info->page = NULL;
+		} else if (xdp_res & E1000_XDP_TX) {
+			xdp_xmit |= xdp_res;
+			total_rx_bytes += length;
+			total_rx_packets++;
+			/* page consumed by XDP TX */
+			buffer_info->page = NULL;
+		} else {
+			/* XDP_DROP / XDP_ABORTED - recycle page */
+			page_pool_put_full_page(adapter->page_pool,
+						buffer_info->page, true);
+			buffer_info->page = NULL;
+		}
+
+next_desc:
+		rx_desc->wb.upper.status_error &= cpu_to_le32(~0xFF);
+
+		if (cleaned_count >= E1000_RX_BUFFER_WRITE) {
+			adapter->alloc_rx_buf(rx_ring, cleaned_count,
+					      GFP_ATOMIC);
+			cleaned_count = 0;
+		}
+
+		rx_desc = next_rxd;
+		buffer_info = next_buffer;
+		staterr = le32_to_cpu(rx_desc->wb.upper.status_error);
+	}
+	rx_ring->next_to_clean = i;
+
+	if (xdp_xmit)
+		e1000_finalize_xdp(adapter, xdp_xmit);
+
+	cleaned_count = e1000_desc_unused(rx_ring);
+	if (cleaned_count)
+		adapter->alloc_rx_buf(rx_ring, cleaned_count, GFP_ATOMIC);
+
+	adapter->total_rx_bytes += total_rx_bytes;
+	adapter->total_rx_packets += total_rx_packets;
+	return cleaned;
+}
+
 /**
  * e1000_alloc_rx_buffers_ps - Replace used receive buffers; packet split
  * @rx_ring: Rx descriptor ring
@@ -896,13 +1268,6 @@ static void e1000_alloc_jumbo_rx_buffers(struct e1000_ring *rx_ring,
 	}
 }
 
-static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
-				 struct sk_buff *skb)
-{
-	if (netdev->features & NETIF_F_RXHASH)
-		skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
-}
-
 /**
  * e1000_clean_rx_irq - Send received data up the network stack
  * @rx_ring: Rx descriptor ring
@@ -1075,13 +1440,17 @@ static void e1000_put_txbuf(struct e1000_ring *tx_ring,
 					 buffer_info->length, DMA_TO_DEVICE);
 		buffer_info->dma = 0;
 	}
-	if (buffer_info->skb) {
+	if (buffer_info->type == E1000_TX_BUF_XDP) {
+		xdp_return_frame(buffer_info->xdpf);
+		buffer_info->xdpf = NULL;
+	} else if (buffer_info->skb) {
 		if (drop)
 			dev_kfree_skb_any(buffer_info->skb);
 		else
 			dev_consume_skb_any(buffer_info->skb);
 		buffer_info->skb = NULL;
 	}
+	buffer_info->type = E1000_TX_BUF_SKB;
 	buffer_info->time_stamp = 0;
 }
 
@@ -1242,7 +1611,8 @@ static bool e1000_clean_tx_irq(struct e1000_ring *tx_ring)
 			if (cleaned) {
 				total_tx_packets += buffer_info->segs;
 				total_tx_bytes += buffer_info->bytecount;
-				if (buffer_info->skb) {
+				if (buffer_info->type == E1000_TX_BUF_SKB &&
+				    buffer_info->skb) {
 					bytes_compl += buffer_info->skb->len;
 					pkts_compl++;
 				}
@@ -1696,7 +2066,12 @@ static void e1000_clean_rx_ring(struct e1000_ring *rx_ring)
 		}
 
 		if (buffer_info->page) {
-			put_page(buffer_info->page);
+			if (adapter->page_pool)
+				page_pool_put_full_page(adapter->page_pool,
+							buffer_info->page,
+							false);
+			else
+				put_page(buffer_info->page);
 			buffer_info->page = NULL;
 		}
 
@@ -2350,6 +2725,30 @@ int e1000e_setup_tx_resources(struct e1000_ring *tx_ring)
 	return err;
 }
 
+static int e1000_create_page_pool(struct e1000_adapter *adapter)
+{
+	struct page_pool_params pp_params = {
+		.flags = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
+		.pool_size = adapter->rx_ring->count,
+		.nid = NUMA_NO_NODE,
+		.dev = &adapter->pdev->dev,
+		.napi = &adapter->napi,
+		.dma_dir = DMA_FROM_DEVICE,
+		.offset = XDP_PACKET_HEADROOM,
+		.max_len = adapter->rx_buffer_len,
+	};
+
+	adapter->page_pool = page_pool_create(&pp_params);
+	if (IS_ERR(adapter->page_pool)) {
+		int err = PTR_ERR(adapter->page_pool);
+
+		adapter->page_pool = NULL;
+		return err;
+	}
+
+	return 0;
+}
+
 /**
  * e1000e_setup_rx_resources - allocate Rx resources (Descriptors)
  * @rx_ring: Rx descriptor ring
@@ -2389,8 +2788,31 @@ int e1000e_setup_rx_resources(struct e1000_ring *rx_ring)
 	rx_ring->next_to_use = 0;
 	rx_ring->rx_skb_top = NULL;
 
+	/* XDP RX-queue info */
+	if (xdp_rxq_info_is_reg(&adapter->xdp_rxq))
+		xdp_rxq_info_unreg(&adapter->xdp_rxq);
+
+	err = e1000_create_page_pool(adapter);
+	if (err)
+		goto err_pages;
+
+	err = xdp_rxq_info_reg(&adapter->xdp_rxq, adapter->netdev, 0,
+			       adapter->napi.napi_id);
+	if (err)
+		goto err_page_pool;
+	err = xdp_rxq_info_reg_mem_model(&adapter->xdp_rxq,
+					 MEM_TYPE_PAGE_POOL,
+					  adapter->page_pool);
+	if (err) {
+		xdp_rxq_info_unreg(&adapter->xdp_rxq);
+		goto err_page_pool;
+	}
+
 	return 0;
 
+err_page_pool:
+	page_pool_destroy(adapter->page_pool);
+	adapter->page_pool = NULL;
 err_pages:
 	for (i = 0; i < rx_ring->count; i++) {
 		buffer_info = &rx_ring->buffer_info[i];
@@ -2463,6 +2885,14 @@ void e1000e_free_rx_resources(struct e1000_ring *rx_ring)
 
 	e1000_clean_rx_ring(rx_ring);
 
+	if (xdp_rxq_info_is_reg(&adapter->xdp_rxq))
+		xdp_rxq_info_unreg(&adapter->xdp_rxq);
+
+	if (adapter->page_pool) {
+		page_pool_destroy(adapter->page_pool);
+		adapter->page_pool = NULL;
+	}
+
 	for (i = 0; i < rx_ring->count; i++)
 		kfree(rx_ring->buffer_info[i].ps_pages);
 
@@ -3185,7 +3615,11 @@ static void e1000_configure_rx(struct e1000_adapter *adapter)
 	u64 rdba;
 	u32 rdlen, rctl, rxcsum, ctrl_ext;
 
-	if (adapter->rx_ps_pages) {
+	if (adapter->xdp_prog) {
+		rdlen = rx_ring->count * sizeof(union e1000_rx_desc_extended);
+		adapter->clean_rx = e1000_clean_rx_irq_xdp;
+		adapter->alloc_rx_buf = e1000_alloc_rx_buffers_xdp;
+	} else if (adapter->rx_ps_pages) {
 		/* this is a 32 byte descriptor */
 		rdlen = rx_ring->count *
 		    sizeof(union e1000_rx_desc_packet_split);
@@ -6049,6 +6483,12 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
 		return -EINVAL;
 	}
 
+	/* XDP requires standard MTU */
+	if (adapter->xdp_prog && new_mtu > ETH_DATA_LEN) {
+		e_err("Jumbo Frames not supported while XDP program is active.\n");
+		return -EINVAL;
+	}
+
 	/* Jumbo frame workaround on 82579 and newer requires CRC be stripped */
 	if ((adapter->hw.mac.type >= e1000_pch2lan) &&
 	    !(adapter->flags2 & FLAG2_CRC_STRIPPING) &&
@@ -7331,6 +7771,62 @@ static int e1000_set_features(struct net_device *netdev,
 	return 1;
 }
 
+/**
+ * e1000_xdp_setup - add/remove an XDP program
+ * @netdev: network interface device structure
+ * @bpf: XDP program setup structure
+ **/
+static int e1000_xdp_setup(struct net_device *netdev, struct netdev_bpf *bpf)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	struct bpf_prog *prog = bpf->prog, *old_prog;
+	bool running = netif_running(netdev);
+	bool need_reset;
+
+	/* XDP is incompatible with jumbo frames */
+	if (prog && netdev->mtu > ETH_DATA_LEN) {
+		NL_SET_ERR_MSG_MOD(bpf->extack,
+				   "XDP is not supported with jumbo frames");
+		return -EINVAL;
+	}
+
+	/* Validate frame fits in a single page with XDP headroom */
+	if (prog && netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN +
+	    XDP_PACKET_HEADROOM > PAGE_SIZE) {
+		NL_SET_ERR_MSG_MOD(bpf->extack,
+				   "Frame size too large for XDP");
+		return -EINVAL;
+	}
+
+	old_prog = xchg(&adapter->xdp_prog, prog);
+	need_reset = (!!prog != !!old_prog);
+
+	/* Transition between XDP and non-XDP requires ring reconfiguration */
+	if (need_reset && running)
+		e1000e_close(netdev);
+
+	if (old_prog)
+		bpf_prog_put(old_prog);
+
+	if (!need_reset)
+		return 0;
+
+	if (running)
+		e1000e_open(netdev);
+
+	return 0;
+}
+
+static int e1000_xdp(struct net_device *netdev, struct netdev_bpf *xdp)
+{
+	switch (xdp->command) {
+	case XDP_SETUP_PROG:
+		return e1000_xdp_setup(netdev, xdp);
+	default:
+		return -EINVAL;
+	}
+}
+
 static const struct net_device_ops e1000e_netdev_ops = {
 	.ndo_open		= e1000e_open,
 	.ndo_stop		= e1000e_close,
@@ -7353,6 +7849,7 @@ static const struct net_device_ops e1000e_netdev_ops = {
 	.ndo_features_check	= passthru_features_check,
 	.ndo_hwtstamp_get	= e1000e_hwtstamp_get,
 	.ndo_hwtstamp_set	= e1000e_hwtstamp_set,
+	.ndo_bpf		= e1000_xdp,
 };
 
 /**
@@ -7563,6 +8060,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->max_mtu = adapter->max_hw_frame_size -
 			  (VLAN_ETH_HLEN + ETH_FCS_LEN);
 
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
+
 	if (e1000e_enable_mng_pass_thru(&adapter->hw))
 		adapter->flags |= FLAG_MNG_PT_ENABLED;
 
@@ -7776,6 +8275,8 @@ static void e1000_remove(struct pci_dev *pdev)
 	e1000e_release_hw_control(adapter);
 
 	e1000e_reset_interrupt_capability(adapter);
+	if (adapter->xdp_prog)
+		bpf_prog_put(adapter->xdp_prog);
 	kfree(adapter->tx_ring);
 	kfree(adapter->rx_ring);
 
-- 
2.53.0

