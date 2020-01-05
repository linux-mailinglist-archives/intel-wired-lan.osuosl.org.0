Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EA71306D5
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2020 09:46:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DD232044F;
	Sun,  5 Jan 2020 08:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-X4ZdVin4O3; Sun,  5 Jan 2020 08:46:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6E59C2041B;
	Sun,  5 Jan 2020 08:46:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D1A11BF333
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 08:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D82AB8700E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 08:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dzWIhhTvuy7 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2020 08:46:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41BF686D11
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2020 08:46:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 00:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,398,1571727600"; d="scan'208";a="394731322"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.74])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2020 00:46:02 -0800
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  5 Jan 2020 00:46:00 -0800
Message-Id: <20200105084600.4025394-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net] i40e: Fix receive buffer starvation for
 AF_XDP
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
Cc: Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Magnus's fix to resolve a potential receive buffer starvation for AF_XDP
got applied to both the i40e_xsk_umem_enable/disable() functions, when it
should have only been applied to the "enable".  So clean up the undesired
code in the disable function.

CC: Magnus Karlsson <magnus.karlsson@intel.com>
Fixes: 1f459bdc2007 ("i40e: fix potential RX buffer starvation for AF_XDP")
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 42058fad6a3c..1b13d8e0d67a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -114,11 +114,6 @@ static int i40e_xsk_umem_enable(struct i40e_vsi *vsi, struct xdp_umem *umem,
 		err = i40e_queue_pair_enable(vsi, qid);
 		if (err)
 			return err;
-
-		/* Kick start the NAPI context so that receiving will start */
-		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
-		if (err)
-			return err;
 	}
 
 	return 0;
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
