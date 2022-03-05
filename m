Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2226C4D01BC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 15:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0A1960B50;
	Mon,  7 Mar 2022 14:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvYorWlF5IO3; Mon,  7 Mar 2022 14:46:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D86360B3B;
	Mon,  7 Mar 2022 14:46:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4E811BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Mar 2022 08:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABCC3400C9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Mar 2022 08:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qSCo3hMLkuU5 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Mar 2022 08:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7593440022
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Mar 2022 08:54:38 +0000 (UTC)
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4K9dhG5jcSzbbwp;
 Sat,  5 Mar 2022 16:49:50 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sat, 5 Mar 2022 16:54:34 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Sat, 5 Mar
 2022 16:54:34 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
Date: Sat, 5 Mar 2022 17:04:30 +0800
Message-ID: <20220305090430.3078757-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 07 Mar 2022 14:46:51 +0000
Subject: [Intel-wired-lan] [PATCH -next] ice: fix return value check in
 ice_gnss.c
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
Cc: netdev@vger.kernel.org, karol.kolacinski@intel.com, davem@davemloft.net,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

kthread_create_worker() and tty_alloc_driver() return ERR_PTR()
and never return NULL. The NULL test in the return value check
should be replaced with IS_ERR().

Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 755e1580f368..35579cf4283f 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -125,7 +125,7 @@ static struct gnss_serial *ice_gnss_struct_init(struct ice_pf *pf)
 	 * writes.
 	 */
 	kworker = kthread_create_worker(0, "ice-gnss-%s", dev_name(dev));
-	if (!kworker) {
+	if (IS_ERR(kworker)) {
 		kfree(gnss);
 		return NULL;
 	}
@@ -253,7 +253,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
 	int err;
 
 	tty_driver = tty_alloc_driver(1, TTY_DRIVER_REAL_RAW);
-	if (!tty_driver) {
+	if (IS_ERR(tty_driver)) {
 		dev_err(ice_pf_to_dev(pf), "Failed to allocate memory for GNSS TTY\n");
 		return NULL;
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
