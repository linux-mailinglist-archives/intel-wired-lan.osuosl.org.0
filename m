Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9534A33AD39
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:21:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A53283495;
	Mon, 15 Mar 2021 08:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NoJpuc3uqhEg; Mon, 15 Mar 2021 08:20:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 285B4831F2;
	Mon, 15 Mar 2021 08:20:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6311BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F15386F52B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xK1eAyHL7CJZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:20:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2918E6F4E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:53 +0000 (UTC)
IronPort-SDR: vtkliz6G5Qke+bRpGm+aYBRz184BcNsM28ALVpsQ9PPs6Zdd5I2j/2MEJ0wz8xs+Uo3a9uFgDA
 da8dvgRG5piA==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="208950811"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="208950811"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:20:52 -0700
IronPort-SDR: gH+t6r7J7QzcL7sXyvUbrv3f1SbEePpkpYw8GKzxPeyt8ar8X/TRpdEf5NnRlJNLW+hfbEXK2F
 qDhaYg5wUSuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371555808"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 01:20:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:20:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijU8Nmjsy+KmHyDiEvdE+epxrX2k7yKiGJXoENaKlcsdFOhhr3fvSK3Ghbncs3gx3IKToOvE7MCB1TNjPlamk0lCenFlhuCMR14Jw8SRyvqVULpZZHQGvtTfokhHDa8QO1dnMZrVTTcfjKlJEisybN1X9uwkaW4zt+ljPREbcnpm2snFJMSEJIByxe2iCOzjFT3zhua3tGKdWkT1sYakJ18SyokAa+WeZ5/rNSORcKGzvzvGN7CDGAVMU3dQK8UurZmqJ1VVBxPY5ET2pQ5VCG9+l96jRNs79vAPKQrJkmxljk5TQBvTskd5e44THLHHRIfVPTJrfQwzHbkS/QM6kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1te+DFnJ9v3KDPyrccMLoD4kkGe6goD6D9lEa5DYBk=;
 b=QxFOqLozy0L1F6nvhvqXeai3kBXozcUdN3DmiDiMzChH609fEXz8Cjn/c05RltAERwb3blZ7qmE4m9FXw+XCMCIYtL90KDPheW3npfZ7+pqYLraI9X9+tcWhbXZF2KMUPEcZ6eHjffXG1DzcW0kHGC63EXn0TUnEJ//qVSv6tA95oOryQDswlPJBUXDUr91KCOJFf/uVPBt3JCOhjgCHJSXTtR05x54N5nZ7/8GmpuTLdlX2yS5zaBMTwUBxMwjzPWQYsm7sdd8rg40PL5LitTUDSZklbSUqyb/7KvUIoCvaz4wtZLntXs2ZzYtX9QBXYjjEOSZxj6wo6E8Yb2WEyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1te+DFnJ9v3KDPyrccMLoD4kkGe6goD6D9lEa5DYBk=;
 b=a9Ihx6joaTl4399CS1HF0WIGog/A6QO3eAh+hZKlJ1y6fOQPi0RrCentuIh3cSkWhVOIi3EgQYp3r+CUz6CtT5+61t3LgDvtuhHyvQxQ/P/hakCnKTTXJg4vu4jrkm6RHUPqDqGStvDtjPqMFd7b8xp+tmVUdPlZ8mCDa9NlJd4=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN7PR11MB2801.namprd11.prod.outlook.com (2603:10b6:406:b4::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Mon, 15 Mar
 2021 08:20:47 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:20:47 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter for
 AVF
Thread-Index: AQHXFJQtj/5q248XaU6Kdk+VjJ5LrKqEvu+w
Date: Mon, 15 Mar 2021 08:20:47 +0000
Message-ID: <BN8PR11MB37952BED7D4C25BBC4D09A42F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-12-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-12-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: de8d2a9d-1ae4-4df0-d2ee-08d8e78b3cc3
x-ms-traffictypediagnostic: BN7PR11MB2801:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB28015890F822BB12443A6D89F76C9@BN7PR11MB2801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2P9Q7tg4x41y8UPPML4rstZGKiBD4AHCun5PHU+trOhfhEy1X7UcvP2+AsRXiccQiU0by/ap6CmZI1R+uQWRSEcYMZN57vsi4kBZqvBQF4ZVg0KHe55cLoaU0zJRSM5jL8KONcV9msRgE8YyX+px84GN9bP00hu+IYfLyPlqk2Ak/09C5EcxyJXt/pHecWWZzJltjMwHATgsSfUIEWYhkt4WSIN72hUj4lEnU0hRgByQ9abaQJwlTPabh3MPclN630hcV2FCsscbRv0vHbUN+h7kEcgOe5ac0lxa2Z55JfOFy/nqQgKtuqy4hn4cnY7VWRqqXmGl5sn8oFqEQ26hQfQbigocSsRQLfcmCQzNKvqd8Jf/didDm4umWmiIA2HXVhBSZgRn5F9Q/2gwSjcL3TgeDbfzZGrpradDB1ljayol/fkLdknSejCjaQiAlPnNkHcqTvTj4K+oEDZNp6Fm/5L3eS5YJm1GrYtuk70PlxoqtkZdLOslZN5cOCZPr6xErgZCbCvSm6mQ/FEmxlNJ81EK3zXFnltkOPc5etvIB95lxPYcuAw/9XPL82V4+cRg41GeH0lrspmwHYAofEk/oQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(136003)(396003)(366004)(346002)(54906003)(2906002)(52536014)(71200400001)(64756008)(83380400001)(8936002)(76116006)(107886003)(66556008)(316002)(5660300002)(6506007)(66446008)(4326008)(8676002)(55016002)(26005)(6916009)(7696005)(86362001)(66476007)(186003)(66946007)(53546011)(33656002)(478600001)(966005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?3EQ6KBrYfVLrgi1l3He36jBK/Ig16+Kb4AAul4eDkti7LfxmJvelxSF5aBa9?=
 =?us-ascii?Q?4MXJGgF8bC/GM5hpawvCfYmCWX5ryHXBqZ7e7mKZwxZuS/BITwWovRwlYaNZ?=
 =?us-ascii?Q?dP9njDGBTdYTFhPdRyEU+LBdCcmpXIYRSlaE6IGARZEvsdIEwfcYlbEvzXvV?=
 =?us-ascii?Q?w5VwdymyVMlDDbX+/yqYEvR9X1kcDRcsVwdEkYdY87HCnIt2fFh26THNUC6x?=
 =?us-ascii?Q?HB9QqYCSbxxgtfNkp8e0OVKhxAQAbRvAFnvFrGdUUCZ5xtMT9aXFzswfX6vh?=
 =?us-ascii?Q?nXtp7P0Bz+F7fIaMgWyZX750sMMsVq3xp2QrGLn6hJYh9bIODvy9DA8Mx9EI?=
 =?us-ascii?Q?ejlI5tDwB8T3mERsi8e19/urco82o22e5PXZ0eiKlaFxZiWPPEfedje6S/Lp?=
 =?us-ascii?Q?eUHkfrU14nOPs+pBVYmR/XlnCorXRgfnHrpQhjksDg3wmnshyezfBBVYJ4GV?=
 =?us-ascii?Q?Q9Xg2kX8jllAo/VKn6nEWch8hrtR0kLO0menrCZ7OmIgFQut5d1GxRU9vNmO?=
 =?us-ascii?Q?zJyFqaGl3iD41xWGxefvvKVa1genLWNHkbn7+JAHgtqoh+pRtd4KsU1iKRlh?=
 =?us-ascii?Q?3Vd9+KUGPJCfhzPNagS9P7rcvEw6jOjZZxxK2B0gB3Ae7qiFQbrzxaJpzEvY?=
 =?us-ascii?Q?PB06W5mFOWZCTa5aAHnxoqm2oNRagB6ltREkiUbMzsJ2b2ojNZrzuF8MgTXT?=
 =?us-ascii?Q?kYNoCRcdqJ0hmysFVRAqRZPYCHbPB5jDUkCeUJTXgzrET0AzZX2lu7yF/Ytf?=
 =?us-ascii?Q?+84+9C2+fe/4oq504jAE/vCG7TV4vkNrw08qk0lfzhNvYoTzTd7HTjgnAqqR?=
 =?us-ascii?Q?RUr0iyw4mV9LZX9CdlNsXq5L3s9qzkmUGqPnjy5aX6IUxuKCaaQm7+hGSgxH?=
 =?us-ascii?Q?tSlXv4xw2y9r9lhnOk38HcGNjeEXO0dxdL8J+m4sqNpjg4bDCLGxGPV//m8F?=
 =?us-ascii?Q?3jxFSHFrDC8ZA4SXu3a8tqSD8faDHe4fxDLoG9OdKhgUmiqvX14y8DBlBvRu?=
 =?us-ascii?Q?evt5Mb4DMNb4bm6R53aTfiPSs0pJ/RzVc6OWcFR9fcLlhho56XQBg8siE/pM?=
 =?us-ascii?Q?8slT9vAYvBGuaJYJSWwswU8Q4V2NhpJIHURsk9aWFzjY8paub0Kc78F2gM4t?=
 =?us-ascii?Q?+INIqH9EL/ooiYYFZ8jADuQ4ztatYhw8Pt0fHZ1vka4MmZf494IognK/+HU/?=
 =?us-ascii?Q?gjZxzhvM7MGBuEC9Rxuhkfig2rVx8h6C5NtbVZ4rU4A74tEQbOh+zNKfCoYZ?=
 =?us-ascii?Q?Vw0Km2/l9ouH1fn4mG5BTNguI9HK5cg7WVl1PkmSRzjDEJh7rkf72JgFM27l?=
 =?us-ascii?Q?PPQamWsc1P/of7QfZ38mO8wv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de8d2a9d-1ae4-4df0-d2ee-08d8e78b3cc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:20:47.6193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pPShF/cMSAOc9sAuQrpDJEsrk9ED2smyDl42r/Ezpu+8dAtXVtvLkh3Q09vQf66Dv6kaf4CclbRT0yJHQQixQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter
 for AVF
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
> Subject: [Intel-wired-lan] [Patch v5 11/18] ice: Add GTPU FDIR filter for AVF
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
> The filter is only enabled when COMMS DDP package is downloaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 117 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  25 +++-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  74 +++++++++++
>  4 files changed, 219 insertions(+), 1 deletion(-)
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
