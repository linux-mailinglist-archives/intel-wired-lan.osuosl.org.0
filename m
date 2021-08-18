Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB0F3F0AEA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 20:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71AC680B3D;
	Wed, 18 Aug 2021 18:14:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O0_TJC5s1gIY; Wed, 18 Aug 2021 18:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BAC480B7D;
	Wed, 18 Aug 2021 18:14:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B48131BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 18:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2D5040502
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 18:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AoQCZieB9A5e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 18:14:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3463404AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 18:14:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="277416570"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="277416570"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:14:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="471626894"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 18 Aug 2021 11:14:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 11:14:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 11:14:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 11:14:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 11:14:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRPbIXr9OodKFqCSQFUa+VYYZAaXNmeP4CFaxesDJKqi/aMDbfOP5yIXCKnedlwoSHT2QQLWSpWnX5Zu3psrVe3KBpJJAr2KqTypOrw0mpqqNGWnPhzZkqK5SbYXAUDhbY1SfmzaPZgT3Ishk4VaD1zuUNVprMKLeBYgEPf8Iol6LgngDajK7HQLBWcy0yJH/9XS8MhkRmmHv2/yzgrBv48iKmKRnbzd1VIBvVI2twV/twxg9XeW4U8Jg6P+1hoQ9xIi3ewLvTq1bpE+6fG4smb2n4edMXMxc1kzxyDae+kk0yNsGRvr6iDtf6Iw1ZQGyBGfMw8a4wTw+fJIxka2fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOgpDm0LMsXEafOOyfze253fElOLP6Nb8cAWi3htuQc=;
 b=G7kkQDoWOSM5nbo6lRHkAxbZwuFBHfnecKJBhOV9sGfCfhBfmj29S98Gmop3pbT7DAxgWAudyPmG0P3oGtSlDPqOhSDH5O1DwsWhiPTVlYr+3SS5KRF7bIa8qfic4zNLr745iuLnPpC2hFhARh3o4SVOxH2yKO5JvZzYL5Qp8imeVCFWGAUATnBId0Je2wSGdjzFm9z+uSoHwSh1rjs3irlLUeBcG9xVlD4UVc2YU4JwyUGzfCZ7Q28Meu409ioOsrXdKbgWz/8C7WhYMKKUmKJlorhteerTZzr0nBn5QAeZHPffXawYFOljUJH8V1ueF3qunfW9S4Hwh2/8bXsMmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YOgpDm0LMsXEafOOyfze253fElOLP6Nb8cAWi3htuQc=;
 b=ie3I+yYOtwGvjAQbTsX6XHiLHoN2aT6YqwZhaCWzHPTO2GgZltPdoSVBUE4XLz0TqEsVDTEIFKCCXwxpu8AFle6ranQ0Ytzyg3WmiUYn5cpv9xgl5YX+JWWkwY/B5pQBjpeQUwTwZYds3Rg1uYUNt1DkekHrJeiFe7k6GNeEN58=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR1101MB2078.namprd11.prod.outlook.com (2603:10b6:301:4e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.18; Wed, 18 Aug
 2021 18:14:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adef:da48:ea32:5960]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adef:da48:ea32:5960%4]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 18:14:13 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Richard Cochran <richardcochran@gmail.com>, "Machnikowski, Maciej"
 <maciej.machnikowski@intel.com>
Thread-Topic: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
Thread-Index: AQHXkrpGZc2YC9udeU2jnSf+yoigt6t2zoSAgACkO4CAAg2XgIAAEo7A
Date: Wed, 18 Aug 2021 18:14:13 +0000
Message-ID: <CO1PR11MB5089A30F5681B860B3F9F96CD6FF9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
In-Reply-To: <20210818170259.GD9992@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4654f27e-5da5-463f-48eb-08d96273fbf5
x-ms-traffictypediagnostic: MWHPR1101MB2078:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB20781A38D8522E5381E011EDD6FF9@MWHPR1101MB2078.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0jN8c7bQW3qmleI4Chb3qrARoTEe8XWxwtnwiXEtwqs63tGCanH8TSkM45wsUSUJYpWm9CwMstwojLjRTHF3uvUtiUUisEPWHnm6a1ZSk4vi4kKatvV34wR03BRcnBQiyUlJNar4ZbB4ESiixdM4eu4jfIGHbobYqCWYSWfV7v8+jbHKIvvLUbz7diRfQEjm0KrWNls6/jAVOAFvv6IJPWov/w5wmWsFe6OhSxEEqKf1F4AYvngdLNAuHI9RjNUR2gbyIPywaxd1aOvPq4zGRpWo+FWnrtNShP53kwGPoCDjUQzcI3iTS6uMoRPDtDl0NjlQtENWUTTCv85nN9BJ0VmekGrL65Bw2Q8o0uB3Srpsf5gFnJwXeGHu7ihVoFQfpNnf7zDE0Q981nA04IROvqUjxt009AqWcUwIM9564nTH51NiMqlk9byzU/qNPrEdTwcEjmsD9nmF9Gc9Kxof6hStUydbZPdYNj8Vsh8FJVSNdAKYNVv/qUGTgXxu+M11Hs7gTl3gvJI7o0x9rBDfV7v/HmcUwXhof4wqImIMawzW/F2sU/cchdU+OVjsIt/my6H9Xv9sR25mAhoWkTcQiC0hdYea10yV1S9b9/hHFXUrYb02sRqzkhX1XAMTYm1GfMtWdKh1NrYIByTC5SX2OwdG9deOvfQ1qFWxmgBYkannfU2qbAgvuqIkSxu0UTnC0BB7bjKNd3iraKpBtCpoZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(33656002)(66556008)(9686003)(53546011)(52536014)(6506007)(86362001)(55016002)(71200400001)(7696005)(186003)(66946007)(66446008)(66476007)(26005)(76116006)(38070700005)(7416002)(5660300002)(2906002)(122000001)(6636002)(4326008)(508600001)(110136005)(54906003)(38100700002)(83380400001)(316002)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9EfpiMGPVX28X8TWSQrU0OLpKcKd4SnO31t4NPWFAZGiLxnSXM2QG/Pg4+KV?=
 =?us-ascii?Q?1SfejKGnkELh7PAZ+uXjTEwxz4JIyI6e9qUNHe37++2UaU0EwVmBpTvrqVF9?=
 =?us-ascii?Q?q+3QkFdOo+ZpJX0FdESXulwJWYcClaaVa3nh5bO1/s25wEAAo/ayqyeaAA5M?=
 =?us-ascii?Q?v4Ez/kpY9bqpxPbQr4LkA9G5UZWSnuazOL0vmdu7gMs1SimO19zfmIQ/9e8Q?=
 =?us-ascii?Q?pdjatEUbgdw0n8BkLEF9vO9wRO4zNOuJTHAOTh9LOPrKjJlphmBI3qZRnGWY?=
 =?us-ascii?Q?Vvdj/O809rUXRL0lfcxWta5JNGq9d5hhYpT4CJgl7Y8bwbv7b1DW4D1/IbZA?=
 =?us-ascii?Q?9koif8FCwYsLHJBF0+wuJwejvbgpli6dMC39GaDgifqwLL2DSxoV/WwyIU0P?=
 =?us-ascii?Q?MSOZr7OsHXUWEM2lbsXxEZ+JFhN/GekFakGDpUgdcS9dn34e2zs3SHy9f7Ru?=
 =?us-ascii?Q?pAW5QdidhcggbqGnmz/853kXxIOpnCdGyKpbXWF6Hz/MWhghMrDzKNaBq7Kl?=
 =?us-ascii?Q?UW2VMeYy8rlkAjHzs35pXyewJgJa3xIxMUYZ9QRoguPHSghHQPChPUzf+sAL?=
 =?us-ascii?Q?ggsEhqjoJwx4eczwzqSK9IhPKNDrCQiYHVdodWfWA29nhr6w2p60wCSi5Naw?=
 =?us-ascii?Q?CEtXPhy2U8eJhL9W7p+PDNLJhCseH9OX8Y281fJg6TYJBro9uB88cASWW0+W?=
 =?us-ascii?Q?pJCtBU89PU0Sf2xEoawIrHCh3DCGkXcYRSEf1nFYPYgEzUVCO4dH05CHLgxf?=
 =?us-ascii?Q?IDzlFB8gkz9EZlCubTpYKSZKJ2sZDPORBCe6HGel9uSvkLP6XMfhvshXg9ha?=
 =?us-ascii?Q?dcPi/IUK24KhRT+9iScHNsX3En1kKSRjjjbL+tgnioSsB1J5S5aL6skFR/Fj?=
 =?us-ascii?Q?iriMly5dE5xUH75c6elIa7ZoVsrQ5ZtsZGsBlgE8oeixwmSkZBbl77jXoba/?=
 =?us-ascii?Q?/E/be5nW7+riRhuch1tlOBjTEf/9DXUvnH7DJo5I4YaD4HuT+yrymCgtFGIg?=
 =?us-ascii?Q?A/NrWbBU054eGeN41DDmrMTD39sAMBIQGAJgtAIzUJpz7DUHHpI6LKpvSdtb?=
 =?us-ascii?Q?qX2ODpqYQLSF6nYc4wk3SQhEA5PC1oNO7Y17rgYl77axO0zeaqM+QvAwNi9K?=
 =?us-ascii?Q?KMOiSxT0LLAMmxEhsCBHZR6U5FD4QEeTC6TbuCgUvlTd4DUuxNVR7WKzMe/a?=
 =?us-ascii?Q?CMNfd01zm7QvRwNR1uvqV1dT3bBkU33n4gdtkhmXqr83FlVuLhSkxE5kc1jU?=
 =?us-ascii?Q?Rm1MYS+3Z7DJYm3SAWcFCjjJdvcMGEul+04RjnS3q79Z5Omm8GIMSpWBmgYW?=
 =?us-ascii?Q?qYc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4654f27e-5da5-463f-48eb-08d96273fbf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 18:14:13.7154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cp9Q0pnSB5SvM3+kttKexG17UP7ViprhPd2PtP8MonF1vwf1dcVJnoCfcbp1P6BlprP7D3HtpDQfuzHrfcunE9NbgpgbkZzXByXnby+/vOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Richard Cochran
> Sent: Wednesday, August 18, 2021 10:03 AM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Cc: cong.wang@bytedance.com; arnd@arndb.de; gustavoars@kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> colin.king@canonical.com; intel-wired-lan@lists.osuosl.org; nikolay@nvidia.com;
> linux-kselftest@vger.kernel.org; kuba@kernel.org; shuah@kernel.org;
> davem@davemloft.net
> Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for acquiring
> DPLL state
> 
> On Tue, Aug 17, 2021 at 09:41:49AM +0000, Machnikowski, Maciej wrote:
> 
> > The logic behind adding the DPLL state to the PTP subsystem is that SyncE DPLL
> on Network adapters, in most cases, drive the PTP timer.
> 
> So what?  The logic in the HW has nothing to do with the proper user
> space interfaces.  For example, we have SO_TIMESTAMPING and PHC as
> separate APIs, even though HW devices often implement both.
> 
> > Having access to it in the PTP subsystem is beneficial, as Telco
> > standards, like G.8275.1/2, require a different behavior depending
> > on the SyncE availability and state.
> 
> Right, but this does say anything about the API.
> 
> > Multiport adapters use a single PLL to drive all ports. If we add
> > the PLL interface to the PTP device - a tool that would implement
> > support for Telco standards would have a single source of
> > information about the presence and state of physical sync.
> 
> Not really.  Nothing guarantees a sane mapping from MAC to PHC.  In
> many systems, there a many of each.
> 

Well, I think the point of placing it in the PTP subsystem is that there is a sane mapping between PHC <-> DPLL. There's only one DPLL for the PHC.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
