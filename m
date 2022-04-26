Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2163E50F013
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 07:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD249812DA;
	Tue, 26 Apr 2022 05:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7-jYHZyGbGS1; Tue, 26 Apr 2022 05:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EF1880DE9;
	Tue, 26 Apr 2022 05:04:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4DA7B1BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 05:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39A8F60B45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 05:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0rRl8Di9UjS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 05:04:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BB616058F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 05:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650949448; x=1682485448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KOYSWEmYEhLopEBrpw1iqxjxRy8IvOtK3ifO7s+Xwqs=;
 b=BILgBxlGDK9beWrSFUwjncjMvDMWSn2CMD15EL4CVzQDo7T7F+Z+E/Hj
 Ntoq+cA0hfkVpMdUGD9gwzS822PDusL87ITcvNnxgMoL4MC0vgi6jm+km
 YVxiEmqaXP5lUPxzyj3YGaAhVjiKu6VokwM3hBQSodCzo+QEz9vyqVXYu
 QqmgxchOXHeQCDxanj97toVc3JcGL9w6Rww8bFK1dvvQgzHXsviBgeOS8
 ZP0KvSjIwtvlOBWFZHmAvcSV8B5Umnu2PikinGZT7DPJgKBZCzWdxSdiO
 BcvJP7MRxfZIitE5cmNAGNSkevpj74++VFh84JjUVSDA2KnKWj4BJHCBq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="245378493"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="245378493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 22:04:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="558103785"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 25 Apr 2022 22:04:06 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 22:04:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 25 Apr 2022 22:04:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Apr 2022 22:04:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWXWiJuSy68skLYd/Ye7t2Zwl2UvQQcOu+vdX9uYwHQ+Yw9X/B654em8nC3qKwkBmAuR+uJccih4KYK65yLdD7Qgd4OXWVGvyd2lXYPjR8yVgq+0zSNgyDfIFEnFcQ1EWqlflP+EYPDsaF1bOwyRihU/hW+a5ADfriKcRndtWpUOnvX9Qrs0qG/TpLY7ESg55xU4sVDiYxQLRWvV8N4MUQc+leKmJJ0rnMfZod5TnOoJQkOtqYZ03cNgY0d9Tp3Lrm8529pdqPmdkkieg7U/TagKdzzKgDgZSW2mr8z1bz/Lfcd7VxA7h+qJRrQ+yI3QlTPtnykf8nBgSFg5Fzj1sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSo1TIftXvzkn4He/zyGEa/j2YldSCt8E4ryykCitQc=;
 b=SnJ7KNuT+7zmCXGCAVJpW+Jd914DHNJqpnSLQPEcXUbr4qDfptXP23uuxDEKiV30Cc399L6tVUWiDpnr4LQuvdob+2XNXcSNxAtnAwSeK0wGw4v/QKrRd10a+q+17/DoJZD6TeWzIkSGJnL+X123F3BVq1BODfSEb3qiBuspUSHEOR6v24b+wq8woVsA1b4+Sw0qKtZJQuC7iWkk8purRtupRJd2//T8xnRQYnjL6u6AlYAUZYJ0vN5OpW1AMOFsqkYa25nUucU8ZcNnVpU3U06BULt6zF+kp4m1x+tqtf30kdmzmPtma3vCdCQfX78ljiogl6b4zrgb3gQitc/Ngw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 SN6PR11MB3245.namprd11.prod.outlook.com (2603:10b6:805:be::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.14; Tue, 26 Apr 2022 05:04:03 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8%7]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 05:04:03 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net PATCH] ice: fix use-after-free when
 deinitializing mailbox snapshot
Thread-Index: AQHYTpTyAV8EVA9jZUGWgmESEuD96K0BuL7g
Date: Tue, 26 Apr 2022 05:04:03 +0000
Message-ID: <DM8PR11MB56213804B8D58E5C4DA47530ABFB9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220412173422.1154381-1-jacob.e.keller@intel.com>
In-Reply-To: <20220412173422.1154381-1-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: c6be9279-c3cb-478b-73b3-08da27422f00
x-ms-traffictypediagnostic: SN6PR11MB3245:EE_
x-microsoft-antispam-prvs: <SN6PR11MB32457E24F06C09371CA565D9ABFB9@SN6PR11MB3245.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rjbGv6mHBYAV6D+0Ohi9V+IOdSZjZNLXYlVLf+KRpH1GcJex+cN2lRINogyWEbpzxSzfh+Nik+dLdMpYGsJsC9NM/lbEf0iAnndCAMQuGI6MVmQ/MI0U5l+ImqUEpZ1VscP+3fjM0ysceRk59wWlXeLiTAWhjZvntgoDiR/XHvigoyuGqXVduyGcO/KVMZfIfbBCZeQsHuMWSO98/bKgL5U3eAU6N/gaWzjLVTwmmVtOtD+Lidek+gDx4FMpbr6JqEuFl05cWU80TAZY5wbYjPFQAXeSlnWKGzpV2sthAlP1AQp7mqwmB0JM7SWex592qCre8nqb7wDHUHjUiP8bHS4Dn2QW41Hu+ehLDg51jB5JsumJSnZWeoFnbTEEawGMfPIdS3j+QRsU1MraxHG1622+543DFGpZhSqP2VUJvXL8WNFwKgpCzzv+KiZV7LrTfHPYz68wP7UgDFYNgnNpxq7h1PQSOAD2hxYcMo5NjsXd1DqHVgI+tK19KW+lsQVTC+FYysnwZ8wKaxeswUFoXD7nd7jYtYRCiyIq0uH+sLfx0OsSk4vLiKEAwCpVcZb/0Ty2YBO8OHP2o6gVO1gsPkzdxqVzk4DLtzKyDHuWoKdPYrW3+O8qHgzhOoioA7gbXQDCKJyWAICxrsa+xhndgqQb4zcLAPmWRQnNSJvsi5c0LgolMd9aNcNgPXSmfRyvoiJpyiMSrz9x3zwBOk/AfQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(122000001)(5660300002)(26005)(186003)(66446008)(66946007)(76116006)(15650500001)(52536014)(8676002)(64756008)(66556008)(4326008)(66476007)(316002)(110136005)(71200400001)(86362001)(83380400001)(38100700002)(82960400001)(38070700005)(107886003)(2906002)(7696005)(508600001)(6506007)(53546011)(9686003)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yHu82LgeSyGGTjle3OUvigMgwYj7vxXU4Zb+sW09I5oE4yG55reK39pInhER?=
 =?us-ascii?Q?4YpaWfffCfcQUGUQ8inFanoWWnMXQBdNvAcWlA5297RKzjvqi9vW1ux6lGuO?=
 =?us-ascii?Q?Jikrmp/jmb6cHMoCJIHyqL8gPnx60KlVtndq+SStqpqnoyrpNcY3oCKBNWQB?=
 =?us-ascii?Q?jmjH7X99fOrrtkvzJF5hHpEyrPwOA61XzRe24F4BzJHeFPwy8cqCk3rLY5//?=
 =?us-ascii?Q?0JyKC95XnCh7OA7pj7cQykShiEJq0ZfX3CrdXiC+Q0yJO3e0FP7YsYtQm4GB?=
 =?us-ascii?Q?hcOscTQomoT6KKkzwmeHEeaHNFWaE7goc8pAtbCJonb6VS5FOhW0yD/snLS6?=
 =?us-ascii?Q?jn1fDddMcthNiemw7LyUK5AC9lpeGtLVcBbDpnyeK6pTlWDyNACce1AG/1qw?=
 =?us-ascii?Q?O+M2RVPjRcAr1/2WAHu4LyiJXVYwoQOol1J2f78CZ+8vqOfv5qs2pTAupbYK?=
 =?us-ascii?Q?dFMvnWIBjORdw35AqlqLms007rxlyBY/zZG0MGDRHNAdKhs9rQEuRvVL5lHP?=
 =?us-ascii?Q?r7q0S4dyASske8mbIFCTqHTo/csg+Mhs4W4UYTzHlSbb9a6wUcLlP5lUEhzh?=
 =?us-ascii?Q?LGuaB1KG/AHs6FICfv0pfk15aFyDD5UvWVQTM1xTk07NYwoxdZFW7VgXpsIq?=
 =?us-ascii?Q?IFzAtGNv5nt7jjS+d2ZIFevE+YQmhSmPIpXJezFGNln4HPHp6CbeUfIvoIFA?=
 =?us-ascii?Q?nUCSKvofhhc1uTy/NQb8v78hYpGH0CgkzAaLCbXJGiubrJYfd2NL8YNpqMWl?=
 =?us-ascii?Q?mM5ZH/NhwV+Qus8T0Ccr/6vW2l0wRBurxRZhWxtzwEk2Q0oT+VeR16PHsvR5?=
 =?us-ascii?Q?k4RWxiF2vh37TKWCQqW4DBBGDO/f1qAweGvnFy+uDzPtqLjLdveoXDiq8NMO?=
 =?us-ascii?Q?ZuGL+SMB+LOtf41AN0jCt+UXN6riKWPJ7mZOzMa4Chf5Pj1pfhmx5LDTPljW?=
 =?us-ascii?Q?OzWWRtbHglzuxxgjGbXmW8i11TMGDan48V8At7d+wO+px5CcnY84xLMg75GZ?=
 =?us-ascii?Q?BFVbVnYTdZJ9AwJbUoN/H/xr/d3VBSCi/F/6jJ/21tw6llT8tQcnYTQ1z8ct?=
 =?us-ascii?Q?B37ezWJyzTRgzUDwH/RCjRV1YLuv+FwDWZgNVd+o3q9FUo4bRHX0Jp3EdVg6?=
 =?us-ascii?Q?IanrvnUD9DFPcIEn3Zmk9L+G4HWixZ5dqNXCikxdIRAFn5PjSWcERMDMV34l?=
 =?us-ascii?Q?JJ9bDYkNBxZsq8SSq5i1DKdcLfHfwQu1pZ3f2qDGWSTOlOXmjgCzcsevKiej?=
 =?us-ascii?Q?93aitWlik3jH0yC3d1YP3bTR1QlMCZFtSa5BRVT85tHv/braN/cSIWqTJTY4?=
 =?us-ascii?Q?XvMsAN7h1wnB42zo58IpNz1x4w5nHy2FzNY4c6zpEFbxxIWloab+ccK/JEfG?=
 =?us-ascii?Q?Hz09yvmevgVbTM7cMDpd2GvqDpP1S2NnpxfOqx1kkjFXKdcNjWLNSsW7McJH?=
 =?us-ascii?Q?cD0nzo6yFpiQvnPE8VhPlEvJboZUZSy9p9Fq/8jRhzcIz57rrWfSaHqUfRn5?=
 =?us-ascii?Q?pXa+clpIdVzNDNxnw1kNUUJjT4xvg5uXBs2jtH29oXmwCcDk54nWvfL0Kj7S?=
 =?us-ascii?Q?Y5HTzmLrN4y62vo2oKoRL0CXiBIt1+vl14qdo6Z8mcX+NwbCl7rc/hNnSy/e?=
 =?us-ascii?Q?AdVVajwYqfZeXVyVVhUL7Jm3xEK4dU8dky8kZu5l/ih13tX3jHb+aGKmxn4X?=
 =?us-ascii?Q?xUzfyt+TPXhF+M1k0PHM1+tJk45JVDRPJ0K6kuXVu80KlWQxFTZZTuLXhnfg?=
 =?us-ascii?Q?DXBf7c3tWFSXJ/lyOJxHMT4Wk3/ECK8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6be9279-c3cb-478b-73b3-08da27422f00
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2022 05:04:03.6073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0zIoZd/EzEwPDOXz25etFdH5gcnbRvfwONBoOy28T1K8O8UfdXCT8+VaTHTodSxRMKCMXQrTO5NZTAuaiXUdPzh3W5262Ed6wlyelqKV2FI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3245
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net PATCH] ice: fix use-after-free when
 deinitializing mailbox snapshot
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Tuesday, April 12, 2022 7:34 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>
> Subject: [Intel-wired-lan] [net PATCH] ice: fix use-after-free when
> deinitializing mailbox snapshot
> 
> During ice_sriov_configure, if num_vfs is 0, we are being asked by the kernel
> to remove all VFs.
> 
> The driver first de-initializes the snapshot before freeing all the VFs.
> This results in a use-after-free BUG detected by KASAN. The bug occurs
> because the snapshot can still be accessed until all VFs are removed.
> 
> Fix this by freeing all the VFs first before calling ice_mbx_deinit_snapshot.
> 
> [  +0.032591]
> ==============================================================
> ====
> [  +0.000021] BUG: KASAN: use-after-free in
> ice_mbx_vf_state_handler+0x1c3/0x410 [ice] [  +0.000315] Write of size 28
> at addr ffff889908eb6f28 by task kworker/55:2/1530996
> 
> [  +0.000029] CPU: 55 PID: 1530996 Comm: kworker/55:2 Kdump: loaded
> Tainted: G S        I       5.17.0-dirty #1
> [  +0.000022] Hardware name: Dell Inc. PowerEdge R740/0923K0, BIOS
> 1.6.13 12/17/2018 [  +0.000013] Workqueue: ice ice_service_task [ice] [
> +0.000279] Call Trace:
> [  +0.000012]  <TASK>
> [  +0.000011]  dump_stack_lvl+0x33/0x42
> [  +0.000030]  print_report.cold.13+0xb2/0x6b3 [  +0.000028]  ?
> ice_mbx_vf_state_handler+0x1c3/0x410 [ice] [  +0.000295]
> kasan_report+0xa5/0x120 [  +0.000026]  ? __switch_to_asm+0x21/0x70 [
> +0.000024]  ? ice_mbx_vf_state_handler+0x1c3/0x410 [ice] [  +0.000298]
> kasan_check_range+0x183/0x1e0 [  +0.000019]  memset+0x1f/0x40 [
> +0.000018]  ice_mbx_vf_state_handler+0x1c3/0x410 [ice] [  +0.000304]  ?
> ice_conv_link_speed_to_virtchnl+0x160/0x160 [ice] [  +0.000297]  ?
> ice_vsi_dis_spoofchk+0x40/0x40 [ice] [  +0.000305]
> ice_is_malicious_vf+0x1aa/0x250 [ice] [  +0.000303]  ?
> ice_restore_all_vfs_msi_state+0x160/0x160 [ice] [  +0.000297]  ?
> __mutex_unlock_slowpath.isra.15+0x410/0x410
> [  +0.000022]  ? ice_debug_cq+0xb7/0x230 [ice] [  +0.000273]  ?
> __kasan_slab_alloc+0x2f/0x90 [  +0.000022]  ? memset+0x1f/0x40 [
> +0.000017]  ? do_raw_spin_lock+0x119/0x1d0 [  +0.000022]  ?
> rwlock_bug.part.2+0x60/0x60 [  +0.000024]  __ice_clean_ctrlq+0x3a6/0xd60
> [ice] [  +0.000273]  ? newidle_balance+0x5b1/0x700 [  +0.000026]  ?
> ice_print_link_msg+0x2f0/0x2f0 [ice] [  +0.000271]  ?
> update_cfs_group+0x1b/0x140 [  +0.000018]  ?
> load_balance+0x1260/0x1260 [  +0.000022]  ?
> ice_process_vflr_event+0x27/0x130 [ice] [  +0.000301]
> ice_service_task+0x136e/0x1470 [ice] [  +0.000281]
> process_one_work+0x3b4/0x6c0 [  +0.000030]  worker_thread+0x65/0x660 [
> +0.000023]  ? __kthread_parkme+0xe4/0x100 [  +0.000021]  ?
> process_one_work+0x6c0/0x6c0 [  +0.000020]  kthread+0x179/0x1b0 [
> +0.000018]  ? kthread_complete_and_exit+0x20/0x20
> [  +0.000022]  ret_from_fork+0x22/0x30
> [  +0.000026]  </TASK>
> 
> [  +0.000018] Allocated by task 10742:
> [  +0.000013]  kasan_save_stack+0x1c/0x40 [  +0.000018]
> __kasan_kmalloc+0x84/0xa0 [  +0.000016]
> kmem_cache_alloc_trace+0x16c/0x2e0
> [  +0.000015]  intel_iommu_probe_device+0xeb/0x860
> [  +0.000015]  __iommu_probe_device+0x9a/0x2f0 [  +0.000016]
> iommu_probe_device+0x43/0x270 [  +0.000015]
> iommu_bus_notifier+0xa7/0xd0 [  +0.000015]
> blocking_notifier_call_chain+0x90/0xc0
> [  +0.000017]  device_add+0x5f3/0xd70
> [  +0.000014]  pci_device_add+0x404/0xa40 [  +0.000015]
> pci_iov_add_virtfn+0x3b0/0x550 [  +0.000016]  sriov_enable+0x3bb/0x600 [
> +0.000013]  ice_ena_vfs+0x113/0xa79 [ice] [  +0.000293]
> ice_sriov_configure.cold.17+0x21/0xe0 [ice] [  +0.000291]
> sriov_numvfs_store+0x160/0x200 [  +0.000015]
> kernfs_fop_write_iter+0x1db/0x270 [  +0.000018]
> new_sync_write+0x21d/0x330 [  +0.000013]  vfs_write+0x376/0x410 [
> +0.000013]  ksys_write+0xba/0x150 [  +0.000012]  do_syscall_64+0x3a/0x80
> [  +0.000012]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> [  +0.000028] Freed by task 10742:
> [  +0.000011]  kasan_save_stack+0x1c/0x40 [  +0.000015]
> kasan_set_track+0x21/0x30 [  +0.000016]  kasan_set_free_info+0x20/0x30 [
> +0.000012]  __kasan_slab_free+0x104/0x170 [  +0.000016]
> kfree+0x9b/0x470 [  +0.000013]  devres_destroy+0x1c/0x20 [  +0.000015]
> devm_kfree+0x33/0x40 [  +0.000012]  ice_mbx_deinit_snapshot+0x39/0x70
> [ice] [  +0.000295]  ice_sriov_configure+0xb0/0x260 [ice] [  +0.000295]
> sriov_numvfs_store+0x1bc/0x200 [  +0.000015]
> kernfs_fop_write_iter+0x1db/0x270 [  +0.000016]
> new_sync_write+0x21d/0x330 [  +0.000012]  vfs_write+0x376/0x410 [
> +0.000012]  ksys_write+0xba/0x150 [  +0.000012]  do_syscall_64+0x3a/0x80
> [  +0.000012]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> [  +0.000024] Last potentially related work creation:
> [  +0.000010]  kasan_save_stack+0x1c/0x40 [  +0.000016]
> __kasan_record_aux_stack+0x98/0xa0
> [  +0.000013]  insert_work+0x34/0x160
> [  +0.000015]  __queue_work+0x20e/0x650
> [  +0.000016]  queue_work_on+0x4c/0x60
> [  +0.000015]  nf_nat_masq_schedule+0x297/0x2e0 [nf_nat] [  +0.000034]
> masq_device_event+0x5a/0x60 [nf_nat] [  +0.000031]
> raw_notifier_call_chain+0x5f/0x80 [  +0.000017]
> dev_close_many+0x1d6/0x2c0 [  +0.000015]
> unregister_netdevice_many+0x4e3/0xa30
> [  +0.000015]  unregister_netdevice_queue+0x192/0x1d0
> [  +0.000014]  iavf_remove+0x8f9/0x930 [iavf] [  +0.000058]
> pci_device_remove+0x65/0x110 [  +0.000015]
> device_release_driver_internal+0xf8/0x190
> [  +0.000017]  pci_stop_bus_device+0xb5/0xf0 [  +0.000014]
> pci_stop_and_remove_bus_device+0xe/0x20
> [  +0.000016]  pci_iov_remove_virtfn+0x19c/0x230 [  +0.000015]
> sriov_disable+0x4f/0x170 [  +0.000014]  ice_free_vfs+0x9a/0x490 [ice] [
> +0.000306]  ice_sriov_configure+0xb8/0x260 [ice] [  +0.000294]
> sriov_numvfs_store+0x1bc/0x200 [  +0.000015]
> kernfs_fop_write_iter+0x1db/0x270 [  +0.000016]
> new_sync_write+0x21d/0x330 [  +0.000012]  vfs_write+0x376/0x410 [
> +0.000012]  ksys_write+0xba/0x150 [  +0.000012]  do_syscall_64+0x3a/0x80
> [  +0.000012]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> [  +0.000025] The buggy address belongs to the object at ffff889908eb6f00
>                which belongs to the cache kmalloc-96 of size 96 [  +0.000016] The
> buggy address is located 40 bytes inside of
>                96-byte region [ffff889908eb6f00, ffff889908eb6f60)
> 
> [  +0.000026] The buggy address belongs to the physical page:
> [  +0.000010] page:00000000b7e99a2e refcount:1 mapcount:0
> mapping:0000000000000000 index:0x0 pfn:0x1908eb6 [  +0.000016] flags:
> 0x57ffffc0000200(slab|node=1|zone=2|lastcpupid=0x1fffff)
> [  +0.000024] raw: 0057ffffc0000200 ffffea0069d9fd80 dead000000000002
> ffff88810004c780 [  +0.000015] raw: 0000000000000000 0000000000200020
> 00000001ffffffff 0000000000000000 [  +0.000009] page dumped because:
> kasan: bad access detected
> 
> [  +0.000016] Memory state around the buggy address:
> [  +0.000012]  ffff889908eb6e00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc [
> +0.000014]  ffff889908eb6e80: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc [
> +0.000014] >ffff889908eb6f00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> [  +0.000011]                                   ^
> [  +0.000013]  ffff889908eb6f80: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc [
> +0.000013]  ffff889908eb7000: fa fb fb fb fb fb fb fb fc fc fc fc fa fb fb fb [
> +0.000012]
> ==============================================================
> ====
> 
> Fixes: 0891c89674e8 ("ice: warn about potentially malicious VFs")
> Reported-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 8915a9d39e36..0c438219f7a3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1046,8 +1046,8 @@ int ice_sriov_configure(struct pci_dev *pdev, int

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
