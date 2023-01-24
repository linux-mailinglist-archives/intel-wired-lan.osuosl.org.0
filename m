Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 330F0679777
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:16:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C65DC61098;
	Tue, 24 Jan 2023 12:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C65DC61098
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562573;
	bh=ONCFgWiApQ/RP/0KB6kx7kdQozP1OYp9TH95kTLTM54=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qavWIp1FPgehbzygUWCusIpyvb4MQBm1r79iJT8WCqA8xHw1gUxiD4VYEkaEwOhET
	 ozYrU8qLr5IoKpU/5m4Gu4/rG4KXECtIuDsdGR0ULv1Xqsd0r1jiZ7fqRZUtF+i3Wn
	 RUxlawhWJ3xlJpk1OGfvdB8O79NYA6nBWrd+RnELq9LgJBHPGsdRt0qjSySvFp7puo
	 y80jcY7oKIqCk+fJ32+kqIr4B8+ubKjowCmMVNSXLug+fjIwwPTIwWsBYzzCJk0PyF
	 P1Zqb2sR1mVhlYeYFH/7pfB18wqhkPvlwU2UAf+iTK8y7gNNYTorCTyL0NX+PSfkU6
	 1VTwL+l4RKTwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 14E2VmIYjgnI; Tue, 24 Jan 2023 12:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB98861048;
	Tue, 24 Jan 2023 12:16:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB98861048
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A12A31BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8796E81FA2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8796E81FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5CZIT8IrY3c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 071D081F74
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 071D081F74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6420661156;
 Tue, 24 Jan 2023 12:15:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0969CC433D2;
 Tue, 24 Jan 2023 12:15:53 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:55:05 +0200
Message-Id: <f20afc9cb9606d73584281cff772ccdbc499c3d9.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674562553;
 bh=01/fw80+h5CCKaaSUFROeNFVFiv5pBtbjx/3iSu09s0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aQlnZt4wtAsXCw/ez8ojt/JSdcbHHvVxNgXy2J3ZWWHl43FgLHoBLJz6IZ5jBjNxn
 ziWDvgZGe6KqhtKT6WLUz+T3dLTdg/28pnHrxxqjVR3zi/H9aKhiOY4bjfg6oZGg7y
 JXp+G0LV0dA1Ze31j4WtmDG1YvKiBP1qDQhh92lZuHTU5CZgJ8QmNdF3UMjYWB3OnT
 ueoVnsFF7SUFcWtPElO5YNJTBX74fydwvBaqLXJy+zWO20PxGk2ZeNgybBSBaSlWeI
 KjGNJfqLH5BtVnQm0WoWJu2ak2jI2+cQ7gCE5QboF3+ky2bRZFiTPxNgYUoGGBN1xd
 q/WyeXmTxccsw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aQlnZt4w
Subject: [Intel-wired-lan] [PATCH net-next v1 09/10] bonding: fill IPsec
 state validation failure reason
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
 drivers/net/bonding/bond_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 686b2a6fd674..00646aa315c3 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -444,7 +444,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs,
 	if (!slave->dev->xfrmdev_ops ||
 	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
 	    netif_is_bond_master(slave->dev)) {
-		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec offload\n");
+		NL_SET_ERR_MSG_MOD(extack, "Slave does not support ipsec offload");
 		rcu_read_unlock();
 		return -EINVAL;
 	}
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
