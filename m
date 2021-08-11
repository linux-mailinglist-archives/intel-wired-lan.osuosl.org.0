Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEADF3E89B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 07:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B46A4024B;
	Wed, 11 Aug 2021 05:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q9cqrO4E0L9X; Wed, 11 Aug 2021 05:24:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCA5F401F8;
	Wed, 11 Aug 2021 05:24:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49E4F1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3801D60814
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ebzQqwTY_wNk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Aug 2021 05:24:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECD3260799
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:24:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="202239489"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="202239489"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 22:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="439598522"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 10 Aug 2021 22:24:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 10 Aug 2021 22:24:40 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:24:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 22:24:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 22:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ng/6XHhxdKrOiGY6otK6UrbkFa99/fmz/cE7X3DLn1mSH0uWO7BpttR46kjOGI3QWfu3Lwk9OUJUrghKtN6v3eawHvGXQsMjx81gP4fb4NiZ/Bn5bXE0QO6whu62aD+r7eA0yc36PIAJ0ldjpadUSTJKg9YbFQPdvsPdxcl2YFIz9bzkBTKEFxOtgCf/vDWJqG+kF5kz34PiaUu2GYA3M2v7JcdxcPXlnd8wMkkeQH2nWjnHS82VlJ0nfXaT5bsBvqu1gAijFLdQw3FtrCAyq5VcIBXFuwYJ2KyGv4iOK7xL9hk93Aiz6otGnRt6aFwEJSpBztyWS0z30yX/gdeaNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xg0pc/b+kEIqgjLXxwtgS9UCJLJFa6WOrzvJCLeVxdg=;
 b=LvjApMf/C9iSg3UCANgOsigxsj4pQRvRp62NaLn88b+idA8ajqu8FLukEFNQpaG7vKj3Bjt1Neu7TpHN2CiOInbz7jJ5ia55ClnLs5Js20/hMK8CZ2T1lJXE1/Kwy84Qpr6t4IAql/A6LhwuuouR6nSRucEMA3dkAx3h/uv2+5ZQKETJtN6GlPCv5mhqSrUVNxqra2lCU4LmP2pWNMvZwDG26+RWKeBKIx+M1JZhvT6VJz1RnSiXVaWCcVt/KJsu/iNvPW7Wip/FAXB39PyA5qtDEktpGNbzYtG2VBIHs3y6my8qNjcPwiAO/XYa8DUS9Jrm/Kd7fTBfd+sskjdnRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xg0pc/b+kEIqgjLXxwtgS9UCJLJFa6WOrzvJCLeVxdg=;
 b=wtibQ0f7QUtDQMqSlSBUPrfJQoFpqa7nenss07osyvfDtDwnANPF0ko1g1M0EBke2WDT4DZSoEZ/x9HY56Ip0luxJdvHL0uocExWUjXAmvIMp0ZkVed3S/ygeulmCnoAf+qzPLs1lbg+wBMHQI5Fx5f0ixtZ9UM3JdjrmVAPdVM=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1486.namprd11.prod.outlook.com (2603:10b6:301:e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 11 Aug
 2021 05:24:36 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 05:24:35 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 04/12] ice: allow process
 vf opcodes in different ways
Thread-Index: AQHXaaum4EoARJ6fmUCuM4EDTOICp6tuDskQ
Date: Wed, 11 Aug 2021 05:24:35 +0000
Message-ID: <MW3PR11MB4554CD4703D59F012C57AE4D9CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39c477a3-9ada-425f-e8bc-08d95c884ef8
x-ms-traffictypediagnostic: MWHPR11MB1486:
x-microsoft-antispam-prvs: <MWHPR11MB1486F37FBF4A5E4F2A0756819CF89@MWHPR11MB1486.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2BX3Q46TW5sL/8g/p3heZAnEqSij7VBt/KHB6uCFtyR34G7Oc/ZNNM/3VDUfCgOr6wnW1AJWwjN7a28Ul4VpMN1D9/Zr4/wSx2Aofk71Mf2z4qS9a6UZEvC5KRgsKfwU10QK3K/DBQsQbUdeGhoX7npOL/qtNZ0Yjv7qEGcZ+XYY8X1JCALOGeidxjwoTn9QsX8e9BUitoI9RCpwqA41bbYV7INX4PxR2Dw9vijb7uzzFtLdFamigSQRw8t+vVeuzB699Zgn2Nqdqh+ZqgcxVafJfNXnft4F5xy6wYYGpaJa/qeJOBFC7Rt/dTfKXjRmikURBZPGLnb1rWBozelk3du4tQvPiEtBc+Tn/72kZQQYJgaSpE/2f9NCxNnm1wK9TPuxr76ObCqMCOHlOA3J3W1Gu88gHFMkQk0V/ZcUAlfc4OSlnIgaoCO/d27i1yeQKx6qBzsAH/9dY5y3IVgRRxM80WCU9BYj/1WqN4jISmZIVl29dZ6UL4+QggqsXa18rA9JJBgDTRqO9QX23zhZAWCChWkEkcPNC3oOkySiM8FORojw8+7OTpUmgmRAw+UByK1Lhtjlatr0WZMfJZRW8bUr1++QYwYr9d1Y/iTr4aizeShzaMxTm0AqyCtFrxs0FTYeeXEZXuJ5mKjTI825Ufr2s3PEz6hF1XrdTbLYMwFgTHJW9Z1UvpcfZ5OWX9q2FZlM6SKuGW4eW8R8DmpKUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(478600001)(2906002)(52536014)(6506007)(38100700002)(86362001)(33656002)(8936002)(122000001)(5660300002)(71200400001)(26005)(64756008)(83380400001)(186003)(66446008)(55016002)(110136005)(66476007)(7696005)(316002)(66556008)(38070700005)(66946007)(9686003)(76116006)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ahyzi+7OICqs/wU9p+tGkrrGYBUKM6TNiepCZ61HmxZ0O4uHTmBQVNw3dX4W?=
 =?us-ascii?Q?Rtu9RE2Ici3jCfNqSSrbyZQKCZMauiTOn97GwezpNSnS0RRVd+czrqVfxM6H?=
 =?us-ascii?Q?YC/JbOYiJp5yV7WSq09C5JZp1GG/eVLec3EPEobPFr3uKTPeIXhApbIccG5f?=
 =?us-ascii?Q?3pMhLf1SvqC1A7SuIGdyl0tfMQKcZpTi9yyo5zhLjoHGIIwW+j+gikfAprVz?=
 =?us-ascii?Q?8VZBmim5glMA3KBcdeQjzkNU7AgVnLaxUYRECYpRaIpHhklhFekjO+9NiQmW?=
 =?us-ascii?Q?o1r5XyLxNuoYtNszAboMarmiSMRdKs7zYz2TZFDs1iOr+yaL00AGiF6Q991A?=
 =?us-ascii?Q?RjVWWql/ykspJkx10+i9gn5BQJS+O6xBl7EJKRnClnZq5bcSboCJ8iPkWGBg?=
 =?us-ascii?Q?MIx2MasNL2S5bDj38HMtixWR+AjVu2Wu8zzyqa6L+GYpH0TrNKbzGoBNKvZr?=
 =?us-ascii?Q?39mKlDlWQw+FHacArKwVcnz7p5tADxpO/kDmbedAk1FSMr2W5irp1uNE0INr?=
 =?us-ascii?Q?6uLtb9KL+7Zd1QqsWmfLJgCoxcViciamIniLYf66CTxNAh4U+Y+KiB3EFltt?=
 =?us-ascii?Q?RarVgweT4+rSbL21eBKTLZ2hSIKAw+2jHh9jn3NbkONZkRnfJsSXUBk+bHUt?=
 =?us-ascii?Q?s+omZkt0eZY7IyNuRRH4qJtZlI83jSJlXFjKTJ3SajONva6SP//5rT7PfRLh?=
 =?us-ascii?Q?mL/h8Z72I0mdza09jzN+SFDWMORns9rJdSlYs15RLKdGsVyuN4du1akJx5n3?=
 =?us-ascii?Q?u8c8cHdFhvVE6R/tMQLmrxEjFHzjR+lshblGc3Lu6h8lCAqkB9LX7uvE1fz+?=
 =?us-ascii?Q?TyTsiNAGzRQvagpjlgMDjAp0YMFfnTdWVOwrpe/ETSqMyt/cgZr9VFF1hu34?=
 =?us-ascii?Q?CMJerb6eglPpIBFYu+Kr9v5EThjWMyknltQARKYemdWYJyRao7j19HU265GH?=
 =?us-ascii?Q?i8VQoGcJZ5nVSXFBOMB3NGPG4QETjS912Wmp5TP9xVvQpEu2D6ziUKKMRXGh?=
 =?us-ascii?Q?LBBbpECor3mD5fenIHN2HeqoEiNHaPWhR4kDI/dC6LBfVuyJ+ClaJ6bQ5UeS?=
 =?us-ascii?Q?otWoux5aiRYNJO5hAD3LIETbA0bKO+AioOxXjgEXYdIYpiFr8jKD0qhDYadG?=
 =?us-ascii?Q?NeiU6JUzLKwjKbqUvt+XZGSSjqvzxkue3q6k4Aiwe9a7iCZqUdhfi+cQix3m?=
 =?us-ascii?Q?RnupoLg/vcJyA/wTej6/eYs0IelUeplp6QOCp0fivw4YmgvSkBEV4y4PiJG4?=
 =?us-ascii?Q?QC5XoIp+ZtPqt9M6DB4VmvOj+qPPhPXp4b+ODlDb5hx5d065ugXrQ3kr+F/6?=
 =?us-ascii?Q?FAAcoNAT88vTh6N2tpp/1FEw?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c477a3-9ada-425f-e8bc-08d95c884ef8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 05:24:35.8405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c8doMYfRzWbU5oKIe80piF1wjaab0XScc9s5lfVkdMkzHaWdLcZaS7S5XOcb6vme01Uxdr3rCqDjqK6xNTIhNt4jchIzX4LzEL7EqeiVcOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1486
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 04/12] ice: allow process
 vf opcodes in different ways
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
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 04/12] ice: allow process vf
>opcodes in different ways
>
>In switchdev driver shouldn't add MAC, VLAN and promisc filters on iavf
>demand but should return success to not break normal iavf flow.
>
>Achieve that by creating table of functions pointer with default functions used
>to parse iavf command. While parse iavf command, call correct function from
>table instead of calling function direct.
>
>When port representors are being created change functions in table to new
>one that behaves correctly for switchdev puprose (ignoring new filters).
>
>Change back to default ops when representors are being removed.
>
>Co-developed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_repr.c     |  23 ++-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 170 +++++++++++++++---
>.../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  32 ++++
> 3 files changed, 198 insertions(+), 27 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
