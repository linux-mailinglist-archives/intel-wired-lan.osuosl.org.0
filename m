Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7909118A8D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18662203DB;
	Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ve0mG6Bcu6U9; Wed, 18 Mar 2020 23:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 028B4203EA;
	Wed, 18 Mar 2020 23:02:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE4921BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B36C286644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HUBa9hQnq6SG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 26F3F86610
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:07 +0000 (UTC)
IronPort-SDR: UNQ6oiZ9noxb7ZpZSMGriCq5gBAB6YE6z8mA7DzdtagxooSDmJv+7DbmFUR+LwZKKjkJoRxnXi
 LJa+lh+Eha+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:06 -0700
IronPort-SDR: lp4f2PoxKqNBpAFV1mR15u/DumLtUTJSTSNJAL+Q2JspejcDfqdTuVZaDr8YQhgm5xoJ3n+EQI
 3JQwULe9dESw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341766"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:06 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:50 -0700
Message-Id: <20200318230102.36952-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 00/12] igc: Refactor MAC address filtering
 code
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

The MAC address filtering support from IGC driver has some duplicate code and
convoluted logic, making it harder to read, debug, and maintain.

As a follow-up to the bug fixes already applied to dev-queue, this patchset
refactors the MAC address filtering code to address those issues. It also takes
the opportunity to improve documentation from some key functions and clean up
comments that are not applicable to IGC, and fix minor issues along the way.

In summary, the new MAC address filtering code is organized as follows:

	* Filters are added and deleted only via igc_add_mac_filter() and
	  igc_del_mac_filter() APIs. These APIs manage the adapter->mac_table.
	  They are defined in igc_main.c and used in both igc_main.c and
	  igc_ethtool.c.

	* Filter configuration in hardware is handled by igc_set_mac_filter_
	  hw() and igc_clear_mac_filter_hw() local helpers in igc_main.c.

	* IGC_MAC_STATE_QUEUE_STEERING flag as well as igc_*_mac_steering_
	  filter() are gone.

Best regards,

Andre

Andre Guedes (12):
  igc: Remove duplicate code in MAC filtering logic
  igc: Check unsupported flag in igc_add_mac_filter()
  igc: Change igc_add_mac_filter() returning value
  igc: Fix igc_uc_unsync()
  igc: Refactor igc_rar_set_index()
  igc: Improve address check in igc_del_mac_filter()
  igc: Remove 'queue' check in igc_del_mac_filter()
  igc: Remove IGC_MAC_STATE_QUEUE_STEERING
  igc: Remove igc_*_mac_steering_filter() wrappers
  igc: Refactor igc_mac_entry_can_be_used()
  igc: Refactor igc_del_mac_filter()
  igc: Add debug messages to MAC filter code

 drivers/net/ethernet/intel/igc/igc.h         |  11 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  22 +-
 drivers/net/ethernet/intel/igc/igc_main.c    | 372 ++++++++-----------
 3 files changed, 169 insertions(+), 236 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
