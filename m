Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DDC644956
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 17:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C91C1409E9;
	Tue,  6 Dec 2022 16:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C91C1409E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670344501;
	bh=l4ZUPIZKX/o9IC2Jms5EkXejirYMhnsItTgyzvU3qCs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NQct4sM5fEGuzFcdqyNsjwkxSjt7/ixDrgFht33VT9CjFNjl6TCDJRjw1LnsoYOms
	 +eC9N3uwOxlQ23mf90CMygWWxq9geeUXFXTBxdmy12skL2Y4DhsJJJ5L0DISr50z9C
	 dWMv31nXfU7zVbxp8b1mKEhORdSsGsHFJ+YRfpCootNpXPpPf/cdSh1WlqU7EaV/Eq
	 HrNSGkQfl/gM/nb3CYqyXYqeZsVcT3bTv8prvFtOXILM0v3nr4QV80S5tYXvlZC6M+
	 tir72Z0FaAAo2/oCDHqmplMLkuto7SUedv8VpZCIK9wX1fn/1gd4t4EePFyXJYggcj
	 8SQ2zmErMZspQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X3rqtzUCIPAX; Tue,  6 Dec 2022 16:35:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB81E40272;
	Tue,  6 Dec 2022 16:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB81E40272
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D44A1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 684E381E3E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 684E381E3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3f0d82y7kT5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 10:32:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3BEC81E34
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3BEC81E34
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:32:28 +0000 (UTC)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NRGtJ3zyLz15N7B;
 Tue,  6 Dec 2022 18:31:36 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 6 Dec
 2022 18:32:23 +0800
From: Yuan Can <yuancan@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <alice.michael@intel.com>, <piotr.marczak@intel.com>,
 <jeffrey.t.kirsher@intel.com>, <leon@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
Date: Tue, 6 Dec 2022 10:29:59 +0000
Message-ID: <20221206102959.20255-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 06 Dec 2022 16:34:43 +0000
Subject: [Intel-wired-lan] [PATCH net v2] intel/i40e: Fix potential memory
 leak in i40e_init_recovery_mode()
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

If i40e_vsi_mem_alloc() failed in i40e_init_recovery_mode(), the pf will be
freed with the pf->vsi leaked.
Fix by free pf->vsi in the error handling path.

Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
Signed-off-by: Yuan Can <yuancan@huawei.com>
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
---
Changes in v2:
- Add net in patch title
- Add Leon Romanovsky's reviewed by
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b5dcd15ced36..d23081c224d6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15536,6 +15536,7 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 	pci_disable_pcie_error_reporting(pf->pdev);
 	pci_release_mem_regions(pf->pdev);
 	pci_disable_device(pf->pdev);
+	kfree(pf->vsi);
 	kfree(pf);
 
 	return err;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
