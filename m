Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8285E5850F9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 15:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C790783FED;
	Fri, 29 Jul 2022 13:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C790783FED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659101740;
	bh=vup4HJWdsZfdZjolW5974WjTbmuKbKXRnC+sLbMDSh8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kEFpBTbifiS6i0uO8R/Svvk1vQgUHz+Q0z5qfGXe0jgFEyada64Ir2BB/6J9vFn2w
	 2QtbucOTLNJBlC18LHU7HGrSwzhG5hLBEo+JN5iu10gOhqoJbfwBufA6adJeVM9di3
	 IgBGV9iOf853E6KYYVZ6L8Vv607mhj2Ajp3b3SRzG6FBst0tgrdSqoYUrKUdoyND5Z
	 FqN27zzaIwQut1PZt6BI6v5h45G26U+4c/cJyUkTSYYuOxdmfZy9h4OW76I9SPnBir
	 Kg2d88frcbR0HBLkPmz1Rq/KVMu8Ja5tVZfkCXrNnuoZwox4QiGbJUEqKHXc4QesFk
	 mdZDZq6GTql4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-q6dPCS46F3; Fri, 29 Jul 2022 13:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCD7983FAE;
	Fri, 29 Jul 2022 13:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD7983FAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60C7F1BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 10:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A39341725
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 10:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A39341725
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTjMk97HB3La for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 10:25:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 427504170A
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 427504170A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 10:25:01 +0000 (UTC)
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.56])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4LvNp744mJzWg1n;
 Fri, 29 Jul 2022 18:21:03 +0800 (CST)
Received: from kwepemm600016.china.huawei.com (7.193.23.20) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 29 Jul 2022 18:24:52 +0800
Received: from localhost.localdomain (10.67.165.24) by
 kwepemm600016.china.huawei.com (7.193.23.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 29 Jul 2022 18:24:51 +0800
From: Guangbin Huang <huangguangbin2@huawei.com>
To: <davem@davemloft.net>, <kuba@kernel.org>, <edumazet@google.com>,
 <pabeni@redhat.com>, <snelson@pensando.io>, <brett@pensando.io>,
 <drivers@pensando.io>, <anthony.l.nguyen@intel.com>,
 <jesse.brandeburg@intel.com>
Date: Fri, 29 Jul 2022 18:17:55 +0800
Message-ID: <20220729101755.4798-3-huangguangbin2@huawei.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220729101755.4798-1-huangguangbin2@huawei.com>
References: <20220729101755.4798-1-huangguangbin2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm600016.china.huawei.com (7.193.23.20)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 29 Jul 2022 13:35:27 +0000
Subject: [Intel-wired-lan] [PATCH net 2/2] net: ionic: fix error check for
 vlan flags in ionic_set_nic_features()
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
Cc: huangguangbin2@huawei.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 lipeng321@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jian Shen <shenjian15@huawei.com>

The prototype of input features of ionic_set_nic_features() is
netdev_features_t, but the vlan_flags is using the private
definition of ionic drivers. It should use the variable
ctx.cmd.lif_setattr.features, rather than features to check
the vlan flags. So fixes it.

Fixes: beead698b173 ("ionic: Add the basic NDO callbacks for netdev support")

Signed-off-by: Jian Shen <shenjian15@huawei.com>
Signed-off-by: Guangbin Huang <huangguangbin2@huawei.com>
---
 drivers/net/ethernet/pensando/ionic/ionic_lif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_lif.c b/drivers/net/ethernet/pensando/ionic/ionic_lif.c
index f3568901eb91..1443f788ee37 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_lif.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_lif.c
@@ -1437,7 +1437,7 @@ static int ionic_set_nic_features(struct ionic_lif *lif,
 	if ((old_hw_features ^ lif->hw_features) & IONIC_ETH_HW_RX_HASH)
 		ionic_lif_rss_config(lif, lif->rss_types, NULL, NULL);
 
-	if ((vlan_flags & features) &&
+	if ((vlan_flags & le64_to_cpu(ctx.cmd.lif_setattr.features)) &&
 	    !(vlan_flags & le64_to_cpu(ctx.comp.lif_setattr.features)))
 		dev_info_once(lif->ionic->dev, "NIC is not supporting vlan offload, likely in SmartNIC mode\n");
 
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
