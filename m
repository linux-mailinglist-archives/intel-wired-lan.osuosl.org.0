Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E9F4D5131
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 19:09:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E69F94151D;
	Thu, 10 Mar 2022 18:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PKuvqREAcP16; Thu, 10 Mar 2022 18:09:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F41564148D;
	Thu, 10 Mar 2022 18:09:31 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 792C01BF3BE
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 737CE60E18
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JiS-2HGTRnxI for <intel-wired-lan@osuosl.org>;
 Thu, 10 Mar 2022 18:09:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A941760E05
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646935766; x=1678471766;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j9il88ZisSI+Luw7wk2wszF2NtA7UQLMFBb3KuamsOI=;
 b=UgJEwksIEzr37ctez7Blv3j/KENjr37o+5DhAO/TvldPodXAhj8DVOal
 K6JkcwKk0MfLSYDOc0h8+ABnaTMSXu2DpxnfYOspvnvj3jQq6WM3WzZeZ
 eGa4pLDQiDPHUqhME+dOxLnNhLJs4JA3Xz2CvrgGRFEcPfHwQO8r0XInG
 zDGWxbygTrdwaT546ijj31gK9N5VwHL70C+Tq73PaafL3iOCbSb9ifU2x
 x0LW4N/JqWnj096iHh+GBq8q5rsDO1/zcjp65Yy4uwwd+q7qmiSXOe8Q4
 lF1V5hO6w9tHljZR+M6Tr/TQ/ltmdpXW1hFtMFQvP8c5Kt8fOsqG1lE2G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="316046735"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="316046735"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 10:09:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="644545517"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2022 10:09:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 10:09:25 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 10:09:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 10:09:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 10:09:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTdNApmL310aa9bRG7Ce/G7KRInRpqA/607w6GY1c8g/k1QKWRbLYHta1QzBarZwRKCUOTZVhYiIBn+G+rzKFoQppblaWrwKLsqAGloE3yJ2nsNAX93OlYlGYT9CS8SrwkLBC2GHv1ErZD5mln6da/ONgXYW6RxHotl9i5BCPpMjmMJW4IoOoHv7+Zaydh8ReLZztmUnLVbT7mMxr0I1jg0oghqtSQZorFx9U7LplAO4X/+QzVfsX5XVExhV1zopgPvmzAb3Gc/vsgUYNU7stJJEUTU6+GjrYT8o/nzAZZIdtUhT5uykJb1IquzgkJhFTdEdz4XOFb2dRpHNWIXShg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmPdINHl59Pa9mvSc6rdcR28z6OtwIDTn6LeJTjTWEc=;
 b=mvjfHBO6P5xVCEtwA+v4z/c0MD04yz77L2kmp0LHYBDv1zF3jnPknBHbFCygCQOptFarVGRJd6K0vggwjnlCQ8KYddR6Zhjr9oLMTo46csbvkU1VFR9G1uOvUhUuQozqkXfoiluzph3W8SLcvFlCwzy5D9W7MoY+Lds8Xt+u3MsK9MtNFyzjVij4yT/no9379bxhR+yKSjBccI0QciRc9joLbcZNjMmQiryNZ6XrCrflLjQGIMUAm8+NVrfSa9zLTXToMjJIGM+wBnB4RdmWulnUm3bpUNaFkQU6nN2+9ZrdWlk97bAhkp1VkFOvvb+3MadHdiwscaz8pz3QAfsavg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by BN6PR11MB1313.namprd11.prod.outlook.com (2603:10b6:404:48::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.29; Thu, 10 Mar
 2022 18:09:23 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177%5]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 18:09:23 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/2] devlink: Allow
 parameter registration/unregistration during runtime
Thread-Index: AQHYNGuJgLdOl//1MkqrGpJX5XxZDKy46aqAgAAAwsA=
Date: Thu, 10 Mar 2022 18:09:23 +0000
Message-ID: <MN2PR11MB36147AA4918EB619872D92C58E0B9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220310103959.369773-1-sudheer.mogilappagari@intel.com>
 <20220310103959.369773-2-sudheer.mogilappagari@intel.com>
 <BN9PR11MB549766F269D3EA6D0F0D8338E40B9@BN9PR11MB5497.namprd11.prod.outlook.com>
In-Reply-To: <BN9PR11MB549766F269D3EA6D0F0D8338E40B9@BN9PR11MB5497.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24c287cf-43c9-4d0e-6e6e-08da02c11b2d
x-ms-traffictypediagnostic: BN6PR11MB1313:EE_
x-microsoft-antispam-prvs: <BN6PR11MB131346B593C7038AC06FA4AA8E0B9@BN6PR11MB1313.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 009g1YOB9rYnJ3O65/aYvlmEEnVljA2Kz/1bXVQrpQkzsva+u6g+aKe891XiKR+PNyII/VrTRHMymXBxsaAkrDyQDDx0hXFbSDD2A2B127wawaFeJ1a/tRv6MyWDiose2Npg4tRZrqraUrkrD+nvqZZK1+KD1If2Z+msUzbsK7WXO5cZtRIXRv767acxWItIRCs7gguJ3Dz2Qnane9gwUKuqiBjt708Lu2yPhIl8VkMeLHNtGKPR9oCTfCp2r3wsGiSw7suLSUaelx85YH8Bk6ySZBEzVS+51/bW1tFibN7TERru6shX6Trv1WOet4ftDy4QIijaAPezi422WtqSnTzopG37eIpVKkSGEqID6B0rl/l6fr7dtfjmCVrJJIcEdli8SBWncV9CV08k1SrtiD41kZnxaXx15XvS3hFIWB+CLo4HlC2j831/P0e+RHXjih0znUtpqnrNeukQxC/Z+n6zBiz0ak9/5xwexxLtnLq2wfq379hOp7ZhSkO0VstSquiJpr0xAuRhUqigkUUYY3CP77pdRq7znV+vf0KsUmtrKIDv6b0r7T4J7+VRhhOvwBAe1lTvd5c6zQjD16lsejD2YVbZawCa8oHeiVb6AgZMa9GxHHuaz4jKQfelzoq7DW/meCw1mryrR/paqr3vQ+NzTf9LcPHUygh9UnbiYQp5Zh7rqCbN4rz8aUvnVaEQCXy1kr034rdkn3uKD7kHS2Sv2J7/KYXgvLRiXGnVi5VrYFLr6Z/UzQnB0+svaDj0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(9686003)(52536014)(5660300002)(53546011)(6506007)(82960400001)(55236004)(26005)(186003)(2906002)(86362001)(38100700002)(8936002)(83380400001)(316002)(33656002)(508600001)(38070700005)(6916009)(71200400001)(55016003)(66476007)(8676002)(66946007)(76116006)(64756008)(122000001)(66556008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SXCt4Flc0FzbzpmAF+kcZvbQzYJk80oisZDhlGch7pMJmGIpkttw4vsh73Bc?=
 =?us-ascii?Q?SopIeTMHkpuFBPZtPQl39x4k0pJRfSPBAP18FAYSdsbnm163j3Ac/Jlywyl2?=
 =?us-ascii?Q?yUMbpyHnG7Q/g9hBqCpjJsKt4dhMlHwBv9zk3D8MQ0cHTh8gJZW0Ni3/udl6?=
 =?us-ascii?Q?Vode049nok64IFmRkjiPzIK55Q9DBwihwkQK26KPmsKkbEwj8zXqMw/B931w?=
 =?us-ascii?Q?pTSZznjk5+7f0ppVXVYxvX4R0OfK8M5133o4YUNCukVRbOtgZ4ISOAUpZ2QQ?=
 =?us-ascii?Q?23rWuJRzTTSORdj6t5++IgxJ2zsoOnr9GHGJE/I7+V8l3e0VIWQnfK9+ZDZ2?=
 =?us-ascii?Q?nuNN/oeF29jM31vYHP0fldVWH7RnzkaHMgDiDDLhcjc3OFArEVTpW8+rQdAj?=
 =?us-ascii?Q?vi0R3b5z8gBQ2AVmxydO9n/11k5zORwHvbcWHo79DTaFWGabgZWvdHIzLM7+?=
 =?us-ascii?Q?jHm4KxGaFKeQDQ2TdPkXvQcLKPsBEkP5YwhcK3FY2uJ+8nKRv6bcnp0lSdlr?=
 =?us-ascii?Q?dttCZDuZVnDy/BJezWl4ZwEprpXVnleSUe5tz7lh7xWNKWMaOHs8gjuHAfW2?=
 =?us-ascii?Q?dAQjGN5LRkmkFvgmGffbTk5d3GIH/cFPw7kO4Ws8CHCkUKytHUY5AsMTT7li?=
 =?us-ascii?Q?K2t6IaLNyAv5+UOjwc7FfBkpaPKIuKgwLY5edDEk48/DSalgmGXObD8NUjiD?=
 =?us-ascii?Q?QkTvosPoynriFHqP8T9M4yoeMuvGuMaR+vNdzylIK+5OC8PavOiq1UX5ZzPP?=
 =?us-ascii?Q?+kxSgRCqRcZvopWV03rW4YJchO+mtfpzVluAebOt4pDaoh+P2and68nUt42J?=
 =?us-ascii?Q?cnqyAekL2FA0EcXS0LWWyz/sLsgqKufZGYpH5QcEwXmzgAjLejPTeEebN/vS?=
 =?us-ascii?Q?gDZ+dEFCrH2V00F3r9vvtWQcI5VigKa57CwIcaKbeAzODyqP7OmQRJwQ+QVC?=
 =?us-ascii?Q?lTUDmolrolKqw4srtqyjQy3U+OBYNP21jlS9xhi4D3NFSAtSIOJy10F5Fmvo?=
 =?us-ascii?Q?r2rSFPrhHOnaVUd/ntM5LCKC29OKF+F4KH9cMIJQeFXXu95CWRFg8hsy0O/4?=
 =?us-ascii?Q?0BzDZNwkdWGE8zA78bKYI6th1S3gLD1Wx4OTURuWFheROqselbwm8jISXmSS?=
 =?us-ascii?Q?3XV9or0o70ONwMG9i22QBIw5L/6/JvboWu9//+pK+aLlAoTvns5AQ7Y9zYpf?=
 =?us-ascii?Q?EtCzqMT1ILq13rsw7cJW2yyInfwW5xaBya32wuIHAF4my2hZyJCQoR6V3Yei?=
 =?us-ascii?Q?C2itR86JGtEbvYqus81wIKhpgXxaWkKgQJNZjsr+dyI2zq6xlElEj9AETvWS?=
 =?us-ascii?Q?iEOeqXqm9kfqWYNsMAoVcdRDUiyd8g8rrqJJkG9FHNV1AM/Ph8DgyOtGoxC6?=
 =?us-ascii?Q?pxqjPR+PSpLmvARzE/o+d4QJQ1/fYhFBfSbivYFQxFzY0MKJ/vj/HAni6VaR?=
 =?us-ascii?Q?q8/m9TPXsnxKWnFWgRjN7z7E1xJ4D81NRnSAYCecs4uMEDup8UOyxsoG0ecK?=
 =?us-ascii?Q?BuLa+gzIg3mPETFzOE4HMCBBiXmf1PftIJygL0CctaS5Cd3XqbNmQmdRTxMw?=
 =?us-ascii?Q?E8LFOM4+MskbF6CyXl96pHcZkEzp/aNbuR5vDjrMgPgqlkBKt/B9+e6I0BXT?=
 =?us-ascii?Q?E1pEEbJRHLZeqCQzUQNTG5Dwc3oyycczd//nTkuwZ4que1AOcPIhN5xE/7XR?=
 =?us-ascii?Q?SKy85A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c287cf-43c9-4d0e-6e6e-08da02c11b2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 18:09:23.2846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8gvpnAxkCdyUbWIRbBwkaJ9L9rrsFOlCpiSBh4yTrntR6So9S1yrBG03KO55LjvSzE7asaZbtfx+ZD50TKiDtTOnleJjOc1SylO1VTmypJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1313
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] devlink: Allow
 parameter registration/unregistration during runtime
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
> Sudheer Mogilappagari
> Sent: Thursday, March 10, 2022 2:40 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] devlink: Allow parameter
> registration/unregistration during runtime
> 
> From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> 
> commit 7a690ad499e7 ("devlink: Clean not-executed param notifications")
> added ASSERTs and removed notifications when devlink parameters are
> registered by the drivers after the associated devlink instance is already
> registered.
> The next patch in this series adds a feature in 'ice' driver that is only enabled
> when ADQ queue groups are created and introduces a devlink parameter to
> configure this feature per queue group.
> 
> To allow dynamic parameter registration/unregistration during runtime,
> revert the changes added by the above commit.
> 
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  net/core/devlink.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
