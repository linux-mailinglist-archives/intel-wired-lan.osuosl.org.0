Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA8F1244F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 23:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC46730EFC;
	Thu,  2 May 2019 21:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A+oqG6IZuGRr; Thu,  2 May 2019 21:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 861B130E90;
	Thu,  2 May 2019 21:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1976E1BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 157AB8825E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VTLnCHyurb5n for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 21:47:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D55098823B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:47:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 14:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="320968888"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 02 May 2019 14:47:31 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 2 May 2019 14:47:30 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.24]) with mapi id 14.03.0415.000;
 Thu, 2 May 2019 14:47:30 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S4 iavf 9/9] iavf: update
 comments and file checks to match iavf
Thread-Index: AQHU9WuwicKKyrIrV0uTQ0XDtIBIMKZYdmLg
Date: Thu, 2 May 2019 21:47:29 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C4EF@ORSMSX106.amr.corp.intel.com>
References: <20190417221737.11460-1-alice.michael@intel.com>
 <20190417221737.11460-9-alice.michael@intel.com>
In-Reply-To: <20190417221737.11460-9-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDZiOTllNTYtNDRmNi00NTM4LWI5M2UtNGQ2NGM2MjRmZDgxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRDZoKzI4WndPSzFpb2IyeWlmaVwvSzV1WW01MitnTG5uQ0ZwbWUybDEyOWtkKzZCdXgrSjJPUHhjSmRwQTlhcVwvIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S4 iavf 9/9] iavf: update
 comments and file checks to match iavf
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
> Behalf Of Alice Michael
> Sent: Wednesday, April 17, 2019 3:18 PM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next PATCH S4 iavf 9/9] iavf: update comments
> and file checks to match iavf
> 
> Some small things were missed with recent name changes from i40e to iavf.
> Having a seperate patch allows to correct the small misses in one place.
> 
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_client.c   | 4 ++--
>  drivers/net/ethernet/intel/iavf/iavf_common.c   | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_trace.h    | 4 ++--
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 4 ++--
>  4 files changed, 7 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
