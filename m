Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4520E94BC93
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 13:54:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADDA260A92;
	Thu,  8 Aug 2024 11:54:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8djXX6lD2fPY; Thu,  8 Aug 2024 11:54:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FABB60A8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723118050;
	bh=cWpv6IdB+ZSBfOKheCIDI4o/Rhh1iSvNP7j21IpVm2Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DpKqiHKjA49e93kpLuw6a46d8mKDGFmfNzz/Fjw3qQuB2c/9f+zED1vUm//TME7xT
	 MB+MPEa/8e3oZykZyUNEggB62KRb1sSeH8joWu1b3ZLmUGNwhi46/xvHWupXm0XmIb
	 8ptnrDbdDeXKAkzQ1EhosbIgY7lErOmHy0m1WHE/FKHBgLCC1vLhATv1pin7N27vP2
	 p4P+2mnm9cR1KRhKlV0aKyyZqNJAIrAf3m3DPvaIlzcree2Vmd+wLpMp9yRcppYKBT
	 OhkT8HmDWjw2f1rcZvUn+V5zPeN1uu61EXA0MNFydtLgZ4PTbWE2O+PIi+iY/+/JyT
	 C5awSlQNs3/NA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FABB60A8B;
	Thu,  8 Aug 2024 11:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16E3A1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0376A4093E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 26KcVaJNrSRz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 11:54:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3DF8840990
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DF8840990
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DF8840990
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:54:03 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-368712acb8dso492335f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Aug 2024 04:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723118041; x=1723722841;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cWpv6IdB+ZSBfOKheCIDI4o/Rhh1iSvNP7j21IpVm2Y=;
 b=rBx/5dCjn0KgmXQSJNE75cjdEcLR7uy6lfX+rQCrwKPuwvwlLag3do/jVjEuvgPKHA
 v/orn/FWhhT1U6TiTa9H58MR4PN/+TkvANAe6yEBLalc2fn0x000Nt7XsRJ0+jnIcUe6
 6TImSzjCeFyOPv6t1x1DpFfun7Kw4vxe+NL4xVgqGH6zwO9ajVTZC5aaQ0ocINU70Esv
 0CFo1HufRN3fB+T1fFA1a4EiRjWgx/Jt22fovstXVRiZjd119deYxKmSz2AnSPSW68Ml
 bXWvyBPHnSHWuSxjDAUb5U/ULh+7EJzQ+gJwaK5oNQBoagtuNxlNVLCJT/+JtkU1Y7oW
 f0HA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQRs3DQwCLc3SBh01bO1Qq8iVXCQ9fqsZRyJI0zsspWnf62eohNCllzsW+U2hddDpS9RGjJHS82EXGUt1R/6WakRMMzIkJ0QRTwk95582wVg==
X-Gm-Message-State: AOJu0YwvobCZ8Nlc9gz68ZLCGdOT115079fydETGAoiPTOTuU0WfAyvK
 nfch2PibLhELGIGzEmwzHU87H6EhuTboUPOSay6kOTlK56MngvsRF9b1tX5eK5U=
X-Google-Smtp-Source: AGHT+IFbwV1ZgK3TfeFhHW45tmFI2J0yflhWdJBEw/KQZN0Y2AF+Ufz9gZ31TJyAL/7pee3t219e8g==
X-Received: by 2002:a5d:4f11:0:b0:367:96a0:c4b7 with SMTP id
 ffacd0b85a97d-36d27582bf5mr1231300f8f.62.1723118035463; 
 Thu, 08 Aug 2024 04:53:55 -0700 (PDT)
Received: from localhost ([213.235.133.109]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36d2718bfb9sm1676883f8f.54.2024.08.08.04.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2024 04:53:54 -0700 (PDT)
Date: Thu, 8 Aug 2024 13:53:53 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZrSx0QRXUXB53UFr@nanopsycho.orion>
References: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
 <20240808112013.166621-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240808112013.166621-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1723118041; x=1723722841;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cWpv6IdB+ZSBfOKheCIDI4o/Rhh1iSvNP7j21IpVm2Y=;
 b=Xp2TjiU3rphm3peoy9zAPOAfp9LYWkSN2H61xJDjxnkd3l6o6T7N8UusNo1JqC+lSY
 9Y9OnmeVO0Y6mHQEr1w7eumI84h515dDr/klwis8THccIE0pVH/+ylb5nBV23QHMYuuQ
 uGNQXJ1wi8kYnM//qw+RTdsM5md40mpkfq2p03qISihqVeBlWLmgNtgw3g4u3NqeVwNB
 1CuYnR7aIE1Oneclk8JVFXSxcTHf7E/khZGpnT1g71HjSn9Z1JNFpL9Pz8XGtTbfhZOQ
 CBnQRCGOFqU0Q2fTPtXh1WVi9OQWJjH0qnajbQpEqtaX4D9cpeV0d6d30ro0ZlzO9HXZ
 PF/Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Xp2TjiU3
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] dpll: add Embedded
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

Thu, Aug 08, 2024 at 01:20:12PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Implement and document new pin attributes for providing Embedded SYNC
>capabilities to the DPLL subsystem users through a netlink pin-get
>do/dump messages. Allow the user to set Embedded SYNC frequency with
>pin-set do netlink message.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> Documentation/driver-api/dpll.rst     |  21 +++++
> Documentation/netlink/specs/dpll.yaml |  41 +++++++++
> drivers/dpll/dpll_netlink.c           | 127 ++++++++++++++++++++++++++
> drivers/dpll/dpll_nl.c                |   5 +-
> include/linux/dpll.h                  |  10 ++
> include/uapi/linux/dpll.h             |  23 +++++
> 6 files changed, 225 insertions(+), 2 deletions(-)
>
>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
>index ea8d16600e16..d7d091d268a1 100644
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
>+and HW capabilities. The user is provided a range of embedded sync
>+frequencies supported, depending on current base frequency configured for
>+the pin.
>+
>+  ========================================= =================================
>+  ``DPLL_A_PIN_E_SYNC_FREQUENCY``           current embedded SYNC frequency
>+  ``DPLL_A_PIN_E_SYNC_FREQUENCY_SUPPORTED`` nest available embedded SYNC
>+                                            frequency ranges
>+    ``DPLL_A_PIN_FREQUENCY_MIN``            attr minimum value of frequency
>+    ``DPLL_A_PIN_FREQUENCY_MAX``            attr maximum value of frequency
>+  ``DPLL_A_PIN_E_SYNC_PULSE``               pulse type of embedded SYNC
>+  ========================================= =================================
>+
> Configuration commands group
> ============================
> 
>diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
>index 94132d30e0e0..0aabf6f1fc2f 100644
>--- a/Documentation/netlink/specs/dpll.yaml
>+++ b/Documentation/netlink/specs/dpll.yaml
>@@ -210,6 +210,25 @@ definitions:
>       integer part of a measured phase offset value.
>       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
>       fractional part of a measured phase offset value.
>+  -
>+    type: enum
>+    name: pin-e-sync-pulse
>+    doc: |
>+      defines possible pulse length ratio between high and low state when
>+      embedded sync signal occurs on base clock signal frequency
>+    entries:
>+      -
>+        name: none
>+        doc: embedded sync not enabled
>+      -
>+        name: 25-75
>+        doc: when embedded sync signal occurs 25% of signal's period is in
>+          high state, 75% of signal's period is in low state
>+      -
>+        name: 75-25

It is very odd to name enums like this.
Why can't this be:

    name: e-sync-pulse-ratio
    type: u32
    doc: Embedded sync signal ratio. Value of 0 to 100. Defines the high
    state percentage.

?


>+        doc: when embedded sync signal occurs 75% of signal's period is in
>+          high state, 25% of signal's period is in low state
>+    render-max: true
> 
> attribute-sets:
>   -
>@@ -345,6 +364,24 @@ attribute-sets:
>           Value is in PPM (parts per million).
>           This may be implemented for example for pin of type
>           PIN_TYPE_SYNCE_ETH_PORT.
>+      -
>+        name: e-sync-frequency
>+        type: u64
>+        doc: |
>+          Embedded Sync frequency. If provided a non-zero value, the pin is

Why non-zero? Why the attr cannot be omitted instead?


>+          configured with an embedded sync signal into its base frequency.
>+      -
>+        name: e-sync-frequency-supported
>+        type: nest
>+        nested-attributes: frequency-range
>+        doc: |
>+          If provided a pin is capable of enabling embedded sync frequency
>+          into it's base frequency signal.
>+      -
>+        name: e-sync-pulse
>+        type: u32
>+        enum: pin-e-sync-pulse
>+        doc: Embedded sync signal ratio.
>   -
>     name: pin-parent-device
>     subset-of: pin
>@@ -510,6 +547,9 @@ operations:
>             - phase-adjust-max
>             - phase-adjust
>             - fractional-frequency-offset
>+            - e-sync-frequency
>+            - e-sync-frequency-supported
>+            - e-sync-pulse
> 
>       dump:
>         request:
>@@ -536,6 +576,7 @@ operations:
>             - parent-device
>             - parent-pin
>             - phase-adjust
>+            - e-sync-frequency
>     -
>       name: pin-create-ntf
>       doc: Notification about pin appearing
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index 98e6ad8528d3..5ae2c0adb98e 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -342,6 +342,50 @@ dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
> 	return 0;
> }
> 
>+static int
>+dpll_msg_add_pin_esync(struct sk_buff *msg, struct dpll_pin *pin,

This is "esync", attributes are "E_SYNC". Why can't they be named
"ESYNC" too? Same comment to another "e_sync" names (vars, ops, etc).


>+		       struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>+	struct dpll_device *dpll = ref->dpll;
>+	enum dpll_pin_e_sync_pulse pulse;
>+	struct dpll_pin_frequency range;
>+	struct nlattr *nest;
>+	u64 esync;
>+	int ret;
>+
>+	if (!ops->e_sync_get)
>+		return 0;
>+	ret = ops->e_sync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>+			      dpll_priv(dpll), &esync, &range, &pulse, extack);
>+	if (ret == -EOPNOTSUPP)
>+		return 0;
>+	else if (ret)
>+		return ret;
>+	if (nla_put_64bit(msg, DPLL_A_PIN_E_SYNC_FREQUENCY, sizeof(esync),
>+			  &esync, DPLL_A_PIN_PAD))
>+		return -EMSGSIZE;
>+	if (nla_put_u32(msg, DPLL_A_PIN_E_SYNC_PULSE, pulse))
>+		return -EMSGSIZE;
>+
>+	nest = nla_nest_start(msg, DPLL_A_PIN_E_SYNC_FREQUENCY_SUPPORTED);
>+	if (!nest)
>+		return -EMSGSIZE;
>+	if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MIN, sizeof(range.min),
>+			  &range.min, DPLL_A_PIN_PAD)) {
>+		nla_nest_cancel(msg, nest);
>+		return -EMSGSIZE;
>+	}
>+	if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MAX, sizeof(range.max),
>+			  &range.max, DPLL_A_PIN_PAD)) {

Don't you want to have the MIN-MAX here multiple times. I mean, in
theory, can the device support 2 fixed frequencies for example?
Have it at least for UAPI so this is easily extendable.



>+		nla_nest_cancel(msg, nest);
>+		return -EMSGSIZE;
>+	}
>+	nla_nest_end(msg, nest);
>+
>+	return 0;
>+}
>+
> static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
> {
> 	int fs;
>@@ -481,6 +525,9 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
> 	if (ret)
> 		return ret;
> 	ret = dpll_msg_add_ffo(msg, pin, ref, extack);
>+	if (ret)
>+		return ret;
>+	ret = dpll_msg_add_pin_esync(msg, pin, ref, extack);
> 	if (ret)
> 		return ret;
> 	if (xa_empty(&pin->parent_refs))
>@@ -738,6 +785,81 @@ dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
> 	return ret;
> }
> 
>+static int
>+dpll_pin_e_sync_set(struct dpll_pin *pin, struct nlattr *a,
>+		    struct netlink_ext_ack *extack)
>+{
>+	u64 esync = nla_get_u64(a), old_esync;

"freq"/"old_freq". That aligns with the existing code.


>+	struct dpll_pin_ref *ref, *failed;
>+	enum dpll_pin_e_sync_pulse pulse;
>+	struct dpll_pin_frequency range;
>+	const struct dpll_pin_ops *ops;
>+	struct dpll_device *dpll;
>+	unsigned long i;
>+	int ret;
>+
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		ops = dpll_pin_ops(ref);
>+		if (!ops->e_sync_set ||

No need for line break.


>+		    !ops->e_sync_get) {
>+			NL_SET_ERR_MSG(extack,
>+				       "embedded sync feature is not supported by this device");
>+			return -EOPNOTSUPP;
>+		}
>+	}
>+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>+	ops = dpll_pin_ops(ref);
>+	dpll = ref->dpll;
>+	ret = ops->e_sync_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>+			      dpll_priv(dpll), &old_esync, &range, &pulse, extack);

Line over 80cols? Didn't checkpatch warn you?


>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get current embedded sync frequency value");
>+		return ret;
>+	}
>+	if (esync == old_esync)
>+		return 0;
>+	if (esync > range.max || esync < range.min) {
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
>+		ret = ops->e_sync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
>+				      esync, extack);
>+		if (ret) {
>+			failed = ref;
>+			NL_SET_ERR_MSG_FMT(extack,
>+					   "embedded sync frequency set failed for dpll_id:%u",
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
>+		if (ops->e_sync_set(pin, pin_dpll_priv, dpll, dpll_priv(dpll),
>+				    old_esync, extack))
>+			NL_SET_ERR_MSG(extack, "set embedded sync frequency rollback failed");
>+	}
>+	return ret;
>+}
>+
> static int
> dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
> 			  enum dpll_pin_state state,
>@@ -1039,6 +1161,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
> 			if (ret)
> 				return ret;
> 			break;
>+		case DPLL_A_PIN_E_SYNC_FREQUENCY:
>+			ret = dpll_pin_e_sync_set(pin, a, info->extack);
>+			if (ret)
>+				return ret;
>+			break;
> 		}
> 	}
> 
>diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
>index 1e95f5397cfc..ba79a47f3a17 100644
>--- a/drivers/dpll/dpll_nl.c
>+++ b/drivers/dpll/dpll_nl.c
>@@ -62,7 +62,7 @@ static const struct nla_policy dpll_pin_get_dump_nl_policy[DPLL_A_PIN_ID + 1] =
> };
> 
> /* DPLL_CMD_PIN_SET - do */
>-static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST + 1] = {
>+static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_E_SYNC_FREQUENCY + 1] = {
> 	[DPLL_A_PIN_ID] = { .type = NLA_U32, },
> 	[DPLL_A_PIN_FREQUENCY] = { .type = NLA_U64, },
> 	[DPLL_A_PIN_DIRECTION] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
>@@ -71,6 +71,7 @@ static const struct nla_policy dpll_pin_set_nl_policy[DPLL_A_PIN_PHASE_ADJUST +
> 	[DPLL_A_PIN_PARENT_DEVICE] = NLA_POLICY_NESTED(dpll_pin_parent_device_nl_policy),
> 	[DPLL_A_PIN_PARENT_PIN] = NLA_POLICY_NESTED(dpll_pin_parent_pin_nl_policy),
> 	[DPLL_A_PIN_PHASE_ADJUST] = { .type = NLA_S32, },
>+	[DPLL_A_PIN_E_SYNC_FREQUENCY] = { .type = NLA_U64, },
> };
> 
> /* Ops table for dpll */
>@@ -138,7 +139,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
> 		.doit		= dpll_nl_pin_set_doit,
> 		.post_doit	= dpll_pin_post_doit,
> 		.policy		= dpll_pin_set_nl_policy,
>-		.maxattr	= DPLL_A_PIN_PHASE_ADJUST,
>+		.maxattr	= DPLL_A_PIN_E_SYNC_FREQUENCY,
> 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
> 	},
> };
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index d275736230b3..137ab4bcb60e 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -15,6 +15,7 @@
> 
> struct dpll_device;
> struct dpll_pin;
>+struct dpll_pin_frequency;
> 
> struct dpll_device_ops {
> 	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>@@ -83,6 +84,15 @@ struct dpll_pin_ops {
> 	int (*ffo_get)(const struct dpll_pin *pin, void *pin_priv,
> 		       const struct dpll_device *dpll, void *dpll_priv,
> 		       s64 *ffo, struct netlink_ext_ack *extack);
>+	int (*e_sync_set)(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  u64 e_sync_freq, struct netlink_ext_ack *extack);
>+	int (*e_sync_get)(const struct dpll_pin *pin, void *pin_priv,
>+			  const struct dpll_device *dpll, void *dpll_priv,
>+			  u64 *e_sync_freq,
>+			  struct dpll_pin_frequency *e_sync_range,
>+			  enum dpll_pin_e_sync_pulse *pulse,
>+			  struct netlink_ext_ack *extack);
> };
> 
> struct dpll_pin_frequency {
>diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
>index 0c13d7f1a1bc..2a80a6fb0d1d 100644
>--- a/include/uapi/linux/dpll.h
>+++ b/include/uapi/linux/dpll.h
>@@ -169,6 +169,26 @@ enum dpll_pin_capabilities {
> 
> #define DPLL_PHASE_OFFSET_DIVIDER	1000
> 
>+/**
>+ * enum dpll_pin_e_sync_pulse - defines possible pulse length ratio between
>+ *   high and low state when embedded sync signal occurs on base clock signal
>+ *   frequency
>+ * @DPLL_PIN_E_SYNC_PULSE_NONE: embedded sync not enabled
>+ * @DPLL_PIN_E_SYNC_PULSE_25_75: when embedded sync signal occurs 25% of
>+ *   signal's period is in high state, 75% of signal's period is in low state
>+ * @DPLL_PIN_E_SYNC_PULSE_75_25: when embedded sync signal occurs 75% of
>+ *   signal's period is in high state, 25% of signal's period is in low state
>+ */
>+enum dpll_pin_e_sync_pulse {
>+	DPLL_PIN_E_SYNC_PULSE_NONE,
>+	DPLL_PIN_E_SYNC_PULSE_25_75,
>+	DPLL_PIN_E_SYNC_PULSE_75_25,
>+
>+	/* private: */
>+	__DPLL_PIN_E_SYNC_PULSE_MAX,
>+	DPLL_PIN_E_SYNC_PULSE_MAX = (__DPLL_PIN_E_SYNC_PULSE_MAX - 1)
>+};
>+
> enum dpll_a {
> 	DPLL_A_ID = 1,
> 	DPLL_A_MODULE_NAME,
>@@ -210,6 +230,9 @@ enum dpll_a_pin {
> 	DPLL_A_PIN_PHASE_ADJUST,
> 	DPLL_A_PIN_PHASE_OFFSET,
> 	DPLL_A_PIN_FRACTIONAL_FREQUENCY_OFFSET,
>+	DPLL_A_PIN_E_SYNC_FREQUENCY,
>+	DPLL_A_PIN_E_SYNC_FREQUENCY_SUPPORTED,
>+	DPLL_A_PIN_E_SYNC_PULSE,
> 
> 	__DPLL_A_PIN_MAX,
> 	DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
>-- 
>2.38.1
>
