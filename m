Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A52A5E71B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6761841351;
	Wed, 12 Mar 2025 22:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k568wI33MyeL; Wed, 12 Mar 2025 22:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8557C41346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741817776;
	bh=ckm+4PbXHnRHBRsiYZNomlJIicKSLbSgOJpSXXjrtIQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nOsHcz6toFlm4c257E4ucIlzLMqt+w3d8iAWVtX1EE0rQnxTzY6z8/BDyGUrPEjbF
	 g2gCEb4uhEdwqoAjpWteJt/HgO9Grl8ZLS0YX8VhpOcHdxr+bgKfnsYPG3elLdjdgN
	 i2EZNT4ZR5vHPxLA62cN4GBmp59454KmHJFWLlVTwyZUuR0TQiZXb2cLFOOW3S7hJl
	 gh+E8IcuUzkRPArthayeGw3gWhMkGsfaCofipjvOgrwYFwieUbVhAuyDiWUK+1lT5a
	 xCSaplLBjATqBaWS6CGiZ0iceCHtRDzDHeKIjuD0R0vUnZb4CA1icLgiOBk6cpvjej
	 9/dFbD7FrhAVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8557C41346;
	Wed, 12 Mar 2025 22:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 934E21E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79A7741340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBq6ufLqVjo8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5971741339
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5971741339
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5971741339
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
X-CSE-ConnectionGUID: Fuot9ItTTQq6eZ2y8pz6hg==
X-CSE-MsgGUID: ZJ5meHOlTb2DMHfkuQis+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="54288388"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="54288388"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
X-CSE-ConnectionGUID: RPZqz1gqRd2fk2ZEEyOS1w==
X-CSE-MsgGUID: hNR8Cw4qTzSxMi0CU6QKgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125950242"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 12 Mar 2025 15:15:51 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-jk-net-fixes-supported-extts-flags-v2-2-ea930ba82459@intel.com>
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
 t=1741817770; x=1773353770;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=uPzVgNJtr9kkTWtPDLiGgIWOsAJbSrZd8+u0qOMgpFE=;
 b=X4m0JfJOqlLXOsMDE8rLogrUaKDM8R71fpHb5A3CPEsj2UrLeb21r/2d
 X80cijbk7q1Tt21lJqt1F07uQyfpiYepyHFPCIr/6H0pLF1ejyhsfF0jF
 W8pFJVcEJ22+93Q0YEYg562jWzm5ok1fEPREnrftQoanQbs28r0d3ZecO
 hQjwYfb4z0GmLN12eX2WA8BVaRehKaohCsGy1gqIupKz8Tf/AoR1jIVzY
 5kJn/Vo0Ghkja6JCGuX8aTQo+qZWUy7lIvOkcWplEZS9m0x984Mg27vxC
 JGTLLlVd5Roce6GuhByiG/9QZ4J71DDKU+B5JZCLpewpww5oL6y6GAgEe
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X4m0JfJO
Subject: [Intel-wired-lan] [PATCH net v2 2/5] renesas: reject
 PTP_STRICT_FLAGS as unsupported
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

