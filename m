Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0739CA88DBB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 23:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9332E60697;
	Mon, 14 Apr 2025 21:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MP46K4JJzCpS; Mon, 14 Apr 2025 21:26:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7534360891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744666010;
	bh=W9teovFw9CqeFKogtnDSUICz3WpE7GNWDGjhBaVWDG4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sPhGiUggEcMPlj1nJ6yM9RildQw974D2jdiWh+KixbQ94QrUl4v5wsjs3bRfLCuto
	 Lf05NSebhW/WKEiHQcYx+SKpEn/oieDqsdVS8mxPQfjMIlJTweSQDp7bBk7fgemnqn
	 8c1Vf9/NKheC9CiL7mWG3c22It5eVa8FC+kbECTJH937GGpB3XdxueGLJoavGpnqp8
	 BdqEcUPctOqJ5NRlAMjfKpLG2uF84z4v9GyBI77NDEFBquiOorcKCDeWyyFssvut9W
	 7RYpYLIJIb7D7+XBUjjpYAYYEe782ir4ejQAzJ5ofzrePPaIAcn0Esc6C36Qd/iUDh
	 KmSZyGamDbI5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7534360891;
	Mon, 14 Apr 2025 21:26:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 88A1DCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 21:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 785F540BC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 21:26:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jikeNsEkvXQg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 21:26:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 39C434035D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39C434035D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39C434035D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 21:26:47 +0000 (UTC)
X-CSE-ConnectionGUID: nN5JL42OQmuUlAFivWBi0A==
X-CSE-MsgGUID: mBLMkr0zR3K3NIhh/IAUbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="46163862"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="46163862"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 14:26:45 -0700
X-CSE-ConnectionGUID: xcsM0XrkSEmbD1/whsfu2g==
X-CSE-MsgGUID: 0s24PglrTX2QBP6rlUfdQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="130896307"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 14:26:46 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 14 Apr 2025 14:26:29 -0700
Message-Id: <20250414-jk-supported-perout-flags-v2-0-f6b17d15475c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIV9/WcC/42NQQ6CMBBFr0Jm7ZjSogFX3MOwIHQKo9g2bSEYw
 t1tOIHLl5f//g6RAlOER7FDoJUjO5tBXgoYpt6OhKwzgxTyJipR4+uNcfHehUQaPQW3JDRzP0a
 slCwbPRCJRkHe+0CGt7P9BEsJLW0JumwmjsmF73m6lqf/o7+WKFBLU5PS5l4Z1bJNNF8H94HuO
 I4ffFzFfcwAAAA=
X-Change-ID: 20250408-jk-supported-perout-flags-43219dcee093
To: Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, Horatiu Vultur <horatiu.vultur@microchip.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Andrei Botila <andrei.botila@oss.nxp.com>, 
 Claudiu Manoil <claudiu.manoil@nxp.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744666008; x=1776202008;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=AcuwE8JaJ3lT4gvBhoaVTGVJ/yEd3t9suqvwbBI4EbA=;
 b=M4Xvc689jgsDIHmt+CXw/jgv0hbflzq3k0mg9wDrnwkzSp91ir6hbVu0
 AaGRAZ/jKjaM4E6yOZnjFwM2tOKuS88Xuqw4IZJR7HJLtHKpSsddQzUKk
 isDSIdwA/ELxCtUigvb4D/SiJQcEpAOBzDzmpE4cLeO22N8fbW6CfzAp2
 Bm0lbSCDoNhzcVaAMl8j7tKrCRmck3PPq1CW7v7LFJm/4zJxJYIz6aE0o
 JgFxzsi86yu7wX06mAbg/UwdkdjqjIK9/SFCTsAPMSb21uSWkP0o456ws
 fIveEgfGoxHjJ1zWnqVxwU1qakZBULYWJRaOasosiMu2XH7sbtojEI+Ol
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M4Xvc689
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] net: ptp: driver opt-in
 for supported PTP ioctl flags
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

Both the PTP_EXTTS_REQUEST(2) and PTP_PEROUT_REQUEST(2) ioctls take flags
from userspace to modify their behavior. Drivers are supposed to check
these flags, rejecting requests for flags they do not support.

Many drivers today do not check these flags, despite many attempts to
squash individual drivers as these mistakes are discovered. Additionally,
any new flags added can require updating every driver if their validation
checks are poorly implemented.

It is clear that driver authors will not reliably check for unsupported
flags. The root of the issue is that drivers must essentially opt out of
every flag, rather than opt in to the ones they support.

Instead, lets introduce .supported_perout_flags and .supported_extts_flags
to the ptp_clock_info structure. This is a pattern taken from several
ethtool ioctls which enabled validation to move out of the drivers and into
the shared ioctl handlers. This pattern has worked quite well and makes it
much more difficult for drivers to accidentally accept flags they do not
support.

With this approach, drivers which do not set the supported fields will have
the core automatically reject any request which has flags. Drivers must opt
in to each flag they support by adding it to the list, with the sole
exception being the PTP_ENABLE_FEATURE flag of the PTP_EXTTS_REQUEST ioctl
since it is entirely handled by the ptp_chardev.c file.

This change will ensure that all current and future drivers are safe for
extension when we need to extend these ioctls.

I opted to keep all the driver changes into one patch per ioctl type. The
changes are relatively small and straight forward. Splitting it per-driver
would make the series large, and also break flags between the introduction
of the supported field and setting it in each driver.

The non-Intel drivers are compile-tested only, and I would appreciate
confirmation and testing from their respective maintainers. (It is also
likely that I missed some of the driver authors especially for drivers
which didn't make any checks at all and do not set either of the supported
flags yet)

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v2:
- Expand PTP_EXTTS_EDGES in all .supported_extts_flags assignment
- Remove PTP_ENABLE_FEATURE from all .supported_extts_flags assignment
- Add a .supported_extts_flags assignment to ravb driver, even tho it
  doesn't currently support PTP_STRICT_FLAGS. The driver did previously
  check these, so I think its better to add them even if its equivalent.
- Added Vadim's Reviewed-by to patch 2/2
- Link to v1: https://lore.kernel.org/r/20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com

---
Jacob Keller (2):
      net: ptp: introduce .supported_extts_flags to ptp_clock_info
      net: ptp: introduce .supported_perout_flags to ptp_clock_info

 include/linux/ptp_clock_kernel.h                   | 18 +++++++++++++++
 drivers/net/dsa/mv88e6xxx/ptp.c                    | 11 ++++-----
 drivers/net/dsa/sja1105/sja1105_ptp.c              | 14 +++---------
 drivers/net/ethernet/intel/ice/ice_ptp.c           | 16 +++++--------
 drivers/net/ethernet/intel/igb/igb_ptp.c           | 20 +++++------------
 drivers/net/ethernet/intel/igc/igc_ptp.c           | 14 +++---------
 .../net/ethernet/mellanox/mlx5/core/lib/clock.c    | 26 ++++++----------------
 drivers/net/ethernet/microchip/lan743x_ptp.c       | 14 ++++--------
 .../net/ethernet/microchip/lan966x/lan966x_ptp.c   | 14 ++++--------
 drivers/net/ethernet/mscc/ocelot_ptp.c             |  5 -----
 drivers/net/ethernet/mscc/ocelot_vsc7514.c         |  2 ++
 drivers/net/ethernet/renesas/ravb_ptp.c            | 11 +--------
 drivers/net/phy/dp83640.c                          | 13 +++--------
 drivers/net/phy/micrel.c                           | 17 +++++---------
 drivers/net/phy/microchip_rds_ptp.c                |  5 +----
 drivers/net/phy/nxp-c45-tja11xx.c                  | 13 ++++-------
 drivers/ptp/ptp_chardev.c                          | 16 ++++++++++++-
 drivers/ptp/ptp_clockmatrix.c                      | 14 ++----------
 drivers/ptp/ptp_fc3.c                              |  1 +
 drivers/ptp/ptp_idt82p33.c                         | 15 +++----------
 20 files changed, 91 insertions(+), 168 deletions(-)
---
base-commit: b65999e7238e6f2a48dc77c8c2109c48318ff41b
change-id: 20250408-jk-supported-perout-flags-43219dcee093

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

