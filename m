Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4EC5AE3EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 11:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E39282D0C;
	Tue,  6 Sep 2022 09:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E39282D0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662455742;
	bh=yHsqjSUi+ICug+flMY2xK4O0hkUK2pECgQQE83E0+40=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TowUgAUQAZoOPwGYRMc/mksbiNCfjZTS7d6Zn2EnjzXND3UjLfbJRmSt7QOG+mRc/
	 hf/nPvDjrCRHXaxAD0gNjnDZesBKC9bE9L22E17L5jIygjLt+Rs8Uyosy9iY3yKd/j
	 hc7hGxJjNGvT9v8yYZCR3ZAGE8ESpZUt9wOmCj1dgO9ksnNCN4ehlf39nOF2JvxJvl
	 HTxU5WXkN1hJ7/1OtiuOLH7Tfv03Xq9UntoA25RYnmsNqh9YzhxAbPw2lWn9SP2cku
	 XvD7NW2q991TA20723YlnUf92PnoLGGMnMo0COmmh6coNmqYB5CVkW6Ry3HMXdMQvR
	 EbcQwFtci6MJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2X0h4_1Nhn9; Tue,  6 Sep 2022 09:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A24D82CEC;
	Tue,  6 Sep 2022 09:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A24D82CEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2FC91BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 892D1404AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 892D1404AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NSLTr6kORa_O for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Sep 2022 09:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 481364175B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 481364175B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 09:15:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297331018"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="297331018"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 02:15:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="647164008"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2022 02:15:28 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Sep 2022 11:14:10 +0200
Message-Id: <20220906091411.910107-2-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220906091411.910107-1-mateusz.palczewski@intel.com>
References: <20220906091411.910107-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662455729; x=1693991729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KKwM9ounRw9PM8wZzMt5PpJQe1TO43ZM9ybvhxZP9Lo=;
 b=YLTEf6RnAP0vZ3fMoNO0pbx9/tpMHZK9NOwv0K6PJwXqTkaGPV6sMvIJ
 10F/b4B3WwWO1g3ZPp6AFUegzkpnZbWjJ/aBfN4VLdwTurFfGyYeFO6aU
 Wa4nAbylDxkS9EghUdCx6tybWKoqSzbURudl5SCEdhRgBnJwnbo67G+Nc
 E8QXOgMLMQVNG7c8IAUnl4KNU4KxPy7PSI8CBfUVgK9NI0gce6+q55phq
 A7Nw++udAbTeDpoznwqdyiD6OGriz/NvwKA+F3IsBUmgmNqkpWHr13RAZ
 D6QhSDqgHbr7qnrtlrvQ2CTwFflMI7WH/uZdzrAjvm8Lzp31wVIbZ9vUF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YLTEf6Rn
Subject: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Fix vf set max mtu size
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
is not aware whether it's in a port VLAN. This mismatch in sizes
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
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 15ee85dc33bd..e468f1324541 100644
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
 
+	if (max_frame > IAVF_MAX_RXBUFFER || max_frame < 64)
+		max_frame = IAVF_MAX_RXBUFFER;
+
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
 		dev_err(&adapter->pdev->dev, "Cannot configure queues, command %d pending\n",
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
