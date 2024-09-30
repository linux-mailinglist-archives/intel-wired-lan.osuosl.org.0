Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E37B98A19B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:10:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E314C60687;
	Mon, 30 Sep 2024 12:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Z7grBifXI85; Mon, 30 Sep 2024 12:10:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 155DB605A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698244;
	bh=Rxzkl6PGMz7EBtDiHL6iszHLLtvSPcQUpwSoOl0DwL4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zLmYM47zFi6aFirQ+okRpACmFyWQZQfthZvf6RzvoA+KqMxH7psJm6XIk4266UahS
	 EAMHG+tT+tWTku/LBCRsZZJ3oVXQdrN0v4CB1w6iXtW/iIv/u594B6Bf8nqr4jxB52
	 OfJKP5zUJn2z+NM1iOdx3+zsPkznWzSPTw1wnPGyPfIGqURcKufujZZ8u5zTConnzQ
	 SGrD5sbc6hB2NR8w/xo9fxqi1FrtnNBZcwcP0iraY1WwlfsZDk1j2bGSs36fChAmP7
	 x0CBFZm4oh/m5FtF+sXwvtbroDF1s/1zWoMIkztgNV+e4o8SP95IUYDhehMlYVG4uV
	 Kv4DT9HIVyadA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 155DB605A0;
	Mon, 30 Sep 2024 12:10:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5481F1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E8A2402E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhlNZ8le9_Ew for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:10:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4F3BF4028E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F3BF4028E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4F3BF4028E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:40 +0000 (UTC)
X-CSE-ConnectionGUID: y6beMvxoQEygydK/mTtkNw==
X-CSE-MsgGUID: k/VBG/bPS7OpGb1+o0wYyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26736092"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26736092"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:10:40 -0700
X-CSE-ConnectionGUID: 93ZMryksTpOCLXzSuqwpIg==
X-CSE-MsgGUID: qqpfVj/NQXCJh8pXbKLbJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78037024"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa005.jf.intel.com with ESMTP; 30 Sep 2024 05:10:37 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:08:41 +0200
Message-ID: <20240930121022.671217-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240930121022.671217-1-karol.kolacinski@intel.com>
References: <20240930121022.671217-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698241; x=1759234241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OLhQyk8UDnW+4coEU2wXN6cUwFnhao/AAG26hJM2Kkw=;
 b=KmVHdHPaaWBCn+jHLVhjhNrMaIuVWYMvF/0PLw42XBQNa0YQ3S6tyRtN
 abHyJdRXeIDvGJ2deBEcrrdESkbKE1NUXcgwc2ncnSkaKev72C/pwvCBM
 WUveilgMRsWJAEjYsv9a2paNakt7l8Ch9aw8Pys6gIV7SzP9AIbDDX7cv
 7sV9Id8XaEF8ETL77yt7fCcT63mCpJGZGkfBUQToMPb+9fAgWjOIPz9xc
 /f+OO3lXd/6apmj1Zq3ZFq4wDWcnJsHg4de5OHYTNkziprFWbuGGxUS9L
 N5RI81P1cfrjpqhKIXfxSUIKCqbmkMbmCLgpIb4GKjc5/P0cTEE6GFdcF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KmVHdHPa
Subject: [Intel-wired-lan] [PATCH iwl-net 3/5] ice: Fix ETH56G FC-FEC Rx
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
2.46.1

