Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F4F9DBB22
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Nov 2024 17:20:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1490611E1;
	Thu, 28 Nov 2024 16:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w5tDppout-j7; Thu, 28 Nov 2024 16:20:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B736611E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732810852;
	bh=3SkfNj0tBeWabH5cAO7t1sseCMAdoniXbGo5dbRXiPM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hPCMexzYii7hCXMyLUC3XxrIa44MC3IDaguRn6JSMMaWMHawjv4eSmF7FYu8L52KU
	 Rw3Llnnmo2BtXkIWeHdtvauer0TgR4iotqgkc943Ddp32DwNEMj0I+7tRTmMN+w9qo
	 LrdyTg89eIh6XYZ5090dNIuFCbm4leQz3j7svCvuxK0N98m5iPWpW6sMlwwJT0jEh5
	 lWZcsMISd7JHKmpUFyMmZQprqbRVHwhE8+TdqtLC6aDSpXsTH33D+/GOM8SC6LUz3u
	 3XkIvBLj5GAVMc96yz4t9tH8R3dtk0G3scMw1IF1NNUL2KaEC1L0iz97tmWUE8hMCc
	 8bThRRpgNiK0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B736611E7;
	Thu, 28 Nov 2024 16:20:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA0B671F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 16:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97D1E8448D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 16:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gGY6ZyJ6WTV0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Nov 2024 16:20:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF6AB81FCD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF6AB81FCD
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF6AB81FCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 16:20:48 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tGhG0-00EijE-Jb; Thu, 28 Nov 2024 17:20:44 +0100
Date: Thu, 28 Nov 2024 17:20:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Olech, Milena" <milena.olech@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>
Message-ID: <1c95b010-cb57-4864-aa0b-82b7093f44d1@lunn.ch>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
 <946b6621-fd35-46b9-84ee-37de14195610@lunn.ch>
 <PH0PR11MB4904824FA658713F78CA404D94282@PH0PR11MB4904.namprd11.prod.outlook.com>
 <6cca6089-ed72-407a-8f23-70bb67b42e63@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6cca6089-ed72-407a-8f23-70bb67b42e63@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=3SkfNj0tBeWabH5cAO7t1sseCMAdoniXbGo5dbRXiPM=; b=atB6N12+pdoA6nCy28x3XNeDJE
 0kdKbbOE4SY9dKMVzXHxOVt0vpmXYvTQLX4NPPBQbDcfDWP3knAKkhVtIz3Bw1tohlAeRhOGf+CUu
 i8kCIbyJhnhT/dPVU4zF0OsqlMLEyPMYN8tUv+EoepEdkNY7Qm8SWcodVXnh6WOlZOyU=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=atB6N12+
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

> > > You forgot to Cc: the PTP maintainer.
> > 
> > Who is the PTP maintainer? Is it necessary? This is only Intel's driver,
> > I am not sure if PTP maintainer is necessary.
> 
> I was curious for a moment too, but just for a moment :)
> 
> We develop network drivers in the public, so we CC people which could
> have a valuable feedback. For PTP code it's PTP Maintainer, and other
> PTP folks. I'm not sure how interested they are though, @Richard?
> @Vladimir?
> 
> 
> In general it is similar to why we CC netdev. The difference is that
> this code will not go via PTP Maintainer, but it does not matter that
> much for the review/design purposes.

"only Intel's driver" is a bit of a worry. Part of being a Maintainer
is to ensure that all drivers behave the same. There should not be any
difference between an Intel PTP device, a Marvell PTP devices, a
Microchip PTP device etc. They should all implement the API in a
uniform way. A developer for the Intel driver probably does not know
the Marvell and Microchip code, and so could easily do something
different. The PTP Maintainer however has an overview over all
implementations and can point out when the driver is not implementing
the APIs in a uniform way, etc.

What i have also seen is that if one driver gets something wrong,
other drivers might as well. Being a Maintainer you are not blinkered
by corporate identity. You might take a quick look at the other PTP
drivers and see if they have the same problem. You can then ask the
developer to go fix the same problem in all the other PTP drivers.

	Andrew
