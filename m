Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC42A5AA2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 00:41:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67D37871AE;
	Tue,  3 Nov 2020 23:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90sSo00HGMLx; Tue,  3 Nov 2020 23:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0165287475;
	Tue,  3 Nov 2020 23:41:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94FD31BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9163286640
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sp_RsO5XNSwP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 23:41:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1529D8659F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:41:13 +0000 (UTC)
IronPort-SDR: w/LO8yWaNmp3zNBeRIbQKeFTzx8t+fKVMr5Ts8GPyh9DJRLzJm/+8yFfNCP5iVhMk9UFtm3EEU
 B4nLfDTFwWHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156916764"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="156916764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:41:12 -0800
IronPort-SDR: 9cDIz1J0lPdkI2fVR9y+IqbcZUmE+9rPvfyAwzs/ONnWpJMdthiu/k2ni1FmHw1UmTFQqxWJ5M
 rQyutNEDF5lg==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="305975414"
Received: from anemani-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.38.187])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:41:12 -0800
MIME-Version: 1.0
In-Reply-To: <20201102183129.GM6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201102183129.GM6427@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 03 Nov 2020 15:41:11 -0800
Message-ID: <160444687175.10323.1018795712592451265@anemani-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v3 0/9] igc: Add XDP support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Maciej Fijalkowski (2020-11-02 10:31:29)
> On Fri, Oct 30, 2020 at 02:03:42PM -0700, Andre Guedes wrote:
> > Hi all,
> > 
> > This is the third version of this series which adds XDP support to igc driver.
> > 
> > The main changes from v2 are:
> > 
> >     - Moved functions that belong to the driver's hot path to igc_main.c to
> >       allow the compiler to inline them if convenient.
> >     - Squashed ndo_xdp_xmit patch into XDP_REDIRECT patch.
> > 
> > v2 is here:
> > 
> >     https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201028201943.93147-1-andre.guedes@intel.com/
> > 
> > v1 is here:
> > 
> >     https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201009025349.4037-1-andre.guedes@intel.com/
> > 
> > Cheers,
> > Andre
> 
> I had only minor comments/questions for this version, so you can take my:
> 
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> for series.

Thanks for the review, Maceij! I'm adding your Reviewed-by to the next version
of this series I'm submitting soon.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
