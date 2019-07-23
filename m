Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FAA71E0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F39720449;
	Tue, 23 Jul 2019 17:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6lQ69--fO05; Tue, 23 Jul 2019 17:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 831E920505;
	Tue, 23 Jul 2019 17:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1E71BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8637084B36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k8JTk4oj+zhQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3075781F99
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:54:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="344813728"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga005.jf.intel.com with ESMTP; 23 Jul 2019 10:53:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:24:49 -0700
Message-Id: <20190723092454.3508-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
References: <20190723092454.3508-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v3 09/15] ice: Do not always bring up
 PF VSI in ice_ena_vsi()
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

During rebuild ice_ena_vsi() is called to recover the VSI state.
This function assumes the PF VSI is always to be enabled, however,
it's possible that during reset/rebuild the interface can be
brought down.  If this occurs, we can attempt to bring up the PF
VSI on a downed interface which can lead to various crashes. If
the interface is not running, do not bring up the associated VSI.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d75bfa832332..846cd79240d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3737,8 +3737,6 @@ static int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
 				err = netd->netdev_ops->ndo_open(netd);
 				rtnl_unlock();
 			}
-		} else {
-			err = ice_vsi_open(vsi);
 		}
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
