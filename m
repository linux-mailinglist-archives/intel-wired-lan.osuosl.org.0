Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7526A5E67EA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 18:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F4D741BED;
	Thu, 22 Sep 2022 16:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F4D741BED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663862437;
	bh=gpEynFctGM5qQhshzOgACiyqYYZDoojBG8y2+3tT0AY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AQt0LflqtyheOwPozwOdzlImNSuhNXJaWz7Wm4YVhvf/kYHQ5I7WdKnzdG/gmE4Cd
	 h9Wuwyod9fIHO/2bFgLwfEicRs0slDNm5MyQA2iO0VVGMq3+8Ky8bfrXJDNCTAbi0e
	 sPhO2BKHEaD+eUa0J8XsH9ThwchF1chtW3MGqQ5r7iVfzCmr077mBdFE9FyxDcjS+i
	 bZiewsOqMTEKGDG2RcLQJGRRt8Vh9xtkOxHXMuoLEnyd13TFkPf17xhExnf4dIn18A
	 5zJAzErEQ6j2QhDFrzvb4dDJn9VIT0C4bcr2t/CWggSwfXALZud/yu6jkwBC5gvEOk
	 7WGX3CjyHysOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1_fkVOlQOntU; Thu, 22 Sep 2022 16:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADFF941BC4;
	Thu, 22 Sep 2022 16:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADFF941BC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36CDB1BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 16:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E24D82CB7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 16:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E24D82CB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwopuHGTrlqQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 16:00:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BA82829EE
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BA82829EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 16:00:29 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id w13so9209802plp.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 09:00:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=e+3VYhs+DuwH7bu+QHtV1rjWq3mJNnHisCvMMFS3bAw=;
 b=Wl8yeLUCGBJz57dt+qlRgmc8Fx/3i/IYouR+xRJWe11apDNRocS7m2WEVxYZYrGTV5
 FpnVH0vq/3/70iFHuK7DLPAkxKlaJfnyfrbW4DC7LXeIPzEZeqLFxrkUiAHkShZUez/N
 9JBlnqB0MdYSHgBbDPfTvUexhXkHiejva9D2JBvSdzvD9OiI5X4yDlhwLnVSVrHSHyes
 lxwgV3oHdDD3gpPxnuiT/sKO2eEWVDQMX3RyVe9q+igrsTl+K7gJhYiooPxumaVOPt45
 A4+6SAUOC4ZDU+riFeQ/Q0fa7VtbaJuqgNl2IyWW51qLffOtZF6Qthg8jlQuAwtFBXkr
 onQA==
X-Gm-Message-State: ACrzQf1d/ujCmtW41WK6mAaLgMrmgO87XOgMQyYx7olXk9MDvxXGTMT4
 BKBU97crz08v+SQFJDXmv/EMJw==
X-Google-Smtp-Source: AMsMyM6q4mhFYq39gGoVyx6Hnh47y8QFV1PKitfWXVTUQGpGwPy/JbIncPBlq3WqciXD78b9y3HP3A==
X-Received: by 2002:a17:90b:164d:b0:202:69b3:1002 with SMTP id
 il13-20020a17090b164d00b0020269b31002mr4362502pjb.86.1663862428935; 
 Thu, 22 Sep 2022 09:00:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 ms3-20020a17090b234300b002005c3d4d4fsm4007085pjb.19.2022.09.22.09.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 09:00:28 -0700 (PDT)
Date: Thu, 22 Sep 2022 09:00:26 -0700
From: Kees Cook <keescook@chromium.org>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Message-ID: <202209220859.DA21F91EAE@keescook>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-8-keescook@chromium.org>
 <DM5PR11MB13241226F3AACC81398F7E8EC14E9@DM5PR11MB1324.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR11MB13241226F3AACC81398F7E8EC14E9@DM5PR11MB1324.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=e+3VYhs+DuwH7bu+QHtV1rjWq3mJNnHisCvMMFS3bAw=;
 b=XxhEWZKeaIg8g+YPuHc57mvNIPPhpigg738nM9wsLJjiUYpKwjJNzBKKGjefZOhAzi
 0KqHQ1P/cHiMmQgsO3z2jt2+D0oCcG8Ck+pj5sopXZOTE33QKhSQ8Lb6DWDYvG77ZJIc
 GQLx6jVnYAJuMY3HV3uGUN51p3PNgpWkx9A1M=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=XxhEWZKe
Subject: Re: [Intel-wired-lan] [PATCH 07/12] igb: Proactively round up to
 kmalloc bucket size
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
Cc: Feng Tang <feng.tang@intel.com>, Nick Desaulniers <ndesaulniers@google.com>,
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Eric Dumazet <edumazet@google.com>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "dev@openvswitch.org" <dev@openvswitch.org>, "x86@kernel.org" <x86@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-btrfs@vger.kernel.org" <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 03:56:54PM +0000, Ruhl, Michael J wrote:
> >From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of Kees Cook
> [...]
> >diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> >b/drivers/net/ethernet/intel/igb/igb_main.c
> >index 2796e81d2726..4d70ee5b0f79 100644
> >--- a/drivers/net/ethernet/intel/igb/igb_main.c
> >+++ b/drivers/net/ethernet/intel/igb/igb_main.c
> >@@ -1196,6 +1196,7 @@ static int igb_alloc_q_vector(struct igb_adapter
> >*adapter,
> >
> > 	ring_count = txr_count + rxr_count;
> > 	size = struct_size(q_vector, ring, ring_count);
> >+	size = kmalloc_size_roundup(size);
> 
> why not:
> 
> 	size = kmalloc_size_roundup(struct_size(q_vector, ring, ring_count));
> 
> ?

Sure! I though it might be more readable split up. I will change it. :)

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
