Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 933C56FF7A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 18:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B68D700DE;
	Thu, 11 May 2023 16:43:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B68D700DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683823404;
	bh=pADaOi6wCGT9bfRLrVZ42cx3g8tqqI+h97sr8CzctWo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AQMwtFfW+qirRD/OxrXhb2MCoSwTn8VODreXrSR8NP/jpfVsZSaTREEdpejqobx/4
	 gs5dnAh/mvV6dyJf3WmMU+GNfc4gIY/EEBFPoLJLucQ6y5S1+01UnAnE3p1mEHlQ2F
	 VZnFqb5MYk48Qd5EGkvY/eDz18zW/VwiRZKTzb0N0qir77Zk86raxXbGywMQJbq27E
	 lNkL95K40ps8pd/tXey3SJcQGdl8shc+rnjYHfpleuhB8DTY91BDC5zC8cABafAb1g
	 BYsBGRLAKpWbxNd7uW5zshx57vpHic9QIPS/tRaP2YFuBc0LamLwCK3ObnBDoL/F6T
	 LWzn6S9lOnHVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cl8IjK_W_YAR; Thu, 11 May 2023 16:43:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 547186059B;
	Thu, 11 May 2023 16:43:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 547186059B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 818C31BF28F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 16:43:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 568DD405BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 16:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 568DD405BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f53ejzbWj1tJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 16:43:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3095F400E5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3095F400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 16:43:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="413916238"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="413916238"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:43:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="844037903"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="844037903"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:43:12 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 09:43:06 -0700
Message-Id: <20230511164306.3859487-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683823397; x=1715359397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tWtae5OI3U/YsDdt5pT+ftMqv+xAzzCw0yofJkakI0E=;
 b=jWct8gtju8fIAYRlU3VFVTHK75YW9DEXpU3iDABqIwNWpp1FDwZQKqd1
 8AwJ7e8Y4OZGU8HntTANHmTF29ISruhvV6eFSqCkFuXMcuw8JeyUw4r4d
 SzYnMNX4WQkwMgcfD6jbEz781bXH+cOTZvTrqEdN1YJaH1x6odT5RWqKC
 rkwPjyWJKk/UIsm9Ds3mpO9+bUlHAK60nR7igKSmsoxxqVUEYTp909GAo
 pG1BUDj7+f3Skfz8kAN0AvBa737ZEp++JNCbhfCz4ei6BncbEhlJkxXqA
 R4lkyYSEVHDrD3DY91RD4QeIdCjMPABS4xAFv2QGU++nhv2UCcC7HlN5P
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jWct8gtj
Subject: [Intel-wired-lan] [PATCH iwl-next v1] MAINTAINERS: update Intel
 Ethernet links
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Freshen up some links, and remove the non-kernel related Sourceforge
link.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 MAINTAINERS | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7e0b87d5aa2e..8e908f8c8713 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10339,9 +10339,8 @@ M:	Jesse Brandeburg <jesse.brandeburg@intel.com>
 M:	Tony Nguyen <anthony.l.nguyen@intel.com>
 L:	intel-wired-lan@lists.osuosl.org (moderated for non-subscribers)
 S:	Supported
-W:	http://www.intel.com/support/feedback.htm
-W:	http://e1000.sourceforge.net/
-Q:	http://patchwork.ozlabs.org/project/intel-wired-lan/list/
+W:	https://www.intel.com/content/www/us/en/support.html
+Q:	https://patchwork.ozlabs.org/project/intel-wired-lan/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
 F:	Documentation/networking/device_drivers/ethernet/intel/
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
