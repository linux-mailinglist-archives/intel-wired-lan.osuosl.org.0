Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC95A3F1CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 11:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FBB38204F;
	Fri, 21 Feb 2025 10:19:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cisjmuq0_4vS; Fri, 21 Feb 2025 10:19:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47E8281FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740133193;
	bh=akLaaq4tsR9REVCGRX2V7ftyRzW2yYZIt+/Jl5qC6Xc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zxSmVEejnEZo9KViaNdbFkmJVO9YthhzFtiBbmONUEz+sbgdJdEt8R8415tIES8z2
	 FNgmaEu6O8WAQZ0xvk2O6qOb+V3t0rK19uAsqrooQNfscIL2365zxmE3g/hRcQ+U3r
	 pbHfRN9OnLbaUeFG9LJy56iNOlrUlIwIdHAS0D0lH5za2jHwVqvHbDs9IJIirkyTiG
	 OyIEaVdWF4lwsMK8jn7cQpIov5Xpnc94Tc4fQGHlqIL/MuZO5pwHn5fGA20HXrBTG1
	 qkwrAPLBNd3UdAU+g6mqcADniepJ/3uYLSG68KfIhiriVUu1hw+WgSvSRpUyICUnFP
	 ngq7BVSrAYeoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47E8281FF5;
	Fri, 21 Feb 2025 10:19:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07C876B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 10:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBA5881FF5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 10:19:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iDiT8_V5a1yT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 10:19:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A20C81F1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A20C81F1D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A20C81F1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 10:19:49 +0000 (UTC)
X-CSE-ConnectionGUID: sqLBTgRlRY+JUlknavgA9Q==
X-CSE-MsgGUID: KSSJxhopQiW4cI9L6GcrdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52378416"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52378416"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 02:19:49 -0800
X-CSE-ConnectionGUID: q8y8ZRXsSse4wET1gGMeNQ==
X-CSE-MsgGUID: XwlGBv8oQpedO21xoIX0KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="152528112"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 21 Feb 2025 02:19:48 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Feb 2025 11:16:08 +0100
Message-Id: <20250221101608.2437124-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740133190; x=1771669190;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JYyOnp/OuwO4wl7taJd+x0fNGeIDkomWjxqgmJienSI=;
 b=XBmt2OnZNNdZW7M6qRNQ913eNHbx+bbDymFZ+9EIkiucSKoWpno4c9WW
 SF2GijI7EimPj8Yc3V7xfEDgWv4OvZmASgCp+83ExcTx0Bmwdt8/7ejwE
 rUIgqbGyFvGyDsH/hRf9kq+W2HlMcxERZEiI9xaHIY6oT+ElshZBTCcvE
 TJYPnUvxx3/r5Pbh0T3b2eoed8mOWOdAkzPF7cNVEiEF5vBgRRucPIDiH
 +eU9OaYdLcGqrz+j8tv4kfNh8fZFcXiQZi7K1y5jyAHOK7GsRiFTnqu9F
 4gZ8snKzs+O/1StJv7BusALtJ06onzxi771rJRDN7rsGjh7b30Zr97Gxt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XBmt2OnZ
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Allow 100M speed for
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add E825C 10GbE SGMII device to the list of devices supporting 100Mbit
link mode. Without that change, 100Mbit link mode is ignored in ethtool
interface. This change was missed while adding the support for E825C
devices family.

Fixes: f64e189442332 ("ice: introduce new E825C devices family")
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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

base-commit: c4813820042d447c687cf4f1d5e240740638e586
-- 
2.39.3

