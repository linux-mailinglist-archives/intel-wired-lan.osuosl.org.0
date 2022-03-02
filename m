Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2724CAF48
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:02:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77A6B82611;
	Wed,  2 Mar 2022 20:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQmkHB-nJI4L; Wed,  2 Mar 2022 20:02:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61BC781A58;
	Wed,  2 Mar 2022 20:02:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A50A41BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 925FA60D58
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3EXdDMHSd8BV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:02:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D82D260BF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251337; x=1677787337;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7cMODZviLEkgI0ywpIBFPF7+KZNfBrYIhhwOLFlbC0Q=;
 b=XVPAe1klnAFTcNpsNQBhy3RP4nTnuZsGlVnW5KVxvWGyDk5/jAEeB7Yg
 kUU6WT4jXC2BPk2ofjBVPP4S0j+isAIITXCR4jc7uk2IFQuLpdJjvfZ4Z
 24DlmU0pyZ1WvoDueankNKfpqfgmU3+9+Yp3Ge7vAzU4omwdGOAkUSLaW
 SytSEneiEAJIs5SeSkyy2w0ThrE17tcLtPyiO0Xx4aiuaOVxkVuZb0Ms2
 Xa/tyJ331qI/ECfqYk7jcX0iRT0UyN5Ic5lHtcYf2tB3+bv4mjcpFR2Kd
 6OjLxTu+kx/sft8/LsYOq98Uw14R/AwTbhEHuvtF5/WzP4arAA9/0Ldhz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="233461801"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="233461801"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="639908648"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2022 12:01:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:01:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:01:52 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 12:01:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HqnPSRiWsfOejQUv5HgMdEUIC4pz1VepwSTPc3neWTUxJcCtAwem5XfXA0elESC2czlU+o2PiBvGVWynXhg+F81VwqeF5a9+K8PgONqdGpC7v9ZhBJmIjecwo8OnB4NsXb3cZD8NN3gTK+EPaQhrHx93D58JRdadGJrX2A21lpBakdiVAXEwrTl4Dxjl8TLHr35tC/ErTliLrJvkwZrlFJv3PT5zN2sIE+Cv/FdDmG99D0fOFU10pHgItgTgokfi5Exy++YLBZ9m81j+7/HITPW5KkHgOpaR9UWol/fMUPioMDRCeU9WBUMgCpUnM/eDF0/lS0O6eC0aqie0KHUZaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zF29aTPEsD4f+YWhrt4KzYw6gBMF/q52cR6NMTWA5BU=;
 b=myHi3mM/0YfJtk4cRmEBFXSwxn86KNs64iHXxFosaWuUY5wNkbG0dNZMPz4kO/vTKkLP4hqZzF9w/A/KGoGeMimNNXsVmC4afOcKyxjPbPg6/aeDGW656iJOfbYz39VQo1CTOWp/Zpz5aMVZvqJvcpPwDx10ZjmeJB2o7lUUqF5LedH/PU3n2maWzRc7HCFbvQNFeTpWBW+7L3QYSS9He0XPG+4uVRR0AxahAgXEwPR4MXQjXkD0gQAlBP0Bn8074KEPOHH6VXNi9RSUnRcGkSAerPoFe8zjOgAv628kr7EUyZSCL2sL6ZgsXybOyqPtsz6on7iFqkPV8XdqLo616A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:94::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:01:50 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:01:50 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 09/25] ice: cleanup error
 logging for ice_ena_vfs
Thread-Index: AQHYKExH90htCfQ32UeUfq6UKhNB+6yskArQ
Date: Wed, 2 Mar 2022 20:01:50 +0000
Message-ID: <SJ0PR11MB5629E384A197A60694B64C96AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-10-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-10-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 40d208a7-0536-4c95-3119-08d9fc877d60
x-ms-traffictypediagnostic: CO1PR11MB5124:EE_
x-microsoft-antispam-prvs: <CO1PR11MB512427C73191023AA3B214ADAB039@CO1PR11MB5124.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b0UWzMDNQtL9Pt1VE9qnXoxvuQG8eWqwWLjL46o6ZK2rVTkstKlCHJkI4AZY6mzoP2y2VUbsxm8tNX0umSojkkDQRXYsfIlKL8b6a5yWnIzYOsQjk9km2hyEf7Rh6by8cZaNJmzKHA2/DanQuM5U4N2sz3YY2u45xcxT/zrdrK10odrPeVVzXkn2Ce+v8P3tsmcQzXXL1JpF4rR+m/J9JpESdyZADacAIDIHo13XB0LIjZNXuWAwJ19YEdtf3YL2AgqEDS68Hdv73dqvuqXhZLO5fncYFwNL2iGWFH+ybDtujsBCa1WZtSz3WGlFPM7fQuRAuN/lvmYcI0Qp/Tc6bLEj4Xwvprwr0oQShoZ8BN2Xz6PbczxufvhdzNkacw4BmmWjNeaN4pcPyOVyyc2z0S1pRGaGi0yid2QvwJg/YzNbvb9yxSvnXRQ8OBZ8JRmzgvRR1hAlCM2+omKJglAbCOaBlOIPxtCJiqyRBmKFPlG4BuQqQwz2tkY4tZrVgLUwT5keTxHLaDtsN74UR+iUWgYpJQMh30XExVrRhTyGFzm/ZgDZ0rE9sSng6CHg1jnS7pY1+4d+CniIw7K8nwHHW/ctE8lJWjU1BlDKyEVZF7Ru+uP7b9SXGUqRO2WNqNotQcMxfVD7nHGAJFfDnjo4RPc7Rkjf6bc05OKpFKLCMhJzTM/bbYeTUrabyiscrxzvQcxrjDXapJ6ID+8UI4VJ+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(52536014)(38100700002)(508600001)(71200400001)(86362001)(55016003)(110136005)(83380400001)(8936002)(9686003)(316002)(186003)(38070700005)(26005)(66476007)(64756008)(66446008)(82960400001)(53546011)(7696005)(6506007)(66556008)(122000001)(8676002)(76116006)(2906002)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9krDcRgf1cdSVXJaTa74C0M2Xb/rhNDetSZzXAMNpM1naY6bZYR4nsrA/0nW?=
 =?us-ascii?Q?sqGGJg+E78ygJ6n1EMqdeMxlIsZc1j0rXpSE8tHBq7VLMFiZXvzx1OhNtdH/?=
 =?us-ascii?Q?v3TBzqgbaBF7HMDDg3CnIoIJuaKV6nuk+wnnMx+T02ZmltCkhly3tVMN4zQP?=
 =?us-ascii?Q?HC1bDweE6Uz8YIrPzLj5L/f6LTuHA8VaHvR+wKCIFrsfy5FRnO8Haz29+mhy?=
 =?us-ascii?Q?awAB7AbCljPyhX66ktQ1JfljdB32TXjZM8ruPA2OGGnzhUJY7bDCBFSMuJfp?=
 =?us-ascii?Q?g8FHP02TTP9GaL66YZ4dqwDxqEWTUtjW5jWJLnRon0grneHc9iL1QwpEI4Yj?=
 =?us-ascii?Q?+rXN4bnn4o4iN1yG68KZXQlN0Ok6K/sctGnnuDDfX1TmfBSU1UjOozWv9pxF?=
 =?us-ascii?Q?FyPG5SYIFGf+cg6CpvfUOc8bkbGeWnYhGiPvMBZ6dQx0qFy/9jDT0vDmyeiU?=
 =?us-ascii?Q?DJ4ANvR+gffw/lfu8YhEav862JbRnsENaelhE3NZBtDs5xGMaZfqo5CmGGzP?=
 =?us-ascii?Q?P8IZ36Fc+Y39wCzbDLDcNZVNzMJED3Is7C15q9f1Yn0GJ57NXJmTTAbEh+o1?=
 =?us-ascii?Q?Sc+X5bY7f6CcN5fl98kxGehYrgfUYlcrzBjGp2OTxaXRYDnw1visoB2PQ9ae?=
 =?us-ascii?Q?b+sTjUaz9QdvbBnfcsBLW/bogOEWoB7ZmoiLX2cDJvt+xg1TIsg2lP7cB12S?=
 =?us-ascii?Q?etMV4RTXnkQvOFzlrQoGYzOWpT4X/ss8BGYZ18V/1z8qgiiGlfpPDyJQjFa8?=
 =?us-ascii?Q?7juAWRrtzLduCLMMPGC52G1ZHbgosjJ5DUTA37aO5np21Fr4j7kxFc1pil7Q?=
 =?us-ascii?Q?lDe7iSwPmMaZHq88xCA9x4DsRKm3AqNBEGjmHK1ZJOGdjZWeO+IEowsC/vo8?=
 =?us-ascii?Q?9KKRI90oHRzdUppqFFH0W6EGnChoYz906/TjA+VhcHyVbNA4ZgFehAIC6qW0?=
 =?us-ascii?Q?g0ibOTmChJiIQuRKB/Ke9nwnpCp8NpcGoB1PU8+Zd/7JoLH6pVZp7BBeYtzT?=
 =?us-ascii?Q?XDDOCU7snagybie8K3YXRhLyccK9pVO1E8eNTH0RjWbJocJJDbkYXuorGf7K?=
 =?us-ascii?Q?A0PD38ZCBkZgnpsamv/W2CMi+QTFzNI2iJzeAZfs//jBrYxDuknoR/iQpjhV?=
 =?us-ascii?Q?2OgUgF4xCuwghob5hx817WfVVS5OGaVPDW6kH69xyhHcWVlI0bFWJZtisZwa?=
 =?us-ascii?Q?yDCfI4omZbSZtvFBVH30Kq04OVDEdQF/kn1P/lJSn1JMSiEDzDIxdE2Qo1WA?=
 =?us-ascii?Q?fLgFn5Fbvpdo8rk+Zh7tEWn5qMeD2vZ7bjpVij11+i4RI65v6y67RxW1XYkr?=
 =?us-ascii?Q?WBinyPNP8PgVxraVOc7GsGqux+YnX6dwS+NTFpAjGqz4CJumZvMb/0RYujVd?=
 =?us-ascii?Q?K0ROtj3b9HtAQOkcvcy0YdRBuhVFBPtbRtu4ryDDtmTZUOEmhbuSI/MvMsCQ?=
 =?us-ascii?Q?Hc04DHZqu3cSvbqLAVY16m0MoGWXbubemGI5q2P2Dm/egI46t96CfFqdFg3i?=
 =?us-ascii?Q?uJkgnvrLL7fjAIbGp+PaSQ4ANWxQ4fUMm8uW3i39zzZF31seIvIDXRWrxdcw?=
 =?us-ascii?Q?UxFWvGuVJF2CX/ibhk7rNG9ucQBVWfKhkzjauTw0rDHTexvcAXzTtRxB33mv?=
 =?us-ascii?Q?S7j7rFSew3ATGWBCzX4rs/MHRasS2iGwZ+EdpIVy71+dgSZOBz5cOif1QlEc?=
 =?us-ascii?Q?Ev0Ncg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40d208a7-0536-4c95-3119-08d9fc877d60
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:01:50.2939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JQp3nS4G9qYc1r1Fk9FyLWmY3uU1/BSpN+3iW1Q5u4FUQQKwLeZ5WlOqhk8aPE1WY36ZYw6GYEEconE+v6Kw8Jo3CBqszfWDaDFTKCtDSyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 09/25] ice: cleanup error
 logging for ice_ena_vfs
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
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 09/25] ice: cleanup error logging
> for ice_ena_vfs
> 
> The ice_ena_vfs function and some of its sub-functions like
> ice_set_per_vf_res use a "if (<function>) { <print error> ; <exit> }"
> flow. This flow discards specialized errors reported by the called function.
> 
> This style is generally not preferred as it makes tracing error sources more
> difficult. It also means we cannot log the actual error received properly.
> 
> Refactor several calls in the ice_ena_vfs function that do this to catch the
> error in the 'ret' variable. Report this in the messages, and then return the
> more precise error value.
> 
> Doing this reveals that ice_set_per_vf_res returns -EINVAL or -EIO in places
> where -ENOSPC makes more sense. Fix these calls up to return the more
> appropriate value.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 32 +++++++++++++---------
>  1 file changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index eebff1824be2..b695d479dfb1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1275,12 +1275,16 @@ static int ice_set_per_vf_res(struct ice_pf *pf,

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
