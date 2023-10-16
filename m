Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5CF7CB02E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 18:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4A6441581;
	Mon, 16 Oct 2023 16:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4A6441581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697474967;
	bh=QV+Y5FX9wQWIjC3cljBiSRp+x4BQH/qj5QI0mELf11w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vx6MjqNaiJfKDVvTQo8syrQ/6RMM5S6pMtC1nzg72kwDphpJc0hEtUbmn0Dt6mVus
	 pd4wHe5L8mu2yDWp6lcvARnZdcfvbzqQkhzHi15dT5Ccoi5M4X+Y27Sf3QD6tzokeC
	 kA4pp3o7sGzM3c5kpXpW4JujeCgxL/vDHpCZM3PkCltKsA4vnP+zrgoihdDaC2uM4s
	 avk04tKJ5nb5S/Q1njMY+Cm9f5GT4nSxBsS0arpMqG+r1bcAhOLPLQ5iqqoISkRWY2
	 /Wh+y8VljGwCSn7xiEBnsqoEvTZcUn2qyrKJFbpyd9Z2wsp46xNrb0uATi+/8Zbldo
	 6FWBWQuo6xKvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OS3hpM7mFtF; Mon, 16 Oct 2023 16:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35D39409E1;
	Mon, 16 Oct 2023 16:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35D39409E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B02D51BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95E5660FFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E5660FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cn4U15R3RCUW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 16:49:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE894605A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE894605A2
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-271-6T0ki9mBM96gJy6kivoFMA-1; Mon, 16 Oct 2023 12:49:04 -0400
X-MC-Unique: 6T0ki9mBM96gJy6kivoFMA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC0C11029F49;
 Mon, 16 Oct 2023 16:49:03 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 68AC8492BEE;
 Mon, 16 Oct 2023 16:49:02 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Oct 2023 18:48:46 +0200
Message-ID: <20231016164849.45691-2-mschmidt@redhat.com>
In-Reply-To: <20231016164849.45691-1-mschmidt@redhat.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697474957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QsaAtsNqKHzxOQZyp0txHeu88qGSbx/+1FTbXGjkIjM=;
 b=EstwdGCXxhgXyd4ZLGY3DhTpuwgPIfhYeHygF8t0p4m+DP2TMfDy6kpbkLVuM7O0+ISHR3
 l9QUsXe8uKjm/ILZMO2eeMzcDabvKQSdRCQFKlGzRCODgpJJ/XWccQEW4m5rZic5mZGP7x
 k9mR5X0Qg8U4/eRPva4uHeYpa3yxJwQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EstwdGCX
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's own
 registered state
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The information whether a netdev has been registered is already present
in the netdev itself. There's no need for a driver flag with the same
meaning.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 1 -
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 +++------
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 44daf335e8c5..f026d0670338 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -377,7 +377,6 @@ struct iavf_adapter {
 	unsigned long crit_section;
 
 	struct delayed_work watchdog_task;
-	bool netdev_registered;
 	bool link_up;
 	enum virtchnl_link_speed link_speed;
 	/* This is only populated if the VIRTCHNL_VF_CAP_ADV_LINK_SPEED is set
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f35d74566faa..d2f4648a6156 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2021,7 +2021,7 @@ static void iavf_finish_config(struct work_struct *work)
 	mutex_lock(&adapter->crit_lock);
 
 	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
-	    adapter->netdev_registered &&
+	    adapter->netdev->reg_state == NETREG_REGISTERED &&
 	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
 		netdev_update_features(adapter->netdev);
 		adapter->flags &= ~IAVF_FLAG_SETUP_NETDEV_FEATURES;
@@ -2029,7 +2029,7 @@ static void iavf_finish_config(struct work_struct *work)
 
 	switch (adapter->state) {
 	case __IAVF_DOWN:
-		if (!adapter->netdev_registered) {
+		if (adapter->netdev->reg_state != NETREG_REGISTERED) {
 			err = register_netdevice(adapter->netdev);
 			if (err) {
 				dev_err(&adapter->pdev->dev, "Unable to register netdev (%d)\n",
@@ -2043,7 +2043,6 @@ static void iavf_finish_config(struct work_struct *work)
 						  __IAVF_INIT_CONFIG_ADAPTER);
 				goto out;
 			}
-			adapter->netdev_registered = true;
 		}
 
 		/* Set the real number of queues when reset occurs while
@@ -5173,10 +5172,8 @@ static void iavf_remove(struct pci_dev *pdev)
 	cancel_work_sync(&adapter->finish_config);
 
 	rtnl_lock();
-	if (adapter->netdev_registered) {
+	if (netdev->reg_state == NETREG_REGISTERED)
 		unregister_netdevice(netdev);
-		adapter->netdev_registered = false;
-	}
 	rtnl_unlock();
 
 	if (CLIENT_ALLOWED(adapter)) {
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
