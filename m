Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C8333F397
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 15:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 216A482E94;
	Wed, 17 Mar 2021 14:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jr8JdBvdW7zK; Wed, 17 Mar 2021 14:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 181E782E15;
	Wed, 17 Mar 2021 14:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAE1F1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D688F414F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJvql_vYdtUv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 14:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C74A742FA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 14:44:15 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4F0tCs1gLFz19GZ3;
 Wed, 17 Mar 2021 22:42:17 +0800 (CST)
Received: from localhost.localdomain (10.175.102.38) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.498.0; Wed, 17 Mar 2021 22:43:59 +0800
From: 'w00385741 <weiyongjun1@huawei.com>
To: <weiyongjun1@huawei.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Chen Yu <yu.c.chen@intel.com>
Date: Wed, 17 Mar 2021 14:52:34 +0000
Message-ID: <20210317145234.3171021-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] e1000e: Mark e1000e_pm_prepare()
 as __maybe_unused
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wei Yongjun <weiyongjun1@huawei.com>

The function e1000e_pm_prepare() may have no callers depending
on configuration, so it must be marked __maybe_unused to avoid
harmless warning:

drivers/net/ethernet/intel/e1000e/netdev.c:6926:12:
 warning: 'e1000e_pm_prepare' defined but not used [-Wunused-function]
 6926 | static int e1000e_pm_prepare(struct device *dev)
      |            ^~~~~~~~~~~~~~~~~

Fixes: ccf8b940e5fd ("e1000e: Leverage direct_complete to speed up s2ram")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f1c9debd9f3b..d2e4653536c5 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6923,7 +6923,7 @@ static int __e1000_resume(struct pci_dev *pdev)
 	return 0;
 }
 
-static int e1000e_pm_prepare(struct device *dev)
+static __maybe_unused int e1000e_pm_prepare(struct device *dev)
 {
 	return pm_runtime_suspended(dev) &&
 		pm_suspend_via_firmware();

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
