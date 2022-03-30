Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9824ECB2E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 19:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D0E041D7F;
	Wed, 30 Mar 2022 17:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9mdSknaIX-Rb; Wed, 30 Mar 2022 17:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6561941C90;
	Wed, 30 Mar 2022 17:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 898711BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74D4B41C7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92EtfCQx5ZPM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 17:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6075441C90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648663145; x=1680199145;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1eLD+I/AaMuPxfL45vS15TN3rYnnvwo5CIQj2Yp3zMk=;
 b=LBojFs6fwzwoL8zfd8Acyrh2JAsw8CJUtcWZYY2F6Py1nfSfscyxkMFY
 pJBgDbdypnNq9vLLnRXqa6NZSJBdFvlbjPpj3WIn6F5Dl7hlXPE56ouLb
 JnNotBj4lbOB3P54GviillwdBK/iCeVh1CmiAfsj/S0m2f0BO4djDQX4y
 Wc7x89xfRS5fXkdtyeifHGAyEXliRTujCwl8qvEgZyztyvMENIwJu5Z7Z
 ZplFa4Q+O43OuNCMBCGIqtAfo4+KPGS1ue4oS7AJS52LI3PeAg4Jq3wYs
 GsZG0yZmqm3Fe8CZm1pLrmXBk19egl38AVJQ3phmQHYOZJbUNxx6lNGGJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="241760626"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="241760626"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 10:59:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="546958180"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by orsmga007.jf.intel.com with ESMTP; 30 Mar 2022 10:59:03 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Mar 2022 20:05:51 +0000
Message-Id: <20220330200551.1319989-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix error when changing ring
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
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb56714beb0..762ef6fb5585 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -631,6 +631,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
 
+	if (adapter->state == __IAVF_RESETTING ||
+	    adapter->state == __IAVF_RUNNING &&
+	    (adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
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
