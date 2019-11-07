Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 027EAF374C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 19:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42B208583C;
	Thu,  7 Nov 2019 18:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMRGhuqUlrIS; Thu,  7 Nov 2019 18:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8127B8543B;
	Thu,  7 Nov 2019 18:34:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFA021BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A91712038A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0o5R2Pf7pdUj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 18:34:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id D17252013C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:34:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 10:34:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="196645193"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 07 Nov 2019 10:34:17 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 Nov 2019 10:34:16 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 10:34:16 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 7 Nov 2019 10:34:16 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S32 v3 01/15] ice: Use ice_ena_vsi and
 ice_dis_vsi in DCB configuration flow
Thread-Index: AQHVlNEhM7CWECHD20+WPkmREy06DqeACieg
Date: Thu, 7 Nov 2019 18:34:16 +0000
Message-ID: <c5287da0b80b451694b215081a4e7f5b@intel.com>
References: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDU2ZWRmM2EtYTFhNy00NTkyLTk1ZTEtZGQwMWUyNTQ1NzcwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYUJ0THVrU1FlYlluMDNNeXFDRFh5bjdUTFhJQm1oNXNOb2JIb1huMVQyRVNnQVAzbllFT2taMEplVkVqRFM3RyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S32 v3 01/15] ice: Use ice_ena_vsi and
 ice_dis_vsi in DCB configuration flow
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
> Sent: Wednesday, November 6, 2019 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S32 v3 01/15] ice: Use ice_ena_vsi and
> ice_dis_vsi in DCB configuration flow
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> DCB configuration flow needs to disable and enable only the PF (main) VSI,
> so use ice_ena_vsi and ice_dis_vsi. To avoid the use of ifdef to control the
> staticness of these functions, move them to ice_lib.c.
> 
> Also replace the allocate and copy of old_cfg to kmemdup() in
> ice_pf_dcb_cfg().
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3:
> - Use kmemdup instead of kzalloc + memcpy
> v2:
> - Add null check after allocation of old_cfg
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  4 -
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 31 ++++++--
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 56 ++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  4 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 79 --------------------
>  5 files changed, 84 insertions(+), 90 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
