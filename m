Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38312268901
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Sep 2020 12:11:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CE2A8698B;
	Mon, 14 Sep 2020 10:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7jGVB0Yb9Iz; Mon, 14 Sep 2020 10:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD3868694B;
	Mon, 14 Sep 2020 10:11:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B483C1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 10:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF3BA85C52
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 10:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id He3oI_6Z1h_E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Sep 2020 10:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AB58859D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 10:11:01 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id b124so12188949pfg.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 03:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CcIK7JhnkbSO1lEJrhfie3yPWToQk+GRSxeB40Z4jYA=;
 b=dKFwHbMoItahTu8u/+Q8vhjORQMv0KHOMW9jgTla8pIUw/YyOYArRTgnpT+dBj0Wg4
 FxCE8/cGqUdP4OgB7PQUIBiA/P/uEY/ev8mZyk6jCSDGm/yGTwClzwH6ayoXQqya0xGv
 vrb37X7CiTIb5rmdnoLObPnTllT0xbvWTsymjqS1TcnCLNrrWSnUOWSTHvAiyyoS9iXq
 eleUhW9elApmcgEi4yZiI21/oSnyBeJY/wvZy9Q5R/yq4kPDHtheJ8sUcXE4rzNBewo8
 FnzTjPq3Ey2cBfbaRkppHwL+cbYkrRZ/zS8Qm41Pm7vORc2DMICG9E178RmaF+/xxd3W
 A67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CcIK7JhnkbSO1lEJrhfie3yPWToQk+GRSxeB40Z4jYA=;
 b=dvbExSTYIyRgGEfaoSu8+9UtvFEelmT13+OLzOv1fOL6jlHWFV3NmrRa9BCulNBXU8
 hHeMZoeoFwJroV8wMcVdQZVf0gdRdAqzYEyRkKzArHmzD0HofwgCnQtxO1E00fgMMxM+
 iOUHz6pCGKdCCycIAHflchx+a8mG3ezAhQ/ZE5QwnzAnFpQG+jHYdUkhBU3EPBR+c/He
 zRxCO8SaRy0fgiciJp+c0NYEv7CsgF4ccm4Jq5A2bEU1Ouf3uHsFrTc9K77g7fcZHfi7
 XDqBdklko7db+UpqgfLJmgBDyghTv6cJJkzXpcdsjbIoF0JtdOmAwLoPnj+bpC1geUlk
 FMpw==
X-Gm-Message-State: AOAM532RTD/h+lBzl6akc4vsYnKgrw2GaD9PiBRORP4m7Yc4AGKtRtWv
 hu2LzY6D8T3mqxVph1k1ZhIjW+q32XWgbkY97Fo=
X-Google-Smtp-Source: ABdhPJzsbTCmFGP4VOI24LCpiaeUiMiOVRPcHyoDA8Gu0DlEq5mk4niGE0WkVOFw9qI6NKowaT+N86Hss7yRS8l0+vk=
X-Received: by 2002:a63:29c7:: with SMTP id
 p190mr10389274pgp.292.1600078260569; 
 Mon, 14 Sep 2020 03:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
 <20200911120519.GA9758@ranger.igk.intel.com>
 <CAJ8uoz3ctVoANjiO_nQ38YA-JoB0nQH1B4W01AZFw3iCyCC_+w@mail.gmail.com>
 <20200911131027.GA2052@ranger.igk.intel.com>
 <b28b4e93-50c2-6183-90ea-8d33902e8f21@intel.com>
 <CAKgT0UcXLi5fK3UiOpfPKu6FxJh1tH4r+_ZjCNsH=cEqHztOOg@mail.gmail.com>
In-Reply-To: <CAKgT0UcXLi5fK3UiOpfPKu6FxJh1tH4r+_ZjCNsH=cEqHztOOg@mail.gmail.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 14 Sep 2020 12:10:49 +0200
Message-ID: <CAJ8uoz2vV4b8EXwdcU7WBxsY0bnM=Lk_b789w0Ki7+8CWRk6fA@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: allow VMDQs to be used
 with AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 11, 2020 at 8:42 PM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
>
> On Fri, Sep 11, 2020 at 11:05 AM Samudrala, Sridhar
> <sridhar.samudrala@intel.com> wrote:
> >
> >
> >
> > On 9/11/2020 6:10 AM, Maciej Fijalkowski wrote:
> > > On Fri, Sep 11, 2020 at 02:29:50PM +0200, Magnus Karlsson wrote:
> > >> On Fri, Sep 11, 2020 at 2:11 PM Maciej Fijalkowski
> > >> <maciej.fijalkowski@intel.com> wrote:
> > >>>
> > >>> On Fri, Sep 11, 2020 at 02:08:26PM +0200, Magnus Karlsson wrote:
> > >>>> From: Magnus Karlsson <magnus.karlsson@intel.com>
> > >>>>
> > >>>> Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
> > >>>> reason, we only allowed main VSIs to be used with zero-copy, but
> > >>>> there is now reason to not allow VMDQs also.
> > >>>
> > >>> You meant 'to allow' I suppose. And what reason? :)
> > >>
> > >> Yes, sorry. Should be "not to allow". I was too trigger happy ;-).
> > >>
> > >> I have gotten requests from users that they want to use VMDQs in
> > >> conjunction with containers. Basically small slices of the i40e
> > >> portioned out as netdevs. Do you see any problems with using a VMDQ
> > >> iwth zero-copy?
> >
> > Today VMDQ VSIs are used when a macvlan interface is created on top of a
> > i40e PF with l2-fwd-offload on. But i don't think we can create an
> > AF_XDP zerocopy socket on top of a macvlan netdev as it doesn't support
> > ndo_bpf or ndo_xdp_xxx apis or expose hw queues directly.
> >
> > We need to expose VMDQ VSI as a native netdev that can expose its own
> > queues and support ndo_ ops in order to enable AF_XDP zerocopy on a
> > VMDQ. We talked about this approach at the recent netdev conference to
> > expose VMDQ VSI as a subdevice with its own netdev.
> >
> > https://netdevconf.info/0x14/session.html?talk-hardware-acceleration-of-container-networking-interfaces
>
> I still hold the opinion that macvlan is still the best way to go
> about addressing most of these needs. The problem with doing isolation
> as separate netdevs is the fact that east/west traffic starts to
> essentially swamp the PCIe bus on the device as you have to deal with
> broadcast/multicast replication and east/west traffic. Leaving that
> replication and east/west traffic up to software to handle while
> allowing the unicast traffic to be directed is the best way to go in
> my opinion.
>
> The problem with just spawning netdevs is that each vendor can do it
> differently and what you get varies in functionality. If anything we
> would need to come up with a standardized interface to define what
> features can be used and exposed. That was one of the motivations
> behind using macvlan. So if anything it seems like it might make more
> sense to look at extending the macvlan interface to enable offloading
> additional features to the lower level device.

Agree with this completely. This patch was not intended to "solve" the
container interface problem. This solution does not scale, is
proprietary, etc, etc. It just uses something, VMDQs,  that was put in
the i40e driver a long time ago. Do not know the history behind it,
but I am sure that Alex and Sridhar do. Anyway, what I believe you and
Jakub are saying is that this is just extending something that we all
know is a dead end, or in other words, putting lipstick on a pig ;-).

Please drop the patch.

> With that said I am not certain VMDq is even the right kind of
> interface to use for containers. I would be more interested in
> something like what we did in fm10k for macvlan offload where we used
> resource tags to identify traffic that belonged to a given interface
> and just dedicated that to it rather than queues and interrupts. The
> problem with dedicating queues and interrupts is that those are a
> limited resource so scaling will become an issue when you get to any
> decent count of containers.
>
> - Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
