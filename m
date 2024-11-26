Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ABD9D956B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 11:23:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C306851A5;
	Tue, 26 Nov 2024 10:23:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yrIeJbTdeYjl; Tue, 26 Nov 2024 10:23:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7109485194
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732616604;
	bh=rnWEUkklv3ACAcW3fzntpwZcR4F84R5sZpKpsKbji2Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qii0Q2V9ayc9EDxYxgFJ+XzgvajpqBAsIwZiAHXw9UnxXvoAR1sRzJmpQJdehRsPf
	 QMTRHLIMv6KWjurQehF0hsMBcZhOaoyVVdGD2fBsKLPr0a+Oa0OghwFtTwiHnxPvwO
	 AQzhqRfvTZmSyDlwyEjfHvRW0wNDjPfQfJHrALdn46eV4sgR+ITeGMQdvs8EZudgMZ
	 uHZgk3TV+jFyRsLHV5hhy+AWrSy9ybWuXY+VWOSpvveopyCVYKOEsBQ8Ws/t6sXRcx
	 HhHPH3OtQYHEM7KZXy/D+0bZpf0MJr9H7crFz95TDHtgmw8RKewDtNiPg3WntOkiGi
	 fivEoP5GYCyKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7109485194;
	Tue, 26 Nov 2024 10:23:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A577A4961
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 10:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E37340498
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 10:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vfOxlw3BCT2B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 10:23:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0073403C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0073403C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0073403C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 10:23:21 +0000 (UTC)
X-CSE-ConnectionGUID: AzX7Pj/bTdutS0zYUZlylg==
X-CSE-MsgGUID: JijBHNZcS5eEaU9SPiB/2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="43430154"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="43430154"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 02:23:20 -0800
X-CSE-ConnectionGUID: uB9L+wlcTvue8ff0F8sNpA==
X-CSE-MsgGUID: q3E0kIs+RzWJOBJVZIycqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="92037121"
Received: from pae-dbg-r750-02-263.igk.intel.com ([172.28.191.215])
 by fmviesa009.fm.intel.com with ESMTP; 26 Nov 2024 02:23:18 -0800
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Przemyslaw Korba <przemyslaw.korba@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Tue, 26 Nov 2024 11:23:11 +0100
Message-Id: <20241126102311.344972-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732616602; x=1764152602;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n6a3XWHLj2QtXMtCxgh8TrOz2Az4VwQNcGvNl7xz++s=;
 b=ho2lmOoH/eAQ/Prfr9nbF1yXwREJOQ0S2zvCxnk9/xGEVC5WDGvEOfEI
 1p1ymkmv/jMp1mBBgiqlCF/aZOFNPpvnto3ysdJuVP0AqmkHWOFRXy86W
 Kb1bQnA8jtHET7NK+D2nbIRVwkqu4fPXuAmoo99zy4j8BfsrN7myeOiUs
 T1lPYOuuo3G1IHobyEJWGRqW6qB/jO9Q7Hb6EJgwGztV8RL2AmPEfmfhh
 o0KIgknEmlVOWlIyhOglByzH4yKlPhl6vD9uwsJUsdjxotiidxy6MQvzY
 0MIceRp0wd8F37le0wGmY1/J19ntFFtpmZxBzIGur6Rpu/gY/gkAb6JA/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ho2lmOoH
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY settings
 for 100 GB/s
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
PTP working case when using 100 GB/s cable.
This is due to incorrect frequency settings on the PHY clocks for
100 GB/s speed. Changes are introduced to align with the internal
hardware documentation, and correctly initialize frequency in PHY
clocks with the frequency values that are in our HW spec.
To reproduce the issue run ptp4l as a Time Receiver on E823 device,
and observe the offset, which will never approach values seen
in the PTP working case.

Fixes: 3a7496234d17 ("ice: implement basic E822 PTP support")
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
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

