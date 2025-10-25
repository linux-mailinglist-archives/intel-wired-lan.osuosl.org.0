Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C40A2C090AE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 15:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2A3760653;
	Sat, 25 Oct 2025 13:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g07DqJIYYZSD; Sat, 25 Oct 2025 13:11:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E988D607DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761397871;
	bh=bGKJ+4qBOaBgA1KnlHLdE87TBTS6x4HmHzasoKyQciI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=30mDAHFgA6NpE9V5IpzjaoBVhYyDvUL6tNzrGhMBgUisWQBuOidXf4hsV55RIIPNG
	 zHsqQZ5bINynnHnRoQOFU5i56lXaEeVH7YU30bike7cUe2QEL9oioBQrM2TCD+M+ie
	 QLCdgxr1ukNMg3rWkQ4uQUdtJxrjmvq6BAIeDIYOWgaBQjA/xR/po3xXHhZZpuCOpa
	 SaI0NlsCc2KBAaS2kXu4V51RlThpHNEDNshe2wAfMhYFxX6YWyWo9cw4uPTsi7d6sy
	 XgwJG61/9F/FxoqU2wonLRq/sCTuzYS7t/Mqsx956C4GKTahRJBGVbqwotSWzei3sb
	 w7cJEABMtMF+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E988D607DC;
	Sat, 25 Oct 2025 13:11:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B28C043F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 13:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFEE040174
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 13:11:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p4fTyPMIOMCK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 13:11:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 785EE40169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 785EE40169
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 785EE40169
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 13:11:08 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-XSu75yrwM8aGuGZ87j0cfw-1; Sat, 25 Oct 2025 09:11:06 -0400
X-MC-Unique: XSu75yrwM8aGuGZ87j0cfw-1
X-Mimecast-MFC-AGG-ID: XSu75yrwM8aGuGZ87j0cfw_1761397865
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-47106a388cfso18735955e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 06:11:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761397865; x=1762002665;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bGKJ+4qBOaBgA1KnlHLdE87TBTS6x4HmHzasoKyQciI=;
 b=ntJFNAwyC7kgkFna2hkErRJMvmvWFasUdcU/w2DVo3GX2DOJK+RpLsB4LAHhLpjv3k
 jCH6axJkJWE9OU/UI+u1XNfqFeJtH1Aodajl+ccrl3W8CG5PqRrvwnl1jc2Emndb4nSs
 BFcTzSddRTidJ1kCN9xJ6WUgG3s61VYa1kpGa46+wv/0iMnSvyl50nUZoU1Fm0yletBn
 i6sybooPMBiJnCJqcHyqkUHNxh4WrdHG4CcZY6SyGglhbZn4NkN6lIh3P+lM7lOjx90R
 EIpzPicHbYAK6Z9zrq8SKQNaOpb4T/VaTEm0SrEONRYt9borWMaZBRJdpXk2YNOoFQ+B
 6yYg==
X-Gm-Message-State: AOJu0YxTFUBPnY2rfZpcZgymoPxqcIu0ZJctZcJrd59eeT3kGNKbSlB/
 75SfJUu0wOTlYvKgeD6QgOwXzQzr9ElgyzQipM7REq11aQl4Ae7/1lAz0DduNHfQzAE+SL62fBU
 C1a5lhuFX0b9f7BJb+7AnOpf0olXdkDR1P7Ttx6lijR3Y76cILSf+fRh0U+/96Hp32XnaNXndj6
 0zcIJRueSp0VvK48NU2K5FUm3YCSH2wwFIWs9TDCic0LglwO4Cx2zCDQ==
X-Gm-Gg: ASbGncuD+e96o58r2VPV7F3j/bvwMHEcJuQ8638aql2kebhhlJ4ZJATuFgY0NX7c6bL
 RJYI4hZPvB5PeQ6NKeL7G8vlDkqRmMQ10NvYAlyhu1smOwFnK9iW+420nFnghuNZLZLLGOV4Lcx
 nK1iFzSNyvFwCPyT+/xoiJkfuas7zUs3rKQCvkuGStxFT0KzrYMHXZKgnUoCHfVLvGXDpDKuiWs
 03CK0UIsfmnVN99rk7lxCfZ3+hlR10U4c5kzh+fR6FbtqCh4d1F+d6PJ/5SkqoK9W+Ho26KGwcc
 uL2okcZAaaSWJghZkZl4c0NYIWVyHnB0Qo6nDjp8r5FFmAPXjbHemscWn8v8a941JZvPmDeeina
 P7B+dpkooCXQM7NBtJSVVKF/fn61WXSTNrqkNiabn
X-Received: by 2002:a05:600c:828a:b0:46e:5a5b:db60 with SMTP id
 5b1f17b1804b1-4711791c4eamr221047795e9.31.1761397864457; 
 Sat, 25 Oct 2025 06:11:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrsXVKKWZzUoJ4wnz+m3UiWSxjoNWLD3DP+q85kf810Z0Ub9Q1NYCOxXBmP0fkV93J/9UQog==
X-Received: by 2002:a05:600c:828a:b0:46e:5a5b:db60 with SMTP id
 5b1f17b1804b1-4711791c4eamr221047495e9.31.1761397863784; 
 Sat, 25 Oct 2025 06:11:03 -0700 (PDT)
Received: from fedora.redhat.com (bzq-79-177-147-123.red.bezeqint.net.
 [79.177.147.123]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475dd374e4esm31935335e9.11.2025.10.25.06.11.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Oct 2025 06:11:03 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: kuba@kernel.org, przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Mohammad Heib <mheib@redhat.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Date: Sat, 25 Oct 2025 16:08:59 +0300
Message-ID: <20251025130859.144916-2-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251025130859.144916-1-mheib@redhat.com>
References: <20251025130859.144916-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: r5ZmstHhKlZQo-7NL__31p8VnEJwyZu_U8HMZQjjnvs_1761397865
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1761397867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bGKJ+4qBOaBgA1KnlHLdE87TBTS6x4HmHzasoKyQciI=;
 b=X4Q4ZC0VGxUFX9blLOxwJ4V8QpAh1ljMOoWKjcLrCujPe46SjArUBvGWGl8gdE36hLeyLL
 eO/nqHNYbGtHonNbLt0yRzuOPcp437ezTWKVCRfGy6qw5q4uyC9bIYTQ1CfeRvNDwX4U2Y
 HLNdWAyLLxlZNYTDlI0qLVq18U+KU/c=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=X4Q4ZC0V
Subject: [Intel-wired-lan] [PATCH net-next, v5,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

Currently the i40e driver enforces its own internally calculated per-VF MAC
filter limit, derived from the number of allocated VFs and available
hardware resources. This limit is not configurable by the administrator,
which makes it difficult to control how many MAC addresses each VF may
use.

This patch adds support for the new generic devlink runtime parameter
"max_mac_per_vf" which provides administrators with a way to cap the
number of MAC addresses a VF can use:

- When the parameter is set to 0 (default), the driver continues to use
  its internally calculated limit.

- When set to a non-zero value, the driver applies this value as a strict
  cap for VFs, overriding the internal calculation.

Important notes:

- The configured value is a theoretical maximum. Hardware limits may
  still prevent additional MAC addresses from being added, even if the
  parameter allows it.

- Since MAC filters are a shared hardware resource across all VFs,
  setting a high value may cause resource contention and starve other
  VFs.

- This change gives administrators predictable and flexible control over
  VF resource allocation, while still respecting hardware limitations.

- Previous discussion about this change:
  https://lore.kernel.org/netdev/20250805134042.2604897-2-dhill@redhat.com
  https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.com

Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/i40e.rst     | 34 ++++++++++++
 drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 54 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 31 ++++++++---
 4 files changed, 113 insertions(+), 10 deletions(-)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index d3cb5bb5197e..51c887f0dc83 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -7,6 +7,40 @@ i40e devlink support
 This document describes the devlink features implemented by the ``i40e``
 device driver.
 
+Parameters
+==========
+
+.. list-table:: Generic parameters implemented
+    :widths: 5 5 90
+
+    * - Name
+      - Mode
+      - Notes
+    * - ``max_mac_per_vf``
+      - runtime
+      - Controls the maximum number of MAC addresses a VF can use
+        on i40e devices.
+
+        By default (``0``), the driver enforces its internally calculated per-VF
+        MAC filter limit, which is based on the number of allocated VFS.
+
+        If set to a non-zero value, this parameter acts as a strict cap:
+        the driver will use the user-provided value instead of its internal
+        calculation.
+
+        **Important notes:**
+
+        - This value **must be set before enabling SR-IOV**.
+          Attempting to change it while SR-IOV is enabled will return an error.
+        - MAC filters are a **shared hardware resource** across all VFs.
+          Setting a high value may cause other VFs to be starved of filters.
+        - This value is a **Administrative policy**. The hardware may return
+          errors when its absolute limit is reached, regardless of the value
+          set here.
+
+        The default value is ``0`` (internal calculation is used).
+
+
 Info versions
 =============
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 801a57a925da..d2d03db2acec 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -574,6 +574,10 @@ struct i40e_pf {
 	struct i40e_vf *vf;
 	int num_alloc_vfs;	/* actual number of VFs allocated */
 	u32 vf_aq_requests;
+	/* If set to non-zero, the device uses this value
+	 * as maximum number of MAC filters per VF.
+	 */
+	u32 max_mac_per_vf;
 	u32 arq_overflows;	/* Not fatal, possibly indicative of problems */
 	struct ratelimit_state mdd_message_rate_limit;
 	/* DCBx/DCBNL capability for PF that indicates
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index cc4e9e2addb7..bc205e3077c7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -5,6 +5,41 @@
 #include "i40e.h"
 #include "i40e_devlink.h"
 
+static int i40e_max_mac_per_vf_set(struct devlink *devlink,
+				   u32 id,
+				   struct devlink_param_gset_ctx *ctx,
+				   struct netlink_ext_ack *extack)
+{
+	struct i40e_pf *pf = devlink_priv(devlink);
+
+	if (pf->num_alloc_vfs > 0) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Cannot change max_mac_per_vf while SR-IOV is enabled");
+		return -EBUSY;
+	}
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
+static const struct devlink_param i40e_dl_params[] = {
+	DEVLINK_PARAM_GENERIC(MAX_MAC_PER_VF,
+			      BIT(DEVLINK_PARAM_CMODE_RUNTIME),
+			      i40e_max_mac_per_vf_get,
+			      i40e_max_mac_per_vf_set,
+			      NULL),
+};
+
 static void i40e_info_get_dsn(struct i40e_pf *pf, char *buf, size_t len)
 {
 	u8 dsn[8];
@@ -165,7 +200,18 @@ void i40e_free_pf(struct i40e_pf *pf)
  **/
 void i40e_devlink_register(struct i40e_pf *pf)
 {
-	devlink_register(priv_to_devlink(pf));
+	struct devlink *dl = priv_to_devlink(pf);
+	struct device *dev = &pf->pdev->dev;
+	int err;
+
+	err = devlink_params_register(dl, i40e_dl_params,
+				      ARRAY_SIZE(i40e_dl_params));
+	if (err)
+		dev_err(dev,
+			"devlink params register failed with error %d", err);
+
+	devlink_register(dl);
+
 }
 
 /**
@@ -176,7 +222,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
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
index 081a4526a2f0..6e154a8aa474 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2935,33 +2935,48 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 		if (!f)
 			++mac_add_cnt;
 	}
-
-	/* If this VF is not privileged, then we can't add more than a limited
-	 * number of addresses.
+	/* Determine the maximum number of MAC addresses this VF may use.
+	 *
+	 * - For untrusted VFs: use a fixed small limit.
+	 *
+	 * - For trusted VFs: limit is calculated by dividing total MAC
+	 *  filter pool across all VFs/ports.
 	 *
-	 * If this VF is trusted, it can use more resources than untrusted.
-	 * However to ensure that every trusted VF has appropriate number of
-	 * resources, divide whole pool of resources per port and then across
-	 * all VFs.
+	 * - User can override this by devlink param "max_mac_per_vf".
+	 *   If set its value is used as a strict cap for both trusted and
+	 *   untrusted VFs.
+	 *   Note:
+	 *    even when overridden, this is a theoretical maximum; hardware
+	 *    may reject additional MACs if the absolute HW limit is reached.
 	 */
 	if (!vf_trusted)
 		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
 	else
 		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
 
+	if (pf->max_mac_per_vf > 0)
+		mac_add_max = pf->max_mac_per_vf;
+
 	/* VF can replace all its filters in one step, in this case mac_add_max
 	 * will be added as active and another mac_add_max will be in
 	 * a to-be-removed state. Account for that.
 	 */
 	if ((i40e_count_active_filters(vsi) + mac_add_cnt) > mac_add_max ||
 	    (i40e_count_all_filters(vsi) + mac_add_cnt) > 2 * mac_add_max) {
+		if (pf->max_mac_per_vf == mac_add_max && mac_add_max > 0) {
+			dev_err(&pf->pdev->dev,
+				"Cannot add more MAC addresses: VF reached its maximum allowed limit (%d)\n",
+				mac_add_max);
+				return -EPERM;
+		}
 		if (!vf_trusted) {
 			dev_err(&pf->pdev->dev,
 				"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
 			return -EPERM;
 		} else {
 			dev_err(&pf->pdev->dev,
-				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
+				"Cannot add more MAC addresses: trusted VF reached its maximum allowed limit (%d)\n",
+				mac_add_max);
 			return -EPERM;
 		}
 	}
-- 
2.50.1

