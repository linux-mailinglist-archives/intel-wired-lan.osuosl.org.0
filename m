Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D3A13649
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 May 2019 01:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5187F31041;
	Fri,  3 May 2019 23:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PrkWdFFvnk2w; Fri,  3 May 2019 23:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0446F30FF7;
	Fri,  3 May 2019 23:41:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4336B1BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F3F588555
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SO2n8tNp2nyR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 23:41:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 132278843D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 23:41:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 16:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,427,1549958400"; d="scan'208";a="139726700"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga008.jf.intel.com with ESMTP; 03 May 2019 16:41:34 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 16:41:34 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.120]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 16:41:34 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Memory leak in
 i40e_config_iwarp_qvlist
Thread-Index: AQHU9iYQsj0pVOqem0CX/vzdr0bYK6ZaJx8A
Date: Fri, 3 May 2019 23:41:33 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C71E@ORSMSX106.amr.corp.intel.com>
References: <20190418203153.37605-1-alice.michael@intel.com>
In-Reply-To: <20190418203153.37605-1-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2JjNWQ4MzgtYjJkMy00ZjA2LWE1ODUtNzEwOGQ5M2ZlN2VkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiREJReVdrblhUa1lsdVFVT3BuSTBtaXVtMnVBNTIyUlgxN2YyREJCM2I5NDY1cGoyaWE1MGxTTDg0MVpMSzZ3YyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Memory leak in
 i40e_config_iwarp_qvlist
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
> Sent: Thursday, April 18, 2019 1:32 PM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Szapar, Martyna <martyna.szapar@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: Memory leak in
> i40e_config_iwarp_qvlist
> 
> From: Martyna Szapar <martyna.szapar@intel.com>
> 
> Added freeing the old allocation of vf->qvlist_info in function
> i40e_config_iwarp_qvlist before overwriting it with the new allocation.
> 
> Signed-off-by: Martyna Szapar <martyna.szapar@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 23 ++++++++++++-------
>  1 file changed, 15 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
