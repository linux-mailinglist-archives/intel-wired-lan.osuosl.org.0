Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 998C28D04C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 16:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50CF8608BF;
	Mon, 27 May 2024 14:53:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wTwvOYmTlKut; Mon, 27 May 2024 14:53:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A0C6608C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716821624;
	bh=aRBXGHVxa5RsJqJQrWtgH28ywjA+m+p779kK2/pSvFk=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1HhH6+nGuf3OU00EFOTgpG7AOJB6sxOvT9xFqN8K3Q7B+tzMlF12rDX6za1XiP3sB
	 5191+zVc45ZhthsJZSeNwmRL63RSnubEZNdrBIWEGum8lPAkx1c0L+9fEjv59xW803
	 tH5r3ka9j5yQKlxOn/I8xST11+GWUXvJtppG75CTdj8eCM64khDBI2FrBdDYs2mFEa
	 3B11AUZJsEIgWzKMJ1Z8DwkAlLYfbG+6bKI9P4TUIIOEFtPe4aU2z2maQKQiGKT5IW
	 tvnq6cDAZ1WH+tg/V47Kp4QERjL7cbOfzySsfnYlv6PX6ZUbY4c1Cswe4m0GwbHiqV
	 0D0VzPKKoOTVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A0C6608C2;
	Mon, 27 May 2024 14:53:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 950301D1E16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A29BE40253
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2_GUUugA1cxb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 14:53:41 +0000 (UTC)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.142.5.81;
 helo=fgw20-7.mail.saunalahti.fi; envelope-from=andy.shevchenko@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C63754016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C63754016B
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi
 [62.142.5.81])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C63754016B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 14:53:40 +0000 (UTC)
Received: from localhost (88-113-26-230.elisa-laajakaista.fi [88.113.26.230])
 by fgw23.mail.saunalahti.fi (Halon) with ESMTP
 id a799409f-1c36-11ef-80bb-005056bdfda7;
 Mon, 27 May 2024 17:37:33 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 27 May 2024 17:37:33 +0300
To: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
Message-ID: <ZlSarRwF1vEbfzlP@surfacebook.localdomain>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-13-lakshmi.sowjanya.d@intel.com>
 <ZkH37Sc9LU4zmcGB@smile.fi.intel.com>
 <CY8PR11MB7364A367739AA57107DBBE6AC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY8PR11MB7364A367739AA57107DBBE6AC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=gmail.com
Subject: Re: [Intel-wired-lan] [PATCH v8 12/12] ABI: pps: Add ABI
 documentation for Intel TIO
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, May 27, 2024 at 11:53:07AM +0000, D, Lakshmi Sowjanya kirjoitti:
> > -----Original Message-----
> > From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Sent: Monday, May 13, 2024 4:52 PM
> > On Mon, May 13, 2024 at 04:08:13PM +0530, lakshmi.sowjanya.d@intel.com
> > wrote:

...

> > > +Date:		June 2024
> > 
> > Is this checked by phb?
> > 
> > "the v6.11 kernel predictions: merge window closes on Sunday, 2024-08-04
> > and  release on Sunday, 2024-09-29"
> 
> I have taken from phb but my understanding is that any probable month before
> merge window should be added.

I didn't get this. You meant the merge window for the next cycle after your
changes are expected to land?

> I want to know if it should be the month when the merge window closes? (i.e
> in this case August)?

My common sense tells me that there will be no real users (except developers)
for any kernel that's marked as vX.Y-rcZ. Assuming that we announce the ABI in
the release, we should use date of the estimated relase. In this case I would
use September 2024.

> > > +KernelVersion:	6.11

-- 
With Best Regards,
Andy Shevchenko


