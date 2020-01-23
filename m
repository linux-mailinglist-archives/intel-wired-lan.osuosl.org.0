Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF54B145FF6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 01:34:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 864F288295;
	Thu, 23 Jan 2020 00:34:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KAe760XxbeM8; Thu, 23 Jan 2020 00:34:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3C0F88277;
	Thu, 23 Jan 2020 00:34:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8A801BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2020 00:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E594788277
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2020 00:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZTxaR1uBPw1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2020 00:34:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5389E88296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2020 00:34:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 16:34:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="285557308"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jan 2020 16:34:20 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jan 2020 16:34:19 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jan 2020 16:34:19 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 22 Jan 2020 16:34:19 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S34 v3 2/6] ice: Complete RDMA peer
 registration
Thread-Index: AQHV0L5V796eaVZeJEeAZQuC5su3nKf3aCZA
Date: Thu, 23 Jan 2020 00:34:19 +0000
Message-ID: <c5520c4c74bf4970b820af4deb9da291@intel.com>
References: <20200121162021.17107-1-anthony.l.nguyen@intel.com>
 <20200121162021.17107-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200121162021.17107-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDcyYTkzYmItYWZlYS00NjNlLWJmMzctMWFkYWQ4MmZlNGI1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSWp2ZE12Rmc3V1RZQnNuU0ZTVFRrMThcL3oya01ZbW9HXC83K2Zjb2tieUNnM0lnRzE1VEhUR2RKSWhMNUFUYUpiIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S34 v3 2/6] ice: Complete RDMA peer
 registration
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
> Sent: Tuesday, January 21, 2020 8:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S34 v3 2/6] ice: Complete RDMA peer
> registration
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> Ensure that the peer supports the minimal set of operations required for
> operation and, if so, open the connection to the peer.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_idc.c      | 288 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_idc_int.h  |  36 +++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  33 ++
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |  18 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  23 ++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  25 --
>  8 files changed, 401 insertions(+), 26 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
