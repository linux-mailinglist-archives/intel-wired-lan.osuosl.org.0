Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4369C0B59
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 17:21:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3489980AE1;
	Thu,  7 Nov 2024 16:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NBT-yvM9EkJv; Thu,  7 Nov 2024 16:21:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D47082115
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730996491;
	bh=rtIhxl0kg2kwSAl5cOZhEhdvdYmAmITxuD3NZ4sOqQw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FU0/jIHFLV4LIwtjuv0vuWQKeIzibVUC+d695v2etuolt1+9flnvN3KgBKFDy1co9
	 T1r+/Q9eTTgW62ngkB8X4eNncMpslg2+2mfuQkKwm4NPi5EY2Q3hCa8cxKb2DP+qq8
	 8u3MhPHgw0VPqbyjSoNEYrNcXnD57RbYz7lxw8I/4fw0Kla24GTESoVxzQnRleiyDP
	 8Sn+s9sQuP8fdQNVRFHujN++2ScZDE4fKeo+GxfMgRqiOolwnmHd8PnHp815PpzEQG
	 scnChIUFusM8LqT1VfIbdTNDxRowp6uUwSfoUTp+DEaFYvc8NBKJ0O6vGFrIviUzJf
	 VMfLK3DC8KC2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D47082115;
	Thu,  7 Nov 2024 16:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E192B3B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 11:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4D9460BBE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 11:33:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tm2Ace7QdG8Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 11:33:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D32D260670
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D32D260670
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D32D260670
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 11:33:06 +0000 (UTC)
X-CSE-ConnectionGUID: nFj/frAgQHuHV/5hWqh7Kw==
X-CSE-MsgGUID: d414XoIDQ9uXuWseeSgX2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34511377"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34511377"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 03:33:06 -0800
X-CSE-ConnectionGUID: tuil7a0rRwuwWD44FeHLTA==
X-CSE-MsgGUID: 95ZP8vY2RkylPARCfeqhqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85146542"
Received: from pae-dbg-r750-02-263.igk.intel.com ([172.28.191.215])
 by orviesa006.jf.intel.com with ESMTP; 07 Nov 2024 03:33:04 -0800
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Thu,  7 Nov 2024 12:32:57 +0100
Message-Id: <20241107113257.466286-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 07 Nov 2024 16:21:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730979187; x=1762515187;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KRVHB01OEq83mExTpA4ZzpE7Xo88aH3410IvN5uxHWk=;
 b=eh45QVKocxp1A5sg47ATDFymIT+7a+gbO5N8iu4cBEr6h+VRxEMRsjNx
 vh71Of8mBtVUsu+MmBB1oNSk79UOorf9aPk8ftDzeEnbNYNvRxUD+HmuQ
 1JorbiwGfHTdTZvespp3TYzVNyGtq9XgFYRh+lvgiZNfeqvPzXbItKKoi
 3SQnR+et3danCKn/a8mI4EVJraoV3mbgSMlSaDQpRdVFERqUigRbMy5jR
 A7cEFjtJh88iDqgLOIQIir9Zf+iyNRzXYQMBAsHdKBY3IatOZHaxIXGVR
 NYK16XLnDa1xBGLT6kNP5aFRpUF+QsFNYqlSTEeZ75JW9aXUcx8uWWKAy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eh45QVKo
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

