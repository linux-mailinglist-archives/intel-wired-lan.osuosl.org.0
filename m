Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC7858FD09
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 15:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D73F0610EC;
	Thu, 11 Aug 2022 13:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D73F0610EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660223150;
	bh=1jhNy4QEuw2MSK3urMD01+PBQdPMvHOsJrRfugAOXj8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=18CMXyqEC2PrEfKQWQB/uNkSgyr/tAuiCf0fkIKZ1ic4qCGg0XjOSAdQSlrdITaY5
	 LTVXJA1mFYTZUlHo3VXr14QWUjIJVv5DZRBP9F+dou9mje9xFtQ0+rNuNEiFPOaYhL
	 9cQ7o44SqOoQ9eo2OGcJ//QIZompWElmDhVPbWZKj6yo5CJRtauMlKCOJKq2Ue5jAG
	 1QNGkUhVMzM8Xrhf1tw1dkClFD6a4b6Xf9O4QDchhbmT8NySXy8+XUKlMMFsRV7SIF
	 eV8ir9wRZzwN3VpTAQVH5p9SYr6qquzIk7nJkV6nLYnvFuqKDQB5a06fOpK1LxUUMh
	 oD1vjuWcYgN7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FXI_x1Wldlsi; Thu, 11 Aug 2022 13:05:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2139610E3;
	Thu, 11 Aug 2022 13:05:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2139610E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27F141BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D92941829
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D92941829
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id INCC3CJv6UMw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 13:05:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E98B417E5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E98B417E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:05:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355342576"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="355342576"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="933304200"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 06:05:38 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 15:05:32 +0200
Message-Id: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223141; x=1691759141;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1kq30zpX/fOOHe3h37s6ms1ttyyhwOfJldncwkHgbNY=;
 b=X5qq5bVeifPE1l+od3VQtMNetsxsyC8CNWSXXaf7kq6gAUlyuRMLHJ1d
 bPm0560LfjjAuecHSaEALMzzIwjfIiMnC2OCwmBa9+Df2OuSgCiHOSe2k
 cqc/wCxmmkKG46RYgd/4PE5B5eS08bX1Qy6f5/1fGkfO0vaNTAp97ZQ4j
 n2/Ay1i8jNcDTy0BGRjrwnPn0xDYKiW5SW9Pja17E47qUhI4F1AE1RJJj
 k7R1k130rw/RL3pARB38eELwFG2RgNq9OhgRMTsO4msQn45GSR0cFrFUA
 MJrdmzr6w2QtSZwOdWOJHO3UilZ4eTt31WWYWBxrDsb348ESnm5IUzT24
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X5qq5bVe
Subject: [Intel-wired-lan] [PATCH net-next v1 0/3] Implement devlink port
 splitting
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow to configure port split options using the devlink port split
interface.

Add the needed admin queue commands to set and get FW port options.
Implement devlink port split and unsplit operations handlers.
Add documentation for devlink port split interface usage for the ice
driver.

Anatolii Gerasymenko (2):
  ice: Add port option admin queue commands
  ice: Implement devlink port split operations

Jacob Keller (1):
  ice: Add additional flags to ice_nvm_write_activate

 Documentation/networking/devlink/ice.rst      |  36 +++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  59 ++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 115 +++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |   9 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 288 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      |  13 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 8 files changed, 519 insertions(+), 5 deletions(-)

-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
