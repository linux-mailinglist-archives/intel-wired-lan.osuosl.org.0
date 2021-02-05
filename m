Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB67310812
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Feb 2021 10:41:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA7A987051;
	Fri,  5 Feb 2021 09:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1s6vGC9c2ozA; Fri,  5 Feb 2021 09:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF03A8705C;
	Fri,  5 Feb 2021 09:41:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C14051BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 09:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD11F86A88
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 09:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FYou_hoshQD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Feb 2021 09:41:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 39F0486A84
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 09:41:27 +0000 (UTC)
IronPort-SDR: +rS5g7L/AXSW2vRQC4mmhtfnG3ipAs6cLD5+ELnaFaq1cdJlmPfP6d2JU5RecQGNOmvhKa201l
 4MMocy2IlRVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181474582"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="181474582"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 01:41:26 -0800
IronPort-SDR: tgKGM9DBc2r9M16SPd4GSteH+hJV9/Yrd0qOmYTRs41dYiyodTY11pGoxo95HrscdpDI4sQKhj
 13vCyeF8qMfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="415970552"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Feb 2021 01:41:25 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Feb 2021 09:41:15 +0000
Message-Id: <20210205094115.15222-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix return of set the new
 channel count
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixed return correct code from set the new channel count.
Implemented by check if reset is done in appropriate time.
This solution give a extra time to pf for reset vf in case
when user want set new channel count for all vfs.
Without this patch it is possible to return misleading output
code to user and vf reset not to be correctly performed by pf.

Fixes: 5520deb15326("iavf: Enable support for up to 16 queues")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3ebfef7..d9ed4d4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1522,6 +1522,7 @@ static int iavf_set_channels(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 num_req = ch->combined_count;
+	int i;
 
 	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
 	    adapter->num_tc) {
@@ -1544,6 +1545,20 @@ static int iavf_set_channels(struct net_device *netdev,
 	adapter->num_req_queues = num_req;
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_schedule_reset(adapter);
+
+	/* wait for the reset is done */
+	for (i = 0; i < IAVF_RESET_WAIT_COUNT; i++) {
+		msleep(IAVF_RESET_WAIT_MS);
+		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
+			continue;
+		break;
+	}
+	if (i == IAVF_RESET_WAIT_COUNT) {
+		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
+		adapter->num_active_queues = num_req;
+		return -EOPNOTSUPP;
+	}
+
 	return 0;
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
