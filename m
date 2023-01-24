Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3AC679775
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:16:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CC6C61097;
	Tue, 24 Jan 2023 12:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CC6C61097
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562569;
	bh=GFiox6HhpSqqbMMQVoFwc9dGTxMt3beTiy6hQKg6XGs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=64i7JApwT2Z1T0NgvgcZgJyWCdf8TXuAqj7zPCFLB4fP3xApel8xaEwBjdht1CLcE
	 cHQhLshJEYOOv+ewwYJxRWcmeEePe5HB9TSo3HIHkFYdqbQcISUU5wSq5IU2PThXt+
	 WYCS7FRwl8olzgE/goz0Gsdd1umVpyqLMujttMTfeteH3pPXKFv75kDwuK+ukKoUgA
	 KTnsrh+jFQoUyXh/iI7kS3qyQIJ1neLu5JdPCj8mvLrZUSJzd09gNkCpY697fw99rV
	 ENwQwToAfx8Q71aSNlvr3pypFxCUxngxQ+RH8/VLasStu+oxyJo5+xVEnBMllfQFgi
	 R4bKpPPadEddQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HqC4zpJnQP9I; Tue, 24 Jan 2023 12:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DD0760F7A;
	Tue, 24 Jan 2023 12:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DD0760F7A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 220151BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEFF860F5D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEFF860F5D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dh6YeRpRUObe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:15:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1086161070
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1086161070
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3CD2CB81199;
 Tue, 24 Jan 2023 12:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 204F8C433EF;
 Tue, 24 Jan 2023 12:15:49 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:55:06 +0200
Message-Id: <26b5ef7f0777cf1c310e21c76442ac45bdb1eb13.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674562549;
 bh=RpX7iZkdptF87mKyZHrYIriEZzQuyQXG5qUkXBzQrOg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TcaX6IdH6AEUWngjBLgqsdGFkcPrm3myExN7+YdOGmmoVWkswOcPh8ahoNshqdGeJ
 SAwpYlpg4wDb8eZUfmSa9jXKJ3KzW94kHUrKsHMQ8AzZkw7EqDYprtm2DqjEqHHId0
 TonTleYh6AgUmFbX9qa+pRt9QG2W7rfSML22OsJ0KfubrmEZW67ntAmrM5D9nzSUXr
 UXqag3rVYFL7bf6vMkYS7mG5NSivTfxoteNRY9uQ30W2vUV697fdvUbPuPieeOL0ag
 30Ameqoi39DCpbk6RZX/QIP0GHJfW7bhN36lXz5bF0CLr8rBk/O3h0Le4T+wxlkbes
 ALHW73dpLXTJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TcaX6IdH
Subject: [Intel-wired-lan] [PATCH net-next v1 10/10] cxgb4: fill IPsec state
 validation failure reason
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Rely on extack to return failure reason.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   |  3 +-
 .../inline_crypto/ch_ipsec/chcr_ipsec.c       | 28 +++++++++----------
 2 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
index 6c0a41f3ae44..7db2403c4c9c 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c
@@ -6497,8 +6497,7 @@ static int cxgb4_xfrm_add_state(struct xfrm_state *x,
 	int ret;
 
 	if (!mutex_trylock(&uld_mutex)) {
-		dev_dbg(adap->pdev_dev,
-			"crypto uld critical resource is under use\n");
+		NL_SET_ERR_MSG_MOD(extack, "crypto uld critical resource is under use");
 		return -EBUSY;
 	}
 	ret = chcr_offload_state(adap, CXGB4_XFRMDEV_OPS);
diff --git a/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c b/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
index ac2ea6206af1..3731c93f8f95 100644
--- a/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
+++ b/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
@@ -234,59 +234,59 @@ static int ch_ipsec_xfrm_add_state(struct xfrm_state *x,
 	int res = 0;
 
 	if (x->props.aalgo != SADB_AALG_NONE) {
-		pr_debug("Cannot offload authenticated xfrm states\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload authenticated xfrm states");
 		return -EINVAL;
 	}
 	if (x->props.calgo != SADB_X_CALG_NONE) {
-		pr_debug("Cannot offload compressed xfrm states\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload compressed xfrm states");
 		return -EINVAL;
 	}
 	if (x->props.family != AF_INET &&
 	    x->props.family != AF_INET6) {
-		pr_debug("Only IPv4/6 xfrm state offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Only IPv4/6 xfrm state offloaded");
 		return -EINVAL;
 	}
 	if (x->props.mode != XFRM_MODE_TRANSPORT &&
 	    x->props.mode != XFRM_MODE_TUNNEL) {
-		pr_debug("Only transport and tunnel xfrm offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Only transport and tunnel xfrm offload");
 		return -EINVAL;
 	}
 	if (x->id.proto != IPPROTO_ESP) {
-		pr_debug("Only ESP xfrm state offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Only ESP xfrm state offloaded");
 		return -EINVAL;
 	}
 	if (x->encap) {
-		pr_debug("Encapsulated xfrm state not offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Encapsulated xfrm state not offloaded");
 		return -EINVAL;
 	}
 	if (!x->aead) {
-		pr_debug("Cannot offload xfrm states without aead\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without aead");
 		return -EINVAL;
 	}
 	if (x->aead->alg_icv_len != 128 &&
 	    x->aead->alg_icv_len != 96) {
-		pr_debug("Cannot offload xfrm states with AEAD ICV length other than 96b & 128b\n");
-	return -EINVAL;
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with AEAD ICV length other than 96b & 128b");
+		return -EINVAL;
 	}
 	if ((x->aead->alg_key_len != 128 + 32) &&
 	    (x->aead->alg_key_len != 256 + 32)) {
-		pr_debug("cannot offload xfrm states with AEAD key length other than 128/256 bit\n");
+		NL_SET_ERR_MSG_MOD(extack, "cannot offload xfrm states with AEAD key length other than 128/256 bit");
 		return -EINVAL;
 	}
 	if (x->tfcpad) {
-		pr_debug("Cannot offload xfrm states with tfc padding\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with tfc padding");
 		return -EINVAL;
 	}
 	if (!x->geniv) {
-		pr_debug("Cannot offload xfrm states without geniv\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without geniv");
 		return -EINVAL;
 	}
 	if (strcmp(x->geniv, "seqiv")) {
-		pr_debug("Cannot offload xfrm states with geniv other than seqiv\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with geniv other than seqiv");
 		return -EINVAL;
 	}
 	if (x->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
-		pr_debug("Unsupported xfrm offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported xfrm offload");
 		return -EINVAL;
 	}
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
