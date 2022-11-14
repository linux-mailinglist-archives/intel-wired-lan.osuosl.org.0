Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A922E6284A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:09:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 359118135B;
	Mon, 14 Nov 2022 16:09:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 359118135B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668442146;
	bh=kJW06cGA+sTD4m/+jtbnT7L8bYNx5lRgb18jM48J6es=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4/UeHQ30rR/n2BIXE+OMDdzd2GTG+HfWJQ0Ndwbm8/XCI+aIbLGo9uaqYw4WjOEXU
	 joGYVvq/4bcnb1hwwDV+11YGucZDF4rw7i1vznJPhzizV7WGIw5jqJUjYnI7lDUzcG
	 n7GgGIWtZG+Sh8uwQX2IC4+xarAogu1lXxHBHeQgYvvves/khzqQUQ2CfztiNtOIGi
	 qL33KP2vhIGZpvYKGPUSV3GVe+tP0glSF+fG8N0+X802OYfgBAKnDMlZrfLLice33D
	 QRBhSzrGIFotQsKGtZXN+oQ9bVGPDlq0us2x32sn3+Ke+aiFzg8fypGANg6B4lxd7w
	 pYo/+1BuT8QzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33xPLm3xkpYX; Mon, 14 Nov 2022 16:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2180881334;
	Mon, 14 Nov 2022 16:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2180881334
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 578E51BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 01:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28AB9405BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 01:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28AB9405BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ee8SR_MvzfsN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 01:12:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B780401A1
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B780401A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 01:12:27 +0000 (UTC)
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.55])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4N9WVs0HBBzRpCt;
 Mon, 14 Nov 2022 09:12:05 +0800 (CST)
Received: from huawei.com (10.175.100.227) by kwepemi500016.china.huawei.com
 (7.221.188.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 14 Nov
 2022 09:11:50 +0800
From: Shang XiaoJing <shangxiaojing@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <jeffrey.t.kirsher@intel.com>,
 <shannon.nelson@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
Date: Mon, 14 Nov 2022 09:10:22 +0800
Message-ID: <20221114011022.25127-1-shangxiaojing@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.100.227]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Nov 2022 16:09:00 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Fix error handling in
 i40e_init_module()
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

i40e_init_module() won't free the debugfs directory created by
i40e_dbg_init() when pci_register_driver() failed. Add fail path to
call i40e_dbg_exit() to remove the debugfs entries to prevent the bug.

i40e: Intel(R) Ethernet Connection XL710 Network Driver
i40e: Copyright (c) 2013 - 2019 Intel Corporation.
debugfs: Directory 'i40e' with parent '/' already present!

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Shang XiaoJing <shangxiaojing@huawei.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b5dcd15ced36..828669ea946e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16644,6 +16644,8 @@ static struct pci_driver i40e_driver = {
  **/
 static int __init i40e_init_module(void)
 {
+	int err;
+
 	pr_info("%s: %s\n", i40e_driver_name, i40e_driver_string);
 	pr_info("%s: %s\n", i40e_driver_name, i40e_copyright);
 
@@ -16661,7 +16663,13 @@ static int __init i40e_init_module(void)
 	}
 
 	i40e_dbg_init();
-	return pci_register_driver(&i40e_driver);
+	err = pci_register_driver(&i40e_driver);
+	if (err) {
+		i40e_dbg_exit();
+		return err;
+	}
+
+	return 0;
 }
 module_init(i40e_init_module);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
