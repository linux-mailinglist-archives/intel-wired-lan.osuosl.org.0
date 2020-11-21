Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA98D2BBB3B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 877B887285;
	Sat, 21 Nov 2020 00:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HtnvS+e8gAn7; Sat, 21 Nov 2020 00:46:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A443872E0;
	Sat, 21 Nov 2020 00:46:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6F71BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 09A542E133
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAnFadLqUo38 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A0102E13A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:36 +0000 (UTC)
IronPort-SDR: 1EYv7X09AMU1I9M8Qrg19HDM/ZtbRzfZGLOwhAqVn/Z7Z6tgXWg+KRUBJSTs7rSAjFXYAjxEoK
 5BcPSocFCfFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="235707874"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="235707874"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:34 -0800
IronPort-SDR: bosGqiOq8W1yFUfkUYs3llQRAG2ugGgzEnnOtfEBHc8vRvNZ+QzrutFrKarwbVDSk3F8XDWH45
 EkwKIust3RzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520169"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:38 -0800
Message-Id: <20201121003938.48514-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 14/14] ice: Fix trivial error message
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

From: Mitch Williams <mitch.a.williams@intel.com>

This message indicates an error on close, not open.

Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump version")
Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 617e5c5f42cb..3bb3ed064b51 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6243,7 +6243,7 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 
 		err = ice_down(vsi);
 		if (err) {
-			netdev_err(netdev, "change MTU if_up err %d\n", err);
+			netdev_err(netdev, "change MTU if_down err %d\n", err);
 			return err;
 		}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
