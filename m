Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13367771CF1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 11:15:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEAE54012F;
	Mon,  7 Aug 2023 09:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEAE54012F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691399709;
	bh=CHM3sEkEOJPrmgQKS59bTJfx23g9gYqnTfsfHpT3+pw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NMvAjOGQWk5CAiaHy+vvAow+FEAnBRkjqyFWxm31KQH6kT6zam74m5Dz1+ez4Goku
	 aIoJyds1Gj/A/98gHLG2MEQtgUjLzvES42A8bc1ClhIWWY73YWzjR6ivAAKsTPFjo9
	 +Zj9bvXBypi2++9pyNswRtLT3fzh7eN1XuteftfzGJjPAM1SUEoupAsP42cxj6rFfP
	 6XCUAh9JYu8B/f0drfpDcon9Txv1ABRTQygVS+2AA4xv3rK0NUu0Sgb0nkUtQz1yig
	 sS5Cfrrchw5SWLD3dsMxH58Grryxf414PX4/8HZhmoLZMwXd26TrmUwIMbF4DAxfc5
	 rw6j4Ex9QOvlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOBM0lz_YIOp; Mon,  7 Aug 2023 09:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DC1A403E9;
	Mon,  7 Aug 2023 09:15:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DC1A403E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BCF41BF969
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9092C81492
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9092C81492
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pl6uQ56jKR_m for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 09:14:45 +0000 (UTC)
Received: from sgoci-sdnproxy-4.icoremail.net (sgoci-sdnproxy-4.icoremail.net
 [129.150.39.64])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05ACE80C1B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:14:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05ACE80C1B
Received: from localhost.localdomain (unknown [115.206.160.170])
 by mail-app2 (Coremail) with SMTP id by_KCgCXDxvXtdBkKGQpCw--.25311S4;
 Mon, 07 Aug 2023 17:14:00 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: michael.chan@broadcom.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, saeedm@nvidia.com,
 leon@kernel.org, simon.horman@corigine.com, louis.peens@corigine.com,
 yinjun.zhang@corigine.com, huanhuan.wang@corigine.com, tglx@linutronix.de,
 na.wang@corigine.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com
Date: Mon,  7 Aug 2023 17:13:47 +0800
Message-Id: <20230807091347.3804523-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: by_KCgCXDxvXtdBkKGQpCw--.25311S4
X-Coremail-Antispam: 1UD129KBjvJXoWxZw1DXF1xXw4xWrW3Gw17Wrg_yoWrGFyDpa
 1UJa4xZ3yvqr15Xan7Ja18ZF9Yqay7t398uF4Sya1rZw1vvFyDCr4DKF9I9ryUArWUGF13
 tr4UAF13Aas8X3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvG14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4U
 JVW0owA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
 n2kIc2xKxwCY02Avz4vE14v_GFWl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr
 0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY
 17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcV
 C0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
 6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa
 73UjIFyTuYvjfUeF4EDUUUU
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
Subject: [Intel-wired-lan] [PATCH net-next v2] rtnetlink: remove redundant
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

The commit d73ef2d69c0d ("rtnetlink: let rtnl_bridge_setlink checks
IFLA_BRIDGE_MODE length") added the nla_len check in rtnl_bridge_setlink,
which is the only caller for ndo_bridge_setlink handlers defined in
low-level driver codes. Hence, this patch cleanups the redundant checks in
each ndo_bridge_setlink handler function.

Suggested-by: Hangbin Liu <liuhangbin@gmail.com>
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
V1->V2: delete the link to last commit as it already in tree

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
