Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 404CD511458
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Apr 2022 11:42:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A64CA60E4B;
	Wed, 27 Apr 2022 09:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JUj93WWQ1gE9; Wed, 27 Apr 2022 09:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3B8260B64;
	Wed, 27 Apr 2022 09:42:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 794921BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 09:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 658D4418AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 09:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-o2nT9E9NbJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Apr 2022 09:42:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 309BB4189B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 09:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651052546; x=1682588546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kykHgQNYilDf0hUDj0hQwg/iQxSm7BW3sdiaamLSNDw=;
 b=NgZLwxErP1JkSHkKitp9xq/UvDHiyB9f7kOtIoWU8jkC8ZWRdn5V5OO5
 00suwQ8D6dK9JPQy1gWolY/aSU1DVcKT1yyi8h6YQP1gjrsKOt24nmjWM
 QNIhVQEZ4L4A9X7GFfnz7TNkPVkSGHjNURONAyVNDpNwiyjM6DGgFeG0I
 jOeA6gIl7V23r8Re79BqGKA+fflR+RIjzvAthNE2uDFMteVF+ulbefWxX
 VDhPlG5g8cpqLRXIg5mNbf19EzNDCAmi47UbwqRYJcd96MkljVz96pAL/
 kTDIqq8tpBtd5v468T9LNQOBbV5SpgU5zuXqjNJNjyrr/mHN+3e5e94jM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="247806996"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="247806996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 02:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="580501424"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by orsmga008.jf.intel.com with ESMTP; 27 Apr 2022 02:42:24 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Apr 2022 11:52:20 +0000
Message-Id: <20220427115220.163736-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix error when changing ring
 parameters on ice PF
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
v3: Correct patch to be send on right tree
v2: Changed unnecessary parentheses
---
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
