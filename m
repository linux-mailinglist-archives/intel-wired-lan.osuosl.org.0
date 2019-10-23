Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B1AE21F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2019 19:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5588D204F7;
	Wed, 23 Oct 2019 17:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zp0FdcCjbrMl; Wed, 23 Oct 2019 17:42:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 32D7022851;
	Wed, 23 Oct 2019 17:42:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D8A801BF873
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 17:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2F4F876C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 17:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOlOqDs1FHbw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2019 17:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1F78875E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 17:42:13 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id z12so16769169lfj.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2019 10:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DZCbcR5Iy8/K2bF0tkHCyOQWDKeY6OQ5I8XUt1jrWCM=;
 b=YUs/2M2PHadXLRMoF7pOYzScYZGY5PCeCsacPCyueqtEj0qdNzM4Hr6KLafL5+NB07
 GZPx8D8QEvJLLeMKadbuv97D8R2zpdg0Ziauh0POYTa4DPFb380D6bfvf/LfcKADPWF/
 0qmN8vv+uAK24QP9PUMsMke4QlFhVSzinnXBeVLZvy+gPrPezAXDgfnZuSmCcpWMHhMa
 k/iCPSGipJ73bZ5YaIE7GFlkKvX4d3vmHazVrnv+RnqYPcY+lWoo6w2rva77ZnXx6DTF
 bpa88lWkJnl4YI/LBrWDClkO7dX0gzpd0qyrcRCBYBeMCAKAzseVbzr49j4PF5Fg1MV0
 +OvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DZCbcR5Iy8/K2bF0tkHCyOQWDKeY6OQ5I8XUt1jrWCM=;
 b=mxxROG4zTTO3y0hchlYz68Oro6i0uoZqxEpwu7AHMOqh3uG/JedivCl0ehbPgGfHI/
 Y/n8t+bLLn0YtECWTluiTnaokcdJfiJdcP2n9x0+TFtAidp5//IDtA5EJ8owZpYgU5aH
 ceXO9Z0pzdKUpNvlxJln8gtxdE/Q4LZytx/rltmD9m3a03yPuUteTQimENZfEeEbwquD
 2XaNGnpB+OldbEqIfnpSgnA94o5Zr6UjyWQWt1jYmwssMRgmHex95WlrJ7mwxb5fZbf0
 FjCBZ5PS+sKrCBNXlH0aXFnNw22FQV4fT0iyeiqd3SLt/IBFuQ+holAujj8Fye/a6jfA
 aXsQ==
X-Gm-Message-State: APjAAAWyPqEQUi5alQ0dE+J3u0aI8JZf+Xcj3Bfh5bkXtOJIEF8uYMuK
 5Zhn+I2LyapozXKQ9TwQXyiBb1WCIctSyTwlniE=
X-Google-Smtp-Source: APXvYqxbM46DYnjFMelwxJ6ieSaTahz1CzBnxDFA50cYAXoSzWE707p5aV7UO5MvdUZUvwLsXF7/fX6INTZgyFoEx+g=
X-Received: by 2002:a19:fc1e:: with SMTP id a30mr10401625lfi.167.1571852531741; 
 Wed, 23 Oct 2019 10:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
 <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
 <CAADnVQ+CH1YM52+LfybLS+NK16414Exrvk1QpYOF=HaT4KRaxg@mail.gmail.com>
 <acf69635-5868-f876-f7da-08954d1f690e@intel.com>
 <20191019001449.fk3gnhih4nx724pm@ast-mbp>
 <6f281517-3785-ce46-65de-e2f78576783b@intel.com>
 <20191019022525.w5xbwkav2cpqkfwi@ast-mbp> <877e4zd8py.fsf@toke.dk>
 <CAJ+HfNj07FwmU2GGpUYw56PRwu4pHyHNSkbCOogbMB5zB2QqWA@mail.gmail.com>
 <7642a460-9ba3-d9f7-6cf8-aac45c7eef0d@intel.com>
 <CAADnVQ+jiEO+jnFR-G=xG=zz7UOSBieZbc1NN=sSnAwvPaJjUQ@mail.gmail.com>
 <8956a643-0163-5345-34fa-3566762a2b7d@intel.com>
In-Reply-To: <8956a643-0163-5345-34fa-3566762a2b7d@intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 23 Oct 2019 10:42:00 -0700
Message-ID: <CAADnVQKwnMChzeGaC66A99cHn5szB4hPZaGXq8JAhd8sjrdGeA@mail.gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Subject: Re: [Intel-wired-lan] FW: [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, Netdev <netdev@vger.kernel.org>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Herbert,
 Tom" <tom.herbert@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 22, 2019 at 12:06 PM Samudrala, Sridhar
<sridhar.samudrala@intel.com> wrote:
>
> OK. Here is another data point that shows the perf report with the same test but CPU mitigations
> turned OFF. Here bpf_prog overhead goes down from almost (10.18 + 4.51)% to (3.23 + 1.44%).
>
>    21.40%  ksoftirqd/28     [i40e]                     [k] i40e_clean_rx_irq_zc
>    14.13%  xdpsock          [i40e]                     [k] i40e_clean_rx_irq_zc
>     8.33%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_rcv
>     6.09%  ksoftirqd/28     [kernel.vmlinux]           [k] xdp_do_redirect
>     5.19%  xdpsock          xdpsock                    [.] main
>     3.48%  ksoftirqd/28     [kernel.vmlinux]           [k] bpf_xdp_redirect_map
>     3.23%  ksoftirqd/28     bpf_prog_3c8251c7e0fef8db  [k] bpf_prog_3c8251c7e0fef8db
>
> So a major component of the bpf_prog overhead seems to be due to the CPU vulnerability mitigations.

I feel that it's an incorrect conclusion because JIT is not doing
any retpolines (because there are no indirect calls in bpf).
There should be no difference in bpf_prog runtime with or without mitigations.
Also you're running root, so no spectre mitigations either.

This 3% seems like a lot for a function that does few loads that should
hit d-cache and one direct call.
Please investigate why you're seeing this 10% cpu cost when mitigations are on.
perf report/annotate is the best.
Also please double check that you're using the latest perf.
Since bpf performance analysis was greatly improved several versions ago.
I don't think old perf will be showing bogus numbers, but better to
run the latest.

> The other component is the bpf_xdp_redirect_map() codepath.
>
> Let me know if it helps to collect any other data that should further help with the perf analysis.
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
