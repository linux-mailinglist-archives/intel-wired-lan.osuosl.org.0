Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C131D88D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2020 22:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 08C882221F;
	Mon, 18 May 2020 20:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V+YUpwQplC5E; Mon, 18 May 2020 20:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CFF85221B1;
	Mon, 18 May 2020 20:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E822C1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 10:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1CE4876E7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 10:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2GT3-6Wlcdo for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2020 10:51:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05153876C7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 10:51:32 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id l21so6337718eji.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2020 03:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c6QtPg2o/RHjcYUveiYsELNNbSChIH+Ej9lMJs/Ed+g=;
 b=PSAT6c3+0cvNMHRbcVnekTMp7uJe/SLojwkidlvvMuXz9VGVXD9XTQPgEd0SxNCxam
 ZhOARMsgrugbuyN4+I8tCCz3jIADk3/90QhUMlbg5yazJFegblbszikblFhkoZqRITrf
 C8CtoP7BTzuCGwlzUrh7iUUz2lSL/lKEAwR7D0crcFpHPj0qOlNCofCMqcCb7BneZIUD
 X7e9W9MDxcCu1gWTPeGgQgS1xteLsau3HAgHkZJh2qpMcxvrMPs+JPDlgHo5U+LxpfXG
 YlrRr6Vvi9SozrTqEdbfo9up5w3VrtHd6Vsq6bPYOVD0prqMrQ9N8AxzF7SreH8daBZI
 ix3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c6QtPg2o/RHjcYUveiYsELNNbSChIH+Ej9lMJs/Ed+g=;
 b=ul2adBygA/aQNPluI17M9cnZl6WHJmkxZSPZZSov5OwOv6aePzbUV12VjGhCXibwui
 bgBMI3Xpn/8YP3K9Ih98q7AEbO3C/pQ1vLv2+5FCJtGWlHyot2aZwX/ihE79DIPg1Z3g
 aa6jD3lHjIl4akQxAfDcgpJI50db2m+3vNgXJ7/U6oWhKxIaewpXaWdaa51cOVcgabpD
 jINROs1XKj6WieYDrZdiI9gmj86bDltWEhpYBzR7QoMYGyzMqnbqCGS2YaZyD5IAFjc+
 415I76SwwC3nq19SU+KemFYuUCgWtnu6ZmNUeDtsi/QrzWOVqh12cYRy+UjIDR3Gzt1P
 Zaqg==
X-Gm-Message-State: AOAM531/9f7wlmF23LP7w78D0xwYKaD7ZZpn8mABxXv7XaZYhXuS77lQ
 hm/1B7sPF/tQyx20+3Mc9VwZwgVPFndqzDlSHAg=
X-Google-Smtp-Source: ABdhPJymibuT4oftjhAP7TyFU53ASlulh2i8ppuyvd8+9wHFKTHQFCaP5PXygatv5htGJEAW+CSoA3ybJUdmeA0F/BI=
X-Received: by 2002:a17:906:dbcf:: with SMTP id
 yc15mr10748540ejb.176.1589712690293; 
 Sun, 17 May 2020 03:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
In-Reply-To: <20200516.151932.575795129235955389.davem@davemloft.net>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sun, 17 May 2020 13:51:19 +0300
Message-ID: <CA+h21hrg_CeD2-zT+7v3b3hPRFaeggmZC9NqPp+soedCYwG63A@mail.gmail.com>
To: David Miller <davem@davemloft.net>
X-Mailman-Approved-At: Mon, 18 May 2020 20:07:01 +0000
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, netdev <netdev@vger.kernel.org>,
 Po Liu <po.liu@nxp.com>, Murali Karicheri <m-karicheri2@ti.com>,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 17 May 2020 at 01:19, David Miller <davem@davemloft.net> wrote:
>
> From: Vladimir Oltean <olteanv@gmail.com>
> Date: Sun, 17 May 2020 00:03:39 +0300
>
> > As to why this doesn't go to tc but to ethtool: why would it go to tc?
>
> Maybe you can't %100 duplicate the on-the-wire special format and
> whatever, but the queueing behavior ABSOLUTELY you can emulate in
> software.
>
> And then you have the proper hooks added for HW offload which can
> do the on-the-wire stuff.
>
> That's how we do these things, not with bolted on ethtool stuff.

When talking about frame preemption in the way that it is defined in
802.1Qbu and 802.3br, it says or assumes nothing about queuing. It
describes the fact that there are 2 MACs per interface, 1 MAC dealing
with some traffic classes and the other dealing with the rest. Queuing
sits completely above the layer where frame preemption happens:
- The queuing layer does not care if packets go to a traffic class
that is serviced by a preemptible MAC or an express MAC
- The MAC does not care by what means have packets been classified to
one traffic class or another.
I have no idea what emulation of queuing behavior you are talking
about. Frame preemption is a MAC hardware feature. Your NIC supports
it or it doesn't. Which means it can talk to a link partner that
supports frame preemption, or it can't.

Thanks,
-Vladimir
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
