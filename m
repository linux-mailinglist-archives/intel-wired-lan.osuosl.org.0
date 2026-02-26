Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFLTJKYqoGlrfwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 12:12:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 070171A4E3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 12:12:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1313361015;
	Thu, 26 Feb 2026 11:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDNljJuZGF20; Thu, 26 Feb 2026 11:12:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8499060F91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772104353;
	bh=EL9dqrMnuWlIo5xMK4BW3dxmhTFEcbon5EgzbyxVTGo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XejDSI/tTqKNg+8sIHNLjAPkuxUTiLFQIFZl97DaOrq/sxanbuqDBFfwuhRUnFv5P
	 Meg35PKfSb1FDidLJmmwe4qtLFU9NqfII+zD7itY+W77NSXq9ft8iBK2Lcwm6P78Qp
	 cT0EG9CqJ43freatQ6cXetAAIQNCiUiJr4Q35Ni2iUScj4EWNFuOMfmSKr400iWfeU
	 V5mF2C3gEI4CuQD2PVAPpTdyEwzlrf9hWeNH5zK7t6rVuFX+sF4Wty35Ab/cnqyAmj
	 MU34DRLFkqV1gPmcF8Xr3yEsCqbXDqvZbPpOdrSUTTTNXn+nS9/b20Q4NEPnuywrZT
	 10zP9YIY3HQpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8499060F91;
	Thu, 26 Feb 2026 11:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 80CF6204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 11:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6690A4052F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 11:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySe5fM8fNdsI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Feb 2026 11:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=mika.westerberg@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5981402D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5981402D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5981402D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 11:12:30 +0000 (UTC)
X-CSE-ConnectionGUID: aKnVaT5ERgyK85oqoEaOCQ==
X-CSE-MsgGUID: w0JNqVSDRbGGzzODb0n0bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83871827"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83871827"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 03:12:30 -0800
X-CSE-ConnectionGUID: 2CKX5bs0QT2/SF3IDQgZ6Q==
X-CSE-MsgGUID: 5F9yTyDCT3imhCDA6WsdmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="244130173"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 26 Feb 2026 03:12:25 -0800
Received: by black.igk.intel.com (Postfix, from userid 1001)
 id A041B99; Thu, 26 Feb 2026 12:12:24 +0100 (CET)
Date: Thu, 26 Feb 2026 12:12:24 +0100
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
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
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Message-ID: <20260226111224.GL2275908@black.igk.intel.com>
References: <20260224111044.3487873-3-mika.westerberg@linux.intel.com>
 <20260224165837.GA3736201@bhelgaas>
 <20260225122619.GA2275908@black.igk.intel.com>
 <87jyw09y2r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87jyw09y2r.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772104351; x=1803640351;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WFfTXvkY3j+SoJDH54wiCqus/kuOOnnLM0PuPglxNMQ=;
 b=DEPCYBHTNdqvLrlOznwRN4B+yoRyEJdkixjinYLlPX/2S3GCF78qkY6o
 cRNpIcqBVFQ2tTJ0D2DxJ7tae1Q4G/+gXVYKexTvE6YvMR376EssK3z+q
 8/rpawIa+9gCpR0N75RvLUdIE85LatzTFp9MbX6SS8chfgISwr+ljlwvj
 q0IVfpq7oXIM2pHUjWik1+sisf33a1+dzNj69pizpA8Fk8UIk2L6676mO
 3Vwh41mHEj5BGwY9HondPkoJq/FxBUvXQKsuNitlUCzYc1ydhXFpbneLu
 q846bFUsKdJb+AcWQAQde1tH4FHIxd4k16W8K8zI9ejtVB0QcQCWzV5zM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DEPCYBHT
Subject: Re: [Intel-wired-lan] [PATCH 2/5] igc: Let the PCI core deal with
 the PM resume flow
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vinicius.gomes@intel.com,m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,black.igk.intel.com:mid];
	FORGED_SENDER(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,gmail.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 070171A4E3C
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 03:56:44PM -0800, Vinicius Costa Gomes wrote:
> Mika Westerberg <mika.westerberg@linux.intel.com> writes:
> 
> > On Tue, Feb 24, 2026 at 10:58:37AM -0600, Bjorn Helgaas wrote:
> >> On Tue, Feb 24, 2026 at 12:10:41PM +0100, Mika Westerberg wrote:
> >> > Currently igc driver calls pci_set_power_state() and pci_restore_state()
> >> > and the like to bring the device back from low power states. However,
> >> > PCI core handles all this on behalf of the driver. Furthermore with PTM
> >> > enabled the PCI core re-enables it on resume but the driver calls
> >> > pci_restore_state() which ends up disabling it again.
> >> > 
> >> > For this reason let the PCI core handle the common PM resume flow.
> >> > 
> >> > Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> >> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> >> 
> >> I love it, thanks a lot for doing this!
> >> 
> >> Do we still need the pci_enable_device_mem() and pci_set_master()
> >> in __igc_resume()?
> >>
> >> I suppose some of that is related to the pci_disable_device() in the
> >> suspend path (__igc_shutdown()), but there are only a few dozen
> >> drivers that do this, so I'm not sure it's essential.
> >
> > I think they are just as you describe due the fact there are explicit
> > pci_disable_device() calls. Probably we can get rid of them as well but
> > that requires careful testing that nothing accidentally breaks.
> >
> 
> This series is solving real problems (thank you btw), I think the
> pci_disable_device() one would be better as a separate series.

Okay works for me :)
