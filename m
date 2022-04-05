Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB1F4F2A78
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 13:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 672BE40A5F;
	Tue,  5 Apr 2022 11:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYlklip010mI; Tue,  5 Apr 2022 11:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C23140A5D;
	Tue,  5 Apr 2022 11:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B6BF1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 11:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C25061022
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 11:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TCClviFwpMSE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Apr 2022 11:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5741C60F60
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 11:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649156603; x=1680692603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GdEVkufssjvYfaM+4oOKNNA4iJmTLE8ShNCQLxZQvTg=;
 b=ktRjta6V6Vd3hYdp9a/nP70Gcqrbl2b4jt7i/T9LLiMcdm+kCOwB3+OU
 Zrl1GV2SOUqcu0ZxjTEAk2vk3S43Y2izBbvmlINErNij9+lxUjXAT4ekU
 r7K027B27z5W/2VD1yH5esI0EI494+DjCedAXzoNtabDe23uJnqchqZxo
 gdzqAWSRqyDEC3Gq+hQj+WpHarYkgsm6EwbFX4imYt9ftSOTrYcxkjIXv
 cQT9gkVPQ7vhm6owETxuesNqZL1GQM7SKWm1yvoAKsUr5auPFq8X+Tb6u
 jfZ8SDCplokoo8/CJoD8g7pusKSKNSEas+ZVh6DDxWxtysdPGVMVKLD1+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="260898488"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260898488"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 04:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="608401009"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 05 Apr 2022 04:03:22 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 04:03:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 04:03:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 04:03:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q95Uo5Jk6sY1v0x8j8cofyEV/jqkcYOymxEYTeCZIGoCWykPBidQ618l7W7HGYdDPftKpoy9QR3aiiS6ZJInxJvxh0ltBJXFyZYNNWqANzptXXhhWFIyWK5YdTt+zl2SN/zoGCCktmd15D7CB8NqLANXOmNRHiHVt5n17AFt6YZVKSqwDwyiX856QByXgd2qSIjN+cUXiSxDo/Fg2UzYOk9hJ3dyFJqtG5n9mon6PsUy3HF1WPzk3JHtBgHTqtloGbi9Zh9aja2zbVw5ZZnS57KQ86ojnODvFvG4xhTrGhxd4GrCVS8w9F0NYbbDJgUFnGMI6KeTlJRsc4aw9wmxqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atWUFeyPz8gWVxQqSkfzb8bMRZB8RcNgdNi8lOj9BQ8=;
 b=XDZsAN5t4HbI6y77MCjxya/iKXYCkYnyUVuSnu5f0ZWlSbaZP/FzsN9VTX3bSH54LBP9esOTH3eTTxKcdgPAZOyb9XHXBe3Q+4OcdWqRmhYbM/itWjST+7PwjcMj441DGa0NAKg7D8JAZqoVR/fwHR1wfZDqRWGkC04E2FqVc8W+ShcPh6IbjNI8aN+vev5EddB13U/gG4iIMWaHeHIRIDNI+jDKUs4PR89bDoPNdd/noKuV7po4hBPmWGvYrUqmUTcxNPtsK71hLuq6XRb4zyX3psduPpINK3+dZCChWLr7+4hPuThBvxGrIsX9yuNkhArdvCbgERt0oLv1ns/8fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN6PR1101MB2289.namprd11.prod.outlook.com (2603:10b6:405:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 11:03:16 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b9ca:a49f:aea1:7d13]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b9ca:a49f:aea1:7d13%7]) with mapi id 15.20.5123.030; Tue, 5 Apr 2022
 11:03:16 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: Add Ethernet
 Connection X722 for 10GbE SFP+ support
Thread-Index: AQHYQ0ACWac03514M0uSNp1+fxn4MazhMtUA
Date: Tue, 5 Apr 2022 11:03:16 +0000
Message-ID: <BYAPR11MB33670F9A4DBBFA4F4A10238FFCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220329073543.7911-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220329073543.7911-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34166630-218d-4334-0576-08da16f3e2bb
x-ms-traffictypediagnostic: BN6PR1101MB2289:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB228999FCD1A45CBEE9C29E5CFCE49@BN6PR1101MB2289.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xymFSiLFRny6rVJnsM0ECga2tftOvE8ydr611kZAvI82BIIPhrqOYBlXaQW2PGM4CuhXkekpXuynjjaaQd4rAUo2jHNHc2z+qgVaPaeIyC83wBcMLSZF9WSTDMI+UvT7XsZPVMNnU0P9zmj/EQSr7/+TqNGLAd0vKpuwJ6s5lWfJsZoZ7r9igsDU8B+xUYGSAfyzyKTPwewrK/UuL728Chl7hab3N3rlSKsyuaNOhc+jbIMjrwtO8PJQbG5ojZGeGUuB8m7XAA384ZtngBOIgjmcIoiDSiTDJ1WlKhLTZ+IVLwnT47y3/h2E3mBf/Y5vs9fxuEFWWQaB1ka8z7rcSTEvYCRXLrIwLpe5lycYFHqhNdoP1daLgvVY5PrBOgstSaRdia2M+fehH1MVRbioZfCAvABGxxY6iodP4Z7VgJNNTf562ri/z5cjPU61/DEMSKD9vNRZqZKuZ0x0xqRsGUYIB32luC3npTm6Wa/APIbEZ6YOfk7l6Wjg0Oagyla8rGgPg7+a52rOn2Z77zIcMewf+MymoZXBrq0nBzTz8pmk29q6ztDvaUWam8C0RwGDZHFTMUKTgJuOmD3y58PP6PZmyx737KdZKGopmBrm15PsHIk0UpPrDI6INmtVolm0MY93hnPbBovMetVYSJ9ZLe9GqrzesGCaamg/w0fLSC7KC4MHn+lInd7Zhea25Ggy13PrabqM8b5RIj6ufaTp8A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(4326008)(66556008)(66946007)(66446008)(76116006)(64756008)(38070700005)(2906002)(4744005)(66476007)(86362001)(38100700002)(5660300002)(122000001)(8936002)(82960400001)(52536014)(83380400001)(107886003)(6506007)(186003)(26005)(54906003)(316002)(508600001)(7696005)(110136005)(9686003)(71200400001)(53546011)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4IA/L77R1/E7xVeqAeLTwK/LHDrus2Y18kRYm+NBp3+MFB0k5bz4JG6LSkrz?=
 =?us-ascii?Q?lLcNBzDs7t/34uE9l1F97zR5P4ntYvsYOLGHhibAPcgpZNm7q9+t/vb16KPs?=
 =?us-ascii?Q?a7lWmSgVv4zJB8fFQHwIHkHlTpuysp+bbXpMux8aQGJGY7o/4IQ3gXS+tG5s?=
 =?us-ascii?Q?hA0kA2cn0EPg6o96Fo1W/7hoGZdJ/IKOqixi0z2MBSMcLoOKV4HkEXt9P6PD?=
 =?us-ascii?Q?nL4QvzThkOtjk6LoKF+YGUw+16e/sDVJGJ7VQ8psmr3zen+4HNFYPMtizslE?=
 =?us-ascii?Q?In0Xnb4WS0Vaiz2tutHwGwKBNWY/aUxvAnFWqdjC11nRSObEpl5AkH7BgJZi?=
 =?us-ascii?Q?WJ4JC0ZtQjl3Cyyv3uvdTk8LB058FRx9nE/mguvKDZv4gLrdxcjOHV5i3sDH?=
 =?us-ascii?Q?/ULXyvtD9YzVsD4McRPKWx2b4AJxFeK1MjazyWHxFC2awlA9iMP2xEF3R8xt?=
 =?us-ascii?Q?8sqyOVMAZyQPaWIRn5+QuBkaI5oEVsqJhsX491pjMqSJBbaAYZA25lBnFzfI?=
 =?us-ascii?Q?sgLYqc6nf3rMNfeGlaqP/STUj5ctPf4vk45cjAdG42rv/6rCx9jbAKbHpytk?=
 =?us-ascii?Q?h2Ukpb7RbcopmFx0UYEfazuPIwt+/j1sjhxxJfzjR1NCyNtkRC5nkqZuv2QM?=
 =?us-ascii?Q?Dl4v+Q5uk59R8o/5DPWtu8nhd7EyHxwCWsAHjqmuJN3mE0CMLBXpG9QpsFmt?=
 =?us-ascii?Q?nQH8pQnNWJwZa68uf670C9ilOTGFUzmZvprym9E9u0A7MAxu1JWT3m+FnbJt?=
 =?us-ascii?Q?K+WXsK4Ooh6IblIE90rOrK4o9UWpzrFPSjloD7cIPGpFUG69f/CXPpo+Qy1L?=
 =?us-ascii?Q?JugXwmFDI6f80BxfI8eSAn7UY9luQcWOqzlZyaPikvfV1KYxP84IC/OXdGJC?=
 =?us-ascii?Q?4ykgyU2hu96dIdSNTLtSwnyThnTfIw2UWnrCeMgS8DuykCxDsU3zYhLS2mMo?=
 =?us-ascii?Q?kN5pVxjqCOxufxJXXofio7AOB2IFC59xETMrnbK7x53cE28uH3h9iLaw/GAr?=
 =?us-ascii?Q?OUms4fHx2VLnYSTDMgHFyjgC29eOTXgp/1AF1tHBR50GNAKEHcHD/bQzbW8q?=
 =?us-ascii?Q?oV9Tq8/uFxlakl8dBYy20oLmr1wqR4UKqGu+QJCuRbjwUwozO8W2Dily/vVv?=
 =?us-ascii?Q?dWzzBpUaX4ojW5UClJPW7qxFaum4S17mmhjad02UzcYIfj8ud5K9yIyYKF4i?=
 =?us-ascii?Q?s/0N7Xwn7XrOF1oxJfcFQkEYFUtJOIhHwF0ik/bt0BjqACvLR1QjUW3CFcoc?=
 =?us-ascii?Q?ITTjux2IPTU8dQXEfEH4mEs/Yf/BaeHG6pyJzbDbJ0M1vgcWAvEsch538cPq?=
 =?us-ascii?Q?3NzTyjkqhGssAxQKTsGgTspBi95liQiq7TkIZdQJkVno6AG+EZiRSn2DcHHp?=
 =?us-ascii?Q?HSIhhnvWtd9Z4vLq5o2hIFLgBp3mNpgWr7dJ9IaDKS0wPwyz+8dgry9b9Dol?=
 =?us-ascii?Q?L49odd0RyyGxsNwTlXtmGiEyALotK/jx8byeJqmkcjTd/xhFrxT4LrwCtrPc?=
 =?us-ascii?Q?aKaW43HKAzQqV4q6hbBuwpMve5EPC6noZMZixKbu+/a0k8GgUmw4DM76I9Ce?=
 =?us-ascii?Q?yk1x1lX6XXkR7MdTQbJEajXXq0AAnYOKL+gk1tTrrVoc7qR9SL21pYzkOx8y?=
 =?us-ascii?Q?6RV8jZpFKOApn/Unaj1ap6B4GYMYzdaHCaE9UHVImt1ECNveqcaYhCkzD0Er?=
 =?us-ascii?Q?M3Fh0esCEFz8BG60zrHAL9s804yIZsKkVMUIN2vrtLIar6XLbIwFOMFioPBI?=
 =?us-ascii?Q?nroRZHn6UQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34166630-218d-4334-0576-08da16f3e2bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 11:03:16.2336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QplDPMEq5kje/Z9MWKvKK39Kc4cnJ4ldu29v3ggQOTugzXq2xOicOnP5AiHX7bkQhndKCr5qXCvIK+ixkfTMlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2289
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Add Ethernet
 Connection X722 for 10GbE SFP+ support
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, March 29, 2022 1:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Add Ethernet
> Connection X722 for 10GbE SFP+ support
> 
> Add support for Ethernet Connection X722 for 10GbE SFP+ cards.
> Make possible for the driver to bind to the card.
> 
> Testing Hints: no functionality loss for other cards, make sure the device
> loads
> 
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Removed word "Inspur" from commit title
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 1 +
> drivers/net/ethernet/intel/i40e/i40e_devids.h | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 1 +
>  3 files changed, 3 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
