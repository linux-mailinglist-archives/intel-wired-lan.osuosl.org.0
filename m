Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C34A5E718
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9345241343;
	Wed, 12 Mar 2025 22:16:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ucxv_sWehBjW; Wed, 12 Mar 2025 22:16:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9BA541340
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741817772;
	bh=hfinatF5AaKjd5S06DgXCok1crYn+a7YqDybNCmTCyM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VxpQd2lhSgEuamKrpHRq6a02K69iwKRJyWxMa+6BBmaQxG94xVamG/2SzryulAUCD
	 K6Z0VPFu73ii+EQeYtUzZTW7w8p1uOYCB1iDsH9hBt+sDJAlT63gZSQ8/0EFWzeVof
	 iT0SoAXfRrMca8b2+vEIYzr9PZaWax2ajTCtEgHHRjhlHRzaoeI5XslwGqKSnksP2K
	 KGltqmZvdbIC2cmxIyv8r9AqeP4P+ZiQjZgM+1x5BpdlYnk9BRlOTKdf0JORM/Tmvn
	 yRPt8Hz51i53ITDImYlaIOhQK1SmUT1+qJAwY4tUlKG0mLtxbUoQujkYgCQd8v9dYp
	 W2tgPUYW2yV6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9BA541340;
	Wed, 12 Mar 2025 22:16:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5B4B1E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E044A60E44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B1rOQAsiZgBU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AF0C60E48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AF0C60E48
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AF0C60E48
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
X-CSE-ConnectionGUID: RJ44kznASNKTofWVpUzJ+A==
X-CSE-MsgGUID: RL9zaP6OSIKBzLbVe4LHPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="54288406"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="54288406"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
X-CSE-ConnectionGUID: Ucezg74kRGKlYbjB2GPKQQ==
X-CSE-MsgGUID: TuONhjYaQf2evtu/9Ja0FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125950245"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 12 Mar 2025 15:15:52 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-jk-net-fixes-supported-extts-flags-v2-3-ea930ba82459@intel.com>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741817769; x=1773353769;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=VzLmmWyim0nHsZCIPWUYMGPDjbA4w3HmsLWEbB6sip0=;
 b=Bz42ezqWABAHRmNcSXSUTnVBRG27rlzVaYrKsRVNf+6f88rntqshN5eP
 4MmsVUkNVOmpd9B6dhx7Qd363iQe2MIBVN9HWiRXl/TVHF4hNrHN4yExV
 ZsjtdNXuMC+5tSRa/e//z3iOamNSVlWizJeX92i5SxeZEqqQQEphlB8Ck
 nFCaf4eyIGHkxNlgeNUHOZWfAKCXpTrzMF+chTVvLr+t6Ac3IUlMlbZ82
 UZgJQFZOKwyrEIcEw4MtdbXgtNxJ44PbhKT1jo7h9wVHJDssgKGqG6sjm
 Xm7AbRd58rF7svh31UFE9NV8m69sDOa/DVwb65gvPiW10OqMEI9DuSplM
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bz42ezqW
Subject: [Intel-wired-lan] [PATCH net v2 3/5] net: lan743x: reject
 unsupported external timestamp requests
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

The lan743x_ptp_io_event_cap_en() function checks that the given request
sets only one of PTP_RISING_EDGE or PTP_FALLING_EDGE, but not both.

However, this driver does not check whether other flags (such as
PTP_EXT_OFF) are set, nor whether any future unrecognized flags are set.

Fix this by adding the appropriate check to the lan743x_ptp_io_extts()
function.

Fixes: 60942c397af6 ("net: lan743x: Add support for PTP-IO Event Input External Timestamp (extts)")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/microchip/lan743x_ptp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/microchip/lan743x_ptp.c b/drivers/net/ethernet/microchip/lan743x_ptp.c
index 4a777b449ecd03ac0d7576f8570f1a7794fb3d06..0be44dcb339387e9756f36f909f65c20870bc49b 100644
--- a/drivers/net/ethernet/microchip/lan743x_ptp.c
+++ b/drivers/net/ethernet/microchip/lan743x_ptp.c
@@ -942,6 +942,12 @@ static int lan743x_ptp_io_extts(struct lan743x_adapter *adapter, int on,
 
 	extts = &ptp->extts[index];
 
+	if (extts_request->flags & ~(PTP_ENABLE_FEATURE |
+				     PTP_RISING_EDGE |
+				     PTP_FALLING_EDGE |
+				     PTP_STRICT_FLAGS))
+		return -EOPNOTSUPP;
+
 	if (on) {
 		extts_pin = ptp_find_pin(ptp->ptp_clock, PTP_PF_EXTTS, index);
 		if (extts_pin < 0)

-- 
2.48.1.397.gec9d649cc640

