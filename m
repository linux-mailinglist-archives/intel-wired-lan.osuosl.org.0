Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FDF74E2A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 02:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 115D861069;
	Tue, 11 Jul 2023 00:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 115D861069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689035990;
	bh=rWfQMTcz8j+310O3/HqdG5QXIaJRWIQQltqDYNXROjM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J2YvEJGV6bPx2wEQC6Jmt1mP33Dj+itD9g0rQtiMqA1NGaMRHkA39pw1/60JPUBnW
	 ogUxsiidj5EPtsElTZ9rEzyLzr+82ZUbLnW72zvq4rEHY22ezGPtVnTwQhqJkvO45Y
	 NsCIMRY4gyrSKc6U2G8+dzqmp2PDsfNSV+kdX8BK81bhacGB0LnFPvQ466KB+0OuQs
	 DNaNrBEzF3NrCD9QjjfiD7kMq9jb01a1au7LyhnZnnI/RShaJ/0DRqcj5AADcdhwHB
	 Fm9SYO+f7dCZ190tqXYGZ1H29BpAEIxuf7Bs0M8PB58oRaMsdSMGUOZLyaMpUchxR7
	 sjwtELba84Ttw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAmwPOD85CHW; Tue, 11 Jul 2023 00:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC2F76105A;
	Tue, 11 Jul 2023 00:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC2F76105A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B58881BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9595441C50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9595441C50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1V1Zms6P_SYs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 00:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4974541742
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4974541742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344089522"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344089522"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="790981051"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="790981051"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 10 Jul 2023 17:39:31 -0700
Message-ID: <20230711003935.98765-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689035982; x=1720571982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FKy6svzeedSkGKgqFOrv9ZknTW3cw9jDbISHfXJIpfs=;
 b=hSLIwuP7WhvA8haB/WH6BQWDUayzlB4mUTYaxcRWHZWOaCC+CKXgQAN8
 A3IAOZPtrcKG7i5MJYgIil4qEWWwD9IwG8XOr85148GTdsorRq9E4hbFf
 TMMDxPVz9RPhEmzf0VgukKnwIFucuxCLnF2PAWxfeM65ChdVAWVZkTUZa
 P1bXO1CwH+/aRCsiizAEMRF822s/5egjk12xUUHQYQhb6O0kj19UufRoM
 4scVK7xbrZdPbj0Y6SWUhe4uo0woa9bpERtTCgZ28rHnRE/BVlpgwRhDV
 ibu+kvV7jzs/9aFqqgEUBrl/MU/Bx8aV+V1blIpdBfoNLnpEb5VRLDTWS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hSLIwuP7
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: support cross
 timestamping on E823 devices
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series enables cross timestamping on E823 devices similar to how the
feature works on E822 devices. A few cleanups are done first to allow
properly programming the MAC timer block on E823 during the cross timestamp.

With this series, the E823 devices can support cross timestamping for
obtaining precise comparison between the CLOCK_REALTIME and PTP hardware
clock via simultaneous capture in hardwareg

Jacob Keller (1):
  ice: Support cross-timestamping for E823 devices

Karol Kolacinski (1):
  ice: retry acquiring hardware semaphore during cross-timestamp request

Sergey Temerkhanov (2):
  ice: prefix clock timer command enumeration values with ICE_PTP
  ice: Clean the main timer command register after use

 drivers/net/ethernet/intel/ice/ice_ptp.c    |  51 ++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 108 +++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  12 ++-
 3 files changed, 103 insertions(+), 68 deletions(-)


base-commit: 7a6c68ff6375fe15eae2aea2a21636f7df826a14
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
