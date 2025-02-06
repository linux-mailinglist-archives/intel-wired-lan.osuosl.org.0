Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0A3A2AA84
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 14:59:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9238B6FA82;
	Thu,  6 Feb 2025 13:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sQFKDcDzUqJl; Thu,  6 Feb 2025 13:59:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A26CC6FA7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738850356;
	bh=5DUXroibXducNlmqw++SAiBUumFVNVJQ+BGSQmCmOIg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AArI6litVcEahgsNrdIWi1avwURidr+pJuBhiOJeUGoy3GR8sHp7hSm3peRZpTgND
	 FhjPwkRcbph6PaT3neamKCnAJw1horrjxQm/t9rWygaJFI5iM/i7pIE7B2LDyEcoUI
	 i84tGGCNqQaol+LzXt8lACDkKyOamlFRrMIDTn69fWjCk/wJd1MVul9wNk9S4601SQ
	 1RDsI/aWrHO+/e1Fgm6M+xEE4x0nScj4SJYIavyxxdJOJFO9XJ25ja9FM8TLYj5U0a
	 i1EDaKV92xBTR//+Q/16zwZSOTD1IS+V6XxzaFyzXKcby/JBjC2hNeBn1EZNWL6yAG
	 lJJafm4sSx4UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A26CC6FA7D;
	Thu,  6 Feb 2025 13:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BCE13CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0AA56FA79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3WlSkIN_jqXc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 13:59:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1184F6FA76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1184F6FA76
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1184F6FA76
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:59:12 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tg2PM-00BXIK-OZ; Thu, 06 Feb 2025 14:59:08 +0100
Date: Thu, 6 Feb 2025 14:59:08 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Message-ID: <0b81ee70-efe3-4a06-b115-1a56e007b9a7@lunn.ch>
References: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
 <0a921f6c-a63d-4255-ba0e-ea7f83b8b497@lunn.ch>
 <DS0PR11MB7785AA7575BBA0E6FD576B31F0F62@DS0PR11MB7785.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS0PR11MB7785AA7575BBA0E6FD576B31F0F62@DS0PR11MB7785.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=5DUXroibXducNlmqw++SAiBUumFVNVJQ+BGSQmCmOIg=; b=m+5AHm/mHfYaFyQTOOqbNxGNQV
 CDilIyW1hSbhMEXUKLsQMJ7ZzJPFHp3XJ5958HtfAlVJJcPSSg46zk3Olq81/L/QBSKEPzWRVPWhK
 PQZ+5o2kYa4S48NPqD1rF9fLjmWF48nIg12crz1SnGs2Zm04hJEMt8+kxbv3duzUSJhM=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=m+5AHm/m
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: add support for
 thermal sensor event reception
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 06, 2025 at 01:05:27PM +0000, Jagielski, Jedrzej wrote:
> From: Andrew Lunn <andrew@lunn.ch> 
> Sent: Tuesday, February 4, 2025 2:09 PM
> >On Tue, Feb 04, 2025 at 08:17:00AM +0100, Jedrzej Jagielski wrote:
> >> E610 NICs unlike the previous devices utilising ixgbe driver
> >> are notified in the case of overheatning by the FW ACI event.
> >> 
> >> In event of overheat when treshold is exceeded, FW suspends all
> >> traffic and sends overtemp event to the driver. Then driver
> >> logs appropriate message and closes the adapter instance.
> >> The card remains in that state until the platform is rebooted.
> >
> >There is also an HWMON temp[1-*]_emergency_alarm you can set. I
> >_think_ that should also cause a udev event, so user space knows the
> >print^h^h^h^h^hnetwork is on fire.
> >
> >	Andrew
> 
> I am not sure whether HWMON is applicable in that case.
> Driver receives an async notification from the FW that an overheating
> occurred, so has to handle it. In that case - by printing msg
> and making the interface disabled for the user.
> FW is responsible for monitoring temperature itself.
> There's even no possibility to read temperature by the driver

https://elixir.bootlin.com/linux/v6.13.1/source/drivers/net/ethernet/intel/ixgbe/ixgbe_sysfs.c#L27

ixgbe_hwmon_show_temp() is some other temperature sensor? Which you do
have HWMON support for?

Or is the E610 not really an ixgbe, it has a different architecture,
more stuff pushed into firmware, less visibility from the kernel, no
temperature monitoring, just a NIC on fire indication?

	Andrew
