Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0C2357812
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 00:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A69D400BD;
	Wed,  7 Apr 2021 22:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7SPzONlC-9f; Wed,  7 Apr 2021 22:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17DFC4068D;
	Wed,  7 Apr 2021 22:57:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAFB61BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E58694191E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrvfzDp1hbBm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Apr 2021 22:57:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B9FA4191D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Apr 2021 22:57:08 +0000 (UTC)
IronPort-SDR: /HZHaCeqvaELeWwPkDwgXIM3H7A+tc7AVO5eITSqj6iwxsDAFxTV//X81qU4CtoDehvuG+xp4m
 NxWlp3/YnLoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="278679276"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="278679276"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:57:08 -0700
IronPort-SDR: aCw8PiqSBV2FQ6oSAAWWf/RtjPgZO4wQXweDhvKt5zc3kUXf0KPLwppKNP5XAnPaEcn37DmKuC
 yl0rFm9DwujA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="380007710"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 07 Apr 2021 15:57:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:57:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 15:57:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 7 Apr 2021 15:57:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 7 Apr 2021 15:57:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+YDn7nCXfsKDD6ozLBq4riqg4aJOAhQzst4SbRSeh5yEa5kjMDZ7+CWdp4pcLeW4eEWYkwdZVwS4/A/rO+69vxVmLG7eGFvg25j5oQHmHuMnDZoTiPck2/UAegpOX9Oe1z+6R5fd9UJHcAQINqscSlQpezJ0YlCd+1inPp8+Pv0BEe/of7+F2zLPVqjJ1mdbRwq+iVjr0CuCr0fNHm3689bZk4ExYs9bsI4fU8CV9uoaec5vsWrEnAd4wtMLDBmGwHcYCSZvps/ug7a16eRrktf/SVTqO+P79W4TyG88haGmMjxpY5ZiHNE9c7IQ3HYKdEjaniOvl0Hq6rOHGpD3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4THYfFI3fp+MntyHz2j2JriWweawDVIEfy4kQF8uTrA=;
 b=Os88IxyX+qwHg+x0pR7I58PQLejlIkywr7kK6RwMDP4v/KWYFJT9JrRkfcCCAkxPQOrEXE5Wwg9JK3xwvgKWN/uHNWDbZiRtL1/fn+K+YwkGXFo4dHAkKZnAECmPEMLzucci1AQCA/36nwdwMCUDF9HYjoJfFJr5og+Ve7LYkKHgePUldyHpNbz88opLd+jgBrji7kj0gxcTKaTuvt0bvEuKnZBEbC3Ha63UJgTeXq6Eb4HvsxZUkV6vwG4uAYwkzj2WxZpZt4US72uooXKlsPkYJOUYr9d0Iq4M+LJfOwd7pzJSOenm7ZHM4zgHKp3QLZgnuLXVfroyhM3gK44iqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4THYfFI3fp+MntyHz2j2JriWweawDVIEfy4kQF8uTrA=;
 b=AZqP2AaTFVu4DqhKx6jpRiDtHl26BzL2tAdpKcjBewIhoqZG6NLCMU6xtgHuk2VFWfWRzk2kZHkpe4XpejnKTf4sWRXeAJnHprPpTiXWhbjz8oxczU17qFeQv93/LmxxBTv7aI89rqUHaQ5RkpuNlukjGu1+HQVzjTH+pe4Vetc=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by CO1PR11MB4770.namprd11.prod.outlook.com (2603:10b6:303:92::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.29; Wed, 7 Apr
 2021 22:57:04 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.3999.033; Wed, 7 Apr 2021
 22:57:04 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error:
 uninitialized symbol 'ring'
Thread-Index: AQHXInE7Lnsexgc1uk6j07i9o2ePXKqpvaEg
Date: Wed, 7 Apr 2021 22:57:04 +0000
Message-ID: <MW3PR11MB47485BB88F843116CD6C6A7CEB759@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
 <20210326184343.133396-2-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210326184343.133396-2-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0a298f3-1fd9-4363-a4e3-08d8fa187638
x-ms-traffictypediagnostic: CO1PR11MB4770:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB477044AE2A2ADB76BB802667EB759@CO1PR11MB4770.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fngIKDEUwR3wT/foM0qUD9qCnLqdrFhf6pwqSMqRfI5cjipUljCQG/k7YnbgoCIsdP6yHbfLNkkvgKqFENHXiSQ6trJpYEBuvH6lhxWknz5YuN5HgR9mJ6Hj7j6rqu7hNTJiKNB0a19JO3b/fBPtzBsHDjkZmGxvBPR1tdrmKPJRIe0BBctne3J1+m+C1LFTMteo7CnfG6JYmEQrDOnK8feuZR1/1hLmvOsJiJf/A05aZDS5e/L5Vl8uDW4A1UJzIbBZ4vzB+z3TryDTYYIbAVv66+iLbGUz4w33wA8qIzNw9juzIcOrCr5nUoBU/3DlHmsG9QUMB92IpsIjnRiCmZQy7a/+M47FWrlafcNRH+9rjrUhJS87jTZD7rMlZpWG62pupdA9vZ3UM0Igjow5fXUYiEpgI1paW1wo6gWLIObfyKKgvytoDEOPK24/lASr8TZRCHH/p/Hr0DQkJ76gCDFlHZRWVZuR9DHFlHttexhoZpCVsxrDPkXG1Vn+4/Ud/yTwn2bGFKmk/W3RgE8I2o0FLKUth+T33dOVSpGgjUfYPa4i4PaNoHuQ5TAJu0FyeXcyFpMM4gbIvkx4AR/35A7DX4Eclo4PNpuROVdS3kUji4N+YAosNeMqVCa97hOaPdmz30/rzxB3BlOsyQxmlEQa6qlh+2BTIhdrI8j10AY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(346002)(136003)(396003)(366004)(83380400001)(5660300002)(86362001)(9686003)(478600001)(52536014)(316002)(186003)(8676002)(4326008)(2906002)(71200400001)(107886003)(6506007)(38100700001)(66476007)(4744005)(66556008)(64756008)(66946007)(26005)(76116006)(66446008)(33656002)(55016002)(110136005)(8936002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?W2XYnQL/L5VxIWcJcVvQMp3vY+Rf5vwBXIjb4pvMD7yrpvQKbf15CaNBY7Xc?=
 =?us-ascii?Q?ry6NvQAiHm8I5a+L0nFlUkocU0b5/jaG/hyq2scWeAoxQVGkARp1YvPW33Nu?=
 =?us-ascii?Q?EeAAFSW7lD7uNs3w3nL5/SUFrYMeJL3odkZmxW2ysLINVL6aC2CfYuoBmPXg?=
 =?us-ascii?Q?Xb3J+ksq+t17OfgjFpJhKoNfG1GDRjZFvtz77+qEnGryu3+HhFeVl4oDa2T2?=
 =?us-ascii?Q?X6cQo+kRCRpItDfNGrmDvId0hp48mHz6bTzuR4wXYtEefJwl6CTwZQ0RaShz?=
 =?us-ascii?Q?TyIO+rf/Rp7URMtStZNvukpxv7Gg6N1javddqX5bhhR5DAxIuByknoWAbK94?=
 =?us-ascii?Q?9dGM0seO97jIv2Lo59sUK05dD+Wr4+5NAxheBYhM4Nfi3KiXTvZ9XPkunJxk?=
 =?us-ascii?Q?Fa6OOkD5K3l5wulyP34eBqwSdhJtxhI49aFZcfs3NgKvD0/vEA2b00IANR8U?=
 =?us-ascii?Q?OujCTWQ+Qt1ygygxNd8NUbUczXupt7/cQGbs2lBWpaYeF6t1RwBqZR46nQNo?=
 =?us-ascii?Q?R3BRPZyij2ji3JHRBTVhBwoSZDJbZTnSd1G34oqkmsTxjF7l0zdAH4NE5BbW?=
 =?us-ascii?Q?L3v1J66JPPLTywi6QKVUQQrnvqOSfE8VGs+yFU+CGhSal+Rlt8qV4/ODi4u5?=
 =?us-ascii?Q?i/v6TTbkFpMxukZbawIDRkgM1aSdnmW+4Kb+twtZXTYNrvgP3au1WWv8IH6o?=
 =?us-ascii?Q?WwBFTFVoXR+XoO6AoY48f9A8tMVfJ/Xow0ph7HzqLewuhkPL+dihRILxEeC8?=
 =?us-ascii?Q?bGSQLQEjAIqOhNvp0e3MAK6kGR6Sohv5RJTu0G6wEpn9sgYCo9eBszXqCSb5?=
 =?us-ascii?Q?9c+eM7XK+zifzGAs17UurnivBpVQ4m3KMWwdd2oRNBHibhtUjUw3pSsXFGak?=
 =?us-ascii?Q?FSOrcYzkg8CWDyS6n5OFAANdnSOq92ybH69hehf3YS/FQ+JcNEDTqmXuFR+l?=
 =?us-ascii?Q?UNJzkRsJcaAWogP+8w9Pp4uUCdFAb663oN5JUUI+4DZ95k4ofWqDpxk6PXRq?=
 =?us-ascii?Q?hN13sf/uN1c+9Qu02SwIwiQRboSeQW07GHE4g4ng1otRtx84pjzm6Wf8uJYF?=
 =?us-ascii?Q?MucBWAFnWCq60vmDCATj569trxZrvl8jNSNEOQXMnulnHR8qgbplFdk+NfoC?=
 =?us-ascii?Q?r4URDJ88WgSMCZQvJKOpsMLAUI/zagf0EfnWXg77S6H11X/BAORM36K2z3NG?=
 =?us-ascii?Q?zXitaETGbRFBADKjcdH6drlV633QPMeZRCg2MoXnkXcCELR8OS6VX+Y0xyUn?=
 =?us-ascii?Q?hv6bddov2KKt3vr98m9Ga0dDU3P6dg/E6gX4GlRWljbyDXIpbNY9SJymIcwI?=
 =?us-ascii?Q?CDY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a298f3-1fd9-4363-a4e3-08d8fa187638
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2021 22:57:04.1552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GvMsg1Z6meKwAKRBd/dLN/xTmH0iEbDo/b05SbC+6xE1PY3H1f6xF58hin1kU9hXP72stNfm/x3iquXSjomgNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4770
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error:
 uninitialized symbol 'ring'
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Arkadiusz Kubalewski
>Sent: Friday, March 26, 2021 11:44 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse error: uninitialized symbol
>'ring'
>
>Init pointer with NULL in default switch case statement.
>
>Previously the error was produced when compiling against sparse.
>i40e_debugfs.c:582 i40e_dbg_dump_desc() error: uninitialized symbol 'ring'.
>
>Fixes: 44ea803e2fa7 ("i40e: introduce new dump desc XDP command")
>Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 3 +++
> 1 file changed, 3 insertions(+)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
