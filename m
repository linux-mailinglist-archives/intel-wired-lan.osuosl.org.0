Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB733EEB0E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 12:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BFB04037C;
	Tue, 17 Aug 2021 10:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8QGAQEzZODdZ; Tue, 17 Aug 2021 10:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67721400E9;
	Tue, 17 Aug 2021 10:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04B0C1BF271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 10:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4D0260802
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 10:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MdWFURWjI8-H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 10:35:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED47F607FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 10:35:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203238949"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="203238949"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 03:35:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="471116758"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 17 Aug 2021 03:35:31 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 17 Aug 2021 03:35:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 17 Aug 2021 03:35:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 17 Aug 2021 03:35:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b4XYZKKE9VJXRtxldCDQ4Dvo1HCeBToXh3bFCukB1KloShbS8I2eSKwAiJhnns9oDGt/2tdThQVW60epIBJN1WmmOLo7gFRbhg9ZBPH1aZZtAtiNM2INrmd6UFIJBXtzqJhUPexT4D1LslZvEQW4sRyQ49NXOvZahWaZGkw4zt6/hfOAiAxwg+I09L1oRqoiqs/IFq9lahWNqzrFZqCyz+KAR2LmiQMn4SbJYqLjhdB6E+OUu6x3z195fHj9uR9az1Gxj0dLuMEiJ/MEFDomnyHDLiDUXvsb8AAscRXa9uYeVwoy25fm9pQNYBFg7+IAdE1SUll4BOjhL+JQGWsHEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTp/pZZIPNptuVBq057+2MdDNdR3s+IpCh3FQdrJwrQ=;
 b=HpR9uTlyumQjHWn6Ky5AlInXXeCR5GXGpo7VU6rcgzZJsOHvxiznGmeiDyBSto5LQfF8YzrI9R4/ZCWaTh7TboBQf66gWqdCbgXsvVYSIw5zz99qSeCd1pmPiDqtVxDu+yrzWuMgYQOIGLbsb+z1z/yu/IlxAmAXS4oZV5fQlUNk7oqtaNcoBPa282s5y7YlBGGxakYAeK3hcJQhCjtMdN/sItB6p16tmPAesvWcpOx5iSnzfiscSQeSz0ottOQy72OdjVMxeOxVE7thwPqLj1Xv+g+wKvMu3kRvg4p4c9N+6+O81sZgA7hFRRHEPxYqDTKQiLFFIvh5AfZ6e0rdag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTp/pZZIPNptuVBq057+2MdDNdR3s+IpCh3FQdrJwrQ=;
 b=WTM/QE1/9O/Zyun7mYnCODFcNp4tkUkAv6UBelXEQ5dmIzx+SApQ3l7OODBGoTao65O3tY1kg6xeZypj76nyp7ZFg2QPX2XEvxoGwtXC8PnF9jxjchYLzMou3PVI5gU0gGBB8eTssNgRL5kLMrj90JTRNVYbwNSWj7wIFeEN7Uw=
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM6PR11MB3963.namprd11.prod.outlook.com (2603:10b6:5:19b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.19; Tue, 17 Aug 2021 10:35:29 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::100:e37b:35bb:c213]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::100:e37b:35bb:c213%7]) with mapi id 15.20.4415.024; Tue, 17 Aug 2021
 10:35:29 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Thread-Topic: [RFC net-next 4/7] net: add ioctl interface for recover
 reference clock on netdev
Thread-Index: AQHXkrpDd8KR4sZrE0SVSHvcdxLd7at2iWmAgAD2LnA=
Date: Tue, 17 Aug 2021 10:35:29 +0000
Message-ID: <DM6PR11MB4657C563333B755676B3069F9BFE9@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-5-arkadiusz.kubalewski@intel.com>
 <CAK8P3a0N3N3mFvoPj_fkqOY30uudJceox=uwSW+nd0B0kf8-ng@mail.gmail.com>
In-Reply-To: <CAK8P3a0N3N3mFvoPj_fkqOY30uudJceox=uwSW+nd0B0kf8-ng@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d6c9109-d981-4dcb-2ecd-08d9616abbd9
x-ms-traffictypediagnostic: DM6PR11MB3963:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3963065F95528E49C5F9A2059BFE9@DM6PR11MB3963.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DscbYtHjkDLFqM5pklHkz4KiBTuDmet4ZUW63dQi5in/9nn57SlXGaLgC4Y8U6oj6c5SeU3J/7bjo55zcJwcFZTbT0v03Jm05RSOHsZ+DUlrVgW0Jo3npV+m5asnplFMI/9Nh9R7l6p346Db6IKfDK+s+Ush2F6YOPI8nuZ2M8XDwcrWf2fjDPyLSRLrV7MfpqNDj5XvohchcvuNf17H5EzkJWPI1dl+fwrdl9NukFLVQjDE5yVQTemRiX5YzC3akv4z5p5rzG0tnI/Enq7a072D/w5bc8SD3BAsBcgwmUJB6vn+bTfKZj4yCL+IfuUKwfdbv8syhrQ4gKxnic0X5W9ZZRfnOSGo7rYdOniVtqipFUPENZXdh3gNwDL3oPIKVh3rTU39f0La5gvEyBI05426LzBOM0HEaku4pwC/Ji9wPQAsDXgQpMxk6qT1jZyY9DTrJIFWwx8C5kJZGKcdq+n2b9yamFc0UNv9P0/IcuqViMAbFjtUI9KvAK1tlg5K4N2SgGZQGGt0k/dUJ5aDYpOCpnQrmWMHBoWjt3RRIFAMcGnMVBEtJOSNchk4NW09pafYSIui/7kVe0GVliBbY+i7hzEa+Vu/cXbGhv7A18lcIFgK14FmPdpcQnKJph/yi5xNVb+MXkf0qIEArAJ+dTZ1q5LC3joyFXtG5XVOmgXD3j7fnrcaUJbGS5PyHPnW63dwBh9AD5e1UG77FjE8eA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(76116006)(5660300002)(7416002)(6506007)(6916009)(186003)(38100700002)(122000001)(4326008)(26005)(66946007)(7696005)(64756008)(66446008)(66476007)(66556008)(478600001)(38070700005)(33656002)(316002)(8936002)(52536014)(86362001)(9686003)(71200400001)(2906002)(54906003)(8676002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVRUWk9ZQjFWU21uZFNvUTZvejVJNVpBQldNN2ZJN0FJTUl2T3VWL2JmWnBm?=
 =?utf-8?B?UmNVbmVJbzJJNUprYm1lNDc4QmYzTDhKL20vdDZlR2c4QWlxbytMemxZNWFQ?=
 =?utf-8?B?dHEzeEVCMU9JOTlxV2hETDIwYklWVzlsQkxDN1dqb3ZZVjVKeEsySzdFaUda?=
 =?utf-8?B?clFiV1NwQ1lYTXFzWjAvTThEL0txKzZTYmNFcGQzU1RlbDg0eG1qODdHVGo5?=
 =?utf-8?B?bE1ZcXZPV1piUHRoY3FmZ0lob2dtSWVwVzNvSk5KYzZ6cGQ4Z2RUNnFxU1BX?=
 =?utf-8?B?RFpBVlNkcjI3a1NiWkNRK0xsQ3Voa0w5R0VNcnRqN2xjdll3VEN3THdGN1NQ?=
 =?utf-8?B?VGVUSmFXd1plUWpERWR0Yms0V1gvNEIrYVIxMG9GLzRuazNLWnhoaFBTc1NQ?=
 =?utf-8?B?OTlIeWpUcWt6STNjNk9Ickw2a2xQVHNJaFBUNGwyM1ArQWpjd1JVbW5SQ0JC?=
 =?utf-8?B?VVpwRWs4bE12NlZWWVJ3VEpZcDM1c3NPWTV1SXhZZWpmaWhNVGI3Y05LMGZl?=
 =?utf-8?B?SWFKZVNBbkdBNkl2SXE2QkUyZXNRcWFyMnFkRnV5ejkvc0hFZzdEUUhwTEVF?=
 =?utf-8?B?bjVwZisxem9KWk1PNURzVFhRbW5QaE02c3RkUUpvaVluQm1jKzNOK2w4b0ll?=
 =?utf-8?B?T1hSUXQvQmpmVE9MQzJEZHh0ck9WU2dkQkppcjQwc0pEN3cvdW9UdjhncGFC?=
 =?utf-8?B?Q0FkTVdISXFhQ05YRldLVlF2OG8vL3NIdnlXbmNiV2g0M1NkWGNjb29UaWI3?=
 =?utf-8?B?QmUvMjA5dVBzSkdaQ2c4VFFWY0ZSUnp5U2pQTHJuMUpiZWlPY1VYRTlPZ1V3?=
 =?utf-8?B?N0VHeHpscGZrN3Bjd1FEeW9LTElDWnJmS1JjdW5wWVdsOUJGVUhZbTFhMTRr?=
 =?utf-8?B?N3JiOGYyRUtmNUxOZXg1Sm5aU3E5Rkg0SmFjM0kyRTZDcTFOWGdPMzNEbjJW?=
 =?utf-8?B?NGxvZmZpYy9FQzk2dmxRZGZySkJEQk9KRGpuRlcrSG9wZ2tVQnVzYjBRcVFE?=
 =?utf-8?B?UzdTUGVUWFRoemR2WW5zZVF0VFkrbFEreGphRUZlRWgxQjU3UU1acU4zczhu?=
 =?utf-8?B?MFg2T0ZKaHNGQW5KZ0RRbzJ2Sm1DSVh4dXp4K1pLeFlPZTdra3ZyUnhZRVJ0?=
 =?utf-8?B?eVk2TlBFUHVCN2p1SjlsT3U4NVBUSzBNRW8xOXhzREUwZFNEVWQ4d21mUUtz?=
 =?utf-8?B?Ry9iK3pmcVBaTUZWT0ovc0tyUktNeDkrdzJtY0hieTB2WXFGd3ovVUFNT3Az?=
 =?utf-8?B?L3U5VmI0MjJiRDhCOXBXT3hoR0x5QXAvMUw4VVRCZi9vcGtBRVgvTVNpRm9I?=
 =?utf-8?B?bFY2YWJndlQxZVBhYWYrbXNZeVQvQzFRdGFhdGF4bVlkdW9qTUV0Z3lVN3hn?=
 =?utf-8?B?Q2dtRHVGejBaMDUyODJDSFNwSmVqZmwzRmR0Ny9iaVhNZlBjdjk0Nks4SHBP?=
 =?utf-8?B?U3MrQ0VSK0NNMjFld0ErbGFWc3JpMzl5RTd5YzhpNDEzM2ZpblBSUkR6YjQ0?=
 =?utf-8?B?Z0dGa3FwODJYb1ZPbUNYdHZhdXFNREFPeGhZN3pMZDRLSGNnY2M1cm0zUlV6?=
 =?utf-8?B?ZHFBTEZDUzd1SWRuMFdaS2pkMDZOVzJ0dGw0eTZ6R0FsZzJJWVMzVjE2RElZ?=
 =?utf-8?B?QytRTTFNWjd0dEtBalJRbGNMSkN3V04xMDlRVWNhbm1Ka05DVUozS1FWMEsv?=
 =?utf-8?B?MGNWQVBTVGpzYzhUdGlBa0RFUFpOUEVTYW80Q0d4dkdyc1hsMVpGN1NkWTZo?=
 =?utf-8?Q?Q1U40OhMS0HXBxcpOmTt/rmnLZBbECarugdZjdN?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d6c9109-d981-4dcb-2ecd-08d9616abbd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2021 10:35:29.4431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RnqNbYFkRcKnh+b0qtN/e/HZ+ZCoCaMXYVxjwPXPrYTD1q/7i9/fq0V1rSsJWvJNVWoiCCA0Iavz2rPfUQdAJwYMaS9f/QDDgyoR6zNaQkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3963
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC net-next 4/7] net: add ioctl interface
 for recover reference clock on netdev
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
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Colin Ian King <colin.king@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>On Mon, Aug 16, 2021 at 6:18 PM Arkadiusz Kubalewski
><arkadiusz.kubalewski@intel.com> wrote:
>
>> +/*
>> + * Structure used for passing data with SIOCSSYNCE and SIOCGSYNCE ioctls
>> + */
>> +struct synce_ref_clk_cfg {
>> +       __u8 pin_id;
>> +       _Bool enable;
>> +};
>
>I'm not sure if there are any guarantees about the size and alignment of _Bool,
>maybe better use __u8 here as well, if only for clarity.
>

Sure, will fix that in next patch, seems reasonable

>> +#endif /* _NET_SYNCE_H */
>> diff --git a/include/uapi/linux/sockios.h b/include/uapi/linux/sockios.h
>> index 7d1bccbbef78..32c7d4909c31 100644
>> --- a/include/uapi/linux/sockios.h
>> +++ b/include/uapi/linux/sockios.h
>> @@ -153,6 +153,10 @@
>>  #define SIOCSHWTSTAMP  0x89b0          /* set and get config           */
>>  #define SIOCGHWTSTAMP  0x89b1          /* get config                   */
>>
>> +/* synchronous ethernet config per physical function */
>> +#define SIOCSSYNCE     0x89c0          /* set and get config           */
>> +#define SIOCGSYNCE     0x89c1          /* get config                   */
>
>I understand that these are traditionally using the old-style 16-bit
>numbers, but is there any reason to keep doing that rather than
>making them modern like this?

Personally I would try to keep it one way, just for consistency, 
but you might be right - making it modern way is better option.
If no other objections to this comment I am going to change it according to
Arnd's suggestion in next patch.

>
>#define SIOCSSYNCE     _IOWR(0x89, 0xc0, struct  synce_ref_clk_cfg)
>/* set and get config   */
>#define SIOCGSYNCE     _IOR(0x89, 0xc1, struct  synce_ref_clk_cfg)
>/* get config   */
>
>        Arnd
>

Thank you,
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
