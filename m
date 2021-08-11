Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE5A3E89BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 07:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91C40404A7;
	Wed, 11 Aug 2021 05:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5XQKznd2t8v; Wed, 11 Aug 2021 05:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 352BE404AD;
	Wed, 11 Aug 2021 05:27:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8B0E1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E38E082725
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gc9o7ktfoLHY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Aug 2021 05:27:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 509B8823E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:27:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="300645883"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="300645883"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 22:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="639042666"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 10 Aug 2021 22:27:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:27:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:27:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 22:27:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 22:27:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXcZ134fYw1UVxL6IDpP9ax6R2h7XdNpqbm54QG06PpYLVmgo4vRZmlrwxObJ4pYVhcNv9dg4dpic0uMQMwQNYDWQx42JduUAXh6fwU8MLJb2wmGY0FokGGOQnPrlsvPkSBq7QuQmmcNEw43TJ8R52EmgW2WwwZXjf9jYo4YhGBD4JSBvuVqoMSIs9JnMnTyPE4m1nNluho3+quRih+majUkPTF7lgybZQRegqm0aVhOJ5wmqRKsazXOyg3symElP+ZtLpzoxc0JVPCEbsq1bK2m6h4jdOf2eVGbBJZt/ai+x0ziMlddM2fNUy5j6DD2w8TWKiuun24Rna0GQBDlJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fnaq6i0NrhTKrSBPjiJ3hH9yiYTfv5t5bHP/sPeLdUU=;
 b=jfMPxNePEc8FXl6/XnsB7B1YvFLf1nPjFGeHYxxXlZDHGrivlbct+8059eypO9RvFarx7Q/KJaREwlU6/6LJkdg4KkB5/SZ5wgbiAm3kIjHP0B8fUwDqqofdDGKFPwIWqeOqZD5gPyjRVoUTgIoOBCT5ZcSu3boo5KD5mfLkJqTYGVaNVuysEDCLDOygjxY56UK3op4YdgyRhsgbL2RWaim5+X1pdP/O+qxzCQF9RJPFejK0xRQBkhorD/4jkYXn+ZwXScQXdStRyOOGyY1+73sSzjnfiXBricnRVsqh2+Urwo3moDbLxpy7yt1s4bF88AhM1SSDqQ4IVSmRku7aMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fnaq6i0NrhTKrSBPjiJ3hH9yiYTfv5t5bHP/sPeLdUU=;
 b=DM3ZmxABkqMZpAffBk4LU+OCeIR9DAUURRjIGTyJH5TSgL4dzxZ7qCaKP57yiq/KNC3BQfqc/xgwy1ktDYBfHIFUneA9f7eyMR4LnAvCNN/XpqMfmLiFb07Pb/EQYTKDzs80qw+oVHobviieVfVEwnfRGT/JB2ISL9AsNTPa+SQ=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 11 Aug
 2021 05:27:21 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 05:27:21 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 05/12] ice: manage VSI
 antispoof and destination override
Thread-Index: AQHXaauY+YiBG+dGa0auKgOFM8GTQqtuD6ig
Date: Wed, 11 Aug 2021 05:27:21 +0000
Message-ID: <MW3PR11MB4554334B43458B06603EDF339CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-6-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-6-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2a810d0-1af5-4bac-ca82-08d95c88b1bf
x-ms-traffictypediagnostic: CO1PR11MB5076:
x-microsoft-antispam-prvs: <CO1PR11MB507617A0D9EAC1655C5296939CF89@CO1PR11MB5076.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:813;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r5yRizLb6gbEdoUjZtMQnWQuSyq8J8phIliKYE/RwdzbBApanpcXXcCP4iiytgO+K9L8WqPplMT9SdQCe5UxXP82vOTjtM2m4XSXybDK9ipuKQ8ql7aBbvGov7+jA//NZTY5BeQkZjWT13NqJkN3nyiOvRkPz7DPklDCnyi4gJ2aHcTP4FdJLOHVMvLHctVBJRfwJ7P3l+Pp+VsZ/N91ocyPqdFrQoprW7SfazfnUKQCQcVvk2rd04ElBk7YijgYiLSPwLuu4uIFmqzsjyQAq1jh4j4BMebitLbXjmjg7VNPyIDVahIlEE1imFn6BshMNnsjWhuh5+7WEXeh+R3mWKveRcBnMikWgYz38K1fEGy+uehdwUljTdBZHdE3FJjH5wR3qkSJJDMQQZRGIVdcLgTFmfq2XufTUpla5GlFXole3J/8rn74eJF4D5sulenaep8GntqkH0UcDdIOoDbik5zO0ehLcKhJ8J3Iusj3tcYyHXXX/yLkqsxHa2CNZ+rwIWnrGKn5EXaDg4j98rwOyWQwWj8pCKiqSAFZrukdS8aBtBKjENf99kb8RJ3dOFMGwsLobB2meB4nxavVIqxcbe/QKLKw32P7e9h7QK+NwthjDzM1W0weliz/IO7NOfaf8DFEmQV7CZsoYksX2HJW41WIJsEF7I/If+p619E3wsFodWyPYckQNlTG+6walX0NLrfsS61EEpTFSEEvRaJ/SQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(6506007)(316002)(508600001)(86362001)(110136005)(38070700005)(4744005)(186003)(122000001)(2906002)(5660300002)(52536014)(66946007)(66446008)(66476007)(8676002)(55016002)(64756008)(8936002)(76116006)(7696005)(38100700002)(9686003)(71200400001)(33656002)(66556008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RH5Bwvu476yksl6S9PotlcgJ981laB+r2vDiXAu1MGgAKjWfYyvFtNp9r0ZE?=
 =?us-ascii?Q?4lOAw91QYX8SVtrI6VFR3IYz1EMSQbISkVLB41Lai+HRCIOY+n/8wz763562?=
 =?us-ascii?Q?SIvzcu0DfdcHePZmZSQwDRowALAwmPqj/gsB3rcU5RWvU3EWfm8IulMCeJ9Z?=
 =?us-ascii?Q?qVSbH+E4Z1qJgk0l4tOual70SzHjV5SEbsSDzD+Gf0jSrK4Rcfb0Er0aErib?=
 =?us-ascii?Q?Hcx7V2QZpS9Ds5lKlBYX/y/LeRsoBX2G0AlAWE9ckSrLfoEfVHDSeS+cMnfT?=
 =?us-ascii?Q?HopmiEJhNBlsxTFniY94xnopjV6PgAfw2MvYIsfDfYQmRwROgzlxn7vAmxrt?=
 =?us-ascii?Q?O77zvvf+SMzs8pGV2gJOnp2in/8/DVKezGjWe2ZVUjWJITBla5w0tMKKmiFY?=
 =?us-ascii?Q?hBSd1/KtECkzb57NoTvD3XuTObkZmV56xIPPfctEg7i0ZvmaeQ+RszXpbOwP?=
 =?us-ascii?Q?U3DdIm2zHecQG5gSF2CGXtC6e0kj9gUs3ozdqW+0a5QAbR5CMynt3devroKv?=
 =?us-ascii?Q?2Mq2/NZkA3qc4RsWpDD9Gj4A3MsfQAxSIHVu8NpQMAq11NL0+CmnJQyUOWxd?=
 =?us-ascii?Q?pNUcGRa52Vb4vX7YBbgxeCDAc6F5BRMbxwLrmn/GYt041zsdWPiK8wXUzBoF?=
 =?us-ascii?Q?Xcz/nmEtDlBIBnP5mmPCBh0XvtwA47CVXjVIqGuIwtly3aZhwQM3bzmnhr/6?=
 =?us-ascii?Q?A5RCbSax4CzUBX3marC6pBAOFyP9QeAHS7goOHgRt7d7pFWdRTAsU+FC+ogc?=
 =?us-ascii?Q?gkNESUxEg6vmGKoHPpKGCKtxCvaqfaZuZOT3Vu/0Kh62RDtCPHRl1DzXSa8+?=
 =?us-ascii?Q?kVvmh5uLxdB2HClMsmkWOAGiIbOe91pN6QGa7/24tNyV/7Ma3txmVZmif9uR?=
 =?us-ascii?Q?/uPiqZkAxW5G6HXjZKEH4nG6g0nLSEAMmAe5uaW9g+/4Gm5psX5W3aY9W95j?=
 =?us-ascii?Q?oouE2mv82iTvADzEXdsqcmH5XlRiYJtUR4NUSucwQRjCPuUBcgdMDdg0CJ86?=
 =?us-ascii?Q?WdfgA1V0G6bAjRfpmSIEhHh4AnKsOVzzGYBGcoGfFtVa5/bNDjsz9tHGFqq3?=
 =?us-ascii?Q?AthtHUaJ+fV7Fjru1pPrcabcCF24qj55h1t970qNartcO5PSSeEVjBPbfQ8h?=
 =?us-ascii?Q?wD5DtIepO3+TxxKqYFHlaF7EK7k3Rsrhvly73uW7OQBZ1z4MYjyGTud/MIXN?=
 =?us-ascii?Q?idV+Pny+jGKFmZ83e18EL4O63O4mRNx/xukZO+crTZK6Mqeuk7wfoom0OZoX?=
 =?us-ascii?Q?fyp4lJi54H7e6aRbZO87rEBsRNGIZ/mcd0B97tk5a6ns2H2EF+au+6hF4ggr?=
 =?us-ascii?Q?PMonXXGzLs8kYTy+qjSYuXzB?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a810d0-1af5-4bac-ca82-08d95c88b1bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 05:27:21.6014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p9gXBGYeHgxaXrfMAdWLN0emRSS2j9E0hzejqIdZQRcQLn33u/ZtSe66Ri19SZGwQWVjboCr+qX+25F5yXo5RhLo9bMml+LH3W/HFrSmzhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 05/12] ice: manage VSI
 antispoof and destination override
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 05/12] ice: manage VSI antispoof
>and destination override
>
>Implement functions to make setting VSI security config easier.
>Main function ice_update_security fills security section field and checks
>against error in updating VSI. Rest functions are responsible for correct filling
>config according to user esceptations.
>
>This helper is needed because destination override is located in this section.
>Driver has to set this bit to allow sttering Tx packet on VSI based on value in Tx
>descriptors.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_lib.c | 61 ++++++++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_lib.h | 11 +++++
> 2 files changed, 72 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
