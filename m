Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AE46C332F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:47:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7863040BDE;
	Tue, 21 Mar 2023 13:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7863040BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679406467;
	bh=JriyV6RKsptCYFyi7gwL+EsQ4jaFGvrSWyxnTa9gAwA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjdWElCUi3jqY+/dgdrDCWF0V/PebbB719TuxktWOtKWWttEhfas+p2Bj4HgTbJPl
	 sslxFZYvhfpzPlreLvQE+yaj6619ldvNDREmisTXpxJWkdkEW3Cmwdm5D3zFqj2ZIF
	 CdbyEY7NajQy2K8VSQxooD8Wbhky8qzAs6JynauTCUahngfI97i3jZfJfn/N/pa5sw
	 N3pQrjsrG4cZyD8CAlBqwSL1I9DXeihfmr9BVujRi70gzDUZN2cJmWkoSGz8OP3iub
	 1QPWUIK7gSrh+FquOr6WxHQXXBXLTPbWaCSRff5NvMkW9GBvUe52SBFoN4jBx0N3dM
	 JqpZBjJwlM1Rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NTaiJhetk2Ra; Tue, 21 Mar 2023 13:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 693EE40BC1;
	Tue, 21 Mar 2023 13:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 693EE40BC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 105411BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF14641870
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF14641870
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6hi0ycLOzuY2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA3784181C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA3784181C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:39 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-44-I1xUYhZROsWtd0UiXsgw2A-1; Tue, 21 Mar 2023 09:47:33 -0400
X-MC-Unique: I1xUYhZROsWtd0UiXsgw2A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B101A857FB5;
 Tue, 21 Mar 2023 13:47:32 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 763FA140E95F;
 Tue, 21 Mar 2023 13:47:32 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id E0E2D30721A6C;
 Tue, 21 Mar 2023 14:47:31 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 21 Mar 2023 14:47:31 +0100
Message-ID: <167940645187.2718137.8645052024109756542.stgit@firesoul>
In-Reply-To: <167940634187.2718137.10209374282891218398.stgit@firesoul>
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679406458;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SNzfne+ehiwMF7uvGVh6OwjGKWcTNK9/K/phIg4/2Ik=;
 b=d7oct5XvnFgpn14j9i1Eo3TgQSVMXgtDBWqkaaLRevY+y88cA0XnzPzqzNuLp0DTVMXYKJ
 WKT8Yp2SLw8H32XUq7PMAMP/vQgwXwGCQOBGDrMxz05ryYsV2sFb9iTv9rMII075OORCfb
 arSPCTd52xZ8tVKyW5J81HD9y1MK9H8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=d7oct5Xv
Subject: [Intel-wired-lan] [PATCH bpf-next V2 6/6] igc: add XDP hints kfuncs
 for RX hash
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
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This implements XDP hints kfunc for RX-hash (xmo_rx_hash) straightforward
by returning the u32 hash value.

The associated RSS-type for the hash value isn't available to the BPF-prog
caller. This is problematic if BPF-prog tries to do L4 load-balancing with
the hardware hash, but the RSS hash type is L3 based.

For this driver this issue occurs for UDP packets, as driver (default
config) does L3 hashing for UDP packets (excludes UDP src/dest ports in
hash calc). Tested that the igc_rss_type_num for UDP is either
IGC_RSS_TYPE_HASH_IPV4 or IGC_RSS_TYPE_HASH_IPV6.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f66285c85444..846041119fd4 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6496,8 +6496,21 @@ static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64 *timestamp)
 	return -ENODATA;
 }
 
+static int igc_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash)
+{
+	const struct igc_xdp_buff *ctx = (void *)_ctx;
+
+	if (!(ctx->xdp.rxq->dev->features & NETIF_F_RXHASH))
+		return -ENODATA;
+
+	*hash = le32_to_cpu(ctx->rx_desc->wb.lower.hi_dword.rss);
+
+	return 0;
+}
+
 const struct xdp_metadata_ops igc_xdp_metadata_ops = {
 	.xmo_rx_timestamp		= igc_xdp_rx_timestamp,
+	.xmo_rx_hash			= igc_xdp_rx_hash,
 };
 
 /**


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
