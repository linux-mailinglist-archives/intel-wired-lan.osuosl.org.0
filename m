Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0598E4ECAF0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 19:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B254A812F6;
	Wed, 30 Mar 2022 17:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I8GfsNlnYwCx; Wed, 30 Mar 2022 17:43:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8F69812D7;
	Wed, 30 Mar 2022 17:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 074921BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:43:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6E1B41A4C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oao_lC5TA6DG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 17:43:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86E6E41A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648662230; x=1680198230;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l7OCpps+6eP7G65Pw1KXn5bCiaOFHoNWSRDN7WocL6w=;
 b=f/pwukDDoHNQyDDO2te9irAkc96J3ryf1pSp6HgaTFo2/EIDY5wCNTOK
 TNbUSWBQ3PsZe6fUmj2Qzo/hbU52RQ8/7ilgleqal6V1GNCYqgLiPVB1A
 nUwMc4wfhe5YDG/B9lgfVdugU9ej4q/vN5cOkyTJEeGibZ90cCYR5xpOu
 CWiOAqWObxNOP/HFtpb9Fw/GvRvNeOrcd1Nc1FoX1zmJ/rbPjvhhowdpi
 DTThI+uHWRCdhtni3RHXMimZND8W7/1/uERyoE8mdLaIax6QkHBMT9+lm
 5xZrCEOst3XKClCDf8Sp1exLJHdZNDcdSKp7GSPhXB7Zmfl/wQOcv8TlJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320301095"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="320301095"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 10:43:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="788088553"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2022 10:43:48 -0700
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Mar 2022 19:50:36 +0000
Message-Id: <20220330195036.1319631-1-michal.maloszewski@intel.com>
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
Title: iavf: Fix error when changing ring parameters on ice PF
Change-type: DefectResolution
HSDES-Number: 18021295299
HSDES-Tenant: server_platf_lan.bug
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
