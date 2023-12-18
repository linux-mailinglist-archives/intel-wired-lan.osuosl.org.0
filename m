Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB7D817672
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 16:58:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D37B40527;
	Mon, 18 Dec 2023 15:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D37B40527
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702915082;
	bh=ZPhLIgcZ9ImuCnEb7NMuKRXY28N2K8c+c2v7vvm3xY8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d+MAqRCvGQftV2EMNhCnkhOkvOGg5tWHQByS9GLtHpNr1sckcHH08d9LQLnpek5ia
	 FyeylpiTIzs8Aj12mGXFHKBYk4uCTk1OTNKGxmFVm1V3q1qdBxbLVG5tW49Zqp5zsR
	 XIBbmoP7usO85kamTK6XyHrjdE7guQFdt3jW6CREVPgMiQL8e93SSRgnaFlPOd/kVF
	 d+W+pxYhpahw8Kdi6yXTQTcpxFiJSA68U16e5lcgkU3szP3uvqT49VLsGZYfr6Z3KK
	 xVwnFWaaVOcWWmiM80TAsK63LxAtiESSlMdiLxOjR1DxlzgBxcDnbetUGLhKxyRMwj
	 gX9s+LPOeecSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSAwunUEBFAw; Mon, 18 Dec 2023 15:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE64E400BA;
	Mon, 18 Dec 2023 15:58:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE64E400BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11E141BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 15:57:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD8268179A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 15:57:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD8268179A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlgspbDE9HW8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 15:57:55 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E19D081771
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 15:57:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E19D081771
Received: by mail-yb1-xb29.google.com with SMTP id
 3f1490d57ef6-dbcd0928530so1948687276.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 07:57:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702915074; x=1703519874;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zygwJSjMe2eYUZaDyLafoB0FdFlBGABC230eRNUsyrM=;
 b=DCvc3/sSfGT9KNICs9uykqULnXSPRh3+i4LzpkxdqmWxKsmTUou8YuBjar1mxK/BWo
 Xipk31bTVGM6/2/ATGDQwXvbjcaiZHhu0MNXez8v6h+FOOFJaIf/j3gLoiE35pS/bHVj
 C5XVIw3JF0CjN/0q0a7YcSdzWUHlRpxtxM16G0jY4ik4NO/CRLS94cyHTUFA8QPWH+uF
 Jh8Bhh5MN3jriZl/VML44yCnmoNy7Jtqzejh8bLmB+VGALqOO5OJad0/5o042ynEgkgJ
 HGY82NkSr02jHWxlotSHaScGGnwUxET8PxUrnYkF9PMZ6tDYEuVSjE+UVltxfdyTOKt0
 995w==
X-Gm-Message-State: AOJu0YxTvogryfbLVkZaVilygk0xRuLUGKu5CZUMATFLonbDxZEvLohr
 v4EHLryQODgdgNJ+EAcW5wA=
X-Google-Smtp-Source: AGHT+IHenxc44IBKqvf9+YpIc5gdTJ+X6U7J9szWeK56xk4R6IXcAibg8OOKyP6YFyuok23IHHMF0w==
X-Received: by 2002:a05:6902:245:b0:db7:dad0:60c1 with SMTP id
 k5-20020a056902024500b00db7dad060c1mr8289686ybs.78.1702915073569; 
 Mon, 18 Dec 2023 07:57:53 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:9c41:1dd2:7d5d:e008])
 by smtp.gmail.com with ESMTPSA id
 g13-20020a258a0d000000b00d8674371317sm7720490ybl.36.2023.12.18.07.57.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Dec 2023 07:57:46 -0800 (PST)
Date: Mon, 18 Dec 2023 07:57:43 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexander Potapenko <glider@google.com>
Message-ID: <ZYBr98sd+XzSfy9v@yury-ThinkPad>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
 <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
 <67e287f5-b126-4049-9f3b-f05bf216c8b9@intel.com>
 <20231215084924.40b47a7e@kernel.org>
 <ff8cfb1e-8a03-4a82-a651-3424bf9787a6@linux.intel.com>
 <1eb475bb-d2ba-4cf3-a2ce-36263b61b5ff@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1eb475bb-d2ba-4cf3-a2ce-36263b61b5ff@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702915074; x=1703519874; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zygwJSjMe2eYUZaDyLafoB0FdFlBGABC230eRNUsyrM=;
 b=XuhJZmy/XwHFXGF+WGfiuWPDaeBGkrJcp2l9nub7T3BkdPp70s1vP3EBAF5PSbxuXz
 QjOfD8fdp/FLxlp7/chUr+Mb0ZWO2CUHlgLzPx9FPCHKd93ojFiLp+vo5lgt8NNOIcjx
 r7QzhRy09Js0DzJxy5zH/uWw7WZ5O+AEYKYPDitzQsnjmuoBJHW7nIAwTQnNo318DIDD
 pHRrnqLSTG8h7mCGSJX2XYArPHbzK/ANFUZXIXSiiFdh0kSwPxNRwZwqS5kOQcmW3nNJ
 dOwOcOsGFylur8LwKKMQnKOLfvlZybB3fYjcvnmT906mfYtbKCPog609qHMPzZKEx62y
 FOrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XuhJZmy/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: jiri@resnulli.us, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Alexander Potapenko

On Mon, Dec 18, 2023 at 01:47:01PM +0100, Alexander Lobakin wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> Date: Mon, 18 Dec 2023 11:04:01 +0100
> 
> > 
> > 
> > On 15.12.2023 17:49, Jakub Kicinski wrote:
> >> On Fri, 15 Dec 2023 11:11:23 +0100 Alexander Lobakin wrote:
> >>> Ping? :s
> >>> Or should we resubmit?
> >>
> >> Can you wait for next merge window instead?
> >> We're getting flooded with patches as everyone seemingly tries to get
> >> their own (i.e. the most important!) work merged before the end of 
> >> the year. The set of PRs from the bitmap tree which Linus decided
> >> not to pull is not empty. So we'd have to go figure out what's exactly
> >> is in that branch we're supposed to pull, and whether it's fine.
> >> It probably is, but you see, this is a problem which can be solved by
> >> waiting, and letting Linus pull it himself. While the 150 patches we're
> >> getting a day now have to be looked at.
> > 
> > Let's wait to the next window then.
> 
> Hey Yury,
> 
> Given that PFCP will be resent in the next window...
> 
> Your "boys" tree is in fact self-contained -- those are mostly
> optimizations and cleanups, and for the new API -- bitmap_{read,write}()
> -- it has internal users (after "bitmap: make bitmap_{get,set}_value8()
> use bitmap_{read,write}()"). IOW, I don't see a reason for not merging
> it into your main for-next tree (this week :p).
> What do you think?

I think that there's already enough mess with this patch. Alexander
submitted new version of his MTE series together with the patch.

https://lore.kernel.org/lkml/ZXtciaxTKFBiui%2FX@yury-ThinkPad/T/

Now you're asking me to merge it separately. I don't want to undercut
arm64 folks.

Can you guys decide what you want? If you want to move
bitmap_read/write() with my branch, I need to send it in -next for
testing ASAP. And for that, as I already said, I need at least one
active user in current kernel tree. (Yes, bitmap_get_value8() counts.)

If you want to move it this way, please resend all the patches
together.

Thanks,
Yury
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
