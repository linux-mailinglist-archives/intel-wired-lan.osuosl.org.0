Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CA519499D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 21:55:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1DA48929F;
	Thu, 26 Mar 2020 20:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R+J+tSNfDrbb; Thu, 26 Mar 2020 20:55:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1986C89290;
	Thu, 26 Mar 2020 20:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 484F11BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 20:55:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 437F98737E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 20:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JlUbGYaauwk3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 20:55:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 887D187316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 20:55:19 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id c19so7621243ioo.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 13:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tARXV4zRsb3hlr19d3d5crPq290pTsOZH+FqO6859YE=;
 b=F851KLD/PngBFC3+D8zfF4GUIKki3kvDxOK2i9jhvVwKExaqiC3WmMQ81XYEgaVNWc
 gmUuFe1dFltI398KtXOk1T9sfwfFHOqd1PiaEemFKcJerb+hC8RWhgPW66frhxQcEWoS
 U62TQN5kgq9P0g+1ZR3Gw+eaSJtEyKcs7XOXMbpZQzzd4zT478N8kobe5Jnc3DSXNdxf
 J1SWG6l0pSFkiDfDNKv3OH9+NEJTafrwmGlXgvrXhSMpzDklclRjQ5Iokr3SWJG79UsX
 Y2TrYNwNYjNH8zZTjHQs+qyMaArx4L/wJ6oa/aofFKaotvufZJ9dJM51UH3U4I7jNDE+
 v01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tARXV4zRsb3hlr19d3d5crPq290pTsOZH+FqO6859YE=;
 b=entxyBCn0MuIrICLBinQcsf4yAJwttk4X8nZ/oEnKLqCyDhdnFDV0OZ59wsGRGs66u
 G4NlHiW8UacZYGm3SIj3/ZWuyL0OHHsVHvNNLF19zr6U0Kwtd+85NUzm8pTPijZEN4Wl
 Rq4NkfKvodii66cQ3UpHp4NBCpoq4PpamuYxrUq/BT5LnVLR84cETjhjyNKbJRO8NkrK
 31WqRFTfuAIY6X6Wn9l/NE9iglfhJyw9dXkrks45X5bv3M2HYCni3p8xctQ2Zrc+kKpB
 nmlCTkSxm4GRv9cvHS4Yt8EFNXB0JYNQO70GvB11coMUY7i6iM2Nyjq6eVnckzsX9wQc
 SOaQ==
X-Gm-Message-State: ANhLgQ1oRo7Q/38X/1vdF9o5j3Fj9NdVtfSvMYzBNtGyiA54wj6ZWP6I
 T1Y/o5EdMVUlHzDI9n1Nil6URh1laI1iKCLUiss=
X-Google-Smtp-Source: ADFU+vvEhVdAi6cy8FMfdw2tGKtXdnM6Kv2N332jUL3j9MI30fugJLCa0/14G/rkL4JHbHM/gpb7MHKPCl9j+Z9jbyk=
X-Received: by 2002:a5d:84d0:: with SMTP id z16mr9395501ior.88.1585256118641; 
 Thu, 26 Mar 2020 13:55:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200326103926.20888-1-kai.heng.feng@canonical.com>
 <CAKgT0UfFnXcSSsXvxk8+xiZvyzDh+8V-9bCT-z5U+MEVoAVKLw@mail.gmail.com>
 <98E86E5A-4EE9-4CB5-81CF-49C3E74C3AE6@canonical.com>
In-Reply-To: <98E86E5A-4EE9-4CB5-81CF-49C3E74C3AE6@canonical.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 26 Mar 2020 13:55:07 -0700
Message-ID: <CAKgT0UcigwjL10i4FReJqQip7zYgU4F5BEk1T-K824vPRRCmuQ@mail.gmail.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: Use a sperate mutex insead of
 rtnl_lock()
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 26, 2020 at 10:16 AM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> Hi Alexander,
>
> > On Mar 27, 2020, at 00:27, Alexander Duyck <alexander.duyck@gmail.com> wrote:
> >
> > On Thu, Mar 26, 2020 at 3:39 AM Kai-Heng Feng
> > <kai.heng.feng@canonical.com <mailto:kai.heng.feng@canonical.com>> wrote:
> >>
> >> Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
> >> fixed race condition between close and power management ops by using
> >> rtnl_lock().
> >>
> >> This fix is a preparation for next patch, to prevent a dead lock under
> >> rtnl_lock() when calling runtime resume routine.
> >>
> >> However, we can't use device_lock() in igb_close() because when module
> >> is getting removed, the lock is already held for igb_remove(), and
> >> igb_close() gets called during unregistering the netdev, hence causing a
> >> deadlock. So let's introduce a new mutex so we don't cause a deadlock
> >> with driver core or netdev core.
> >>
> >> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> >
> > So this description doesn't make much sense to me. You describe the
> > use of the device_lock() in igb_close() but it isn't used there.
>
> Sorry I forgot to add a revision number.
> It was used by previous version and Aaron found a regression when device_lock() is used.
>
> > In addition it seems like you are arbitrarily moving code that was
> > wrapped in the rtnl_lock out of it. I'm not entirely sure that is safe
> > since there are calls within many of these functions that assume the
> > rtnl_lock is held and changing that is likely going to introduce more
> > issues.
>
> The reason why rtnl lock needs to be removed is because of the following patch:
> https://lore.kernel.org/lkml/20200207101005.4454-2-kai.heng.feng@canonical.com/
>
> Ethtools helpers already held rtnl_lock, so to prevent a deadlock, my idea is to use another lock to solve what "igb: close/suspend race in netif_device_detach" originally tried to fix.

No offense, but that is a horrible reason to be removing the
rtnl_lock. It basically makes things worse since it is guaranteeing
the device can be in flux while you are trying to record the state of
the device.

Wouldn't it make more sense to check for pm_runtime_suspended and if
the interface is down and simply report SPEED_UNKNOWN rather than
trying to instrument the driver so that you can force it out of the
power management state to report statistics for an interface that we
know is already down?

> >
> > So it looks like nobody ever really reviewed commit 888f22931478
> > ("igb: Free IRQs when device is hotplugged"). What I would recommend
> > is reverting it and instead we fix the remaining pieces that need to
> > be addressed in igb so it more closely matches what we have in e1000e
> > after commit a7023819404a ("e1000e: Use rtnl_lock to prevent race
> > conditions between net and pci/pm"). From what I can tell the only
> > pieces that are really missing is to update igb_io_error_detected so
> > that in addition to igb_down it will call igb_free_irq, and then in
> > addition we should be wrapping most of the code in that function with
> > an rtnl_lock since it is detaching a device and making modifications
> > to it.
>
> In addition to that, igb_shutdown() indirectly calls igb_close() when netdev unregistering the device.

Yes, that is how it is supposed to be. We are modifying core state of
the netdevice and should only do so while holding the rtnl_lock.

> My "only scratch the surface" approach is because I don't have a reproducer for commit "igb: close/suspend race in netif_device_detach", and I am afraid of breaking it.
>
> Kai-Heng

This is taking things in the wrong direction. My advice is if you
cannot get reliable link information when the device is in a
pm_runtime_suspended state would be to simply test for that and report
the value out. Again, you can take a look at e1000e since it already
appears to be doing all this in e1000e_get_link_ksettings. We don't
need to have the drivers diverge from each other in solutions for
this. It is much easier to maintain if they can all be making use of
the same approach.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
