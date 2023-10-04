Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D34467B7D70
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 12:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED8698333E;
	Wed,  4 Oct 2023 10:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED8698333E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696416111;
	bh=cJLIqpVtNbFIphvEw6WHGXqFHljrC0Hnwlve1X/Om54=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f0HYcVJA2fQy5m8zqsTo5KTZtHaw/ZCj7c9IsNXiQvWeGZeunWSyZ43GiqTi1Sbu7
	 hmk3yeTx6y9BdpK3I4HPxe+fTP17/V47VCl+cu+jMxufeVzDzPe/Vsg4Tc9K4Nr3uF
	 8Wuo5ouvOFqcNkxv1ob2V1JKDohwqvN50qJgPOmno7CmxPuzLAvWymepCUdawxADA/
	 grOEWvyVUV5Hf48Ou/1PsMBvD8+UemX9X1d2e0Lu0L46SYWMEy8YhB40noV7jWaJU0
	 0rfBtlwlbWUV66fVJogVTDf7G7rRXSizSMjfLRaS+R01aDlrnWHRYrQhfSRRwd58w1
	 58V7QVgr/dT4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cgw_Yy5zAR4; Wed,  4 Oct 2023 10:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D718B83332;
	Wed,  4 Oct 2023 10:41:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D718B83332
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E00B51BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 10:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE6604063E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 10:41:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE6604063E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZBdjhYNtdGn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 10:41:43 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A989B400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 10:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A989B400BF
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-5334d78c5f6so3439439a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Oct 2023 03:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696416100; x=1697020900;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UzXarj/dIrLAH4tPhBh7BzTA1z+2WH5X+IxGm0B65kk=;
 b=YLYDQPJ2eBUp6Ii0VlNkd1JrPT3uRbrhaFiYsSMnG6dY9IMZHOkaq+2feHW9CGVnK6
 mLoiq6+Kqn+GkFPIc5JMPw6iUvuMJ12dI0SwB2MWdJDg5Bk3spHf5ZAA25X3O/sgVVJN
 TZzSEoH0LBzEO2H6qQ6NAhk1qXiuxLf5y40qAIeFhgXqgzY4ba6j4/36N0K+FUt2Ze3y
 xhjWiz+K4za0dUrOUpvHOGVBrAIARGHovIzg5hahQly23e8DpZPMAAv+I9fa1ym4i90s
 kSqUQo6HKP8mHegnzqrc56VstkWBdq/0UXrbvbERd1JHHdHNcbAnt7d3q6g1aSPyiTnB
 Bg/A==
X-Gm-Message-State: AOJu0YxXSRbOeRD2QKDmJifRAdM41CJRX/D6hDgv6S5ynn+mgYxmhEPh
 CA5a5Yc6VOeatscloJN6aHU2sw==
X-Google-Smtp-Source: AGHT+IHLpWQ5S4hZp+7IuOHxp4blL7eubhAEfZYoixgG+l4TPda7KJJaiRndD6JAp2v+zJQCW100Kg==
X-Received: by 2002:a05:6402:1257:b0:530:c363:449c with SMTP id
 l23-20020a056402125700b00530c363449cmr1453487edw.40.1696416100316; 
 Wed, 04 Oct 2023 03:41:40 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 g13-20020a50ee0d000000b0051e1660a34esm2227535eds.51.2023.10.04.03.41.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Oct 2023 03:41:39 -0700 (PDT)
Date: Wed, 4 Oct 2023 12:41:37 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZR1BYQuSfdMdDimH@nanopsycho>
References: <20231004090547.1597844-1-arkadiusz.kubalewski@intel.com>
 <20231004090547.1597844-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231004090547.1597844-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696416100; x=1697020900;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UzXarj/dIrLAH4tPhBh7BzTA1z+2WH5X+IxGm0B65kk=;
 b=hGlLazRyvxd9N4ODRdGWwjw9jU22xPTgRCEqY8pwEX0JPMF8O1RqBPNpLF5aylrUL7
 aBrYdr0ENAVWnJsx6TCqcRgfnj3TiPeVnc1C+DSKXdcsgCZ24L5VEntgg98lH8ezseXc
 USIUys9cSLRAt59XiKvySdBhnUJ/WXYdD1Eb5/VJFIcZatNtQJ9JG5jhLRP0VZ7MzXgV
 hpkPuVceQ4qH9pSFA8hl6Mp19q6/XH9SYbsIiBu8uNMZvC+v4XS+JntovA/IyinZyVMG
 yxW5Fv103VG+WxvHZTnA+wsZlSzi0Unn+gQdNBfzHf+2NW/qDYKiGD+iIv3wq0G7cWM5
 nx/g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=hGlLazRy
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/5] dpll: spec: add
 support for pin-dpll signal phase offset/adjust
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

Wed, Oct 04, 2023 at 11:05:44AM CEST, arkadiusz.kubalewski@intel.com wrote:
>Add attributes for providing the user with:
>- measurement of signals phase offset between pin and dpll
>- ability to adjust the phase of pin signal
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

Could you reply to my comment about this in V1 please?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
