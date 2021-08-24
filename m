Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D853F5567
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 03:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F5AA40379;
	Tue, 24 Aug 2021 01:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bD9BDY-PBgCm; Tue, 24 Aug 2021 01:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14F32400E0;
	Tue, 24 Aug 2021 01:13:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 980F11BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7729E80D32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mCQhMPehPeIT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 01:13:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D9E6F80D2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="214085349"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="214085349"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 18:13:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="685025442"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 18:13:13 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 18:12:56 -0700
Message-Id: <20210824011259.738307-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: interrupt moderation
 updates
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

Improve how the driver generates interrupts when it's using DIMLIB, and
repair a couple of bugs found when making this change. It doesn't make
sense for these changes to go into net, because they both depend on
patch one in this series, or changes that are only available in
net-next.

Jesse Brandeburg (3):
  ice: update dim usage and moderation
  ice: fix rate limit update after coalesce change
  ice: fix software generating extra interrupts

 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 ++-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  29 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 118 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 110 +++++++++-------
 6 files changed, 170 insertions(+), 106 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
