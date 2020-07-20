Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA771226D6F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jul 2020 19:45:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34A9E86E59;
	Mon, 20 Jul 2020 17:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlwktjwVIfhP; Mon, 20 Jul 2020 17:44:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36199876DB;
	Mon, 20 Jul 2020 17:44:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD35A1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 17:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B61F187A72
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 17:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOiD0QPslUvf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jul 2020 17:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DCF8F87A5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 17:44:55 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id l17so18448032iok.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jul 2020 10:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=paf3tY7/j8+71DpSc8B+D4XdLMS+vGMHNSceR0s5vuk=;
 b=CIoS9nmwIWzwodnFDZ+bG+382eJ7Ik0PWc9YsGcHOwK19dwQj0B8Sx/jv3ZZXF2HK+
 FXZR3/2YNJHji4N8MBf6wNrCBjyLorHBucjUWXOBplmm5XuD+vWSNo1AbZe/x3pLUyIs
 VHpBlJucocDJ6XYeXqOlxyIr7weD6Z9EfWxyYm7yR/w/BP4ENPvpiGlBOF2MU7SjG3FP
 wDva1e64MI3Ue2BCM+zs4q9kCJ3p4h5OdZmyc+EfQYYk7pJofSMXJtbkzAOc3s2XrLkY
 1mmhsbmJGBKlcxrsSaG2gx6dIzrVvz25i/LvT3PqiA5ow9jOOy6JVfqjklogwrhphjot
 uRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=paf3tY7/j8+71DpSc8B+D4XdLMS+vGMHNSceR0s5vuk=;
 b=nAZ1Z8uI07g5bChKJqFwfQdQTdDmfLzKInxVr8HlWzSz3LB3XA7E/2y31vT8jZEz8T
 JX+YN3pgh9Iv8TvsTQERHVVyekzPX1StEjDghhRBcIh2ddTxyBTeT2OqVe9E+RaaJZQN
 KT30pVHHff8Qwv0Sk0/y+XoBZtd7iVn+TgqR9hdfcj4pve9Da4HVDZC/JnttIgAASpTj
 3lZopnqwvsD1TRqr44UzpBUhEfkBn8Ry18N4TlDz9yu3Ytbuq1l/iYhxNML9FSunJLC1
 jaXck5+YcsYKGSQYRo33fz8ZV9NABL3rZkzKmWteGOeiHxRUxJTXqhHqLo0JQ7s3j+oG
 h3bw==
X-Gm-Message-State: AOAM530trzCAfZZabcJKckVLNi+xFOwSpx7clujmxkEjnB5onTllrf5m
 c6LJCJJod0xCnBnqNgl6bprF94jfdg+88tOGM60=
X-Google-Smtp-Source: ABdhPJyPMI4EAg1FEqf1Bwnb296Q2klr8N86aXoz2bz0cIYNwSvdcZyxGwCN3nsXfTzzDCae/5zUnoglUW6fsyURdf4=
X-Received: by 2002:a02:ce9a:: with SMTP id y26mr27860178jaq.121.1595267095076; 
 Mon, 20 Jul 2020 10:44:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200719154836.59873-1-grandmaster@al2klimov.de>
In-Reply-To: <20200719154836.59873-1-grandmaster@al2klimov.de>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 20 Jul 2020 10:44:44 -0700
Message-ID: <CAKgT0Ud4jwxD_NHqLdcWXJSdVJ3CZtzosCwODtdfKnV48GfPfQ@mail.gmail.com>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: Re: [Intel-wired-lan] [PATCH for v5.9] Documentation: intel:
 Replace HTTP links with HTTPS ones
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
Cc: Jonathan Corbet <corbet@lwn.net>, Netdev <netdev@vger.kernel.org>,
 linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jul 19, 2020 at 8:49 AM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
>
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>           If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
>
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---
>  Continuing my work started at 93431e0607e5.
>  See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
>  (Actually letting a shell for loop submit all this stuff for me.)
>
>  If there are any URLs to be removed completely
>  or at least not (just) HTTPSified:
>  Just clearly say so and I'll *undo my change*.
>  See also: https://lkml.org/lkml/2020/6/27/64
>
>  If there are any valid, but yet not changed URLs:
>  See: https://lkml.org/lkml/2020/6/26/837
>
>  If you apply the patch, please let me know.
>
>  Sorry again to all maintainers who complained about subject lines.
>  Now I realized that you want an actually perfect prefixes,
>  not just subsystem ones.
>  I tried my best...
>  And yes, *I could* (at least half-)automate it.
>  Impossible is nothing! :)
>
>
>  Documentation/networking/device_drivers/intel/e100.rst  | 4 ++--
>  Documentation/networking/device_drivers/intel/e1000.rst | 2 +-
>  Documentation/networking/device_drivers/intel/fm10k.rst | 2 +-
>  Documentation/networking/device_drivers/intel/iavf.rst  | 2 +-
>  Documentation/networking/device_drivers/intel/igb.rst   | 2 +-
>  Documentation/networking/device_drivers/intel/igbvf.rst | 2 +-
>  Documentation/networking/device_drivers/intel/ixgb.rst  | 2 +-
>  7 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/Documentation/networking/device_drivers/intel/e100.rst b/Documentation/networking/device_drivers/intel/e100.rst
> index 3ac21e7119a7..3d4a9ba21946 100644
> --- a/Documentation/networking/device_drivers/intel/e100.rst
> +++ b/Documentation/networking/device_drivers/intel/e100.rst
> @@ -41,7 +41,7 @@ Identifying Your Adapter
>
>  For information on how to identify your adapter, and for the latest Intel
>  network drivers, refer to the Intel Support website:
> -http://www.intel.com/support
> +https://www.intel.com/support
>
>  Driver Configuration Parameters
>  ===============================
> @@ -179,7 +179,7 @@ filtering by
>  Support
>  =======
>  For general information, go to the Intel support website at:
> -http://www.intel.com/support/
> +https://www.intel.com/support/
>
>  or the Intel Wired Networking project hosted by Sourceforge at:
>  http://sourceforge.net/projects/e1000
> diff --git a/Documentation/networking/device_drivers/intel/e1000.rst b/Documentation/networking/device_drivers/intel/e1000.rst
> index 4aaae0f7d6ba..9d99ff15d737 100644
> --- a/Documentation/networking/device_drivers/intel/e1000.rst
> +++ b/Documentation/networking/device_drivers/intel/e1000.rst
> @@ -44,7 +44,7 @@ NOTES:
>          For more information about the InterruptThrottleRate,
>          RxIntDelay, TxIntDelay, RxAbsIntDelay, and TxAbsIntDelay
>          parameters, see the application note at:
> -        http://www.intel.com/design/network/applnots/ap450.htm
> +        https://www.intel.com/design/network/applnots/ap450.htm

So I think this link is broken. What it leads you to is not the
application note. We should either find the replacement link or just
drop this reference.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
