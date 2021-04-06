Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5213549F8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Apr 2021 03:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52A2E40674;
	Tue,  6 Apr 2021 01:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIMJ1kx28VVr; Tue,  6 Apr 2021 01:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39DF040644;
	Tue,  6 Apr 2021 01:19:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F5C11BF37B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Apr 2021 01:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B6048488A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Apr 2021 01:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKFXTPrz8YxE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Apr 2021 01:19:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 839788482F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Apr 2021 01:19:47 +0000 (UTC)
IronPort-SDR: u+ur5vTNnT4L0+IxB+4SH3sFj479D1bSPmthrJRdPUzFI+DWsB/NaVliozKB6gMjpO50uFho+0
 sC+z5PK/BsTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="192485889"
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; d="scan'208";a="192485889"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2021 18:19:45 -0700
IronPort-SDR: xmmwIwNmElNmLN4ggLEWLP4vJBwN1/LDRU0HWCRjAfRLF8IDpO698/xNbCiaHz9Vp3Xvik1G9F
 CRh8DJkgVYaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,308,1610438400"; d="scan'208";a="420969777"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2021 18:19:43 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Apr 2021 09:00:19 +0800
Message-Id: <20210406010025.90549-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/6] Enable Intel VF RSS
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current Intel VF (iAVF) doesn't supoort RSS hash by ethtool, the users
need to use the PF interface to configure the RSS hash.

For making the VF configure the RSS hash by itself, define new virtchnl
messages, so that VF can query the PF support to do RSS hash by ethtool
commands.

Haiyue Wang (4):
  iavf: Add framework to enable ethtool RSS config
  iavf: Support ethtool TCP flow RSS hash
  iavf: Support ethtool UDP flow RSS hash
  iavf: Support ethtool SCTP flow RSS hash

Qi Zhang (2):
  ice: Enable RSS configure for AVF
  ice: Support RSS configure removal for AVF

 drivers/net/ethernet/intel/iavf/Makefile      |   1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |  10 +
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 224 +++++++++
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  96 ++++
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 253 +++++++++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  28 ++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 166 +++++++
 drivers/net/ethernet/intel/ice/ice_flow.c     |  88 ++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |   6 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 465 ++++++++++++++++++
 include/linux/avf/virtchnl.h                  |  25 +-
 12 files changed, 1365 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_adv_rss.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
