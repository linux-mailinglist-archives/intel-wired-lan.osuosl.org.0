Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F0521526B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jul 2020 08:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C022A86B87;
	Mon,  6 Jul 2020 06:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdrHgbkcj16D; Mon,  6 Jul 2020 06:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C90A686BA1;
	Mon,  6 Jul 2020 06:13:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D01A1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2020 06:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9583F883AE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2020 06:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLAw-V2stE5d for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2020 06:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
 [209.85.217.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E85AD883A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2020 06:13:12 +0000 (UTC)
Received: by mail-vs1-f54.google.com with SMTP id k7so18636519vso.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 05 Jul 2020 23:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hgmD+i4IIWjW4gYd1a3+qDwkfxsxrkEwAeh8o2hGHU0=;
 b=hwrW+OgvGyJ3BaYbxO2yA9DU7pQQ1UzV2fPV2Y4xdISWsNolF4gY6GnEjF1lH69WgC
 PwVhaNSgpS16wjLEBdms7NqpaCPyBMfvsM/Sx8zJxfm0IR7GTcxyBAdqQqL5mLdQqhB0
 BC/Jjf96g1oAo3f7jL6slpkj+CKlUZC7uVGQVapdPZmEm7XbSNu/5LBQ00ID3j4HiJLV
 883OripveTLSDJjR7fekF/NCv6Hq/qNVmy7D+E8JO1daA7AoJ+BOA0GMjOmULR+JmZqS
 nkYYfgQsTb7Wsgl/b8HR0HGmwJyrL1l0l6K6RXscQEyATImDxitAOXgVBATKlw2SmoyV
 oQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hgmD+i4IIWjW4gYd1a3+qDwkfxsxrkEwAeh8o2hGHU0=;
 b=BVlVI5bbgdn70+++nPBB9vv+Qjr49wEuzY2r7iXXDLKcaGyNOtio48eHGetV15wzHq
 kpJaP6KZJphVJJWX7yQwDVTPuab8kbvZZtrgKmsX+l3zJXaZP+ODw/Q/xy0+4h9Xm1JJ
 x4faGPuIGQyi4PB8OEvYRdUgi+AjPkxVgzmjWvho2O3Skac7ofYTOXLNLcPw/bgyZ2Jl
 Bvpzvn08xa4Mc0IU0QgpKmgtP/6t87dZmeq8IWae9gMA0SwbEXqNeuedSqt/pGLf/gDK
 UTONMcy2ox/fZYSc40eVy6eTMg1IkfcjpzxhI/BTITaxVnQWABPTiiVgPaKlP0qDNpwI
 4nfw==
X-Gm-Message-State: AOAM532XLIKk3wfxmY+BNxcBb3uLZtOF/I9CLZ5OHDLrqGAy+Ybk+b0c
 akIWaywVQBLplu2VTifyEsK5p7gHsen0urjTAMg=
X-Google-Smtp-Source: ABdhPJx/Hc4c0NZ9rCnjOQ6y3trsKsqEfJPZ5A4C7u14R7+vPzq/L+OyYQgzI5Q3FAQaL2DEmpFE0Ex6zHWmkVNNZgA=
X-Received: by 2002:a67:2d8d:: with SMTP id t135mr13445634vst.23.1594015991991; 
 Sun, 05 Jul 2020 23:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <2863b548da1d4c369bbd9d6ceb337a24@baidu.com>
In-Reply-To: <2863b548da1d4c369bbd9d6ceb337a24@baidu.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 6 Jul 2020 08:13:00 +0200
Message-ID: <CAJ8uoz08pyWR43K_zhp6PsDLi0KE=y_4QTs-a7kBA-jkRQksaw@mail.gmail.com>
To: "Li,Rongqing" <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [bug ?] i40e_rx_buffer_flip should not be
 called for redirected xsk copy mode
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thank you RongQing for reporting this. I will take a look at it and
produce a patch.

/Magnus

On Thu, Jul 2, 2020 at 11:33 AM Li,Rongqing <lirongqing@baidu.com> wrote:
>
> Hi:
>
>
>
> i40e_rx_buffer_flip to xsk copy mode can lead to data corruption, like the following flow:
>
>
>
> 1. first skb is not for xsk, and forwarded to another device or socket queue
>
> 2. seconds skb is for xsk, copy data to xsk memory, and page of skb->data is released
>
> 3. rx_buff is reusable since only first skb is in it, but i40e_rx_buffer_flip will make that page_offset is set to first skb data
>
> 4. then reuse rx buffer, first skb which still is living will be corrupted.
>
>
>
> -Li RongQing
>
>
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
