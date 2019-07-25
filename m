Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE76575564
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 578CB864EC;
	Thu, 25 Jul 2019 17:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M876LNdm5h5b; Thu, 25 Jul 2019 17:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B089864D6;
	Thu, 25 Jul 2019 17:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55B0C1BF988
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 50A2722253
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DbU75U3rXVoY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id E09302264C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973710"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:35 -0700
Message-Id: <20190725085541.55104-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 09/15] ice: Do not always bring up
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
index 6f02c29d7830..be872336e08e 100644
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
