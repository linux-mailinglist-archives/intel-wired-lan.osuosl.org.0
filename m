Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A710270BB89
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 13:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40F084103C;
	Mon, 22 May 2023 11:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40F084103C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684754280;
	bh=YlGWYsOV1qNXinnFQO6RQNPTASfEFZyo0ezvIElTJQc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=62x1Dp60gqW4gS6mp9+tRNar2XxndVwXbOmowdnsyh4/W87BrEHEIIwP2g35r2w7U
	 tKzGR5x6JmVobZ0/B2npLnH5dBIHFPW71tzpPaCbCxh43eNhbDK7ieaw5HeYxmBaF+
	 e0qG2FhUpPuRVrfs1D0OfZVm6G3yTkN8O3q3wXbqIhDVvxHzci2FksS0ynzlJ26wG9
	 7fgwiWzTV32jmoaXaWznfgeyOGIy59y6d3DjD3ZHjFdTdcVP6xIfJ2G/vzK9F6B8s8
	 VUJ/muzjcOElCRSGePOcGBRsfyDxs0VCgmT9hYEtyCQ2VLrQ+pPOJ79jGPUh9vmvsA
	 Gxt1Z7gS+d0aQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDfB0hdJ4GDD; Mon, 22 May 2023 11:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FD344056B;
	Mon, 22 May 2023 11:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FD344056B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA77F1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80DD3418AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80DD3418AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uFw9LRA4KhXi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 11:17:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14183415FB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14183415FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="416354669"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416354669"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 04:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="703466624"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="703466624"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2023 04:17:49 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 13:17:44 +0200
Message-Id: <20230522111748.65089-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684754272; x=1716290272;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PfvWJOh7LkGvJzCN1v3YRZdW2MsI/7e/YbCxw/YvDvU=;
 b=mFMp7eEyDoLu4O70TrwNhYQOQXl5TyhIY7jOzaWw1I/YoBpk8Zd6d2K3
 mLMw4sQjqti8MpS4QC/Wz9ETMA9ILsmX6o10JA8RTlosz4ZHcQkJBG3j1
 XAg7oie5L6Ik/DX0lW7vBOurZJl0+3qFAC4uXJAXQv5u7PJksCGkUZe0M
 o6W72/BmGXF5O5IpQAeeNrG/IV1fmlh8x372V1HrUz+isV5e2gL58AGM3
 GP8zZnjPLITwoe4D6TMs/OTumJvk6BjB1tPSD7rDhlWgv6MGBSVQ9miiN
 8zuzCEr5MqWbHuP7Ynp53KXYA4wlPR9j9LgQE42aWSDfDXpw58RrVOVrj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mFMp7eEy
Subject: [Intel-wired-lan] [PATCH iwl-net v8 0/4] iavf: fix reset task
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
