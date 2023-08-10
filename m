Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 963D677809C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 20:46:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A73316101F;
	Thu, 10 Aug 2023 18:46:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A73316101F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691693180;
	bh=DCo4jNugB2wj2EVME0khSWKjjbBW+/MD7RqkWRf2ggk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5NyWPiW+3JadsNdBtGvvRLjXllsftA2RspF02bSjNgWPieNXSF2dyG2+GLOmPRysY
	 jLS6/+IljpSU2Y55+IBFHT/O5xl5B/PqVSDLaTPlj9Vr0QcZijndYjLSz5Y1kQXzo7
	 8L7wu6GCTcWOFWQhIXMubZ4TGpEi4sofLaiJDzf1e+hIg/pt0TifYzoqzdcY58m5WJ
	 OiknP1v/Ci6o6ttL2MFq3UTCkCF4eNp5YURAMJWaxFE8TmMfidTk8LeV4b6TE1vjSY
	 ghT6N1ryHbIKONVyPR6Vfl78EVaNiG6ivywLkuTBplJz23TvMO1jwy2bOqi+aY7/8p
	 xjSe4+AuLdWpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e7kfMvfl_rRr; Thu, 10 Aug 2023 18:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C94361002;
	Thu, 10 Aug 2023 18:46:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C94361002
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B59531BF969
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 18:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DE354036A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 18:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DE354036A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vv5qqlU5RcAd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 18:46:13 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E054400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 18:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E054400DC
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-1bb893e6365so9473885ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 11:46:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691693172; x=1692297972;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aD4/1sZser2bYv6MWlh14IS1WZm+jBzIMYH/7BTHdPg=;
 b=axF1DGGb/ISQQ0kq9RO7nqUc8FCC9yo1otwfwg8DYEL2gxWhf4GZmb+/Wn+45BjOTa
 +N3qC7pCRSKIKSqSjlPYx/H3vhQSVbfGs7FGzjoGvGshRg1jbv+5HSFez3p3MofbCVcP
 ZbGDAEnWMyxrujTyxwI1ey8FH5qCYWuhS776NkGLYptetQtRYgVD3MB7uhztd3R+RrkX
 592lw0Ke5vdiH1b0+D7Y6LpR0ElY44nDnKKSfCZEIViXtSr8RAzm4zpLzXXWLYSjzEKt
 lAi5ZqDfCy1v/Szc0SEdCpJtB17GAKW+k5JDEtEiFUk/rIWwq8MIR18MY2CFfS6RPJpZ
 Nitw==
X-Gm-Message-State: AOJu0YwvV8pBAV2wI1KCHSkhzEdA1mLyc1KL8BcEAbDIM/C9BXGSNtfH
 DxBky2o0RLicMUqzNMe/7sGkxhXVcz+Ia63F/IM=
X-Google-Smtp-Source: AGHT+IFZv2IWBP2UQjY57EbZ1aEKhfpe99+b1ybWLM5PinM+M8Pll2NyW6GLul8RARS7ehj5SPlY9Q==
X-Received: by 2002:a17:902:d511:b0:1b3:fafd:11c5 with SMTP id
 b17-20020a170902d51100b001b3fafd11c5mr3596148plg.44.1691693172613; 
 Thu, 10 Aug 2023 11:46:12 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 n4-20020a170902d2c400b001bb6c5ff4edsm2116032plc.173.2023.08.10.11.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Aug 2023 11:46:12 -0700 (PDT)
Date: Thu, 10 Aug 2023 11:46:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202308101131.D8DEE055@keescook>
References: <20230810103509.163225-1-przemyslaw.kitszel@intel.com>
 <20230810103509.163225-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230810103509.163225-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691693172; x=1692297972;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aD4/1sZser2bYv6MWlh14IS1WZm+jBzIMYH/7BTHdPg=;
 b=DbRD0/P47O0+ZL9rjWH0sZdgC1npDJRwHmGoM4Ckm/w7RSZ2p1glpZZ7jDvJyLMqqi
 zv+1ysQGn+JBBj/a9syvEOrcZwixcRIFqs9FWXHXct8olVEPgLioEH5OAU2zzM+MEd5m
 3wGqRPnW3x1LvdwpmeFpbp5sm9KI8i2KTfX48=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=DbRD0/P4
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
Cc: netdev@vger.kernel.org, Steven Zou <steven.zou@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 10, 2023 at 06:35:03AM -0400, Przemek Kitszel wrote:
> Add DEFINE_FLEX() macro for on-stack allocations of structs with
> flexible array member.
> 
> Add also const_flex_size() macro, that reads size of structs
> allocated by DEFINE_FLEX().
> 
> Using underlying array for on-stack storage lets us to declare
> known-at-compile-time structures without kzalloc().
> 
> Actual usage for ice driver is in following patches of the series.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v1: change macro name; add macro for size read;
>     accept struct type instead of ptr to it; change alignment;
> ---
>  include/linux/overflow.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
> index f9b60313eaea..21a4410799eb 100644
> --- a/include/linux/overflow.h
> +++ b/include/linux/overflow.h
> @@ -309,4 +309,31 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
>  #define struct_size_t(type, member, count)					\
>  	struct_size((type *)NULL, member, count)
>  
> +/**
> + * DEFINE_FLEX() - Define a zeroed, on-stack, instance of @type structure with
> + * a trailing flexible array member.
> + *
> + * @type: structure type name, including "struct" keyword.
> + * @name: Name for a variable to define.
> + * @member: Name of the array member.
> + * @count: Number of elements in the array; must be compile-time const.
> + */
> +#define DEFINE_FLEX(type, name, member, count)					\
> +	union {									\
> +		u8 bytes[struct_size_t(type, member, count)];			\
> +		type obj;							\
> +	} name##_u __aligned(_Alignof(type)) = {};				\
> +	type *name = (type *)&name##_u

We'll need another macro when __counted_by is needed, but yes, if all of
these structs use non-native endian counters, we can't require it in the
base macro. (i.e. not now -- this is fine as-is.)

> +
> +/**
> + * const_flex_size() - Get size of on-stack instance of structure with
> + * a trailing flexible array member.
> + *
> + * @name: Name of the variable, the one defined by DEFINE_FLEX() macro above.
> + *
> + * Get size of @name, which is equivalent to struct_size(name, array, count),
> + * but does not require (repeating) last two arguments.
> + */
> +#define const_flex_size(name)	__builtin_object_size(name, 1)

Naming is hard. ;) I don't like "const" here (it's not a storage
class). But more importantly, this calculation ("how big is this thing
actually?") gets used a lot in the fortify routines, so I'd prefer
exposing those macros (from fortify-string.h):


diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index c88488715a39..4b788fa0c576 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -352,6 +352,18 @@ struct ftrace_likely_data {
 # define __realloc_size(x, ...)
 #endif
 
+/*
+ * When the size of an allocated object is needed, use the best available
+ * mechanism to find it. (For cases where sizeof() cannot be used.)
+ */
+#if __has_builtin(__builtin_dynamic_object_size)
+#define __struct_size(p)	__builtin_dynamic_object_size(p, 0)
+#define __member_size(p)	__builtin_dynamic_object_size(p, 1)
+#else
+#define __struct_size(p)	__builtin_object_size(p, 0)
+#define __member_size(p)	__builtin_object_size(p, 1)
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index da51a83b2829..1e7711185ec6 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -93,13 +93,9 @@ extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size)
 #if __has_builtin(__builtin_dynamic_object_size)
 #define POS			__pass_dynamic_object_size(1)
 #define POS0			__pass_dynamic_object_size(0)
-#define __struct_size(p)	__builtin_dynamic_object_size(p, 0)
-#define __member_size(p)	__builtin_dynamic_object_size(p, 1)
 #else
 #define POS			__pass_object_size(1)
 #define POS0			__pass_object_size(0)
-#define __struct_size(p)	__builtin_object_size(p, 0)
-#define __member_size(p)	__builtin_object_size(p, 1)
 #endif
 
 #define __compiletime_lessthan(bounds, length)	(	\


And the way DEFINE_FLEX is built, __struct_size() and __member_size()
will give the same result (which is what I was concerned about for
FORTIFY_SOURCE's use of __member_size not "seeing" the flexible array
members).

In this case, I think using __struct_size() in place of const_flex_size()
in the patch series is the way to go.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
