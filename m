Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD668730261
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5516361360;
	Wed, 14 Jun 2023 14:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5516361360
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686754405;
	bh=K+8k6p05pehEy2GS3KwZURJzkAhV9V555n+nprAhsP4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=61noIMYqGsBAgEuMuKTY8PQuvc9wXgWOYKUtM5vbah+u+Rm2K0fUISwXjYE15yHi1
	 CJYsqC3ZsJ5kV3alRKEso6+1O1lyUmHWl1Iuk070/ihGGvbIpTmnVedwlr/4DA5nal
	 M4S6cKevVE9xzCSn5z1HRJUg1pTevh10AFi+kDmdajfskFMTVsVR+wgqjuxyRIiC+6
	 Sgdq0lJ1x+J/1zbTkx311JaLUr0lwXFra8f00tO8QDj5dBCviSdX7Zj7EKtxLWVsJB
	 XPRrCBcVk5QF/9n75w/lDUJCtAZBwCZ+9DDra9/JCjAvgpbtXvnXo4MRzIqDWg8dMd
	 ZuODL8rXdCFSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id saY7dVFnqpLB; Wed, 14 Jun 2023 14:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B3626132B;
	Wed, 14 Jun 2023 14:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B3626132B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F3AA1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A2C2401DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A2C2401DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXc5kAhaj52O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:53:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2992400E4
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2992400E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:53:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387040560"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="387040560"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:53:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="782114859"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="782114859"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 07:53:11 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Jun 2023 16:53:00 +0200
Message-Id: <20230614145302.902301-2-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614145302.902301-1-piotrx.gardocki@intel.com>
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686754393; x=1718290393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ffOlKDdwHfZdnNsFKPvOtlXnT9PQ9YUdotU+ROTB8Yw=;
 b=fiXfX3j1g51OQ74AgI0SveykynaIzKJeXgHAYcwTNSH8bWxpQJ+vpdZC
 OOim9QSq6hHX+GYY4EFwDeFCsvy1PTmRVKpxyI7M1iPauhV4xyeT0zdBY
 KHhijLni3FDKzcsOdBgMdv3UdOhlzQLtZLMu/fjp/jZ7o2lU+2XxHfsiR
 eIeC4rlrMRMbhEQPwcxlngF5EqXSxCXQp5sB/r7yMXF4Z8PB18dMXvcfJ
 WJ8EA8QyJbIYpK/vP7VVDH7aOiAgWINYfuLeyQw2MSLEaA/GUWuwM7nVp
 D3fi59bw4tR9gYX8rlARK1p/Q9CJcHPT3+ndDeO+3m3ac6Pj7bBqgK7vj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fiXfX3j1
Subject: [Intel-wired-lan] [PATCH net-next v3 1/3] net: add check for
 current MAC address in dev_set_mac_address
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In some cases it is possible for kernel to come with request
to change primary MAC address to the address that is already
set on the given interface.

Add proper check to return fast from the function in these cases.

An example of such case is adding an interface to bonding
channel in balance-alb mode:
modprobe bonding mode=balance-alb miimon=100 max_bonds=1
ip link set bond0 up
ifenslave bond0 <eth>

Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 net/core/dev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/core/dev.c b/net/core/dev.c
index c2456b3667fe..8f1c49ab17df 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -8754,6 +8754,8 @@ int dev_set_mac_address(struct net_device *dev, struct sockaddr *sa,
 		return -EINVAL;
 	if (!netif_device_present(dev))
 		return -ENODEV;
+	if (!memcmp(dev->dev_addr, sa->sa_data, dev->addr_len))
+		return 0;
 	err = dev_pre_changeaddr_notify(dev, sa->sa_data, extack);
 	if (err)
 		return err;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
