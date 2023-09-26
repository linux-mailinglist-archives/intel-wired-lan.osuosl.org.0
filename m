Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F3C7AF2E0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 20:28:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03AD161521;
	Tue, 26 Sep 2023 18:28:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03AD161521
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695752882;
	bh=GTig6eNU7KvOuAiZ5GM/hAC1cBa3lnIym4fv32xoKso=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HTXCFklSwd8ztoijPgEG38DMLmn5RDCLL2Nq+sYZtQVuNB1eGwYj3gvmMvwczLFQj
	 +/xP7Pk2gsfjadFp4BVT4lF32Z5QL7NHK/Gm7vpPksM8HS6zH9VOArto+SNiPIPpTH
	 miMbOHEBK039Z5Ak5SDwKjN1TFOGjhqymHkvnH7DIPeSCKLTFN8D+ibi5UGb5w08OA
	 /U0TnoWukjcsdcSFJIY78Fg805KWTPLyjghCIDF2dnbTwGaHqM2J4rzbsH5KCeCErK
	 liPmahO0C63jzDwxQw/HGeVlx6yg6y/hHVybkjNhmrERdrPiNFrVWv0vCP9mp+ILdR
	 axw4b9ObBYjtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6y9tN7fj6Bky; Tue, 26 Sep 2023 18:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C904E60E34;
	Tue, 26 Sep 2023 18:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C904E60E34
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A39E81BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88A2781E74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88A2781E74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ypfm_4QL8phQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 18:27:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A212481E6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A212481E6F
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-130-vC1P8WReNnGWUQA6P-2Qwg-1; Tue, 26 Sep 2023 14:27:27 -0400
X-MC-Unique: vC1P8WReNnGWUQA6P-2Qwg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9A6C08007A4;
 Tue, 26 Sep 2023 18:27:26 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 065B740C6EA8;
 Tue, 26 Sep 2023 18:27:24 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Sep 2023 20:27:08 +0200
Message-ID: <20230926182710.2517901-8-ivecera@redhat.com>
In-Reply-To: <20230926182710.2517901-1-ivecera@redhat.com>
References: <20230926182710.2517901-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695752852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YugJO58QiEhXf81Efgja2EtjA+zTSsmC76yLkbmUhCk=;
 b=K01zoEBeW1putzCU1fFqCkPzAziLmEc4HhtfIRZCBNFFKw0FnvT/vJwN3/Z06z7Qgnf5QZ
 +3KdnaNGQqiPjC58Oz55xk1slDjoJ9xLRIgmMGVYuTu02MjPQL8/BtnOJF8JkzMSFPxQiM
 4hr+3LCVvuqwlE2aVSfJI977WoWYeVs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=K01zoEBe
Subject: [Intel-wired-lan] [PATCH net-next 7/9] i40e: Move memory allocation
 structures to i40e_alloc.h
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
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Structures i40e_dma_mem & i40e_virt_mem are defined i40e_osdep.h while
memory allocation functions that use them are declared in i40e_alloc.h
Move them to i40e_alloc.h and remove this header file dependency on
i40e_osdep.h header.

Due to removal of this dependency we have to include i40e_osdep.h in files
that requires it.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 21 ++++++++++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_common.c |  1 +
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  1 +
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |  1 +
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  1 +
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  2 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  1 +
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  1 +
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 19 -----------------
 11 files changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 088ef4696818..bf4de913435e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -3,6 +3,7 @@
 
 #include <linux/delay.h>
 #include "i40e_alloc.h"
+#include "i40e_osdep.h"
 #include "i40e_register.h"
 #include "i40e_prototype.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index 95c902700f63..2c0341469122 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -6,7 +6,7 @@
 
 #include <linux/mutex.h>
 #include "i40e_adminq_cmd.h"
-#include "i40e_osdep.h"
+#include "i40e_alloc.h"
 
 #define I40E_ADMINQ_DESC(R, i)   \
 	(&(((struct i40e_aq_desc *)((R).desc_buf.va))[i]))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_alloc.h b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
index 5d9a0b56133e..e0186495ef02 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_alloc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_ALLOC_H_
 #define _I40E_ALLOC_H_
 
-#include "i40e_osdep.h"
+#include <linux/types.h>
 
 struct i40e_hw;
 
@@ -21,6 +21,25 @@ enum i40e_memory_type {
 	i40e_mem_reserved
 };
 
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
+#define i40e_allocate_dma_mem(h, m, unused, s, a) \
+			i40e_allocate_dma_mem_d(h, m, s, a)
+#define i40e_free_dma_mem(h, m) i40e_free_dma_mem_d(h, m)
+
+#define i40e_allocate_virt_mem(h, m, s) i40e_allocate_virt_mem_d(h, m, s)
+#define i40e_free_virt_mem(h, m) i40e_free_virt_mem_d(h, m)
+
 /* prototype for functions used for dynamic memory allocation */
 int i40e_allocate_dma_mem(struct i40e_hw *hw,
 			  struct i40e_dma_mem *mem,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 6d1042ca0317..8fb8f9e5c5d7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -7,6 +7,7 @@
 #include <linux/pci.h>
 #include "i40e_adminq_cmd.h"
 #include "i40e_devids.h"
+#include "i40e_osdep.h"
 #include "i40e_prototype.h"
 #include "i40e_register.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 68602fc375f6..7d51e58d94bd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -3,6 +3,7 @@
 
 #include "i40e_alloc.h"
 #include "i40e_dcb.h"
+#include "i40e_osdep.h"
 #include "i40e_prototype.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.c b/drivers/net/ethernet/intel/i40e/i40e_diag.c
index b1ad7c4259b9..824f97931f57 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_diag.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_diag.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include "i40e_diag.h"
+#include "i40e_osdep.h"
 #include "i40e_prototype.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
index 0bc398757283..74b3a5b0bc4a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
@@ -3,6 +3,7 @@
 
 #include "i40e_alloc.h"
 #include "i40e_hmc.h"
+#include "i40e_osdep.h"
 #include "i40e_type.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
index 76610455cb90..78e6e9144331 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
@@ -4,7 +4,7 @@
 #ifndef _I40E_HMC_H_
 #define _I40E_HMC_H_
 
-#include "i40e_osdep.h"
+#include "i40e_alloc.h"
 #include "i40e_register.h"
 
 #define I40E_HMC_MAX_BP_COUNT 512
diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
index 6f40c640e310..08f0c90acd9a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -4,6 +4,7 @@
 #include "i40e_alloc.h"
 #include "i40e_type.h"
 #include "i40e_lan_hmc.h"
+#include "i40e_osdep.h"
 
 /* lan specific interface functions */
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 77cdbfc19d47..2e8d2dd4b920 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -3,6 +3,7 @@
 
 #include <linux/delay.h>
 #include "i40e_alloc.h"
+#include "i40e_osdep.h"
 #include "i40e_prototype.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
index 23be11a45761..f4f02dd722ba 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
@@ -28,25 +28,6 @@ do {										\
 #define rd64(a, reg)		readq((a)->hw_addr + (reg))
 #define i40e_flush(a)		readl((a)->hw_addr + I40E_GLGEN_STAT)
 
-/* memory allocation tracking */
-struct i40e_dma_mem {
-	void *va;
-	dma_addr_t pa;
-	u32 size;
-};
-
-#define i40e_allocate_dma_mem(h, m, unused, s, a) \
-			i40e_allocate_dma_mem_d(h, m, s, a)
-#define i40e_free_dma_mem(h, m) i40e_free_dma_mem_d(h, m)
-
-struct i40e_virt_mem {
-	void *va;
-	u32 size;
-};
-
-#define i40e_allocate_virt_mem(h, m, s) i40e_allocate_virt_mem_d(h, m, s)
-#define i40e_free_virt_mem(h, m) i40e_free_virt_mem_d(h, m)
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
