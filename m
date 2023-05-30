Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA16C716708
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCEA981F75;
	Tue, 30 May 2023 15:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCEA981F75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685460560;
	bh=chg72mjUsd2tt7SK5WNb8og8fwfc08Kmrm4S9keIsBE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L0Y3KZflB12Eu//pzibobwzRiLBjr5/G+thpxXrLWxLOP1HItJvcVxWsWpzq1KfVk
	 5Uw7R3KsQfSK1mQi9rvjaOAUQw1wjBhrkZOStIZ3Qo/kCK6hCRpX8WqxRbyL1A4GHd
	 4vi0s//zkY9ah8RNMGb3ytHkGQov6IcKZPl/ifNHSQY1D6b8i+896+8qbB6r9+MLbF
	 8SNVth5W/lqc4zZVznFNxOOmxnIjB+WzorS3bvrtOd/8MWrE2FViSoVCJLCF2bgZzM
	 aEGjjACvqCYZLqma7EfaB3nhRxckYqeSz32wurxZ2BvSMguhPypFZF6boeV9l6b/01
	 rlVLpNmfJ+0Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZbcfiWjZ_ICz; Tue, 30 May 2023 15:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EC9D81F16;
	Tue, 30 May 2023 15:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EC9D81F16
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1E471BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2A0141762
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2A0141762
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnqI2l0I6aMV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:29:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7A0E4156A
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7A0E4156A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:29:13 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-64d24136685so3155255b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 08:29:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685460553; x=1688052553;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2SJp+Uv1RpHV3xgAECW4BbCiVPS6daBLkdIv88EsssY=;
 b=Ghn20UZYsI3ReudWVj/jcO/nSuXAJp/eQ17OAXbCeAxKmQ+HRnUfi490T5vX8QieLi
 hwuSlng2cxv5rBahZNvyPGNS00hW6EF8tcPRrL1C1L171OBs9/7Zj1gXtj66Z+XXa5Fa
 cjEvpGTE+yDE3qMhnsrpKyb5wXoSD7WN/M0QHj978jV8+33fwP8zri3nppjzBUYXXnZz
 FbJXfnP/eWqBn4HKJxCQhnER0GA1I3+HHcKG5HEYbSCPTh4YX3zKZgL3vE2Bjfo38cx8
 MMitdEItfN68IRqXW4jXQYRug9bHoSxlto61ejF9Efc85tq+PjNx1O5U3Bva7LXSglAa
 bayw==
X-Gm-Message-State: AC+VfDxOk/T6a7N5X0ghhzZ/KRYy9SIxDRqJo44KFKH/8mDi2L5rWr8r
 F81SsuwxXsj7y1iqyh9ER34=
X-Google-Smtp-Source: ACHHUZ6I4dCo42pqcRR5FvrO5e8hYEpJ7NRXK4X/W0UzOn3fN27G7WK/zXzU6nqQ+Vg1OyuGCecyKQ==
X-Received: by 2002:a05:6a20:918d:b0:111:52a4:7fab with SMTP id
 v13-20020a056a20918d00b0011152a47fabmr6033942pzd.26.1685460552886; 
 Tue, 30 May 2023 08:29:12 -0700 (PDT)
Received: from ?IPv6:2605:59c8:448:b800:82ee:73ff:fe41:9a02?
 ([2605:59c8:448:b800:82ee:73ff:fe41:9a02])
 by smtp.googlemail.com with ESMTPSA id
 t62-20020a632d41000000b0053fb37fb626sm1583890pgt.43.2023.05.30.08.29.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 May 2023 08:29:12 -0700 (PDT)
Message-ID: <09254e7cd6fd20f899f8a4ad3fbaabf223802503.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 08:29:10 -0700
In-Reply-To: <20230525125746.553874-3-aleksander.lobakin@intel.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-3-aleksander.lobakin@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-3.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685460553; x=1688052553;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=2SJp+Uv1RpHV3xgAECW4BbCiVPS6daBLkdIv88EsssY=;
 b=INdZ3vvUBHUo9v5GYo09wvuKyHUEohSnMh3K4lkdOlTtC6CZIBE6WjDfXawBNpRXrj
 qgOqFpmcOS+EfVJZjDo8CZWmjFUn6fbuuxei9YV+YY61pufddxKnAru2CvSvkTAVaHtD
 fMrAsOCrrk5dwLUm1arzxNPHcnbSFcXiyowkv/ev/zeygouXqakO6wCOh0yzvg4EZP1K
 y00qGWqdbTy9EjdGTW6l3F4YvWhd0gJC4EqPMoBr6+Hpy38CmLlXFtz6wE138bujQ6d9
 sDY9Clt7NDjURoE8V1dakc+GJlGpuwcRjZUpbNo0aTqDDGQWKTz0l6L1wAKonaOfDtcs
 DUPQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=INdZ3vvU
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/12] iavf: kill
 "legacy-rx" for good
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-05-25 at 14:57 +0200, Alexander Lobakin wrote:
> Ever since build_skb() became stable, the old way with allocating an skb
> for storing the headers separately, which will be then copied manually,
> was slower, less flexible and thus obsolete.
> 
> * it had higher pressure on MM since it actually allocates new pages,
>   which then get split and refcount-biased (NAPI page cache);
> * it implies memcpy() of packet headers (40+ bytes per each frame);
> * the actual header length was calculated via eth_get_headlen(), which
>   invokes Flow Dissector and thus wastes a bunch of CPU cycles;
> * XDP makes it even more weird since it requires headroom for long and
>   also tailroom for some time (since mbuf landed). Take a look at the
>   ice driver, which is built around work-arounds to make XDP work with
>   it.
> 
> Even on some quite low-end hardware (not a common case for 100G NICs) it
> was performing worse.
> The only advantage "legacy-rx" had is that it didn't require any
> reserved headroom and tailroom. But iavf didn't use this, as it always
> splits pages into two halves of 2k, while that save would only be useful
> when striding. And again, XDP effectively removes that sole pro.
> 

The "legacy-rx" was never about performance. It was mostly about
providing a fall back in the event of an unexpected behavior. Keep in
mind that in order to enable this we are leaving the page mapped and
syncing it multiple times. In order to enable support for this we had
to add several new items that I had deemed to be a bit risky such as
support for DMA pages that were synced by the driver instead of on
map/unmap and the use of the build_skb logic.

My main concern was that if we ever ran into  header corruption we
could switch this on and then the pages would only be writable by the
device.

> There's a train of features to land in IAVF soon: Page Pool, XDP, XSk,
> multi-buffer etc. Each new would require adding more and more Danse
> Macabre for absolutely no reason, besides making hotpath less and less
> effective.
> Remove the "feature" with all the related code. This includes at least
> one very hot branch (typically hit on each new frame), which was either
> always-true or always-false at least for a complete NAPI bulk of 64
> frames, the whole private flags cruft and so on. Some stats:
> 
> Function: add/remove: 0/2 grow/shrink: 0/7 up/down: 0/-774 (-774)
> RO Data: add/remove: 0/1 grow/shrink: 0/0 up/down: 0/-40 (-40)
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

I support this 100%. The legacy-rx flag was meant as more of a fall-
back in the event that the build_skb code wasn't present or was broken
in some way. It wasn't really meant to be carried forward into drivers
as the last one I had added this to was i40e over 6 years ago.

Since it has been about 6 years without any issues I would say we are
safe to remove it.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
