Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 785676CCB42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 22:16:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3EC7408F6;
	Tue, 28 Mar 2023 20:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3EC7408F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680034581;
	bh=jt5/qxNNwL2aj3mvk4rs+SMkb28h17WQ5wyA0Wk4Slo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8uzdpGW9+4dnQQYORn6xwiBx57dE3PO/SMn9hDD225tmN1mBOk+qAE/W8dmtY+3XF
	 N3uEastPLzYXpXm7ylZeBRrqDUQImIzhNNnlcLGCNjEB1lll+6IE/U9EGMgWOY8lOO
	 xQDyFzPeiq6Vmx4iXa1yuJYQ5HcAnw/Aw0Ch77jprwFAhnbzOxhhACgptwDPigwLCy
	 RmZ3hxuh9KzyfOEEtc9kcztzEgqVFGYoRTLOPKxnk5BcrgjYjb1oIAWtFLILJYVypT
	 i5xCI80JHz316W2Qq14M/4z3stgTib/AU8lcwjJQ67xrLUb828ytYHT7jSe1aWSerb
	 0mb2e/LnPEReQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gF7TOwbxtZwL; Tue, 28 Mar 2023 20:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CA4140058;
	Tue, 28 Mar 2023 20:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CA4140058
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 995AB1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FCA16142A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FCA16142A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLxcvzUFWquL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 20:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 862D660768
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 862D660768
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:10 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-645-3VB9WbnRMUWoRxrLLCTkdQ-1; Tue, 28 Mar 2023 16:16:07 -0400
X-MC-Unique: 3VB9WbnRMUWoRxrLLCTkdQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E042185A78F;
 Tue, 28 Mar 2023 20:16:04 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 22D7614171BD;
 Tue, 28 Mar 2023 20:16:04 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 44BBF30736C72;
 Tue, 28 Mar 2023 22:16:03 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 28 Mar 2023 22:16:03 +0200
Message-ID: <168003456323.3027256.2973825783029955917.stgit@firesoul>
In-Reply-To: <168003451121.3027256.13000250073816770554.stgit@firesoul>
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680034569;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vdLO4Y9b3BsmrzeQcmRa2KtBaNDjkTa0G8yC7xzEAHs=;
 b=DzOu8/u/NJayIlttqPd5TkP1eDxvJ6YXw7/S5A0dDExH9ebUCdQXrUCh2I4KxgfygY3sd6
 Ac5oWkxYXNWWMP+UUuB1CeWJ4rObIMwjpln5XasdbQlf8bTztsvPB8AklmJx80q1KbEBsg
 aZ+vy3UN17abCPA6AB5lXWlUkGGarIQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DzOu8/u/
Subject: [Intel-wired-lan] [PATCH bpf RFC 2/4] igc: bpf_xdp_metadata_rx_hash
 return xdp rss hash type
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update API for bpf_xdp_metadata_rx_hash() by returning xdp rss hash type
via mapping table.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c |   22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b382476f347c..a14f0597524a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6496,6 +6496,26 @@ static int igc_xdp_rx_timestamp(const struct xdp_md *_ctx, u64 *timestamp)
 	return -ENODATA;
 }
 
+/* Mapping HW RSS Type to enum xdp_rss_hash_type */
+enum xdp_rss_hash_type igc_xdp_rss_type[IGC_RSS_TYPE_MAX_TABLE] = {
+	[IGC_RSS_TYPE_NO_HASH]		= XDP_RSS_TYPE_L2,
+	[IGC_RSS_TYPE_HASH_TCP_IPV4]	= XDP_RSS_TYPE_L4_IPV4_TCP,
+	[IGC_RSS_TYPE_HASH_IPV4]	= XDP_RSS_TYPE_L3_IPV4,
+	[IGC_RSS_TYPE_HASH_TCP_IPV6]	= XDP_RSS_TYPE_L4_IPV6_TCP,
+	[IGC_RSS_TYPE_HASH_IPV6_EX]	= XDP_RSS_TYPE_L3_IPV6_EX,
+	[IGC_RSS_TYPE_HASH_IPV6]	= XDP_RSS_TYPE_L3_IPV6,
+	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX] = XDP_RSS_TYPE_L4_IPV6_TCP_EX,
+	[IGC_RSS_TYPE_HASH_UDP_IPV4]	= XDP_RSS_TYPE_L4_IPV4_UDP,
+	[IGC_RSS_TYPE_HASH_UDP_IPV6]	= XDP_RSS_TYPE_L4_IPV6_UDP,
+	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX] = XDP_RSS_TYPE_L4_IPV6_UDP_EX,
+	[10] = XDP_RSS_TYPE_NONE, /* RSS Type above 9 "Reserved" by HW  */
+	[11] = XDP_RSS_TYPE_NONE, /* keep array sized for SW bit-mask   */
+	[12] = XDP_RSS_TYPE_NONE, /* to handle future HW revisons       */
+	[13] = XDP_RSS_TYPE_NONE,
+	[14] = XDP_RSS_TYPE_NONE,
+	[15] = XDP_RSS_TYPE_NONE,
+};
+
 static int igc_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash)
 {
 	const struct igc_xdp_buff *ctx = (void *)_ctx;
@@ -6505,7 +6525,7 @@ static int igc_xdp_rx_hash(const struct xdp_md *_ctx, u32 *hash)
 
 	*hash = le32_to_cpu(ctx->rx_desc->wb.lower.hi_dword.rss);
 
-	return 0;
+	return igc_xdp_rss_type[igc_rss_type(ctx->rx_desc)];
 }
 
 const struct xdp_metadata_ops igc_xdp_metadata_ops = {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
