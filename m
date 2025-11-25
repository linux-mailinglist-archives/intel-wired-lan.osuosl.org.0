Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7B3C84333
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 10:22:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA33B60F9D;
	Tue, 25 Nov 2025 09:22:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HiCLZl8onGmt; Tue, 25 Nov 2025 09:22:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7866E60FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764062558;
	bh=Q7H8tjTTGIlQYy6DhRbnU03Mn/CHXGlMY016rFAkQ5A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4G1Ct0J29Yybb2FjFRRXnTkdznyNsoHRNN0w950jH6vJZCL5gc/srli5Gpcg1JdQ7
	 ArJlptIX4RmzkMtq9cgyUWkODVbLVnWeWDbYg4TKmPbMRxVbqs6sIL8IA94M3C4vfv
	 BfAIIlE+1P6pqXBGBzN6GIpg0xhKamyk8WAxc5655jK3XBtMLBbcPxRVDnF3R9mUQG
	 yy+iNBAIesJAH4Mg8TABKYNT4v3in35rffAhMScutgUjbvsoE46FUQWuaFvqTg5Gdd
	 MxQtFcnfQHvgTV+iYgKSb1hG6/SRhMjcBYgflL4BMPHaUYnKgwJEFbm4eZ4riP1TpP
	 EELGL3wtlUFvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7866E60FCB;
	Tue, 25 Nov 2025 09:22:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2AC535C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 09:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94CA640E74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 09:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6LtoOZWEBucY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 09:22:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2001:41b8:202:deb::311:108; helo=stravinsky.debian.org;
 envelope-from=leitao@debian.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 65F0840DAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65F0840DAC
Received: from stravinsky.debian.org (stravinsky.debian.org
 [IPv6:2001:41b8:202:deb::311:108])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65F0840DAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 09:22:35 +0000 (UTC)
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vNpFf-003I1X-In; Tue, 25 Nov 2025 09:22:23 +0000
Date: Tue, 25 Nov 2025 01:22:18 -0800
From: Breno Leitao <leitao@debian.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, 
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, 
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-team@meta.com" <kernel-team@meta.com>
Message-ID: <2ewdkayyhcjbf45v7laudrqjw3z443amelwwmnz5bzzcz7ogo4@qs6gwysc2kvk>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-4-89be18d2a744@debian.org>
 <IA3PR11MB8986B2AF393FF9E3609C9DB0E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986B2AF393FF9E3609C9DB0E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Debian-User: leitao
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q7H8tjTTGIlQYy6DhRbnU03Mn/CHXGlMY016rFAkQ5A=; b=C+oiZatpl9yGNxOCzw33bIBnGr
 UYgzm1d0p3reNz0/zF08nXVWdFT4/x1wxmBjPzznipxIt+bQ7zfJHjfLdUWRgXV1m/bq6vqGxHzMD
 LCFNOiwZqr05sQgDG7bzkh7uumoUyMm1MKPPNOp5YLPeV6j6yxwpZPvJH6eVn+Whs6/ujXtQJkf9g
 w6z8FpGethal/Y0S2U5PciJFzJ5GX3aj8ArzU3gQLroio4rnKKDqsqQ7/+Cb/snNmbxmtk1xPzfJB
 tHwt8f1VvhQ128DSJGAuj7e5g761bOvIVXOjeR3S4iSFM6V/ss4OUgOE3NCneH0Ki19LRvfoD9ryI
 aRVWMa2A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=debian.org header.i=@debian.org header.a=rsa-sha256
 header.s=smtpauto.stravinsky header.b=C+oiZatp
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS
 from .get_rxnfc
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

Hello Alex,

On Tue, Nov 25, 2025 at 06:48:08AM +0000, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Breno Leitao
> > Sent: Monday, November 24, 2025 7:19 PM
> > To: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen,
> > Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> > David S. Miller <davem@davemloft.net>; Eric Dumazet
> > <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> > <pabeni@redhat.com>
> > Cc: michal.swiatkowski@linux.intel.com; michal.kubiak@intel.com;
> > Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; intel-wired-
> > lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org; kernel-team@meta.com; Breno Leitao
> > <leitao@debian.org>
> > Subject: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS
> > from .get_rxnfc
> > 
> > Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
> > optimize RX ring queries") added specific support for GRXRINGS
> > callback, simplifying .get_rxnfc.
> > 
> > Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the
> > new .get_rx_ring_count().
> > 
> > This simplifies the RX ring count retrieval and aligns idpf with the
> > new ethtool API for querying RX ring parameters.
> > 
> > I was not totatly convinced I needed to have the lock, but, I decided
> 
> totatly -> totally

Good catch, I will update and respin with your "Signed-off-by".

Thanks for the review,
--breno
