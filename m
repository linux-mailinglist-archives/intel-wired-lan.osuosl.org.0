Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE31120CA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 19:03:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9ED46850E1;
	Thu,  2 May 2019 17:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hUkgEs4f1__j; Thu,  2 May 2019 17:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9614685184;
	Thu,  2 May 2019 17:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 039D61BF471
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 17:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3DB684ECD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 17:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7ubjUdA3-ZD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 17:03:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
 [209.85.166.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4618484DD4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 17:03:35 +0000 (UTC)
Received: by mail-io1-f53.google.com with SMTP id v9so2798064iol.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 May 2019 10:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LUiMncgAwtaWZCSEj/35h4lgUlhcfQV0foFT/AHquDY=;
 b=DyXXNWeD7vh/snUyFgfiILnsJ4fdLsazUl9wToiOVlna2UuoQRo6FctvgvRYNHF7sX
 r0bf64Fug3CV5QUm9+Yu4iedlhFkVCJ1JgS7rnMAxQVpG51U1aQm1eACsF8k475Hq5te
 CiH3r+pGqeBB89r0UKwAJQfkyarzLQodbQtkJd7yuGz8/z9ZfNIK82EQ6iFa/S7KwxdD
 OOLVyhiAINbg/TnzTRs+EMJT7FrxHC/d/UPV29JxH/Fs7eSWIcsKluK/JUDDGqPGUbq6
 7l4YZXYCFc+ecUT6t21u/7+VEbtGnt17NWVFJtTXIiVVPhRp1zpaQxt1i7X1H89atnhN
 WjMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LUiMncgAwtaWZCSEj/35h4lgUlhcfQV0foFT/AHquDY=;
 b=gP2pYWaFiT727BHwGNMW0BdzjS/l9vplmP/40oNgEnl+p9oA7g8PMIWhhaN0tQ60vh
 StYqUYpE9AY+gg53vMML+3a95RifHd0LSaZuYaT+tT4Z7AtKeMaiQki5qgkagMGDamy0
 rnoVvUF/1Aaju9Hk5OyNxJMFzNo4PulmB19HnF/+TLCApE5zn2lAfgUY3C1Ffj4EqnHR
 hauT1eTJWjNjavMVuHvePP5HneZEe6dwqQtUz1VMhHVmY1wfjHtjKg23UjZOEnY8vMWC
 d7eCbGPv/yej8aGjqTYToN/Y0QqwHTT1sPIiVzLN5oP8MUKXjwL4XEMfJaqpO2I58Mfa
 0+Iw==
X-Gm-Message-State: APjAAAVOj/l4cygoLH7zgm/6S1XOX/MbcG9xp5QGdpmGm2y2HHQdZtG/
 oyIfgd5EYMTeV/Abs30L2k/nJWm7jtXck+9Ozas=
X-Google-Smtp-Source: APXvYqyJOGqY1Zb1AUWAAc4tgreWZxWaR2i9c+3SX2R1SOEyGhJM6QEWw8PlJGcHP/t79OcrfNl9Yl7UrzED3KE103E=
X-Received: by 2002:a6b:93d7:: with SMTP id v206mr1747447iod.200.1556816614363; 
 Thu, 02 May 2019 10:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190501205215.ptoi2czhklte5jbm@csclub.uwaterloo.ca>
 <CAKgT0UczVvREiXwde6yJ8_i9RT2z7FhenEutXJKW8AmDypn_0g@mail.gmail.com>
 <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
In-Reply-To: <20190502151140.gf5ugodqamtdd5tz@csclub.uwaterloo.ca>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 2 May 2019 10:03:23 -0700
Message-ID: <CAKgT0Uc_OUAcPfRe6yCSwpYXCXomOXKG2Yvy9c1_1RJn-7Cb5g@mail.gmail.com>
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

On Thu, May 2, 2019 at 8:11 AM Lennart Sorensen
<lsorense@csclub.uwaterloo.ca> wrote:
>
> On Wed, May 01, 2019 at 03:52:57PM -0700, Alexander Duyck wrote:
> > I'm not sure how RSS will do much for you here. Basically you only
> > have the source IP address as your only source of entropy when it
> > comes to RSS since the destination IP should always be the same if you
> > are performing a server role and terminating packets on the local
> > system and as far as the ports in your example you seem to only be
> > using 4500 for both the source and the destination.
>
> I have thousands of IPsec clients connecting.  Simply treating them as
> normal UDP packets would work.  The IP address is different, and often
> the port too.

Thanks for the clarification. I just wanted to verify that I know we
have had similar complaints in the past and it turns out those were
only using one set of IP addresses.

> > In your testing are you only looking at a point to point connection
> > between two systems, or do you have multiple systems accessing the
> > system you are testing? I ask as the only way this should do any
> > traffic spreading via RSS would be if the source IPs are different and
> > that would require multiple client systems accessing the server.
>
> I tried changing the client IP address and the RSS hash key.  It never
> changed to another queue.  Something is broken.

Okay, so if changing the RSS hash key has not effect then it is likely
not being used.

> > In the case of other encapsulation types over UDP, such as VXLAN, I
> > know that a hash value is stored in the UDP source port location
> > instead of the true source port number. This allows the RSS hashing to
> > occur on this extra information which would allow for a greater
> > diversity in hash results. Depending on how you are generating the ESP
> > encapsulation you might look at seeing if it would be possible to have
> > a hash on the inner data used as the UDP source port in the outgoing
> > packets. This would help to resolve this sort of issue.
>
> Well it works on every other network card except this one.  Every other
> intel card in the past we have used had no problem doing this right.

The question is what is different about this card, and I don't have an
immediate answer so we would need to do some investigation.

> You want all the packets for a given ipsec tunnel to go to the same queue.
> That is not a problem here.  What you don't want is every ipsec packet
> from everyone going to the same queue (always queue 0).  So simply
> treating them as UDP packets with a source and destination IP and port
> would work perfectly fine.  The X722 isn't doing that.  It is always
> assigning a hash value of 0 to these packets.

You had stated in your earlier email that "Other UDP packets are
fine". Perhaps we need to do some further isolation to identify why
the ESP over UDP packets are not being hashed on while other UDP
packets are.

Would it be possible to provide a couple of raw Ethernet frames
instead of IP packets for us to examine? I noticed the two packets you
sent earlier didn't start until the IP header. One possibility would
be that if we had any extra outer headers or trailers added to the
packet that could possibly cause issues since that might either make
the packet not parsable or possibly flag it as some sort of length
error when the size of the packet doesn't match what is reported in
the headers.

One other thing we may want to look at doing is trying to identify the
particular part of the packets that might be causing the hash to not
be generated. One way to do that would be to use something like
netperf to generate packets and send them toward your test system.
Something like the command line below could be used to send packets
that should be similar to the ones you provided earlier:
     netperf -H <target IP> -t UDP_STREAM -N -- -P 4500,4500 -m 132

If the packets generated by netperf were not hashed that would tell us
then it may be some sort of issue with how UDP packets are being
parsed, and from there we could narrow things down by modifying port
numbers and changing packet sizes. If that does get hashed then we
need to start looking outside of the IP/UDP header parsing for
possible issues since there is likely something else causing the
issue.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
