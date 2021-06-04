Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B6B39BE09
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F251607B5;
	Fri,  4 Jun 2021 17:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YAAs2_xYN8rD; Fri,  4 Jun 2021 17:05:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C652A607B8;
	Fri,  4 Jun 2021 17:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2E821BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7107841DAF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqMJkfgsj5wn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 95B3B41DA8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: kPcZ5xVUKWtbisOQVF3Mwhlr6YvtYsvwebRakwDaEuZtx+8FfM06TNDySe0k/7sYbGfRFPdeJc
 teZa8KrQWlSA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666475"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666475"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:03 -0700
IronPort-SDR: H1kjRd0gc+Qq4esWioI8B8ohvBv2KnSa7P5ppf0/GWgL1m9jkqwYyWGqL/EAYPLo92Kh7NWjs8
 4XkRbXmVLC+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086379"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:26 -0700
Message-Id: <20210604165335.33329-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 06/15] iavf: disable interrupts
 before disabling napi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

Interrupts should be turned off first before disabling napi, not the other
way around, since the interrupt handler can schedule napi.

Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index eda8ebb8e7b8..1904000943dc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -970,8 +970,8 @@ void iavf_down(struct iavf_adapter *adapter)
 	netif_carrier_off(netdev);
 	netif_tx_disable(netdev);
 	adapter->link_up = false;
-	iavf_napi_disable_all(adapter);
 	iavf_irq_disable(adapter);
+	iavf_napi_disable_all(adapter);
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
@@ -2040,8 +2040,8 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 		netif_carrier_off(adapter->netdev);
 		netif_tx_disable(adapter->netdev);
 		adapter->link_up = false;
-		iavf_napi_disable_all(adapter);
 		iavf_irq_disable(adapter);
+		iavf_napi_disable_all(adapter);
 		iavf_free_traffic_irqs(adapter);
 		iavf_free_all_tx_resources(adapter);
 		iavf_free_all_rx_resources(adapter);
@@ -2171,6 +2171,8 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 
 continue_reset:
+	iavf_irq_disable(adapter);
+
 	/* We don't use netif_running() because it may be true prior to
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
@@ -2182,7 +2184,6 @@ static void iavf_reset_task(struct work_struct *work)
 		adapter->link_up = false;
 		iavf_napi_disable_all(adapter);
 	}
-	iavf_irq_disable(adapter);
 
 	adapter->state = __IAVF_RESETTING;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
