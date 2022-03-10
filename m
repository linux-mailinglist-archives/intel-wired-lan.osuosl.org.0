Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 377264D44DB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 11:41:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB94840A05;
	Thu, 10 Mar 2022 10:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdxam-w4QTGi; Thu, 10 Mar 2022 10:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF0E34095F;
	Thu, 10 Mar 2022 10:41:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 108381BF293
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 10:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F34B38431C
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 10:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5xv_BCoNAry for <intel-wired-lan@osuosl.org>;
 Thu, 10 Mar 2022 10:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A07AC8430E
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 10:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646908894; x=1678444894;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZLQwwzk7wzjYPK//XPbiQIwLJZ+BvXQwC1ysodoY2I0=;
 b=nVPPZHtJClQCQbSnB88sxbtpjSN5gf0iDGNCTLYBrAp+uIYdvPLupPaC
 efUS1VcBFUfPrOqzU1WIuzwQcHD3C9QxyF3wFAnPYO1wZOIRwKgQMPd5c
 cEoK+bzLBr8Zcgore+U8Wd7c21uxlrXhU4osb/39X5eG8L8DiUJxa2Y6U
 13UpoWDSHojA7i5BMJRCoPVypJslz8SQfK0HWzYwxKwyilUIn+7YNxXQH
 UFk0ZyfcWAjN74jvko54mlOJSkvXbVv+M9Xl8+qS+JwCWbAi+Nv7HoXNt
 pCKcbNtgmqO3BOS/0hScyciVtNvhH449YhSBqlSuhPPwCSsRKPdEw7dWw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315936272"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="315936272"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:41:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="632948043"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2022 02:41:33 -0800
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 10 Mar 2022 02:39:57 -0800
Message-Id: <20220310103959.369773-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] Add inline flow director
 support for channels
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

Add support to enable inline flow director which allows uniform
distribution of flows among queues of a TC. This is configured
on a per TC basis using devlink interface.

Devlink params are registered/unregistered during TC creation
at runtime. To allow that commit 7a690ad499e7 ("devlink: Clean
not-executed param notifications") needs to be reverted.

Kiran Patil (1):
  ice: Add inline flow director support for channels

Sridhar Samudrala (1):
  devlink: Allow parameter registration/unregistration during runtime

----
v4:
-Removed redundant check to match register and unregister calls.
----
v3:
-Updated commit message with symmetric queuing requirement.
-Added related patch to allow dynamic registration of devlink param.
----
 drivers/net/ethernet/intel/ice/ice.h          |  82 +++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 130 ++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   2 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 +
 drivers/net/ethernet/intel/ice/ice_fdir.c     |  25 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 173 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 294 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   8 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 net/core/devlink.c                            |  14 +-
 14 files changed, 732 insertions(+), 18 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
