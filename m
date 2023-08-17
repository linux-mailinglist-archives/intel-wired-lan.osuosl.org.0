Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C69177FC70
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 19:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7554C4191B;
	Thu, 17 Aug 2023 17:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7554C4191B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692291626;
	bh=05mf4VWEVrCp2iGhTgMDf28F3cAg1V7IoGwohQMTLlY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g9LZxtk2BWrd1SEjlJM7Tch89UoG/nr/L1iGQ7lX5S3qIBJHXEmh7s43rFLmzVPyF
	 ChTBnY19INDIUonB/6r8hZH1z2cxZ3+nDTaQiMIv7IjxjX5ooAYLmfMzTm6uVy44v7
	 qvrdI5JQrFRKp3YQvsfk3WAc1b/PkCXikxwyQ6lyN/E5McSI80NDXOMp6f0O1F5Z45
	 QFtoKvUOKibrnQoqgy42QIqr9Y62uw6GWXlkTEcz5wAdK+RH22wU2Y28xYvi0PasOB
	 7f5YrOP6T0KvQRIG1Eh175t/0MtvpJk04c+YG0Vj6p1+tmG+JeCQ6k6MK4iB0iX4tV
	 9TsEwYrb38KJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RJe8RszkdPg; Thu, 17 Aug 2023 17:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B56B40347;
	Thu, 17 Aug 2023 17:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B56B40347
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 543961BF34C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 17:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3955360E6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 17:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3955360E6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ysg4fJjkV1an for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 17:00:19 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DE8460BC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 17:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DE8460BC1
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-68876bbecb6so5760b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 10:00:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692291619; x=1692896419;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MJhpOKYygfVTwv/muBcWLGwZoRPdxuU8yz2KMU9B00o=;
 b=XQii1XGk45DLvATNx3vqJv1mPIdKhA5tySMPrkgt08cxVRlJOTMQoJlTgvSEt0qXim
 8CGKRmQZxW618Vv4URlZnR+5H8UJOacdnDniHm3fWT2U+iy+at8Lvj5CaYY6aaWPF09P
 F93bvVuNiY699mhJSAwHjjn5aY2xsBM/m8ITdNFj6No9B7QR1NcFrl5177Qd4VlWxKe7
 RJb37059hUNwXK7we6JBbOBwqcgsFuelO4zEJpMgMh/f4BeB3yXOcYk4nvTNs23nqNrR
 Ul9Px3RxLnUU4FgeCE6wgndI949iiOmqS+MKZBWYVwwRVoTBac3fwHRW+Hu9JpAvXiUU
 ff8A==
X-Gm-Message-State: AOJu0Yy6xfWZQ8Sj85mPaz50bwwJMwiJBHYm9yQ6EXYcRttkbRyZj0pv
 kSlApWpDNcxpjn8EvnNxFxNjdyFIs7oQHqflGNI=
X-Google-Smtp-Source: AGHT+IGfkKsLOQz6+e+EW5vzdI+McSp2GYuMvONN8EpwvhQgT4MGydmr4ZY2beFstZQdjjWOFyBPoQ==
X-Received: by 2002:a05:6a20:8421:b0:13b:a4fd:3017 with SMTP id
 c33-20020a056a20842100b0013ba4fd3017mr304951pzd.46.1692291618930; 
 Thu, 17 Aug 2023 10:00:18 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 t4-20020a62ea04000000b006884844dfcasm7319pfh.20.2023.08.17.10.00.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Aug 2023 10:00:18 -0700 (PDT)
Date: Thu, 17 Aug 2023 10:00:17 -0700
From: Kees Cook <keescook@chromium.org>
To: David Laight <David.Laight@aculab.com>
Message-ID: <202308170957.F511E69@keescook>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
 <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692291619; x=1692896419;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=MJhpOKYygfVTwv/muBcWLGwZoRPdxuU8yz2KMU9B00o=;
 b=BXFnBPkfR3sQEgInQUXxcixS4Rxh5w0uTrfa8bekCw4+fl6YRwyldBR2Cd6t1X9x8z
 3Uzvb4SGP3p+l/QkarFDWiXW97wF+umwHMIfTdKYKMnIlSevQoPRHpj0/Muw/v4aJDt6
 HcVyK5RXx+fRlZYdVgRmcyTrUqOulmp6cFuDU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=BXFnBPkf
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
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
Cc: 'Przemek Kitszel' <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 17, 2023 at 02:35:23PM +0000, David Laight wrote:
> From: Przemek Kitszel
> > Sent: Wednesday, August 16, 2023 3:06 PM
> > 
> > Using underlying array for on-stack storage lets us to declare
> > known-at-compile-time structures without kzalloc().
> 
> Isn't DEFINE_FLEX() a bit misleading?
> One thing it isn't is 'flexible' since it has a fixed size.

It works only on flex array structs, and defines a specific instance. I
think naming is okay here.

> 
> > +#define DEFINE_FLEX(type, name, member, count)					\
> > +	union {									\
> > +		u8 bytes[struct_size_t(type, member, count)];			\
> > +		type obj;							\
> > +	} name##_u __aligned(_Alignof(type)) = {};				\
> 
> You shouldn't need the _Alignof() it is the default.

In the sense that since "type" is in the union, it's okay?

> I'm not sure you should be forcing the memset() either.

This already got discussed: better to fail safe.

> 
> > +	type *name = (type *)&name##_u
> 
> How about?
> 	type *const name = &name_##_u.obj;

This is by design (see earlier threads) so that
__builtin_object_size(name, 1) will get the correct size. Otherwise it
doesn't include the FAM elements in the size.

> 
> You might want to add:
> 	Static_assert(is_constexpr(count), "DEFINE_FLEX: non-constant count " #count);

That would be nice, though can Static_assert()s live in the middle of
variable definitions?

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
