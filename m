Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 196DBAAFCE5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 16:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1D9E60FC6;
	Thu,  8 May 2025 14:26:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48DX0AyT4Vo7; Thu,  8 May 2025 14:26:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F797605E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746714403;
	bh=jIhWIUreSP+JGYnJn14K35TWWNfJWxsj/24+cQ+PUMY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gVMJNtYR6AsXKDL1FOAGfebma7IJ4VsIgb1L3WxQ4Qme69YKr66UcIU9Xk1NZux91
	 FI/M00+ADsqXTDgy0xWBwwRoKbdghpqns0oLFfzUBuzYdRhpi4/tCNiQ2BgJxBQkHM
	 /9XK72kEmEgQBrWJ4xgdXIt4mkGlB0KlWNcxzSL3v6WsVvcC7K5NKRCMHEEp4KO2nu
	 7GzFiNwoGxnsA0N7ujrjmf4lGgkTdxud5nSvITfQ96ooWLmleCnHej5x3aFfh2aoKC
	 g9eW3tTiEwwd0jj1LJB/iga+ukdP3O3mmuHphdu+fHHXydJ3vziQQv/BtCgiPoVGnY
	 aCXjA40mAqzUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F797605E6;
	Thu,  8 May 2025 14:26:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D3F81A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAE71810BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:26:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nuCcOpUdB5Fz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 14:26:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2439880E59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2439880E59
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2439880E59
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:26:34 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-5f63ac6ef0fso2231333a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 May 2025 07:26:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746714393; x=1747319193;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jIhWIUreSP+JGYnJn14K35TWWNfJWxsj/24+cQ+PUMY=;
 b=L01qFCVBDIOduucu9hv8Bs+X/z/HuCSZWh675IKWyxAjkFIcnRNbFu3Tvvj2vJa9mi
 qj7xU70RP16rZ8hLnUkOCARK7rcVYmtvMl7PTnNY4/MsgTlA3HB3k5x0G2S49WhnolXw
 Q86hCZjMbv7jBsmSBYcLu7ZDp/kyZpilJ+Z20e44DOtcPi86jGZ0c9FaVAjwpIxw3sXy
 IVIQ3dIOhb/SDSIu90dS7PJDLeyrLHi7lrxRpXsP102F4hZe544fUmOKvffveKqbZNI9
 BKYKeOKTNCgDJjNZ8viOWH+sYXKV7Are7CIqatzQPWmONcapDqocaJjpDRyfiTNu87rC
 rCPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6EbijXj77c2IEHwRaYDeisXg1zBO4zEbv0xR97IaOc6Mz/vtYXX2N5Y7V0NSpcJzxgBPYiKUjelS00hL6T4g=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw2aP90g7UuFY4dGlnpBvlVd7FACPZmRW5ELNqpaWtTMDd0lOSb
 89IenaAemhhk2GhNvqB8+wZY7xr812+BZBWW6+lUv7MvOQxaM8XT5Jx7HfF5GKc=
X-Gm-Gg: ASbGnct8LZpKmPUGCdGJhis0+utuS4rbGzYz2D4LzNXoi8DhrsmxDiHh8f3/eTBclkQ
 pKP2illv/sgEMpaHBQlFwF4hCd76Xl54c/G5ZiPU9X6tLLriVwYHLC1/rHWZ3iRbmjAm0df2Nda
 MVPZoEiDNZ9uhQlc1wuW565Kb1jV4rVN03GKS392kogHwRqJ/NWhxjk/lxF7ce6x2Uq6TVBN9X2
 4MKJmVEzO27NzWEKCAe17069CI5SMc9q0jEPlBrOjhx0HoD7tnr61fYK1DOVQVYwTcdY6t4+ciR
 pGdczPV73PO8glYwePpqEADRxIJk0qKWbX9TsHrNGcgHhKoHxGEnsA3ebYz3crQ9lweHWST0
X-Google-Smtp-Source: AGHT+IHFGqucmKGTyA5vmk4L71NpkM8eVm1tDoKjhCFYtm5+iTJpiXuabD74HhfORH+kTWKCVII7IQ==
X-Received: by 2002:a17:907:a4c3:b0:acb:aa43:e82d with SMTP id
 a640c23a62f3a-ad1fcb581e8mr443211366b.3.1746714392815; 
 Thu, 08 May 2025 07:26:32 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ad1891a2d87sm1088547966b.45.2025.05.08.07.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 May 2025 07:26:32 -0700 (PDT)
Date: Thu, 8 May 2025 16:26:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 saeedm@nvidia.com, leon@kernel.org, tariqt@nvidia.com, jonathan.lemon@gmail.com,
 richardcochran@gmail.com, aleksandr.loktionov@intel.com, milena.olech@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Message-ID: <timzeiuivkgvdzmyafp752acgfkieuqhivcab55x24ow7apovp@4lsq6esrrusg>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
 <20250508122128.1216231-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508122128.1216231-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1746714393; x=1747319193;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jIhWIUreSP+JGYnJn14K35TWWNfJWxsj/24+cQ+PUMY=;
 b=oVbbjIk1zRzHZSjo/Jslyszl5j621OTd90kIewl+Rgg8T4CPvsFhXAyU3u72aRBEOM
 tJJBU0DdNh7mmxghxQ0lQ9skFGXfgYwPm5TlfBPuPMIHTHE/9R3aTr0757BW/RelRq7v
 3DGsXJj9DgJTf1o0Of4OFkN+tnFPyIDuAmhowVFTqNvBqubPnvCJI2OnbwLExLL2OR/5
 DuQBga8xSdC8ex3f5KNAq7Ww4r+c5tUd0agAVQbYKPuRoyV9GsZFYnLSeGoTq1ffusKJ
 Itrnx1uSTO0t+wolv9gdrZVbfYbcbnOBFx7vhhbb7yhTk005SH/aC6EXDFpkAZIqJmGo
 gjkw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oVbbjIk1
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] dpll: add
 phase-offset-monitor feature to netlink spec
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

Thu, May 08, 2025 at 02:21:26PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Add enum dpll_feature_state for control over features.
>
>Add dpll device level attribute:
>DPLL_A_PHASE_OFFSET_MONITOR - to allow control over a phase offset monitor
>feature. Attribute is present and shall return current state of a feature
>(enum dpll_feature_state), if the device driver provides such capability,
>otherwie attribute shall not be present.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v3:
>- replace feature flags and capabilities with per feature attribute
>  approach,
>- add dpll documentation for phase-offset-monitor feature.
>---
> Documentation/driver-api/dpll.rst     | 16 ++++++++++++++++
> Documentation/netlink/specs/dpll.yaml | 24 ++++++++++++++++++++++++
> drivers/dpll/dpll_nl.c                |  5 +++--
> include/uapi/linux/dpll.h             | 12 ++++++++++++
> 4 files changed, 55 insertions(+), 2 deletions(-)
>
>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
>index e6855cd37e85..04efb425b411 100644
>--- a/Documentation/driver-api/dpll.rst
>+++ b/Documentation/driver-api/dpll.rst
>@@ -214,6 +214,22 @@ offset values are fractional with 3-digit decimal places and shell be
> divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
> modulo divided to get fractional part.
> 
>+Phase offset monitor
>+====================
>+
>+Phase offset measurement is typically performed against the current active
>+source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
>+the capability to monitor phase offsets across all available inputs.
>+The attribute and current feature state shall be included in the response
>+message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL devices.
>+In such cases, users can also control the feature using the
>+``DPLL_CMD_DEVICE_SET`` command by setting the ``enum dpll_feature_state``
>+values for the attribute.
>+
>+  =============================== ========================
>+  ``DPLL_A_PHASE_OFFSET_MONITOR`` attr state of a feature
>+  =============================== ========================
>+
> Embedded SYNC
> =============
> 
>diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
>index 8feefeae5376..e9774678b3f3 100644
>--- a/Documentation/netlink/specs/dpll.yaml
>+++ b/Documentation/netlink/specs/dpll.yaml
>@@ -240,6 +240,20 @@ definitions:
>       integer part of a measured phase offset value.
>       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
>       fractional part of a measured phase offset value.
>+  -
>+    type: enum
>+    name: feature-state
>+    doc: |
>+      Allow control (enable/disable) and status checking over features.
>+    entries:
>+      -
>+        name: disable
>+        doc: |
>+          feature shall be disabled
>+      -
>+        name: enable
>+        doc: |
>+          feature shall be enabled

Is it necessary to introduce an enum for simple bool?
I mean, we used to handle this by U8 attr with 0/1 value. Idk what's the
usual way carry boolean values to do this these days, but enum looks
like overkill.


> 
> attribute-sets:
>   -
>@@ -293,6 +307,14 @@ attribute-sets:
>           be put to message multiple times to indicate possible parallel
>           quality levels (e.g. one specified by ITU option 1 and another
>           one specified by option 2).
>+      -
>+        name: phase-offset-monitor
>+        type: u32
>+        enum: feature-state
>+        doc: Receive or request state of phase offset monitor feature.
>+          If enabled, dpll device shall monitor and notify all currently
>+          available inputs for changes of their phase offset against the
>+          dpll device.
>   -
>     name: pin
>     enum-name: dpll_a_pin
>@@ -483,6 +505,7 @@ operations:
>             - temp
>             - clock-id
>             - type
>+            - phase-offset-monitor
> 
>       dump:
>         reply: *dev-attrs
>@@ -499,6 +522,7 @@ operations:
>         request:
>           attributes:
>             - id
>+            - phase-offset-monitor
>     -
>       name: device-create-ntf
>       doc: Notification about device appearing
>diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
>index fe9b6893d261..8de90310c3be 100644
>--- a/drivers/dpll/dpll_nl.c
>+++ b/drivers/dpll/dpll_nl.c
>@@ -37,8 +37,9 @@ static const struct nla_policy dpll_device_get_nl_policy[DPLL_A_ID + 1] = {
> };
> 
> /* DPLL_CMD_DEVICE_SET - do */
>-static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_ID + 1] = {
>+static const struct nla_policy dpll_device_set_nl_policy[DPLL_A_PHASE_OFFSET_MONITOR + 1] = {
> 	[DPLL_A_ID] = { .type = NLA_U32, },
>+	[DPLL_A_PHASE_OFFSET_MONITOR] = NLA_POLICY_MAX(NLA_U32, 1),
> };
> 
> /* DPLL_CMD_PIN_ID_GET - do */
>@@ -105,7 +106,7 @@ static const struct genl_split_ops dpll_nl_ops[] = {
> 		.doit		= dpll_nl_device_set_doit,
> 		.post_doit	= dpll_post_doit,
> 		.policy		= dpll_device_set_nl_policy,
>-		.maxattr	= DPLL_A_ID,
>+		.maxattr	= DPLL_A_PHASE_OFFSET_MONITOR,
> 		.flags		= GENL_ADMIN_PERM | GENL_CMD_CAP_DO,
> 	},
> 	{
>diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
>index bf97d4b6d51f..349e1b3ca1ae 100644
>--- a/include/uapi/linux/dpll.h
>+++ b/include/uapi/linux/dpll.h
>@@ -192,6 +192,17 @@ enum dpll_pin_capabilities {
> 
> #define DPLL_PHASE_OFFSET_DIVIDER	1000
> 
>+/**
>+ * enum dpll_feature_state - Allow control (enable/disable) and status checking
>+ *   over features.
>+ * @DPLL_FEATURE_STATE_DISABLE: feature shall be disabled
>+ * @DPLL_FEATURE_STATE_ENABLE: feature shall be enabled
>+ */
>+enum dpll_feature_state {
>+	DPLL_FEATURE_STATE_DISABLE,
>+	DPLL_FEATURE_STATE_ENABLE,
>+};
>+
> enum dpll_a {
> 	DPLL_A_ID = 1,
> 	DPLL_A_MODULE_NAME,
>@@ -204,6 +215,7 @@ enum dpll_a {
> 	DPLL_A_TYPE,
> 	DPLL_A_LOCK_STATUS_ERROR,
> 	DPLL_A_CLOCK_QUALITY_LEVEL,
>+	DPLL_A_PHASE_OFFSET_MONITOR,
> 
> 	__DPLL_A_MAX,
> 	DPLL_A_MAX = (__DPLL_A_MAX - 1)
>-- 
>2.38.1
>
