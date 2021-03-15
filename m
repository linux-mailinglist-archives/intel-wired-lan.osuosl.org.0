Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1501B33AD3F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:22:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A9384BC5F;
	Mon, 15 Mar 2021 08:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YImq7-50ND7S; Mon, 15 Mar 2021 08:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E7974B527;
	Mon, 15 Mar 2021 08:22:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D63751BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2AD2831FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LFSuwB2PtFvJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:21:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5ADB831E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:57 +0000 (UTC)
IronPort-SDR: +9Ilc8Gd5qmQ0cMbgLp3xOwdPUO08W+OhLNmH54pSl2SpeKxXAk+dXwg8VawUHrq5malVbSHPt
 uQRyeZ8Ekl5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="253069008"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="253069008"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:21:55 -0700
IronPort-SDR: aV1p53PGWqMi6auLj1e/uSGnMGzouF6R1r+X1M6hvsivhNM1gIHe/BT5u+AQcYdms9eLtjDe6I
 SGc/4UHmgwEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="604768177"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2021 01:21:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:54 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:21:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRxQZhQNT5VZOXcctXeu8UfZUaop6brZtj+mTR8itXdrIEo/N7JN7BXA2bSJuyYgOlgypJrPe5wTngn3LwPnmCOXZhyj6CTIa/YXXYEv1gUFephwLksn0o0pGxtw2R/RbE5ZwUbUQ+W9qE8v3PIz0/E1KYQtdBtWXjgpbv/Obo5DVUHMi6lsPQ3Hr9tD+5V1zeVaDBpYMvj2RNTaKTlNQjzFC7Ze6rlkryi9OmMDKZ3HGwjFRfYRwnEP7TCZwoimXUlTfj7b/SK/U7ZuyM2oltI4MPcntvS6P4MMoMEA7ZrerknIjDLDaHQu6oOtHrxxfA8+fKvNHs+SV+R0ZODF8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c40h5hdHNIPfH2bi4DcnPS5ocEcC8FbIjJW5Hh88DXU=;
 b=bftWVwM34E6+SDhXRsbAb7LLK5hBGz9gB0J9AjC1EmRxFVBOd3InvOMcYrzxgZ2MM/NOQgjgWXaNs8jPhZ3YK+kMttR3ydpF9XqSd02XY96tDUgLhJsrtxJ4Hy5uP+kiuQqLMIbEP9SgCdz2ztrK1DTjGI5DOnXILkGxwA2RsYLO0vXjKcxgogG3XEvpi4ucCm+/q9ESSP9lmQ8JIokAu3Ja9CjkLs4oqW6GfYWpkDwgFF93H93uLhWn0kVJdJES9MPQk7MYLgjcjvejYhv4/x1GnXI10Apgy1nz8DPLwCGJ5Jpkl9nScGqnAPG0XbTf1eRYLYhqChAM/wqKTqQ0cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c40h5hdHNIPfH2bi4DcnPS5ocEcC8FbIjJW5Hh88DXU=;
 b=UGlNysgQReeImkOvDFsPQOk22Kadd0CGoZq6IfL5MhakmOQkRFP/cLSLw1Gr/dpME7AJrietapv17KddvH7g0bUlCPKqRnHQSKcLi/y4MzHG5YnZgzSrbXWAGJ9URj9CB3mewCbqfP47eYU5Q6VBcHPnwspeCCO3BZrkToAPVcI=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2801.namprd11.prod.outlook.com (2603:10b6:406:b4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Mar
 2021 08:21:20 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:21:20 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter
 type for AVF
Thread-Index: AQHXFJQpfVX/bOcdAUmqktZ6dx8eAaqEvxJA
Date: Mon, 15 Mar 2021 08:21:20 +0000
Message-ID: <BN8PR11MB3795A3D1D3751B0BE0CCB47AF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-13-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-13-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d316df5-24c0-413e-27a1-08d8e78b5055
x-ms-traffictypediagnostic: BN7PR11MB2801:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB28012193A08F6F33433812A6F76C9@BN7PR11MB2801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H2qEgkXa8Unw8cAt/l/RMNMHfyQomP+YkSIpNwT9TIgSK6sneP7YMPEFBfcljCktgpU3M4y/SdVCI2mRcyh5rXEb5sDHFxsCeWaHybJLV0b08oP1AW+kGXKvxD3A2jKttykE2Pg1o1mTugwhsrvW2udTar8D0sLzB8vz3vbFo7g4eXfI3ll4XT4XjCaePq9+CcZs7BwcL05oMCV556bzmscogQqVAX2XmLbFLikIuFtGiczR7ig04TMxGbC4g3fP+etjPVawR9V0dpTo8behpL4GWg9xECQv7CxRN2qLrgEapq7IrZRRLt4LciBVPFrTCmPOfHoww7awzYDlFvsQrE0+CZHtWDKJsCZwklyVmV2hh24rgUWFw3kZYmK0tfd9k4kDy/6TBidQnqUnslUadAip0UdnhO7bGu/pao8Evl8t3h4MqV3+V0rf25blSAyOs/wNSeD9vRJlxtEJmB26FBz2RZxZIG+U5vTRfJVOJRnF+rptpFQthwwCYK/p43ouuxusbhVCxW8JYk+2qFQSyEFXqDRFBozITA3N3Xs5KLrMwSY6BX4X7ZKYCbGE1P984WpeFxwB3cdalIOnbdsRbSM7SOIMH0PTq1bE5UckjcM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(366004)(346002)(54906003)(2906002)(52536014)(71200400001)(64756008)(83380400001)(8936002)(76116006)(107886003)(66556008)(316002)(5660300002)(6506007)(66446008)(4326008)(8676002)(55016002)(26005)(6916009)(7696005)(86362001)(66476007)(186003)(66946007)(53546011)(33656002)(478600001)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?XLU73Xp6jzH52gDHhS0Lp/7d3JUnFX/p3bH2TSTux973dtzusi0BVJmZEGkW?=
 =?us-ascii?Q?CWknR6qBb440b0lFzrEYLRYU/aA5eqhtzEesYR7gVuGeb65tT20NE7USmvRP?=
 =?us-ascii?Q?VSVGwLSrmXWCNn56+2NmxWPMgdZ7T/hE87gLUBEITueUmZQYLRxZLGjVCgcw?=
 =?us-ascii?Q?BkUW7iEeDLuL5WYAB3QIVSXckk1xg8jH9tKnhNQ5jbjf6gqam+2sVo7QYIJt?=
 =?us-ascii?Q?kmDLwJGZJUbfA41qp22Q7lOXa4H/ObKvEj8pI3BiYjnpujgs/0JRDXLHcc/m?=
 =?us-ascii?Q?z5z6KYbz2i6e4al9kXwMYQnavCsQop0uhxgrxUoq1MmxUoJGYszia4sk2oZg?=
 =?us-ascii?Q?t6rozzRaPa0ZcpZ1n1umf/tK5F96p1afxCNeCdy0N9QfXr0ZvWP7AHo2cQ8l?=
 =?us-ascii?Q?hWGo2xoI1ryQL/RhrjRqnig6r1SYD51qeQKlfH+etstnlOu2emJYGfALh/cL?=
 =?us-ascii?Q?+pmOPWRPKCSkhye8hoO+1JhSXjgnrs2Cz5vRsbnJ7ZYHaMsE5VUt6nLlAjjp?=
 =?us-ascii?Q?2UdnO4ps+ihAL/ZTnq2lrqnqY4lzUbhcMUNeQYBEX+cF5/cFwQU2dwJI0Xtx?=
 =?us-ascii?Q?GPOEs4hmPzxVh+711t1iPAG9ay0X42rMZjNzYQ6yCjWbO+nNKi8f49RVaiCv?=
 =?us-ascii?Q?ga41azK49Vy4e3D0SuQPz/RlCT0whRerRxCUKG61ssrq8bnca/6zInC36sj3?=
 =?us-ascii?Q?VJhveHXb3R/8hoKDSMFeO59x7TUdKGtbi2juOwy+4v4b6KgCd9OGRtFsdxfu?=
 =?us-ascii?Q?fKKc26e8HKiJ5sEiHBOOCMS+6q8REIsXauaV/BLtOYdjWO2Caux9Rcw0cjA2?=
 =?us-ascii?Q?YHvDr6axwQz6D9oO37/TvjX4CITFMnfD0jGpFPmRm05O/8RjYjOKKIJ12mCU?=
 =?us-ascii?Q?MTBTZtZzMWTnBVD7juRbALpvs6F3wcoHvga2S2UZ3qBwSCfW4Uz7ljgPqFmw?=
 =?us-ascii?Q?XGdz/jnYkpAWPHI/QgYoskr1aVu6A2YV2/cBBCsAYhUyiEtaj8ics2Ug5U5s?=
 =?us-ascii?Q?eSrq7o+F/jEo/fz8/ZFVK32TPjBauYfdTwZ8tgOPuW7MXCUM9RC7I99asLbq?=
 =?us-ascii?Q?8pydUjKn2QE8M7MJB9mpTEiA1G48nAs3rJBFg4MsvaRm+0QEgYJXZbuaOeiZ?=
 =?us-ascii?Q?krQ3Xo2HQnlPpoO+hY+o5izPV2f0qSatYObyy6TahcEVc209GfQgD+c1i0X2?=
 =?us-ascii?Q?xO0OMFO4dJy23z0RaHWUo/qaY1BVLKg/vEhHkzJdlpdLWSD1U4HyNQ89DwQl?=
 =?us-ascii?Q?etPjJ3O31JITzoxzFtovBkvVKlEKzXjOOZctTvzNOVFfHZSAfoHnETigbQeY?=
 =?us-ascii?Q?lbDs0l6MPECKfhUIvpUmoAL/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d316df5-24c0-413e-27a1-08d8e78b5055
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:21:20.4714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3TUDQ5jFADmEHE5unAuSTeM5V4vDWbJyWrGaM5MtAC6jjk10/Y6A9uy/z+HvhAYQ2hehrm9xHNg0nbAdMN/vvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter
 type for AVF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui <yahui.cao@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter type for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> FDIR for AVF can forward
> - L2TPV3 packets by matching session id.
> - IPSEC ESP packets by matching security parameter index.
> - IPSEC AH packets by matching security parameter index.
> - NAT_T ESP packets by matching security parameter index.
> - Any PFCP session packets(s field is 1).
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 254 ++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  15 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |  13 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 281 ++++++++++++++++--
>  4 files changed, 545 insertions(+), 18 deletions(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
