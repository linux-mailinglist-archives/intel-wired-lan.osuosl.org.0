Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D17DA816B85
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 11:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CCE04190A;
	Mon, 18 Dec 2023 10:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CCE04190A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702896534;
	bh=Gij5sbATBQcKd+T6AECmflZgoIolYUNN/O/8LDOlGQI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zaHAZVQdnfWVRQf0Dpm+bgs4dHou8xWIzHO/3v0WH6yICkWagPFp5P1pyvbZLByiw
	 T17SbeTWtzJo/ZBRzoVVAmPlU872VH+iAuO0CSB1XF9tG2OIAAponavuJIpNA9Kuu6
	 0pQtEDp6dBFCGJLOO2mksu2ZBbIilRMWY70yDOaqUmWwjXRVrUoj8Y4KZxh2Ke8pQ1
	 FjgnSycSrk7BmRlMzHMy8p66jJ3AahbAmqlOYwoKI5V7Yg9x4eZKUAl1uRt0p56Ho6
	 btqjG2ESTipAc1l5EffVP/pO/MbLzkhCuovAqq0a9B00XLL+7D/9Vcv+TSYabYQ8u4
	 iO6NqeF+QGxTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8cmkqJWeUy1; Mon, 18 Dec 2023 10:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D08840917;
	Mon, 18 Dec 2023 10:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D08840917
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3A621BF385
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 10:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86BEF40547
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 10:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86BEF40547
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JDpAJREx_hDx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 10:48:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F5764031C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 10:48:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F5764031C
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2579734"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2579734"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 02:48:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="1022712624"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="1022712624"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga006.fm.intel.com with ESMTP; 18 Dec 2023 02:48:34 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Dec 2023 11:39:24 +0100
Message-Id: <20231218103926.346294-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702896526; x=1734432526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0EotLuPCW24Rk1PcS8Qnfm1ePiwC7sddgl0nDu013MA=;
 b=ONu3Z/6d7267k+pfIXCdQcl6aXZIfKZQv92gm27yYjhiBiNy3Kp317sJ
 wHjnMbHf3wf7CIAE8MA6W8u80rbQ/uLEtIbfNHEMbJ+qEfCPF2Az/FIav
 qFB/yEJZriYm/+ZHXZIH8+pgkbakSTYv7tUA8zjgEhw1L8QNDmiTNZJmv
 y2FHuFR6Avb4hZYU2J39D45NYjGRtOQv+6/VCLW6bAIMvL1sePVIO0V2q
 FGV9vUJkoxlHyHFXUbtTMEaz1rGONkRmZAwS4ETEaKE/rz1h3+A1pJcwU
 q7vz0K2FmqoAsIrfR9R/d6Cf0Ov7x0MFCI9kWhh459sdBp00qvUG5BpwV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ONu3Z/6d
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/2] ixgbe: Refactor ixgbe
 internal status
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A small 2 patches series removing currently used internal status codes in
ixgbe driver and converting them to the regular ones.

1st patch deals specifically with overtemp error code, the 2nd one
refactors the rest of the error codes.

Jedrzej Jagielski (2):
  ixgbe: Refactor overtemp event handling
  ixgbe: Refactor returning internal error codes

 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  36 ++---
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  61 ++++---
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 145 ++++++++---------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  42 +++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  34 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 105 ++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |   2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  43 +----
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  44 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 150 +++++++++---------
 13 files changed, 309 insertions(+), 358 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
