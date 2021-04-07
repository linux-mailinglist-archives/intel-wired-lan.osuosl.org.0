Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3423357819
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 00:57:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9022A41939;
	Wed,  7 Apr 2021 22:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uftm4eu7Jkfa; Wed,  7 Apr 2021 22:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F47B41934;
	Wed,  7 Apr 2021 22:57:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7CBB1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A342A41934
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hw4s9izHsoJr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 22:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9EED41931
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:57:33 +0000 (UTC)
IronPort-SDR: rz5F8ASOwEksB26mlGtdLkzR6cXOsEuQCHby8QDE9/IR9BpfoQ9rfhpqAgQAnGihpUWPjWAjYW
 0OPo67AKzcSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193456752"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="193456752"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:57:32 -0700
IronPort-SDR: 2CVgK5yTq3nkUewPv7E98rKsjSdeSNcCbenO9fGFaNZpiSpQYthOkMDvxHJLJ7x/gAjr0ZjCkq
 nP7oL/h0jLSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="380007778"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 07 Apr 2021 15:57:31 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:57:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 7 Apr 2021 15:57:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 7 Apr 2021 15:57:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXGEH0ZHqYGuwbse0nyjtW3mYBklvh5XzSibOZMkAzWtX5Jk4hHJneTZd96hKQgMgJnYaEG7UfDFRWv6Q/QxQMRwfS1fHcQn5nRQaMMKOoqbr7y2c7z3aKF9pSIabJH9dcUur+zJZ6LnHbDWVQ3Zr1Wh5uNE71J+s5kT2lJ79CI/CF++0oyopYnCIWAPvCkj6m0aXe7cRKExJGD03OkyQLgkbXpESYCleSkZAOTxDEhUQzqd/xU17WfdpEvgFrCAs3dhI8S8Bgy9/wKCaBU5CEDA+w1AaXgOm/FXtVLq1HL6x+HEkfGR+mcorVsIvB8d6opgGZU1IvbFyivdLqYtfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YssmaNxBttSXKn3L0GWOq8Jb7wu/ewshrLOj8y3Y93w=;
 b=TJqnc0/J+LBWs02GzJXBOSiybFenrSrtiKdZedKMUJ9+Hu5JEFeovmL/15gE0clV1pMg6QYXYd4H2QMBZWt6FrqfZ1I067FZVU//MhWSj0DAVKqe3cpk9/t03G7+CKLkzlSGmxcb0mNS3h2NfPJxeOtzsoTe6/gGSTTJzaFSZ2wJpGKF0PsrauCqZbkjXhF4qKXhLyAIQrzVeN5CowVYIgMTkGSbD2Qs7zQf8iBSs4i/dPVZQfJawQYGH2EreWG37hFNoJTiws++5Gt6KhXzycIhj8aBlYeLVINRnSw7kUN/LoL6+gcskllP2kDgxVkeIBf2Wu5egIWkD2k/bHbv3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YssmaNxBttSXKn3L0GWOq8Jb7wu/ewshrLOj8y3Y93w=;
 b=xOgnlYQFQqXL8rNmVG2SrGxUbxDF69BMCviGB6n2U6cjAg1q8ZWTyN9Asefea3VUOcXEk64WsjH/3DO+92I+6WMRJqsOaW2hewCyXMxN/ReQMN+aGXRaZJgfypBvIPKGIHntOzTMYkRpsWeVY01pJHckq8V1sxFFuBESFt+kgTA=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR11MB1918.namprd11.prod.outlook.com (2603:10b6:300:110::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.32; Wed, 7 Apr
 2021 22:57:27 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3999.033; Wed, 7 Apr 2021
 22:57:27 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix sparse warning: missing
 error code 'err'
Thread-Index: AQHXInFBd6H7Pk3ncE2xpwkP5dVLpqqpvcnw
Date: Wed, 7 Apr 2021 22:57:27 +0000
Message-ID: <MW3PR11MB47483391F928BCFE93F0F7CAEB759@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
 <20210326184343.133396-4-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210326184343.133396-4-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4052ff2c-613e-4983-7096-08d8fa18843a
x-ms-traffictypediagnostic: MWHPR11MB1918:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB19189802AC7DCBB0AF7403CBEB759@MWHPR11MB1918.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:235;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ovlxC/8gixXHy0RLfGlPlleAvwkFQLeD/8ix0BS2SK5tkCLyA4fanJIev8Bl+twpkK7sdykrqhHdNzByhdiAVnf7/lxOFmACpgpBZsm5DOklNF/i92tFiJczPYeyK9UVC0yfjjsCbexMkmpwA6Besm+DKpuveTYnLTAEczqC0B6WTS9CDYbuY4Q9AcuAPhfQHJIGM/gG6MRHomEIYkiLv6SszTPL2E8GkSBAo+QpSWQk9urX07AuAnMz+iWeQEjyrpx+koaTBm+b7WHWH8T84qvAyN3AoY/64QaO9GfWTaE37ilyuDLpztiTWx42wOrW+wzLBv2iqA13aV6pZ4quyCKl/XtLppRtWq4xXEiNR5d6trchq2AOHGYd3ACesJumZ9M3IvG041SjeOodmcSRgBzh3LTWcUICjPN+IQezMhMOGoCd8r4jZf23T/3fUyP1hkSpwenbgtt0QhzsHUCTCIQSW2kdfM26oj8EAXkq9/Fq9S6SHjit8LXVFKEsGVsVGQyzgsCdAZF+P4MslWU4d4NSbnugSYfG2mL3A0WlBwW8hFVG/h0B9Q2n0lWtPSHc/k3FK5iF9oCzbhWhFagkyM7xxcvcW2UA4ccGanXCVRd/bvd/EjvgMWfcNN5yYa4YV3HaJx7127ltdT3dTC4OA1NAOuj2bQiZwzPsUU6u0Nk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(39860400002)(366004)(376002)(136003)(8676002)(66446008)(83380400001)(76116006)(38100700001)(55016002)(110136005)(26005)(4326008)(186003)(71200400001)(52536014)(9686003)(86362001)(7696005)(66476007)(478600001)(64756008)(33656002)(316002)(2906002)(5660300002)(4744005)(8936002)(66946007)(6506007)(107886003)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?erkHrRQF+VpD1un/ZaPT7BC+zfG92GVdnXc/QDEmU4A/wXEQ+eIMSbp5WQ37?=
 =?us-ascii?Q?3mYHWO7A5gaqyuNeWhJjGLSc3TpoewxETzwBG+MKajV2UQfQKBltFtIO/GDC?=
 =?us-ascii?Q?n+MfzY/zDPRTLKnOwUJ3oauhkZSSRDSdMmw0ZtMcjP0lGYFihUtCZp6Ab544?=
 =?us-ascii?Q?8XvMEhWx9+YZnuettd9uhyWsyG3jVOHwLo55O7T6I51qpMFPgRWFZomTqa7l?=
 =?us-ascii?Q?7bpd/vcoADn8+VAFbjaUOTU5JlXHIRz+0186IQeQk20Ks4cwkmhtFU+drtCV?=
 =?us-ascii?Q?2lv72IUBPyJiksnPEr3ZbuMRGcRPWcvuj66DeVpoHnUYcvdzMIsOaHGMyuJA?=
 =?us-ascii?Q?8qmL/iqW60fatpQs6YWYTvmRR73fBEdJrRklOEdiCJPo0HIYvIokX1HDeXrv?=
 =?us-ascii?Q?uFchuboh+9cHTJIE6xXon0rpRLM+d4Cf4fmsuKI1DmFhkmyxUpp4k8DVoZa7?=
 =?us-ascii?Q?dEZsPrG0hPNam1tiTKO3OLQzdOC+A5nLZzEUVOGrhRxp5E69ZaxiJwK66jog?=
 =?us-ascii?Q?BvxyXp7++y2D264wWsZVFc/3PRM9nNkQaug9sLfklyOOndgKklyDZUapp73x?=
 =?us-ascii?Q?2Nfdaq7DjGhT98hhZhBvcF1QFW5p0J3SZvjgAP29ih0q0KxmRLixqYKzkZL5?=
 =?us-ascii?Q?Kqt5wBZGq8moVtE2SziPGsaTKRMfg3aybo8BCojwWbWIaFeQpO1cm4flJ7AV?=
 =?us-ascii?Q?rhdjjUStlX2mLB4OdzrCcSOriTmmkvz4SyzHdFq1th6s/4qnLvKgqg09JVJH?=
 =?us-ascii?Q?oqLO2kl1JAwc8pGZDFfR5BobReJUaptjDjIiR5llbnQEXDB/LMkBtMvbb16S?=
 =?us-ascii?Q?IG7KeLKWOsmsH+EdmAr+lclAILVWCo253jxvip1s4CVgnfs5r2jTd341BhMH?=
 =?us-ascii?Q?vlefAyVwhgfMUJtat5oPc9crq5Dro2MYOyVljhtbKeOShLp6PidQ+lvgmh7O?=
 =?us-ascii?Q?lGmujvix5m0OfABnoCIF9Q5okPNlEw+cyVJfAcvLUDFRKuGJFBYTbiQ+Z9Fc?=
 =?us-ascii?Q?J5tY68sUgf+y9351RDlecXJdaAvcIuHiMNqSChZzQ6deSddWQ7KPGH7vQCF7?=
 =?us-ascii?Q?pG5niFpW9TZsz+xbTXh3B3NGBm6+6Y/+CQmZfsOfN+fZ4eCCQcGaKb0axDMH?=
 =?us-ascii?Q?7NOz28ADs71qKZ4wOfnKyEiRedVSz69/g6Zf7kEvNEAXEIC8BT1TnClKy0fz?=
 =?us-ascii?Q?gY1S9qAHbWBjEhd+fWELQ6SCAMoNCi9zL15zcp/lm8taq16oGx27qp3lZ6Bu?=
 =?us-ascii?Q?Wr3NcbBxGD0zL+pRpQQo3Uo1Sf4pO9dNLmb9uAwz/sRjQKH1xTi6C6vPGo3F?=
 =?us-ascii?Q?Eo8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4052ff2c-613e-4983-7096-08d8fa18843a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2021 22:57:27.5913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iRGPXxdRXoRrABe8T7ekTuTwokWed2ZoINhHjuvqME5CnwcuTUpOBPMLmBXP4JsfVnSMGAyiXTlnoe5s7M7Eew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1918
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix sparse warning: missing
 error code 'err'
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Arkadiusz Kubalewski
>Sent: Friday, March 26, 2021 11:44 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse warning: missing error
>code 'err'
>
>Set proper return values inside error checking if-statements.
>
>Previously following warning was produced when compiling against sparse.
>i40e_main.c:15162 i40e_init_recovery_mode() warn: missing error code 'err'
>
>Fixes: 4ff0ee1af0169 ("i40e: Introduce recovery mode support")
>Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++--
> 1 file changed, 6 insertions(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
