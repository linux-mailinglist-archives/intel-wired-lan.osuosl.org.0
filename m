Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F657CDBD8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 14:36:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4CA361494;
	Wed, 18 Oct 2023 12:36:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4CA361494
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697632575;
	bh=Hxlcfus5Nr2po/6f6cqYbptOqAK69EQ5tiaMD881S5k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cbk7hg+RJ7gXtBKC/Wu3cbdD0fNu8yY5nNjePZSpNVS6lnh6YLEqld1K/wrlzwmyf
	 PWDQ/ZYspQcRyrbT1gTet/Y6j1WQ1zWFxrvO2uzhoE3qg3qXEbAMZqsocmv0b9s4Z3
	 9VOaakMrEsFM8Lh37LXUivEYueIokWpVwYzauVNCppJ9o2t03AvX735WTaxvMjgr6L
	 o10u6G1NNrlyKuo0D7DRIWo6Qg1yWnQmgLIbbJwo3WZN2C50QtAPKR/mhEhGvzNBXu
	 aDFmtR2ioubxQ6qLTXIfohThkD1+jOtqbgtfsA1UdRJNfSItV9+KLybri+YxosEK8h
	 WEY+5s+6n/gWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Ysg7KakuAiB; Wed, 18 Oct 2023 12:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40A4660AB1;
	Wed, 18 Oct 2023 12:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40A4660AB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A20B61BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 12:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85EFA8233F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 12:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85EFA8233F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bH-ouoohrIGd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 12:36:07 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CF2B82332
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 12:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CF2B82332
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-29pT3JhJOnSXy1dqd0TGlA-1; Wed, 18 Oct 2023 08:36:02 -0400
X-MC-Unique: 29pT3JhJOnSXy1dqd0TGlA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0D7B1C05AB2;
 Wed, 18 Oct 2023 12:36:01 +0000 (UTC)
Received: from p1.luc.com (unknown [10.45.226.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E48A2166B26;
 Wed, 18 Oct 2023 12:35:58 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Oct 2023 14:35:55 +0200
Message-ID: <20231018123558.552453-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697632566;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=aPx8egapRZzyiG5lm1UPqh0dzOQ1EzfFBnJkY2r5zdM=;
 b=MIqKNmSLxoO5MLLa+L7P0IMtoJbvWD0DNyv1pQ27wA5Ao7G+OiYrcy0ZVv7erACO1NpFzk
 Kaumg8Gtg0xBs8UV6dhOQU1zuF4vqvvKJVM4alC5/ngfTVQ8d4EnIFUdspmGJy3oSJrh11
 ANzzSDmfgXecYT4Ia1Zfjf/QYxt43os=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MIqKNmSL
Subject: [Intel-wired-lan] [PATCH net-next] i40e: Align devlink info
 versions with ice driver and add docs
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
Cc: Jiri Pirko <jiri@resnulli.us>, Jonathan Corbet <corbet@lwn.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Align devlink info versions with ice driver so change 'fw.mgmt'
version to be 2-digit version [major.minor], add 'fw.mgmt.build'
that reports mgmt firmware build number and use '"fw.psid.api'
for NVM format version instead of incorrect '"fw.psid'.
Additionally add missing i40e devlink documentation.

Fixes: 5a423552e0d9 ("i40e: Add handler for devlink .info_get")
Cc: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 Documentation/networking/devlink/i40e.rst     | 59 +++++++++++++++++++
 Documentation/networking/devlink/index.rst    |  1 +
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 18 +++++-
 3 files changed, 75 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/networking/devlink/i40e.rst

diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
new file mode 100644
index 000000000000..d3cb5bb5197e
--- /dev/null
+++ b/Documentation/networking/devlink/i40e.rst
@@ -0,0 +1,59 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================
+i40e devlink support
+====================
+
+This document describes the devlink features implemented by the ``i40e``
+device driver.
+
+Info versions
+=============
+
+The ``i40e`` driver reports the following versions
+
+.. list-table:: devlink info versions implemented
+    :widths: 5 5 5 90
+
+    * - Name
+      - Type
+      - Example
+      - Description
+    * - ``board.id``
+      - fixed
+      - K15190-000
+      - The Product Board Assembly (PBA) identifier of the board.
+    * - ``fw.mgmt``
+      - running
+      - 9.130
+      - 2-digit version number of the management firmware that controls the
+        PHY, link, etc.
+    * - ``fw.mgmt.api``
+      - running
+      - 1.15
+      - 2-digit version number of the API exported over the AdminQ by the
+        management firmware. Used by the driver to identify what commands
+        are supported.
+    * - ``fw.mgmt.build``
+      - running
+      - 73618
+      - Build number of the source for the management firmware.
+    * - ``fw.undi``
+      - running
+      - 1.3429.0
+      - Version of the Option ROM containing the UEFI driver. The version is
+        reported in ``major.minor.patch`` format. The major version is
+        incremented whenever a major breaking change occurs, or when the
+        minor version would overflow. The minor version is incremented for
+        non-breaking changes and reset to 1 when the major version is
+        incremented. The patch version is normally 0 but is incremented when
+        a fix is delivered as a patch against an older base Option ROM.
+    * - ``fw.psid.api``
+      - running
+      - 9.30
+      - Version defining the format of the flash contents.
+    * - ``fw.bundle_id``
+      - running
+      - 0x8000e5f3
+      - Unique identifier of the firmware image file that was loaded onto
+        the device. Also referred to as the EETRACK identifier of the NVM.
diff --git a/Documentation/networking/devlink/index.rst b/Documentation/networking/devlink/index.rst
index b49749e2b9a6..2b78060aaa58 100644
--- a/Documentation/networking/devlink/index.rst
+++ b/Documentation/networking/devlink/index.rst
@@ -52,6 +52,7 @@ parameters, info versions, and other features it supports.
    bnxt
    etas_es58x
    hns3
+   i40e
    ionic
    ice
    mlx4
diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index 9168ade8da47..74bc111b4849 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -18,8 +18,14 @@ static void i40e_info_fw_mgmt(struct i40e_hw *hw, char *buf, size_t len)
 {
 	struct i40e_adminq_info *aq = &hw->aq;
 
-	snprintf(buf, len, "%u.%u.%05d",
-		 aq->fw_maj_ver, aq->fw_min_ver, aq->fw_build);
+	snprintf(buf, len, "%u.%u", aq->fw_maj_ver, aq->fw_min_ver);
+}
+
+static void i40e_info_fw_mgmt_build(struct i40e_hw *hw, char *buf, size_t len)
+{
+	struct i40e_adminq_info *aq = &hw->aq;
+
+	snprintf(buf, len, "%05d", aq->fw_build);
 }
 
 static void i40e_info_fw_api(struct i40e_hw *hw, char *buf, size_t len)
@@ -77,6 +83,12 @@ static int i40e_devlink_info_get(struct devlink *dl,
 	if (err)
 		return err;
 
+	i40e_info_fw_mgmt_build(hw, buf, sizeof(buf));
+	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
+				    "fw.mgmt.build", buf);
+	if (err)
+		return err;
+
 	i40e_info_fw_api(hw, buf, sizeof(buf));
 	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
 				    DEVLINK_INFO_VERSION_GENERIC_FW_MGMT_API,
@@ -86,7 +98,7 @@ static int i40e_devlink_info_get(struct devlink *dl,
 
 	i40e_info_nvm_ver(hw, buf, sizeof(buf));
 	err = i40e_devlink_info_put(req, I40E_DL_VERSION_RUNNING,
-				    DEVLINK_INFO_VERSION_GENERIC_FW_PSID, buf);
+				    "fw.psid.api", buf);
 	if (err)
 		return err;
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
