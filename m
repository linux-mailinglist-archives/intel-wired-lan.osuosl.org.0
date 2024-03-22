Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B6C886E4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 15:16:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66A14404B0;
	Fri, 22 Mar 2024 14:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NzVF0lDIB3Ls; Fri, 22 Mar 2024 14:16:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BB72404FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711117014;
	bh=fyEBe9bXXquTrVUpZZr8wQkojLbr5smrHmWLchlXueM=;
	h=From:Date:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1WLbAtnYiJ8XOacMts+6gUe3s9laC4JJJefawqTJyCDiYwj+Zq5lj/ESGRx09N9h
	 vx/zlN/BcC5xwk+bAGBNinmP0Q9RgYUzQfng7CZk5vbS5vK+HBxSbWXTJsVZ3P1AGG
	 9T0CYUMbVMICPylU2gRKPJgo4Or491e3dUXfjMxG9mQaI90DJPsAp9IRcq2lvaM8Bq
	 an6AVE0a9+e3jMGn4th4POc0JLMH+WOn8eTk2DHe3SvJQF3FPHupk6syNFjrQ9LU7j
	 2aaaGW+p9gpJDeYODZq+oRn3rLXd8ktjhDtI/heDa3YVCg1shBNGXI/3DOk/zdg281
	 8lcQqau52dsrg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BB72404FE;
	Fri, 22 Mar 2024 14:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0F071BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 14:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9A3F82923
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 14:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DEqMLcQqCjRQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 14:16:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=ilpo.jarvinen@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B7D782907
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B7D782907
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B7D782907
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 14:16:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5994966"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="5994966"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 07:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="15352468"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO localhost)
 ([10.245.247.18])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 07:16:42 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Fri, 22 Mar 2024 16:16:37 +0200 (EET)
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
In-Reply-To: <cc3f6a32-a00d-3c68-bc89-c042d238e7fe@linux.intel.com>
Message-ID: <771bb522-c4eb-b515-e315-6ad1c622cbd9@linux.intel.com>
References: <20240308213107.GA700934@bhelgaas>
 <cc3f6a32-a00d-3c68-bc89-c042d238e7fe@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-20305305-1711116997=:1115"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711117011; x=1742653011;
 h=from:date:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=2KeOzt6+e2pFDwhqfLnCeh7Ap5am70wfBW1us6UaZEk=;
 b=JtE0HkWU3fPHJcW8fAoVQKUnb7DiCqnRYtfQz9umWLGs9FLuQqq6RuuG
 hs7qK/zdZK2ZG/7maedJEQwfrkTiYKD/TES/SsKRGiSE9mEBvqn1GIyr2
 v9dEtvh24xu4tO3lkD4FFeg31iUBPy9dZN8+lyBGT+nbpNumz4acd7F13
 h/+kNh1Sg51iAOr1mNRTyzA/PtNtfYR/I9XstyMOpe1fQenfWN43ecTRR
 14pBP1e75yTomzcnrvC6J7trQ2LsnUJRAf66AUuyajpkH8KX3RghBRSxk
 nlaP8f9TUdV5TimpsZX7aUVB0LzgeCjvSM1rrdZygxlFXyVZ3PAbD4Lhm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JtE0HkWU
Subject: Re: [Intel-wired-lan] [PATCH 0/4] PCI: Consolidate TLP Log reading
 and printing
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
Cc: Oliver O'Halloran <oohall@gmail.com>, linux-efi@vger.kernel.org,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Tony Luck <tony.luck@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-pci@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, Borislav Petkov <bp@alien8.de>,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, linuxppc-dev@lists.ozlabs.org,
 Ard Biesheuvel <ardb@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-20305305-1711116997=:1115
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Mon, 11 Mar 2024, Ilpo J=C3=A4rvinen wrote:

> On Fri, 8 Mar 2024, Bjorn Helgaas wrote:
>=20
> > On Tue, Feb 06, 2024 at 03:57:13PM +0200, Ilpo J=C3=A4rvinen wrote:
> > > This series consolidates AER & DPC TLP Log handling code. Helpers are
> > > added for reading and printing the TLP Log and the format is made to
> > > include E-E Prefixes in both cases (previously only one DPC RP PIO
> > > displayed the E-E Prefixes).
> > >=20
> > > I'd appreciate if people familiar with ixgbe could check the error
> > > handling conversion within the driver is correct.
> > >=20
> > > Ilpo J=C3=A4rvinen (4):
> > >   PCI/AER: Cleanup register variable
> > >   PCI: Generalize TLP Header Log reading
> >=20
> > I applied these first two to pci/aer for v6.9, thanks, these are all
> > nice improvements!
> >=20
> > I postponed the ixgbe part for now because I think we should get an
> > ack from those maintainers or just send it to them since it subtly
> > changes the error and device removal checking there.
>=20
> Okay, I'll make sure they're separated properly for the remaining patches=
=20
> (I was already planning on doing that separation and posting v2 to avoid=
=20
> their input blocking the changed but you beat me to it).
>=20
> > >   PCI: Add TLP Prefix reading into pcie_read_tlp_log()
> > >   PCI: Create helper to print TLP Header and Prefix Log
> >=20
> > I'll respond to these with some minor comments.
>=20
> Did you forget to send those comments?

Ping.

I still haven't received those comments for patches 3 & 4.

--=20
 i.

--8323328-20305305-1711116997=:1115--
