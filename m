Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 839D6C88832
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 08:54:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40A8161154;
	Wed, 26 Nov 2025 07:54:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yuBJMUJuJ8RN; Wed, 26 Nov 2025 07:53:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B13AF612E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764143639;
	bh=zdiQvAXYceCwSHP8VP8YioZ3QEhBZqwq7qjnvaWIqOw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RXqbIeNvG8qMCuHSn7bLXm1G/xmgGiBh0GY5Jo6fUZPdWg92z2l2qNUIpDVJZhq57
	 18aAhJ1zfazHf8LGjOnUSizNgek0VbSr4oJBrFu1k5qRUQF4v57XQrz1WBZcHtDn1f
	 xchRuTQ+477zoW9yP6rQWaTuZZDzJ3bSTnWwq3yboPNrpoozzu/o8xPMOzCEGnOoag
	 Yv3QmcbkLPWbRdaeNooxWTEqFa87GaI9IHydoLPONc1RYFKwSN8YzPbW8zvQiCpOF5
	 OjKNbpVopiyA0VrZjGOTkO3wLX4k0hW/NnjIcOQwwi5lls0gTMnx1/fRKOR6/pKrb2
	 sRRYa/iB8L71g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B13AF612E9;
	Wed, 26 Nov 2025 07:53:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C4A0623F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 07:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6A5040388
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 07:53:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oRWxH06eugD3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 07:53:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE20C40283
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE20C40283
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE20C40283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 07:53:55 +0000 (UTC)
X-CSE-ConnectionGUID: bj3bHer5Q76g5TfDjxKWXg==
X-CSE-MsgGUID: 6IHJiDSXR4iwyyA2gAM5qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="88820046"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="88820046"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:53:55 -0800
X-CSE-ConnectionGUID: HtZ0x8w5R+6KwfJPN61S2Q==
X-CSE-MsgGUID: B8jRA5QFTam0U2VHHNLg4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192764270"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:53:52 -0800
Date: Wed, 26 Nov 2025 09:53:50 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <aSayDu8yVe7prrsx@smile.fi.intel.com>
References: <20251124174239.941037-1-andriy.shevchenko@linux.intel.com>
 <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
 <IA3PR11MB8986A3FDF77D49598C5F4C89E5DEA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986A3FDF77D49598C5F4C89E5DEA@IA3PR11MB8986.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764143636; x=1795679636;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PrFs4bYCzBU2Z3ZyP+JdWwbV9Tc/Os8OwQQbN3NgVRU=;
 b=YHNBX73lRGwb+UeoMfCQHvvzSJyRk3XS8grqhCSEz4TtSf1GJQ0WyKxW
 JKx6UcPZmSnYFSm9SvirtnP8VeNoJLOjJLB10yYS8veyLIVkjILnJl5tx
 JZoTm4F2Xpe8Po7YZboixxGAQr+5v5LAyOvxW88YCRTf+D79zMyxy9xpy
 x1DqWMD5Zn8YZi/Scr44enNeuu9jfiPgZn1d4cbQ317tZ4jE3u/8sTBuM
 +4rjLMZD3HLEgAS8YXaSXiJPk9qQ/FJV4NMbmgdcvSKhgvTRzbOBM+xQK
 F4zAlOQhVAejPZVR0oMIMtQ707Zwk2202XyPcAUuyIDUAqTyCf/GGcGky
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YHNBX73l
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

On Wed, Nov 26, 2025 at 07:24:40AM +0000, Loktionov, Aleksandr wrote:
> > -----Original Message-----
> > From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Sent: Wednesday, November 26, 2025 7:30 AM
> > On 11/24/25 18:42, Andy Shevchenko wrote:

...

> > >   /**
> > > - * idpf_tx_splitq_has_room - check if enough Tx splitq resources are
> > > available
> > > + * idpf_txq_has_room - check if enough Tx splitq resources are
> > > + available
> > >    * @tx_q: the queue to be checked
> > >    * @descs_needed: number of descriptors required for this packet
> > >    * @bufs_needed: number of Tx buffers required for this packet @@

> > > unsigned int idpf_tx_res_count_required(struct idpf_tx_queue *txq,

> > >    * idpf_tx_splitq_bump_ntu - adjust NTU and generation
> > >    * @txq: the tx ring to wrap
> > >    * @ntu: ring index to bump
> > > + *
> > > + * Return: the next ring index hopping to 0 when wraps around
> > >    */
> > >   static unsigned int idpf_tx_splitq_bump_ntu(struct idpf_tx_queue *txq, u16 ntu)
> Strange idpf_tx_splitq_bump_ntu() is not idpf_txq_has_room 
> Can you doublecheck?

I didn't get. What do you mean? Please elaborate.

-- 
With Best Regards,
Andy Shevchenko


