Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B064BA5E71D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:16:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 399BC60E4A;
	Wed, 12 Mar 2025 22:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7o9s4l3uH_-4; Wed, 12 Mar 2025 22:16:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7335860E63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741817777;
	bh=1b1OSuI0Vq16xBvLhdTQOj/+s4Ha1OPPkOX1WjopkOc=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DxBtsTymYMbiz1d3u5Ip2e6w/s8hhymjXrM1Nv2itw1IABihB/6wVmg6cKm/X4iy6
	 E0vIBZD+ypXjK2eMHfYYO1nid2uzvtmhFGe3y6lLYsUWJVfjihDPb0CF+07F4qWiKc
	 W9zTd4mQfPJtzyOLL6rezk9QXXua+ksc4CK4dOmquw+TCPdS0YjD9fQg3cobAyvOpN
	 A7WWz0i3IU8H9mc6FW1lPe3X/3XuGxQPHVgWQzZJ4dU1PPjxKhv4PFHJM7poJ1Va1D
	 K1ERRxlmaYaBel5QR6WXf/P1x9/qMNZHmyRwmOmbL1jVfUS3VFaD34r4T9qiYcCwCg
	 ipggZqFWf+8Ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7335860E63;
	Wed, 12 Mar 2025 22:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 341F0128
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3646A60E31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F4O76qpR5sfp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8D05960E1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D05960E1D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D05960E1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
X-CSE-ConnectionGUID: PrXSMyAcTWGCyPIkbN2osw==
X-CSE-MsgGUID: o+bwCrpYTGGcynuTFqsn4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="54288421"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="54288421"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:08 -0700
X-CSE-ConnectionGUID: NU+jXKSzRhCVauvSo0DIVg==
X-CSE-MsgGUID: UO53gP7LTCGerISZjlE5Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125950248"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 12 Mar 2025 15:15:53 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-jk-net-fixes-supported-extts-flags-v2-4-ea930ba82459@intel.com>
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
 bh=vgAZuqrWQCBG8jhKLQ4s5o+NgYF0GeB2/KjKVbVyH3U=;
 b=UuP3LBGBZn6ssLWznPiDNzauWwW5mrtdzO+hJ+Ic6YVS3OMKzM5qV184
 HPPkzi/gee3M/fozXq/+mBlgoVRxDIV89cr1FWT5fP5JNpkWvPqGVV2ha
 APdylVgr8eBEUPjjrFp+eotOYArDp+1HNrOsTXNhe/2jlFh34FKuFZvSt
 CL5y7TOUx/WUDWwPxyIOvWCFxvfUHycNtb16oTljGD2ooGpYzkkSgnxoi
 CVSbfc0fL1jidFHlNxeFs7z6/IuyT/iEztUkwrM2LW2GxD/qaAhO5ZTSB
 9dVLOZ1XUGnd5CfkDbyCP8nfD0vV4JxTpYucNCZlBR7djeEz1bvbJ2UsY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UuP3LBGB
Subject: [Intel-wired-lan] [PATCH net v2 4/5] broadcom: fix supported flag
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

