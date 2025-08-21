Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83558B31FEE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 18:03:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4554A40840;
	Fri, 22 Aug 2025 16:03:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yb9mAjmmvYis; Fri, 22 Aug 2025 16:03:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60831408BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755878594;
	bh=dPEjACfdGEHu0JkXuoejITxEDtXCDfsHGkFKldzSeW8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1oNh4yUfGtU4uGZHb3+Pmb6aij/CE4h0w9CNGP0iRARUE2c0hXlvwx3Ap6CaA1F+q
	 ZK8V+OVTNfPRm/3JiBfgBLD6oltEfxl06CHCUBu8jSC2ov1D9QcTljfKdMQrZhsCyF
	 tg5xNa0Ca80UFjrZp7S3OsmfgdqsYlnLECGQn/RSoFdU65xVTxzcfiem2AKC07LFEj
	 bUDoqwBlK8f87zi4jBODblzbke4lW9BPA/EoNwNLNqJN4dLDAn05EFZzngjfHMo7xI
	 x1xOq2IJJfxz+s+xtmiYQ6bGW9ERxOhOhTH0+jtvC3zLeAkyk7UlM9/PQ+NoSnNJLW
	 M9bBer0E7GGDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60831408BD;
	Fri, 22 Aug 2025 16:03:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 214D91C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 23:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0881E60686
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 23:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vwOK3xKVjfYJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 23:39:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A12760681
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A12760681
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A12760681
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 23:39:39 +0000 (UTC)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-522-8mHfXJ2rMYyyKgZ8HTywUQ-1; Thu, 21 Aug 2025 19:39:37 -0400
X-MC-Unique: 8mHfXJ2rMYyyKgZ8HTywUQ-1
X-Mimecast-MFC-AGG-ID: 8mHfXJ2rMYyyKgZ8HTywUQ_1755819577
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-4b109a92dddso46750141cf.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 16:39:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755819577; x=1756424377;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dPEjACfdGEHu0JkXuoejITxEDtXCDfsHGkFKldzSeW8=;
 b=DZuqduI4aQMOkt/ww2Erxy63AaiX3ZwVPKoIDSLYG18qkm14mkk6HgP8rBqOiJW/fu
 VeCzjnenUbzR9U0FWOTXMOOe6KaKaOOGt/dgrncF1aGJoyqt+ynDOhvztAWxDgvU9z0g
 VXszp65vRbmYaHZ0Q/DhwiGwSLEcjXo4PKyukKc46wvper19W/xiLUDyeEfPKpELPht1
 dq3BpUVizV8SNFGoDw3VBgYOxU/aU6qxhfa9G9WT2W3gATF+qkEWXxBrZQmCTnjoLnOb
 /OMrAsL8WOgECAZbE1XiwN9DWND8jFO1Dedu6PGPg5efRr6Ix1G7WhzaUR0Qt74wgv9a
 AWyw==
X-Gm-Message-State: AOJu0YwnfgfLQ04jcygy5uuzQqgwvZduR47LRFZIIgeDdnJlpmH92U5U
 APfAR8Xz7jmGdJAxIfnGVGrGfH23uSubLN4mMwYIALfm8NpIidsVmJGz4s2eE7ntKv0onn/a0AZ
 mOhiuGLTKRxBmAJaKLnxHxLbB878I/sxMz6wdNZb3+Gk/U5gQsHxD0fNFurJHbp0/Y6esaBsWuR
 pYYxdse6t4NaINXMuyruWQPLO9smwAZsR/KNsyEP7ToAZLLmdshGG72A==
X-Gm-Gg: ASbGncskUTwM9gQD4q7b6pISQfQ01WVr7Wm7VLEBOoQQn5h7h4cXcgzHy4/8ha7WkeX
 gVqR+mYRFX7qChMHoOZfkIyW8bqP9tC92p3bLXLIzzS1z7xAvgW/SEVicQw+nhPud9OkL1u6toR
 rq6NweLDHByBvyZNXMQXKLUeciNHMWvRiAqUjHVI8hAOpJcM7mAF+2733BxMSxaC0qeLVnJowFp
 3IX0Q/4qdiK/b85gJSWdY1BneDeu7Zae63fW+Y0iB/4drcHKbv1MSEq90kXrmX87NoVYmHNsqFO
 6mLv7nklomavTE0qknuC3Bs7M9wYKYXHkudpuKEEl9da
X-Received: by 2002:a05:622a:28f:b0:4b2:8ac4:ef82 with SMTP id
 d75a77b69052e-4b2aab4c366mr15877161cf.81.1755819576600; 
 Thu, 21 Aug 2025 16:39:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHRrj5eC7J8wzGSLIZI5lp4gdyL90oThp2IIL3gA65kw5819iq/kYNJGM5lN3fMdWmK6OHWA==
X-Received: by 2002:a05:622a:28f:b0:4b2:8ac4:ef82 with SMTP id
 d75a77b69052e-4b2aab4c366mr15876911cf.81.1755819576105; 
 Thu, 21 Aug 2025 16:39:36 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4b11ddd8727sm112032351cf.39.2025.08.21.16.39.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Aug 2025 16:39:35 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Mohammad Heib <mheib@redhat.com>
Date: Fri, 22 Aug 2025 02:39:30 +0300
Message-ID: <20250821233930.127420-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: voZFXPbBP5pwbcV3NNy6EvSU4vq-LUtV14iZilKflL0_1755819577
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Approved-At: Fri, 22 Aug 2025 16:03:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755819578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=dPEjACfdGEHu0JkXuoejITxEDtXCDfsHGkFKldzSeW8=;
 b=N1Xnnzx7n7bwcJsYtYa+kSowoHbHzBFqOfnHwHAnJQffY+MbuANune6bkGInDG/D6HmhSf
 SB9krBXUpUN+A5WHr1uzxZo64rZ/6MSw3P/Z1S4zqLH5D4jK5Sfma5EAyu2lNL4q+SrsrR
 AIXFBbkyCKjl7lZMgbsfzsQpvWeAF38=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=N1Xnnzx7
Subject: [Intel-wired-lan] [PATCH net] i40e: add devlink param to control VF
 MAC address limit
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

From: Mohammad Heib <mheib@redhat.com>

This patch introduces a new devlink runtime parameter
to control whether the VF MAC filter limit feature is
enabled or disabled.

When the parameter is set to non-zero, the driver enforces the per-VF MAC
filter limit calculated from the number of allocated VFs and ports.
When the parameter is unset (zero), no limit is applied and behavior
remains as before commit cfb1d572c986
   ("i40e: Add ensurance of MacVlan resources for every trusted VF").

This implementation allows us to toggle the feature through devlink
while preserving old behavior. In the future, the parameter can be
extended to represent a configurable "max MACs per VF" value, but for
now it acts as a simple on/off switch.

Example command to enable per-vf mac limit:
 - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
	value 1 \
	cmode runtime

Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 Documentation/networking/devlink/i40e.rst     | 19 +++++++
 drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 14 ++++-
 4 files changed, 89 insertions(+), 4 deletions(-)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index d3cb5bb5197e..4bdc7c33b2b3 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -7,6 +7,25 @@ i40e devlink support
 This document describes the devlink features implemented by the ``i40e``
 device driver.
 
+Parameters
+==========
+
+.. list-table:: Driver specific parameters implemented
+    :widths: 5 5 90
+
+    * - Name
+      - Mode
+      - Description
+    * - ``max_mac_per_vf``
+      - runtime
+      - Determines whether the per-VF MAC filter limit is enforced on i40e devices.
+        When set to 0: no limit is enforced, and each VF can request any
+        number of MAC addresses (legacy behavior).
+        When set to non-zero: the driver enforces a calculated per-VF MAC filter limit
+        based on the number of allocated VFs.
+
+        Default value of ``max_mac_per_vf`` parameter is ``0``.
+
 Info versions
 =============
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 49aa4497efce..4a4cb55b6ce8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -574,6 +574,10 @@ struct i40e_pf {
 	struct i40e_vf *vf;
 	int num_alloc_vfs;	/* actual number of VFs allocated */
 	u32 vf_aq_requests;
+	/* If set to none-zero, the device reserves
+	 * a minimum number of MAC filters for each VF.
+	 */
+	u32 max_mac_per_vf;
 	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
 	struct ratelimit_state mdd_message_rate_limit;
 	/* DCBx/DCBNL capability for PF that indicates
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index cc4e9e2addb7..8532e40b5c7d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -5,6 +5,42 @@
 #include "i40e.h"
 #include "i40e_devlink.h"
 
+static int i40e_max_mac_per_vf_set(struct devlink *devlink,
+				   u32 id,
+				   struct devlink_param_gset_ctx *ctx,
+				   struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_priv(devlink);
+
+	pf->max_mac_per_vf = ctx->val.vu32;
+	return 0;
+}
+
+static int i40e_max_mac_per_vf_get(struct devlink *devlink,
+				   u32 id,
+				   struct devlink_param_gset_ctx *ctx)
+{
+	struct i40e_pf *pf = devlink_priv(devlink);
+
+	ctx->val.vu32 = pf->max_mac_per_vf;
+	return 0;
+}
+
+enum i40e_dl_param_id {
+	I40E_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
+	I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
+};
+
+static const struct devlink_param i40e_dl_params[] = {
+	DEVLINK_PARAM_DRIVER(I40E_DEVLINK_PARAM_ID_MAX_MAC_PER_VF,
+			     "max_mac_per_vf",
+			     DEVLINK_PARAM_TYPE_U32,
+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			     i40e_max_mac_per_vf_get,
+			     i40e_max_mac_per_vf_set,
+			     NULL),
+};
+
 static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
 {
 	u8 dsn[8];
@@ -165,7 +201,19 @@ void i40e_free_pf(struct i40e_pf *pf)
  **/
 void i40e_devlink_register(struct i40e_pf *pf)
 {
-	devlink_register(priv_to_devlink(pf));
+	int err;
+	struct devlink *dl = priv_to_devlink(pf);
+	struct device *dev = &pf->pdev->dev;
+
+	err = devlink_params_register(dl, i40e_dl_params,
+				      ARRAY_SIZE(i40e_dl_params));
+	if (err) {
+		dev_err(dev,
+			"devlink params register failed with error %d", err);
+	}
+
+	devlink_register(dl);
+
 }
 
 /**
@@ -176,7 +224,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
  **/
 void i40e_devlink_unregister(struct i40e_pf *pf)
 {
-	devlink_unregister(priv_to_devlink(pf));
+	struct devlink *dl = priv_to_devlink(pf);
+
+	devlink_unregister(dl);
+	devlink_params_unregister(dl, i40e_dl_params,
+				  ARRAY_SIZE(i40e_dl_params));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 9b8efdeafbcf..020517b1a3f8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2949,9 +2949,19 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 	 * all VFs.
 	 */
 	} else {
-		if ((i40e_count_filters(vsi) + mac2add_cnt) >
+		/* Enforce per-VF MAC filter limit only if enabled by
+		 * user/module param "max_mac_per_vf",
+		 * Currently, the parameter is used as a flag to indicate
+		 * whether the per-VF MAC limit should be enabled or not.
+		 *
+		 * If future work introduces VF MAC limits through devlink
+		 * resources, we can still use "max_mac_per_vf" as a fallback
+		 * for the maximum number of MACs per VF.
+		 */
+		if (((i40e_count_filters(vsi) + mac2add_cnt) >
 		    I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs,
-						       hw->num_ports)) {
+						       hw->num_ports)) &&
+						       pf->max_mac_per_vf) {
 			dev_err(&pf->pdev->dev,
 				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
 			return -EPERM;
-- 
2.50.1

