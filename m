Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A93181A4CEA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2020 02:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2552320353;
	Sat, 11 Apr 2020 00:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W4TEClpaDZ43; Sat, 11 Apr 2020 00:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06D7C2048A;
	Sat, 11 Apr 2020 00:28:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26F5B1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 228098688B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AJsZyx6_yyt4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0BDA85DD8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:40 +0000 (UTC)
IronPort-SDR: B4dyTTJY1dMD67Py9xEFxsERoJiVVqivMWTgK/Jn9sv7d18qtb2h8VN+s7rQnX/Vgn+j35mizx
 a+ItMvTbfWwQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 17:28:39 -0700
IronPort-SDR: VZ9ktPMGmFFvIuPCiY3agaVITd8GaZiXgbT0v6A2bMr/lfWH8Ll0ctwWJdIcnNz6D32dYYvzFR
 H0X3nq/eeafw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; d="scan'208";a="362585531"
Received: from nwu5-mobl1.amr.corp.intel.com ([10.134.124.160])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 17:28:39 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Apr 2020 17:28:30 -0700
Message-Id: <20200411002834.13916-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/4] igc: Enable NFC rules based on source
 MAC address
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

Hi all,

This patch series adds extends the IGC driver to support for Network
Flow Classification (NFC) rules based on source MAC address.

Quick summary of this series: Patches 1 and 2 clean up and prepare
the code for the new feature, patch 3 adds the support for source
address filters in the core layer, and patch 4 enables NFC rules
based on source address on the ethtool layer.

Regards,

Andre

Andre Guedes (4):
  igc: Remove IGC_MAC_STATE_SRC_ADDR flag
  igc: Remove mac_table from igc_adapter
  igc: Add support for source address filters in core
  igc: Enable NFC rules based source MAC address

 drivers/net/ethernet/intel/igc/igc.h         |  26 ++---
 drivers/net/ethernet/intel/igc/igc_defines.h |   3 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  41 +++----
 drivers/net/ethernet/intel/igc/igc_main.c    | 111 +++++++++----------
 4 files changed, 84 insertions(+), 97 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
