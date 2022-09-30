Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7240B5F15AA
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Oct 2022 00:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ABAA8137B;
	Fri, 30 Sep 2022 22:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ABAA8137B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664575421;
	bh=ihAx1+iTEomN1cCUzcZQm1hAV+5l1Qya17tSS8e5gjU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CEGNG+BqdPLun2L3RaCoOHh7EQS5Blw7/fcKx8Q1KYSsY8GCHkjFRGPVzigB2dbCp
	 ECR6/EV02A5A9s5X+0rVLLlK0MsbI10CZ4rrU6RyfsLOThSPDikJQlubjjFc99sZVG
	 +mPtyDmD9EAlQBvJkjhGMiNWRnDBRbwj9l1D+xnJTkqpdjskiM/ZD6NoY1f1OynBRl
	 aPfpGv6vkmmuCohsNGQLhSkUARk6xkECwUNSYmBWor5VB+sSubgc/oR2xtoGPcCTbF
	 hIHf9YLZPpTi7OaBEK1bptbj0OV5wcQ5PYKiQO2gBC1J7hgxlEtHvIMk9MYq34jgxC
	 ZJTC4eQARBBPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sNbwGB4hJxpS; Fri, 30 Sep 2022 22:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 365538130A;
	Fri, 30 Sep 2022 22:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 365538130A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1A091BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 22:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A50E4093F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 22:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A50E4093F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5_H7shu_QwS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Sep 2022 22:03:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BCBE40929
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1BCBE40929
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 22:03:29 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id nb11so11710514ejc.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 15:03:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=w1LUNGae1tKCepvb0oOGHF++V1v90y9UBTYHWhUfzAA=;
 b=Bb9cp4akMDeyvQ9pvU7zW0hIGbmnP+ZvE2KXnZmdwM4jeUls3LIR8S6JGnv+wkF64t
 hRUsmNom4vk136dn8VrmHCecHr1jtpnseVy819YBncGN6xswGTOA9KU8jQuX9RFprRxN
 6Jlj8Nx1RY8+8gx9tFV6N+Rjap+or4lQPQxWyRJ3ZoUzoBX0zS/iEO939vPcuFOE1Wln
 zk8GvtORRd5hWuftQgvYofelI11esVfI9WnXzT65RaihL7WSWTZ47HzqTX0Yo0uGmVUi
 00m7rZf5Fnmc/lcJNMA3+Z0vMxQVxSjn1ttg5sRz6HZAdOpBqkf0nVlQ8EOsamdLCIVC
 LJ4A==
X-Gm-Message-State: ACrzQf3SIwFXt/icJD7VWDlPR7zG/oFW/Te2/GWPQY26zcHlDQzSJp+T
 CNd5FqSaurEt+eITJ22hbU8=
X-Google-Smtp-Source: AMsMyM4sdp1MWWaYaJKLOcSXT3SWaRWras92rfoJ6q3CHFksLe+XCS2i9JymJ/lS58ISBcwlLeSJWQ==
X-Received: by 2002:a17:906:dc8b:b0:787:8f41:d231 with SMTP id
 cs11-20020a170906dc8b00b007878f41d231mr7950685ejc.547.1664575408188; 
 Fri, 30 Sep 2022 15:03:28 -0700 (PDT)
Received: from localhost.localdomain
 (host-79-34-226-61.business.telecomitalia.it. [79.34.226.61])
 by smtp.gmail.com with ESMTPSA id
 x11-20020a170906298b00b0073de0506745sm1703399eje.197.2022.09.30.15.03.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Sep 2022 15:03:27 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>,
 Ira Weiny <ira.weiny@intel.com>
Date: Sat, 01 Oct 2022 00:03:24 +0200
Message-ID: <832292081.0ifERbkFSE@localhost.localdomain>
In-Reply-To: <27280395.gRfpFWEtPU@localhost.localdomain>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <22aa8568-7f6e-605e-7219-325795b218b7@intel.com>
 <27280395.gRfpFWEtPU@localhost.localdomain>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=w1LUNGae1tKCepvb0oOGHF++V1v90y9UBTYHWhUfzAA=;
 b=LNmiO19Lzs2yuUyodCb6bzUXcpgj17k/JJvoy0TdiXj17vhMD8G2vLFLqfPhMnXstL
 Qy9sgewfQhwdYihswkIQX+u2cKirqaZwJ89+MDAJo1h6WusEgGkOKdxaQoD1XPiLdkVr
 lzsphSywwAq7qk40yYdi+6Gn3lkQkckHA+/jLm0mbLdnav90Gij9+A0mwymMuJESrlLb
 0IQUHZ9Vq/OEWHdH4iL0nTgsFTEab+BUrlna+wNyKkl8hQHWnFCxlRgdgODjwVEGav0H
 UGI7Cr6harkCrjfCb6ExBg+cQ5e4Su3d91bqSSc5/KTkM1aTrt1TkyeDzjWo4JT9JeKH
 kFZA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=LNmiO19L
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Friday, September 23, 2022 5:05:43 PM CEST Fabio M. De Francesco wrote:
> Hi Anirudh,
> 
> On Friday, September 23, 2022 12:38:02 AM CEST Anirudh Venkataramanan wrote:
> > On 9/22/2022 1:58 PM, Alexander Duyck wrote:
> > > On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
> > > <anirudh.venkataramanan@intel.com> wrote:

[snip]

> > Is using page_address() directly beneficial in some way?
> 
> A possible call chain on 32 bits kernels is the following:
> 
> kmap_local_page() ->
>  __kmap_local_page_prot() { 
> 	if (!IS_ENABLED(CONFIG_DEBUG_KMAP_LOCAL_FORCE_MAP) && |
> PageHighMem(page))
> 		return page_address(page);
> 
> ....
> }
> 
> How many instructions can you save calling page_address() directly?
> If you don't know, look at the assembly.

I just realized that perhaps you were expecting something like either "No, it 
is not directly beneficial because []" or "Yes, it is directly beneficial 
because []".

Instead, I used a rhetoric question that might not have been so clear as I 
thought. This kind of construct is so largely used in my native language, that 
nobody might misunderstand. I'm not so sure if it is the same in English.

I mean, are those dozen "unnecessary" further assembly instructions too many 
or too few to care about? I _think_ that they are too many.

Therefore, by showing a possible call chain in 32 bits architectures, I 
indirectly responded "no, I can't see any direct benefit", at least because....

1) Whatever the architecture, if pages can't come from Highmem, code always 
ends up calling page_address(). In 32 bits archs they waste precious kernel 
stack space (a scarce resources) only to build two stack frames (one per each 
called functions).

 2) Developers adds further work to the CPU and force the kernel to run 
unnecessary code.

I'll always use page_address() when I can "prove" that the allocation cannot 
come from ZONE_HIGHMEM.

Thanks,

Fabio



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
