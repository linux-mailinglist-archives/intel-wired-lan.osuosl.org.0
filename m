Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B19B2E875
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 01:09:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EA8241487;
	Wed, 20 Aug 2025 23:09:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mth-fle6osIY; Wed, 20 Aug 2025 23:09:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 928BD4148A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755731361;
	bh=+tyuLMv7fowbfjD40sfmjyli4eEIuNfpbDs2bqEjHDc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xzwcScwvAcv3kgiWpjcSUsfckmSQjRtFJPCvmHezG3ccvXoUsweErXndKCmuPQpzU
	 GcCpOd2tl1wYLnDsEhd1yrDIi1Yg1tloQ6WX/B5ghbMmTv7PGVSJhWHBgcVt8qeJB1
	 DkX7jPTXmo7qAn9/DGSHrEZAMdbVsTqIDC26dLdi1u+stapBIyig9WAvYrLUFQJSX1
	 uG44CKaV2oVGBW2uK0zT+xEsW7WQGwLIBg0QPrCzeG1NsGv66F3cisQO+m0UmncvO6
	 dyNce1iVksqXPRStAqkxZSq4qUdrz+Kr2KblkuvNVpNln1ouiE2VaocLNB6/FJi/Bs
	 YqufDMkADEF4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 928BD4148A;
	Wed, 20 Aug 2025 23:09:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 34AA2D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A90E41485
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:09:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id id6iZTneo47Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 23:09:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::436; helo=mail-pf1-x436.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65FFD4147E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65FFD4147E
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65FFD4147E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 23:09:19 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-76e2ebe86ecso561741b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 16:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755731359; x=1756336159;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+tyuLMv7fowbfjD40sfmjyli4eEIuNfpbDs2bqEjHDc=;
 b=o8ifRKRfWnzveMxkvVvdyvVTesq0dqAeDEbnA3oWB91mr99k9Hb4+PaXffaO3nuxjl
 sU+/oo/++eK5KUPXfCYKMd6814YuSaNG/G5UQHN9sziWR1d8rsGKMD/Va+FJ7i+Rmo0t
 mY+xiqOOlPDsTqzJLnAdaGO9xSMpYiPlSo+vH9XWcl3HxdM32FJ4msew8LPUHozsswRS
 NpGLewwqxETiE4M+aoG24q5zphp8iUYLifqZiAwuNNyHjrwIZF64meZiCMSfxRh7rxRN
 PjxNQ0tx/sBo6WthdkbY+jSN+rlRSkGQm7UkvOK3iAVpObTsLEJ+RSoWqzHwnwYfFJsY
 ovqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0sdXFYxe0J/wUtjDWwLODYd9th+TyqWg54p3E7kqXFIAUtc+qo1MVUwa31t4EoVWYfraThzG/5CbhksZOzxk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyce3R8QjVvbEhjsoQgFBz92hAhPPu8InzUQSLhD+mGZ/9x7g/S
 Lp04YA6022uLWAjys90nWZT6qpPvhQLw7gcSA71UVkTYAN3h/O89A8gnXJyimCu42DFGc7ON/9C
 UmDTiPKc=
X-Gm-Gg: ASbGncu4HOrBu/BmDafP7PAcvrKp1pACkY+cHi14r2rrKLmz41NBP+sMhVHjIe1m6kb
 Psd7nR6cy6/VJUjt2nf02FkNTkfvEU8PQm/IwBFKMT79kjzXhNTSIPqWO5DB8uoSG/DTYs+01ah
 MZImTkBM0p6oyub3wPBRfC32tA/lrfXwPFl200MuYd63Sv90ornL6SMy0I7GaZmOwLAz7Bxo5g0
 swjXRPNI+i8Yye1QOXCe7Rq+dArUPhgnaRGQZS4KvW1SIMPECV1Q0OV75t6/Lv1Vrt5fsiqYCbk
 8ZPx3DE3BymIR2ai3ShiFKGQEFPPVVTfMZLaf3t3CWpa9/uvhWFVBHiwdn9SbsiynvzrJXDKHUG
 u743yBV4jVz3DMv7McufFgD0m
X-Google-Smtp-Source: AGHT+IFTC4LLt5KycWqz0CRruTcc9AAbBVXRBu/bAtT4l8lBZAyrQijVfp3CZ6NeR2DmzF+sRssJQg==
X-Received: by 2002:a05:6a20:6a0f:b0:243:78a:82ac with SMTP id
 adf61e73a8af0-24330ab8681mr356174637.52.1755731358637; 
 Wed, 20 Aug 2025 16:09:18 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76e7d4f76b5sm6286301b3a.59.2025.08.20.16.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Aug 2025 16:09:18 -0700 (PDT)
Date: Wed, 20 Aug 2025 16:09:15 -0700
From: Calvin Owens <calvin@wbinvd.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aKZVm-0iiMsUfexu@mozart.vkv.me>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
 <089ba88e-e19d-40eb-844d-541d39e648e8@intel.com>
 <aKXzzxgsIQWYFQ9l@mozart.vkv.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aKXzzxgsIQWYFQ9l@mozart.vkv.me>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755731359; x=1756336159; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=+tyuLMv7fowbfjD40sfmjyli4eEIuNfpbDs2bqEjHDc=;
 b=V4vW3W8zPvBpr7fLY98UBtHBJ7WPgc+QO+XXjpC8z2K2bW9zxmmJYeVhGqP/Jfw3Pp
 f4ZTxo/vlOkHrW4UeR8L8nMMRmTfH19btl7QWLOH8ReeGF7sBQLhsfLM22GDihVhfOqZ
 PFzr61c3/n54KtdmihEOLsf871JWRxgamdVP4sF+L8qHWGfYIIz0wsQ9onk4gPcO/8jD
 0+84E6sR7iEqcc+8+SezvL6vLGMlbMvtzvo1x8H3CVBNtKrM+u8cBcVohRbqT9bABMn2
 9cUNrUBlib2C6hv8P+Ee41Rw4STgOb4bmhxDnnG+gY2jy1lyBFflUGbsC1G4Njgf46pc
 gROw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=V4vW3W8z
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wednesday 08/20 at 09:11 -0700, Calvin Owens wrote:
> On Wednesday 08/20 at 11:41 +0200, Przemek Kitszel wrote:
> > On 8/20/25 08:42, Michal Schmidt wrote:
> > > On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
> > > > The same naming regression which was reported in ixgbe and fixed in
> > > > commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
> > > > changes") still exists in i40e.
> > > > 
> > > > Fix i40e by setting the same flag, added in commit c5ec7f49b480
> > > > ("devlink: let driver opt out of automatic phys_port_name generation").
> > > > 
> > > > Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> > > 
> > > But this one's almost two years old. By now, there may be more users
> > > relying on the new name than on the old one.
> > > Michal
> > > 
> > 
> > And, more importantly, noone was complaining on the new name ;)
> 
> I'm just guessing with the Fixes tag, I didn't actually go back and try
> to figure out when it broke. Let me double check, it would certainly
> make more sense if it broke more recently.

I actually checked, it really goes back that far.

> But there are a lot of reasons I still think it should be fixed:
> 
> 	1) I have ixgbe and i40e cards in one machine, the mis-match
> 	   between the interface naming pattern is irritating. Can't we
> 	   at least be consistent within the same manufacturer?
> 
> 	2) The new names have zero real value: "enp2s0fX" vs
> 	   "enp2s0fXnpX", the "npX" prefix is entirely redundant for
> 	   this i40e card. Is there some case where it can have meaning?
> 	   I apologize if I'm glossing over something here, but it looks
> 	   entirely pointless. If it solved some real problem, I'd be a
> 	   lot more amenable to it.
> 
> 	3) It's a userspace ABI regression which causes previously
> 	   working servers to be unable to connect to the network after
> 	   a simple kernel upgrade.
> 
> And, at the end of the day, it *is* a userspace ABI regression. If it
> matters enough in ixgbe to warrant a *second* userspace ABI regression
> to fix it, I think it warrants that in i40e too.

I just want to be clear: I'm not here to whine at you all about having
to spend ten minutes fixing some configuration files. My goal is to save
a bunch other people the trouble of doing it over the next five years,
if it's not too late.

If it is true the majority of i40e users have converted, than yes, this
should stay the way it is. I'm *very* skeptical that would be true only
19 months after the release... but I don't have any real data to argue
either way.

> Thanks,
> Calvin
