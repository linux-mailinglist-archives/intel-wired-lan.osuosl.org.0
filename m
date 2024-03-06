Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDFA8744C4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 00:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24BD8820D1;
	Wed,  6 Mar 2024 23:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hII_CRScF-Wj; Wed,  6 Mar 2024 23:52:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3928C820D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709769138;
	bh=ZEAVZcoYSQFZcvaftM2f/g9GOC1c60DgaQV+1wgZreQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=emPVAf3X17QLMUhnozCAcTCkpGnVtXRwCSo+/uUGF475H5bXuOaQL0yY2qIkOsLZI
	 EInM0BsILvQVgjhH5ydi+axL3m6GEsya63zIDUU/6M1Z7Fw41fnvdOjcHKULi3h3Zx
	 8mpq7fU5p4g6EOzwGDOVbst6AtXtlgCNIWbp8haD/qXZgp0zEviXXWu+KKTd4D/Gqh
	 C8epyeqVG3p64q6+iEyZpoQvqu+odNIzq6df2XU0+pJwZjpdlIwZqiVQBuRC0kdbCr
	 OyX67FnicsjIBfz9F0AqdrIGAbWOUecMgY5Q2hNH27l8A6B4WIaLc7YfajGlbvg4xg
	 BFUW7/GmUHD2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3928C820D4;
	Wed,  6 Mar 2024 23:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 513DF1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49BEE820CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MtG3Z6xDjCPF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 23:52:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::32e; helo=mail-ot1-x32e.google.com;
 envelope-from=keescook@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5786C81CAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5786C81CAF
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5786C81CAF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:52:15 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 46e09a7af769-6e125818649so191879a34.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 15:52:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709769134; x=1710373934;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZEAVZcoYSQFZcvaftM2f/g9GOC1c60DgaQV+1wgZreQ=;
 b=YgxEPQjqHenO8H1oAIj0G7iNs8AiiKOypfZQNaf0WKMeeMALEnIQDZ4AmzgSzWgaiI
 EehCZkNlenqQiauKVZBsy0l/K3efoJ4Cvw2W34Do34kcwH6+cN/K2/QByGgzHOkzmRog
 sBt9MtjKd09rgdp4HvX3+3AIYXz4cE7fAofE+5ytWD4qGWbDWdlw7HbeHlA2uryguPwh
 A1b7df5JjtbuuwXE+nTHgMdNsw8vR2+h7Nfx0yYHVGq6cI108p9j6lL5UNrogg48YvcJ
 pgKk41OSykv0ULYVoMbUIS/N/CgBIr6SKhP/WmIsbQGOPFvwq4ovpwWKdz6dZTfIn4Eo
 z/fQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWw4r//qpDXp9ASU4wNZCAJIAfp5Uq6gyI0mlXfdaSUOj0e7Pk0vFQjyXRHYzLVP3rOE9rDGoUJDedK6M5Jzab4/lD+H3+/r+a4yUkdy4Vmw==
X-Gm-Message-State: AOJu0YykmguWlJm9L3WVg640EwNa+YN3FxJ4vU3pgPbq5WDPux9xY4Ut
 kWCSW+BByodgPaCh42PUphkSx1Wm2jY6FDRoB9ttlvzinpPENIh41ujlsSh1dA==
X-Google-Smtp-Source: AGHT+IGzQi4Hj1eR1TravKHp4tPRAiBWafpLp3PdehA3PNgOnJ+Bn3bpQz0p2gslmzv3nDrpdQZRtA==
X-Received: by 2002:a9d:6b13:0:b0:6e4:fa90:3c79 with SMTP id
 g19-20020a9d6b13000000b006e4fa903c79mr5596220otp.22.1709769134215; 
 Wed, 06 Mar 2024 15:52:14 -0800 (PST)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 c11-20020a63da0b000000b005bd980cca56sm11450066pgh.29.2024.03.06.15.52.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 15:52:13 -0800 (PST)
Date: Wed, 6 Mar 2024 15:52:13 -0800
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202403061551.00DAFE8B39@keescook>
References: <20240306010746.work.678-kees@kernel.org>
 <9c2990f0-7407-49c6-9e3a-b92de82ea437@embeddedor.com>
 <bd21f7dc-9f89-40ee-895e-601c80165225@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bd21f7dc-9f89-40ee-895e-601c80165225@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709769134; x=1710373934; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ZEAVZcoYSQFZcvaftM2f/g9GOC1c60DgaQV+1wgZreQ=;
 b=fEabXBJ8hPMfV2r2Jcd3SXC4O6TeAm5bZT9Vv7wdFSS/soFU4NJC6718hY24JWsahI
 iJVpbfN8mOZMrvDxae1Vcdl2OO5bjucgNu0Rim+fRHqFiVePzUxa0XdLCYVmNDXqMqYb
 gDrNGzbe9VanP9FcXeMs/f5+ruDrW4fQ87njw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=fEabXBJ8
Subject: Re: [Intel-wired-lan] [PATCH] overflow: Change DEFINE_FLEX to take
 __counted_by member
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
Cc: intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 06, 2024 at 08:06:29AM +0100, Przemek Kitszel wrote:
> On 3/6/24 04:25, Gustavo A. R. Silva wrote:
> > 
> > 
> > On 05/03/24 19:07, Kees Cook wrote:
> > > The norm should be flexible array structures with __counted_by
> > > annotations, so DEFINE_FLEX() is updated to expect that. Rename
> > > the non-annotated version to DEFINE_RAW_FLEX(), and update the few
> > > existing users. Additionally add self-tests to validate syntax and
> > > size calculations.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > 
> > [..]
> 
> Just a note that ice changes are purely mechanical, so this seems ok
> to go via linux-hardening tree. And changes per-se are fine too :)

Thanks!

> 
> > 
> > > +/**
> > > + * DEFINE_FLEX() - Define an on-stack instance of structure with a
> > > trailing
> > > + * flexible array member.
> > > + *
> > > + * @TYPE: structure type name, including "struct" keyword.
> > > + * @NAME: Name for a variable to define.
> > > + * @COUNTER: Name of the __counted_by member.
> > > + * @MEMBER: Name of the array member.
> > > + * @COUNT: Number of elements in the array; must be compile-time const.
> > > + *
> > > + * Define a zeroed, on-stack, instance of @TYPE structure with a
> > > trailing
> > > + * flexible array member.
> > > + * Use __struct_size(@NAME) to get compile-time size of it afterwards.
> > > + */
> > > +#define DEFINE_FLEX(TYPE, NAME, COUNTER, MEMBER, COUNT)    \
> > 
> > Probably, swapping COUNTER and MEMBER is better?
> 
> right now we have usage scenario (from Kunits):
> 	DEFINE_FLEX(struct foo, eight, counter, array, 8);
> 
> > 
> >      DEFINE_FLEX(TYPE, NAME, MEMBER, COUNTER, COUNT)
> 
> usage would become:
> 	DEFINE_FLEX(struct foo, eight, array, counter, 8);
> 
> which reads a bit better indeed, with the added benefit that we
> go from broader to more specific:
> whole struct -> array -> array size variable -> given array size
> 
> so +1 from me for the params swap

Sounds good. You and Gustavo have convinced me. :) I've sent a v2 now.

-- 
Kees Cook
