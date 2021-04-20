Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4B7365DEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Apr 2021 18:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B36DB60AB1;
	Tue, 20 Apr 2021 16:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j0-WRgdRyH34; Tue, 20 Apr 2021 16:52:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0AB660AA1;
	Tue, 20 Apr 2021 16:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EDD61BF309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 16:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C7F14059C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 16:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ub9sR7OyX208 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Apr 2021 16:52:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BB17405A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 16:52:26 +0000 (UTC)
IronPort-SDR: MO56J8wcRZK1vJ0QpJyG7vRvDOcKPz9A8Pli6hFdVUmzbVRRuowvOrbfLOrGf4JPONj/2hoP8y
 j2vxdpo/Ydmw==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="175029722"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="175029722"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 09:52:25 -0700
IronPort-SDR: t7c7848ialDPiXDsKsbl1KUSCrsqNGzqq0sX1XdcGdfUaIjM7OQegyo5mwlBuvST2B0dCBC10f
 +is45d0VfpGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="454903374"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2021 09:52:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 09:52:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 09:52:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 20 Apr 2021 09:52:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 20 Apr 2021 09:52:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBM9MT2xh6XlxFV/zXFTqX6gjYivSOm/KDeXd77J1oMs8X8YcCulUxQCofZjvaVSa13ty/2se2sgRTEQN+jSmaYa8iErwiRv/eyrXFSDXtTcoBNkegcJYHZfxWgbxF4TspayhYPSWcSiaph+tErOZkDv1vYWu/3Hxdrw23F+cohaN2yMp0WpvLBGgDxTakAI1vppnBn5MwL4LVA9IVsCy+z6ZY8XL6IwIJzlInI6wtT+IatQ4AjVph3Bfoy1zfwtIHyv0+5ygu5Ei70kpoWFQN/n4NK4PhUPg+rFgVXkVDtrZ1Rf9i3bDWQIOO4wZ+Dbg/utlEBHFbWOgqs1BXLZyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCGc1E0f4ju0oJTOvZHYmMUP6EmcpcnYM1R4Yi6t+RU=;
 b=SrQBewHOtLXmH1ZHXB4m7e9ybkntQSrphOLcidXwBn8CP06cQSdIMfJuCGgeSJ5+DPUfOzL0JLplwc+Z4pBJmiy7T72D/b3Yv9mjrk8H4vX4IdxF9dBW6WWTvKPm5EYUkX/gsSLdVSn3+AfIhBSUPEGV0ks1wPwoxO12JuTYz5tSgA34K2LoBgKSPv+hRKqNL0zsjyRbHMmC8ZUrAVqSLGK3r3vvpfaphcxhU1cN0nXMHRiUquqgQcYM/Zn3J35LLWPHfowhUSgCmxQZxBkhanl9BMWGyUmUVtEpJUoLu0UBqJsWay0AHU5JKXvRYgJpZiv2bVKRvQ7pr3ZEPEG9vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCGc1E0f4ju0oJTOvZHYmMUP6EmcpcnYM1R4Yi6t+RU=;
 b=sGGOrWv3g1djavrYcw2kG+RNvSsX16IfbU/XQQa3DtniPvf95l23PuHT+oJImbthCp2UdDbZ0eQQ25qMYzelUrEPnze9G1jBqQW+fJ70wJ2Y7WOOFOXaOTibfjoyEftonu5ea7cd/HxlsutrQTDxpc7TSjIDLrkuqNo6YVemutM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Tue, 20 Apr
 2021 16:52:24 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 16:52:23 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix of warning message
 during remove iavf driver and fix of call stack during rmmod i40e driver
Thread-Index: AQHXMsh5CJ4kycSVxEuVxzq6ooAJ86q9pYCA
Date: Tue, 20 Apr 2021 16:52:23 +0000
Message-ID: <e31442d4be7f4ec3da59e69d3e1d1a3fa3f7b96d.camel@intel.com>
References: <20210416092251.272749-1-karen.sornek@intel.com>
In-Reply-To: <20210416092251.272749-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f65b7a70-d21a-4bb7-5ff6-08d9041cabed
x-ms-traffictypediagnostic: SN6PR11MB3518:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB351870096D2634DF73D0EEF8C6489@SN6PR11MB3518.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: moyP/dQP5IpHVzuZrQ/D61ZKjKdg2CLAG+Pd4GkE4CYwmqXPtVM84CWBR7NA+yCLpP8spDt058BRgmY/Bvp/HFZJ7ChL9LAQObsDGHeaugQKCHwsNIj7SJdoay3x14mzsCSOX22awcgiUU5SXLzJMgJu9KG3aOMl+kdNEfcNDPpC3q2KA4l3D5gOqP1Eh/JHLoEx0iQwjWCkQXJBPTF1xGuBj029aqa1RBwhZM1TJSzv1xAlBGB6VmD7Uu402qBRGIPVRg/vpzLY7Isxm9uSdk2bdiV8c8efXbjuxtCEjkOrgA9IUWThizCLbM28/Dx8L/1Njmu5l93VvRMz0cZH2xfbY1/bgphs2JYvSqS40JeZvxSIj621vgpCJsN8mvm+YoIDijeeke0biv0cZHasE6NbBh4AEureCtFjpyP+tfeEBoN2W/w4Ne+opzaOj9WjUgiYcNJxyRiF72pSYjCiVjFvvZt5x5TFD5gzqsWp0s+SkQUlKRvgD8dL/1JImZSZBVg3Bd/YFpgvio5wP4CNJNwj+yyffiIUYB/87I6OszXBNF/XfmW0OZh2FRCjjwbXVhcC6HnQRHKfW4UQRcepIZqpghzGd9K9AkE8l50Mtgd3hObXh0Ig6BulljzFg+7Abr+cXjYY/X+cXONMYh+qqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(39860400002)(396003)(366004)(136003)(91956017)(316002)(71200400001)(6512007)(36756003)(15650500001)(186003)(26005)(2906002)(6486002)(8676002)(478600001)(122000001)(6506007)(110136005)(38100700002)(86362001)(83380400001)(66476007)(5660300002)(8936002)(76116006)(64756008)(66446008)(66556008)(66946007)(2616005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?NVRmUkl5M1hrdDlXY3pBYm96dHpxTUg4THhPajh4QTQ3SnBHTFF6YjZ3ZWl4?=
 =?utf-8?B?bm1CSnNkVHlIcEZTbWR6bG9IY3YybVYwZFREcjg1QVhqN3B3SnZmakNnaVZK?=
 =?utf-8?B?eDVxUk16VGZHQ01BTW9oSWtUUFMzMWNpZFoyWDhPYXI3THlZa2dDcU1tZ0k3?=
 =?utf-8?B?MnJFQnVWSFpSUFh6bXB6NDMzMy9SalAwMVBKWkw4UDU4aWkrUHhLWXFKdzdB?=
 =?utf-8?B?UmFoYXlXS1FiaEdjTTZaTENXRGF0MUFYSDZGSTdtS1Q3L25NRnJhYzMzN0g5?=
 =?utf-8?B?NUFEaDRaVHE3NWUxbGU0bnJKME1ncWZ5STJnZitjVktZc01DbzYzVkVqNXRs?=
 =?utf-8?B?VzFLS1g5am5KL3BqK3F2ZnI2RWxaYUZwN3ZqNEdFbEp5UldXaDlCSjFWTk5H?=
 =?utf-8?B?TGZCYkl4bVBRcTVEM1VjQjl2MUxmRlJxc1BqQWdZMVh1RGJ1SjRDOE54VU52?=
 =?utf-8?B?Q1dlQ0J3bjRncStwSjVLU3NSWmhMQ1lYbFBLQjA5dHRBU2JKMTU2ekhWcWNK?=
 =?utf-8?B?aFo2WExTbGExK2VHYU1RMFV4NlYzQWE0Qzc4RnNzQTVUblA4aUxBQTVBMEdx?=
 =?utf-8?B?dm1qRFl4Nm5qWkp6WXNmQys1UHV2dnJCNXNidUpkc1NkeExWYjFRbkE5V094?=
 =?utf-8?B?RXNNWGZ0elVBdXBGOHVNYW45cEhpSUc2UVJZSXFLOCtIaUo1Ujg0TWJXZWlI?=
 =?utf-8?B?b1pVdW5PTDNMMkk3UERqNkN6UlhmUTNLb3dVUGN2WGVUYVEyL0h1aDVZVmdB?=
 =?utf-8?B?bFloOTJoSENSQXJZNTduM0hLMy82bzJWQzJtc1E4NVJ2M0krUTFOSWUyNVdz?=
 =?utf-8?B?cDVtYkZqYkF4aHl3RVJudUpybnZORXJxeWxZa2V0UW0zSG4zdStGdStmRkg3?=
 =?utf-8?B?NHhWQU92MWxFNFkySFpYU1B5K3R4cFBNR01EUmdiL3BWZDFTaWpJRlVCM3Jt?=
 =?utf-8?B?dWdYYmxNaGJ5Z3lzQVFRanBZTGVmY2lvajlSNklKanZqMW5GZWJ6WmlnS25w?=
 =?utf-8?B?aHpVcmtsc2xsdnZobTRpK3dER0ZraEFuWDNsQ05PNm5VbE9CYkFTNXJXR0xo?=
 =?utf-8?B?SFQ1T1d0SlB6bjBLVlREZWpmZ3dRa0RYY3lDcjdkRzhuRFVNNGVSb2R3MU4z?=
 =?utf-8?B?dnlMNnpQTjBXVlYvV2NYNHZ6eTdIbGgyL09pMWo5WEhWUzdhZ05MWFhoMytP?=
 =?utf-8?B?V29hQWlOaG9Ya3lzc3QvcWxIMVlkdC9HT0Q4VVVvdXVzVXlVYlpKUmUybmty?=
 =?utf-8?B?VThkNnVPS1NyQkcvdHRsTTFTdDNPZ1I1ZTRKR0lTTEJPc3V4M0NiOWpKMzNy?=
 =?utf-8?B?UzlVL1ZwSjRBekI3OXV6M1BaRVR6ekFlZzFlL2J2SStza0R6OVNsLzdYZ2tU?=
 =?utf-8?B?OE1vL1BPZTRmSEtLc0l3UWtOQVVQRFNKUVZDMVBtUGs1VC9UUGc5dnZSaFBt?=
 =?utf-8?B?cFUrRm8vaU5yVWswQlJWTXhHYW9SWS81K1BvbjBYMFlUd0R0YnZOVGZQMElz?=
 =?utf-8?B?OGRoY01EdE82ZnlxajlDLzNYL21Rd1RlOG1LTU12QWRBWnhMSjAybm9oR1Rr?=
 =?utf-8?B?cy9XM0pwbkVRd0JSUy9QSlBxRlRYNXh5VDJjZXFYNWNCN0I1UHBkdzhFcjAz?=
 =?utf-8?B?OUJFRU1Ia0NVQ2dZNVE1WkRsOUkzbzA2c1h5UGpXYkdoM0dOejFndmhLaUVZ?=
 =?utf-8?B?RTdJZ1dEREdydEQ1U2J4RStYTy9uanJzbTV6NDRoTEdRNTJUcWJjNSs3blkr?=
 =?utf-8?B?VWRDTkxsRFJXZDdNWWJBMU9CVVhJalNQc0pjTHhiakY3alYwSHU2VEdqVHU0?=
 =?utf-8?B?M09GZHJxVStLV1htc1hsdz09?=
Content-ID: <EAD24090E8494C4E83B36BE73279106F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f65b7a70-d21a-4bb7-5ff6-08d9041cabed
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2021 16:52:23.8922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gRsSsNh1bU9T8VZ+9fcAO4SfVWt6yCBqHvgk4vyg8IZWXwZ85/7uXe682PbzqDtonFfKijtbk54czkdx4lO+Ht3x5oUzMJ0ZOiCKmPrZhqE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3518
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix of warning message
 during remove iavf driver and fix of call stack during rmmod i40e driver
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

On Fri, 2021-04-16 at 11:22 +0200, Karen Sornek wrote:

The title is a bit long, can reduce it a bit?

> Restored part of reset functionality used when reset is called
> from the VF to reset itself. Without this fix warning message
> is displayed when vf is removing via sysfs.
> 
> Removes the reason of the vf crashing during reset by ensuring
> that the reset message request to pf is performed.
> Refactoring code to use one function instead of two.
> Without this patch, during stress tests, there was a possibility of
> non-execution of reset request correctly which is the cause of vf
> reinitialization errors and consequently in rmmod driver suspended
> the system.
> 
> Fixes: eeeddbb80640("i40e: drop i40e_pf *pf from
> i40e_vc_disable_vf()")

You're missing a space.
Fixes tag: Fixes: eeeddbb80640("i40e: drop i40e_pf *pf from
i40e_vc_disable_vf()")
	Has these problem(s):
		- missing space between the SHA1 and the subject

> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 53 ++++++++---------
> --
>  1 file changed, 22 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index f6121a0c4..ee2c5aba4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -183,17 +183,20 @@ void i40e_vc_notify_vf_reset(struct i40e_vf
> *vf)
>  /***********************misc routines*****************************/
>  
>  /**
> - * i40e_vc_disable_vf
> + * i40e_vc_reset_vf
>   * @vf: pointer to the VF info
>   *
> - * Disable the VF through a SW reset.
> + * @notify_vf: notify vf about reset or not
> + *
> + * Reset VF handler.
>   **/
> -static inline void i40e_vc_disable_vf(struct i40e_vf *vf)
> +static inline void i40e_vc_reset_vf(struct i40e_vf *vf, bool
> notify_vf)

Please remove the inline. In c files, let the compiler decide what to
do. 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
