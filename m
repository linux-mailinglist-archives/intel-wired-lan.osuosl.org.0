Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DD251BCC9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 761628403D;
	Thu,  5 May 2022 10:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjA8C9AHEHGm; Thu,  5 May 2022 10:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D6C184007;
	Thu,  5 May 2022 10:07:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA8B1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0813F410A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kw5K95LpOzat for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D77F2415B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0F589618CB;
 Thu,  5 May 2022 10:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AC3DC385B0;
 Thu,  5 May 2022 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745228;
 bh=iZ1pdneEkYkq338sTxi0jvyQEQbqXPe9qjqG5HlcYcA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uCWuWk/GqCsj7wzK4Bu8xtEGUxZrwhgR3jvZ7Wjt0krLBDD/VzMcy1pvxExAj5bQn
 TANz0n7b972XudBJgo2p5u4DBBpwu6EYCLiYEJtN1GB8NgfTatsclL35Rfnxn/qS40
 y8LjxzpCwzWOJtQpvxqmq76hScFBUyuaU/3wm5FLQ4S70Dkjo7ERXYkYwyw08MQe5A
 ZqdLtwjmJ2F3D2K7rc9YnLOXz6HYRWscnUM0FRieVKFkiam4N00G/Fae5FmtCoktmM
 BDAtxWBtBe7XKd90cMh4U6AHhEOLehj17SO35k/6v4+P9JFidFaXWxPBvw0lCaUGTk
 pADRXshwFhVkQ==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:42 +0300
Message-Id: <136e50b0e7daad71a2e3516427133ec8296fc4d0.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 5/8] ixgbe: propagate XFRM
 offload state direction instead of flags
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

Convert the ixgbe driver to rely on XFRM offload state direction instead
of flags bits that were not checked at all.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 9 ++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.h | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ipsec.c     | 6 +++---
 drivers/net/ethernet/intel/ixgbevf/ipsec.h     | 2 +-
 4 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 69d11ff7677d..774de63dd93a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -585,7 +585,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
-	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
+	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		struct rx_sa rsa;
 
 		if (xs->calg) {
@@ -757,7 +757,7 @@ static void ixgbe_ipsec_del_sa(struct xfrm_state *xs)
 	u32 zerobuf[4] = {0, 0, 0, 0};
 	u16 sa_idx;
 
-	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
+	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		struct rx_sa *rsa;
 		u8 ipi;
 
@@ -903,8 +903,7 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 	/* Tx IPsec offload doesn't seem to work on this
 	 * device, so block these requests for now.
 	 */
-	sam->flags = sam->flags & ~XFRM_OFFLOAD_IPV6;
-	if (sam->flags != XFRM_OFFLOAD_INBOUND) {
+	if (sam->dir != XFRM_DEV_OFFLOAD_IN) {
 		err = -EOPNOTSUPP;
 		goto err_out;
 	}
@@ -915,7 +914,7 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 		goto err_out;
 	}
 
-	xs->xso.flags = sam->flags;
+	xs->xso.dir = sam->dir;
 	xs->id.spi = sam->spi;
 	xs->id.proto = sam->proto;
 	xs->props.family = sam->family;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.h
index d2b64ff8eb4e..809ab51a7842 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.h
@@ -74,7 +74,7 @@ struct ixgbe_ipsec {
 
 struct sa_mbx_msg {
 	__be32 spi;
-	u8 flags;
+	u8 dir;
 	u8 proto;
 	u16 family;
 	__be32 addr[4];
diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index e763cee0695e..9984ebc62d78 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -25,7 +25,7 @@ static int ixgbevf_ipsec_set_pf_sa(struct ixgbevf_adapter *adapter,
 
 	/* send the important bits to the PF */
 	sam = (struct sa_mbx_msg *)(&msgbuf[1]);
-	sam->flags = xs->xso.flags;
+	sam->dir = xs->xso.dir;
 	sam->spi = xs->id.spi;
 	sam->proto = xs->id.proto;
 	sam->family = xs->props.family;
@@ -280,7 +280,7 @@ static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
-	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
+	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		struct rx_sa rsa;
 
 		if (xs->calg) {
@@ -394,7 +394,7 @@ static void ixgbevf_ipsec_del_sa(struct xfrm_state *xs)
 	adapter = netdev_priv(dev);
 	ipsec = adapter->ipsec;
 
-	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
+	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		sa_idx = xs->xso.offload_handle - IXGBE_IPSEC_BASE_RX_INDEX;
 
 		if (!ipsec->rx_tbl[sa_idx].used) {
diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.h b/drivers/net/ethernet/intel/ixgbevf/ipsec.h
index 3740725041c3..d22990165353 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.h
@@ -57,7 +57,7 @@ struct ixgbevf_ipsec {
 
 struct sa_mbx_msg {
 	__be32 spi;
-	u8 flags;
+	u8 dir;
 	u8 proto;
 	u16 family;
 	__be32 addr[4];
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
