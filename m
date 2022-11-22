Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8495C6340E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 17:08:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5BB940872;
	Tue, 22 Nov 2022 16:08:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5BB940872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669133331;
	bh=iBOuncHs6KIMI6Rjs6RUYRIbRGz+Me/Sny9GlGqp0rE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Dthb6nZfgALYppQudKFyPExfArjzI5BPIz/3516eXsAbGboZcEguv5m+6Ci77Vllq
	 dwhW++R7HMgF2T6RAYMr3FjLJVmpMVYvdUl1kdv2C0lJ23ikamoZP/tXzPGTHuqT5/
	 y3ePB2mZPyX3g6c72jJgx2t7tAP8EhULdXP5vIhTHD1bmjd9iQrsP78a9MKAs/0AZH
	 nZpZYl8yCMdL/nlhCX+i5ooTT9crhcNsyFg3yh8vjwBozklK/mag11Kkp9yWHWE6jX
	 sSNHySh7oA9KnASQDYkmgxC9utNbtCzLBvjSleMC59Y/Bh18v4votm5Wk9Qo5QTvzF
	 jBWNe0rebTmQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rL9Nymu-eSu2; Tue, 22 Nov 2022 16:08:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A826740896;
	Tue, 22 Nov 2022 16:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A826740896
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 839AF1BF333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F55440176
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:10:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F55440176
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ib3ZVN3xyj-Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 06:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3189D40108
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3189D40108
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:10:08 +0000 (UTC)
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NGYfS5BVSzqSbM;
 Tue, 22 Nov 2022 14:06:08 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 14:10:02 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 22 Nov
 2022 14:10:01 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Nov 2022 14:08:16 +0800
Message-ID: <20221122060816.1187260-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 22 Nov 2022 16:08:37 +0000
Subject: [Intel-wired-lan] [PATCH net resend] ixgbe: fix pci device refcount
 leak
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

As comment of pci_get_domain_bus_and_slot() says, it returns
a pci device with refcount increment, when finish using it,
the caller must decrement the reference count by calling
pci_dev_put().

In ixgbe_get_first_secondary_devfn() and ixgbe_x550em_a_has_mii(),
pci_dev_put() is called to avoid leak.

Fixes: 8fa10ef01260 ("ixgbe: register a mdiobus")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
Cc all pepole in the maintainer list.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 24aa97f993ca..ed0d6a8f239c 100644
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
 
@@ -882,6 +884,7 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
 	 * of those two root ports
 	 */
 	func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x16, 0));
+	pci_dev_put(func0_pdev);
 	if (func0_pdev) {
 		if (func0_pdev == pdev)
 			return true;
@@ -889,6 +892,7 @@ static bool ixgbe_x550em_a_has_mii(struct ixgbe_hw *hw)
 			return false;
 	}
 	func0_pdev = ixgbe_get_first_secondary_devfn(PCI_DEVFN(0x17, 0));
+	pci_dev_put(func0_pdev);
 	if (func0_pdev == pdev)
 		return true;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
