Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFC748EA7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 14:19:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3560860F40;
	Fri, 14 Jan 2022 13:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-eVYwE4yQzI; Fri, 14 Jan 2022 13:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4716860B4B;
	Fri, 14 Jan 2022 13:19:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60F6C1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DFDA60B06
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AW8zMEQtWugT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 13:19:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF4B960034
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642166384; x=1673702384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O2HdL+9jY9kOH+0Rv3BrnqcOKNnSR4qDSqXg0IIGdTQ=;
 b=O0mzsztxn4/ZHb3BDayTCwvpWv0DO35qoNR2aHnifrleua34KdaKQeka
 15MJms65bAgh5VaR+NE78+zWL86wh1YZmJsUkpDkkHPI+LOM+X4GycWzw
 QE1ZBuZdqO2HBIGqWU3eC49aChtBj2wUwQbLaubbKMfIeRNs5FVXDQS9D
 6kij2SuuqPVaCZfz9blPS0RI5emyTLrSkFtur6SxY3gu50JhhyJZW7ILg
 83PfNdACVvJ4Nf/y2k6yZdOb/tcGsE0pbnOOHZiFvzFjYaVcT6mHJoqQt
 xBmKvboPnmZDdsWnFx1N902al/TpxEmn89UPQsHzJ9WM5/BHZNPQDaOVB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="330591844"
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="330591844"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 05:19:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="670851115"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2022 05:19:43 -0800
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 13:19:27 +0000
Message-Id: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 0/4] Eliminate race condition
 occurrence during sending ASQ commands
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Provide modifications in ASQ commands in order to
prevent for race condition occurrences.
Add new versions of ASQ commands based on sending commands
in atomic context. New versions of commands are marked as _v2.
Also change already existing ASQ commands to be able to work
in atomic context. Make them to invoking previously added
i40e_asq_send_command_atomic() function to perform aq calls.

Eliminate problem with race conditions connected to accessing
hw->aq.asq_last_status during callig ASQ commands.

1. Change several i40e_aq_ functions to send commands in atomic
context by using i40e_asq_send_command_atomic(..., true).

2. Add new versions of send ASQ command functions including
new version of i40e_aq_remove_macvlan().

3. Add new version of i40e_aq_add_macvlan() function.

4. Change i40e_aqc_add_filters() and i40e_aqc_del_filters() functions
located in i40e_main.c to use new versions of i40e_aq_add_macvlan()
and i40e_aq_remove_macvlan().

Jedrzej Jagielski (4):
  i40e: Add sending commands in atomic context
  i40e: Add new versions of send ASQ command functions
  i40e: Add new version of i40e_aq_add_macvlan function
  i40e: Fix race condition while adding/deleting MAC/VLAN filters

 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  92 ++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 155 +++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  24 +--
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  25 +++
 4 files changed, 250 insertions(+), 46 deletions(-)

---
V2: change order of patches, provide several little changes connected to
variables initialisation and removing unnecessary status variables
---

-- 
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
