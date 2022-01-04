Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2675C483B2D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 04:48:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6079C60E5F;
	Tue,  4 Jan 2022 03:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlk4scTNmFdb; Tue,  4 Jan 2022 03:48:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E07A60E5E;
	Tue,  4 Jan 2022 03:48:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03D5A1BF957
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 03:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB60240364
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 03:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r1sEK2H5C-X1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 03:48:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEC1E400F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 03:48:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D6AA7B8103C;
 Tue,  4 Jan 2022 03:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39C52C36AED;
 Tue,  4 Jan 2022 03:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641268111;
 bh=5LCZIuAEU9VEEYcUacketTtZ45/TX/jS7+iR46o4+b4=;
 h=From:To:Cc:Subject:Date:From;
 b=hBLX91dPaJ5m7coXPc0vYUzoTQvDz5OEqG/JGstFAz8r5oQtT4ldw6W0A4ub81Ls3
 /HxkH731k2CDr55eQBRAI1sFwd2Frx4L/2nFKPlxDM2Le7fWDWymrymYG5Fg1PYnNx
 is0owU/UfAz7GZcmFWj6M6bzEDB/lRTwzTxIwXQ7l/iEi/I4++uhjKfAPzItwDLelB
 K/rU03Y6gQeoCXzvn5oIGhyaJjmr0Rt3CrM47cOoB6z5T/DOEKQvZzCL5e4+AAvkj9
 6ld3TIIAh/adL3LyeIm3nKoilUgZJ2b4sXQSZ0yybzNcOEVRwmpxTiaDlwDHVYwRfB
 P8CyNdYhFuJaA==
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Mon,  3 Jan 2022 19:48:27 -0800
Message-Id: <20220104034827.1564167-1-kuba@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] net: fixup build after bpf
 header changes
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
Cc: leon@kernel.org, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Abdul Haleem <abdhalee@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, saeedm@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recent bpf-next merge brought in header changes which uncovered
includes missing in net-next which were not present in bpf-next.
Build problems happen only on less-popular arches like hppa,
sparc, alpha etc.

I could repro the build problem with ice but not the mlx5 problem
Abdul was reporting. mlx5 does look like it should include filter.h,
anyway.

Reported-by: Abdul Haleem <abdhalee@linux.vnet.ibm.com>
Fixes: e63a02348958 ("Merge git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next")
Link: https://lore.kernel.org/all/7c03768d-d948-c935-a7ab-b1f963ac7eed@linux.vnet.ibm.com/
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
CC: jesse.brandeburg@intel.com
CC: anthony.l.nguyen@intel.com
CC: saeedm@nvidia.com
CC: leon@kernel.org
CC: intel-wired-lan@lists.osuosl.org
CC: linux-rdma@vger.kernel.org
CC: bpf@vger.kernel.org
---
 drivers/net/ethernet/intel/ice/ice_nvm.c          | 2 ++
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index cd739a2c64e8..4eb0599714f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2018, Intel Corporation. */
 
+#include <linux/vmalloc.h>
+
 #include "ice_common.h"
 
 /**
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index efcf9d30b131..31c911182498 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -37,6 +37,7 @@
 #include <net/geneve.h>
 #include <linux/bpf.h>
 #include <linux/if_bridge.h>
+#include <linux/filter.h>
 #include <net/page_pool.h>
 #include <net/xdp_sock_drv.h>
 #include "eswitch.h"
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
