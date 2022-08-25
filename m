Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFE25A0B60
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Aug 2022 10:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B66061040;
	Thu, 25 Aug 2022 08:25:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B66061040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661415948;
	bh=mzLYu3ohH+wIEDExOAS+bs8RRHbWlLRA7szLfln2zTI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=chB7AAd0xSiDqvwKc5BHVoTWQZlTf/LLNm3vVQomRhgbtesWtF25MjcU0jWZ0WnsY
	 axxOxKjYdpgzCB6fIyE9lMJZH0W4fZcSopp5E2h+WDk9CUYCqjhsFkzF2JRWaMqxHH
	 fH66m6h2XFD+PNe1lqiF3KbY3WCxDrzmLW+yOk6VsaWfSdoynvEjasM3XrO1eQ1g9F
	 FWkC8YIPplck6YaAw4Fk73AFFsy9pOVwqYzKjvwp4kYx4ddOAiQaFv24k2PynBryrC
	 T5ynb+BvJn66Tsa9Vo7pQ/6qzZCgsqvk2hwOo4Cu7gq4MohgGZJbKnSR8PQmTZzNLf
	 0LFFaAe9dPYiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8uDJJrn7tfl4; Thu, 25 Aug 2022 08:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 410F56103C;
	Thu, 25 Aug 2022 08:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 410F56103C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 786451BF37C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 08:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57DF56103C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 08:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57DF56103C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kg-FeEXC-IOf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Aug 2022 08:25:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07B6660B9F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07B6660B9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 08:25:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="380473613"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="380473613"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 01:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="613093190"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 25 Aug 2022 01:25:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 01:25:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 01:25:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 01:25:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 01:25:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dpkD4wM/OIMhX0/kZUjG3KSV1XV4W6VMIuLizv2DFu91WUBgJWQ5+31vHJMR2flbRi2xE3wZ5FN7GhBVym78nw/3AYQu6HhTZREDK5WvrK7Lo+OAbzDHe7iKioTJA1YMfCcOFv+3l5rXRCpmGs8/eA2i/VA3A9PxCAvencB8n3/wi6KTGi4Q8wOOUFofwcdDBj1qx8usctHItG8dH1SDArxE32ymfcBi2/H/8TuXYYgRXBApZ5IruiWalaUyFt3/rPHcADkwAo12p9e404PnrtxCBEvU0BovtUg87tvKy+uAaj90axuEOJMWUbbSi2DH7VapuR6VH5P/WcLIKzPaPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=efKYxc/3rcvs4jfZLQ/d2OQmO49frlDz+seCq+lDVLc=;
 b=e/hRP2AJKk1mE5KQR0mqE1Xwm1z/OPhP+t58sVbNI/yP9cYCO7x+m0WZY2jkVBTwQSpAtp6Z7SgMJGpDoQE/Aw4SzCHsl6NvCVzPdWWKnypxnT+m/dszPUmtKBheQblDxZIbO5U0lw0IQTUPImipwtzywL0Sudzp/PcjCG0BBR+m1qMPwr9KE934dOTvROIc5I0yA234xDHT4RxWNSexn0QmvEJ08yjX5k3rKWd4Yh5amfolYFLUkoHo/PccyLdUMPWO/joXDuotarYnt2zoMIAJBdc7hf+s4zmdS38DMFs8Fb+1b6iNw6nxT7lDnL3e9/mnXYViOxOHCTI4T7Qozw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY5PR11MB6342.namprd11.prod.outlook.com (2603:10b6:930:3d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 25 Aug
 2022 08:25:35 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.024; Thu, 25 Aug 2022
 08:25:35 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: add helper function to
 check FW API version
Thread-Index: AQHYtwHvoxqXeU7fEUSybwCyYmr9j62/SklQ
Date: Thu, 25 Aug 2022 08:25:35 +0000
Message-ID: <BYAPR11MB3367724229521BE2A3CF8AF4FC729@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220823150528.3613617-1-jacob.e.keller@intel.com>
In-Reply-To: <20220823150528.3613617-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15159e69-b1f7-4d8f-7755-08da86736277
x-ms-traffictypediagnostic: CY5PR11MB6342:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iDtk9Zl70eniDGtHP/HgBsOAylAtOiFiXb9DakpAVIs/JoSU5dhBDtCMa5QxUUbkUbz1Otjpbm8Z6bQwKN39mbclg4B8ZaTdrhdLsmDRR+94T42Q7EvuMWkRL9G3HE1kAlT2Z1TODHZSzWUCmWa3yFZqTzvolylCz9O9BRXV5t4VXqoXcj5x8R7+2xQIASxNBJ/cMepGX/50FN1czKvyXiXPeTVZsTitKa7Yqow9Ewap7v4ytTd3nDqPj2sP148+yq6NpLVuhsm4kgnG6M5AcWrQzgIe/4/TGTlrhm6Kgh8SXxHbOb9MTpw2f1RfoKVZHV1cndo7kBJxDRfHBkt8N4a8Ykocgjs8yGJK+m2EAq9V3a9aFBzwQ2R7gxkTgHJixsy6d4L3+sj3HbuCud+7mTw68AaypwE2G3STSKgw1+h9+wL4jDZdiR+ooirhCNA4YosfJ6FVFDhV30+6T0tqs2LYyPo6sJZvWjRWI5MhLJ+NO7h56e5/HvyH6QnPwlA4VTCtqb5npMGq2XVqXwj0oUnENGqZP+jb1CWrF67ht/aNth6qMV2gZwpBRmT93E19TjYRglxG2RmWcbAibLSXsL7V6lHooSEN0PARpPqGYBT/EgP0fGYMfYEXMJ9WDqJGk3CRTx2EN1V2D2MD7W+DwThxX3SJC3LiX2T1zJhbrhOf7JyuvPd/GyBDRDOCJDL14dKoomhgSQnYateGubfgbjlgUyJeJ+lKslTV54x/VviOXA4slA9hKv7EwNhMxXDh3UBz44YK5DPhl+10kTR1tQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(376002)(346002)(136003)(396003)(53546011)(4744005)(41300700001)(7696005)(5660300002)(71200400001)(2906002)(26005)(8676002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(6506007)(55016003)(478600001)(110136005)(33656002)(86362001)(9686003)(316002)(38100700002)(82960400001)(38070700005)(186003)(122000001)(52536014)(8936002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T4dI5o+gVDd0InC7mlkTsUkUXQfwsWiCu3cBsPdRCcoSlCq/Oks5eU49hKd3?=
 =?us-ascii?Q?UWXugTporafHKCXX4aYnFTDwdTnwq39WxJmKJIL9dRiuskwtEuwOExDw8r8K?=
 =?us-ascii?Q?MJqxCR/wtr5J6QXkfDGa/61aP0aYHc8VbLasCNZZ2IgnhzwAnQLBv+pU/jTk?=
 =?us-ascii?Q?vDsI1os8wuUYGMA0BYWhNZtPZ5z2V2fv+960ntKuiMkPsANozfD6e1wbH2zC?=
 =?us-ascii?Q?wSveds7v6AzpzZtpTEtkU4ktmbtxOxtOKgNtVX+bAhPReg3uGBnS0SX2ff66?=
 =?us-ascii?Q?hr9JHNkPHGgqLqyH6o1sDeEk/PIwaHqqfJvTjdWXC5Bhdg0QbGXKtKpR+kLz?=
 =?us-ascii?Q?vrRSmdpJJOrM6/G0w+fkmlRPa905GGRYPQypZ7KTatq3F8y9T2dPCVgEWwfp?=
 =?us-ascii?Q?Y7Eb4/mcc8t+4dxBJ8kc6+dzkx5sYeUZKVzZA6kKgH6QttbCdukTG14+IIth?=
 =?us-ascii?Q?KEQX4tDSi1nI65KiLaUuW1dzUV7oQoxf7fkUFiYbuFP8OGs051uDUaUFjDyf?=
 =?us-ascii?Q?9dnvJOF9Uoml0BVHoqychY/x6DMwdtqaJwnROQcRPH455hKNxII6ejF5nKlF?=
 =?us-ascii?Q?yrRxbONgdaHH2EC4N3Pw4UNoOjTLk9wSngt/AsGdx5dgkt7QwSLpJKluKkii?=
 =?us-ascii?Q?K+wMVhw6zYPCXzii1G2/rNycfn2Yn4l6qaCcgLYptGtDyfB3Xu/OD3Dw3X11?=
 =?us-ascii?Q?hiE3kRwPgUFIFSXYKBd768hDMC8FwrFIoi29BmPQ9Oo2Zzl3n4O5stK85S0i?=
 =?us-ascii?Q?4zVn+B8jW24RRdQdJi39R9C5AJ7iLLHEreOsWC1Sh1PvE4sb0Y6CHXAJf42t?=
 =?us-ascii?Q?zDZ6/48WApGw9L4G6I9iw0BvBZeCcVp7mrL3KkdmESkcC1MPZfmgGu1/ANHV?=
 =?us-ascii?Q?BzghVKRg3gX0WBg8i/59RIbiKQvP5wa5kJxrO7EGOBqOdvlzAP3PgkPJFCmy?=
 =?us-ascii?Q?l0+zMTW4yYgAZt2hGmutGOr0ZlIvgPpoVm3wpfh+o7n/ThmIM3jUf7lu5niS?=
 =?us-ascii?Q?9oPDCTw3FQfpoxbw9wOw64faI1g/HtS0xLHluUcX35GtcpNPOd8VRjHB1Hdi?=
 =?us-ascii?Q?xQTMkV5LlvIX7JA8U4GQoUy6v2C1/fr0iRKB+tf2S1JHaroaNWx2x79UbNlb?=
 =?us-ascii?Q?tnNHQ02zZoflMvfbLbJ7ZBuB4LYWQf0o14EaVU6f4ZKida86BEiTPeLKpdsz?=
 =?us-ascii?Q?buH/3HI6/bQm+V0/O9YgaY54+IjzSVJX1IzQmKpiGz5CNdSAbh6IRiARsfE1?=
 =?us-ascii?Q?AcZzKxQZ3Yx59pLWrA384OcArC4CxOEETZ9lRdPioeWYFZbRsqBnesHVV0TU?=
 =?us-ascii?Q?T4xK/Pi+KkSKDAt3hrRNM6Jm+5BIvbe0CDmOQ71l8X8CfuJ9sbD5AN0dk2oS?=
 =?us-ascii?Q?U5XyR4vtMD6OdIuQ70iyPVVxkGJPCeASDr4BWmiciW64RLOLHQa7f+QLZvvs?=
 =?us-ascii?Q?jjP7y369hS5CL0QTKfqgxhBnA5bnoR3C6TdXcVf1ac1YXDOySZL7CN1t/LSx?=
 =?us-ascii?Q?ERSjEJpgtALAJRBQSn6Lk5ZI9A1saI2W2aIatPicXK6abXj26EJZX4RXuHAw?=
 =?us-ascii?Q?oOmt90W6ZNkZPLJPhsKDND89OLXfYPvjZmXLIyzi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15159e69-b1f7-4d8f-7755-08da86736277
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2022 08:25:35.7235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s42RhBi2ZwuNNnIGw/EbPPsQRpQjKC1OKcNrBQh57wGmyu9s9J2KlAx2UQPPoVUFOUfiNKN8QzvbH9OMrnTFsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6342
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661415940; x=1692951940;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xyOYMfqqqLXCoJf4ePjmJQ9P0wfIHlw7aKD3OfbYjxU=;
 b=Yd91Pd4znbySyg1ZQunM3FtGacBfyicmXpCs9wHB7E8Vo7MzYZot74eK
 odidX1y3Q/WbXrubNXrpIdEtu/utt8hNImoPv1DMa/qgAP1pk5o5pJ7gD
 5BS+egGq5kG9rFyRiH2DAURw0abm7RzNVM4xlvEuA4EiglFeD16OuIym7
 zJ68hoAPWM2frNtHioPbED7nrdSHVZtFgYLqwP9JYNbgIy8DWY+HUVTe6
 GWjQJCLrNCAq3JMf0IifxstE+c9m3M/C15KGD6PUZXrnVDXuJj/EqAQi1
 zFqRwemFB0ujN86eyhCQ/pvTio9ngzS6mue86HJkj8ZLk3bZn4yDgwJ8Q
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yd91Pd4z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: add helper function to
 check FW API version
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Tuesday, August 23, 2022 8:35 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: add helper function to check
> FW API version
> 
> Several functions in ice_common.c check the firmware API version to see if
> the current API version meets some minimum requirement.
> 
> Improve the readability of these checks by introducing
> ice_is_fw_api_min_ver, a helper function to perform that check.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 63 +++++++++++----------
>  1 file changed, 32 insertions(+), 31 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
