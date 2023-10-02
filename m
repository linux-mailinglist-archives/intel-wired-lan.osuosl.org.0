Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ED17B5596
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 17:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8779E610CF;
	Mon,  2 Oct 2023 15:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8779E610CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696258860;
	bh=uUqEd4yq5Nx2+/VZrYqoruKVC3Wi52MvpfrCZG8oCBc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qlXKM/VkZXqdu6EnVGkm6r5HIQsXzqoGfkiluH9iA76HrOD7eggrhu9sGR2VyS+PS
	 zbGvSgMLcbLwkjtP6XQ6mZFo/pjia3WcEX5CRc/K7ZdGcThMZKb/A0E7UHjK/ynMRe
	 YPKgh5YNixSp69eWLSAAT+xQdx8d9RvD0rjLofdiU9C0MRSsM81QWNdD4R6llE5xbV
	 g81TP4ipW0G0lKhoA8rsKCAqPwikP/e8G/f8wTFgbjuyKOdHZjOMUPoka58VWDP28E
	 S2W+TEyFKdI2Vx4rbmV7BlT6kcZXKUt4wAC5nGxfmcA1O+stS71i6PW/697XvC7SAV
	 DjRYG5VG4DrBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnyukoJDcBp6; Mon,  2 Oct 2023 15:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B201610A7;
	Mon,  2 Oct 2023 15:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B201610A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8EB51BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FF6041F1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FF6041F1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sx-ocG8uu4CN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 15:00:52 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21C7741F1D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 15:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21C7741F1D
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-32487efc319so4204007f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Oct 2023 08:00:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696258849; x=1696863649;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wkzGa2NxcO0pxnOMibbgAoclGRI+KHmZWNdvoqM0EiE=;
 b=pIyD2B8Fo20asrk82O0QWG2d8OUsPGL6G4084S5Qd5UnprTcM8BI/LgFlZ42fgBU/S
 38Yih50sQ5cHLO+BUSYCbIkyyzQU9c5MmjE3f9uomqlt7CD96tzgPZwZGCe4tNG6H/Uc
 OhX4lAzWCFkB8hC7PSKFQtjLRDRYUmDQn0RbQsDOI9gpZ3QMZ3PIp3UInPxXXxTheZJu
 F2+Wua6LUFnZN4NiRC1N5u6hLzB/zZH1yF08MkJz+6+nccykpgEO1/1FdBX88UZY+0Wc
 8kDJ/YrCkCgvnRzzGRnkH9mdJU9KIMPAfD8zDGRKGm13zf1rm3I8ZNDeDW5G+/axKwJA
 3zjQ==
X-Gm-Message-State: AOJu0YxHNoal8/TLiI5Zi+jLN31xMyPQgYHX+miv/i0VXorsWd1MwYul
 SaYWGv0PFM7qp81+X9I4iSYQ7A==
X-Google-Smtp-Source: AGHT+IHrmlnt9I95atsKI9gbnPrSdt+pQfKReIyEPo4bPCSEjPbgKCtgw/CbTF6jX9PR2dx50R4oNQ==
X-Received: by 2002:a05:6000:1112:b0:31f:d3e3:a53d with SMTP id
 z18-20020a056000111200b0031fd3e3a53dmr10800356wrw.2.1696258849324; 
 Mon, 02 Oct 2023 08:00:49 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 kb23-20020a1709070f9700b009944e955e19sm17070887ejc.30.2023.10.02.08.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 08:00:48 -0700 (PDT)
Date: Mon, 2 Oct 2023 17:00:47 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRrbH4gdfOg9TmV3@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230927092435.1565336-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696258849; x=1696863649;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wkzGa2NxcO0pxnOMibbgAoclGRI+KHmZWNdvoqM0EiE=;
 b=H3awDoSM5UaR9y0BlWXbZAF6xTgtWvoNIahvA5SeOuIYvpKFsYzPkDWlVXy5B3S0aJ
 QGQLumWDAWDCNj29muNvjjFhhesElC/H/d1+oKbFYajObx0yrhLxOYakj0SHEYmFG7eU
 p8q/O04b4biIbslV7zesugpvENlU1OwTH5hezbUWqMaLnzj3fK50LslpYRoT8ZJENWz+
 CtcWci49/v4+no+sEwZDFsLp8tc7A/aV7v1pk+z0NDhJUr43MXWEHHcgUHjW/mAFkHJT
 4V+l8xPFwvoa9+c01l/K67+PeBZEkHPOBwyzodvLaXfS8kxlz3DCqeWtELEv8Gci/gT4
 mFRw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=H3awDoSM
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] dpll: docs: add support
 for pin signal phase offset/adjust
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
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Sep 27, 2023 at 11:24:32AM CEST, arkadiusz.kubalewski@intel.com wrote:
>Add dpll documentation on new pin's attributes:
>- phase-offset - measured difference between phase of signals on pin
>  and dpll
>- phase-adjust - adjustable value of pin's signal phase
>- phase-adjust-min / phase-adjust-max - values for determining limits
>  for phase-adjust
>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> Documentation/driver-api/dpll.rst | 53 ++++++++++++++++++++++++++++++-
> 1 file changed, 52 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/driver-api/dpll.rst b/Documentation/driver-api/dpll.rst
>index bb52f1b8c0be..59634a3513bd 100644
>--- a/Documentation/driver-api/dpll.rst
>+++ b/Documentation/driver-api/dpll.rst
>@@ -173,6 +173,47 @@ in order to configure active input of a MUX-type pin, the user needs to
> request desired pin state of the child pin on the parent pin,
> as described in the ``MUX-type pins`` chapter.
> 
>+Phase offset measurement and adjustment
>+========================================
>+
>+Device may provide ability to measure a phase difference between signals
>+on a pin and its parent dpll device. If pin-dpll phase offset measurement
>+is supported, it shall be provided with ``DPLL_A_PIN_PHASE_OFFSET``
>+attribute for each parent dpll device.
>+
>+Device may also provide ability to adjust a signal phase on a pin.
>+If pin phase adjustment is supported, minimal and maximal values that pin
>+handle shall be provide to the user on ``DPLL_CMD_PIN_GET`` respond
>+with ``DPLL_A_PIN_PHASE_ADJUST_MIN`` and ``DPLL_A_PIN_PHASE_ADJUST_MAX``
>+attributes. Configured phase adjust value is provided with
>+``DPLL_A_PIN_PHASE_ADJUST`` attribute of a pin, and value change can be
>+requested with the same attribute with ``DPLL_CMD_PIN_SET`` command.
>+
>+  =============================== ======================================
>+  ``DPLL_A_PIN_ID``               configured pin id
>+  ``DPLL_A_PIN_PHASE_ADJUST_MIN`` attr minimum value of phase adjustment
>+  ``DPLL_A_PIN_PHASE_ADJUST_MAX`` attr maximum value of phase adjustment
>+  ``DPLL_A_PIN_PHASE_ADJUST``     attr configured value of phase
>+                                  adjustment on parent dpll device
>+  ``DPLL_A_PIN_PARENT_DEVICE``    nested attribute for requesting
>+                                  configuration on given parent dpll
>+                                  device
>+    ``DPLL_A_PIN_PARENT_ID``      parent dpll device id
>+    ``DPLL_A_PIN_PHASE_OFFSET``   attr measured phase difference
>+                                  between a pin and parent dpll device
>+  =============================== ======================================
>+
>+All phase related values are provided in pico seconds, which represents
>+time differnece between signals phase. The negative value means that
>+phase of signal on pin is earlier in time than dpll's signal. Positive
>+value means that phase of signal on pin is later in time than signal of
>+a dpll.
>+
>+Phase adjust (also min and max) values are integers, but measured phase
>+offset values are fractional with 3-digit decimal places and shell be
>+divided with ``DPLL_PIN_PHASE_OFFSET_DIVIDER`` to get integer part and
>+modulo divided to get fractional part.
>+
> Configuration commands group
> ============================
> 
>@@ -263,6 +304,12 @@ according to attribute purpose.
>                                        frequencies
>       ``DPLL_A_PIN_ANY_FREQUENCY_MIN`` attr minimum value of frequency
>       ``DPLL_A_PIN_ANY_FREQUENCY_MAX`` attr maximum value of frequency
>+    ``DPLL_A_PIN_PHASE_ADJUST_MIN``    attr minimum value of phase
>+                                       adjustment
>+    ``DPLL_A_PIN_PHASE_ADJUST_MAX``    attr maximum value of phase
>+                                       adjustment
>+    ``DPLL_A_PIN_PHASE_ADJUST``        attr configured value of phase
>+                                       adjustment on parent device
>     ``DPLL_A_PIN_PARENT_DEVICE``       nested attr for each parent device
>                                        the pin is connected with
>       ``DPLL_A_PIN_PARENT_ID``         attr parent dpll device id
>@@ -270,8 +317,10 @@ according to attribute purpose.
>                                        dpll device
>       ``DPLL_A_PIN_STATE``             attr state of pin on the parent
>                                        dpll device
>-     ``DPLL_A_PIN_DIRECTION``          attr direction of a pin on the
>+      ``DPLL_A_PIN_DIRECTION``         attr direction of a pin on the

Could be in a separate patch, it's not related to this one.


>                                        parent dpll device
>+      ``DPLL_A_PIN_PHASE_OFFSET``      attr measured phase difference
>+                                       between a pin and parent dpll
>     ``DPLL_A_PIN_PARENT_PIN``          nested attr for each parent pin
>                                        the pin is connected with
>       ``DPLL_A_PIN_PARENT_ID``         attr parent pin id
>@@ -284,6 +333,8 @@ according to attribute purpose.
>   ``DPLL_CMD_PIN_SET``                 command to set pins configuration
>     ``DPLL_A_PIN_ID``                  attr unique a pin ID
>     ``DPLL_A_PIN_FREQUENCY``           attr requested frequency of a pin
>+    ``DPLL_A_PIN_PHASE_ADJUST``        attr requested value of phase
>+                                       adjustment on parent device
>     ``DPLL_A_PIN_PARENT_DEVICE``       nested attr for each parent dpll
>                                        device configuration request
>       ``DPLL_A_PIN_PARENT_ID``         attr parent dpll device id
>-- 
>2.38.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
