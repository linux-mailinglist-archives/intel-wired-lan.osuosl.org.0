Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC99269B70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 03:45:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF2918708C;
	Tue, 15 Sep 2020 01:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GwLCNDAY8uYw; Tue, 15 Sep 2020 01:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 379AF8708A;
	Tue, 15 Sep 2020 01:45:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3024D1BF977
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CFD58707F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5TEjlFve32s2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 813638708B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
IronPort-SDR: v0ICHWbD7QLUJLrilHSPMnBcfDRu9FAfYlbsaLDRtjXMrtx2IcISPSHdFEIzCBxEytz1pGSXi6
 ER8Y2452wuOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="159233049"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="159233049"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
IronPort-SDR: WTr3YdkjZZVi0jkPIduTCX677pOQHGXVqUXSKv9PICFhVMIBlgX7JJxpn+v1I/DVwUbIdsnwCj
 AMKC1+vghb0g==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482571957"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Sep 2020 18:44:52 -0700
Message-Id: <20200915014455.1232507-8-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 07/10] drivers/net/ethernet:
 add some basic kdoc tags
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
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
