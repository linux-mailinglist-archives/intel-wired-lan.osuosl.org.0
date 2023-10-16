Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D313E7CB031
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 18:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66A6141573;
	Mon, 16 Oct 2023 16:49:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66A6141573
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697474972;
	bh=1rA+596a7SLsWYrUfNauifxBI4KJnUrVtjbdnlaIWNM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vr1K6cwdv90LEP9UwJeB5zMowddxg2jDzWAAa23pRFQxue0oBQT9B/c8LkNxpieVr
	 +R49OdKxwSkkeHQj/c2mxHTKr7S7Alsxrb69WWrRQVWRCxLZlTwR5vhgYo8mUI5Et4
	 PVYPLBrHgkVO+uU7UZd21kOJiZ5s5H9EIMD0Fb0Wl7wIqtVElpW2D08fzc08ZT3tJX
	 TR7xD3Rs+n2Doesb7YJiHFMq5v7lykcoF6Y5w+lgo62hZR2wiKqkxs3F2voVBwjGel
	 0KkGbsbA+XOiHnutlnXFivcqBoMXGgG85ylYqcfALLLnoYQjWM5ZakjGib6FcxpASk
	 wvA6UP4HIs9Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQIco2X_R-a0; Mon, 16 Oct 2023 16:49:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E59DE40474;
	Mon, 16 Oct 2023 16:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E59DE40474
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35B731BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F01460FFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F01460FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KzXM2yM7XQGq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 16:49:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7312605A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7312605A2
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-253-hXG-C2H5M6eLR-_FswjZxg-1; Mon, 16 Oct 2023 12:49:07 -0400
X-MC-Unique: hXG-C2H5M6eLR-_FswjZxg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0F5681DA03;
 Mon, 16 Oct 2023 16:49:06 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 95CDA492BEE;
 Mon, 16 Oct 2023 16:49:05 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Oct 2023 18:48:48 +0200
Message-ID: <20231016164849.45691-4-mschmidt@redhat.com>
In-Reply-To: <20231016164849.45691-1-mschmidt@redhat.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697474958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U5UG7QpK2CExO8hE1R9NRfCuMLFjlNpBB/2cVreBkEE=;
 b=i/fTeIfaQ3mUQ//rx0f6Vo5dP0l91heb5LiHgi1MbRbHNUke5OepTEfP57oQNpfRTccCk3
 45PQVa9LDk7xHWmARQDOAB9rR2hocGq9cbIKtLv4kllYBL6XHkVq8mEBynhPm9pdgON+UP
 eD1RdngwkdXeXO9D+cBOD4a9eWpirQk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=i/fTeIfa
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: add a common function
 for undoing the interrupt scheme
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

Add a new function iavf_free_interrupt_scheme that does the inverse of
iavf_init_interrupt_scheme. Symmetry is nice. And there will be three
callers already.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 26 ++++++++++++---------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6036a4582196..791517cafc3c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1954,6 +1954,17 @@ static int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
 	return err;
 }
 
+/**
+ * iavf_free_interrupt_scheme - Undo what iavf_init_interrupt_scheme does
+ * @adapter: board private structure
+ **/
+static void iavf_free_interrupt_scheme(struct iavf_adapter *adapter)
+{
+	iavf_free_q_vectors(adapter);
+	iavf_reset_interrupt_capability(adapter);
+	iavf_free_queues(adapter);
+}
+
 /**
  * iavf_free_rss - Free memory used by RSS structs
  * @adapter: board private structure
@@ -1982,11 +1993,9 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool runni
 	if (running)
 		iavf_free_traffic_irqs(adapter);
 	iavf_free_misc_irq(adapter);
-	iavf_reset_interrupt_capability(adapter);
-	iavf_free_q_vectors(adapter);
-	iavf_free_queues(adapter);
+	iavf_free_interrupt_scheme(adapter);
 
-	err =  iavf_init_interrupt_scheme(adapter);
+	err = iavf_init_interrupt_scheme(adapter);
 	if (err)
 		goto err;
 
@@ -2973,9 +2982,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
 
 	iavf_free_misc_irq(adapter);
-	iavf_reset_interrupt_capability(adapter);
-	iavf_free_q_vectors(adapter);
-	iavf_free_queues(adapter);
+	iavf_free_interrupt_scheme(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
@@ -5206,9 +5213,7 @@ static void iavf_remove(struct pci_dev *pdev)
 	iavf_free_all_tx_resources(adapter);
 	iavf_free_all_rx_resources(adapter);
 	iavf_free_misc_irq(adapter);
-
-	iavf_reset_interrupt_capability(adapter);
-	iavf_free_q_vectors(adapter);
+	iavf_free_interrupt_scheme(adapter);
 
 	iavf_free_rss(adapter);
 
@@ -5224,7 +5229,6 @@ static void iavf_remove(struct pci_dev *pdev)
 
 	iounmap(hw->hw_addr);
 	pci_release_regions(pdev);
-	iavf_free_queues(adapter);
 	kfree(adapter->vf_res);
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 	/* If we got removed before an up/down sequence, we've got a filter
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
