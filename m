Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B7D3F914E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Aug 2021 02:26:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED3E283005;
	Fri, 27 Aug 2021 00:26:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nY-qK5yHHMvs; Fri, 27 Aug 2021 00:26:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61CBC82FDE;
	Fri, 27 Aug 2021 00:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 72E381C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 00:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 605F682F06
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 00:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4maN_Xpsn5Y5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Aug 2021 00:26:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com
 [IPv6:2607:f8b0:4864:20::c29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC6DC82C21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Aug 2021 00:26:34 +0000 (UTC)
Received: by mail-oo1-xc29.google.com with SMTP id
 v20-20020a4a2554000000b0028f8cc17378so1517747ooe.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 17:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pnwBhL+bIRZ+1AujOyithEsycI0iSDtmHs6X+/x+Fhc=;
 b=sBP1y9OgvieB5CccQH32mPE+X+ashq9FrlnUIlsj20FzDRksOusy3AEq18QQTjGlTN
 j7HCMqzoDTKGUfxl+NjSTSPWAUvFySjZO2ED4rFuZfmfE1hI6G1UxrJ+xMKI6/Q8ot8S
 Sm1unDbFtNAXi53kHjGwYPwHpcpv93aMMdzCexVagDs0dEy6PmXV9BWlHWVWJrBKn2Jn
 EnWBCmWzEhsA6E9EqeyVzjiW0afuEbMkhoV+ivtaNJW8PaDxbtZr/xwdBRfdeY0D/S86
 HUhj6QWPmCd3lNBSskZ67qX+MG9QVqCHfVaCI+HGe84L3JR3YSDQtuQ4mlLI5azhbI50
 YxGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pnwBhL+bIRZ+1AujOyithEsycI0iSDtmHs6X+/x+Fhc=;
 b=JMYEkn0CO6XtSM3xwxNTDZxBT48gVXZOhqWD40yjQkbGAMgDoFmgsflN6m4PbYqp/V
 XVyDzIi6s1U40NZV92w0N8GcTpgy2zMoKIvRenTWzInQ+BO4DGznbnWeKeEWAvQvPR8y
 aXkP+wzdA+p167bCewp6IqDgEl96m/q+k9lbjonDUGP7ynyybcZ5bps8wjX9VDVlju6v
 9RXRtGJ6lUBsoT0qnhFMS1UFA3qRGFqLvC+1vW+a3AP6g8WfeqbG1SlWPuD1IioOaqS/
 CR1NILjONorHGDX13yKbQwmonwcGQl3OaKqVyY+Jk6/d/diTXdawbGvfhVk1mUBM8nWC
 OtzA==
X-Gm-Message-State: AOAM5312OybjDlYUipf9cFSZT0gX622+/TwViz6hkho9n8egoBz5Cal7
 6NR5KHPf/aXWxR87Ah/MIoKeLQNBjBIsqVxuNFI=
X-Google-Smtp-Source: ABdhPJzaoHbOjah8e/X215Kp/Z3xDTS2cp8NQupcSAzhDxBFPFu/G55Fo9UBoorbueobdipf4Ayxle3exSXBftAU5DA=
X-Received: by 2002:a4a:5742:: with SMTP id u63mr5507687ooa.87.1630023993563; 
 Thu, 26 Aug 2021 17:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210826141623.8151-1-kerneljasonxing@gmail.com>
 <00890ff4-3264-337a-19cc-521a6434d1d0@gmail.com>
 <860ead37-87f4-22fa-e4f3-5cadd0f2c85c@intel.com>
 <CAL+tcoCovfAQmN_c43ScmjpO9D54CKP5XFTpx6VQpwJVxZhAdg@mail.gmail.com>
 <da5da485-9dc7-e731-a8d9-f5ad7c7dffde@gmail.com>
In-Reply-To: <da5da485-9dc7-e731-a8d9-f5ad7c7dffde@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 27 Aug 2021 08:25:57 +0800
Message-ID: <CAL+tcoCyYeb+ppM4gBU3MZWKcm4513J49QNu2yLjY2O8-KaRog@mail.gmail.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v4] ixgbe: let the xdpdrv work with
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 27, 2021 at 2:19 AM Eric Dumazet <eric.dumazet@gmail.com> wrote:
>
>
>
> On 8/26/21 10:03 AM, Jason Xing wrote:
>
> >
> > Honestly, I'm a little confused right now. @nr_cpu_ids is the fixed
> > number which means the total number of cpus the machine has.
> > I think, using @nr_cpu_ids is safe one way or the other regardless of
> > whether the cpu goes offline or not. What do you think?
> >
>
> More exactly, nr_cpu_ids is the max number cpu id can reach,
> even in presence of holes.
>
> I think that most/many num_online_cpus() in drivers/net are simply broken
> and should be replaced by nr_cpu_ids.
>

Thank you, Eric, really. I nearly made a terrible mistake.

> The assumptions of cpus being nicely numbered from [0 to X-1],
> with X==num_online_cpus() is wrong.
>
> Same remark for num_possible_cpus(), see commit
> 88d4f0db7fa8 ("perf: Fix alloc_callchain_buffers()") for reference.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
