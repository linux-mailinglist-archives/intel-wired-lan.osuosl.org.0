Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63083A5A6D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 23:16:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC0FD60825;
	Mon, 10 Mar 2025 22:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89fyWaANcyl1; Mon, 10 Mar 2025 22:16:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C53960893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741645017;
	bh=hfinatF5AaKjd5S06DgXCok1crYn+a7YqDybNCmTCyM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=queQkAa2LSDvjR1sc9aPeDTiStx1blIzprCybgUVoMUpWx8WGfmaLYyFgUh3WA1rX
	 5cJLA9agZTv/iuJ4oPiSv/5lWMOuOOKJbVQ5OAYf8AAFiF4/w8m51cmqBST2N+ZToV
	 keeDYSicmp2sJ1OSMRCCddNo/73KfINo6hMXinkxCIB+oPM8uw97HZ0x5BnATFTnAo
	 0uSokgeaRsSWvO4iZ13sX6z3lFz+uEA+evQgI5TW9cx2bbXokJnQvmdIE4pUjCxL34
	 vnqksP6CqiMultBAFwbq7GQG72gtjgv3DgN8HwDt0hcnr+7AqIAMQfs3aRcBeK0lFk
	 5mmrdl0StYG3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C53960893;
	Mon, 10 Mar 2025 22:16:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BA84EDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CCD981EA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ijo3kF2tvzs6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C94881EA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C94881EA9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C94881EA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
X-CSE-ConnectionGUID: dCwyGMOwT26a87otQEFKlw==
X-CSE-MsgGUID: kr7tFbhGSrGKRrefmY98vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46443318"
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="46443318"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:51 -0700
X-CSE-ConnectionGUID: aIwT9U65RtWSb4jdW5AY8w==
X-CSE-MsgGUID: Hu8Gqi8uTCS1Ssqen7xDmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="143315046"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 10 Mar 2025 15:16:38 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-jk-net-fixes-supported-extts-flags-v1-3-854ffb5f3a96@intel.com>
References: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
In-Reply-To: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, Raju Lakkaraju <Raju.Lakkaraju@microchip.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741645012; x=1773181012;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=VzLmmWyim0nHsZCIPWUYMGPDjbA4w3HmsLWEbB6sip0=;
 b=Wv0yEX94pzeSFFkf+6LuX4t3v4i6KxuA1GS8LaJ3yQrbZSQWSNI1Q2Sa
 e1xqjmxgHifUJbq1ke9pbChn/K2JiFFygXv1RsTtsnH2I2vk+Tx/XS13k
 AGXsApuazwZ7q0ruf/VN9PDQD+wvWBgkwcN2IOHojVxGJwtwCpuQQY6j1
 s+7Qsi8dQ+cx3IqLCZXnz9u5YC5C/+nsELWzY9t/4xIJ36uMq6TQ+aBaA
 dodfBybtiydQujn+l4cO9oPNlE7Dzx7CZzW/IGXMlwb84Lgg4YdiTiU+1
 47rBJoVxPucUFnGLj6naYT4qrShl0hn6iFHcmXRa7Iz0hiBnXMFZ/Wym9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wv0yEX94
Subject: [Intel-wired-lan] [PATCH net 3/5] net: lan743x: reject unsupported
 external timestamp requests
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

