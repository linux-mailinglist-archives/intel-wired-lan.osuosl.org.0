Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6493A4C40D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 01:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CDC9822DD;
	Wed, 19 Jun 2019 23:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dZS66fLl5Yp8; Wed, 19 Jun 2019 23:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6152824BE;
	Wed, 19 Jun 2019 23:21:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF3401BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5431822DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHP+oRazUhlr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 23:21:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29EFD81DED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:21:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:21:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="243457990"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga001.jf.intel.com with ESMTP; 19 Jun 2019 16:21:25 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.97]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:21:24 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net] ixgbevf: Use cached link state instead
 of re-reading the value for ethtool
Thread-Index: AQHVJsBHz2EKMk5Iv0ekEbmxPvw9Haajndfw
Date: Wed, 19 Jun 2019 23:21:23 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3F8D63@ORSMSX104.amr.corp.intel.com>
References: <20190619165853.28234-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20190619165853.28234-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmNlMjcyNjctMDljOS00NDAzLThiODAtMjZlNGNhMDk4ODM2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY09abThUcURVS3NYVCtjSkx2eVBNZnBkQzI1VVVDb2xFbzFyUGNrXC9TYXJudEVyZHV3MTJsb1ZpRDdod3dzcXcifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net] ixgbevf: Use cached link state instead
 of re-reading the value for ethtool
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Jeff Kirsher
> Sent: Wednesday, June 19, 2019 9:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>; Guilherme
> Piccoli <gpiccoli@canonical.com>
> Subject: [Intel-wired-lan] [net] ixgbevf: Use cached link state instead of re-
> reading the value for ethtool
> 
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Change the ethtool link settings call to just read the cached state out of the
> adapter structure instead of trying to recheck the value from the PF.
> Doing this should prevent excessive reading of the mailbox.
> 
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> Reviewed-by: Guilherme Piccoli <gpiccoli@canonical.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ethtool.c |   10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
