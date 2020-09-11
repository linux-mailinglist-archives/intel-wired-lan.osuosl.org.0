Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D736826685A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 20:42:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6984187ACE;
	Fri, 11 Sep 2020 18:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I9bSR748sRWV; Fri, 11 Sep 2020 18:42:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70E3C87B61;
	Fri, 11 Sep 2020 18:42:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 057CB1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 18:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F187387AD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 18:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s7lcnmcqzy3B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 18:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3924287ACE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 18:42:10 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id z13so12105446iom.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 11:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DNQ+tlQwz0p357/D44qBWbxw+sJO4ObWWALNDOh20qM=;
 b=iLEStBFnn7JbyUJb6xKvSfYADLwddBVIsvJeGqviE0oMnA3HI4dVoifSMpnm3bi5dV
 hhz4dr5KwGLaoYzbqh+qHxdogon5Ox73+ZbZkRA623fmjkBvN5I/Aj+txR/1GOBUZ8oY
 sRfdhqKfXjSeGh7k2MgHdwqPbHi1oSgnhN4PO1+KE5y+IWIqfbdwlMHgezYB4zg7osuC
 Kdp5JV7CxLHQoCbu+ZHMDHt8e0HLVmMRUiuXG/JnhmejP/lY6eQ+VFNJBPT3Pa7Blej3
 2sXTj+Kr1G8i5pGajH1sDN6pFkf12ya9i10NJtcciHqSiZ7mM8SFJUZKNV25zbZBoz6W
 24Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DNQ+tlQwz0p357/D44qBWbxw+sJO4ObWWALNDOh20qM=;
 b=DvZzL2MQEe+3Z6wPwTgemIPxFn1/J1xoQFhZSgYtzOsD2aHMwO5vkKTvAfGJxkwDpS
 8oFu73U389ixBUKNeGe5edlvez+zHa7UqSklfX5yZIlVuvg0LCGMwdMLaFydby3hpcME
 ouPFDKR9YKgE4b62hwrNQ2qOyk2VELoKw2NSe1IXeyqL8+/iYIPoMhjUOCQMKWBDu5zB
 bfWoAfjZY9M+MWinbVrdC1UQ2+xPyAEhpwXvHRsrTxzt/q+Cky+1XLIgvSv8pd0QbGgy
 G1h20rTq1uvsIjplxyi/HWySdfmjRGa7WUce0xeyOHW91oXZ+bsTp3+z/BdDETUTIvN8
 xS+g==
X-Gm-Message-State: AOAM530tv3dt4GFw+wLY8OoMW5jGG1IUVvTjcAtGp804+PhDG1QW/DiF
 pIpKwP4O1CNs0+k3UlMuqU15RKxNWqgJEIpeo20=
X-Google-Smtp-Source: ABdhPJyuceHMg35hmqdr4BcmZP0aFCq4o0K+BSapp7kEUdxXR76kVvfj/H0x3rPvu6vMJb9SBVSrVf3yBFjabI8wYn0=
X-Received: by 2002:a5e:8f4c:: with SMTP id x12mr2870343iop.38.1599849729284; 
 Fri, 11 Sep 2020 11:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <1599826106-19020-1-git-send-email-magnus.karlsson@gmail.com>
 <20200911120519.GA9758@ranger.igk.intel.com>
 <CAJ8uoz3ctVoANjiO_nQ38YA-JoB0nQH1B4W01AZFw3iCyCC_+w@mail.gmail.com>
 <20200911131027.GA2052@ranger.igk.intel.com>
 <b28b4e93-50c2-6183-90ea-8d33902e8f21@intel.com>
In-Reply-To: <b28b4e93-50c2-6183-90ea-8d33902e8f21@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 11 Sep 2020 11:41:58 -0700
Message-ID: <CAKgT0UcXLi5fK3UiOpfPKu6FxJh1tH4r+_ZjCNsH=cEqHztOOg@mail.gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
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
 Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 11, 2020 at 11:05 AM Samudrala, Sridhar
<sridhar.samudrala@intel.com> wrote:
>
>
>
> On 9/11/2020 6:10 AM, Maciej Fijalkowski wrote:
> > On Fri, Sep 11, 2020 at 02:29:50PM +0200, Magnus Karlsson wrote:
> >> On Fri, Sep 11, 2020 at 2:11 PM Maciej Fijalkowski
> >> <maciej.fijalkowski@intel.com> wrote:
> >>>
> >>> On Fri, Sep 11, 2020 at 02:08:26PM +0200, Magnus Karlsson wrote:
> >>>> From: Magnus Karlsson <magnus.karlsson@intel.com>
> >>>>
> >>>> Allow VMDQs to be used with AF_XDP sockets in zero-copy mode. For some
> >>>> reason, we only allowed main VSIs to be used with zero-copy, but
> >>>> there is now reason to not allow VMDQs also.
> >>>
> >>> You meant 'to allow' I suppose. And what reason? :)
> >>
> >> Yes, sorry. Should be "not to allow". I was too trigger happy ;-).
> >>
> >> I have gotten requests from users that they want to use VMDQs in
> >> conjunction with containers. Basically small slices of the i40e
> >> portioned out as netdevs. Do you see any problems with using a VMDQ
> >> iwth zero-copy?
>
> Today VMDQ VSIs are used when a macvlan interface is created on top of a
> i40e PF with l2-fwd-offload on. But i don't think we can create an
> AF_XDP zerocopy socket on top of a macvlan netdev as it doesn't support
> ndo_bpf or ndo_xdp_xxx apis or expose hw queues directly.
>
> We need to expose VMDQ VSI as a native netdev that can expose its own
> queues and support ndo_ ops in order to enable AF_XDP zerocopy on a
> VMDQ. We talked about this approach at the recent netdev conference to
> expose VMDQ VSI as a subdevice with its own netdev.
>
> https://netdevconf.info/0x14/session.html?talk-hardware-acceleration-of-container-networking-interfaces

I still hold the opinion that macvlan is still the best way to go
about addressing most of these needs. The problem with doing isolation
as separate netdevs is the fact that east/west traffic starts to
essentially swamp the PCIe bus on the device as you have to deal with
broadcast/multicast replication and east/west traffic. Leaving that
replication and east/west traffic up to software to handle while
allowing the unicast traffic to be directed is the best way to go in
my opinion.

The problem with just spawning netdevs is that each vendor can do it
differently and what you get varies in functionality. If anything we
would need to come up with a standardized interface to define what
features can be used and exposed. That was one of the motivations
behind using macvlan. So if anything it seems like it might make more
sense to look at extending the macvlan interface to enable offloading
additional features to the lower level device.

With that said I am not certain VMDq is even the right kind of
interface to use for containers. I would be more interested in
something like what we did in fm10k for macvlan offload where we used
resource tags to identify traffic that belonged to a given interface
and just dedicated that to it rather than queues and interrupts. The
problem with dedicating queues and interrupts is that those are a
limited resource so scaling will become an issue when you get to any
decent count of containers.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
