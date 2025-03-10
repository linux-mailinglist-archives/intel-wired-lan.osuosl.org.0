Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3CFA5A6D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 23:16:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4569560747;
	Mon, 10 Mar 2025 22:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gCMRQo8ncvXu; Mon, 10 Mar 2025 22:16:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74AE36075F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741645014;
	bh=EBUz6etVaeIimIUGIkH5dI3Yhl3rIPdIAdEeICWh6cU=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wefI4xbOXW3hLNH77vjrTRbGFDlED4Vn9slwH+iiVA+xEtWNMixMho6bC7WV1w0aX
	 u2795XBH4gAeynQecot64FSUXZotz7vxo3eKShjnNr4HMklImwQB0eRw0ctY2CXB84
	 gaL+qFg7BLVoa5gKy6yc+LOzHvq8FH0DO87LbcNO+ChfVrBV7/J8MlXwQNXD5XlbPI
	 kUGHfI0CmBwvCJCb/SPGb3xEBwTmvnlA12HlglYuGbJ8x05RDGDQPhWU/5j9oTdUvT
	 ay+kj7gjQuv+SDrZtL3k8vnJPwvpdh3gaTZ56cbnU9ff5GT//x/R4vCmf32u482XgR
	 YQvMbh3BRhRMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74AE36075F;
	Mon, 10 Mar 2025 22:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 87542EDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8187581EB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEqwkDfHw61v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 22:16:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9496981E94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9496981E94
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9496981E94
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 22:16:51 +0000 (UTC)
X-CSE-ConnectionGUID: 366aEcq2Sq6cOuXCuceXmQ==
X-CSE-MsgGUID: XWUmuWXKQbC33aKFD1kuJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46443277"
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="46443277"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:50 -0700
X-CSE-ConnectionGUID: PSw1ICMzSayj7hbOQ+CvGA==
X-CSE-MsgGUID: wIbL1Gw/TPO+Vxm76VVhhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,237,1736841600"; d="scan'208";a="143315031"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 15:16:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 10 Mar 2025 15:16:35 -0700
Message-Id: <20250310-jk-net-fixes-supported-extts-flags-v1-0-854ffb5f3a96@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMNkz2cC/x2MwQqDMBAFf0X23IUYDUh/pfQgzdNuW2LIxiKI/
 +7icWBmdlIUgdK92angLypLMmhvDb3eY5rBEo3JOx9c1zr+fDmh8iQblHXNeSkVkbHVqjz9xlk
 ZQ9/1cYAPwZONcsGl2+dBFtPzOE4TnFoZeQAAAA==
X-Change-ID: 20250310-jk-net-fixes-supported-extts-flags-e8434d8e2552
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
 t=1741645011; x=1773181011;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=TsIVHhAGzWgkmSmlzL5RUweT57BypUp0vQOzaPl/oNY=;
 b=byXYwimgMfGrMhFZHWRWOyb1xYyw4L29DKyOz6Q8d0pQMrBu04g9+N2Q
 Ey0GnQ7WSvkoBK7IqidksJnWKXFApfi2loR/7dQaPEvxk9u9AkDYv1T4S
 D05VxqummNSSJfa779DGi4aWKiDjSd7nSzBo1fzqzoveUzxJyBY4zpTql
 3cSgsaKyQXsDkSg/SmcihxsCAbZcQc6NvWR9bZ7tZ3F8E8loUpICKz7gF
 JlQM59ryg78CxR2m3nepY85nTERl1LGC5edSqLtcyXbB5qwWm2f8FKQIW
 BryKIzfq6Nnrhl0zPdGdOacDHuYTephEIl2BSpZPt4COVir0cYLZHGVJb
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=byXYwimg
Subject: [Intel-wired-lan] [PATCH net 0/5] net: ptp: fix egregious supported
 flag checks
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

In preparation for adding .supported_extts_flags and
.supported_perout_flags to the ptp_clock_info structure, fix a couple of
places where drivers get existing flag gets grossly incorrect.

The igb driver claims 82580 supports strictly validating PTP_RISING_EDGE
and PTP_FALLING_EDGE, but doesn't actually check the flags. Fix the driver
to require that the request match both edges, as this is implied by the
datasheet description.

The renesas driver also claims to support strict flag checking, but does
not actually check the flags either. I do not have the data sheet for this
device, so I do not know what edge it timestamps. For simplicity, just
reject all requests with PTP_STRICT_FLAGS. This essentially prevents the
PTP_EXTTS_REQUEST2 ioctl from working. Updating to correctly validate the
flags will require someone who has the hardware to confirm the behavior.

The lan743x driver supports (and strictly validates) that the request is
either PTP_RISING_EDGE or PTP_FALLING_EDGE but not both. However, it does
not check the flags are one of the known valid flags. Thus, requests for
PTP_EXT_OFF (and any future flag) will be accepted and misinterpreted. Add
the appropriate check to reject unsupported PTP_EXT_OFF requests and future
proof against new flags.

The broadcom PHY driver checks that PTP_PEROUT_PHASE is not set. This
appears to be an attempt at rejecting unsupported flags. It is not robust
against flag additions such as the PTP_PEROUT_ONE_SHOT, or anything added
in the future. Fix this by instead checking against the negation of the
supported PTP_PEROUT_DUTY_CYCLE instead.

The ptp_ocp driver supports PTP_PEROUT_PHASE and PTP_PEROUT_DUTY_CYCLE, but
does not check unsupported flags. Add the appropriate check to ensure
PTP_PEROUT_ONE_SHOT and any future flags are rejected as unsupported.

These are changes compile-tested, but I do not have hardware to validate the
behavior.

There are a number of other drivers which enable periodic output or
external timestamp requests, but which do not check flags at all. We could
go through each of these drivers one-by-one and meticulously add a flag
check. Instead, these drivers will be covered only by the upcoming
.supported_extts_flags and .supported_perout_flags checks in a net-next
series.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (5):
      igb: reject invalid external timestamp requests for 82580-based HW
      renesas: reject PTP_STRICT_FLAGS as unsupported
      net: lan743x: reject unsupported external timestamp requests
      broadcom: fix supported flag check in periodic output function
      ptp: ocp: reject unsupported periodic output flags

 drivers/net/ethernet/intel/igb/igb_ptp.c     | 5 +++++
 drivers/net/ethernet/microchip/lan743x_ptp.c | 6 ++++++
 drivers/net/ethernet/renesas/ravb_ptp.c      | 3 +--
 drivers/net/phy/bcm-phy-ptp.c                | 3 ++-
 drivers/ptp/ptp_ocp.c                        | 4 ++++
 5 files changed, 18 insertions(+), 3 deletions(-)
---
base-commit: 992ee3ed6e9fdd0be83a7daa5ff738e3cf86047f
change-id: 20250310-jk-net-fixes-supported-extts-flags-e8434d8e2552

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

