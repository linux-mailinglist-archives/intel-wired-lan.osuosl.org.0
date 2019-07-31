Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB207CB89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 20:10:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6C2F203F2;
	Wed, 31 Jul 2019 18:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4se3W4Opr-kO; Wed, 31 Jul 2019 18:10:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D6A5203AD;
	Wed, 31 Jul 2019 18:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE8F81BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C99642000D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tphr2yszSQEE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 18:10:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B4181FD90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 18:10:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:10:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="166482594"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga008.jf.intel.com with ESMTP; 31 Jul 2019 11:10:42 -0700
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 11:10:42 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.139]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 11:10:42 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S25 02/12] ice: Fix issues updating
 VSI MAC filters
Thread-Index: AQHVQxXpy2U+Uqw1B0yCBzK2Hx93v6blEEmw
Date: Wed, 31 Jul 2019 18:10:41 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40EA64@ORSMSX104.amr.corp.intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
 <20190725095401.24590-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725095401.24590-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzMzNmU0NTMtNWQxMS00ZGFkLThiYzItOTkwZjMwNzIxYTEzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZXJOZFZiRnI2ejdoc1R5Z3ExTkNrcjlzR2hCdnR1c0xJcFRjd01RZTJ2NUhCZ2NicDlNODhIT3lQdFFqbmNZSyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S25 02/12] ice: Fix issues updating
 VSI MAC filters
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
> Sent: Thursday, July 25, 2019 2:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S25 02/12] ice: Fix issues updating VSI MAC
> filters
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> VSI, especially VF could request to add or remove filter for another VSI,
> driver should really guide such request and disallow it.
> However, instead of returning error for such malicious request, driver can
> simply return success.
> 
> In addition, we are not tracking number of MAC filters configured per VF
> correctly - and this leads to issue updating VF MAC filters whenever they
> were removed and re-configured via bringing VF interface down and up.
> Also, since VF could send request to update multiple MAC filters at once,
> driver should program those filters individually in the switch, in order to
> determine which action resulted to error, and communicate accordingly to
> the VF.
> 
> So, with this changes, we now track number of filters added right from when
> VF resources allocation is done, and could properly add filters for both
> trusted and non_trusted VFs, without MAC filters mis-match issue in the
> switch...
> 
> Also refactor code, so that driver can use new function to add or remove
> MAC filters.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 30 +++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  4 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 64 +++++--------------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 42 ++++++------
>  4 files changed, 73 insertions(+), 67 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
