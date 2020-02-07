Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F97915613E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 23:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B3A5843E6;
	Fri,  7 Feb 2020 22:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Nga5H8Sjk9k; Fri,  7 Feb 2020 22:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ED8E8441C;
	Fri,  7 Feb 2020 22:34:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CDDB41BF57C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 22:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C784F8800F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 22:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BC202Pa+0mrt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 22:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4AA1B87EA4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 22:34:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 14:34:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,415,1574150400"; d="scan'208";a="226620216"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2020 14:34:43 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 7 Feb 2020 14:34:43 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 7 Feb 2020 14:34:43 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 7 Feb 2020 14:34:43 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S37 v3 11/15] ice: Use ice_pf_to_dev
Thread-Index: AQHV3RZXD/AxY5OsU0CqpOcjbJE45KgQU1lg
Date: Fri, 7 Feb 2020 22:34:43 +0000
Message-ID: <30676660a9f747029e0d482132dcf256@intel.com>
References: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
 <20200206092013.23388-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200206092013.23388-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTlhNjAwNDMtNmRlYS00N2ZkLWEwM2MtNGNiNjQzNTVlMTk5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ2ZtSUwxT2t5VG5hemFkaTZTSXU3UUVxV0FBWEQ0bldQRDA5YTFUdUxveURURFZRUzBCaVo3SStUYThIU2N1cyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S37 v3 11/15] ice: Use ice_pf_to_dev
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
> Sent: Thursday, February 6, 2020 1:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S37 v3 11/15] ice: Use ice_pf_to_dev
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Use ice_pf_to_dev(pf) instead of &pf->pdev->dev Use ice_pf_to_dev(vsi-
> >back) instead of &vsi->back->pdev->dev When a pointer to the pf instance
> is available, use ice_pf_to_dev instead of ice_hw_to_dev
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c        | 12 ++++++------
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c      |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c         | 14 +++++++-------
>  drivers/net/ethernet/intel/ice/ice_main.c        | 16 ++++++++--------
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  8 ++++----
>  6 files changed, 27 insertions(+), 27 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
