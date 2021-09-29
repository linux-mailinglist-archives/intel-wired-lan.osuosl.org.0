Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A182041BCA7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 04:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C19AE40258;
	Wed, 29 Sep 2021 02:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3TRbzQ8RjRP3; Wed, 29 Sep 2021 02:20:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C12140249;
	Wed, 29 Sep 2021 02:20:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FEED1BF359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 02:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A85980D47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 02:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BSxfWwhqdhLM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 02:20:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CE4780C97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 02:20:41 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 d12-20020a05683025cc00b0054d8486c6b8so1080828otu.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Sep 2021 19:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/m3v6wHyU+gceCsGIGZQW1YYbgSsrVq1u5VD7Wq+RWY=;
 b=bf8iVuGnsm91udbcvDyigQaau+zWTHvOV48qzQjwWUM9o7fSzCvX/zvHLCyAEseY+a
 fTo7Snk0oXSgXYkOvn/xksR8uIdJESgFU+iy3yqSTlbk8CG1y5VyKDlFAoLPvYsYfNRx
 HBtxV9mM7E4Q0CqmQhsRt6HtcvCMzeqs/vPeRjfc+NTxdK2+JnogFu7+MGSwRHkIHwEK
 cM1saWqdOp3EPEUFneggP3sjPPVpLf0iKO37khA7a972EQk42XdmGcaIcHWeuTv4ddhn
 PEhxz0YukqRjtmO/WBHw318COSpoViXwe2dXJ7YFQwWAjp8+yluQ6jj/ZME8KtARTlB1
 sf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/m3v6wHyU+gceCsGIGZQW1YYbgSsrVq1u5VD7Wq+RWY=;
 b=carzvo10+f0Eqjh3MyzjkUFHqMKvByyrSH2ayG3POsLQ13iAs6zLuX2dfCGwloB77c
 YemySgsUIZyu2wQvfqZd9EgazULyb/8TlaajPXmmz5WIWuvieblEBTDtqD9ME4yw7P95
 PTqYs71N2cGqEXuxiskEi4CxdM0IKqxyzS5vLj1c3HvyJblQq/DilTry6CXpazqL/CKc
 5lXz3dH0KKWCRF8nNODbdxBu08bXklrOSfjHBFfBoJns1RAwEdu3gxtI8x7eaTsuz7xq
 sk27ZG+jqe/YkktT47NVwwn7gYosAxPqU4xm3oTUm8x0HfUTL+FLbzwlPAF7aTASkO6q
 ZxPg==
X-Gm-Message-State: AOAM53283oxlpkjEF3aq4BP5JrCb4O/YXV4E1mLbupBVeTAM83zq2VKM
 e+S0JfPvR6m6Ec8diCZiWqIMCyJBHKmvC5K8uI4=
X-Google-Smtp-Source: ABdhPJx1IMWZ/bsJWfzsNpMgmYvbhuD0LF11DiYOzktOGL+jMle4FLXwNSC2UIWIEYvahPBvQbTjH58u6SxFFZyowMk=
X-Received: by 2002:a9d:6143:: with SMTP id c3mr8009609otk.124.1632882040342; 
 Tue, 28 Sep 2021 19:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210901101206.50274-1-kerneljasonxing@gmail.com>
 <CAL+tcoCOnCpxLXLyAxb+BgumQBpo2PPqSQXY=Xvs-8R48Om=cw@mail.gmail.com>
 <a1ea0abaadc59bdbc6504a64bae594b059c26cdf.camel@intel.com>
In-Reply-To: <a1ea0abaadc59bdbc6504a64bae594b059c26cdf.camel@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 29 Sep 2021 10:20:02 +0800
Message-ID: <CAL+tcoALdQQPy+9G_azrGqSugGcNjFfYqmf72aNRPahgggeeVA@mail.gmail.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v7] ixgbe: let the xdpdrv work with
 more than 64 cpus
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
Cc: "songliubraving@fb.com" <songliubraving@fb.com>,
 "lishujin@kuaishou.com" <lishujin@kuaishou.com>,
 "ast@kernel.org" <ast@kernel.org>, "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "andrii@kernel.org" <andrii@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "yhs@fb.com" <yhs@fb.com>, "kpsingh@kernel.org" <kpsingh@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "xingwanli@kuaishou.com" <xingwanli@kuaishou.com>,
 "kafai@fb.com" <kafai@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 29, 2021 at 6:17 AM Nguyen, Anthony L
<anthony.l.nguyen@intel.com> wrote:
>
> On Thu, 2021-09-16 at 14:41 +0800, Jason Xing wrote:
> > Hello guys,
> >
> > any suggestions or comments on this v7 patch?
> >
> > Thanks,
> > Jason
> >
> > On Wed, Sep 1, 2021 at 6:12 PM <kerneljasonxing@gmail.com> wrote:
> > > From: Jason Xing <xingwanli@kuaishou.com>
> > >
> > > Originally, ixgbe driver doesn't allow the mounting of xdpdrv if
> > > the
> > > server is equipped with more than 64 cpus online. So it turns out
> > > that
> > > the loading of xdpdrv causes the "NOMEM" failure.
> > >
> > > Actually, we can adjust the algorithm and then make it work through
> > > mapping the current cpu to some xdp ring with the protect of
> > > @tx_lock.
> > >
> > > Here're some numbers before/after applying this patch with xdp-
> > > example
> > > loaded on the eth0X:
> > >
> > > As client (tx path):
> > >                      Before    After
> > > TCP_STREAM send-64   734.14    714.20
> > > TCP_STREAM send-128  1401.91   1395.05
> > > TCP_STREAM send-512  5311.67   5292.84
> > > TCP_STREAM send-1k   9277.40   9356.22 (not stable)
> > > TCP_RR     send-1    22559.75  21844.22
> > > TCP_RR     send-128  23169.54  22725.13
> > > TCP_RR     send-512  21670.91  21412.56
> > >
> > > As server (rx path):
> > >                      Before    After
> > > TCP_STREAM send-64   1416.49   1383.12
> > > TCP_STREAM send-128  3141.49   3055.50
> > > TCP_STREAM send-512  9488.73   9487.44
> > > TCP_STREAM send-1k   9491.17   9356.22 (not stable)
> > > TCP_RR     send-1    23617.74  23601.60
> > > ...
> > >
> > > Notice: the TCP_RR mode is unstable as the official document
> > > explaines.
> > >
> > > I tested many times with different parameters combined through
> > > netperf.
> > > Though the result is not that accurate, I cannot see much influence
> > > on
> > > this patch. The static key is places on the hot path, but it
> > > actually
> > > shouldn't cause a huge regression theoretically.
> > >
> > > Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
>
> Hi Jason,
>
> The patch doesn't have an explicit target of net or net-next. I assume
> since you put a Fixes tag you're wanting it to go through net, however,
> this seems more like an improvement that should go through net-next.

Yes, it is like an improvement. At first I wanted to label it as net,
but it isn't a fix as you said. So I agree with you and please help me
send it to net-next.

thanks,
Jason

> Please let me know if you disagree, otherwise I will send to net-next.
>
> Thanks,
> Tony
>
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> > > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> > > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
