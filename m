Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9E2B53F1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 01:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D10A84E79;
	Thu, 11 Sep 2025 23:41:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-DAp-hBZ9_b; Thu, 11 Sep 2025 23:41:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EAFC84E01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757634102;
	bh=eFtKwDsk718IxQK+ayuyHQDBgk3oVPGKYOhVn9aBimQ=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=81BYgnYAeeNiURfvZf+fT7d5Q6Vq/aylVAGFMPbNHNpBuhlr3XumXvqt0ylkB6QuW
	 SGlu4zutVcyKPSgLvteSTE8jOm4CXP2deMeIX6LT6e+HYnrdUz7FZDHiVGey/DMlHq
	 Bzrw95dBCTYROYfbaTaYPDh8mEWyWfZT117zhM6exeaLiZ0L/kNK+jJKkw7/XuGsLT
	 c8bmCkZEm3Nz+Ayf+PNTVnKDbJcu82AYF7EOp8njgw8s0gfaos6rfCMFd0gDmz85n+
	 NPqohuH4kWt9AHYuBQL18uCjY7HNndUkysl9K869e9LL50ik/7jxZGE5MRSzuJTNXm
	 5FijREL6sBUrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EAFC84E01;
	Thu, 11 Sep 2025 23:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5582792E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46EB66F6C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2f0mERMVdHMA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 23:41:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3153D6F6A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3153D6F6A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3153D6F6A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:39 +0000 (UTC)
X-CSE-ConnectionGUID: Z+oq8gq9RS+FrTG98MQnXA==
X-CSE-MsgGUID: aDPdz2B3Q2Cptc/BE5VPzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="71354782"
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="71354782"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:38 -0700
X-CSE-ConnectionGUID: ZZcvvu8aRtOUcouWrXsBfw==
X-CSE-MsgGUID: vebiGtscT3SdM3agTl7uCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="204589487"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 11 Sep 2025 16:40:36 -0700
Message-Id: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPVdw2gC/x2NwQ6CQAwFf4X0bBN2BRP9FeOh0AfWw2paQkwI/
 +7KbeYys1HADUG3ZiPHamHvUuV8amh8SpnBptUpt7lvrymxI1CUX4NLUQxsIziWyuL6hyX4kru
 uT8giOlENfRyTfY/J/bHvP5xXFap0AAAA
X-Change-ID: 20250911-resend-jbrandeb-ice-standard-stats-624451e2aadf
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=2056;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=0YsDROY4gTOp7UbeCY5Hr1hp6cHbhjW+j6MiWdqKxiE=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhozDcTpFBt2HXr1vWLv81pv1B3LifbmMnofWtc11610sm
 3r1a/C2jlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACayfi3D/6IJHEca5lsGOam7
 xjyYuzqi851ffqjQ/QTX3xHvLluYODH8MysJ2v7fX6F3yXzW3YK3N1VeaHN4IJVb3x1usq/MXWM
 NCwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757634100; x=1789170100;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=0YsDROY4gTOp7UbeCY5Hr1hp6cHbhjW+j6MiWdqKxiE=;
 b=i0aWyEUfcFCr7d/5cbG7H6FRh0i4u8yceRcwdo0Zs3zlVPdZCYP06a3R
 kFHEHjA5nze2tedk/5xplcNS99SoGGSUQjUa147NmpsO+lQonS1Zkm8S2
 BvZbvi8FKHTs0NTw3Tg7hloKfWYDx0PpzfPzseGewgXQsgHs9Q6BNIovQ
 sTznyS3F2P6M/FCtHc3Wy5QiuLhbK+43kGV2hy0DJfD5T2cW90le/RXGC
 xutSjENWBBxPTJtVwlDNAzhjJd9Wt05eptsA4aBc+FZKnjywzFBnUI8d+
 q1EH8kYyfPi7AvHWwQJzb0vbPvrPCACR5ZKBMPt1qc/tGTQ8i9ZhNp3T/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i0aWyEUf
Subject: [Intel-wired-lan] [PATCH v3 0/5] ice: add standard stats
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

