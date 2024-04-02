Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA30C895750
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 16:47:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4592C40886;
	Tue,  2 Apr 2024 14:47:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k1d4T7hgij5F; Tue,  2 Apr 2024 14:47:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 941E040868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712069233;
	bh=uGpqUoHSVCC5gRmLbiguK1uZTk9mnHjL1ZF9cg88S9E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DqWDYUOiwC1rRv94weMcs9O67pFAl8X3ikZLKsiu4agG4si0ZbIVpmu+VGrrCifTZ
	 v9er2w+yCi/vcBbnQEsFerDzHLbxLt89wB5yLZxPKyiZ6gM+cRaGt6VbXWqZYhgtIO
	 +/MiyciOGw4yocM8rCmEipvz9GjnKEm4r9gi74akwHpHLQxvwEpD7dvVpuqi74Ytgp
	 XqN9S8+b8wvYL+foG24wzTBtD82IVhZZkqjNAmB+JZF1SXnnSN2wA10UG0FPouGKGV
	 EwmOBnWeaYAXNiBuN/Qx+cu/ut4SH+wfemkgKNygg94rGVgxEU4mIn0zUavNgtptzO
	 AMN9ur0EIv7xQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 941E040868;
	Tue,  2 Apr 2024 14:47:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B513C1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A076381448
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPAl1UpoAdpf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 14:47:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 90AA781395
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90AA781395
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90AA781395
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 14:47:10 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rrfPa-00BxIj-GK; Tue, 02 Apr 2024 16:46:54 +0200
Date: Tue, 2 Apr 2024 16:46:54 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=uGpqUoHSVCC5gRmLbiguK1uZTk9mnHjL1ZF9cg88S9E=; b=xUa2OvTenT3IZEgiEX95IO1VVf
 tcBk4H+OZPh5247FnsxvswV4+n4LzkmWWKNc9JDSQkjycnaeV7GeF8UW+9q7HE6QE1oSmfxHhnT13
 vImRyj/5zRYqSDCCKVtqClJTwX/dR0S8AHRtsVEVAtcjfecIg20pKDLMmmr808WmENGw=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=xUa2OvTe
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 02, 2024 at 01:38:59PM +0200, Wojciech Drewek wrote:
> 
> 
> On 30.03.2024 22:57, Andrew Lunn wrote:
> > On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
> >> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
> >> module implementation to support new attributes that will allow user
> >> to change maximum power. Rename structures and functions to be more
> >> generic. Introduce an example of the new API in ice driver.
> >>
> >> Ethtool examples:
> >> $ ethtool --show-module enp1s0f0np0
> >> Module parameters for enp1s0f0np0:
> >> power-min-allowed: 1000 mW
> >> power-max-allowed: 3000 mW
> >> power-max-set: 1500 mW
> >>
> >> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> > 
> > We have had a device tree property for a long time:
> > 
> >   maximum-power-milliwatt:
> >     minimum: 1000
> >     default: 1000
> >     description:
> >       Maximum module power consumption Specifies the maximum power consumption
> >       allowable by a module in the slot, in milli-Watts. Presently, modules can
> >       be up to 1W, 1.5W or 2W.
> > 
> > Could you flip the name around to be consistent with DT?
> 
> Yea, I'm open to any name suggestion although I don't like the unit in the parameter name :) 

That is a DT thing. Helps make the units of an ABI obvious. However,
milliwatts is pretty standard with the kernel of user APIs, e.g. all
hwmon calls use milliwatts.

> >> minimum-power-allowed: 1000 mW
> >> maximum-power-allowed: 3000 mW
> >> maximum-power-set: 1500 mW
> > 
> > Also, what does minimum-power-allowed actually tell us? Do you imagine
> > it will ever be below 1W because of bad board design? Do you have a
> > bad board design which does not allow 1W?
> 
> Yes. in case of QSFP we don't support 1W, 1.5W is the minimum.

So if i plug in a 1W QSFP device, it will let the magic smoke out
because it is force fed 1.5W?

Looking at
https://www.optcore.net/wp-content/uploads/2017/04/QSFP-MSA.pdf table
7 it indicates different power budget classifications. Power level 1
is a Maximum power of 1.5W. So does your parameter represent this?  It
is the minimum maximum power? And your other parameter is the maximum
maximum power?

I agree with Jakub here, there needs to be documentation added
explaining in detail what these parameters mean, and ideally,
references to the specification.

Does

$ ethtool --set-module enp1s0f0np0 power-max-set 4000

actually talk to the SFP module and tell it the maximum power it can
consume. So in this case, it is not the cage, but the module?

Or is it talking to some entity which is managing the overall power
consumption of a number of cages, and asking it to allocate a maximum
of 4W to this cage. It might return an error message saying there is
no power budget left?

Or is it doing both?

Sorry to be picky, but at some point, somebody is going to want to
implement this in the Linux SFP driver, and we want a consistent
implementation cross different implementations.

	Andrew
