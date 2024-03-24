Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BBD887C49
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Mar 2024 11:43:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C922581E14;
	Sun, 24 Mar 2024 10:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lljWKA1ggLuP; Sun, 24 Mar 2024 10:43:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F22F281E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711277004;
	bh=Ribv/O+whBGnqTci5nPx7uHIdlxoMvUZURqWTthedJw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L2mDYBgG17VjkeV3bwELc4ILXIW2JpTp+aX5pbDFbqIZAEOtRtoDbENMNpoghXg3C
	 Ey2zICXI2ocMwe19auSlPdSwGlpDDmLRb2gRkFfrdyEgF5BiKRrzZww7Rox5UcPgtB
	 iYDea3ZMxg//fA6u0rj3VXJ7+VsL7TFWUooVwXVICHOmtZs5XClzErv9eU1gVMw1MZ
	 Ud7bAMjlQeiC6OlFmy0vyqKUVB+QIDQ9hwAD8l62En9gnvbPlHtQ7m93miG/4eLDpN
	 BAUc5WVPocouqII6tF+KahXT8OLiZF8QgKcQpsCCGXBwVNJHFWvjKX+paB5oZDliTc
	 YcYfWIOuhxNmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F22F281E10;
	Sun, 24 Mar 2024 10:43:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1A5F1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 10:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8F2C81E10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 10:43:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHeEtl9TmCYD for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Mar 2024 10:43:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::136; helo=mail-lf1-x136.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E54B381E0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E54B381E0E
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E54B381E0E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 10:43:19 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-513d599dbabso4512347e87.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Mar 2024 03:43:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711276997; x=1711881797;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ribv/O+whBGnqTci5nPx7uHIdlxoMvUZURqWTthedJw=;
 b=OIVo4MN1gW60uTivwFMLuyWjPZVO9BZlw4NbaBhXyUsSirlBXNUPJ7zmqBPToEu2Id
 RRNbk8i7/TGhxHOQ1izLY5iFeStEYrUuzX76Qa435tMFsombkQgQcVSx5k0GFYRt11rf
 Q6MmnC7WntFfvwgnNCI6NLuP/kcU6rYHMzB9WJ9ACUR4X6SlHF+aQtVRKuXcLFUjR7bm
 Apiq+hwqnxfPOoqYc9tYm7lgklOVNCw1MC8FZC0upwYJZU8BeDpPFjIMtefbe9EKoHyd
 2ivaMCqIGxjn9J/0qfCyD6sCjlxAbiQgeanVxbNEmGPgua4PISg7BCDIKyDUHMy3PLWs
 NuXw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaGNz33jB9TFkGkN+2fJpcdr1v9YYq3cS4DXAFGO30viVXUQjtELpgVmqYNpzJc+XTfbfx69Xv3V224u2yPDjP8LwIBnkp3dcToduYUddbNA==
X-Gm-Message-State: AOJu0YzOYJ7bdXCjnLPjterIoW+q3VjB4PdmzvtJ8/UtVqZEmxfEUVV0
 uMx9IFiN/Xio+Pbx4UH4n00HhK9wQljJZpMnBzJdBTw1Gw8mrnJGPF3pTaDO5UQ=
X-Google-Smtp-Source: AGHT+IG4o6Yn5vUl781OaAZhuvbmnwlLG9/TmJ93NsAHIltWR7Tebhzu896a3DsWYdgcU18bziiJ7g==
X-Received: by 2002:ac2:5b9a:0:b0:512:dfa1:6a1c with SMTP id
 o26-20020ac25b9a000000b00512dfa16a1cmr3000023lfn.10.1711276996932; 
 Sun, 24 Mar 2024 03:43:16 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 f13-20020a056402004d00b005689bfe2688sm1816184edu.39.2024.03.24.03.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Mar 2024 03:43:16 -0700 (PDT)
Date: Sun, 24 Mar 2024 13:43:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <f292facc-8a22-42e1-9a41-5ec8bd665cb7@moroto.mountain>
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
 <08c9f970-3007-461a-b9f9-9ab414024f68@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <08c9f970-3007-461a-b9f9-9ab414024f68@web.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711276997; x=1711881797; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Ribv/O+whBGnqTci5nPx7uHIdlxoMvUZURqWTthedJw=;
 b=MUuWy7CNff3XIBobU55Fx3UNvoJI3hVsjT0882QiUidukGYidSETrQ+TNNr1zql5Ng
 viUWdwV7CUk0ByxabftQkm3Qkd1v+iG/lpQkvT8dPMheX0EbtmqhuQXve4EdKYzNAMrz
 q0I8MnokhjYzW5N/KOLuDytqny/flE+EcFpNk4nE9ZEQ4KinECHIeVAxfwQju/8BcE58
 KYWBCEFgpRNk/OJlVUPjy8DzQrkZBoZlyPW3Gx5E5Fbk59C5xydpJt3Jir1Hlj63x+xs
 LQp15lIs1T15NSFjmPY0OybDZ+Pfk4ijhF7hxv3l6VbxtiqJGWdVV/4hijskNiH/cWk1
 NeJg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=MUuWy7CN
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
 pointers
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
Cc: kernel-janitors@vger.kernel.org, smatch@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Kees Cook <keescook@chromium.org>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 David Laight <David.Laight@aculab.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Mar 23, 2024 at 05:56:29PM +0100, Markus Elfring wrote:
> > Automatically cleaned up pointers need to be initialized before exiting
> > their scope.  In this case, they need to be initialized to NULL before
> > any return statement.
> 
> * May we expect that compilers should report that affected variables
>   were only declared here instead of appropriately defined
>   (despite of attempts for scope-based resource management)?
> 

We disabled GCC's check for uninitialized variables a long time ago
because it had too many false positives.

> * Did you extend detection support in the source code analysis tool “Smatch”
>   for a questionable implementation detail?

Yes.  Smatch detects this as an uninitialized variable.

regards,
dan carpenter

