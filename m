Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2097412448
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2019 23:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3C0B8680B;
	Thu,  2 May 2019 21:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yoG429jTP3kX; Thu,  2 May 2019 21:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31FA486870;
	Thu,  2 May 2019 21:45:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4EFD1BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E084130EC5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0lMfkiOtINT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2019 21:45:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 14CC92261A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2019 21:45:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 14:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="167061041"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga002.fm.intel.com with ESMTP; 02 May 2019 14:45:52 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.121]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.183]) with mapi id 14.03.0415.000;
 Thu, 2 May 2019 14:45:46 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S4 iavf 5/9] iavf: rename
 iavf_status structure flags
Thread-Index: AQHU9Wu3N0h1OSXUYU+hk4pUvuz/66ZYdegA
Date: Thu, 2 May 2019 21:45:45 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D39C4AD@ORSMSX106.amr.corp.intel.com>
References: <20190417221737.11460-1-alice.michael@intel.com>
 <20190417221737.11460-5-alice.michael@intel.com>
In-Reply-To: <20190417221737.11460-5-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjdiNDliMmMtYTBlNC00NjAwLThmM2MtMzU1OWMwNmVjZjE0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNnpXbGtcL2trQ1FnUmlMYTk2WEs1cXhLSjZMNFNFWnpqN21YR1JkYmJwck82dHBoWW5IMmZVZ1BTQW5IcEVCNFYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S4 iavf 5/9] iavf: rename
 iavf_status structure flags
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
> Subject: [Intel-wired-lan] [next PATCH S4 iavf 5/9] iavf: rename iavf_status
> structure flags
> 
> rename the flags inside of iavf_status from I40E_* to IAVF_*
> 
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c |  42 +--
>  drivers/net/ethernet/intel/iavf/iavf_adminq.h |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_client.c |   6 +-
>  drivers/net/ethernet/intel/iavf/iavf_common.c | 266 +++++++++---------
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  38 +--
>  drivers/net/ethernet/intel/iavf/iavf_status.h | 134 ++++-----
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
>  7 files changed, 245 insertions(+), 245 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
