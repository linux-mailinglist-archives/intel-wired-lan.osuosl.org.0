Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1DAB0450
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 20:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2592587E16;
	Wed, 11 Sep 2019 18:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sicpav1UbUPk; Wed, 11 Sep 2019 18:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5403987E1D;
	Wed, 11 Sep 2019 18:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A75DA1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A350886A0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Hh+x1NUIEdl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 18:58:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D36B8869EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 18:58:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,494,1559545200"; d="scan'208";a="200575744"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2019 11:58:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Sep 2019 11:58:14 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 11:58:14 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Wed, 11 Sep 2019 11:58:14 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S29 v3 2/6] ice: Fix FW version
 formatting in dmesg
Thread-Index: AQHVZ1xbMu+uDyfi/kGEbv6Oac6/F6cm1vLg
Date: Wed, 11 Sep 2019 18:58:14 +0000
Message-ID: <0b32e0b3e7d84791849634086c1901e2@intel.com>
References: <20190909134747.10415-1-anthony.l.nguyen@intel.com>
 <20190909134747.10415-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20190909134747.10415-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODM4ZWQ1M2EtYTMzNC00NTc1LTliYjMtNzZjZTIzMWIwMjEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVWZOZ251OWRKdzllMkMrREFlQ3JBK3lpRHBPaTdQd2o0VFc2OUp4SUNtb2Z5M3pxUnZ4M0hkejhCZmpLSkRSRSJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S29 v3 2/6] ice: Fix FW version
 formatting in dmesg
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
> Subject: [Intel-wired-lan] [PATCH S29 v3 2/6] ice: Fix FW version formatting in
> dmesg
> 
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> The FW build id is currently being displayed as an int which doesn't make
> sense. Instead display FW build id as a hex value. Also add other useful
> information to the output such as NVM version, api patch info, and FW build
> hash.
> 
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 -
>  drivers/net/ethernet/intel/ice/ice_common.c  | 23 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_common.h  |  3 +++
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 25 --------------------
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 19 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 ++
>  drivers/net/ethernet/intel/ice/ice_main.c    |  7 +++---
>  drivers/net/ethernet/intel/ice/ice_type.h    |  2 ++
>  8 files changed, 53 insertions(+), 29 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
