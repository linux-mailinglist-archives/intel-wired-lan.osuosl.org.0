Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF7CAE9F92
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 15:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A44C660DDA;
	Thu, 26 Jun 2025 13:58:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jRqgCss4GnVQ; Thu, 26 Jun 2025 13:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0CF260DDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750946317;
	bh=Yk4FYwW9f35FIPZRX3RTOBLmluuAaypkd34u/kXpXpA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EdsKuanmgzmBYoqU7DSojoFnGwrC3qLuP0f987LtQoXHI0XfPXUPa3KSMn8Jx9bci
	 WGlul1qLKOlytuwwAfw8i/yb2a1NRZqfFF7usM47xmICV79UaQ7LySRrlsPgNTI49M
	 umsiPgC7DP0vFM8qdR7Q9/gMC4tF2PUTxdUOI7r0PCxth92pJQ5wAN21hbKDu1/+gD
	 XkHf1C3E4yjztt9NE1r/de/fxJu+ktNc7VBfPY1cw0KFj/C7nWjmU83GocGV2/Ic2s
	 lQBA9JFsrmKR9+OB2iSrIFuT3Ml9QCNBJYG1KEmG94dm4qTtjuZ8eJ/lSS7mpvebCj
	 PfZDmmuII+0mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0CF260DDC;
	Thu, 26 Jun 2025 13:58:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D26FC10A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B87E7606AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DemKGQ-fn1Yt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jun 2025 13:58:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 070F660DC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 070F660DC4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 070F660DC4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 13:58:34 +0000 (UTC)
X-CSE-ConnectionGUID: hUi+Ll8NTSWBY2kG+MQ1uw==
X-CSE-MsgGUID: x4YFRMlsQVajgMZi3RpypQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="40859226"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="40859226"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 06:58:34 -0700
X-CSE-ConnectionGUID: HnjEa716SPWbbbBzLdz5kA==
X-CSE-MsgGUID: BMjOhjiWSDaQmQ5CuRKZ1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158271318"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa005.jf.intel.com with ESMTP; 26 Jun 2025 06:58:30 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Milena Olech <milena.olech@intel.com>, Jiri Pirko <jiri@nvidia.com>
Date: Thu, 26 Jun 2025 15:52:17 +0200
Message-Id: <20250626135219.1769350-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
References: <20250626135219.1769350-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750946315; x=1782482315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YK7Ja48g3+NRPk2Wz7D8GF+qJkWjzk7HELyhopRlmoE=;
 b=I/VUx8rw3PU4AtdOlWCLPN6OFqv8GQzkfY6ESyAO2od9fR2YpFZeoRF/
 KDWP3pm/+zi8yJaegzVWMiu24v0kpPHRm56IB9Rc2G0XVFzUJue7MGFyL
 8eGHBuAdB/UrC3zs4N+FJ+5MrfN3fnkHrTduKYRNlraTBNldVLrjc2XKj
 xVXz0rNEr26tC8PXIhEH2drvP3NArDm8hjpfUDsMAHJ1dby1IW49iP8xF
 VjNljvaTz3VweW89F7MpgzfcH64eEsoULOzWBetEaY1Qhn5TZ0nAFPhHh
 WAeScTBvLuyrzzMQAgneqG6vMFrUIsov27GRUlep+4VIOROK4HXEI3M75
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/VUx8rw
Subject: [Intel-wired-lan] [PATCH net-next v7 1/3] dpll: add reference-sync
 netlink attribute
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

Add new netlink attribute to allow user space configuration of reference
sync pin pairs, where both pins are used to provide one clock signal
consisting of both: base frequency and sync signal.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v7:
- rebase.
---
 Documentation/driver-api/dpll.rst     | 25 +++++++++++++++++++++++++
 Documentation/netlink/specs/dpll.yaml | 19 +++++++++++++++++++
 drivers/dpll/dpll_nl.c                | 10 ++++++++--
 drivers/dpll/dpll_nl.h                |  1 +
 include/uapi/linux/dpll.h             |  1 +
 5 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index 195e1e5d9a58..eca72d9b9ed8 100644
--- a/Documentation/driver-api/dpll.rst
+++ b/Documentation/driver-api/dpll.rst
@@ -253,6 +253,31 @@ the pin.
   ``DPLL_A_PIN_ESYNC_PULSE``                pulse type of Embedded SYNC
   ========================================= =================================
 
+Reference SYNC
+==============
+
+The device may support the Reference SYNC feature, which allows the combination
+of two inputs into a input pair. In this configuration, clock signals
+from both inputs are used to synchronize the DPLL device. The higher frequency
+signal is utilized for the loop bandwidth of the DPLL, while the lower frequency
+signal is used to syntonize the output signal of the DPLL device. This feature
+enables the provision of a high-quality loop bandwidth signal from an external
+source.
+
+A capable input provides a list of inputs that can be bound with to create
+Reference SYNC. To control this feature, the user must request a desired
+state for a target pin: use ``DPLL_PIN_STATE_CONNECTED`` to enable or
+``DPLL_PIN_STATE_DISCONNECTED`` to disable the feature. An input pin can be
+bound to only one other pin at any given time.
+
+  ============================== ==========================================
+  ``DPLL_A_PIN_REFERENCE_SYNC``  nested attribute for providing info or
+                                 requesting configuration of the Reference
+                                 SYNC feature
+    ``DPLL_A_PIN_ID``            target pin id for Reference SYNC feature
+    ``DPLL_A_PIN_STATE``         state of Reference SYNC connection
+  ============================== ==========================================
+
 Configuration commands group
 ============================
 
diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 3bd6851c1d3c..33f7ea47c53e 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -428,6 +428,15 @@ attribute-sets:
         doc: |
           A ratio of high to low state of a SYNC signal pulse embedded
           into base clock frequency. Value is in percents.
+      -
+        name: reference-sync
+        type: nest
+        multi-attr: true
+        nested-attributes: reference-sync
+        doc: |
+          Capable pin provides list of pins that can be bound to create a
+          reference-sync pin pair.
+
   -
     name: pin-parent-device
     subset-of: pin
@@ -458,6 +467,14 @@ attribute-sets:
         name: frequency-min
       -
         name: frequency-max
+  -
+    name: reference-sync
+    subset-of: pin
+    attributes:
+      -
+        name: id
+      -
+        name: state
 
 operations:
   enum-name: dpll_cmd
@@ -598,6 +615,7 @@ operations:
             - esync-frequency
             - esync-frequency-supported
             - esync-pulse
+            - reference-sync
 
       dump:
         request:
@@ -625,6 +643,7 @@ operations:
             - parent-pin
             - phase-adjust
             - esync-frequency
+            - reference-sync
     -
       name: pin-create-ntf
       doc: Notification about pin appearing
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index 8de90310c3be..9f2efaf25268 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -24,6 +24,11 @@ const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1] = {
 	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
 };
 
+const struct nla_policy dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] = {
+	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
+	[DPLL_A_PIN_STATE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
+};
+
 /* DPLL_CMD_DEVICE_ID_GET - do */
 static const struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] = {
 	[DPLL_A_MODULE_NAME] = { .type = NLA_NUL_STRING, },
@@ -63,7 +68,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
 };
 
 /* DPLL_CMD_PIN_SET - do */
-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY + 1] = {
+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_REFERENCE_SYNC + 1] = {
 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
@@ -73,6 +78,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY
 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
 	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
 	[DPLL_A_PIN_ESYNC_FREQUENCY] = { .type = NLA_U64, },
+	[DPLL_A_PIN_REFERENCE_SYNC] = NLA_POLICY_NESTED(dpll_reference_sync_nl_policy),
 };
 
 /* Ops table for dpll */
@@ -140,7 +146,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
 		.doit		= dpll_nl_pin_set_doit,
 		.post_doit	= dpll_pin_post_doit,
 		.policy		= dpll_pin_set_nl_policy,
-		.maxattr	= DPLL_A_PIN_ESYNC_FREQUENCY,
+		.maxattr	= DPLL_A_PIN_REFERENCE_SYNC,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
 };
diff --git a/drivers/dpll/dpll_nl.h b/drivers/dpll/dpll_nl.h
index f491262bee4f..3da10cfe9a6e 100644
--- a/drivers/dpll/dpll_nl.h
+++ b/drivers/dpll/dpll_nl.h
@@ -14,6 +14,7 @@
 /* Common nested types */
 extern const struct nla_policy dpll_pin_parent_device_nl_policy[DPLL_A_PIN_PHASE_OFFSET + 1];
 extern const struct nla_policy dpll_pin_parent_pin_nl_policy[DPLL_A_PIN_STATE + 1];
+extern const struct nla_policy dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1];
 
 int dpll_lock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
 		   struct genl_info *info);
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index 349e1b3ca1ae..37b438ce8efc 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -249,6 +249,7 @@ enum dpll_a_pin {
 	DPLL_A_PIN_ESYNC_FREQUENCY,
 	DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED,
 	DPLL_A_PIN_ESYNC_PULSE,
+	DPLL_A_PIN_REFERENCE_SYNC,
 
 	__DPLL_A_PIN_MAX,
 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
-- 
2.38.1

