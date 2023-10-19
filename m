Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D25E7CF0D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 09:14:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DB85424A9;
	Thu, 19 Oct 2023 07:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DB85424A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697699655;
	bh=ZYBhum23LRAfGhurLsdwCK5n7LWUx2jVH+aeFeA/lNI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=aP3zFfJoSRCYMIrgUOX2iobt829HJ4WY/Ix2alM11iTNPJMIctjgo61JLE0dnp+ug
	 TVR21pzykoXK4APZoZ3vAXdqBc3Ohfj3Fw2JdlqtRXZCUPXipSzaD/xcMJ5Uyh4u1H
	 2qZxHE1z4KpeSP7ndJti3vSO331Umxe50OCMMWQUB7ZX9oJvMqIbAUcOTnQQnOJ02a
	 0+2yuDS6Kg4+uw8oyhy8A96925ZC1NxbLZmNSffIL1QGiGvAf7nij1MgexTlaSZtIm
	 ckLbNn0ZvJHJ/NgpStUlZXqvzqx/I5hSzvOXG9xLx12bov2KClGBNk0W+qS2fuWzaz
	 CukLOZ595HHcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkSFh9znLvme; Thu, 19 Oct 2023 07:14:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7CB94249D;
	Thu, 19 Oct 2023 07:14:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7CB94249D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 578A41BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 07:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FAC46FA2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 07:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FAC46FA2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gktXqZkzAHqm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 07:14:07 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71BE5614A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 07:14:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71BE5614A3
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-546-Skt814XLNyCLZgiVPIz0Pw-1; Thu, 19 Oct 2023 03:14:00 -0400
X-MC-Unique: Skt814XLNyCLZgiVPIz0Pw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A95E510201E0;
 Thu, 19 Oct 2023 07:13:58 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.224.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 08ABF503B;
 Thu, 19 Oct 2023 07:13:56 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 19 Oct 2023 09:13:46 +0200
Message-ID: <20231019071346.55949-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697699646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=j/E58SfVgh2tMBXaLp4Ka5VvQ2Ys2tWX2mDdsAUOQAo=;
 b=L31+V1f9vbKU1dcata84EuG9c5BN29gacg9FJzF9YH8Pa4lL7hrth4iaMGIWwWrwzFYD2H
 14KkBHDhHZP+cuEa/Tbps2Cot7qfVNpZGqqaUcGy1+JJdZII3HiyAZhj0ozvh26wxYHY0m
 6wllgkOYY9PNLpWztQXjaeKUy9eVSh4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L31+V1f9
Subject: [Intel-wired-lan] [PATCH net] iavf: initialize waitqueues before
 starting watchdog_task
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
Cc: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is not safe to initialize the waitqueues after queueing the
watchdog_task. It will be using them.

The chance of this causing a real problem is very small, because
there will be some sleeping before any of the waitqueues get used.
I got a crash only after inserting an artificial sleep in iavf_probe.

Queue the watchdog_task as the last step in iavf_probe. Add a comment to
prevent repeating the mistake.

Fixes: fe2647ab0c99 ("i40evf: prevent VF close returning before state transitions to DOWN")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6a2e6d64bc3a..5b5c0525aa13 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4982,8 +4982,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_WORK(&adapter->finish_config, iavf_finish_config);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
-	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
 
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
@@ -4994,6 +4992,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating virtchannel events */
 	init_waitqueue_head(&adapter->vc_waitqueue);
 
+	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
+			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
+	/* Initialization goes on in the work. Do not add more of it below. */
 	return 0;
 
 err_ioremap:
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
