Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9149BF5D6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 19:59:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04D1780841;
	Wed,  6 Nov 2024 18:59:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0a95dHVNjO3r; Wed,  6 Nov 2024 18:58:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51F8E80582
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730919539;
	bh=Ef3H/vD7194lIy83Tm0BkkEZo0LAwI685eAnZCwVzaE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ppOiyWWxAZ7bcsTvd3n1nCJ0UzxcnqelEhprzxRqA1/uqQ0U16CyrcCEjwj9zymA5
	 SSqVKKVEYuQWKiYAAB4ywvObA7GEGW44dH5HB9peNhwGEY5kg1ZMNbqlELQuWYp5MA
	 XE526au0su6sRRZPo8RCdZMU5fu788EsK1iP1zHYzwxcZHzwH9NFMq20M3/+W2JAK2
	 JcznAa05pQcBdEky7mRFYXGuqdSEfY7EidLDTqe97MU0kpHc36wM42RqKa75Mhgvb7
	 UDxY3RRuXQCZkBqxukGmcxxxup6a+HPyAjp1FMHWeVfIttelsKqmsJNBOtF9osmSJo
	 eiRgbJUSO8sWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51F8E80582;
	Wed,  6 Nov 2024 18:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 118C927D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A02B4605F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id enakuY_HbaYX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 14F0E6072E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14F0E6072E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14F0E6072E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: Se3eM1iHRS6y6RPdxW404w==
X-CSE-MsgGUID: Lbhm7Cg1SaGYUem0BrSsvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30959478"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30959478"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 10:58:51 -0800
X-CSE-ConnectionGUID: ZR5yPnz3QxqLoS0eu4ZYZA==
X-CSE-MsgGUID: 1a109r1QQcCjJYWYVWOQkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89813799"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by orviesa004.jf.intel.com with ESMTP; 06 Nov 2024 10:56:41 -0800
From: Christopher S M Hall <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com
Date: Wed,  6 Nov 2024 18:47:21 +0000
Message-Id: <20241106184722.17230-6-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241106184722.17230-1-christopher.s.hall@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730919532; x=1762455532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BSTanTvgy8F9pAWrlA1C77KF0dadSQNV5HSq+b3Q1QA=;
 b=SHn9WMRSRRM6+VxKE71A2d0kBHlOOWpON8uSJryZ7L59TQBKr7X5f14O
 WEb+YvIF9bGIZv9lT/Q03b3hEZvc+gp5wnUPFiFySd437YMMHgK78KzlK
 XFG7/0rNjjVZkW5YXslPRORnLL+9eA6uEa2z7W9jlyILijLfbm/SOTTsr
 UW8J3dGZsORKGXG1In2iZva3/SMuyL06TLiQNmcFC78sKRkVlSdbrxbV7
 9tfsah94PcZGbBe3JvPQr+qrumeFFSyD6Yl0TXTvUrVIIrVxOuii6QPcl
 VJ0m3Zijo52c2pjeeKrU9nMrqaIZT2eBU2hiR4UWsl2JyYjDFruR1M/Iu
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SHn9WMRS
Subject: [Intel-wired-lan] [PATCH iwl-net v3 5/6] igc: Cleanup PTP module if
 probe fails
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

Make sure that the PTP module is cleaned up if the igc_probe() fails by
calling igc_ptp_stop() on exit.

Fixes: d89f88419f99 ("igc: Add skeletal frame for Intel(R) 2.5G Ethernet Controller support")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6e70bca15db1..cc89b72c85af 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7169,6 +7169,7 @@ static int igc_probe(struct pci_dev *pdev,
 
 err_register:
 	igc_release_hw_control(adapter);
+	igc_ptp_stop(adapter);
 err_eeprom:
 	if (!igc_check_reset_block(hw))
 		igc_reset_phy(hw);
-- 
2.34.1

