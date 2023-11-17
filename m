Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A52D7EF66E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 17:44:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0570C41F7D;
	Fri, 17 Nov 2023 16:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0570C41F7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700239481;
	bh=9qzsbWlTUkoVq5XE09MgvmCrx0zccU8bPyvhz4HdGjc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ENB1dGBAEZrTbXObyUSQzv/rnfiCk5Gy2RJBXj+6rgpQ8lozUXLaWQM8So6Q2m19+
	 NyEk+ib4sIbWfbMlbAsI49fpo5Wn0Rm2gd+x6pWetKm6Gf4869le4DryfaRsXzVNOS
	 4G7ffrQa6tsHBueS0lqrK4FTqQgxSkSYVCsxcXMWNof+d4MV1Qo/7LDsOEbw0KL0Vc
	 kk3cgYW3GIf/tj/lthAfRN8n1QHsOWm0oD93SPPGyWo6O5beCjuQ40ZgMoutRCcaSr
	 WgdnwA6pV47qMRwTwhCTOuXmuU8kAn6Nq5eSmxFUm9A9CwVLB9eOBUIx9djAoYQNBV
	 T4hozz77ScmpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fInLVcEqIgv9; Fri, 17 Nov 2023 16:44:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D89D41F58;
	Fri, 17 Nov 2023 16:44:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D89D41F58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB7171BF31D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 16:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F53C612B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 16:44:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F53C612B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvryzAmV4Pc4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 16:44:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9632860AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 16:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9632860AA4
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="395255359"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="395255359"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 08:44:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759222042"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759222042"
Received: from sbahadur1-bxdsw.sj.intel.com ([10.232.237.139])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 08:44:31 -0800
From: Sachin Bahadur <sachin.bahadur@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Nov 2023 08:44:27 -0800
Message-Id: <20231117164427.912563-1-sachin.bahadur@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700239473; x=1731775473;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eIGdtsz/mNJhff6NvN0ClvX0hucp+LPmBNcUNRv5aF4=;
 b=W+/cSjxv9/8lfhzKOUcbcL9nHEKOnawIkuUB30ZVQanMPRtTYaDUWEFF
 190o3BuMbiiTeKnF88kG0TgVgdi/UC7BPf1W/X3x91ob/ytipHV9WFUtc
 q6NI0Y6hhpEUl/ydYqL3DRMB8KAWIMNQtlqIgsa5yU9IDHipsKMKNd8LG
 g0J5CdaLPkvCT2plRPyqNmz00cmLUUtDvvlAahlPltx4YlO9LaWUUMhRl
 JIEbXXSB+rzpR82kG7I8gvxzfXw1QHNbhwIGbVVZlF1/0lXSBtaURf9F/
 kpZJCgHDgL1+dq2vU+Z3efW1cnLCXCe0SZcVF1TAXWbUSCWGr5EXsWUkg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W+/cSjxv
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Block PF reinit if
 attached to bond
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF interface part of LAG should not allow driver reinit via devlink. The
Bond config will be lost due to driver reinit. ice_devlink_reload_down is
called before PF driver reinit. If PF is attached to bond,
ice_devlink_reload_down returns error.

Fixes: trailer
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index f4e24d11ebd0..5fe88e949b09 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 					   "Remove all VFs before doing reinit\n");
 			return -EOPNOTSUPP;
 		}
+		if (pf->lag && pf->lag->bonded) {
+			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit");
+			return -EBUSY;
+		}
 		ice_unload(pf);
 		return 0;
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
