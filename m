Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DA0886631
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 06:32:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27131417FB;
	Fri, 22 Mar 2024 05:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSZLIiYOgzzx; Fri, 22 Mar 2024 05:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21BBC417EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711085533;
	bh=k+glO5iNDnOJRX1bMlWGx35LFvgqhLSy12w38sJ7h5I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s9RIGvdoBOis5GALyPLoKFMcIhtJMeX3WgfNliFhEG3YGA33p2IeLPx+Od73DA31i
	 6/FgIJ62tk7Kpvwod1IdDB5//IZyydi4R7YmICwt8P3p+8jwXXQafXFtDFytBjxH5d
	 kMzIyS+GY4j0hFr/J55pYaNFDpD3xk6oaw5iqvqyTdE6IuJPfNtHkRQnuiDFfMSAu0
	 XO2jqbRxENgaNYBooZu5dBpLGsozeElPTBqpaXdHGRvQRiQJTMjxFLMuoLS7YsAP2y
	 1WtgIlYyFACsYk6vb1VfoW577fAF4LmKY55sIretBpCqa82quKldkgVCDlYbofEBRE
	 OuAwmrXv0DtyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21BBC417EB;
	Fri, 22 Mar 2024 05:32:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDD3C1BF421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 05:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6A2A41714
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 05:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3jRH4DUlsok for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 05:32:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7524841703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7524841703
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7524841703
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 05:32:09 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-414787c73c7so4595545e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 22:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711085527; x=1711690327;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k+glO5iNDnOJRX1bMlWGx35LFvgqhLSy12w38sJ7h5I=;
 b=PLX0xUiHbggMbktt/jC14ISNq8Wkne8NN4WqjI4gW8RGOj4XvUIkRY4UwW+P8L9mM5
 xHi17p9tLz+hvdtsgwOSAkpzf5vsGMR/grhfDEI2ATcZWcmrRWRfFI5LFr5SSTYcPB9D
 djgovy6Ytekmbos9Eqz4ovrNZdmFKn1rJkAasBAXmldL6NM8OR8Bfwa19JtdhEKX2/aF
 bSeKclb9GB/x5n8nRXgkaXy/OFb9HWlQgydzbVjf2GHcG9BjjpxlFr3fq/p2vOxq8Shb
 y34ZSkzVGHou6u7Fd877WOcmpjmD2BMtPmkbAtnNNrmw8Uep8/rRSJuSUiFhdvvNp2rQ
 MK/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDMkKCZSvUdtTZQNCa7FpoAK4yQrXwmU00z3oTJFxUe2oGfMoMhm9S+IxlXkdQ/MK1IoKM4/evUdgqdlX5qzBwm2b6vu9XKqxGwrXfghjKFg==
X-Gm-Message-State: AOJu0YyPXybnmQLxz5/i3wFX94u7dm3y9L7WhvcU7fNBmiC29K5G1Q67
 HYYxUAIBFeV7RQijOEVLBSNgX1KxtWzA9kOfw3mDlraQ583NW517t0CHKJ7rjuQ=
X-Google-Smtp-Source: AGHT+IFUrNidyaL2odjdKfD+FtYadw4MHtswbb1LkvUM7SXIPYO/YUG7URif4e21XfDKyIOZxaierw==
X-Received: by 2002:a05:600c:3502:b0:414:7909:6680 with SMTP id
 h2-20020a05600c350200b0041479096680mr751469wmq.16.1711085527043; 
 Thu, 21 Mar 2024 22:32:07 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 z18-20020a5d4d12000000b0033ec8f3ca9bsm1190810wrt.49.2024.03.21.22.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Mar 2024 22:32:06 -0700 (PDT)
Date: Fri, 22 Mar 2024 08:32:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <7ca4a907-2a9c-4711-a13c-22cbfec15e0e@moroto.mountain>
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
 <0d7062e1-995b-42bc-8a62-d57c8cb588ee@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0d7062e1-995b-42bc-8a62-d57c8cb588ee@web.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711085527; x=1711690327; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=k+glO5iNDnOJRX1bMlWGx35LFvgqhLSy12w38sJ7h5I=;
 b=zNyz2nEs0xGMF1X1Am6iWpNdAiRp+tIHBX2na+WFiJqhh4OnGgfwyAvnYmt2s2sxJl
 Bf7Ekc22GF/tziMmuTz2irMLWNSR8MDwWLV7EClG84vSWY0XXf/NdSiZSz9WLqNfkOga
 yPvNJUlnxKg8uy8ehOmYKEyjUvYYqwIXDvH4DNb9PXavOgCIz6LBlfed782mw1DOickw
 CVFx1UJjYjlqr5dgMyTHXyKWlYfGlIO8j62+L6HL04B3y3qT3ZLqty5JFSx+mobgWegm
 TMnAnykOE65Z1WI0S0VxT1xHp8D/FWLBVogWqxF1v9bQIMukif/aaXPjHRjyRzu+HIJ1
 CZ0w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=zNyz2nEs
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Markus please don't do this.  Don't take a controversial opinion and
start trying to force it on everyone via review comments and an
automatic converstion script.

regards,
dan carpenter

