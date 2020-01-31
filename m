Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F6814F455
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 23:12:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B71A86B5A;
	Fri, 31 Jan 2020 22:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5WeCTk-9ZxFv; Fri, 31 Jan 2020 22:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D60586B54;
	Fri, 31 Jan 2020 22:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFE911BF9BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ACA8E88356
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DAGlKdShRID for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 22:12:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B23888398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 22:12:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 14:12:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="310126634"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 14:12:02 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 31 Jan 2020 05:38:56 -0800
Message-Id: <20200131133905.42518-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
References: <20200131133905.42518-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v2 06/15] ice: Remove CONFIG_PCI_IOV
 wrap in ice_set_pf_caps
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Remove unnecessary CONFIG_PCI_IOV wrapping in ice_set_pf_caps. None
of the data structures accessed within the block are wrapped with
this flag. When CONFIG_PCI_IOV is undefined, pf->num_vfs_supported
will be 0 anyway.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d4bc6fd3321c..cddadd308253 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2677,14 +2677,12 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 	if (func_caps->common_cap.dcb)
 		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
-#ifdef CONFIG_PCI_IOV
 	clear_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
 	if (func_caps->common_cap.sr_iov_1_1) {
 		set_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
 		pf->num_vfs_supported = min_t(int, func_caps->num_allocd_vfs,
 					      ICE_MAX_VF_COUNT);
 	}
-#endif /* CONFIG_PCI_IOV */
 	clear_bit(ICE_FLAG_RSS_ENA, pf->flags);
 	if (func_caps->common_cap.rss_table_size)
 		set_bit(ICE_FLAG_RSS_ENA, pf->flags);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
