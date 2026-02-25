Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aM2vGnjqnmk/XwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 13:26:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C65197476
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 13:26:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E595283C1A;
	Wed, 25 Feb 2026 12:26:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZHKoxF7v7-s; Wed, 25 Feb 2026 12:26:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D1BC83D18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772022389;
	bh=jWN+p2jwMSDPyhfCDv6HTqbYFmXkXPJpRii7YBn2gyo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6W36qOXJEIQ7ejAHY8JdVcy9fgIZRRzwA+OJ/P16mRZ3+kX6HvVujwM7ot7907YFf
	 0/9nU0Y4RJE/VSFJ95mddESM2tkhOI+5Ns1/O5Sqe3V6V8+lSFPM46Ee3P3BtpeHTj
	 YIEo2Q0y8SKdpGFuE++tHi6LQ+USLVraQs8t0F7NTg58Lno2rsdATuZ8aUYQsKZ7Fa
	 zi5wiOAVvvvQi92ymvi5Cm1rYMWC563CS4NMqsVtzjMIhCg5jdItoiRwItCbFefy90
	 fVvv5adSetcxtpcU/Idpxcq5xLkFQn8bWfaVCeaId/lX4ftsDEXz4lybHQBtMaqTrx
	 VYLZzT0BFrv+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D1BC83D18;
	Wed, 25 Feb 2026 12:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C8E5204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E3594055D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:26:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPttlt40O_Fl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 12:26:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=mika.westerberg@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3B7C74053E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B7C74053E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B7C74053E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 12:26:26 +0000 (UTC)
X-CSE-ConnectionGUID: 6UIzwu27SomOBPnw65Cerw==
X-CSE-MsgGUID: I9EoaELRSraWN2SkCYhMxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72960265"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72960265"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:26:25 -0800
X-CSE-ConnectionGUID: 4JnDYL7fSCuRBpUEBA/K1A==
X-CSE-MsgGUID: j1D/6tAuQf6vtC8ZewI+jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="215322332"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa006.jf.intel.com with ESMTP; 25 Feb 2026 04:26:21 -0800
Received: by black.igk.intel.com (Postfix, from userid 1001)
 id 4722798; Wed, 25 Feb 2026 13:26:19 +0100 (CET)
Date: Wed, 25 Feb 2026 13:26:19 +0100
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
Message-ID: <20260225122619.GA2275908@black.igk.intel.com>
References: <20260224111044.3487873-3-mika.westerberg@linux.intel.com>
 <20260224165837.GA3736201@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260224165837.GA3736201@bhelgaas>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772022386; x=1803558386;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tw+WAcM1/3PbQ8VvUf+VpkKBf4FUQLx9zMT8Bchf+AU=;
 b=YrY5aav+Ry6oGIUX64u7OVfKi1pUkev6aSYVFNnu+el69PkjOWvJG8G/
 YW80/6E+vILg44qMxiG6FwWYXP9d2ogdqtNefDAHANo9ukLFFXx9rpMHT
 ekqGl7YP+bh/DhLlQsyDT78X08wQcEal3eFAKUcILMIAZE2GpHKcmP4by
 SXo0/cu+kU+3m+DW+Xx5Cj7QgjpDLywNXA/nwF63gaiLJ26se7C7e//dX
 +yMtzvf2rIqpc5a08/ske6+reFR0XvtAT7m4xDCnEawNpo4T+U44lFXTu
 402h005IGd1tWjvOXGJ9gKhUh50s2JpxBOhUoEszfaQfE44toucA+u41S
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YrY5aav+
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[mika.westerberg@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
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
	NEURAL_HAM(-0.00)[-0.973];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 80C65197476
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 10:58:37AM -0600, Bjorn Helgaas wrote:
> On Tue, Feb 24, 2026 at 12:10:41PM +0100, Mika Westerberg wrote:
> > Currently igc driver calls pci_set_power_state() and pci_restore_state()
> > and the like to bring the device back from low power states. However,
> > PCI core handles all this on behalf of the driver. Furthermore with PTM
> > enabled the PCI core re-enables it on resume but the driver calls
> > pci_restore_state() which ends up disabling it again.
> > 
> > For this reason let the PCI core handle the common PM resume flow.
> > 
> > Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> 
> I love it, thanks a lot for doing this!
> 
> Do we still need the pci_enable_device_mem() and pci_set_master()
> in __igc_resume()?
>
> I suppose some of that is related to the pci_disable_device() in the
> suspend path (__igc_shutdown()), but there are only a few dozen
> drivers that do this, so I'm not sure it's essential.

I think they are just as you describe due the fact there are explicit
pci_disable_device() calls. Probably we can get rid of them as well but
that requires careful testing that nothing accidentally breaks.

@Vitaly, what do you think? I can take a look.
