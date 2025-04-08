Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DEDA81737
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 22:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AB59611A2;
	Tue,  8 Apr 2025 20:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H0EO-wlf7IOx; Tue,  8 Apr 2025 20:55:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 524F26116D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744145731;
	bh=7Jn6C/Wm39iyxmYdrU7cZOKfWoJxesF0iEvBF5j2Dq4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mfIw/nMzQnF4H8x777Wvy30HR3zzouYvGrrRVNyANuXPNnp9jitFmMIMZtCMPDiMn
	 7abMfctCqPqvyrUqj3H05wBQ32v+5jQF1yHYEpUrsRwKY57ALtM4vhdu2SddCYunYG
	 F8dnGzQSwlPRebztvESBOuP7VOJeiQ63wg5KgmQqPM1Qwh4H5eL4Z+shrOaOfM6eRH
	 VsSvAXpyIRdgXb65rXqgDfL6IRnLENJBfMANiWBDMKwIb9IGOtzBPogRS+agF4avmz
	 qhV4Ri/9Q1AN9QUrz62+4jHR5Q7SG9JDgx3xnakoFzFSANSJyugZZQH/eFEOdDoF5q
	 vsJedUw/C/Krw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 524F26116D;
	Tue,  8 Apr 2025 20:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CC06D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 20:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 294AA829B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 20:55:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fs2im_2Rln4A for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 20:55:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37ADB8213C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37ADB8213C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37ADB8213C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 20:55:28 +0000 (UTC)
X-CSE-ConnectionGUID: qxcyc8DyQF2qhR82E+U9vg==
X-CSE-MsgGUID: wAYLYWc/ROyDI0zJAjesEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56970710"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="56970710"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 13:55:27 -0700
X-CSE-ConnectionGUID: geJKUbmXRVuxUFy6Zjqo0w==
X-CSE-MsgGUID: 0PDhL9E8QdCgJTN4AKArmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="151563675"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 13:55:26 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 08 Apr 2025 13:55:13 -0700
Message-Id: <20250408-jk-supported-perout-flags-v1-0-d2f8e3df64f3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADGN9WcC/x3MQQqDMBBG4avIrDsQo4Xaq5QuxPzaaUsSZqII4
 t0buvwW7x1kUIHRvTlIsYlJihXtpaHpNcYFLKGavPNX17sbvz9sa85JCwJnaFoLz99xMe473w5
 hAtzQUe2zYpb9/35QROGIvdDzPH/HYTm7dQAAAA==
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744145728; x=1775681728;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=V3Z9xLL+CF0zdWUM4uy01fpN3yOGZDvrIfmutE1VOKk=;
 b=gTgNYe/LDZKhj/R5fNPxzeB96uo8lSMq1doLhffMAoWoIQYQbVwpEdoK
 4rhvxBw7X/MchOcKvEAaY25YWOruZwrKp4k3/MwgBa2+ANb1vwRbYSrh3
 5sn/TWoBsr6404cEHpYt4xhgXxuiEE7gtnWuSX6NTpk4l1plkMKE99iJy
 5ytTPJt7nsS/1sqPsuVdutxO6/Cq42reF9Ucj5bQO4yoiwpC6qXbGvwOs
 +LK/3agPd9P+nYJMT54E2NycotI0vy4qCkOGmWGGJvxqigmdDhX8Mfmx0
 zS7vUBwpFlc2IoRE/W0FYFVQcOR84NQJV/gQwcu2+tpkOavUcBvewuY+X
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gTgNYe/L
Subject: [Intel-wired-lan] [PATCH net-next 0/2] net: ptp: driver opt-in for
 supported PTP ioctl flags
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
Jacob Keller (2):
      net: ptp: introduce .supported_extts_flags to ptp_clock_info
      net: ptp: introduce .supported_perout_flags to ptp_clock_info

 include/linux/ptp_clock_kernel.h                   | 18 +++++++++++++++
 drivers/net/dsa/mv88e6xxx/ptp.c                    | 12 +++++-----
 drivers/net/dsa/sja1105/sja1105_ptp.c              | 14 +++---------
 drivers/net/ethernet/intel/ice/ice_ptp.c           | 16 +++++--------
 drivers/net/ethernet/intel/igb/igb_ptp.c           | 20 +++++------------
 drivers/net/ethernet/intel/igc/igc_ptp.c           | 15 ++++---------
 .../net/ethernet/mellanox/mlx5/core/lib/clock.c    | 26 ++++++----------------
 drivers/net/ethernet/microchip/lan743x_ptp.c       | 14 ++++--------
 .../net/ethernet/microchip/lan966x/lan966x_ptp.c   | 15 +++++--------
 drivers/net/ethernet/mscc/ocelot_ptp.c             |  5 -----
 drivers/net/ethernet/mscc/ocelot_vsc7514.c         |  2 ++
 drivers/net/ethernet/renesas/ravb_ptp.c            | 10 ---------
 drivers/net/phy/dp83640.c                          | 14 ++++--------
 drivers/net/phy/micrel.c                           | 17 +++++---------
 drivers/net/phy/microchip_rds_ptp.c                |  5 +----
 drivers/net/phy/nxp-c45-tja11xx.c                  | 14 +++++-------
 drivers/ptp/ptp_chardev.c                          | 16 ++++++++++++-
 drivers/ptp/ptp_clockmatrix.c                      | 18 +++++----------
 drivers/ptp/ptp_fc3.c                              |  1 +
 drivers/ptp/ptp_idt82p33.c                         | 16 ++++---------
 20 files changed, 100 insertions(+), 168 deletions(-)
---
base-commit: 0f681b0ecd190fb4516bb34cec227296b10533d1
change-id: 20250408-jk-supported-perout-flags-43219dcee093

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

