Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 555AE46D0EC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 11:22:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C15884B95;
	Wed,  8 Dec 2021 10:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v8plRWA_DeCQ; Wed,  8 Dec 2021 10:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1735684B87;
	Wed,  8 Dec 2021 10:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DEDB1BF362
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05B7940A0B
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNuIVwlV_OkZ for <intel-wired-lan@osuosl.org>;
 Wed,  8 Dec 2021 10:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AC8F4013A
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638958918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qpLbtZAIHQkdOoUaqak4eJ3LDwJuabFwzSNV4H4Dcr0=;
 b=FV/Ai4TvvaDggJIi6lsN1nxZG/Jcbg/k73xlomMU4ugo0CuV3doGi0ycYGulCC3eyoVS8B
 lXT57RKZG0R3jx4C2JnUHu0FgW/09u9ZDzn32pXxDXmF/M7mikNnU2S052r+iz+PCQ/vin
 EUPLdSpBiW5PsIxj5N6qB99t6D9eBL4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-pH0--xATPOSKK6RsLYasKA-1; Wed, 08 Dec 2021 05:21:57 -0500
X-MC-Unique: pH0--xATPOSKK6RsLYasKA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D288A81CCBA
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:21:55 +0000 (UTC)
Received: from wideload.redhat.com (unknown [10.22.8.29])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 75E7D13A58;
 Wed,  8 Dec 2021 10:21:55 +0000 (UTC)
From: Ken Cox <jkc@redhat.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  8 Dec 2021 04:21:52 -0600
Message-Id: <20211208102153.669338-2-jkc@redhat.com>
In-Reply-To: <20211208102153.669338-1-jkc@redhat.com>
References: <20211208102153.669338-1-jkc@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jkc@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
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
Cc: Ken Cox <jkc@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It's possible for the client_task to get scheduled by the watchdog
after cancel_delayed_work_sync(&adapter->client_task);  This can cause
a panic because free_netdev() is called with the client_task still queued
on the work queue.

The stack backtrace usually looks similar to:

[  121.272963] Workqueue:  0x0 (iavf)
[  121.272969] RIP: 0010:__list_del_entry_valid.cold.1+0x20/0x4c
...
[  121.272980] Call Trace:
[  121.272985]  move_linked_works+0x49/0xa0
[  121.272988]  pwq_activate_delayed_work+0x43/0x100
[  121.272991]  pwq_dec_nr_in_flight+0x5d/0x90
[  121.272993]  worker_thread+0x30/0x370
[  121.272995]  ? process_one_work+0x420/0x420
[  121.272998]  kthread+0x15d/0x180
[  121.273000]  ? __kthread_parkme+0xa0/0xa0
[  121.273003]  ret_from_fork+0x1f/0x40

Signed-off-by: Ken Cox <jkc@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6c2afbc8acbcd..63eec7edbf60a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3940,7 +3940,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
 	cancel_delayed_work_sync(&adapter->init_task);
 	cancel_work_sync(&adapter->reset_task);
-	cancel_delayed_work_sync(&adapter->client_task);
 	if (adapter->netdev_registered) {
 		unregister_netdev(netdev);
 		adapter->netdev_registered = false;
@@ -3974,6 +3973,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	iavf_free_q_vectors(adapter);
 
 	cancel_delayed_work_sync(&adapter->watchdog_task);
+	cancel_delayed_work_sync(&adapter->client_task);
 
 	cancel_work_sync(&adapter->adminq_task);
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
