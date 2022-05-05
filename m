Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8290451BCCE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F90460B6E;
	Thu,  5 May 2022 10:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hw9kVM9l45oG; Thu,  5 May 2022 10:07:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3584060FE9;
	Thu,  5 May 2022 10:07:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B0721BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8737C60FF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JjL8szNxFptq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0465060FEB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3BB4E616A8;
 Thu,  5 May 2022 10:07:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F029C385A8;
 Thu,  5 May 2022 10:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745244;
 bh=etd9v/VVGDpEbfVjS8WpMYDvZ5aU2wv0dTE3gJx7AzA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OAokdw2WNr8aN9sx4bKfD/i2uTs+wZjV3HRdl/Rw3Ab4W6oUHJnYGWxnwccVILv2X
 v/HoxtmuV0P0gHIcguqVNCxfQsCfeymTSO/tWx7Xj8p6kA0sU4C+ObpjjtztwdHMmq
 4DGzb9xNYg0EIG4Ghifgt0bet9RKbyjgumJ8XnDqK5XqWpoAOwdl4QxmIGZL6jyCwI
 NTVEb3FhYXOLZgAcngxN9whxx0o3O4pLK1D+YqqNmJ2RQsQ9skKQeD7ddHBG7FpA0H
 C6KOgY/3MIeSQW9l5YFYVmJu2TOdotec7EtsPX8/2gprNl2iHXueB9Wab3uRBp9QO6
 mXyi9u6QTlWSQ==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:44 +0300
Message-Id: <a8e511b7d8446e4c1c5414c44a6a81de62f116eb.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 7/8] net/mlx5e: Use XFRM state
 direction instead of flags
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Raed Salem <raeds@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Convert mlx5 driver to use XFRM state direction.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c   | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index 35e2bb301c26..2a8fd7020622 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -172,9 +172,9 @@ mlx5e_ipsec_build_accel_xfrm_attrs(struct mlx5e_ipsec_sa_entry *sa_entry,
 	}
 
 	/* action */
-	attrs->action = (!(x->xso.flags & XFRM_OFFLOAD_INBOUND)) ?
-			MLX5_ACCEL_ESP_ACTION_ENCRYPT :
-			MLX5_ACCEL_ESP_ACTION_DECRYPT;
+	attrs->action = (x->xso.dir == XFRM_DEV_OFFLOAD_OUT) ?
+				MLX5_ACCEL_ESP_ACTION_ENCRYPT :
+				      MLX5_ACCEL_ESP_ACTION_DECRYPT;
 	/* flags */
 	attrs->flags |= (x->props.mode == XFRM_MODE_TRANSPORT) ?
 			MLX5_ACCEL_ESP_FLAGS_TRANSPORT :
@@ -306,7 +306,7 @@ static int mlx5e_xfrm_add_state(struct xfrm_state *x)
 	if (err)
 		goto err_hw_ctx;
 
-	if (x->xso.flags & XFRM_OFFLOAD_INBOUND) {
+	if (x->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		err = mlx5e_ipsec_sadb_rx_add(sa_entry);
 		if (err)
 			goto err_add_rule;
@@ -333,7 +333,7 @@ static void mlx5e_xfrm_del_state(struct xfrm_state *x)
 {
 	struct mlx5e_ipsec_sa_entry *sa_entry = to_ipsec_sa_entry(x);
 
-	if (x->xso.flags & XFRM_OFFLOAD_INBOUND)
+	if (x->xso.dir == XFRM_DEV_OFFLOAD_IN)
 		mlx5e_ipsec_sadb_rx_del(sa_entry);
 }
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
