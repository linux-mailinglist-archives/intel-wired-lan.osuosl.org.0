Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 442E66ADFE5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 14:06:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 493D54091A;
	Tue,  7 Mar 2023 13:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 493D54091A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678194381;
	bh=cNEPwDUuGWyL87OAhiWcDfGn0qt/k7mbR1PvmuxP85M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=08EHIi9QCpTnjQN06btwUS28MIfHcBU3SP2tHTheCuR7j3z0H6NtVMbyu6Y4Ts2I0
	 xWwdhaJJOiYAwTj96dtXNBx5jWLilYz/tjyyd9Da3gjVUhyvJAB5Ir+jk5+asaN0+g
	 SvgTEFDW9cShDVlapRuWWXE8dLgHDSzms3SxUFhcc4ZmejxRZMOsviiVzUX14qJkY3
	 j7P3UXLDaByH7YJM7fVBCGMpD0GiRmOkCMpVtlz3/U0QHXIoztM3EhnF742yKVkLL5
	 PgHXljyM92c38+7pOYfS4HHn4J53JM1wvRCJwDYFfxYbaB170aFzfC3vNv/PuXvDxX
	 ne+QTr2VBydeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbvk5q2HQEHw; Tue,  7 Mar 2023 13:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E17F5408A9;
	Tue,  7 Mar 2023 13:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E17F5408A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB8951BF46D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 13:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92DCE60EFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 13:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92DCE60EFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LufBkSRnwPz4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 13:06:12 +0000 (UTC)
X-Greylist: delayed 02:29:46 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CE2560BA9
Received: from zg8tmja2lje4os43os4xodqa.icoremail.net
 (zg8tmja2lje4os43os4xodqa.icoremail.net [206.189.79.184])
 by smtp3.osuosl.org (Postfix) with SMTP id 5CE2560BA9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 13:06:11 +0000 (UTC)
Received: from localhost.localdomain (unknown [122.235.142.236])
 by mail-app2 (Coremail) with SMTP id by_KCgCXnSGrNgdkbPtpCw--.43366S4;
 Tue, 07 Mar 2023 21:05:47 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com
Date: Tue,  7 Mar 2023 21:05:47 +0800
Message-Id: <20230307130547.31446-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <301b585a.80249.186bbe6cc50.Coremail.linma@zju.edu.cn>
References: <301b585a.80249.186bbe6cc50.Coremail.linma@zju.edu.cn>
X-CM-TRANSID: by_KCgCXnSGrNgdkbPtpCw--.43366S4
X-Coremail-Antispam: 1UD129KBjvJXoWxWw4xZw4kXw1DCw15Cr4fuFg_yoW5ZFy3pF
 13G3yxCF1kWr4jgayxZw18A34xXayjy34fWrn7uw4fuFs8CryDtry8CFWj93y5CrWxGF9F
 qF1kZa1UJF1UJa7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUvC14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
 JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
 CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
 2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
 W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
 Y2ka0xkIwI1lc2xSY4AK67AK6ry8MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
 1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
 b7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
 vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAI
 cVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2Kf
 nxnUUI43ZEXa7VUjySoJUUUUU==
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
Subject: [Intel-wired-lan] [PATCH] igb: revert rtnl_lock() that causes
 deadlock
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
Cc: pmenzel@molgen.mpg.de, vinschen@redhat.com, regressions@lists.linux.dev,
 stable@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Lin Ma <linma@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit 6faee3d4ee8b ("igb: Add lock to avoid data race") adds
rtnl_lock to eliminate a false data race shown below

 (FREE from device detaching)      |   (USE from netdev core)
igb_remove                         |  igb_ndo_get_vf_config
 igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
  kfree(adapter->vf_data)          |
  adapter->vfs_allocated_count = 0 |
                                   |    memcpy(... adapter->vf_data[vf]

The above race will never happen and the extra rtnl_lock causes deadlock
below

[  141.420169]  <TASK>
[  141.420672]  __schedule+0x2dd/0x840
[  141.421427]  schedule+0x50/0xc0
[  141.422041]  schedule_preempt_disabled+0x11/0x20
[  141.422678]  __mutex_lock.isra.13+0x431/0x6b0
[  141.423324]  unregister_netdev+0xe/0x20
[  141.423578]  igbvf_remove+0x45/0xe0 [igbvf]
[  141.423791]  pci_device_remove+0x36/0xb0
[  141.423990]  device_release_driver_internal+0xc1/0x160
[  141.424270]  pci_stop_bus_device+0x6d/0x90
[  141.424507]  pci_stop_and_remove_bus_device+0xe/0x20
[  141.424789]  pci_iov_remove_virtfn+0xba/0x120
[  141.425452]  sriov_disable+0x2f/0xf0
[  141.425679]  igb_disable_sriov+0x4e/0x100 [igb]
[  141.426353]  igb_remove+0xa0/0x130 [igb]
[  141.426599]  pci_device_remove+0x36/0xb0
[  141.426796]  device_release_driver_internal+0xc1/0x160
[  141.427060]  driver_detach+0x44/0x90
[  141.427253]  bus_remove_driver+0x55/0xe0
[  141.427477]  pci_unregister_driver+0x2a/0xa0
[  141.428296]  __x64_sys_delete_module+0x141/0x2b0
[  141.429126]  ? mntput_no_expire+0x4a/0x240
[  141.429363]  ? syscall_trace_enter.isra.19+0x126/0x1a0
[  141.429653]  do_syscall_64+0x5b/0x80
[  141.429847]  ? exit_to_user_mode_prepare+0x14d/0x1c0
[  141.430109]  ? syscall_exit_to_user_mode+0x12/0x30
[  141.430849]  ? do_syscall_64+0x67/0x80
[  141.431083]  ? syscall_exit_to_user_mode_prepare+0x183/0x1b0
[  141.431770]  ? syscall_exit_to_user_mode+0x12/0x30
[  141.432482]  ? do_syscall_64+0x67/0x80
[  141.432714]  ? exc_page_fault+0x64/0x140
[  141.432911]  entry_SYSCALL_64_after_hwframe+0x72/0xdc

Since the igb_disable_sriov() will call pci_disable_sriov() before
releasing any resources, the netdev core will synchronize the cleanup to
avoid any races. This patch removes the useless rtnl_(un)lock to guarantee
correctness.

CC: stable@vger.kernel.org
Fixes: 6faee3d4ee8b ("igb: Add lock to avoid data race")
Reported-by: Corinna <vinschen@redhat.com>
Link: https://lore.kernel.org/regressions/3ef31c0b-ce40-20d0-7740-5dc0cca278ca@molgen.mpg.de/
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 03bc1e8af575..5532361b0e94 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3863,9 +3863,7 @@ static void igb_remove(struct pci_dev *pdev)
 	igb_release_hw_control(adapter);
 
 #ifdef CONFIG_PCI_IOV
-	rtnl_lock();
 	igb_disable_sriov(pdev);
-	rtnl_unlock();
 #endif
 
 	unregister_netdev(netdev);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
