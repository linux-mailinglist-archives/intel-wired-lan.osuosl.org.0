Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 283675B6E7D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 15:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C4E341548;
	Tue, 13 Sep 2022 13:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C4E341548
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663076332;
	bh=YTCxq+h0Hg4CA9GhwBqH/fX+yIb1CGcYfBJJc3OHniA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RrMA3WEz9RZSy+YQMzQ1AlyLd+h+/QcAhNL4CuZ0tig0Qx2D3OL6kOuVDIHzME7S8
	 X6WHsfX8yuYpXbAIFbcMmqo7jC9veQTuhTOWUipXqjoDazpjuLVx8jzauNbjpG8A95
	 21TKlZxwTSvl84Q2P2bhslwNngcFhsJT+Rv4iCKGu6enBHTu1WqaqXXDxpHwSewzbZ
	 qJ8Ow1KfYr5ZhZU9JwAbirltgHDRjA2wqtx5gtYMJrYcSz4/pjKTR2ulvyFXBPC2bf
	 nEDO8/3Z9iJlJ58D1dUU5yzaip9QY7LwBSI6zh5/dYZGuo7g/hAg0O/kt4j3dOTWCl
	 sZitVNv6qr/hQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7XZBkSmZWap; Tue, 13 Sep 2022 13:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F76C408C4;
	Tue, 13 Sep 2022 13:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F76C408C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40CD41BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19C3440A06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19C3440A06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L17aMJbEOlfX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 13:38:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 625B440490
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 625B440490
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 13:38:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298141338"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="298141338"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678569560"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2022 06:38:40 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Sep 2022 15:38:35 +0200
Message-Id: <20220913133836.48284-2-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913133836.48284-1-mateusz.palczewski@intel.com>
References: <20220913133836.48284-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663076321; x=1694612321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E7VFjH6Vn7bSHJLst+wb6RSeBcccjN+uuwxwMZfJKVY=;
 b=HAXOIkDVM+eAp5wNwTfppzHO9Tj59oCtQb7ebz+ewSKIvexlmMvKUW28
 Qf7zZq+7eTs6+jfkYeaxJVsDeM5BuUVo2WTlJ2vHbnqS1GAdWIkExu9ky
 81h2AUKsw/61pg41VFIg5RhljiPzMMz4Z+Tq9EdeGuLHJK2uXckVsCmpH
 c70LO9qPOf8SD1M7wqnBkI2NdmD48TNKyvgrfdETAPmGLOV/JY91htMVt
 H8Yi/yqyTgDxZJdldDzD/ywdD6K8XM4IPlweviN3AZ83n7hGPAWIt7ZuF
 ANMIIgh94g+RPGCfq3qiKJ3xpmgcAsIEqHWtI9nySxbsIj8gXhXTOHWyc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HAXOIkDV
Subject: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix vf set max mtu size
 with port vlan and jumbo frames
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

After setting port vlan and mtu 9000 on vf with ice driver there
was an iavf error
"PF returned error -5 (IAVF_ERR_PARAM) to our request 6".
It was caused by that during queues configuration vf's max packet
size was set to IAVF_MAX_RXBUFFER but on ice max frame size was
smaller by VLAN_HLEN due to making some space for port vlan as VF
is not aware whether it's in a port VLAN. This missmatch in sizes
caused that ice rejects queues configuration with ERR_PARAM error.
Proper max_mtu is send from ice pf to vf with GET_VF_RESOURCES msg
but vf does not look at this.

In iavf change max_frame from IAVF_MAX_RXBUFFER to max_mtu
received from pf with GET_VF_RESOURCES msg to make vf's
max_frame_size dependent from pf. Add check if received max_mtu is
not in eligible range then set it to IAVF_MAX_RXBUFFER.

Fixes: dab86afdbbd1 ("i40e/i40evf: Change the way we limit the maximum frame size for Rx")
Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed one check regarding !max_frame
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 15ee85dc33bd..5a9e6563923e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -269,11 +269,14 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
 void iavf_configure_queues(struct iavf_adapter *adapter)
 {
 	struct virtchnl_vsi_queue_config_info *vqci;
-	struct virtchnl_queue_pair_info *vqpi;
+	int i, max_frame = adapter->vf_res->max_mtu;
 	int pairs = adapter->num_active_queues;
-	int i, max_frame = IAVF_MAX_RXBUFFER;
+	struct virtchnl_queue_pair_info *vqpi;
 	size_t len;
 
+	if (max_frame > IAVF_MAX_RXBUFFER || !max_frame)
+		max_frame = IAVF_MAX_RXBUFFER;
+
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
 		dev_err(&adapter->pdev->dev, "Cannot configure queues, command %d pending\n",
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
