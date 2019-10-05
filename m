Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB17CCBA2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Oct 2019 19:23:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FAA2864CD;
	Sat,  5 Oct 2019 17:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gqbx53_-MKXb; Sat,  5 Oct 2019 17:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A0B8864EE;
	Sat,  5 Oct 2019 17:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5ED431BF25B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2019 17:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B17E85F15
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2019 17:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVyJufHa_KbQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Oct 2019 17:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1DAE85424
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2019 17:23:07 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id w12so20158374iol.11
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Oct 2019 10:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pxUjmIbw13CFxUgTRwyvWTjL0FCOWPTaQat66nHsxn0=;
 b=GjHYE04fxu3DN13Mnf7fbSHz1nFx//ZjX7nE9aR/qHFSe2rn6p59OexXtYrrEraHOa
 cXCoRJk2iT1G5LdGA6mTi8hUidXPkXUBu+tOw+Tx2dvt0IUcjmL41mT7b4dRX8eUrTyk
 607GLwODe1OC5tQeDGdWeIkX+MYfVZVXXswoWXtm70D9EHTsWqAr/FZsMS7GpIuokoPm
 9/8/yAHZaDs3AstB1kp0qbEECIodqnVJfQ+l7AG/akZsUlPGpW+a1VQXF08r15qDG0UX
 a+JybUpzNaVL93WAYik84iCfzADKmk1AcZ4f7dLGNeuLteK+YraQ3dkxhHswE/HTi/kP
 Qp+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pxUjmIbw13CFxUgTRwyvWTjL0FCOWPTaQat66nHsxn0=;
 b=dBW64pjtnl8vINrlXeOKexXIBeWUlCd1wk1XeJnESOdmLwOg5mGX5c8larFiumKF1Y
 8YURgO+zaZMioOI3TO2JR0o6WF5WjyW3UrxHQjkvMaaFTno2pQg/DbjRanE7sa2Sxcy1
 4Srl3/vYadMUb57z3YbMBtySQz0nQW5NKLbF06zUJCM+kGXhtvKdKBsRvWbW0OKy8Xi4
 R8gxHJB1XaG7VdqcuSahlFAokXhXxxqRjSJjQTpMcV9qdBaYEQ4Vz2DOORpKZYYL2kB8
 aTLft1/rVDOymdr6D1O12SqwaAKWRTJc1xVlN+72M23aGGNohUYqUHXqc+zx6WGJDK1O
 jOYg==
X-Gm-Message-State: APjAAAXLuWUEYvKnj4tz8tY4gu/jTqK0F9QTKfKpo7XZBJ/CeY57TELN
 TQw31Am3EgOc86X6LR6fUxEzXV+pxc37uUIQ3Oc=
X-Google-Smtp-Source: APXvYqw5Yui+O5GuTNL9SpPqBww1zkYRVIwN1ybYrEwInOuQbbnSEOAw3FiqxgVcoXVCZ2BQo2WQINUT+MLaImyTfPk=
X-Received: by 2002:a6b:da06:: with SMTP id x6mr9478783iob.42.1570296186664;
 Sat, 05 Oct 2019 10:23:06 -0700 (PDT)
MIME-Version: 1.0
References: <1570208647.1250.55.camel@oc5348122405>
 <20191004233052.28865.1609.stgit@localhost.localdomain>
 <1570241926.10511.7.camel@oc5348122405>
In-Reply-To: <1570241926.10511.7.camel@oc5348122405>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sat, 5 Oct 2019 10:22:55 -0700
Message-ID: <CAKgT0Ud7SupVd3RQmTEJ8e0fixiptS-1wFg+8V4EqpHEuAC3wQ@mail.gmail.com>
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

On Fri, Oct 4, 2019 at 7:18 PM David Z. Dai <zdai@linux.vnet.ibm.com> wrote:
>
> On Fri, 2019-10-04 at 16:36 -0700, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> >
> > This patch is meant to address possible race conditions that can exist
> > between network configuration and power management. A similar issue was
> > fixed for igb in commit 9474933caf21 ("igb: close/suspend race in
> > netif_device_detach").
> >
> > In addition it consolidates the code so that the PCI error handling code
> > will essentially perform the power management freeze on the device prior to
> > attempting a reset, and will thaw the device afterwards if that is what it
> > is planning to do. Otherwise when we call close on the interface it should
> > see it is detached and not attempt to call the logic to down the interface
> > and free the IRQs again.
> >
> > >From what I can tell the check that was adding the check for __E1000_DOWN
> > in e1000e_close was added when runtime power management was added. However
> > it should not be relevant for us as we perform a call to
> > pm_runtime_get_sync before we call e1000_down/free_irq so it should always
> > be back up before we call into this anyway.
> >
> > Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> > ---
> >
> > I'm putting this out as an RFC for now. I haven't had a chance to do much
> > testing yet, but I have verified no build issues, and the driver appears
> > to load, link, and pass traffic without problems.
> >
> > This should address issues seen with either double freeing or never freeing
> > IRQs that have been seen on this and similar drivers in the past.
> >
> > I'll submit this formally after testing it over the weekend assuming there
> > are no issues.
> >
> >  drivers/net/ethernet/intel/e1000e/netdev.c |   33 ++++++++++++++--------------
> >  1 file changed, 17 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index d7d56e42a6aa..182a2c8f12d8 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c

<snip>

> >
> > -#ifdef CONFIG_PM_SLEEP
> >  static int e1000e_pm_thaw(struct device *dev)
> >  {
> >       struct net_device *netdev = dev_get_drvdata(dev);
> >       struct e1000_adapter *adapter = netdev_priv(netdev);
> > +     int rc = 0;
> >
> >       e1000e_set_interrupt_capability(adapter);
> > -     if (netif_running(netdev)) {
> > -             u32 err = e1000_request_irq(adapter);
> >
> > -             if (err)
> > -                     return err;
> > +     rtnl_lock();
> > +     if (netif_running(netdev)) {
> > +             rc = e1000_request_irq(adapter);
> > +             if (rc)
> > +                     goto err_irq;
> >
> >               e1000e_up(adapter);
> >       }
> >
> >       netif_device_attach(netdev);
> > -
> > -     return 0;
> > +     rtnl_unlock();
> > +err_irq:
> > +     return rc;
> >  }
> >
> In e1000e_pm_thaw(), these 2 lines need to switch order to avoid
> deadlock.
> from:
> +       rtnl_unlock();
> +err_irq:
>
> to:
> +err_irq:
> +       rtnl_unlock();
>
> I will find hardware to test this patch next week. Will update the test
> result later.
>
> Thanks! - David

Thanks for spotting that. I will update my copy of the patch for when
I submit the final revision.

I'll probably wait to submit it for acceptance until you have had a
chance to verify that it resolves the issue you were seeing.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
