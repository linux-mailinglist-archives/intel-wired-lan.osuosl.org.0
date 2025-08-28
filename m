Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0FDB39962
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A50482B97;
	Thu, 28 Aug 2025 10:17:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bDrEtxXUF3o; Thu, 28 Aug 2025 10:17:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CA9482BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756376223;
	bh=JQs3plsdww5KIPefy/qyCbaIMlCKniyjtsdxcjVftN0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yiV9Cdg3AvHgNAyiQzRHsC8IvpFcKyvkKBcIWzMmeHy/ImRpl6iG85ROZ+8q8wy26
	 6Um0vwjR/wiNexqm7DVEVheUtGZFvt89HgBsRJr+TaPTggKR9U+s7bA/nhjpdt+NpP
	 bOr/1m224oQLzhITa9Bk221POjk2iSgZeMlGVjfSqK2kssfldPHPZEszNejarpbALM
	 J1xQuZL/WxDBvPYzB2t4tK9EoD1FbkX/SqWzKJCYQW9MqtseGwobZKku8vRDMSDRWg
	 e8PBGDot/Evc9eDJpNldMDfIEVuaox02u/fV2JlI96yhKLIJT8v9oAcAc5ktm3SJpb
	 9KmiJzd2b7FCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CA9482BF4;
	Thu, 28 Aug 2025 10:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 51D511B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34C5182B97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RR3sW5hIDVpa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:17:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 130F082B51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 130F082B51
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 130F082B51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:16:59 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-478-Myr45QHUMIG3kMrRdgeEMg-1; Thu, 28 Aug 2025 06:16:57 -0400
X-MC-Unique: Myr45QHUMIG3kMrRdgeEMg-1
X-Mimecast-MFC-AGG-ID: Myr45QHUMIG3kMrRdgeEMg_1756376216
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3cc3765679fso286432f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 03:16:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756376216; x=1756981016;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JQs3plsdww5KIPefy/qyCbaIMlCKniyjtsdxcjVftN0=;
 b=YNhFfViqZnhi2wHRz2kCE5u+C15XCT+dHzUbGRHL2hGNvLSDANmZq2suYhtWcFRU+H
 vWnZnLgTInNZOfVoa+qs5pK7m42phPkNefdpXxu+Yk6j+NW2KTb5d6dqlwK+MQsSM5nu
 eZswxV3wrrLW4mOiBrEUvePRit/tyIk9t5ZezSdAMxP/WaCkVuhwH8VDDYRTQBPHpU59
 FxCdepk32PWVez1M0lTjaS0b2C1t+GwH/aXPpGGmZ37isdlhw1W6WxFSMM+f/PsHvQHw
 BjEZD6GRVtXjLUEbqC3pt2874AUJvJQgPd+XwOW98rxHruHgnUtphTiuXLSDWvkh+Fby
 6vzA==
X-Gm-Message-State: AOJu0YxH1M36+DUsuiyH2adt2W0svgLGPqjLDl9Pp5fj1ggbwfcgtI3G
 aeLEavNbPiX+0d2tgWNjcuqUX003BtKfT72XaE8wR3d2LGvKckeeQEFyApEQWrNLYcOUdjVg9mN
 5ihxKl/mqqvG5G8lfnijhguEH7HeDPsaY30comi1mqNHnUqqhTSb4k6tQOYmpBErlEw8lRTX97w
 OTpK3K7MEJkoE2yrjEN4qygMsK3VQK1lepEGtDL5jEn6ZppoG40EjppQ==
X-Gm-Gg: ASbGncv8EWT9UQHqOvPw9gJrSizbB0EHoyUMvPpnNQuIhIf/jR1/4mi76VOVudOIn+R
 gDrxMRqGLs9wbw/wozVW42iKuCl6KDRL//t6+77X+It156sL+hVAfk9hEPYhkyIGO8GcIlsTyYm
 aCe+bDEAyT4P0JL4FKS7+hrWIXvDezGWVjRjebVJ/Og6Wp7VcOJlVjWTeTa3lBahsAeT3OFrnEq
 E2+2ifo24qqYO16ff5pDICp7xA7UmPcV+k/ZHxTL3o5vni70SFng9R91vTkzBm32On6cbP+CIVE
 eVZy2xPZMqnnmEPctho60wD5SHvwCSuUytI3dDeNPXcO
X-Received: by 2002:a05:6000:26d0:b0:3ca:ba4d:ef71 with SMTP id
 ffacd0b85a97d-3caba4df136mr9123523f8f.62.1756376215795; 
 Thu, 28 Aug 2025 03:16:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2XNld95zfpx8WQOhQ2WCBTntrUOlS042JWgWXiKm/73hOMN5cqLDFdzUy9zcHXli01bB+QQ==
X-Received: by 2002:a05:6000:26d0:b0:3ca:ba4d:ef71 with SMTP id
 ffacd0b85a97d-3caba4df136mr9123487f8f.62.1756376215253; 
 Thu, 28 Aug 2025 03:16:55 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3c711211cd3sm23804466f8f.40.2025.08.28.03.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 03:16:54 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Thu, 28 Aug 2025 13:16:32 +0300
Message-ID: <20250828101632.374605-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: oCaKeYq9BBpmrGj2SpukdvdHAi0Oh79nnpbTlK-bF08_1756376216
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756376218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JQs3plsdww5KIPefy/qyCbaIMlCKniyjtsdxcjVftN0=;
 b=ddhBBGnzOUDdbze6N+x9tEJ7jLFeVcxAqbviw2K00eWcKdaj2iRKyA4CT5g7c5lLXivO3l
 DGOea27UOsN2PBDw9pqOlA7dQhgBqw/kmVPHf5uJWTgK6JqNGSfnkSkDHFI+KsQvXphyqB
 wVlQiEj/PbrEo1VhcRK9fVryV82R4KQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ddhBBGnz
Subject: [Intel-wired-lan] [PATCH net v3] i40e: add devlink param to control
 VF MAC address limit
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

This patch introduces a new devlink runtime parameter that controls
the maximum number of MAC filters allowed per VF.

The parameter is an integer value. If set to a non-zero number, it is
used as a strict per-VF cap. If left at zero, the driver falls back to
the default limit calculated from the number of allocated VFs and
ports.

This makes the limit policy explicit and configurable by user space,
instead of being only driver internal logic.

Example command to enable per-vf mac limit:
 - devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
	value 12 \
	cmode runtime

- Previous discussion about this change:
  https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com

Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for every trusted VF")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 Documentation/networking/devlink/i40e.rst     | 35 ++++++++++++
 drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 55 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 28 ++++++----
 4 files changed, 110 insertions(+), 12 deletions(-)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index d3cb5bb5197e..6ccd7501491a 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -7,6 +7,41 @@ i40e devlink support
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
+      - Controls the maximum number of MAC addresses a **trusted VF** can use
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
+        - MAC filters are a **shared hardware resource** across all VFs.
+          Setting a high value may cause other VFs to be starved of filters.
+
+        - This value is a **theoretical maximum**. The hardware may return
+          errors when its absolute limit is reached, regardless of the value
+          set here.
+
+        - Only **trusted VFs** are affected; untrusted VFs use a fixed small
+          limit.
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
index cc4e9e2addb7..9c7476abc6a2 100644
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
@@ -165,7 +201,18 @@ void i40e_free_pf(struct i40e_pf *pf)
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
@@ -176,7 +223,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
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
index 081a4526a2f0..e6d90d51221b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2935,19 +2935,26 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
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
+	 *   If set its value is used as a strict cap.
+	 *   Note:
+	 *    even when overridden, this is a theoretical maximum; hardware
+	 *    may reject additional MACs if the absolute HW limit is reached.
 	 */
-	if (!vf_trusted)
+	if (!vf_trusted) {
 		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
-	else
+	} else {
 		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
+		if (pf->max_mac_per_vf > 0)
+			mac_add_max = pf->max_mac_per_vf;
+	}
 
 	/* VF can replace all its filters in one step, in this case mac_add_max
 	 * will be added as active and another mac_add_max will be in
@@ -2961,7 +2968,8 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
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

