Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F52B900327
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 14:15:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3539941A23;
	Fri,  7 Jun 2024 12:15:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QiYnqgyl_O8M; Fri,  7 Jun 2024 12:15:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B709F41A2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717762506;
	bh=Ev8mdZip/ilhN+dDBcsrwZUMD6GJ/lyRfB51o5lFTuk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pQkDgknJ4epelQwdl93eBtN99qHVOPvdqXRV2SFT0ahsOJCQvkoFNpS+cZw9HkSL+
	 jXncask+7YO03gqYO0WToh2CF6WsJDA0aug3HOIB7aCbVR73ssK80DCYO0obYNJi4p
	 PFkOCOa3dz3aPcg74uwbFTiPZtwMFMAVCChEBD9FSV4RXe6OAirzVn6BT8wh7mT+ah
	 AjwYixcm357Wp9x697xsQwv/MmbsZSvnlrbiht0HalQHoaXNN9OIYDZS9WFctQA6lE
	 NhcDa2I1Xupwa6BBfp/0ICxfo2HgJ5pxqqzIjj9E7OuTGBx0NJY0WskHvigT5ez4qp
	 7RRmSY0+DmrYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B709F41A2A;
	Fri,  7 Jun 2024 12:15:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 741831BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 12:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DC9340B17
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 12:15:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Uzf9FhHXvKo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 12:15:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE43E40026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE43E40026
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE43E40026
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 12:15:03 +0000 (UTC)
X-CSE-ConnectionGUID: Js0Ly0TzRiOtbS38M3MEDA==
X-CSE-MsgGUID: ujkBO0KATZuD9YugEHEarA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14312976"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14312976"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 05:15:03 -0700
X-CSE-ConnectionGUID: gowl1lNuRrSYgMKN9jm7AQ==
X-CSE-MsgGUID: SdhAQElOS1+QrFSfvKb8pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="38304095"
Received: from unknown (HELO localhost.igk.intel.com) ([10.91.240.220])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 05:15:00 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Jun 2024 14:15:52 +0200
Message-ID: <20240607121552.15127-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717762504; x=1749298504;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HQUYtmzjk3nbtKwBo0iMqw6E+1YQOvSX8err0DHZcxU=;
 b=l3NIgCE2068r76frM88ZpS0iWoOIFbOfNzzK5uJeM6MtRMGGhwxjL0ci
 r3mmKuD4DvViTNMXm/pqJjkreiQU5gTCGjDpdF/hm2AdgBUwjp60Qu9M9
 GLoLWMROwFHZIlAm9kg2frx/iXdX+n2ughrJIUv9MNy/cT05WQ/qfpeUs
 NSeiOf1HyQKEDYfi5EhsEAag2Q4vefzMFn6R8rjymsy+j97Xf5fZo8hKN
 ZIEJrc5+a9FuzCTp22o3tEFkWyD7EbUBkGdnjCSW+VfrbK7GRJ4INS5hd
 P6PzDocM4kCKptjOPiJ3vxRn0fVgg+P0MkVHQ3dVKMhtP34gEjzM3FtNN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l3NIgCE2
Subject: [Intel-wired-lan] [PATCH iwl-net v5] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>

Getting coalesce settings while reset is in progress can cause NULL
pointer deference bug.
If under reset, abort get coalesce for ethtool.

We cannot use ice_wait_for_reset() since both the ethtool handler and the
adapter reset flow call rtnl_lock() during operation. If we wait for
reset completion inside of an ethtool handling function such as
ice_get_coalesce(), the wait will always timeout due to reset being
blocked by rtnl_lock() inside of ice_queue_set_napi() (which is called
during reset process), and in turn we will always return -EBUSY anyways,
with the added hang time of the timeout value.

Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce")
Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
Changes since v1:
* Added "Fixes:" tag
Changes since v2:
* Rebased over current IWL net branch
* Confirmed that the issue previously reported for this patch [1] by
Himasekhar Reddy Pucha was caused by other, internally tracked issue
Changes since v3:
* Using ice_wait_for_reset() instead of returning -EBUSY 
Changes since v4:
* Rebased over current IWL net branch
* Rollback the use of ice_wait_for_reset() due to rtnl_lock() deadlock
issue described in [2] and commit msg

[1] https://lore.kernel.org/netdev/BL0PR11MB3122D70ABDE6C2ACEE376073BD90A@BL0PR11MB3122.namprd11.prod.outlook.com/
[2] https://lore.kernel.org/netdev/20240501195641.1e606747@kernel.org/T/#m1629ecfe88d26551852c5c97982cd10314991422
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 62c8205fceba..2ffe864a364c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3810,6 +3810,9 @@ __ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
+	if (ice_is_reset_in_progress(vsi->back->state))
+		return -EBUSY;
+
 	if (q_num < 0)
 		q_num = 0;
 
-- 
2.44.0

