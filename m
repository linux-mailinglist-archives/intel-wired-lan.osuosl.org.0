Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF243A6CE4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 19:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CECB401D9;
	Mon, 14 Jun 2021 17:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7Rwdi0zctuE; Mon, 14 Jun 2021 17:15:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EC5B40191;
	Mon, 14 Jun 2021 17:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 331621BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 17:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E2F740191
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 17:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5SP8C0MRC6Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 17:15:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B7D4400C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 17:15:46 +0000 (UTC)
IronPort-SDR: ZAkTohuhKZK6wxMkXC6jCjCdmNKXBuA+iwtkE55lP5csldmeR+AA7pekmnBt6PNNj2u0ViPIX3
 p7qRNroYd7Vw==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="227303924"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="227303924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 10:15:23 -0700
IronPort-SDR: 0+dZfhMi6+Bzl/xg0SABfUysE3GGTvd0z0fg/VXKbouuhxqv9MX/M7UaK0NnZtRD8N83QIBEYE
 y5NdN0SHkOCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="449961518"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Jun 2021 10:15:23 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 14 Jun 2021 10:15:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 14 Jun 2021 10:15:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 14 Jun 2021 10:15:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXCNci3L1MMHRvBXfQbse70AsHDjPiigV7RK+LNoST00x1Yt30yL8mYLyofX2CKYm89P05amTZbn2+Tv6bHyVwiDYX0H23/lJclfIMzR1kECl6j239pTctqxUUX831YeaqY0YgwsMh4RmxtRhLeqqWClyEHCiXlii9aOcgoWbTaszBMlw9Po7BKYhlEZ2zij8swJ6XNCDZ8Ipy+LDIuQZBGzkoScw+d+bo1nnfYRRdxHyxW2KV6Z0YPhD38ckTFHJK8fk4PwTPlVflvqw4D76o/Kyi7I+EkRd/hqucGsw1qQe0qnDrAzM6m1zIfBifi/WvOZ4drXS2md0SAhsEQwYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3xjtleI2fCZinGzQoPVqzu0k9N+MdC6v26N/RB3nXSM=;
 b=Lq4WobH7EDO2yZTG2dIm0SrscKADiMNF02sj4TNDpXvE8JjlDnpkjrBVerLo7QdFJGM2K96uBXBZZV34wgsgp3CScRmTneUGxnIFZ9NNt0fLKwn4sYQQUN58KiA1ROvPiL3uetoImPMsiOFGQBgwWj9O1wMIEY5vTW3jfbp1G67va9FmrYs8Z8TO0FDRVH0/BqZdG4JoMVsSQazAMCwS+Ef8Q6V895pUVqN7w56+I8yxwrVAVa6EWPmvR5wotyh3dSElR6hOoF4Buaa2GbF/4xSJMBNCwNA9CH4PG/3Ngp+52d6luIlW0wEUBCnvoqIV3rDE6jZCYelQJpOYtqHHWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3xjtleI2fCZinGzQoPVqzu0k9N+MdC6v26N/RB3nXSM=;
 b=cIEeZ1Nc8D9qFHYLdD6+7bJIIH9i5bhGF445k6PpVZwpzJjar6mlT7dLiB27dvJeplx81Ru+Ta05wKsEWqVN7TCm/Mywz7DnKx8k6ky+rv8EjVkTg+pIpMZ4Elo9KrBcsSbi4CdYMoys7VsowRji6uUVzp67enbpOf7VMZU9vSk=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4843.namprd11.prod.outlook.com (2603:10b6:806:fb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Mon, 14 Jun
 2021 17:15:20 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 17:15:20 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] ice: add support for auxiliary input/output pins
Thread-Index: AQHXXW5TVfrEsQVurUCCJqU5k/aeeKsTx5qA
Date: Mon, 14 Jun 2021 17:15:20 +0000
Message-ID: <81762743e833402ca3c959050862cbdbacf47e86.camel@intel.com>
References: <20210609202937.1135836-1-jacob.e.keller@intel.com>
In-Reply-To: <20210609202937.1135836-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 719798a8-1a24-4634-f34a-08d92f57fd4c
x-ms-traffictypediagnostic: SA2PR11MB4843:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB484379153E3D15637D6E4227C6319@SA2PR11MB4843.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1hqBNivu37gPtpG5HGGHqe90CqySfZBkpCnAf6Ec2Z+OTQL2r5LEb2ok1I6386fzUr/HWb1MbxedB7/PvyWEQeDJpWWAvAy8TLjYjfPWKH+2gVucuAlzpB5sqtjtFeDxNVvDXqd9Gf5lTDF1hCWJAGJO9hmCoxoHSeJ7imRXRivIiI26Z47Gt3igMOHNySLgTMlLQYp+tsYgRClbZEVaLTkCmP9C0mD1UILdZteRU4wqEcHyvLIsdoadvY5CXW1MQZdEdG9djg7Cwbvhwe+4FpHIk8s1nPwy1kwayc89d8/wHEh3lx48nAi5iWOYIi2Y0COTSBUGwDBeTHGQycvIhuS45PbgwTFJ84exQ68xwdaR/KtOXuXX/5CBx8ua3YGT/PQBDrEdZp6IdbI2S9nB/aMNaSq2uHA5MAid7Nerkz8Eog8WvY/aWGNfnG1fV92SSaSkCdUVcOXUbWIryTml2UF5HHnjPIYfT4wfiwhVltyoePudgGwpj9FXrqyrZPeeVvOYeIHf6/Ps46hXHjwzjKPUjcx84q4wLLpumnkEA56f0tJNuuIPd8JjjColRYWrETrSs/S60L3BnoZH/iMMzVqmn3c8VadjSr+J6N8MNLk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(366004)(136003)(39860400002)(71200400001)(6512007)(6506007)(2906002)(8936002)(107886003)(478600001)(83380400001)(4326008)(5660300002)(36756003)(8676002)(110136005)(122000001)(66476007)(66446008)(66946007)(6486002)(76116006)(64756008)(186003)(66556008)(86362001)(2616005)(26005)(91956017)(316002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cyt0U2RtejZKWlJCdVB2ZzlEaVJDVnUrNmdzeUVSVXVzL1ArVnU3dUxDbXFz?=
 =?utf-8?B?ejdBaCtTSjArTHJSeWpKdFpxWkFBQ3JSa3dISXV5RHNRMGRQTWxYNWkzOFVD?=
 =?utf-8?B?NjhjRmdMR2hPd09CYjRWcjRDSGFlc0FOYkk1L05uTzRyVDA1SGh6bC9BNG9I?=
 =?utf-8?B?NHBpNUd4ODFvc1JpcFFaVjR3MmU2TUpnMUV2RGIyWklqamJ4YTRBYXlUc1VZ?=
 =?utf-8?B?Um1aMllMN0x5THUwVUxTQ2JtY1g2dzhjRWZBdDc4aXBTdHB1cVhXNWRyMlBy?=
 =?utf-8?B?L2VLcitIcE9CaFlmT21KeFcxYzRhY2V4bGI1bkozVGpMSGhjSUxXNml3aXZW?=
 =?utf-8?B?ZDNqdEcxK0lKMEJoMUNZeVM1bXhPYXMrOU5jOVNVSzdrUWwwQlo3WWpBVWNs?=
 =?utf-8?B?V1A4R0srTVovMFZ2WDZjQ2syLzdkZ2VDcjRIdGZVQUE0WFlJNjdxbGN2azFC?=
 =?utf-8?B?Y0YzbUxBeXltWjhMNUd0TUtTZjJvSXI0djRpZmNjUHNyQlEyci93R29vc2xN?=
 =?utf-8?B?dmZnbWRINWJvZ2NVb2ovSnBkMUFmOXpYcXpNb1dKenZ0NFlqM2UyU29EZUR4?=
 =?utf-8?B?UWJrY2ZLWENiTE1uZ2hKTlV0V3B1UDJZMGNObGpjSXhKdFpPUm9xQVEvYmZp?=
 =?utf-8?B?VGNXZkphZXB6YmNRUU14Q1B6S0dnOHdLaGM3MG9QRzR6SWtkZ0ZCLzUxc0x4?=
 =?utf-8?B?VXVHOTNFbGhNMHFRUk9aUGRUWmRhd1ZocWNpWWhQWnFmTnNOR1VSVHRBZHdQ?=
 =?utf-8?B?VGRUeWFBN1hYVVE3SUlQWEpXWkFLVXFJd20xeFJ5SHZaaFlvaFNqU2NUa3Fu?=
 =?utf-8?B?RjMxMEkzaVNmakw2YWI1aWc1ZHhqZzFwejZYeDArSThrTGxZaW5LNkpraDRo?=
 =?utf-8?B?SVRscDJERC80TTB6bkwvMnhqTHN4QjZ0TWhwTjc0b0ZCMEI1R1JxK0QxTmtG?=
 =?utf-8?B?ellFZW9PeTJhckNoSGxrZENTTUpKWjVEYitlSFdrbHQ0WjRpa2piZTEvbW1J?=
 =?utf-8?B?YUdlVE9LT1g2UjVuZXVHNTFJWmk1cjhBeHBVbzhQdU5icGowVkFPaUNaOFdJ?=
 =?utf-8?B?NFRQTjJMb3k0SlVEYTRqcnJxZlMwUFlsM2lweHZZVjZKMnlXMHpPY3VQL0oy?=
 =?utf-8?B?VDRoMjd1WFVlTnQ4OUZhbW1aTzAxUlNSRTJhd0pCaytzQ3ZaSDJ4SFdCU3BE?=
 =?utf-8?B?bE9MT1JKWDVsVzdFQi9jR2hUeHV2eDllSWVDeVpGUTk5U3VWZ2pVNmswWUdM?=
 =?utf-8?B?SjJzRU5OWEVHN1JqWDRkOEgzL1hZQzdhbG16ekFvbFIxbjRvRFpBQVZqV25p?=
 =?utf-8?B?OW9EZEgrTWJOaFJxcFhLcVlCK3JiWS9xOG8rNzYvSDNPQzkrZ29SQnZDNVRV?=
 =?utf-8?B?V3h1OHZTTzdvQ0ZHN29mWE02Nlh4WXVLOHE5a2x2aFpreEUwZWFmZi9HUlUy?=
 =?utf-8?B?OTFLdnNJMGk2eVdHVS9iYmpnK2NCZ3ozNmVwY3VKeWZycS9vOGZLdys0aVdt?=
 =?utf-8?B?cUhhTGJ3bU5NLzhBRUxHUEVGYmwyTmNYK085YmN5Z3hFRlI1S25IU3hkNlhr?=
 =?utf-8?B?cHhUNjl0bnhsdzFYWm1GNktXbTdwaXZRYWdCT2o3MUd1dzMxcGlSNS8rc1lu?=
 =?utf-8?B?clZKUG84WVZVQzJGcitxQzNqNG02emxyUlBrQ3llSVNwSk13QzBpbjRQdjRW?=
 =?utf-8?B?TExwR2lqb3Nyd1hGWXd1WUgvQWpJb0dBTGZmOTA4VGdPTFRBMjZldDRRNEpy?=
 =?utf-8?Q?7WCEg6WZnn7rBEkXu8HkA8s6FOaJY516Kupds0X?=
Content-ID: <5017D7F715B40840B059C724C6185AC4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 719798a8-1a24-4634-f34a-08d92f57fd4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 17:15:20.6495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w8zSMCJSEIsPEG6IR+Xzq3i9nicgwqxoamH49H16fOzfXSyyXd4RbDmCS1nEmy+o+1xWkuuQ03uwho8LwC57s7E5UgEhTYvYbWV/4HJvXEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4843
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: add support for auxiliary
 input/output pins
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-06-09 at 13:29 -0700, Jacob Keller wrote:
> From: Maciej Machnikowski <maciej.machnikowski@intel.com>
> 
> The E810 device supports programmable pins for enabling both input
> and
> output events related to the PTP hardware clock. This includes both
> output signals with programmable period, as well as timestamping of
> events on input pins.
> 
> Add support for enabling these using the CONFIG_PTP_1588_CLOCK
> interface.
> 
> This allows programming the software defined pins to take advantage
> of
> the hardware clock features.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---

I'm seeing this for a 32bit build:

> make[2]: *** Deleting file 'modules-only.symvers'
> ERROR: modpost: "__udivdi3" [drivers/net/ethernet/intel/ice/ice.ko]
undefined!
> ERROR: modpost: "__umoddi3" [drivers/net/ethernet/intel/ice/ice.ko]
undefined!
> make[2]: *** [../scripts/Makefile.modpost:150: modules-only.symvers]
Error 1
> make[1]: *** [/next-queue/Makefile:1754: modules] Error 2
> make: *** [Makefile:215: __sub-make] Error 2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
