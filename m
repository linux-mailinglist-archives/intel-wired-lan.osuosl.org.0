Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D120158D4B3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 09:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C527760B72;
	Tue,  9 Aug 2022 07:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C527760B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660030576;
	bh=sYtVBlE8UDDe4uvrBRlJsS3CmJ6Pu064J5/VSWdqUdY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OaSR4fXijS+g75VKDLU8R7ty31ox4S8VocWhZ0kPmOUiJiVpI1yGZZebTdjfiuNLk
	 DzHANxysTzBfiZDMax3DNU3UQpiuoLi+IrZunL1G2dzvP2oE7tSlkp8NoyE4LN2Slt
	 kebhnnhTSr9O480Kslsq0Qp3GkdbyqAEonaqfFwdIpA4bwrWRZfBZGWKlSahFwIkSN
	 B74qwuOQqEBJi+8w2iFH7wTiHpZjrB3IJC7lkizVVTMY6n8BafpMQV7qR1GNHw7LaG
	 IXZR6VSHa9n5FJoLqoYYtyQjzP+yZNaEjZiGr8UMdMDOKUnroOZHxBZuu30hgiNt6k
	 7UQNCAMz2lfNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9NZbLbzAEPQf; Tue,  9 Aug 2022 07:36:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88A8460AE2;
	Tue,  9 Aug 2022 07:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88A8460AE2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 20C601BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 07:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDD2040932
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 07:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD2040932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ikry9s5b21S7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 07:36:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4764840354
Received: from zju.edu.cn (mail.zju.edu.cn [61.164.42.155])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4764840354
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 07:36:07 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.12.77.33])
 by mail-app4 (Coremail) with SMTP id cS_KCgDnIfxVDvJiEs6IAg--.63921S4;
 Tue, 09 Aug 2022 15:35:49 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Tue,  9 Aug 2022 15:35:42 +0800
Message-Id: <20220809073542.3390-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CM-TRANSID: cS_KCgDnIfxVDvJiEs6IAg--.63921S4
X-Coremail-Antispam: 1UD129KBjvJXoWxur4xCr13XF48ZrykuF17ZFb_yoWrtrWfpF
 4DX342yr10qF1jq397Xa18Ary3Kw4rKryfK3W7uw4F93Z8JryvqrWrtryYvF9Y9395u3ZI
 yryDuw4xZF1DAFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvl1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
 w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
 IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
 z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2AIxVAIcxkEcV
 Aq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j
 6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64
 vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxAIw28I
 cxkI7VAKI48JMxAIw28IcVCjz48v1sIEY20_GFWkJr1UJwCFx2IqxVCFs4IE7xkEbVWUJV
 W8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF
 1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6x
 IIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvE
 x4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvj
 DU0xZFpf9x0JUdHUDUUUUU=
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
Subject: [Intel-wired-lan] [PATCH v3] igb: Add lock to avoid data race
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
Cc: Lin Ma <linma@zju.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit c23d92b80e0b ("igb: Teardown SR-IOV before
unregister_netdev()") places the unregister_netdev() call after the
igb_disable_sriov() call to avoid functionality issue.

However, it introduces several race conditions when detaching a device.
For example, when .remove() is called, the below interleaving leads to
use-after-free.

 (FREE from device detaching)      |   (USE from netdev core)
igb_remove                         |  igb_ndo_get_vf_config
 igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
  kfree(adapter->vf_data)          |
  adapter->vfs_allocated_count = 0 |
                                   |    memcpy(... adapter->vf_data[vf]

Moreover, the igb_disable_sriov() also suffers from data race with the
requests from VF driver.

 (FREE from device detaching)      |   (USE from requests)
igb_remove                         |  igb_msix_other
 igb_disable_sriov                 |   igb_msg_task
  kfree(adapter->vf_data)          |    vf < adapter->vfs_allocated_count
  adapter->vfs_allocated_count = 0 |

To this end, this commit first eliminates the data races from netdev
core by using rtnl_lock (similar to commit 719479230893 ("dpaa2-eth: add
MAC/PHY support through phylink")). And then adds a spinlock to
eliminate races from driver requests. (similar to commit 1e53834ce541
("ixgbe: Add locking to prevent panic when setting sriov_numvfs to zero")


Fixes: c23d92b80e0b ("igb: Teardown SR-IOV before unregister_netdev()")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
V2 -> V3:  make the commit message much clear
V1 -> V2:  fix typo in title idb -> igb
V0 -> V1:  change title from "Add rtnl_lock" to "Add lock"
           add additional spinlock as suggested by Jakub, according to
           1e53834ce541 ("ixgbe: Add locking to prevent panic when setting
           sriov_numvfs to zero")

 drivers/net/ethernet/intel/igb/igb.h      |  2 ++
 drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 2d3daf022651..015b78144114 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -664,6 +664,8 @@ struct igb_adapter {
 	struct igb_mac_addr *mac_table;
 	struct vf_mac_filter vf_macs;
 	struct vf_mac_filter *vf_mac_list;
+	/* lock for VF resources */
+	spinlock_t vfs_lock;
 };
 
 /* flags controlling PTP/1588 function */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index d8b836a85cc3..2796e81d2726 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3637,6 +3637,7 @@ static int igb_disable_sriov(struct pci_dev *pdev)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
+	unsigned long flags;
 
 	/* reclaim resources allocated to VFs */
 	if (adapter->vf_data) {
@@ -3649,12 +3650,13 @@ static int igb_disable_sriov(struct pci_dev *pdev)
 			pci_disable_sriov(pdev);
 			msleep(500);
 		}
-
+		spin_lock_irqsave(&adapter->vfs_lock, flags);
 		kfree(adapter->vf_mac_list);
 		adapter->vf_mac_list = NULL;
 		kfree(adapter->vf_data);
 		adapter->vf_data = NULL;
 		adapter->vfs_allocated_count = 0;
+		spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 		wr32(E1000_IOVCTL, E1000_IOVCTL_REUSE_VFQ);
 		wrfl();
 		msleep(100);
@@ -3814,7 +3816,9 @@ static void igb_remove(struct pci_dev *pdev)
 	igb_release_hw_control(adapter);
 
 #ifdef CONFIG_PCI_IOV
+	rtnl_lock();
 	igb_disable_sriov(pdev);
+	rtnl_unlock();
 #endif
 
 	unregister_netdev(netdev);
@@ -3974,6 +3978,9 @@ static int igb_sw_init(struct igb_adapter *adapter)
 
 	spin_lock_init(&adapter->nfc_lock);
 	spin_lock_init(&adapter->stats64_lock);
+
+	/* init spinlock to avoid concurrency of VF resources */
+	spin_lock_init(&adapter->vfs_lock);
 #ifdef CONFIG_PCI_IOV
 	switch (hw->mac.type) {
 	case e1000_82576:
@@ -7958,8 +7965,10 @@ static void igb_rcv_msg_from_vf(struct igb_adapter *adapter, u32 vf)
 static void igb_msg_task(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
+	unsigned long flags;
 	u32 vf;
 
+	spin_lock_irqsave(&adapter->vfs_lock, flags);
 	for (vf = 0; vf < adapter->vfs_allocated_count; vf++) {
 		/* process any reset requests */
 		if (!igb_check_for_rst(hw, vf))
@@ -7973,6 +7982,7 @@ static void igb_msg_task(struct igb_adapter *adapter)
 		if (!igb_check_for_ack(hw, vf))
 			igb_rcv_ack_from_vf(adapter, vf);
 	}
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 }
 
 /**
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
