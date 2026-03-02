Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGaVG7W/pWknFgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 17:49:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A941DD3C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 17:49:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2B4241CFF;
	Mon,  2 Mar 2026 16:49:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dHTiz6i6KGGK; Mon,  2 Mar 2026 16:49:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E9E441CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772470195;
	bh=VxNYITa+b7W0YT4VM1CqtAl2T71AGFXKYRIv1H8f6Ok=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lFnuGgQr2ltX+ug7MOLOSmTEDIHtzgcx2LjlD3EsoW5nijbIuP63e48vl/y/tZ/EX
	 vyFa8LeYzGVGw00CYx4G0e3sCiANLCJHcJHk4J66JWQIm3jwfd9FOPFzkVmENyqS91
	 pk6tYwC0psKC+1JyQNIe0792dwCwA9E79iKpH4CGyiHWm7ueQx1mgl3T23VHkVI9Aa
	 0k2Sf3DH8iAwtJDUQkNfJwfzkluqP982VknommTQRJlA8Kw9u57k0xQgeYzHkYG/5Z
	 xVYxkYI3mi0WSDyvDl702cUdMIVkKe+MI10vqRt0CTWu+5MNpZ+6Oq0qfb+aBN7VJ1
	 GgnieY+/TFVSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E9E441CFD;
	Mon,  2 Mar 2026 16:49:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A91CB231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 16:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B18D612AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 16:49:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ev0j0E8FV0TW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 16:49:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 79034612AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79034612AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79034612AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 16:49:52 +0000 (UTC)
X-CSE-ConnectionGUID: v8g8vAYKSN2mBlHVWCURUg==
X-CSE-MsgGUID: vyu/Q/E3TbKCSc3TXLB+Zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76087679"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76087679"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 08:49:52 -0800
X-CSE-ConnectionGUID: SJ98PHtbQK+U+SbsOuJfjw==
X-CSE-MsgGUID: CN47PHg/Sheu276XK0vF/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="216947054"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Mar 2026 08:49:44 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E6C7F312CB;
 Mon,  2 Mar 2026 16:49:40 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?q?Ricardo=20B=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dragos Tatulea <dtatulea@nvidia.com>
Date: Mon,  2 Mar 2026 17:17:20 +0100
Message-ID: <20260302161723.858616-8-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260302161723.858616-1-larysa.zaremba@intel.com>
References: <20260302161723.858616-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772470193; x=1804006193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TZEXOfIR3nqd7pS9W9oFFIwS02GXdOuLJMeGp51CQyU=;
 b=iyTVbwHys7c9V1AqylHQoVo4gQ/o4ZyyVHPNVAcvOwOaBk+fKgjko2JC
 cavy/s/tW8Gz762U5o4STpRpHLVbL0uBbPkvmG+0F6JStnaM0JNm4vSiM
 R0V0b/7gBwL3R5LdphLFc7prV5id+l7O0Sxdsok2ZMdslsg7ngDrJhcPi
 xegGJd44WR7HIJAdo82DCmZ1/+Nrs1ehMKuzsW8OP4Bn9faZa+fJibTsP
 +8lR49gNRRIM9ssgzF7o21TO/3zeeT1+rboV8mt1VbYaNUB7s1YXkjMvn
 2WUvq1d5J7pWtDi+3fNjeGpa9EO/cWGLcK9OllaCbsMfeVshdKLBRsdnH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iyTVbwHy
Subject: [Intel-wired-lan] [PATCH bpf v4 7/9] libeth,
 idpf: use truesize as XDP RxQ info frag_size
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
X-Rspamd-Queue-Id: 16A941DD3C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[44];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bpf@vger.kernel.org,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

The only user of frag_size field in XDP RxQ info is
bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size instead
of DMA write size. Different assumptions in idpf driver configuration lead
to negative tailroom.

To make it worse, buffer sizes are not actually uniform in idpf when
splitq is enabled, as there are several buffer queues, so rxq->rx_buf_size
is meaningless in this case.

Use truesize of the first bufq in AF_XDP ZC, as there is only one. Disable
growing tail for regular splitq.

Fixes: ac8a861f632e ("idpf: prepare structures to support XDP")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.c   | 6 +++++-
 drivers/net/ethernet/intel/idpf/xsk.c   | 1 +
 drivers/net/ethernet/intel/libeth/xsk.c | 1 +
 include/net/libeth/xsk.h                | 3 +++
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 6ac9c6624c2a..cbccd4546768 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -47,12 +47,16 @@ static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
 {
 	const struct idpf_vport *vport = rxq->q_vector->vport;
 	const struct idpf_q_vec_rsrc *rsrc;
+	u32 frag_size = 0;
 	bool split;
 	int err;
 
+	if (idpf_queue_has(XSK, rxq))
+		frag_size = rxq->bufq_sets[0].bufq.truesize;
+
 	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
 				 rxq->q_vector->napi.napi_id,
-				 rxq->rx_buf_size);
+				 frag_size);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
index 676cbd80774d..d95d3efdfd36 100644
--- a/drivers/net/ethernet/intel/idpf/xsk.c
+++ b/drivers/net/ethernet/intel/idpf/xsk.c
@@ -403,6 +403,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
 	bufq->pending = fq.pending;
 	bufq->thresh = fq.thresh;
 	bufq->rx_buf_size = fq.buf_len;
+	bufq->truesize = fq.truesize;
 
 	if (!idpf_xskfq_refill(bufq))
 		netdev_err(bufq->pool->netdev,
diff --git a/drivers/net/ethernet/intel/libeth/xsk.c b/drivers/net/ethernet/intel/libeth/xsk.c
index 846e902e31b6..4882951d5c9c 100644
--- a/drivers/net/ethernet/intel/libeth/xsk.c
+++ b/drivers/net/ethernet/intel/libeth/xsk.c
@@ -167,6 +167,7 @@ int libeth_xskfq_create(struct libeth_xskfq *fq)
 	fq->pending = fq->count;
 	fq->thresh = libeth_xdp_queue_threshold(fq->count);
 	fq->buf_len = xsk_pool_get_rx_frame_size(fq->pool);
+	fq->truesize = xsk_pool_get_rx_frag_step(fq->pool);
 
 	return 0;
 }
diff --git a/include/net/libeth/xsk.h b/include/net/libeth/xsk.h
index 481a7b28e6f2..82b5d21aae87 100644
--- a/include/net/libeth/xsk.h
+++ b/include/net/libeth/xsk.h
@@ -597,6 +597,7 @@ __libeth_xsk_run_pass(struct libeth_xdp_buff *xdp,
  * @pending: current number of XSkFQEs to refill
  * @thresh: threshold below which the queue is refilled
  * @buf_len: HW-writeable length per each buffer
+ * @truesize: step between consecutive buffers, 0 if none exists
  * @nid: ID of the closest NUMA node with memory
  */
 struct libeth_xskfq {
@@ -614,6 +615,8 @@ struct libeth_xskfq {
 	u32			thresh;
 
 	u32			buf_len;
+	u32			truesize;
+
 	int			nid;
 };
 
-- 
2.52.0

