Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAF451BCCA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DA3541769;
	Thu,  5 May 2022 10:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KhJv_Gb2IkYv; Thu,  5 May 2022 10:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66CFB400A9;
	Thu,  5 May 2022 10:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A70CF1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94E2240BFB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9JjPpLDakOsS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23546400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 605EA618BC;
 Thu,  5 May 2022 10:07:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11519C385A8;
 Thu,  5 May 2022 10:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745232;
 bh=e9FAmk5rPtyujnROXuLAD4ayXWHGQx5TxuduF8TZVDk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NNqF4weMRzGSyI1KR8N8K2qtzTci38rlhkdS/YEFwF5XHBsxsfzhUTcsZuqid0+UB
 njGE1faeeGvdDcS33Qo25NlQj31p1VdSqKoOmSI6Vda9PXXDRxAM8frTAZpJjF1bEx
 OfRZyxsb9gihNJbLFeTCxzpBtLADZcx2AqIjGZJyO9V/+s34duvWX/oSAOJscahtDK
 nRQt+yh1xmMAnqk+sDV41JRcuuKC9yMMYgmW3TeDmWTb6BBAga1fZ3Yzby4xITj5bY
 sFlfEI2ZVZvG4duJQWqjY05T6bUvAzMM4/M3kVaWTBqYEdZVUfWqLI/tRNJc/gaPCv
 vcq98L3Iq6umg==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:43 +0300
Message-Id: <54be8183fb49a5486a8137627c204f00595e21af.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 6/8] netdevsim: rely on XFRM
 state direction instead of flags
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

Make sure that netdevsim relies on direction and not on flags.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/net/netdevsim/ipsec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/netdevsim/ipsec.c b/drivers/net/netdevsim/ipsec.c
index b80ed2ffd45e..386336a38f34 100644
--- a/drivers/net/netdevsim/ipsec.c
+++ b/drivers/net/netdevsim/ipsec.c
@@ -171,7 +171,7 @@ static int nsim_ipsec_add_sa(struct xfrm_state *xs)
 		return ret;
 	}
 
-	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
+	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		sa.rx = true;
 
 		if (xs->props.family == AF_INET6)
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
