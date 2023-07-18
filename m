Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD89758051
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 17:02:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BFF160FD6;
	Tue, 18 Jul 2023 15:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BFF160FD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689692563;
	bh=j5B86c1ZnRMaAcAq9X5xX84S4lZAPE4O3kBfpN4MW+g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BEfRYVvT9n4s6Aqm2CXkitzXw6hfqIxUIu4K2oLRg8Kyy4jekuv0Olh7nqO4eWm5E
	 5Yj6JDrGqCMj5ZiMZ/Ugh01OMfGINKbISFnYWmgAVTbFzV08pH0IKb9Kj2lQ0yvnn/
	 Ma5FmGPTt620TFzNaZuU1GpVQ+rbxevblpUWYvirtS2TQv24AACImg3AiRWcgM+2oj
	 r9sUoS2xUkrwY6s9O1FCn/ogpfIQVzYu7AKcMcpJp0k7NOfEkppxzQ0Q/Z1LtkjdaE
	 lzaEEygP6OeSYiAjFyyRCD2jXt1HsOYjujUj/GoeRvXbRcfKZzodfbNho5OhNNU9tI
	 tapBrF5hCUmIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8CbbgfhkDwTz; Tue, 18 Jul 2023 15:02:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2919D60E86;
	Tue, 18 Jul 2023 15:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2919D60E86
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C63D31BF30A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 13:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D31581EDD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 13:51:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D31581EDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_f-UszY-nEb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 13:51:47 +0000 (UTC)
X-Greylist: delayed 00:05:58 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FC2581EC2
Received: from bacon.elettra.eu (bacon.elettra.eu [140.105.206.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FC2581EC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 13:51:47 +0000 (UTC)
X-Envelope-From: <alessio.bogani@elettra.eu>
Received: from zmp.elettra.eu (zmp.elettra.trieste.it [140.105.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bacon.elettra.eu (Postfix) with ESMTPS id D295941D48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 15:45:23 +0200 (CEST)
Received: from zmp.elettra.eu (localhost [127.0.0.1])
 by zmp.elettra.eu (Postfix) with ESMTPS id C424B14C6BA6;
 Tue, 18 Jul 2023 15:45:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zmp.elettra.eu (Postfix) with ESMTP id AFAF614C6BA7;
 Tue, 18 Jul 2023 15:45:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zmp.elettra.eu
Received: from zmp.elettra.eu ([127.0.0.1])
 by localhost (zmp.elettra.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id sZrfJ5jhoRz0; Tue, 18 Jul 2023 15:45:23 +0200 (CEST)
Received: from pc-bogani.fcs.elettra.trieste.it (pc-bogani.elettra.trieste.it
 [192.168.205.85])
 by zmp.elettra.eu (Postfix) with ESMTP id 8462214C6BA6;
 Tue, 18 Jul 2023 15:45:23 +0200 (CEST)
From: Alessio Igor Bogani <alessio.bogani@elettra.eu>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jul 2023 15:45:17 +0200
Message-Id: <20230718134517.8247-1-alessio.bogani@elettra.eu>
X-Mailer: git-send-email 2.17.1
X-elettra-Libra-ESVA-Information: Please contact elettra for more information
X-elettra-Libra-ESVA-ID: D295941D48.AD943
X-elettra-Libra-ESVA: No virus found
X-elettra-Libra-ESVA-From: alessio.bogani@elettra.eu
X-elettra-Libra-ESVA-Watermark: 1690292724.00959@kiajTPTtsZ1idRLxFFXptw
X-Mailman-Approved-At: Tue, 18 Jul 2023 15:02:32 +0000
Subject: [Intel-wired-lan] [PATCH] igb: Unconditionally deallocate
 workqueues as allocation already does
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
Cc: Alessio Igor Bogani <alessio.bogani@elettra.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The workqueues ptp_tx_work and ptp_overflow_work are unconditionally allocated
by igb_ptp_init() but, at the moment, are deallocated only if the flag
IGB_PTP_ENABLED is on which isn't the case if there are errors or
if CONFIG_PTP is disabled.

Otherwise, when we unbind the igb driver with vfio-pci we receive a stack trace:
BUG: unable to handle page fault for address: ffffc9000440b6f8
[...]
Workqueue: events igb_ptp_overflow_check
RIP: 0010:igb_rd32+0x1f/0x60
[...]
Call Trace:
 igb_ptp_read_82580+0x20/0x50
 timecounter_read+0x15/0x60
 igb_ptp_overflow_check+0x1a/0x50
 process_one_work+0x1cb/0x3c0
 worker_thread+0x53/0x3f0
 ? rescuer_thread+0x370/0x370
 kthread+0x142/0x160
 ? kthread_associate_blkcg+0xc0/0xc0
 ret_from_fork+0x1f/0x30
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 6f471b91f562..56839bf65c13 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1440,9 +1440,6 @@ void igb_ptp_sdp_init(struct igb_adapter *adapter)
  */
 void igb_ptp_suspend(struct igb_adapter *adapter)
 {
-	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
-		return;
-
 	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
 		cancel_delayed_work_sync(&adapter->ptp_overflow_work);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
