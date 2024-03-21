Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB8F885781
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 11:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47A4C60E74;
	Thu, 21 Mar 2024 10:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wNYUZVqooZjC; Thu, 21 Mar 2024 10:34:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85A1360E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711017299;
	bh=3XNkgAQnQ6LBfF2NFDRpA/pvI0NsrzPvIEpAHL8Ayt0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OreSyIfbniID7i5fxk08KvL+5OTwgonIBWNe0biQbMPBXa0nvOuuvC5dlInXc4XCH
	 HdstnTnRDOLr4nVofayQKLf2n2e5ovEiEUpQQT+UPbQri4IHb/nK3AghdjAIeKrjRG
	 V0FmVLa3WhZb6uUOAMc0rf6pcJKvBl5mZGg4PiktBQ1M2tUuuPtnVoJkCYbUn4dj3S
	 XdKTzP9gEdwdwub38FiuxBlfiry7KMh1/EOSKe5PKhG0j42NBPaemPUr1RjNwjvDJz
	 elkGInXw/4XJDb6pDZ6Vz4Re46rdOvL0ewGT9nVsbj1k1GFFnS9JXIrpoKn3aF6UIQ
	 TqZj2ffTLxcFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85A1360E61;
	Thu, 21 Mar 2024 10:34:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 451DD1BF593
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 10:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30EAB81E43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 10:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PoUg5AKI_vzG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 10:34:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::129; helo=mail-lf1-x129.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 418DD81E22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 418DD81E22
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 418DD81E22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 10:34:56 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id
 2adb3069b0e04-512f3e75391so608257e87.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 03:34:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711017294; x=1711622094;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3XNkgAQnQ6LBfF2NFDRpA/pvI0NsrzPvIEpAHL8Ayt0=;
 b=Xt1hLOmo2VmQDZev4OAQV9jyJLXDdT9vMeS2OEUooVHqdUUeyTtNJLjYNsAAWaMdj1
 TKXqRrHwQtygmsdaoXGLJpFqcWCMXcAIVmsunhvOhvaAVH0py1i3UKoF9e2YUNBsWlt9
 Xlfo6B0NHCk8NYnsMUe/TeCbYBICTjHmkEiw7KmcPIVq+yQlHdxTnQTN9876J5fdSZvD
 RGy/c/Ar91KIvRvkCvlrxbyQekFUDCRpKzGA56Gh9rWTeA3liY6yWx4/ILPbE6j8aO/r
 9jhR7QrxYyxuKNvRgosoppNwAMcWRegvMRvm54ZMae0Ol+NUv4g7hRvIiZI8X57iOCkG
 fVKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNSi7IJzm6gdnzDyOqsXibU1BuFJzQl/015uHnPlKAbUYDBspJZH+k1HB5xRIM+FgurZIPYCrYrDsuAgVVRuK7cP1xoR+45+fBHvA7pEymYg==
X-Gm-Message-State: AOJu0YzKHTG++aNgiAFGQYxle4nzwWadU6dnhY7aNr73vrehwjs5Mhc1
 OuIPWtulKIISFGxKU0k8yOsTU2cfScwUFPg/6S+vsh+UZ8OEIhxmOVqHWeE+OI4=
X-Google-Smtp-Source: AGHT+IHcrMw9qmrRmKJ+2QA1uL5wiYGSUSyvOjThedDZOBU+nrthRuPB8s9XAlNO95sJ+RIlSU9Jkw==
X-Received: by 2002:ac2:5b8f:0:b0:513:ec32:aa8a with SMTP id
 o15-20020ac25b8f000000b00513ec32aa8amr5682658lfn.11.1711017293674; 
 Thu, 21 Mar 2024 03:34:53 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 iv20-20020a05600c549400b004146bce65f4sm5064318wmb.13.2024.03.21.03.34.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Mar 2024 03:34:53 -0700 (PDT)
Date: Thu, 21 Mar 2024 13:34:48 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <22ba28d7-e8ed-4b5a-9b6f-42d944d2f67d@moroto.mountain>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <20240319124317.3c3f16cd@kernel.org>
 <facf5615-d7ac-4167-b23c-6bab7c123138@moroto.mountain>
 <20240320202916.2f2bda73@kernel.org>
 <6266c75a-c02a-431f-a4f2-43b51586ffb4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6266c75a-c02a-431f-a4f2-43b51586ffb4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711017294; x=1711622094; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3XNkgAQnQ6LBfF2NFDRpA/pvI0NsrzPvIEpAHL8Ayt0=;
 b=PPVuIIzJXdaIv9BmRJIwLsZno7DMBuyxPxm+bxA0Su5IzDrSN8Yh1bZlcDtY3KgmTf
 oOX+LOCRru5W/wRFcKTNwj+rC9ahO4l7BiTnZTCWcBEuQicFg517Q+q23QqYhoL8rSN3
 p7TElz6BWvaTik2BJt9/599XDNGWg+gA3Jh1u7QEO6n+iF1gpDPgfbCWP2U8juw3+xmU
 42YEjLU2mx9VwoL+BtqM5tGF3oY/z366/LfXVcAVWe0jc2Q8+NpTqK1eBEEo7x2viWRj
 qyN0bmWNMRxBod+ov1nOSGI0RzcnddIcEkwbs28TG36cBHyc/EMFCvql2fdWueY86+Ow
 1Arg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=PPVuIIzJ
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, intel-wired-lan@lists.osuosl.org, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 21, 2024 at 10:59:42AM +0100, Przemek Kitszel wrote:
> Simplest solution would be to add a macro wrapper, especially that there
> are only a few deallocation methods.
> 
> in cleanup.h:
> +#define auto_kfree __free(kfree) = NULL
> 
> and similar macros for auto vfree(), etc.
> 
> then in the drivers:
> -struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) = NULL,
> 				  *othercaps __free(kfree) = NULL;
> +struct ice_aqc_get_phy_caps_data *pcaps auto_kfree,
> 				  *othercaps auto_kfree;

The auto_kfree looks like a variable to my eyes.  I'd prefer something
like:

#define __FREE(p) p __free(kfree) = NULL

	struct ice_aqc_get_phy_caps_data *__FREE(pcaps);

regards,
dan carpenter

