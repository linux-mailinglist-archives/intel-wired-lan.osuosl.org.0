Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40CD89718D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:49:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F2134177E;
	Wed,  3 Apr 2024 13:49:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JapTeL2mbosz; Wed,  3 Apr 2024 13:49:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC4E741731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712152189;
	bh=p5ed33sJQnP+0D/KgfgliQpZCAocWMCLPbVfEtxjLdE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KPtwRPf8Bmf07/3kuIPuWSnzByWn4w6xWsqYdFgyUaMuuEz7k2+wc5wBGTq0QTALN
	 VEPUdbGar5DzqYZwT8BBJjJpPajVwo022CTca3D62La2MqTneGX6Pl6pZTuRlfZbO1
	 qwu2M5SoACDQ7Zm4qRAQNb1wM3LVufcsPTAle+bfnv+Qu1nW0MMejNaAwblYdC4mdr
	 THvaKyxx+qnkyHeQyA/V2dZ6mw+Eph31Di9nGO4z3FoTfTJs7nSthaGPK8ZjVPI47M
	 hOsQxB4Rxc0WFvfEY1NiPZDoVnYc3LovSgCo1fqpg28H1ZQTmkMst0nIfU7bAsc1Wj
	 SrpSeSPgZVGBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC4E741731;
	Wed,  3 Apr 2024 13:49:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9640F1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8276F41772
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:49:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OIKNbRZtnT0j for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:49:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0C1641731
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0C1641731
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0C1641731
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:49:46 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rs0zh-00C57n-L0; Wed, 03 Apr 2024 15:49:37 +0200
Date: Wed, 3 Apr 2024 15:49:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=p5ed33sJQnP+0D/KgfgliQpZCAocWMCLPbVfEtxjLdE=; b=dLM3bGsp8kfQY+jq/s4pafhJvF
 Rk4DkpCSiQPAFCN97eIgG59j2AdranIBj4trmXHi0Whsy3ZYTSjoeZZijYFF8mPLVbN6wmxHvlvDf
 fvUAsp4+S64oLW7ZC1EvhoHJzBSwpleHJwCeVrVZrfhx1xrXbUpZLUioTQK9uPDj2xdM=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=dLM3bGsp
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

> > $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> > 
> > actually talk to the SFP module and tell it the maximum power it can
> > consume. So in this case, it is not the cage, but the module?
> 
> It does not work that way in ice example.
> > 
> > Or is it talking to some entity which is managing the overall power
> > consumption of a number of cages, and asking it to allocate a maximum
> > of 4W to this cage. It might return an error message saying there is
> > no power budget left?
> 
> That's right, we talk to firmware to set those restrictions.
> In the ice implementation, the driver is responsible for checking if the
> overall board budget is not exceeded.

So i can get the board to agree that the cage can supply 3W to the
module, but how do i then tell the module this?

I would also suggest you don't focus too much on ICE. I find it better
to think about an abstract system. A board with a power supply to a
number of SFP cages, and some cages have modules in them. What does
the kAPI look like, the use cases for this abstract system.

    Andrew



