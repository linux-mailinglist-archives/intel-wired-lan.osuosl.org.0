Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 439A9797515
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 17:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CBA183F2F;
	Thu,  7 Sep 2023 15:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CBA183F2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694101593;
	bh=L3tcgyMu1G/VvSpc1duJY34kPgWGsO72SKNqlOxWSX0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3gd+Tyr06INaJexSkaItjFuY41QqfKx9tYMSd66oc9THGXAvogai7FBfi6yfZUbv4
	 K8bfU81EKuq0kIodLggmgkesBYfiGeWeeul6lw2z+3Pnnsd7KIp/IagGgmXx+FZ5KA
	 PEj+YhBr/RaFvXl/H+zOXmQsNoA5NDoXW8PyN0am8DDxhk8fnO27DQqTH7U/CnIp3P
	 Dphx9bULGNsgfuGuqQ6f4V79Oc22x1XrZft9ULMexFdV6nuV6mUw/9A8HgLJRuy9yy
	 Vh1kJalHmYIjpC1X77lMgFMyM248htGHyorYoDja52n391Wo8PFyDkKkaiDqJLG2r/
	 lQ6Jy5ZL0/Yww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gS4hoewuYPSJ; Thu,  7 Sep 2023 15:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 679B781350;
	Thu,  7 Sep 2023 15:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 679B781350
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC8F41BF308
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5AF240469
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5AF240469
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2UhZEuFDlAjg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 15:05:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1135D4027F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 15:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1135D4027F
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-nXPTVc1lMa6f_E6D82BHYw-1; Thu, 07 Sep 2023 11:05:14 -0400
X-MC-Unique: nXPTVc1lMa6f_E6D82BHYw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8735393F408;
 Thu,  7 Sep 2023 15:02:53 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.225.164])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B614463F6C;
 Thu,  7 Sep 2023 15:02:51 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  7 Sep 2023 17:02:50 +0200
Message-ID: <20230907150251.224931-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1694099116;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=9rvVTHxHPu3jCEmZFnxNYmQ4533N1br4tWGmYhjmcAM=;
 b=NelSWWkT39vvocsI9qBnWfaEWTBKuhHd6prUTprATjPYKsPOdKDM4SVeEBZIrsz3WX0MuR
 zlYeElBq5zPuUE5Px7tKmIkGJwiZWkjtL7TikN3GAc1o310uc4IGlFeRsn3xl8YxPWereW
 co8cVc+3AQ4UmaOuBp/p3Ai43NyR+xE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NelSWWkT
Subject: [Intel-wired-lan] [PATCH net v2 1/2] iavf: add
 iavf_schedule_aq_request() helper
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
Cc: ivecera@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helper for set iavf aq request AVF_FLAG_AQ_* and immediately
schedule watchdog_task. Helper will be used in cases where it is
necessary to run aq requests asap

Signed-off-by: Petr Oros <poros@redhat.com>
Co-developed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
Co-developed-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h         |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 10 ++++------
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 85fba85fbb232b..e110ba3461857b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -521,7 +521,7 @@ void iavf_down(struct iavf_adapter *adapter);
 int iavf_process_config(struct iavf_adapter *adapter);
 int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter);
 void iavf_schedule_reset(struct iavf_adapter *adapter, u64 flags);
-void iavf_schedule_request_stats(struct iavf_adapter *adapter);
+void iavf_schedule_aq_request(struct iavf_adapter *adapter, u64 flags);
 void iavf_schedule_finish_config(struct iavf_adapter *adapter);
 void iavf_reset(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index a34303ad057d00..90397293525f71 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -362,7 +362,7 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
 	unsigned int i;
 
 	/* Explicitly request stats refresh */
-	iavf_schedule_request_stats(adapter);
+	iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_REQUEST_STATS);
 
 	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7b300c86ceda73..86d472dfdbc10c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -314,15 +314,13 @@ void iavf_schedule_reset(struct iavf_adapter *adapter, u64 flags)
 }
 
 /**
- * iavf_schedule_request_stats - Set the flags and schedule statistics request
+ * iavf_schedule_aq_request - Set the flags and schedule aq request
  * @adapter: board private structure
- *
- * Sets IAVF_FLAG_AQ_REQUEST_STATS flag so iavf_watchdog_task() will explicitly
- * request and refresh ethtool stats
+ * @flags: requested aq flags
  **/
-void iavf_schedule_request_stats(struct iavf_adapter *adapter)
+void iavf_schedule_aq_request(struct iavf_adapter *adapter, u64 flags)
 {
-	adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_STATS;
+	adapter->aq_required |= flags;
 	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
 }
 
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
