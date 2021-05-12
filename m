Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D3A37C5DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 May 2021 17:46:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 428F54038B;
	Wed, 12 May 2021 15:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzb0DMsNSZxL; Wed, 12 May 2021 15:46:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 354F640380;
	Wed, 12 May 2021 15:46:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7C331BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:46:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C61C960AC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPuXgP3qzaQq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 15:46:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8784607B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 15:46:18 +0000 (UTC)
IronPort-SDR: MvK4BgUQdLdL72Fzrue1vXWsc87nicOfgTSuoA6vwieQmAMdHRlfYeoy884xqkoSTmC7sxjKMP
 GuLglv2pIoLA==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="179331429"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="179331429"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 08:46:18 -0700
IronPort-SDR: pFRQc+9jh2V9og6qAsiI5hKVYtyBfR44NULY6eSsKZiu39JwllcFLgsAHdkP/7o6Jff1Ds7akV
 cELZaQ8xOL1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="622551981"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2021 08:46:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 08:46:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 08:46:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 08:46:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 08:46:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjZgk8AeF9lZIWl1rox6u1991AoNDcPvQflb7AwwDUi+YOkCBSmVPnbqT3V4JQjfa5+xQ4QgDvztbwIa//RzpzixKWqo5tQn6YcPvYhiiihNKlo0txUJWNs50HB8Ilrz6usgcCELPT7IkIQP9jV/YSw19z4LkCrDMG+QzszZamS1z3USzytiuC7FZEXA7VFHtH3PoFtJi/XgQRDOPjU31wCVcVsqPXHy/J9Jv62jzb5kyBTtEnjh6UvXLiqLhcdtZnTS9AuhRXq8YKm/54w9zgFIFtdaOiSrhGbDc1ztC+EXdHfDVB/5XIKQiFDqCtbK1lAWbiF84DqbI2CLJbYMHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yX9r8Xfs4ssLVeJ8o+gu/0huMMRRmX72lq8kd6q1y/4=;
 b=Ml+Yw8SVA9ppH2PM/RaEmxXXPm8yRCmWG6hlvQu2u38QPvEHGZ17MQ1MdciMWcao2XWe/fR/gKlfgoQlKNBmgZYDXN25l84cvCRCzu/NHHs6YsBqQUfrz1iSqfdUgQG56VziWBe5idKaZO505KSNGAmpCTMaAjgbceIiAVssLPf75/g+9+pG0zhXb1puTCDsPsslfqOGpRgdtADXQvOnRIdnCOUnAWOYFcLFEIpK9uEFQPtrB8Szp/w3e70H3FwIWrpK6UlAwRilA0Fo1JB/OemSmW2ErkKkfEw34XQjssDqkuaU06pDK7xqwZV0A+HkiGsdhZTnSHGpkuY4DEudIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yX9r8Xfs4ssLVeJ8o+gu/0huMMRRmX72lq8kd6q1y/4=;
 b=xsqgRsp1b2wldb09JBPIPZgK4LrNM0z8K/5j6Xg9IAGCvigqxYGMC/iM/jlY2uUa+OuguHsk/4ptBUJbas889Thsj/v+C/j2QYn+w04GSHof067ZLZTwKG2+OGj6BNLXhT6I1jTjQSkGJq/vnKtX0VVjae0NlKhF5LUoYI/uUhA=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 15:46:15 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 15:46:15 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 01/13] ice: use static inline for
 dummy functions
Thread-Index: AQHXQo+49U3RQdabc0attfCsbTxoNKrgBqdA
Date: Wed, 12 May 2021 15:46:15 +0000
Message-ID: <CO1PR11MB510516C355C9607D116513FAFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 379b7530-f2f8-4541-cbdb-08d9155d1361
x-ms-traffictypediagnostic: MW3PR11MB4699:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB46994B58AFC5AA36ADB0E42FFA529@MW3PR11MB4699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KuaKYFjwJLdMWtp5NrN2kFGJgS/6WmejUXyHipUgaGLQQIMGjo8Gnzq4NTohqMGsQG8OEh+5EnpZ41z52zGSCDtDvIMXuBrNRmIrcpe+bcMbq2EtqzKQm4zqFScyWYUgp+sp8UUagRSra9/fqL9zLbm+Es8833qkLlJaaaRzc8LueodS2Hc0QTYk0FxC5R1bolmljDWmyRGbdT/Qxra0JQFR7RjIeVqETNJBnnl8lKzRDjgZEg4K2g2azMLVeld63MAFH00DbE53jrYRSQjlpz3kXYc4UaO4m32DtWwv0nfA+RUsrJiPrfzjuiI5LKDoVsbZ+foCeYqDZ9yQGI7yV998kQCAavRdIhgoTyR2JPe1xhh3k14XeclJTZRjPAp2DsMMLoI9vDPcJA1UwrLz0pGxmgf2u4bJZVXan+b28Zc3G+zVmlDAhzahrlDp7oZOKy5aJYXl4wTtlTrXU+ThCBQ0ID1tqYmMFdyauHobQNU5IXQ3YnRiN7otKeCFCspSX3FXvuWWduI0TQEPMA58Y+KPzxfLk6O7HR+EXlra8OWJ/prI7BEoyzk6Gsy5p3I4cb9WjuG7gXddGpRgG21YvOsCLpZesfr2z5SpeQ6VFa8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(366004)(9686003)(33656002)(55016002)(38100700002)(66946007)(66476007)(76116006)(5660300002)(66446008)(66556008)(52536014)(478600001)(64756008)(110136005)(316002)(83380400001)(8936002)(8676002)(6506007)(53546011)(2906002)(122000001)(186003)(26005)(7696005)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?29c5ohACBhKUzQSQAf0zdp0DdRVn/9T54xrNj7QlfV5tfv/sqMIax15btZXv?=
 =?us-ascii?Q?3hAilu+CD8tvJss66cL+uQ++UQaEYZebqKOabXpSbbmCAdSoFWYj7x3feBa2?=
 =?us-ascii?Q?/y9oy2fPg+KI3N4mhqnKrtmAGnnjh/0Iyvl6tDtWatiaDOR9fa9cE+HHUpmA?=
 =?us-ascii?Q?8seyjkmIm22Uae2XxrYw/nQGWAB01ct0Pqt7Xgdn/XwHY6qBHhScw5duZIYD?=
 =?us-ascii?Q?c1O1Sd4nuSOHX4DvXBVWQBuTpfoIKwcRwE1rkj0WfNT+b4IVwbY/lolcf0a0?=
 =?us-ascii?Q?t53Gm9JkhCdo+SJrrKZUQJdzIiz6nj85ZCct6lF8GG6gLVf6HO6jFFmmYk4u?=
 =?us-ascii?Q?AVwRP4YcvoagwTvQZ1WovHX1vmn+7RxAwaBGkpqAP3q7u9sR8ZpjHMXt3f9p?=
 =?us-ascii?Q?aJooyfALwRot5dX2sYMkdxhKFUWVYXDlxwvsDmote7UA/MmP9gvlCzWpQBDF?=
 =?us-ascii?Q?M7x8HaWxByNt1pFu1nDRew9BPwNn93d8N9kKjYAtX2P3boxjKWYdCKk3HZch?=
 =?us-ascii?Q?ORtYWkGYgJ+GsonP47NqNPzhowX3spDG6PIE2oUptR/tJXebatC8AsO12UuT?=
 =?us-ascii?Q?wcieypdMMyBXfjhJp2Wpr7OdSnzBW7Azjv+wzasl0b3fbIn5JOdi28n4uPbX?=
 =?us-ascii?Q?jlVaUZnImTK1AZAwUUfaUJkkwuBYgqJernqDCnyGTPplzFmQtPQB2hUn5uCC?=
 =?us-ascii?Q?Xk12/opv6jw+OA+bmQK4UluP/k4bio9tIO5i8/EJSxxb6TX40FsxQ4hYuERj?=
 =?us-ascii?Q?h9ttveDzK1gkvtmF945c63qtOHyXXO5C/TA+CSMxq4wpB11Ve499DufaSdha?=
 =?us-ascii?Q?h+TyhfusMt8yILI/Ra0jNOhCNVdUqA43DF33mVJa55Y88sA8ou0hT+fcMl83?=
 =?us-ascii?Q?BsyDIZxht/x9QsiMP+5ayFKwi+1JWczg+meWwFvu+rqympM4hoV5ErG/D00j?=
 =?us-ascii?Q?zxo0oIKUZBjlLksx/yn0PCxBMuM2WZlJbbH1YwGH5HzB5jzwq9S32FsCAkpN?=
 =?us-ascii?Q?j19kaBVa41B+tRs08OY5SDdTo2SrLuQ385eiPwWJjslRqXTE9l6eOfSAXaBD?=
 =?us-ascii?Q?wly7BpkO50t2f9oCsI4hV1QHqebN4CsoIORPrLTDcANN6TEa/i6HwCMko3Lj?=
 =?us-ascii?Q?cSQ7dj3F3q9ilQpZFUpRSDJnWmlfuDxyiccpkZNYCO/1rVvBTjH7l8GFt5v9?=
 =?us-ascii?Q?AvLkbC5wt3UiUgOG1Y3ge1RDdY4yQFF+J2CrN1PsN1dRvcE9q++edLnxsne0?=
 =?us-ascii?Q?IZl+t7EZi3Q0oeiM33r9eX+oyrrQAhhzSzKZ6Ma4qLoHP00U4XFYF7Wy7RfZ?=
 =?us-ascii?Q?VntnWrzclqs/FQoebRgYoqWN?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 379b7530-f2f8-4541-cbdb-08d9155d1361
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 15:46:15.0705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jN9Qr6aGieyz2fDXTCUDYPQ4lwRgIZy5AsP4uUkNwWrz6SMHCnWl6ExqxMNwlLL+MkRklwk/RTahjMrOhIS4V2js+L8mlgggL7F7he/2wX0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 01/13] ice: use static inline for
 dummy functions
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 01/13] ice: use static inline for dummy
> functions
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Trivial:
> The driver had previously attempted to use #define macros to make
> functions that have no use in certain configs disappear. Using static inlines
> instead allows for certain static checkers to process the code better, and
> results in no functional change.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_arfs.h     | 12 +++++-----
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  | 15 +++++++------
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.h   |  9 ++++----
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 22 ++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |  4 ++--
>  5 files changed, 33 insertions(+), 29 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
