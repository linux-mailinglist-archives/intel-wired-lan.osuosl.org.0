Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 747ED793E78
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 16:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8752860F15;
	Wed,  6 Sep 2023 14:14:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8752860F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694009666;
	bh=DbFwZOtds758mKN/sG7btza819/84NrcnRbIC36MOrs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zAdZOtWwfhuwLRnDi9Fld4EUpnKTNyv90iIxkYuQcdkjDVwDE4QneagqRk0URp6rr
	 JJl9rJzZqkUcB1NTPLO4TwKZfptbJO410XtLOiM34FgytUv0eX6DN5iNlBg0Stznur
	 plDrW2+4TQwpg73NKWzNWKUMOzTScajaGhfSrOuXdzHeBdBtY9iuhuJO5ECgmxbBM3
	 n04KReMs09JL4+oexcf5PPl7LK/ipVFrKK/qcDQIo53MFJ1WsS5zpJVJNh2lZRp5CE
	 2WK5lJsdlyP2TEDRlXfFdCPhuOfT3XhjS54T9+w1WAg4VWshlONPCi7RMI/nEICbPt
	 oir59N1Z8HRbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UjJHxmGlBFmW; Wed,  6 Sep 2023 14:14:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65D6D60AC2;
	Wed,  6 Sep 2023 14:14:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65D6D60AC2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CAC71BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 14:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF7608149A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 14:14:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF7608149A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kGmZxRSL6o-J for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 14:14:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A8ED81498
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 14:14:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A8ED81498
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-304-UT3cyqdiMY-V2igVRSxDVA-1; Wed, 06 Sep 2023 10:14:14 -0400
X-MC-Unique: UT3cyqdiMY-V2igVRSxDVA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A52123822555;
 Wed,  6 Sep 2023 14:14:13 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.225.164])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2FB61121314;
 Wed,  6 Sep 2023 14:14:11 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Sep 2023 16:14:10 +0200
Message-ID: <20230906141411.121142-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1694009657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=3LS+PCrZ9Y+5x4zHwbiw3gcL0/Pd5/+nV+sWy8MMaWE=;
 b=PumRjnp8G0JVEFba9PyVMO8bt5zSFl5/AOopaF5UfB1dQ2QnThy+S+cT3MvU3d5Idr/I9o
 A+Q9ltrzvcNR4fCAxoxOSJDg4/eXzPAsbaZBA6Qy9+K05e0sz8qJhmWV02qs0F6SGCqqcW
 qg15W6GEiqMxT86jatTOZq4/IaxjtpM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PumRjnp8
Subject: [Intel-wired-lan] [PATCH net 1/2] iavf: add
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
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helper for set iavf aq request AVF_FLAG_AQ_* and imediately
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
