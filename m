Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7F3644959
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 17:35:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB16461038;
	Tue,  6 Dec 2022 16:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB16461038
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670344509;
	bh=JF1S49P1FNXDOZlkLCp2RcNXs2o7irGmq7BdXsy5syA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ITvN03lwwbRPccd0I6b++6yI/oLMDsGTJSTi29xLtmkYCRCzMGJai3Ra0MEbpDk7H
	 E8NtiTsl89LjBkhORSRkfKvh9JwUzK9AQM1iizYnCmHdN3kDyKHo6xGFFz4hMYXCy6
	 AVoLPGH/0MtK97AgJjUKGASSiQ9WrBtDFLgbdgy6itEko91ZFS6zkWWdgF4fQW9syD
	 K2uvqCMJCQK5a5+UZ4i7c0foXIOhTNt2zvtS6Gy88aCy/w+qM0VZsSYf2GUDKMFm6e
	 XuW73dsULDTkVqMGF7scpJbIjMR0aJFQmZYQq0v7T1Iwkj+991t1HlR5CctaYE0nkj
	 pd7hHsQcFgkuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6bQV-vgWzzfw; Tue,  6 Dec 2022 16:35:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A877F605AD;
	Tue,  6 Dec 2022 16:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A877F605AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 765ED1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 13:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51357812E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 13:44:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51357812E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kpQ-KePOA9PR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 13:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B7DC8129A
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B7DC8129A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 13:44:15 +0000 (UTC)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NRM3j75HZzqSXw;
 Tue,  6 Dec 2022 21:40:01 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 6 Dec
 2022 21:44:10 +0800
From: Yuan Can <yuancan@huawei.com>
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <alice.michael@intel.com>, <piotr.marczak@intel.com>,
 <jeffrey.t.kirsher@intel.com>, <leon@kernel.org>, <jiri@resnulli.us>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
Date: Tue, 6 Dec 2022 13:41:46 +0000
Message-ID: <20221206134146.36465-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 06 Dec 2022 16:34:43 +0000
Subject: [Intel-wired-lan] [PATCH net v3] intel/i40e: Fix potential memory
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

The error handling path of i40e_init_recovery_mode() does not handle the
vsi->netdev and pf->vsi, and resource leak can happen if error occurs.

In the meantime, the i40e_probe() returns directly without release
pf->qp_pile when i40e_init_recovery_mode() failed.

Fix by properly releasing vsi->netdev in the error handling path of
i40e_init_recovery_mode() and relying on the error handling path of
i40e_probe() to release pf->vsi and pf->qp_pile if anything goes wrong.

Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
Signed-off-by: Yuan Can <yuancan@huawei.com>
---
Changes in v3:
- Introduce more error handling path to handle vsi->netdev
- Rely on error path of i40e_probe() instead of do all cleanup in
  i40e_init_recovery_mode() to make sure pf->qp_pile is not leaked

Changes in v2:
- Add net in patch title
- Add Leon Romanovsky's reviewed by

 drivers/net/ethernet/intel/i40e/i40e_main.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b5dcd15ced36..d1aadd298ea7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15511,13 +15511,13 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 		goto err_switch_setup;
 	err = register_netdev(vsi->netdev);
 	if (err)
-		goto err_switch_setup;
+		goto free_netdev;
 	vsi->netdev_registered = true;
 	i40e_dbg_pf_init(pf);
 
 	err = i40e_setup_misc_vector_for_recovery_mode(pf);
 	if (err)
-		goto err_switch_setup;
+		goto unreg_netdev;
 
 	/* tell the firmware that we're starting */
 	i40e_send_version(pf);
@@ -15528,15 +15528,15 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 
 	return 0;
 
+unreg_netdev:
+	unregister_netdev(vsi->netdev);
+free_netdev:
+	free_netdev(vsi->netdev);
 err_switch_setup:
 	i40e_reset_interrupt_capability(pf);
 	del_timer_sync(&pf->service_timer);
 	i40e_shutdown_adminq(hw);
-	iounmap(hw->hw_addr);
-	pci_disable_pcie_error_reporting(pf->pdev);
-	pci_release_mem_regions(pf->pdev);
-	pci_disable_device(pf->pdev);
-	kfree(pf);
+	kfree(pf->vsi);
 
 	return err;
 }
@@ -15789,8 +15789,11 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_sw_init;
 	}
 
-	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
-		return i40e_init_recovery_mode(pf, hw);
+	if (test_bit(__I40E_RECOVERY_MODE, pf->state)) {
+		err = i40e_init_recovery_mode(pf, hw);
+		if (err)
+			goto err_init_lan_hmc;
+	}
 
 	err = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
 				hw->func_caps.num_rx_qp, 0, 0);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
