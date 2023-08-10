Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C01BF778045
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 20:31:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B0F441DD1;
	Thu, 10 Aug 2023 18:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B0F441DD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691692314;
	bh=cpey8V7135YuUsbwh0XU7TO/8guOojvlcV0r91TGaGo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DtrloRt8cT7ud6iwoIxtR/UEZ/CM0HlNbUMYtHqSkT85YGOqSe+WsO8/UUJfaUcpc
	 M9TCOK3/vScmZLvbTqbQns71ywVBh1yHVmCcT6jOhsN/UTkzLh3PKL6b6UK4N8gY+o
	 BnzElLY09b6dqlZO66YSUzvm+TK0hNDRCMTWoRAzkdRQsh7b8giW4RCQilOksiFYrM
	 1RfD87tbTtMgE4OaGsBwUdojgYgvVQzJgwbnWs/xYM9sZxwPAvGMTQL1T02k1f5NKT
	 xhjW5q7m6naPY77ctzvo8uJWZpIkHewtBhD/BOHh2NADh4HTdyBlMf6Yjmuzw6N8N3
	 wTVXcd7Eha6Rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nrCj9YuNaayI; Thu, 10 Aug 2023 18:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 762DA41D61;
	Thu, 10 Aug 2023 18:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 762DA41D61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 164251BF969
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 18:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0F1483FFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 18:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0F1483FFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Ca4a9_fCbio for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 18:31:47 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AEDB83FB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 18:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AEDB83FB8
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-1bc3d94d40fso10943445ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691692306; x=1692297106;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NRu5f/aCaNR7Qpd/C7QF+nwdA4/ZGiMpJZ4g0pj/koI=;
 b=Q7/4jKbTs453Tz8clmUKBlysdT/Pg91R5bwMo3a47A3VaapyLTppnlgXNLcLIlYGlN
 bMAMfFgEPYZlJ0ukliCJt808x7YQVOIJu1fJxeDKPIXNptot+VuG7A6BNK7JOqJ63kCd
 KpSz+KJKvV/8q/cNnYK8NNvkHqj6n0sgbEHAAH5+o5cBZl+oMPH9Srz/4sDNezftWRmc
 bVhEwMkmp2IBbPyG3T3ZH9LHRm/1Ca8a8WnpENxhd/Zdct4brWD9SSY9OcPEsbS3Lkj2
 7gEw2cQKZJ9R200GyCpUGo6oNRP+d+puW6cnfgbLEUcZ/z42zVjDcy2O7/zNLSwvhxq0
 KU1Q==
X-Gm-Message-State: AOJu0YxiQawcjofvwx9/SBrQ7vMa5FGLIFQ9iw3u/E1xrrGYk6D4nQUH
 Ol7fswob1wkWAJF7BOiafcAolA==
X-Google-Smtp-Source: AGHT+IHHObZZyY9Or/OTawwzOxroUBnHrJSBanqV1Yfo/0w0RduYz4qwgfpa6K1IKDxG+5xqeFlspQ==
X-Received: by 2002:a17:902:da92:b0:1bb:1494:f7f7 with SMTP id
 j18-20020a170902da9200b001bb1494f7f7mr3698148plx.23.1691692306542; 
 Thu, 10 Aug 2023 11:31:46 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 x20-20020a170902ea9400b001b9de67285dsm2103416plb.156.2023.08.10.11.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Aug 2023 11:31:45 -0700 (PDT)
Date: Thu, 10 Aug 2023 11:31:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202308101128.C4F0FA235@keescook>
References: <20230810103509.163225-1-przemyslaw.kitszel@intel.com>
 <20230810103509.163225-2-przemyslaw.kitszel@intel.com>
 <e6565705-4867-c07f-5cc7-4e9155b5a4e9@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6565705-4867-c07f-5cc7-4e9155b5a4e9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691692306; x=1692297106;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NRu5f/aCaNR7Qpd/C7QF+nwdA4/ZGiMpJZ4g0pj/koI=;
 b=exUC1YmUgaJK8xNE59qi6sgwc1o8df+FleF0y7jxgEHwbhiyyvm8Zhv3VcrEuZGxPY
 jY9Bc2bZFTJOemXPLDAQWt5/ThKn3uUeS1rlrBzAgvfAM2H/opLXONw4vgGZz9ntcYps
 rrdJnMvIsw+XBZcetaMgLhBoFIOCKq47ScnEQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=exUC1YmU
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 10, 2023 at 06:24:47PM +0200, Alexander Lobakin wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Thu, 10 Aug 2023 06:35:03 -0400
> 
> > Add DEFINE_FLEX() macro for on-stack allocations of structs with
> > flexible array member.
> > 
> > Add also const_flex_size() macro, that reads size of structs
> > allocated by DEFINE_FLEX().
> > 
> > Using underlying array for on-stack storage lets us to declare
> > known-at-compile-time structures without kzalloc().
> > 
> > Actual usage for ice driver is in following patches of the series.
> > 
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> > v1: change macro name; add macro for size read;
> >     accept struct type instead of ptr to it; change alignment;
> > ---
> >  include/linux/overflow.h | 27 +++++++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> > 
> > diff --git a/include/linux/overflow.h b/include/linux/overflow.h
> > index f9b60313eaea..21a4410799eb 100644
> > --- a/include/linux/overflow.h
> > +++ b/include/linux/overflow.h
> > @@ -309,4 +309,31 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
> >  #define struct_size_t(type, member, count)					\
> >  	struct_size((type *)NULL, member, count)
> >  
> > +/**
> > + * DEFINE_FLEX() - Define a zeroed, on-stack, instance of @type structure with
> > + * a trailing flexible array member.
> > + *
> > + * @type: structure type name, including "struct" keyword.
> > + * @name: Name for a variable to define.
> > + * @member: Name of the array member.
> > + * @count: Number of elements in the array; must be compile-time const.
> > + */
> > +#define DEFINE_FLEX(type, name, member, count)					\
> > +	union {									\
> > +		u8 bytes[struct_size_t(type, member, count)];			\
> > +		type obj;							\
> > +	} name##_u __aligned(_Alignof(type)) = {};				\
> 
> Hmm. Should we always zero it? The onstack variables are not zeroed
> automatically.
> I realize the onstack structures declared via this macro can't be
> initialized on the same line via = { }, but OTOH memset() with const len
> and for onstack structs usually gets expanded into static initialization.
> The main reason why I'm asking is that sometimes we don't need zeroing
> at all, for example for small structures when we then manually set all
> the fields either way. I don't think hiding static initialization inside
> the macro is a good move.

I strongly think this should be always zeroed. In the case where all
members are initialized, the zeroing will be elided by the compiler
during Dead Store Elimination optimization passes.

Additionally, padding, if present, would not get zeroed even if all
members got initialized separately, and if any memcpy() of the structure
was made, it would contain leaked memory contents.

Any redundant initializations will be avoided by the compiler, so let's
be safe by default and init the whole thing to zero.

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
