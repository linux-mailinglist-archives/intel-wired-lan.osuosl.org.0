Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D846C3E000B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 13:19:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E3E660896;
	Wed,  4 Aug 2021 11:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIGaTBrwnedW; Wed,  4 Aug 2021 11:19:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93CEC60650;
	Wed,  4 Aug 2021 11:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D223F1BF327
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 11:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B687A608BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 11:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id esB11U-tf5dm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 11:19:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EE65608B0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 11:19:08 +0000 (UTC)
Received: from mail-wr1-f50.google.com ([209.85.221.50]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1McZfZ-1mjkjE3cbN-00d1Sc for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Aug
 2021 13:19:05 +0200
Received: by mail-wr1-f50.google.com with SMTP id d8so1810687wrm.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Aug 2021 04:19:05 -0700 (PDT)
X-Gm-Message-State: AOAM533Ob/pTtI5Q/llsAv3t8pxOPQKTHeweZYdJiqAKLRaQfplpvpeX
 apQf0ef1eK0Mw5NjOksOOG+n+FpSZC6+fjI0b7Q=
X-Google-Smtp-Source: ABdhPJxcOne9J6k2uSSdvrG1nv5oauqkwR8eXbwGP2aDAtIw8xAZJ0g2yOgPrI4Msb6/USk4YQRzGktzDr6eUs1YRf8=
X-Received: by 2002:adf:f7c5:: with SMTP id a5mr28307602wrq.99.1628075945279; 
 Wed, 04 Aug 2021 04:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
 <20210803155556.GD32663@hoboy.vegasvil.org>
 <20210803161434.GE32663@hoboy.vegasvil.org>
 <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
 <CO1PR11MB50892EAF3C871F6934B85852D6F09@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com>
In-Reply-To: <CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Aug 2021 13:18:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2=pLt9iwE1xw5yhk=DA_i5HLsf5q94GQ2BCG48rS45jQ@mail.gmail.com>
Message-ID: <CAK8P3a2=pLt9iwE1xw5yhk=DA_i5HLsf5q94GQ2BCG48rS45jQ@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
X-Provags-ID: V03:K1:eHziICPhYSH8u3beHmI+SbEkcXbc72PRE3PaxV/TSxjPiE5/B9e
 h/nNq8ehGpebkxuSfVG2VgIwnOshQBAyH6A9DOBKcTjTNod32c3aml5mz03ovGrnXyWf1RR
 6V2o2A7PxKtOoaOe0xieB+bjk2xFFBmUCnKgedrfoXPxqZDcr2LoIo6PHgyawaKbNxKCEsd
 yGU3e0+dH3/OnjePNqnZQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BC987RZGd9E=:2pUufVqy1bF0pQcS593j8g
 APS5M82qMgIxu6jjQ3it1nkS2K5Z2mm9g5N+e/sF8Tf2iDnAAxCVFSzihYXEnpZVEKSHMSnpR
 KwfQF8da1p+eF5Z+W/knbfEjqIqb5UrGM2y7rvq7JqVY94FhT7N4XAlHYmNdydraHHr6iVCG4
 VrJ76+nclSKKCsFeCEyzS4jzuyc0r8lq3sJwP/BjWaRRjUWt+H3lZf6yUhM9r5CDyf8pQpO+j
 MezEMMu78SLYy2wjfTYftalli/TskAvAYLxIFiYvElmrQm9DMkzrlEFAxjlxznssO2Nxv59hP
 8t+kuOxO1ue/OyQJ2+YbsHzr9iKfW9D5MNkwX04C8E97mTSSV0c/KrjUaqDzpVYzEiHT1+O+i
 yya26ICdGe0aOh4SZ/8ZxbYjYCOSXWzB3x8WvUBX4I0HNf7AUmtInimZW/OXL3ss8UQwKsyFr
 q+SQQxCNX4qtys8LUN8RvW/z3qEt2ZXorolwNovF05lvh6lfvJlHTgqpx2iIxIegO2fz91CoQ
 JXRpJ0lsApJ07rJC9FHNyzC7fobh0/sQyTOflBwAJALfgOoE3MWYnxu52hyhoKcC5en/QaCZ+
 yEWvMZ2hUZJ0HzTDtEGIuFoS43TevF6JprYN5mtQ8Xdc7YvcEyZcD/7uIbeVdGxsAwV8w1VOT
 n9ngyWjMPuJY+U/QrcFdSdmmX4qOUJdm9E56kWvN/kxEglF+KlD3jktRI4gzdh67Ml1O1Fkwp
 Uy1BXMm+e4m0Jf9icinljxFZidOeDTurErrUQkzBadLTcu7LMz6UCLCSG9BeVfo26v6VGNgIU
 Wsm+Ud/8x1XyFx3JhUbvZg2eUakOcUktJhf/IYWncDxuhXZ28VqXh1hNwQpemjkDnKxcUc73v
 jYOgygvPcVehAE/3x6OnC+CdczURjWCYXTCKgWaqOaqOGuJzY1vM43OMliyhjtdbt3mfE7IHG
 ceqqV5JwcxOCXhn1XBsZjG26rzaol0lY2Gy4+ZXl4+CALWO3+h87l
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Yangbo Lu <yangbo.lu@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 3, 2021 at 8:27 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Aug 3, 2021 at 7:19 PM Keller, Jacob E <jacob.e.keller@intel.com> wrote:
> > > On Tue, Aug 3, 2021 at 6:14 PM Richard Cochran <richardcochran@gmail.com> wrote:
>
> > There is an alternative solution to fixing the imply keyword:
> >
> > Make the drivers use it properly by *actually* conditionally enabling the feature only when IS_REACHABLE, i.e. fix ice so that it uses IS_REACHABLE instead of IS_ENABLED, and so that its stub implementation in ice_ptp.h actually just silently does nothing but returns 0 to tell the rest of the driver things are fine.
>
> I would consider IS_REACHABLE() part of the problem, not the solution, it makes
> things magically build, but then surprises users at runtime when they do not get
> the intended behavior.

Case in point: two patches from Yangbo Lu that call into the ptp core
from built-in
network code look like they could never have worked with CONFIG_PTP_1588_CLOCK,
but did not cause a link failure because of the IS_REACHABLE() check, see
commit d7c088265588 ("net: socket: support hardware timestamp conversion to
PHC bound") and c156174a6707 ("ethtool: add a new command for getting PHC
virtual clocks").

I found that by testing my patch that turns the IS_REACHABLE() back into
IS_ENABLED() and got

aarch64-linux-ld: net/socket.o: in function `__sock_recv_timestamp':
socket.c:(.text+0x1f20): undefined reference to `ptp_convert_timestamp'
aarch64-linux-ld: net/ethtool/common.o: in function `ethtool_get_phc_vclocks':
common.c:(.text+0x35c): undefined reference to `ptp_get_vclocks_index'

I added a workaround to my patch now to keep it working as before, but this
needs to be fixed properly. The easiest way would be to no longer support
modular PTP at all as Richard would like to do anyway, but I have not
attempted other fixes.

       Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
