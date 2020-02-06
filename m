Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418A9154A94
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 18:53:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFF6887C0D;
	Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KhGE9TRL1X5C; Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3275087BFE;
	Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B038D1BF326
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD62B86119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WkArjQpQpv4q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42459860FC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 09:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="255160932"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2020 09:53:07 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2020 01:20:02 -0800
Message-Id: <20200206092013.23388-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
References: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v3 04/15] ice: Don't allow same value
 for Rx tail to be written twice
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

From: Brett Creeley <brett.creeley@intel.com>

Currently we compare the value we are about to write to the Rx tail
register with the previous value of next_to_use. The problem with this
is we only write tail on 8 descriptor boundaries, but next_to_use is
updated whenever we clean Rx descriptors. Fix this by comparing the
value we are about to write to tail with the previously written tail
value. This will prevent duplicate Rx tail bumps.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 35bbc4ff603c..6da048a6ca7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -10,7 +10,7 @@
  */
 void ice_release_rx_desc(struct ice_ring *rx_ring, u32 val)
 {
-	u16 prev_ntu = rx_ring->next_to_use;
+	u16 prev_ntu = rx_ring->next_to_use & ~0x7;
 
 	rx_ring->next_to_use = val;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
