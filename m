Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D92663C528
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DABE481E5A;
	Tue, 29 Nov 2022 16:30:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DABE481E5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739401;
	bh=u6ppzEQuMexKZlVou95gntk8SwC8ZmWeaYO8GFMaylw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=W8AueLWLLMyZDf3pzH+NlUH36IIlwAIBsgjmCwmmSjjlnVJSSqpNThdGGktCZQxRN
	 4/XaCuyKxO2seTLktGo9v+dA/mf2/BvI1Vpo4Z/v+ZUPxjQS0f4pyZxRPf5s/MfqLx
	 G0q2gK7qf2qvvXIs4wo7VL1VzftqiC/6ztBmGyayJADq7TcRKdZj+qIlKX7abae8k3
	 j51Kt38c69G0Wn1gjhL34xRKyIqsriP55w6A0sy9BiQE0t/Pd80i0hTy9UcL8Mjd1f
	 aPgQjb4k/4jw7wcqNjHCvVWwLmShrMZZIyk/PVOsmaXwsgJWCgK/I5Esp0q46TQwqN
	 XocNaZBx4Wicg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bxzHjfMfhpsD; Tue, 29 Nov 2022 16:30:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4CEC81E39;
	Tue, 29 Nov 2022 16:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4CEC81E39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE0FA1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 02:00:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2ACC81750
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 02:00:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2ACC81750
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8VltELtZ2AQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 02:00:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0ABF4817FD
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0ABF4817FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 02:00:04 +0000 (UTC)
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NLlnK6dcyzJnfJ;
 Tue, 29 Nov 2022 09:56:37 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 29 Nov 2022 09:59:59 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 29 Nov
 2022 09:59:59 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
Date: Tue, 29 Nov 2022 09:57:48 +0800
Message-ID: <20221129015748.2066603-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 29 Nov 2022 16:29:52 +0000
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: fix pci device refcount leak
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, stephend@silicom-usa.com,
 edumazet@google.com, jeffrey.t.kirsher@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As the comment of pci_get_domain_bus_and_slot() says, it
returns a PCI device with refcount incremented, when finish
using it, the caller must decrement the reference count by
calling pci_dev_put().

In ixgbe_get_first_secondary_devfn() and ixgbe_x550em_a_has_mii(),
pci_dev_put() is called to avoid leak.

Fixes: 8fa10ef01260 ("ixgbe: register a mdiobus")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
v1 -> v2:
  Introduce a local variable, and put pci_dev_put() after value checks.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 24aa97f993ca..123dca9ce468 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -855,9 +855,11 @@ static struct pci_dev *ixgbe_get_first_secondary_devfn(unsigned int devfn)
 	rp_pdev = pci_get_domain_bus_and_slot(0, 0, devfn);
 	if (rp_pdev && rp_pdev->subordinate) {
 		bus = rp_pdev->subordinate->number;
+		pci_dev_put(rp_pdev);
 		return pci_get_domain_bus_and_slot(0, bus, 0);
 	}
 
+	pci_dev_put(rp_pdev);
 	return NULL;
 }
 
@@ -874,6 +876,7 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
 	struct ixgbe_adapter *adapter = hw->back;
 	struct pci_dev *pdev = adapter->pdev;
 	struct pci_dev *func0_pdev;
+	bool has_mii = false;
 
 	/* For the C3000 family of SoCs (x550em_a) the internal ixgbe devices
 	 * are always downstream of root ports @ 0000:00:16.0 & 0000:00:17.0
@@ -884,15 +887,16 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
 	func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x16, 0));
 	if (func0_pdev) {
 		if (func0_pdev == pdev)
-			return true;
-		else
-			return false;
+			has_mii = true;
+		goto out;
 	}
 	func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x17, 0));
 	if (func0_pdev == pdev)
-		return true;
+		has_mii = true;
 
-	return false;
+out:
+	pci_dev_put(func0_pdev);
+	return has_mii;
 }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
