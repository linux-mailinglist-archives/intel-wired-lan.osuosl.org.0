Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D32AA6CEF62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 18:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61E0B84225;
	Wed, 29 Mar 2023 16:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61E0B84225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680107377;
	bh=Hv76ZpwlVk8fsFMAHQCnJxeo2ZSyLh45jxXYunh7mu0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7gAI936ZJDRltUpJduofjN7IK7J0ScH5xkmNmxxOZ+JqrjjLqXhgOzCttEMqVN4/n
	 KZ2qdNzOCIOem1kLLXkXcEglUhOyf7rUP3SEei9vjBLcH1dfVpcywgIHnZoHt0u2Ub
	 IQQ4dWvjGF0c7rQe80cux6oJk6XtzTRWfn3CyTu1JOdAg0uDvI51QNo0nQtrw3ZZ4K
	 tczbQ5lXNgmCML7aytyh3PxTGYiogeKpGajGbxgfMNm07z/a6rEQJigS9OHVjnWuee
	 IZfKb2m53PCTZ1lD8/nmX86pDcZkz0g3kBRfYcAJfF+rLZSZcy3525FPOWadHCB2Y+
	 10G6TcO0yFOyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6kbqGsRYbngV; Wed, 29 Mar 2023 16:29:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58FEB83D20;
	Wed, 29 Mar 2023 16:29:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58FEB83D20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 640731BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49D0741D3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49D0741D3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZUI-wv8CNtl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 16:29:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D62D4000B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D62D4000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:30 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-12-58AnzNzGPmqO-eeEuGEBpA-1; Wed, 29 Mar 2023 12:29:25 -0400
X-MC-Unique: 58AnzNzGPmqO-eeEuGEBpA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D546885622;
 Wed, 29 Mar 2023 16:29:24 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 60F541121330;
 Wed, 29 Mar 2023 16:29:24 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 8349430736C72;
 Wed, 29 Mar 2023 18:29:23 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Wed, 29 Mar 2023 18:29:23 +0200
Message-ID: <168010736349.3039990.15736472596192726923.stgit@firesoul>
In-Reply-To: <168010726310.3039990.2753040700813178259.stgit@firesoul>
References: <168010726310.3039990.2753040700813178259.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680107369;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R04Vq+TEHO0b9S0yy8Ip00yZxPQlDgdJbbW0Gf6DdUk=;
 b=NGJyHiKL1mydJ4gka7gOlrXv64WpQ1SmJw89CIesf/pS8zgiiKVNMe9pWsYf3L3g1yuKu7
 OlVxj9ngjzV/RthUhCd6f/Ati9v5T5ym5AkQiU7bxjTco1xBMS2QzqTrmjGeBnYtqVVfqJ
 gx7/LtcpJ+x5ooC3ZPgqhiAIzBYDP50=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NGJyHiKL
Subject: [Intel-wired-lan] [PATCH bpf RFC-V2 5/5] mlx4:
 bpf_xdp_metadata_rx_hash return xdp rss hash type
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
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update API for bpf_xdp_metadata_rx_hash() by returning xdp rss hash type
via matching indiviual Completion Queue Entry (CQE) status bits.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/mellanox/mlx4/en_rx.c |   20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/en_rx.c b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
index 4b5e459b6d49..f3b7351daa05 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
@@ -684,12 +684,28 @@ int mlx4_en_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 int mlx4_en_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
 {
 	struct mlx4_en_xdp_buff *_ctx = (void *)ctx;
+	struct mlx4_cqe *cqe = _ctx->cqe;
+	enum xdp_rss_hash_type xht = 0;
+	__be16 status;
 
 	if (unlikely(!(_ctx->dev->features & NETIF_F_RXHASH)))
 		return -ENODATA;
 
-	*hash = be32_to_cpu(_ctx->cqe->immed_rss_invalid);
-	return 0;
+	status = cqe->status;
+	if (status & cpu_to_be16(MLX4_CQE_STATUS_TCP))
+		xht = XDP_RSS_L4_TCP;
+	if (status & cpu_to_be16(MLX4_CQE_STATUS_UDP))
+		xht = XDP_RSS_L4_UDP;
+	if (status & cpu_to_be16(MLX4_CQE_STATUS_IPV4|MLX4_CQE_STATUS_IPV4F))
+		xht |= XDP_RSS_L3_IPV4;
+	if (status & cpu_to_be16(MLX4_CQE_STATUS_IPV6)) {
+		xht |= XDP_RSS_L3_IPV6;
+		if (cqe->ipv6_ext_mask)
+			xht |= XDP_RSS_BIT_EX;
+	}
+
+	*hash = be32_to_cpu(cqe->immed_rss_invalid);
+	return xht;
 }
 
 int mlx4_en_process_rx_cq(struct net_device *dev, struct mlx4_en_cq *cq, int budget)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
