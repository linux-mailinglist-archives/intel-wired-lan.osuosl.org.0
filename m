Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D215A2671
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE5C4419F1;
	Fri, 26 Aug 2022 11:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE5C4419F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661511871;
	bh=khMZZbHQLur69AyVg7f2X7NHTYdTfXWU2hurHc7GWyU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PfmNUZT8HFv+6hZWMn4wymFqtPLl9cheOTDAop2XiL8cWjXtGSx5OKVaA2zn1JgwJ
	 3C15hv8xgaZQo9SF4gHhxrwUgRm17UXWvRYxuvm7l8y8Yq2g76wkW1svryU/1uT2jl
	 A9jQbrQ+2tfVHz/Upg8uWleJnYPi5yiA9fFzv0xM24ZfYqZNiIYo9P4n4JK+d1p41d
	 9VSMD2leVDFd5oXl2i6qC9dnt6wMMu4WFOaTDtmlergYB+hCpr6+4+0ywgcBfbyzt+
	 dGW361xk1mZkmANnmimyZw+MpE8t32z9oVfBmCCZ4lZrtaTDzIOIgbFfWHYKVjYjGk
	 l/ookrfvmKueA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQ8eMAB8hKRo; Fri, 26 Aug 2022 11:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C0C7419EF;
	Fri, 26 Aug 2022 11:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C0C7419EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 374501BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10BBB610DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10BBB610DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n5txs_AOJfHj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C1C7610D1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C1C7610D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:04:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="293223759"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="293223759"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 04:04:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="752840781"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2022 04:04:16 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 27QB4CLr024087; Fri, 26 Aug 2022 12:04:14 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 26 Aug 2022 13:00:55 +0200
Message-Id: <20220826110059.119927-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220826110059.119927-1-wojciech.drewek@intel.com>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661511861; x=1693047861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WQPUokZJ/zyxD04DZp4EtBIHeKLqWB2LpoPcO5ArG28=;
 b=TNHE0VneUkeDWxie8pNTsK52blwPHsb2YsBlKflFEiOK6l7RNudXUDAn
 Ee0aB5NCstnGfYhFrUQLLT4p0dMCTSXnQ7qFcFR01nNHcvpZt1JPy/cIZ
 zAIw3nI80iKa9uk7F+6uRbpAhVQ4LZRwJ1n4nlLi6ahN+RIzW7HzoNoRW
 vItFnWxdxFRZwvjTdxeRjh+H03/B9Cg8TwGN6pCoWt0YDmuNT2c/HwCuN
 +n15KEa2sm2Zq2sb1oCqytfZPeZ6RR7lCkRcOYzl8J7tQ+Q1K8gMQ6SWi
 a/Rnyf8cB2rZLgCtDx3YdSZ2mGE/twKsS00REMRssfOEcVFtoAr/HD1kk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TNHE0Vne
Subject: [Intel-wired-lan] [RFC PATCH net-next 1/5] uapi: move IPPROTO_L2TP
 to in.h
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, komachi.yoshiki@gmail.com,
 jchapman@katalix.com, edumazet@google.com, boris.sukholitko@broadcom.com,
 louis.peens@corigine.com, gnault@redhat.com, intel-wired-lan@lists.osuosl.org,
 vladbu@nvidia.com, kuba@kernel.org, pabeni@redhat.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, maksym.glubokiy@plvision.eu, jiri@resnulli.us,
 paulb@nvidia.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

IPPROTO_L2TP is currently defined in l2tp.h, but most of
ip protocols is defined in in.h file. Move it there in order
to keep code clean.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 include/uapi/linux/in.h   | 2 ++
 include/uapi/linux/l2tp.h | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/in.h b/include/uapi/linux/in.h
index 14168225cecd..5a9454c886b3 100644
--- a/include/uapi/linux/in.h
+++ b/include/uapi/linux/in.h
@@ -68,6 +68,8 @@ enum {
 #define IPPROTO_PIM		IPPROTO_PIM
   IPPROTO_COMP = 108,		/* Compression Header Protocol		*/
 #define IPPROTO_COMP		IPPROTO_COMP
+  IPPROTO_L2TP = 115,		/* Layer 2 Tunnelling Protocol		*/
+#define IPPROTO_L2TP		IPPROTO_L2TP
   IPPROTO_SCTP = 132,		/* Stream Control Transport Protocol	*/
 #define IPPROTO_SCTP		IPPROTO_SCTP
   IPPROTO_UDPLITE = 136,	/* UDP-Lite (RFC 3828)			*/
diff --git a/include/uapi/linux/l2tp.h b/include/uapi/linux/l2tp.h
index bab8c9708611..7d81c3e1ec29 100644
--- a/include/uapi/linux/l2tp.h
+++ b/include/uapi/linux/l2tp.h
@@ -13,8 +13,6 @@
 #include <linux/in.h>
 #include <linux/in6.h>
 
-#define IPPROTO_L2TP		115
-
 /**
  * struct sockaddr_l2tpip - the sockaddr structure for L2TP-over-IP sockets
  * @l2tp_family:  address family number AF_L2TPIP.
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
