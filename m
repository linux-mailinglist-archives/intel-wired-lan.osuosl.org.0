Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFA7B0451
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 20:58:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05DB187E16;
	Wed, 11 Sep 2019 18:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gFXKS9ewUAcT; Wed, 11 Sep 2019 18:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6904187E53;
	Wed, 11 Sep 2019 18:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EBCB1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA984204C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:58:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mLxF49EoEW9T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 18:58:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 58EA9203BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:58:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:58:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="184570126"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga008.fm.intel.com with ESMTP; 11 Sep 2019 11:58:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Sep 2019 11:58:49 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 11:58:48 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 11 Sep 2019 11:58:48 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S29 v3 3/6] ice: Implement Dynamic
 Device Personalization (DDP) download
Thread-Index: AQHVZ1xWbS/Ooe+x9kqYY2Tq/IGiiKcm1xXg
Date: Wed, 11 Sep 2019 18:58:48 +0000
Message-ID: <222a18159ae744589ce087c4f0fd8de8@intel.com>
References: <20190909134747.10415-1-anthony.l.nguyen@intel.com>
 <20190909134747.10415-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20190909134747.10415-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODFiZGRkMWMtNTdlMy00MmFjLTlhZTAtNjU3YTIxZWY1OGE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiN2h6Z1ozNHlIRk9vSXgyWExITFQ1ZXkxMG9pTDJVdWRCam1RM0hoa205eXdVSDJBMzFTUDF6d0lNdWF2UElXMCJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S29 v3 3/6] ice: Implement Dynamic
 Device Personalization (DDP) download
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
> Sent: Monday, September 9, 2019 6:48 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S29 v3 3/6] ice: Implement Dynamic Device
> Personalization (DDP) download
> 
> Add the required defines, structures, and functions to enable downloading a
> DDP package.  Before download, checks are performed to ensure the
> package is valid and compatible.
> 
> Note that package download is not yet requested by the driver as further
> initialization is required to utilize the package.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3:
> - Fix alignment issue
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  60 ++
>  drivers/net/ethernet/intel/ice/ice_common.c   |  40 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   4 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 608 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |  25 +
>  .../net/ethernet/intel/ice/ice_flex_type.h    | 372 +++++++++++
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |  26 +
>  9 files changed, 1137 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_flex_pipe.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_flex_type.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
