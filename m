Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE857C7A71
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 01:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A591614BF;
	Thu, 12 Oct 2023 23:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A591614BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697153526;
	bh=L+LVzdvQoPIHeO0PckPrjBoCFZF3JkZpVp6JQAAVwPU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xd9jn8OexFj/JzVKtf3EjV8cO0m8FUdNd+G7pycGGut7YBDMmUUNXPhfUvwg2PYt1
	 DikpJV068w8gfbpnT4qWAOfJLec+6TAAu2vh7J1ZzMHW/6gef+ZsAL2ErtCh9t1sBO
	 m7qTNa2KpAC5dbogOU1jPCAKsvZHtY+5HBjMx67XBLSPs/YUVzYcVtnEg3ux8DAOiA
	 kHt/o7SIdkYSB5sB0KSFNsmtlxSyo3fDw/akq2UijQzRa/nGCt4Cy3srGAjV1AxBQU
	 XdPmlOlKbg9gkxjPbF5Me+YinTc4w8GkvqUC9jWztydT8wuJJ3ZyfUFbDjREYcPUJt
	 UgaDeOYwtdHCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZwQFkAy53si; Thu, 12 Oct 2023 23:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FD7D6149A;
	Thu, 12 Oct 2023 23:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FD7D6149A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CDA71BF327
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 23:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65D51401C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 23:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65D51401C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFwQsY-Z3Z0k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 23:31:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D9D9400CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 23:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D9D9400CE
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6C37861F26;
 Thu, 12 Oct 2023 23:31:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97CFEC433C8;
 Thu, 12 Oct 2023 23:31:54 +0000 (UTC)
Date: Thu, 12 Oct 2023 16:31:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20231012163153.7fe61b40@kernel.org>
In-Reply-To: <CO1PR11MB508965D49B6144B0CC7E5221D6D3A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
 <20230920180745.1607563-4-aleksander.lobakin@intel.com>
 <2038f544-859f-4ffb-9840-37c1ba289259@infradead.org>
 <0df556eb-71b2-9612-a81d-cd83c27a2cd7@intel.com>
 <8eaece43-a30d-45e8-9610-28ed2af842fc@infradead.org>
 <b5c1030a-9831-4580-8684-7c68f5888131@infradead.org>
 <CO1PR11MB508965D49B6144B0CC7E5221D6D3A@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697153515;
 bh=X2cW1jO7AkWedt+NP/5hbxEdCkXpYElDX0uiLrNEZ6Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TdELZnP4C2cNeP4my3usuPDMBxevQ518KP+Kpi2kENZgmc2RuTuJSRhZpcyXobUmw
 zGChqXdSclqbb9m55X19lgGVrSWDkQBzPo3ni99jCzWquBzS7gOR5NmmtL678ZbNMF
 2YzWFZHxTlv9Xe9aCOFbHagxOuJLw/PqmgsqjPRMh8SbBMrGZCocql0ed0zzxwHyQx
 HZ+GxJRGa5o5WeW/QPqpKR0spZFLvAGSMc+T0CeZfDFSKBYy3fAl1OPWeGrGe+SGkF
 iXoBPMo+W2zUIh1z/IErL5kRcWpOATCf/aXg2su9jEYDMXIajvHncFn2EXOKERzIJZ
 k5manMJ0hr7lA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TdELZnP4
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] idpf: fix undefined
 reference to tcp_gro_complete() when !CONFIG_INET
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Michalik,
 Michal" <michal.michalik@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski, 
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "Olech,
 Milena" <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 12 Oct 2023 18:34:00 +0000 Keller, Jacob E wrote:
> > Even if this is just > v6.6 kernels (i.e., linux-next),
> > it would be very good to get a fix merged for these build errors.
> > I keep getting build errors in linux-next....
> 
> A standalone version for the idpf driver fix was posted at [1], and
> another alternative fix was posted at [2]
> 
> Fixes for the ice driver have already merged.
> 
> [1]:
> https://lore.kernel.org/netdev/20230921125936.1621191-1-aleksander.lobakin@intel.com/
> [2]:
> https://lore.kernel.org/netdev/20230925155858.651425-1-arnd@kernel.org/
> 
> The fix from Arnd got approval from Olek, but it seems like it
> stalled out after asking about stubs. I'm fine with either approach
> but would  also like to see a fix merge soon.

The suggestion of making NET == INET is quite tempting but requires
extra consideration. Since nobody seems to have the cycles, let's
go with the stubs?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
