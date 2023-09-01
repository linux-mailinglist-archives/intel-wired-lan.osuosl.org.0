Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D43CF790132
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 19:09:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7134742091;
	Fri,  1 Sep 2023 17:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7134742091
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693588183;
	bh=X76yhN+8fTbkQ72+lGmPNaOU9bWRJ4/Wn4YoY0ApDRA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9dHu5IjW1vuCPiaZK3Kr/HhB15b/tT4sR20N9IuJ9sLhkETREjU81wb2gdYo70TRx
	 VTfT2F+Pgla9+bplOUCewn0f0dfh66WCw1nWOaDPKySPdCJXtKX++79w9UAiI6tSM8
	 8W9K1/Rc+WZRO9Pu/SnosflK1K3lsbgFWv7dPpKHSTQNBbTBjnk9slULaIlRta38BI
	 ahRmABbCFJ0dO432OzHkGq2rzX4B+Gg8XD3PXMZEdS24MOc0QInMVxlzuR+hEe3TYb
	 O5dj3XIlBczP9ur7VdSLgf3GTWT16wbsJA10KL4OZCx3ZMav/80gjo4soAaYyTBnQk
	 67OGiuw5KBt6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eX-sPOywd1BG; Fri,  1 Sep 2023 17:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2569E41FFA;
	Fri,  1 Sep 2023 17:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2569E41FFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FA671BF576
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52F8F817BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52F8F817BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yKFW8UXUPkln for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 17:09:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E153781775
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 17:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E153781775
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="366495585"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="366495585"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 10:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="854787613"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="854787613"
Received: from kgdowskx-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.215.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 10:09:03 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Sep 2023 11:08:46 -0600
Message-Id: <20230901170850.3493782-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693588155; x=1725124155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E627Tp+Y/K8UWTdhiVrVUJtsWGqSseDcORXtjtUEV5M=;
 b=aQAbkpJ1k5tI5OAzwT9tJv7fdoEDPm3C8iIooiCvJr5EaRAuSQay6k3h
 mOrR1kObMZPl+8lWvL6c5I9RP8E6s9/ilmEKCxPjVV4BdMb5eBB13LxOQ
 Im8GTU2cRLaS5wsa9GvtE/OSsNKt+HO8C/5mfcBOSXa941viqiZe5gENg
 w6L09SLor+jEaCXnWeUwGw9KP2DYtoo3HZ9ci/mze1lRmaRBt2D55AX5h
 zOFuVkIucrmAJ25nQeR/oVgem7CoQ2TPB5MRdjA/oxA10N8W0MmzlcIns
 FaGH/XAjOi8cqJxmFamzlTpFtYLAs9TrpQ4mUjmuJk6/n+QJwhR50Mw4D
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aQAbkpJ1
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/4] Support rx-fcs on/off for
 VFs
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

Allow the user to turn on/off the CRC/FCS stripping through ethtool. We
first add the CRC offload capability in the virtchannel, then the feature
is enabled in ice and iavf drivers.

We make sure that the netdev features are fixed such that CRC stripping
cannot be disabled if VLAN rx offload (VLAN strip) is enabled. Also, VLAN
stripping cannot be enabled unless CRC stripping is ON.
---
v4: Use ice_for_each_alloc_rxq in ice_vsi_is_rxq_crc_strip_dis()  (3/4)
v3: Fix Tony's comments in ice_vf_init_vlan_stripping() (3/4)
v2: Move patch "ice: Fix VLAN and CRC strip co-existence" from 4/4 to 3/4
    Other minor fixes from Tony for the same patch

Haiyue Wang (2):
  ice: Support FCS/CRC strip disable for VF
  ice: Fix VLAN and CRC strip co-existence

Norbert Zulinski (1):
  iavf: Add ability to turn off CRC stripping for VF

Paul M Stillwell Jr (1):
  virtchnl: Add CRC stripping capability

 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 +++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 67 +++++++++++++++++--
 include/linux/avf/virtchnl.h                  | 11 ++-
 6 files changed, 139 insertions(+), 7 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
