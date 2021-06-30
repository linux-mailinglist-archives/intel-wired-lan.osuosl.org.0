Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 054D63B7ECA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 10:18:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C09C40630;
	Wed, 30 Jun 2021 08:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id biLd5ZrPEiBZ; Wed, 30 Jun 2021 08:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F28140602;
	Wed, 30 Jun 2021 08:18:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C418D1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B095740642
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUZnkFT7zmJc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 08:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F11C840602
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="272166281"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="272166281"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:52 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457128335"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:51 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Jun 2021 10:15:27 +0200
Message-Id: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 0/5] Introducing 1.5 API for mailbox
 communication
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, piotrx.skajewski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The change is a consequence of errors reported by the ixgbevf driver
while starting several virtual guests at the same time on ESX host.
During this, VF was not able to communicate correctly with the PF,
as a result reported "PF still in reset state. Is the PF interface up?"
and then goes to locked state. The only thing left was to reload
the VF driver on the guest OS.

The background of the problem is that the current PFU and VFU
semaphore locking mechanism between sender and receiver may cause
overriding Mailbox memory (VFMBMEM), in such scenario receiver of
the original message will read the invalid, corrupted or one (or more)
message may be lost.

This change is actually as a support for communication with PF ESX
driver and does not contains changes and support for ixgbe driver.
For maintain backward compatibility, previous communication method
has been preserved in the form of LEGACY functions.

In the future there is a plan to add a support for a 1.5 mailbox API
communication also to ixgbe driver.

Changelog:
 v2:
  * remove unnecessary parameters from function description

Radoslaw Tyl (5):
  ixgbevf: Rename MSGTYPE to SUCCESS and FAILURE
  ixgbevf: Improve error handling in mailbox
  ixgbevf: Add legacy suffix to old API mailbox functions
  ixgbevf: Mailbox improvements
  ixgbevf: Add support for new mailbox communication between PF and VF

 drivers/net/ethernet/intel/ixgbevf/defines.h  |   4 +
 drivers/net/ethernet/intel/ixgbevf/ipsec.c    |  11 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |   5 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  11 +-
 drivers/net/ethernet/intel/ixgbevf/mbx.c      | 323 ++++++++++++++----
 drivers/net/ethernet/intel/ixgbevf/mbx.h      |  19 +-
 drivers/net/ethernet/intel/ixgbevf/vf.c       |  62 ++--
 drivers/net/ethernet/intel/ixgbevf/vf.h       |   5 +-
 8 files changed, 327 insertions(+), 113 deletions(-)

-- 
2.27.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
