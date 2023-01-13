Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C25668C6A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 07:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37A1960F35;
	Fri, 13 Jan 2023 06:19:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37A1960F35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673590798;
	bh=WFprSRajriF4XQVgqpZsm6201EmvVXzlRq7Ic10njFg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zjKAexjscYV5+trjNmtoPijCcVZpuvVAm1jaEmN2n5vpBqAJjn3RHc2mkRSboadd9
	 7vAZSjU6aUFf8nrkPVZMdWr5RmJWKa/StnCIOZPfJE6zaf6UGVPtQizvNzH33gbPRq
	 +myf199qDzLnybMDx0PG4eMCA53N1eOmJkU78L6HeabYXdaPpucRgfhvTkjf1pUFD/
	 JkwESVVAMR0h5g6jYIEeTm+XMzTzMhCIja0cYkh2661RCgHhqWgr1uz7mcDXRKWS91
	 1/TeFgW9fb0d0Wh6NFUJQC9hxL7ER9rugetOckv/5htZ3XlNg5x6IEmvBY2TkBhBtJ
	 Bp2wew92f8kRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxddtRyt7135; Fri, 13 Jan 2023 06:19:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4344960F32;
	Fri, 13 Jan 2023 06:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4344960F32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50BF11BF83B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 366CD417B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 366CD417B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YZPvL0cmCLZa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 06:19:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36FF7416E5
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36FF7416E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 06:19:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="351160522"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="351160522"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 22:19:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="608061543"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="608061543"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 22:19:48 -0800
Date: Fri, 13 Jan 2023 07:19:44 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>
Message-ID: <Y8D4AOf3kp8nP3Mq@localhost.localdomain>
References: <20230111103630.17629-1-michal.swiatkowski@linux.intel.com>
 <MW5PR11MB58116DC5649D511678C5A5E5DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
 <MW5PR11MB5811DFAA1856850501745134DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW5PR11MB5811DFAA1856850501745134DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673590791; x=1705126791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=L9hJQOQcYcmoOFkCFzOlTEeTJXCsMtmBZUHCd1G/Xoc=;
 b=LD3zeX/MNw7tO2W8P/+YphsI1SoC7ibotitLQFmpNIDRNsqueikEN6lD
 S39fRs+je3hVuQbFVWF/19JDXtb/GN3IdTdVDBfcGL5WdhB7T6SSi1SaL
 CFs89HlM6ESDmb2K80oQ0F9y6hlAVO/ctplD6coBf2okRPcASPUw+PIqC
 UJ2BoXVs93ZDKHnCY0C4L43rGGBStkz3z2Q04o2thvq3a3NzJicpyuUc1
 wWQMdGDBZiVZXCMBQRbI+xI89sOnUqBTdFsGoMl3XofsW+5+bLEabPJ48
 AxlUsPlbydXz1z3EJyK+lJN8JyeD6VyVUfV4tUoaSPH6LKO8xfypLfwW9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LD3zeX/M
Subject: Re: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "error27@gmail.com" <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 12, 2023 at 05:38:29PM +0000, Ertman, David M wrote:
> > -----Original Message-----
> > From: Ertman, David M
> > Sent: Thursday, January 12, 2023 9:03 AM
> > To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; error27@gmail.com
> > Subject: RE: [Intel-wired-lan] [PATCH] ice: memory leak in
> > ice_vsi_alloc_stat_arrays
> > 
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > > Michal Swiatkowski
> > > Sent: Wednesday, January 11, 2023 2:37 AM
> > > To: intel-wired-lan@lists.osuosl.org
> > > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > error27@gmail.com
> > > Subject: [Intel-wired-lan] [PATCH] ice: memory leak in
> > > ice_vsi_alloc_stat_arrays
> > >
> > > Fix memory leak by checking if stats were already allocated before
> > > allocating new one.
> > >
> > > Previously it was completely broken, because new allocated value was
> > > checked instead of previous one.
> > >
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Reported-by: Dan Carpenter <error27@gmail.com>
> > > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > > ---
> > > Should be squashed with commit eace2cbe7f5f
> > > ("ice: split ice_vsi_setup into smaller functions")
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > 
> > Thanks for catching this!
> > 
> > Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
> 
> Please clean-up variable ret, since it is not needed any more. Also can probably clean up braces that won't be
> needed any more also.
> 
Done, thanks

> DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
