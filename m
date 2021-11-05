Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B8D44612F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 10:11:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E5256151B;
	Fri,  5 Nov 2021 09:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cjupn2DGo45l; Fri,  5 Nov 2021 09:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 770A761512;
	Fri,  5 Nov 2021 09:11:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D83E1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77E1A81C71
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jg_SZpRE1bnn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 09:11:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E95EA81C44
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:11:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="219064581"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="219064581"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 02:11:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="579435873"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2021 02:11:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 02:11:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 5 Nov 2021 02:11:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 5 Nov 2021 02:11:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aiG2TkNACGcjjnSpclWYlyhAqU7drm9NOVkEih9KvBhD0BqGpkApXJ58cCFwFC01zKut0P1AQ1F2SNZcgJiTIk8uDsUgHTWOTlcoEHK0Kc1GVD5EYpl1RFdNAJg6u3IMLKvoqrF9NrTsE5KvS4Dr2V/seOBQHOkF20xAsdGqTTkDP9nZSoJYcezhdUqKHmm2ETR7kmDDCqNgIwOgJ6vdX1ggBmx2RKCiGwhBu/yAPnsxYwU9fy9wzl1lKHAxDT5WrIGUdSLU27CDTtigLNyiQXN4ldhbyK8FcL63pfxedb7tsBPgibXfHTjGiAD45anjjPUz7vpWeKdv75eDyFo0qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c9tFrI3RUiRcr8YahGGXXXDnPmTMh/RgPZd8N6eDei8=;
 b=MKkANcsRR7pugNEdBh5m72Sxinu9qIyWNkJxv2j1Y4YvLDoK6zyqyqnYxCslKLk/kPNR482S1eBb4roMmhGjOR4k/c56IXYOzAlVMhOxTV60P4uW6XgKlV8SH5S7QNI771w+3GQVMRalZjf3YhUCap1ozh9hD7Z3k5qeUZaNVdHORPFNnqQObZIfZDUb9SjJeCZaSQzPKyzOdaZ8zIfjSbxwKD2zOyxyRvDcwOMCO2CdQk6xkRPe3K+8O/rutDtLtA3fxZxtCPVKF60Q95rPw8EubdCGW0HlxGfEHivDyYCW5ZTjbF2NNd0fwSbbpDaRoOXQwrHyTS769FudjR/KZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c9tFrI3RUiRcr8YahGGXXXDnPmTMh/RgPZd8N6eDei8=;
 b=ReMZ+gdqfvRk7d20Vs7kDWg67OWS5ql0FXo8I/AzUV//qgYjvrDWYq63eDr2lxvwDtKKC99mPlS2E6hVGroCX45AjzIsrzAQAxmdoVpPrQ/dHbA9mlnkoANEybMIxwjZFQPc8mH3qkuAaSl6ZK2uLh7hWFFcHV9ZHJAMKTxMG8Q=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4338.namprd11.prod.outlook.com (2603:10b6:a03:1c8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Fri, 5 Nov
 2021 09:11:32 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.021; Fri, 5 Nov 2021
 09:11:31 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 4/4] ice: use modern kernel
 API for kick
Thread-Index: AQHXyf21ADQ7GluC202BlLFIo6/7Lqv0tiIQ
Date: Fri, 5 Nov 2021 09:11:31 +0000
Message-ID: <BYAPR11MB336751D3BAA06092C2487B70FC8E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
 <20211026000826.156803-5-jesse.brandeburg@intel.com>
In-Reply-To: <20211026000826.156803-5-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 433cc975-cc03-4631-5774-08d9a03c4242
x-ms-traffictypediagnostic: BY5PR11MB4338:
x-microsoft-antispam-prvs: <BY5PR11MB4338B71ECA263BDAD5E4D5A9FC8E9@BY5PR11MB4338.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:404;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4MTZ0aPD8UkXw471XR17AclTA4jYwWB4RdzdR9wjxdg9aTRtzmhCCEFwRVwJYc6qRr4913Jb2waERjdw+7nY+vJtjbwltETm3Z7y3IDKL5m/Nz825HCNnzFA2QJUVcHmtFD1T+D+g0F9CWF+2T0X1L9mVcTD3Tc6kBAhLWpGXHFkTzdGjREfm+1Ko7ePxH606TSIHh+VpZbj6dahaIguc0O96YQ2fhuZIF2zbHISk/9aipz+w5OwHDv0VQLRaoCI6V/o0e35uykf2fN4o64Eo0BZtVlqlCmi8u4Lm8qkyqXnA2xCDKaUb5V30X4sMwDiRzvkILlnT/I94on+vTVM5nZMp8GEDrJHPDdBZN5HddYueiq26Zy+Phirkt15EX8yrhGiAyLgc+UQjSVBj3vpv5tUve+aQstrYitlxtbNr3LIrBMbLDn+PqOgaK0Wf7+TDy/jO/haAKtKXKv9IofptQcKjyEzORwsRJSEnmIKkc2HSgvi+dNylG8DuIEZtGpPacKArM34yP10uoneeQoKPBgm00RddU7Y5SeuBuHlgxYdaIVl+hyN4zbfO+/dKlYLbWBe5En2/upe4a9eu6+DqBjax2YQoWvsv54LFI0NNYL/rv8cuNui9d3eESEUkLDXK9/SnP5WYQaD+vJOlNlZlqWGGKMkVH0Ud/B9N/3fDdw4/tUwo/qxr15XsmEuuG3gWrzclvk1D8PfPPArwmr++g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8676002)(38100700002)(26005)(2906002)(8936002)(38070700005)(83380400001)(66946007)(4744005)(76116006)(66556008)(64756008)(66446008)(7696005)(71200400001)(86362001)(66476007)(33656002)(52536014)(53546011)(5660300002)(122000001)(186003)(55016002)(6506007)(82960400001)(316002)(110136005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n/EjwwnsnO7L0bEaVEog7RaqHgmMjaUJzUVvRwXGanXRJlLzKOF5VpvToEC5?=
 =?us-ascii?Q?UYisCdr+w/SyZz1dTxWsHsst6wPGEmLq5Mfec6cA7rCnAmYUqqCsfPPITYYM?=
 =?us-ascii?Q?urYfsnUbX1Sc/3l4CrtOaQJWMFI1stJrWGUpg3xsT2WfEVuwlpzszS8rfy4L?=
 =?us-ascii?Q?3chNfOByUl2tHLgJIyrHm4oY4i4gl1c5G5vxCQleiu1BCuzRpm7+tX2H/tc/?=
 =?us-ascii?Q?LtLOwh7fI/9E7vLIJKcY6O4ORPWkjYWWuVAA81qyo5BydHNI13z2faTo1aHq?=
 =?us-ascii?Q?hC7ABCZdizRDAKcHgkOtgcDdCeqHyAtqqfh6YDtqgR7smGd0OfCFwnqsVAPO?=
 =?us-ascii?Q?6PrlRvyhl8LPj94rCHmkNcIBzNQKiMSmLYVswm6VcqLTIA4n/qUSBS87G7ai?=
 =?us-ascii?Q?5bs5Rw2ZGmEGyCQR+nN2aAAgVHaT+lZ4zNtZNNeKjTLO7kt+tpcgWoiDs9NY?=
 =?us-ascii?Q?fQTiFq4PKZ1LJ5kg8F/vXrKuPLKYYii0w/yMwoyoImquSklFcyP2r78aOA7j?=
 =?us-ascii?Q?bHSY2kvZ7eLP7KQouH46djJHjn29svPW8pRFl/RZxw4ENHDy9n3TOEsIRPHO?=
 =?us-ascii?Q?gcyB4CsQtaYi1HVoJwy4pceGfJ0Dac7zMG3lDzriLt4wBXqcNRIihiti5RpO?=
 =?us-ascii?Q?qN4/8HqAaBuUX8EW/zRPXvAnWTjIIqcBx9Q5Qw0Lh00usMOWGwwJw5GFekqt?=
 =?us-ascii?Q?ARr9K999cUL7uYEKm6OvAoB5LkGQV6HqU57/LewoSP02c70iB6LvctJLlc9l?=
 =?us-ascii?Q?2vFGzXJb1LzuxuHtNjPMVviFQ2J/w/YhlmA4gFksi9LuuxoMS115cuBzQ+8y?=
 =?us-ascii?Q?/xvlwgrmROI3pVrk7GLSvoWq+5NBGJUIWFrIX3xb8V6l/JhH7Op+ofrxe8qs?=
 =?us-ascii?Q?vs60Q3/D2lGZKmMfzhqPslhfKBIS+DdRpuxWR9yxhw2uja/C2Ez7WHek7WBE?=
 =?us-ascii?Q?nBh8z1bdAD6NWPdT7SBGcjCHxDPD7Fn2So4OKkrzD8Qg6I9vpYfa58jm4iF2?=
 =?us-ascii?Q?PvvRguaC1AUKRjjw2BhlMGFDXCkN98I8Levov6i2FlMdiSqONr+pFyqNQ/0F?=
 =?us-ascii?Q?yx/rXFS5ERmlWypFk1JmQxOCkCaLlPTIMB5UMHUMJH9olF44NA27nnW09ISa?=
 =?us-ascii?Q?8AM9W5C3PY2EU76sw2zjscxKtdQ8gfpJzwdROqfz6KeQ5K5tBixgS8gQ03vi?=
 =?us-ascii?Q?1JGrQVbGB6Hn1cO0N+AW+5j/klJmU+GVVFpk8U00fVIJE2/TqqdUoI7YUqvY?=
 =?us-ascii?Q?p88EHgaWcZ5HsGaRoIyltxPmoFZlpOuEI67mTsGWoareedwwspyzqt2ETqSF?=
 =?us-ascii?Q?ijdfH6llKY1uccISojkhE63GAYh27/WTUi+091ZcAiHUwPLNLR/iNpZIPEMl?=
 =?us-ascii?Q?zPY3n25ldrM+XTc1Zm/jsdrYghUHXzc417idBzbBr0SqBAs+9vwOggiNHvZA?=
 =?us-ascii?Q?z/7X4vRnHePl0IMmp0+mXhTm+zfTlJ+1YGE9KbgyqMCm2bGPRMCBbMvmUxp0?=
 =?us-ascii?Q?rmPwKR7JcPsWJ/+yCldNWB+Ur7JFQGBnrhOk5eqbAvloGS192J1QcRtC6mPn?=
 =?us-ascii?Q?GE0XKVHhbZ+BVKxRa0k23+KPnPRJNa0QRiYVUua0UhCLv0FzqGFrsmtwUCez?=
 =?us-ascii?Q?OHHC0ZGrFVf78NLIZW/s8bI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 433cc975-cc03-4631-5774-08d9a03c4242
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 09:11:31.8372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RtvBIl+HC356DUYOqCwE4cLe2uD3OJ8FfAgybLXm2eQkvOdnXGyw19K3zgpxwLPQRfpGyaqsNMbP+I2a2CalFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4338
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/4] ice: use modern
 kernel API for kick
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Tuesday, October 26, 2021 5:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1 4/4] ice: use modern kernel API
> for kick
> 
> The kernel gained a new interface for drivers to use to combine tail bump
> (doorbell) and BQL updates, attempt to use those new interfaces.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
