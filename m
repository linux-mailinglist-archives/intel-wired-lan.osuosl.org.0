Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDA34066EA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 07:51:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0227849E0;
	Fri, 10 Sep 2021 05:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyhyCNKur_Mr; Fri, 10 Sep 2021 05:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5B6D849D1;
	Fri, 10 Sep 2021 05:51:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE1EA1BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 05:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7B1940165
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 05:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjoKekdP6GU9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Sep 2021 05:51:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C0AF400EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 05:51:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="306565549"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="306565549"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 22:51:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="549027410"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 09 Sep 2021 22:51:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 22:51:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 22:51:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 22:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AFFiSraPXnD2NkTgWD4tScxACZ5VyCojIgAsrV57KWs7vMMTr4r3AO3hszHxUDKVCLrbeWGUWHoz4zNf+BInZSyUoEAl+5p8iLH9P8YrfhrWiEDWiLV29++L+CiEY3T2M1rhtz0CBcLCG+DxviC9ziiF1pc7Aay/+HaQORsimWAWDihNorwcjEy2s3fhzFzVjlcv+0CoxsgzM+a0maeA/Vp0FossUgnVXso2hSjLwXyQNT0ky5KHQj1PwE5W7Vv/zTLrhy2GzajdEEl0N8pox/l+0CsKdqzn+kI+OH6W7eOSI46T46o9prBXqXO6RyZMDq7zw5U5DEaxxxZjvFy5zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=/NkVKczTcHasS2C9TEzGpV1DaRah+Z79nc8He98vJQY=;
 b=AWOTPVOgrVS3KC6ia8lWyphuFFvPMHNYIO0W3ZIjoQqQjuQIUeO0vWkvvva74/Kqa28QJNigux5oR3Ljr+4ZqRq52ePsQ5Frgl+32nnc6Ps5q4jaNgQPWHeb+0/7rdIIqtSetTR3B6yzXFoqO2evkEML5WtnsplIOZVAA+S5dRjX7ORz4MBa97BEZj0TIwdGQ+JHddq0oNgxYoZMQ6BSiKWaQZySoqYpTw6GQIWkm4ioyCRCRIzrONFKUl0RJ2DKiYPTSTMzGqRaI14ShESMVz+PG5y0cXRpCcrMBnlUf4Y3KYxi6HgCzg7LABijjKWjZL1pEbgOrJ0DB/L0Pa8+og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/NkVKczTcHasS2C9TEzGpV1DaRah+Z79nc8He98vJQY=;
 b=mBUAOAVSnJPsRu4SNbJnJuGTAF7aTINSU3u13aoLgyj4nNV5k5/MXNSE6nriHpyJmSSBUFENaVEUfvYUlEvhGXBjTqloRmo6T3NH+WhHtovCodhhFP9oRWxvzOm+Yz/8wgNHBkISWtrcQFbsiRbj+VPPX2cZadbSo8DxPoV946w=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB0077.namprd11.prod.outlook.com (2603:10b6:301:61::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 05:51:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adb0:ecb3:3ddb:8d3c]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adb0:ecb3:3ddb:8d3c%5]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 05:51:08 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH 2/2] e100: fix buffer overrun in e100_get_regs
Thread-Index: AQHXpNpZDHuMi2lhZkCobv7gtjGBjauchSMAgABA2QA=
Date: Fri, 10 Sep 2021 05:51:08 +0000
Message-ID: <97e3e93d-e352-9d43-dbb0-bab6372defd8@intel.com>
References: <20210908175237.3058574-1-jacob.e.keller@intel.com>
 <20210908175237.3058574-2-jacob.e.keller@intel.com>
 <12ae57c9-aee4-add8-9b82-6bbab5de1144@intel.com>
In-Reply-To: <12ae57c9-aee4-add8-9b82-6bbab5de1144@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc42688a-293b-4b44-5cf5-08d9741efc59
x-ms-traffictypediagnostic: MWHPR11MB0077:
x-microsoft-antispam-prvs: <MWHPR11MB00771CDBC3BD65DFD95D8510D6D69@MWHPR11MB0077.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: crTtkCgdQRtYxClTroOsGCdJ19KyJ5rnG2gST4f/F77UWa8DlItKhRmVpkeOy1b6vsCj9f1kEy4Li34ZELzgZq59402xARKXfHTN/4DnkE9FklhTd7QrM001HXMSZ0GFnoeoboYosLJdlytcIb3W6IdbTVOpP2K7/CKDmRoeXoMJ62lVTLmbnTG2ugSraE4jtH3tUmUWJkUSMWd/TT2P0fnKDTgPStBkkOCt7AIuxVdiSAIpeVaVcxkKdedEN2nS8WrltOzQCJUR3Re/CKCO5eHUoVsdH9TrTE5ixKu6kbq4BDfZ47NF0Cueou5WyIliTey1xd3EWx/XeZBGryL4JEvcbe6EJ2L1t0ORVt1mKwfUx3AcqecVl7cxvzq9HCbwDfxYdmTN4v5JlAubJCsnVxKCD580np2Y7Fu+tyAmabmVpo/znDTU8JABY9rQ2aS2La7LcTTKlkjX6ZD4cUG9I/N3ABVe0xWPhoxuXzmC783RPPG7kAQukx0KaPeX1OnKMnhB9uKEtsEG9zEfErGAG9guJ2tV2Ngddc6Uqzmeda6COvWR6ye4bGY9EghNSUz/xlRUR7b2n+DjFFn/66ile1tFHflx+AjSOhQIQfa/9SmouFHjF5WcbYOrgpL84Ppi1BXx9YWHHgqEEcG87cme9lCjMDT6qW4fB+Y4OKW92u0zYwVkrRu+QFcikyS6At09IBM1ZN1+n5wHY1H/A5ANQAL1Tk+m8xE4X9+nnv1HL+OT+X6jXrhEOguDhymPOpI57D4K8YHD0QIJ+yqaf6XfDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(6916009)(76116006)(5660300002)(478600001)(66446008)(36756003)(86362001)(66556008)(6486002)(71200400001)(186003)(53546011)(8936002)(122000001)(38100700002)(31686004)(316002)(2906002)(66476007)(31696002)(26005)(83380400001)(38070700005)(2616005)(6506007)(66946007)(8676002)(6512007)(4326008)(64756008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RStOdTNJWUhHd0FTMzlMckRZUzZHMzJaNW1STHF1SmZrR3lGWFg3MXpJcW8z?=
 =?utf-8?B?Yk8xeVlzM0R1ZW55S1BjMDlMdDFvdFdHeXpjaEJsdEozTzlrZTZjaS9KNnNG?=
 =?utf-8?B?N1dZZFpZejBCVTF3OWw3VlBsY2IwWDRqNzNXTU04SFMwaWFWY0R0ZUoxdjgv?=
 =?utf-8?B?a2tHR1dPY2F0VmJ2aG9DV2pMRmJ6WVVibFcycFVWZm05ZUJMVXA1RnMwMmFm?=
 =?utf-8?B?ZDFYUk92WnlsNTY5YmNOQngwQ1Nqams5VnZRUjlXQzB6VTQvVHBEQkZYZUgz?=
 =?utf-8?B?VGRMa1JtMXRPeWZNbU5kZ282S2RWNDloR3BHekpuQ2Yvb296ek5XZ0ljNDU3?=
 =?utf-8?B?eW5PSE1PWUViSGNBc3dYdTNWeFlSMFVyRE1PcG9xVUZmd1BVSHBFaXpTbTU2?=
 =?utf-8?B?N3dHZmd4VDhqTlF0bWVnd21jRXVVZmk1SmwzOE1YOWVIeDhxcWNBQldjQ0FG?=
 =?utf-8?B?TFNvKzBxWFA1L21ILzNxSWtpK0pZVzJWRjZSNTBIYjJXTHY4cnpzVkVaNC9S?=
 =?utf-8?B?ZFR4UTM3NGlrUlllT1cwb2Y2MzFGeGlOa0M2cGNYdk1EOEhDT1dzNVE3SW8v?=
 =?utf-8?B?VnZrRnlja0dDRWt3QTF5Z0ZiYnVUc1pyeEZWQnczdTlWRE5rWHFta1Zxalhv?=
 =?utf-8?B?eE9ZdTdrZW9QeGJJcWVqamxwc3pMMDBLMDUvbU5hZTcrcVpMSjlQc0JiZm0z?=
 =?utf-8?B?ZDlYdlBvUVVXMGwxaVg4SFN6dFEyR3g4TlJkdFZqaFNYKzhsUWVxZ2RRam1R?=
 =?utf-8?B?bXFrRC8zRVNEeVViVE1nbCtpN1J3NnJNZVl3K2hJTVZyckIyb25VSW50VGlV?=
 =?utf-8?B?d2ZHTFZaam04eWhxdSs0dFpqVkFYaGIzRGV5QUVBVG5qamRXaHVzK1dCbjlJ?=
 =?utf-8?B?aVRSOXNkNUUrd0pnQzdtMjZTM3c5RDI3eExnM1pyYWNoWjJPNzNTV3VyU01B?=
 =?utf-8?B?eWk5d2NoNHVPUUpKelBxanlpWGp6dGFINTYvdkdkSmVXRkUzOUdBU2F6aUVP?=
 =?utf-8?B?cWVJbHNFeUlJZDJNc0pvdzgvR3F6OXZrNjVtUWd6RXlyZjBJUzN4ZkZST3dr?=
 =?utf-8?B?MmVVR0dTeWJiTk5yTUkyZ1cvSDhiVlVDSUg2b2NBTUxoYjhZZzl0Y3hlTnlN?=
 =?utf-8?B?dVk4OEYrQ1MxZGRnaEd5THUveVZYcTRXUWF2OGVVcnh1a2xVd0pld21tbWMx?=
 =?utf-8?B?R2FDQWtucUU1Smc5RW9OUzF2OHNoTDVzN01TUndDN3YyTXFPUG4vZUFjSmtW?=
 =?utf-8?B?SVY5UlJsMW12dGFaYnkvR0FDKytndkNOb09kYTZybVY3SWZYSTlSY21Vc2NE?=
 =?utf-8?B?S0tRbm1sbjNoY3ZMa21tUUdZRy96MUJJc1lQSGZKTUpYM3hyaDFXWWxoaGVJ?=
 =?utf-8?B?UG5CVFplV0FWVGhQTEZsQmNheTl6VlRSS0ppMUdxZUVlNzFTRExoNk42NjRh?=
 =?utf-8?B?VGZ3V2FUY0pSTkc1UlFScHJGQjg2MnpOWTBMQkVDOGJqTnkyK3ErNVBPYnUx?=
 =?utf-8?B?MWxSTWJONEZIR2ZPcUVQYktaL2swZi9tTHBqT1UyZ3VKVnN5TjR2M3hvYXJK?=
 =?utf-8?B?NndZQjlCVG9QUkppV0MxUkFlb1dkamIxU1RwVnU3bmMwbDl4ZXZoeVZIWW1B?=
 =?utf-8?B?bTRSS08yanZYbVRjWmMzb3AzZmUrT2RNL3NPOUtpb25TTE1UUTlTMnd6L0tx?=
 =?utf-8?B?eEdNY0dzRk13TUkwZ1ZCYVVMUjNqSFd6T2Q3RC9DVUlWOTV2UmE3RmlnSXdY?=
 =?utf-8?Q?9QqiCmlPSm7fPU67m4=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <C6AC9CCCBE701148BF751398F80644A3@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc42688a-293b-4b44-5cf5-08d9741efc59
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2021 05:51:08.0285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dgCN65fAziobR55bcDWn873FgT/Z2e10gULswovsUXQro87TLIaNAbRn3BSwNwjKdwNCtYzzMHQScGARCGKgHnMZnD6Q2HkuVUBjtZtMmeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2] e100: fix buffer overrun in
 e100_get_regs
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
Cc: "Reported-by : Felicitas Hetzelt" <felicitashetzelt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/9/2021 6:59 PM, Keller, Jacob E wrote:
> On 9/8/2021 10:52 AM, Keller, Jacob E wrote:
>> The e100_get_regs function is used to implement a simple register dump
>> for the e100 device. The data is broken into a couple of MAC control
>> registers, and then a series of PHY registers, followed by a memory dump
>> buffer.
>>
>> The total length of the register dump is defined as (1 + E100_PHY_REGS)
>> * sizeof(u32) + sizeof(nic->mem->dump_buf).
>>
>> The logic for filling in the PHY registers uses a convoluted inverted
>> count for loop which counts from E100_PHY_REGS (0x1C) down to 0, and
>> assigns the slots 1 + E100_PHY_REGS - i. The first loop iteration will
>> fill in [1] and the final loop iteration will fill in [1 + 0x1C]. This
>> is actually one more than the supposed number of PHY registers.
>>
>> The memory dump buffer is then filled into the space at
>> [2 + E100_PHY_REGS] which will cause that memcpy to assign 4 bytes past
>> the total size.
>>
>> The end result is that we overrun the total buffer size allocated by the
>> kernel, which could lead to a panic or other issues due to memory
>> corruption.
>>
>> It is difficult to determine the actual total number of registers
>> here. The only 8255x datasheet I could find indicates there are 28 total
>> MDI registers. However, we're reading 29 here, and reading them in
>> reverse!
>>
>> In addition, the ethtool e100 register dump interface appears to read
>> the first PHY register to determine if the device is in MDI or MDIx
>> mode. This doesn't appear to be documented anywhere within the 8255x
>> datasheet. I can only assume it must be in register 28 (the extra
>> register we're reading here).
>>
>> Lets not change any of the intended meaning of what we copy here. Just
>> extend the space by 4 bytes to account for the extra register and
>> continue copying the data out in the same order.
>>
>> Change the E100_PHY_REGS value to be the correct total (29) so that the
>> total register dump size is calculated properly. Fix the offset for
>> where we copy the dump buffer so that it doesn't overrun the total size.
>>
>> Re-write the for loop to use counting up instead of the convoluted
>> down-counting. Correct the mdio_read offset to use the 0-based register
>> offsets, but maintain the bizarre reverse ordering so that we have the
>> ABI expected by applications like ethtool. This requires and additional
>> subtraction of 1. It seems a bit odd but it makes the flow of assignment
>> into the register buffer easier to follow.
>>
>> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>> Rerported-by: Reported-by: Felicitas Hetzelt <felicitashetzelt@gmail.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>  drivers/net/ethernet/intel/e100.c | 14 +++++++++-----
>>  1 file changed, 9 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
>> index 588a59546d12..7ac932e95fcb 100644
>> --- a/drivers/net/ethernet/intel/e100.c
>> +++ b/drivers/net/ethernet/intel/e100.c
>> @@ -2437,7 +2437,7 @@ static void e100_get_drvinfo(struct net_device *netdev,
>>  		sizeof(info->bus_info));
>>  }
>>  
>> -#define E100_PHY_REGS 0x1C
>> +#define E100_PHY_REGS 0x1D
>>  static int e100_get_regs_len(struct net_device *netdev)
>>  {
>>  	struct nic *nic = netdev_priv(netdev);
>> @@ -2459,13 +2459,17 @@ static void e100_get_regs(struct net_device *netdev,
>>  	buff[0] = ioread8(&nic->csr->scb.cmd_hi) << 24 |
>>  		ioread8(&nic->csr->scb.cmd_lo) << 16 |
>>  		ioread16(&nic->csr->scb.status);
>> -	for (i = E100_PHY_REGS; i >= 0; i--)
>> -		buff[1 + E100_PHY_REGS - i] =
>> -			mdio_read(netdev, nic->mii.phy_id, i);
>> +	for (i = 0; i < E100_PHY_REGS; i++)
>> +		/* Note that we read the registers in reverse order. This
>> +		 * ordering is the ABI apparently used by ethtool and other
>> +		 * applications.
>> +		 */
>> +		buff[1 + i] = mdio_read(netdev, nic->mii.phy_id,
>> +					E100_PHY_REGS - 1 - i);
>>  	memset(nic->mem->dump_buf, 0, sizeof(nic->mem->dump_buf));
>>  	e100_exec_cb(nic, NULL, e100_dump);
>>  	msleep(10);
>> -	memcpy(&buff[2 + E100_PHY_REGS], nic->mem->dump_buf,
>> +	memcpy(&buff[1 + E100_PHY_REGS], nic->mem->dump_buf,
>>  		sizeof(nic->mem->dump_buf));
>>  }
>>
> I don't think this is quite right yet.... I loaded this up in QEMU with
> an i82550 emulated nic. I still see a KASAN error with this applied. I'm
> verifying everything again and will get back once I've got a proper fix
> that doesn't trigger KASAN.
> 
> Thanks,
> Jake
> 

I re-ran a build and made absolutely sure I got the right driver
installed. Once I did that the KASAN warnings went away. I suspect that
the build I was testing with the above comment was somehow not complete
or wasn't saved right.

With that being said, I can confidently say this is correct at least as
far as a simulation from qemu-kvm with the i82550 is concerned.

A bit odd maybe, but...

Tested-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
