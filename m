Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 220345A963E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 14:04:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF53441A55;
	Thu,  1 Sep 2022 12:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF53441A55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662033894;
	bh=CloUed4jqDPy9ZSHVipo9iufT1AQcZJxd/6Z4xdV+KI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8ARp6n5i7fRIDht7jSegAykiCYkLweEmKFx8PibCR2yhUGZitZtGctikjSGMD2S/o
	 97v6tA8dqXoBPvPPtVer7v5iwJGo4QGzKq9QRrNTfJjN6H79Qr9N88TXTCFMRCLSdh
	 g4O12BMlTcrcYG0kFikrkECfQCO+OXkHnnc7Q2MSSEPeefMjToM5bdiOQD62q9NJHJ
	 vuHUWF448lvGOEUR/9W8edORwPBw81y7Pb65xIuw4hhI7YfTBSHKMRdb6ocJ7/kYVv
	 qV7vwNvXqIuWmzzlXsKd1ybRkmDeN8M086I6X7Jc1om0ttV4ALodShvpvg82qFW8TB
	 xer840KHup0Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 39c3q5sVnPnH; Thu,  1 Sep 2022 12:04:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50B2341A54;
	Thu,  1 Sep 2022 12:04:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50B2341A54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2054A1BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF13F83E18
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF13F83E18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CY__LnD0QIP1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 12:04:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 162E683DF7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 162E683DF7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 12:04:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="321843597"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="321843597"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="563433757"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 01 Sep 2022 05:04:36 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 281C4XRh024211; Thu, 1 Sep 2022 13:04:34 +0100
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  1 Sep 2022 14:01:27 +0200
Message-Id: <20220901120131.1373568-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220901120131.1373568-1-wojciech.drewek@intel.com>
References: <20220901120131.1373568-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662033882; x=1693569882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/iUE+C/YoHTWlabpxbMQDFAlbGOXYtiHq7W6hemCfqo=;
 b=igb0A7Fofxh1BMBKDS1V+iXPPrEjbGuU+WP35hiUc4/fj9QqH1h3nGGK
 yS9nDJhNG3K839SqhjJ0ihCDp3nvjcXghNJRdJ01/xWG/pzxtqwivYWcF
 klFf05yS01l9iWgFTp2JUbkGXPkj+FTYXdmM8N3fHXWTzvTOKg5Yk/2Nj
 vojuloWs31LPZdpp5xy7ghaMblO3qAaVZhWDXsw28jAOZH3ZWFMEMzBPB
 pAmBovELTiJmaYJizOeVsPWcYESRBE51iKP7fNOe5PyrXW2I5PxPSJdze
 OeJJB1ETlGimKf+boeQOwUodpS/pgjb4QZnMEs10qs2k+raY+sOYZZvWp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=igb0A7Fo
Subject: [Intel-wired-lan] [RFC PATCH net-next v3 1/5] uapi: move
 IPPROTO_L2TP to in.h
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

Acked-by: Guillaume Nault <gnault@redhat.com>
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
