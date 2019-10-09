Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F1AD1557
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 19:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 025DF88408;
	Wed,  9 Oct 2019 17:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hbHCtpFTS2qi; Wed,  9 Oct 2019 17:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9738688436;
	Wed,  9 Oct 2019 17:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED7EC1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 17:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E5C5020490
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 17:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4EesLN-6tG+g for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 17:17:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id CDD9E2048E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 17:17:33 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id d1so3250446ljl.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2019 10:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vhiLtiukz2hVwqP7K2PZG/TJ72MYbyncaVQFbl8osGQ=;
 b=XGhfeNtWqI3ovHwSwglD4GksloCd1qXhuXBEEvb+eo6sqbtbxglOC/2GOidobIwg4e
 A7Efwcc4LWA7IfAOV3IIOMAV+hdJwLnaBnlXnFZ2jMggTeZVHPt6++n0BSx9JGm+JOpB
 U83BnMz7zNu8UBFQvcxRjP0gSIyi4XAx1oqwq1DTQStQ54LagvDqgxTTb7MpZsmYabR0
 TCt/BkVH5NwRteliO5akQrwymsPLf6z60nIaKIQVZWIPWqdgGwixJ5ubsFGIRIWKqcuc
 IGMgPDEGpZnHo5bqPwXzDuK6K7QqVNvWIYBhCSydzRgErs1OX95aEExHuSxywuZRmIIu
 0dtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vhiLtiukz2hVwqP7K2PZG/TJ72MYbyncaVQFbl8osGQ=;
 b=WMwiDaF5gMAqMf/R5NL9G03V90Uwpc0TwrmtUW5po3cT4iCPBOCZWEKxiMBh7RdG/e
 DA6OOUCZW0hYRZgd0aTaRKXIzBFM3COHhEIye8bcptLF/C7csVc0f8lYlzGJq2jsopVM
 yRQgpRlNbU3G2ZX5YGI/nff1xckD2LmHwqLRfVCpGw7QOLA6gpI+tCoDtyeDqdu2WZHm
 x4jFaoAiPWMFPthzfCwv4DoDdtMm2GY4lzTFBXgDGfSMwz29oK1isXHbXHN6mdHV2H/1
 4XkSC9iALmKDa14isZRbb3Iqj5iKUio8+bszuWD4rJp+MKpHKSc0B6pDyWTtA3eUDXrI
 qpZQ==
X-Gm-Message-State: APjAAAXy/t52ja2kxhmM2xXklI0kABo17trkmXSqX7ITn7TYzt2xfQj6
 pKbHi2p+J5kqIi/T0OOnI4AwxonPyHnz9rvCrhU=
X-Google-Smtp-Source: APXvYqzhSENkcnxwh1Kd2Bj7uvGmEOvU8JT77Zb/Xj5kbY+jrLI6MO3o+x+b41OsrXpRUuEMkvogdcgZGtR040L5mKQ=
X-Received: by 2002:a2e:9cc9:: with SMTP id g9mr2985658ljj.188.1570641451645; 
 Wed, 09 Oct 2019 10:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
In-Reply-To: <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 9 Oct 2019 10:17:19 -0700
Message-ID: <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Herbert,
 Tom" <tom.herbert@intel.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 9, 2019 at 9:53 AM Samudrala, Sridhar
<sridhar.samudrala@intel.com> wrote:
>
>
> >> +
> >> +u32 bpf_direct_xsk(const struct bpf_prog *prog, struct xdp_buff *xdp)
> >> +{
> >> +       struct xdp_sock *xsk;
> >> +
> >> +       xsk = xdp_get_xsk_from_qid(xdp->rxq->dev, xdp->rxq->queue_index);
> >> +       if (xsk) {
> >> +               struct bpf_redirect_info *ri =
> >> + this_cpu_ptr(&bpf_redirect_info);
> >> +
> >> +               ri->xsk = xsk;
> >> +               return XDP_REDIRECT;
> >> +       }
> >> +
> >> +       return XDP_PASS;
> >> +}
> >> +EXPORT_SYMBOL(bpf_direct_xsk);
> >
> > So you're saying there is a:
> > """
> > xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
> >     default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
> >     direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1 6.1x improvement in drop rate """
> >
> > 6.1x gain running above C code vs exactly equivalent BPF code?
> > How is that possible?
>
> It seems to be due to the overhead of __bpf_prog_run on older processors
> (Ivybridge). The overhead is smaller on newer processors, but even on
> skylake i see around 1.5x improvement.
>
> perf report with default xdpsock
> ================================
> Samples: 2K of event 'cycles:ppp', Event count (approx.): 8437658090
> Overhead  Command          Shared Object     Symbol
>    34.57%  xdpsock          xdpsock           [.] main
>    17.19%  ksoftirqd/1      [kernel.vmlinux]  [k] ___bpf_prog_run
>    13.12%  xdpsock          [kernel.vmlinux]  [k] ___bpf_prog_run

That must be a bad joke.
The whole patch set is based on comparing native code to interpreter?!
It's pretty awesome that interpreter is only 1.5x slower than native x86.
Just turn the JIT on.

Obvious Nack to the patch set.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
