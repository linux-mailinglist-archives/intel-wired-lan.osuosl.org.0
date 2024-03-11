Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1697877F14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 12:35:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C73160842;
	Mon, 11 Mar 2024 11:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6p34Hmar6L3; Mon, 11 Mar 2024 11:35:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73122607CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710156910;
	bh=j755ZjPNuISQZ0wYVdDXptkVGrRpjlHL6sxUwYUNPvc=;
	h=From:Date:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K9jl1KDc0WN098EFAIa5hMtjJtn05sG6VwKh1O7jp0Q3ry63bEMg9KFXtXoQWB9cs
	 xqkBnjHAdSLT/dmqCcyo3DbVLLd99aVzGYZrc7YKZhORo6DM0OllKxbMRF23EW/x8V
	 BtguzlZPG8pPi0o2E6odtmykFbU2MT2/sCtqH6zKf/3uQry4Ur7plxBmU50NokLfXH
	 YXroqvCQUFWccoTjb5bccdR4kGt6X1BQjmUrq2fr0YvY0OrmiVXBYpvZMbjyY0XP5C
	 cw+7a8pSX7yFB4OEbB1MmJBTppTuHAIxvTryuhLi10oSCHKJrDy982QLXEIA/PTeig
	 +frVnzzjtG2Dg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73122607CE;
	Mon, 11 Mar 2024 11:35:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 112191BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 11:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0AFE1607CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 11:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G56EeCqhZ64y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 11:35:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=ilpo.jarvinen@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B4832605CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4832605CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4832605CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 11:35:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="4656313"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; 
   d="scan'208";a="4656313"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 04:35:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="15784787"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 04:34:59 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Mon, 11 Mar 2024 13:34:54 +0200 (EET)
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20240308213107.GA700934@bhelgaas>
Message-ID: <cc3f6a32-a00d-3c68-bc89-c042d238e7fe@linux.intel.com>
References: <20240308213107.GA700934@bhelgaas>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-141571146-1710156894=:1142"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710156906; x=1741692906;
 h=from:date:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=pYF/44sGUvtGohJefbieCblrNnn6V9de0G2M8//jghE=;
 b=ctSi78lPovEF2BKJKWNr2bdrUTxQTSsUTp0uW0LUjLM9kS4m7r+lgQb3
 qAlF2b4dUpT4smu0kglf834u4rsTUn8qtKlJ7NyOqPyxREjzU2PI/dqSz
 loUhq1fud4gdiB/E6E9M3TG8+VAQgfEfOLAHNxmfV6Cx37L9DoI9cnXe9
 +sRgDczGoJ+wvQNWpmCh8MtPgGAqSAoCo94iNp3EXuojWA0PRwCRYuml7
 Ne18nn5gNOpMKnB6sp4xUZ6TDocfcQiNah+NLUL8lU/t1+CdY4bixfCTy
 1ilBvwecfk4AGLqyCi0iblqGIeFla0wwZZ878T6me+eAIj0mvI9MHrzT3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ctSi78lP
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
 Borislav Petkov <bp@alien8.de>, Tony Luck <tony.luck@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-pci@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, Ard Biesheuvel <ardb@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-141571146-1710156894=:1142
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Fri, 8 Mar 2024, Bjorn Helgaas wrote:

> On Tue, Feb 06, 2024 at 03:57:13PM +0200, Ilpo J=C3=A4rvinen wrote:
> > This series consolidates AER & DPC TLP Log handling code. Helpers are
> > added for reading and printing the TLP Log and the format is made to
> > include E-E Prefixes in both cases (previously only one DPC RP PIO
> > displayed the E-E Prefixes).
> >=20
> > I'd appreciate if people familiar with ixgbe could check the error
> > handling conversion within the driver is correct.
> >=20
> > Ilpo J=C3=A4rvinen (4):
> >   PCI/AER: Cleanup register variable
> >   PCI: Generalize TLP Header Log reading
>=20
> I applied these first two to pci/aer for v6.9, thanks, these are all
> nice improvements!
>=20
> I postponed the ixgbe part for now because I think we should get an
> ack from those maintainers or just send it to them since it subtly
> changes the error and device removal checking there.

Okay, I'll make sure they're separated properly for the remaining patches=
=20
(I was already planning on doing that separation and posting v2 to avoid=20
their input blocking the changed but you beat me to it).

> >   PCI: Add TLP Prefix reading into pcie_read_tlp_log()
> >   PCI: Create helper to print TLP Header and Prefix Log
>=20
> I'll respond to these with some minor comments.

Did you forget to send those comments?


--=20
 i.

--8323328-141571146-1710156894=:1142--
