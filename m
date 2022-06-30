Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C434C561EFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 17:17:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7A23408DA;
	Thu, 30 Jun 2022 15:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7A23408DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656602265;
	bh=ywHxYVinUYSUlpmNUIm3mB9QAdiYWWsb8zgAnfIbhYk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=80JD+TXWbPxKSX9icFaTy/PJ7PgPbf4KdA9cL7aIv0dTlUV19k1CVuqMpR4aDPcse
	 Wod3/4M8GDk54OVmb0WzAF/C7K4kxd3PiJpSzSHkWr+jYuvobWDB1P8OouRYQlXRe7
	 fIfXXoTE/lMnEy2YrrqGvLypn2esJUpe2+GdaoLEhKLdhfRH1RlxC0+FQsvzvgI8N2
	 yyxgd/qLLT8Kb9Yi+MY1x9iDdjAEQfqW1gXRxcYYxBUGaVhtmJ1hinKxkAcdXbukQi
	 pZj7xBRzNYV7x5lfbKAscnwNG0bjDTurL3pYq4ymdRzZlGrfvkEJm4aHOFnoL06wtG
	 2tqbVrXEclVDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rAIJgKgO9Jt9; Thu, 30 Jun 2022 15:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1AFD4039D;
	Thu, 30 Jun 2022 15:17:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1AFD4039D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A22261BF30E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7CC2981418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CC2981418
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vd44kgbtvNDk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 15:17:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EB72813D6
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3EB72813D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 15:17:38 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id ge10so39666328ejb.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 08:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/i5OyXrdHIl03uJMvczX531K/3M39oSh861kA9eYkbU=;
 b=FvWLBg3r1/TORWIum4gDHrvmCGiReaxpymCIhoBPNPluhrt7G/ZBG2qqTQ+u396JyA
 bIp7LlOy9fPMYUWQ5LKxCGZxIFSvV5nMsw3TX6leFf7PaDKSidK99EhstB7MBooBMTq2
 1NaWdH9WC7NNauBFVZfEVtxPgDh7zdsTEMb24MBHGSwYBurdYkH/6YB7F8EOcACQrw/R
 U7s2bDGboPYTqGB3RcmvgJ4b4Dn8mGGG8kq1gA2pfP4RqZipc3RJ3snfcP20C87UtS8O
 KiZNutKdyA6bObjdFI2lnKmuMVyFMMkxrdJ5LhV09maWh6CfRXMMBIhG1WuJcTTlVsZJ
 4+vQ==
X-Gm-Message-State: AJIora+0aDN/oh5B94g2NpMn89EY5LodUJA20EtehpBgvnIe1y4/hftF
 aseiSHpIXl+6YqXQpJxWqr2kBEbtw1RcDNK1KLM=
X-Google-Smtp-Source: AGRyM1tvD9r7R4DWPYKzvMjniTP8BJWTjA3b1PCNh5lkp3ELl7rkW3gZcKAFb2vPPOb58pKNUph5HCPHGh8p2YQF/DA=
X-Received: by 2002:a17:907:16a6:b0:726:574d:d31f with SMTP id
 hc38-20020a17090716a600b00726574dd31fmr9240954ejc.514.1656602256279; Thu, 30
 Jun 2022 08:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <Yr12jl1nEqqVI3TT@boxer>
In-Reply-To: <Yr12jl1nEqqVI3TT@boxer>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 30 Jun 2022 08:17:24 -0700
Message-ID: <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=/i5OyXrdHIl03uJMvczX531K/3M39oSh861kA9eYkbU=;
 b=aUnaDEQf/6DZiB9+2W4JNMnceVSAaQP7P20qDaIlYU2rIgQd30pZyBI6JIDqFCXbQT
 vocFA2dds+c2iYSC2f6DEc3scWLcnYg/SOVK8wY2xZFqSwCVI/yA2xxj35Q5P7QtLFng
 ucHahq3keTH8wpoKTw23IaNHyTsk5TE2HMSiFGDuHUkaH3uB1vdtsfO6q7tGCe/nwB3E
 OseqyINdZv01zFtHRxOHMZhbOzneyJycUpWgxEzx2fPBTjbMtiZgS5zaB3ec/WHv4suM
 7OD4FaSoA3XafBUR2QRUNH2ncTdRB6oN+7eUs+kgdaoIKUJtMnqOiIYBEG1cIpwouPaA
 F4gg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aUnaDEQf
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
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 30, 2022 at 3:10 AM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Wed, Jun 29, 2022 at 10:58:36AM +0200, Fabio M. De Francesco wrote:
> > The use of kmap() is being deprecated in favor of kmap_local_page().
> >
> > With kmap_local_page(), the mapping is per thread, CPU local and not
> > globally visible. Furthermore, the mapping can be acquired from any context
> > (including interrupts).
> >
> > Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
> > this mapping is per thread, CPU local, and not globally visible.
>
> Hi,
>
> I'd like to ask why kmap was there in the first place and not plain
> page_address() ?
>
> Alex?

The page_address function only works on architectures that have access
to all of physical memory via virtual memory addresses. The kmap
function is meant to take care of highmem which will need to be mapped
before it can be accessed.

For non-highmem pages kmap just calls the page_address function.
https://elixir.bootlin.com/linux/latest/source/include/linux/highmem-internal.h#L40

Thanks,

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
