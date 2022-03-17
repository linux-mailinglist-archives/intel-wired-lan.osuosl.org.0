Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5894DC434
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 11:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0552C417E4;
	Thu, 17 Mar 2022 10:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3j-4vGanqRWZ; Thu, 17 Mar 2022 10:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0238741821;
	Thu, 17 Mar 2022 10:45:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB4F91BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 10:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6A55417E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 10:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 42F1fUpeldOT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 10:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04240417DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 10:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647513931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZuoRHSiS5sMoIOb7MZ6BQa2RBfHZJ9wFo+kGOXs9LKw=;
 b=Gdt0feiGs7Yssi7ksRXP+v22c7+7sYBXQTKB4pfWhaXKLj//xtDW3K5ViXWTkOvaPk1WNJ
 ZL6mv1vgkwjJ2Ivc4DRCw3ceX81ve0OgOIXb79LfizQKmmv+eRxnAjZIylGN4mmASIrPvY
 lNcv/U9avULtCOYqmIYshb4Sl87z380=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-62-k1Mx3SeaPEmGbW7fj8nQYg-1; Thu, 17 Mar 2022 06:45:28 -0400
X-MC-Unique: k1Mx3SeaPEmGbW7fj8nQYg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F224E1C06909;
 Thu, 17 Mar 2022 10:45:27 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.193.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD363C28100;
 Thu, 17 Mar 2022 10:45:25 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 17 Mar 2022 11:45:24 +0100
Message-Id: <20220317104524.2802848-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: [Intel-wired-lan] [PATCH] iavf: Fix hang during reboot/shutdown
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Phani Burra <phani.r.burra@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recent commit 974578017fc1 ("iavf: Add waiting so the port is
initialized in remove") adds a wait-loop at the beginning of
iavf_remove() to ensure that port initialization is finished
prior unregistering net device. This causes a regression
in reboot/shutdown scenario because in this case callback
iavf_shutdown() is called and this callback detaches the device,
makes it down if it is running and sets its state to __IAVF_REMOVE.
Later shutdown callback of associated PF driver (e.g. ice_shutdown)
is called. That callback calls among other things sriov_disable()
that calls indirectly iavf_remove() (see stack trace below).
As the adapter state is already __IAVF_REMOVE then the mentioned
loop is end-less and shutdown process hangs.

The patch fixes this by checking adapter's state at the beginning
of iavf_remove() and skips the rest of the function if the adapter
is already in remove state (shutdown is in progress).

Reproducer:
1. Create VF on PF driven by ice or i40e driver
2. Ensure that the VF is bound to iavf driver
3. Reboot

[52625.981294] sysrq: SysRq : Show Blocked State
[52625.988377] task:reboot          state:D stack:    0 pid:17359 ppid:     1 f2
[52625.996732] Call Trace:
[52625.999187]  __schedule+0x2d1/0x830
[52626.007400]  schedule+0x35/0xa0
[52626.010545]  schedule_hrtimeout_range_clock+0x83/0x100
[52626.020046]  usleep_range+0x5b/0x80
[52626.023540]  iavf_remove+0x63/0x5b0 [iavf]
[52626.027645]  pci_device_remove+0x3b/0xc0
[52626.031572]  device_release_driver_internal+0x103/0x1f0
[52626.036805]  pci_stop_bus_device+0x72/0xa0
[52626.040904]  pci_stop_and_remove_bus_device+0xe/0x20
[52626.045870]  pci_iov_remove_virtfn+0xba/0x120
[52626.050232]  sriov_disable+0x2f/0xe0
[52626.053813]  ice_free_vfs+0x7c/0x340 [ice]
[52626.057946]  ice_remove+0x220/0x240 [ice]
[52626.061967]  ice_shutdown+0x16/0x50 [ice]
[52626.065987]  pci_device_shutdown+0x34/0x60
[52626.070086]  device_shutdown+0x165/0x1c5
[52626.074011]  kernel_restart+0xe/0x30
[52626.077593]  __do_sys_reboot+0x1d2/0x210
[52626.093815]  do_syscall_64+0x5b/0x1a0
[52626.097483]  entry_SYSCALL_64_after_hwframe+0x65/0xca

Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 45570e3f782e..0e178a0a59c5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4620,6 +4620,13 @@ static void iavf_remove(struct pci_dev *pdev)
 	struct iavf_hw *hw = &adapter->hw;
 	int err;
 
+	/* When reboot/shutdown is in progress no need to do anything
+	 * as the adapter is already REMOVE state that was set during
+	 * iavf_shutdown() callback.
+	 */
+	if (adapter->state == __IAVF_REMOVE)
+		return;
+
 	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
 	/* Wait until port initialization is complete.
 	 * There are flows where register/unregister netdev may race.
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
