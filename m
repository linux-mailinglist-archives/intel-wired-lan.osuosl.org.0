Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E875106DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 20:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4185B60EB5;
	Tue, 26 Apr 2022 18:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ArpJ0dzRapOg; Tue, 26 Apr 2022 18:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F8B060E99;
	Tue, 26 Apr 2022 18:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E3061BF592
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 18:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC54A40A12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 18:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6P02d4gaNJUj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 18:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51EFB404B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 18:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650997638; x=1682533638;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mNqYhR8cAsExd+VYBzhzagj6d6+FPV1oS1Sz+4a6pe4=;
 b=ghCkUmpK6GSTGpXO0oUPXuPHCe6dxm/bUsCsrRU7jqzqyUXnNYkuxIr2
 Rk28VE1VYWlapGSbOoyBlxfQ6o/du2xAtUhcNJzKlhhpgUj7WvW6kNk2h
 yofQLuCLVg77oShsYkhQ7REDOOYGUPe/ckazR6cs1jXRj95FYYFh4PKrZ
 cQ4fmua4aC9yA62EA1FM795O9nthF7bS8HV0icobRXKx1atRV6u2WxitI
 VP8RfnG9upnTK1dTsPdlSOLBtKv7IjQFQlJwLbHSKXNb2ZzNIxQnhVL3q
 DeHNozJXcaUUCVzHVgVst1Ly632reHm9RtW45pkThGuqyfGjnYX2UM3s5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="264528981"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="264528981"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 11:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="628654016"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by fmsmga004.fm.intel.com with ESMTP; 26 Apr 2022 11:27:16 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Apr 2022 20:37:07 +0000
Message-Id: <20220426203707.149900-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix error when changing
 ring parameters on ice PF
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Michal Maloszewski <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reset is triggered when ring parameters are being changed through
ethtool and queues are reconfigured for VF's VSI. If ring is changed
again immediately, then the next reset could be executed before
queues could be properly reinitialized on VF's VSI. It caused ice PF
to mess up the VSI resource tree.

Add a check in iavf_set_ringparam for adapter and VF's queue
state. If VF is currently resetting or queues are disabled for the VF
return with EAGAIN error.

Fixes: d732a1844507 ("i40evf: fix crash when changing ring sizes")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
v2: Changed unnecessary parentheses
--
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb56714beb0..a27df8af5cff 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -631,6 +631,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
 
+	if (adapter->state == __IAVF_RESETTING ||
+	    adapter->state == __IAVF_RUNNING &&
+	     (adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
+		return -EAGAIN;
+
 	if (ring->tx_pending > IAVF_MAX_TXD ||
 	    ring->tx_pending < IAVF_MIN_TXD ||
 	    ring->rx_pending > IAVF_MAX_RXD ||
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
