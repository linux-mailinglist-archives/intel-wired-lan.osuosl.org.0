Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D5C3AC6C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 11:04:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5473C60644;
	Fri, 18 Jun 2021 09:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBsbD_VKY_xD; Fri, 18 Jun 2021 09:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 753C86065F;
	Fri, 18 Jun 2021 09:04:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A9E91BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8634A83C62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CI5sGGu_-YUU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 09:04:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BCBB83B43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 09:04:47 +0000 (UTC)
IronPort-SDR: rgMZNm7viLlyt70lHONvlXOfx5TKbN4e02tWkWJ361sbkkJOjvv23DOLwGBTBZxarKRA9rWHPk
 N8IruJfJ7Ixw==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="193652470"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="193652470"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 02:04:47 -0700
IronPort-SDR: NA85FFxWFOpnCAlqnZXBejPfPI1XSv6cy0ArQ18OjZ4J5+Q4gFmGH+nmz6C0Pxpy7zaH9baw0o
 +7/A9iIf2QzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="485615642"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2021 02:04:46 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Jun 2021 11:03:46 +0200
Message-Id: <20210618090346.12405-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3 0/3] iavf: Fix init and watchdog
 state machines
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use single state machine for driver initialization
and for service initialized driver. The init state
machine implemented in init_task() is merged
into the watchdog_task(). The init_task() function
is removed.

---
v3: Added new file to patch series
v2: Splitted the patch into 2 to make them smaller
---

Jan Sokolowski (3):
  iavf: Refactor iavf state machine tracking
  iavf: Add __IAVF_INIT_FAILED state
  iavf: Fix init and watchdog state machines

 drivers/net/ethernet/intel/iavf/iavf.h        |  12 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 188 +++++++++---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
 3 files changed, 103 insertions(+), 99 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
