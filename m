Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51095A6C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 23:36:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E51264064A;
	Wed, 21 Aug 2024 21:36:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MvFUwc9J_Sz8; Wed, 21 Aug 2024 21:36:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3E974012E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724276211;
	bh=y9Tv9AteSz9ahQ3L73lGwkmdczVPv1b+s+DMKdCidPs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=shyJlwHDWk8WBf/K1BLMkIcu7/Qbzielk7xtV4OeHtow0EMVLAG44kNLY5d89Njth
	 EA6e2LuLaqPi+7mu2uhiVYYNnBe114OULUGh9xCOBVnZPdunwKwfnhIY2qN6/z719L
	 4hloiVjulOKopP1pz/Yk7qtdHxhY77QBvUdYe2974qN2QCeyZfUAeddxIhFnDUOK5+
	 EZGS2cGUr16x/fG0/lnXlt2KOM9NcGKmN+PjcNnqY/iAT22SU+BxR1eMQWGsK711s9
	 X1f0dsD61ljZY5118VthrK98cxxM4Un0ZVmwRgOQ2U3OLRij8+K2uV8p/lixTqCwTR
	 pOr7bUQlNhA3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3E974012E;
	Wed, 21 Aug 2024 21:36:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 694791BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56836605C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s2YShQFlyXs5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 21:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 36FC76084E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36FC76084E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36FC76084E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:36:48 +0000 (UTC)
X-CSE-ConnectionGUID: qR07F1irTIarVGWXAUBxSg==
X-CSE-MsgGUID: 2Fq1yVAmRz6eXRd3A3m6Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="34083826"
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; d="scan'208";a="34083826"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 14:36:43 -0700
X-CSE-ConnectionGUID: mMoA15i/RwS0Ps/fc05nGw==
X-CSE-MsgGUID: hp4ldIsqRTCQ3Nf+AXXdpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; d="scan'208";a="98724634"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 21 Aug 2024 14:36:39 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 21 Aug 2024 23:32:17 +0200
Message-Id: <20240821213218.232900-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240821213218.232900-1-arkadiusz.kubalewski@intel.com>
References: <20240821213218.232900-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724276208; x=1755812208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3LcPF2JX+VvBnDLA2lmHNxRfMaBbZS4ywDKYW95iC8s=;
 b=Bj5TVm8cERRwFAaC1R+kecSdLarTIG1022noxJu/uNEm7IW78TrkAzpQ
 WkkxTBq0isp1BlmvE69PgrURaltJ8uwMTt3prQBGknQTncxm3qYmO75/b
 eYkdQR2A+95Y5aDPpphc3QOkt3e9TLmh0vmKDuvoVsMUHBctZ19cnC9UM
 e9PwJY1nAoN2gfvOwP4g4iXUxFRIONKwUP9MGACnhmnTBvGgyc0q9DvZJ
 a9LB5HxQDYpABkIxCxRqoV6McYkP2xMw2Tjy71qTEWdU4OLCHXMl2RXCK
 eTAoN5lEGDp3XrPQI54fAXy6X0VKd6fhc+zYAPdEtD+PGu0fmH9jbKim+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bj5TVm8c
Subject: [Intel-wired-lan] [PATCH net-next v2 1/2] dpll: add Embedded SYNC
 feature for a pin
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
Cc: jiri@resnulli.us, corbet@lwn.net, przemyslaw.kitszel@intel.com,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement and document new pin attributes for providing Embedded SYNC
capabilities to the DPLL subsystem users through a netlink pin-get
do/dump messages. Allow the user to set Embedded SYNC frequency with
pin-set do netlink message.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- remove enum for pulse-ratio, instead use plain u32 value,
- provide e-sync-frequency attribute and value only if esync was
  enabled,
- rename: e_sync/E_SYNC -> esync/ESYNC,
- refactor .esync_get to allow multiple esync range values,
- define and use struct dpll_pin_esync for getting esync related info,
- rename esync -> freq to better align with existiong code,
- remove unneeded line break,
- respect 80 chars per line rule,
- fix typos,

 Documentation/driver-api/dpll.rst     |  21 +++++
 Documentation/netlink/specs/dpll.yaml |  24 +++++
 drivers/dpll/dpll_netlink.c           | 130 ++++++++++++++++++++++++++
 drivers/dpll/dpll_nl.c                |   5 +-
 include/linux/dpll.h                  |  15 +++
 include/uapi/linux/dpll.h             |   3 +
 6 files changed, 196 insertions(+), 2 deletions(-)

diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
index ea8d16600e16..a212b94ad52c 100644
--- a/Documentation/driver-api/dpll.rst
+++ b/Documentation/driver-api/dpll.rst
@@ -214,6 +214,27 @@ offset values are fractional with 3-digit decimal places and shell be
 divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
 modulo divided to get fractional part.
 
+Embedded SYNC
+=============
+
+Device may provide ability to use Embedded SYNC feature. It allows
+to embed additional SYNC signal into the base frequency of a pin - a one
+special pulse of base frequency signal every time SYNC signal pulse
+happens. The user can configure the frequency of Embedded SYNC.
+The Embedded SYNC capability is always related to a given base frequency
+and HW capabilities. The user is provided a range of Embedded SYNC
+frequencies supported, depending on current base frequency configured for
+the pin.
+
+  ========================================= =================================
+  ``DPLL_A_PIN_ESYNC_FREQUENCY``            current Embedded SYNC frequency
+  ``DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED``  nest available Embedded SYNC
+                                            frequency ranges
+    ``DPLL_A_PIN_FREQUENCY_MIN``            attr minimum value of frequency
+    ``DPLL_A_PIN_FREQUENCY_MAX``            attr maximum value of frequency
+  ``DPLL_A_PIN_ESYNC_PULSE``                pulse type of Embedded SYNC
+  ========================================= =================================
+
 Configuration commands group
 ============================
 
diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 94132d30e0e0..f2894ca35de8 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -345,6 +345,26 @@ attribute-sets:
           Value is in PPM (parts per million).
           This may be implemented for example for pin of type
           PIN_TYPE_SYNCE_ETH_PORT.
+      -
+        name: esync-frequency
+        type: u64
+        doc: |
+          Frequency of Embedded SYNC signal. If provided, the pin is configured
+          with a SYNC signal embedded into its base clock frequency.
+      -
+        name: esync-frequency-supported
+        type: nest
+        multi-attr: true
+        nested-attributes: frequency-range
+        doc: |
+          If provided a pin is capable of embedding a SYNC signal (within given
+          range) into its base frequency signal.
+      -
+        name: esync-pulse
+        type: u32
+        doc: |
+          A ratio of high to low state of a SYNC signal pulse embedded
+          into base clock frequency. Value is in percents.
   -
     name: pin-parent-device
     subset-of: pin
@@ -510,6 +530,9 @@ operations:
             - phase-adjust-max
             - phase-adjust
             - fractional-frequency-offset
+            - esync-frequency
+            - esync-frequency-supported
+            - esync-pulse
 
       dump:
         request:
@@ -536,6 +559,7 @@ operations:
             - parent-device
             - parent-pin
             - phase-adjust
+            - esync-frequency
     -
       name: pin-create-ntf
       doc: Notification about pin appearing
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 98e6ad8528d3..fe1a00ad84d1 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -342,6 +342,51 @@ dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
 	return 0;
 }
 
+static int
+dpll_msg_add_pin_esync(struct sk_buff *msg, struct dpll_pin *pin,
+		       struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	struct dpll_pin_esync esync;
+	struct nlattr *nest;
+	int ret, i;
+
+	if (!ops->esync_get)
+		return 0;
+	ret = ops->esync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+			     dpll_priv(dpll), &esync, extack);
+	if (ret == -EOPNOTSUPP)
+		return 0;
+	else if (ret)
+		return ret;
+	if (nla_put_64bit(msg, DPLL_A_PIN_ESYNC_FREQUENCY, sizeof(esync.freq),
+			  &esync.freq, DPLL_A_PIN_PAD))
+		return -EMSGSIZE;
+	if (nla_put_u32(msg, DPLL_A_PIN_ESYNC_PULSE, esync.pulse))
+		return -EMSGSIZE;
+	for (i = 0; i < esync.range_num; i++) {
+		nest = nla_nest_start(msg,
+				      DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED);
+		if (!nest)
+			return -EMSGSIZE;
+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MIN,
+				  sizeof(esync.range[i].min),
+				  &esync.range[i].min, DPLL_A_PIN_PAD))
+			goto nest_cancel;
+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MAX,
+				  sizeof(esync.range[i].max),
+				  &esync.range[i].max, DPLL_A_PIN_PAD))
+			goto nest_cancel;
+		nla_nest_end(msg, nest);
+	}
+	return 0;
+
+nest_cancel:
+	nla_nest_cancel(msg, nest);
+	return -EMSGSIZE;
+}
+
 static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
 {
 	int fs;
@@ -481,6 +526,9 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
 	if (ret)
 		return ret;
 	ret = dpll_msg_add_ffo(msg, pin, ref, extack);
+	if (ret)
+		return ret;
+	ret = dpll_msg_add_pin_esync(msg, pin, ref, extack);
 	if (ret)
 		return ret;
 	if (xa_empty(&pin->parent_refs))
@@ -738,6 +786,83 @@ dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
 	return ret;
 }
 
+static int
+dpll_pin_esync_set(struct dpll_pin *pin, struct nlattr *a,
+		    struct netlink_ext_ack *extack)
+{
+	struct dpll_pin_ref *ref, *failed;
+	const struct dpll_pin_ops *ops;
+	struct dpll_pin_esync esync;
+	u64 freq = nla_get_u64(a);
+	struct dpll_device *dpll;
+	bool supported = false;
+	unsigned long i;
+	int ret;
+
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		ops = dpll_pin_ops(ref);
+		if (!ops->esync_set || !ops->esync_get) {
+			NL_SET_ERR_MSG(extack,
+				       "embedded sync feature is not supported by this device");
+			return -EOPNOTSUPP;
+		}
+	}
+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
+	ops = dpll_pin_ops(ref);
+	dpll = ref->dpll;
+	ret = ops->esync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+			     dpll_priv(dpll), &esync, extack);
+	if (ret) {
+		NL_SET_ERR_MSG(extack, "unable to get current embedded sync frequency value");
+		return ret;
+	}
+	if (freq == esync.freq)
+		return 0;
+	for (i = 0; i < esync.range_num; i++)
+		if (freq <= esync.range[i].max && freq >= esync.range[i].min)
+			supported = true;
+	if (!supported) {
+		NL_SET_ERR_MSG_ATTR(extack, a,
+				    "requested embedded sync frequency value is not supported by this device");
+		return -EINVAL;
+	}
+
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		void *pin_dpll_priv;
+
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		pin_dpll_priv = dpll_pin_on_dpll_priv(dpll, pin);
+		ret = ops->esync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
+				      freq, extack);
+		if (ret) {
+			failed = ref;
+			NL_SET_ERR_MSG_FMT(extack,
+					   "embedded sync frequency set failed for dpll_id:%u",
+					   dpll->id);
+			goto rollback;
+		}
+	}
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+
+rollback:
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		void *pin_dpll_priv;
+
+		if (ref == failed)
+			break;
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		pin_dpll_priv = dpll_pin_on_dpll_priv(dpll, pin);
+		if (ops->esync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
+				   esync.freq, extack))
+			NL_SET_ERR_MSG(extack, "set embedded sync frequency rollback failed");
+	}
+	return ret;
+}
+
 static int
 dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
 			  enum dpll_pin_state state,
@@ -1039,6 +1164,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
 			if (ret)
 				return ret;
 			break;
+		case DPLL_A_PIN_ESYNC_FREQUENCY:
+			ret = dpll_pin_esync_set(pin, a, info->extack);
+			if (ret)
+				return ret;
+			break;
 		}
 	}
 
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index 1e95f5397cfc..fe9b6893d261 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -62,7 +62,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
 };
 
 /* DPLL_CMD_PIN_SET - do */
-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST + 1] = {
+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY + 1] = {
 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
@@ -71,6 +71,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST +
 	[DPLL_A_PIN_PARENT_DEVICE] = NLA_POLICY_NESTED(dpll_pin_parent_device_nl_policy),
 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
 	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
+	[DPLL_A_PIN_ESYNC_FREQUENCY] = { .type = NLA_U64, },
 };
 
 /* Ops table for dpll */
@@ -138,7 +139,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
 		.doit		= dpll_nl_pin_set_doit,
 		.post_doit	= dpll_pin_post_doit,
 		.policy		= dpll_pin_set_nl_policy,
-		.maxattr	= DPLL_A_PIN_PHASE_ADJUST,
+		.maxattr	= DPLL_A_PIN_ESYNC_FREQUENCY,
 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
 	},
 };
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index d275736230b3..3baa196d7000 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -15,6 +15,7 @@
 
 struct dpll_device;
 struct dpll_pin;
+struct dpll_pin_esync;
 
 struct dpll_device_ops {
 	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
@@ -83,6 +84,13 @@ struct dpll_pin_ops {
 	int (*ffo_get)(const struct dpll_pin *pin, void *pin_priv,
 		       const struct dpll_device *dpll, void *dpll_priv,
 		       s64 *ffo, struct netlink_ext_ack *extack);
+	int (*esync_set)(const struct dpll_pin *pin, void *pin_priv,
+			  const struct dpll_device *dpll, void *dpll_priv,
+			  u64 esync_freq, struct netlink_ext_ack *extack);
+	int (*esync_get)(const struct dpll_pin *pin, void *pin_priv,
+			  const struct dpll_device *dpll, void *dpll_priv,
+			  struct dpll_pin_esync *esync,
+			  struct netlink_ext_ack *extack);
 };
 
 struct dpll_pin_frequency {
@@ -111,6 +119,13 @@ struct dpll_pin_phase_adjust_range {
 	s32 max;
 };
 
+struct dpll_pin_esync {
+	u64 freq;
+	const struct dpll_pin_frequency *range;
+	u8 range_num;
+	u8 pulse;
+};
+
 struct dpll_pin_properties {
 	const char *board_label;
 	const char *panel_label;
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index 0c13d7f1a1bc..b0654ade7b7e 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -210,6 +210,9 @@ enum dpll_a_pin {
 	DPLL_A_PIN_PHASE_ADJUST,
 	DPLL_A_PIN_PHASE_OFFSET,
 	DPLL_A_PIN_FRACTIONAL_FREQUENCY_OFFSET,
+	DPLL_A_PIN_ESYNC_FREQUENCY,
+	DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED,
+	DPLL_A_PIN_ESYNC_PULSE,
 
 	__DPLL_A_PIN_MAX,
 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
-- 
2.38.1

