Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF09125660
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2019 23:16:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FBA185092;
	Wed, 18 Dec 2019 22:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftWddSpduCCv; Wed, 18 Dec 2019 22:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0C9A85078;
	Wed, 18 Dec 2019 22:16:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B04C1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 26DF988508
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EAWIwzQtgucj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 22:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89C7A884CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 22:16:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 14:16:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218286810"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 14:16:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Dec 2019 14:16:53 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 14:16:52 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 18 Dec 2019 14:16:52 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S35 03/15] ice: Add code to keep track
 of current dflt_vsi
Thread-Index: AQHVsSSlgtm496kqL0CoZy4SVEHlnqfAf1jw
Date: Wed, 18 Dec 2019 22:16:52 +0000
Message-ID: <4c8bb0a4622f4944b9503f3ea7220a17@intel.com>
References: <20191212111307.33566-1-anthony.l.nguyen@intel.com>
 <20191212111307.33566-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20191212111307.33566-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODVkYmRjZTEtNmI2ZS00MmFlLWExMmYtNWY1NmE2ZDRmOTY4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVFhWbWFpaTVjNllmRkNKNGtvOHltdUtVMWYrdmxxNHE5WjVYdDFKcTN6S3pVeWhWaTNsRHpaaWZNNEJxVHNEOCJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S35 03/15] ice: Add code to keep track
 of current dflt_vsi
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
> Behalf Of Tony Nguyen
> Sent: Thursday, December 12, 2019 3:13 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S35 03/15] ice: Add code to keep track of
> current dflt_vsi
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> We can't have more than one default VSI so prevent another VSI from
> overwriting the current dflt_vsi. This was achieved by adding the following
> functions:
> 
> ice_is_dflt_vsi_in_use()
> - Used to check if the default VSI is already being used.
> 
> ice_is_vsi_dflt_vsi()
> - Used to check if VSI passed in is in fact the default VSI.
> 
> ice_set_dflt_vsi()
> - Used to set the default VSI via a switch rule
> 
> ice_clear_dflt_vsi()
> - Used to clear the default VSI via a switch rule.
> 
> Also, there was no need to introduce any locking because all mailbox events
> and synchronization of switch filters for the PF happen in the service task.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 118 ++++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h  |   4 +
>  drivers/net/ethernet/intel/ice/ice_main.c |  43 +++++---
>  4 files changed, 151 insertions(+), 16 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
