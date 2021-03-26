Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FED349E0F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:38:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6272284B77;
	Fri, 26 Mar 2021 00:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HGiKpgLFFxl; Fri, 26 Mar 2021 00:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6800E84B70;
	Fri, 26 Mar 2021 00:38:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11CF51C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EBFA660B9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qbbMn1ZOnb2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4ED0E6001B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: qOIr4E1fod4HKpeZ/UFV3ApFvgAZRxBGg4M1EmfkG4Z3wtmFJPfASkGrPb+BSyZTbiWG+CgtLc
 F8pliT3cTMpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762075"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762075"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
IronPort-SDR: eVePysinWBFTFKcPJ8jtcdtc8eqkVawGC+vSRvnXnqKtdx8KZimj6QAPgNWC/szDtofwj+E+J/
 VFil5HcGUN3g==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276239"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:23 -0700
Message-Id: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 00/11] warning cleanups
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

In this series I address the C=2 (sparse) warnings. The goal is to be
completely sparse clean in the drivers/net/ethernet/intel directory.
This can help us run this tool for every patch, and helps the kernel
code by reducing technical debt.

NOTE: there is one warning left in ixgbe XDP code using
rcu_assign_pointer().

Jesse Brandeburg (11):
  e100: handle eeprom as little endian
  intel: remove checker warning
  fm10k: move error check
  igb/igc: use strongly typed pointer
  igb: handle vlan types with checker enabled
  igb: fix assignment on big endian machines
  igb: override two checker warnings
  intel: call csum functions with well formatted arguments
  igbvf: convert to strongly typed descriptors
  ixgbe: use checker safe conversions
  ixgbe: reduce checker warnings

 drivers/net/ethernet/intel/e100.c             | 12 +++---
 .../net/ethernet/intel/e1000/e1000_ethtool.c  |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 ++---
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  2 +-
 drivers/net/ethernet/intel/igb/igb_main.c     | 11 ++---
 drivers/net/ethernet/intel/igb/igb_ptp.c      |  4 +-
 drivers/net/ethernet/intel/igbvf/netdev.c     |  6 +--
 drivers/net/ethernet/intel/igbvf/vf.h         | 42 +++++++++----------
 drivers/net/ethernet/intel/igc/igc_dump.c     |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c  |  2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  9 ++--
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  8 ++--
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
 13 files changed, 56 insertions(+), 56 deletions(-)


base-commit: 4390eafe5ee738a90ab2ae0e3eb2c81330107d05
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
