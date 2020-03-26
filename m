Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A826194444
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 17:28:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 503A826291;
	Thu, 26 Mar 2020 16:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AbzFXQjM772p; Thu, 26 Mar 2020 16:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CD03C2153D;
	Thu, 26 Mar 2020 16:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43A091BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 16:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 36C8E2042A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 16:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVu37b9hOYf1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 16:27:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 11E3720243
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 16:27:54 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id e8so5900041ilc.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 09:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2MvgnsSQhFJOcyx9F2ihbJOXdLnu/MGIqeeUoB2SLbM=;
 b=O+HVkvBErHFx61kmKWqwDVr9mM9NwxkP5CgHZkz8KKBG51hrYlwuKP26qg84OHsxVB
 0Csn9hEqw5zUtxAZ8hXbKJYonAGgMiW0oSwLVoWbnfKE7nmgDQTWRrmKkq0R3soBo1O6
 YA2xpd7O25TSRoBEZeQ7E95N53qbjw3fE5HCjUUKmtAeNikCAx8lmf4WzXJgNMiGFSJx
 c4+Rvjrk3GX2GNNId3q5hbOuLfTBkYt3mx/jzzQjOjWhqiNfneAMWR968ENRiKCvdJgC
 Lt4zrBYpUJM4uD/0sBT0Ucf0edmhAvR21jjC3t8qlxejtaMgYo1HetQF0xoeZiEQ/Df3
 Sgmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2MvgnsSQhFJOcyx9F2ihbJOXdLnu/MGIqeeUoB2SLbM=;
 b=gRbuGwQzJaD4PUY1VOuJkSBsH1NeW58I2GxL/knnBL4cibFct1S+Bz8Tfc81KHB+Vu
 dQDi3libWErsUWs+xGM37gECNP20Nsd5/d9cGGizQu3UEIHWDIrzcyTfy3H8tVXpygl7
 FokX6qxF3o3pJSiFt5Cxec6/HSTyG7XYFwCGD1UGYr72jI2Nf7Fe9iNMIi6hYDDQZKKz
 HeE0oEWQRszHaOvS9i0N0VN5ZYiZpS8nmD2oEqifpC+olQQd9IwjQn8VxtN360ajbn3W
 f8Sd6mDwsz83X3GfjpfPiMVWhOwbYoK4C1oIXOP4MecY1HPZamT6nCM1EFnfuPr4e5SU
 oXVQ==
X-Gm-Message-State: ANhLgQ0IsgD4tFUTyORt+5U9oI7ToPm217qnagKWQ83HMp+zlc7PMfSt
 llls6Fs/lSzOTqG/ya1dNFUO7JTF+RNJvbhbEPM=
X-Google-Smtp-Source: ADFU+vs3UUxKJvBojeAzB/v9NDT0zXbWaHLGTU3p4w5iPWYt+V3DgoqWyKdwP6CKCFaA8gpJqDpqts+2JawxmNNR4DE=
X-Received: by 2002:a92:3955:: with SMTP id g82mr9646493ila.237.1585240073233; 
 Thu, 26 Mar 2020 09:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200326103926.20888-1-kai.heng.feng@canonical.com>
In-Reply-To: <20200326103926.20888-1-kai.heng.feng@canonical.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 26 Mar 2020 09:27:42 -0700
Message-ID: <CAKgT0UfFnXcSSsXvxk8+xiZvyzDh+8V-9bCT-z5U+MEVoAVKLw@mail.gmail.com>
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

On Thu, Mar 26, 2020 at 3:39 AM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
> fixed race condition between close and power management ops by using
> rtnl_lock().
>
> This fix is a preparation for next patch, to prevent a dead lock under
> rtnl_lock() when calling runtime resume routine.
>
> However, we can't use device_lock() in igb_close() because when module
> is getting removed, the lock is already held for igb_remove(), and
> igb_close() gets called during unregistering the netdev, hence causing a
> deadlock. So let's introduce a new mutex so we don't cause a deadlock
> with driver core or netdev core.
>
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

So this description doesn't make much sense to me. You describe the
use of the device_lock() in igb_close() but it isn't used there. In
addition it seems like you are arbitrarily moving code that was
wrapped in the rtnl_lock out of it. I'm not entirely sure that is safe
since there are calls within many of these functions that assume the
rtnl_lock is held and changing that is likely going to introduce more
issues.



> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index b46bff8fe056..dc7ed5dd216b 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -288,6 +288,8 @@ static const struct igb_reg_info igb_reg_info_tbl[] = {
>         {}
>  };
>
> +static DEFINE_MUTEX(igb_mutex);
> +
>  /* igb_regdump - register printout routine */
>  static void igb_regdump(struct e1000_hw *hw, struct igb_reg_info *reginfo)
>  {
> @@ -4026,9 +4028,14 @@ static int __igb_close(struct net_device *netdev, bool suspending)
>
>  int igb_close(struct net_device *netdev)
>  {
> +       int err = 0;
> +
> +       mutex_lock(&igb_mutex);
>         if (netif_device_present(netdev) || netdev->dismantle)
> -               return __igb_close(netdev, false);
> -       return 0;
> +               err = __igb_close(netdev, false);
> +       mutex_unlock(&igb_mutex);
> +
> +       return err;
>  }
>

Okay, so I am guessing the problem has something to do with the
addition of the netdev->dismantle test here and the fact that it is
bypassing the present check for the hotplug remove case?

So it looks like nobody ever really reviewed commit 888f22931478
("igb: Free IRQs when device is hotplugged"). What I would recommend
is reverting it and instead we fix the remaining pieces that need to
be addressed in igb so it more closely matches what we have in e1000e
after commit a7023819404a ("e1000e: Use rtnl_lock to prevent race
conditions between net and pci/pm"). From what I can tell the only
pieces that are really missing is to update igb_io_error_detected so
that in addition to igb_down it will call igb_free_irq, and then in
addition we should be wrapping most of the code in that function with
an rtnl_lock since it is detaching a device and making modifications
to it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
