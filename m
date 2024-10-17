Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A71F39A1DDB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 11:10:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9590608C7;
	Thu, 17 Oct 2024 09:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMXllbpj2ODS; Thu, 17 Oct 2024 09:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58803608BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729156213;
	bh=PBiTZStokzdXtTQQ5ljDO7mCXK87QxBx9//nSDBU12o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6iF62lY5Y72/3eGZs6hHV1txoHcAnyS/RVG+pbKucHzzy3z2TVfuwVXIpI5KurmWR
	 YgknapqvcJDzbcxgv8e9yd4DCl6Ogh1jRSz/wqauoplYrtxjLXeQ8hZ5ZfTe6zaTaj
	 Jx3tJqpGfKMojgkjmbG7nzRuBRkvWMAQeBZplp7yCRv5QkwmFYOAjnLe40J+kEJHzC
	 4vh8IqoEjor4oZoM0bWj4GUp5rCEXAHq3ayYuJUSQ73Ms51QbQot4/wDsJca6DJvrD
	 hscX2ui+Dsz0kTVsHg50ODuRmOBpA2qFzrhtn4WL/WKGOxPfWoUf0Wz97hCY5KTGQN
	 /eG0Mo7H8nJOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58803608BB;
	Thu, 17 Oct 2024 09:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C5AF27EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FDAB4011E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:10:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id csz18IKX8Evb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 09:10:10 +0000 (UTC)
X-Greylist: delayed 503 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 17 Oct 2024 09:10:09 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F6434011B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F6434011B
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:648:2ffe:3:a800:ff:fe99:2593; helo=balab.aueb.gr;
 envelope-from=dds@balab.aueb.gr; receiver=<UNKNOWN> 
Received: from balab.aueb.gr (balab.aueb.gr
 [IPv6:2001:648:2ffe:3:a800:ff:fe99:2593])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F6434011B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 09:10:09 +0000 (UTC)
Received: by balab.aueb.gr (Postfix, from userid 1000)
 id 53E1124618F; Thu, 17 Oct 2024 12:01:40 +0300 (EEST)
From: Diomidis Spinellis <dds@aueb.gr>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
	Diomidis Spinellis <dds@aueb.gr>
Date: Thu, 17 Oct 2024 11:58:53 +0300
Message-Id: <20241017085851.1800065-1-dds@aueb.gr>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=aueb.gr
Subject: [Intel-wired-lan] [PATCH] ixgbe: Break include dependency cycle
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

Header ixgbe_type.h includes ixgbe_mbx.h.  Also, header
ixgbe_mbx.h included ixgbe_type.h, thus introducing a circular
dependency.

- Remove ixgbe_mbx.h inclusion from ixgbe_type.h.

- ixgbe_mbx.h requires the definition of struct ixgbe_mbx_operations
  so move its definition there. While at it, add missing argument
  identifier names.

- Add required forward structure declarations.

- Include ixgbe_mbx.h in the .c files that need it, for the
  following reasons:

  ixgbe_sriov.c uses ixgbe_check_for_msg
  ixgbe_main.c uses ixgbe_init_mbx_params_pf
  ixgbe_82599.c uses mbx_ops_generic
  ixgbe_x540.c uses mbx_ops_generic
  ixgbe_x550.c uses mbx_ops_generic

Signed-off-by: Diomidis Spinellis <dds@aueb.gr>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c  |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h   | 16 +++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h  | 15 ++-------------
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c  |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c  |  1 +
 7 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 283a23150a4d..4aaaea3b5f8f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -6,6 +6,7 @@
 #include <linux/sched.h>
 
 #include "ixgbe.h"
+#include "ixgbe_mbx.h"
 #include "ixgbe_phy.h"
 
 #define IXGBE_82598_MAX_TX_QUEUES 32
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 8b8404d8c946..c229a26fbbb7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -43,6 +43,7 @@
 #include "ixgbe.h"
 #include "ixgbe_common.h"
 #include "ixgbe_dcb_82599.h"
+#include "ixgbe_mbx.h"
 #include "ixgbe_phy.h"
 #include "ixgbe_sriov.h"
 #include "ixgbe_model.h"
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index bd205306934b..bf65e82b4c61 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -4,7 +4,7 @@
 #ifndef _IXGBE_MBX_H_
 #define _IXGBE_MBX_H_
 
-#include "ixgbe_type.h"
+#include <linux/types.h>
 
 #define IXGBE_VFMAILBOX_SIZE        16 /* 16 32 bit words - 64 bytes */
 
@@ -96,6 +96,8 @@ enum ixgbe_pfvf_api_rev {
 #define IXGBE_VF_MBX_INIT_TIMEOUT 2000 /* number of retries on mailbox */
 #define IXGBE_VF_MBX_INIT_DELAY   500  /* microseconds between retries */
 
+struct ixgbe_hw;
+
 int ixgbe_read_mbx(struct ixgbe_hw *, u32 *, u16, u16);
 int ixgbe_write_mbx(struct ixgbe_hw *, u32 *, u16, u16);
 int ixgbe_check_for_msg(struct ixgbe_hw *, u16);
@@ -105,6 +107,18 @@ int ixgbe_check_for_rst(struct ixgbe_hw *, u16);
 void ixgbe_init_mbx_params_pf(struct ixgbe_hw *);
 #endif /* CONFIG_PCI_IOV */
 
+struct ixgbe_mbx_operations {
+	int (*init_params)(struct ixgbe_hw *hw);
+	int (*read)(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 vf_number);
+	int (*write)(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 vf_number);
+	int (*read_posted)(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id);
+	int (*write_posted)(struct ixgbe_hw *hw, u32 *msg, u16 size,
+			    u16 mbx_id);
+	int (*check_for_msg)(struct ixgbe_hw *hw, u16 vf_number);
+	int (*check_for_ack)(struct ixgbe_hw *hw, u16 vf_number);
+	int (*check_for_rst)(struct ixgbe_hw *hw, u16 vf_number);
+};
+
 extern const struct ixgbe_mbx_operations mbx_ops_generic;
 
 #endif /* _IXGBE_MBX_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index e71715f5da22..9631559a5aea 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -18,6 +18,7 @@
 
 #include "ixgbe.h"
 #include "ixgbe_type.h"
+#include "ixgbe_mbx.h"
 #include "ixgbe_sriov.h"
 
 #ifdef CONFIG_PCI_IOV
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 346e3d9114a8..9baccacd02a1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3601,19 +3601,6 @@ struct ixgbe_phy_info {
 	u32				nw_mng_if_sel;
 };
 
-#include "ixgbe_mbx.h"
-
-struct ixgbe_mbx_operations {
-	int (*init_params)(struct ixgbe_hw *hw);
-	int (*read)(struct ixgbe_hw *, u32 *, u16,  u16);
-	int (*write)(struct ixgbe_hw *, u32 *, u16, u16);
-	int (*read_posted)(struct ixgbe_hw *, u32 *, u16,  u16);
-	int (*write_posted)(struct ixgbe_hw *, u32 *, u16, u16);
-	int (*check_for_msg)(struct ixgbe_hw *, u16);
-	int (*check_for_ack)(struct ixgbe_hw *, u16);
-	int (*check_for_rst)(struct ixgbe_hw *, u16);
-};
-
 struct ixgbe_mbx_stats {
 	u32 msgs_tx;
 	u32 msgs_rx;
@@ -3623,6 +3610,8 @@ struct ixgbe_mbx_stats {
 	u32 rsts;
 };
 
+struct ixgbe_mbx_operations;
+
 struct ixgbe_mbx_info {
 	const struct ixgbe_mbx_operations *ops;
 	struct ixgbe_mbx_stats stats;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index f1ffa398f6df..81e1df83f136 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -6,6 +6,7 @@
 #include <linux/sched.h>
 
 #include "ixgbe.h"
+#include "ixgbe_mbx.h"
 #include "ixgbe_phy.h"
 #include "ixgbe_x540.h"
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index a5f644934445..d9a8cf018d3b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -4,6 +4,7 @@
 #include "ixgbe_x540.h"
 #include "ixgbe_type.h"
 #include "ixgbe_common.h"
+#include "ixgbe_mbx.h"
 #include "ixgbe_phy.h"
 
 static int ixgbe_setup_kr_speed_x550em(struct ixgbe_hw *, ixgbe_link_speed);
-- 
2.39.5

