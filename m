Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 925723FAA1E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Aug 2021 10:21:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 128C580F80;
	Sun, 29 Aug 2021 08:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9kAJVl8StoK; Sun, 29 Aug 2021 08:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F17980EF8;
	Sun, 29 Aug 2021 08:20:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04F0F1BF364
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 08:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7547404A0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 08:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o12lCbyuB1Ig for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Aug 2021 08:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 642D24049E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Aug 2021 08:20:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10090"; a="215017425"
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="215017425"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2021 01:20:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,361,1620716400"; d="scan'208";a="518329730"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by fmsmga004.fm.intel.com with ESMTP; 29 Aug 2021 01:20:44 -0700
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Sun, 29 Aug 2021 10:05:10 +0200
Message-Id: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC v2 net-next 0/2] Add RTNL interface for SyncE
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
Cc: abyagowi@fb.com, richardcochran@gmail.com, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Synchronous Ethernet networks use a physical layer clock to syntonize
the frequency across different network elements.

Multiple reference clock sources can be used. Clocks recovered from 
PHY ports on the RX side or external sources like 1PPS GPS, etc.

This patch series introduces basic interface for reading the DPLL
state on a SyncE capable device. This state gives us information
about the source of the syntonization signal and whether the DPLL
circuit is tuned to the incoming signal.

Next steps:
 - add interface to enable recovered clocks and get information
   about them

v2:
- removed whitespace changes
- fix issues reported by test robot

Maciej Machnikowski (2):
  rtnetlink: Add new RTM_GETSYNCESTATE message to get SyncE status
  ice: add support for reading SyncE DPLL state

 drivers/net/ethernet/intel/ice/ice.h          |  5 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 34 ++++++++
 drivers/net/ethernet/intel/ice/ice_common.c   | 62 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  4 +
 drivers/net/ethernet/intel/ice/ice_devids.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 55 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 35 +++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 44 +++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   | 22 ++++++
 include/linux/netdevice.h                     |  6 ++
 include/uapi/linux/if_link.h                  | 43 +++++++++++
 include/uapi/linux/rtnetlink.h                | 11 ++-
 net/core/rtnetlink.c                          | 77 +++++++++++++++++++
 security/selinux/nlmsgtab.c                   |  3 +-
 14 files changed, 399 insertions(+), 5 deletions(-)

-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
