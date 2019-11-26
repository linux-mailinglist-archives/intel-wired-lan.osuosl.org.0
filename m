Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3079E10A4A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2019 20:42:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8686686F8A;
	Tue, 26 Nov 2019 19:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zv81SqehfNdc; Tue, 26 Nov 2019 19:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A93FC86DF3;
	Tue, 26 Nov 2019 19:42:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70E241BF346
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C5FC20475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FS-g+WqaljL2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2019 19:42:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id B4D6F2001F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:42:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:42:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="359265053"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 26 Nov 2019 11:42:16 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 11:42:15 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 Nov 2019 11:42:15 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 26 Nov 2019 11:42:15 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S34 v2 2/2] ice: Implement peer
 communications
Thread-Index: AQHVn9AFuH2++10SL0KsU6iYiRhJwqed44FQ
Date: Tue, 26 Nov 2019 19:42:14 +0000
Message-ID: <853b870bbb2f404fb576c77581d8a327@intel.com>
References: <20191120095417.15124-1-anthony.l.nguyen@intel.com>
 <20191120095417.15124-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20191120095417.15124-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWM3YjU2NjYtOTEzOS00YjJiLWJkZGQtYWMxOTVmMzE4NTY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMk9lWG1XZlJHME5pXC9TZ1JzMDUrYXNOVWttakFQVlpyU29TTWQyK0F2N1g3YlwvT1Yza3BUSVVrMFJuVUpuTGdYIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S34 v2 2/2] ice: Implement peer
 communications
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
> Sent: Wednesday, November 20, 2019 1:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S34 v2 2/2] ice: Implement peer
> communications
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> Set and implement operations for the peer device and peer driver to
> communicate with each other, via iidc_ops and iidc_peer_ops, to request
> resources and manage event notification.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2:
> - Change usage from MFD to virtual bus
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  32 +
>  drivers/net/ethernet/intel/ice/ice_common.c   | 188 ++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   9 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  34 +
>  drivers/net/ethernet/intel/ice/ice_idc.c      | 879 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_idc_int.h  |  45 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  39 +
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |  45 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    |  69 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  27 +
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   4 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  25 -
>  15 files changed, 1364 insertions(+), 38 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
