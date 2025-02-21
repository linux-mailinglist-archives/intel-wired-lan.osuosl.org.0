Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54403A3F959
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 16:49:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89CDC40BD2;
	Fri, 21 Feb 2025 15:49:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3NPxG5KUGeK; Fri, 21 Feb 2025 15:49:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C521940759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740152966;
	bh=vxFKzfl1qUror9TfkuJ+HDlQPH5Jj0C2oOhtDimdrcE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DuvV4t0MHlTJQVj1PoPaY+bjn7uXR/Vwt5jx1So8f4wP5KA72RuMW+mLXHzVAbb7D
	 U281fBAcZ7ZXb2iIWvfa2jc4BxV5Phlh2Q4AZIWetXamijJsz3OftZp2Y8KnTBYJcD
	 v0MvqbzicJJCDmUoyO9ghPrepZ8RCdEuIQm3uTL5zkEkYHIRGxGaKhMbTCtFpaUCES
	 2YGjvefx+HoUfETMdiXkXfHb0Y7OGOVoQkUycynCIeAJTY/rRu//hEW4Hq5XB69FHm
	 6p7sMuqBOnuIwnNQJLtmZv5Fx2O3FDujE2jsub22UG1vK4a9masDEuIruijzKAt/LV
	 aYSf+xojZOz9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C521940759;
	Fri, 21 Feb 2025 15:49:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 535E2D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 15:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A7DC40773
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 15:49:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lbVPT0dy99Ue for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 15:49:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4111D40759
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4111D40759
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4111D40759
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 15:49:23 +0000 (UTC)
X-CSE-ConnectionGUID: fD+XCtk3R2idCDWdVKezeg==
X-CSE-MsgGUID: vi03Fx+fQsumv6cBak982Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="28568989"
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="28568989"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 07:49:23 -0800
X-CSE-ConnectionGUID: HYrdzkobSkC8CkxPmeC3sg==
X-CSE-MsgGUID: Z9anu8g5TTOG9gVQOHA3AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="120503049"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.119.85])
 by fmviesa004.fm.intel.com with ESMTP; 21 Feb 2025 07:49:21 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de, andrew@lunn.ch,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 21 Feb 2025 16:49:17 +0100
Message-ID: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740152964; x=1771688964;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Safi/ZaRImAt4ByykRE6KlGbcE2+yBZJn6XUR51YY70=;
 b=ddtQf4koXIUIOtSZldkDJBWVbG+grJQvsU8lA6t+BrI/+21YRAs1DaDG
 vWzcW7SPCwEzCxY2R3hRx+jwWyGRkU/MJsFTvhkFWTdwim+aGJ7tt/NHX
 vt80PyJogroA35p9gvUrxUK6PVI4VTQbT47P19LbEqtLg6L3YxjiyORB5
 1r1aINMiqa/pDgNyOuJUqYB92iI+FMBhmWLtTsbtIbGISbivS7gYQQVCb
 P8R15ULMYtAukZWW9kC013T5l0vI+YJ8ssu7zADsA8w6FOS3xKraawF/4
 U0JnSgBe3Zfpj81m9jffFcaeAsaVIFcwxM88bph2g9EVd/HiRiCosLPhA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ddtQf4ko
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ixgbe: fix media type
 detection for E610 device
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
the previous outdated PHY type high value.

Reproduction steps:
modprobe ixgbe
ethtool -s eth0 advertise 0x1000000000000
modprobe -r ixgbe
modprobe ixgbe
ethtool -s eth0 advertise 0x1000000000000
Result before the fix:
netlink error: link settings update failed
netlink error: Invalid argument
Result after the fix:
No output error

Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
v1 -> v2
  More commit message details and reproduction steps added
v2 -> v3
  More details in reproduction steps added
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

