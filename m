Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF3B12103
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 19:28:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2599284312;
	Thu,  2 May 2019 17:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lVfBiPtUYkIy; Thu,  2 May 2019 17:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 659A3842DD;
	Thu,  2 May 2019 17:28:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77CFA1BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 17:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73E0287C10
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 17:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfTIlgzPb2S8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 17:28:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
 [209.85.166.178])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 66F4687C0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 17:28:34 +0000 (UTC)
Received: by mail-it1-f178.google.com with SMTP id l10so4730989iti.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 May 2019 10:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=moVcKkEKSYEXqEJYj8uHnD32qcLSsarVPurF7huvYtM=;
 b=MC/tcy1cN3TDKMVLMT5J51p8l9MqlyF2MFZmXCk9MfkbgiVDDo3l5iwPwx8EsAeJGJ
 T91L1jGqaaqLn0JvhP9hPuB4cvKjUZFsZE/GdmWXulagz4UAMkm/1mWXmjG7mqdTIwEc
 6dn/mwRg/VvzWMhO0snGceL7FWRMB7YtABB8//Vg7aKpNYJctIEk8JdTW5ulYArl/JK3
 Tqq4oNbwE3yTyC0/QIKJvXXxUNh/F86JZ1T5m1f7br0hbjoAnZUyuogWgUpVPgMtwl/k
 WsRewDvtF8h7E0MFcMm9Bokwd7f7vyTRbVrI5ByaqePdm38c+uF7o21n9Mi8gAeM7WjN
 WyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=moVcKkEKSYEXqEJYj8uHnD32qcLSsarVPurF7huvYtM=;
 b=LkPwHah7r7lVplCwoEGg9ZLnu9hTozzuh0k14b1QPwdPJScQOvuOpBIna+PRzbOkfa
 cGXt4VBDBzGtV3YU1G8s9cxsIP4iYKkNs7FvquEyvHap41LWJEhg9YvQcyEt6vhdIVX7
 RrCaTpL2WFTD1vSwRInnjdtyximJzuiugEPu1SW2UIc5q8pb1eYyoPTw2oRy01NJx0VB
 cSqLqWmhw0TVPtYsAvX4E3ZjqLJ0VK89RlA/+l0QmRqHciVfq59Y1gTQ75cQIdZpkuso
 5HUJzRnxY/24KR0nG+Dln2BwHY1CqkTWQFjzNLYA7sikWyEAAigdEZeHq9ItImWHfkqQ
 Yt/A==
X-Gm-Message-State: APjAAAW8Dmrbf8ePdDb0LO5/dykfbx5WHSnsgX+PLXbC0IXwGHGEETwJ
 3EEHRzvLdjIunkUbSb8xtpfIP/AYeoo62sxLdgg=
X-Google-Smtp-Source: APXvYqyBgCUCPxmQT8pdL1wHl4aTw3YNlty9YQh98zEEa+6w5GuEf7oJJ4Qbp1aAcuG6yFsm7l6MIpvO+TrM70fxpqg=
X-Received: by 2002:a24:ce44:: with SMTP id v65mr3472198itg.146.1556818113514; 
 Thu, 02 May 2019 10:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
 <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
 <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
 <CAKgT0Uc_OUAcPfRe6yCSwpYXCXomOXKG2Yvy9c1_1RJn-7Cb5g@mail.gmail.com>
 <20190502171636.3yquioe3gcwsxlus@csclub.uwaterloo.ca>
In-Reply-To: <20190502171636.3yquioe3gcwsxlus@csclub.uwaterloo.ca>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 2 May 2019 10:28:22 -0700
Message-ID: <CAKgT0Ufk8LXMb9vVWfvgbjbQFKAuenncf95pfkA0P1t-3+Ni_g@mail.gmail.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Subject: Re: [Intel-wired-lan] i40e X722 RSS problem with NAT-Traversal
 IPsec packets
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 2, 2019 at 10:16 AM Lennart Sorensen
<lsorense@csclub.uwaterloo.ca> wrote:
>
> On Thu, May 02, 2019 at 10:03:23AM -0700, Alexander Duyck wrote:
> > On Thu, May 2, 2019 at 8:11 AM Lennart Sorensen
> > <lsorense@csclub.uwaterloo.ca> wrote:
> > >
> > > On Wed, May 01, 2019 at 03:52:57PM -0700, Alexander Duyck wrote:
> > > > I'm not sure how RSS will do much for you here. Basically you only
> > > > have the source IP address as your only source of entropy when it
> > > > comes to RSS since the destination IP should always be the same if you
> > > > are performing a server role and terminating packets on the local
> > > > system and as far as the ports in your example you seem to only be
> > > > using 4500 for both the source and the destination.
> > >
> > > I have thousands of IPsec clients connecting.  Simply treating them as
> > > normal UDP packets would work.  The IP address is different, and often
> > > the port too.
> >
> > Thanks for the clarification. I just wanted to verify that I know we
> > have had similar complaints in the past and it turns out those were
> > only using one set of IP addresses.
> >
> > > > In your testing are you only looking at a point to point connection
> > > > between two systems, or do you have multiple systems accessing the
> > > > system you are testing? I ask as the only way this should do any
> > > > traffic spreading via RSS would be if the source IPs are different and
> > > > that would require multiple client systems accessing the server.
> > >
> > > I tried changing the client IP address and the RSS hash key.  It never
> > > changed to another queue.  Something is broken.
> >
> > Okay, so if changing the RSS hash key has not effect then it is likely
> > not being used.
> >
> > > > In the case of other encapsulation types over UDP, such as VXLAN, I
> > > > know that a hash value is stored in the UDP source port location
> > > > instead of the true source port number. This allows the RSS hashing to
> > > > occur on this extra information which would allow for a greater
> > > > diversity in hash results. Depending on how you are generating the ESP
> > > > encapsulation you might look at seeing if it would be possible to have
> > > > a hash on the inner data used as the UDP source port in the outgoing
> > > > packets. This would help to resolve this sort of issue.
> > >
> > > Well it works on every other network card except this one.  Every other
> > > intel card in the past we have used had no problem doing this right.
> >
> > The question is what is different about this card, and I don't have an
> > immediate answer so we would need to do some investigation.
>
> I think the firmware has a bug. :)  My first email has my speculation
> of where the bug could be.

The thing is the firmware has to have some idea what it is dealing
with. As far as I know I don't believe port number 4500 is being
auto-flagged as any special type. In the case of the other tunnel
types such as VXLAN, NVGRE, and GENEVE the driver has to set a port
value indicating that the port will receive special handling. If it
isn't added via i40e_udp_tunnel_add then the firmware/hardware
shouldn't know anything about the tunnel.

> > You had stated in your earlier email that "Other UDP packets are
> > fine". Perhaps we need to do some further isolation to identify why
> > the ESP over UDP packets are not being hashed on while other UDP
> > packets are.
>
> Well they are IP packets encapsulated in UDP, while other UDP packets
> are not IP packets encapsulated in UDP, and there is special handling
> for some IP types inside UDP on this card, which is an unusual feature.

It really isn't that unusual of a feature. Many NICs have this
functionality now. In order to support it we usually have to populate
the port values for the device so the internal parser knows to expect
them.

> For the supported IP in UDP types, it actually is supposed to use the IP
> packet inside the UDP packet to generate the RSS value, so it pretends it
> wasn't even encapsulated.  But it does not handle ESP in UDP specifically,
> and hence I suspect that is the problem.  I think it tries to handle the
> IP in UDP and since it doesn't support ESP in UDP it fails to fall back
> to using the original UDP packet for the RSS value.  That would at least
> explain why regular UDP packets that don't contain an IP packet inside
> are fine, but this particular type of packet is being handled wrong.

That is one of the reasons I suggested testing with netperf as I did
below. Basically if we construct all the outer headers the same as
your packet we can see if some specific combination is causing a
parsing issue. I tested the netperf approach on an XL710 and didn't
see any issues, but perhaps the XL722 is doing something differently.

> > Would it be possible to provide a couple of raw Ethernet frames
> > instead of IP packets for us to examine? I noticed the two packets you
> > sent earlier didn't start until the IP header. One possibility would
> > be that if we had any extra outer headers or trailers added to the
> > packet that could possibly cause issues since that might either make
> > the packet not parsable or possibly flag it as some sort of length
> > error when the size of the packet doesn't match what is reported in
> > the headers.
>
> Oh did I forget the option for that?  I can try and capture some today
> with the full headers.

Thanks. If nothing else it should make it possible to just use
tcpreplay if needed to reproduce the issue.

> > One other thing we may want to look at doing is trying to identify the
> > particular part of the packets that might be causing the hash to not
> > be generated. One way to do that would be to use something like
> > netperf to generate packets and send them toward your test system.
> > Something like the command line below could be used to send packets
> > that should be similar to the ones you provided earlier:
> >      netperf -H <target IP> -t UDP_STREAM -N -- -P 4500,4500 -m 132
> >
> > If the packets generated by netperf were not hashed that would tell us
> > then it may be some sort of issue with how UDP packets are being
> > parsed, and from there we could narrow things down by modifying port
> > numbers and changing packet sizes. If that does get hashed then we
> > need to start looking outside of the IP/UDP header parsing for
> > possible issues since there is likely something else causing the
> > issue.
>
> I will see what I can do with that.
>
> --
> Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
