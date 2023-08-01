Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D25E876C073
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 00:31:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20CF881441;
	Tue,  1 Aug 2023 22:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20CF881441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690929108;
	bh=Ji2uS0lKnFGIdAaK2e0njrVIlTKcOLW1uQmwnPF281U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDn13m3T/C1gIoZG+KFbiQV5eCyoy0uQxDkPBJ2ZhCUVaCXNcVbpOmunclTwvjca1
	 apG/+/f9QOxzZP5aA5t5xr7vicLQsZGHA1VQQ3wfx8P0nlULiFVdLttEFs3c0nR6xQ
	 0kJI9GBl8GWFm+0bzAktYSL06m8GwmY4l3xXHAopHDWxNIY+CmEv5xFS2fBa2ENk4i
	 d6e6VeZF5/0t9xNzCBUbgvOmChHMBxb7nAggTgVBbRHRZa778MuT8Lp4eWmJxJuU3o
	 n/0LE1z/+KqvWieqfD4UhpKAjmdAAVT7khvL+RWv9isFXukL5z4kU0cMLsBgwEfSNs
	 1x+8y4yoy/cpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucePwUKYJgpQ; Tue,  1 Aug 2023 22:31:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DC098188D;
	Tue,  1 Aug 2023 22:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DC098188D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 231A31BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 22:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D48140C2C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 22:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D48140C2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7d7Bw6YqlIu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 22:31:13 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A863C40CA7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 22:31:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A863C40CA7
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-686b9964ae2so4331645b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Aug 2023 15:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690929072; x=1691533872;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5rI769blANvKakho//KZylc2H6HwF2kf18muyWtGVFE=;
 b=eLoqcEhgCO7d14HEEpltObyiIDgWYBMq80/Qx2sbb65Mml5m17SA3dexkxfO04AeCy
 4Z7bg5xOkku9SK46VPdqJer8oVfyK5O6Dvgzx4Bl+AL8sNVRA4M52c8j4HPNod96ojZu
 GzFkDpgMzLXA3S1jHo5QfaRA8WY1871J5rNhmGHu6vSLve0dzJN7Q7GWl7Bi9/qt2EIr
 CLOOPUnid4wq5F4peNiFjtE1cRMGl2qAcO0/X8ILrbHUXVXtEIcDeVhgj4FLBNGRLeNQ
 3SLJmf0AP/Qh55GYQJ5orSUxXoNaUCjKfqY2K37mBig+fWZpEcHxPv6GrvtAb0022bWF
 HGYw==
X-Gm-Message-State: ABy/qLYe8NNo2c/smzuu0qunM/82ENzxdwgGqFCvO9QVvKiGsnkYSSSR
 gNq4C99TtY2ky0mSKqVHKemaog==
X-Google-Smtp-Source: APBJJlEB8hJ/wfGV5TLpVSHRxwHvYwuuNQs9GxuXEQyZQxV8JwciDeGgwsHIx2ioq2H59TUVG6owXA==
X-Received: by 2002:a17:902:f547:b0:1b8:b827:aa8e with SMTP id
 h7-20020a170902f54700b001b8b827aa8emr14471846plf.11.1690929071987; 
 Tue, 01 Aug 2023 15:31:11 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 jn13-20020a170903050d00b001b895a17429sm10957681plb.280.2023.08.01.15.31.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Aug 2023 15:31:11 -0700 (PDT)
Date: Tue, 1 Aug 2023 15:31:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202308011403.E0A8D25CE@keescook>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1690929072; x=1691533872;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5rI769blANvKakho//KZylc2H6HwF2kf18muyWtGVFE=;
 b=S/mRkmfA0lmJMoq6lyuKbHLryPTrbrj6nCOzzsunS253TyR6O8d01K9JabxWlHKwgU
 XQjqXimg+lQVrOaG3Ag0dTf5G4KwNryKCHUVHRQ70ZwVX3MsWtmwU8WO8JJW3pERGdWr
 FFD/J8g17ysNh5AGszxYdGXbK8sSCpprcMm5E=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=S/mRkmfA
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 01:19:22PM +0200, Przemek Kitszel wrote:
> Add DECLARE_FLEX() macro for on-stack allocations of structs with
> flexible array member.

I like this idea!

One terminology nit: I think this should be called "DEFINE_...", since
it's a specific instantiation. Other macros in the kernel seem to confuse
this a lot, though. Yay naming.

> Using underlying array for on-stack storage lets us to declare known
> on compile-time structures without kzalloc().

Hmpf, this appears to immediately trip over any (future) use of
__counted_by()[1] for these (since the counted-by member would be
initialized to zero), but I think I have a solution. (See below.)

> 
> Actual usage for ice driver is in next patch of the series.
> 
> Note that "struct" kw and "*" char is moved to the caller, to both:
> have shorter macro name, and have more natural type specification
> in the driver code (IOW not hiding an actual type of var).
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  include/linux/overflow.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
> index f9b60313eaea..403b7ec120a2 100644
> --- a/include/linux/overflow.h
> +++ b/include/linux/overflow.h
> @@ -309,4 +309,18 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
>  #define struct_size_t(type, member, count)					\
>  	struct_size((type *)NULL, member, count)
>  
> +/**
> + * DECLARE_FLEX() - Declare an on-stack instance of structure with trailing
> + * flexible array.
> + * @type: Pointer to structure type, including "struct" keyword and "*" char.
> + * @name: Name for a (pointer) variable to create.
> + * @member: Name of the array member.
> + * @count: Number of elements in the array; must be compile-time const.
> + *
> + * Declare an instance of structure *@type with trailing flexible array.
> + */
> +#define DECLARE_FLEX(type, name, member, count)					\
> +	u8 name##_buf[struct_size((type)NULL, member, count)] __aligned(8) = {};\
> +	type name = (type)&name##_buf
> +
>  #endif /* __LINUX_OVERFLOW_H */

I was disappointed to discover that only global (static) initializers
would work for a flex array member. :(

i.e. this works:

struct foo {
    unsigned long flags;
    unsigned char count;
    int array[] __counted_by(count);
};

struct foo global = {
    .count = 1,
    .array = { 0 },
};

But I can't do that on the stack. :P So, yes, it seems like the u8 array
trick is needed.

It looks like Alexander already suggested this, and I agree, instead of
__aligned(8), please use "__aligned(_Alignof(type))".

As for "*" or not, I would tend to agree that always requiring "*" when
using the macro seems redundant.

Initially I was struggling to make __counted_by work, but it seems we can
use an initializer for that member, as long as we don't touch the flexible
array member in the initializer. So we just need to add the counted-by
member to the macro, and use a union to do the initialization. And if
we take the address of the union (and not the struct within it), the
compiler will see the correct object size with __builtin_object_size:

#define DEFINE_FLEX(type, name, flex, counter, count) \
    union { \
        u8   bytes[struct_size_t(type, flex, count)]; \
        type obj; \
    } name##_u __aligned(_Alignof(type)) = { .obj.counter = count }; \
    /* take address of whole union to get the correct __builtin_object_size */ \
    type *name = (type *)&name##_u

i.e. __builtin_object_size(name, 1) (as used by FORTIFY_SOURCE, etc)
works correctly here, but breaks (sees a zero-sized flex array member)
if this macro ends with:

    type *name = &name##_u.obj


-Kees

[1] https://git.kernel.org/linus/dd06e72e68bcb4070ef211be100d2896e236c8fb

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
