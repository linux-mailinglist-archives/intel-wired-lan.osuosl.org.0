Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32776DB975
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2019 00:03:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94270885EC;
	Thu, 17 Oct 2019 22:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cesQ6hCupQuF; Thu, 17 Oct 2019 22:03:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E43DA885DE;
	Thu, 17 Oct 2019 22:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 957501BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 22:03:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 847D1885DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 22:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fl84bnTFc32 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2019 22:03:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C07FA885D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 22:03:11 +0000 (UTC)
Received: by mail-vk1-f179.google.com with SMTP id p189so893666vkf.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 15:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/r0Xq7CUqnWJvcHImLiq/l2SyOtnZu4j0Uw0mhgZobQ=;
 b=rUrCh517QQ/Y5eSobnazNG4pyYCCEkj9lJ8EimiqhZoMPmqvHPSWho+H8oqquJ4dZL
 zqZLbbKUdb5C1QqJOkp1adkuBj0hqF6kw1R+4GEdAX923D+g2gyOvz3U2GggbyCqI+lx
 TgPk8nox6vhSH5aHfWX2ynIMpq4LpwK22reYk4S7ZAly6ZN9hRVL+Rr02kM7y878MA8Y
 nBiGytfGena2IL57TJVNZFMdBe4NygFdC7w2uvH4y/kgy22xz36LMCssxxcngLVopz4q
 UvuwuyA7wYbi+f+edAw7ReCZPyozBcS7XqvpkDBJUdNqDAYCjtklj8Xmd0T1lVkN06c3
 x7vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/r0Xq7CUqnWJvcHImLiq/l2SyOtnZu4j0Uw0mhgZobQ=;
 b=aGvulICU+rG5FEU7yC9+XT5G1Xs6WVbUQc3S1lWjS2A3kxS0LZANeGNJMxIfTSMjp5
 ql9DTIeghIXWWwftt+25Zj+nOKQ6GBduwTzw+VgUmD8KCQPGOnuYdytle4VepToVrWbg
 MZE7+zGq2Dlnk5vXWJowCAeLR4TfL0V216ZLbMW4Ke73j4jO4QvWHWeWzsKSlsleTsw7
 oa0oR9FfwOqFi4xDHKw4JRpRaN5V+JYoxEoqA9QUdb3Mu48Yj5sRLF2pgr1ow2NEyvSn
 apjVZoCS1cm0j0otjSPSPwUNYOSUVsnAk2MwxPcpCfVqa0G2ugzTJ7ck/lylf5I6ouaS
 6UhA==
X-Gm-Message-State: APjAAAXZh3uwR+3SMHlG5KkioK1lEoaFVbU/kVB3QCHtdL7hvuY/nHVu
 LMXp27r6QCO0g9YwkHXRH0TbcS2lyx8xAERhVwI=
X-Google-Smtp-Source: APXvYqx5/2puCj2hjcjO1O7g/Hb35Rd/y9lIdOcMpHDXb9yvsmbV9ftFZZyQi0B2e51916XV/Ag3Ci4rUMbrkGBkKrc=
X-Received: by 2002:a1f:fc0a:: with SMTP id a10mr3470951vki.10.1571349790413; 
 Thu, 17 Oct 2019 15:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAMnf+Phw525rfCHVDXz1uWZw4Y=HuyBjnhpqYzjx2dmgpsHMsA@mail.gmail.com>
 <CAKgT0UeDcXSjcXs+V9z+aAkg079Ltt1rEHXxr4Ug-E-GB92=OQ@mail.gmail.com>
In-Reply-To: <CAKgT0UeDcXSjcXs+V9z+aAkg079Ltt1rEHXxr4Ug-E-GB92=OQ@mail.gmail.com>
From: JD <jdtxs00@gmail.com>
Date: Thu, 17 Oct 2019 17:02:59 -0500
Message-ID: <CAMnf+PjUjCbhh82QJ=y=pN7jDOYwXnr8oAi7wBUoHBHPR7OO=Q@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] VF/SRIOV question
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Alex,

That clears things up. Thank you very much for your reply and insight!

On Thu, Oct 17, 2019 at 3:47 PM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
>
> On Thu, Oct 17, 2019 at 11:06 AM JD <jdtxs00@gmail.com> wrote:
> >
> > Hello,
> >
> > I couldn't find anything in the spec/doc for the Intel 82599 series
> > NIC's regarding performance penalties with a higher number of VF's.
> >
> > Currently I'm using 16 VF's with SR-IOV/QEMU, but the 82599 NIC
> > supports up to 63 VF's. From a driver/NIC perspective, are there any
> > performance considerations or penalties of enabling/using all of the
> > available VF's on a NIC?
> >
> > If there isn't, is this the same case for other models (besides 82599) as well?
> >
> > Thank you!
>
> One hardware limitation I am aware of is that as you spread the work
> over more queues, or in this case more VFs you may not be able to
> achieve 64B line rate with small packets. The issue is as you add more
> queues the descriptor fetching becomes more interleaved between the
> queues which will reduce the performance. So instead of being able to
> hit 14.88Mpps you may only see about 10 or 11Mpps. If you are working
> with packets larger than 128B or larger you should see little to no
> impact.
>
> Another limitation I can think of is the number of queues per PF/VF.
> The hardware only has a certain number of queues. For 82599 that
> number is 128. So when you have 31 or fewer VFs you get 4 queues for
> the PF, when you have 32 or more the PF has to drop to 2 queues.
> Depending on your workload this may mean more stress on the CPUs
> handling PF traffic as the number of queues is reduced.
>
> Hope that helps.
>
> - Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
