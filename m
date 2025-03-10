Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FDDA5A6D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 23:16:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1974840CA2;
	Mon, 10 Mar 2025 22:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TbMIuj4Bcmuf; Mon, 10 Mar 2025 22:16:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61E2F40C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741645016;
	bh=ckm+4PbXHnRHBRsiYZNomlJIicKSLbSgOJpSXXjrtIQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8Pivwpye70uVUg0B1dTy/hobMROe8MNKebnUxxNIeWfrD0xOsHlHugmaLG7lPj5GF
	 fIy2OiS8WjblunCe9pbXL0VJOYayPeCC2cBohx8+SPPjUF/+fFeIK2gFPpQCBJMOEJ
	 fV6PnFRwvBqnxG1LpNgU/ukwJ6aQEpAbDsb9MU2Bn3xSOav+EsPuwYU5RNhGBYOwQd
	 QPZsy+kSKS0Q8MTFdtMFcDG70sbMcmvE0sz7M50Q3VsivUn6ZVAoJtNMAoOhRmj35F
	 BfgVI9bfvKIEdyuR1ekcvvd58/V8jHVgjgMBJ9yAztNmOUpuXmfgUW6+pr/UYgzr1n
	 jy8m0k9nnArTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61E2F40C9C;
	Mon, 10 Mar 2025 22:16:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8665594A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67B9640378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id THsaS162VhUJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6805C40024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6805C40024
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6805C40024
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
X-CSE-ConnectionGUID: Vi0thuo4RquSZacxn2MsbQ==
X-CSE-MsgGUID: jzAIjng/Tai+8nEmY4zWPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46443303"
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="46443303"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:51 -0700
X-CSE-ConnectionGUID: pyIFQ1evQc2fPiccT80O7w==
X-CSE-MsgGUID: Rsad+2zVT/S5NLl9/fCAXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="143315040"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 10 Mar 2025 15:16:37 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-jk-net-fixes-supported-extts-flags-v1-2-854ffb5f3a96@intel.com>
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
 bh=uPzVgNJtr9kkTWtPDLiGgIWOsAJbSrZd8+u0qOMgpFE=;
 b=IwUC9NyHwGyvwcePIOvfoOg9cHlGRmD8fuMGgaDlbolH9AOiO2DHRwcC
 OAyuFOitAJr1bDTdzI/HUJ1UVeKDhDYbKoknhI1nKr4DYp+BzcBKwMRZX
 oNMLDFj+OId0pTYVutFOr5g1Df1gcs1ETUGwyaazmI1bMh58yijo3/Wka
 vybl51qYzffsCi47v9R5q3yzs/iXF4rJoR9f/P19Dh78rT8IGYCRPMvdR
 YAXThUAjcAisGoqc7rtq19P51w8yPPG9qXVYSO/reijV1F7QspeUvxwjD
 oguPT5uoj8QkEXgDwJ0eZo8HtPbhBHJi8KV4jnBO1hIGzQ6SnPi95pwK5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IwUC9NyH
Subject: [Intel-wired-lan] [PATCH net 2/5] renesas: reject PTP_STRICT_FLAGS
 as unsupported
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

The ravb_ptp_extts() function checks the flags coming from the
PTP_EXTTS_REQUEST ioctl, to ensure that future flags are not accepted on
accident.

This was updated to 'honor' the PTP_STRICT_FLAGS in commit 6138e687c7b6
("ptp: Introduce strict checking of external time stamp options.").
However, the driver does not *actually* validate the flags.

I originally fixed this driver to reject future flags in commit
592025a03b34 ("renesas: reject unsupported external timestamp flags"). It
is still unclear whether this hardware timestamps the rising, falling, or
both edges of the input signal.

Accepting requests with PTP_STRICT_FLAGS is a bug, as this could lead to
users mistakenly assuming a request with PTP_RISING_EDGE actually
timestamps the rising edge only.

Reject requests with PTP_STRICT_FLAGS (and hence all PTP_EXTTS_REQUEST2
requests) until someone with access to the datasheet or hardware knowledge
can confirm the timestamping behavior and update this driver.

Fixes: 6138e687c7b6 ("ptp: Introduce strict checking of external time stamp options.")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/renesas/ravb_ptp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/renesas/ravb_ptp.c b/drivers/net/ethernet/renesas/ravb_ptp.c
index 6e4ef7af27bf31ab2aad8e06a65e0ede6046e3c0..b4365906669f3bd40953813e263aeaafd2e1eb70 100644
--- a/drivers/net/ethernet/renesas/ravb_ptp.c
+++ b/drivers/net/ethernet/renesas/ravb_ptp.c
@@ -179,8 +179,7 @@ static int ravb_ptp_extts(struct ptp_clock_info *ptp,
 	/* Reject requests with unsupported flags */
 	if (req->flags & ~(PTP_ENABLE_FEATURE |
 			   PTP_RISING_EDGE |
-			   PTP_FALLING_EDGE |
-			   PTP_STRICT_FLAGS))
+			   PTP_FALLING_EDGE))
 		return -EOPNOTSUPP;
 
 	if (req->index)

-- 
2.48.1.397.gec9d649cc640

