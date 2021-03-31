Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B59553509C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C44260B8A;
	Wed, 31 Mar 2021 21:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ce9gBx71B5Tp; Wed, 31 Mar 2021 21:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EC9760638;
	Wed, 31 Mar 2021 21:52:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B45301BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A017560638
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXFCsTkaaGDq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:52:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF981605F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:52:22 +0000 (UTC)
IronPort-SDR: a+WG+HiOqQM8lg7EyOfNXDP2OBc56v8BtqaSla/OTZTOJ4hqDzhh/tyneYORVKWZNWqqBmO2cR
 EftAwouEkkmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="179630982"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="179630982"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:52:22 -0700
IronPort-SDR: ZEwBR7mhHsC370YboN2CmS4Q6ZqDpuLAEYBnWVsMmtDB2j73IES+3N9IpIxBwFfzwYcen8CSD4
 5pFeaAxukukw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="527939320"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2021 14:52:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:52:21 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:52:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:52:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:52:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3pQg53GBDg5zNwuYtUR2yOd6Xe56uycuPJVA2Q6jAD+gLXIxA2N6Vc/rpYNW++sKaBueXFIz8Kvd+mnG4SzQe3qN3408Cla7gW3ineooqkgzMZ1Q5VWDkoQxd8yGDIEamdU60dheCLlawG8S14WyP5qe8iVPZvVi7dCuPW6cM0dbkgur7hfK6oKwSIH8onaoWWvR+eezhQx9Um2xzOMiJ0075vvFz3c4no8B1Sy8c6qWSlkzsDuFE7ShcVVPgMBR3Ab53Fl0zfzhKb3KOpEYOqTKGUJA+jWzT2DtbwtSFLWd1j7JC8K1dI9oY+QEnmfKznA9LU1E2Dl3LxNnuVckQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2FqCKjOiqAAmDwW0VZrjgwAgxMe7efM+iRco+wPUxXA=;
 b=gSA8OUJv/NZ5075vbqlmobbvLrRuxC+pUX0MQgouHmm194y7DGQzBPrKCoxi4VIDHpDugRQ7OHtAzg+AYUtoIs7KU5MjtH/jMAkzgKWDtcFZxBWKO9Vnmksqic5c2e+AQk+iGkP4kgKXn2Axm/r1n/xBkT3Nd9wJyGuBhMmPeTrj/u4hjC721V2cdHpbokvG5fdfP7LU0zIc8scbTd1Wp4TEP2d6u7CbyYxJn92w/OY+5i5a7FCxp8sOPelgKjL5uZnme0uvvFH8LbPffWlpZQ7UYre+5gznFR4DM9sAOevxNhAQwE8wU8Hnm886V+ji4JTubRnIQUutrGOXVellMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2FqCKjOiqAAmDwW0VZrjgwAgxMe7efM+iRco+wPUxXA=;
 b=ucZoOsypAV8hg7IvP/iz7zkT3phhIQLwUb9fLIeCWibGpb7jUsCa954VjjQhxMQxtQFcH6YImUC0aQFwGWmFfmjarhqQnRbII9yOfYItcPoQtZSi6XXvlGj3z9xVcOL2O344yM60yHx7FKuTEGpioS2aPhuEA2dc52D9ihzp5A8=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2141.namprd11.prod.outlook.com (2603:10b6:301:50::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Wed, 31 Mar
 2021 21:52:18 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:52:18 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 13/14] ice: Remove rx_gro_dropped
 stat
Thread-Index: AQHXIcib/0sdzlUgVUe7sl9ITrHocqqerI3w
Date: Wed, 31 Mar 2021 21:52:18 +0000
Message-ID: <CO1PR11MB51053963B95C6FED4FC72BE1FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 942c301a-ed44-483e-2525-08d8f48f414c
x-ms-traffictypediagnostic: MWHPR1101MB2141:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2141615E33CD681394A67D5EFA7C9@MWHPR1101MB2141.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6sA47eX/+MhDVE8BQstmvACrX0wRtH9tz9eewIoylegi9SeO2HejWCQXr5SOxVBOXjAz5NGeeVxoOAOQf7bln7pmRW1zW1YBD0GoBecATSJ+xsgjqE1rX98NReKC/Xo1FiXY3M18OuaaX9UsTrplF68tRmnuRCeUl1WalD0o18UyxFszHyvRHrhdWy8mdB1tn3806O+DFv0A0HVhvm84PPsC6Y97+BXnHa7Y5VxvO3jYWoXaeacDrXiZyMeEdJ9iOvk6vnVglJz0HZ47rtOR7+/vIMmq8ihg4J+b4mbu/A6cyJEY93tcRhndir0bHMT4KDdrsauux333lNgfXDGaCcRlcsQkY64LUvR3IxIT43fcAy0+zOUIUUilXVUclVVeBX9LBK+HyNLSq9vYnc7ZVM+dL/lmbOOYGO4rpCYG9/Askf9ZaCJPtjCYSNIuuRm8ZLmFUakn9BrsN7s+2FLmzRE3lzNbpuBAgQ9UgoexzSnGQxdTifghEE60rdgB14HBlu7jcOzIbM+LhJQgq9SmYod5X+ND+5OoXCNJlK5BIO/jmHsQITCNocozm2ZoK+XKdWxqUDwJ1yHtg0Sj96n8qTaFUtUiC29CUx/NwBhrkG8EB/vpX5vfmuYqs7NqJHC6KY6usyG1btESScAuQjKVZ8Z0Tc2hBuEzW8kWrPddb7A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(83380400001)(7696005)(478600001)(76116006)(55016002)(8936002)(26005)(66946007)(316002)(66556008)(186003)(38100700001)(33656002)(64756008)(110136005)(5660300002)(2906002)(86362001)(66446008)(53546011)(6506007)(8676002)(71200400001)(52536014)(9686003)(4744005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?9A4daHUwC84oCfUzrtCuv+UXfv4hgccyMVFa3c4EzbU/yWvFwILUyC0Y5mKZ?=
 =?us-ascii?Q?DPtZ3Ur98z1Bac3wEXotcTLcEGhyPnRsEe5ra2JJN/anUATbhotSpAjN0E/5?=
 =?us-ascii?Q?MZJQ+7kkZhjdkYaBlax9yGtbFTTI286P8Vkj04h987PdquPhyq3t+JdU527l?=
 =?us-ascii?Q?MZz2XJ62wqvPaoWTUJaXmaEvDTvzE1zilXPbD0OdaIEbefpBs1+mxMwtsge5?=
 =?us-ascii?Q?90lP8vEvkyk74gI82G7W0mjpufPxUM6OScYNa+ePgblAoxQ0ZUgwmU8AbQKE?=
 =?us-ascii?Q?hpPzucCIwGa+cxyOkbenxBO8rat+O4RqY7aB2GK/ko+XM/SqRGD+5Fvx1+Nd?=
 =?us-ascii?Q?oZIp3++WqIK72gz4Dd+WOfQluJsI6wsyEoybWIejhjVyGCoF6wgfjlhsiV00?=
 =?us-ascii?Q?JkHdTwR/yIve5Odc1ZS4US0mbqcBK/BmzB3ugSTTPdA1/90faCDt0S4xirZz?=
 =?us-ascii?Q?NWaH97EqXI/WQO0JyhINlvlZa+JU1422mggTfSVepxLX6JhhpEK6DlJet93b?=
 =?us-ascii?Q?lCWKAHfp2ytDSSOfsqIl2G069n5R/cPa+zWAXaGP9svt1lTCdDXwObEzrCxC?=
 =?us-ascii?Q?obyJTRIpCBliBPHBAFfZKpm5RnP8RNmqFvUQSB8jYJfhy/1jzHQa2BJxUT1/?=
 =?us-ascii?Q?5gZSxXnEaPm9t2nUeDuGHTzooQ0jXhomxeYK/GrvKkGgY9zc5DPkLq0jbqqw?=
 =?us-ascii?Q?sO3RVIqzrexwbB3595zpQfAkkTytTSzVC0Uz3v8xX0PSImVpkmnLk+65cT28?=
 =?us-ascii?Q?RlZ6L4Xr0abL5hjPrBeJUDDov6lvz3lueQPJ6uIR8QmVx7nf+yCr2Nzs02I2?=
 =?us-ascii?Q?Emgn7521AjALkeY1JND0jU+x4PfNYmGKSTQH4GVxMZ/5J/vw9AzGCx7f+Y17?=
 =?us-ascii?Q?HH+3x+2Tnqe77QWwgRMIuEFbPq82HC6mUVwsjRcX+LK+NLgAYZkuDcfVfa9k?=
 =?us-ascii?Q?mV4yjCP+fRp6FZFqKqr/BB1d31Yy0csPSDaaCHp0Vx5KQe5ukRktl505hPzi?=
 =?us-ascii?Q?ylLtTT7du7g0fYjbYqAuFrnfW7H1LCQJAuIEtZNrl12HM5qC3i/6sqUyyyOD?=
 =?us-ascii?Q?Qgq8tgU58xFNQxsgZDydAJ7GE7E3YlZUqJ1wD890UfaunvF1xsAvY1JDlegb?=
 =?us-ascii?Q?s1Q2K5QzCUuMog5PN8p2URkhp+2gBz5Iopj6iPI0QZcGF2LebgGxb1EIKwxS?=
 =?us-ascii?Q?P+LwAzp67E/dulf6y2ioD/+to2s7cLzbelopodtIRkVHAGstgvCz6cu5fEAe?=
 =?us-ascii?Q?mIGfJxv+MiYkz2yRS8mUrUGkJUtoJGJihPgx58egXPyyPjD7pm20yOOBk3op?=
 =?us-ascii?Q?B8/wSLUxvzYSyG9Id7+Oi21d?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 942c301a-ed44-483e-2525-08d8f48f414c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:52:18.5068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Viw9lFnB8cOuKPm7oP9h841Izc3z8AaDI8PF0s7J9qkPUPGvbZJ/bdlwiz25Y//zyWKHPa0WjDUeYxy7f7vrB3H2awxt5KK2nPrkNvHY/AU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2141
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 13/14] ice: Remove rx_gro_dropped
 stat
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
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 13/14] ice: Remove rx_gro_dropped
> stat
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Tracking of the rx_gro_dropped statistic was removed in commit
> f73fc40327c0 ("ice: drop dead code in ice_receive_skb()").
> Remove the associated variables and its reporting to ethtool stats.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 -
>  drivers/net/ethernet/intel/ice/ice_main.c    | 4 +---
>  drivers/net/ethernet/intel/ice/ice_txrx.h    | 1 -
>  4 files changed, 1 insertion(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
