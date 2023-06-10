Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D92A372AD41
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 18:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 045E24258A;
	Sat, 10 Jun 2023 16:22:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 045E24258A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686414146;
	bh=BEBdSa24hjOgBQ25XJg++xHrXqcFdqOStwi8Ajin4qg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D5D29QgrsdZ+ksYEgFeoG05XKQEeB/+QgHOAw06v98P8HHF1f6CZbkD1t/Bz36VMG
	 USnFvUO8rpOeXoMZlri6v34s8TPriEf0rfG1UQdDEsjTYyK0B036GuQEBHjxeVHKhR
	 RmL6ROMaZjSjjdRIm9OgJ/vxqZtPFXXdiDAm1g4E7UiCQ905OCZqiSa4VnOXjWDb+L
	 5gujWIy6LH9BkCVMUEiHMAQVofdystym4L0R7O/wRRvyglaFSh4Ulb89IvGqbcNQOq
	 ur2AYgO8wU+6i1LgWY25QFijZwjjgCdZ9Etw6Lyn8LoUcK+/IDkHrXAP9CVU3d2Xw4
	 BrRCZ8SWfzHug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WvlDTscIcUDe; Sat, 10 Jun 2023 16:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F5C742157;
	Sat, 10 Jun 2023 16:22:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F5C742157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E78471BF32E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD6C942157
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD6C942157
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36XZjd7gb1F7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 16:22:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6879D41DCA
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6879D41DCA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:22:13 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-97458c97333so468626466b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 09:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686414132; x=1689006132;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kx5pKruNSrU27aJ8jGqQPfU6y7ApLJM2wsxoi+1ZEN4=;
 b=LSjJCCArSsPfj1BF7W+fIIE9jZSZZIwRh+lFHMCS8Ia1TJR65/hi56AmdkfHMYrDnq
 b3FoR01Tq7+nQHPhnWsmLq9QEcpsEkxGlDpc3FPBwv7iYhHdKWUKjcSsm+koQ6KAufQA
 5voor1CwKQhYgaLR7qXwxV5GptWyWY0aR4jMgEW2HtYdK9zZ0d7IYyKuBknPX8eJowy7
 jE9E8hLbhlJRsGFsEcKPW9bRwtYENQpAQrH8ayxm46Pic1p485JNqi2YpDsobPk32jI9
 RXprRSV9tZpK+V8rkj9SnQrJMwkCnghPI/m1+SQBVcbYWaAQRLt+Rk2xF2vgew+ijS94
 crMQ==
X-Gm-Message-State: AC+VfDwkIfKhTq2QyFoOethFr9UURZKrESFbTD2PujpeqyzB4pNPQTzG
 IDpFfT0GVpOhsxIItkOyTmCF3g==
X-Google-Smtp-Source: ACHHUZ44O/6CAD+E974nX8FE7PkvlcYhxH5tQj6WeQoLOh5GC1uEq4yf9xej6n0yI2WCBic22/NrLA==
X-Received: by 2002:a17:907:1626:b0:96f:e7cf:5004 with SMTP id
 hb38-20020a170907162600b0096fe7cf5004mr4830407ejc.73.1686414131776; 
 Sat, 10 Jun 2023 09:22:11 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 sa9-20020a170906eda900b00974612a9837sm2730051ejb.20.2023.06.10.09.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 09:22:10 -0700 (PDT)
Date: Sat, 10 Jun 2023 18:22:09 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZISjMUcpmUTBXIOA@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686414132; x=1689006132; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kx5pKruNSrU27aJ8jGqQPfU6y7ApLJM2wsxoi+1ZEN4=;
 b=lmdjvR+23NrbWloMWGFrEdM7Gs4oUsnXjoqdfduB0a+TiRA56vu/8YfNlmcKUhHVBC
 NYOOad07Uf6Uzgun9OvMZx9EgkC99LouNoeRXtQ4fiYyOJiHoO9uUcCblcKU7sbbcob0
 eRyDlTOfvSSpmyFsUaHf4OamIYBHrlUQ2d1VdXnEWfysZ64Lit1MoB6JOc6tn8WdsPyY
 IQk8Gji0H9ERvpPExfkcx1xWGYT/gR1RLssH6QYTp7gSnF89E/D0bkyo8P+6IfaeGD7Z
 ohRwuvJMBWz556EEU76WcbeT6BsunEpw/cstI9xgVTEaSw+gZ5VXBliIT8Tmf5s5hSMA
 bidw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=lmdjvR+2
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 02/10] dpll: spec: Add Netlink
 spec in YAML
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:45PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Add a protocol spec for DPLL.
>Add code generated from the spec.
>
>Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> Documentation/netlink/specs/dpll.yaml | 466 ++++++++++++++++++++++++++
> drivers/dpll/dpll_nl.c                | 161 +++++++++
> drivers/dpll/dpll_nl.h                |  50 +++
> include/uapi/linux/dpll.h             | 184 ++++++++++
> 4 files changed, 861 insertions(+)
> create mode 100644 Documentation/netlink/specs/dpll.yaml
> create mode 100644 drivers/dpll/dpll_nl.c
> create mode 100644 drivers/dpll/dpll_nl.h
> create mode 100644 include/uapi/linux/dpll.h
>
>diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
>new file mode 100644
>index 000000000000..f7317003d312
>--- /dev/null
>+++ b/Documentation/netlink/specs/dpll.yaml
>@@ -0,0 +1,466 @@
>+# SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
>+
>+name: dpll
>+
>+doc: DPLL subsystem.
>+
>+definitions:
>+  -
>+    type: enum
>+    name: mode
>+    doc: |
>+      working-modes a dpll can support, differentiate if and how dpll selects

s/working-modes/working modes/
s/differentiate/differentiates/
?


>+      one of its inputs to syntonize with it, valid values for DPLL_A_MODE
>+      attribute
>+    entries:
>+      -
>+        name: manual
>+        doc: input can be only selected by sending a request to dpll
>+        value: 1
>+      -
>+        name: automatic
>+        doc: highest prio, valid input, auto selected by dpll

s/valid input, auto selected by dpll/input pin auto selected by dpll/
?


>+      -
>+        name: holdover
>+        doc: dpll forced into holdover mode
>+      -
>+        name: freerun
>+        doc: dpll driven on system clk

Thinking about modes "holdover" and "freerun".
1) You don't use them anywhere in this patchset, please remove them
   until they are needed. ptp_ocp and ice uses automatic, mlx5 uses
   manual. Btw, are there any other unused parts of UAPI? If yes, could
   you please remove them too?

2) I don't think it is correct to have them.
   a) to achieve holdover:
      if state is LOCKED_HO_ACQ you just disconnect all input pins.
   b) to achieve freerun:
      if state LOCKED you just disconnect all input pins.
   So don't mangle the mode with status.


>+    render-max: true
>+  -
>+    type: enum
>+    name: lock-status
>+    doc: |
>+      provides information of dpll device lock status, valid values for
>+      DPLL_A_LOCK_STATUS attribute
>+    entries:
>+      -
>+        name: unlocked
>+        doc: |
>+          dpll was not yet locked to any valid input (or is in mode:
>+            DPLL_MODE_FREERUN)

Don't forget to remove the mention of mode freerun from here.


>+        value: 1
>+      -
>+        name: locked
>+        doc: |
>+          dpll is locked to a valid signal, but no holdover available
>+      -
>+        name: locked-ho-acq
>+        doc: |
>+          dpll is locked and holdover acquired
>+      -
>+        name: holdover
>+        doc: |
>+          dpll is in holdover state - lost a valid lock or was forced
>+          by selecting DPLL_MODE_HOLDOVER mode (latter possible only
>+          when dpll lock-state was already DPLL_LOCK_STATUS_LOCKED,
>+          if dpll lock-state was not DPLL_LOCK_STATUS_LOCKED, the
>+          dpll's lock-state shall remain DPLL_LOCK_STATUS_UNLOCKED
>+          even if DPLL_MODE_HOLDOVER was requested)

Don't forget to remove the mention of mode holdover from here.


>+    render-max: true
>+  -
>+    type: const
>+    name: temp-divider
>+    value: 1000
>+    doc: |
>+      temperature divider allowing userspace to calculate the
>+      temperature as float with three digit decimal precision.
>+      Value of (DPLL_A_TEMP / DPLL_TEMP_DIVIDER) is integer part of
>+      temperature value.
>+      Value of (DPLL_A_TEMP % DPLL_TEMP_DIVIDER) is fractional part of
>+      temperature value.
>+  -
>+    type: enum
>+    name: type
>+    doc: type of dpll, valid values for DPLL_A_TYPE attribute
>+    entries:
>+      -
>+        name: pps
>+        doc: dpll produces Pulse-Per-Second signal
>+        value: 1
>+      -
>+        name: eec
>+        doc: dpll drives the Ethernet Equipment Clock
>+    render-max: true
>+  -
>+    type: enum
>+    name: pin-type
>+    doc: |
>+      defines possible types of a pin, valid values for DPLL_A_PIN_TYPE
>+      attribute
>+    entries:
>+      -
>+        name: mux
>+        doc: aggregates another layer of selectable pins
>+        value: 1
>+      -
>+        name: ext
>+        doc: external input
>+      -
>+        name: synce-eth-port
>+        doc: ethernet port PHY's recovered clock
>+      -
>+        name: int-oscillator
>+        doc: device internal oscillator
>+      -
>+        name: gnss
>+        doc: GNSS recovered clock
>+    render-max: true
>+  -
>+    type: enum
>+    name: pin-direction
>+    doc: |
>+      defines possible direction of a pin, valid values for
>+      DPLL_A_PIN_DIRECTION attribute
>+    entries:
>+      -
>+        name: input
>+        doc: pin used as a input of a signal

I don't think I have any objections against "input", but out of
curiosity, why you changed that from "source"?


>+        value: 1
>+      -
>+        name: output
>+        doc: pin used to output the signal
>+    render-max: true
>+  -
>+    type: const
>+    name: pin-frequency-1-hz
>+    value: 1
>+  -
>+    type: const
>+    name: pin-frequency-10-khz
>+    value: 10000
>+  -
>+    type: const
>+    name: pin-frequency-77_5-khz
>+    value: 77500
>+  -
>+    type: const
>+    name: pin-frequency-10-mhz
>+    value: 10000000
>+  -
>+    type: enum
>+    name: pin-state
>+    doc: |
>+      defines possible states of a pin, valid values for
>+      DPLL_A_PIN_STATE attribute
>+    entries:
>+      -
>+        name: connected
>+        doc: pin connected, active input of phase locked loop
>+        value: 1
>+      -
>+        name: disconnected
>+        doc: pin disconnected, not considered as a valid input
>+      -
>+        name: selectable
>+        doc: pin enabled for automatic input selection
>+    render-max: true
>+  -
>+    type: flags
>+    name: pin-caps
>+    doc: |
>+      defines possible capabilities of a pin, valid flags on
>+      DPLL_A_PIN_CAPS attribute
>+    entries:
>+      -
>+        name: direction-can-change
>+      -
>+        name: priority-can-change
>+      -
>+        name: state-can-change
>+
>+attribute-sets:
>+  -
>+    name: dpll
>+    enum-name: dpll_a
>+    attributes:
>+      -
>+        name: id
>+        type: u32
>+        value: 1
>+      -
>+        name: module-name
>+        type: string
>+      -
>+        name: clock-id
>+        type: u64
>+      -
>+        name: mode
>+        type: u8
>+        enum: mode
>+      -
>+        name: mode-supported
>+        type: u8
>+        enum: mode
>+        multi-attr: true
>+      -
>+        name: lock-status
>+        type: u8
>+        enum: lock-status
>+      -
>+        name: temp
>+        type: s32
>+      -
>+        name: type
>+        type: u8
>+        enum: type
>+      -
>+        name: pin-id
>+        type: u32
>+      -
>+        name: pin-board-label
>+        type: string
>+      -
>+        name: pin-panel-label
>+        type: string
>+      -
>+        name: pin-package-label
>+        type: string

Wouldn't it make sense to add some small documentation blocks to the
attrs? IDK.


>+      -
>+        name: pin-type
>+        type: u8
>+        enum: pin-type
>+      -
>+        name: pin-direction
>+        type: u8
>+        enum: pin-direction
>+      -
>+        name: pin-frequency
>+        type: u64
>+      -
>+        name: pin-frequency-supported
>+        type: nest
>+        multi-attr: true
>+        nested-attributes: pin-frequency-range
>+      -
>+        name: pin-frequency-min
>+        type: u64
>+      -
>+        name: pin-frequency-max
>+        type: u64
>+      -
>+        name: pin-prio
>+        type: u32
>+      -
>+        name: pin-state
>+        type: u8
>+        enum: pin-state
>+      -
>+        name: pin-dpll-caps
>+        type: u32
>+      -
>+        name: pin-parent
>+        type: nest
>+        multi-attr: true
>+        nested-attributes: pin-parent
>+  -
>+    name: pin-parent
>+    subset-of: dpll
>+    attributes:
>+      -
>+        name: id
>+        type: u32
>+      -
>+        name: pin-direction
>+        type: u8
>+      -
>+        name: pin-prio
>+        type: u32
>+      -
>+        name: pin-state
>+        type: u8
>+      -
>+        name: pin-id
>+        type: u32
>+
>+  -
>+    name: pin-frequency-range
>+    subset-of: dpll
>+    attributes:
>+      -
>+        name: pin-frequency-min
>+        type: u64
>+      -
>+        name: pin-frequency-max
>+        type: u64

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
