Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55683700B47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC9F442CA0;
	Fri, 12 May 2023 15:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC9F442CA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904827;
	bh=AbbV08vsqG89uG/dlmxApflEMTxkZhDNdcyj9NNduEo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=klD/ayB+2b5VTcxJkKO39PVwGlpdF4NTjGJKF6Kw5eQjk42IkK/9HjS2e/ipb1FUE
	 Ir8v1hP6txlX/4Bnl39PaNfPyEP3YO6TS1M6nwC3SqyTSO1WMrxp5NwLXcnBOav7p8
	 VEc26TJitNQuo4lxJsnFbIXtGm8o0S5Zc3gLP6fz35cxfgoIow2qJ0hpM5uPBpo2CC
	 h2kFskIqH5EPDLYiPrWk2z+Lj1c5aLjPvfWqF9GD1GIm7SULiM5jgeDWEx93YiRVtr
	 mXTJTFvS71JJ+vthSCmMwpoKXAXnalPVhVqt45P8U5w0GeKPPZ7K2BQAvwizV6md64
	 Y4h+hmfShGXyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZeQ2STjwyJH; Fri, 12 May 2023 15:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A52042C4D;
	Fri, 12 May 2023 15:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A52042C4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 789501BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F0D5821E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F0D5821E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZiMvKDkAkIxB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:20:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55A5C821B1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 55A5C821B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="331173836"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331173836"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="765196692"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="765196692"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2023 08:20:09 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4EBEA36351;
 Fri, 12 May 2023 16:20:07 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:29 +0200
Message-Id: <20230512151639.992033-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904815; x=1715440815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Hcz+nrahtGksGo46j3Eum/Gwzp1mNWWe+cvm9dkHi8=;
 b=kW0/His/9A3be0I2Mo7QEu5ucbjbR44DZpzyzeCCcdBPCY1KgqxvjX0D
 iPAkpI1qua+/yGbeYYS3cq3cOhmqrQF3tbhgEHxAdtmuToRHCF8vPUhc8
 gEd5G7+w7irQ+rxlbmciZHMAwgXWJ4iCGEMYszuA0wxNClZpqlB0BKJT9
 vYqWCNXoIvBmyJ4H/YN5SxHV7WGp203EL/CeQ+pk/SNPmildf2WkObdUU
 nrD7k7U1zlI/LKnPBy+Fx3zQQy8zpMLd+fdr/0qEUY/dpjhrgeS0RDef7
 UJiAjLN6Ps0hldx+FkvJ9zwxb9hi1VfuV/nua1ej71cBhSfMdUD7U54+r
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kW0/His/
Subject: [Intel-wired-lan] [PATCH 05/15] ice: Introduce ice_xdp_buff
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In order to use XDP hints via kfuncs we need to put
RX descriptor and ring pointers just next to xdp_buff.
Same as in hints implementations in other drivers, we archieve
this through putting xdp_buff into a child structure.

Currently, xdp_buff is stored in the ring structure,
so replace it with union that includes child structure.
This way enough memory is available while existing XDP code
remains isolated from hints.

Size of the new child structure (ice_xdp_buff) is 72 bytes,
therefore it does not fit into a single cache line.
To at least place union at the start of cache line, move 'next'
field from CL3 to CL1, as it isn't used often.

Placing union at the start of cache line makes at least xdp_buff
and descriptor fit into a single CL,
ring pointer is used less often, so it can spill into the next CL.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  7 ++++--
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 23 ++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 11 +++++++++
 3 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index c9bb77da0861..ca21a71749b6 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -557,13 +557,14 @@ ice_rx_frame_truesize(struct ice_rx_ring *rx_ring, const unsigned int size)
  * @xdp_prog: XDP program to run
  * @xdp_ring: ring to be used for XDP_TX action
  * @rx_buf: Rx buffer to store the XDP action
+ * @eop_desc: Last descriptor in packet to read metadata from
  *
  * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
  */
 static void
 ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	    struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring,
-	    struct ice_rx_buf *rx_buf)
+	    struct ice_rx_buf *rx_buf, union ice_32b_rx_flex_desc *eop_desc)
 {
 	unsigned int ret = ICE_XDP_PASS;
 	u32 act;
@@ -571,6 +572,8 @@ ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	if (!xdp_prog)
 		goto exit;
 
+	ice_xdp_set_meta_srcs(xdp, eop_desc, rx_ring);
+
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 	switch (act) {
 	case XDP_PASS:
@@ -1240,7 +1243,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		if (ice_is_non_eop(rx_ring, rx_desc))
 			continue;
 
-		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf);
+		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf, rx_desc);
 		if (rx_buf->act == ICE_XDP_PASS)
 			goto construct_skb;
 		total_rx_bytes += xdp_get_buff_len(xdp);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index fff0efe28373..f1ac2eb974f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -260,6 +260,15 @@ enum ice_rx_dtype {
 	ICE_RX_DTYPE_SPLIT_ALWAYS	= 2,
 };
 
+struct ice_xdp_buff {
+	struct xdp_buff xdp_buff;
+	union ice_32b_rx_flex_desc *eop_desc;	/* Required for all metadata */
+	/* End of the 1st cache line */
+	struct ice_rx_ring *rx_ring;
+};
+
+static_assert(offsetof(struct ice_xdp_buff, xdp_buff) == 0);
+
 /* indices into GLINT_ITR registers */
 #define ICE_RX_ITR	ICE_IDX_ITR0
 #define ICE_TX_ITR	ICE_IDX_ITR1
@@ -301,7 +310,6 @@ enum ice_dynamic_itr {
 /* descriptor ring, associated with a VSI */
 struct ice_rx_ring {
 	/* CL1 - 1st cacheline starts here */
-	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
 	void *desc;			/* Descriptor ring memory */
 	struct device *dev;		/* Used for DMA mapping */
 	struct net_device *netdev;	/* netdev ring maps to */
@@ -313,12 +321,19 @@ struct ice_rx_ring {
 	u16 count;			/* Number of descriptors */
 	u16 reg_idx;			/* HW register index of the ring */
 	u16 next_to_alloc;
-	/* CL2 - 2nd cacheline starts here */
+
 	union {
 		struct ice_rx_buf *rx_buf;
 		struct xdp_buff **xdp_buf;
 	};
-	struct xdp_buff xdp;
+	/* CL2 - 2nd cacheline starts here
+	 * Size of ice_xdp_buff is 72 bytes,
+	 * so it spills into CL3
+	 */
+	union {
+		struct ice_xdp_buff xdp_ext;
+		struct xdp_buff xdp;
+	};
 	/* CL3 - 3rd cacheline starts here */
 	struct bpf_prog *xdp_prog;
 	u16 rx_offset;
@@ -328,6 +343,8 @@ struct ice_rx_ring {
 	u16 next_to_clean;
 	u16 first_desc;
 
+	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
+
 	/* stats structs */
 	struct ice_ring_stats *ring_stats;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index e1d49e1235b3..2835a8348237 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -151,4 +151,15 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 		       struct sk_buff *skb);
 void
 ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag);
+
+static inline void
+ice_xdp_set_meta_srcs(struct xdp_buff *xdp,
+		      union ice_32b_rx_flex_desc *eop_desc,
+		      struct ice_rx_ring *rx_ring)
+{
+	struct ice_xdp_buff *xdp_ext = (struct ice_xdp_buff *)xdp;
+
+	xdp_ext->eop_desc = eop_desc;
+	xdp_ext->rx_ring = rx_ring;
+}
 #endif /* !_ICE_TXRX_LIB_H_ */
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
