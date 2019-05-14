Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A731CE21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2019 19:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D50886D82;
	Tue, 14 May 2019 17:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEWhPihfuXvA; Tue, 14 May 2019 17:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCF3486DBD;
	Tue, 14 May 2019 17:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A43C1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1EDA930AD4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyPiC-jef8hL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2019 17:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id BA5782FCEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:37:31 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2019 10:37:30 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 14 May 2019 10:37:08 -0700
Message-Id: <20190514173709.62431-10-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190514173709.62431-1-alice.michael@intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S5 iavf 10/11] iavf: add call to
 iavf_[add|del]_cloud_filter
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

Add call to iavf_add_cloud_filter and iavf_del_cloud_filter from
iavf_process_aq_command to clear aq_required
IAVF_FLAG_AQ_ADD_CLOUD_FILTER and IAVF_FLAG_AQ_DEL_CLOUD_FILTER bits.

aq_required IAVF_FLAG_AQ_DEL_CLOUD_FILTER bit is being set in
iavf_down and iavf_delete_clsflower, and are never cleared.

aq_required IAVF_FLAG_AQ_ADD_CLOUD_FILTER bit is being set in
iavf_handle_reset and iavf_configure_clsflower, and are never
cleared.

Since the aq_required is not zero, iavf_watchdog_task is setting the
queue_delayed_work to 20 msec instead of the longer delay.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8763486ff2b2..a833219c62d0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1658,7 +1658,14 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_del_cloud_filter(adapter);
 		return 0;
 	}
-
+	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
+		iavf_del_cloud_filter(adapter);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_CLOUD_FILTER) {
+		iavf_add_cloud_filter(adapter);
+		return 0;
+	}
 	return -EAGAIN;
 }
 
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
