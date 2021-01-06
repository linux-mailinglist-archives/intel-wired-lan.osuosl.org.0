Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE852EC5EB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 22:56:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6E3386ABD;
	Wed,  6 Jan 2021 21:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oiuJE3Ov23Zd; Wed,  6 Jan 2021 21:56:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97DBC8692D;
	Wed,  6 Jan 2021 21:56:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E9491BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A390873DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wr4x2IEyiVDe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 21:56:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 734C1873DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:00 +0000 (UTC)
IronPort-SDR: ksyv3Y/Cs4Rk9TQy0wmWGk19c8pIXR2bVOcUwMwZR1n6849Wr3DzgTmqvKLCzo7gFQn/KajA0A
 u+PVJ1JOPiRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="177441305"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="177441305"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 13:55:58 -0800
IronPort-SDR: iem+FgQHkwLLrKMCOXWtuhxpbVjRshZkHtM83Pm6a/eN9bzCwr0WB/r4klloZWBY0CEttHrV0e
 FIqBFOgSP9Tw==
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="361734663"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 13:55:58 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Jan 2021 13:55:38 -0800
Message-Id: <20210106215539.2103688-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count drops
 from GRO
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
Cc: Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When drivers call the various receive upcalls to receive an skb
to the stack, sometimes that stack can drop the packet. The good
news is that the return code is given to all the drivers of
NET_RX_DROP or GRO_DROP. The bad news is that no drivers except
the one "ice" driver that I changed, check the stat and increment
the dropped count. This is currently leading to packets that
arrive at the edge interface and are fully handled by the driver
and then mysteriously disappear.

Rather than fix all drivers to increment the drop stat when
handling the return code, emulate the already existing statistic
update for NET_RX_DROP events for the two GRO_DROP locations, and
increment the dev->rx_dropped associated with the skb.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>
---
 net/core/dev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/core/dev.c b/net/core/dev.c
index 8fa739259041..ef34043a9550 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
 		break;
 
 	case GRO_DROP:
+		atomic_long_inc(&skb->dev->rx_dropped);
 		kfree_skb(skb);
 		break;
 
@@ -6159,6 +6160,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
 		break;
 
 	case GRO_DROP:
+		atomic_long_inc(&skb->dev->rx_dropped);
 		napi_reuse_skb(napi, skb);
 		break;
 
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
