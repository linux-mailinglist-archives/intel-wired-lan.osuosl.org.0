Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226AA677FF1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 16:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FF5040A9F;
	Mon, 23 Jan 2023 15:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FF5040A9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674488251;
	bh=xPfZGgB91SMq+7NAvAWTTPsislo2+ml1Y87rk0jvJfo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y/r9Ei2Ios2BHXmCIA8O8+lef1UnqTDgEv6pzdVHTQk0xjz9QPE/LgawiwFoPo9ak
	 H4Fn6u9cPjLXyn143PiLhRkrCuA5jSGqx7wlX9ff2VXlR7JZMqnY3HXk+A5FOzNMkQ
	 +wPIuRiEHX0q4Rg8n8eE1j5AYhiKQrDRTPr2ebcvImqqoCKG7+m9+Cj0AbNptKJhbK
	 lGTcG9F7sIIxtBMaKJsLlrAKqVaSLb4e02Q8SzHa6Y7X99RRipa/MtYPmOlQwcICy8
	 0hlqFSus9eJJ2a0nrwmqWZ6XOSaBQkrELivnQWenrvS6HqGSXhyq3eQt0DSYE/zG22
	 cTWjhDu2M+Lng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9TNRg7Sq3lS; Mon, 23 Jan 2023 15:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72C8440A8D;
	Mon, 23 Jan 2023 15:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72C8440A8D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB6FA1BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 11:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 953BE404A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 11:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 953BE404A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GpCxOSS68bI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 11:43:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63D9E40239
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63D9E40239
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 11:43:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="326055827"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="326055827"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:43:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="661595220"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="661595220"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 23 Jan 2023 03:43:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 03:43:37 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 03:43:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 03:43:36 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 03:43:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgUcrhG7vpCYcT1hMJ72e+e5dPBa21jtI+od8QY7/bInvgg4oLp9zvhL8nNDaMoHCN8bP+cWigfoCoYlDfS7pPqs53NK7w9vAwRGL8LxAkVcPktTYkCzoBHA8Wk6NTkf/KEsqUtY0HNDvLtjUx44azaDxwwaqwfnjou1xMK1D+qd1KT9V7EFo3f2NCPBYbI7uXRKEtqFOujvKZyT5/BjBcq2Te996Lrwp1Ljfc9si7u0hzwlPjX76gMru/rpp5oMzEBlbFCtN+nAKSVbGVA9nuiwlwU3hZyIHgngiNcIYK6qfZw98sa2Uf7/NjOw27AjLAq34wOOVsC/ve75I56Yrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DnNwpoG7PNB6sKCUq8k/4Aiin0pBbEO5BGilDb25CCs=;
 b=CeACcIcvO/U5AK0qFRimQBtADdSXAmGxhfX2U92YAhcfBENOqJO+guF+HPdt48fYq6PS8//wYtyac53w+/Dx1OrQfeBAwzN5bI/1vzEg7ItdAXDfuGta6wb78y4WKIlMRxRaJDHE9Ud3izAQCxJslkfwjVcKVTEtyg3kBCD5+OJ55CZXV1IgngQOuodF+sZUMIjVc/crZUaSQvzX3r8x1Ik2UZbkHNDK++hcx/oLC0q+Nt9BoZs3J90nS+GbbkVVCla8F3QhDGwGWt6h5A0ehhovDe/jODlgWP36cW7cbcCl3vTFIqLS3saxHrGG15ICVoUMxqEh3vjYQpEL0XIg+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 SJ2PR11MB7648.namprd11.prod.outlook.com (2603:10b6:a03:4c3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 11:43:34 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::f8b2:d559:b745:4a4b]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::f8b2:d559:b745:4a4b%6]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 11:43:34 +0000
From: "Rogalski, RafalX" <rafalx.rogalski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Maziarz, Kamil"
 <kamil.maziarz@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
Thread-Index: AQHZJcfhf3B6/D4M70O1toCJsTtJdK6kgk4AgAduxtA=
Date: Mon, 23 Jan 2023 11:43:34 +0000
Message-ID: <DM8PR11MB5624FC864AEB055AFCFE544BE7C89@DM8PR11MB5624.namprd11.prod.outlook.com>
References: <20230111142029.318092-1-kamil.maziarz@intel.com>
 <6b45937f-709c-b87d-9bc9-423fb2429587@intel.com>
In-Reply-To: <6b45937f-709c-b87d-9bc9-423fb2429587@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5624:EE_|SJ2PR11MB7648:EE_
x-ms-office365-filtering-correlation-id: 8634ac3e-3494-4231-3297-08dafd370f12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 67OIk34dm52qXYBtrG8dDoOYIJCgKxQQ8nRE8RZcNWmQvIKYe0hBd5D3ThI6RUGhxdK5wvhCrwNeBYUe/XftUNnUPw14dKRFCl+klgiJFeubsd0B1H4JYp6zklw+pLSwA+8+iLFZSDaELhf2rdRkERXnbU9B4OOBN7Ixt7YmYUIqf8qaNgpz3TjF8J2bhHGAHf2/FS70NIYnuDyDvJOkkMsXTA5yWJPNg8vJ9j009jqZ+16HqToGup9/CIXIeb3CTckyefhQ/SVkxERD+FunikHhDGzcqUYWS8qIxhcYVVOB+f2Dn6hSAkv75irEZRb0FDewp1tFXHkqBCJLcjt0HJuXoT2BEMhJahpWOiKtAceG4kFKz287C93Ck4j2HFZqH6MnR55pjMD/lt/y/PwTCMHyvqHj3vJPg4InwErzdMWK6jrTvMGkC52phvBnXbbvMnnLASphKy8gEPP4ULZSa3LBJe/A5IL4iPZ+zu+dTYeAU/NrNbj8NOfhQ9YxCk5VbSUnUR0tU+/ag/Z73zZ+PxI/JiqMIPrcn62ddqArOgMJsLcSWxBCcp1VjJkbfGsdOQSMZTVHAdQ1Key7NBODaMCD2kU0Hef4Y8K/AyhKYRnQHhyVm3UbucDTkivmnyPp2D2M1591hmWr5QR4MNBVWrVoWQarsQJYh1oL6Q1GSkzh/8Qka70+7+LGufQXaz1cAKf2tF60IGTWiaGKgxc/RgnZuVCuB7tsDD9artmfMFw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199015)(38070700005)(2906002)(82960400001)(5660300002)(38100700002)(52536014)(8936002)(41300700001)(122000001)(83380400001)(86362001)(33656002)(45080400002)(66446008)(71200400001)(478600001)(110136005)(7696005)(66476007)(8676002)(26005)(186003)(6506007)(55016003)(9686003)(316002)(66946007)(76116006)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGxJN3p0b3hJU0VEVFR1OVYzYkN3eW5lNnZoWGd6LzBoUk8xQ2d3RFJVcEgw?=
 =?utf-8?B?YmtTd0g0MEQ4NGdyU0VNbGlPSnRuRDR1YVJocTVITk00R2RuUEpzSGlzUG9u?=
 =?utf-8?B?YjlsQjZSeG15Ny9FMDkvaVUxR0xZMXJyZ2RrOVAwS3JEVnUyNGgrL0JSckRC?=
 =?utf-8?B?R3VIWUoxNmwwNG1mdEVJR0xQQnZleVp2Qko4eGxhYmhsNkREYUxvN0RnSkQx?=
 =?utf-8?B?YlY5VWYycHhBQ1d4UnYzUGdUVFVmM01IQXR2cUNEUFJlbGNTendqcWkwTC9q?=
 =?utf-8?B?K2tPa3VRTVlNbHZkMFBpUG1vazF4ZmJ0RXNudXVTYWxBWGxRWURveHlTYjhQ?=
 =?utf-8?B?eVU3YlFnUFZ2M2p1L25sZ0VULzhORU9QY3lnWjdIMFpJVWEzVDl0TG9HcFZs?=
 =?utf-8?B?bWdTSkFMeG1jblJiaDZ1WDd5NGl1cXRFMDZzS2RHWTUramNzSGUweCs2UXVy?=
 =?utf-8?B?V2hYKy85YnZiamt1Mnc2YXNnSnRzeDNLc2NRaUhrTVcvRCtqR29HMFJPTnJa?=
 =?utf-8?B?cDc1cTllbFI3UjdlRWFoa0VhNWsxcGsrU1ZRUjFwOFlFcWpLWU9YcTF6Y2lk?=
 =?utf-8?B?RU5SZnFXWWlROFFybVVwTzVNbHo1ZVFTNHJDRVR5SGFKcXN3T2MvVWlUWSt0?=
 =?utf-8?B?aUNvZy8wdjhIVURTbjFhSnQ1WFVySjlNMUxqbGlrSmtHbE52YVpTUzAzaVRH?=
 =?utf-8?B?UjN5OU42clIwNk4zRWE3THZXaVd6MU0wWGpKcjVRb3hIbzdVbUs0UEQ3TDBv?=
 =?utf-8?B?RU1RaHZuK2xIb1NaNGlSczQxK1JaRmpvRDYySDFRUWpTSXpVUFRuM1FQYnZv?=
 =?utf-8?B?Z1laT3N1WXdKLzhzcHJuaWJqb1BtQjUzWUtoc01Gb1Z4aUZ3N0VsOU1RbU5q?=
 =?utf-8?B?a013UHlUZDZCSXc4Tm5Nc3RZS1daelhLWXhPSTRoT3oxWHpTYWtLazhVUjRl?=
 =?utf-8?B?bEVHQTBjT3dXbUlEWXJkWnFpUG1EN295WUFjNWl1M0RrRVBWdkROTDJ5eXJ6?=
 =?utf-8?B?NjBaN0FBUzZhZWNndWxUWWpPQXhJc3FVTG16TjlqVjlGaEQ3ZW5KREIyNVl2?=
 =?utf-8?B?cUJWUG1TQlV5aXRyQUJieFJsdlBUY2YrUk8yRjdDZjRvVzNPbGFxYmNnZjd6?=
 =?utf-8?B?ZGJ2b2h2a2RHemE3Y2M2RG1RUkRuQmI3ZFZSTEhxdVcxZStNZVBtNy85VCtC?=
 =?utf-8?B?QnZVU2l6NW5pUitaUkxPd0xMaExEVmVydldtanNPell4K3NkQ2xTbll1SXBI?=
 =?utf-8?B?L1lvNE5KRm05N1ZmNTVMYkJubmg0RFVUTXhVaVJMZFE0U1FNa01XeFJiOWlV?=
 =?utf-8?B?N216Y3JORXZCYTYvUVNpQ3gvcmlUUWQ1NDM4MkZtMlFrcExJYkQ3Z2k3dWVX?=
 =?utf-8?B?RVhGWHJJOE9uWnZmWDJnT0txQnVCbXZJaXd0SFZFbVc3SDU5QWo5R2dwTEZP?=
 =?utf-8?B?RGJtR2RhRkhDN1F3aU9vT0tkN29TWUxLSnJuRUVXRk9GWUJPK1FhTDRoSGp1?=
 =?utf-8?B?cmlVUzVNUG5IbklCZmwrSXJUM3N0eVpHejczZzZ5WFJCVDNHUmVheHB0b0Mz?=
 =?utf-8?B?d29BYjEyVDlZTUs2MkdhTVJxQVAzbWFFYjAzUFYycXppd1dKWHZmcmd0dnBh?=
 =?utf-8?B?QmtWclRWS0NQTFQ5YkJuRmtQYTR5ZU0zTFZkUEkvejExbWhOc01uMWszRnN2?=
 =?utf-8?B?Mnh5WnpUQ01JSDZDUzFkcG9NSDNjNW1xNFc1YnNhWkpnSWNCMGlvSE1hWGsw?=
 =?utf-8?B?c2NMTlgxYlE3cUl0aDRLQzV2VmYwV2NzMDljU1RMSzZVa2pha0QwUStlck1J?=
 =?utf-8?B?WW96YkJsYUpCeTcwMDl5NDg5OVVYS1kxQlRGL0pUbGhUaDJzOEpTOXJhWXpw?=
 =?utf-8?B?ZW5tWTRWb2JDM3pBR3h2SWgwcEREcnJNZkRNOEFCd2IxVVlocXdHZHpXRzFF?=
 =?utf-8?B?UUI4UE15ZnVxS2J2SUpsQW8zMjZhdWJRRHZXK2ZacTdpU2RLczV6a1pmTHQr?=
 =?utf-8?B?cGQzVVJYTXYvNWFsWUh4ekx1TlJpSDAvN0lHTGhOQnB0NGpRbUh4TXhuVlZS?=
 =?utf-8?B?dDBIL1c0ZHlvdGRQY2xiWnpxL256WEw4VkRrbHJFcTI4SVBJdWx5cWhpcHRX?=
 =?utf-8?Q?KYMHKd0jZ1R1N2ux8As/2muPk?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8634ac3e-3494-4231-3297-08dafd370f12
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 11:43:34.3601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Alk6A/tYQW60EMSU/yIl+VRHMEgCB4mutg1z07QSaA+FyUQ1DXxGnLONdpkYQJ6RerKO2N6OtP58SqM7PJZnKz5B/XxG5kP6IHtVmAnnZfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7648
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 23 Jan 2023 15:37:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674474219; x=1706010219;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DnNwpoG7PNB6sKCUq8k/4Aiin0pBbEO5BGilDb25CCs=;
 b=FGTsBkGIRydC1MM22fgVLCLEf2BL5f3JS/a9nPWcQPaXm6enV/ZQzUll
 1RT+DkXDkPm8QX4iZBMA5iJheFJkqT3xtKCsZ3LkaT6+3xC1MlDlG5LSS
 T+QxDvyio4ecQOMfBLg08AyRgexlV9UBeU6aBtxLdG+rvPqp4yvB8/DL7
 ezFAgsdBm2YI2CLrcaEfGnNpdBXTuYZrZ0FpwKTR54mpxn/ZdWV9VDvKi
 dg/9wzqlHW+29NeeBhNsQ3/s7TixkB8CoRrPIyjDSaHR1VUeEekehmsd1
 SQdN3bT5KcebSJfds6Y1SmOAAWl6yZrMb/QDmkH4EqvnS8aTdb1lqCxod
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FGTsBkGI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on
 setup tc qdisc
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

>On 1/11/2023 6:20 AM, Kamil Maziarz wrote:
>> From: Rafal Rogalski <rafalx.rogalski@intel.com>
>> 
>> Commit f70b9d5f4426 ("ice: check for a leaf node presence") prevents 
>> removal of VSI with leaf nodes. This is an expectation of driver 
>> action induced by FW requirements. However, this caused RDMA scheduler 
>> config removal to fail every time a qdisc was added or deleted.
>> 
>> Fix this by ignoring errors from RDMA configuration removal when qdisc 
>> are being reconfigured.
>
>Would this same issue occur [1] in this situation? Have you tested that RDMA works?
>
Yes, RDMA works. Our patch has no effect on RDMA.
[1] You mean, are the queues reallocated the same way for this problem? As for that, yes. In this case, VSI reallocation is also made.

>> Fixes: ff7e93219442 ("ice: Fix failure to re-add LAN/RDMA Tx queues")
>> Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
>> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h      | 1 +
>>   drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-
>>   drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>>   3 files changed, 5 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h 
>> b/drivers/net/ethernet/intel/ice/ice.h
>> index 2f0b604abc5e..b572d07bc126 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -306,6 +306,7 @@ enum ice_pf_state {
>>   	ICE_PHY_INIT_COMPLETE,
>>   	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
>>   	ICE_AUX_ERR_PENDING,
>> +	ICE_SETUP_TC_QDISC,
>>   	ICE_STATE_NBITS		/* must be last */
>>   };
>>   
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c 
>> b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index 22bcb414546a..0ee3acbea108 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -3448,7 +3448,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool 
>> init_vsi)
>>   
>>   	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
>>   	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
>> -	if (ret)
>> +	if (ret && !(test_bit(ICE_SETUP_TC_QDISC, pf->state) && ret == 
>> +-EBUSY))
>>   		dev_err(ice_pf_to_dev(vsi->back), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
>>   			vsi->vsi_num, ret);
>>   	ice_vsi_free_q_vectors(vsi);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c 
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index a9a7f8b52140..5ff137645f08 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -8706,6 +8706,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>>   	cur_txq = vsi->num_txq;
>>   	cur_rxq = vsi->num_rxq;
>>   
>> +	set_bit(ICE_SETUP_TC_QDISC, pf->state);
>>   	/* proceed with rebuild main VSI using correct number of queues */
>>   	ret = ice_vsi_rebuild(vsi, false);
>>   	if (ret) {
>> @@ -8716,9 +8717,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
>>   		clear_bit(ICE_RESET_FAILED, pf->state);
>>   		if (ice_vsi_rebuild(vsi, false)) {
>>   			dev_err(dev, "Rebuild of main VSI failed again\n");
>> +			clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>>   			return ret;
>>   		}
>>   	}
>> +	clear_bit(ICE_SETUP_TC_QDISC, pf->state);
>>   
>>   	vsi->all_numtc = num_tcf;
>>   	vsi->all_enatc = ena_tc_qdisc;
>
>[1]
>https://lore.kernel.org/netdev/MW5PR11MB5811E652D63BC5CC934F256DDD1C9@MW5PR11MB5811.namprd11.prod.outlook.com/
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
