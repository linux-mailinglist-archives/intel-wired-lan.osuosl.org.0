Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CC36AF7EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 22:47:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 140BA40264;
	Tue,  7 Mar 2023 21:47:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 140BA40264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678225676;
	bh=MIBiKxGwplkRKGUfhWdAcM0Ud4cTVKRLACNN2Bv5S5E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oCbJjCZqYenfVuLcdvsqGoYDA6U0RiJz3i2My59xPMulbarFm260e4j0Pnr8i2vDA
	 tpRHdiSp1YabGDel0Qdcr6ZnJlUkfM6vg0ImFWcdWyn/HktNaVAViJze1aox2pgkeX
	 fR564MIxeAevx31Yqx/8EcbDKgWbLz7PxW4u9l6i1h5phKI/yo9TZwGNWiBW1OUu23
	 4yZZ86hnaOXg6ivhvgPHlij1qYqHh/6hsv65HovOTLmvf3Xpm6nw8CEF3jBP9qeD5l
	 7RKcEbXwELiAk+XVm4bBu0idlHUTuksCc1cGW2cuPCML5dQO345t9deUDlmvnfuxk3
	 YCjueXaeT0Shg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G2HUin8oobZh; Tue,  7 Mar 2023 21:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9543A40358;
	Tue,  7 Mar 2023 21:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9543A40358
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C20431BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 21:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A88E3400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 21:47:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A88E3400FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-F0TccgoHId for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 21:47:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2D4D400CF
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2D4D400CF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 21:47:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422253139"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="422253139"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 13:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="626692575"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="626692575"
Received: from gyorgysx-mobl2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.43.116])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 13:47:46 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Mar 2023 14:47:38 -0700
Message-Id: <20230307214738.2468357-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678225668; x=1709761668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QMLpHSEE2ZnqH4hy/lHlfCG9MRL3GLz9Fxt/Fl+n7Fc=;
 b=RBufmELky5ROEBLAHADrZEwZy6YMpAvPGNAKeopdrpmec6LgiDKUtZec
 qulbOPZ9BcJPKIxjAC2nWkz7L9ctO9eQvvJYgYx/HqXCOy1OYIzV2Q4Bg
 ylwsQm+4pMiT4akYxIv8vI/fJ2hsZpfpSRXlUEgHB0+4PmeusYapTGLZx
 MGgmouXUgCJCoTELzzRzzHFKBmwXx6JRPK3pDTeTV0nEnAM1AOGTI9EHy
 heVAh2e9DRqUXmNH1jQLOZ7qJyXOs9s064WBPsg+xijquNuUFMW4rCaZ3
 VmTuax9jlMyPoNdabpn2JR1bRVXZtA2VYgrgoSDLvrxUUiwQuB/jNFexc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RBufmELk
Subject: [Intel-wired-lan] [PATCH v2] iavf: do not track VLAN 0 filters
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
Cc: michalx.jaron@intel.com, Michal Kubiak <michal.kubiak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When an interface with the maximum number of VLAN filters is brought up,
a spurious error is logged:

    [257.483082] 8021q: adding VLAN 0 to HW filter on device enp0s3
    [257.483094] iavf 0000:00:03.0 enp0s3: Max allowed VLAN filters 8. Remove existing VLANs or disable filtering via Ethtool if supported.

The VF driver complains that it cannot add the VLAN 0 filter.

On the other hand, the PF driver always adds VLAN 0 filter on VF
initialization. The VF does not need to ask the PF for that filter at
all.

Fix the error by not tracking VLAN 0 filters altogether. With that, the
check added by commit 0e710a3ffd0c ("iavf: Fix VF driver counting VLAN 0
filters") in iavf_virtchnl.c is useless and might be confusing if left as
it suggests that we track VLAN 0.

Fixes: 0e710a3ffd0c ("iavf: Fix VF driver counting VLAN 0 filters")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
---
v1 -> v2: Added indentation and fixed typo in commit  message. Also,
          clarified the comment in iavf_vlan_rx_add_vid()
---
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 4 ++++
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 2 --
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3273aeb8fa67..eb8f944276ff 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -893,6 +893,10 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 
+	/* Do not track VLAN 0 filter, always added by the PF on VF init */
+	if (!vid)
+		return 0;
+
 	if (!VLAN_FILTERING_ALLOWED(adapter))
 		return -EIO;
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 6d23338604bb..4e17d006c52d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2446,8 +2446,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
 			if (f->is_new_vlan) {
 				f->is_new_vlan = false;
-				if (!f->vlan.vid)
-					continue;
 				if (f->vlan.tpid == ETH_P_8021Q)
 					set_bit(f->vlan.vid,
 						adapter->vsi.active_cvlans);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
