Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C66EC9BCCD0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 13:32:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 083FF40674;
	Tue,  5 Nov 2024 12:32:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rQHxz9QEN7GP; Tue,  5 Nov 2024 12:32:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00A6D4066A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730809974;
	bh=mPTKXmRUIfMe0kYNau1M3CP8SxsTfonJDq9ew099TM4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3CiappB3bVD2g4wQMNs3ps7BbGtj+mVGdTQlglXWqRR7ik0uPcfDFmJhDs6Lukbs0
	 y+yIutajZcSa7WQ4GBVBkswno67J0ChRtySFi+/NdstpxFjcAQFeIltjgr0YztriQU
	 Om9u3l/wclYeDLVwpL+fYwphYNhspuivSCi+UzOyHiEkC1qIMPPT1iRl/gAnHxkbY0
	 0IrAhwlR6FWnTzKpOHqhb0yyPGNy6J3z/ts0Bvs+fsyanYmwBNzyj6uVdEO8QcggVj
	 eMq/DvumHMcmMXuzWC+J5BAFo35NwvawYzONw1cou6JvTNKEHg0zRPSyoSigQLLZi5
	 oD1wCSTS2RErA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00A6D4066A;
	Tue,  5 Nov 2024 12:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E179B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D16F40675
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nstkCSkMUfse for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 12:32:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 454D640674
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 454D640674
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 454D640674
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:50 +0000 (UTC)
X-CSE-ConnectionGUID: AWFIGdhCRXeAvDiep1H+2Q==
X-CSE-MsgGUID: LAsQobC+Slm60JPEQIscAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="29976265"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="29976265"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:32:49 -0800
X-CSE-ConnectionGUID: K6cdYE7MRpyrVig9Ejs2Tw==
X-CSE-MsgGUID: QWaETA9PTTetdDSNvAe5aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="121481364"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 05 Nov 2024 04:32:48 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue,  5 Nov 2024 13:29:15 +0100
Message-Id: <20241105122916.1824568-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
References: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730809970; x=1762345970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ww874tZ0f5tEzLjU78wbUg7StgUhmJ1cvMZdu7uRWc=;
 b=a3mxtM4twvPBuPCIsLeRH6rmUucXQ+Odkduem8Vl5SXrs8bGtOzVjQtf
 Fx1Z1Kfb5pafG+olpGFrJOIQ8VErHPNCxH29CZ7TQEHXbG0NI4BV2SkwN
 4babajEyEk2i+fS+fMCCK5YMOsXl5QXruVfBNUh+Z4b6ACbhdS9TqGGZX
 YtcfczMivZYQEN1illEgZKzmqEzevWNx5VN2PKKM373i8Xw93J58L95xO
 Lo4zgzANnk5enVHqMC8JsqPgUzsCcHB7cnYhh4IRq8TC4GAift2x2KXBN
 3I9qXFMCf5ViKyxjBu0G0gAIeLiTtuo0v/PCzEhVoP0D7dz8krkA3Z8OA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a3mxtM4t
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 3/4] ice: Fix ETH56G FC-FEC Rx
 offset value
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

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
index e6980b94a6c1..6620642077bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -131,7 +131,7 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
 		.rx_offset = {
 			.serdes = 0xffffeb27, /* -10.42424 */
 			.no_fec = 0xffffcccd, /* -25.6 */
-			.fc = 0xfffe0014, /* -255.96 */
+			.fc = 0xfffc557b, /* -469.26 */
 			.sfd = 0x4a4, /* 2.32 */
 			.bs_ds = 0x32 /* 0.0969697 */
 		}
-- 
2.39.3

