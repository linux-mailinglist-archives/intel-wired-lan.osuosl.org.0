Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D39F99FEE9B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Dec 2024 10:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4542B408AB;
	Tue, 31 Dec 2024 09:52:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QmQBuuCtd4ZM; Tue, 31 Dec 2024 09:52:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7423B408A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735638738;
	bh=joerHJta4PiHy0Ek+q8+UWYD567HhxRUpImqMKjlaMI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XnKVjlV/h+LjI9U+2soBfW1gqSNbi5Hb0rd/4kmIEUn/ymyZehJgCPASf3U0Uxkqy
	 CInctaGKyH0zpxiHWvFQoaSaStZ8nycA/cC8XWZnizFxyjUYKnGzhB00MMIL1kq4d7
	 xzcc121R3ZS2Nl/shBR6jXPJX3L7WijftHGRWPAblGiu8vKiPsQseSHxUAgMmkjqhm
	 h8msDkKH3DZzg5JvQ1X3S7rhk7o980MOrqRY7a/kJ/hVG+rE53biqWSLwlyBisANDc
	 /Jln6C77kQJVFSVDDLlxciqV90d5jRYKUR6/mWxZ0DCQvLeMoV+cKRu+4rXhZ/bVDj
	 Y9qpBas2vrylQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7423B408A7;
	Tue, 31 Dec 2024 09:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D3D9B968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Dec 2024 09:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B074D60A88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Dec 2024 09:52:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3mu98imRiy92 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Dec 2024 09:52:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE1E6608CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE1E6608CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE1E6608CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Dec 2024 09:52:14 +0000 (UTC)
X-CSE-ConnectionGUID: PYTIPS1iQlGx4IxBsv2wEg==
X-CSE-MsgGUID: +f+iM4aXSfu2h3R+JXK1vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="35821812"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35821812"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 01:52:14 -0800
X-CSE-ConnectionGUID: EZN/LjbjQfuJBGpga3mkeA==
X-CSE-MsgGUID: 0zD24EPZTXmrfT9M6jMNIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="101515664"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 31 Dec 2024 01:52:13 -0800
Received: from metan.igk.intel.com (metan.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D9D672876E;
 Tue, 31 Dec 2024 09:52:11 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 31 Dec 2024 10:50:44 +0100
Message-Id: <20241231095044.433940-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735638735; x=1767174735;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=trPPlrmkaokGszHUJ2Zza6/CiedOSJPQxAu/cKcQe6w=;
 b=EwR8XuTQX8M43Ay47AVmvvAUqAGZuRMBUv/LpxdVeWY5vHRgC3hYniGn
 tsMgi/egRVqlN0SQVFkWbhS7U7jlQkTt0oFYrXlbpNfcAqTRjuFUwL/B6
 swBv2grS6sb0/TbAJqwWSKbacX1sO5qeZ7SjjGuB5wt2FLSzvJWPgSHsH
 tnWR+uqXxpoYnsh9M9mdsv9crATSDbg7iqFQXZCj0RNAghCAkTvTYQdm/
 kYCWsDGmku62hjgvnDXnefX0yYY4kIboqoo5sZk93OnIpC3ByYpKNRqur
 q88E3xwKvB3aN352qlN2E6Hotf6RF9bxbAeqFsqFlbhfOlfNUVmhGjWzN
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EwR8XuTQ
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: remove invalid parameter
 of equalizer
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

It occurred that in the commit 70838938e89c ("ice: Implement driver
functionality to dump serdes equalizer values") the invalid DRATE parameter
for reading has been added. The output of the command:

  $ ethtool -d <ethX>

returns the garbage value in the place where DRATE value should be
stored.

Remove mentioned parameter to prevent return of corrupted data to
userspace.

Fixes: 70838938e89c ("ice: Implement driver functionality to dump serdes equalizer values")
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c    | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.h    | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 3bf05b135b35..73756dbfc77f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1498,7 +1498,6 @@ struct ice_aqc_dnl_equa_param {
 #define ICE_AQC_RX_EQU_POST1 (0x12 << ICE_AQC_RX_EQU_SHIFT)
 #define ICE_AQC_RX_EQU_BFLF (0x13 << ICE_AQC_RX_EQU_SHIFT)
 #define ICE_AQC_RX_EQU_BFHF (0x14 << ICE_AQC_RX_EQU_SHIFT)
-#define ICE_AQC_RX_EQU_DRATE (0x15 << ICE_AQC_RX_EQU_SHIFT)
 #define ICE_AQC_RX_EQU_CTLE_GAINHF (0x20 << ICE_AQC_RX_EQU_SHIFT)
 #define ICE_AQC_RX_EQU_CTLE_GAINLF (0x21 << ICE_AQC_RX_EQU_SHIFT)
 #define ICE_AQC_RX_EQU_CTLE_GAINDC (0x22 << ICE_AQC_RX_EQU_SHIFT)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3072634bf049..f241493a6ac8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -710,7 +710,6 @@ static int ice_get_tx_rx_equa(struct ice_hw *hw, u8 serdes_num,
 		{ ICE_AQC_RX_EQU_POST1, rx, &ptr->rx_equ_post1 },
 		{ ICE_AQC_RX_EQU_BFLF, rx, &ptr->rx_equ_bflf },
 		{ ICE_AQC_RX_EQU_BFHF, rx, &ptr->rx_equ_bfhf },
-		{ ICE_AQC_RX_EQU_DRATE, rx, &ptr->rx_equ_drate },
 		{ ICE_AQC_RX_EQU_CTLE_GAINHF, rx, &ptr->rx_equ_ctle_gainhf },
 		{ ICE_AQC_RX_EQU_CTLE_GAINLF, rx, &ptr->rx_equ_ctle_gainlf },
 		{ ICE_AQC_RX_EQU_CTLE_GAINDC, rx, &ptr->rx_equ_ctle_gaindc },
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index 8f2ad1c172c0..23b2cfbc9684 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -15,7 +15,6 @@ struct ice_serdes_equalization_to_ethtool {
 	int rx_equ_post1;
 	int rx_equ_bflf;
 	int rx_equ_bfhf;
-	int rx_equ_drate;
 	int rx_equ_ctle_gainhf;
 	int rx_equ_ctle_gainlf;
 	int rx_equ_ctle_gaindc;
-- 
2.38.1

