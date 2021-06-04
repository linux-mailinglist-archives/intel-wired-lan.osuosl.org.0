Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC4639BE02
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A56E7415E6;
	Fri,  4 Jun 2021 17:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RT0gL7d5P0we; Fri,  4 Jun 2021 17:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48EA0415EC;
	Fri,  4 Jun 2021 17:05:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A02B1BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2B71415B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1isVGQJx48r for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03D68415E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:04 +0000 (UTC)
IronPort-SDR: zOyJ0IujoUQWr7SX2AgwvLbKvkVFfbgXsYybsejt04pyrg78R8HuD2yH5t6M6hyPGrbaRkchAO
 sWl8IHsIByUw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666473"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666473"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:02 -0700
IronPort-SDR: NE9ZpAQqSbc1puy1gTRxL/e3jA9TgqXECuhos9SXHGXZFAMPKAT9cdY4y+9JaNZbq80NrM1Q3b
 OJpr8E6ULe6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086375"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:25 -0700
Message-Id: <20210604165335.33329-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 05/15] iavf: untangle any pending
 iavf_open() operations from iavf_close()
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

When the iavf interface is opened some of the steps necessary to
configure the hardware require communication with the PF driver. Since
these operations involve waiting for a response from the PF driver they can
be time-consuming, so the iavf driver schedules them for later and
proceeds with the remaining configuration. If the interface is closed
immediately after it is opened then some of these operations may still be
pending, although the iavf_close() routine assumes they have all
completed. In rare cases this can lead to iavf_open() configuration
operations completing after iavf_close(), which can mean the device
interrupts and/or DMA engine are active on a disabled interface.

To fix this:
1. In iavf_close() any pending unsent operations from iavf_open() are
canceled.
2. If the operation was already sent by the time iavf_close() is called,
but the driver is still awaiting the response back from the PF driver, then
ignore the response if it is received when the interface is down instead of
handling it in the usual manner.
3. Place a lock around the handling of all PF driver responses to ensure
that these can't conflict with concurrent processing of iavf_open() and
iavf_close(), or the other configuration tasks. In essence change (2)
above protects against unexpected responses received after iavf_close(),
and this change protects against responses received during iavf_close().

Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 10 ++++++++++
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  3 ++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 91818ba7c8a3..eda8ebb8e7b8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1025,6 +1025,12 @@ void iavf_down(struct iavf_adapter *adapter)
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
 		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
+		/* In case the queue configure or enable operations are still
+		 * pending from when the interface was opened, make sure
+		 * they're canceled here.
+		 */
+		adapter->aq_required &= ~IAVF_FLAG_AQ_ENABLE_QUEUES;
+		adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES;
 	}
 
 	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
@@ -2325,8 +2331,12 @@ static void iavf_adminq_task(struct work_struct *work)
 		if (ret || !v_op)
 			break; /* No event to process or error cleaning ARQ */
 
+		while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
+					&adapter->crit_section))
+			usleep_range(500, 1000);
 		iavf_virtchnl_completion(adapter, v_op, v_ret, event.msg_buf,
 					 event.msg_len);
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 		if (pending != 0)
 			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
 	} while (pending);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 0eab3c43bdc5..69e479eb5534 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1685,7 +1685,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
-		iavf_irq_enable(adapter, true);
+		if (adapter->state == __IAVF_RUNNING)
+			iavf_irq_enable(adapter, true);
 		adapter->flags &= ~IAVF_FLAG_QUEUES_DISABLED;
 		break;
 	case VIRTCHNL_OP_DISABLE_QUEUES:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
