Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CC2B5A128
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:16:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 007B5826C0;
	Tue, 16 Sep 2025 19:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jw8kaq063XNi; Tue, 16 Sep 2025 19:16:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F01A822A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050217;
	bh=51CwFjfLvko+5oJ9OtPdfhLpTICsNjULGCjZZTE6+Pc=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4e04FPxIONguaYDTGKx+XPC2VaTyN7FfjGnGWvf32zs0tH8dxXzsrCKQbYWHpLvNJ
	 qnx+J9/D6dwdqxyNrZJ9Vzs886vex6ZZWIh0oHrD82jepiut5fhWq3mNmvzAS8xU52
	 FHtyPirfSmLApz6+vzE8yNbEOxQXyBP7pe7PQr3PG9tkSl5Z8c8xOqizzdOG5lQw/I
	 zzG+F0utzrYhrHfEbhEznTgW6TKFaFppxKha4vpbqvcgaroXUMX+E4Hm+d5jRQ9krR
	 PB2wirMhA6wKeK39UIRNmiGU9eFJfWBIALWOJDq6Q9TKHAl4vYfpTJGCMb0HH0UwO4
	 zR0Lv52sAYFDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F01A822A7;
	Tue, 16 Sep 2025 19:16:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F72012D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15B5140E97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7D225QtHORz2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:16:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 237CD40D3C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 237CD40D3C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 237CD40D3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:53 +0000 (UTC)
X-CSE-ConnectionGUID: Dm/ilayATjWXvyttUST5EQ==
X-CSE-MsgGUID: bm8cX+cbSvS9tPy2EeytQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60037572"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60037572"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:53 -0700
X-CSE-ConnectionGUID: Yu+J6Ej6QImXf/3Y9qD62w==
X-CSE-MsgGUID: MYUgQzR3Q4ibhM4wf0T4+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174961751"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:53 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 16 Sep 2025 12:14:53 -0700
Message-Id: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC63yWgC/5WNQQ6CMBBFr2Jm7RhaqEZX3sOwGNqpjMFi2gYxh
 LtbuYG79/KT/xZIHIUTXHYLRJ4kyRiKNPsd2J7CnVFccdCVNtVZKYycODh8dJGC4w7FMqZcmKL
 7QU541E1jFGsi56EcvSJ7mbfIDeQ9YOA5Q1uWXlIe42erT/W2/xOaaqxQddZ7p8yJyFwlZB4Od
 nxCu67rF/lEIYjeAAAA
X-Change-ID: 20250911-resend-jbrandeb-ice-standard-stats-624451e2aadf
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jbrandeburg@cloudflare.com
X-Mailer: b4 0.15-dev-cbe0e
X-Developer-Signature: v=1; a=openpgp-sha256; l=2256;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=rnnvGOspUX8LMCfMNzcnUQjB720Pd9PtIOQ/ZSdxyJY=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoyT2+cLqvBO2GF2xeSfn4fTIicL779z+ZWUn/W+0n1kx
 HA8k2l6RykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABPZupOR4afZqthLDWse35K+
 MfM/X2vZf/HD0ukG33ku6/XGbK/alsrw3/9y5Z2Jm6qaQ5WNTHT2Or46fcP986Owb08+FHB8D13
 TzwYA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758050214; x=1789586214;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=rnnvGOspUX8LMCfMNzcnUQjB720Pd9PtIOQ/ZSdxyJY=;
 b=Wi6l0DFOcSgDBNiRkMAZqFZdM2s41+Qfek4HGdw4M8U6iu9fkLsPJGwD
 lrjf8pfqyzKShVhfCkJTs3fYmrcWCVK2cmf9fKIZif2DXA8mOJ0rnpDy7
 Wf9jFkqNT7aQR3D+KEGQObafccQT+J4nYRA4hGKxBBTb8SdEPMUxzDEtQ
 Q33VLVWW65yYx0yiSzdHPXMlCci6OHOc7ws2jDbaS0BVMxfIR7/5MTxXW
 MUZ8t4x1gQDXinFConSbkPbrd24FGZyWUHdgsVb0kkEaOcN+98FpYHYJd
 yp+FQL/o7DY7iDRQr6CJ4/T7xtx6nJ0V0FLfO/x0WpAMlT/LIwRwBs6xz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wi6l0DFO
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] ice: add standard stats
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

I recently rediscovered this work while migrating data off of one of my
less used systems. The v2 apparently got rejected due to some test issues,
and its been accumulating dust since... *checks notes* over a year.

Supporting standardized statistics is important for usability and
consistency, so I thought it was a good idea to revive it.

The main point of the series is the implementation of standard stats for
the ice driver. It also includes a related documentation fix, and finishes
off with some cleanup to remove boiler plate code by making use of
ice_netdev_to_pf().

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v4:
- Add missing iwl-next target
- Pick up review tags on final patch
- Link to v3: https://lore.kernel.org/r/20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com

Changes in v3:
- Rebase from a year ago.
- Move standard stats functions in ice_ethtool.c to align with where we
  placed the ice_fec_stats function.
- Add a few more users of ice_netdev_to_pf() I noticed while rebasing.
- Fix the kdoc nit reported by Simon
- Drop review tags on the final patch since its got new work.

---
Jesse Brandeburg (5):
      net: docs: add missing features that can have stats
      ice: implement ethtool standard stats
      ice: add tracking of good transmit timestamps
      ice: implement transmit hardware timestamp statistics
      ice: refactor to use helpers

 drivers/net/ethernet/intel/ice/ice_ptp.h       |   2 +
 drivers/net/ethernet/intel/ice/ice_type.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c   | 144 +++++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c |   8 +-
 drivers/net/ethernet/intel/ice/ice_lag.c       |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c      |  13 ++-
 drivers/net/ethernet/intel/ice/ice_ptp.c       |  15 ++-
 drivers/net/ethernet/intel/ice/ice_sriov.c     |   3 +-
 Documentation/networking/statistics.rst        |   4 +-
 9 files changed, 138 insertions(+), 55 deletions(-)
---
base-commit: 10ee8b756efd0913ef0ec6fc7a147771cdc36416
change-id: 20250911-resend-jbrandeb-ice-standard-stats-624451e2aadf

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

