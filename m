Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E04F482E84
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jan 2022 07:44:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AC694018A;
	Mon,  3 Jan 2022 06:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z0WC0yMyoeau; Mon,  3 Jan 2022 06:44:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47F454017C;
	Mon,  3 Jan 2022 06:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5AB891BF29D
 for <intel-wired-lan@osuosl.org>; Mon,  3 Jan 2022 06:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4363B4017C
 for <intel-wired-lan@osuosl.org>; Mon,  3 Jan 2022 06:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yY0f20xeb-ee for <intel-wired-lan@osuosl.org>;
 Mon,  3 Jan 2022 06:44:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1630A400BA
 for <intel-wired-lan@osuosl.org>; Mon,  3 Jan 2022 06:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641192268; x=1672728268;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VexU2vYK8lsl6XcDvNon0dUEvZ1SkM5vnwzT0pjJgoQ=;
 b=mtZpuDGVuKA5bR26ha3QCC4CUpcL3tqzcHAhQznv0SN3Jb1ng1/YT38p
 elfBybITuUOrfoKk5oH3mueIP89qolVNPOx0all1SIqEvpdDepKbrkRym
 fLkxdTYKfxVS0iDHIU730jgsBVepAayMe5I7F61z6O3qaN1xEE2EFHgIU
 3AcXJPZPMqdkvpRAhibevC54xPwgnFo4WHLjPujnc99jotMJQQRM9c8AR
 cxJwDW9mw0A2zVX2i1pqcvN+7NmFJOqgeVSMlOv/ylXbECvvtupORzTUC
 Eic53zj+ohX5OosOQ9UZ1s5Ev6FAkEGryn8r5wuxQyICu3Ilb7le8l7BS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10215"; a="239565006"
X-IronPort-AV: E=Sophos;i="5.88,256,1635231600"; d="scan'208";a="239565006"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2022 22:44:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,256,1635231600"; d="scan'208";a="525432486"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga008.jf.intel.com with ESMTP; 02 Jan 2022 22:44:26 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  3 Jan 2022 07:41:21 +0100
Message-Id: <20220103064121.2366-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: fix setting l4 port flag when
 adding filter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Accidentally filter flag for none encapsulated l4 port filed is always
set. Even if user wants to add encapsulated l4 port field.

Remove this unnecessary flag setting.

Fixes: 9e300987d4a81 ("ice: VXLAN and Geneve TC support")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index e8aab664270a..65cf32eb4046 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -709,7 +709,7 @@ ice_tc_set_port(struct flow_match_ports match,
 			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_DEST_L4_PORT;
 		else
 			fltr->flags |= ICE_TC_FLWR_FIELD_DEST_L4_PORT;
-		fltr->flags |= ICE_TC_FLWR_FIELD_DEST_L4_PORT;
+
 		headers->l4_key.dst_port = match.key->dst;
 		headers->l4_mask.dst_port = match.mask->dst;
 	}
@@ -718,7 +718,7 @@ ice_tc_set_port(struct flow_match_ports match,
 			fltr->flags |= ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT;
 		else
 			fltr->flags |= ICE_TC_FLWR_FIELD_SRC_L4_PORT;
-		fltr->flags |= ICE_TC_FLWR_FIELD_SRC_L4_PORT;
+
 		headers->l4_key.src_port = match.key->src;
 		headers->l4_mask.src_port = match.mask->src;
 	}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
