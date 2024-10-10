Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96850998951
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 16:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CE7260B65;
	Thu, 10 Oct 2024 14:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k8SLZPtnAJVo; Thu, 10 Oct 2024 14:23:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB55860B33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728570202;
	bh=qBNXlCUyC5pKxaTFkDNDN4xi3DQtH/srv6QY5iPE6KU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9GMZf+yhZGDq5xh9HY8NMu/TpNszUWxG1wIQwkFUz/eyB+WGclKpi+LRzXXDcqYAR
	 ghKjMijL2XjxajfVNLFmM6hVgrwbm7M2yO4N6Yiu3riUuUW3VZsYMZlPysPA1a0qlz
	 VtdKIRxiKyXF8Z45dy2ViIYOPIkeQO8pF0b9IWNlE02EHVX15RjM3v9+ua3VdZpME2
	 eV3MhRCBDgCUgc/xb+w9HKOcuGYMPHM0Hh7IwT1MkuEYB+zO+p3WWm9d2cJHzzI4nc
	 kcg9fhEd1OFbw/oOm9q2OHSOlhgof1ozyrsbJHi+OJ//hFAeXLcrdypRzStXzW4tuU
	 Lm03bWbP5An5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB55860B33;
	Thu, 10 Oct 2024 14:23:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32A881BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 14:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A7E060B2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 14:23:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVpCYObHC4Wy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 14:23:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 475D1605FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 475D1605FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 475D1605FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 14:23:16 +0000 (UTC)
X-CSE-ConnectionGUID: nheViH9jR1CSXKvgNry0+g==
X-CSE-MsgGUID: Tb00ucqPS/+JWUXxOwsE1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="39321116"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="39321116"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 07:23:16 -0700
X-CSE-ConnectionGUID: z5YbTlAgSCOkAHgaLif7fw==
X-CSE-MsgGUID: 4a+QwLGySWeioCns9+2NEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="99937516"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa002.fm.intel.com with ESMTP; 10 Oct 2024 07:23:14 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Oct 2024 16:21:16 +0200
Message-ID: <20241010142254.2047150-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241010142254.2047150-1-karol.kolacinski@intel.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728570197; x=1760106197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jiPvPXxBq3tdFiDO1nLpvgYWsPIczFNWPyj+6nTmfuo=;
 b=FNxwYVVmVavUPFjWQIMVKuels04oxeWD6nLaEDx8V0teNuoot0pkVnxv
 lkse02T9RNP3HHN7XtaxWkbw4g3DSHkrNKLyFdj6dlXpdF7ZVcGdZUvJT
 shlZomjL2ZQ2a13EsjvMfiTeUL+LsreIvZ0/Q/I2kSVsOZZB/HjbayznC
 5zKUFE83XLKrDY/+zsMqhKTFebiFaKrjUFsQ5pdrpjpSR1R2X933R35SC
 Xoc+iU7LMxYC06tCtFXUI/KOs+L0issVCo8FpR29qf0arE6H5BhpPiAGH
 b37a9x9gFso0p3c2GscW+P2ZpA6cRRc+K7Td6I3bzsdyEtBWCkoPX0nNn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FNxwYVVm
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 3/4] ice: Fix ETH56G FC-FEC Rx
 offset value
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix ETH56G FC-FEC incorrect Rx offset value by changing it from -255.96
to -469.26 ns.

Those values are derived from HW spec and reflect internal delays.
Hex value is a fixed point representation in Q23.9 format.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index e63f2a36eabf..339b9f59ddde 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -86,7 +86,7 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
 		.rx_offset = {
 			.serdes = 0xffffeb27, /* -10.42424 */
 			.no_fec = 0xffffcccd, /* -25.6 */
-			.fc = 0xfffe0014, /* -255.96 */
+			.fc = 0xfffc557b, /* -469.26 */
 			.sfd = 0x4a4, /* 2.32 */
 			.bs_ds = 0x32 /* 0.0969697 */
 		}
-- 
2.46.2

