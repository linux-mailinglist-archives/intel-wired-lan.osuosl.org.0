Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE74B42962
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 21:02:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B1BD4117E;
	Wed,  3 Sep 2025 19:02:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UlKp87-MV5i7; Wed,  3 Sep 2025 19:02:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 053FF41180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756926172;
	bh=vuj6/ynYvZNCMQC+NtWMjW82+TVK2toqfMK12UBW0wg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V8b5RlCd4xLRTsUSWU5pQ12vDGEzlfoMhRW6D1hWpecT6iQmyQHU6MIyBl5CxeMeX
	 LjGDG3uDaGsfLswPlZfM+LfDELZ28oYPIFuooKVvqsN8Ox6bFF8+s896e67omdgmPz
	 zV1RznLTeGUwQ05pe9etURcMzFmLvZ7WAw2/YYNCxomnFM+ip7d7fYUgehOhmzAtj7
	 Z6NwYgDSCl3ntm/H8HJB+xbg1InuKEMr+n4vQxEeqwo4/trGxi6DQ2iQTetx5DPWdo
	 LzdvBVUWKWe0J9AOIs3fzIyclywLDyNlcimMR2x+zZMqYHtTHmqHHUwe1hyQkSEPTb
	 gQwVSq9uPsd3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 053FF41180;
	Wed,  3 Sep 2025 19:02:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 77B1E111
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69429845C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fWpDaGW5h1SU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 19:02:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48E6084577
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48E6084577
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48E6084577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:02:49 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-612-lWo_t4efN_S1XDRKlhv8nw-1; Wed, 03 Sep 2025 15:02:46 -0400
X-MC-Unique: lWo_t4efN_S1XDRKlhv8nw-1
X-Mimecast-MFC-AGG-ID: lWo_t4efN_S1XDRKlhv8nw_1756926165
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-45b467f5173so1986585e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 12:02:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756926165; x=1757530965;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vuj6/ynYvZNCMQC+NtWMjW82+TVK2toqfMK12UBW0wg=;
 b=O38GrG3N/gTOWqG9lto3tz4hf1rpUo0cdO3WjRVNBDfbRwzBI/9DdXndV6yX5UOITg
 V6t1onqsINtw+4WSM0K4n82vYm8QyOIiR6qAX8Lw/KQlDdKiMX/uacjcDNLb2iNfGMh7
 BKo722LEZdrqb2BsJNDUY53PdkGR6Nu5R1uiD7hQbhSgrJvgBIxrxp1NRHpcmK8SbPzk
 MXRShox2xG8afODI0Gc8Rc4pCpf8EtgmzkyfkQeDxIux0cIC4xe3N5C9KBTzZRZ1oqiq
 bTxgLRuQkxOpBXHpOR0f5KkoidketXKXi6ShdgBAoN9fjg865oh4/6w35vLhm407+L6d
 uWqg==
X-Gm-Message-State: AOJu0YxCNEpx0gnsvnPHxRBKrS5Vj/9gVDyR9Lp/n4BrOPa6i0TIcRTz
 Z94QFJSvhIlcGn+oOul9sfWyeKTZo6Om+RAT3MF3AsBDurSp6VopgQPZwoqc80iWdGsqW/tF4fJ
 0kSiELNgV7Dq66hIMv9jUrYI8RlTptoXQZPgP0lTQKi/ZgPwKJUwYLaCP4O/GW23Iy0CDJuySQg
 zH/cnBNboezmXte+byUWPFo8IzaqpaDFFuylNz1090NOCPfp4I7uJo0wo1
X-Gm-Gg: ASbGnctJO6U50nQn35LPtXHu/cCD+fENG2FtG0fY8TRKBBqQp3UVPi3mCOiOf6ZQo+S
 9gmdBpLGKtgwJ2cLHyDW3+8Atu5aQEO7k0XWXqjm7pI/Y45DlKnR7Vy3kjad1b8zC6K7faE2VwQ
 bAUCAdeAVmhPaI7xzn5POdh8kNw05p39A9h+bbClU0Uapg+y2IOVfDExhrWbB2o1B7vVHIgxJJ6
 pIOkx3umgNikBqPjWaBoObxWgH3o+h/UnA7VAsU1OT/R6zh0c+yv5B51rQe6WU8wI4yPed+pXwr
 +KjwzO/lrSUTK1BYgr90bpggJz3odh65kv6Wa+HnkH0HbTQ=
X-Received: by 2002:a05:600c:4ed3:b0:45c:b549:2241 with SMTP id
 5b1f17b1804b1-45cb54923d6mr26593425e9.27.1756926164961; 
 Wed, 03 Sep 2025 12:02:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLGfe6sRBehSXUl814xMt0UzzbnzlGvmUMrebVIF41OwNzF4h3DaViA7EblSEd/J7Ia4fNPg==
X-Received: by 2002:a05:600c:4ed3:b0:45c:b549:2241 with SMTP id
 5b1f17b1804b1-45cb54923d6mr26593155e9.27.1756926164395; 
 Wed, 03 Sep 2025 12:02:44 -0700 (PDT)
Received: from fedora.redhat.com ([2001:4df4:5814:7700:7fb2:f956:4fb9:7689])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45b6f0c6b99sm331978655e9.4.2025.09.03.12.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Sep 2025 12:02:44 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Wed,  3 Sep 2025 22:02:29 +0300
Message-ID: <20250903190229.49193-2-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250903190229.49193-1-mheib@redhat.com>
References: <20250903190229.49193-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yQV_gf2lZQ_lNcNTlr5xPYKTeL0Uc7zS7QmK0R5Ogbw_1756926165
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756926168;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vuj6/ynYvZNCMQC+NtWMjW82+TVK2toqfMK12UBW0wg=;
 b=SrA2sTv8My4mLx4goI+FmWJQhP7cIGGEk+o5ihPR8arXh/hGb0HLO1Ply0bt6Gjf69tgjH
 gZ+EGaJqJsiX4iC4yGs3yNpxDAaHpgpAuvqoRrdB9qpqmhLBJjyxmNTTdRAoLwn1JhpbmW
 +IMAeiaLRbAky+Yh8vPbEOeYcXpIBHY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SrA2sTv8
Subject: [Intel-wired-lan] [PATCH net-next, v2,
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
"max_mac_per_vf". On i40e, the parameter affects only trusted VFs. It
provides administrators with a way to cap the number of MAC addresses a
VF can use:

- When the parameter is set to 0 (default), the driver continues to use
  its internally calculated limit.

- When set to a non-zero value, the driver applies this value as a strict
  cap for trusted VFs, overriding the internal calculation.

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

