Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 237113380E4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 23:50:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE78960686;
	Thu, 11 Mar 2021 22:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cDQDhxvkINcq; Thu, 11 Mar 2021 22:50:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6B9A605BA;
	Thu, 11 Mar 2021 22:50:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E156A1BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC1054ECFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RA00ucXNhhnu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 22:50:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 767F94ECFC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:50:34 +0000 (UTC)
IronPort-SDR: Zi8d8ZrKMwtsFXJ3IXWiLaEj7S0yc2c8/Ztbk54Jc3uMSv1oGUFMJ6uwYDZ3eFfVpnBtx+U7UK
 67wWXjTHefdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="168025286"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="168025286"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:50:29 -0800
IronPort-SDR: mczPRB9SygxxMVnXI5zi9uqPabqbh8x6Qpo6wZNjg/hOa1469T07cMXqCVjMLTlvJ/CmmhTtjS
 UgkCZNKgOY5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="600388417"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 11 Mar 2021 14:50:28 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:50:28 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:50:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 14:50:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 14:50:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ga+ng6hx9x07vjKp1NdDOhoec7/FARTnHrawFOrVS3SMKnd8xlZpUZKx2nlGevR3Cyu731CoeD/Io6wQQx2UJZCy5Y6fgfnUa9kMzH0BU99JcuUKt2WzbvDYTImFMAKDKH8WytWQInQPAA43dCJfeW7j+l66/tP0AH6H9H3JF7kWVtZGT+bbbCBNYdKf4uZbOQwZ3l23uNJsNBJxg1/+1C0WjNhpqDdglcLSMf0RNvmT973/JsLjze1O5E7hlsWMoeZAiGDzMPdBRIRiD9X0oQ6ZHKSOM5NqmzC5v3XVm0ZPR3Dh2hLIPi40PFTn+I1+6YSsbgl4xJH4xLaFL/EtHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tCrxFnwLsKuGusW6Ucc2Q3U79mRD95M0YC71mFclKQ=;
 b=JM9FnITv9LJkyQSh0FCCgySfOvlgaRlBIl+yZl6RRe15nG6svQUlxoM5pW2TmN6dRRN1+rz1Qp0X3OkU+cT3LwLuZThyxt/Jg3R5fv+DGmaZXaBDRGY9ippi5eJnK00Vbgc3ZIohz8i/34E2yIxLsJjPI8E4kGWmoXHPc6EgPZ0bLSbudl2XrwZOC86/HhQ5MnWuWCwY5BAriTFeNFekQBXWX9LiXKru9VpR/hK+lTKRc25C3s30X5muTLk8df3DRjEqt1V3M7JQqSRL6XgoN6wVU7+0Lkkq6lkC4DUFYENF2y3Oh74rhZMlQoJdvNEQvyjZbwjDnxrB2x5Dg+8Lag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tCrxFnwLsKuGusW6Ucc2Q3U79mRD95M0YC71mFclKQ=;
 b=NP93EqZTP1x4cig0I52OYHP5pI7f1DbaVI83UaoC6jXSoYkit5f5HgQ8avbEsgjXDagc+dQ3SBFvOLOaSBFPm/pxovlw3e3lS3W6SMfsRSP958C5uOo88RGLUEByUh8Cp0rJ5sTuYw0xmkflrqREcEa1nlyoQT56/Q6sG9oT0x8=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1453.namprd11.prod.outlook.com (2603:10b6:301:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Thu, 11 Mar
 2021 22:50:26 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 22:50:26 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 07/13] ice: prevent ice_open and
 ice_stop during reset
Thread-Index: AQHXDIaMYT+eJrbU+kafUh4oA4eB7Kp/eKaw
Date: Thu, 11 Mar 2021 22:50:26 +0000
Message-ID: <CO1PR11MB5105C510C1129B479E8B9D8AFA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c547faa9-90bb-43e6-a83f-08d8e4e01038
x-ms-traffictypediagnostic: MWHPR11MB1453:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB145356299E407E167F396CF2FA909@MWHPR11MB1453.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TvLo1bfBMPCqqNqhogUFeZ/zspMNz4vcarQ+hYsaL/76AcdOVrwbRKejZE4tWv5vqKfih6eKSAh40s/hCKl2qSCV1R6lhyYftGzdSt7t9i0ku2NE7Jq8yY/r2gBn7zp2ZRDaJbvprr3Cnps9E9y1MH/OrnKN+j3zjKcI68aHC3E5N0wFVK1i/2A1b3SW5dxZ2U6Grmc1eu7d+6EIaAtc+gAPz/L8vrBdtPQg3Uid6vSfqfFKDw1KAAzi74GWiMA1fCXHlU7rAUZCt6+vqXg2iKYOAwLYKL/9EnAyZwclH6ZoCcsYUkrpPjg64ppGOMLKp1hf7fW/qlGUqCwJz5KLJ4hAZD11Jcgqy8/xms2LCheCSXNufgZggsO9NWp7vbBHwRdGtLs4hsUhV2VejYI/4WwCC+Qf0whE0x+ImMRfreLpEKCdeXv2OrkMLvQFpzsMFX+xl08B++Xfm85uXPhMEXUswsAMyEjR3M4xTUwCTtdtn6TOSliBv/j6xV+vcID6XnVcKmH7J6SlW59N7unHGbv2GTzXwzNwueEveOPJfvUerAd3jwYhMtMF8tvBUduO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(366004)(396003)(376002)(136003)(8936002)(26005)(71200400001)(8676002)(316002)(110136005)(2906002)(52536014)(5660300002)(55016002)(186003)(33656002)(64756008)(66946007)(66476007)(66556008)(66446008)(9686003)(478600001)(76116006)(86362001)(53546011)(6506007)(83380400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?R9dsP2wa/VSMMYiQHC2iRLvE727kWwMDjNrorM88WyGtJQClIBRzWDm5jPeI?=
 =?us-ascii?Q?ortKqYSOIES7SiiKtFn/2kSBaBYL0cqyBZmgC7f34x7GkemcuP+IhX7vSqga?=
 =?us-ascii?Q?mw6Kd8WZ1nHD6Edu+tPC7P1Tle6wtHij2hThdcj/pDfz3vLbtJz6FXkmFoc9?=
 =?us-ascii?Q?erzV6oYqDPYdz2U7zPB9Fz/OXnigJsvKmt5MOac+b34KRNhlA25YXsKrZg6b?=
 =?us-ascii?Q?G44zvZNX7x31LQAPiKOBcZC1olrXeKDHcpIu0l7k8kDUemG18TEo54+z0xLq?=
 =?us-ascii?Q?jTQzgiX2FIFoSOHKKtr3eKWirwr3dMPJ4w0V70mMUxDN6GHOo2iZY+dtjceu?=
 =?us-ascii?Q?KG/B1knJhA7g04ou5FDBs07Gp3qr5JcXsyqdjvzshUILEAYzZkM2JOzXNVg1?=
 =?us-ascii?Q?3RfnX462uQUfAmPc/DFZ19xk0DwZje79CZCJYTdLtpqavZCWPGZvHhsqHLru?=
 =?us-ascii?Q?5t6fBk3ZEDKWv48TXmm/Fu+TtWUcJzc9NCcJdpeLF/03oZ5UulJ8lQD5Av57?=
 =?us-ascii?Q?CuI7YQWs22RfFG9IYrUqXNj0rvnUNLkapBeU0N+1kxwSwfZm2AzlsESC0Teq?=
 =?us-ascii?Q?x9OgWGOtwBocAGJ784fCJzgBJfMJjV9xfIgwKDbx7fT1gb8AnhTtkJIr/HF1?=
 =?us-ascii?Q?FETW5AWL5Ne2CUQtSvItK8aEAJ2IsQcwf25EN5QY+q8qzycmjvtkD15RhGrP?=
 =?us-ascii?Q?368nUCUsoDiPuUtFMp4zgHoLSiSNWKuGo1wSvKhwu1Ea8OWNKPX36tl8UKYo?=
 =?us-ascii?Q?ABCnrNWEnMir6bBmzqr2WsW1ESs6uFGORH61y03CDG0/uGBEqkyKDCnTfPpU?=
 =?us-ascii?Q?+WoJMIoSTDoZVufUU/nyEIqTt9ju/ui2+neKrdQDghobfVxPf+uBUQgJ3OCN?=
 =?us-ascii?Q?l9G5yaf7iiI83wd8mvKGvtoqi145wwikGu/z8dzlGymwpDv9TfSagzvVpyHB?=
 =?us-ascii?Q?KCObuMu3G6+3indCalRA/5J3IInw4QqUkd2+ReIQfc5x9WEp02OqmERjh7v8?=
 =?us-ascii?Q?Vk1CvYsJIBlE1l4gXqqRMX8gZB4LDQaOjK/fsHnPhkQZrDIn84elpkRFsFF5?=
 =?us-ascii?Q?12TZoFCmyzfb9kMeLo+jDbvIPeLNqIVOHsJDH/6va9IdUBUEZS7nQbJ92Lhm?=
 =?us-ascii?Q?pX1UxkNgPOF7Fg8FQBKgartWOF5Fg+xFJOnMhmyLOEiskjBt0w+PmQsCZbjC?=
 =?us-ascii?Q?cTLMX92yogZfY2RBICyAEcyLJnog+U9ErKBjiCcEASY7pfbvD8kRNt0rHHbL?=
 =?us-ascii?Q?sp1mNqHtOk5R2hjcwA9WgGZ/obdBoPKtl1lMQOIOzU5iyfzDXZyX+qiZEOfz?=
 =?us-ascii?Q?2thmmy6MtbICeUZLNiEsEqFq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c547faa9-90bb-43e6-a83f-08d8e4e01038
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 22:50:26.7845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 09wkbehf8SZNndH1Efkt/8sXbCLQoDcgnKeiIaN/AkRTwKstW/s6LmTlzqLIR5XIj+o8lwrlgGfRp2DYjz2HgAsPYFXAIpei3Emfk6fUU10=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1453
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 07/13] ice: prevent ice_open and
 ice_stop during reset
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, February 26, 2021 1:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 07/13] ice: prevent ice_open and
> ice_stop during reset
> 
> From: Krzysztof Goreczny <krzysztof.goreczny@intel.com>
> 
> There is a possibility of race between ice_open or ice_stop calls performed
> by OS and reset handling routine both trying to modify VSI resources.
> Observed scenarios:
> - reset handler deallocates memory in ice_vsi_free_arrays and ice_open
>   tries to access it in ice_vsi_cfg_txq leading to driver crash
> - reset handler deallocates memory in ice_vsi_free_arrays and ice_close
>   tries to access it in ice_down leading to driver crash
> - reset handler clears port scheduler topology and sets port state to
>   ICE_SCHED_PORT_STATE_INIT leading to ice_ena_vsi_txq fail in ice_open
> 
> To prevent this additional checks in ice_open and ice_stop are introduced to
> make sure that OS is not allowed to alter VSI config while reset is in progress.
> 
> Fixes: cdedef59deb0 ("ice: Configure VSIs for Tx/Rx")
> Signed-off-by: Krzysztof Goreczny <krzysztof.goreczny@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  4 ++--
> drivers/net/ethernet/intel/ice/ice_main.c | 28
> +++++++++++++++++++++++
>  3 files changed, 31 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
