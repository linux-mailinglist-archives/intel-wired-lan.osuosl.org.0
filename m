Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C5CA5A6D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 23:17:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8DEA40CBE;
	Mon, 10 Mar 2025 22:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cr6-wfFzmg42; Mon, 10 Mar 2025 22:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 224D8408FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741645018;
	bh=1b1OSuI0Vq16xBvLhdTQOj/+s4Ha1OPPkOX1WjopkOc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xxx5KbMgk6lKUqNOUs8b5fEVhz0GnEOtpqosZH8fxMC0Em20sF4H9g1uYy/J8nOs7
	 0aDBWv4SQRi01/y1QTW40XsM2ljswnW7D3og2Nlgkdj8J50RkBNfhhjsydIjoDLV4o
	 f5yN3eZSJTHtO2yabE4O4uGcWlNOR8kDm93Pqix1w7eOqSxLN94LVX4hcKr3WqfVgR
	 khTAxMbmmUS1Gx4X5kVNeTVg7FNeFcd1JiOuz0CSUOVXvYc2gjmF/eSz96/wp8alIH
	 RFEy8QgF3+Xf8Xp5pHgliHFhRdacr41HbmiXAi3dPviiXJEVhvMrp7is7FAwGlBXhl
	 djsTgHZN5CJaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 224D8408FA;
	Mon, 10 Mar 2025 22:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 241CAF10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0366540024
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I2aIl5rbMMYf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C4F2F401FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4F2F401FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4F2F401FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
X-CSE-ConnectionGUID: vxgChV4oQnC8XWGnaMh7EQ==
X-CSE-MsgGUID: zYQ3WMnfSgauRr1A1iZwaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46443333"
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="46443333"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:52 -0700
X-CSE-ConnectionGUID: IFiZBJ1MRY69tA7JEHGrhQ==
X-CSE-MsgGUID: 298+Y2kOS9eoNIBjE0E6Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="143315050"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 10 Mar 2025 15:16:39 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-jk-net-fixes-supported-extts-flags-v1-4-854ffb5f3a96@intel.com>
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
 bh=vgAZuqrWQCBG8jhKLQ4s5o+NgYF0GeB2/KjKVbVyH3U=;
 b=HJhBzACk9faEkK9HmcWQQfwhUtDCqtDQ9Wn7chCUUsAostfGk3Xp4kFX
 /cw0giIeKzWrrkQ7o/Ec3ev8vZc+VOVa3F+/yxVHLnSYJ7pCSXP8LpEMT
 rsp/wrcwgoij/I2LelrqwQWY8E5/huOCJyfjA0O1f3LEP/YJutBjIHrD+
 iBpeF/B/Nkm9R39wY4tg82NI90XHwhwA5CdI9xLqSK+EyzvDfoB7Id3Dg
 upWCBnErLkp9NyY7XAPX1T3bxQuwiF0tPWbGc9Z8eo7zTOOmKIcqHnVsy
 mBAO7G2Zb3GVAf5oXJ+kzpbmMBbK+0HfgoeyyxayLkfslWEJo5jtbTaXC
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJhBzACk
Subject: [Intel-wired-lan] [PATCH net 4/5] broadcom: fix supported flag
 check in periodic output function
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

In bcm_ptp_perout_locked, the driver rejects requests which have
PTP_PEROUT_PHASE set. This appears to be an attempt to reject any
unsupported flags. Unfortunately, this only checks one flag, but does not
protect against PTP_PEROUT_ONE_SHOT, or any future flags which may be
added.

Fix the check to ensure that no flag other than the supported
PTP_PEROUT_DUTY_CYCLE is set.

Fixes: 7bfe91efd525 ("net: phy: Add support for 1PPS out and external timestamps")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/phy/bcm-phy-ptp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/bcm-phy-ptp.c b/drivers/net/phy/bcm-phy-ptp.c
index 208e8f561e0696e64bd5e842b66d88c65d70bfc0..eba8b5fb1365f4e43331e479e8e2f3c4b590ab96 100644
--- a/drivers/net/phy/bcm-phy-ptp.c
+++ b/drivers/net/phy/bcm-phy-ptp.c
@@ -597,7 +597,8 @@ static int bcm_ptp_perout_locked(struct bcm_ptp_private *priv,
 
 	period = BCM_MAX_PERIOD_8NS;	/* write nonzero value */
 
-	if (req->flags & PTP_PEROUT_PHASE)
+	/* Reject unsupported flags */
+	if (req->flags & ~PTP_PEROUT_DUTY_CYCLE)
 		return -EOPNOTSUPP;
 
 	if (req->flags & PTP_PEROUT_DUTY_CYCLE)

-- 
2.48.1.397.gec9d649cc640

