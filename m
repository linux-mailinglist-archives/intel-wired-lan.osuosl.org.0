Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC1677D6E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 504C660D63;
	Mon, 23 Jan 2023 14:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 504C660D63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482507;
	bh=znTrABUqhVayLP1VH2vnjUWMPpQ7cY7uYZMC+NAfKq4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QmxK1A9gdo8ZkwkBOm50G8VCIyKJ9ACvs/gpFePVo+92ytBXV+WUbri9gQIyX5Oeb
	 Fvhp+Hq+O/yjlt3AbBQBC/bBELoK7MdXHhu/sW67V36aBG+9wfw1ItxKQ68aSEastE
	 Lzl0E8VjbhtU6xFzW7NnqyJnjJ2T+0aBcMcJNlEUkBFLGio4v7DDAq7kiyFBQ0J9Am
	 UZEd/amKfRfi6jJmnmgcAzVlIPMC6mdVEVBRN0hqhC3/j4WwsncJJNXdCiK1AhAnyi
	 ap2swSR4MpqF1/nO85ZEAM5MZCxSuV8O0qzW+QEFVTPBpYGPmNE6PXNIcoWYYPkaYw
	 S5Fh/URRYBUJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7DuZGUSOKqzq; Mon, 23 Jan 2023 14:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A61E60D60;
	Mon, 23 Jan 2023 14:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A61E60D60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B860F1BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F4FA60D60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F4FA60D60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_a9s9J1Pk5l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:01:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BA9A60C2A
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BA9A60C2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1D54CB80DC8;
 Mon, 23 Jan 2023 14:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DD44C4339C;
 Mon, 23 Jan 2023 14:01:36 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:19 +0200
Message-Id: <99049389f2f4fb967aac8026bd05f36ea13c47aa.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482497;
 bh=DBYcIWY60q9CurOEnrPGxtgdkbVvQor19el58hS6cKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WhLTvFGGD8yu7GbgsUaK8kPYBu1LUt70+ytVZRZkLgOjGFrWPMQxo7mIjzGR6tthr
 xzhFgDg/26+NeroedZHzIRzoz9mYeOl0+x1QgS0A+T09FU985NAXuS31k+e8RJ7oMv
 mi4EQD9I0KaLM0teewQTwxbwgJzv/ygOrZDYaaUfUOpvYS25Jr/F8gN31du4Z5h7wf
 +1YcS9qSJ4HuOTx2AcLHZyVQR+fuAcQGXaCcD/fkFc/DMICWmmedIUnehmhXR6P1aP
 6KXsPrGRfVYtZdZE4LdZHKYNkM3/VZCFcIEbjozbfpAphhX61WgvnqnIfeLH0iEcY4
 xt1x7aYu6vdlQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WhLTvFGG
Subject: [Intel-wired-lan] [PATCH net-next 06/10] nfp: fill IPsec state
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
 .../net/ethernet/netronome/nfp/crypto/ipsec.c | 38 +++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c b/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c
index 41b98f2b7402..7af41cbc8c0b 100644
--- a/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c
+++ b/drivers/net/ethernet/netronome/nfp/crypto/ipsec.c
@@ -282,7 +282,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		cfg->ctrl_word.mode = NFP_IPSEC_PROTMODE_TRANSPORT;
 		break;
 	default:
-		nn_err(nn, "Unsupported mode for xfrm offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported mode for xfrm offload");
 		return -EINVAL;
 	}
 
@@ -294,17 +294,17 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		cfg->ctrl_word.proto = NFP_IPSEC_PROTOCOL_AH;
 		break;
 	default:
-		nn_err(nn, "Unsupported protocol for xfrm offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported protocol for xfrm offload");
 		return -EINVAL;
 	}
 
 	if (x->props.flags & XFRM_STATE_ESN) {
-		nn_err(nn, "Unsupported XFRM_REPLAY_MODE_ESN for xfrm offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported XFRM_REPLAY_MODE_ESN for xfrm offload");
 		return -EINVAL;
 	}
 
 	if (x->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
-		nn_err(nn, "Unsupported xfrm offload tyoe\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported xfrm offload tyoe");
 		return -EINVAL;
 	}
 
@@ -321,7 +321,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		if (x->aead) {
 			trunc_len = -1;
 		} else {
-			nn_err(nn, "Unsupported authentication algorithm\n");
+			NL_SET_ERR_MSG_MOD(extack, "Unsupported authentication algorithm");
 			return -EINVAL;
 		}
 		break;
@@ -345,19 +345,19 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		set_sha2_512hmac(cfg, &trunc_len);
 		break;
 	default:
-		nn_err(nn, "Unsupported authentication algorithm\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported authentication algorithm");
 		return -EINVAL;
 	}
 
 	if (!trunc_len) {
-		nn_err(nn, "Unsupported authentication algorithm trunc length\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported authentication algorithm trunc length");
 		return -EINVAL;
 	}
 
 	if (x->aalg) {
 		key_len = DIV_ROUND_UP(x->aalg->alg_key_len, BITS_PER_BYTE);
 		if (key_len > sizeof(cfg->auth_key)) {
-			nn_err(nn, "Insufficient space for offloaded auth key\n");
+			NL_SET_ERR_MSG_MOD(extack, "Insufficient space for offloaded auth key");
 			return -EINVAL;
 		}
 		for (i = 0; i < key_len / sizeof(cfg->auth_key[0]) ; i++)
@@ -379,12 +379,12 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 	case SADB_X_EALG_AES_GCM_ICV16:
 	case SADB_X_EALG_NULL_AES_GMAC:
 		if (!x->aead) {
-			nn_err(nn, "Invalid AES key data\n");
+			NL_SET_ERR_MSG_MOD(extack, "Invalid AES key data");
 			return -EINVAL;
 		}
 
 		if (x->aead->alg_icv_len != 128) {
-			nn_err(nn, "ICV must be 128bit with SADB_X_EALG_AES_GCM_ICV16\n");
+			NL_SET_ERR_MSG_MOD(extack, "ICV must be 128bit with SADB_X_EALG_AES_GCM_ICV16");
 			return -EINVAL;
 		}
 		cfg->ctrl_word.cimode = NFP_IPSEC_CIMODE_CTR;
@@ -392,23 +392,23 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 
 		/* Aead->alg_key_len includes 32-bit salt */
 		if (set_aes_keylen(cfg, x->props.ealgo, x->aead->alg_key_len - 32)) {
-			nn_err(nn, "Unsupported AES key length %d\n", x->aead->alg_key_len);
+			NL_SET_ERR_MSG_MOD(extack, "Unsupported AES key length");
 			return -EINVAL;
 		}
 		break;
 	case SADB_X_EALG_AESCBC:
 		cfg->ctrl_word.cimode = NFP_IPSEC_CIMODE_CBC;
 		if (!x->ealg) {
-			nn_err(nn, "Invalid AES key data\n");
+			NL_SET_ERR_MSG_MOD(extack, "Invalid AES key data");
 			return -EINVAL;
 		}
 		if (set_aes_keylen(cfg, x->props.ealgo, x->ealg->alg_key_len) < 0) {
-			nn_err(nn, "Unsupported AES key length %d\n", x->ealg->alg_key_len);
+			NL_SET_ERR_MSG_MOD(extack, "Unsupported AES key length");
 			return -EINVAL;
 		}
 		break;
 	default:
-		nn_err(nn, "Unsupported encryption algorithm for offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported encryption algorithm for offload");
 		return -EINVAL;
 	}
 
@@ -419,7 +419,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		key_len -= salt_len;
 
 		if (key_len > sizeof(cfg->ciph_key)) {
-			nn_err(nn, "aead: Insufficient space for offloaded key\n");
+			NL_SET_ERR_MSG_MOD(extack, "aead: Insufficient space for offloaded key");
 			return -EINVAL;
 		}
 
@@ -435,7 +435,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		key_len = DIV_ROUND_UP(x->ealg->alg_key_len, BITS_PER_BYTE);
 
 		if (key_len > sizeof(cfg->ciph_key)) {
-			nn_err(nn, "ealg: Insufficient space for offloaded key\n");
+			NL_SET_ERR_MSG_MOD(extack, "ealg: Insufficient space for offloaded key");
 			return -EINVAL;
 		}
 		for (i = 0; i < key_len / sizeof(cfg->ciph_key[0]) ; i++)
@@ -458,7 +458,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 		}
 		break;
 	default:
-		nn_err(nn, "Unsupported address family\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported address family");
 		return -EINVAL;
 	}
 
@@ -473,7 +473,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 	err = xa_alloc(&nn->xa_ipsec, &saidx, x,
 		       XA_LIMIT(0, NFP_NET_IPSEC_MAX_SA_CNT - 1), GFP_KERNEL);
 	if (err < 0) {
-		nn_err(nn, "Unable to get sa_data number for IPsec\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unable to get sa_data number for IPsec");
 		return err;
 	}
 
@@ -481,7 +481,7 @@ static int nfp_net_xfrm_add_state(struct xfrm_state *x,
 	err = nfp_ipsec_cfg_cmd_issue(nn, NFP_IPSEC_CFG_MSSG_ADD_SA, saidx, &msg);
 	if (err) {
 		xa_erase(&nn->xa_ipsec, saidx);
-		nn_err(nn, "Failed to issue IPsec command err ret=%d\n", err);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to issue IPsec command");
 		return err;
 	}
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
