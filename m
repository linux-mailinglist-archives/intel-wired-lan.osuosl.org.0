Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA237704F25
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 15:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 331F260FC0;
	Tue, 16 May 2023 13:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 331F260FC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684243422;
	bh=YlGWYsOV1qNXinnFQO6RQNPTASfEFZyo0ezvIElTJQc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vmNLw3F18ZZGC1XRTaQcJXvPfqY1YRxjaasEt3hui6seN9vFKRKptxs26xHviXqDu
	 FabEBPv0JW8Bbu3bqfdRWePr3gv+SyAj+V0Ky0z7jnXRHUOMZkuTLuw7CT5cmqc72n
	 W9cAxd/L4MsailsM/AOMhlKgKI8MuNudzqHAPN3wQH3yyHnpC53kZNHNoB7pJtXqh2
	 EV9INsZuLhIhF+Pp/YbbyGPhazPPmxMd9qEFU0gMbrgJO+0ZB2Kz6sNxVKSiyf4ALn
	 5EbF2AbIqrPjG207H0V5hbzvewB3qw9FBhPvY5/Zt8pQppMNGbRnzAh2kC63fEI0O0
	 A5gVhkQ+23ZQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClV2y7io7tJ3; Tue, 16 May 2023 13:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07C5060BDA;
	Tue, 16 May 2023 13:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07C5060BDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19C951BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 13:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF56440576
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 13:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF56440576
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bM48AfROQEDr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 13:23:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 514F74056D
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 514F74056D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 13:23:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="350314245"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="350314245"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 06:23:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="825560451"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="825560451"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 16 May 2023 06:23:33 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 May 2023 15:23:27 +0200
Message-Id: <20230516132331.96017-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684243415; x=1715779415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PfvWJOh7LkGvJzCN1v3YRZdW2MsI/7e/YbCxw/YvDvU=;
 b=I/IIZgPzzGXfkYuFDiQeGsvA4pY+QkQqRKWoO3wR+DaD/UW+Sk4yKQmv
 WEW/UgvMAOGZYyxAUg23v8vZSRz+9rA3a75gKNsJN7UVX9r2ym03qnRgW
 puI9Rdw8QeHuWCrp7hev8kkL/FrDMDuUuJ6ai+FTrp34c7SmIUa3zw30U
 Jr8cjdCEpULxEGiprRmXZWeNciE6vUJGPRbKkgHs5A+VqQXpRQnH0d6Za
 p5QGuXmfdd1qZ/q6lt6C5gDd2pFccG/YT8L7Bo2eKBOxB8YO+fBowC0Le
 5ronIuMpS/hND0+5d3QCv6ZynXAL3YM+Xnfo5cWNcWf+5DhZJK6D6EQcY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/IIZgPz
Subject: [Intel-wired-lan] [PATCH iwl-net v7 0/4] iavf: fix reset task
 deadlock
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

From: Dawid Wesierski <dawidx.wesierski@intel.com>

Changing the way we handle resets so that the callback operating under the RTNL lock will wait for the reset to
finish, the rtnl_lock sensitive functions in reset flow will schedule the netdev update for later.
This will eliminate circular dependency with the critical lock.

Marcin Szycik (4):
  iavf: Wait for reset in callbacks which trigger it
  iavf: Don't lock rtnl_lock twice in reset
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"

 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 118 +++++++++++++-----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
 4 files changed, 105 insertions(+), 48 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
