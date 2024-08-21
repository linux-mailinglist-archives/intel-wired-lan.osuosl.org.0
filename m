Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF2F95A130
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 17:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 256034043A;
	Wed, 21 Aug 2024 15:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jKFU2rIL8LVm; Wed, 21 Aug 2024 15:17:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D06E740499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724253435;
	bh=b9yw4bpF28pm42EZDXwvZp8hCk3/2Wg5o0fMIhP4yYQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uj289mePfkInkRwpu4/1IOiR4UUNnBKZzSa3bJnR0OLdMV3wBjWrfFhsMCHK6NVKC
	 6KeV0Ny3uQGN5G1HeYG2GEc6UYd6gybmWi09dXUNDzwWDuVRQAyQZCABqY69lRXmKi
	 NSje3+axdGpZ1JR/414R2xiMoERqHAuvIjflpq/MJuZjKtmT08kITFpNHxyr6BqYke
	 OuVL/tr6aOI/PlwiYgrBepUB6NV+aN+QZLDu31dWlHlVwK6oqhJgjHhsDxk0JzbbCB
	 EcGtwR18K/5CLcnpySrprnTT939f2hIDVQSp9EjbqUvfcc3HNuHfxtkSP8iUcpIJWV
	 cbc9D2W/vjNJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D06E740499;
	Wed, 21 Aug 2024 15:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A2E71BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86EE56066E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:24:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5gxd_5DKWL3r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 14:24:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=krzysztof.galazka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0F736066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0F736066F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0F736066F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:24:17 +0000 (UTC)
X-CSE-ConnectionGUID: Nyv/Q9QaSPmMFe84+mJgJg==
X-CSE-MsgGUID: 3aZxT5siSAO+P1Ha6Ydd4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22762634"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22762634"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:24:16 -0700
X-CSE-ConnectionGUID: 2eqIswKuSGSPpz0zjb5oCw==
X-CSE-MsgGUID: XG8qoiKATxSUmTGmDHop3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61088153"
Received: from ubuntu.igk.intel.com ([10.91.15.74])
 by fmviesa008.fm.intel.com with ESMTP; 21 Aug 2024 07:24:15 -0700
From: Krzysztof Galazka <krzysztof.galazka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Aug 2024 16:24:09 +0200
Message-ID: <20240821142409.958668-1-krzysztof.galazka@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 21 Aug 2024 15:17:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724250258; x=1755786258;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zba7tmF1NmTvBJWLLY//6vcc7OAzCrA6reHKqs74DjA=;
 b=mi/8XpYPhL0cDONUGrlRgMfsqv56SQXBoCnnK+r4uooY7X6/elzT3niR
 DJRk09+ZxvRs3u2wfqx3CjObDpiKb+k8bPo0YrXBgF9zQ+q5JN+AB1UNF
 tkDZWnFJa35nnxls9btzM4o0WZeGpMCKE1yJzPjFtPp38Enw968YwoaV0
 qC2obHgXLxsUcc9x1XYURcEGyyTkX9SVLYn8lkFfTpkm/I88Jf+fstuEc
 lvpeUy1vaG6qM/0yIuhtya7tGQgxWwg4X+ZfWkSEeem7v03xnoAXyNHHF
 LTDPQpOHO0yUJGJlsqvxOHuyEjUjZanLlUi+Sq7+3Xcdy6FeZrleTDbxk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mi/8XpYP
Subject: [Intel-wired-lan] [PATCH iwl-net] selftests/net: Fix csum test for
 short packets
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
Cc: netdev@vger.kernel.org, Krzysztof Galazka <krzysztof.galazka@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For IPv4 and IPv6 packets shorter than minimum Ethernet
frame payload, recvmsg returns lenght including padding.
Use length from header for checksum verification to avoid
csum test failing on correct packets.

Fixes: 1d0dc857b5d8 (selftests: drv-net: add checksum tests)
Signed-off-by: Krzysztof Galazka <krzysztof.galazka@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 tools/testing/selftests/net/lib/csum.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/tools/testing/selftests/net/lib/csum.c b/tools/testing/selftests/net/lib/csum.c
index b9f3fc3c3426..3dbaf2ecd59e 100644
--- a/tools/testing/selftests/net/lib/csum.c
+++ b/tools/testing/selftests/net/lib/csum.c
@@ -658,6 +658,9 @@ static int recv_verify_packet_ipv4(void *nh, int len)
 	if (len < sizeof(*iph) || iph->protocol != proto)
 		return -1;
 
+	/* For short packets recvmsg returns length with padding, fix that */
+	len = ntohs(iph->tot_len);
+
 	iph_addr_p = &iph->saddr;
 	if (proto == IPPROTO_TCP)
 		return recv_verify_packet_tcp(iph + 1, len - sizeof(*iph));
@@ -673,6 +676,9 @@ static int recv_verify_packet_ipv6(void *nh, int len)
 	if (len < sizeof(*ip6h) || ip6h->nexthdr != proto)
 		return -1;
 
+	/* For short packets recvmsg returns length with padding, fix that */
+	len = sizeof(*ip6h) + ntohs(ip6h->payload_len);
+
 	iph_addr_p = &ip6h->saddr;
 
 	if (proto == IPPROTO_TCP)
-- 
2.43.0

