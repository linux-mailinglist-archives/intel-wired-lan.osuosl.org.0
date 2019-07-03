Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 471195EB72
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 20:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E721784331;
	Wed,  3 Jul 2019 18:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kau87LvKdXqL; Wed,  3 Jul 2019 18:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4EE184417;
	Wed,  3 Jul 2019 18:19:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30AAD1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D10684331
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2eyi8suYQoyJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2019 18:19:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C129B836D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2019 18:19:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:19:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="154836425"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga007.jf.intel.com with ESMTP; 03 Jul 2019 11:19:39 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jul 2019 11:19:38 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.150]) with mapi id 14.03.0439.000;
 Wed, 3 Jul 2019 11:19:38 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S23 v2 13/15] ice: Move VF resources
 definition to SR-IOV specific file
Thread-Index: AQHVLgmQN2NvxfkyJk+rVfzvbewpW6a5O57A
Date: Wed, 3 Jul 2019 18:19:38 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FD1A3@ORSMSX104.amr.corp.intel.com>
References: <20190628150332.59155-1-anthony.l.nguyen@intel.com>
 <20190628150332.59155-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20190628150332.59155-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjk2MWE4NjEtNGIwNi00M2FlLWFkZjMtMzZiM2YxODY2NTlhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQm9hM2dmeWtWRWk3NUNmRXZtemZNYUFtRFBkTDc3bWNMY0loWjVLajA4cEl4aHJrTDdwak1GYnkxU2lmMkEweSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S23 v2 13/15] ice: Move VF resources
 definition to SR-IOV specific file
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
> Subject: [Intel-wired-lan] [PATCH S23 v2 13/15] ice: Move VF resources
> definition to SR-IOV specific file
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> In order to use some of the VF resources definition in the SR-IOV specific
> virtchnl header file, this patch moves applicable code to ice_virtchnl_pf.h file
> accordingly... and they should have been defined in the destination file
> originally.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h             | 10 ----------
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
