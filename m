Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934C9762F27
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 10:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3558641C2F;
	Wed, 26 Jul 2023 08:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3558641C2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690358784;
	bh=gCwJACxIqGSVMTpLax9zZynH2fvHZBoUvD/dhzv6u+c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IerqBcdbl04uGxNIRH/relAePBrZNKB27EzsFXzTlHidVsKzmxhHpydisO8m0dIoF
	 XTjqFTmRLpPPXG2PRAZW2pY0sVDIcbtPntYTF72A/mKxO/GSfcP6Zj/Ukos3HN3uad
	 SicTZ5hvT4w3UUmXbAJCJt3w39QQtBoULLZeV2Q0TClH93UjwP0Wzwd5GNz9EYdK3H
	 6HUKJANU5eC1BITfU2enwR/MtRMfrNNz/Qu3zqqU6iexmec2gf09kbCPNREJnAjryt
	 i7EqsHa06pQsHpLU8ZzvyruglyE7e2rGcvDTZvl637Kw45qJdFnjmpRnJPeKPfb9ig
	 EEsyDGJHedkow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7YPrbSHpF-m; Wed, 26 Jul 2023 08:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E62FC404F8;
	Wed, 26 Jul 2023 08:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E62FC404F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07DA01BF344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 08:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3B9D60838
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 08:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3B9D60838
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8QssXSAuLU4u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 08:06:15 +0000 (UTC)
Received: from sgoci-sdnproxy-4.icoremail.net (sgoci-sdnproxy-4.icoremail.net
 [129.150.39.64])
 by smtp3.osuosl.org (Postfix) with ESMTP id 883A6607F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 08:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 883A6607F5
Received: from localhost.localdomain (unknown [183.128.133.253])
 by mail-app2 (Coremail) with SMTP id by_KCgCXDxvL08BkJ3uYCg--.38134S4;
 Wed, 26 Jul 2023 16:05:32 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: michael.chan@broadcom.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, saeedm@nvidia.com,
 leon@kernel.org, simon.horman@corigine.com, louis.peens@corigine.com,
 yinjun.zhang@corigine.com, huanhuan.wang@corigine.com, tglx@linutronix.de,
 bigeasy@linutronix.de, na.wang@corigine.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com
Date: Wed, 26 Jul 2023 16:05:22 +0800
Message-Id: <20230726080522.1064569-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: by_KCgCXDxvL08BkJ3uYCg--.38134S4
X-Coremail-Antispam: 1UD129KBjvJXoWxZw1DXF1xXw4xWrW3Gw17Wrg_yoWrGFWxpa
 1UJa4xZ3yvqr45Xan7Ja18ZF9Yqay7t34DuF4Syw4rZ3WvvFyDCr4qgF9I9ryUArWUGF13
 tr4UAF13Aas8X3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkE14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
 JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
 n2kIc2xKxwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F4
 0E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_Wryl
 IxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxV
 AFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j
 6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUd8n
 5UUUUU=
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
Subject: [Intel-wired-lan] [PATCH net-next v1] rtnetlink: remove redundant
 checks for nlattr IFLA_BRIDGE_MODE
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
Cc: Lin Ma <linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The previous patch added the nla_len check in rtnl_bridge_setlink, which
is the only caller for ndo_bridge_setlink handlers defined in low-level
driver codes. Hence, this patch cleanups the redundant checks in each
ndo_bridge_setlink handler function.

Please apply the fix discussed at the link:
https://lore.kernel.org/all/20230726075314.1059224-1-linma@zju.edu.cn/
first before this one.

Suggested-by: Hangbin Liu <liuhangbin@gmail.com>
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/net/ethernet/broadcom/bnxt/bnxt.c           | 3 ---
 drivers/net/ethernet/emulex/benet/be_main.c         | 3 ---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c       | 3 ---
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c   | 3 ---
 drivers/net/ethernet/netronome/nfp/nfp_net_common.c | 3 ---
 5 files changed, 15 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index e5b54e6025be..9e098c1cf1ab 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -13101,9 +13101,6 @@ static int bnxt_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		if (nla_type(attr) != IFLA_BRIDGE_MODE)
 			continue;
 
-		if (nla_len(attr) < sizeof(mode))
-			return -EINVAL;
-
 		mode = nla_get_u16(attr);
 		if (mode == bp->br_mode)
 			break;
diff --git a/drivers/net/ethernet/emulex/benet/be_main.c b/drivers/net/ethernet/emulex/benet/be_main.c
index 18c2fc880d09..e8abc43a7061 100644
--- a/drivers/net/ethernet/emulex/benet/be_main.c
+++ b/drivers/net/ethernet/emulex/benet/be_main.c
@@ -4985,9 +4985,6 @@ static int be_ndo_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		if (nla_type(attr) != IFLA_BRIDGE_MODE)
 			continue;
 
-		if (nla_len(attr) < sizeof(mode))
-			return -EINVAL;
-
 		mode = nla_get_u16(attr);
 		if (BE3_chip(adapter) && mode == BRIDGE_MODE_VEPA)
 			return -EOPNOTSUPP;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1726297f2e0d..d1381b1b3f3a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10042,9 +10042,6 @@ static int ixgbe_ndo_bridge_setlink(struct net_device *dev,
 		if (nla_type(attr) != IFLA_BRIDGE_MODE)
 			continue;
 
-		if (nla_len(attr) < sizeof(mode))
-			return -EINVAL;
-
 		mode = nla_get_u16(attr);
 		status = ixgbe_configure_bridge_mode(adapter, mode);
 		if (status)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index defb1efccb78..b2df8e517a85 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -4883,9 +4883,6 @@ static int mlx5e_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		if (nla_type(attr) != IFLA_BRIDGE_MODE)
 			continue;
 
-		if (nla_len(attr) < sizeof(mode))
-			return -EINVAL;
-
 		mode = nla_get_u16(attr);
 		if (mode > BRIDGE_MODE_VEPA)
 			return -EINVAL;
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
index 6b1fb5708434..85f36ec2f986 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
@@ -2068,9 +2068,6 @@ static int nfp_net_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		if (nla_type(attr) != IFLA_BRIDGE_MODE)
 			continue;
 
-		if (nla_len(attr) < sizeof(mode))
-			return -EINVAL;
-
 		new_ctrl = nn->dp.ctrl;
 		mode = nla_get_u16(attr);
 		if (mode == BRIDGE_MODE_VEPA)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
