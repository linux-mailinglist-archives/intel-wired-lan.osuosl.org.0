Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 491A16CEF5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 18:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D77E1841FE;
	Wed, 29 Mar 2023 16:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D77E1841FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680107364;
	bh=jt5/qxNNwL2aj3mvk4rs+SMkb28h17WQ5wyA0Wk4Slo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9htYtkDcpJGg5PzWdwH5qAyrk4ObK05Lq5PIlMpMWZgNRkT+/0y+v8VI51lxsJv20
	 wfau1ED/dF/hxvmIhSk6FRS06RKyXi2HUfH8Laj7pasHoAZKPMa5E0g+TcqvHn4aO4
	 8Ju8uiz8kDn5bF8Gn4b9It1iL4VvpW37+MXw1ZP2tnEoZ7aYogiALuTj/6wUfr1QIq
	 5L6sCGpVL6fzpm24E/VztaGl6VMWbiwk3UP39GQQ3wlKNiY8c88Ya0LYm+m57rHE8M
	 D3EaU010OAhS2szmLfgIkpKQXkat2jmU7n2wXt00EBzAhSrWnR5a8JyHOQ4hxUHi+V
	 77/GtnN4em+zQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXCBabPE5god; Wed, 29 Mar 2023 16:29:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8B6B83D10;
	Wed, 29 Mar 2023 16:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8B6B83D10
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08D251BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6A0161474
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6A0161474
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qDW2Xa0-uCo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 16:29:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A12460FE7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A12460FE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:17 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-147-lMCce-KrNl6Ba0Qy_Vxf1Q-1; Wed, 29 Mar 2023 12:29:10 -0400
X-MC-Unique: lMCce-KrNl6Ba0Qy_Vxf1Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82961857F81;
 Wed, 29 Mar 2023 16:29:09 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3913F2027040;
 Wed, 29 Mar 2023 16:29:09 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 5A33E30736C72;
 Wed, 29 Mar 2023 18:29:08 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Wed, 29 Mar 2023 18:29:08 +0200
Message-ID: <168010734832.3039990.11189218865563948327.stgit@firesoul>
In-Reply-To: <168010726310.3039990.2753040700813178259.stgit@firesoul>
References: <168010726310.3039990.2753040700813178259.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680107356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vdLO4Y9b3BsmrzeQcmRa2KtBaNDjkTa0G8yC7xzEAHs=;
 b=b/cVnc7BnRjDWNiS80s0Sow4JopFZ8mba1bVWuA16UUtUeZ61cQxDXbZLnOi12xAKUpTV5
 aL3HnJ8chAFbUWaYQUwyhCqgdwSw783QkIVYXFYqueZjvoUOFvyvJPqMV76zqYLQv3/soP
 Hm0uqY/150uYmH7LcT2mXM8sgdnslpk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=b/cVnc7B
Subject: [Intel-wired-lan] [PATCH bpf RFC-V2 2/5] igc:
 bpf_xdp_metadata_rx_hash return xdp rss hash type
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
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
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
