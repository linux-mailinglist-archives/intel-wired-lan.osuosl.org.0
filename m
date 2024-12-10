Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5909EB048
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 12:57:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 279D66090C;
	Tue, 10 Dec 2024 11:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7bIW99xUucvf; Tue, 10 Dec 2024 11:57:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27C0860904
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733831826;
	bh=vXAReVcNU1KEvBnNekJ9+mC1nNnnEjByVc+AGlIC72E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=72haLjbUq8aH2FnlYk3fT7bA7diKgYT2MSJAzGq+QSojbjQaq5I/I2hGOrlAR5rdr
	 tHslT78TqZ/elhtPIMwTwGnCNKzDQK4N0ZTefI314uIe0IF5u0lLsTapMwOMix/Y9G
	 Op/turmwNbPIq65bnzU1E1BVmLnze6oYw2VT80f48AbmyQ0gC9n4T8VVdZE/H9MVgL
	 DTWFFKLwAzrcYm4npXKYckR/dhuShzAecMHqn0j8DearK6KDH02dw6u8aiPnMzBQIO
	 0Ov4O2dpYbW3OsaUrE8h45ucL+HspoEZRJzK61ZulXjFdJ+NVe02nxVkIcsh4vbonM
	 Ixr4ulBOD9XLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27C0860904;
	Tue, 10 Dec 2024 11:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E368EE11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 11:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B1ECA408A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 11:57:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3dHSr_IHECok for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 11:57:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7FD8F408A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FD8F408A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FD8F408A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 11:57:02 +0000 (UTC)
X-CSE-ConnectionGUID: xMO8ZlyHSXimle+pwiIz3w==
X-CSE-MsgGUID: /uXelp60S0GkW7IZEd8+kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="37954879"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="37954879"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 03:57:02 -0800
X-CSE-ConnectionGUID: 4O8P+dp1SIKQONr/Asa4MQ==
X-CSE-MsgGUID: qVlaJWULQuicI7j0PYSbjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="100341171"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 10 Dec 2024 03:56:58 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EF9852FC51;
 Tue, 10 Dec 2024 11:56:56 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Cc: apw@canonical.com, joe@perches.com, dwaipayanray1@gmail.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org, willemb@google.com,
 edumazet@google.com, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Tue, 10 Dec 2024 12:56:20 +0100
Message-Id: <20241210115620.3141094-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733831823; x=1765367823;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+PGdy1a0YaWtqkwxhanaUKLDKgb00Z5XGEDcswMcHeQ=;
 b=FG5MXQKedHjQ54UiooZmmXs4mpyQwNthB8HVHYwH+wh93wx6rYGgTdnU
 Y+kufD86Fm2JOA9rKH1rv7yP6tf9Rk3aU0stLbt8wqWZDA7twbIi/q9tg
 CRigYtAqoKWkpvuKECsLQ/uxhHMd+OMMHHqRS1rs4yC07Xdl8ssh58yCl
 Q416dTvcS29BPnUecdb3UWQimsQ5WNT16GC6A3QXfKRV1Lw0lNT+JnD+I
 BPj/jO24ib86M7uZTo3NM53/tKpGYtTs9QB7yyzoYj4+fUV3Yiqx+gztK
 oYKPy0T+LiW5wb2QRRovccaEoC5Ksfj3GhR/hmld0R7i3AEAo8631tHbM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FG5MXQKe
Subject: [Intel-wired-lan] [PATCH iwl-next] fixup! devlink: add
 devlink_fmsg_dump_skb() function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Tony!

In the commit related to "devlink-health dump" the sparse reports new issue.
It has been also reported some time ago by Simon:
https://lore.kernel.org/netdev/20240822104007.GL2164@kernel.org/

Please squash this change into to devlink-health series, the link for the
last sent version is here:
https://lore.kernel.org/netdev/20240821133714.61417-1-przemyslaw.kitszel@intel.com/

Thanks in advance
Mateusz

CC: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 net/devlink/health.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/devlink/health.c b/net/devlink/health.c
index 3f6241d51007..57db6799722a 100644
--- a/net/devlink/health.c
+++ b/net/devlink/health.c
@@ -1270,7 +1270,7 @@ void devlink_fmsg_dump_skb(struct devlink_fmsg *fmsg, const struct sk_buff *skb)
 			 has_trans ? skb_network_header_len(skb) : -1);
 	devlink_fmsg_put(fmsg, "transport hdr",
 			 has_trans ? skb->transport_header : -1);
-	devlink_fmsg_put(fmsg, "csum", skb->csum);
+	devlink_fmsg_put(fmsg, "csum", (__force u32)skb->csum);
 	devlink_fmsg_put(fmsg, "csum_ip_summed", (u8)skb->ip_summed);
 	devlink_fmsg_put(fmsg, "csum_complete_sw", !!skb->csum_complete_sw);
 	devlink_fmsg_put(fmsg, "csum_valid", !!skb->csum_valid);
-- 
2.38.1

