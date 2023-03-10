Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667086B3F3D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 13:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E73054116A;
	Fri, 10 Mar 2023 12:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E73054116A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678451658;
	bh=KKudo823HaNgjTM4hqh4VgWpcKFaK+9r2llCLOcJH4k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CuRMa8z8eNE47UvzouY4g5ELR0dcVonjXuI0iJ9hnxnXMAsdR1WORf10e/iE+dUoI
	 CTED5iWDXFMsJG5cn8Oq+PCKYymC5LYh3Q/enGpbQgg3AwKHFkQrhLWRciHYU4PDF1
	 rNUmlUntYFjrM0hyNgF/UPyeQNo65JdFBK5MeUHa+xWlnLLN0nbHyOerx4JIFZLguZ
	 o+3MgwdJUQkj8VJjHOixigm405ClrMsRy3oMYne2QPqTuwkdqSQnt+GJbPcjbLRAVV
	 JvBGFMaoos6FG89AOe41j/gDzl8x8cXmpWTmdfHQfqQMjrnleS8oUw/vfRVF/nwdpz
	 MchPKwVmGlGgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t18a8ZpocNHQ; Fri, 10 Mar 2023 12:34:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCE9A411A1;
	Fri, 10 Mar 2023 12:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCE9A411A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA3CF1BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 12:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2A778215C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 12:34:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2A778215C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2N9H9vbxphuX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 12:34:11 +0000 (UTC)
X-Greylist: delayed 00:06:24 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84DF782131
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 84DF782131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 12:34:11 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-260-riZug3RDPRWdpqJIvDTFgQ-1; Fri, 10 Mar 2023 07:27:41 -0500
X-MC-Unique: riZug3RDPRWdpqJIvDTFgQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67EA385D060;
 Fri, 10 Mar 2023 12:27:41 +0000 (UTC)
Received: from p1.redhat.com (unknown [10.39.192.120])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7634240C83B6;
 Fri, 10 Mar 2023 12:27:40 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Mar 2023 13:26:53 +0100
Message-Id: <20230310122653.1116051-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH net] iavf: fix hang on reboot with ice
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
Cc: netdev@vger.kernel.org, patryk.piotrowski@intel.com,
 anthony.l.nguyen@intel.com, sassmann@kpanic.de, slawomirx.laba@intel.com
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
So if iavf_shutdown() gets invoked before ice_shutdown() the system will
hang indefinitely because the adapter is already in state __IAVF_REMOVE.

Fix this by adding __IAVF_REMOVE to the list of allowed states in
iavf_remove().

Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
Reported-by: Marius Cornea <mcornea@redhat.com>
Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3273aeb8fa67..83ef3a343ef0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5062,7 +5062,8 @@ static void iavf_remove(struct pci_dev *pdev)
 		mutex_lock(&adapter->crit_lock);
 		if (adapter->state == __IAVF_RUNNING ||
 		    adapter->state == __IAVF_DOWN ||
-		    adapter->state == __IAVF_INIT_FAILED) {
+		    adapter->state == __IAVF_INIT_FAILED ||
+		    adapter->state == __IAVF_REMOVE) {
 			mutex_unlock(&adapter->crit_lock);
 			break;
 		}
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
