Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5497C722E86
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 20:21:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D34F441717;
	Mon,  5 Jun 2023 18:21:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D34F441717
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685989284;
	bh=YQW05k6IOiiR/7jPr0RB8Z35znlkNLS7xvP15U37fA4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3zq/YQ3DEQr58pxCig73AUXMGjSh+cLxeAvRt9PVggIxjPRWRDdCm4JrT1++ROS0o
	 RpEEywaxnXnex12mEkhvyW4PPBK8D1a+lr3YsHgGzrr8xKouf6NEDwLngEZHb9OX+M
	 nN8b/QoPur+kZAuQvFbVH9NNSZm8v7/b+76UtrwsCELXKgHAO1zpiSz1XJ8nUvU8hX
	 tW1ENEy1XRd90uiWDH+0gBy+jmZuK3qDjQyg0OkCzEeh3dft/SXdrWAhZKtoriHfSs
	 EcE3bXXw9OdMzwPDWfePE6IL3GuKPGYE2IjwoL7Y1UvRFCoFQQeE+GfYlbc/zD/2Dp
	 Qovrbxu6Omq9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ookExCUV_o0C; Mon,  5 Jun 2023 18:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88FD440E46;
	Mon,  5 Jun 2023 18:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88FD440E46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 546281BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28D0A60BAC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:21:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28D0A60BAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMQ0hCCHIHfH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 18:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D24E6079D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D24E6079D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 18:21:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358896798"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="358896798"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 11:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="1038863356"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="1038863356"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 11:21:15 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 11:22:48 -0700
Message-Id: <20230605182258.557933-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685989277; x=1717525277;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PC18PsFltwR2GsxT9mIFpq4wqdFbufA/F6ksuBmYKrw=;
 b=D0Nyd1pmZI0boF4KijEO45neFVkrPAs8FLIdC0CcEJ/0D3CpmyjWFK/Y
 duETHsQsnm+1Lp2FVabGYY3iQPpJhUDeWIx0IoOvi+a4JoLEafiWCXEzP
 4RLlwbDxpXaw9fdxloJAJoZYjo8CoUJJAT1nN2iu/KannaXxU6smNMnb8
 3nqe0x6NXyq6NJFOJFopLQIJFddIFzWfmcYHRDQIE0SKAhRBueXsmf9+D
 HGYc2qvXwnSoDYU1dLT0J4VpHs70+UEkPO/kX/8R4HVjmNvWk+uDcYaWg
 F8SHj6GLy4geER6n4xzYwJmTdlq5kuj6rDsdl1YBL7k+hzNIOaDLgUM5t
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D0Nyd1pm
Subject: [Intel-wired-lan] [PATCH net v2 00/10] Implement support for SRIOV
 + LAG
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement support for SRIOV VF's on interfaces that are in an
aggregate interface.

The first interface added into the aggregate will be flagged as
the primary interface, and this primary interface will be
responsible for managing the VF's resources.  VF's created on the
primary are the only VFs that will be supported on the aggregate.
Only Active-Backup mode will be supported and only aggregates whose
primary interface is in switchdev mode will be supported.

Additional restrictions on what interfaces can be added to the aggregate
and still support SRIOV VFs are:
- interfaces have to all be on the same physical NIC
- all interfaces have to have the same QoS settings
- interfaces have to have the FW LLDP agent disabled
- only the primary interface is to be put into switchdev mode
- no more than two interfaces in the aggregate

Changes since v1:
Fix typo in commit message
Fix typos in warning messages
Fix typo in function header
Use correct bitwise operator instead of boolean

Dave Ertman (9):
  ice: Add driver support for firmware changes for LAG
  ice: changes to the interface with the HW and FW for SRIOV_VF+LAG
  ice: implement lag netdev event handler
  ice: process events created by lag netdev event handler
  ice: Flesh out implementation of support for SRIOV on bonded interface
  ice: support non-standard teardown of bond interface
  ice: enforce interface eligibility and add messaging for SRIOV LAG
  ice: enforce no DCB config changing when in bond
  ice: update reset path for SRIOV LAG support

Jacob Keller (1):
  ice: Correctly initialize queue context values

 drivers/net/ethernet/intel/ice/ice.h          |    5 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   53 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   57 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |    4 +
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c   |   50 +
 drivers/net/ethernet/intel/ice/ice_lag.c      | 1912 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lag.h      |   34 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |    2 +-
 drivers/net/ethernet/intel/ice/ice_lib.h      |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   26 +-
 drivers/net/ethernet/intel/ice/ice_sched.c    |   37 +-
 drivers/net/ethernet/intel/ice/ice_sched.h    |   21 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   89 +-
 drivers/net/ethernet/intel/ice/ice_switch.h   |   29 +
 drivers/net/ethernet/intel/ice/ice_type.h     |    2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |    2 +
 16 files changed, 2193 insertions(+), 131 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
