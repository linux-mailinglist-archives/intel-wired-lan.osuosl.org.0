Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBFE9E3B31
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 14:22:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C949402BA;
	Wed,  4 Dec 2024 13:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J5z9vyfiA1Hr; Wed,  4 Dec 2024 13:22:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD68141296
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733318558;
	bh=4vcBDFQdposYhhPO91bOZvvLyf//hM5R3o1P1ZVEy2Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KGLzP3iRm2dpI2PvDoZrXdEFPohTUIh+wIfPCHunAHAtKEw+MRA6x/e2IY4QVJFCj
	 LVlcZF9YfzwOAML6Ksw6sT4dpaRU0AsMhTPQgsL8KY5GMUXeo71oLV6UqdLOGOMRFE
	 4JT988J8uWUbLeTZ3jB5/EZWdFaOutd1dZRk0rRbjEwmamJjRafzs91BG8XfS3tD1P
	 2obBxRkNNl6kVwmWydEfTgtMyy4nGM0GGm8gQAX5SkdvIC6v70JrziM1JLX0gaD3qS
	 Nb4yqa+mtYbSsoR/uIZwtEXm2ionjG75wyajzh9KX5pftkCeESfLBYr9IpA1BYI0Ck
	 OS8AuZQbUOa0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD68141296;
	Wed,  4 Dec 2024 13:22:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D8BD1DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 13:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EB1540042
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 13:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8eOBRNQEc755 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 13:22:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 000D140585
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 000D140585
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 000D140585
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 13:22:33 +0000 (UTC)
X-CSE-ConnectionGUID: Nu4dnXGuSe2KTtXBgeClXQ==
X-CSE-MsgGUID: Yiof9IgpReegChaUfTb2mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44193993"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44193993"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 05:22:33 -0800
X-CSE-ConnectionGUID: Jzkjqa9qQRyWhIwNsfSBgA==
X-CSE-MsgGUID: NhqA2S8TR6e75c5kZdSRAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="98785944"
Received: from pae-dbg-r750-02-263.igk.intel.com ([172.28.191.215])
 by orviesa003.jf.intel.com with ESMTP; 04 Dec 2024 05:22:30 -0800
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com, andrew@lunn.ch,
 olteanv@gmail.com, milena.olech@intel.com, pmenzel@molgen.mpg.de,
 Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Wed,  4 Dec 2024 14:22:18 +0100
Message-Id: <20241204132218.1060616-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733318555; x=1764854555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xjbVOAw11UkVjMBe9c9V269dVjQ70I1jCvLYv7Db78c=;
 b=R4iDTa4JCISpWJhc6v2fGk1r/UqDEkEicBaOpcJWf8kQRWTISj3g88VT
 uiIWR+GtyVckPm4PvsD9T60h/encbA9AqMPoHKK3Hbkjlh+evETokGBi3
 /Rp/6riwoGY+0ykQ/N2zcuWEi81I0aP3JflsfYwiRGr5G0rPns2Iz+Ng+
 srLopBnitas6X6xY33xo1votEsA/fnZWcjeRsBFL7aMsRJPrneABCpui1
 aPjqys/Ym0qSj2DM6mLWg++s4DqOvlw2rM+53GIdPkLsfzbU8kh8Bxyed
 H82nkK/U4NDGExbPEIAnsLnzWuu93eFUZMB0vH6c7sTuvh2qjV6f1PP3r
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R4iDTa4J
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix incorrect PHY
 settings for 100 GB/s
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

ptp4l application reports too high offset when ran on E823 device
with a 100GB/s link. Those values cannot go under 100ns, like in a
working case when using 100 GB/s cable.

This is due to incorrect frequency settings on the PHY clocks for
100 GB/s speed. Changes are introduced to align with the internal
hardware documentation, and correctly initialize frequency in PHY
clocks with the frequency values that are in our HW spec.

To reproduce the issue run ptp4l as a Time Receiver on E823 device,
and observe the offset, which will never approach values seen
in the PTP working case.

Reproduction output:
ptp4l -i enp137s0f3 -m -2 -s -f /etc/ptp4l_8275.conf
ptp4l[5278.775]: master offset      12470 s2 freq  +41288 path delay -3002
ptp4l[5278.837]: master offset      10525 s2 freq  +39202 path delay -3002
ptp4l[5278.900]: master offset     -24840 s2 freq  -20130 path delay -3002
ptp4l[5278.963]: master offset      10597 s2 freq  +37908 path delay -3002
ptp4l[5279.025]: master offset       8883 s2 freq  +36031 path delay -3002
ptp4l[5279.088]: master offset       7267 s2 freq  +34151 path delay -3002
ptp4l[5279.150]: master offset       5771 s2 freq  +32316 path delay -3002
ptp4l[5279.213]: master offset       4388 s2 freq  +30526 path delay -3002
ptp4l[5279.275]: master offset     -30434 s2 freq  -28485 path delay -3002
ptp4l[5279.338]: master offset     -28041 s2 freq  -27412 path delay -3002
ptp4l[5279.400]: master offset       7870 s2 freq  +31118 path delay -3002

Fixes: 3a7496234d17 ("ice: implement basic E822 PTP support")
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
Changelog:
v2:
change commit message
v1:
https://lore.kernel.org/intel-wired-lan/20241126102311.344972-1-przemyslaw.korba@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 6620642077bb..bdb1020147d1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -761,9 +761,9 @@ const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD] = {
 		/* rx_desk_rsgb_par */
 		644531250, /* 644.53125 MHz Reed Solomon gearbox */
 		/* tx_desk_rsgb_pcs */
-		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		390625000, /* 390.625 MHz Reed Solomon gearbox */
 		/* rx_desk_rsgb_pcs */
-		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		390625000, /* 390.625 MHz Reed Solomon gearbox */
 		/* tx_fixed_delay */
 		1620,
 		/* pmd_adj_divisor */

base-commit: 6ef5f61a4aa7d4df94a855a44f996bff08b0be83
-- 
2.31.1

