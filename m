Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C50C7AF2DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 20:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2858F61520;
	Tue, 26 Sep 2023 18:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2858F61520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695752878;
	bh=A6C30g7Nace5ZAfwGFYLg1r5cYVQxLJLQzRWQcSV934=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tSCIHQ+LEUs9JhNYrVr6eEHQpQ4TRkun1jQqLAm1NBB6l1Yw8CvP3xaucZeWvAQbu
	 tcKV+VzY3pV5YBDk+5S1WpzJvUxKkN5XPRO5xqMR+tROT0Ei+9M8p1vprfRiHwioy9
	 LP+MvH0fSE7PpvR0CQBZM/fEpZBfpdl42lruaazPeKQLhB/E5F3/OuJW7Mjg2A9eO+
	 ds3rr9b9JCrs8nmRZqhzpe62QlJHdPP+LK8JsmWpHB/Hp+4x9AKDV+nhLMV8vxJMeV
	 unRB6DhNyzbRNB2A0gzjenNUmuL8lRASLQuFSdr9WugDK+4TJMJHJ/NIHleFzOdOLF
	 NyA3NN997yN4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-zZOA_i7G3d; Tue, 26 Sep 2023 18:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFB2860E34;
	Tue, 26 Sep 2023 18:27:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFB2860E34
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A03D11BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8696E60D5F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8696E60D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rhmYPwLY5M3N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 18:27:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91A8960E34
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91A8960E34
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-3-Od3v6NNWOFatxGZgpRNX8Q-1; Tue, 26 Sep 2023 14:27:29 -0400
X-MC-Unique: Od3v6NNWOFatxGZgpRNX8Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7104A1C068D1;
 Tue, 26 Sep 2023 18:27:28 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CF27A40C6EA8;
 Tue, 26 Sep 2023 18:27:26 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Sep 2023 20:27:09 +0200
Message-ID: <20230926182710.2517901-9-ivecera@redhat.com>
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
 bh=Q3D4VsD5Byj1hA6E7rHrX2HVaW/98xI1kCFk47mE9gw=;
 b=abNhE/Yj4lhyRj1s5wTUtce7E24Q+5eWitzOOYTrVz9qgiu0+XSkLZsuaUTzoNWVUZSVWb
 7Ux0QLPIixHNViOsVnxSVBH9dA+KecVmMS7Y/mTbrwXT3ZtTh6TMkbbSkzxFc7ek7jdz1t
 CETzVZ4cMyNqEO3aH3cQg9gmWE99nWA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=abNhE/Yj
Subject: [Intel-wired-lan] [PATCH net-next 8/9] i40e: Split i40e_osdep.h
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

Header i40e_osdep.h contains only IO primitives and couple of debug
printing macros. Split this header file to i40e_io.h and i40e_debug.h
and move i40e_debug_mask enum to i40e_debug.h

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_debug.h  | 50 +++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  1 +
 drivers/net/ethernet/intel/i40e/i40e_io.h     | 16 ++++++
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 39 ---------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 27 ----------
 14 files changed, 77 insertions(+), 75 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_debug.h
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_io.h
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_osdep.h

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 911a34e0e562..2e1897cdeeb1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -12,7 +12,7 @@
 #include <net/pkt_cls.h>
 #include <net/udp_tunnel.h>
 #include "i40e_dcb.h"
-#include "i40e_osdep.h"
+#include "i40e_io.h"
 #include "i40e_prototype.h"
 #include "i40e_register.h"
 #include "i40e_txrx.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index bf4de913435e..0803402d8e87 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -3,7 +3,7 @@
 
 #include <linux/delay.h>
 #include "i40e_alloc.h"
-#include "i40e_osdep.h"
+#include "i40e_io.h"
 #include "i40e_register.h"
 #include "i40e_prototype.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 8fb8f9e5c5d7..d28ee4256a30 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -7,7 +7,7 @@
 #include <linux/pci.h>
 #include "i40e_adminq_cmd.h"
 #include "i40e_devids.h"
-#include "i40e_osdep.h"
+#include "i40e_io.h"
 #include "i40e_prototype.h"
 #include "i40e_register.h"
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
index 7d51e58d94bd..3dd9ed181b64 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
@@ -3,7 +3,7 @@
 
 #include "i40e_alloc.h"
 #include "i40e_dcb.h"
-#include "i40e_osdep.h"
+#include "i40e_io.h"
 #include "i40e_prototype.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
new file mode 100644
index 000000000000..6fbdb8146cb5
--- /dev/null
+++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2023 Intel Corporation. */
+
+#ifndef _I40E_DEBUG_H_
+#define _I40E_DEBUG_H_
+
+#include <linux/dev_printk.h>
+
+/* debug masks - set these bits in hw->debug_mask to control output */
+enum i40e_debug_mask {
+	I40E_DEBUG_INIT			= 0x00000001,
+	I40E_DEBUG_RELEASE		= 0x00000002,
+
+	I40E_DEBUG_LINK			= 0x00000010,
+	I40E_DEBUG_PHY			= 0x00000020,
+	I40E_DEBUG_HMC			= 0x00000040,
+	I40E_DEBUG_NVM			= 0x00000080,
+	I40E_DEBUG_LAN			= 0x00000100,
+	I40E_DEBUG_FLOW			= 0x00000200,
+	I40E_DEBUG_DCB			= 0x00000400,
+	I40E_DEBUG_DIAG			= 0x00000800,
+	I40E_DEBUG_FD			= 0x00001000,
+	I40E_DEBUG_PACKAGE		= 0x00002000,
+	I40E_DEBUG_IWARP		= 0x00F00000,
+	I40E_DEBUG_AQ_MESSAGE		= 0x01000000,
+	I40E_DEBUG_AQ_DESCRIPTOR	= 0x02000000,
+	I40E_DEBUG_AQ_DESC_BUFFER	= 0x04000000,
+	I40E_DEBUG_AQ_COMMAND		= 0x06000000,
+	I40E_DEBUG_AQ			= 0x0F000000,
+
+	I40E_DEBUG_USER			= 0xF0000000,
+
+	I40E_DEBUG_ALL			= 0xFFFFFFFF
+};
+
+struct i40e_hw;
+struct device *i40e_hw_to_dev(struct i40e_hw *hw);
+
+#define hw_dbg(hw, S, A...)					\
+do {								\
+	dev_dbg(i40e_hw_to_dev(hw), S, ##A);			\
+} while (0)
+
+#define i40e_debug(h, m, s, ...)				\
+do {								\
+	if (((m) & (h)->debug_mask))				\
+		dev_info(i40e_hw_to_dev(hw), s, ##__VA_ARGS__);	\
+} while (0)
+
+#endif /* _I40E_DEBUG_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.c b/drivers/net/ethernet/intel/i40e/i40e_diag.c
index 824f97931f57..85dcae85d06f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_diag.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_diag.c
@@ -2,7 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include "i40e_diag.h"
-#include "i40e_osdep.h"
+#include "i40e_io.h"
 #include "i40e_prototype.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
index 74b3a5b0bc4a..57b716a8ae43 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
@@ -2,8 +2,8 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include "i40e_alloc.h"
+#include "i40e_debug.h"
 #include "i40e_hmc.h"
-#include "i40e_osdep.h"
 #include "i40e_type.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
index 78e6e9144331..480e3a883cc7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
@@ -5,6 +5,7 @@
 #define _I40E_HMC_H_
 
 #include "i40e_alloc.h"
+#include "i40e_io.h"
 #include "i40e_register.h"
 
 #define I40E_HMC_MAX_BP_COUNT 512
diff --git a/drivers/net/ethernet/intel/i40e/i40e_io.h b/drivers/net/ethernet/intel/i40e/i40e_io.h
new file mode 100644
index 000000000000..2a2ed9a1d476
--- /dev/null
+++ b/drivers/net/ethernet/intel/i40e/i40e_io.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright(c) 2023 Intel Corporation. */
+
+#ifndef _I40E_IO_H_
+#define _I40E_IO_H_
+
+/* get readq/writeq support for 32 bit kernels, use the low-first version */
+#include <linux/io-64-nonatomic-lo-hi.h>
+
+#define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
+#define rd32(a, reg)		readl((a)->hw_addr + (reg))
+
+#define rd64(a, reg)		readq((a)->hw_addr + (reg))
+#define i40e_flush(a)		readl((a)->hw_addr + I40E_GLGEN_STAT)
+
+#endif /* _I40E_IO_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
index 08f0c90acd9a..beaaf5c309d5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -2,9 +2,9 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include "i40e_alloc.h"
-#include "i40e_type.h"
+#include "i40e_debug.h"
 #include "i40e_lan_hmc.h"
-#include "i40e_osdep.h"
+#include "i40e_type.h"
 
 /* lan specific interface functions */
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 2e8d2dd4b920..04a1f26ca458 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -3,7 +3,7 @@
 
 #include <linux/delay.h>
 #include "i40e_alloc.h"
-#include "i40e_osdep.h"
+#include "i40e_io.h"
 #include "i40e_prototype.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
deleted file mode 100644
index f4f02dd722ba..000000000000
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
-
-#ifndef _I40E_OSDEP_H_
-#define _I40E_OSDEP_H_
-
-#include <linux/dev_printk.h>
-#include <linux/types.h>
-
-/* get readq/writeq support for 32 bit kernels, use the low-first version */
-#include <linux/io-64-nonatomic-lo-hi.h>
-
-/* File to be the magic between shared code and
- * actual OS primitives
- */
-
-struct i40e_hw;
-struct device *i40e_hw_to_dev(struct i40e_hw *hw);
-
-#define hw_dbg(hw, S, A...)							\
-do {										\
-	dev_dbg(i40e_hw_to_dev(hw), S, ##A);					\
-} while (0)
-
-#define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
-#define rd32(a, reg)		readl((a)->hw_addr + (reg))
-
-#define rd64(a, reg)		readq((a)->hw_addr + (reg))
-#define i40e_flush(a)		readl((a)->hw_addr + I40E_GLGEN_STAT)
-
-#define i40e_debug(h, m, s, ...)				\
-do {								\
-	if (((m) & (h)->debug_mask))				\
-		pr_info("i40e %02x:%02x.%x " s,			\
-			(h)->bus.bus_id, (h)->bus.device,	\
-			(h)->bus.func, ##__VA_ARGS__);		\
-} while (0)
-
-#endif /* _I40E_OSDEP_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index fbef0ad1af45..46b9a05ceb91 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -6,6 +6,7 @@
 
 #include <linux/ethtool.h>
 #include <linux/avf/virtchnl.h>
+#include "i40e_debug.h"
 #include "i40e_type.h"
 
 /* Prototypes for shared code functions that are not in
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index a9e80c7f5b82..dc7cd16ad8fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -37,33 +37,6 @@ typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct i40e_aq_desc *);
 #define I40E_QTX_CTL_VM_QUEUE	0x1
 #define I40E_QTX_CTL_PF_QUEUE	0x2
 
-/* debug masks - set these bits in hw->debug_mask to control output */
-enum i40e_debug_mask {
-	I40E_DEBUG_INIT			= 0x00000001,
-	I40E_DEBUG_RELEASE		= 0x00000002,
-
-	I40E_DEBUG_LINK			= 0x00000010,
-	I40E_DEBUG_PHY			= 0x00000020,
-	I40E_DEBUG_HMC			= 0x00000040,
-	I40E_DEBUG_NVM			= 0x00000080,
-	I40E_DEBUG_LAN			= 0x00000100,
-	I40E_DEBUG_FLOW			= 0x00000200,
-	I40E_DEBUG_DCB			= 0x00000400,
-	I40E_DEBUG_DIAG			= 0x00000800,
-	I40E_DEBUG_FD			= 0x00001000,
-	I40E_DEBUG_PACKAGE		= 0x00002000,
-	I40E_DEBUG_IWARP		= 0x00F00000,
-	I40E_DEBUG_AQ_MESSAGE		= 0x01000000,
-	I40E_DEBUG_AQ_DESCRIPTOR	= 0x02000000,
-	I40E_DEBUG_AQ_DESC_BUFFER	= 0x04000000,
-	I40E_DEBUG_AQ_COMMAND		= 0x06000000,
-	I40E_DEBUG_AQ			= 0x0F000000,
-
-	I40E_DEBUG_USER			= 0xF0000000,
-
-	I40E_DEBUG_ALL			= 0xFFFFFFFF
-};
-
 #define I40E_MDIO_CLAUSE22_STCODE_MASK		I40E_GLGEN_MSCA_STCODE_MASK
 #define I40E_MDIO_CLAUSE22_OPCODE_WRITE_MASK	I40E_GLGEN_MSCA_OPCODE_MASK(1)
 #define I40E_MDIO_CLAUSE22_OPCODE_READ_MASK	I40E_GLGEN_MSCA_OPCODE_MASK(2)
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
