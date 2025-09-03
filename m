Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C12BB41779
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 09:59:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEE17848D2;
	Wed,  3 Sep 2025 07:59:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8OIIsR_3wmSB; Wed,  3 Sep 2025 07:59:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96C21848D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756886339;
	bh=oNKb6p6pocOW/C+6sxZfv3rhI5CAgcckWlo3n+yWenA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=04Hzu6KyxjecPh6NWdHlror+WViJDawbkEcxULvEBvSRLgWnwMBQGemmGnkDgLiZc
	 8eM5beN5KBmBxFyTTv9x3UZAEg0mEt4JrOyxI2eTglJ0Le+ZzvxVQiX6MSoy2Dk0tI
	 A+41E6rr6xn0uKgCKmJjjwedJveDw9pJdjjQpwUaR9WV+kMdYoFS9+DXXORLxoAIUT
	 +id7PXnshnPaVUfEXGL4+p1+gnHErHvI2uf86LoLMBIswntue3/jCsyNAXeX8pg0qR
	 k1be9GnrsT3GtUb2xxRPgGCvXGPFHDT3mcLTVsuvMb85m2lj9XMT8zUYVSapoYn/kB
	 OAnF1d8Uni5pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96C21848D3;
	Wed,  3 Sep 2025 07:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 29CF110E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0AB2848C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:58:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYaXnjtbEbxU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 07:58:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 92DA9848D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92DA9848D2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92DA9848D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:58:56 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-255-R94Q2BiENGinoAYnX1QqwQ-1; Wed, 03 Sep 2025 03:58:53 -0400
X-MC-Unique: R94Q2BiENGinoAYnX1QqwQ-1
X-Mimecast-MFC-AGG-ID: R94Q2BiENGinoAYnX1QqwQ_1756886333
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-45b8f4c2f7fso21082015e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 00:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756886332; x=1757491132;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oNKb6p6pocOW/C+6sxZfv3rhI5CAgcckWlo3n+yWenA=;
 b=X5cE2TcdptQBlSjx4+kk67Uy9eynjDEHXqgaO0sEsG+cHREoJ/zc7/wemadb5DHQX7
 8J079ROW6SoXW7vnugfxiH99b15O98jkQ87bW1yQHYJl97cDu5yZVJ0ngEPq23laoMdc
 ufg20PBnnjGeQOjn87j0Nc8o5Du6IIpWQx9WmphwHPEuJc+UtqPyS4SvIlae2IsM1I0j
 6MBKvZucDoJTrpvris2eVGK1QS9POIoIdWdVD6SOM2ziP+K033YDAQqTpWDTL/K1x1nm
 sOj5aYMD+hsQA/QKCjMqWhod3V6a27a8hAzhSYegAhaPlq3ZqjJ7rU26PPMG3zuF5sqd
 8pCw==
X-Gm-Message-State: AOJu0Yw3Z+VEth3mwmAis5ZWwQPevAp+msZHa+wCxSf9cTyex4lMcYOc
 CHKL1um6Q7CBZj/mv87p79kPeJy0gGLrfwElaJLf1Xep4ZGCFEMewf4VHvuW1TtBVdFKCsymh0L
 ZJ9IpzwUZF3Us0jrTqi3W2G77xaxWO37uzDl/TaIJZhCYqZFjOX8gGobeoHXSLkwfIDIcyy5egI
 pTHo+IEtHgnWMjcsxKewVjgeFGixmfOdjLXLJybL8AURvDjhqmU7GBNv8u
X-Gm-Gg: ASbGncsgvezxXivZeAkre4v2n4YCxHvzWX/aUIsnf3mM65fmmAC8KkGLbUgdw0ez44S
 DwjqI3cirDJiultRtBz/34nOxwTXM3J3DZMYVh+lrBXJ93F0v6tzzDMFyUEdDj1yTAg+QYyQd7T
 myZ7Dt0KPlqYd+D1Pdf7dK/mgYfpHMc6WHmZdiyrpiOsiy05zhDQqQ5ctyaNzmjyQeExHm/u1pZ
 3x0Xl7R+Vk/7G7lXPBZEUk0m3Dn/tRmmBN1dn05Us7VEPzIcJ5tFx0CKY513lMNKgTu4kruaqp6
 Q63HJ8WDIsluQt5Q6+vHeMK+8s5kC+IDveBK4jfh2jHa
X-Received: by 2002:a05:600c:4204:b0:45c:b56c:4194 with SMTP id
 5b1f17b1804b1-45cb56c430bmr6930115e9.2.1756886332305; 
 Wed, 03 Sep 2025 00:58:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhF7d2mK3/iUK2rDy/VY/BcvmzRewCiZbFnuHo3JdB4WYHablU5vS5ClBtKdJRMfXhTEY9/Q==
X-Received: by 2002:a05:600c:4204:b0:45c:b56c:4194 with SMTP id
 5b1f17b1804b1-45cb56c430bmr6929865e9.2.1756886331743; 
 Wed, 03 Sep 2025 00:58:51 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3decf936324sm1002477f8f.9.2025.09.03.00.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Sep 2025 00:58:51 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Wed,  3 Sep 2025 10:58:10 +0300
Message-ID: <20250903075810.17149-2-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250903075810.17149-1-mheib@redhat.com>
References: <20250903075810.17149-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Tf7KNREM1peFheBNBspVIhu3Jm7RzVtFuc0fgB4nFkk_1756886333
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756886335;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oNKb6p6pocOW/C+6sxZfv3rhI5CAgcckWlo3n+yWenA=;
 b=hURLargnJv0vc+psxNH5jsB2pMV3RzEsUbx56rGO9ekTTOeFEfHeR3nJuO72Q6wVSXzaub
 a475h+t9NuRaID6br6AHEUT+QtV+wfPzZt1NhglMBdle4W8QSKxbHXnYJXoWXJFBPs/31n
 HVL8V1B0PnxbgEJ3K3j957eNy+zLqas=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=hURLargn
Subject: [Intel-wired-lan] [PATCH net-next,
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

Add support for the new generic devlink runtime parameter
"max_mac_per_vf", which controls the maximum number of MAC addresses
a trusted VF can use.

By default (value 0), the driver enforces its internally calculated
per-VF MAC filter limit. A non-zero value acts as a strict cap,
overriding the internal calculation.

Please note that the configured value is only a theoretical maximum
and a hardware limits may still apply.

- Previous discussion about this change:
  https://lore.kernel.org/netdev/20250805134042.2604897-1-dhill@redhat.com
  https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.com

Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 Documentation/networking/devlink/i40e.rst     | 35 ++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 48 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 28 +++++++----
 4 files changed, 103 insertions(+), 12 deletions(-)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index d3cb5bb5197e..3052f638fdd5 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -7,6 +7,41 @@ i40e devlink support
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
index cc4e9e2addb7..cd01e35da94e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -5,6 +5,35 @@
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
@@ -165,7 +194,18 @@ void i40e_free_pf(struct i40e_pf *pf)
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
@@ -176,7 +216,11 @@ void i40e_devlink_register(struct i40e_pf *pf)
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

