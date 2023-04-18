Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA036E65EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 15:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 693EB41DCF;
	Tue, 18 Apr 2023 13:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 693EB41DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681824685;
	bh=PgD24HYqB3UO0RRa7WWDP67zKztaVjvLXPH7GphZ1K8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ai4zrKq8pCHaVymz11sMQPqvJYIPX1S3IH6EYVEzgjwhAYN97VD4lnEe8H03zOPhM
	 DpH/NmDflxryLC0qFSCR5tQEDZB2gIBGrRfiQ8yxFb33cCGx/4awvzqjPXY9MjD5hK
	 zI8vn0ytCpG4VQtkTujBdwNuggffdZbX4hQrZ9BmK3iuIGHaHTVFnOxqZ2zDtUGMKD
	 /jP2vV5pXT4AVacN/pdmGrJKiwKGAIn+wVRcPpZf5KENHaJqQeEs5Ldr3I5TTxoAQ1
	 YDGwE1C1EWW34iBWQ3FL9GIuotYwkh6vZ5cgfd2VqJFzhqDMCDO4UzfyB5VduREUD3
	 KQYy7bYyy+NqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBlKKXE-iA9i; Tue, 18 Apr 2023 13:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23F96418F1;
	Tue, 18 Apr 2023 13:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23F96418F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 666321C427D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 13:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F36940153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 13:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F36940153
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OFGhdcu1Qa-D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 13:31:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8407B40103
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8407B40103
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 13:31:18 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-PMQLmTNYOwewXYm-BgBc4g-1; Tue, 18 Apr 2023 09:31:06 -0400
X-MC-Unique: PMQLmTNYOwewXYm-BgBc4g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E28DC3850542;
 Tue, 18 Apr 2023 13:31:03 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B2B51410F21;
 Tue, 18 Apr 2023 13:30:58 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id EC4FC307372E8;
 Tue, 18 Apr 2023 15:30:57 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Tue, 18 Apr 2023 15:30:57 +0200
Message-ID: <168182465791.616355.2583922957423587914.stgit@firesoul>
In-Reply-To: <168182460362.616355.14591423386485175723.stgit@firesoul>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681824677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AK4HrA02Q1v0w9WsJgOrguYhNpSNgBPs/ggkgsLYvjA=;
 b=d0Z1H4r94J15iC6NqATWFEBInF4nqTvLZD29gIP5QwhQMgutPVLYRK1WHIAVMZx1izTYoM
 uIIGcBym4GvhBy7ADy2jdLYfv2MY3ddRuoJ9SZpHlse77/j5+fvxVrYathBakOW79ET7/b
 oYa6eie6Jy1C+aKOmCTvT71t0EA2v4U=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=d0Z1H4r9
Subject: [Intel-wired-lan] [PATCH bpf-next V2 4/5] igc: add XDP hints kfuncs
 for RX timestamp
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The NIC hardware RX timestamping mechanism adds an optional tailored
header before the MAC header containing packet reception time. Optional
depending on RX descriptor TSIP status bit (IGC_RXDADV_STAT_TSIP). In
case this bit is set driver does offset adjustments to packet data start
and extracts the timestamp.

The timestamp need to be extracted before invoking the XDP bpf_prog,
because this area just before the packet is also accessible by XDP via
data_meta context pointer (and helper bpf_xdp_adjust_meta). Thus, an XDP
bpf_prog can potentially overwrite this and corrupt data that we want to
extract with the new kfunc for reading the timestamp.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |    1 +
 drivers/net/ethernet/intel/igc/igc_main.c |   16 ++++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index c609a2e648f8..18d4af934d8c 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -503,6 +503,7 @@ struct igc_rx_buffer {
 struct igc_xdp_buff {
 	struct xdp_buff xdp;
 	union igc_adv_rx_desc *rx_desc;
+	ktime_t rx_ts; /* data indication bit IGC_RXDADV_STAT_TSIP */
 };
 
 struct igc_q_vector {
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9cb43c0eab73..38d113b48111 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2552,6 +2552,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 		if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
 							pktbuf);
+			ctx.rx_ts = timestamp;
 			pkt_offset = IGC_TS_HDR_LEN;
 			size -= IGC_TS_HDR_LEN;
 		}
@@ -2740,6 +2741,7 @@ static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
 		if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
 			timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
 							bi->xdp->data);
+			ctx->rx_ts = timestamp;
 
 			bi->xdp->data += IGC_TS_HDR_LEN;
 
@@ -6526,8 +6528,22 @@ static int igc_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash,
 	return 0;
 }
 
+static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64 *timestamp)
+{
+	const struct igc_xdp_buff *ctx = (void *)_ctx;
+
+	if (igc_test_staterr(ctx->rx_desc, IGC_RXDADV_STAT_TSIP)) {
+		*timestamp = ctx->rx_ts;
+
+		return 0;
+	}
+
+	return -ENODATA;
+}
+
 static const struct xdp_metadata_ops igc_xdp_metadata_ops = {
 	.xmo_rx_hash			= igc_xdp_rx_hash,
+	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
 };
 
 /**


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
