Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EB71C9FBB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B66718787C;
	Fri,  8 May 2020 00:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D+a2pJ7qONYN; Fri,  8 May 2020 00:43:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6303F87B49;
	Fri,  8 May 2020 00:43:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BE051BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5580D87C30
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzczjLpDBmBB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B1508787C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:34 +0000 (UTC)
IronPort-SDR: lgt1rgC0e2LGpv+SgzQ/SskN4xyvPoUaH7k9McebF7ERfAZAKCeZ4FQVSDR6iIB5i8twX571Jd
 ziO6xmqVn7Cg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:33 -0700
IronPort-SDR: 1Y6sTd6RuTvMa+PfW/coG4YJ6UKlQ0RcU0F+65OBHEPdfU+752pZSgYadjBIJPIEqBMQzalU+t
 reIahKct6Jng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468769"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:02 -0700
Message-Id: <20200508004113.39725-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 04/15] ice: only drop link once when
 setting pauseparams
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

From: Dave Ertman <david.m.ertman@intel.com>

Currently, the ice driver is setting a PHY configuration,
which causes a link drop, and then additionally it calls
for a nway_reset, which restarts auto-negotiation on the
link, which also causes a link drop.  These two link
events in such close timing is causing the FW to not be
able to generate a link interrupt for the driver to
respond to.

Remove the unnecessary auto-negotiation restart from the
set pauseparams flow.  Also remove error path that
would have performed an ice_down/ice_up as that is
also unnecessary.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 66d0bcc51ad9..db547c0c7c6f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2977,18 +2977,6 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		err = -EAGAIN;
 	}
 
-	if (!test_bit(__ICE_DOWN, pf->state)) {
-		/* Give it a little more time to try to come back. If still
-		 * down, restart autoneg link or reinitialize the interface.
-		 */
-		msleep(75);
-		if (!test_bit(__ICE_DOWN, pf->state))
-			return ice_nway_reset(netdev);
-
-		ice_down(vsi);
-		ice_up(vsi);
-	}
-
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
