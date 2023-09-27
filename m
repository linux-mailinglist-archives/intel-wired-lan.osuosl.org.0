Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CF37AFE89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 10:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B95E642108;
	Wed, 27 Sep 2023 08:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B95E642108
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695803538;
	bh=Z93miTEQ6w5LkTtk3JK/CyDXM++xsUnIRfSweDpkabY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RI4CDUACYS6ASJVzlXll96m7OvqT1C86AEoIGtGhv6f1Mm8VqtXqwHzgTs+O7VRSO
	 hZL0yi5Of7I1PsYeX5/0UkrjWpK7rkz0VnV9ljVaPtYMlKEc7KzJQ1RoSl+I7vAUl/
	 AgBnOTIwtvy2B+c+H6JQ9gnONa7aJNbirVh4VU1VCLQ1tiIf5dpuxYpn3KPlh9pp16
	 2etU4kFmgyXF08N5fJ/zYHfDqQp0MmQ2CBg5P0TMG9+LTHaybYqHeHPsOLoLj64lpo
	 r2PtZm9qLlhsQzNgrI4vF7yQVepxL4GCwYBawSHBsWkM0Y4UhqmRaM937aVuBeFlgB
	 cDj869u1dhwtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfM3pn91u9Cv; Wed, 27 Sep 2023 08:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FFB442039;
	Wed, 27 Sep 2023 08:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FFB442039
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FBB41BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1930582B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1930582B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OulL--jNZ1OC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 08:31:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5925182B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5925182B1E
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-297-OAH35cB6OoKOLhD-csj3-g-1; Wed, 27 Sep 2023 04:31:50 -0400
X-MC-Unique: OAH35cB6OoKOLhD-csj3-g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 104E8185A790;
 Wed, 27 Sep 2023 08:31:50 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 512CA2156702;
 Wed, 27 Sep 2023 08:31:48 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Sep 2023 10:31:32 +0200
Message-ID: <20230927083135.3237206-7-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-1-ivecera@redhat.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695803512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tBPzqP7mvSaTje2m9Bq5UEE3uForpA2ubHE/HpdjFVQ=;
 b=TqVSweWOpAOfLPWjZbKdpDbo84rg0NUE6UgVhBuKEQh2AmDoDPcH8OsNTLS3bHQzGcuJjS
 rZsGmar39nAH65tEpmDygZeuDgatVjJZgEr/ijmZi/uWaBg+lnZPy+hsfRymQuekAW+XA6
 8mwraUtsC2gBcTU3AitsvRtN8QeiJ9w=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TqVSweWO
Subject: [Intel-wired-lan] [PATCH net-next v2 6/9] i40e: Move memory
 allocation structures to i40e_alloc.h
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
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Structures i40e_dma_mem & i40e_virt_mem are defined i40e_osdep.h while
memory allocation functions that use them are declared in i40e_alloc.h
Move them there.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  1 +
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 14 ++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 12 ------------
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index 267f2e0a21ce..1c3d2bc5c3f7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -4,6 +4,7 @@
 #ifndef _I40E_ADMINQ_H_
 #define _I40E_ADMINQ_H_
 
+#include "i40e_alloc.h"
 #include "i40e_osdep.h"
 #include "i40e_adminq_cmd.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_alloc.h b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
index 4b2d8da048c6..e0dde326255d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_alloc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
@@ -4,8 +4,22 @@
 #ifndef _I40E_ALLOC_H_
 #define _I40E_ALLOC_H_
 
+#include <linux/types.h>
+
 struct i40e_hw;
 
+/* memory allocation tracking */
+struct i40e_dma_mem {
+	void *va;
+	dma_addr_t pa;
+	u32 size;
+};
+
+struct i40e_virt_mem {
+	void *va;
+	u32 size;
+};
+
 /* prototype for functions used for dynamic memory allocation */
 int i40e_allocate_dma_mem(struct i40e_hw *hw,
 			  struct i40e_dma_mem *mem,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
index 70cac3bb31ec..fd18895cfb56 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
@@ -29,18 +29,6 @@ struct device *i40e_hw_to_dev(struct i40e_hw *hw);
 #define rd64(a, reg)		readq((a)->hw_addr + (reg))
 #define i40e_flush(a)		readl((a)->hw_addr + I40E_GLGEN_STAT)
 
-/* memory allocation tracking */
-struct i40e_dma_mem {
-	void *va;
-	dma_addr_t pa;
-	u32 size;
-};
-
-struct i40e_virt_mem {
-	void *va;
-	u32 size;
-};
-
 #define i40e_debug(h, m, s, ...)				\
 do {								\
 	if (((m) & (h)->debug_mask))				\
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
