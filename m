Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA7179D46A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 17:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4DC2840629;
	Tue, 12 Sep 2023 15:08:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DC2840629
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694531290;
	bh=dclXRxUrod1nRmrAX/96iiFxUhxHrt16dDpHs34y3rQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FKAxkjiUyZVh1Za4vtSQw+tC+CSlK/Gsi5QtIwLEsr7XjI+TYjrQ8cOnu5RnI6kpX
	 Xy7M/rbMI0RaGWAVuwKi55E4aVMYl+S+DwmcO0rMo1dv/I560JTI+ipCaMpqwAuR6H
	 dIz1/xeqoMERUZEjrln2+D+m89FLbTFQ60ixLf0eMHkdxNU6Z5izK9OuDraibDWGV6
	 kgOOrpLlGDpu4Z/oskY6jvmx8iVpjiMHDvuj7Xq1dXNq7bGCaKxgVDAIWdvnqkjD/f
	 jnO71F5yJ+Tc/521uLcnHHarORmrChQoiQeYOjBrj34nGx/ueHSadgii+hg/rH+7Nu
	 H9qq3zAz2H+1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gad_Xkrb-FC8; Tue, 12 Sep 2023 15:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14DD84017B;
	Tue, 12 Sep 2023 15:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14DD84017B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B24E1BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1FC64820D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:11:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FC64820D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id por3jCwtG-vT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 12:11:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 342B5820BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:11:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 342B5820BB
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378267954"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378267954"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833886306"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="833886306"
Received: from npejicx-mobl.ger.corp.intel.com ([10.251.217.90])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:11:30 -0700
Date: Tue, 12 Sep 2023 15:11:28 +0300 (EEST)
From: =?ISO-8859-15?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
In-Reply-To: <20230912113403.00006c39@Huawei.com>
Message-ID: <942077c8-a44a-5831-55b-afceb4412c2@linux.intel.com>
References: <20230911121501.21910-1-ilpo.jarvinen@linux.intel.com>
 <20230911121501.21910-4-ilpo.jarvinen@linux.intel.com>
 <20230912113403.00006c39@Huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-525986759-1694519782=:2125"
Content-ID: <70baab3-03e-d377-677-c25fa8176a57@linux.intel.com>
X-Mailman-Approved-At: Tue, 12 Sep 2023 15:08:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520695; x=1726056695;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=s4B/T6itIbA12r0ps1vdM+hwzQ3jFlRsKTz0S71M4xM=;
 b=Rsxe00xEZXSYbpwGcbZ6UXj6ZB0CoAdL4yll0eywLjxaX55DiQiEUN/w
 l6ljzCvnpz8uTtYRA3CmdaVaToLsiciDwl1gjtrODwojCNkUPMOOyN5mF
 Msvn0vaZjwv+M5D/eLBA5w14n0i/rvruMlZn+BUS7m/A6Ns9QMcfVCuQS
 VUrWfw8Uvkvqy66mwavNZxi6HOrpHILlTCjDIfFYUULwPIdJPn1QM2Cf5
 vPq1XuPqQBQB9RZ63LPUjJy+rwp5usBpW1ko5b3f0Pm6KE9MfEEP4XnRC
 /rkf1E8KXfw6M56oOzoyLAzvfUOl0YtfVsUWgPxPZacDeWc8f3klR0vut
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rsxe00xE
Subject: Re: [Intel-wired-lan] [PATCH 3/8] igb: Use FIELD_GET() to extract
 Link Width
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
Cc: linux-pci@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Netdev <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-525986759-1694519782=:2125
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <e51e5bf7-e092-ac4f-59c9-117fbfcad42f@linux.intel.com>

On Tue, 12 Sep 2023, Jonathan Cameron wrote:

> On Mon, 11 Sep 2023 15:14:56 +0300
> Ilpo Järvinen <ilpo.jarvinen@linux.intel.com> wrote:
> 
> > Use FIELD_GET() to extract PCIe Negotiated Link Width field instead of
> > custom masking and shifting.
> > 
> > Signed-off-by: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/igb/e1000_mac.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
> > index caf91c6f52b4..5a23b9cfec6c 100644
> > --- a/drivers/net/ethernet/intel/igb/e1000_mac.c
> > +++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
> > @@ -1,6 +1,7 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /* Copyright(c) 2007 - 2018 Intel Corporation. */
> >  
> > +#include <linux/bitfield.h>
> >  #include <linux/if_ether.h>
> >  #include <linux/delay.h>
> >  #include <linux/pci.h>
> > @@ -50,9 +51,8 @@ s32 igb_get_bus_info_pcie(struct e1000_hw *hw)
> >  			break;
> >  		}
> >  
> > -		bus->width = (enum e1000_bus_width)((pcie_link_status &
> > -						     PCI_EXP_LNKSTA_NLW) >>
> > -						     PCI_EXP_LNKSTA_NLW_SHIFT);
> > +		bus->width = (enum e1000_bus_width)FIELD_GET(PCI_EXP_LNKSTA_NLW,
> > +							     pcie_link_status);
> 
> This cast is a bit ugly given it takes the values 0, 1, 2, 3 and
> we extra a field that the spec says contains 1, 2, 4, 8 etc
> Hence it only works because only 1 and 2 are used I think...  Not nice.

Not perfect but I guess the enum definition could use 
PCI_EXP_LNKSTA_NLW_X* to ensure at least the PCIe ones match.

> Also, whilst looking at this I note that e1000e has it's own defines
> for PCIE_LINK_WIDTH_MASK and PCIE_LINK_WIDTH_SHIFT 
> 
> Looks like those should be changed to use the standard defines.

Yes, thanks. I added a patch to address those duplicated defines and 
I also noticed it had a duplicated copy for PCI_EXP_LNKSTA which I also 
converted.

I'll send v2 which has most of your suggestions taken into account once 
the build bot has done its thing.

> For extra giggles there are two e1000_bus_width enum definitions in different
> headers.

No, there are actually 3 if one looks carefully, and many more if the 
ones named according to the driver are also counted all following this 
same "not nice" pattern. ;-)

That's 3 different drivers though which just happen to be similarly named 
so it's not entirely fair as it would be same as saying drivers x, y, and 
z have something with the same name. It's pretty obviously those come from 
copy paste though which usually means some common code might have been 
handy.

> Actual patch is good - just 'interesting' stuff noticed whilst looking 
> at it :) 

Yeah, I've plenty of 'interesting' stuff I've noticed while looking around 
on my todo list. I even thought I had that general PCI_EXP_* FIELD_GET() 
cleanup on it as I recall eyeing what it would take to find all of them 
but it seems I never added that there (now it is).

But then I was taking a look at these Link Width ones and there was just 
so much low-hanging fruit (some of which are like you put it, an 
excellent example of good cleanup) so I went to do that right away 
without considering all the other fields.

Thanks a lot for taking a look.


-- 
 i.
--8323329-525986759-1694519782=:2125
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-525986759-1694519782=:2125--
