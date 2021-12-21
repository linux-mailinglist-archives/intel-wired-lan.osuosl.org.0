Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB5947B66F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Dec 2021 01:24:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78BA3824A4;
	Tue, 21 Dec 2021 00:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DwJA519SM22; Tue, 21 Dec 2021 00:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83C00824CE;
	Tue, 21 Dec 2021 00:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 643DD1BF9AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Dec 2021 00:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50C9160E7D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Dec 2021 00:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eS3OVvWka8-0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Dec 2021 00:24:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8ED7860E7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Dec 2021 00:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640046244; x=1671582244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ooBgg8u6ho4wkbD4i6/Oh1aH4zhczBf1UraDjKOW2KQ=;
 b=ety/LYn/bma8lJ9k1J2pHUiegoI+pl3NnpPC5JNvX/wLwNKjT3IBP115
 L2dhT3lyGkZEOha3swhM3lW86aL9OYA3cxXAucAoPvbEg0jjVI7mwGGXW
 iuX+ulvZjUH5h++TX6+SvuOfmj/uynQFkDyB1K44+YJz5TbNQcN68IeT0
 CXHe8ZtiNgQ3uzFnMULXTx+u6YQ8pvRMLLxH0vPnD5WQ2MMUVsJOHp0kv
 TKziMozLVLD8GJtSMwed9RSomnj7srIZMn2baU70WrP7Ekqj5CnLszn6V
 sJHSficUUdje/zOWt2932a2PhvUZxY27c9EyORrap2YtaOYNpGAmw3wE5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="303666401"
X-IronPort-AV: E=Sophos;i="5.88,221,1635231600"; d="scan'208";a="303666401"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 16:24:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,221,1635231600"; d="scan'208";a="570033068"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2021 16:24:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 20 Dec 2021 16:24:02 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 20 Dec 2021 16:24:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 20 Dec 2021 16:24:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 20 Dec 2021 16:24:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kehNgnjz6yZ0nqcmyyPSwWmaeogHjYDBezjL5HxcITfQmI0txOQ7Nsh6Hmr9oo7sPhj1SGDP+IE/MyCoz3FdLOI+eDBYGSP/8AZi2qrYiNHnGUHAu8yf5N12utVZrjjTyv3bX67HEmZCl4AlllANeLXJcYVU02PAvUwokCZyfRAXbGisWH/Q6rqigKqMnL5LcjVhIWu0wHFpAaajqWhVmjPbsoYVSUyTSGwiVpqTJzHg4SXGSGP9STjKIH/Mrf8Ha70Y1GVumHomir7W5lhNoW25+0lZ6N6pbhtgEUoQteZhawhWkvqBuYa/5v7q+wuDsqeY5urQk+3OwaPYv4v62A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHvTOIX1cLDfLHZysgy6Y+3AXwLJ5fWd9JB2MeU1T50=;
 b=ntv9X0Puw7EuWjlNz/5S0O4o5w2ZVukejtzjVPPSBEnSbGtW0jGTJs4EUyvKU/EY++PGBlarjfEz8bZW2oyuXELf+YCesswED31BHJ6bDJG53YRqYi1+GIf1vSJbO3nFokK5sLHK4rfLnSxoE0TDgT0WV5nyw25zIXE5A24FYbXTTKR/9TFIBabW1MzrTo2rtqv5Fc/1klKXjuj7gp29dVvKQ+sHnrjvqhNi0s6ueoI9s6LeD/pZxcqBTUQJmFJ2y2+xyg/IvED9JUj3QbLeVYl+B2UfveS0+U8S5jwR0GIanscf+NrFeGHuMlEEcJBGSHtisIXJw0JU3AHBwJetYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4218.namprd11.prod.outlook.com (2603:10b6:5:201::15)
 by DM6PR11MB4233.namprd11.prod.outlook.com (2603:10b6:5:14f::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.18; Tue, 21 Dec
 2021 00:24:00 +0000
Received: from DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1df3:d03:1e1b:5d6b]) by DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1df3:d03:1e1b:5d6b%7]) with mapi id 15.20.4801.020; Tue, 21 Dec 2021
 00:23:59 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
Thread-Index: AQHX2uvV4voOmarVTUKQSFZAmQUZaKw8TBLA
Date: Tue, 21 Dec 2021 00:23:59 +0000
Message-ID: <DM6PR11MB421826531C4B6A51D270AE41827C9@DM6PR11MB4218.namprd11.prod.outlook.com>
References: <20211116131329.626045-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20211116131329.626045-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4c0f21b-f12d-4211-7caa-08d9c4182f32
x-ms-traffictypediagnostic: DM6PR11MB4233:EE_
x-microsoft-antispam-prvs: <DM6PR11MB423380D591F1D8F0C9FE5FC1827C9@DM6PR11MB4233.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l/GknDrEf8lsbXQ8Z2qoByNwyZY0UYPsSHahnCKdFoDFFlulxXSdH/1TQyDtrkNcyfjuU41E2ti0tcqnUp56QY9Q+Us67SYtImnr8E/TInsa+9sxVUj6N1hmKFBQgPybL9e29gc1DqdcT1XTvySEVO677YMEQ1R4HZMnszQMLRL6dW1OZH0sMyf4L2NBQWuh3HgYJ2Z4O/dbRe611NNU+SmcrCLL5zebyPrPHu5LYgYazV49QTMj3al7X53s8bG4MCPNG+y6DxUzthc8TxO6LcCSswKuUsogXMAoR4DZ1ZVijcxGYEgy6L8LzERx47amU3AVDePVpsNf36D9HvlT49syAbB1kjlXJIOokIWx3phTCOy3iZgrWst1cHgqO373B1+xSpqrSMrHJbUGinWpVp2GOwsr7USjWbm4jzknEJKcC+ghPOc+ovcyqRCzmmfMO6tYDk5PHH6Ocer+rQSw8SGZr/HuNoCKyV9GeWUqZiiwzjDHQhpvD+Tfbik78665980zmkjRYv09FoOaMsasyaYNdJ3iVmFwDMSVkxFwqN/oVu5UJSyjTWaoU7i6lVWgk2/VMg8MyjHxmemRxmAR3Kk4FfdYrcw66N0EABJAwT7CfiFMsrtByJISWLskruZJ1hxj6q59ye1Yyfs3N7aVSTrg9SwA1tVr/fz67my5DtSG4rghxVtSjU/wyvmAyuclT/oG4QdgwDab6btg4Einog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4218.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(66946007)(5660300002)(66556008)(66446008)(76116006)(8676002)(86362001)(38100700002)(55016003)(83380400001)(64756008)(122000001)(66476007)(7696005)(8936002)(52536014)(110136005)(4326008)(2906002)(107886003)(26005)(38070700005)(508600001)(33656002)(53546011)(54906003)(186003)(9686003)(316002)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GDEDqOoft/asO7yD61Gcnnz7asiB3THIda8ztEmbubM1ozXIRt/45hE5LVzh?=
 =?us-ascii?Q?uD5PgJR73mK1LSaW8wUXMfFTV4nFCdEgFDCAKkWxdkGYzLZ4NUy3emMn2j8m?=
 =?us-ascii?Q?mPY4Zbsj3dvXDk+i+EGMOpAv6yG8riLdjmWIZksnLgw+c8O28pw1Me1WPS2L?=
 =?us-ascii?Q?qaxszaxpkXoZwFyzIbMafaGbpy60XGhJ22xY3CZaIkPyzDHUEHB4BjX7HUWH?=
 =?us-ascii?Q?iFfOiZSs+WJo5Eh7RO8a4UlklE2dktUhYRGHPRnKzFuQVpmVc0bByLusYpaD?=
 =?us-ascii?Q?V8OSXGM8c9pQh7VzA+hh92GdkcMfQOldXQSOB9kroToM1jnNa7ZDWVZ1UWtK?=
 =?us-ascii?Q?kUoUKovwIMOAwYLHx8BA7gmiFhzbbMd8VGsKWiT8oorpt5SdYMj3R9zeNcYx?=
 =?us-ascii?Q?dTXamv8x7alrX225iHaEN9S6g54O0BzwB6IqGxOxNN9AgMs1fQFOCfSn6N/n?=
 =?us-ascii?Q?Cm2ZolDP7PsTCLc8kDdbsgDg5C8D9jgODnAZdT4X6aUEN5YcKQlKmPH/hEg/?=
 =?us-ascii?Q?kAkxi+/VWMb7Ed7J8ZEbJGK+SczFv1OC59efDVnaOIEz0QZt5G8TCat7ZGBR?=
 =?us-ascii?Q?fxoTH0sAH6GmkTeMjFydXFDZ1UJi54JAY/IAUw7PQiRXoTMAIE72WjjJNYtW?=
 =?us-ascii?Q?052Gm0ubBbryKxM4mbBVfjIPoPwKlBOzl+SGeQkxsw7bT3hwiTRt1PWlx1cp?=
 =?us-ascii?Q?cY/BirDsWT0AtNqEjPGYZxybuFO7Cg+pc4+MrPiLapN8D/qJG/BqNsnLnDRz?=
 =?us-ascii?Q?SkGX2JVvQB2hIgmlfCjwRoPBzJopuexgicWm9waiE2bYl9CWK3AHzfZbYm/a?=
 =?us-ascii?Q?3clzi0s68dyIWd4IwJHQZQo/LaubczNEAzhkWwEBwsTMxeJNo9cmR8ospFhs?=
 =?us-ascii?Q?CIe95M4dOP576CYXmVGSPG/tMG8i6EJUMVaBnRHa5CPLCCVe1JLVzudhCptw?=
 =?us-ascii?Q?p52uoEnqiaS7WCznKK+Dut79Bk/6Pr1IXWUxFKs75kNSXbAzXHgPkb9LdwAc?=
 =?us-ascii?Q?tSPupQ+2uBlr/lUqQSsqYFNyB+dk5BZf0U4u/o/6W7CxoqD9AfInkEYPejrv?=
 =?us-ascii?Q?y9/5nfAWqyrvjpJIkHDlEZ2hJrHonMlfZD9kRdTDX376zUtL5cisTn20i3CQ?=
 =?us-ascii?Q?fTvhnkgDv4YzmBUxMcKt6fu/loeXxKmbV83D9W46Sq8Jj56LF/ihQtLUnZXH?=
 =?us-ascii?Q?/auN4djwJohT/q6H8hhI1ZUOXxaAnfurF8KO9DeYMhULCKrQ4Vzhlqs1Lhal?=
 =?us-ascii?Q?Pb2fxlrwIWMoJFXD7C1+WAwgzLlNqH3SZwj4XXKRvpGSp99mNUsKzttmNbOF?=
 =?us-ascii?Q?fzBxZDJZoQXo7jc4jzkA1YN/lJmZvSdi0kmfRCDf/gRkRwX9di8MbdZnFAcp?=
 =?us-ascii?Q?QMOCHO6p5cefuX+ToqgjrCjssEeitrsHeVBokbA+g0yh7Cw9sJrdS6HLQowk?=
 =?us-ascii?Q?MF8lXzDmJOyBXvc76sThXIIOIJREGU5ipfls91xY+rYQRAcMLlp1kY9BTDfW?=
 =?us-ascii?Q?X/hdkBv7haSnsSnnjUAC9GeQizlb5Q+snFocpHbKgDXdDR1bEZMsOFWEbU7v?=
 =?us-ascii?Q?bM8C59X9DggOYCpsXOvevoYTE4HfjQTTwBq5Fqt6ScTBvtGmpGqOPkRXnbZ4?=
 =?us-ascii?Q?a7xW3hZqPILDJFag/5IXK7lbye/gKts1WQ1RSubMAIdIEqfHUE+++MbzI+Ag?=
 =?us-ascii?Q?Msxxpg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4218.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c0f21b-f12d-4211-7caa-08d9c4182f32
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2021 00:23:59.8603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NPxr26Vu/W7ZeKUszMPCQuuV9xs9Qz1Yu9TmNJ9vxOARPR8+GnRq2URagnLEdJK8WrWeBiGtHL9Jno4z5807KiRpjQSDISbU8nlUXYMxUDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4233
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
 busy-waiting during AQ send
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
Cc: "Lukwinski, Dawid" <dawid.lukwinski@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Tuesday, November 16, 2021 5:13 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lukwinski, Dawid <dawid.lukwinski@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Minimize amount of
> busy-waiting during AQ send
> 
> The i40e_asq_send_command will now use a non blocking usleep_range if
> possible (non-atomic context), instead of busy-waiting udelay. The
> usleep_range function uses hrtimers to provide better performance and
> remove the negative impact of busy-waiting in time-critical environments.
> 
> 1. Rename i40e_asq_send_command to i40e_asq_send_command_atomic
>    and add 5th parameter to inform if called from an atomic context.
>    Call inside usleep_range (if non-atomic) or udelay (if atomic).
> 
> 2. Change i40e_asq_send_command to invoke
>    i40e_asq_send_command_atomic(..., false).
> 
> 3. Change two functions:
>     - i40e_aq_set_vsi_uc_promisc_on_vlan
>     - i40e_aq_set_vsi_mc_promisc_on_vlan
>    to explicitly use i40e_asq_send_command_atomic(..., true)
>    instead of i40e_asq_send_command, as they use spinlocks and do some
>    work in an atomic context.
>    All other calls to i40e_asq_send_command remain unchanged.
> 
> Title: Minimize amount of busy-waiting during AQ send
> Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 29 ++++++++++++++-----
> drivers/net/ethernet/intel/i40e/i40e_common.c |  6 ++--
> .../net/ethernet/intel/i40e/i40e_prototype.h  | 14 +++++----
>  3 files changed, 35 insertions(+), 14 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
