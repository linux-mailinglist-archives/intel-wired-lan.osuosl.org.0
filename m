Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D33557D5F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79A75405E7;
	Thu, 21 Jul 2022 21:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79A75405E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439016;
	bh=MYNkDjbkiT61+bTK47kZAMssBRPe/G2U0yKwxiRM+EQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sD+UPxLZhAkBfru5E+116WAm8FcC8fiXrc6JSYK/+9b6o067l8m6JBeC6rkX6MyJj
	 FcD/lnVt/psGFLOXnSUiYsPe4I+dS9p0G8URYRpPWjw22S22L5RsmhDO82zYl1DI5o
	 utvV0p3FgHbViT2/cJ7MNd1QEDCseEUAHns01IawY796S02TyK3ijWHOz4IBbRrdAE
	 AzZAOPkBw2/DJE2jl88HqcYoe+8JVIf0YRC2q0mVwnqgXr3CwmFKkEQOLUiRCbPCTP
	 U6RMv6ZSvc0djaDsl1hZoNB+Cc5MA/eQ3LSj5+KsvbHNQ613+LbV37YmDDUXa81jAc
	 Hk4UdyU3uVKQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7wXvePKnAIw; Thu, 21 Jul 2022 21:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 697A7408A6;
	Thu, 21 Jul 2022 21:30:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 697A7408A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32E9A1BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ECC8960BEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECC8960BEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXdPERSppPQv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F0FF60808
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F0FF60808
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029222"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029222"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833131"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:29:53 -0700
Message-Id: <20220721213001.2483596-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439009; x=1689975009;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dzvzZcx7W9wyuKs8mr/sXqyjIQgY1LbhTH92a/oQEkg=;
 b=U5c3n0Dnhj8NYq362QSGJB3nw83dPUx61fQU48x2elugX0e2/B3vJlNa
 mjoXm+Jq9BrfUcyFA2SL8hlaacX4Tqv+Oan2KWZRRds7dnJRf0zEwXeQS
 vBS7AdOD5Dv8JXsXbNNcon/rdzRdi8gvK6Cg3W/gUxTeiUDpiD8ODOu29
 /8O69C4cRy1VOKv5pvopkXZwYa6BLq9KdzACIVU/zzszvm6X7fM3a7jXf
 bpFT7i4DCTxmoJi8bY/PlxwkUz/iXgLUxsWYF90Dvj1/PA3q/WVcnTjyf
 z8tB+XsXgtR/uLl6gQpHMobpl0gpzBQeX2uGs7N/YBb2SJMwGSeynEOHT
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U5c3n0Dn
Subject: [Intel-wired-lan] [net-next PATCH 0/7] intel: ptp: convert .adjfreq
 to .adjfine
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Convert all of the Intel drivers with PTP support to the newer .adjfine
implementation which uses scaled parts per million.

This improves the precision of the frequency adjustments by taking advantage
of the full scaled parts per million input coming from user space.

In addition, all implementations are converted to using the
mul_u64_u64_div_u64 function which better handles the intermediate value.
This function supports architecture specific instructions where possible to
avoid loss of precision if the normal 64-bit multiplication would overflow.

Of note, the i40e implementation is now able to avoid loss of precision on
slower link speeds by taking advantage of this to multiply by the link speed
factor first. This results in a significantly more precise adjustment by
allowing the calculation to impact the lower bits.

This also gets us a step closer to being able to remove the .adjfreq
entirely by removing its use from many drivers.

I plan to follow this up with a series to update the drivers from other
vendors and drop the .adjfreq implementation entirely.

Jacob Keller (7):
  ice: implement adjfine with mul_u64_u64_div_u64
  e1000e: remove unnecessary range check in e1000e_phc_adjfreq
  e1000e: convert .adjfreq to .adjfine
  i40e: use mul_u64_u64_div_u64 for PTP frequency calculation
  i40e: convert .adjfreq to .adjfine
  ixgbe: convert .adjfreq to .adjfine
  igb: convert .adjfreq to .adjfine

 drivers/net/ethernet/intel/e1000e/e1000.h    |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c   |  4 +-
 drivers/net/ethernet/intel/e1000e/ptp.c      | 18 +++--
 drivers/net/ethernet/intel/i40e/i40e_ptp.c   | 35 ++++------
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 16 +----
 drivers/net/ethernet/intel/igb/igb_ptp.c     | 15 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 73 +++++++++++---------
 7 files changed, 75 insertions(+), 88 deletions(-)


base-commit: 9f055d4106bdefd5a533316c1d3dc3b5e9821b9a
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
