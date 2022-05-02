Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7404516BF2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 10:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D62E60EAF;
	Mon,  2 May 2022 08:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6W1fCcKzAimC; Mon,  2 May 2022 08:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A8AD60BFF;
	Mon,  2 May 2022 08:19:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30C441BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 08:19:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2566160BFF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 08:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mM219fRwcWlR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 08:19:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BA446079D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 08:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651479578; x=1683015578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OmU5niAmNgWCp/aYry3SzzVQqk8RMAJrfHHSa2gNdyA=;
 b=gFKdhJTF542h5yfhATHplUQHLBSlBX8hNqrJfagTSbrCK4QPEYQdhp5s
 gq+Vxak3pD6esOO/5yemzeTJ3rJNn9awIiqfxXSUcYkKB2iyUZfk9Bt/o
 Ht42UencrpxPpVo00avCkTL9GgfsOlEaWADDMxtho8mQJnrKaG2oQhoq9
 SYI8ekoxmhH7SO90UqqgXikKsVua6oGtMhmghBtdl0AwQmWJuxA88Hpf5
 MR4G3thO6LHyez5bNXDZKtikiQ+NJ0Eq9YyI5FqP1vuMrmstUzKeYYxAa
 cAG248SeSI0ZYkYpEXw51GrMUrU+EzTosj+lDjNtXYZ2Ht3av6DAZK3za Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="353583502"
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="353583502"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 01:19:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="707519356"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2022 01:19:36 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 2 May 2022 01:19:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 2 May 2022 01:19:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 2 May 2022 01:19:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EdnN+1B1SpoXXSnMPucwpux2WzjfPCY+XJUpf9uF33cRFZZBplHUaU9Oeh8zIIClfFR/E9c0OtRbiXHckuOdzvZrAOKE5jCUqhz68ubkYPyDKxsvZQ4LuPPtXgmsDfIpKilg6GomGgIHzmoWzWwdlsLUCcgFV926C5POCfuWGYHr0We1dFoA/VvDzyN54dkcDgI2kju7rxVqsT5UHkDKSeADHVfl+vUsuuSVTMHqXiDuk8gkbceSYWM/6SdRTkkmzTgZEO8ejiQvR/h8v7IYgK2Nvb4z6EsNVkX8bvHDFFyemP2ADyvQvvxs7sHdLIHvJ5b36ugwU6shPH3GMA6NnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AbEHbjbEexl1g5Mojfn/9tyGBRHqOE0t7Ts2WwFOsMo=;
 b=IvwP4AAdkTdHKJri92PFIWF2cn21sos+LRd+CI9Fti+m8vlBRE15CeNjIj4CQcSU0pA/5zHCHdtQU0AxKAJqURqesxqgdfB31SJTmDvcGqcvUMy9xMpoao306Gj0W6IyLsR8X3wgvlDbRKmDCDGq4FR3ls3tcg7Z0woMRcoKTgwOlGIMRUrpjjA2drBSwJUAbdSNsv9cq6+Hrb33C84gDerc/GGj31QiK5SS+lCb1igyJ7gceqZr/PdnOdRjiZu7/9BZqx8l58n0+jypUGNlP6mqbMRxVPmnGGhTKBz1EV/7mbd8+uLLlrHpwuKYNvYjsElule0Y1O6XPKZ2yoO7cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3590.namprd11.prod.outlook.com (2603:10b6:a03:b2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.23; Mon, 2 May
 2022 08:19:28 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5206.024; Mon, 2 May 2022
 08:19:28 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
Thread-Index: AQHYW7MCp9sR587SbUCbHbHRS8CrPK0LQyzA
Date: Mon, 2 May 2022 08:19:28 +0000
Message-ID: <BYAPR11MB33675756A56DBC428E95B688FCC19@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220429102145.74764-1-karol.kolacinski@intel.com>
In-Reply-To: <20220429102145.74764-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b05db84d-f33c-4f49-dd80-08da2c1479d2
x-ms-traffictypediagnostic: BYAPR11MB3590:EE_
x-microsoft-antispam-prvs: <BYAPR11MB35906ECE2D6686A3134D1546FCC19@BYAPR11MB3590.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a+PvStdyW1ez+uXOi8+pbnjgW8ExL45a2jcwS1FylKxt+u649CxvsyI9I0GlG+NqLG+al4gox378OgXMsNA390LNclStEVCFc6J/CNEtvjOO2FT0V1U/rVH/ocqUMd+VmLsvJRo554dsB7WxG2HClMGukz4Z8A7hzaAJgVhj0o6rO14B0eEhaaXyPvFd83khExs3scIvFpBTI1dJi4IRB1fZLYB9lyXnYwi/xyOaHCz1SFwAbflYYXwlEpjJ13f0/pc7Bud0TfnW5gExTGOknvvheDso7lKQojJ3mK0UuVg0Kyo90wjHj/CzotNAA9h8Y+U5+SQHDD9vx5vni9YdTRFW9/pcxk3uh4XBLVmSRFBiG/UraXqBUhuOo2WshaRey4B8BHMjvZEUj+fMcVq7XwD055Be+8Qi838OT6EYXYFG0AIRTMhAeIJBknphprBwbk6a3GXPoO9xJ5uSt26ElYwqEARzuznY4HBRRLCenb654Tsk0pXgBIKhuW5rauudXpOcCw8B6E5EjcA9zMjVjdWCnxFkooI3vEDGqw/BSEnLgN6O0qWMlsqcSIOSJ6DfPwWN06MUvAFThyG/eXvn+8mLYSihkqsrXw+IT4uUBbDrASLhhKxIpEr0BXUDZnzfxPCUUMOqfCMmgGsVafcCX4xRL02zqO3JgvZvdIuug1N21GIXu//xX6COUh6iTzbxdnlyiGTZnPtVISOl6Odyiw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(8676002)(2906002)(86362001)(66476007)(64756008)(52536014)(66556008)(66946007)(66446008)(71200400001)(316002)(82960400001)(33656002)(8936002)(5660300002)(4744005)(122000001)(38070700005)(76116006)(38100700002)(508600001)(110136005)(83380400001)(186003)(6506007)(107886003)(9686003)(53546011)(55016003)(7696005)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TGes+3qu56RylD2Y3+QZpAP6XRTXZNN4GfCk1jDahY5Vj/xmOIbBAJi91whZ?=
 =?us-ascii?Q?5JSs75AdsDx/foy+gQuIfBeXv3IwUyEIRpyn0d0tUwhiqyd3qaAgQmK31g14?=
 =?us-ascii?Q?cbtCEIhsdDOjk8icd3kF0FksUJkqqKcgmidO8JCY1y7d/MHVU9eoZSJDHgAX?=
 =?us-ascii?Q?abkFTpsvHrUG0dymX3CKsFsHbwdhgTjM6ffdkeOPM2ev0zK7Hk2J12/glekd?=
 =?us-ascii?Q?Yv2172v3easabGAoSdxQPClV7qA1zY3lX4bBZkZdP4NMBPO+CX9GaolPcFf1?=
 =?us-ascii?Q?AfwOQTAbUDfiYHaXgpuwiweFhQRVaT/J68jk0EOpuYOJ5zU8GRY+BxVI02N0?=
 =?us-ascii?Q?LZrdXRQyTxUFeLty6QNwZL2Q0XtVDD24FE5X1noGzbvKaA0JmSoDKhnH5RPS?=
 =?us-ascii?Q?ETWjzEUpYDnulcfurrUZg6hqGX9tKeojqYptOFcBuQhBJceSb6YWQQP/iPl8?=
 =?us-ascii?Q?JHBwoSZVHbecV+VhjLHq0w3Bxaac2RB5UT+5P8OBAZcPoCPVM6bdCLWloXf8?=
 =?us-ascii?Q?uFTAFtgxg91PHwT4OgK8+mF7qwHbCFl/GRRT5vo3wgGxmRv7f04PDVGmK+rO?=
 =?us-ascii?Q?CdhK8nkbmbHDBD7Dclja9ysfeEOrzm2Qi9WpEQ1lihBM075RCEPa5nup5lov?=
 =?us-ascii?Q?UJuKVzRhQiFwz5UJEAuuo4TbPdF9z0HmNmfct2/dMNlR4F/cJdamZVky76gW?=
 =?us-ascii?Q?b3y0hwdxB4Jl2eCHVuI8buTbmNKhOFgU6YnpRUf2Za0iKkq2Vfxi2J/71N2k?=
 =?us-ascii?Q?T2R/RNMoDo9OjM5VTqhYOIjRG5R1w1jxofBeI050M4fzEWD+5nSdiQZCb2/t?=
 =?us-ascii?Q?VobYuZb0alVik0tORlD9R/IxgGFLDt6nz3HV5lhQA7agkV+UBK9WVQKW62k1?=
 =?us-ascii?Q?aFhpRD9Cb0TVYwmYDQGRuF31JWGrnzxoAI7mzVSeGEY10QaXzezSwi9Q47nM?=
 =?us-ascii?Q?tc0FiaJtWkS1uZd+AdYGw+lzo3h9Tr6xa+xKnCDrR66h6OuxPcm/UzI8/HeJ?=
 =?us-ascii?Q?HBAIxRj5dMOVD2HNRD+kjq0L0g7yedsL0mYkaZiRs5bax8xYUYkfKtCAk/TS?=
 =?us-ascii?Q?+X4RnZ80Kg/nCes3ABozNmysQqrV8OFJQgyYnlZN5Y6ZAzNEPx9lfRnPHdXt?=
 =?us-ascii?Q?/StphDrxr411tZSLEmAzLXaAsUF5n+VWeJZPXfT6k8CJIb37pRHnsM801VFY?=
 =?us-ascii?Q?7I+WblNNYCdnl13ePxeXoDN31nirBHeA6GCWl63Do2dkQBYIxllFGdxAvbcG?=
 =?us-ascii?Q?SbDLpfzdFBdmoKkCTuhwTjaBKAPcMCY4Jo8Ia/ZG2+ukLS7uYnhrxmIMnDTu?=
 =?us-ascii?Q?81nbtTdblX3rU0P4Ji69HJ0eGPYMiDBao6c1JCdbQj6Fp7VqKgMQZ+sfZLS3?=
 =?us-ascii?Q?UFuy3SDkN9jgBtIQbtFLgJeIFJ8zBtcOMqHP6fQlj5TrLt7TBwms6+fESIWr?=
 =?us-ascii?Q?vtb/AypRXPFM0mGTtLjfDqzD8YpVdfmIz7soIgWgDAiRkACvbljfBynt3NTd?=
 =?us-ascii?Q?m1BfKt6PiYtjIRi7zy2fnIBEfTBngUXMneQ2Mfh+840Jm7YK9uNqLUiRHpNn?=
 =?us-ascii?Q?aNs3BNxmGnRtdodZcDqYQaxayh7uoYA4qqkLgyQSLmtx5lFe6DKW1AGHFPci?=
 =?us-ascii?Q?Qt9EC3rIsj9zWs2ZFYt9Kxa176ssPI/p4yPr3LVQyjQV5NT2zHSLFj2s00kQ?=
 =?us-ascii?Q?ZMjhUsz5pKDZbWcUwHcCnXyPEIjj9HDSjyxYNG9QcA6Qo+35IoYyuBMk5uyO?=
 =?us-ascii?Q?x38Viw/IqQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b05db84d-f33c-4f49-dd80-08da2c1479d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2022 08:19:28.0552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ZbNMirr9JKDcsKeoyoMqIPBFhZapJwRJzstn3PL0nuUife4RR/HC7Us1MIfwQ3ju0YFmzCLGIASYo2U1+dMMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3590
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Friday, April 29, 2022 3:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 intel-next 1/3] ice: remove u16
> arithmetic in ice_gnss
> 
> Change u16 to u32 where arithmetic occurres.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V3 -> V4: Add one missed line
> V2 -> V3: Add previously removed err variable
> V1 -> V2: Use more native types
> 
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
