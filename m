Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F605E820B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 20:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA23260E5D;
	Fri, 23 Sep 2022 18:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA23260E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663959047;
	bh=WjRb1ElXlWIwU/ci3/sitN/AlS+ET67g0TaTKJMO+aY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uy+NlyQf/qYwWJUghNGkvduxdgQYzG++pW3kR1HGweBrLkvAqMxj7mRl3fequ59tB
	 Xxys7X02tWyQ+/uyIj+gx5JHlIYW7tdAczQMd2PO118AukY5qxXiRGIViQeSf3yrsG
	 b0OrMlS9Xo5zIM77yNPNhI4YYrESzIDG2L8dXVDpGMvSDYKTlbgqK3jXxdNPyHh0t8
	 8jAa8U/kic+t0kH3SFIembSVabraH+vkJ+t1T08swfqQ8rhj5sDuTrGnBXJahsQjKf
	 QOHs/LjYDQ2uGyFhtkgEljuGftLNAus6RkujjyeznheE1D+r4MeGAQO1QqzZSkCbK1
	 OWTTAwzFkeoEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V76JZwtmzqUc; Fri, 23 Sep 2022 18:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA22D60E60;
	Fri, 23 Sep 2022 18:50:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA22D60E60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3711BF38E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 18:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E751F40C99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 18:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E751F40C99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sevKv4Z31BOV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 18:50:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9551940A01
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9551940A01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 18:50:39 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id 3so1065062pga.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 11:50:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=soz+B5vr0YawBrGLCJUIfst1rVPegj/kO945i6tNuu4=;
 b=lOEprq8SirGj8mF205VEXJ4JgXI7iNQPeCrpZDKNJGWsN4SIhuJDHvpLr2z0s6zfjH
 p+eraJBQ9Ijwe1SpxG8DtTySKmYtje99opwMrWhg69y8tSb/juVX4Sig4xhfMT5Slp++
 HJGsUFB+Mnn2JDZlTK1LDmWK9bx5LepYzzGcYI+HbjUpPif1K0nSz1QQt8PD7YM/vwrO
 2pD57MvpH59A8dORicma7tgG5EMNPSy2yMcWBJYoxIcBCnUkOes2sZUZoW0PnQyW0lZW
 P36uzdb4qJvY8f6OUP/Nu22KK39lnrd/x8AbFpV3RsBFV+nAdUABeyTqxNQovFxYhiAv
 S0ow==
X-Gm-Message-State: ACrzQf2q9Rg5ZutAi309t7Vehtbba2fndISSV97KSNrx7v8lzP5hyErf
 oQnN+esoaWL/P/h2Y+eKzCBx5w==
X-Google-Smtp-Source: AMsMyM5BOkxT7dmLhP+9f8RXqZTh1AjF61zhu3wqGKFHMmPuMGgEdboAX7cqSq5H5AVVbN7wJUrI2g==
X-Received: by 2002:a63:6a47:0:b0:439:be00:7607 with SMTP id
 f68-20020a636a47000000b00439be007607mr8719395pgc.301.1663959039042; 
 Fri, 23 Sep 2022 11:50:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 f13-20020a170902ce8d00b0016dc6279ab7sm6423837plg.149.2022.09.23.11.50.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 11:50:38 -0700 (PDT)
Date: Fri, 23 Sep 2022 11:50:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Feng Tang <feng.tang@intel.com>, Vlastimil Babka <vbabka@suse.cz>
Message-ID: <202209231145.7654767ED5@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-2-keescook@chromium.org>
 <YyxDFfKmSNNkHBFi@hyeyoo> <Yy0JJV4c3DffCF+4@feng-clx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy0JJV4c3DffCF+4@feng-clx>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=soz+B5vr0YawBrGLCJUIfst1rVPegj/kO945i6tNuu4=;
 b=OTfy5Nwpn08IcUaVlU1KJ27X+N3yWZ/VpCrAZjSpjUbsjTe/slddbrLCSNWyrUEUf+
 hKFo3f2nFf90BAG6jEHb+7lo8EJfEwNPirhgwBNLji96jC6KqEyl6t0+uMZVhfPqRt/6
 nRku1i36Slqm6llnH2++9t4exlSoETdRFUkh0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=OTfy5Nwp
Subject: Re: [Intel-wired-lan] [PATCH 01/12] slab: Introduce
 kmalloc_size_roundup()
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Eric Dumazet <edumazet@google.com>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "dev@openvswitch.org" <dev@openvswitch.org>, "x86@kernel.org" <x86@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Christian K??nig <christian.koenig@amd.com>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 23, 2022 at 09:17:25AM +0800, Feng Tang wrote:
> On Thu, Sep 22, 2022 at 07:12:21PM +0800, Hyeonggon Yoo wrote:
> > On Wed, Sep 21, 2022 at 08:10:02PM -0700, Kees Cook wrote:
> > > [...]
> > > Introduce kmalloc_size_roundup(), to serve this function so we can start
> > > replacing the "anticipatory resizing" uses of ksize().
> > [...]
> >
> > This looks okay.
> > [...]
> > Cc-ing Feng Tang who may welcome this series ;)
>  
> Indeed! This will help our work of extending slub redzone check,
> as we also ran into some trouble with ksize() users when extending
> the redzone support to this extra allocated space than requested
> size [1], and have to disable the redzone sanity for all ksize()
> users [2].
> 
> [1]. https://lore.kernel.org/lkml/20220719134503.GA56558@shbuild999.sh.intel.com/
> [2]. https://lore.kernel.org/lkml/20220913065423.520159-5-feng.tang@intel.com/

Thanks for the feedback! I'll send my v2 series -- I'm hoping at least
this patch can land in v6.1 so the various other patches would be clear
to land via their separate trees, etc.

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
