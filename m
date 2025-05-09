Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A9AAB0A50
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 08:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AEB761162;
	Fri,  9 May 2025 06:12:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9s6EbMEapEol; Fri,  9 May 2025 06:12:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B73236116D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746771135;
	bh=JsqZgIgkSuMcTrxJQRDgcEGPZOgCfhwflJ33fpoq6jw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=avb9R+Mx441bDKjv2WRC4JIR++DaWH5uiCEl6i/u37mBFwNeSBJZoLHkIyIzU+QbK
	 6pBnYHRIxKXVL6rP1rNY4x39IzVnLSdYzeprOyxVEEttjcanzp0rICixjIe8M8BOmb
	 AU/vC9iq/LhUiYd7lpZN8ecK8QiXxvxhrcAzD9gKeQ3N3I+KwY4YxlUr7vHXAHYdA5
	 T8nB6KmDGL8It48fR1tZuhSqg1Ab5Mdp7XZkz7UiisqYzAftlJRLTx2V2g2euvT60l
	 UqCh+rm59Y+zLSePHkbRig5NIzypN7d/XJ6bqqc6uRRtZ0yTcskUg88sWeaNco/itk
	 J3vO8llED9Bbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B73236116D;
	Fri,  9 May 2025 06:12:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 99DFB1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 06:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B2DD8195C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 06:12:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D_S9N3kUFcIj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 06:12:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F3F3981587
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3F3981587
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3F3981587
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 06:12:09 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-5fcaff7274bso145651a12.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 May 2025 23:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746771128; x=1747375928;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JsqZgIgkSuMcTrxJQRDgcEGPZOgCfhwflJ33fpoq6jw=;
 b=ERH2F3Z1z38r2nQdKylhBr9uKnrBZChzyPck1y4McsLRKbWLKU9w6S9AiVTdz3+ZeY
 6yp1+HNC5dhVU+JJ3DtVoHbkx2d5gslPPVnaJb2V7TMXje+x0qYOOsZnuD5gYZY8syOX
 HRn94wxlf5GXN+XtZf2+sBvDj+GL+q0OESBy/mixiFWhcPWfqYP2TA6806xsV+G9rWQO
 DgXtmnsspw1RqRgtX8JlVGavlkBKs0iGEgCr0LjEpxrqdFvT8MhOPShwshfh7GpHydmB
 LA7bbsGqOM0r+jlvLHVEom92aCo0i0vsuV3Y7rzT9jFfqYk9lVaTSPrBYKsDkPvHpa4G
 qFPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+GjBKVJTYzI9aEReU/eOgcBCFkiqUNtp0519Vj6XD6o26UuZsIUim02XPAbCVKNPCj1dj8G+iRHPnXLPyVPk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwLwWug8oxLj1xcP/KLfjr2CVXp+7424SGZOAwmmuswOX/r/uJ7
 edFEqHc7DolmTOyKpr8poJ8F1IVYgrXWwa1ABCyelwwZPn/WS0hPS2UcLNg9RJg=
X-Gm-Gg: ASbGncuz0E9vgPto6tLMNmuhU9snfWlwu78TF8HW4bmWRP8jZX7wi1JaFjL7WLuY5eP
 HEsqf6i5SS94g9ok75sKdexuZ3X2YEdsdkr0iNFtpU2atk4NkgnkoPaF5Oy7VxdCGKvz+tBh+dA
 SMC1QsYqp44UVl9sh+Ynqvb92mPbZkvNokOQZH374lFNHiWWYF8Ht1QLspimHpg1dCA6GsbzEQy
 K0rTHzhZdfSNQdodf3PXrTYVfvtWfpqGffN3hVgQurJ+P9PGUqegG46fhgzyegkgR28xGPPFcqz
 uiQCEYj5kDJor6EleIfkJKobPkNksPje5HOz2wEBgn1RxnXMn6rvgDwSRAUrM4V099TzEHIB
X-Google-Smtp-Source: AGHT+IFwTIvZ/JDXp63lVD7yCHCYF/5x6H0kXJQDeAXO5fUwzIWcY8Yr2zXT/J8iEsgfDbopaGw9rw==
X-Received: by 2002:a17:906:bf46:b0:ac7:ec31:deb0 with SMTP id
 a640c23a62f3a-ad218e91c5fmr193282666b.9.1746771127738; 
 Thu, 08 May 2025 23:12:07 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ad2197c5b9csm98887566b.159.2025.05.08.23.12.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 May 2025 23:12:07 -0700 (PDT)
Date: Fri, 9 May 2025 08:11:56 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, 
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, 
 "horms@kernel.org" <horms@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "saeedm@nvidia.com" <saeedm@nvidia.com>, 
 "leon@kernel.org" <leon@kernel.org>, "tariqt@nvidia.com" <tariqt@nvidia.com>, 
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Olech,
 Milena" <milena.olech@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Message-ID: <zosr5eqz5sh2z5uqxghdko2fug2zlzr6dbwbmavesiysabvvgj@zr6pxggacpwg>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
 <20250508122128.1216231-2-arkadiusz.kubalewski@intel.com>
 <timzeiuivkgvdzmyafp752acgfkieuqhivcab55x24ow7apovp@4lsq6esrrusg>
 <SJ2PR11MB845211DED1A8ECD92116E0019B8BA@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB845211DED1A8ECD92116E0019B8BA@SJ2PR11MB8452.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1746771128; x=1747375928;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JsqZgIgkSuMcTrxJQRDgcEGPZOgCfhwflJ33fpoq6jw=;
 b=FrVwo2iy1Wtk88yOhqdKPlQDuglUVMWpjivDDHVuigRanqej5kTBDccuNzhmvBvqtw
 lEOXmG8YWHmMzzB+nifca4qRJKEYmyxxesHnu9RpboOee9b3TO47C/A+StgUGPSYib0A
 doXovZyhqdMPIMBVz3Z+vW8y0lbdxnSZPMvOh+S/NCWFsL0dZU00wygBKNEdWQrZyZ14
 7ZGKLiz90GEAt/3V6YVw9uQTn/YXkwVd9JU3FaqQDJpbis6BgWR/KLJpbADeq7Mr6cv1
 n83s55Kmfhr8sQceIPk9Z6OK18h8A2o7r+r3v7bOVGR+RNGb+J5uhZickKTdoepXc6ez
 dqJQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=FrVwo2iy
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

Thu, May 08, 2025 at 05:29:07PM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Thursday, May 8, 2025 4:26 PM
>>
>>Thu, May 08, 2025 at 02:21:26PM +0200, arkadiusz.kubalewski@intel.com
>>wrote:
>>>Add enum dpll_feature_state for control over features.
>>>
>>>Add dpll device level attribute:
>>>DPLL_A_PHASE_OFFSET_MONITOR - to allow control over a phase offset monitor
>>>feature. Attribute is present and shall return current state of a feature
>>>(enum dpll_feature_state), if the device driver provides such capability,
>>>otherwie attribute shall not be present.
>>>
>>>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>>Reviewed-by: Milena Olech <milena.olech@intel.com>
>>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>---
>>>v3:
>>>- replace feature flags and capabilities with per feature attribute
>>>  approach,
>>>- add dpll documentation for phase-offset-monitor feature.
>>>---
>>> Documentation/driver-api/dpll.rst     | 16 ++++++++++++++++
>>> Documentation/netlink/specs/dpll.yaml | 24 ++++++++++++++++++++++++
>>> drivers/dpll/dpll_nl.c                |  5 +++--
>>> include/uapi/linux/dpll.h             | 12 ++++++++++++
>>> 4 files changed, 55 insertions(+), 2 deletions(-)
>>>
>>>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-
>>>api/dpll.rst
>>>index e6855cd37e85..04efb425b411 100644
>>>--- a/Documentation/driver-api/dpll.rst
>>>+++ b/Documentation/driver-api/dpll.rst
>>>@@ -214,6 +214,22 @@ offset values are fractional with 3-digit decimal
>>>places and shell be
>>> divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
>>> modulo divided to get fractional part.
>>>
>>>+Phase offset monitor
>>>+====================
>>>+
>>>+Phase offset measurement is typically performed against the current
>>>active
>>>+source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
>>>+the capability to monitor phase offsets across all available inputs.
>>>+The attribute and current feature state shall be included in the response
>>>+message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL
>>devices.
>>>+In such cases, users can also control the feature using the
>>>+``DPLL_CMD_DEVICE_SET`` command by setting the ``enum
>>>dpll_feature_state``
>>>+values for the attribute.
>>>+
>>>+  =============================== ========================
>>>+  ``DPLL_A_PHASE_OFFSET_MONITOR`` attr state of a feature
>>>+  =============================== ========================
>>>+
>>> Embedded SYNC
>>> =============
>>>
>>>diff --git a/Documentation/netlink/specs/dpll.yaml
>>>b/Documentation/netlink/specs/dpll.yaml
>>>index 8feefeae5376..e9774678b3f3 100644
>>>--- a/Documentation/netlink/specs/dpll.yaml
>>>+++ b/Documentation/netlink/specs/dpll.yaml
>>>@@ -240,6 +240,20 @@ definitions:
>>>       integer part of a measured phase offset value.
>>>       Value of (DPLL_A_PHASE_OFFSET % DPLL_PHASE_OFFSET_DIVIDER) is a
>>>       fractional part of a measured phase offset value.
>>>+  -
>>>+    type: enum
>>>+    name: feature-state
>>>+    doc: |
>>>+      Allow control (enable/disable) and status checking over features.
>>>+    entries:
>>>+      -
>>>+        name: disable
>>>+        doc: |
>>>+          feature shall be disabled
>>>+      -
>>>+        name: enable
>>>+        doc: |
>>>+          feature shall be enabled
>>
>>Is it necessary to introduce an enum for simple bool?
>>I mean, we used to handle this by U8 attr with 0/1 value. Idk what's the
>>usual way carry boolean values to do this these days, but enum looks
>>like overkill.
>>
>
>Well, yeah.. tricky.. There is no bool type in the attribute types?
>Input/output pin direction or eec/pps dpll types are also 2-value-enums
>we use same way..
>
>Had to use something as it is better then plain 0/1, also those values
>could be reused for any other feature.

Okay, I don't mind.

>
>Thank you!
>Arkadiusz
> 
>[...]
