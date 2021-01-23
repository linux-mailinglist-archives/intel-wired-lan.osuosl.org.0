Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E107F301170
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Jan 2021 01:13:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 235082E134;
	Sat, 23 Jan 2021 00:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHUFnSfAEMd4; Sat, 23 Jan 2021 00:13:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A666F2E13A;
	Sat, 23 Jan 2021 00:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63D101BF335
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jan 2021 00:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 58152872AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jan 2021 00:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rBT3iogCHvs for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Jan 2021 00:13:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FFD686E61
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jan 2021 00:13:14 +0000 (UTC)
IronPort-SDR: vYD5qgyeljyR9EZhxgWzQ7hMvxT7O275ezi/fbcBM0KS12xvE6QXXgFbZVKT02yVwY8MJ6mqYD
 90WiCUxLg0PA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="243604499"
X-IronPort-AV: E=Sophos;i="5.79,368,1602572400"; d="scan'208";a="243604499"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 16:13:13 -0800
IronPort-SDR: zXzV40hZUsW95t2KIOTKdR275qpG2axjJY3xgMYyLB4iaTFGfnu16AcB28NSlUDC1+tRxa89On
 DpNvFkVTm47Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,368,1602572400"; d="scan'208";a="355412663"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 22 Jan 2021 16:13:12 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Jan 2021 16:13:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 22 Jan 2021 16:13:09 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 22 Jan 2021 16:13:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RrY18A0mQ3abUWqY8HOcHwyot6BFK+jRbI/uyMqsfpEK6shMyC6OHeFvDvkWoIqPWk6NCCrygnQoVwxsMHzVgHCfiH/ZNRaDL7PRAm1wY+7+J/GpVVGBhYlGhBIO/CY1tg5vSw6kH+STrKIL2bS7dm3pIqtubOeCKMIkOjiS88HEmvVLdaX3VyzxBDESybcm+j7nuHW2+2ptOeDKh+UtygruH9ynHU5oX7NtoEH2+u0AeIx6Fxz620P7l22kXJkqOA320jVfbTJixHbAqqSI6vKJZAZN/CDmVzLZiT7oODBQnkMdLHNLKuEnLhZxscWmDG4PQxUkSYk21RntNlPgSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hOWyPU9tu6OSE8wE1JRWYWxCYSYdc0/BlU8TEBwV0dg=;
 b=VYmBBQl+lC18bNbWN3ouFCyzks94MXEbCO85WuqeWOBG5Iv/2J96+meI7gxBYxPbC0sV0fOPSCiUwrE4L1L5AyGf7ZN14hJJC/USugBOiywRZn3PYLAaKdsSYJQadPtPAK9/6z7IwbWod3nmlXjpg0ivxNfQQ4DRHP/9QDdwLZcrxH4ur90etcABECOjK1nFLhc14Z+M1eZc484uT3B+MYD7moMQwdixUh5kvSTgreP7H7eAlqKo//0EXYvP7SjlZenReZXTlPBrwJ+weJUhmw8s2bTEdnYrkDDPET31EUM2oOGfnr4QTaO0Ucaclb595W3W+cy4M2U+uAFFZ5Qo5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hOWyPU9tu6OSE8wE1JRWYWxCYSYdc0/BlU8TEBwV0dg=;
 b=NX9w96apGNyk/lZJUzvnm5Iuvn167OMarpAn9hsZ5InpKfnf7OW8JN5rOHripTNS3m+8IGUA4kIEK7skJKiPqOewuTrNESjJttU7eckjIQPpxTNgYmpUwqJqptbeU38ztkwq2PQFQ8QgdFCaD632yPdW94xTFdc+J7EicP8f608=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5195.namprd11.prod.outlook.com (2603:10b6:806:11a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.15; Sat, 23 Jan
 2021 00:13:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.015; Sat, 23 Jan 2021
 00:13:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "wangyunjian@huawei.com" <wangyunjian@huawei.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ixgbe: add NULL pointer check
 before calling xdp_rxq_info_reg
Thread-Index: AQHW8MKy0kqSrmmyy0+0kJqXSpUyNKoz7aEAgABp5oA=
Date: Sat, 23 Jan 2021 00:13:08 +0000
Message-ID: <b14b76065d51d7a3242231a78f0b41c7166c0882.camel@intel.com>
References: <1611322105-30688-1-git-send-email-wangyunjian@huawei.com>
 <CAKgT0UcpQpGLCdRbaEzyb4Q4gC9gmefg4bMFcgrQoRwy6UJvrQ@mail.gmail.com>
In-Reply-To: <CAKgT0UcpQpGLCdRbaEzyb4Q4gC9gmefg4bMFcgrQoRwy6UJvrQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c70c2248-855e-4ab7-6565-08d8bf33a9bb
x-ms-traffictypediagnostic: SA2PR11MB5195:
x-microsoft-antispam-prvs: <SA2PR11MB5195CC662885578AA3DEBA2FC6BF9@SA2PR11MB5195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D6YUSgCiizRyPhaVV+ViWZwuBvrQF4EuChI+1SUqJbbsCEfGwx0B2gKzMbgIYPw2HPo4D1lojADa2m2+0I5wBL/ZOV2PM+knchbI5ZvUE5QpePKMfqpXqhu2Osb81vt4RP+04cecS6znsspLe8eMI9364gJfFlNNlhtiMliQLrnDYGcH0Z6pP9wqxMmLjDSpJITp9ynaVBgXUkBxuCGZ33hGqf0Wa1D6bgLcXmH1l5Ow85/T+j4590lj1bef6gJ7pSXctMZMq9/U6EnwuvVseapiPf7fGsVhTG+kZk6nZGkUctkFiLddXbTUyQJZHbZjCLwFpeKgGBh00WhvXGzRQFTAMsTIZjcFR0eHbemibJUJWCq+5dugLfz7dcX9YuvDFP5lTo0nniAbzPMdlStFNKAjxxgbjAtmsYA7wOvhIXv1m85lfapno8kYcoNBckmT4z4Fozvn9PV7TE28dD56D0J9JTebRkoRJ+/Tw2xmFREA89lYm6hksg81st0a6tWq+CsK8jX9epu6Kc0Q62GEvZKUu4RhZYe2OGfrU6Dg63oEvXfKifQJhvX5fU+dbCIh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(346002)(39860400002)(136003)(376002)(2616005)(8936002)(6486002)(2906002)(54906003)(110136005)(6506007)(86362001)(478600001)(53546011)(8676002)(6512007)(71200400001)(316002)(186003)(26005)(4326008)(36756003)(64756008)(4744005)(66476007)(66946007)(5660300002)(66556008)(76116006)(91956017)(66446008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UENiM2h2QlM0a2J3cG9qYk9lNEdDY09FdzkzcFhWSDViQ0k1TmpEL0Z0Uklr?=
 =?utf-8?B?YlA5TjJJc3kwNlJXdlRmeWg0UlZ5VW9zZHl0bGJLVEdhOTF2L3ZXNU04UmNr?=
 =?utf-8?B?MDNVMFo5TUdOSWVwcCtTa1JqcHFPOFEwZ2NaOW1nWTlXQlZ2WlcyTE9OTXAr?=
 =?utf-8?B?RlhsOXF0WU0yTk1YK1BNRytUVFlXQmRyYkNmT0ZFa1VsZkxnQW5MZWx1UUxZ?=
 =?utf-8?B?Q3AwQklOZlMwNjVOWHIyREtyM1ZEYnM5dEVlMU4vMEJ1bHA1akFmRUhsUVRV?=
 =?utf-8?B?Yy9jM1BsS0YyQWp0WUczWGFEZEZLTGxjMkRoL1B2S1lQSW5WclFyTkpteEpq?=
 =?utf-8?B?NUFWQ0ZIam1jN0p1VWJkNEwydFB1Q3JzY0huM2tiY2I5bVFrajdMaFVYbllL?=
 =?utf-8?B?Mkd2NUxTM21LSnk1K1ZZZEpnbUI1cVhCUElaam96a2xFTVpGVytmOWJoZEhL?=
 =?utf-8?B?ejRLN3VpSmYzNElaenk4TVRCVEg4WGZCTE01ZFh5dmZFT2tpRDhvVjR6OWQ2?=
 =?utf-8?B?UnJFWUpUZTA3YjBGR0E1VTRCK1BkYzNrV0YvSlhEcUg3VmwvZFQ2ckprS3J4?=
 =?utf-8?B?Uzlvb2tnbElPUTBySkZPS2Z5YXNvbythaDBPdWFpUjFBblFiK00zR2xDK2wr?=
 =?utf-8?B?TWdyK3I0SFpaRTNjWFZPLzVOSEk2N2lFSFBDUk80dmFscFc0RmhrYmhyT3B2?=
 =?utf-8?B?RFhmNEI1dkNtdVcrK3ZSUjdXMCs1ZjhHcHdhV0hsVmNGT2hGZmJkZTBZYU1j?=
 =?utf-8?B?YTBTOE5xVEFtNlI0cXFPMUxPWWdNbzJYZzZTM2NFWHhUdDM5ZE9DaGRnNHBH?=
 =?utf-8?B?bndQSEZBdklRK3RQWmVYUGZxWVFGd3J6VjcxbUxWNXgxMTNubE5CaTg0STZ6?=
 =?utf-8?B?Q3BhNmJJZ2w2a040UnIrMGVYZXFVZkh1RE1kWnVQY2syK0JoQWx1YVJRMHov?=
 =?utf-8?B?dVlueVVxdHhwRTI0SXRMVE5lbExDT0gwR29yd2tEMnJJZjY0LzdOeS9oWi9u?=
 =?utf-8?B?VERPVTlYa1Z4a25reHlHdnlBMXpsSFRaSW1BS3NndGZRdTkrc2l0MUJscWxR?=
 =?utf-8?B?eU1Za3lmQlFTZFByUDh4V3BTS0o4ekJEeVRXK243UHJvcWVjREQwMHAwNytK?=
 =?utf-8?B?cVk0emZTdEZkeWVIM3liZ2ZPY00wRHlxS0FUYTVZQlhaR0xrV1pLaXNieE9J?=
 =?utf-8?B?T09xRk1lcEE5bG1JVDFFUUYyK3FoMHVVeWVoZ3pTNEVqNHJSNEhzMnViVU51?=
 =?utf-8?B?aCtHU1RXcEZYQm9kNFBhQmpPcjAvU0c1bExVK2xUUDRXb3p6c2xrSHhoU1Fi?=
 =?utf-8?B?Sk9lc290eTA4Z2pNU3orV0VzYXVkdDhVeTB5bC9jVkYxSlI4MmlwOU5tNFNo?=
 =?utf-8?B?RHBhWmNjYVZ6RUoxQU16VnMxTWhldnhrSW5nS2tzTlgrOEJzSlVtOVNtYVFz?=
 =?utf-8?B?YXRTdmF2SDJma2JZbUk0L3czWGRpa2NENVVSU2FBPT0=?=
x-ms-exchange-transport-forked: True
Content-ID: <F384A5C0B14E3248AF7C518E9D33B48B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c70c2248-855e-4ab7-6565-08d8bf33a9bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2021 00:13:08.4043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qdrtQfvsX1cMdmOllqd7LZQafiNo2DwCVfIXEcavuY/C1KEo5WQQCsO+rWIh4vpK/u2Sh7yCngRcR4OeRFdT0tMOUjqXgXpoGE3UBvvop0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: add NULL pointer check
 before calling xdp_rxq_info_reg
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "jerry.lilijun@huawei.com" <jerry.lilijun@huawei.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "xudingke@huawei.com" <xudingke@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-01-22 at 09:54 -0800, Alexander Duyck wrote:
> On Fri, Jan 22, 2021 at 5:29 AM wangyunjian <wangyunjian@huawei.com>
> wrote:
> > 
> > From: Yunjian Wang <wangyunjian@huawei.com>
> > 
> > The rx_ring->q_vector could be NULL, so it needs to be checked
> > before
> > calling xdp_rxq_info_reg.
> > 
> > Fixes: b02e5a0ebb172 ("xsk: Propagate napi_id to XDP socket Rx
> > path")
> > Addresses-Coverity: ("Dereference after null check")
> > Signed-off-by: Yunjian Wang <wangyunjian@huawei.com>
> 
> This is kind of a big escape for the driver. From what I can tell it
> looks like the "ethtool -t" test now causes a NULL pointer
> dereference.
> 
> As far as the patch itself it looks good to me. This should probably
> be pushed for any of the other Intel drivers that follow a similar
> model as I suspect they were exhibit the same symptom with "ethtool
> -t" triggering a NULL pointer dereference.

Thanks for the review Alex. We'll look into fixing the other Intel
drivers.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
