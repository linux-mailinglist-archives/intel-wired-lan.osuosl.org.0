Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A738475C6F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 16:57:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8A1C41578;
	Wed, 15 Dec 2021 15:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l_tP_zzeqmGH; Wed, 15 Dec 2021 15:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1C354021E;
	Wed, 15 Dec 2021 15:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 945DE1BF376
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 15:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FDFE82438
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 15:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTnH0D95LvMq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Dec 2021 15:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5DBF82435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 15:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639583822; x=1671119822;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SaFR5nP8rh00SuGMAEtimUK+TO/+pJl/G/57mPJiKHI=;
 b=Wcp3aS0qElRBY2Fs2ifl0zImr8MZgifFSjdN0qCMpl6hQIpQYfnr6Eyj
 d8Gj28TaZVgReTWUqlaVAfiRraOxF9yQvEjVrTB+9KmQk/66LTMkstXP7
 XJHv+0SPxw37KSuk0gqtPZBQBzcX4Nw1GVVy+cPJjDJVkeRUUYQY5r2mb
 T4PR92G7uCw2c4eujRtJCALHxBK73EBA1loG+sXwgUChT0OVXY8mjfnPM
 zi9ddHGUAMi0b2YvfDgP9X2ynMWYKO+5SjktMI3Z6bvzKyri9wRoQ3/0f
 Z4eH5b8pyAw7Wxj3SeHydpwNXyiQwu6iycXeavrjzRRuDDBRokcy1Neq2 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="239067749"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="239067749"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 07:57:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="505851534"
Received: from bpll.igk.intel.com ([10.102.21.141])
 by orsmga007.jf.intel.com with ESMTP; 15 Dec 2021 07:56:59 -0800
Date: Wed, 15 Dec 2021 16:47:37 +0100
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20211215154737.GA94623@bpll.igk.intel.com>
References: <20211213105234.397045-1-karol.kolacinski@intel.com>
 <bce5f2e32aa835d43c9e2deba39df9342dfbaec7.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bce5f2e32aa835d43c9e2deba39df9342dfbaec7.camel@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 intel-next] ice: add TTY for GNSS
 module for E810T device
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
Cc: "Mishra, Sudhansu Sekhar" <sudhansu.mishra@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 13, 2021 at 08:14:34PM +0000, Nguyen, Anthony L wrote:
> On Mon, 2021-12-13 at 11:52 +0100, Karol Kolacinski wrote:
> > Add a new ice_gnss.c file for holding the basic GNSS module
> > functions.
> > If the device supports GNSS module, call the new ice_gnss_init and
> > ice_gnss_release functions where appropriate.
> >
> > Implement basic functionality for reading the data from GNSS module
> > using TTY device.
> >
> > Add I2C read AQ command. It is now required for controlling the
> > external
> > physical connectors via external I2C port expander on E810-T
> > adapters.
> >
> > Future changes will introduce write functionality.
> >
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>
> > ---
> > V1 -> V2: Added CONFIG_TTY dependency
> > V2 -> V3: Removed unnecessary & on pf->hw pointer check
> 
> <snip>
> 
> > +       pf = gnss->back;
> > +       if (!pf || !pf->hw || !gnss->tty || !gnss->tty->port) {
> > +               err = -EFAULT;
> > +               goto exit;
> > +       }
> 
> ../drivers/net/ethernet/intel/ice/ice_gnss.c: In function
> ice_gnss_read:
> ../drivers/net/ethernet/intel/ice/ice_gnss.c:30:13: error: wrong type
> argument to unary exclamation mark
>   if (!pf || !pf->hw || !gnss->tty || !gnss->tty->port) {
>              ^
> 
> I believe Piotr's comment meant the &pf->hw check is not needed at all.

Yes, exactly. Sorry if that comment was a little misleading.

Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
