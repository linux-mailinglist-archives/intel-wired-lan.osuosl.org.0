Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9697B48F309
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jan 2022 00:37:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A0D1824E3;
	Fri, 14 Jan 2022 23:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAH0cMRr-GXq; Fri, 14 Jan 2022 23:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB3D882468;
	Fri, 14 Jan 2022 23:37:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B10431BF42E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E07C40888
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-8RlD_-zNU6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 23:37:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9708340554
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 23:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642203446; x=1673739446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WaSqjDv4eUbfkH2j1A50ao/uRhIhaB9+lyzP16PcgQE=;
 b=LJIH4MdVnNpMrsaeTJJzRThknuJuGWd/vwvdy9WAfAzZvlR9bfd+dvxo
 6NRV4OuL1y7CF1NXe1g+xcg8j502neJqKxoPJjmcteLpeXBYKG01Wk/UH
 ClurYI1tUc7hGvmAvpovqA41OohEUt2P58maij5XN9niT13b9gMYlROjU
 q87IOxM+SjZSSneW8PNyDb/4syhf0G3kpbPProlFiH9uf57vGZfCbtZaX
 dng6rjGuTci+WUXC0A58FOnkH5Iji1Weo5pGD2RYES91j4xcBWAKbke4m
 /R9Sph0ICX8FDc3/VeaV3YNkAJGd2rvwAkxdT8bkfKv51jsWS3CJXf4Bo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="244551043"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="244551043"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 15:37:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="692404341"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 15:37:25 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 15:37:18 -0800
Message-Id: <20220114233718.67841-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: enable parsing IPSEC SPI
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
the same IP address.

If the package is not available, adding this type will fail, but the
failure is ignored on purpose as it has no negative affect.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4e9efd49c149..662493d1002b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1686,6 +1686,12 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
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

base-commit: 61a0b1ca2485ddfe549cde9eccd93b06b53188e8
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
