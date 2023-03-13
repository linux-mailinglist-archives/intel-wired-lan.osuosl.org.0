Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5446B7D35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 17:15:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E5B981753;
	Mon, 13 Mar 2023 16:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E5B981753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678724146;
	bh=BEDfqlC9hPf0C8osXn6MNEISIwhD/tqNhd4T68RroiA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9E2Yxr3uZr+hE/pM+O8/xW4QAfo9CAs45K+aMWSaBG0PNk2B80t8lKHhJ6P0dGr7M
	 bxwiRAlPJQQVcofTIDOAEjzEsY+ad3Dnrexfp1IucUJw0cEK9CW/kGz/ZDHMWqLA+M
	 WlSlNIH6SI6LWGbSQB+LhyETrPIhxzrOxHSccFs03GbWOh8tyblbFZ+q3kfV8ZFANm
	 C+ihc/atH7xT5L4Wau9y/Gkg5Is1XBJKP4+u6o03kPCi4mPbxSsOKBssbKGCkVIJE6
	 K+UEB1rBc5n9ibT+mGHKMYqlJKywABA+ufKOe8Y4CNBKWnkVR8GFsscry9N+0+n63v
	 SJFGDdprnHCRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z26QYAj_z4Lj; Mon, 13 Mar 2023 16:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 078E481757;
	Mon, 13 Mar 2023 16:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 078E481757
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03D2C1BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 16:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE721400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 16:15:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE721400DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id beTt6otGDH0k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 16:15:39 +0000 (UTC)
X-Greylist: delayed 00:07:22 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6D01408E0
Received: from us-smtp-delivery-44.mimecast.com (unknown [207.211.30.44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6D01408E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 16:15:38 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-15-9jV7BWbzMsWhfewLuXUxWQ-1; Mon, 13 Mar 2023 12:08:00 -0400
X-MC-Unique: 9jV7BWbzMsWhfewLuXUxWQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51C93101A521;
 Mon, 13 Mar 2023 16:07:59 +0000 (UTC)
Received: from p1.redhat.com (unknown [10.39.192.120])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 40C5D40C83AC;
 Mon, 13 Mar 2023 16:07:58 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 17:06:45 +0100
Message-Id: <20230313160645.3332457-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH net v2] iavf: fix hang on reboot with ice
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
Cc: slawomirx.laba@intel.com, netdev@vger.kernel.org, sassmann@kpanic.de,
 patryk.piotrowski@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When a system with E810 with existing VFs gets rebooted the following
hang may be observed.

 Pid 1 is hung in iavf_remove(), part of a network driver:
 PID: 1        TASK: ffff965400e5a340  CPU: 24   COMMAND: "systemd-shutdow"
  #0 [ffffaad04005fa50] __schedule at ffffffff8b3239cb
  #1 [ffffaad04005fae8] schedule at ffffffff8b323e2d
  #2 [ffffaad04005fb00] schedule_hrtimeout_range_clock at ffffffff8b32cebc
  #3 [ffffaad04005fb80] usleep_range_state at ffffffff8b32c930
  #4 [ffffaad04005fbb0] iavf_remove at ffffffffc12b9b4c [iavf]
  #5 [ffffaad04005fbf0] pci_device_remove at ffffffff8add7513
  #6 [ffffaad04005fc10] device_release_driver_internal at ffffffff8af08baa
  #7 [ffffaad04005fc40] pci_stop_bus_device at ffffffff8adcc5fc
  #8 [ffffaad04005fc60] pci_stop_and_remove_bus_device at ffffffff8adcc81e
  #9 [ffffaad04005fc70] pci_iov_remove_virtfn at ffffffff8adf9429
 #10 [ffffaad04005fca8] sriov_disable at ffffffff8adf98e4
 #11 [ffffaad04005fcc8] ice_free_vfs at ffffffffc04bb2c8 [ice]
 #12 [ffffaad04005fd10] ice_remove at ffffffffc04778fe [ice]
 #13 [ffffaad04005fd38] ice_shutdown at ffffffffc0477946 [ice]
 #14 [ffffaad04005fd50] pci_device_shutdown at ffffffff8add58f1
 #15 [ffffaad04005fd70] device_shutdown at ffffffff8af05386
 #16 [ffffaad04005fd98] kernel_restart at ffffffff8a92a870
 #17 [ffffaad04005fda8] __do_sys_reboot at ffffffff8a92abd6
 #18 [ffffaad04005fee0] do_syscall_64 at ffffffff8b317159
 #19 [ffffaad04005ff08] __context_tracking_enter at ffffffff8b31b6fc
 #20 [ffffaad04005ff18] syscall_exit_to_user_mode at ffffffff8b31b50d
 #21 [ffffaad04005ff28] do_syscall_64 at ffffffff8b317169
 #22 [ffffaad04005ff50] entry_SYSCALL_64_after_hwframe at ffffffff8b40009b
     RIP: 00007f1baa5c13d7  RSP: 00007fffbcc55a98  RFLAGS: 00000202
     RAX: ffffffffffffffda  RBX: 0000000000000000  RCX: 00007f1baa5c13d7
     RDX: 0000000001234567  RSI: 0000000028121969  RDI: 00000000fee1dead
     RBP: 00007fffbcc55ca0   R8: 0000000000000000   R9: 00007fffbcc54e90
     R10: 00007fffbcc55050  R11: 0000000000000202  R12: 0000000000000005
     R13: 0000000000000000  R14: 00007fffbcc55af0  R15: 0000000000000000
     ORIG_RAX: 00000000000000a9  CS: 0033  SS: 002b

During reboot all drivers PM shutdown callbacks are invoked.
In iavf_shutdown() the adapter state is changed to __IAVF_REMOVE.
In ice_shutdown() the call chain above is executed, which at some point
calls iavf_remove(). However iavf_remove() expects the VF to be in one
of the states __IAVF_RUNNING, __IAVF_DOWN or __IAVF_INIT_FAILED. If
that's not the case it sleeps forever.
So if iavf_shutdown() gets invoked before iavf_remove() the system will
hang indefinitely because the adapter is already in state __IAVF_REMOVE.

Fix this by returning from iavf_remove() if the state is __IAVF_REMOVE,
as we already went through iavf_shutdown().

Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
Fixes: a8417330f8a5 ("iavf: Fix race condition between iavf_shutdown and iavf_remove")
Reported-by: Marius Cornea <mcornea@redhat.com>
Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
v2: return instead of breaking the while (1) loop
    This avoids going through remove code twice and is how things worked
    before a8417330f8a5.

 drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3273aeb8fa67..ce7071e9af15 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5066,6 +5066,11 @@ static void iavf_remove(struct pci_dev *pdev)
 			mutex_unlock(&adapter->crit_lock);
 			break;
 		}
+		/* Simply return if we already went through iavf_shutdown */
+		if (adapter->state == __IAVF_REMOVE) {
+			mutex_unlock(&adapter->crit_lock);
+			return;
+		}
 
 		mutex_unlock(&adapter->crit_lock);
 		usleep_range(500, 1000);
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
