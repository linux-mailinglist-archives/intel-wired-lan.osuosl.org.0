Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 982F37AFE8A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 10:32:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B3AD42039;
	Wed, 27 Sep 2023 08:32:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B3AD42039
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695803544;
	bh=T3gSEvj1OoEjHP6GhBnZwVc7/GIvnxhaHWlRQ1VS4Yw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g9cIizFBzcGbkVVZwnbPWjwH2KjGJiBV+gniu7HJa6uyx4LNn+1W25GDE6ZnF6PJI
	 QG4JJuXZYm2N9CbCSrDRVUtNycULzxFE30LrwIxdg2NkmLP0FRPHbPrRYINacqObH5
	 5r61jgi8QnjgxMClpvVLYo/7GLomYI6fjYJ969wZvqOXXEXwWpiu2ofwYeP9TBlBSX
	 jf1PU9D2jIT4ChbarNBuIevhzABtu4PLGQJfRAXoWDEJaY72ZwwFqObqeSCf9epKMB
	 ALSBqvMG8NZjqS4rWEM9Jp75a+iUk/DRpTtlMYuBQLjTQGgURqdIKUAaHMH6JmRpPG
	 UWR+AKVoNg7WA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ccMqYFH4WHC7; Wed, 27 Sep 2023 08:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B30041FB4;
	Wed, 27 Sep 2023 08:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B30041FB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7176F1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AE236100D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AE236100D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kFEutqKJ4WvT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 08:31:55 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F59B60BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F59B60BE4
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-QdQs054vPrK5WPLuwDreVQ-1; Wed, 27 Sep 2023 04:31:52 -0400
X-MC-Unique: QdQs054vPrK5WPLuwDreVQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0314A8039CF;
 Wed, 27 Sep 2023 08:31:52 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 43ECE2156A27;
 Wed, 27 Sep 2023 08:31:50 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Sep 2023 10:31:33 +0200
Message-ID: <20230927083135.3237206-8-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-1-ivecera@redhat.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695803514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XCNh/Zxb7VnU49Ac2SthQM3eV6QtsSLdv7jt4QZ4k7s=;
 b=J6ysHfJhRB2hnaKpfz8NEfQJM1yGHBvPJHxAWzONdPjvZpmuz6StoDoCaX2CH+2oA+2YgW
 t9AXY+fawl0v1oQHRcS8jDS09TPHMpZvd7PX2e0QyhToMJNOZZTYXhkU1c106xBYHWYqrM
 awOkkA3EsdsySaMDowAt6G29QMDPxoM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=J6ysHfJh
Subject: [Intel-wired-lan] [PATCH net-next v2 7/9] i40e: Split i40e_osdep.h
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

Header i40e_osdep.h contains only IO primitives and couple of debug
printing macros. Split this header file to i40e_io.h and i40e_debug.h
and move i40e_debug_mask enum to i40e_debug.h

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_debug.h  | 47 +++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  1 -
 drivers/net/ethernet/intel/i40e/i40e_io.h     | 16 +++++++
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  1 -
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 40 ----------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 31 ++----------
 8 files changed, 68 insertions(+), 71 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_debug.h
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_io.h
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_osdep.h

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index 1c3d2bc5c3f7..80125bea80a2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -4,8 +4,8 @@
 #ifndef _I40E_ADMINQ_H_
 #define _I40E_ADMINQ_H_
 
+#include <linux/mutex.h>
 #include "i40e_alloc.h"
-#include "i40e_osdep.h"
 #include "i40e_adminq_cmd.h"
 
 #define I40E_ADMINQ_DESC(R, i)   \
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
new file mode 100644
index 000000000000..27ebc72d8bfe
--- /dev/null
+++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
@@ -0,0 +1,47 @@
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
+#define hw_dbg(hw, S, A...) dev_dbg(i40e_hw_to_dev(hw), S, ##A)
+
+#define i40e_debug(h, m, s, ...)				\
+do {								\
+	if (((m) & (h)->debug_mask))				\
+		dev_info(i40e_hw_to_dev(hw), s, ##__VA_ARGS__);	\
+} while (0)
+
+#endif /* _I40E_DEBUG_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
index 7451d346ae83..b383aea652f3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
@@ -2,7 +2,6 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include "i40e.h"
-#include "i40e_osdep.h"
 #include "i40e_register.h"
 #include "i40e_alloc.h"
 #include "i40e_hmc.h"
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
index 474365bf0648..830f1de254ef 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -2,7 +2,6 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include "i40e.h"
-#include "i40e_osdep.h"
 #include "i40e_register.h"
 #include "i40e_type.h"
 #include "i40e_hmc.h"
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
deleted file mode 100644
index fd18895cfb56..000000000000
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ /dev/null
@@ -1,40 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
-
-#ifndef _I40E_OSDEP_H_
-#define _I40E_OSDEP_H_
-
-#include <linux/types.h>
-#include <linux/if_ether.h>
-#include <linux/if_vlan.h>
-#include <linux/tcp.h>
-#include <linux/pci.h>
-#include <linux/highuid.h>
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
-#define hw_dbg(hw, S, A...) dev_dbg(i40e_hw_to_dev(hw), S, ##A)
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
index 3eeee224f1fb..9c9234c0706f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -6,6 +6,7 @@
 
 #include "i40e_type.h"
 #include "i40e_alloc.h"
+#include "i40e_debug.h"
 #include <linux/avf/virtchnl.h>
 
 /* Prototypes for shared code functions that are not in
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 63cbf7669827..b3980b5b6919 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -4,7 +4,9 @@
 #ifndef _I40E_TYPE_H_
 #define _I40E_TYPE_H_
 
-#include "i40e_osdep.h"
+#include <linux/delay.h>
+#include <linux/if_ether.h>
+#include "i40e_io.h"
 #include "i40e_register.h"
 #include "i40e_adminq.h"
 #include "i40e_hmc.h"
@@ -40,33 +42,6 @@ typedef void (*I40E_ADMINQ_CALLBACK)(struct i40e_hw *, struct i40e_aq_desc *);
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
