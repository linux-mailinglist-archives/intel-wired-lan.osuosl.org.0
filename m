Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E80C4D3B0D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 21:27:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4B6D4060D;
	Wed,  9 Mar 2022 20:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qg2urfRaYmtY; Wed,  9 Mar 2022 20:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A6964051F;
	Wed,  9 Mar 2022 20:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 416F61BF403
 for <intel-wired-lan@osuosl.org>; Wed,  9 Mar 2022 20:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 369F360F9E
 for <intel-wired-lan@osuosl.org>; Wed,  9 Mar 2022 20:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6ev_u95XypE for <intel-wired-lan@osuosl.org>;
 Wed,  9 Mar 2022 20:27:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D2DF60F18
 for <intel-wired-lan@osuosl.org>; Wed,  9 Mar 2022 20:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646857637; x=1678393637;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v+DW035qH004X8MIb9r+1RLQUT9hoBcaDYnTEZfPkgk=;
 b=LrUp3gLSGv54kXjlXHWj3lbtwItRB2IamTzoMJ4DDsk3IS6mpT2Xume4
 ipf2fBetX9B2cpn71zQBX5BDa26Rk61sMhhRqva+ZuuovAfPzwTDrCFJx
 CkHdhw8Uo0CcJHwQAHjBR3Ee5a693wqf2HGhnThCEVUK++3Pd+eP77SOI
 XL9uCiwkK7lG+080fstXT4/F9cIhG9yoOdWMNwW0fs6Z0cPFWdMjUzodz
 5xCHhY5qsrQAWetMeftia+uzYvFfxM9OdagWa1qW/w8YJXh9Ly6SXVf2U
 J1TILtIpdYvbyHNYH4tAeyhfhoGUlaVk9i7dZQyVywaPB8c3CY+UD2UYV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315802040"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="315802040"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 12:27:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="554281932"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2022 12:27:16 -0800
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  9 Mar 2022 12:25:44 -0800
Message-Id: <20220309202546.2332118-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] Add inline flow director
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
v3:
-Updated commit message with symmetric queuing requirement.
-Added related patch to allow dynamic registration of devlink param.
----
 drivers/net/ethernet/intel/ice/ice.h          |  82 +++++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 133 ++++++++
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
 14 files changed, 735 insertions(+), 18 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
