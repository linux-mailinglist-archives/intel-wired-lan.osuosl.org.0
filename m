Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AEFA42E8A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 22:03:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4776E40B99;
	Mon, 24 Feb 2025 21:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gDfrh7FZTLRj; Mon, 24 Feb 2025 21:03:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A386409BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740431009;
	bh=H6xx4eANBacx2hT4gM90/eGaV28cD/M/9Ju8h/pZDNA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g+Ck+LuC5JgEVL9zN63LtO0NtdYDreXhkfxD1yksbJ/mqwuUQmj+ma0TdbtvzG9bg
	 SidqGzPqf5kYzoLvSaG4rBGGgdLkAtQCSOSyenmnAuBveNTnELlax/VzgyRhHFSQ7Z
	 PRzMvTxKgrlkTS79x6eAVF9vlgIz4pWREPIqj3t0aYG5cTJjpjEHrnEHZRs38+J3nm
	 zOtfHqjgMTWSgmLQVGKeRMbasqKtuwXfWs9ry/L1jo0amNSIlqfBhY5gtyuIcKxd6b
	 ZiQXRcHxnb4II4pCHC7eI50pAsQceabUuum6o28CMSqA4tVF0OeeObyeRCww7jxxSX
	 DUikGcL7iFvjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A386409BC;
	Mon, 24 Feb 2025 21:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 151B81531
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 21:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1019F409C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 21:03:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQ4uLWbasuBB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 21:03:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0064409BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0064409BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0064409BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 21:03:25 +0000 (UTC)
X-CSE-ConnectionGUID: FG12mtUIS4eOgGE092o+BQ==
X-CSE-MsgGUID: T7G4yplbSKOut5udyVuvOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41470667"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="41470667"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 13:03:25 -0800
X-CSE-ConnectionGUID: mQGPtJhjRQm+iy1rFWkBrA==
X-CSE-MsgGUID: LP/yvMm5SL2xdY/pfLtUhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121426750"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 24 Feb 2025 13:03:23 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Feb 2025 21:59:24 +0100
Message-Id: <20250224205924.2861584-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740431006; x=1771967006;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FecevnrZjEY6MuxSUygLgUocjSQRIPcMELLd9y7TwaY=;
 b=n6slrNY/SL6+awQYMOn4iG3SrulH7OQjiG5J70Nzp1gphSfel1TtiLyu
 6qw1WO1RGjY79S5vKECC6OrqQRCKPmMhQ07GevBiePSYMziqEA9fXdFne
 sUF4iLeTNCEjGjagVHMZ8bnDhKDbDfaZ8OvsWpgh7643Gcuk0jxBJdMIi
 ejP8IiU9sydP5glaUJRQ9Hu05Gf/UsBsMYwOAPluDBCptqXfQ9v8uvhvU
 8Y1hriTDJiSiVl7tdiyWXQ/MWkuVP30LNJGTUer7pgRlOonc1zM9ZOVBU
 Am0FopoSIdbyZDw8jk01/qTOCD3L30KuB7yomPHRYxJNYmsHQxEicSVPD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n6slrNY/
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Allow 100M speed for
 E825C SGMII device
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Paul Menzel <pmenzel@molgen.mpg.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add E825C 10GbE SGMII device to the list of devices supporting 100Mbit
link mode. Without that change, 100Mbit link mode is ignored in ethtool
interface. This change was missed while adding the support for E825C
devices family.

Testing hints (please note, for previous version, 100baseT/Full entry
was missing):
[root@localhost]# ethtool eth3
Settings for eth3:
        Supported ports: [ TP ]
        Supported link modes:   100baseT/Full
                                1000baseT/Full
                                10000baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: None
        Advertised link modes:  100baseT/Full
                                1000baseT/Full
                                10000baseT/Full
	...

Fixes: f64e189442332 ("ice: introduce new E825C devices family")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

---
Changes in v2:
- improved commit meassege (added testing hint)
---
 drivers/net/ethernet/intel/ice/ice_common.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7a2a2e8da8fa..caf3af2a32c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3180,6 +3180,7 @@ bool ice_is_100m_speed_supported(struct ice_hw *hw)
 	case ICE_DEV_ID_E822L_SGMII:
 	case ICE_DEV_ID_E823L_1GBE:
 	case ICE_DEV_ID_E823C_SGMII:
+	case ICE_DEV_ID_E825C_SGMII:
 		return true;
 	default:
 		return false;

base-commit: bf7e01518c9f3f77c220bf153411d9d3d2511f16
-- 
2.39.3

