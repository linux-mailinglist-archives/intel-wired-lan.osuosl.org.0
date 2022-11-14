Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008026284AA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:09:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55FF140A8D;
	Mon, 14 Nov 2022 16:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55FF140A8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668442150;
	bh=YPr400I+DJ9+Bs6QIQEeW5Wy67qAgrDTmdUdTA8yO7A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tfzx6k9wVf6m/3RobMrSbhZFIaoGC20Vx26j8R71dEMZrHrd0IJxmTJ9/+hYNfuM0
	 hd59Yy7LZ5CCCb458ntl+VLHiaFs17pGd2WBsqmoYDrNTs+M/wdB+qVEd5saVkRiC5
	 ztphRCdmhCTwSSO6kL8AT28LKMWJ+SviZl+x6pSPqObUii+Uq41Xp4i8mk5gnxZgXl
	 cVIS6lBq2Spz/0EWbEG7O0KNr7H8EptQXx3MEr88O2G7T+5xveAdCCdi261tlklzPs
	 ukcbSb+u9bhVUEYvkfJmZWcw4XUdzs2tBRay8kGbL9MhXq8Eknx4OoRSm43rH3TrU5
	 XkQ6156wYZT1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JS0_kDpQKgK; Mon, 14 Nov 2022 16:09:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 619A8400D0;
	Mon, 14 Nov 2022 16:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 619A8400D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1D4E1BF267
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 02:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BF3A81285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 02:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BF3A81285
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LE9jO4kPXIjg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 02:59:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E66368126A
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E66368126A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 02:59:32 +0000 (UTC)
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.55])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4N9YtP29rJz15MZw;
 Mon, 14 Nov 2022 10:59:09 +0800 (CST)
Received: from huawei.com (10.175.100.227) by kwepemi500016.china.huawei.com
 (7.221.188.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 14 Nov
 2022 10:59:26 +0800
From: Shang XiaoJing <shangxiaojing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <jeffrey.t.kirsher@intel.com>,
 <mark.d.rustad@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
Date: Mon, 14 Nov 2022 10:57:58 +0800
Message-ID: <20221114025758.9427-1-shangxiaojing@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.100.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Nov 2022 16:09:00 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbevf: Fix resource leak in
 ixgbevf_init_module()
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
Cc: shangxiaojing@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ixgbevf_init_module() won't destroy the workqueue created by
create_singlethread_workqueue() when pci_register_driver() failed. Add
destroy_workqueue() in fail path to prevent the resource leak.

Similar to the handling of u132_hcd_init in commit f276e002793c
("usb: u132-hcd: fix resource leak")

Fixes: 40a13e2493c9 ("ixgbevf: Use a private workqueue to avoid certain possible hangs")
Signed-off-by: Shang XiaoJing <shangxiaojing@huawei.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 99933e89717a..e338fa572793 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4869,6 +4869,8 @@ static struct pci_driver ixgbevf_driver = {
  **/
 static int __init ixgbevf_init_module(void)
 {
+	int err;
+
 	pr_info("%s\n", ixgbevf_driver_string);
 	pr_info("%s\n", ixgbevf_copyright);
 	ixgbevf_wq = create_singlethread_workqueue(ixgbevf_driver_name);
@@ -4877,7 +4879,13 @@ static int __init ixgbevf_init_module(void)
 		return -ENOMEM;
 	}
 
-	return pci_register_driver(&ixgbevf_driver);
+	err = pci_register_driver(&ixgbevf_driver);
+	if (err) {
+		destroy_workqueue(ixgbevf_wq);
+		return err;
+	}
+
+	return 0;
 }
 
 module_init(ixgbevf_init_module);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
