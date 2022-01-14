Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E166848E322
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 05:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BECE4165B;
	Fri, 14 Jan 2022 04:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9ZOjVutzba8; Fri, 14 Jan 2022 04:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31716415D3;
	Fri, 14 Jan 2022 04:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55BD51BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 04:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D53D415D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 04:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BKzPgT4mIWWd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 04:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E1935415C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 04:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642133234; x=1673669234;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yd0ohtq8kH8dVtVT6NCuBvmGRyUcDC6tM8safHpom4g=;
 b=HJ5N276UpgX7myi02YBpB4Nt949EougIAWZaUXiwQfOjAVm+wnnVx7eT
 QWaWqJuc8m4I86ulB9REyns4xglZcMPsscoadHgTHohAFXUktGkT7uBKE
 cQRLHQv48jL49/AvWXTao/s3U8hkJ6MZ5LEQayJxWRsxVpTQ6IbRrFJqn
 5jIhlMEWazSQ9Kp/jlDc3aGI6i9cNn9JYa29O0XjgACxQmKci79exss6j
 tw0I6rHECBgqIaGE30qJyj+s/ggmowlBm8IfijbnR2S6Ue5kY/nkNEMBJ
 hS7uo5Loglguj2kHw4LDv4SG+j50grXpbSj0s39B60CYUTnBKHujFY27T A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="243976146"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="243976146"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 20:07:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491366451"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 13 Jan 2022 20:07:13 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 20:07:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 20:07:13 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 20:07:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHP0UsX0OZM10pXkZODVfDuv8ncg7bjc2GX+/2kQZWyuzpzAL5oia6YyMQBJCz1aEpzFfUa9eBYPpTSvf1jjHMJsfuTfkG+Ci24/dsPVfyv+ycKnsW9Owd8I9yLrCtWqtZ8GZVVtqjUoEPoPCfhdstxxIc6BReSvoAe8skNfk1UN5+A/yuZckPlfBj0Etj4U6T6blOCgELbiP8Y9n15yQzFhhsux8pSn/09/z1teD3OqeQYHpME+Vvatt5Us1n3AykzJhOjTYXPodW8QxDLFfUHBl6pI3pGaAD8Y8tSwK2dYSIeWh/joE8UsCW+ojIdrv01ZO6MJ2DV6XD496fAggA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z/INTFLCi0IQuZgJ/OtEwddr5XHRz4NfzKP0/jQ9iXM=;
 b=T+1rj8GJk5P+nfxRQiasbg2DWr7BN7pY+Q8SlACKJeBuadOWNL0Pyx7sgjab5LkBjleJTzuE4xG1Ik15CPX2y7DLKSI8YMKXjVeO1E086ggZnd+gPsWBL/ktu2o8BLrSTBVb8CMK6h4XUuwRcHSLEs4Dhgp11pvbp7CNLGhKtdcS0zJvkR0nH1BtFKzeBuuIGrk0gL7PYlzrkGByAutx89ulDCaqvJoLL+jSuyarozy7aFrJqAXzSg0Y5VyGguJWuB8dqDRLPxeD5SQRsTHMM39245q83cWGuUfpZTlP26MkPBWYof6qjXNRRAR2ubqRbs+vM0U5NpZd0VMEy9avEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN7PR11MB2722.namprd11.prod.outlook.com (2603:10b6:406:b8::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Fri, 14 Jan
 2022 04:07:11 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4888.011; Fri, 14 Jan 2022
 04:07:11 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next-queue,v2] i40e: Remove unused RX realloc stat
Thread-Index: AQHYAkvyMFUdfdTlmki1vteAiWQdF6xh86hg
Date: Fri, 14 Jan 2022 04:07:11 +0000
Message-ID: <BYAPR11MB3367C4AD131796BE21D1FF2EFC549@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1641397753-121138-1-git-send-email-jdamato@fastly.com>
In-Reply-To: <1641397753-121138-1-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a03cf9d2-15fd-4fd5-86c5-08d9d71356e9
x-ms-traffictypediagnostic: BN7PR11MB2722:EE_
x-microsoft-antispam-prvs: <BN7PR11MB27224051A0DEF64941132BA2FC549@BN7PR11MB2722.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:302;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QYdCM6xpEocbPvyfh1LlGwEfs0VY6p7RWME1TimhXcDFBuD3B48Je4XVXHHXOPdHL/frn0mr0wes9OavaSBxRz2+0rIJBJkIHoBajqoeJ+gbh1ZFgxit48cfLXcY5GbiW2j7mPPhiV0xCzeA8XIjKzMivFSv94IaYZ3pBAKqrHkgQa6xswKunFj+Dui4XHBKlfekbrjTj3WNKs5ToIwNWhwctSkIpSK+dDQGd6AcWEFcpvtbb6U75TORXQcciYlQfTxdQU79cYWOEHNNBu+pD93IVNjJbzWsZSVQIQiKUl2fNJExfe5G6IBpYIcMNfp2lQrbtPyevXmwq2XK2NkTX8jPAwclJG0PBwx52JsujMSYvmPuYKqPMEu4OORwVonJ448qjbsfMju2uBJ3YB2Ia8INue1T9VfVyRiqPCwGr778v+ZlHUm5u4/OJs7/DHiwmRRmE+orp2vNziWgoIvmzgItH4uMYJU1tBh9X8v8nOWCjqJwLUwCpPg96I6QSDwzywrOtcy1UQ2boe45qUbRA6TcNpVEB0nP1xE1TQXcVWSLuJu9qevQtRw5ICv0ygU+obOLT3BWNL9t61yDubNck6zspE6+woe6IaC4PZPTXh+laA7ahqJjUR1+uJJzHJhchmkwkSPBtc0qnS855yEkeVC85rJFfwGDxGG0CdGRLJtxBAzVXyE8GBVOO4B+aUfAuJzYcwcI+y00E773HUKTdQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(38100700002)(316002)(9686003)(71200400001)(107886003)(26005)(38070700005)(186003)(122000001)(54906003)(33656002)(52536014)(110136005)(66946007)(82960400001)(6506007)(76116006)(7696005)(5660300002)(83380400001)(508600001)(86362001)(66556008)(4326008)(4744005)(8936002)(53546011)(55236004)(64756008)(55016003)(66446008)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vavGsHimcl1J3JGZnjD37s0wF64yncVGA0LMBKwhfYvxAFE/Z/pr5biOu2jd?=
 =?us-ascii?Q?SXGY+CrgO43ps+/y5OMMVBlGjIc9MALwBG7sBnELwoGgXrl9EmYfHlg/Li0Y?=
 =?us-ascii?Q?E5hFtls1SAf0npG9vXjlv8lIgqcyu2f68XfmMNRIEt9WPOlQ5J9vVGB9npHQ?=
 =?us-ascii?Q?SXTJh5KmNh6Xx+R9gxiYtmD6LYgPyPplUho1A1rqLtlVkkNnrnup7RUiM+t7?=
 =?us-ascii?Q?VktRNE/oQnbGHbUJqC1/LQHx9bcSoo6kxSYxPa0cQ078+/8ZvoEFuAANbAL8?=
 =?us-ascii?Q?DNDsy0/RTeKMb2Jpa9+BVYdMWRMvh9wsd/8nOlM1Yi9R29r+byNHym1a4NFk?=
 =?us-ascii?Q?kJXdQuQkrHh837ERaqbBI6D0A0mYcerhyGvb4mSrD+lFyh8Q0yMk2lYK+goo?=
 =?us-ascii?Q?CC6t1+Kg1vTgH9y7oKF6w+iftJ9txHCQmysIPYLzl8kB031TVEeSiosKaWO+?=
 =?us-ascii?Q?eKWABzRvnE/IjvDUDTMtqABumtRSwO3Oz6KnhF0xhjwXkdych5YHkhOBAhiA?=
 =?us-ascii?Q?c30uvU9Qxr6Ljqg+nJlUVwK18VCnk30shuYZo9/s7o/2ZxhYgPVdYj9bdTWe?=
 =?us-ascii?Q?cN3NoYHjp1JSLP1UkPOg/0atYME9zlLHen7BKR89P1b2CS5c7ovNc5L+7Qaj?=
 =?us-ascii?Q?RG8OdOyfwGDHEW4Hc0gdxlp9F4rGT5fYkVaO0wUTbR/JcwohFW9adnsotFXg?=
 =?us-ascii?Q?RkEjtxEs3c1yFMvxPKUf9F6tkR93/R7G9A1de6F0OBqNJW7mVURDsWmVV3Gs?=
 =?us-ascii?Q?Bgvu8XRqr8An/iVpvgijdMVatR/CtV5DcPSY0oXNEl/JMgDPElRkCh9grtoG?=
 =?us-ascii?Q?Po9ee6REIj3SZ7VnEHzlV3fXt0MeSRbAJTX+/j2bj2R3c+++TEjaMoIalCYp?=
 =?us-ascii?Q?UJ5JQ8Ul0vuevop1Ign1ytWbYjYPu9JnA8MZ3Jr2d+WE/jPzb5OAE2qhkc0T?=
 =?us-ascii?Q?DT/iMZj/Kf09qxO/ko3f9HVmJbY1dz7l2XOgZmqa+JaIl6PWSDV746Az2MNu?=
 =?us-ascii?Q?FAg/+1W2LmZstl1bgdKw/aUKXQwVuG//N0Yn6YKWrlOe/SM0uxHaVPG1hfqL?=
 =?us-ascii?Q?qmCe1JAupPFTOwmM52F0J/q6U2n0iTOyfi0Z0zSMzsANLLTXgomrqVi9rGUD?=
 =?us-ascii?Q?r1G6EbKrbgHGTJv8tq5igvlT4hCElpv2pZYam0nK2xtHObw2FCVckPMIv+rc?=
 =?us-ascii?Q?dvZkwb9dOLjThW7+mG0bWeaNjFnkS+TKU+mImbbUb35JmrLKxemLpuofd0jh?=
 =?us-ascii?Q?StINdxdAUrQNlEbGeKIh37qZ7lvaScAb6gvl5xeBT5w03LN2GYV9lW1ycvQS?=
 =?us-ascii?Q?bxcix2bfX+Ql6RqhFM2pD8fdypKLhrZj0dDThjBJV6epMHpuwblT0BCP/pqr?=
 =?us-ascii?Q?GLZsp4/zz1fo4gay57svfpvp6gqbI8UsUsH7g8fMbqbXa0zWg4IphZ7jX8km?=
 =?us-ascii?Q?Jrswn2or2FYLb99dg2FnVaG9ZkMcSW6SF5pKDJdjImSCUe4JOgSZVqPQOwDo?=
 =?us-ascii?Q?i/kSjDCTaYebm/24yORv2fEnFXVV+hr8EJ2xCVock1bQHwSyHp7Ys8E33v1O?=
 =?us-ascii?Q?tK1jy1lv0peLIyZmnCkkX+Lo+rp9qm9/wq8VC0mThiodXRfiWQqU/tXnJc8c?=
 =?us-ascii?Q?Zg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a03cf9d2-15fd-4fd5-86c5-08d9d71356e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2022 04:07:11.0881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1bmBqlvON/o+rDmtMdbsfwtrCEVFwIPdOctu3THbbRhi32yCzgAWhP2vjVISIRYee8QliDBmaEJ6DvRDzol6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2722
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue,
 v2] i40e: Remove unused RX realloc stat
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
> From: Joe Damato <jdamato@fastly.com>
> Sent: Wednesday, January 5, 2022 9:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Joe Damato <jdamato@fastly.com>
> Subject: [next-queue,v2] i40e: Remove unused RX realloc stat
> 
> After commit 1a557afc4dd5 ("i40e: Refactor receive routine"),
> rx_stats.realloc_count is no longer being incremented, so remove it.
> 
> The debugfs string was left, but hardcoded to 0. This is intended to prevent
> breaking any existing code / scripts that are parsing debugfs for i40e.
> 
> Fixes: 1a557afc4dd5 ("i40e: Refactor receive routine")
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> ---
> v1 -> v2: Fix commit message to include one-line SHA summary. Patch is now
>           based on next-queue.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 3 +--
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 -
>  2 files changed, 1 insertion(+), 3 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
