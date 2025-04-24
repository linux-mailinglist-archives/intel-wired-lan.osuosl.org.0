Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1724A9AF96
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 15:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 979B74254F;
	Thu, 24 Apr 2025 13:45:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XnPmxuN-O3jX; Thu, 24 Apr 2025 13:45:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0686F4252F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745502359;
	bh=uClWFWxOhZai/lj3ydv7KI9qHUFMT0bzvZHfhxxkHjQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ca8TNJpHf1lqWhyU3Ry3CPzg/dNDsSeu7Y5EjiCLD8fPTUo5fMM2VOT2qg+sVI4oZ
	 zJ7qi5g8DBMifMmOhNAK8NhHCONfedUpc6fvDp2ZtvWdudmdIz+CbXD2lzfcl6qw7/
	 gmvlIluYv5tCmlnVkWHDxZ3PG0qnMGoDwSB9448ru4t/lNlBBOBo2PY/5KAqkrliym
	 cRQ2890Bw4HsPgZnloQmqQAz8YqrY4ayly6Em3eV2fjQGAf8+MO0rq+Zg8nAA2nP1j
	 383Psqqk/04aj9i8IjAYjabJQ4rXiPm4ZeG8col9c6CoD2SB6YZfd4SvWw/nJKDe1s
	 MFQrRLtIs8abQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0686F4252F;
	Thu, 24 Apr 2025 13:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 37C672A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 13:45:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 289026FCA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 13:45:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rWGsAjvxf45j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 13:45:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D69D6FC97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D69D6FC97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D69D6FC97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 13:45:55 +0000 (UTC)
X-CSE-ConnectionGUID: GOlEpdy/T3qOxrd5noUhsQ==
X-CSE-MsgGUID: oEA+sm7DTzW8ta2qdZEemA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47022351"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="47022351"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 06:45:55 -0700
X-CSE-ConnectionGUID: GdLgjI/JSOWaMWZJ+68j0w==
X-CSE-MsgGUID: Z7wFKSf+SByy2Zl5cK+YgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="132932036"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 24 Apr 2025 06:45:53 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4B878135C3;
 Thu, 24 Apr 2025 14:45:52 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Thu, 24 Apr 2025 15:50:13 +0200
Message-ID: <20250424135012.5138-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745502356; x=1777038356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EaPlOOkwoaHOqnFnPKdZZ5bPFm4LG2Z/rj4vlbPNFOI=;
 b=Jc/7nrV+gPa9qwM5Uxh4KsDHBHDDb10ROr29GaV0TcMn3rN2GfpX0/oW
 7ewsqeY4D+WOo9JOIev7ymzUNn+MjV6dyCCt7QN3KptsIzLuczrkSizdQ
 T87PsjcfDGV1Cr+Jc5cWJK7pDF/Rq7xajnHUHGsD2XtGe+pvAS5TVn00e
 uIsGw4UXb09ms2k4257fKgNwgDqG2xB4foR3FgyiPan24x/4Wop7xXGCf
 pmMLX3vwaLFePAbf+Uo57MdkjJXWZfMRVdUENoEgZnVsb+ckaM0yb5YNa
 /rWidBLabps3jStc97Ik4/GuoJX8dJDnobh84xzitAg7POV9G3KFhs/oa
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jc/7nrV+
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix reset_task for early
 reset event
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ahmed Zaki <ahmed.zaki@intel.com>

If a reset event is received from the PF early in the init cycle, the
state machine hangs for about 25 seconds.

Reproducer:
  echo 1 > /sys/class/net/$PF0/device/sriov_numvfs
  ip link set dev $PF0 vf 0 mac $NEW_MAC

The log shows:
  [792.620416] ice 0000:5e:00.0: Enabling 1 VFs
  [792.738812] iavf 0000:5e:01.0: enabling device (0000 -> 0002)
  [792.744182] ice 0000:5e:00.0: Enabling 1 VFs with 17 vectors and 16 queues per VF
  [792.839964] ice 0000:5e:00.0: Setting MAC 52:54:00:00:00:11 on VF 0. VF driver will be reinitialized
  [813.389684] iavf 0000:5e:01.0: Failed to communicate with PF; waiting before retry
  [818.635918] iavf 0000:5e:01.0: Hardware came out of reset. Attempting reinit.
  [818.766273] iavf 0000:5e:01.0: Multiqueue Enabled: Queue pair count = 16

Fix it by scheduling the reset task and making the reset task capable of
resetting early in the init cycle.

Fixes: ef8693eb90ae3 ("i40evf: refactor reset handling")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
This should be applied after "iavf: get rid of the crit lock"
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 11 +++++++++++
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 17 +++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2c0bb41809a4..81d7249d1149 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3209,6 +3209,17 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 
 continue_reset:
+	/* If we are still early in the state machine, just restart. */
+	if (adapter->state <= __IAVF_INIT_FAILED) {
+		iavf_shutdown_adminq(hw);
+		iavf_change_state(adapter, __IAVF_STARTUP);
+		iavf_startup(adapter);
+		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
+				   msecs_to_jiffies(30));
+		netdev_unlock(netdev);
+		return;
+	}
+
 	/* We don't use netif_running() because it may be true prior to
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a6f0e5990be2..07f0d0a0f1e2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -79,6 +79,23 @@ iavf_poll_virtchnl_msg(struct iavf_hw *hw, struct iavf_arq_event_info *event,
 			return iavf_status_to_errno(status);
 		received_op =
 		    (enum virtchnl_ops)le32_to_cpu(event->desc.cookie_high);
+
+		if (received_op == VIRTCHNL_OP_EVENT) {
+			struct iavf_adapter *adapter = hw->back;
+			struct virtchnl_pf_event *vpe =
+				(struct virtchnl_pf_event *)event->msg_buf;
+
+			if (vpe->event != VIRTCHNL_EVENT_RESET_IMPENDING)
+				continue;
+
+			dev_info(&adapter->pdev->dev, "Reset indication received from the PF\n");
+			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING))
+				iavf_schedule_reset(adapter,
+						    IAVF_FLAG_RESET_PENDING);
+
+			return -EIO;
+		}
+
 		if (op_to_poll == received_op)
 			break;
 	}
-- 
2.49.0

