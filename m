Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F597C61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2019 16:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB5D986DE6;
	Wed, 21 Aug 2019 14:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gw_piJJgYMMe; Wed, 21 Aug 2019 14:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAD5786D33;
	Wed, 21 Aug 2019 14:19:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 327321BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 14:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D6D48543A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 14:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vTPOd2---KiE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2019 14:19:17 +0000 (UTC)
X-Greylist: delayed 00:09:28 by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8595E84F75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 14:19:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4622E3083391;
 Wed, 21 Aug 2019 14:09:48 +0000 (UTC)
Received: from p50.redhat.com (ovpn-117-124.ams2.redhat.com [10.36.117.124])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C83F810013A1;
 Wed, 21 Aug 2019 14:09:46 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Aug 2019 16:09:29 +0200
Message-Id: <20190821140929.26985-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 21 Aug 2019 14:09:48 +0000 (UTC)
Subject: [Intel-wired-lan] [PATCH] i40e: check __I40E_VF_DISABLE bit in
 i40e_sync_filters_subtask
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
Cc: netdev@vger.kernel.org, davem@davemloft.net, sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While testing VF spawn/destroy the following panic occured.

BUG: unable to handle kernel NULL pointer dereference at 0000000000000029
[...]
Workqueue: i40e i40e_service_task [i40e]
RIP: 0010:i40e_sync_vsi_filters+0x6fd/0xc60 [i40e]
[...]
Call Trace:
 ? __switch_to_asm+0x35/0x70
 ? __switch_to_asm+0x41/0x70
 ? __switch_to_asm+0x35/0x70
 ? _cond_resched+0x15/0x30
 i40e_sync_filters_subtask+0x56/0x70 [i40e]
 i40e_service_task+0x382/0x11b0 [i40e]
 ? __switch_to_asm+0x41/0x70
 ? __switch_to_asm+0x41/0x70
 process_one_work+0x1a7/0x3b0
 worker_thread+0x30/0x390
 ? create_worker+0x1a0/0x1a0
 kthread+0x112/0x130
 ? kthread_bind+0x30/0x30
 ret_from_fork+0x35/0x40

Investigation revealed a race where pf->vf[vsi->vf_id].trusted may get
accessed by the watchdog via i40e_sync_filters_subtask() although
i40e_free_vfs() already free'd pf->vf.
To avoid this the call to i40e_sync_vsi_filters() in
i40e_sync_filters_subtask() needs to be guarded by __I40E_VF_DISABLE,
which is also used by i40e_free_vfs().

Note: put the __I40E_VF_DISABLE check after the
__I40E_MACVLAN_SYNC_PENDING check as the latter is more likely to
trigger.

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6d456e579314..f25c7da59b2b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2587,6 +2587,10 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 		return;
 	if (!test_and_clear_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state))
 		return;
+	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state)) {
+		set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
+		return;
+	}
 
 	for (v = 0; v < pf->num_alloc_vsi; v++) {
 		if (pf->vsi[v] &&
@@ -2601,6 +2605,7 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 			}
 		}
 	}
+	clear_bit(__I40E_VF_DISABLE, pf->state);
 }
 
 /**
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
