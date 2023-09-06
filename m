Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581D979373C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 10:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E22C4408B1;
	Wed,  6 Sep 2023 08:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E22C4408B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693989463;
	bh=Lnqbr/VvIuvX9wFDli5m3RFLjTQZirfgRtfnE5fQ7Bo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=64ibnwWk/zZlZ7k/+hzOaWzxZxnwMDzOvuLfWINZAOsR6U6XsWQRi62hBjYzQu2U+
	 zJ8hU4jGO+u0TYe9DKj7uhGgoYLyrpFBV++PV7nBBVLd0J3Zu6OiGHNyrNQfPjvhi9
	 qmSz3IKmTclEsvuGeFC6DHuObIRfkBH03oeqzQxkXTg+R1vKgLzwZ2jo5TC+JnXtPU
	 keqRrproNwSWUtR2mJWQ9yeMJqwNMtScqxuGNHzFRvOLfV0ur4/2f+YiOiDmQWmAfw
	 znHLs77vKMfa8iKPxXwULoRYdLFhMog0SydACw1iuBBtcDp/HCxC+u8Fxiumh5aOP2
	 wR/LBT8s5FPag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6api1e3oUQxU; Wed,  6 Sep 2023 08:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA3BE4015A;
	Wed,  6 Sep 2023 08:37:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA3BE4015A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A14EE1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 08:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6ED6C60F3C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 08:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ED6C60F3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfhGgV8TVGE3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 08:37:36 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 538C460EFB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 08:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 538C460EFB
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-401b393ddd2so32761325e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Sep 2023 01:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693989454; x=1694594254;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pLvxqkVcGrj0lGKXFta0h+15ddHO134yyI3SPEEzAKg=;
 b=cXDcsU+yv1UOcviaaI4XVSvk5/I4xiH1wfDXV53Il0Gv5WBTiXz9ti9uPNwSub+URK
 VcFEdNYvQqgOBtWBtbkU8sKo+8P0q8XPSY2evf/nt2zfXeF+g6f55uL5PUnL8tD8pcL8
 PO3N4zSioRW22Xfpr7IXziGBH5qnPesht9PqbhBt8xSNXAvTji7b4sWAXuzO/JQr99C3
 9/HWmUih99EZkk4ssqlsdIjEZ+0krWfjQDXwvG3+VEMkN3JjHpy885Dw7R47SJdkqszn
 qxWFIcY8pHc/ECpSHXC1HG1iztoDaUH+YdRLGqV/iPTnTrJENuebUtL3oU+5ZHqo0yLa
 f4CQ==
X-Gm-Message-State: AOJu0YzKd4N2iNd6GHihg59oZdIRkyKTUCSZKmn0Aizhd3FnozqjWUhZ
 HSpdk+U1VyHZy5+V/KaNzLOIww==
X-Google-Smtp-Source: AGHT+IGgBixjKxuTBBYWuFq762q1URHhmlYUZ9/8lQFX9qon/QhhHDr/qErp5oYLmkehX7+4VS+HJA==
X-Received: by 2002:adf:ed88:0:b0:31a:e3ad:f30e with SMTP id
 c8-20020adfed88000000b0031ae3adf30emr1759759wro.68.1693989453796; 
 Wed, 06 Sep 2023 01:37:33 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 s16-20020adfecd0000000b0030ada01ca78sm19753926wro.10.2023.09.06.01.37.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Sep 2023 01:37:33 -0700 (PDT)
Date: Wed, 6 Sep 2023 10:37:31 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZPg6Sz6pgLnmQcpe@nanopsycho>
References: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1693989454; x=1694594254;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pLvxqkVcGrj0lGKXFta0h+15ddHO134yyI3SPEEzAKg=;
 b=wg9U5TpH3Qb1SN8cZ612f5s4Z5Kp7lHj2lL4/FOa+Ni1jjU1XdQCo3X3IuYBZieVXA
 3uBbwKxxcMB1+ZN+RbGVIUbNgTORdTVkBzm8MTwsXASKuNFyjqsh/7WFaFdW/BxrapiK
 DDLJYWndTGvj3aAH2jTAHpNQSwKp+oYAN/wgfxBjOTexv+9II9WOHjIyPiSpscVtig3X
 uF7UUBOaWx7jvush+MWW+wT8U1Si8hrxXrtbYy18bZQKgvceoxCxYUZBlfB6u6judY+C
 USAIvSjF6FIpOGDRhXQrSoXJvGXB/4WbWtUqvxNQl+u61NqzFzfyURt1+62jr3G5QXAu
 cowQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=wg9U5TpH
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] dpll: add phase offset
 and phase adjust
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
Cc: vadim.fedorenko@linux.dev, bvanassche@acm.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 pabeni@redhat.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Sep 06, 2023 at 01:26:06AM CEST, arkadiusz.kubalewski@intel.com wrote:
>This RFC is to start discussion over extending dpll interface
>with possibility to:
>- read a phase offset between signals on pin and dpll,
>- adjust a phase of pin's signal.

1) RFC patches should be marked as such
2) I suggest to postpone this after the first dpll patchset is merged

>
>The RFC is based on latest version of dpll interface submitted for
>net-next [1].
>
>[1] https://lore.kernel.org/netdev/20230824213132.827338-1-vadim.fedorenko@linux.dev/
>
>Arkadiusz Kubalewski (4):
>  dpll: docs: add support for pin signal phase offset/adjust
>  dpll: spec: add support for pin-dpll signal phase offset/adjust
>  dpll: netlink/core: add support for pin-dpll signal phase
>    offset/adjust
>  ice: dpll: implement phase related callbacks
>
> Documentation/driver-api/dpll.rst         |  53 ++++-
> Documentation/netlink/specs/dpll.yaml     |  33 +++-
> drivers/dpll/dpll_netlink.c               |  99 +++++++++-
> drivers/dpll/dpll_nl.c                    |   8 +-
> drivers/dpll/dpll_nl.h                    |   2 +-
> drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
> include/linux/dpll.h                      |  18 ++
> include/uapi/linux/dpll.h                 |   8 +-
> 9 files changed, 443 insertions(+), 12 deletions(-)
>
>-- 
>2.38.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
