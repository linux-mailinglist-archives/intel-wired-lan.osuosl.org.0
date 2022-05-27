Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E13F535B2D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 10:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B578C848DF;
	Fri, 27 May 2022 08:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JJS76zY1ZmvB; Fri, 27 May 2022 08:11:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCF80845E7;
	Fri, 27 May 2022 08:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B72F51BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 08:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A662684959
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 08:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzYuT8h0Ybiw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 08:11:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 149EC8494E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 08:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653639080; x=1685175080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aXfv6r5290dc8Hlotj+rZPwjopRv9AZyKwVELC+d46M=;
 b=ClaKipNS9PpTwxsIcaW830xCpuRswmKfy0cSgOUWYDtzeSmOQ9aZIsFQ
 BPqzWJe80EFK6m8cImjkA8xPB5iY+KIVPUHaP555aWw4V7UlajiNy+RHO
 SMk8hNZJGlifRwIiCFU2Bp5jdeNvdoBBksM3Nwg4UKj5gSSqd56VbIcDp
 YR6dwCIA8YA2eVHuRyL7r9NAbCp3JUbOD1lErDUWy/Nc0ABR+bs7hmBBv
 3JFZ4Rio48Tz4ZzQCiwwI6spMxkz8c/paA5KCST1UjdPrjW23IawNgCpw
 fOhdnF2GaXj6AJkHXslmSI00gEa+D3KqGEmBUUbJivA+JXsCvCFNhDPLs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274422343"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="274422343"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 01:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="677880018"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga002.fm.intel.com with ESMTP; 27 May 2022 01:11:18 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 27 May 2022 10:09:19 +0200
Message-Id: <20220527080919.2370640-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 2/2] iavf: Fix call trace during
 removing iavf driver
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

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

If VF has configured tc qdisc with number of queues less than original
set and then the driver went in removing process, tc resources are also
releasing. Attempt of modify real num tx/rx in this state is causing
call trace, because kernel is trying to releasing uninitialized queues.

Fix by not modifying the number of queues when removing a driver.

Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index eec74ee5fc19..1b46a97f4ad6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3478,6 +3478,9 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 		}
 	}
 exit:
+	if (iavf_is_remove_in_progress(adapter))
+		return 0;
+
 	return ret;
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
