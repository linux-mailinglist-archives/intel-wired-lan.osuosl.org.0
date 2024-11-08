Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3D79C1A42
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 11:14:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C3C361198;
	Fri,  8 Nov 2024 10:14:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kuwm1WQaP3n9; Fri,  8 Nov 2024 10:14:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DC796119A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731060869;
	bh=rtIhxl0kg2kwSAl5cOZhEhdvdYmAmITxuD3NZ4sOqQw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=e3U3OdZsLXOuLe0nKzOnFLHY9fLiyF8u3JOSBs2dzKmig86ATGgYijdAZZU7a+c0Z
	 6skxhDUD9RcyjkbhmLFEGrUGrxYvNKERouYuxiikV/fic+cZLnprnbhKZebisgN8cE
	 NMqBUWPRireNKai40i8x6v1EhtaUjYWhH+Y+jXnUxRZbJwecc2NnD8gVCYV8WnhWFR
	 CREZeAxnKgkJw2hdizWZWAE6VtJVCf9cFsG5e1pvG+6+pqvYeUGiex4TlBbty4y+wJ
	 ggPnCfHt5tx/Clb9TDOq70zs/+apOzudMC4zLP0odqtRM1VbBECMsuJ4gfQCPUyRY5
	 sygXL5GYr0H9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DC796119A;
	Fri,  8 Nov 2024 10:14:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 06E5AC0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 10:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6A634311D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 10:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7S7MayNoX-Le for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 10:14:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6EF040128
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6EF040128
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6EF040128
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 10:14:26 +0000 (UTC)
X-CSE-ConnectionGUID: FAXn005HQcC8B78gvI0ykg==
X-CSE-MsgGUID: Db2y7BqoTBy/zMrVce+T2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="42325332"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="42325332"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 02:14:26 -0800
X-CSE-ConnectionGUID: jXuftAS4TxG03mCX4Ey3rQ==
X-CSE-MsgGUID: HrTigdLPRmSy8m+J1iuT3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="86296723"
Received: from pae-dbg-r750-02-263.igk.intel.com ([172.28.191.215])
 by orviesa008.jf.intel.com with ESMTP; 08 Nov 2024 02:14:25 -0800
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Fri,  8 Nov 2024 11:14:19 +0100
Message-Id: <20241108101419.66920-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731060866; x=1762596866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KRVHB01OEq83mExTpA4ZzpE7Xo88aH3410IvN5uxHWk=;
 b=jFNAmN905TUU1lontrzGONogzpYur48rqfUTI2+F1Q/7/TtQpNnlqTo/
 8wKuYKSJKuWwVR+GC3SpXsD9fhmyUMUG4nAcdExtA1S44X463sYtQHvhS
 tJhJJKpJQeamoFUTXkf1hwuIJfK39DLQjv+8Wz6yLO4VYb5FcpsSA83lo
 wcqt8JbnkivFP4qaWzDj4HvCcLyuGtNG8hv6CwnzNi+zXFFlhn68g2HGH
 EesAb+Eueav+UvoukvT1SJwtuixSN5mwYmmkXuO3GCUFBHSTDhhAOGpS7
 INljbk54Kohw4EhqkYuTGU001qPxyTk+idQNj7OGgL9LpSGTBuB1XMR/d
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jFNAmN90
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix PHY timestamp extraction
 for ETH56G
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

Fix incorrect PHY timestamp extraction for ETH56G.
It's better to use FIELD_PREP() than manual shift.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 3 ++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 5 ++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ec8db830ac73..3816e45b6ab4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1495,7 +1495,8 @@ static int ice_read_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx,
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) |
+		  FIELD_PREP(TS_PHY_LOW_M, lo);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 6cedc1a906af..4c8b84571344 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -663,9 +663,8 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define TS_HIGH_M			0xFF
 #define TS_HIGH_S			32
 
-#define TS_PHY_LOW_M			0xFF
-#define TS_PHY_HIGH_M			0xFFFFFFFF
-#define TS_PHY_HIGH_S			8
+#define TS_PHY_LOW_M			GENMASK(7, 0)
+#define TS_PHY_HIGH_M			GENMASK_ULL(39, 8)
 
 #define BYTES_PER_IDX_ADDR_L_U		8
 #define BYTES_PER_IDX_ADDR_L		4

base-commit: 333b8b2188c495a2a1431b5e0d51826383271aad
-- 
2.31.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

