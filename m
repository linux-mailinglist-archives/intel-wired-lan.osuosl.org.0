Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1173976FC0B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 10:30:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F2AF41EB9;
	Fri,  4 Aug 2023 08:30:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F2AF41EB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691137844;
	bh=N48PWJVsM9dcNnoj3PAftAsCwyoPalk63B5JHTZ78H4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9BelGCe1h6/CLO8fJRzUF2iUS+FHE3kVjgS31zjQ50SCebA2oJP8DFlt8VusTaBx7
	 Wu995U0pIid/Og9S7XUqPm8/dYLWcfkrt2E18oIiGj58Bp0e6ISILudpagiGmTPu7U
	 87AWZacagAjySOBtyAF9swZ/g7or0tXQM5e+o8SzaqRh/gAKFuBmJ8QaBdEQCna7/H
	 9bqE/mMR5Wqv+ZKH5Vk7uLEw07F6ejOWhSFxSAaxASSuUGja33HM3AxBpckIsOJ7X+
	 ZkWmUbK0FWxOta5v4Htu8iGIMIqPO7Wv5GCuJXoHoIE0uUhQKKDB6WLP6B+vFZY8H9
	 GKIt57Ndf5WFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kUd6RR8zlJQt; Fri,  4 Aug 2023 08:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FB484085F;
	Fri,  4 Aug 2023 08:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FB484085F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31D621BF341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 967DB821C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 967DB821C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1aeuaKyqQi7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 08:30:11 +0000 (UTC)
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DA6B82F06
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DA6B82F06
Received: by mail-ot1-x336.google.com with SMTP id
 46e09a7af769-6bca857accbso1590114a34.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 01:30:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691137810; x=1691742610;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sTW4GcsIoC0wedeu0cP1p/SdzNq7SXqwMejU+XlRg/A=;
 b=axvT2mblT2PAnp1etzf3GxTg7MMxUb+hgmtEt82Oi75tt5+7fij07XwlDhoFOLNQ/2
 6B0AFzfuPP/ouLNVvoP7/GdtAJs9U3zhrHz2WS0zFdkTDrjSbokyucu+Wv/duORttmaa
 X6wTL+xl6bfSxD8O7bguZV737aVGlTUAmDcLCjCa0s3kFTW59ApA7QpQMnTMSRFkKYY1
 wMJW/Fcwvl5bOHC52ySis0FC41oV2tYX27wpUH9Mlxg5LNggBo9L/u+fro3QJXTMSwzJ
 mEPjZOhfGlOOF6C+QnO9WgEDRNJ8mbuNxnLar0sDx/EHTDOO3PcDv2M8wWL9rq8ciZG/
 DGOA==
X-Gm-Message-State: AOJu0Yxod4e1WvJRPcxm7X4e0APTmhBoKBQzf5aVhw9ws2iifqvv9Ii/
 jDi/UvN+zBksa4M3umZyMFictQ==
X-Google-Smtp-Source: AGHT+IHh6wCyuLACZdpvHgsdR8UkOmQsmagdun+zvBpnhfZpwlQcNCElW7X7S0H00eHM1MYxpZV3NA==
X-Received: by 2002:a9d:67d6:0:b0:6b9:68fb:5a28 with SMTP id
 c22-20020a9d67d6000000b006b968fb5a28mr931396otn.27.1691137810270; 
 Fri, 04 Aug 2023 01:30:10 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 o14-20020a17090a4b4e00b00268b439a0cbsm1057998pjl.23.2023.08.04.01.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 01:30:09 -0700 (PDT)
Date: Fri, 4 Aug 2023 01:30:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202308040130.E48094967E@keescook>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-4-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230728155207.10042-4-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691137810; x=1691742610;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sTW4GcsIoC0wedeu0cP1p/SdzNq7SXqwMejU+XlRg/A=;
 b=GzQT2IqnS0O9DsPcor7DwEmC2sqiMDOSQPI4yqQEhlltfGaGer/VaRPL79vkoGC3nq
 OI2mf4uB95BiiebH88szvpfhhb4hvT2F+ko6eNeOK9/E9F2QgOGqU3hBbUOJg+LFzTmB
 vd+4ynvEAgfFtLVfaLBUybVzDa6hZBiOuW8u0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=GzQT2Iqn
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] virtchnl: fix fake
 1-elem arrays for structures allocated as `nents`
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
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 28, 2023 at 05:52:07PM +0200, Alexander Lobakin wrote:
> Finally, fix 3 structures which are allocated technically correctly,
> i.e. the calculated size equals to the one that struct_size() would
> return, except for sizeof(). For &virtchnl_vlan_filter_list_v2, use
> the same approach when there are no enough space as taken previously
> for &virtchnl_vlan_filter_list, i.e. let the maximum size be calculated
> automatically instead of trying to guestimate it using maths.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
