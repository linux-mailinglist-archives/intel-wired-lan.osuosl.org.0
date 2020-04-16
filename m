Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7FB1AD1D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2020 23:21:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C14C87D9D;
	Thu, 16 Apr 2020 21:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TZ9Gwu5LFoyU; Thu, 16 Apr 2020 21:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCEAC87EBB;
	Thu, 16 Apr 2020 21:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2181D1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 21:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1CF2F85F87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 21:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgrjE5u5moEW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2020 21:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E19D85F85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 21:21:24 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id q17so211911qtp.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 14:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xM/V2k6EpQ5uys5KfPpPiHTUx3WvT66a+m3gTxQaTk8=;
 b=YXU5AtZ0Cw8nXH/b5cnK63DV49l3QT85fE/EEH7GjUmE2BnCrN50n4usKuIMGXoyFz
 J3qeUK9ej1o9tFKFwo4MjdRnn5mrsJ3JMsBEhY3tECqpt/nR4KzyeTQ7/LNF6w3Gx2F+
 mjvr5xIaoNzz5eeY7PVHKg/TOzsCG+pERLKnnYtTeXAritybSWDdgFcQeaKYKG22cLHz
 O/c92ABRcsFlR7tUh/KQguT/ZGggOquEYsb7djuVat/L4ouZ3XUaEER03e2tlv3rxBOC
 NOikDBAn2pc7TvP7oRBsaJFXd2cvJwHycRgcmAYsuk5mYHiw58oA0DNAJJ1S5Smf1jYZ
 XZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xM/V2k6EpQ5uys5KfPpPiHTUx3WvT66a+m3gTxQaTk8=;
 b=gesoK7fYrjXRvY7isUpST6VdIMDu2R0YavU6eApCgg4B6x45sLvNzg7zGQ3rOdgkGU
 jUyUEzbpF/y/Cuw5gHaqqjTQLRC+rOJOmSrzCJXtAEIuZHzna74SjQZQ0ihYAD0rGGgo
 4eGkcvomPLljw1+TFdTNvK6IBWOoNGPI/iZgrmJjGiLxgbYI6siDkLfwAvFPQ6zL03md
 HgpT+ceIoYybcX401ggDpaETl5OV/BlcmhGAYIkbI2+d+pMbk/IK0uD0BkQH58ywqBLO
 W7y+hebo9W2YfUJOI2ZpMl9GVXi3DXBkAlzlgJJTkpTcKRyX6vQS1PBFdW2IxDeseS6D
 S8qQ==
X-Gm-Message-State: AGi0PuaYVu24G9I6aoYP2MmrtazNEyu7eKiSibv9vDDwT+u1eapCCces
 fzcdVuMm+ktrEKY1rDmcYXzlB4jUJHwIobm76FA=
X-Google-Smtp-Source: APiQypKEiU7B4/UNbPjz3+cqmBnZt077IB/VReF2U4+C2GGYJAV1bHUlxetDpAIKQFGZhVFTncLXwzD/ggVmSG4LN6s=
X-Received: by 2002:ac8:528d:: with SMTP id s13mr18098095qtn.160.1587072083228; 
 Thu, 16 Apr 2020 14:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <CABcq3pESeM2aF=HP-j4-iu2fwaxF7+mr65zTgFaBK8prmu+srw@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 16 Apr 2020 14:21:11 -0700
Message-ID: <CAKgT0Uc2w6gKGsUMrzDoTtM237DjVnQrUGhi+jARMKBcDBJu+g@mail.gmail.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] Pls provide some advice - e1000e Linux link
 down
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
Cc: Andrew Melnichenko <andrew@daynix.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 16, 2020 at 9:16 AM Kirsher, Jeffrey T
<jeffrey.t.kirsher@intel.com> wrote:
>
> > From: Andrew Melnichenko <andrew@daynix.com>
> > Sent: Saturday, April 11, 2020 12:56
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> > Subject: Pls provide some advice - e1000e Linux link down
> >
> > Yo,
> > I'm a humble linux developer, currently I'm researching the issue with e1000e driver that can't handle "link down" on Linux guest(https://bugzilla.redhat.com/show_bug.cgi?id=1707441).
> > For now I've found that qemu can't raise LSC interrupts. But, on Windows guests the issue doesn't reproduce.

What do you mean that QEMU cannot raise LSC interrupts? Looking over
the latest QEMU code it looks like it is attempting to do just that in
e1000e_core_set_link_status(https://lxr.missinglinkelectronics.com/qemu+v4.0.0/hw/net/e1000e_core.c#L1800).

> > I've researched spec and the driver and for now, my main suspicion is still the issue in qemu and I have few hacks for "fixing".
> > But because on Windows guests that issue wasn't reproduced and I don't have a "real" device - I have a question:
> > Does "real" e1000e with Linux driver detect cable removing? Should I look more the driver?
> > Currently I have one hack for the driver that would "fix" the issue(small differences in interrupt clearing).
>
> Adding the e1000e developers and the Intel Wired LAN mailing list...

So the fact that you need to hack on the interrupt clearing tells me
that odds are you probably don't have a good emulation of the
interrupt register behavior. We have had to make a number of changes
to that code to work around the quirks in the hardware. I wouldn't
find it too surprising if the emulation behavior didn't match up just
because there have been a number of errata that have had to be work
around.

If you could include the code form your "fix" that might be useful as
that would tell us what behavior it is you are running into that needs
to be sorted out between QEMU and the hardware.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
