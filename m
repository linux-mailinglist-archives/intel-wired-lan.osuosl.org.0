Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A52512F6C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 11:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1957440A82;
	Thu, 28 Apr 2022 09:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SgV97A8kB2fa; Thu, 28 Apr 2022 09:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 180E440A19;
	Thu, 28 Apr 2022 09:30:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 306541BF36A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 09:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D224417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 09:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xbqocTw-sdbz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 09:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92755417BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 09:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651138217; x=1682674217;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lGbUEzbNZbylLMSXg7bcPe+DpKe3lVTc/wOfmVl+bcM=;
 b=OGVaLc++kkezQttXr88hmO5JVxGZRIPPGClUOoZWLg1nr3WALjsrVHLD
 Fjrq3sbypKk5NoLdRTZvV3g65d0CyUIW9cQpeILQKgyNJAK61Gb8o1w3/
 pePsWdxH/sO2qktRM3pb0AdUBiorzF0j7rgbnXlpKD6j6UQTCXDqvYQGg
 2+gnRrMxLfUFobqgP0c2JDFPPtOmmx+MH60AiQ1vusgjO6hGhbU7s9MHs
 qmtGMNiqTHOYXqLYkwlRLAoJXXRbPboyahIctUEJSzY+3Kj69mz3ZGDzI
 e2rnOCcYS18iGw2VP0wcOiC9N+RywVUVGWY8QE1VXoi84bduUeAKPcMBz w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="248153518"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="248153518"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 02:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="533764693"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by orsmga006.jf.intel.com with ESMTP; 28 Apr 2022 02:30:15 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Apr 2022 09:30:13 +0000
Message-Id: <20220428093013.186832-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v4] iavf: Fix error when changing ring
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
v4: Changed order of if statements suggested by community
    Answer to question:
    Can't we wait for the device to get into the right state?
    Throwing EAGAIN back to user space is not very friendly.
    Answer:
    When we have state which is running, it does not mean
    that we have queues configured on PF. So in order to
    configure queues on PF, the IAVF_FLAG_QUEUES has to be
    disabled. I use here EAGAIN because as long as we are not
    configured with queues, it does not make any sens to trigger
    command and we are not sure when the configuration of queues
    will end - so that is why EAGAIN is used.
v3: Correct patch to be send on right tree
v2: Changed unnecessary parentheses
---
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb56714beb0..15e02a6105b9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -628,6 +628,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 new_rx_count, new_tx_count;
 
+	if (adapter->state == __IAVF_RESETTING ||
+	    adapter->state == __IAVF_RUNNING &&
+	     (adapter->flags & IAVF_FLAG_QUEUES_DISABLED))
+		return -EAGAIN;
+
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
