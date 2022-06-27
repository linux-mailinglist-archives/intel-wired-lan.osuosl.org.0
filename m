Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB3155BB31
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jun 2022 18:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DC5E40297;
	Mon, 27 Jun 2022 16:54:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DC5E40297
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656348853;
	bh=1t+AOB9qsLrYe0n7eEkvpGIzgcMedGu5b9Q+1PLeTHk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hDbK8xjlaAUsubIUenGRuu6lDJpTDPdXDdIQhEBdLu8xXGJuCSaxMEUpoKNHa5/Xp
	 I16FkmSMCNLGs9sJKzKhrecmk3C4pRRmmrk6kgxIzcGBsA9GMFFj1pIDHg7uK/JFPS
	 bbnKto83pyvK05zqQiO+/ugfnNdmjrFmqNVFv/ia85kQeycsVEWS0iZSksEEFzwgGC
	 NdOX5uNhyDdVdDF21peiiXasad2NW7YwL9y9budZcfzRZiMOwiUZD1s/uM6xJGpfEk
	 03qqehh5hjj0fVWYd/b6yS7cQRZXHe1NQy0Ob/UJ9RfyLxMkEQ0YN6qT3YpgHqCqNn
	 cIX+AamDh7LMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4TXwuum8gIaj; Mon, 27 Jun 2022 16:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 112864010C;
	Mon, 27 Jun 2022 16:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 112864010C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F6A31BF3C5
 for <intel-wired-lan@osuosl.org>; Mon, 27 Jun 2022 16:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46AEE605EE
 for <intel-wired-lan@osuosl.org>; Mon, 27 Jun 2022 16:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46AEE605EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQtAAjI_Jrgu for <intel-wired-lan@osuosl.org>;
 Mon, 27 Jun 2022 16:54:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A64E9607C0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A64E9607C0
 for <intel-wired-lan@osuosl.org>; Mon, 27 Jun 2022 16:54:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261305871"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="261305871"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:54:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="679654349"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.16])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jun 2022 09:54:03 -0700
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 27 Jun 2022 09:53:10 -0700
Message-Id: <20220627165310.2935617-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656348845; x=1687884845;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E8zGVWzFj28G9WmxwIIH2u5q+9jCnC+HnYCJ84Q2BcM=;
 b=bw/joSgmz6F159IgC28dypZCIci3saE0bkPjoeO0WiYcalmXwl33WKXX
 Xvv4qCy4LVNvwyNXywOpWeTVXLE+tUVmY2+slvp1urClwu2jnpkUi2Zr+
 c+2iivFGGN9Mv2BlDH2FcJkYEijm+r+qciSDv7CJztNtUOPB9Lc97ohTn
 i4A3KDDi12TAeiYOgP5IK4pmXvA59VnDduYvkac+eHisuuRNKC++hlYkl
 p2gP5dalkehr4ADm5JOw3xvxAXmirQRfcUy1sYrTEFgUdYFitY5HAxSLf
 3k/PxI8dM42//BggqlNzqRTbtpgO3AD0ZMuH6qdaaPjoaFg0SVwLK+Ngi
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bw/joSgm
Subject: [Intel-wired-lan] [PATCH net-next] ping: fix ipv6 ping socket flow
 labels
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

Ping sockets don't appear to make any attempt to preserve flow labels
created and set by userspace. Instead they are always clobbered by
autolabels (if enabled) or zero.

This grabs the flowlabel out of the msghdr similar to how rawv6_sendmsg
does it and moves the memset up so we don't zero it.

Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 net/ipv6/ping.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/net/ipv6/ping.c b/net/ipv6/ping.c
index ecf3a553a0dc..b1179f62bd23 100644
--- a/net/ipv6/ping.c
+++ b/net/ipv6/ping.c
@@ -64,6 +64,8 @@ static int ping_v6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
 	if (err)
 		return err;
 
+	memset(&fl6, 0, sizeof(fl6));
+
 	if (msg->msg_name) {
 		DECLARE_SOCKADDR(struct sockaddr_in6 *, u, msg->msg_name);
 		if (msg->msg_namelen < sizeof(*u))
@@ -72,12 +74,15 @@ static int ping_v6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
 			return -EAFNOSUPPORT;
 		}
 		daddr = &(u->sin6_addr);
+		if (np->sndflow)
+			fl6.flowlabel = u->sin6_flowinfo & IPV6_FLOWINFO_MASK;
 		if (__ipv6_addr_needs_scope_id(ipv6_addr_type(daddr)))
 			oif = u->sin6_scope_id;
 	} else {
 		if (sk->sk_state != TCP_ESTABLISHED)
 			return -EDESTADDRREQ;
 		daddr = &sk->sk_v6_daddr;
+		fl6.flowlabel = np->flow_label;
 	}
 
 	if (!oif)
@@ -101,7 +106,6 @@ static int ping_v6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
 	ipc6.sockc.tsflags = sk->sk_tsflags;
 	ipc6.sockc.mark = sk->sk_mark;
 
-	memset(&fl6, 0, sizeof(fl6));
 	fl6.flowi6_oif = oif;
 
 	if (msg->msg_controllen) {
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
