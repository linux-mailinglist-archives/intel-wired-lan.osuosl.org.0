Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02662F3759
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 19:37:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C0732013C;
	Thu,  7 Nov 2019 18:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gs6O5QTKMOcX; Thu,  7 Nov 2019 18:37:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8CB88203FD;
	Thu,  7 Nov 2019 18:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 200111BF568
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:37:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1BA0E2038A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23wTrKCfep5b for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 18:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 574B52013C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 18:37:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 10:37:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="196646142"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 07 Nov 2019 10:37:24 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 Nov 2019 10:37:24 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 10:37:23 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 7 Nov 2019 10:37:23 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S32 v3 06/15] ice: configure software
 LLDP in ice_init_pf_dcb
Thread-Index: AQHVlNErYlAxKqwlo0KAB3x3v4cW2qeACwzA
Date: Thu, 7 Nov 2019 18:37:23 +0000
Message-ID: <9b564e74c77446c7b06e035731a2905d@intel.com>
References: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
 <20191106100541.48639-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20191106100541.48639-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWM0MjYyZjgtMjBlNi00YjhiLWI2ZjQtYmY0NzBiMDIzZTQ0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNGtrOUhNR3QwVE1NZHN6Vzh5amgySUZ6bUowQ0o5TVVKYTNtREpOVHBOVDBROGlXNnhMejBab1FTa1ZWNlY3QSJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S32 v3 06/15] ice: configure software
 LLDP in ice_init_pf_dcb
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
> Sent: Wednesday, November 6, 2019 2:06 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S32 v3 06/15] ice: configure software LLDP
> in ice_init_pf_dcb
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Move software LLDP configuration when FW DCBX is disabled to
> ice_init_pf_dcb, since that is where the FW DCBX state is determined.
> Remove this software LLDP configuration from ice_vsi_setup and
> ice_set_priv_flags. Software configuration includes redirecting Rx LLDP
> packets up the stack, when FW DCBX is not running.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 15 +++++++++++++++
> drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 -----
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 14 ++++----------
>  3 files changed, 19 insertions(+), 15 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
