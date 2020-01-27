Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9C014AC84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2020 00:16:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 941DA20131;
	Mon, 27 Jan 2020 23:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXrfh11oPm6G; Mon, 27 Jan 2020 23:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C562920343;
	Mon, 27 Jan 2020 23:16:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD7361BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A986520131
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGxy9jSj5wst for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 23:16:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id CE4B720104
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:16:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 15:16:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="221906300"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 27 Jan 2020 15:16:26 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jan 2020 15:16:25 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 15:16:25 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 27 Jan 2020 15:16:25 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S38 10/15] ice: Fix
 virtchnl_queue_select bitmap validation
Thread-Index: AQHV0X9MXi0O0VXG3ECiyxPDg5iTgqf/LIow
Date: Mon, 27 Jan 2020 23:16:25 +0000
Message-ID: <5467f7e0e5724ba5bc49a0962120223b@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
 <20200122152138.41585-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200122152138.41585-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODgwODk1ZDMtOTczOS00OWI0LWI1ZmUtMjFmYzI3OWRjMjE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSXVGYVFpblpkeGpyejBTNUNKMjRhc09TQ1NQMTlMUk1XNk85Q1VnTXRTNGFZUVJiZkY4MW5jbEhuN1ZmTjBZMiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S38 10/15] ice: Fix
 virtchnl_queue_select bitmap validation
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
> Sent: Wednesday, January 22, 2020 7:22 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S38 10/15] ice: Fix virtchnl_queue_select
> bitmap validation
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently in ice_vc_ena_qs_msg() we are incorrectly validating the virtchnl
> queue select bitmaps. The virtchnl_queue_select rx_queues and tx_queue
> bitmap is being compared against ICE_MAX_BASE_QS_PER_VF, but the
> problem is that these bitmaps can have a value greater than
> ICE_MAX_BASE_QS_PER_VF. Fix this by comparing the bitmaps against
> BIT(ICE_MAX_BASE_QS_PER_VF).
> 
> Also, add the function ice_vc_validate_vqs_bitmaps() that checks to see if
> both virtchnl_queue_select bitmaps are empty along with checking that the
> bitmaps only have valid bits set. This function can then be used in both the
> queue enable and disable flows.
> 
> Arkady Gilinksky's patch on the intel-wired-lan mailing list
> ("i40e/iavf: Fix msg interface between VF and PF") made me aware of this
> issue.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 26 +++++++++++++------
>  1 file changed, 18 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
