Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD77339A51
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:10:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3B4C60628;
	Sat, 13 Mar 2021 00:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lrocLwWFS2lz; Sat, 13 Mar 2021 00:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D63AB605F9;
	Sat, 13 Mar 2021 00:09:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9D571BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B848583D7B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qifmya1PT65T for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:09:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 838CD83D79
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:09:52 +0000 (UTC)
IronPort-SDR: RyP58fqgqsM/m5+wWbW7PrDjq1evZrF5U0Wofke8oXMK3IRzRf7dil8C2qiKtTs7Bx2yLqkgXK
 UNXTHsJNW9kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="188949531"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="188949531"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:09:49 -0800
IronPort-SDR: 4ohjtJB9IwV5HCeiBhPqleWbtGYcq5f9SBAvKdAtIl149MJVYcs5gvcI/2snSDU2EfG64qQKRV
 UEgx+AMQAxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="377877190"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 12 Mar 2021 16:09:48 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:09:48 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:09:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:09:48 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.54) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:09:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3LRxRDbfvCbgBApLQ8MsxsP3NcN/MgeqX5agEkXs1YjAi5yW0vm3WEoy4Zq0etdX8eOdPjaC/z2bYG+Eh5SeZMcuWmE1HkhcR6E62UPlIklmdaEImZgFyURm9FzynoLQxJHKnGUvAhVweaT6kqp5Np0mIpcRjRWNvHCrE6V3rGQPoEJenWmihp/PnSGhjfhgCmDsV5vDLOG9LSl6saIWzrGjOZ16K4uat3eyml2TcMskSEnlvXTX/13Qa0yTc7xBFw88xYkQz0YH8DdFw4pIQzoRtBeaCSFrQaakC1zPkaEsfWgbmAk/eqPqrwPqW2mN6xpSI8WmtWmaOBdqQY4NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rIN4MCFF7K+uyBnb8C4hroLOTeB6S4kNvuzWn+BfUJM=;
 b=SOOF0wazD0/O9C3Zp8ipbtVL0KfR+5M+CjD6qq+yhQdSD1zRxQj88sMQ+E9H3oubEMJ+1SaVr5aRvvMJUg3S64e3hqfwTI0pZDEhSXbOPuiDwrCo6G1YaYDH1Vr2QTfDpfiWvTBbjdo9bT1fJt2AkAr0/79q98lHZXszk0dLz1WnDCz4oslJPLVM+ZYfSsIN0+UrrNZOvgbMQqeBVeWubAQ9p2QSgikaoxi4B6EbGnNKOE40KSkrKGYPaQK8GwqQ1NcQqnfEiZQ1FXpkwVi6HYyOzF9FZKZXoj7VPytw9mOnVbWYHRW98bBGO8PdArC/9XZqPH0Oz8PTRv55xWGsaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rIN4MCFF7K+uyBnb8C4hroLOTeB6S4kNvuzWn+BfUJM=;
 b=Eq3zRLGf1BqvBM/aMccqUkxeMFvJS8DqBh8J/q6+qRqpMlKDFcfzN1L609S70t9HTtyuhXYBtObRGWyhrXw6smmJLGKqXm14g+1ONrw+IZmwbWpgW8afbryJ0h51PMY2f6aFnOzUtytZzM4dtp0ymOzVm8zaLnPbHWfpMKHWRrM=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Sat, 13 Mar
 2021 00:09:47 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:09:47 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 05/13] ice: Consolidate VSI state
 and flags
Thread-Index: AQHXD5GYSgpu1bwcdUOkkDsEjYcT9qqBGx7Q
Date: Sat, 13 Mar 2021 00:09:46 +0000
Message-ID: <SA2PR11MB51146BD79EADA5F14198E9BCFA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 509d7d09-31c5-4f11-bce3-08d8e5b44fe2
x-ms-traffictypediagnostic: SA2PR11MB4970:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4970E3CB424BCCF9A9AB4D7EFA6E9@SA2PR11MB4970.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pr6QF4UPCq49Zlp4PS+huQ6nxxTgpPksh8bRTwK9RmCN/OLxsHyXkdFZUi+dy9ZuliS+kqnlYX1D8GoO/nd2rw5qtFR+d+fWrcwAzyAV77R3o/Sf6Hee42+MZUrskzVVi8nbQh4TNfncvLTnnvtqe7QraRBbUPpN1dwFXrNjLUZds+4Axl4I/HPYu7UDXq3G5K3bf3UcdHlt9FfcigBw0Nzqg+/5FKpxdfF5CQ/Ynk++YC9nw4BmsokHVi9/jY3WIeXWv+7Hb/9OqDc8OcsIX5Cc4SfRXIX3gON/oFO+ORcEAdyWThi6o6OCXFlPkWWJtYoGKgR60pAnT3IX+U0uAbC6d5isu6RzsC2vVtbe69egqmbkIG0TFmebsvwX8zPZNElDEkpmVxitB/sCDgV7CPPKRaa/Nr64W288iFoHzHZCNZUIp4zk8nh39hIXW7t+hqcWvNxv9FSKghzlrRh5WEQGWxS7FQSbOYaf0zV+SX042q2TUAhs1MC5MgX2U5z4xhXEV6DcZTPWOROUW6Phvj8WKdGrM9hNj4vOeI4PGSAxDbrIsNajGEopzPUx0uEd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(366004)(396003)(39860400002)(186003)(33656002)(86362001)(83380400001)(26005)(478600001)(2906002)(66946007)(110136005)(53546011)(76116006)(8936002)(66476007)(64756008)(66556008)(66446008)(9686003)(8676002)(71200400001)(6506007)(52536014)(55016002)(5660300002)(7696005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?JCa0H3KmVxvdhSH1dxBxSG43I9RMq9N6uQFkoZw1FkO/VTfoFnnm1K/wcF8D?=
 =?us-ascii?Q?we6I70SfxZjp+Wp7zSSASjZ2yVl942GAmiohZ8msDJWQIs31QcC8XgaynYHS?=
 =?us-ascii?Q?bQO32eTaVOpb3GmImT2KgQnm7hQzTV9AIb3lsi8FReegMPKhb+p4gE2/bvIw?=
 =?us-ascii?Q?c6iAFcGfR/xHYHG5jMYMKxG8n4fb1O9Hv0mRwUvdnDxYdCl+LgiLQC+YX5TR?=
 =?us-ascii?Q?GqU7H0+VZzUJkAip/BD70GquG6y6rqGBkeGRV8PvHfEmBtymr75lcfNEdgEv?=
 =?us-ascii?Q?buYH0q9nOtbIB4flj/4DeWsTBGVBS06jtcKbX2f+zqYOeUEsQYb05Jjzi/7I?=
 =?us-ascii?Q?MIko5IkMjv47Ym3rsVBWRx0HWMO/VVzPyN4Z8nclrGgo9IdKU0DL6JHS1zwo?=
 =?us-ascii?Q?MycsTs2fRN5Yrlg7kaBBgHAhlB0dtnEaM7+aiH6uGxNkvIILyjU1Vb1rFdYZ?=
 =?us-ascii?Q?e/gioORxIGp8DSVjj7ZoSeWanPZH21d0g2tRjPwKYj0UCB9Y6RNE9ZkWoNba?=
 =?us-ascii?Q?JZ3wLZydhOoILt3OiPYTqd3TiKTLg7DaLGewFiA6GZ7MMzGAkZGX0f4rQ/MB?=
 =?us-ascii?Q?+HNETOUYA0UbbXzvwMmCG/2i4k7tBl9Ukfy3QZq7oAaUDuw8EogdFDEDacBh?=
 =?us-ascii?Q?T5wS37XokjCBKHgvcX6zUrLCV+95UFm1KKDcvUzJhFh2g4puJDHiM3LFQ21u?=
 =?us-ascii?Q?GC8pfv1ALv1gA3FTJD304iMHfDCo25xD/38bHpeCHyV3OokGxakiGxo8DQZr?=
 =?us-ascii?Q?71tJfcsAq+3E4rS5WsgBlOSEH8IO5hmu4wySLGREwX8SFikBr8V67bA8ix9p?=
 =?us-ascii?Q?ovzsAPCTsFrMc8ZpzikQRYEiIyB8rdMtat2eK+0FBpuQQUxLFz2SgMBAG1V1?=
 =?us-ascii?Q?7ow4bLyiodOvIVgNIGK/ZkxSroGjsStPrx6vQamY3mKC+vrRfLLqzbAisnuD?=
 =?us-ascii?Q?Tczm8+/6lhqGp/OWcLobHRBnzq3NSxdbmDa8Fje4lU928lsPivBYjWNSmzPs?=
 =?us-ascii?Q?KcxHA+wc9vXkEijmou6KQoLyMRNvuLA5FeZFMRjkarQjuDxTfaNFa3HgmkgW?=
 =?us-ascii?Q?Qxl2r4yo1qclm/VoxG4t1bk/kiZEZsbgQkuxA5CF6LVKQYSCzkA2lC/U5RfJ?=
 =?us-ascii?Q?1h11Fz/nt5dMxCKfPqKkWZAl/hggxwsImKgR3ScHWwrZEWYki3JNzF7nNE57?=
 =?us-ascii?Q?IwYXPWxIJsxJ3GHIvnpC/plmQ4m6+gFd15kCmXEmME+5NDLI9qTVNOIQ9RbX?=
 =?us-ascii?Q?4FC9RDfNe15iRVh1pA/m+g3qTc1ZAMwFT1hQ0WmbMW2l69UUx2xdArfzfs9T?=
 =?us-ascii?Q?yAcy798mCRdGo9EfF3LRwqVh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 509d7d09-31c5-4f11-bce3-08d8e5b44fe2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:09:46.8744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: npkGFEHXq3NlcV1QL1TSqFVNitst77XD5SCNSCinv5BqNMPnnjlwjODOErpt0FO3py50tIXpHHL6UIMCMuv9ZDnEY8iZ0nTFF8ClomQ4EN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 05/13] ice: Consolidate VSI state
 and flags
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
> Subject: [Intel-wired-lan] [PATCH S56 05/13] ice: Consolidate VSI state and
> flags
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> struct ice_vsi has two fields, state and flags which seem to be serving the
> same purpose. Consolidate them into one field 'state'.
> 
> enum ice_state is used to represent state information of the PF.
> While some of these enum values can be use to represent VSI state, it makes
> more sense to represent VSI state with its own enum. So derive a new enum
> ice_vsi_state from ice_vsi_flags and ice_state and use it. Also rename enum
> ice_state to ice_pf_state for clarity.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 21 ++++----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 14 +++---
>  drivers/net/ethernet/intel/ice/ice_main.c    | 50 ++++++++++----------
>  drivers/net/ethernet/intel/ice/ice_txrx.c    |  6 +--
>  5 files changed, 47 insertions(+), 46 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
