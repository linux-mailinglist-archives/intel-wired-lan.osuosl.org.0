Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EE24B1A6C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 01:29:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 910E082CFA;
	Fri, 11 Feb 2022 00:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uMtVYfz0z_kd; Fri, 11 Feb 2022 00:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96E5B826DE;
	Fri, 11 Feb 2022 00:29:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F06FA1C1162
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 00:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC72E40873
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 00:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6idBTKSQKDye for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 00:29:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E43A40872
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 00:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644539379; x=1676075379;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0JyDclFqQvPoMM194ylhxxhajAP81ROHdq7Vx1oRPf4=;
 b=m7ui3P/5U4Wou1kULhaVPc5MSCpTti3wPTyRWLseJJdCRKAXq9PgabeO
 9xdiRYZewoUuL6so8cSe5pR624/yLb/e550oRXAJz33FAcBaAFzUmeorp
 KCoqvO6udCEB4HSpsLX/Ru7WaGFUaPzYDr+BEPDPQLh1hAKmGJc6QZDeG
 AqmABvsBnc5BJi3M0aPaCXSTmI9JLeCmbpiE/ulrWX3lSrm49q4adltBH
 TwR7qtiGTpjgI3M9fWpUdb2nCGohaoce7nZPd9fi3IxHqHemLetPE+m0y
 QHXGvlrYdH36YTIr0cw4dShSVpEJ8n9KZB4MMgYfWzvMTv+aElX4y3ZBh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="237026966"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="237026966"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:29:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="537485988"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 16:29:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Feb 2022 16:29:26 -0800
Message-Id: <20220211002926.584554-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: enable parsing IPSEC SPI
 headers for RSS
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

The COMMS package can enable the hardware parser to recognize IPSEC
frames with ESP header and SPI identifier.  If this package is available
and configured for loading in /lib/firmware, then the driver will
succeed in enabling this protocol type for RSS.

This in turn allows the hardware to hash over the SPI and use it to pick
a consistent receive queue for the same secure flow. Without this all
traffic is steered to the same queue for multiple traffic threads from
the same IP address. For that reason this is marked as a fix, as the
driver supports the model, but it wasn't enabled.

If the package is not available, adding this type will fail, but the
failure is ignored on purpose as it has no negative affect.

Fixes: c90ed40cefe1 ("ice: Enable writing hardware filtering tables")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
---
v2: add fixes tag and send to net
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0c187cf04fcf..53256aca27c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1684,6 +1684,12 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
 	if (status)
 		dev_dbg(dev, "ice_add_rss_cfg failed for sctp6 flow, vsi = %d, error = %d\n",
 			vsi_num, status);
+
+	status = ice_add_rss_cfg(hw, vsi_handle, ICE_FLOW_HASH_ESP_SPI,
+				 ICE_FLOW_SEG_HDR_ESP);
+	if (status)
+		dev_dbg(dev, "ice_add_rss_cfg failed for esp/spi flow, vsi = %d, error = %d\n",
+			vsi_num, status);
 }
 
 /**
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
