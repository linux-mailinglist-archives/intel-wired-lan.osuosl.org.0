Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B5E95B2D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 12:22:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B22C60B64;
	Thu, 22 Aug 2024 10:22:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xSc9FCtAnfHM; Thu, 22 Aug 2024 10:22:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF87260B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724322135;
	bh=3pOBZ7Whc9pH5INV6IqLXuAkz+SPdxv7znSmmHW29ow=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bj3K1eGYxJ2JY8h9wA81aZMobqnOIUZNzvjMHm7XauLm8L1GvxZ+ZloRBs0qmGaba
	 7XBpPM/Y05vU0lAxD9crtSx8gRZieaSieQgrbywSmB1UshWTSjyBiVvoup+zfEYA0J
	 swHHgBi6bHkF+JmFU2Q6tB8PFm9pBsWmMKqhHJqm1VVCf15FR7V6zztjOBzQaS5QI6
	 CwI7ZUDLqyfH6qO/takaGC8+v7cMk4qqNN92Ivv7eP9ZkZ3kFYUyFRlSmJfIXkv6An
	 qpTcWUS/9KSDlkxOWqMMTP56OlGSth6D0L/hpNrk/BIzUcPEU0HeCrCG5PfGOBnw0X
	 wcpywpA24jBMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF87260B90;
	Thu, 22 Aug 2024 10:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 344291BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E4EB80D2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:22:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AsUNezAhjAhl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 10:22:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52a; helo=mail-ed1-x52a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A45C80B40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A45C80B40
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A45C80B40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:22:08 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-5bef295a2b4so1056633a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 03:22:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724322126; x=1724926926;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3pOBZ7Whc9pH5INV6IqLXuAkz+SPdxv7znSmmHW29ow=;
 b=elAKwq+K64UccIlpDPNRb2/DCQXbzXrK2P/it7KTbleLjIWutxGpKq5GDGmUO9x3ce
 vq09vj9SwZdzUek5ZQA1E05kpBTlpR1ZalfasSgIJkguC0xpkeeDGj33qtU0MNKELkqb
 UPcPXqWEEIvZXzBLRKfJZM8f9meWEphq0h0S4uwQ2o4H9p0NKzd7QBbHp6zksYObKdKR
 t8tiEdxbo9PLqdjtkgazMx96Cyc0FdmhoOOqEYWWCScEBwADqRo2TEvh5ucHPbWi+bf1
 aB6AlQXtSGu5byMyhPNJzoIka8NDu2WWdo61M1itlCjuSSi2olcRvugmR2KZ4r155cIM
 ZoUw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXX1Zhw7YdMXI8RMfzsqAPw8VxDQCan8nfo1/KVrdc0JVq87ATLnCf7EnJjtzUHQiT+F6EzA7ZYUqLdhoO6wFc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwG+/dfuIu3c/dOP9g/6Xc8R41EPUhsqN9kMASEnZvvr93UPxpu
 bTeLl/96sZxpJVNWohpCxW7y1WU4Rm7tOGz/ZklFTwwgvZ1tq7+GqMNj+g4Gvmk=
X-Google-Smtp-Source: AGHT+IEqdkIkuFDE3mb84fFjSU+15UXG/VRiWdlvxJLEvaNuZV0B0OnxVkzES+RQ7+iQihhj+4CRRg==
X-Received: by 2002:a05:6402:5255:b0:5be:fb2e:d334 with SMTP id
 4fb4d7f45d1cf-5bf2c04bbcdmr2542310a12.12.1724322126143; 
 Thu, 22 Aug 2024 03:22:06 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5c04a3c8615sm746406a12.23.2024.08.22.03.22.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2024 03:22:05 -0700 (PDT)
Date: Thu, 22 Aug 2024 12:22:04 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZscRTKu6bFMm0VkQ@nanopsycho.orion>
References: <20240821213218.232900-1-arkadiusz.kubalewski@intel.com>
 <20240821213218.232900-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240821213218.232900-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1724322126; x=1724926926;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3pOBZ7Whc9pH5INV6IqLXuAkz+SPdxv7znSmmHW29ow=;
 b=sPLzRri6wmLoDPbYu+DNjklxlnMY68AcoT/yIXy1hlOMVPqez7jB+0oHFYnvRvNXoi
 zpI+yQ6ZX+de7jhOOiZ+/vtpHdjEU0+M62ai7kqWaTvrs58oCeigbnROyzXJF6wYDa10
 +1s8DSCukxtnVG0nkep2CZPyyCZDPOqAyAyLmQneOBBKR35SVx3J3c+O60DZMUezrzYQ
 V58wDJ2cf9z/q2B4dVfCJIlzGmB7z6BaSMstAZQD8YO5CQ9flbagR7UYONadQLZgOQWl
 a9oTDhce9jqfW2TBVBByHiXEZE4/hJPeJX+kcRoDE+uVMZpnvKda+nN3p4FKum/TnlvC
 ymEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=sPLzRri6
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] dpll: add Embedded
 SYNC feature for a pin
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Aug 21, 2024 at 11:32:17PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Implement and document new pin attributes for providing Embedded SYNC
>capabilities to the DPLL subsystem users through a netlink pin-get
>do/dump messages. Allow the user to set Embedded SYNC frequency with
>pin-set do netlink message.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v2:
>- remove enum for pulse-ratio, instead use plain u32 value,
>- provide e-sync-frequency attribute and value only if esync was
>  enabled,
>- rename: e_sync/E_SYNC -> esync/ESYNC,
>- refactor .esync_get to allow multiple esync range values,
>- define and use struct dpll_pin_esync for getting esync related info,
>- rename esync -> freq to better align with existiong code,
>- remove unneeded line break,
>- respect 80 chars per line rule,
>- fix typos,
>
> Documentation/driver-api/dpll.rst     |  21 +++++
> Documentation/netlink/specs/dpll.yaml |  24 +++++
> drivers/dpll/dpll_netlink.c           | 130 ++++++++++++++++++++++++++
> drivers/dpll/dpll_nl.c                |   5 +-
> include/linux/dpll.h                  |  15 +++
> include/uapi/linux/dpll.h             |   3 +
> 6 files changed, 196 insertions(+), 2 deletions(-)


Looks fine. 2 nitpicks below:


>
>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
>index ea8d16600e16..a212b94ad52c 100644
>--- a/Documentation/driver-api/dpll.rst
>+++ b/Documentation/driver-api/dpll.rst
>@@ -214,6 +214,27 @@ offset values are fractional with 3-digit decimal places and shell be
> divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
> modulo divided to get fractional part.
> 
>+Embedded SYNC
>+=============
>+
>+Device may provide ability to use Embedded SYNC feature. It allows
>+to embed additional SYNC signal into the base frequency of a pin - a one
>+special pulse of base frequency signal every time SYNC signal pulse
>+happens. The user can configure the frequency of Embedded SYNC.
>+The Embedded SYNC capability is always related to a given base frequency
>+and HW capabilities. The user is provided a range of Embedded SYNC
>+frequencies supported, depending on current base frequency configured for
>+the pin.
>+
>+  ========================================= =================================
>+  ``DPLL_A_PIN_ESYNC_FREQUENCY``            current Embedded SYNC frequency
>+  ``DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED``  nest available Embedded SYNC
>+                                            frequency ranges
>+    ``DPLL_A_PIN_FREQUENCY_MIN``            attr minimum value of frequency
>+    ``DPLL_A_PIN_FREQUENCY_MAX``            attr maximum value of frequency
>+  ``DPLL_A_PIN_ESYNC_PULSE``                pulse type of Embedded SYNC
>+  ========================================= =================================
>+
> Configuration commands group
> ============================
> 
>diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
>index 94132d30e0e0..f2894ca35de8 100644
>--- a/Documentation/netlink/specs/dpll.yaml
>+++ b/Documentation/netlink/specs/dpll.yaml
>@@ -345,6 +345,26 @@ attribute-sets:
>           Value is in PPM (parts per million).
>           This may be implemented for example for pin of type
>           PIN_TYPE_SYNCE_ETH_PORT.
>+      -
>+        name: esync-frequency
>+        type: u64
>+        doc: |
>+          Frequency of Embedded SYNC signal. If provided, the pin is configured
>+          with a SYNC signal embedded into its base clock frequency.
>+      -
>+        name: esync-frequency-supported
>+        type: nest
>+        multi-attr: true
>+        nested-attributes: frequency-range
>+        doc: |
>+          If provided a pin is capable of embedding a SYNC signal (within given
>+          range) into its base frequency signal.
>+      -
>+        name: esync-pulse
>+        type: u32
>+        doc: |
>+          A ratio of high to low state of a SYNC signal pulse embedded
>+          into base clock frequency. Value is in percents.
>   -
>     name: pin-parent-device
>     subset-of: pin
>@@ -510,6 +530,9 @@ operations:
>             - phase-adjust-max
>             - phase-adjust
>             - fractional-frequency-offset
>+            - esync-frequency
>+            - esync-frequency-supported
>+            - esync-pulse
> 
>       dump:
>         request:
>@@ -536,6 +559,7 @@ operations:
>             - parent-device
>             - parent-pin
>             - phase-adjust
>+            - esync-frequency
>     -
>       name: pin-create-ntf
>       doc: Notification about pin appearing
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index 98e6ad8528d3..fe1a00ad84d1 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -342,6 +342,51 @@ dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
> 	return 0;
> }
> 
>+static int
>+dpll_msg_add_pin_esync(struct sk_buff *msg, struct dpll_pin *pin,
>+		       struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>+	struct dpll_device *dpll = ref->dpll;
>+	struct dpll_pin_esync esync;
>+	struct nlattr *nest;
>+	int ret, i;
>+
>+	if (!ops->esync_get)
>+		return 0;
>+	ret = ops->esync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>+			     dpll_priv(dpll), &esync, extack);
>+	if (ret == -EOPNOTSUPP)
>+		return 0;
>+	else if (ret)
>+		return ret;
>+	if (nla_put_64bit(msg, DPLL_A_PIN_ESYNC_FREQUENCY, sizeof(esync.freq),
>+			  &esync.freq, DPLL_A_PIN_PAD))
>+		return -EMSGSIZE;
>+	if (nla_put_u32(msg, DPLL_A_PIN_ESYNC_PULSE, esync.pulse))
>+		return -EMSGSIZE;
>+	for (i = 0; i < esync.range_num; i++) {
>+		nest = nla_nest_start(msg,
>+				      DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED);
>+		if (!nest)
>+			return -EMSGSIZE;
>+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MIN,
>+				  sizeof(esync.range[i].min),
>+				  &esync.range[i].min, DPLL_A_PIN_PAD))
>+			goto nest_cancel;
>+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MAX,
>+				  sizeof(esync.range[i].max),
>+				  &esync.range[i].max, DPLL_A_PIN_PAD))
>+			goto nest_cancel;
>+		nla_nest_end(msg, nest);
>+	}
>+	return 0;
>+
>+nest_cancel:
>+	nla_nest_cancel(msg, nest);
>+	return -EMSGSIZE;
>+}
>+
> static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
> {
> 	int fs;
>@@ -481,6 +526,9 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
> 	if (ret)
> 		return ret;
> 	ret = dpll_msg_add_ffo(msg, pin, ref, extack);
>+	if (ret)
>+		return ret;
>+	ret = dpll_msg_add_pin_esync(msg, pin, ref, extack);
> 	if (ret)
> 		return ret;
> 	if (xa_empty(&pin->parent_refs))
>@@ -738,6 +786,83 @@ dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
> 	return ret;
> }
> 
>+static int
>+dpll_pin_esync_set(struct dpll_pin *pin, struct nlattr *a,
>+		    struct netlink_ext_ack *extack)
>+{
>+	struct dpll_pin_ref *ref, *failed;
>+	const struct dpll_pin_ops *ops;
>+	struct dpll_pin_esync esync;
>+	u64 freq = nla_get_u64(a);
>+	struct dpll_device *dpll;
>+	bool supported = false;
>+	unsigned long i;
>+	int ret;
>+
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		ops = dpll_pin_ops(ref);
>+		if (!ops->esync_set || !ops->esync_get) {
>+			NL_SET_ERR_MSG(extack,
>+				       "embedded sync feature is not supported by this device");
>+			return -EOPNOTSUPP;
>+		}
>+	}
>+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>+	ops = dpll_pin_ops(ref);
>+	dpll = ref->dpll;
>+	ret = ops->esync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>+			     dpll_priv(dpll), &esync, extack);
>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get current embedded sync frequency value");
>+		return ret;
>+	}
>+	if (freq == esync.freq)
>+		return 0;
>+	for (i = 0; i < esync.range_num; i++)
>+		if (freq <= esync.range[i].max && freq >= esync.range[i].min)
>+			supported = true;
>+	if (!supported) {
>+		NL_SET_ERR_MSG_ATTR(extack, a,
>+				    "requested embedded sync frequency value is not supported by this device");
>+		return -EINVAL;
>+	}
>+
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		void *pin_dpll_priv;
>+
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		pin_dpll_priv = dpll_pin_on_dpll_priv(dpll, pin);
>+		ret = ops->esync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
>+				      freq, extack);
>+		if (ret) {
>+			failed = ref;
>+			NL_SET_ERR_MSG_FMT(extack,
>+					   "embedded sync frequency set failed for dpll_id:%u",

Missing space after ":".


>+					   dpll->id);
>+			goto rollback;
>+		}
>+	}
>+	__dpll_pin_change_ntf(pin);
>+
>+	return 0;
>+
>+rollback:
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		void *pin_dpll_priv;
>+
>+		if (ref == failed)
>+			break;
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		pin_dpll_priv = dpll_pin_on_dpll_priv(dpll, pin);
>+		if (ops->esync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
>+				   esync.freq, extack))
>+			NL_SET_ERR_MSG(extack, "set embedded sync frequency rollback failed");
>+	}
>+	return ret;
>+}
>+
> static int
> dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
> 			  enum dpll_pin_state state,
>@@ -1039,6 +1164,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
> 			if (ret)
> 				return ret;
> 			break;
>+		case DPLL_A_PIN_ESYNC_FREQUENCY:
>+			ret = dpll_pin_esync_set(pin, a, info->extack);
>+			if (ret)
>+				return ret;
>+			break;
> 		}
> 	}
> 
>diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
>index 1e95f5397cfc..fe9b6893d261 100644
>--- a/drivers/dpll/dpll_nl.c
>+++ b/drivers/dpll/dpll_nl.c
>@@ -62,7 +62,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
> };
> 
> /* DPLL_CMD_PIN_SET - do */
>-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST + 1] = {
>+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_ESYNC_FREQUENCY + 1] = {
> 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
> 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
> 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
>@@ -71,6 +71,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST +
> 	[DPLL_A_PIN_PARENT_DEVICE] = NLA_POLICY_NESTED(dpll_pin_parent_device_nl_policy),
> 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
> 	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
>+	[DPLL_A_PIN_ESYNC_FREQUENCY] = { .type = NLA_U64, },
> };
> 
> /* Ops table for dpll */
>@@ -138,7 +139,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
> 		.doit		= dpll_nl_pin_set_doit,
> 		.post_doit	= dpll_pin_post_doit,
> 		.policy		= dpll_pin_set_nl_policy,
>-		.maxattr	= DPLL_A_PIN_PHASE_ADJUST,
>+		.maxattr	= DPLL_A_PIN_ESYNC_FREQUENCY,
> 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
> 	},
> };
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index d275736230b3..3baa196d7000 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -15,6 +15,7 @@
> 
> struct dpll_device;
> struct dpll_pin;
>+struct dpll_pin_esync;
> 
> struct dpll_device_ops {
> 	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>@@ -83,6 +84,13 @@ struct dpll_pin_ops {
> 	int (*ffo_get)(const struct dpll_pin *pin, void *pin_priv,
> 		       const struct dpll_device *dpll, void *dpll_priv,
> 		       s64 *ffo, struct netlink_ext_ack *extack);
>+	int (*esync_set)(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  u64 esync_freq, struct netlink_ext_ack *extack);

s/esync_freq/freq/


>+	int (*esync_get)(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  struct dpll_pin_esync *esync,
>+			  struct netlink_ext_ack *extack);
> };
> 
> struct dpll_pin_frequency {
>@@ -111,6 +119,13 @@ struct dpll_pin_phase_adjust_range {
> 	s32 max;
> };
> 
>+struct dpll_pin_esync {
>+	u64 freq;
>+	const struct dpll_pin_frequency *range;
>+	u8 range_num;
>+	u8 pulse;
>+};
>+
> struct dpll_pin_properties {
> 	const char *board_label;
> 	const char *panel_label;
>diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
>index 0c13d7f1a1bc..b0654ade7b7e 100644
>--- a/include/uapi/linux/dpll.h
>+++ b/include/uapi/linux/dpll.h
>@@ -210,6 +210,9 @@ enum dpll_a_pin {
> 	DPLL_A_PIN_PHASE_ADJUST,
> 	DPLL_A_PIN_PHASE_OFFSET,
> 	DPLL_A_PIN_FRACTIONAL_FREQUENCY_OFFSET,
>+	DPLL_A_PIN_ESYNC_FREQUENCY,
>+	DPLL_A_PIN_ESYNC_FREQUENCY_SUPPORTED,
>+	DPLL_A_PIN_ESYNC_PULSE,
> 
> 	__DPLL_A_PIN_MAX,
> 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
>-- 
>2.38.1
>
