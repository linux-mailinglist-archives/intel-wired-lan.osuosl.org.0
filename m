Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987DE6284AC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:09:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 288A440A93;
	Mon, 14 Nov 2022 16:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 288A440A93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668442154;
	bh=m2Hz3Rru2oUVeePNE4QTWJjVJhzHCgFbEuZdxPQr22Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eX4h8haBojtzf0UZnJtJwDRNrqLl7T/5PkVeuYqU24v+YWTvWC/syZhwmuOuTjUGT
	 6qUGQq89fnSGHhPahnnZGPynkJWLBTHITBgi1pp0wL4x+zb/o9VO+x+JEv6/eUGz90
	 bXWnaS4ZcVLIqpWsQlExjU0L2wypKeKsw7p47rC4XaYfrrkEbU0Lbrlk3mn0hJVsA0
	 4oNa8G0PrjuV8PpOuaXH0b8/Qb+UGdsBe6cVZ4wWk6l1bt1EnQ0R//ubGK/nLhYQ9P
	 S6MtrP19ZhrPycud0aRXvYX03cbK9lLifaIr7qjF+SXTtFW/CpEsxnzL+rjPND1crn
	 VHbaK5QKyNwzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDiR2Roz5CWr; Mon, 14 Nov 2022 16:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ED61400D0;
	Mon, 14 Nov 2022 16:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3ED61400D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E5A621BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 08:28:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B58DD40209
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 08:28:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B58DD40209
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61FCWv9CVwOx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 08:28:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0233E4020A
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0233E4020A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 08:28:27 +0000 (UTC)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4N9j6k2bV8zJnl2;
 Mon, 14 Nov 2022 16:25:18 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 14 Nov
 2022 16:28:24 +0800
From: Yuan Can <yuancan@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <alexander.h.duyck@intel.com>,
 <jeffrey.t.kirsher@intel.com>, <matthew.vick@intel.com>,
 <jacob.e.keller@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
Date: Mon, 14 Nov 2022 08:26:40 +0000
Message-ID: <20221114082640.91128-3-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221114082640.91128-1-yuancan@huawei.com>
References: <20221114082640.91128-1-yuancan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Nov 2022 16:09:00 +0000
Subject: [Intel-wired-lan] [PATCH 2/2] iavf: Fix error handling in
 iavf_init_module()
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
Cc: yuancan@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The iavf_init_module() won't destroy workqueue when pci_register_driver()
failed. Call destroy_workqueue() when pci_register_driver() failed to
prevent the resource leak.

Similar to the handling of u132_hcd_init in commit f276e002793c
("usb: u132-hcd: fix resource leak")

Fixes: 2803b16c10ea ("i40e/i40evf: Use private workqueue")
Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3fc572341781..69fded35e476 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5191,6 +5191,8 @@ static struct pci_driver iavf_driver = {
  **/
 static int __init iavf_init_module(void)
 {
+	int ret;
+
 	pr_info("iavf: %s\n", iavf_driver_string);
 
 	pr_info("%s\n", iavf_copyright);
@@ -5201,7 +5203,12 @@ static int __init iavf_init_module(void)
 		pr_err("%s: Failed to create workqueue\n", iavf_driver_name);
 		return -ENOMEM;
 	}
-	return pci_register_driver(&iavf_driver);
+
+	ret = pci_register_driver(&iavf_driver);
+	if (ret)
+		destroy_workqueue(iavf_wq);
+
+	return ret;
 }
 
 module_init(iavf_init_module);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
