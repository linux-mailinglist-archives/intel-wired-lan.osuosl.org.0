Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEB041D28E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 06:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8491C607A9;
	Thu, 30 Sep 2021 04:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eDSjuKI7on1Y; Thu, 30 Sep 2021 04:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EEA46076A;
	Thu, 30 Sep 2021 04:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5A91BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77F9340215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKRS042akRSB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 04:57:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EE414020D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:57:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212180751"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="212180751"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 21:57:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="539280016"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 29 Sep 2021 21:57:19 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:57:19 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:57:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 21:57:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 21:57:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqaqMZCb0rgagqNt/kFfKkVycMg5R7nfxeqOWqKHPyKC6HZFkN31z+Hh1YxaD9bPpQyev4nQWlUE6QdTD+jSdElvCcsO5vSkeWFP+ysup5Z8FQzN79PLzBbTgWUCNc3pmiJaPvaI1BZn4lRo3CGh5nRIM+C2IHjFoKln0K7oT8StK7Dexm4ULi/MYZ7XcQpWGXjt87Fl3q4XE4zXrB4egpONEgHJUpNG15y13Diq4NYATdfCnxGDzR+ChfuFJRauNnw7YKDrqx2d+BnNPA/841Ei2/PpT0qPrhHWE6q0acFTAcrNrvCAYKiW7jbE5BM8GWtqFEBRqbDC3QqV3tqxFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=iCLVRJZsslkyOwu9mFoWqn4L+MyiJhoG5fM4Xl4Qkmw=;
 b=Z5Jx4T7cTRMu5fGQ8LhPmPtaKZThz+OxD5rWWD8cGw5dPtebBswe5HkxhCI4wp0JN+8jBq0SJxwX5IhEx0j3yL6pbSeMe7Y98wgYy12bT2c0ZiEZVWLgmTFPUZrwEjatnfKjHqSs71HPr8QVMMiBLyzULKt5Say5tX+6T2ykN1SNSyaw5TtpoLVGhXcobZqmu3ZHtHmgCOzlAqCcvQ2Fp3n2XSxoLBd/ayAhNMG7hVWTGBO86jXCUhdpsKdAJ0pLu/hZQT8nvk9lx1fphteZiYzS22mGY6ZXDoCqNWFrMaiBMEGcs6ZLjyYMdgV+0FzPEzTr7TyAd7Sd/6fPEitR9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iCLVRJZsslkyOwu9mFoWqn4L+MyiJhoG5fM4Xl4Qkmw=;
 b=WXza9NKmXrNrcHJwuadzw5cv7UBr7kO5gN2q/yB+rve3CY4k1sUX8wvysWC/Pm6N4ZDfP4v4qOSjVyucvTVAJCjnlpENa/xHyintzJagKaBQ5m8sXRky7DxLAiPqTTnqhAGEt5LhBnYaCxKczC1qzU9MawIsKHzYQpEC/lncg3Q=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 30 Sep
 2021 04:57:17 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 04:57:17 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 5/9] ice: allow deleting
 advanced rules
Thread-Index: AQHXiqACqdADQguEKU+8yvT+C/lpSau8WevA
Date: Thu, 30 Sep 2021 04:57:17 +0000
Message-ID: <MW3PR11MB4554E9F386622F55006AB69C9CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-6-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-6-git-send-email-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b21105f-633a-4c83-cfa2-08d983cec73f
x-ms-traffictypediagnostic: MW3PR11MB4539:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4539D26C0863F5280C68D5119CAA9@MW3PR11MB4539.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UVEao3S/NiCOkAmrhNPuR/tcnB4k05ts/vmBqvGPlDA0cBih3Vb1gNyu6BhoctxWIFgS7I+U1bYHwth5NIFvn4BazrSK21cGef3ZR2aJKd8P/qWxxBFQGgtZ5eEUW3oiwOZmz5tmtjl8Ipv7Vfx6nl4m8l7ItkXRfRZ/j7LA3pzzKUuc2pIlnTHYXtTA9ovaFTklkJ3AIi0mwvQG4uGVk03FhgB9DNvYhY60zPCb8zAIN2ti72F+C55cwt7doKbIt81GwD58K2cvNmjlgz1FcyI/Rwbn9cjUIiD4l/RxLrP3Pdd0LHgX7OzSoJdGJHpoOPlmuH2lguMJacXwxLHe1m4kYz/2L9k8K8VTWTbDBzZpr+r9SUcFyIojZyUeOCWMdcwchY/wIQg/LLhoGfydRaF4ChkRrlaWr75oKsYf9dfEvpugX35tf8i/FtnRTbBwUiOBxc/2VimvcdAR6EQ8QdMln1ddC33IsZJTgRqAGFQpA9eOt/pan5aQ9Mwbjt9icvTC4iBy/vNo09T2o6QlYOiXKkfthIY1hnBNzAKJgo5Ia4p56T3qoSlLRaFmYf47Tcraa43SrPYkq1pclTWyFJ7l1fs2jHIl6LJs26cuQT31U5h+28aOK0M0o0faAfdZDy59TXWTcIDoqw7+f53Vnp4gGepoEHzqjw1RkbzcFwos5jmGGrRD29MtRPul/r2uGeWNxhkwznBzbFSSuEocxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(66946007)(66446008)(66476007)(66556008)(52536014)(122000001)(76116006)(38100700002)(316002)(110136005)(86362001)(38070700005)(33656002)(2906002)(8676002)(8936002)(508600001)(26005)(71200400001)(186003)(5660300002)(7696005)(6506007)(55016002)(9686003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8RVwcxyth5iyGLbI+/opuwaZlvlr6/Uobrni6MfKpy5870mdBvvjoUmN283v?=
 =?us-ascii?Q?pO6vsXxnkDb5+KIg9MY68t8Nv6X25fpT7PgwLtiWBv4FIVY/fOxoi9eqa/iM?=
 =?us-ascii?Q?P1B9io3OVgtEKzePc7yE0a1Ch9qQRmG+I9WEeLWCsxbp2TenQmglGUKv3eOm?=
 =?us-ascii?Q?b22MsA3DrsdLPkYx1z1xFFmCfBtHVFFnO24Bl8nAPsaYh3heWZmbDQrM7a8O?=
 =?us-ascii?Q?tJRgulXxwZCc4Xjn4TbpqDkRccSXKqEXv+vidHvIX4NvPvhNhKaA+vS3+Lxn?=
 =?us-ascii?Q?5y5koIsZ4+2NjZWGESi24Cg2Py1g9FCxehA0EH3ZfE66R70aF/PvFdNg3USo?=
 =?us-ascii?Q?xLq4dKcMKUqogB1AuA1r+V43VxgGR7b3j+cCbbCkLCDvLX9httst+7MN+nqH?=
 =?us-ascii?Q?dkYUiirNDeWtibH6LgejbrUWuK/i0JHzRW75B+2DPoDgpjUFyCRA5/c3HJj3?=
 =?us-ascii?Q?pQwMSvnm3nx5g6SZLSZVQQ7ndRKGNkub+RbHjchJDV2Pz5ujOBE667l2UCzM?=
 =?us-ascii?Q?tFBS/cj6sqYlzFY2hWTnUkxsjzflcwQmvOJ+WEW4w2cBzTIGxoKKFtZM61B2?=
 =?us-ascii?Q?uJO4SLOcyHhmtu/pQB118rfCS+g9O6da810n+Egc3YFzWNtdpStRZCjZzAyW?=
 =?us-ascii?Q?SMPb85VFar6k7LVKtEFk4j3HsSmp6qTDLL5cFMN2VcMs+eN/hmWwgJRPmGTq?=
 =?us-ascii?Q?peNJ/7GhhIbXfCc0ZJy+jqqVNg1bOdpYhDderDO3WDj/iuJ+iqUA+RkmNOjr?=
 =?us-ascii?Q?1owjOAfsnpdBCeQik/ySbSVPDlMjdRjEtXgERDlqFaToMkaREyp8mbtIXUL4?=
 =?us-ascii?Q?PIhzl0gK+wPCYESWdqNm+B7+vXGoNCPRwm+G7VKbf98ApRJIQMqC1RmNFZuP?=
 =?us-ascii?Q?FuCdnG3MoLsXWuEnsM/eeusbLQxkRYlh8Lr5PG1QQGR/YSAqvtVSzrKFj/hy?=
 =?us-ascii?Q?4TBdO6STOb6TMopzep2/9fOnpLYUZrlO6n6UeqUMuc2QzxS400mfEBPwzDiG?=
 =?us-ascii?Q?cVHJvA89+3Z1Nl7cZ0fm4w2KUnL3k0uMQP56V4p9QIzfOXagHloe7VDlcwth?=
 =?us-ascii?Q?iiTq/fTbt1hyIF7oDSgpYGw5qQ0F+X5l5+NxIl8ggxEsH1D3f3qikhjJB3Dq?=
 =?us-ascii?Q?bjSg51Vah2z/Lj8Yipz4lMHdb+yDQs31JizKnBqPz3b77Pwkn2Cd7EneVNbq?=
 =?us-ascii?Q?i5S+pozTEApfEq5Q/U6ZDCVyrk9JL87gLiXMoVUg9gr2AMj/5Rixb+DySKHq?=
 =?us-ascii?Q?7rKZFW01XL4KjWGB2QT5ULXhPexTtHW/WUaFoVr69rIMKS77B2OOlAUk3whx?=
 =?us-ascii?Q?1j49FO3V7DbBHIWDS2DN2M7x?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b21105f-633a-4c83-cfa2-08d983cec73f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 04:57:17.7322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NyYwRm5uzImrH2N3OsX7zcomZh9YOY8HJi0yQc7RPVkietAWw1duXLYB3OfptgLz7ib18UOTtb0vY+rIHDfVzFqF55jlOYcrH93oQO34lXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 5/9] ice: allow deleting
 advanced rules
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, August 6, 2021 2:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v6 5/9] ice: allow deleting advanced
>rules
>
>From: Shivanshu Shukla <shivanshu.shukla@intel.com>
>
>To remove advanced rule the same protocols list like in adding should be send
>to function. Based on this information list of advanced rules is searched to
>find the correct rule id.
>
>Remove advanced rule if it forwards to only one VSI. If it forwards to list of VSI
>remove only input VSI from this list.
>
>Introduce function to remove rule by id. It is used in case rule needs to be
>removed even if it forwards to the list of VSI.
>
>Allow removing all advanced rules from a particular VSI. It is useful in
>rebuilding VSI path.
>
>Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Shivanshu Shukla <shivanshu.shukla@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_switch.c | 223
>++++++++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_switch.h |   6 +
> 2 files changed, 229 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
