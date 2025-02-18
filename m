Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AE3A3A263
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 17:17:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E01683530;
	Tue, 18 Feb 2025 16:17:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uwuiVnEyoUaK; Tue, 18 Feb 2025 16:17:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B2348356C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739895471;
	bh=IBDrq8t9v9w2zQ0yLWUcRFxyJ6GFe/7+GKw9Dtwr/0Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g4718Exex1WgnicDPGrGIH01i6p0xYjUyxHEB78RQQuPaFeZiahLF9NMhqi64uQ0o
	 xFi11dFrehGP3DygaDGoB/ppaNybaOeXgxq3m7WDgIFPTedJpqbf8eYCr12RDZ5ZQS
	 yb3fh+w2cy23grcTKNE/4b96cqZjx9CcAk6nYKI9kNuswzi/ddwLgB1iJUz/7UZcE2
	 g7JHeRSc2xWngy0Bzpeggct+SNRPiDwSlCRJeqTUjghZkwCEv3bJb8vqk8cdzywbAw
	 25FmGkbLuKP4a1tLb39uLlfVLsmI7Ok4DLdAtA0FRyU1rkNOyiUJT3XNA1H/rzkXTb
	 n1Qfhh/3Mm03g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B2348356C;
	Tue, 18 Feb 2025 16:17:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D0B3C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 16:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E130040CF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 16:17:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kSiaDLQoIqH7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 16:17:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D354B40CF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D354B40CF1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D354B40CF1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 16:17:46 +0000 (UTC)
X-CSE-ConnectionGUID: YIQ4cQ2lTyKg5tgl1b5NsQ==
X-CSE-MsgGUID: 5il/msrSSqe4yD4UBb+SLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40620315"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="40620315"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 08:17:45 -0800
X-CSE-ConnectionGUID: xF4HKS2RQ6m5VLjy++fgyA==
X-CSE-MsgGUID: XnIVIdfoQc+4BKrz4AcE4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119083750"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.87.141])
 by fmviesa005.fm.intel.com with ESMTP; 18 Feb 2025 08:17:44 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, andrew@lunn.ch,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 18 Feb 2025 17:17:41 +0100
Message-ID: <20250218161741.4147-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739895467; x=1771431467;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XR75bg3WZqzb6NLXgJEAV1nHtNKD8PMpdk9Fdj+btS8=;
 b=iFXaQwq6y2Z479gADmulp1LEYOYbE1lH9B/jz+4VOOc7tVeiQeHvENsg
 2GcZOQ2oRhax7uQpXWD+k41/tRYXmOtL35F8efMYAhdG/V+y3oMDgU1fl
 CmRyg0DhThWvwVDRz0S497pxG0KbeSRlk7a2qD5+ZA8wkdiYCkg8Y8Agq
 dzOYJRWTgLu33KzB/4gDbdghpvUMtMxs7bgC3hU61InKPwl0rkiY0Uzmp
 beioo74fLAxuXpMG4KsH/bPPXgqxxlh2vHht+vZRIArlhvsKPNOfg0LDA
 Lie/6jvL/xSsVTCGlfg/2QNgcfZ+p5J6Ib7bvw7f8qaiBPIO/8UMVFpIC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iFXaQwq6
Subject: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix media type detection
 for E610 device
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

The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
device") introduced incorrect media type detection for E610 device. It
reproduces when advertised speed is modified after driver reload. Clear
the previous outdated PHY type.

Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 683c668..0dfefd2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1453,9 +1453,11 @@ enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
 			hw->link.link_info.phy_type_low = 0;
 		} else {
 			highest_bit = fls64(le64_to_cpu(pcaps.phy_type_low));
-			if (highest_bit)
+			if (highest_bit) {
 				hw->link.link_info.phy_type_low =
 					BIT_ULL(highest_bit - 1);
+				hw->link.link_info.phy_type_high = 0;
+			}
 		}
 	}
 
-- 
2.43.0

