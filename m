Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAFF65C42B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 17:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B34B409E3;
	Tue,  3 Jan 2023 16:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B34B409E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672764432;
	bh=QUwjuHLtC9HKvlWRw/BaERgSgA443JVMKVqb7nnqjxQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=i4Ct4E8tkwR9kmr/yb7Kb9TnNTrkWnDDd4DqxvX/0nJaZp78Qdnf50RBAu2bD5bDg
	 tAAjuQl8gkCfDcnc1rrIXDqD+BCdVIfOKF0rFC0r5yKdsY95ikYISJraTo/t1L5pm7
	 IhspnFSo8sFK4RDgjYCtZY4bSWD/rHURh1RbsqxzLRuQAUpohOgzTfEffGK/ySfLXL
	 SHIRzs8jUUwRV07POnhx5FA+xle8bUWaI9PoKciaQLFXy+6uXBEy+adURM/Kvytwqo
	 splimZ8re7FKlNvJxPTuil5zcGFxCN4Jxe1xD4dWqp5k0n9sGFEAAPNsXtGS9EyU5u
	 zBdC0Me25BoTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xaXuVydF7v2c; Tue,  3 Jan 2023 16:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53DD7400C8;
	Tue,  3 Jan 2023 16:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53DD7400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 010341BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 16:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC8DE409EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 16:47:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC8DE409EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPnJ__OSdi3s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 16:47:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66FD7409ED
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66FD7409ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 16:47:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="322931583"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="322931583"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 08:47:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="828895242"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="828895242"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 03 Jan 2023 08:47:02 -0800
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 303Gl1JQ028830; Tue, 3 Jan 2023 16:47:01 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Jan 2023 17:42:27 +0100
Message-Id: <20230103164227.33546-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672764425; x=1704300425;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2gOcuZUmY83g4z1fFFZJz6QnjBRjKero/aYkB92aD6Q=;
 b=fYNrv2ZWmR5ah08UfcFqbWZXkSuKZH7WIHeCBZ8uqKELM/knnJ0SMrG6
 evzBUolhW6WR+9Pi3wvFhIzV+Hq0kPWPQG9/HFYH6MhzFVcCe/u6Do6nk
 2DUZPUu9InYl+Rkw9BUWJujApCyTZa5CKce0XquoS5eejpwQmW0xs3E4T
 ZpsJcUrvfqInbBfJKcB0A/2lUe4gpfU0F3AWY6sg+rndIDrKm9TiptUNJ
 lC4IHdwtR6pmZrzbLzva8G4BHYPOI6NGyh08jg/qkzzZ7WKbPGsaG+7A8
 FlicOu7Jb/oZ012Y5lxCWo7pcEQ42ThkfsH47f2ynhITLtueJN02TZzxh
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fYNrv2ZW
Subject: [Intel-wired-lan] [PATCH net] iavf: Move netdev_update_features()
 into watchdog task
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
Cc: dawidx.wesierski@intel.com, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove netdev_update_features() from iavf_adminq_task(), as it can cause
deadlocks due to needing rtnl_lock. Instead use the
IAVF_FLAG_SETUP_NETDEV_FEATURES flag to indicate that netdev features need
to be updated in the watchdog task. iavf_set_vlan_offload_features()
and iavf_set_queue_vlan_tag_loc() can be called directly from
iavf_virtchnl_completion().

Suggested-by: Phani Burra <phani.r.burra@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
This patch is a suggested replacement for patch [1], and as such will
currently not apply to dev-queue. It solves the same issue, but does not
increase code complexity by introducing a new task.
[1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20221215225049.508812-3-mschmidt@redhat.com/

 drivers/net/ethernet/intel/iavf/iavf_main.c   | 27 +++++++------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  8 ++++++
 2 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 931422485074..92ae7137584c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2692,6 +2692,15 @@ static void iavf_watchdog_task(struct work_struct *work)
 		goto restart_watchdog;
 	}
 
+	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
+	    adapter->netdev_registered &&
+	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section) &&
+	    rtnl_trylock()) {
+		netdev_update_features(adapter->netdev);
+		rtnl_unlock();
+		adapter->flags &= ~IAVF_FLAG_SETUP_NETDEV_FEATURES;
+	}
+
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		iavf_change_state(adapter, __IAVF_COMM_FAILED);
 
@@ -3233,24 +3242,6 @@ static void iavf_adminq_task(struct work_struct *work)
 	} while (pending);
 	mutex_unlock(&adapter->crit_lock);
 
-	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES)) {
-		if (adapter->netdev_registered ||
-		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
-			struct net_device *netdev = adapter->netdev;
-
-			rtnl_lock();
-			netdev_update_features(netdev);
-			rtnl_unlock();
-			/* Request VLAN offload settings */
-			if (VLAN_V2_ALLOWED(adapter))
-				iavf_set_vlan_offload_features
-					(adapter, 0, netdev->features);
-
-			iavf_set_queue_vlan_tag_loc(adapter);
-		}
-
-		adapter->flags &= ~IAVF_FLAG_SETUP_NETDEV_FEATURES;
-	}
 	if ((adapter->flags &
 	     (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED)) ||
 	    adapter->state == __IAVF_RESETTING)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 0752fd67c96e..365ca0c710c4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2226,6 +2226,14 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		iavf_process_config(adapter);
 		adapter->flags |= IAVF_FLAG_SETUP_NETDEV_FEATURES;
+
+		/* Request VLAN offload settings */
+		if (VLAN_V2_ALLOWED(adapter))
+			iavf_set_vlan_offload_features(adapter, 0,
+						       netdev->features);
+
+		iavf_set_queue_vlan_tag_loc(adapter);
+
 		was_mac_changed = !ether_addr_equal(netdev->dev_addr,
 						    adapter->hw.mac.addr);
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
