Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BB6B327F9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Aug 2025 11:50:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F89F81177;
	Sat, 23 Aug 2025 09:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ArnvG0WPgOoD; Sat, 23 Aug 2025 09:50:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36076811E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755942607;
	bh=Fo/miEf2OgY1EZA/2dSe8LFLeCSjwJj43g1evMg5bzg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zw5ZdaXZJyzZOn8yEFpYbDWT3YpQvwNB6Ts4R+xQXRk1GC+R3JU7rcln37m0a8WaH
	 c5hyl+82nQjiBjB6dJSlbniVfHqArioDA353BglB3e1E2u7nCWX4b4Kzlejp/93lOI
	 LoXGNxUaEZZuiMbto9FGOMJ+g86CFBFcfCsSrj/QNaAqD25wzXHxgmKvUwHyXm0NWt
	 nRJnpWOfWKCLhAsxkeblCv72NwiLEemXjrZ1ngGvUEdMW8OX6w+P415SLCMBqsBijt
	 /wFvKFqrePLQ6hxDG70oA4Eds6J8YInn4os6fW6yoLlY2FiGKnjz/FG7bNPq/9zgqr
	 WiviByYMM/Zew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36076811E2;
	Sat, 23 Aug 2025 09:50:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A11219C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 09:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BC9D41380
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 09:50:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gW_drM3cyBT5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Aug 2025 09:50:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 64D1741370
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64D1741370
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64D1741370
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 09:50:03 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-116-EG64afOfOyaQF4jKBcPoZg-1; Sat, 23 Aug 2025 05:50:00 -0400
X-MC-Unique: EG64afOfOyaQF4jKBcPoZg-1
X-Mimecast-MFC-AGG-ID: EG64afOfOyaQF4jKBcPoZg_1755942600
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3c79f0a6050so144323f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Aug 2025 02:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755942599; x=1756547399;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Fo/miEf2OgY1EZA/2dSe8LFLeCSjwJj43g1evMg5bzg=;
 b=oG5GHyP+0DwmrHjng5bnr0+5y+1XBrVnGE2YCvouXEGmYGUQDDckgshxy/eklpOh+1
 Qj2fepn4jzOo482lHgSrObUR2YJcwETXDyeHQHN71WlAzuemO0yosPqynh1yZb6be3nh
 3lT3Wk3EIMSQqQaloMyGs9Quu6EFuuy8GmAy7sI4vKu3cxi0Grhc4DP/pDf+wv5kifa/
 2wQxNcsyYPCCvqVo+Ka/qXbaV3BrzftpFSDr4oz7RhZeKS0FlDdPjtzkDOef3ZYyUfto
 IKpusnjSJW65WjvFL3FetRm+inDZhX5Sjiuoy+J6zZhaEmuFX58NzLPnhLAPvsYEY7Bk
 NNwg==
X-Gm-Message-State: AOJu0YxXxVNel/qfxy/7Mp9Rp/GvqWvYbsA3+NvA9nPkQ+4L6IIh5tOe
 PPnaOlGdKHVZAsKkt7qAQfW1v/DrvpJZt4dsNH+WCj8Anz4edQTsz+/skXcxIrcfsaWpnihdf1S
 8ZU5bcF1hg4GsaaRe/xmwTmIisD8Ps6juUA7PzwTrDM1MMFlzlHka33XoRkcZee0tIVds+E6VXf
 hm3JWtZozTG0bzKiDFehqwWmdlzAjjoZWJmVt3rH998BghNmxgsMQ+0w==
X-Gm-Gg: ASbGncs2XaSB6Tx295r0pNV/7ZwoLOXSfu/Wju5sNJ1+DkLfD4S0IHgV+OrLBvpZfZX
 Zbdkx6XSo18cDXeptLzCg26C1cofj7thC4AQhSw+t3ooSs5XXvHynoqZOKYOqrHjzrCL8S/PhbK
 5VN3DC1SaFQSPLy/wuGjOIfJLmi86ZwQBRO4Ku+zP/sQBp8X55NXSV0lnspXmLOvrdAWqRhdrqJ
 nY/kJiOKvV2hmKL/g26WUUmnYUTXcocJnH5ppyJKW/knnCMd+ourWp73Vza+l3iexoN8/ojEo6X
 bYc+sB7ps/68HXZlxByxhvybRbbr/zdLjAJORC37Dft8
X-Received: by 2002:a05:6000:400e:b0:3bf:2c26:eb73 with SMTP id
 ffacd0b85a97d-3c5dac1a04cmr3908059f8f.17.1755942599198; 
 Sat, 23 Aug 2025 02:49:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF07xsOTcHl9o3bduUDPzLZSCoLilgEFoC01Yv7/kmt5q/uC3uHCdbpQFaZeDyVt2WwzJLbcw==
X-Received: by 2002:a05:6000:400e:b0:3bf:2c26:eb73 with SMTP id
 ffacd0b85a97d-3c5dac1a04cmr3908034f8f.17.1755942598638; 
 Sat, 23 Aug 2025 02:49:58 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3c70eb7ef1esm2889084f8f.19.2025.08.23.02.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Aug 2025 02:49:58 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Sat, 23 Aug 2025 12:49:52 +0300
Message-ID: <20250823094952.182181-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: q1qqtxTsmKWNxk14_q1Z7zxECaCR0s7KI7MwtKYqiOM_1755942600
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755942602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Fo/miEf2OgY1EZA/2dSe8LFLeCSjwJj43g1evMg5bzg=;
 b=SKIZpo6MQouaY/8eDLPNmSpNyPnYa99dZRwq4ggGJaoIPyK9lkugBJczadH5Ho3k4YbzqL
 ZaPrzWQYewMWKg5xNmIEfynjdrWdeBIiyiLLNgdgRuNEBSNqfuQqDPGbdJ5OV65eYKMkoc
 v85LLIxFcvgytonT458QPoQZ/9ZvUew=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=SKIZpo6M
Subject: [Intel-wired-lan] [PATCH net v2] i40e: add devlink param to control
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
 Documentation/networking/devlink/i40e.rst     | 22 ++++++++
 drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 56 ++++++++++++++++++-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++----
 4 files changed, 95 insertions(+), 12 deletions(-)

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
index d3cb5bb5197e..f8d5b00bb51d 100644
--- a/Documentation/networking/devlink/i40e.rst
+++ b/Documentation/networking/devlink/i40e.rst
@@ -7,6 +7,28 @@ i40e devlink support
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
+      - Controls the maximum number of MAC addresses a VF can use on i40e devices.
+
+        By default (``0``), the driver enforces its internally calculated per-VF
+        MAC filter limit, which is based on the number of allocated VFS.
+
+        If set to a non-zero value, this parameter acts as a strict cap:
+        the driver enforces the maximum of the user-provided value and ignore
+        internally calculated limit.
+
+        The default value is ``0``.
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
index 081a4526a2f0..e7c0c791eed1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2935,19 +2935,23 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
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
@@ -2961,7 +2965,8 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
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
2.47.3

