Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B1F58C9B8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 15:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 926AB60BF8;
	Mon,  8 Aug 2022 13:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 926AB60BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659966408;
	bh=i6Z0WZeZ5aoC1DqKqhkKxUTQm0Wv3oR+WiSw6TCMChM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ww9WV9eRn00v7nTOFFWUMcpuVeaSS728eOP9VnRat8yjocUpLRzef+0rqZtbyMihZ
	 jaCIbK5oc/nZ7GJ/QKBZGeY2m6CbmS9X283hG0G64TQn4xrKdzABCc7s2aKdVht9X+
	 duq1kFAJ5lwFUzcjCuyQMl8RvX/hCSTqqdSn9KWCyxIY/Dqpc0dvy47nGA4pWPJDTB
	 E410k15bhAV478zyJIKntgmMCs40JH/Shq8OYVeJHLLgdqjZYmEVSoBsiWoJo7UbHZ
	 Lgf8Hh+QnHveoecjq6+3ko4grG1DFimHJXRoJgiNa2fbglYOQmI4c1V1mR7l5ClEKw
	 xMnhu1XH1dHIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2rOs4OIsMj4A; Mon,  8 Aug 2022 13:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 622E860A46;
	Mon,  8 Aug 2022 13:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 622E860A46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C0411BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 08:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74C41404EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 08:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74C41404EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iaptvu4CGsS5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 08:19:42 +0000 (UTC)
X-Greylist: delayed 00:07:42 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 135D6404BF
Received: from zju.edu.cn (spam.zju.edu.cn [61.164.42.155])
 by smtp4.osuosl.org (Postfix) with ESMTP id 135D6404BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 08:19:41 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.12.77.33])
 by mail-app2 (Coremail) with SMTP id by_KCgC3v_c6xfBiCvV1Ag--.31789S4;
 Mon, 08 Aug 2022 16:11:38 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon,  8 Aug 2022 16:10:50 +0800
Message-Id: <20220808081050.25229-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CM-TRANSID: by_KCgC3v_c6xfBiCvV1Ag--.31789S4
X-Coremail-Antispam: 1UD129KBjvJXoW7KF1rJr1kWFWDtF18Wr1DGFg_yoW8Ww4kpF
 s8GryxKr10qF47WaykJ3W8AFyYga1qy34rG3W7uw4ruan8JryjvrWUKFyrZ34FkrWru39I
 vr4Yvw4fAFyDArJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvm1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
 w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
 IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJr0_GcWl84ACjcxK6I8E
 87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
 8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_
 Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
 xGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l42xK82IY
 c2Ij64vIr41l42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r
 4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF
 67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2I
 x0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2
 z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnU
 UI43ZEXa7VUbXdbUUUUUU==
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Mailman-Approved-At: Mon, 08 Aug 2022 13:46:43 +0000
Subject: [Intel-wired-lan] [PATCH v0] idb: Add rtnl_lock to avoid data race
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

In short, there are data races between read and write of
adapter->vfs_allocated_count. To fix this, we can add a new lock to
protect members in adapter object. However, we cau use the existing
rtnl_lock just as other drivers do. (See how dpaa2_eth_disconnect_mac is
protected in dpaa2_eth_remove function). This patch adopts similar
fixes.

Fixes: c23d92b80e0b ("igb: Teardown SR-IOV before unregister_netdev()")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index d8b836a85cc3..e86ea4de05f8 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3814,7 +3814,9 @@ static void igb_remove(struct pci_dev *pdev)
 	igb_release_hw_control(adapter);
 
 #ifdef CONFIG_PCI_IOV
+	rtnl_lock();
 	igb_disable_sriov(pdev);
+	rtnl_unlock();
 #endif
 
 	unregister_netdev(netdev);
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
