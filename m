Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A437BB79E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 14:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D89361237;
	Fri,  6 Oct 2023 12:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D89361237
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696595418;
	bh=ku1cN5/YYkAhU5iTfhM26Li1H0bJAQOE6pvBX2uRyz4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eMt8rcbUMGuPvEdxM4/qFaPu6RHvxixNVG7sD5bnQkSvsPU8qUWSVI7RKhdvli/Xp
	 ZKgMq+fzMPWZd/mepDayMwROEAEGforD4TCKNpIOCAzmdqJ0t41RiGQu2Hu06LJlEx
	 qnXhIiuleMsmBxV93NIWXWl5gdZ5CoobUHSVyT2RUJNEbe+GNMisoXpFRjWxRmq25p
	 n6snKSNMW7VQpZhNHhuNIwJTtgg7NPTAManQkIL8KcpmwNi7NdQ2XuOV3aQPfvmR/G
	 Xjf162cDltMiEn5hVEJxkaGN7cuQOkl6TUnROWcV7af98+UfFUxgK85USygYFELkZN
	 lCZSFsE89CpcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0G9AxWyhkdZ; Fri,  6 Oct 2023 12:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 248D5611EA;
	Fri,  6 Oct 2023 12:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 248D5611EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6771BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 422384018F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 422384018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xca4D9G4SudE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 12:30:06 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4D9B4013B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4D9B4013B
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-9a58dbd5daeso373881466b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Oct 2023 05:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696595403; x=1697200203;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7B9CLKlUxsIh39zlkJAcrlPeYuSRY+4E8JtipU09tMs=;
 b=nEFTz/yohMIt3plkR4anUVKOOK0L5jraluHHY5A2P58wZlu2jxbWimr5FN8ZH+2U9Q
 G+ZrtlMIC5fPlOOjk4yvjOAZfMn3pQl0e6HUgFjK+VK7L2XrpCsP+6y2YNohYhKifCv5
 DtVBdGmirLSyktpBawT/ZXlrjLEDsg4j1r9WbFdUI2iIYpUmVLkETVArOyxVzT/GGqN4
 kx+5ptwBaX1fmGn8Q00txr7Ml7YbEA41X4tzLjkRmFnX/ueUb4raHsc8N7tCUUz4zGCi
 OaLKx/gmf61Ef/wqnF/ZUdrTS42U8VY33xEfMjUt1WDQ9smR31d8oYh3vfFZ7kDNrO4d
 u84Q==
X-Gm-Message-State: AOJu0YxjQsfi1gmE0ks9AD19ySDDqRaX60hZNm3eANd/TyLjel658j26
 HGR2bgiYBru4hSdjtm+TFVGowA==
X-Google-Smtp-Source: AGHT+IHe9lJ23bjLqmLRIXxnGNwvqvPXBegsmUly8qbAY3I43hhzINf4vHLPwy+eSvh/yaIjoc5ZFw==
X-Received: by 2002:a17:906:3012:b0:99d:e617:abeb with SMTP id
 18-20020a170906301200b0099de617abebmr7096298ejz.23.1696595403416; 
 Fri, 06 Oct 2023 05:30:03 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 rn4-20020a170906d92400b0099bc038eb2bsm2767264ejb.58.2023.10.06.05.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 05:30:02 -0700 (PDT)
Date: Fri, 6 Oct 2023 14:30:00 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZR/9yCVakCrDbBww@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006114101.1608796-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696595403; x=1697200203;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7B9CLKlUxsIh39zlkJAcrlPeYuSRY+4E8JtipU09tMs=;
 b=nHQ+fzKxGsZGY4PG3vHdLHjq77B4nPkNJ8fQucnitgx2ns3se5M7OlIoILe0jPGH5O
 foUSGzpzIHUEfKtcE+It8d6HIW1d+P5g3v5LMZjT7ZQBWndAlOg3kwbeIgdxwroUDQYc
 PrAItnrZRBMQu40jOStaw9jyoCHA61cnN84mVhDxZXG7bS3BLHNfULqs9j/WSbdDaxuJ
 bJwVBH2dWtKmU13MdSMBqShXoage3J1pVp8+QoG2PpwWhjjgP5f8U+RfuGKJoiy9AJ9q
 CfrAIZSAqiS9eQOmEJ7VtmzkC7zVPBThTLNegWaLuSWjou496CaLVw7MZERVMoQpKnu/
 Xtaw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=nHQ+fzKx
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] dpll: spec: add
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

Fri, Oct 06, 2023 at 01:40:58PM CEST, arkadiusz.kubalewski@intel.com wrote:
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

I'm confused. Didn't you say you'll remove this? If not, my question
from v1 still stands.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
