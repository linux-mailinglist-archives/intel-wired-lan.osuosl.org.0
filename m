Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20836265692
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 03:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7547887740;
	Fri, 11 Sep 2020 01:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mS24whZDqxV4; Fri, 11 Sep 2020 01:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E68948772D;
	Fri, 11 Sep 2020 01:23:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A5B41BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17A9687621
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sj5PjANtTPD2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 01:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01B4287662
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 01:23:47 +0000 (UTC)
IronPort-SDR: daeI/Nlz+5oy2ImrPfpNPm3qR0AoDWld/11ukOPSvGto6W3bNlefvTLs/edigncDC9sLgIKKId
 np8VUMZZlNYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="159613195"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="159613195"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
IronPort-SDR: Lm+zR7IahERATVTFFUZEXgq0Y2sC7ONEt+NDMe4O3ZuF9FitKL++cPqoudQVS9TyQy1JstYTAU
 mdcxfL1UojMg==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="449808157"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 18:23:45 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 10 Sep 2020 18:23:35 -0700
Message-Id: <20200911012337.14015-10-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200911012337.14015-1-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH net-next v1 09/11]
 drivers/net/ethernet: add some basic kdoc tags
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A couple of drivers had a "generic documentation" section that
would trigger a "can't understand" message from W=1 compiles.

Fix by using correct DOC: tags.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/arc/emac_arc.c     | 2 +-
 drivers/net/ethernet/cadence/macb_pci.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/arc/emac_arc.c b/drivers/net/ethernet/arc/emac_arc.c
index 1c7736b7eaf7..800620b8f10d 100644
--- a/drivers/net/ethernet/arc/emac_arc.c
+++ b/drivers/net/ethernet/arc/emac_arc.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /**
- * emac_arc.c - ARC EMAC specific glue layer
+ * DOC: emac_arc.c - ARC EMAC specific glue layer
  *
  * Copyright (C) 2014 Romain Perier
  *
diff --git a/drivers/net/ethernet/cadence/macb_pci.c b/drivers/net/ethernet/cadence/macb_pci.c
index cd7d0332cba3..35316c91f523 100644
--- a/drivers/net/ethernet/cadence/macb_pci.c
+++ b/drivers/net/ethernet/cadence/macb_pci.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /**
- * Cadence GEM PCI wrapper.
+ * DOC: Cadence GEM PCI wrapper.
  *
  * Copyright (C) 2016 Cadence Design Systems - https://www.cadence.com
  *
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
