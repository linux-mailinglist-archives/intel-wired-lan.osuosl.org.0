Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB5EAD95F9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2076780DC4;
	Fri, 13 Jun 2025 20:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtI6-hIm4zif; Fri, 13 Jun 2025 20:13:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3540C80E2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749845589;
	bh=5lfy72LH0htxwhqrSh8UlmBdegq0R8vP0d6PWET8aHk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K5o9kwBSB630xoQB+ia8T/vk/alMhKkLXUgQZ8p3mJRXI1AGCuclP1W0SRs2FTgNL
	 HFYjVLNP5MjiOG6v4ZkUg18GMEiHxKXjgzdXQnUGAfrN46pMf91iBRekM4WdkLIrFf
	 RDL4B01b+XOKRPCnIpdslXibITI4Meen0VTmcwkFprvyjXJrI88I9UbDC7rP6OM8+J
	 AzCGXWbqASQnbuz+6zpf2guVu/40G/OO6XFWNOIArPAjnT2k1Qqt8iH+wildb+yMWF
	 bCupKLsQLCf13H4OzNnNmz7TeF7ZmY6IebtobkZsheqhXBwe8kGYEqkzAnx/Ugc3U3
	 UpNPYgBXJbIog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3540C80E2A;
	Fri, 13 Jun 2025 20:13:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AEE581BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9498240886
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tVtinJLkb9Xh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:13:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D44B440865
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D44B440865
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D44B440865
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:13:06 +0000 (UTC)
X-CSE-ConnectionGUID: imekZUBPS8mtUl+XV7G4yA==
X-CSE-MsgGUID: YcmNPG0pRWGlTX46cFwcIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="51300366"
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="51300366"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 13:13:06 -0700
X-CSE-ConnectionGUID: iGHrCEd8QQ20RP7NI/HsGQ==
X-CSE-MsgGUID: zgLMRYcWR22PpLZ0xY0eGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="148456815"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa007.jf.intel.com with ESMTP; 13 Jun 2025 13:13:02 -0700
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
Date: Fri, 13 Jun 2025 22:06:53 +0200
Message-Id: <20250613200655.1712561-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250613200655.1712561-1-arkadiusz.kubalewski@intel.com>
References: <20250613200655.1712561-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749845587; x=1781381587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IL8zXRKFiY/DlUuvxUFWc0pYnLdCx+8hFEqyN32gtCQ=;
 b=OTAdki5+z+5zDLsbAN5hcHpqL5BS1Sn1ZsxZytF1gu6z8nbB5fdIg9f1
 TIVvI9CcbjLs3xzoFkiHI6VwEMM7iNE6CN8En9O7jba0CV0pM5LjMhd9Z
 bNWorqhEz0Ry2YaDPol2403muq9ctvtdhZQsQDqvWgYqJA9sxS1X5shP3
 I/dECScu2hbxsGtv/5zdPgHxECnNNOmraisyu5Oj4pQyM6lzk4WUzXh0q
 0Y4b1eoTz26oCHhsk2LmyBvpwhN2u/ADUilE+vSjHs8LdPm73xnmq+n9N
 /rOtd94Ff0QEWmGcJtigPF+xLN10ehSxatNrKCkODEJLg2DWHrtoYiSYM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OTAdki5+
Subject: [Intel-wired-lan] [PATCH net-next v6 1/3] dpll: add reference-sync
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
v6:
- rebase,
- 'dpll' -> 'DPLL'.
---
 Documentation/driver-api/dpll.rst     | 25 +++++++++++++++++++++++++
 Documentation/netlink/specs/dpll.yaml | 19 +++++++++++++++++++
 drivers/dpll/dpll_nl.c                | 10 ++++++++--
 drivers/dpll/dpll_nl.h                |  1 +
 include/uapi/linux/dpll.h             |  1 +
 5 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index e6855cd37e85..f8cbe7c48f7f 100644
--- a/Documentation/driver-api/dpll.rst
+++ b/Documentation/driver-api/dpll.rst
@@ -235,6 +235,31 @@ the pin.
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
index 115d1a8f50bd..0072ae7aa39e 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -406,6 +406,15 @@ attribute-sets:
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
@@ -436,6 +445,14 @@ attribute-sets:
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
@@ -574,6 +591,7 @@ operations:
             - esync-frequency
             - esync-frequency-supported
             - esync-pulse
+            - reference-sync
 
       dump:
         request:
@@ -601,6 +619,7 @@ operations:
             - parent-pin
             - phase-adjust
             - esync-frequency
+            - reference-sync
     -
       name: pin-create-ntf
       doc: Notification about pin appearing
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index fe9b6893d261..d709a8dc304f 100644
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
@@ -62,7 +67,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
 };
 
 /* DPLL_CMD_PIN_SET - do */
-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY + 1] = {
+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_REFERENCE_SYNC + 1] = {
 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
@@ -72,6 +77,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY
 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
 	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
 	[DPLL_A_PIN_ESYNC_FREQUENCY] = { .type = NLA_U64, },
+	[DPLL_A_PIN_REFERENCE_SYNC] = NLA_POLICY_NESTED(dpll_reference_sync_nl_policy),
 };
 
 /* Ops table for dpll */
@@ -139,7 +145,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
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
index bf97d4b6d51f..f6cb6209566c 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -237,6 +237,7 @@ enum dpll_a_pin {
 	DPLL_A_PIN_ESYNC_FREQUENCY,
 	DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED,
 	DPLL_A_PIN_ESYNC_PULSE,
+	DPLL_A_PIN_REFERENCE_SYNC,
 
 	__DPLL_A_PIN_MAX,
 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
-- 
2.38.1

