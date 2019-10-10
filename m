Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A265D1DDA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 03:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01ED6204BE;
	Thu, 10 Oct 2019 01:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GbJqkQTyw3kk; Thu, 10 Oct 2019 01:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02CA523509;
	Thu, 10 Oct 2019 01:07:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEBF61BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 01:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB6E681C22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 01:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxfcHNyRQppo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2019 01:07:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B6EDE86FDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 01:07:06 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id f5so4368716ljg.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2019 18:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mCmvnwfoIAUn0GbTA6M/IKFbFb+1cvSeHZw/IRcu1DA=;
 b=cbBkYk8v/ij5zX0qYP3zpTa3XjiVHNsOPMcvKp+UxIaabqI+Jfd2auAuxESqgfmC7P
 MvCi7UBKMVkGh1hCM7T+v4ysbpL2C/ZgAfAsG6A3aO0tOkPvT09TTuosX4EwlU1VQSnD
 3iQV9eTqsrtm38wQVGNfo0kaYiKRLnsJ6Km3s9AZp4kX+XAjMvLppcAMHR6pODGNADny
 M0Y684hgEbp8ecVnazFdbVcDKUX6RVfG2Hjp7oUHrpf/0SotiYd/KLwYjpRl5DBqzgLS
 NE3v/N7BOOeUV/dWWKeH2ZL6WK2ld9wD57vLSVLzqo/9FWYlTiuAFRolqzmUserM4f8f
 X2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mCmvnwfoIAUn0GbTA6M/IKFbFb+1cvSeHZw/IRcu1DA=;
 b=tjhgvibApFNzClW9HBwdaZlXMquwUjX332jgPUkECvpmJF0ZNwE72MqUTDLU3siTWl
 KQTdv52nIRO4Pf56g3y3snOl3a3+kPNbZrijkwlA3qbEC+fvSNBwJQ+tPai9Szga3b5G
 qYGgn2pv4ocGVysLvo9HbO5RGjIdCAafV8tY3JyashtvPq39grWV7G/elfsiUIiW8P6n
 iDEtb/0RVFcCsOLWY17vvFzt4r9XoNTRRvwUWwkJM3Lesu+n3014nBszwX0YV2gKu6Ei
 AEwhQqL5dk8BKLzbH+wEUv/CfnQ9nkYuHldV0eihDOHsrB24yllNJ7yEHHiXs9ZiUACD
 Xl6Q==
X-Gm-Message-State: APjAAAVEjGVgPx8wAI6hw/frMqYVacFubTnM5oskTnOBGkDgl1nqoXWg
 twNSgbrQ4CDJ5ZGzxWAtIdG9NyBSlBhTmrnwExk=
X-Google-Smtp-Source: APXvYqxBerzT1ZqBOzBOAyNF3ApqIrdxasLtb/hADKeZCYK1xdi/dh8E32QNM/GxYXreQo6XUWYDsEzBBGld52ZpMsM=
X-Received: by 2002:a2e:6c15:: with SMTP id h21mr4030206ljc.10.1570669624673; 
 Wed, 09 Oct 2019 18:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
 <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
In-Reply-To: <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 9 Oct 2019 18:06:53 -0700
Message-ID: <CAADnVQ+CH1YM52+LfybLS+NK16414Exrvk1QpYOF=HaT4KRaxg@mail.gmail.com>
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

On Wed, Oct 9, 2019 at 12:12 PM Samudrala, Sridhar
<sridhar.samudrala@intel.com> wrote:
> >>     34.57%  xdpsock          xdpsock           [.] main
> >>     17.19%  ksoftirqd/1      [kernel.vmlinux]  [k] ___bpf_prog_run
> >>     13.12%  xdpsock          [kernel.vmlinux]  [k] ___bpf_prog_run
> >
> > That must be a bad joke.
> > The whole patch set is based on comparing native code to interpreter?!
> > It's pretty awesome that interpreter is only 1.5x slower than native x86.
> > Just turn the JIT on.
>
> Thanks Alexei for pointing out that i didn't have JIT on.
> When i turn it on, the performance improvement is a more modest 1.5x
> with rxdrop and 1.2x with l2fwd.

I want to see perf reports back to back with proper performance analysis.

> >
> > Obvious Nack to the patch set.
> >
>
> Will update the patchset with the right performance data and address
> feedback from Bjorn.
> Hope you are not totally against direct XDP approach as it does provide
> value when an AF_XDP socket is bound to a queue and a HW filter can
> direct packets targeted for that queue.

I used to be in favor of providing "prog bypass" for af_xdp,
because of anecdotal evidence that it will make af_xdp faster.
Now seeing the numbers and the way they were collected
I'm against such bypass.
I want to see hard proof that trivial bpf prog is actually slowing things down
before reviewing any new patch sets.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
