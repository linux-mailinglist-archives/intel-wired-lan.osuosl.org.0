Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A1C279419
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 00:25:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 083B186EBC;
	Fri, 25 Sep 2020 22:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TgPsTbme3r1u; Fri, 25 Sep 2020 22:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B87D086E95;
	Fri, 25 Sep 2020 22:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D2B11BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29AD886E7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tWL4VbvHA3sF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 22:25:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7685786E45
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:05 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k8so4617433pfk.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 15:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SRHUH+MM14I75V+EtuOr2IaNZ18HdvV2Ili51ytpF50=;
 b=D2i2bzaHjU+/Pr0XlsdpcjwUPbJHta5hEMoejJ/2WrT1uKcLjDqiYNV9mcUo/t0VTh
 2A6SsT1cw8IilKidmlOwqPr3IyNt7aNMRhB9UtepbYzmGyz5JqSaFLgmPdd0XQsPQy55
 a/qivhHEGOS+o9zfe18wHBZtacvGOraZTI198PypGbEvXwYuAnaU0fvLhaw2Gl92weYM
 39+JO+aptW7303/DJ5VKppxM52E77eugmeQy7rIWkz5v2L4CCm5kQ6OBP2rm3oYp6lnt
 noJ8bb4fRAHBMvBwnH67jw+YszzujAWLty3regvrXCuVZsmi8lvqxX5q6Jv7yBula79b
 rG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SRHUH+MM14I75V+EtuOr2IaNZ18HdvV2Ili51ytpF50=;
 b=i8Jo1vDCNK2JB7fkd5tvoijqC31OYiqyluohQ+DW72oUnroamFQsBbFNqEpBUoe8sT
 ZPucjTOddukEhQ1ppP9+BKngOTuw7bSliJLP91DFh51Jx0gWiEX0fNgDrawrr/97brdQ
 2Jy7C6WsC15IDXYetFbpwE91lWjyKNoAXnjpDfwkXeAZQhGg6Z5Ad7YNrMwxq5F88XnJ
 GBCLIYzs8ssizGTNCXaWJErG25mghjS38MYP6ld0YVh+ALngIlJJ9wKOgASqkZ1VNXNL
 N6ZD88klviTx1JjtE8cWn4yXT5bOBNpLUA/tdq4l73c4cmaTBSfp55USCFT67Ll8Oo3Y
 +GnA==
X-Gm-Message-State: AOAM533ZBzzEuKMe0a3SLeH8r4E9tfBnD06rDFU/x9cuJaMbWO8mVKFt
 GSLBwlxGUcpGcel9CNNlPtI=
X-Google-Smtp-Source: ABdhPJzimmCjkzqBt/jsebPZuDo4ogl+V/gxLVSPJr6MeRN1cxI4h2dwo7BvQwd3czP7OlP9dAZ+Rg==
X-Received: by 2002:a62:2b52:0:b029:142:2501:39e9 with SMTP id
 r79-20020a622b520000b0290142250139e9mr639784pfr.56.1601072705010; 
 Fri, 25 Sep 2020 15:25:05 -0700 (PDT)
Received: from jesse-ThinkPad-T570.lan (50-39-107-76.bvtn.or.frontiernet.net.
 [50.39.107.76])
 by smtp.gmail.com with ESMTPSA id q15sm169343pje.29.2020.09.25.15.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 15:25:04 -0700 (PDT)
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Sep 2020 15:24:42 -0700
Message-Id: <20200925222445.74531-7-jesse.brandeburg@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
References: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 6/9] drivers/net/ethernet: add
 some basic kdoc tags
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

A couple of drivers had a "generic documentation" section that
would trigger a "can't understand" message from W=1 compiles.

Fix by using correct DOC: tags in the generic sections.

Fixed Warnings:
drivers/net/ethernet/arc/emac_arc.c:4: info: Scanning doc for c
drivers/net/ethernet/cadence/macb_pci.c:3: warning: missing initial short description on line:
 * Cadence GEM PCI wrapper.
drivers/net/ethernet/cadence/macb_pci.c:3: info: Scanning doc for Cadence

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v3: add some warning detail
v2: first non-rfc version
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
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
