Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFCC83B7BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 04:17:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BF94401F3;
	Thu, 25 Jan 2024 03:17:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BF94401F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706152641;
	bh=KCiYhDA2J8P+csXeUZjIuzrVBbJYBPRsCAXvDdhssHY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sUikV6EkY0d/rYLxUQf2j3T4zJ7TNdMfI6PosMIx4CUSWbXwJe4qZAuVtPoJNRqM0
	 6/LwuygQprG20fSp5IwBFcdyHnK8LAXCfdBTUnruxRkG2+ZDKecif3jaoVM72A3CFg
	 q15NU/o1ZIgwtjlSZJ3dx8z2QQgQNKbom3wc8a9/Zh+yWQCy0k4vXCBTsE4SiXYl1A
	 zV3OHCuDsmE5cxX0pBW5X5oGfVJ7fSnLXpXFfxyvN6oC+b0OuDa2aFXgAYrGnQJuIf
	 mW7Ukdy6w++HKckIt/I1sIvf5ItvBIoRit9OCyQCt1P7vE8rGlTq5k/6MBC7c6eY6d
	 A5/syVD0WW0Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YECpcZf13Xla; Thu, 25 Jan 2024 03:17:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9DD34011F;
	Thu, 25 Jan 2024 03:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9DD34011F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 263661BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 03:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EAD7460BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 03:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAD7460BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cGj5EDTwFso for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 03:17:13 +0000 (UTC)
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 463CC60BE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 03:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 463CC60BE5
Received: by mail-qk1-x72f.google.com with SMTP id
 af79cd13be357-781753f52afso426602385a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 19:17:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706152632; x=1706757432;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=KCiYhDA2J8P+csXeUZjIuzrVBbJYBPRsCAXvDdhssHY=;
 b=a3CbU6s7x9EHt50HBe4oQkQv95JyDD9t0NqV5570UyGUERX4TlWKq16qp0upFb18sA
 fO29CV9PNvz+94ON3Ssz5EDs9EvMCILgfNLZmxFAi9nxx3JB/vCtm8aJJtbAz8vpZoDR
 6fSKYwnq9C4VQ+besEIXtsCC8xtC9FHrU4r70Q5fympGSOyTJBitHBHZfEQGS/UAHspc
 L8Q0/3bsFmyZjs+QEW5h748uFtBl4bC98wj+7acD735lHXMZYRZeonMVxovIL00Day2y
 J+wjYnvbNUx3ht0aRy6NSSvDSmBL+LXpHTg5utFf73KTNMCbiM6AnOzpPRBsM0+BBOYS
 PELg==
X-Gm-Message-State: AOJu0YzXQ+xdpZesNwC9VtWNrvFrnb1M5Sny/yJ7sL8inH8W3FvOlzDM
 1axCgPh6X/kTT1Ffe6eXLcQY4II6hojNRxV2w3w47sCTBDUjRBHG
X-Google-Smtp-Source: AGHT+IH77XI+xfh/ckZi7tSt+HmYT6upRD2lDI41lNrG31gzHOl7380WAB1PjyIRYm8YuSd+0ZOCHA==
X-Received: by 2002:a05:6214:c28:b0:686:ac5b:fee5 with SMTP id
 a8-20020a0562140c2800b00686ac5bfee5mr316873qvd.24.1706152631827; 
 Wed, 24 Jan 2024 19:17:11 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCXsEiOUUqRt5qvNHOeSyTGwvg6uychnxlfvYFpu/kxlBNR1OqQBn/pTqV2hkwmGb5wr4HYDKlMumz68xsZONDhpCOhWGmBdo1vraAvEeFVssPcu0XHPAWUSmRKdg+gqDjbJPRAYrG30JnMVs+vHnJuh3Hidg7hIwLkcKLTnn3h8E27/gBrYCJc=
Received: from localhost (131.65.194.35.bc.googleusercontent.com.
 [35.194.65.131]) by smtp.gmail.com with ESMTPSA id
 mu6-20020a056214328600b0068602f8966esm4685663qvb.111.2024.01.24.19.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jan 2024 19:17:11 -0800 (PST)
Date: Wed, 24 Jan 2024 22:17:11 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alan Brady <alan.brady@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Message-ID: <65b1d2b755e27_250560294e8@willemb.c.googlers.com.notmuch>
In-Reply-To: <20240122211125.840833-5-alan.brady@intel.com>
References: <20240122211125.840833-1-alan.brady@intel.com>
 <20240122211125.840833-5-alan.brady@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706152632; x=1706757432; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KCiYhDA2J8P+csXeUZjIuzrVBbJYBPRsCAXvDdhssHY=;
 b=cy7BkZ0yJPnwCIApZZen8UD2q1EHd0Y5M52c+qtZOHrLp9J1kxFtlFXD4NThVFUU2m
 3XR24UTYn7bEb9sNJk47lPAZXRYxTK//TOrfcfVLFRlTQOrTbtf1doCCevckR0/edomQ
 0qyUF8urE+QXQYd4f8W6XVXAF3DzvfphPHvEq7yoATV7fj8gjR3QfFU4LGtIiSMAFfW9
 1qUemCJxZM14vT+6O9jgZxjnlhT/LPURu4awW4qzH8SAQF4ttmXsj5VMZEzhwC02mjjU
 r+Pk2ysWMjxUzUQgmMIG8Jy7ksU0LDyx13VRQ8FMPvJmwBDSNnyCi1Tp/2o9cr71WFoN
 YiGA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=cy7BkZ0y
Subject: Re: [Intel-wired-lan] [PATCH 4/6 iwl-next] idpf: refactor remaining
 virtchnl messages
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
Cc: netdev@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Alan Brady <alan.brady@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alan Brady wrote:
> This takes care of RSS/SRIOV/MAC and other misc virtchnl messages. This
> again is mostly mechanical. There's some added functionality with MAC
> filters which makes sure we remove bad filters now that we can better
> handle asynchronous messages.

Can you split the part that is pure refactor and the part that is new
functionality?

That will make reviewing both easier. The first should be a NOOP.

> There's still a bit more cleanup we can do here to remove stuff that's
> not being used anymore now; follow-up patch will take care of loose
> ends.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 933 +++++++-----------
>  1 file changed, 375 insertions(+), 558 deletions(-)
