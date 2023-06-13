Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD96772E2C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 14:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7073C416F4;
	Tue, 13 Jun 2023 12:24:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7073C416F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686659081;
	bh=dXIB7kg1MRUR92Ggk+p3AlpwEzeBsHuVuEfWtDtqm4M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=COfVgj5+xBD0qbs365KPYhKstx6uIXpfI9EnLLYOhpEtKvaXTXMCesVyE2YSzYFCy
	 YM71eemcujvjEfhSVDXQLSXrC2FcM6oJzkq9WL3ji7BfoE7GrUGJv5Y40i5UUtffdD
	 YKrLTjVdMWpBFsEFlAZ7SIxQyrKOtlDo2Jgsx5lNfo/+X7kK1za6tkN14DoyaEmSzo
	 3kwZCPFbmsaoq8UTBVEVtuxjYYxiWAJyYxzCteMUKPGBz/mIzSEZUnIn8AttJhkRDh
	 CHyvBKMo6qu1AkMj2FLvmWAsfkBD45z0A/czHj3aaDpD+i4IwIZ9BBEKacSGPRwSiS
	 KTe7m8MGtPVUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgzjwsz3jvGV; Tue, 13 Jun 2023 12:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D9634063D;
	Tue, 13 Jun 2023 12:24:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D9634063D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E04AE1BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7EBD8231E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7EBD8231E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YT3iPOPD40s9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 12:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 350CC822C7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 350CC822C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337951215"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="337951215"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="835871998"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="835871998"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:24:29 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 13 Jun 2023 14:24:18 +0200
Message-Id: <20230613122420.855486-2-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613122420.855486-1-piotrx.gardocki@intel.com>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686659072; x=1718195072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E5mmwH2fSHfoDdpc2kQEZSS8TlOLkOc7UCmxYue/2Bc=;
 b=Qxdd9G06CYI+6zoO6TDneIbc8Agi8iKmuQCsQHLa6X5OQVi1Bx2uoQpD
 AFRCxgCZqj/wlNqOZ5GcN3gFdhR8Qn0hCechgtnr0oc+eaUGagnKDpQhS
 Du4yj1tk3ps3O2KshevCQmgPrZ4obN3ABErfYrpKJVfdeYKGNo7MALrhL
 CS5tfVHpMAsHwMQrsofKZYMco1SqqnwhBuYg5g8njHkrioVqUUb8tNSZj
 6+Ie65WcjHXXwyqw3h4Xvx111o0ptFrFgNdvyE+pEkUWXzB+to0QCx3Sw
 v0itR0gQS0WYsQ96jwAFoblRdZqHEe6BERQNUlSMxJOCYRo1NIxFxdQlV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qxdd9G06
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] net: add check for
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

This patch adds proper check to return fast from the function
in these cases.

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
