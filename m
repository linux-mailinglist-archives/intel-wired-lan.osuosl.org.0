Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6976B677D7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:02:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBC1141734;
	Mon, 23 Jan 2023 14:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBC1141734
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482536;
	bh=jLdCtyIKdoEhNaDxyxMeLnaLtex1NBGMBd3whY4JKfo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5cCG7yzply3L3Bnetei3J156tJStWF7UJGSOEgbCfMYg4qWRJY7cSkOKzppPNX1lV
	 wCPXfLO6+gByOd8ixbhrJ3Wz7Qs6mM0+HkxG6EbRHwosRKs4p+qeT3bSm1oOqQd7gj
	 VqSfrcH7vb7Mz/5x3WC5Kmbju4Afs3h0C8WDaIryDp6xxb0DnlusAA41i9LuO8jn9C
	 6Aaa7aJUbyW9jwwjbgTfZ+WEjOsU1zjh5dYHLk93RiaNSeHE2EA1h52ilS3yjQcTUC
	 L6EHhRyhPTSZ+xH3P5HJuLbS669BStp7YBXZIFChMj+7SYl0QPAfzfQ+EVOM1Wom9x
	 +smEHTEXjZWkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fMt-7jY6JiL; Mon, 23 Jan 2023 14:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62A6141728;
	Mon, 23 Jan 2023 14:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62A6141728
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 145741BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3418405B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:02:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3418405B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id skijDVnI4DEY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:02:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2E584037E
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2E584037E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:02:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3E747B80D54;
 Mon, 23 Jan 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1610C4339B;
 Mon, 23 Jan 2023 14:02:02 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:23 +0200
Message-Id: <9b45993fb96b6faa2b65f3dd78e677a54eeeec31.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482524;
 bh=2koP5//xkTzgsmmy1BbG7loZjicRFY5VECy1fq44Znk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sdg/4hdLhpt0u5h21aNc22vUYBxPWpOwMUqjEfjhM+OnOVc+soJhjuZT3kKxtTmay
 jHfCgDhM5NNam5YWMdhNF4DSzS091ErMxhpw8yENde+tLMp+OXcAUPxQmn7+aCFOij
 VBfUVPlKzadzzN5crJoCEpead39kBfHQ8dXoGQAiozWuR7RZfLbDsYgiPudru+9fqD
 OCXuRM/JZHDEK1Kyn0damGAfhpdqbBT8KfNHIrP9TbWbwis4EkLGTYxz/1tkmkLjAI
 9FZ9X7rGtHrPLu5MWvtdunG5xEAfVmQczv1h/HlFU9rYmTkCuSDTOmC3pWc4kF8Zvn
 iLli68aWkXFTQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sdg/4hdL
Subject: [Intel-wired-lan] [PATCH net-next 10/10] cxgb4: fill IPsec state
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
Signed-off-by: Leon Romanovsky <leon@kernel.org>
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
index ac2ea6206af1..98222b67d036 100644
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
+		NL_SET_ERR_MSG_MOD("Cannot offload xfrm states without aead");
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
