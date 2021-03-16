Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AE033D97C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:32:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2D5783D32;
	Tue, 16 Mar 2021 16:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5UHkoYtX3R35; Tue, 16 Mar 2021 16:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4F4783852;
	Tue, 16 Mar 2021 16:32:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 295931BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2314383852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z4Tc8HxemlZU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:32:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EF28833A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:32:43 +0000 (UTC)
IronPort-SDR: inOiIujo1Ayfm6hBddtVWy2ClrqjiX1my3ck4XjhyVaUpQAHpHEKxhxvYQHqox6PITy0ka/TUv
 TQC4yg7QHKHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="188650200"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="188650200"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:32:25 -0700
IronPort-SDR: Ro5jKN7EQw63bddgwjiysGCK49B8jhz0yHD5oVH8FhZKazgFi8xegROPyKuzZPJ61m3nx8Qj9F
 IrH+fbgn2ptw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="601887819"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2021 09:32:25 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:32:24 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:32:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 09:32:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 09:32:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4oAnJo/CzlYvaNNqs7RVlotS0Q8mKDajb/IKTlYovd0No0jSUZ+I3KFC6wiesfCudoe51Gu7L7UC4ylHvwZU9dhEhBXFCt9b9N2jhgBpRffdNs76BmDyEtGwQV9HaFN6x56rJUXP3kLGs8Qauj9TQ3FqIwJGcommZxsmwaGPRz5020KG8m45zk2OD5tzCXGtJJh5tA0biOo8aVDvYvixO/JT7BMbBueA5jpCOLxG6B2TxFf50T8igIjLOf3EnWJxVlMSQOJ15EBqu3fq0uzzEn441Z01FK0n62J1QCtFvUaujQBpTtpeqh/9NcouQhyzwDiOeAXHBfOJneIpyVOnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzyLYjThjeqGEFQpx0jBZmA3zv4LxEMkWTlOXfZGFpg=;
 b=fPaRYhZ2/A8yxY2ahHyo9E50BiwO5vLGgfPCmWvpGbkO7sYiqGlu0vJOrxMP2/mqG7lkewP8D5cHPvrVlxl2a4bW37uvrTg+14fuBjD3TE8S8iAFRSmmxU7LQMOXLYdX3eZ0Jsx1wtg3ZwTii5i4tjzQFWD7FJXy8Y+QZl44MhYWoxrfdDauL7LUw/WlxdM9KHAZeedRCX6SjS2mQNLl2Pdp0UP4U66vueYEljTZYSZe36AQzBWPrX0wpHP9XtKK80FTo+FUAKrV9EfWcDSMo92YiY/WHT/wLZkEgiYK+KbUYR5koTjalj/AqlKd5qDfPgbw6cvmtBrUThek4otPcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzyLYjThjeqGEFQpx0jBZmA3zv4LxEMkWTlOXfZGFpg=;
 b=W1V8Iqwq8e4HzkLvkYre+Sjzv5zLahggqSWMG1D3gBtVcP0qN0tDHwpN8DWvyIiPQGr4gcRVMro75D1cDyWt+wxk0F0QCRMcW0wfSQJZ9/nMt7+WgBPPYTdzVHhJsEmb43Okzb27xB8/EUEBiqaE5z7pZXolIDN9/MIyl8ZN4ic=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR1101MB2258.namprd11.prod.outlook.com (2603:10b6:405:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Tue, 16 Mar
 2021 16:32:20 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 16:32:20 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 18/18] iavf: Enable flex-bytes support
Thread-Index: AQHXFJQD8FiGwqZ41kiJb7Xsv8J3KqqG2puw
Date: Tue, 16 Mar 2021 16:32:20 +0000
Message-ID: <BN8PR11MB3795A5F55D3DA1581C7D46F1F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-19-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-19-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 535202e2-3cf5-40e9-be22-08d8e899123a
x-ms-traffictypediagnostic: BN6PR1101MB2258:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB2258701DE2D338FCE2632746F76B9@BN6PR1101MB2258.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0F24KJsFO3UNq87uu6X/J5qVCEqpKcmmsNFONQR2mugIIbCr/fucmNzOCUwwprtlPYyHi2N1UGRYmzDjqB0cKMJhU2jkm286+/zTmF3cAFHTUqIWVCzf+lVYpon4Jrb28utlGirlxBVhZREo1G4nuXYb24xQr/UIa9F93iW7ItRjY+kb3cG3oNkx8KSxLElt2JcCZbvOHdPscbIuPclUo8BkydswJPZEGli8i7vfCcpFsVa+U/cbtOt59a7xXGXSW4YDJ3K9BNf49tjKQixGmKLoFUk2maQwx/A/Di+LAlurz9DWJx0oKsAxxD5mgoOkAtYBRl+LNLhrOgKxSxO2OJdYWVWmvrIaovwRG5gJxZWKt5TaGkWcK6vLXpOiMiVIdPpvdzjRyZXegxQrQyQHaga84r+C9r9tuEwaaU9ZfUXo94mZEKZT+yuMAlGaQJHZBQu7+iFGz4mQrupwvsLzEg/KcwU6D9zMNR3jqMu3EDFABoblX3UN/aC6HqAgMfPYiJTHKpo0E1OHCUbs9d7Dj+08UlEks8GWRxjqYxPPiIeuIefMaCxU5garPalke42L
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(396003)(366004)(376002)(346002)(6916009)(8676002)(66476007)(5660300002)(71200400001)(6506007)(52536014)(66556008)(4326008)(26005)(54906003)(107886003)(186003)(478600001)(76116006)(9686003)(64756008)(66446008)(8936002)(7696005)(53546011)(2906002)(83380400001)(33656002)(86362001)(316002)(66946007)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?93j7BmFMW3SvC6yWuYxG1Jb48FTb3pDmeX3WOLh2K6cJrw/F80wlZ6g7NkNF?=
 =?us-ascii?Q?W3mbHFBWAydk4jCmGIRAM92XWsRI6ZKgii5dAe39klBDwMNjkaQ3EC10fFy2?=
 =?us-ascii?Q?C9H8i8zE7FJP8tVTiVvS9FJksmxAL5grvmDE0jv83S3lMsIDBjnZk5Rk+Z+s?=
 =?us-ascii?Q?mHauPP24zWdl0yYEQ5RhMqz87oez91zzbrQmGju6FF9JDBWlRn3IzipUV6qn?=
 =?us-ascii?Q?FeEcYoxtjOS15gO7GSdNpGCr6s0VWv4c63504sx3JLthf+d4wArqry4GbQ2c?=
 =?us-ascii?Q?U1ysmWjwqMOU0D/Yl2mH0/3z0QZUUVy4rh5dBa+iPQzEp6YvFcZtcXGFVcdv?=
 =?us-ascii?Q?S4bHEaqwGqPtKSeyI/kkMV6Zw9Vyn45V/ALc+QIqjRoFKGmzSOwWf8QqMQ+o?=
 =?us-ascii?Q?8q1NQOh/x/vITCXIxtzC0saUnlxki2v4mnpEsaI8ChOWPKHZNywtQY3EdnZp?=
 =?us-ascii?Q?N153+ReHisPbS5romV7OSdLHzAstVfYz+I9VuDx7QcFb5/apLe1LjGv2jPar?=
 =?us-ascii?Q?w3T0l8ajKoy4K5KIyqg9Tt4lTjtdFb9Jt7/uYo7fNYu8bFUA8LtAAYG/rnvq?=
 =?us-ascii?Q?cM3T4FwWACmKq0/0PmlPyWYTPpdi0DQre90kOifgRfq7KLz8X9VepLjnYPtV?=
 =?us-ascii?Q?hw0lJNwba14iw3WadkDTaWdg4ysgbEziXsC9oeZoAj1D32LymjSY7DKiedzT?=
 =?us-ascii?Q?dVQSPpD9Q5lByiaB6bWN1HwI/r1/yXUBtdPI2I9W9x8sB/+MNaWWnNbscoaY?=
 =?us-ascii?Q?RF+vv/35gqab0j+3TO6r1MW2srGNdP+QoFYxOgeqwidjYZsCcoKrsXhyDoGT?=
 =?us-ascii?Q?9dCg32pWK7zyuBa/iAZHEYi0qkOTNHFSrjdTPu+hCQZOrjtBzhU6qgwqeZpG?=
 =?us-ascii?Q?mWfCz2h4UE5it4nVg4U4JCMH/7Caa0Ehc4gqWcZ5639uRz/XmmiHz2KQrw8E?=
 =?us-ascii?Q?+ZIpuxMp1cN0AU+ZdKTd7uobQc/o1R1VOqF5+v4XWzrvbmp6+nlIsuWkzsIt?=
 =?us-ascii?Q?AyKrvK3bsCUDmvFuU67G7gVxEcrQy6cwWAd04qECrepEunfToNBjhbVvSb5g?=
 =?us-ascii?Q?CCbtREUsxMQLqZahPdmQe++GNmGqPEz0ajVp5/nI1d66v+c1JLqAGb4gZYZf?=
 =?us-ascii?Q?Le+D+4/SJ0TiL2jx/GWu/4wa4AT3UePeEo2lHiKOXyPGGs4IzrXq2r0BDXRc?=
 =?us-ascii?Q?mqaE4zF0Y1NNiQ8C6TMkfXvj907gWL9buLStBAdkcbYwGqj1R2Iti9jt3Dyy?=
 =?us-ascii?Q?61hzk+qV852NRmIfWb2QizyOgCv0Mg5TU+PJyaW2Q5xowg9tcd27Pyj/vI8c?=
 =?us-ascii?Q?vERt6mjUsys+s2K015ueTyNB?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535202e2-3cf5-40e9-be22-08d8e899123a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 16:32:20.4806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1IpEZkpIi27YKCEtCme+Uix4Y0/64TEpdcJwzgaUR4Bp3lOZYdANJ+nDJyPe5LqC5XC6kDj53cDdVQLl88bO5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 18/18] iavf: Enable flex-bytes
 support
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> Subject: [Patch v5 18/18] iavf: Enable flex-bytes support
> 
> Flex-bytes allows for packet matching based on an offset and value. This
> is supported via the ethtool user-def option.
> 
> The user-def 0xAAAABBBBCCCCDDDD: BBBB is the 2 byte pattern while AAAA
> corresponds to its offset in the packet. Similarly DDDD is the 2 byte
> pattern with CCCC being the corresponding offset. The offset ranges from
> 0x0 to 0x1F7 (up to 504 bytes into the packet). The offset starts from
> the beginning of the packet.
> 
> This feature can be used to allow customers to set flow director rules
> for protocols headers that are beyond standard ones supported by ethtool
> (e.g. PFCP or GTP-U).
> 
> Like for matching GTP-U's TEID value 0x10203040:
> ethtool -N ens787f0v0 flow-type udp4 dst-port 2152 \
> user-def 0x002e102000303040 action 13
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  93 ++++++++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 217 +++++++++++++++++-
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  19 ++
>  3 files changed, 327 insertions(+), 2 deletions(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
