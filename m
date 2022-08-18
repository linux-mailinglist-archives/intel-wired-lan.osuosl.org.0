Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E51D59896A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 18:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 099F98426B;
	Thu, 18 Aug 2022 16:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 099F98426B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660841774;
	bh=cZab2/CzcaNngLV9Hf5RWQCLONWp2K4JyLhGw+zScsg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=raF6nr0urXiON49H4tWrJSKBgFE4FeJL3kFeFWUoexDAL6PscmOmHjOTvHrpyIoe/
	 T7BQ0owVxO2bqzYMM19TvpnuEnS2pPBHxF+TlKqLQcIsubgrsIB/WLHg117BG9wdKB
	 /QsRLpPFAcxtdle+7XameF0qh77H1WdIqcSQyMqwgX05x1vyoW0GxiqjPcWH33mfpz
	 ZUi3/KBjR4egX3uWwwXL1fbcN0IoTUpLBFwhXDEYNlUWIqnSd2LSVhM6/hoRQURz7D
	 XHq4rRSg1l0PJbbcDDV+ZznVMbK7m5yK/ODjoW+jot9Vob69c/QiUbb0kmlZQuK9s/
	 YdMStfGleJ6XA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5tfWkZx2tZMI; Thu, 18 Aug 2022 16:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD6E884267;
	Thu, 18 Aug 2022 16:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD6E884267
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE731BF868
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 16:56:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 616BC40204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 16:56:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 616BC40204
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGRw3JwmFPQF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Aug 2022 16:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C6F1409DA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C6F1409DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 16:56:05 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-QUaLWpzCM3q-B0eJ9hgnow-1; Thu, 18 Aug 2022 12:56:02 -0400
X-MC-Unique: QUaLWpzCM3q-B0eJ9hgnow-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B15FC800124;
 Thu, 18 Aug 2022 16:56:01 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.40.192.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 89ED91415135;
 Thu, 18 Aug 2022 16:55:59 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 18 Aug 2022 18:55:58 +0200
Message-Id: <20220818165558.997984-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1660841763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=13sXuS2gPFrwN9Isv4Vp61eKZCdTNWrL5DbPcMYYstw=;
 b=Slzitf+BjKKEN0gg/p49midjw/ffg5aEB6kCE/0/E1Uhfuim+rRauvqHbGPdDXwU0hDvz/
 l3mSGP+NCluPK4HhCTdFZI+F6YkCkev4Q1Oq7YN9Ayc77hcWGb/W6rZh9G3c0Ng41R5UKu
 akzHmH9yVssfGzK3mfBJdXkEx3UGJE4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Slzitf+B
Subject: [Intel-wired-lan] [PATCH net] iavf: Detach device during reset task
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
Cc: Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Patryk Piotrowski <patryk.piotrowski@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Vitaly Grinberg <vgrinber@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

iavf_reset_task() takes crit_lock at the beginning and holds
it during whole call. The function subsequently calls
iavf_init_interrupt_scheme() that grabs RTNL. Problem occurs
when userspace initiates during the reset task any ndo callback
that runs under RTNL like iavf_open() because some of that
functions tries to take crit_lock. This leads to classic A-B B-A
deadlock scenario.

To resolve this situation the device should be detached in
iavf_reset_task() prior taking crit_lock to avoid subsequent
ndos running under RTNL and reattach the device at the end.

Fixes: 62fe2a865e6d ("i40evf: add missing rtnl_lock() around i40evf_set_interrupt_capability")
Cc: Jacob Keller <jacob.e.keller@intel.com>
Cc: Patryk Piotrowski <patryk.piotrowski@intel.com>
Tested-by: Vitaly Grinberg <vgrinber@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 22 +++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f39440ad5c50..ee8f911b57ea 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2877,6 +2877,13 @@ static void iavf_reset_task(struct work_struct *work)
 	int i = 0, err;
 	bool running;
 
+	/*
+	 * Detach interface to avoid subsequent NDO callbacks
+	 */
+	rtnl_lock();
+	netif_device_detach(netdev);
+	rtnl_unlock();
+
 	/* When device is being removed it doesn't make sense to run the reset
 	 * task, just return in such a case.
 	 */
@@ -2884,7 +2891,7 @@ static void iavf_reset_task(struct work_struct *work)
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(iavf_wq, &adapter->reset_task);
 
-		return;
+		goto reset_finish;
 	}
 
 	while (!mutex_trylock(&adapter->client_lock))
@@ -2954,7 +2961,6 @@ static void iavf_reset_task(struct work_struct *work)
 
 	if (running) {
 		netif_carrier_off(netdev);
-		netif_tx_stop_all_queues(netdev);
 		adapter->link_up = false;
 		iavf_napi_disable_all(adapter);
 	}
@@ -3081,10 +3087,8 @@ static void iavf_reset_task(struct work_struct *work)
 
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
-	mutex_unlock(&adapter->client_lock);
-	mutex_unlock(&adapter->crit_lock);
+	goto reset_finish;
 
-	return;
 reset_err:
 	if (running) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3092,9 +3096,15 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 	iavf_disable_vf(adapter);
 
+	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
+
+reset_finish:
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
-	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
+
+	rtnl_lock();
+	netif_device_attach(netdev);
+	rtnl_unlock();
 }
 
 /**
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
