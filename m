Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FB4440488
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0117040265;
	Fri, 29 Oct 2021 20:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgSurgeE21FU; Fri, 29 Oct 2021 20:57:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 193254020C;
	Fri, 29 Oct 2021 20:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A82D51BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A357640134
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Opw7pic7MvZi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:57:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF298400CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="231015090"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="231015090"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="466652390"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2021 13:57:12 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:57:12 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:57:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:57:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:57:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cG6VTz1+TjZaxr77hugR//pBb9ZEfXiwiDkWMCbe1Kjal4WTVGUxYqd0mvBGaWwrj9Mypdmal5+30T/1on/01INkaMJj46FYtXepePTS+awux9ZTUokTnCWUESMRoyw6BQaMvFcqngmz+R8SBo/eUWh/BZEXRgg3iuI9wv8HyE58dMUKvgWpowlr0TIofJKL9C2q4ulysbSvjyEe/0WgzF8pUrQqaKv8k5bT3yfxtz+k6K72J2Sez4LXS5fqU7tfdNTV37S9bp9kVXCCXNd/mDWRfmzl7aA47Jd0xLcO560xTEs/03FjSIwrxbdksUIC9/NtT1xltf3mc4t5v2sIFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gDUuoTCJbG77+BZMVglihT1yn/MZAkjxsPij6HhDgoI=;
 b=F1F5J2KJORQJcvyhQC8bRjdrgvVkIjEciQsHDI+FuaELmHpcnqlvDQEvJQ8kGAWVLHsmwwjwWZVU1YxflG4ADuWLbNdWXUAU+fIiTbHNfBfdf4mx8OYG6sNfWtmLcQMr4jkrrzWPXXyji30V/a070wrsO6tyA25mZwrm1Hnnc8/7hkm6ejAGDKXOiePfP5aY/nmfmlOIR7N+SP2370yAOsDAKNZJLuv70eEYDypT+6UPsBZBSXsy2Eb50eDATR6WYlNPgFWHWn5pyXsZyHQSasYWOQzWSprSeu4Pg6C3Ok7YTgdcHCkkBHvjkiVZ+YqFvunglXvvAc5v69vd2sG0zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDUuoTCJbG77+BZMVglihT1yn/MZAkjxsPij6HhDgoI=;
 b=uxbHJOodoWVYn3VzxCE45q4tlWBGBVc+pcODf3No0KFZ5gw+s3O4o6cyUqo/pwShP5XxWelwjyhylOEQP68+pwtifLFy6qpG/5i+eb9J552pA6lVl+B2asGlF4Jgmqs/rnCIbn+v6/osbnMMvJluTyr4zzDh7sZOTZbbZYf6fYI=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:57:10 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:57:10 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 07/13] ice: Remove boolean
 vlan_promisc flag from function
Thread-Index: AQHXQo+1olwvmNZRhkGqEv3vqgxRfavrieCw
Date: Fri, 29 Oct 2021 20:57:10 +0000
Message-ID: <MN2PR11MB422485960A253AEE71E7F67B82879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3b5b89f-5535-4e84-1387-08d99b1eacdd
x-ms-traffictypediagnostic: MN2PR11MB4760:
x-microsoft-antispam-prvs: <MN2PR11MB4760659FFF3D33CD5F3FAC1882879@MN2PR11MB4760.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K7xptwwlWun7xN1mYpm5aSfn5nRjml/HnDQd14QdsFzjPVDxf+Obj7Xk0ARdYsXutJDz4mVMx60JSIywlfYQp/KZzPz1hLELP/d4hiYZ3reHI7PgSgizqhdTzijBsIO0Rnoeiz08QW8dz/ClAhKPfYp4y8+ENYuc1TiPP2RRjwQkgaB+uKEVN4WTAJY+AQV0z2x9GoBkIRCuapB5M53KaqT1szul9UhEegHdv6e8fTfXYnU4zOkdH0yFUEnySF7/nG5JTWaAlxGhcscdgQkMU84a6meH458dbZdtntcAb/YHxKppW8hbshVH9dF9dPTdEpYbDY6/Ug1LRQv5v+wJ4fSmgNbITzFKUP8pLoUaJ0PD3vYU2RHsQ1yMhmfXDNuTbvv79f7xPu4TZuEhiJvekT5dFhxtOoDQYA6TQO95ztqbF/8fmS5rhbHUiGQtiKeSr5d4CPy+8K2q1sWhSUcFWqON9kj3FUXezjyGTK/4HRikLPqe7oBVCZONQ6lom2ID8JN36v3toO6D/HMcjKDfRrCQzY4UfdCcQNS3e/bSSjTEVV4HPNTh+IQXvKK95yYJIo+sc7m6UYK5TZUTrLVyom032sLN4tkw9tljShwWtln7cI4OAML39MTVfeG9WuJ0M5/cZ+WNVi7reYSjm67Y/YxRqaet5k8RjbRhaN1yy29nxCUgUHkMpbmakImLqQbyGtiMhS8vKpVvXdVve8fxNA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(66446008)(66476007)(53546011)(8676002)(66556008)(64756008)(2906002)(5660300002)(66946007)(8936002)(110136005)(7696005)(122000001)(316002)(6506007)(186003)(76116006)(82960400001)(38100700002)(83380400001)(55016002)(9686003)(52536014)(508600001)(33656002)(26005)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E+UAT1qy3enxJ8bWnTftORMvphJp/BbAy7aBxKV2z3/4Fd0gC1dtm4osBOTj?=
 =?us-ascii?Q?uAnhEkrRoRi/hhC7vEpAaiOEaJ2p56Bh31LHi+5UlslGWpK6fGXxkKPwgxNs?=
 =?us-ascii?Q?HvmUJ2VEfoLQH7EPzi6DBk8mzt/7AwJhR/geK5xLBeQ7ceq5sNb5FT99TorL?=
 =?us-ascii?Q?qZM1f3iGMkQ3b5FvOacYdmNNuqOK7vyB0PJ/5FWTwbzKpYKKs5vBrmmorWgG?=
 =?us-ascii?Q?YlS+eNlMPh5esiNQk4BacoslTfNEvPgGHbwj9QB9qa6jzSYNkK+/GQ3jDzL9?=
 =?us-ascii?Q?jhODKNx8+SRer/fhWfpwrnQkHtSYeXTqIsBzyqpfnWHSjQDgrisuNDhZ4vFt?=
 =?us-ascii?Q?P+m++1ZLfWRf9TWUB9f9BN+MZX4+O77PBjk9ElnGuSWRzr5BPz+2dYOO1wYs?=
 =?us-ascii?Q?hxKpr4jkit0UYxSz7Smz3hWXZalDqkkdunJwZ+iwrNPXkOk2BCZfw92KWfth?=
 =?us-ascii?Q?M3/FcE1drI0cmC0DSZ3otlpqP6bflJd2lJ/MqH5fH/12lJddVKF1Yt2kUvOi?=
 =?us-ascii?Q?+tnTzI4cM8Ui87ktdtz+sn+h5yVNmwehjNbpWCa0/YMTxaELsP8+BwNGHIWV?=
 =?us-ascii?Q?s7Er12OgDCUSfRBJLDWNVtAooxfNNTKwOkxhefNzAsyrZyefn6SEJGOh16yX?=
 =?us-ascii?Q?8+Uso/GtqhGQbAPmGWlNSLQvfuBnWTwkzHj0TKhJy5dHJxFJh6SWnNVNZ8H0?=
 =?us-ascii?Q?jfF8CigDPv0aOlir9WVftI+/tmStluLIkyg4wdeVh7e0cnoGBTCn9JzWB2J/?=
 =?us-ascii?Q?DhQb1AXnUOxwLrHxDqiSkTFWinVyN/u3H0srCWXIct42l9KbGAbguuRUEkpN?=
 =?us-ascii?Q?BzoWbMQGFNuPODX9OVZnVivrx9zfQ1hLz/EC4hiOV5Mv1Cp39d4JM41JW0qB?=
 =?us-ascii?Q?5e3EeWhl0FZzV0G/0Zit0rgthiEw3xaDoLEZJBLtPZUhCzlbr4vI7slu/UzK?=
 =?us-ascii?Q?M8nk+lmR7luGIQOp7uJlZyWPXgcBVbVz6senmvRrUgdU4al2ad1H6xwPYSSO?=
 =?us-ascii?Q?ik3PnjfbBDPaZYEWe3OgH3G/saBvBJvFqRQSwnFgj+O1VuP9lXjAaK0GZsXf?=
 =?us-ascii?Q?5Ph7SKgUyI7WdedJ0wp4praVCNxLSqxmxnNZT0leC3OamIq6dQX+l6Nwwma9?=
 =?us-ascii?Q?iMRq3/iGbkSYYzGl596UIqOTtgsuyggKqy1miDlttSJDSqLQDa1kSX/gKdaK?=
 =?us-ascii?Q?mGukdwslOWfml1jCBRQFaSVuCom4Cr7QJR+LrQM8qUtG9mb6sSCLmMLyWtj+?=
 =?us-ascii?Q?4m2m8CRzQ0+e/GZp4d3/zurrnGSH4TuxMXNz4/L87Plaj/2GrYjmVhkDwJv8?=
 =?us-ascii?Q?dpj8Q+cEJxkgF6R9NLykprZ6qPHz9BrUD026NmsKRVdaJC8KPBhSUhct9vyu?=
 =?us-ascii?Q?gQbsjuRuR000dQw8dZNSRgT8wI83DMCbsdX9Z9zgIJP/ay12DGhrBciHzALA?=
 =?us-ascii?Q?BAw8QGMMYzghE8EI9Xt4kuE0jKfNcA9p/vPTnNzO2BBughMriClIbfGgZ8ut?=
 =?us-ascii?Q?gOo42PiVgsxAevahR0sEC060SajFbCM2zIVh6GMcVEBUUVXTie4DumoJo9gh?=
 =?us-ascii?Q?ZEmOVS1l6YsZntLNyTk2m3qwcVz2eUVyi5lm0Q6JvLQ94kPLW8/zuJzWJgaZ?=
 =?us-ascii?Q?v4JLLIF4MrvAQJi72SMzoY33Gg0OQ6S9G3vK2R6vuLMiJoGfgzsz4+VgJ5W9?=
 =?us-ascii?Q?QaMjSA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3b5b89f-5535-4e84-1387-08d99b1eacdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:57:10.0629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +idBfYSWdCU0WB5h6mwgNKeJaCeQfWBMOn0umvFbWSQdZu5r/BU9PzddNak8r4m3dO5vKtl9iICjPR7zXbY3icLlRg2xYMpOXwOec1CByv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 07/13] ice: Remove boolean
 vlan_promisc flag from function
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
> Nguyen, Anthony L
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 07/13] ice: Remove boolean
> vlan_promisc flag from function
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently, the vlan_promisc flag is used exclusively by VF VSI to determine
> whether or not to toggle VLAN pruning along with trusted/true-promiscuous
> mode. This is not needed for a couple of reasons. First, trusted/true-
> promiscuous mode is only supposed to allow all MAC filters within VLANs
> that a VF has added filters for, so VLAN pruning should not be disabled.
> Second, the boolean argument makes the function confusing and
> unintuitive. Remove this flag.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c         |  7 ++-----
>  drivers/net/ethernet/intel/ice/ice_lib.h         |  2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c        | 12 ++++++------
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  9 ++++++---
>  4 files changed, 15 insertions(+), 15 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
