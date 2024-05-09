Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 577098C109D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2024 15:46:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 003B260EC5;
	Thu,  9 May 2024 13:46:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gted995v2h5j; Thu,  9 May 2024 13:46:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B24EF60EF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715262415;
	bh=Q0tElm7XwG+N39f631ELOtsvWEr/mDeKYXIa4/jl3ww=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FC0y4SFfHmJf5syu3l2rgcqcF43/SiUxvG6VXZO8n8m0+P5lAgsLB7BM9w2khsDAT
	 B7GlwzPcO9w3x5Ij1Mp5szfNBc7CnwOTv9qxPc97XIsZUV+s1N81NycXCAsqP3XLvo
	 8c9g5go0iTWsZY6CtvT165WLkAeHWzJcqttZKXcAsUNbn6jca0IgVzB1ZewylE9cqB
	 UGIQJp2oGpiRF40SnQrnFpA1cA5tzvHG3Vy+BuW9y0Ms/ajhpenHrIq+1ccx4wUmUY
	 hwsy8QhrOTvQlhnHcy7V67o+LcL8yI9KcQsF1oX0BYFkvyQM3p23tE/LP83OHCv/fZ
	 f3Mw+hCl9PNRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B24EF60EF9;
	Thu,  9 May 2024 13:46:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D2C01BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 13:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18BE840437
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 13:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1xL1KGjZv8T7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 13:46:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 03372400F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03372400F5
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03372400F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 13:46:51 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1s546c-00F35j-B4; Thu, 09 May 2024 15:46:42 +0200
Date: Thu, 9 May 2024 15:46:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Message-ID: <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
References: <20240503101836.32755-1-en-wei.wu@canonical.com>
 <83a2c15e-12ef-4a33-a1f1-8801acb78724@lunn.ch>
 <514e990b-50c6-419b-96f2-09c3d04a2fda@intel.com>
 <334396b5-0acc-43f7-b046-30bcdab1b6fb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <334396b5-0acc-43f7-b046-30bcdab1b6fb@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=Q0tElm7XwG+N39f631ELOtsvWEr/mDeKYXIa4/jl3ww=; b=P7
 6YhQQOBsBpy/f8ypdPm5r5D2m+pnFqFVx3gYeC38JAaGlYmD/lJuiwk3+JepsXqSHvc5WUVnlRW4U
 Sm6lUp0Ncysy0jNEdrkUDDUPXcFlW2zNkbApAfTmMKpfTgrvssJ4A5WM+IHDrUhVU1+SlSqr+rlP2
 /XvjQgIc/NfGydQ=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=P76YhQQO
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Cc: Sasha Neftin <sasha.neftin@intel.com>,
 "naamax.meir" <naamax.meir@linux.intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 Ricky Wu <en-wei.wu@canonical.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 "Avivi, Amir" <amir.avivi@intel.com>, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 09, 2024 at 12:13:27PM +0300, Ruinskiy, Dima wrote:
> On 08/05/2024 8:05, Sasha Neftin wrote:
> > On 07/05/2024 15:31, Andrew Lunn wrote:
> > > On Fri, May 03, 2024 at 06:18:36PM +0800, Ricky Wu wrote:
> > > > As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
> > > > Intel I219-LM reports link up -> link down -> link up after hot-plugging
> > > > the Ethernet cable.
> > > 
> > > Please could you quote some parts of 802.3 which state this is a
> > > problem. How is this breaking the standard.
> > > 
> > >     Andrew
> > 
> > In I219-* parts used LSI PHY. This PHY is compliant with the 802.3 IEEE
> > standard if I recall correctly. Auto-negotiation and link establishment
> > are processed following the IEEE standard and could vary from platform
> > to platform but are not violent to the IEEE standard.
> > 
> > En-Wei, My recommendation is not to accept these patches. If you think
> > there is a HW/PHY problem - open a ticket on Intel PAE.
> > 
> > Sasha
> 
> I concur. I am wary of changing the behavior of some driver fundamentals, to
> satisfy a particular validation/certification flow, if there is no real
> functionality problem. It can open a big Pandora box.
> 
> Checking the Bugzilla report again, I am not sure we understand the issue
> fully:
> 
> [  143.141006] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 1000 Mbps Half
> Duplex, Flow Control: None
> [  143.144878] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Down
> [  146.838980] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: None
> 
> This looks like a very quick link "flap", following by proper link
> establishment ~3.7 seconds later. These ~3.7 seconds are in line of what
> link auto-negotiation would take (auto-negotiation is the default mode for
> this driver).

That actually seems slow. It is normally a little over 1 second. I
forget the exact number. But is the PHY being polled once a second,
rather than being interrupt driven?

> The first print (1000 Mbps Half Duplex) actually makes no
> sense - it cannot be real link status since 1000/Half is not a supported
> speed.

It would be interesting to see what the link partner sees. What does
it think the I219-LM is advertising? Is it advertising 1000BaseT_Half?
But why would auto-neg resolve to that if 1000BaseT_Full is available?

> So it seems to me that actually the first "link up" is an
> incorrect/incomplete/premature reading, not the "link down".

Agreed. Root cause this, which looks like a real problem, rather than
apply a band-aid for a test system.

      Andrew
