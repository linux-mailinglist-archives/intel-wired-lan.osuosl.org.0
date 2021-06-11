Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D93C3A3FB6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 12:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0FCD414CE;
	Fri, 11 Jun 2021 10:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9e6wsU2bPQO3; Fri, 11 Jun 2021 10:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81176414C8;
	Fri, 11 Jun 2021 10:00:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8DB1BF301
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 10:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B19B60AB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 10:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DR4a-TJ75IEn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 10:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 112F060658
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 10:00:18 +0000 (UTC)
IronPort-SDR: 4lXaSVfnCDuYjPNt9/TlB/lipfSDdl1gAGeMbOth0OjMlldfq0yWFnrSETK+SjaffqXVM1kJDj
 dqqqp4YWOT2Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205456468"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="205456468"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 03:00:16 -0700
IronPort-SDR: xn7a+4piFdX8ewOHhT8komU7fvXT2BZuqigUCTsYuvRphBRJm45KX5xJicYr3jpaAZo9Le7w5s
 nWfyoQWvGWNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="402970001"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga006.jf.intel.com with ESMTP; 11 Jun 2021 03:00:15 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Jun 2021 11:59:14 +0200
Message-Id: <20210611095914.4832-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 0/2] iavf: Fix init and watchdog
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
v2: Splitted the patch into 2 to make them smaller
---

Jan Sokolowski (2):
  iavf: Refactor iavf state machine tracking
  iavf: Fix init and watchdog state machines

 drivers/net/ethernet/intel/iavf/iavf.h        |  12 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 189 +++++++++---------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
 3 files changed, 103 insertions(+), 100 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
