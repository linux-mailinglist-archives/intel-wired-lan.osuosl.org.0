Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 737987AF2DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 20:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F41BB614BA;
	Tue, 26 Sep 2023 18:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F41BB614BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695752869;
	bh=KYUdPAao13WOckIAdBAk5qwmSAFB8axQ9uSSWSiJkdg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S6zxIl37hQ84elpaPiOO9vYpKFvCi4FEuCQgsZUAHhCFiIwaIrspZyTvM2VWwFITJ
	 O3vLdNuN8EyXOZpgJyd2/ZByVso4oH3qvGCjl2/GpD5jVT1Y477X+N0TOK8gUoZIha
	 sQkKWkGufwa9Ga8Xawzwn79KxikopyzXNghSnsjJGKH0H+l9+NJ6Xeotg+v71xRYZ1
	 3Xsvt8VHCaV15o5NON7Hoj16v+Aakf4G8Aw2H1I6QpQNxEBSuV2iiifNu7stbvoEUD
	 RBRDRsvNJ87whAIt4p3k3HKn6M4u+nu25JKrsPQhs+IUNKEPEVqyYRzF1gLwl/ySwB
	 9BF6CF3NkZQzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uL7tVYOfoDP9; Tue, 26 Sep 2023 18:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCDFA60FF8;
	Tue, 26 Sep 2023 18:27:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCDFA60FF8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B43301BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A9B541AA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A9B541AA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TQNSAcX4VumJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 18:27:30 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA9BB40481
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA9BB40481
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-520-N-AoYjMbNj-3ZZHNw8iVLw-1; Tue, 26 Sep 2023 14:27:25 -0400
X-MC-Unique: N-AoYjMbNj-3ZZHNw8iVLw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C52E02815E28;
 Tue, 26 Sep 2023 18:27:24 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2CEC640C6EA8;
 Tue, 26 Sep 2023 18:27:23 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Sep 2023 20:27:07 +0200
Message-ID: <20230926182710.2517901-7-ivecera@redhat.com>
In-Reply-To: <20230926182710.2517901-1-ivecera@redhat.com>
References: <20230926182710.2517901-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695752848;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XU4m14ETA7DHbszSVZCELLKzCLd5sXcG4CFt5VJeRXw=;
 b=Nz3CTkiUlT7ZQa2vRWdLxsaiWK+072jKoavdlxHSrqnr+sBJYOFFk7I/3sGH/lsm3UiAIR
 8r1vBOVoeCNLi54lVqg08Xv9tx6skHA/1qXK74uRot0ztUvyM2MSGwcI9ubgE7/VAzzQTq
 LiDj3b974MGfPmyYXgxfQG2TpEpkDtI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Nz3CTkiU
Subject: [Intel-wired-lan] [PATCH net-next 6/9] i40e: Move DDP specific
 macros and structures to i40e_ddp.c
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

Move several DDP related macros and structures from i40e.h header
to i40e_ddp.c where are privately used. Make static i40e_ddp_load()
function that is also used only in i40e_ddp and move declaration of
i40e_ddp_flash() used by i40e_ethtool.c to i40e_prototype.h

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        | 24 -------------------
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    | 22 +++++++++++++++--
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  5 ++++
 3 files changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 049ca9f589c7..911a34e0e562 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -4,7 +4,6 @@
 #ifndef _I40E_H_
 #define _I40E_H_
 
-#include <linux/ethtool.h>
 #include <linux/pci.h>
 #include <linux/ptp_clock_kernel.h>
 #include <linux/types.h>
@@ -295,29 +294,6 @@ struct i40e_udp_port_config {
 	u8 filter_index;
 };
 
-#define I40_DDP_FLASH_REGION 100
-#define I40E_PROFILE_INFO_SIZE 48
-#define I40E_MAX_PROFILE_NUM 16
-#define I40E_PROFILE_LIST_SIZE \
-	(I40E_PROFILE_INFO_SIZE * I40E_MAX_PROFILE_NUM + 4)
-#define I40E_DDP_PROFILE_PATH "intel/i40e/ddp/"
-#define I40E_DDP_PROFILE_NAME_MAX 64
-
-int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
-		  bool is_add);
-int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash);
-
-struct i40e_ddp_profile_list {
-	u32 p_count;
-	struct i40e_profile_info p_info[];
-};
-
-struct i40e_ddp_old_profile_list {
-	struct list_head list;
-	size_t old_ddp_size;
-	u8 old_ddp_buf[];
-};
-
 /* macros related to FLX_PIT */
 #define I40E_FLEX_SET_FSIZE(fsize) (((fsize) << \
 				    I40E_PRTQF_FLX_PIT_FSIZE_SHIFT) & \
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 21b3518c4096..6b68b6575a1d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -4,6 +4,24 @@
 #include <linux/firmware.h>
 #include "i40e.h"
 
+#define I40_DDP_FLASH_REGION		100
+#define I40E_PROFILE_INFO_SIZE		48
+#define I40E_MAX_PROFILE_NUM		16
+#define I40E_PROFILE_LIST_SIZE		\
+	(I40E_PROFILE_INFO_SIZE * I40E_MAX_PROFILE_NUM + 4)
+#define I40E_DDP_PROFILE_PATH		"intel/i40e/ddp/"
+#define I40E_DDP_PROFILE_NAME_MAX	64
+
+struct i40e_ddp_profile_list {
+	u32 p_count;
+	struct i40e_profile_info p_info[];
+};
+
+struct i40e_ddp_old_profile_list {
+	struct list_head list;
+	size_t old_ddp_size;
+	u8 old_ddp_buf[];
+};
 
 /**
  * i40e_ddp_profiles_eq - checks if DDP profiles are the equivalent
@@ -261,8 +279,8 @@ static bool i40e_ddp_is_pkg_hdr_valid(struct net_device *netdev,
  * Checks correctness and loads DDP profile to the NIC. The function is
  * also used for rolling back previously loaded profile.
  **/
-int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
-		  bool is_add)
+static int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
+			 bool is_add)
 {
 	u8 profile_info_sec[sizeof(struct i40e_profile_section_header) +
 			    sizeof(struct i40e_profile_info)];
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index f8cb4c511831..fbef0ad1af45 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -4,6 +4,7 @@
 #ifndef _I40E_PROTOTYPE_H_
 #define _I40E_PROTOTYPE_H_
 
+#include <linux/ethtool.h>
 #include <linux/avf/virtchnl.h>
 #include "i40e_type.h"
 
@@ -496,4 +497,8 @@ int
 i40e_add_pinfo_to_list(struct i40e_hw *hw,
 		       struct i40e_profile_segment *profile,
 		       u8 *profile_info_sec, u32 track_id);
+
+/* i40e_ddp */
+int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash);
+
 #endif /* _I40E_PROTOTYPE_H_ */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
