Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BBD6D0C42
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 19:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FC8B41E8F;
	Thu, 30 Mar 2023 17:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FC8B41E8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680196109;
	bh=YxWsNEGyU6EWYCqTwQKPyVCcddLQPbRBp1j+0F+KmGE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C07njI+hfe4HTBKnTRpkNK8pzlsUh0p1we2KGZQnjuo+MD8stEwbcydE+H07oR7sA
	 BBGOkUG9EXRvq8GLRjo9jFhmliGestbmqIFdQohwKT2EIPk6y142+Klo5Ax9LCHohW
	 ojuLm3QOrOtYwGXDde+UWWp7NgbbkOt+t5fOmiBZCLEwDuE39nn2gspSw72mZIahNa
	 2sDGkV2I7qacwvvGlBuJUIsBsbWja6fmj0aQsrDwttV7xd4XjiUz/QIyJplzfyBx6/
	 dHQTTCKJnLbI7c9bfJzqtfCQnoW7CnmHZkCJrMjfmIA5tTn5pFGFKtxRdhBBaPMUXI
	 ksHMD84wzBlzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zqPV2HPw0hxw; Thu, 30 Mar 2023 17:08:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35E3D41E85;
	Thu, 30 Mar 2023 17:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35E3D41E85
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 611631BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3AF6C60760
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AF6C60760
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMUeC2cJ_YBE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 17:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AD5C6059F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AD5C6059F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:08:22 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-384-X2d2XH2iOje-FwJDF9HbgA-1; Thu, 30 Mar 2023 13:08:05 -0400
X-MC-Unique: X2d2XH2iOje-FwJDF9HbgA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B77F3810B0E;
 Thu, 30 Mar 2023 17:08:02 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EE2ED407D441;
 Thu, 30 Mar 2023 17:08:01 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id F1AC330736C72;
 Thu, 30 Mar 2023 19:08:00 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Thu, 30 Mar 2023 19:08:00 +0200
Message-ID: <168019608094.3557870.11753259102366277974.stgit@firesoul>
In-Reply-To: <168019602958.3557870.9960387532660882277.stgit@firesoul>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680196101;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZEaVmBgKlRrwoGWi/NgZd7GVisuKZ6nuXro4uZDEt98=;
 b=AyxsreRqL5DcWaqG7CfIFzG9EPFzZZzGXyIUsDkWBfPZplu0arr0WDX46R/GDzFQKloZbU
 zdVwEi9333fYYvpEGimgsAUiyvwu4u46HiguzyqurQos7oM0m5PW3BvMOgcpW+l+JhDPXY
 U7pPPY3tBosdkRnhjgdybntI7xd0EMI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AyxsreRq
Subject: [Intel-wired-lan] [PATCH bpf RFC-V3 4/5] mlx4:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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

Update API for bpf_xdp_metadata_rx_hash() with arg for xdp rss hash type
via matching indiviual Completion Queue Entry (CQE) status bits.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/mellanox/mlx4/en_rx.c   |   22 ++++++++++++++++++++--
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h |    3 ++-
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/en_rx.c b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
index 4b5e459b6d49..d3f46d8b4160 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
@@ -681,14 +681,32 @@ int mlx4_en_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 	return 0;
 }
 
-int mlx4_en_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
+int mlx4_en_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
+			enum xdp_rss_hash_type *rss_type)
 {
 	struct mlx4_en_xdp_buff *_ctx = (void *)ctx;
+	struct mlx4_cqe *cqe = _ctx->cqe;
+	enum xdp_rss_hash_type xht = 0;
+	__be16 status;
 
 	if (unlikely(!(_ctx->dev->features & NETIF_F_RXHASH)))
 		return -ENODATA;
 
-	*hash = be32_to_cpu(_ctx->cqe->immed_rss_invalid);
+	*hash = be32_to_cpu(cqe->immed_rss_invalid);
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
+			xht |= XDP_RSS_L3_DYNHDR;
+	}
+	*rss_type = xht;
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h b/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
index 544e09b97483..4ac4d883047b 100644
--- a/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
+++ b/drivers/net/ethernet/mellanox/mlx4/mlx4_en.h
@@ -798,7 +798,8 @@ int mlx4_en_netdev_event(struct notifier_block *this,
 
 struct xdp_md;
 int mlx4_en_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp);
-int mlx4_en_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash);
+int mlx4_en_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
+			enum xdp_rss_hash_type *rss_type);
 
 /*
  * Functions for time stamping


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
