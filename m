Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BBA43CDFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 17:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B50E660852;
	Wed, 27 Oct 2021 15:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kd-7yu0HMqtU; Wed, 27 Oct 2021 15:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB1E6607F0;
	Wed, 27 Oct 2021 15:52:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0654B1BF95E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 15:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E62D740257
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 15:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRMVcVCyCjJq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 15:52:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 222764010B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 15:52:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="210971048"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="210971048"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 08:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="665043454"
Received: from amlin-019-242.igk.intel.com ([10.102.19.242])
 by orsmga005.jf.intel.com with ESMTP; 27 Oct 2021 08:51:40 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Oct 2021 15:51:56 +0000
Message-Id: <20211027155156.54453-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix adopting new combined
 setting
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
Cc: Michal Maloszewski <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

New combined setting is fixed adopt after VF reset.
This has been implemented by call reinit interrupt scheme
during VF reset.
Without this fix new combined setting has never been adopted.

Fixes: 129cf89e5856 ("iavf: rename functions and structs to new name")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 80437ef26..355f98924 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2233,7 +2233,8 @@ continue_reset:
 			 err);
 	adapter->aq_required = 0;
 
-	if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
+	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
+	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
 		err = iavf_reinit_interrupt_scheme(adapter);
 		if (err)
 			goto reset_err;
@@ -2304,10 +2305,11 @@ continue_reset:
 		if (err)
 			goto reset_err;
 
-		if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
-			err = iavf_request_traffic_irqs(adapter, netdev->name);
-			if (err)
-				goto reset_err;
+	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
+	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
+		err = iavf_request_traffic_irqs(adapter, netdev->name);
+		if (err)
+			goto reset_err;
 
 			adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 		}
@@ -2321,6 +2323,8 @@ continue_reset:
 		adapter->state = __IAVF_DOWN;
 		wake_up(&adapter->down_waitqueue);
 	}
+
+	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
