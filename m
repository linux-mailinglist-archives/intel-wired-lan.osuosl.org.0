Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 530FE35D4A7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 03:08:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02C9B4056A;
	Tue, 13 Apr 2021 01:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rSvlNOe_f7ih; Tue, 13 Apr 2021 01:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFFA74054F;
	Tue, 13 Apr 2021 01:08:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC231BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DAD58426E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dfubxrcd45b9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 01:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E4AE83D61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 01:08:00 +0000 (UTC)
IronPort-SDR: fKR+niIGJMDxRSVqPHv+jyUEHyWRgKs+KArrKNLumjaOd0F5aoq3j5OSYLLyBiQiLBvVdK/pEG
 YmzRGMKtmXaw==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="192181654"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="192181654"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 18:07:57 -0700
IronPort-SDR: JErAiHNc8eUOjY9zC/wjOdxpN8DRthj7t+kCsi3BCn+ITt0s8LtW1JFxn2p7HbLB/hT5f5bHRy
 3yZRqe1NkDYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="521400295"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga001.fm.intel.com with ESMTP; 12 Apr 2021 18:07:56 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Apr 2021 08:48:38 +0800
Message-Id: <20210413004844.32462-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 0/6] Enable Intel VF RSS
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

The current Intel VF (iAVF) doesn't support changing its RSS input
set by ethool. Add support in virtchnl, iavf, and ice to enable
RSS input set changes on the VF via ethtool.

v3: fix the SCTP dest port set wrong.
v2: rewrite the commit message, and some code clean up.

Haiyue Wang (4):
  iavf: Add framework to enable ethtool RSS config
  iavf: Support for modifying TCP RSS flow hashing
  iavf: Support for modifying UDP RSS flow hashing
  iavf: Support for modifying SCTP RSS flow hashing

Qi Zhang (2):
  ice: Enable RSS configure for AVF
  ice: Support RSS configure removal for AVF

 drivers/net/ethernet/intel/iavf/Makefile      |   1 +
 drivers/net/ethernet/intel/iavf/iavf.h        |  10 +
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 218 ++++++++
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  95 ++++
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 252 +++++++++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 163 ++++++
 drivers/net/ethernet/intel/ice/ice_flow.c     |  88 ++++
 drivers/net/ethernet/intel/ice/ice_flow.h     |   6 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 465 ++++++++++++++++++
 include/linux/avf/virtchnl.h                  |  25 +-
 12 files changed, 1353 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_adv_rss.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
