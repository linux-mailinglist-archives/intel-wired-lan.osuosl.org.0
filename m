Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8097339A57
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:12:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1D5B43093;
	Sat, 13 Mar 2021 00:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPInZYGsfK81; Sat, 13 Mar 2021 00:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6EA443089;
	Sat, 13 Mar 2021 00:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F412A1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E244B605F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LasDhcAfcdLK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 496D7605EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:12:26 +0000 (UTC)
IronPort-SDR: KmtgfrhZBe0j82wtuUo0/4QChyQ6Rf2qK+j2GLt5Ak+bllRuWm1g5Xvm2eqh7RdSMuWfAMB6+m
 GMQHeJAxq8Rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="185549922"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="185549922"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:12:24 -0800
IronPort-SDR: Dza6IpBY/eWAaPSFzKMmw4MIqHR8uxScwPK0trSMuTLqyu1uagLIAgiLtWPexf3qBRbh2oVLU3
 JZQqeG0N7HAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="371045885"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 12 Mar 2021 16:12:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:12:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:12:23 -0800
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.51) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:12:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9gfokPY/rBJnmzSEFxvja7NEK8GMssSQ3pG10sa6lWncNZmcwoBhK0c+ZDxn7VKmf+ZnkWzifj6oplok/Jpuf+7UczLj4UzrF8FeKVQMztUuT8ite7YsbfXYxOi494eppqvxCOtJxs4BqUmW6ZdhB4iVY/BnPH8fqYYlOPbPDXnma5q9vdLRF9ld9iIhMmMoFifjAp92ziFpXqll1ZZOIQPO/ADDphqwnf+y8oPyK9tP9TMgq0VuhisDqu2rDtRsKEFjXTXPJa72GHerwk0g53JPjWLWqFLJh10jiAy+rympgp3x2vjiFbMK1V0H6tTlhajj51SfiM1AZzXDJuIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pt6thpdfki8kCYVThoC7ki+ODsPxtvxOSfEoD1y6wz4=;
 b=QZdDhP0cQxbMM1YPyvUyAWr2ny9E7shG/xTTvqt58w0dEa90fmOSYd/XxsocyiIpwzfkPSxb3/5jzLrV9ZLkGskpwt3sS5Fjnxf1m6nznObCo9XiTCp3bGpPTjn6mPhepV6Q+3dji+VlenMgAY2+wQ5brMFs4hGYWCutrihYDjn7G4KDlvMPPXShuE4th/fLgQEGvt5MRb3MEZwNB4OxdrxJVRI+yty0BNRms94lV+ce1t2otDW2+FVrYPe0ujwo7Tub6cvyYXbCGoxznNISdy7KqmhFS6rNpV5oPzJPA3z+TYSzMMAKjMG6MSWcl6o/OruN7jbu/mwcjDxTKdUeSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pt6thpdfki8kCYVThoC7ki+ODsPxtvxOSfEoD1y6wz4=;
 b=zT4bw7HlVoAKMn0CW5pThoUKzYf0mDEB5YDwPpQFPShxiNZZg6f7R4yrISP3xzfLFd+JAV7dHLPw0Odq98sb9/+QzzSXpG1QRMjSfrvswm+8JmL0S1YUylG7YsR1qpCGZIvdqkCGoeS/6DQnSbABI9wzfQpurKEHaf0qPodk3Jk=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Sat, 13 Mar
 2021 00:12:22 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:12:22 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 09/13] ice: Add new VSI states to
 track netdev alloc/registration
Thread-Index: AQHXD5GTWiWhspQyeke9f0jeYwNEiqqBG9vg
Date: Sat, 13 Mar 2021 00:12:22 +0000
Message-ID: <SA2PR11MB5114FD24C2F7DDD1ACB4B37BFA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: fc514911-3f15-4f7c-b72a-08d8e5b4ac9a
x-ms-traffictypediagnostic: SA2PR11MB4970:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB49709E3CB42E987962E1BF2CFA6E9@SA2PR11MB4970.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xRhV5LkFHBh5DYbikgK4ZySIGctc7x7tC/dTnJH9cWlFzgDEcuqMNUww67l/emQoJ/qLIecwbBzZXqj875vDXyXHKfqNlxtHTxiyq8rzRFdOJuCvOe/mmb/QPovx1GHZuWJJJ1zChSv/oO2b6Ofq6p4yhOeUW6jcO0cI1p8ym0IX4cNGMsZSF98i2vVQStLkEXdfou5ProjFe/1cRJNofpIDo4VkX3PS+e1MlVc4PCZcHk6Dd883cmUivXA7VQUtV0RIA8H1Hvw+J0mDZCEzmFKaLO3c/z0d5oNviyo+LWPA9WTPQGDo5e7+kazr/IyYXFPmyZmoMQKKL5Y/KpUErCBhvp5ZcJEPeNDmy9BXlasSK78s6BrWtnYlNXrQiu/xX1D3UnOiDoIMM0t57yM1LQZtN+UphglnPI5zDs7xWK9PLKg0mMkj+AxE/NBEK6J/fqc9TbcEPvgtcGhWDpwKPc1KKsjZVMWAAvUpWWebHlP8zy1O6V1ae9oQKqQvgNjFi7qpFecqGKpxz6iZbTTJH2gMk7fDQjRzYGI4QuBgj9Nl0Rktp605+GkH1cRuozun
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(366004)(396003)(39860400002)(186003)(33656002)(86362001)(83380400001)(26005)(478600001)(2906002)(66946007)(110136005)(53546011)(76116006)(8936002)(66476007)(64756008)(66556008)(66446008)(9686003)(8676002)(71200400001)(4744005)(6506007)(52536014)(55016002)(5660300002)(7696005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?btUhCgFK5ipSiJvM5IWdS7g4W+nD6MGff1DCeOoQDbPvnXPuPqV8r9lXg40D?=
 =?us-ascii?Q?r1ixQ2hNWs6XU0tV5y4+owC1S89R+PRsTEkZT7KqAwNSyzbf9NemO1qVKJn/?=
 =?us-ascii?Q?eCdfaEwavpwQrA3eqZjRee/Y8ZP1qrZj4NYJL3gS2Gf/HnSIV+2qiw5yzy0r?=
 =?us-ascii?Q?iX+prrL8OUhXykNyiR5q7jlx6pcEntlpSifKM4G1vT4uIaArAwkVQJb0MIkp?=
 =?us-ascii?Q?SFSCsZxvjsbThxnUiso85L2k4Sj6w5M8wPpTnDPgQn5Vu8o58ytv9+vbE92y?=
 =?us-ascii?Q?wc/rA5q1VlHAzuqXhhjzJXkLDRyEBW3VmCzTzROSCthbXCVA6iNDjPCWDBXz?=
 =?us-ascii?Q?6xH6gG+kgeByk6j46UBrbSVCx7h9bBZvH65dnyixrMnpRkzdEWQ3w7da0798?=
 =?us-ascii?Q?AD8T+SMOyonbVtRKqH6qz/bNFWUY95rs2UM4KlPV1Iqi0RKJ9eHNt6fOAmN9?=
 =?us-ascii?Q?bb57AQZH9l0vjclwgzye2q7DC8wsckLbn4G8U0kaUDzSbT1GGmoxoe3gN4XY?=
 =?us-ascii?Q?Ub/7KvyU9ccQOYMg8BLwdROjgOPtHIF4GzMK7MyE3pnZgC1mJJMwpVR72Uh8?=
 =?us-ascii?Q?IUvW3Wn4wZZMYDc83CRMomv4ccicbe4xZ4Lo1B3udh1s4I2axTHDa9CEGVBl?=
 =?us-ascii?Q?kP9diQ6Ynn//Yq8Dc2S4m7Fa5BudlsVQSXBAhJI6yiQROjutCCiwN7wd8RVg?=
 =?us-ascii?Q?INrAEJZWFPwGiqepbtG+VIqO08cfsLtzXEz9YOedefK9dlG+rDCPElzJ3xRL?=
 =?us-ascii?Q?L4L4YQlmkzf1SJlrgIeIiawnAjzQo2PU/jVNTm7k2HkSt/QPLhBOWSv2dmdy?=
 =?us-ascii?Q?YV8B4x8if/+A/GmU2z6PfOBsEOKQltdAYnUS9LmhnY/K2dLwY/gdHFXR27oW?=
 =?us-ascii?Q?eQEykJvlz/PW/Y6gY2tml360K3gL3dVpBsNuHFtIZ/NNL+NMq2ViWGFDCc71?=
 =?us-ascii?Q?VkudtGl8kk8kTg3YYTGUmhhoJD6s7OBUD2ow/im+Uz3gtA/dLC49cObwoWbd?=
 =?us-ascii?Q?IwHMxo98IEOjrtohtxXpoHES4WUr/P3grA/Q3cXfoPZOvQAG+RrTJ2icitvI?=
 =?us-ascii?Q?unW5EhhWXcM4BhIWWBsaGzQiLGHQh2FhY0tJHU+csbAU/g8EizS79a2aeVJC?=
 =?us-ascii?Q?ZZ8b6MBj4t+07OfQd1PLMfkLY/D38CtixBBgdJJGo7D6Z7MOxfvWI95BoChN?=
 =?us-ascii?Q?ptNm3djE42/8XgX/DFHXkhSYW+wBHubrZ8WIuLSk6b2FtgYKTV8gY062nBis?=
 =?us-ascii?Q?vh06OWZ9BGYAFMS1MCS8quDBxsMCuxz8yLIeFhCGKaYrFVCj63x/5jMZJ49z?=
 =?us-ascii?Q?ks0YM+Nz3QsovAgybT8opjlD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc514911-3f15-4f7c-b72a-08d8e5b4ac9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:12:22.4076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Wy/mgjfJPNDOopnciBcwTAtB7b8Wmjz4zv8HJ8wa2weASW0YAPJ+kQkD2iuyXW9+8eDu3GSlj2RUJhfhhpT4pucUNSeSWUbSLMX/jBhmOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 09/13] ice: Add new VSI states to
 track netdev alloc/registration
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
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 09/13] ice: Add new VSI states to track
> netdev alloc/registration
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Add two new VSI states, one to track if a netdev for the VSI has been
> allocated and the other to track if the netdev has been registered.
> Call unregister_netdev/free_netdev only when the corresponding state bits
> are set.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h      |  2 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 21 +++++++++++++++------
> drivers/net/ethernet/intel/ice/ice_main.c |  5 +++++
>  3 files changed, 22 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
