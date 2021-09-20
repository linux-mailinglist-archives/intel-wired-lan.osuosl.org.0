Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F5D410F3C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 07:10:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2775607B1;
	Mon, 20 Sep 2021 05:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZgfDYXvFiRce; Mon, 20 Sep 2021 05:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB370607A1;
	Mon, 20 Sep 2021 05:10:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89CBD1BF352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77F2481BD6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6iomk6owXU-h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 05:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F5B481BBD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:10:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="245471825"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="245471825"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2021 22:10:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="435426837"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 19 Sep 2021 22:10:38 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 19 Sep 2021 22:10:37 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 19 Sep 2021 22:10:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 19 Sep 2021 22:10:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 19 Sep 2021 22:10:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyNxdeEWnNSKR2qYzyrtEvIffeopyLELzZa4LMspHX3eJ9NNfUeIQkAabsqc3vGtWNxHOxDvejJLJ8PA2gzT/OXVBXfkkHS6MV7B+izWjl3kk66lgka31hAE1NJxd580kSnSP/ugPi28YLHtuS5QtNd5COsjt6TcuRzogpEjXMoZMi5fj/hUcrC+9YaU7Si4Ph67JS18g4d3EGwFWSI+oSuv3QS4htNORjWqrE0MNt8ug8RsRmvSzehs0Tl74a2Uqw5crGsYcjEZVbMtRUKn+58WavFgKp7GGjnKYyPP6pHaMPTgCVXS+EL3MLNIEIGPHnyPhXU5DOLPdbvQ1KYePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=vbTdNSUKI4tWeUiMI0PAvwWslXcMJA6MX4cQ2ABW0RI=;
 b=RXj/YPZdxzp4spCfcgjMrVJztgHsGgDQOFHqfOaVmQIYbCBC3QUkGvx879K2y0Gc8YKY9tu+42JtrYfpg37BI0GFM/rcXqoyRZvX40n0qDf+bumtrbdrIw1jjAlcewFrbvigG1Sht3CuFiMlapNEGIBFfporB1v9uAmwG2lBLaza1HwmZaoXtGBnXLV9uIRuDees+0kaeFMUGWYXtuzWM/QlovsCWRQuGmvPQjGQTp+mKd/hbQrswRbRLA2scgoLrLYds/z+R41iXMWrCIYqEe4boa1BITfSolJj7UCtHMjXoZ0MYpCqXegVE3MxqdEv+xWQKFgIwykAE91szVhuCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vbTdNSUKI4tWeUiMI0PAvwWslXcMJA6MX4cQ2ABW0RI=;
 b=H1o7l7dk2hBExmShaQhhf15GQ2HFN3Zjc8edvr1k3anunGpl6zNRmhbtSd1U43oEm0bJra9Ea+IdWGus2aindzNskrdb7o+js0TMPV09YmIZ48gPNJW6W37FRgRUiL5nvhAOS3vwloIiMkJ5pWha1TwrxZh7ViVf1WVNvxt2xpg=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2886.namprd11.prod.outlook.com (2603:10b6:a03:8f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Mon, 20 Sep
 2021 05:10:35 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 05:10:35 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: fix rate limit
 update after coalesce change
Thread-Index: AQHXmIVaHG0SEEWwKkaabhFwENw/qqusim0w
Date: Mon, 20 Sep 2021 05:10:35 +0000
Message-ID: <BYAPR11MB3367279107DD5651D7E73B47FCA09@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824011259.738307-1-jesse.brandeburg@intel.com>
 <20210824011259.738307-3-jesse.brandeburg@intel.com>
In-Reply-To: <20210824011259.738307-3-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e32dbc3-857c-44b7-c91a-08d97bf4fa72
x-ms-traffictypediagnostic: BYAPR11MB2886:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB28861EBB5CC67A0C116D6133FCA09@BYAPR11MB2886.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WJxv3kd8f8wdDj5w048jKO4CTjkhudr1aXNp0mI4cCogDwBM1WVosZtDgdg5a1Rapvc7pzYXmM+KL/XWnGYZ4lUMLBdkHi7VSZR/dx9IuJ7CGFCbm3zvw+vE7J7F4S4LjFTjKoxPUvvBZMABN8jfQPrJjBo2FLV9IdiWQ51axFqhK6nGEHuYBluph/7UulKzMPfxn5Wt6Ly2vb+tFcLJ4Uo5mME/LdxGzLDdCWKMlwj01QMG/OR44tmjz/61ozUpcmJtE/FhlqdgyDecXfGbyzC7wYv1njOA/35o4k7bUThii9EygZTlHlXanqBPNtquDl5wVivpMhJUmu5n5utYe+g9jc/EkskIjmcS8rc3GNqqnZVnpoRfoRpRJKBj8qT/U7D1yY5i7rQo8za0fRjcnrEwtXsAU8EsBsjvxqDsfurVJvw90SIBAQ1aUu90oASHozYfEVQUUIDaWHRWsw1DGYDsN/llRwmAbqlePyvpObjUPIR/RKEiLXXfGlPjVzZq7Fr8CUz+CzME6aVAnO7Bf3lWzbKC9s+ZNf2CEhW2A7YwZ4ffR/GJIkiAlkqKYqQcOUlbZ5+SpCvvW6o6uMXANnlYi2bijkFOugiYnEBuk2UdOoNRiq6t+KdDBmp5p0MeF21Qtml2Hv6YkA8zQ0VrTcKPT8bIcZlE/d5Hy6jxZ901ClJt8vgsMlGVqHR4I+M5AmC2VIZfIiySTmiROp1Vmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(2906002)(478600001)(52536014)(33656002)(110136005)(186003)(86362001)(122000001)(76116006)(64756008)(53546011)(38070700005)(316002)(6506007)(83380400001)(55016002)(5660300002)(38100700002)(66946007)(26005)(71200400001)(66476007)(55236004)(66556008)(7696005)(15650500001)(8676002)(8936002)(9686003)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kQrlqQVxijAtV2m4bVN13jaovzfezv9HuCENDz4PfU+SrLf8w1GasGKGFa0h?=
 =?us-ascii?Q?ohEAQRgwWZjq96c4iyhaAStjsNymuCty1/4Fzgez4UEOtoK/dJ8V/ChYKgBJ?=
 =?us-ascii?Q?8IDlRrOZmODBFMtJ+0qaKrhe2amz/WQCF3DXpFIfmuctZ+VqFIdvRuti/3Je?=
 =?us-ascii?Q?AIlGZmYYX1lFSBJo0tvSNpGTHCaf6jts/Z3r34M+HuZUEfbIx2u5RMxHN83F?=
 =?us-ascii?Q?g5o3YnXKpVmNpVDOkuwECqBc+UQP1JAfch6EoUTqtvT9BaBSv63HGH0PgG5b?=
 =?us-ascii?Q?ocgzGcnMhKPFzkrdxbxnG7xD0PbxeJVQnX0FJzJdsFLu/884xvjXo1LpBoaI?=
 =?us-ascii?Q?k8akpad4ruTXSLkNbCXtwyfhbTx1Lqq/2I3EliSyUTcWHyIQJCjSUTdNxkR1?=
 =?us-ascii?Q?RidtDklHfD7hSnseTQ3tVzPoXj8P9mpr1TxgWEh3Mljemzz8WGB/Wr1eAq0d?=
 =?us-ascii?Q?EVEif9NM4DurZ9A+7y44qJk+2mYV1b1QhGvvVuqOkWBfCnx99EG7xpH2GsSx?=
 =?us-ascii?Q?J13Da283E0EH0Dpzp3Dy4jNYWj2Gk1j5OaUjg3oQsEb3+AuCFnvdIw9xdNH9?=
 =?us-ascii?Q?+/NKZMqRyOBOMT8QVfyxng1QfrPBOOCzAqYumD8F0otuHADweeroPrfHmvpJ?=
 =?us-ascii?Q?HCztSd2NmtM3iSIjSPncxiNF8VUGTZ+78rXgeRFt7tDHJqIXuxw+iEFvkR8V?=
 =?us-ascii?Q?6PEA8P6AD0yLf7mzIpBm4SA37v58GWxA3/e7eS3aD6q/A5fjUs6FULbUB4F9?=
 =?us-ascii?Q?7tEAWObQGA7ueRNx3gTzFOX+7NjCO9loEObOYscuOn9upRj9Gt9ZG5rXFMcI?=
 =?us-ascii?Q?tJM7o45gHwiF0D07+59/MT/wwJfrPlrj52J88C1iQ5AuEyoWAMUZjxiZdyYz?=
 =?us-ascii?Q?IAGhO741kB7Plz+KPUISN4DCySlO01A81eT3TrhZUihJBXeYLgoB/KrDtKEE?=
 =?us-ascii?Q?u1qeVCcFyWns6Fmxnav/kS9sOuiGGmh8TzDMY+L8v36DNHzFo3OuM728BNdg?=
 =?us-ascii?Q?YccOsMEcTRV4d0OygYLlk/BGNErfRvXOAacQmF34wIn97HqDH1gbmEGYonLM?=
 =?us-ascii?Q?5lejYHTvSMmYDs65PO20yTTE5EQtqZwf+ZigJv8TU/zK/2MywbobgMKIFwx8?=
 =?us-ascii?Q?1eWZaLUyZiMcg5miFRE0QOIv8tWQbdxo9DamEdj0317JWlcKCfK3PAyqF3sW?=
 =?us-ascii?Q?389g3gHnDisV4SLemdAmgKOjjmaxAvVS9XikcU4PTwEO3iNVYGAoaw9xfnBA?=
 =?us-ascii?Q?icQt+41wVM7pus8dkjh5Km8Jv5nJuDwx+eiVX5nPhy5osFpadhWwMkU6Fl4c?=
 =?us-ascii?Q?r1o=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e32dbc3-857c-44b7-c91a-08d97bf4fa72
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2021 05:10:35.2809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5uww7B80z6tSHqKZXeNMTUA82C8qknnQhCZt5xCxQe5l3OaLGdPX7SXGg1230MLOCar7avpcZ9QyWslVb0fxYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2886
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: fix rate limit
 update after coalesce change
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
> Jesse Brandeburg
> Sent: Tuesday, August 24, 2021 6:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: fix rate limit update
> after coalesce change
> 
> If the adaptive settings are changed with ethtool -C ethx adaptive-rx off
> adaptive-tx off then the interrupt rate limit should be maintained as a user
> set value, but only if BOTH adaptive settings are off. Fix a bug where the rate
> limit that was being used in adaptive mode was staying set in the register but
> was not reported correctly by ethtool -c ethx. Due to long lines include a
> small refactor of q_vector variable.
> 
> Fixes: b8b4772377dd ("ice: refactor interrupt moderation writes")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v3: merged with tx_ring/rx_ring split series.
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 17 +++++++++++------
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
>  2 files changed, 13 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
