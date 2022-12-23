Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CDC6552AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 17:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 263D4401F8;
	Fri, 23 Dec 2022 16:20:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 263D4401F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671812438;
	bh=04gXoZIV10q8bL9/H/+ZBfwMGrtukWuKQF4YLsAFsLU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1hjFpcVC1t5EpyLWpg5u47vP8IRHePZEDomDygO/epmikKnBjBzQwrJSLu52OxIIS
	 AytHRbfkOk6PJ1telVXc6gDwHc5dM6+cU2GEMCDkLBPtgCvzMCnJvM5jr9o6KfUNs5
	 ZV400kvtin0uc+x8JozfQSXlynhCvr0Kc4ddVyGu7j7iRF9tiyIEbKA7YSUxqv9ElR
	 J2m+Thc1/tNGORFsq7l+ZXkOpOYbNkRA+EPBzGHkmvuvfZXzqrSR5ZADW06aJrSnxT
	 Uq8DkPu0IemOc86+d4QOkOd0bvF7/shgG7rRNUf78qyRB+Af4Nbm2H6IJpk5VRivo5
	 hH0KeGov2qalw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgtFKyO5j8kl; Fri, 23 Dec 2022 16:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C67C401CC;
	Fri, 23 Dec 2022 16:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C67C401CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF4E71BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 16:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95CA960B0C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 16:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95CA960B0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pVIIvoOw5h9T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Dec 2022 16:20:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF58860C1F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF58860C1F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 16:20:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="382608525"
X-IronPort-AV: E=Sophos;i="5.96,269,1665471600"; d="scan'208";a="382608525"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 08:20:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="684577294"
X-IronPort-AV: E=Sophos;i="5.96,269,1665471600"; d="scan'208";a="684577294"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 23 Dec 2022 08:20:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 08:20:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 08:20:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 08:20:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 08:20:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cgdxj9vuJDwaBa8UjJQgaAvBo+WbwCOe7vwIkjaqigFPcQ+qCBVVm5P/bfKAi+VtBGQ9ynR2+QTtUPct8Zy3ycw0eXEJYQbAA8unKF8uWkdSn0r6/55nNTjjvORB8nSykeN4z02XteF6LOGdFpGoUbuEZkv/DC0Olki198RLbK78wNJLNKpafr9G0VFHeo26KYvMxeEubOKm3QNVmYmAMM1rnFS9fugv07ifdXLzY3rzbjaTgX45qtlUWIK5YxQKbnwKJTGirgUnxZhauikaiE0YvGrr4vTanQH/YbyNtRCiHqLUtIpXqQxrDt6DHJPQH9NPsI8M7Ej7m5aYniSpjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bu4EVqBndrUULkBD4jR86C39obv/yRLfDxd+6wsFnQg=;
 b=fuVc9usXccdzUVo8G8/k+zydzLpBPZJ7eadox/+q+KYbFYIt+n/Lh19wXFn00v6dxB5LMj2AZsCd5AscjaMhsk2YvdmlpPeq0LcOvB0YrJRVwgoNoW0Um3GMqncSAkwpYQkfAJpKi9EFTnU7J4ZLcdSyeQzBC6nO+S1jk4nQmLGnHw9PyM3HYjaEOiWQVKJmeC4z/+3BOc0HFMcFDWhfdfTmjbMSCgydeQJyDaoMSBVxKOudumIY0V1EK0SnEiY/7vA2ibNmZHT6lso+n5YUyZpebk8RhCMjFzvBM5GIT6S6tKKfvXqhmG6btuV1PJz8z5D+i3wfg0tdiLj4zN6R3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL3PR11MB5697.namprd11.prod.outlook.com (2603:10b6:208:33c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Fri, 23 Dec
 2022 16:20:15 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 16:20:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Explicitly return 0
Thread-Index: AQHZEM12deXKOHMw5kGCTPxLprseNK57syqA
Date: Fri, 23 Dec 2022 16:20:15 +0000
Message-ID: <BYAPR11MB3367D031C5EC6371B4E1E2B8FCE99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221215213625.45008-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20221215213625.45008-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|BL3PR11MB5697:EE_
x-ms-office365-filtering-correlation-id: 5794093d-c37a-4a74-fc30-08dae501935d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9+haYVrSYqQTT6Ok42ot1vGFMdpIhRdTPNZd8d0kzbEbwAE6CL0FIjMYC2a9cvW+HRdoIxwAmIjLH+kwbxfnVFBhMSf72s2z5DRKh48rIaavTdEoWYzU9QoN3wsGbk8SJIOn+mMFqxCHujt1L4xsLoP4k3kK/aUPxoLNbKoxLxyU6xDRVeFwCO4+DVTYlke7YqZ0/o7qTGyA4kgBgSvIOnu4xEhT+DiJcKIz4h5AqD7zTQTrPM1iEV2SdAEJuRi9SO1rknYrXcMfiVGglrVfJ76G2lAsHmabx4qcX2ExJYA0QeDrqQDRzs4Gg0cn9NLPb1LeZfbwClUlxvh2zHhkMmi3wgc1YogxbnLktNsjv9/rXGUuAZ2Ek8AkF7DMzVZnDjrnKtUYy2+W418AB/e7YGSTSrek1PRmQJ7+lO343vxIz4FCeh34B1p6Q4VNZa0FtS5AZYIsg1bW5TASHp1aekzkIGJavH9vRRc8WUjLHcQtRCfSodt0H/ThMYNmBys4ROyYSCPfp9OVtRKp7AoR0riMfuwjiRknDOQ62gNEoArD6fvBGhaQ/ESCff6aNgEnfzH/THNiwsgC5uB6Fnup+kGcA3+rdRZgnnpu/NhvU9Z+9iwmgGWjJsKxPzzh5od9eZAWiZEJ1m3W34wUdNaBEmSKzVFRVPqKN+I80grnxc4nmt6QFsgOqFZFU3jWyI6YqNnUOmnYPV9n5sPEUl5png==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(366004)(39860400002)(346002)(451199015)(55016003)(7696005)(71200400001)(478600001)(8936002)(5660300002)(52536014)(4744005)(82960400001)(2906002)(38100700002)(38070700005)(122000001)(83380400001)(110136005)(41300700001)(33656002)(316002)(86362001)(66476007)(66446008)(76116006)(64756008)(66556008)(8676002)(66946007)(9686003)(186003)(26005)(6506007)(53546011)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/OCNLX3H0jbVtSLV+5BV409eHemcPWTkWDrfVsUUSGagfU/3NVFfB+ucf+VC?=
 =?us-ascii?Q?l2bgffKoCdyKligAKL/t8dz5TGskIV3nzTbjnhnNxQDVKBva4CShR5kuiCGj?=
 =?us-ascii?Q?tpdxwky/ankCL/Hg/YSs4QWb8jUsLVpFJoQKapCpfMbbGjnFzZuxPILCYxGH?=
 =?us-ascii?Q?Bhedco7C22Y2WtiT5ZzKvy5F0dHtCmjHj+j4ZAs0oo6G277M9wlqZM6CuhUK?=
 =?us-ascii?Q?z/QzdeTyKixFZdP2zq5AHeFb0WLyS2J+SgPsAWp3Qn/L//U6NX4Lg0t4+/Ku?=
 =?us-ascii?Q?O6Svb82wFybOr27PBrycz0QXscFHLi2CCP6p0nLBmyQPXJz5kXCoDKlClO8q?=
 =?us-ascii?Q?5YNSwqHJuDa2w+kO2mjKlNKlMVOgGFJeV+cJ11cMC0oNnRcXHjnFtrCXq6HF?=
 =?us-ascii?Q?zfSyhoC0av78bIq8KJnlmhqZyVLb6np+7SOcROWJt21C1wrr92TScdA1aw5I?=
 =?us-ascii?Q?RpNvoLfb16hipShvjMd7d2Hs3F35gLR4RIbAMV9+PX7Yl1JkHNYm7TaKpcEC?=
 =?us-ascii?Q?QqhzQV9AiPvgBAF5Ifi5QgdwMsxIJFa+mIX6t7x3GWjGb6tqXiP74UUXqCsX?=
 =?us-ascii?Q?twAJjpacMKicLyueitHSg6Evm8ir8Ju353WA5f6HCLUiXHN8qA0Q4JOwJ2CY?=
 =?us-ascii?Q?OSDUQ1ZYlFK5K6ZaIbzw8Q2Kf+uqY+fXpCYPgOeJUK0Lx0Ku+1pDjJIyBb7Y?=
 =?us-ascii?Q?9yNuZE3RaUv4Zh0LNcsrhPQ0a5RNTfKn6vKFC6Fukv414As9kqlntyKeOpbs?=
 =?us-ascii?Q?KXdf9BSHEBl2stG6dmNyTsVG2Palw3EQs89ntzsS7gZ4CuED4PM7GnqsmrSk?=
 =?us-ascii?Q?OiNs+6sfuv0mpWq4dNpnepalAv5l9aFGMoCJ8SUTJTWyQR7+oNry3ICBdCT9?=
 =?us-ascii?Q?ODZGDTmIzzrduthkbR7hWc8CeYgSe2A3K40PC+0aWZO/xw+gEjL1Zno+Kwaa?=
 =?us-ascii?Q?ogZXzzv4yoaJ+n0l9rid1xVmbpb6FDeYe9Ds7Z1646Sl1h/tUsmMNvbU6MD/?=
 =?us-ascii?Q?3Qv9LKEEZxoiQuOrTUbWD+8tGB8kxQ7YQLc56CTOkx9GmbajjnEK0dyVmRgw?=
 =?us-ascii?Q?4fnp7s9T/A0575YZnOBSa4bNKaVkMymBuzLOiwhqzm34rgzKGmAkeCDE/ZDe?=
 =?us-ascii?Q?q5sLWgG/N0vjM83R0rM7QXrw7hEAz0zH6RGsE5J87zdCf/fdHL0CP96gp0ni?=
 =?us-ascii?Q?fFZA8yERMHhFsfgGq3om30MI0uLfB+Q+0znX1FSsRcohrL+qTYkq0xZoXDur?=
 =?us-ascii?Q?PCFTVB7vyKm22IrjAT5cml93r6k/9Ph8yeuuJPIsTECyaoTxp7zXFcXolKqX?=
 =?us-ascii?Q?LVMsyuoElHMt888j03dQ4i1etBwkoXobQNz4FbOraRvtNpAp2Rs241DimyCg?=
 =?us-ascii?Q?vjGKxK3BuOqbMQb+RFSTexDhl3PPfl4bCInERGPYD1chOAzCrjZAF5B0q35R?=
 =?us-ascii?Q?HPONOfymH/6RVyBnImU3s+bJpjaFiy5GeiuptLBQ0FKfow4RpsRs/zCxPX00?=
 =?us-ascii?Q?QuHvF4NX/VcFZX0ZgdExSKwPbWHj3Frne+N8B3OnlL99kCq6w5glGNGEomnp?=
 =?us-ascii?Q?5KQRVG0D3pLSU5+uTKA4PvZSl6+0LtMui9cKpyte?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5794093d-c37a-4a74-fc30-08dae501935d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 16:20:15.6015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xvkykO/Ys8WyDjkpuXxCGV5Gn7EbORLgGDPxCVmvtJOcbqB9Wao+QvAvcsum4Q/HAS1T8maPCZEbFqKE7zR/Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671812427; x=1703348427;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Fy9Ns17vnfvILl5pfkQTZ1M8RNT3WBlqD1KL4yLZEI0=;
 b=S68V9z1bmehdEHjt4tVwCyP0G8dCW15bnOmN8X8tcO0IlJdqm5ysAwtN
 NXYvXNWBf4AKcu7My3qkwmD94vCU9wHy71CkNnTY+YefJF7gx5JAo0oTH
 vCIPQ6yAtLrr1jgJFRTTCixYe9808cOyehC3rVgT0/2vp3b0dvC81t0CR
 0edbKoLVhCTr7iatJfyUdcf/50oplgLOrMlxvybccNg67T08C9t3aeypb
 qlMtTXsKVb+8ErzZhP2uzLvwJGomfhJn5xFHI9m6vV1XAAAp6HvSDIAka
 nk7G6xdhPxlWiGCf3i6V9YAdMkcC9n36k5UJKl+hQTrfHtRp+iMZ1sY1R
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S68V9z1b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Explicitly return 0
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
> Sent: Friday, December 16, 2022 3:06 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Explicitly return 0
> 
> Previous checks, and goto, will catch all errors meaning these returns will only
> return 0; explicitly return 0 for these cases.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 2 +-
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
