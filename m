Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGhqGdvqnmk/XwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 13:28:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB54B197509
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 13:28:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2844F83B66;
	Wed, 25 Feb 2026 12:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wBrLkzGYyhnc; Wed, 25 Feb 2026 12:28:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 893A982E1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772022488;
	bh=YGGTXJmgsCv8i8XHOXhuAYXVV74oY9lNQuaRwiZfVWU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mSYChSZLP2MHXb3mDsNPCNNyg2q5VyU7VgF6M3oLYqmB3FYXeSDiT2a8Fo7DRwvXN
	 BR16CRV3WtBjrXdqy1vJQPZeVDyhyqA+hasU+4GoLMtkCB9KZpA4A4bpFpgD41zJ2B
	 OWZmaNutyOf0RSISmjqSVfRdtM3gq/fR8EuIdPWYTnmpkBbXB1+FG3+sELX6set3kG
	 1rnqbSBw3DAW6iR5kWBW4yD0FjdLTBtfh8ULDlH8yk7FrFy49v0+Qh4nVjrxfJr8+x
	 O5CFinrGpOSlzX4GY3CTbtFlrkR5JdXZCSa3V7t1RFs2evz8V+vzuIVkVlaEIHeFqU
	 GtPSuelJMWXSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 893A982E1A;
	Wed, 25 Feb 2026 12:28:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BFE8C204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B133F41853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:28:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jyEMhMZLS1Mu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 12:28:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=mika.westerberg@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B9C1A407E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9C1A407E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9C1A407E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:28:05 +0000 (UTC)
X-CSE-ConnectionGUID: 2/0B36rfTh2KVabLC/3iXw==
X-CSE-MsgGUID: sZ8QI8CLQvKXOnZCNqxNiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90636517"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90636517"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:28:05 -0800
X-CSE-ConnectionGUID: aCuYk1aBQ02HF7VWgoc8Rw==
X-CSE-MsgGUID: L9YXh2iZQaeNDh5W88SOIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220714560"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa004.jf.intel.com with ESMTP; 25 Feb 2026 04:28:00 -0800
Received: by black.igk.intel.com (Postfix, from userid 1001)
 id 3494698; Wed, 25 Feb 2026 13:27:59 +0100 (CET)
Date: Wed, 25 Feb 2026 13:27:59 +0100
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-pci@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Bjorn Helgaas <bhelgaas@google.com>, Lukas Wunner <lukas@wunner.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Mark Bloch <mbloch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Message-ID: <20260225122759.GB2275908@black.igk.intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
 <20260224171308.GA3737399@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260224171308.GA3737399@bhelgaas>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772022485; x=1803558485;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nddEDF/REC3XXEgzKrDWBOShctJRJmbP6OuFSYsEOdM=;
 b=f3oCGJjNWItavp5DqxfBcdol9Blqyg1DTegH6S3sd4gG6AI3UlUM1VCq
 r6z5C1A1ngvGjzilG7fNtwd1+qFwIBNWFzppcGR4smKzObJatJc/m647V
 Yq0cslWzRsk/uStGq2qQ7jg/++uaVl1X3rAat0+Ma/9OLtZexX4TsTCJ3
 xuWN4s0nm2xy2C1C2FF+yi7QaBwPy38/jQMLnUpi4T8sdDx8CrBlfELUh
 8uosdJw3qn3r6Dgcgqsr965152+pl5WFW+hvNlTKCC5YYYgEptxp5qXcJ
 8EF3t1atmYRgzIQ/YqDVUK4SaiI4/mvHUdJv2m3yOeejr0s6HH7HWvGzy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f3oCGJjN
Subject: Re: [Intel-wired-lan] [PATCH 0/5] PCI / igc: Improvements related
 to PTM enabling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.977];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: AB54B197509
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 11:13:08AM -0600, Bjorn Helgaas wrote:
> On Tue, Feb 24, 2026 at 12:10:39PM +0100, Mika Westerberg wrote:
> > Hi all,
> > 
> > There is (still) an issue with Linux PCIe PTM enabling that happens because
> > Linux automatically enables PTM if certain capabilities are set. However,
> > turns out this is not enough because once we enumerate PCIe Switch Upstream
> > port we also enable PTM but the Downstream Ports are not yet enumerated.
> > This triggers floods of AER errors like this:
> > 
> >       pcieport 0000:00:07.1: AER: Multiple Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
> >       pcieport 0000:00:07.1: PCIe Bus Error: severity=Uncorrectable (Non-Fatal), type=Transaction Layer, (Receiver ID)
> >       pcieport 0000:00:07.1:   device [8086:d44f] error status/mask=00200000/00000000
> >       pcieport 0000:00:07.1:    [21] ACSViol                (First)
> >       pcieport 0000:00:07.1: AER:   TLP Header: 0x34000000 0x00000052 0x00000000 0x00000000
> >       pcieport 0000:00:07.1: AER: device recovery successful
> >       pcieport 0000:00:07.1: AER: Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
> > 
> > We have ACS Source Validation enabled so Requester ID 0 which is sent by
> > the not-enumerated Downstream Port triggers the ACS violation AER.
> > 
> > This can be prevented by enabling PTM when the whole topology has been
> > enumerated and doing it like that seems to be reasonable anyway because we
> > only have a couple of drivers enabling it now so it does not make sense to
> > enable otherwise as it consumes bandwidth.
> > 
> > I did that fix and the problem went away but wanted to test with a device
> > and driver that actually enables PTM. I have a couple of igc NICs here that
> > has this support. However, when testing I noticed that during power state
> > transitions we still get errors like this from igc:
> > 
> >   igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
> > 
> > and after this PTM for the device stays disabled.
> > 
> > This series includes fixes for igc that deal with the issues I found and
> > now PTM gets succesfully enabled and works accross suspend and runtime
> > suspend of igc, and there are no flood of AER errors as above. While there
> > there is one cleanup patch in the middle that drops unused parameter.
> > 
> > Mika Westerberg (5):
> >   igc: Call netif_queue_set_napi() with rntl locked
> >   igc: Let the PCI core deal with the PM resume flow
> >   igc: Don't reset the hardware on suspend path
> >   PCI/PTM: Drop granularity parameter from pci_enable_ptm()
> >   PCI/PTM: Do not enable PTM automatically for Root and Switch Upstream Ports
> 
> These last two don't look dependent on the igc patches, so I applied
> them to pci/ptm for v7.1, thanks!

Thanks!

> Let me know if there is some dependency and I can ack them and drop
> them from the PCI tree.

They can be separate. No dependency. Just wanted to "ship" them together
due the fact that all of them are needed to get rid of the errors.
