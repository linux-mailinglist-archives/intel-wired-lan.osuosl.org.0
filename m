Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EAB7B557C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 16:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA1DA61076;
	Mon,  2 Oct 2023 14:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA1DA61076
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696258418;
	bh=SX3QXEaR6D8cgew1TYopFJTWBofzj0MG/+aF3a4XLes=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X4hMgfEui2hz3GGUO/Ga+mcrap6OSL4vMNiMA5+au3XCGpAJj1JhgMTWH6CLQJaSS
	 ptXVbF+zJR55b6tEg8H67+FzxFQrAidGlnRzb3NZLGr29wWbXYkPCC8cMdkPVOIIs/
	 0KrBwNuqlvi2qk4wSWm84XbzXNPN8AeGRwFBLkKxaatr4sYIfmeFoVLQAUFwobCsaV
	 hAwo2tiptSA2HXPoLcm5hDx9E47PUxNwAcyaize6IJjTpH2+Q4Jtm58bFdKcaWUWya
	 kkXQz0WgEYozXSKPArv7Ct3WNjB4T1UbwPCG6bb9GD3A4X4JwYxk5/HafecYZUYxM9
	 /VyhUon+XE5GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZRMiudD3_t4; Mon,  2 Oct 2023 14:53:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1D5060BBD;
	Mon,  2 Oct 2023 14:53:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1D5060BBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF711BF584
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E66CA81FA2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E66CA81FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Usp05Fdsw6eN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 14:53:29 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EED681FA5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:53:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EED681FA5
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-53406799540so16928222a12.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Oct 2023 07:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696258406; x=1696863206;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Io8DiXqjSfTqepUgkoeQXJPEkLkiVe5602Ih+UtiRhc=;
 b=Hg2PndGw+zy4N5exzHDfac+lFoBfg8eTa/7mPaB4kbK764i/bWEDkmTJBqEt9huM8J
 +FmdUhDh9hxroWiTwss/2KbX7UjDnTfzfP/ZYHqHJDS3Nv+nMCdKjDzDqJYNpuPkw0BE
 Gc8Zli1xqjbdpDutzMUPbOc0yKc/3Ow3PYuSIykh5v0qYRApPNoznlO1S72ErCHIXDVD
 B6jIaAedkKotneSOglY3kOVeZAL+7+IkURGgEchzcD3ogG8MT0Zt0HKb8dnXAaxCIicb
 2WEAHOigeIi0UprHsNsL1u0RqNRP9+mtOWTUDO/IAEwhRbTpYBwPI2FkBZ58dYfmQgHR
 iv3g==
X-Gm-Message-State: AOJu0YydzhTGx9xc+gjZD0snxvjInL5LWxi4ggOvN6jsA0qyxaPNKiGq
 sIp5LwmPToKQqIlN/afcMA2hdw==
X-Google-Smtp-Source: AGHT+IGLdofiABYnVTHaKEqx4FAGXdzNwFEC1xhDWk5ks3eDjq8Ai96j3n5CHrYeigrr56gl72n0Wg==
X-Received: by 2002:a05:6402:1481:b0:530:5465:ad6d with SMTP id
 e1-20020a056402148100b005305465ad6dmr9956304edv.2.1696258406261; 
 Mon, 02 Oct 2023 07:53:26 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 cy23-20020a0564021c9700b005362c9905b2sm6638316edb.35.2023.10.02.07.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 07:53:25 -0700 (PDT)
Date: Mon, 2 Oct 2023 16:53:24 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZRrZZDDvuifWhDeL@nanopsycho>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230927092435.1565336-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696258406; x=1696863206;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Io8DiXqjSfTqepUgkoeQXJPEkLkiVe5602Ih+UtiRhc=;
 b=sgVCIO1MJAj5jAb/yZgkeHlvOyrBDF4RmRkxpmWUxjGurjzepDEojrAu7lWLLPLeBy
 HNJWHnl6wb2LDLbjnZx3YIGJCu4aXQGqLlYTszzyKakF895HVrEMJ/2E45xNSP7my5Ss
 OFiwsCasjIrXYoo7tAD+jVjznzIh6q++mF9uP2n2qfXHJEvf4roZRPN6PwemqscNsBmM
 kWz1UCtEHcXd1KBTt0QLr+D2RTOvqG9DaO80nhrWXZTTU163+DYqzJX0qQKn7zaMRW8w
 kVoZtFCIb5+S+/fBjpLIKG6NoCo7QvL5trfmumHVrw4hY148IEO46k/Km3TlYqGFj8Lf
 aK3Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=sgVCIO1M
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/4] dpll: spec: add support
 for pin-dpll signal phase offset/adjust
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

Wed, Sep 27, 2023 at 11:24:33AM CEST, arkadiusz.kubalewski@intel.com wrote:
>Add new pin's attributes to dpll netlink spec:
>- phase-offset - measured difference between phase of signals on pin
>  and dpll
>- phase-adjust - adjustable value of pin's signal phase
>- phase-adjust-min / phase-adjust-max - values for determining limits
>  for phase-adjust
>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> Documentation/netlink/specs/dpll.yaml | 33 ++++++++++++++++++++++++++-
> drivers/dpll/dpll_nl.c                |  8 ++++---
> drivers/dpll/dpll_nl.h                |  2 +-
> include/uapi/linux/dpll.h             |  8 ++++++-
> 4 files changed, 45 insertions(+), 6 deletions(-)
>
>diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
>index 8b86b28b47a6..dc057494101f 100644
>--- a/Documentation/netlink/specs/dpll.yaml
>+++ b/Documentation/netlink/specs/dpll.yaml
>@@ -1,7 +1,7 @@
> # SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-Clause)
> 
> name: dpll
>-
>+version: 2

How is this supposed to work. You bump the version with every uapi
extension? First time I see this.

[...]


>diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
>index 20ef0718f8dc..050f51b48ef8 100644
>--- a/include/uapi/linux/dpll.h
>+++ b/include/uapi/linux/dpll.h
>@@ -7,7 +7,7 @@
> #define _UAPI_LINUX_DPLL_H
> 
> #define DPLL_FAMILY_NAME	"dpll"
>-#define DPLL_FAMILY_VERSION	1
>+#define DPLL_FAMILY_VERSION	2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
