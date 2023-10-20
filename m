Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7262C7D19B0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Oct 2023 01:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2AAA43477;
	Fri, 20 Oct 2023 23:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2AAA43477
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697845771;
	bh=dfsRp+u52QyKYWby0wbGRmawp9ReQRM89Le86ZfFvuY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fF6b26ChRqaHOwuEXGz2QrYNSr7iYUxRj7wtrTCgcs4PHQFwZBTP/VPcboe7tsjr9
	 LoHL+FouPSj34C62zQ7GkOKsNSsX0GnUZdguy0ydzCdwEJ9kUbZMCYqRMHECLJ75Xk
	 CfzTaADAtz8jXvVv+gX34UX+h5xtZONTaFaVoag+TCknVkZRIAsB1IocPEgaOVuLT2
	 RUmiplJZ6XBbqUUkpWYDfPeNCXyPZOY+YMX6g9Tsrh4naCZKY5xeonrSHGq58Nf1PW
	 2DGBkVldqtNzZvZBcNpoZgK3tcis/ImB8Zhi42l5qLMV04wkUUVE19lBZnnyC16c4K
	 tDG0sM8GFS2Ew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9-QrJVtCWk5; Fri, 20 Oct 2023 23:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32E4F43472;
	Fri, 20 Oct 2023 23:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32E4F43472
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21F2A1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 23:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0515D4EFC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 23:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0515D4EFC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sb7u3PDM5v4j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 23:49:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3FE314EFC1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 23:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FE314EFC1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E1C3D6238B;
 Fri, 20 Oct 2023 23:49:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5DBCC433C7;
 Fri, 20 Oct 2023 23:49:18 +0000 (UTC)
Date: Fri, 20 Oct 2023 16:49:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231020164917.69d5cd44@kernel.org>
In-Reply-To: <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697845759;
 bh=loI0on5ZzUtt+TaOW1sABdlRBDhAZ7YRBCQ6BuFriVI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LKW0EPNkFkN8eCHVM7IaiF6+PbnRmx5oxq9FHwfSbZoMYP2az69DRLa3zNht6Ya/9
 CC0L/iiw3vCpTzVf6Azx7By152nt0g/bfnkTL5S1I6zQK/RZ0YblWo/7W/4rJ54NJO
 YRG64VYitDcGLJQ68FgZ9qoJAZLRZR+4aZZUt2iQkyuYWbZzmgCjc440Hqp1pZ2Y/q
 +weFo3EZTVlAq7lCQPYEug2RIuaIJWuw4gjwQLPnPxj1w3T8tp4mXJxZA8uLG6g04s
 agUMEd87THivCYoy1cVsdwRgs+JZB4V/leDMaz7sbr79FFgLJ1Wrgjhc4FMVmeNDLl
 Y1r+29QTL64eg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LKW0EPNk
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
> I replied to that here:
> 
> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
> 
> I am kind of confused now so please bear with me. ethtool either sends 
> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the interface 
> for "ethtool -X" which is used to set the RSS algorithm. But we kind of 
> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses 
> "ethtool_rxnfc" (as implemented in this series).

I have no strong preference. Sounds like Alex prefers to keep it closer
to algo, which is "ethtool_rxfh".

> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would 
> that work on the ethtool user interface?

I don't know what you're asking of us. If you find the code to confusing
maybe someone at Intel can help you :|
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
