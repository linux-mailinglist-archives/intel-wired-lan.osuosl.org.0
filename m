Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BFF7777F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 14:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C2CF83A6F;
	Thu, 10 Aug 2023 12:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C2CF83A6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691669730;
	bh=YsbHPp7sG8KBOyGXZDmdKbKcu6tKiY8G8601tV8R/hU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2Uwem7UjjrVzpAwDKDVRD7sHQH2PoTnTmZzPIeechpsmOKtxalZr8vIVhXDHZWOsb
	 6atg+ozTlv5jhrHmiZVsuHTHkeds2qdNJCDk/qUZwvzSEHc+DU/zW6L3EY3Rv0kn/O
	 dPuQ666HjbIGsuXlhtZ5U5dsHgUyRaZtAIBubAdjQSE9sXg1ShnVJNREfMqkazZ77Q
	 yzDC3Bfg4Lp5li/m5oWe58gkH9Tme5MXStXkd4i3mn5gdtReTDLwuGiJdyaWnzKv0s
	 +umP5xYnqx1uAY2T+Zr57XfZkaNopRtZdleAEiafcc9hPtWhe97s46En5si8B28bdT
	 LBupesKgCzpnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C-WGbKNACrUH; Thu, 10 Aug 2023 12:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CBB6813DD;
	Thu, 10 Aug 2023 12:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CBB6813DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFEB71BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 12:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7C88833B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 12:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7C88833B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nl9jzs9zZXYM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 12:15:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F09BE8338B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 12:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F09BE8338B
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="375098692"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="375098692"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 05:14:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="846369686"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="846369686"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2023 05:14:00 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A6A5332CAB;
 Thu, 10 Aug 2023 13:13:59 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Aug 2023 14:12:46 +0200
Message-ID: <20230810121245.51587-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691669724; x=1723205724;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wx5myXOtLJV2KeSzFA3pd4U9Pgf+WCRz8T5yYTgROjc=;
 b=MFUKfAdQvhMy8s3ctSCGsmU+XakHaUUA+gnQN2wg29B5OWaEXqVIxZup
 i3F7gcj2msx2cbivhDinfceleSekRO8QRtelhXDvpLtpah+/VbJro3Vrc
 FBQhk9z67QXgcgeL/ywsDF+FZ19BQD00EqMUVU4I9DYftxigMqnx6Y54l
 rQx9/dIbEmgMTft01hUHdZvcf+Lfq9WVI9yOSYHPXR/SoOX8e+O036N4Z
 Q8sxHmtW4mYYEVohOJuaF4z1Bv1BrskInc81GrhB88xW3AfHyDv/OSePf
 RF/r/SHxDnSFQBGq12+7Tb4Ytdz1IYqYVU9PyIOyf7+htfqeNXtJIujZn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MFUKfAdQ
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Block switchdev mode when
 ADQ is active and vice versa
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
Cc: jiri@resnulli.us, leon@kernel.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ADQ and switchdev are not supported simultaneously. Enabling both at the
same time can result in nullptr dereference.

To prevent this, check if ADQ is active when changing devlink mode to
switchdev mode, and check if switchdev is active when enabling ADQ.

Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: Added netlink extack, changed error message to be more informative,
    fixed typo in commit message
v3: Moved switchdev mode check out of adev lock
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 5 +++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ad0a007b7398..8f232c41a89e 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -538,6 +538,12 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		break;
 	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
 	{
+		if (ice_is_adq_active(pf)) {
+			dev_err(ice_pf_to_dev(pf), "Couldn't change eswitch mode to switchdev - ADQ is active. Delete ADQ configs and try again, e.g. tc qdisc del dev $PF root");
+			NL_SET_ERR_MSG_MOD(extack, "Couldn't change eswitch mode to switchdev - ADQ is active. Delete ADQ configs and try again, e.g. tc qdisc del dev $PF root");
+			return -EOPNOTSUPP;
+		}
+
 		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
 			 pf->hw.pf_id);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cf92c39467c8..b40dfe6ae321 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8823,6 +8823,11 @@ ice_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 						  ice_setup_tc_block_cb,
 						  np, np, true);
 	case TC_SETUP_QDISC_MQPRIO:
+		if (ice_is_eswitch_mode_switchdev(pf)) {
+			netdev_err(netdev, "TC MQPRIO offload not supported, switchdev is enabled\n");
+			return -EOPNOTSUPP;
+		}
+
 		if (pf->adev) {
 			mutex_lock(&pf->adev_mutex);
 			device_lock(&pf->adev->dev);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
