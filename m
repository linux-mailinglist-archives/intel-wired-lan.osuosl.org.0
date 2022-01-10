Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855C8489970
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jan 2022 14:12:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2268B405F3;
	Mon, 10 Jan 2022 13:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnKzwPLDxmbu; Mon, 10 Jan 2022 13:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 933FF404ED;
	Mon, 10 Jan 2022 13:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72D541BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DEF7405DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLaPeSyVsg3q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jan 2022 13:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EC39404ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641820307; x=1673356307;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4X9hQAeko192Cbj1yRB6emiCPiUkGxT+lk6crtR5enI=;
 b=GltJrSY06eH7MOub9DRfz6FZH5zy6AF/S8sAQscMPv8TBlCF6X2lggSQ
 aP4YtzizcxYMMrUtDCF127ZTfIcymyB2wRyZ5LArU5yIuzlIRhPbx80J5
 2PVlBFcPfU9/P3KYm5rxiZa0ueARS03aJfS2SbGMmpuYw9hXNHzPR11K4
 uDAWyw65WHk/x++GcqiK6u+jRl8S6BUZxHn63gUU14+fvRT84u9YmM5RH
 /KgGC80c4WYC/c8/2Jvjel4plOqcs1nwC6+BHNrJaXkiJMQQ0i70gyXvE
 f22PIpiNDr7A4vVk6yIzx3riwuGhssyIQZPWiA6u0Pk0Q8NsBseexg2Vl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="240770965"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="240770965"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 05:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="575811967"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2022 05:11:45 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jan 2022 13:11:38 +0000
Message-Id: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/4] Eliminate race condition
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
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

1. Add new versions of send ASQ command functions including
new version of i40e_aq_remove_macvlan().

2. Add new version of i40e_aq_add_macvlan() function.

3. Change i40e_aqc_add_filters() and i40e_aqc_del_filters() functions
located in i40e_main.c to use new versions of i40e_aq_add_macvlan()
and i40e_aq_remove_macvlan().

4. Change several i40e_aq_ functions to send commands in atomic
context by using i40e_asq_send_command_atomic(..., true).

Jedrzej Jagielski (4):
  i40e: Add new versions of send ASQ command functions
  i40e: Add new version of i40e_aq_add_macvlan function
  i40e: Fix race condition while adding/deleting MAC/VLAN filters
  i40e: Add sending commands in atomic context

 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  92 +++++++++-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 162 +++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  24 +--
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  25 +++
 4 files changed, 258 insertions(+), 45 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
