Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1053F208F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 21:28:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E429960636;
	Thu, 19 Aug 2021 19:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4trmW9L-yJJw; Thu, 19 Aug 2021 19:28:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A218E613D2;
	Thu, 19 Aug 2021 19:28:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A55B11BF59F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EDED8196E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0byHLEq7wMk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 19:28:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05364819C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:28:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="203780215"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="203780215"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:28:07 -0700
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="451749228"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:28:04 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 12:27:38 -0700
Message-Id: <20210819192741.590084-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] ice: interrupt moderation
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
  ice-linux: update dim usage and moderation
  ice-linux: fix rate limit update after coalesce change
  ice-linux: fix software generating extra interrupts

 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   9 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |  29 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 118 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  99 ++++++++-------
 6 files changed, 153 insertions(+), 104 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
