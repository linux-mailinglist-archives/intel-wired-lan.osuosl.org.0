Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D830CCEA87
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2019 19:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D27085F87;
	Mon,  7 Oct 2019 17:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2UBFM58r_7g; Mon,  7 Oct 2019 17:24:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C09385F35;
	Mon,  7 Oct 2019 17:24:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 606F61BF419
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A06886430
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id miSqI+ZvDGkS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2019 17:24:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F66C8641F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2019 17:24:10 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id u8so30367144iom.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Oct 2019 10:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f19XKzeo7CREoxaZsVsRONVS5s0SLTB6t4SyKnXI7DM=;
 b=CiigE7vs4fIku3bkBz3sbQ39z1nNKsl+M/ctOQzar/nVEoj4HtdTBA8Bq0/ZYP0ABo
 dXzKL4fvKnjCSNCE9SOBMlsZB6JnS0vO8zWnK8SZbGWRZMjaV8IrchjiMDTbOvIHLUiw
 07GxDyR3iO7BPpXhlEC+DBeQAMOUo9onvpPauAVbcm4ugyAn1tf+sezcCpisAZrhnLyF
 PIWepPOOBbGNm64OXZxzO4Apgw09jQTaWvnHc7PCViQP5PIFeOPtNVxhVuJtIP4yMbAL
 Z6tGsn3/Y/SiF2ixi5aoHeheVqOD6R81wgTZl0JWdsZwlthBWR7bputJbCzt7tDoSrk9
 EHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f19XKzeo7CREoxaZsVsRONVS5s0SLTB6t4SyKnXI7DM=;
 b=RXa/QuoyY13EO6Duc7sR/85sPH/30wbkz/mYuv757qevQ/jETojRET9ClPiBAEx5Cd
 Q0t4OIWEHtQAgEubMOavVPcyiH6zwdcgsXhY1Ld94uqP90mHw8uLQNuimDbqbymEtzQW
 VfwS+csB5VQE9a3a9scqeqKKqJCLiJ2ZY88dE1wMu0LpbUSsKuslwmiWLRdgIjua94dn
 /Jjs3bae4dndgay9qpJCf4JVsfpkHBjM4qSDEND9vTSWJqapfivxDd13CZ3BHXOMlaBq
 8ECWceP/LmoP0bb7+/+JYhTn6s9ZtQWMoaVhMkEh34P0gdjKFO+yf1ySbjqbpFm0muc7
 TC7w==
X-Gm-Message-State: APjAAAXohixzMUrRlpFhO7t+14XMnD1ovAvSkrF9/oYC/DZSvBjqqjXg
 2w/QlyNkZfmAX0aAQ7LHG8tfmiF9MGynEd7q+Xg=
X-Google-Smtp-Source: APXvYqzgUWjOVexUVEoIKiFrSYPtJYgjVKLK+LdwKcl8jpZM7OSz2YINg0duXk2nz2yEQ2pbr1uB92Xz5qZFz+8zbsU=
X-Received: by 2002:a6b:da06:: with SMTP id x6mr16936243iob.42.1570469049735; 
 Mon, 07 Oct 2019 10:24:09 -0700 (PDT)
MIME-Version: 1.0
References: <1570208647.1250.55.camel@oc5348122405>
 <20191004233052.28865.1609.stgit@localhost.localdomain>
 <1570241926.10511.7.camel@oc5348122405>
 <CAKgT0Ud7SupVd3RQmTEJ8e0fixiptS-1wFg+8V4EqpHEuAC3wQ@mail.gmail.com>
 <1570463459.1510.5.camel@oc5348122405>
 <CAKgT0Ue6+JJqcoFO1AcP8GCShmMPiUm1SNkbq9BxxWA-b5=Oow@mail.gmail.com>
 <1570468362.1510.9.camel@oc5348122405>
In-Reply-To: <1570468362.1510.9.camel@oc5348122405>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 7 Oct 2019 10:23:58 -0700
Message-ID: <CAKgT0UdwqGGKvaSJ+3vd-_d-6t9MB=No+7SpkbOT2PnynRK+2w@mail.gmail.com>
To: "David Z. Dai" <zdai@linux.vnet.ibm.com>
Subject: Re: [Intel-wired-lan] [RFC PATCH] e1000e: Use rtnl_lock to prevent
 race conditions between net and pci/pm
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, zdai@us.ibm.com,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 7, 2019 at 10:12 AM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
>
> On Mon, 2019-10-07 at 10:02 -0700, Alexander Duyck wrote:
> > On Mon, Oct 7, 2019 at 8:51 AM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
> > >
> >
> > <snip>
> >
> > > We have tested on one of the test box.
> > > With this patch, it doesn't crash kernel anymore, which is good!
> > >
> > > However we see this warning message from the log file for irq number 0:
> > > [10206.317270] Trying to free already-free IRQ 0
> > >
> > > With this stack:
> > > [10206.317344] NIP [c00000000018cbf8] __free_irq+0x308/0x370
> > > [10206.317346] LR [c00000000018cbf4] __free_irq+0x304/0x370
> > > [10206.317347] Call Trace:
> > > [10206.317348] [c00000008b92b970] [c00000000018cbf4] __free_irq
> > > +0x304/0x370 (unreliable)
> > > [10206.317351] [c00000008b92ba00] [c00000000018cd84] free_irq+0x84/0xf0
> > > [10206.317358] [c00000008b92ba30] [d000000007449e60] e1000_free_irq
> > > +0x98/0xc0 [e1000e]
> > > [10206.317365] [c00000008b92ba60] [d000000007458a70] e1000e_pm_freeze
> > > +0xb8/0x100 [e1000e]
> > > [10206.317372] [c00000008b92baa0] [d000000007458b6c]
> > > e1000_io_error_detected+0x34/0x70 [e1000e]
> > > [10206.317375] [c00000008b92bad0] [c000000000040358] eeh_report_failure
> > > +0xc8/0x190
> > > [10206.317377] [c00000008b92bb20] [c00000000003eb2c] eeh_pe_dev_traverse
> > > +0x9c/0x170
> > > [10206.317379] [c00000008b92bbb0] [c000000000040d84]
> > > eeh_handle_normal_event+0xe4/0x580
> > > [10206.317382] [c00000008b92bc60] [c000000000041330] eeh_handle_event
> > > +0x30/0x340
> > > [10206.317384] [c00000008b92bd10] [c000000000041780] eeh_event_handler
> > > +0x140/0x200
> > > [10206.317386] [c00000008b92bdc0] [c0000000001397c8] kthread+0x1a8/0x1b0
> > > [10206.317389] [c00000008b92be30] [c00000000000b560]
> > > ret_from_kernel_thread+0x5c/0x7c
> > >
> > > Thanks! - David
> >
> > Hmm. I wonder if it is possibly calling the report
> > e1000_io_error_detected multiple times. If so then the secondary calls
> > to e1000_pm_freeze would cause issues.
> >
> > I will add a check so that we only down the interface and free the
> > IRQs if the interface is in the present and running state.
> >
> > I'll submit an update patch shortly.
> >
> > Thanks.
> >
> > - Alex
> It only complains about IRQ number 0 in the log.

I suspect that is because the IRQ is already freed. So there are no
other interrupts enabled and it thinks it is running in legacy IRQ
mode.

> Could you please let me know the actual place where you will add the
> check?
> I can retest it again.
>
> Thanks! - David

So I will need to add another variable called "present" to
e1000_pm_freeze, I will assign netif_device_present() to it after
taking the rtnl_lock and before I detach the interface, and will test
for it and netif_running() before calling the logic that calls
e1000_down and e1000_free_irq.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
