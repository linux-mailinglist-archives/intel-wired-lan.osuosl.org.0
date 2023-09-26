Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C38F97AF2D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 20:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60BF46138C;
	Tue, 26 Sep 2023 18:27:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60BF46138C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695752856;
	bh=uEDEweTFyeO4N69p02tlPPM8xB3AH3bZPwXA/0bcXlk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SxuiUP9v5i/CPv4ngzE+AD9U+QbRkH2qp4UXo9rt7G7ISsU8vusv3IymUeD0L0IYO
	 dtHTqLlQFZsUNxzKFtLhOC/6J0Us+3D7j1rXMuOIKUJHl8lm4k3c5OvO5ym2hTamfH
	 /7bs6jfkkfHDZ0WZtyGuC8hLnlDJO7D9OTz4zuYzqyQkUiRxWPrhqwxT9Ia7ZGwCSw
	 19raSra+7BTE7MHIwNfQtvzf744f6cBXJ8mEAmJ5+CHeAPovjv5Cd986aURgDCM00B
	 egF4BOIJ9n7Ut7UsKg715swWk/U3RIqByuZIOOXbiT6TWBhfnj2ztX/YliHJKEORiL
	 fEvQl5mp7stlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVSzb6sE2aOy; Tue, 26 Sep 2023 18:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62B2960D5F;
	Tue, 26 Sep 2023 18:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62B2960D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 430771BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B86B60FF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B86B60FF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jz7MClNxVk8s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 18:27:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 669D960758
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 669D960758
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-58-A5drtdzlOamPXT2UA02Ffg-1; Tue, 26 Sep 2023 14:27:17 -0400
X-MC-Unique: A5drtdzlOamPXT2UA02Ffg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EE721C0653D;
 Tue, 26 Sep 2023 18:27:17 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9AB3640C6EA8;
 Tue, 26 Sep 2023 18:27:15 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Sep 2023 20:27:03 +0200
Message-ID: <20230926182710.2517901-3-ivecera@redhat.com>
In-Reply-To: <20230926182710.2517901-1-ivecera@redhat.com>
References: <20230926182710.2517901-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695752842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EZhuG50Q5miV4PoSUjX8aTRuuoG/6ZgIoL2i9m/DJWw=;
 b=WU08ks5mdYkTexNgfN1EofJljdjHqHD3XhMQLa12oBocoKp9ksNvbgOX5WX4WSTGMiZIwi
 tILgKeuAfB/KZrpkR2izIxH4t4xXJ+YiWdkWWz0FNsE6ScfqwlLdSX0Xy44xm+0n9cwZlQ
 6BW4T2J9+TkrMC5F9HidXzAPSQO+I1c=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WU08ks5m
Subject: [Intel-wired-lan] [PATCH net-next 2/9] i40e: Move I40E_MASK macro
 to i40e_register.h
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

The macro is practically used only in i40e_register.h header file except
few I40E_MDIO_CLAUSE* macros that are defined in i40e_type.h
Move I40E_MASK macro to i40e_register.h header, I40E_MDIO_CLAUSE* macros
are refactored in subsequent patch.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_register.h | 3 +++
 drivers/net/ethernet/intel/i40e/i40e_type.h     | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 7339003aa17c..eebb5735772b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -4,6 +4,9 @@
 #ifndef _I40E_REGISTER_H_
 #define _I40E_REGISTER_H_
 
+/* I40E_MASK is a macro used on 32 bit registers */
+#define I40E_MASK(mask, shift) ((u32)(mask) << (shift))
+
 #define I40E_GL_ATQLEN_ATQCRIT_SHIFT 30
 #define I40E_GL_ATQLEN_ATQCRIT_MASK I40E_MASK(0x1, I40E_GL_ATQLEN_ATQCRIT_SHIFT)
 #define I40E_PF_ARQBAH 0x00080180 /* Reset: EMPR */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 658bc8913278..60b55d66d648 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -11,9 +11,6 @@
 #include "i40e_lan_hmc.h"
 #include "i40e_devids.h"
 
-/* I40E_MASK is a macro used on 32 bit registers */
-#define I40E_MASK(mask, shift) ((u32)(mask) << (shift))
-
 #define I40E_MAX_VSI_QP			16
 #define I40E_MAX_VF_VSI			4
 #define I40E_MAX_CHAINED_RX_BUFFERS	5
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
