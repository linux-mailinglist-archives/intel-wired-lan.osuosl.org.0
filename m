Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 026085EB75
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 20:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8C6B203CA;
	Wed,  3 Jul 2019 18:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kidte0Ks-XWI; Wed,  3 Jul 2019 18:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9DBA520474;
	Wed,  3 Jul 2019 18:21:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97EDB1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9254A203CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mAD5-ILvJYAD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 18:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 21CD5203B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:21:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="166057783"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2019 11:21:29 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 11:21:15 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.246]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 11:21:15 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v2 15/15] ice: improve print for
 VF's when adding/deleting MAC filters
Thread-Index: AQHVLgmVyYybbgjiI0ylcEvNVVXxxaa5PA9g
Date: Wed, 3 Jul 2019 18:21:14 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD1C5@ORSMSX104.amr.corp.intel.com>
References: <20190628150332.59155-1-anthony.l.nguyen@intel.com>
 <20190628150332.59155-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20190628150332.59155-14-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzdmMjQ2MTItNDlmYy00MDFiLWJmZGYtNDE3ZmU4YTZkMDIwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQlNSWjh2T2ZFQUZpc296aEZDTm5pVkI1VVdMV29cL2I3MXVTa05kRWtQaTJHNWNsZHNFYWNBcDIyZlZCYmVXaXQifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v2 15/15] ice: improve print for
 VF's when adding/deleting MAC filters
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
> Sent: Friday, June 28, 2019 8:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S23 v2 15/15] ice: improve print for VF's
> when adding/deleting MAC filters
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> When we fail to add/delete MAC filters in the VF, the print doesn't
> distinguish between the two. Fix that by printing whether or not we failed to
> add/delete the MAC filter respectively.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
