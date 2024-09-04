Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A34196BC66
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D5CD605AA;
	Wed,  4 Sep 2024 12:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTt_yFnY2aip; Wed,  4 Sep 2024 12:33:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B47A06087A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725453199;
	bh=XlOkpY1Dm1P+2toip6j+Eh7xw68GPnVXN2bGe/skPS4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=i1EOPhEDT3Y13aNN6mKI8ePgMpTsNki9ahuzWoNHKXNFBCoWdBbHXbCyeGS2NQa1P
	 Qh5ZoEtvTci2tPB8SBnHC1PeCYOdcn4z86YrYINJqqIJjMDYQJf4PyOEV2kxdRiAPm
	 aHD5eNQk+u7oks2n1da5NenQq9icsi1uuhCRpooS7f+7wymOo2TH3CQWdV0mP36FYY
	 NdseEgcgMKq0CdeOWXYrymQa4Wl90wg1gMIm+tyHi5WeLqUODBuHTgT40nSyMau9M8
	 r5hlN0Lbgk7AQcF3us0MKuF8H6W2TKstDIruVMESoLEMWMygBDizdr9rDvG9B6YToR
	 mMZXf2ruDh/PQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B47A06087A;
	Wed,  4 Sep 2024 12:33:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9B5B1BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B64FA605AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:33:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5k3xrzc5myVf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 12:33:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F9666059C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F9666059C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F9666059C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 12:33:16 +0000 (UTC)
X-CSE-ConnectionGUID: xu0jX3GBTn6ZOGnJoDdbTw==
X-CSE-MsgGUID: MamRjhT0TreRFVoyB1+zoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27029724"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27029724"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:33:16 -0700
X-CSE-ConnectionGUID: YZFOA4XuRK6wcWLR7GVbrQ==
X-CSE-MsgGUID: 0eEjeUZfTVSh1T0Gvk+W7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="102665900"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Sep 2024 05:33:14 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.22])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 04A9528167;
 Wed,  4 Sep 2024 13:33:12 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  4 Sep 2024 14:32:57 +0200
Message-ID: <20240904123306.14629-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725453197; x=1756989197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3zZVN5QEEQ0tht7sMIhSJX3o61lUp/lS8M8cFNU4AzE=;
 b=R6EkYrpfzIK1qXXQ6rvqlujMqLy4TAwFAONoj9Yg7/R9VZe3QnRyzG18
 pzhLRQkJUO5LtMXBvsokhLXAmMP0z1g18BRFdOUx3Q6hZLaT5nxaQq519
 933u0oa9iaY63w48YDq6KqbhOkk/OzeJWFKbw2WroVi4oj3ZL7qgiY15B
 aCmStDPVoVz9/TpxOqYMxT27P3fopOV8ZEoAxLcgYdS8SUl2nsQIy5xF5
 5bT3ok9n78OND7jgh8F+3nyBHn4SEyfDIiMCEDaUYg7fYcEBSwI/NLQs3
 eecoD1Obka9OSTxprI4LeOMJwmv1IJ8EOTAUEka71GjKOf5WE+f7c6LtR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R6EkYrpf
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix memleak in
 ice_init_tx_topology()
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
Cc: netdev@vger.kernel.org, Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix leak of the FW blob, by not copying it.
ice_cfg_tx_topo() is not changing the passed buffer, but constification
of it is not a -net material, constification patch is mentioned by Link.

This was found by kmemleak, with the following trace for each PF:
    [<ffffffff8761044d>] kmemdup_noprof+0x1d/0x50
    [<ffffffffc0a0a480>] ice_init_ddp_config+0x100/0x220 [ice]
    [<ffffffffc0a0da7f>] ice_init_dev+0x6f/0x200 [ice]
    [<ffffffffc0a0dc49>] ice_init+0x29/0x560 [ice]
    [<ffffffffc0a10c1d>] ice_probe+0x21d/0x310 [ice]

Link: https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.kitszel@intel.com
Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6f97ed471fe9..71f592dda156 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4535,16 +4535,10 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
 	u8 num_tx_sched_layers = hw->num_tx_sched_layers;
 	struct ice_pf *pf = hw->back;
 	struct device *dev;
-	u8 *buf_copy;
 	int err;
 
 	dev = ice_pf_to_dev(pf);
-	/* ice_cfg_tx_topo buf argument is not a constant,
-	 * so we have to make a copy
-	 */
-	buf_copy = kmemdup(firmware->data, firmware->size, GFP_KERNEL);
-
-	err = ice_cfg_tx_topo(hw, buf_copy, firmware->size);
+	err = ice_cfg_tx_topo(hw, (void *)firmware->data, firmware->size);
 	if (!err) {
 		if (hw->num_tx_sched_layers > num_tx_sched_layers)
 			dev_info(dev, "Tx scheduling layers switching feature disabled\n");

base-commit: 4186c8d9e6af57bab0687b299df10ebd47534a0a
-- 
2.46.0

