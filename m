Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4BA4C4A8B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:22:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA6754183B;
	Fri, 25 Feb 2022 16:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVdYhTAENeU8; Fri, 25 Feb 2022 16:22:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5ED6417D8;
	Fri, 25 Feb 2022 16:22:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4A11BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6893F83EA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVTvrqJrzBNz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:22:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC1DB83E4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806161; x=1677342161;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0zvg4UonYK7eCGH9HTZDrYC1yK85q8zQz9ytgHv1AMY=;
 b=DquZao+o2a8GVpQridVN+n2D1M/ArV2y123awz9+EYpspEkZhQqTkNXT
 jXDYLPsT5bVREdlsflTXcRxdnCyegLNtFWtW8n45aO6r7xq1cS0rXM1g0
 oZ6iVWFzaYM65pPP6S+YI+q9V9V48CazHDCEFWZwKArH4C2lpMS7qFeaQ
 13uebO39nu1wygHYmLXN8bEW1Fydx+CQVqPW0DXC1cI5KkD1vhuToCP9n
 F9d7PfTNSqR8cxuPOVZnwq88VAlzjkJUzr9iFZ7QGWEWvv2ahpihTlyky
 gyNwEQZR+KIOHOQBQcbZytN/WVKgHsj0J7PlndXHrO52nDk/3xFpBMQKX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252256137"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252256137"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:22:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="792387137"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 25 Feb 2022 08:22:40 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:22:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:22:40 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:22:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kWgUJpTLsbEsKlsq6slT0MlIqKHIFCWaUBB4dT5M5SWJQpl6Bh2VQGMRhT1WCCJvmHqc3bpdYkFyHrApMCYWm1vmlJZihSAaSKZmwIPxHK4ftvbGWDkdT3wX5wTBFjDH74FpAku9f7im3m+0wZjaxwuzj/3B6LQUH6Z3oCa7Li1V6VnpFBbFrP2V4ZYoYGfDvCC7uJRO1ElYrnhw0a4oGn5GPguGrgL+/mptzfjZwwlwc+8uY+XAyT35z6nExosEZBhbONebwdCDfIlpDLdA7hSm/LO45NCa1G69TusBCzelk6gdiI9hxB82UsVNfSPc9HXH730vDuRJy5mPYgBuIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=htnKMHn3b5MtL0oe79AkOmxVYwIzyvOdiFDpw+Yf/4o=;
 b=GzxGXjmxp6Dg2MUMxviQha6j6q3yjQxa9GvmSpaiHTeTGfEOM8LQNy8Sus99yeAld6VrkIK3J78QopzF22CNK45SUb5Aqg5dKHXc3vdVRxKO8EHycnkDYt9gtzjvXT2nLwsMJKbqb5hb3xuuynCNtYXeHDj6+xEwyCPjm9MaXE4JfEx1trG6PPAgvwGKoKmfdTWIeqcdMF2z0+eo4Rc14sEpR7JFt1HgSuoQ3PTkwKs4ywOze02marTcj+qe/KV+13LQKPUHnB7ax+C0rgjMp/F42C7LTObVjOrymxbWOwJxDHKo/SH75Vf87jNfmO3DyIfmQUKDj12HsPf2scxLEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB1953.namprd11.prod.outlook.com (2603:10b6:404:105::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Fri, 25 Feb
 2022 16:22:37 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:22:37 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 06/11] ice: remove checks
 in ice_vc_send_msg_to_vf
Thread-Index: AQHYI32pcfJKY3m31Eaz+cd8lZBGw6ykgLtA
Date: Fri, 25 Feb 2022 16:22:37 +0000
Message-ID: <SJ0PR11MB5629BBA621835DE4496BE0E9AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-7-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-7-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90aea204-e5fa-470c-31c3-08d9f87b09d3
x-ms-traffictypediagnostic: BN6PR11MB1953:EE_
x-microsoft-antispam-prvs: <BN6PR11MB19538AF0D3475B06ACDEC288AB3E9@BN6PR11MB1953.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y9XtPEvoocTmZKrshtm3O4XPSTUVJVenHJJxw8cdlqsN+r5CzmkI0KCHBZBfx6z70JCW8DkGGcjOGuFXwE0mWzMc7ffq27a1H19ht7R7WCF+/e6HMOthhzX4gooQthRPoqsy+wdxe6/R1Jkwq/Ljqz5m74nKh89at+z1fLsj4cJ/rM6qBdR5UJHjPR8ei+Nqd03NFyXFNdC2iH1t3aDWVpNpbYM5JvkO0+ElZ7vICBik9fKeAp2GmcvQOyxaacfmceeEYBXWSHp6itBYsx96517YEiMRIchYya8/71eEZq1IZ79ovOaV/gVHkRqVc6rleAr3FL7W7FCs/WvnbPXO+CJIW7cNkH4/3chQpRd/0dPkCDkz6SrMenisVw/2H4BWQCqqs+FAqgznvedpTDbaBTSLqwSEJqrWOfCdi4oBGGLHvbbs1VQo12AS7D7M4LCeUCQKI6EbcwlYhs+irtgRD7FU3IWRvSU6hiKwhdxqbPH705U5KU8CqEmUfn92JBVCT6CYG3y96nl+cdu0LpvUdNNLW+lipePYhgDBFLK09f0+7ttJwlvv+7jaJxiBFtb0ldiq4+0TMaPYg+aQO8bR+qEy2/vQyBrnPkQYi2xnU7gHy3CJAY70DtOoGs2bpXH0iQ/v0VLuJC21IZoS3CgUPPcXHSy+8rrt4uGNTrV8Cs8W7aCYU61IkKbezcqyZ33/zBTjhHVYeyTFy361K6SM1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66446008)(64756008)(66556008)(66476007)(8676002)(38070700005)(316002)(186003)(66946007)(82960400001)(38100700002)(86362001)(52536014)(55016003)(8936002)(76116006)(26005)(110136005)(5660300002)(508600001)(71200400001)(9686003)(7696005)(6506007)(53546011)(2906002)(83380400001)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oJ8sRW5pq1Ex/OVjgBKYvFsZMtW4JYSTcvauSvnZNOP59x1VLwwclpnSlLkX?=
 =?us-ascii?Q?f3cgf6wH31hkmIsNb+M8tGZXe/WlkM33yaeN5EumAWbNyNQR2WU7/Xo+W54m?=
 =?us-ascii?Q?sfykgsiUcegLS16Ooy5GLkk9DjwwcJ0VYylksOIUsyCfXFEFLKKiizlbfgYw?=
 =?us-ascii?Q?FCO6Y/f4X5LjpQQERaUW606IjBStZOOApnmWxQKCTmf5fDVlOVBmDNX9iKNZ?=
 =?us-ascii?Q?xzacaSQzKdKZyDbrP/OOtwHqKrAN9M5411PcH7OKcPHP/+2lRckNc+ikCao5?=
 =?us-ascii?Q?2WQZ2MO6w91OnQB4hyUC7aIKLoiW6KwSaweQRxbTxefIrTdNniypV7/adHtb?=
 =?us-ascii?Q?vW67X3BSkKWJ3hEIcMMhH2zteB8Q1LPVyA1yxadyYPSsCx5bsHWpKk6Mshpk?=
 =?us-ascii?Q?lHh60yP39TNw1RX4EkJGIUcevd9+g2/5jiU6ANiRnWfgPRukOi6Z6w7N2ZMu?=
 =?us-ascii?Q?ezZNdQWxgYHvPGdM+gl42MfaFjA/f2Ce6h9a30jZnYuNGsqLn3TK39lcT9Uz?=
 =?us-ascii?Q?dGK6hUNKy+pZWcClXEuWQFy4XcSjHSCBnXZ3NSolCc7OMmaH2sTxGy0+B2uS?=
 =?us-ascii?Q?g9EtqML/a7IPSMsOj5oQDO7tNtSWv55H+HH+eqCKJiWCcreFl7ScXlhuuP1/?=
 =?us-ascii?Q?OO+a21qiQ6awz9BY/uVKtksHZ5sQH764FqlhDMan24MiobDxcuFW/wH68d0P?=
 =?us-ascii?Q?Z7mZCf5D4KT16slXUe6TsNGI+Hl1WHYiPM5bWqlChacZjSJfUools7LFIH+t?=
 =?us-ascii?Q?iIXFcMC/T+f5QAGq8/aGTEOk59jklrmK6gABTxn8aFcZqlOO2A8+00KQ0rtJ?=
 =?us-ascii?Q?+5R3GMLLyc9g4VKNP3u+ESllPrMPUPCY3ba/U6IVnYOa+11LwGE95XnxeRi+?=
 =?us-ascii?Q?l3QHLy8W9r0baUz9ZyAPQ2hX3So022eLYjBCXcrXFDpTiqKl6B9V/AFwoCR6?=
 =?us-ascii?Q?AZvvLw0KqqX2p/WSCZzhJT/dEqD9hBaRnWlDFXtJQjHNRMV0Kw9Qg04OD0xK?=
 =?us-ascii?Q?HfFBY9nqTvyIsMtmMGgpRn0E2gN7poqCV09TkWyG+l8U2tZHoxK5XMS3zMRe?=
 =?us-ascii?Q?6IfLzFQ7p5esxljSZzYwb+9EddQk8TVUzk87ZpRHpyVXospOi2i14iv4C50F?=
 =?us-ascii?Q?B5sH4UEyLk9gd3lRZSGLv8kthGxarRVYfkPncGp3UBZqaoy8sQXdo6LSGI5A?=
 =?us-ascii?Q?y1Yc/XkyEY2NZgj8BfYu0DPyyd99J9mcKsiKyV7KQCfW75nlER14emcPCPm/?=
 =?us-ascii?Q?+qd3tiEpWRihUdUjOWXs99n3Q+QGI80k1u8rNBPqqJIyvWLoEULXOuKnol/M?=
 =?us-ascii?Q?MC+a8kL0TFHpfXVxJ8BEpmFA2Gt2c9+Dp5B/U1G6uAgAWQLDcBpYpiM4YCGI?=
 =?us-ascii?Q?PTre+HU+ETezDh8412TMHrsoOISPNb068oYSIuq1QEPktw0K4b/J4V6NFAak?=
 =?us-ascii?Q?YcDcsTliSGVqbLsJ3uEcCWKcUQKyV5RUkqm6VHDIpBRfI7Jv6xfeyBmg416U?=
 =?us-ascii?Q?vl1tMGoR5kELy8RDObtZqoj0m0eRFbEtq5Kt/ikwlGwnr2chFUNxny5wWaWX?=
 =?us-ascii?Q?APt9rC8cTZ6TzfZCgp8hk8uZUBIkXgxJo6LLci3YDZ+VFHwLInDG7gHPeWQ+?=
 =?us-ascii?Q?tJeh8pmquScF2tFdYc9C2iFN7kyaK4rAU5toRT6crT8jD70dW2wN8PBPiZTf?=
 =?us-ascii?Q?yaUDcQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90aea204-e5fa-470c-31c3-08d9f87b09d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:22:37.8356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DEpCQibJppB4W9ZIm91dVRsC6I6uK8Vg4TmZpeQL6ctJS9/orD48MCHr5Sc1fyHMXfc89Y/p6MssygnEF2xY9eq1z4Dnbd43lNeZbY8gXww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1953
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 06/11] ice: remove checks
 in ice_vc_send_msg_to_vf
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
> Jacob Keller
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 06/11] ice: remove checks in
> ice_vc_send_msg_to_vf
> 
> The ice_vc_send_msg_to_vf function is used by the PF to send a response to
> a VF. This function has overzealous checks to ensure its not passed a NULL VF
> pointer and to ensure that the passed in struct ice_vf has a valid vf_id sub-
> member.
> 
> These checks have existed since commit 1071a8358a28 ("ice: Implement
> virtchnl commands for AVF support") and function as simple sanity checks.
> 
> We are planning to refactor the ice driver to use a hash table along with
> appropriate locks in a future refactor. This change will modify how the
> ice_validate_vf_id function works. Instead of a simple >= check to ensure
> the VF ID is between some range, it will check the hash table to see if the
> specified VF ID is actually in the table. This requires that the function properly
> lock the table to prevent race conditions.
> 
> The checks may seem ok at first glance, but they don't really provide much
> benefit.
> 
> In order for ice_vc_send_msg_to_vf to have these checks fail, the callers
> must either (1) pass NULL as the VF, (2) construct an invalid VF pointer
> manually, or (3) be using a VF pointer which becomes invalid after they
> obtain it properly using ice_get_vf_by_id.
> 
> For (1), a cursory glance over callers of ice_vc_send_msg_to_vf can show
> that in most cases the functions already operate assuming their VF pointer is
> valid, such as by derferencing vf->pf or other members.
> 
> They obtain the VF pointer by accessing the VF array using the VF ID, which
> can never produce a NULL value (since its a simple address operation on the
> array it will not be NULL.
> 
> The sole exception for (1) is that ice_vc_process_vf_msg will forward a NULL
> VF pointer to this function as part of its goto error handler logic. This requires
> some minor cleanup to simply exit immediately when an invalid VF ID is
> detected (Rather than use the same error flow as the rest of the function).
> 
> For (2), it is unexpected for a flow to construct a VF pointer manually instead
> of accessing the VF array. Defending against this is likely to just hide bad
> programming.
> 
> For (3), it is definitely true that VF pointers could become invalid, for example
> if a thread is processing a VF message while the VF gets removed. However,
> the correct solution is not to add additional checks like this which do not
> guarantee to prevent the race. Instead we plan to solve the root of the
> problem by preventing the possibility entirely.
> 
> This solution will require the change to a hash table with proper locking and
> reference counts of the VF structures. When this is done, ice_validate_vf_id
> will require locking of the hash table. This will be problematic because all of
> the callers of ice_vc_send_msg_to_vf will already have to take the lock to
> obtain the VF pointer anyways. With a mutex, this leads to a double lock that
> could hang the kernel thread.
> 
> Avoid this by removing the checks which don't provide much value, so that
> we can safely add the necessary protections properly.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 7ab4e7d4cfb7..6351af58f74e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -2206,13 +2206,7 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
