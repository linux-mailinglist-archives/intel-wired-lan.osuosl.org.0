Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8884281462C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 12:03:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15EEA83DB5;
	Fri, 15 Dec 2023 11:03:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15EEA83DB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702638237;
	bh=0jz6e1wRZQj9BZC0avSXIZ/cw/ZvZyl+g9FJ2d/UX8w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uYoWtNZ8xkXemdgaSoTYivBpUrzg+B2a3/YsdIkR3ISEu9xioknJ8mUZDq327B/1c
	 NaTtjrZiUPY4EW85w1zrAJCr0dJqAMcGLI36p00D5/tVQ7/EEm2iP5i3ubAHdX707F
	 hDpu3g5PbSYxOAfpQ7GeuG2aP+iBDWJBtKAoGy5Rc5moF+L302DbyDS8SOzwPq4M0q
	 ac+jr/Kic83b91JFb9UQzUHzZ4W6mIZy8g2kjv23Pwh/YCZ/mySqJOlFk389e5rmqd
	 DSbQw7Ea/PDcmSq9Y1oNIw4SlD+Krgs7s+JQt4J9Tiv+8PFSQpv9bPY90W1NccqGqX
	 YQJ5EbS5Uhftw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52BJF5Hjt7qY; Fri, 15 Dec 2023 11:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA84181EDE;
	Fri, 15 Dec 2023 11:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA84181EDE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1ACF01BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 571A683D87
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 571A683D87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WEoK8euS__a8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 11:03:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D224831BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 11:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D224831BD
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="385679108"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="385679108"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="918408308"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="918408308"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2023 03:03:42 -0800
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A003639C83;
 Fri, 15 Dec 2023 11:03:41 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Dec 2023 12:01:56 +0100
Message-Id: <20231215110157.296923-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231215110157.296923-1-wojciech.drewek@intel.com>
References: <20231215110157.296923-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638224; x=1734174224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=izoEArmY3BTSCQrEPl2eZ2gxCJtnlinZSxzFEQRzkJk=;
 b=Ft0IY+dw0JN419jMADXY78lQxcW2SG5LfMU7YFZ2/CFhMc75T6txTwek
 VNA4cID+0lGvIDTxeUBan4NDVlDmRTdzSfdfhVx/2yBUCTkqXrImBJYz5
 2E7gMWkX83TnqeCNRGs0pKUC0Th40q56fX9jNFpC5Gn1HlLSVNBo5dafm
 ilJLEjk9X+OSgrN7X09uIhOvSom0ZCpZdGNeNthBHHY/o4LQlhvE8w5M3
 aOEF9Ohcq+zy4H9EGT5z3MjOMusX198s73R4Pgzagm+xNcwExp5vBc4mW
 kA/obafEz1Z423mxD13ttPawJgl6d3rjuWkb+PFfna+5t3VMbY2uC7lvY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ft0IY+dw
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix link_down_on_close
 message
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>

The driver should not report an error message when for a medialess port
the link_down_on_close flag is enabled and the physical link cannot be
set down.

Fixes: 8ac7132704f3 ("ice: Fix interface being down after reset with link-down-on-close flag on")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Katarzyna Wieczerzycka <katarzyna.wieczerzycka@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cfa584627993..67c2ed2e61f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2145,7 +2145,7 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 
 	/* Ensure we have media as we cannot configure a medialess port */
 	if (!(phy->link_info.link_info & ICE_AQ_MEDIA_AVAILABLE))
-		return -EPERM;
+		return -ENOMEDIUM;
 
 	ice_print_topo_conflict(vsi);
 
@@ -9295,8 +9295,12 @@ int ice_stop(struct net_device *netdev)
 		int link_err = ice_force_phys_link_state(vsi, false);
 
 		if (link_err) {
-			netdev_err(vsi->netdev, "Failed to set physical link down, VSI %d error %d\n",
-				   vsi->vsi_num, link_err);
+			if (link_err == -ENOMEDIUM)
+				netdev_info(vsi->netdev, "Skipping link reconfig - no media attached, VSI %d\n",
+					    vsi->vsi_num);
+			else
+				netdev_err(vsi->netdev, "Failed to set physical link down, VSI %d error %d\n",
+					   vsi->vsi_num, link_err);
 			return -EIO;
 		}
 	}
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
