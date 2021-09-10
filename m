Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAC7406579
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 03:59:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6954E4023B;
	Fri, 10 Sep 2021 01:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kb2tvth4KmMf; Fri, 10 Sep 2021 01:59:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11883400EF;
	Fri, 10 Sep 2021 01:59:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18F5E1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 01:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BCA980E15
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 01:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TsagNmRO-QT7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Sep 2021 01:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 233D380E07
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 01:59:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="220997436"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="220997436"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 18:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="514065076"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 09 Sep 2021 18:59:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 18:59:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 18:59:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 18:59:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYP2uu0m4EACktLYWmrBW/nW9W/a3z1nmV5ydTo09+vnqVNDj4ZywSWE+LLXUMkikyRv7x8NoKxwnvksqIcLC6TwFAIVqYovCV6BMP51kc5YAwZv28N7aAP8u7NVuwbec7YNqjzZjj1SDaeb0gonk/x935Gpwv/U3mgOv7scwyhVzd7Oe8BYhDaZDNkfidtk11uV212h9lzQ10rDNjMhfh3tozOkPApgEwZWU/g7ykBdq8snhCzuz9EVq98lYOYFCBfbqWz/0ywjccoaBCupaKt5LBwRy0hy2ECiQ7q90NmDtbl18YoJVMTgFArfKouq/aBi4MPhChY7wHOLeI4YvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=I+JCjMuKx1LwnuPNHELJbCFZqyyxvoEfQ2l7t5jMMDQ=;
 b=N3V41evV1iB6XxtGleUhqHKSeC/jwo00fcAF019fQMOIcojhJ5EtvZfMau8GLipfbBNAqCjCk8IG33Z/jeueE5YS4vPoxrddOwOB0JA0HDEjvbsREBAXzeaPUMt7UcyXj63TMG6n/yIhNPU6hvBb0Zaj2GkeEwvLSgXo1Xz4dASwmnzhunNpo6EuAEdv94pF3rRfYXppWwiXidb++jGOyii1KsiRROO8rixAsC86WQBdcBSPM3VVWcv+FW82QYOzNYCVOhWil0I3bqdt/uAh7QnLLEeO+NWvXvmapJDk4rR4nBMSs9wlpUenKN0ee/Jhpw2Htz7tf4zAvfDt3PQU3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+JCjMuKx1LwnuPNHELJbCFZqyyxvoEfQ2l7t5jMMDQ=;
 b=mAjcXx2Hs8zU87F3MUOnKoNrBuy6ll926JMJN9SKWtqdHYI7mkkuIgv6FOv2C13v64jeUWVwb3wWWOb39UX7yV8Z7qigRZcwsWkQ0cakgb1AwqMX/GRgXHBw8h8Nl+17LldiT6Dg5T/Fn8KL7u5c8/qG9ZBMUAHB/t92wH24fSo=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Fri, 10 Sep
 2021 01:59:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adb0:ecb3:3ddb:8d3c]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adb0:ecb3:3ddb:8d3c%5]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 01:59:02 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH 2/2] e100: fix buffer overrun in e100_get_regs
Thread-Index: AQHXpNpZDHuMi2lhZkCobv7gtjGBjauchSMA
Date: Fri, 10 Sep 2021 01:59:02 +0000
Message-ID: <12ae57c9-aee4-add8-9b82-6bbab5de1144@intel.com>
References: <20210908175237.3058574-1-jacob.e.keller@intel.com>
 <20210908175237.3058574-2-jacob.e.keller@intel.com>
In-Reply-To: <20210908175237.3058574-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1bbc273-6c5b-4628-5510-08d973fe8fee
x-ms-traffictypediagnostic: CO1PR11MB4996:
x-microsoft-antispam-prvs: <CO1PR11MB49964C10CAF0437791AE8CB9D6D69@CO1PR11MB4996.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OuXnXxp6eLczUvD1lzzjdn/vjW3jPr9RYv55dHyT7jp7tTuSaZWp3XlOS6QImGqlNwYJfZ/KeTuTfWFHVvs6U4DqYd7Hw6JlGH5UishL5A1KFhUV0ftRQ3L21FtIgznCuDEanJ08q17CO3G6QGxL5VIaRteY4Vfcvj0C8UBDbNc89+WFvHy784ImvQ9Ed3HPBcub2qJVMFbCBNkoI3Ar9anGMq+Awu3u5ZCItJvempSIsE/7NSAu3obnG8VVEEH0DmwjRWPZhpDo2Rg1y2Xs+OKAP378KZqZYgjr1dSno29LVNXjs3ZBKPTf+LH/nIG7K6b8BXED/NEF6tE5oRf0j7byBlUhoOXhj5Yzk1Zp91UiifPR0i/GQS//cJkwHs5NLJWIp6Gh3aaldj+L8mQYtroCoM23w37XxYAGF43Dm1GzKVvDnyasdwcUjBUKPYzjOiIj8uulC10L6MYB9yFWJZy+wZjPbZAxEPC+jQumdwziFEKOpto5MIkbNeqYEdYM+cev/ihaMLZgAbTgalIdUb3PxWm58fKZjH/b0N0Df40t3RL7vzTStBjOQ6hP3k4GqWPnhM7PzARsnYK197ur83NpAGqGA8Q2ApDmbB8/y00d3QHiPVmGbdpJNDzVP+J+AVa29/+ZW/sIZS5xIJ9avrT8rGrAHfAgjzobtlt+7eGx3iBig7lAjkvXkhM/HmMrJkHM1asXgiUI/HH5g1hInFfLVp7+CAd5SzDV1JFZx88maJqhCpNDbd/3t9jMBgeTbaHltlMImo8Gj3LxGGpa0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(5660300002)(4326008)(71200400001)(6512007)(66556008)(64756008)(6486002)(66446008)(66476007)(76116006)(316002)(66946007)(31686004)(478600001)(86362001)(38070700005)(38100700002)(26005)(8676002)(186003)(122000001)(31696002)(36756003)(2616005)(2906002)(53546011)(6506007)(8936002)(83380400001)(6916009)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0ZRTUREaXU2bi9ZTkhPSW8xUStpSHZrelRHZkJLdEtQNzNHYzRjOWlnTHFv?=
 =?utf-8?B?eHpPUWh1ZFozVnRyNGRwUmxIYk1uNlNVYlQ1cVVqMnlFWmVjQU1aWHdIM0F0?=
 =?utf-8?B?R0ZHbE1xL2dET3B6M29mMis2RVNXc2ZkOFdScDgrZGNZUXB0MWNvQlQzb2lC?=
 =?utf-8?B?ZGJXTkp3STQ5U3BtUTA2QVJvdUlZRnNOOXA4ZXYvdFoyNXNwTXNnSnI3MlFO?=
 =?utf-8?B?V2p3cklUUFppaFJLNnBJQUtIcWczbUN0QlBhWVJiMkU3T3IzQmhuMFFDR0dL?=
 =?utf-8?B?QU9jc0poYmtjbTYxNFBEYjdOU3NLTHY3alpRWDg5MlRVL3ZJL2UwMmF4ZFRM?=
 =?utf-8?B?VzM0M0tMOEJBNVlSZmYyT0h5V0JLU2lUTFFqSUFWYjk1QUVXMDNMY1RjdExv?=
 =?utf-8?B?Zk9JMkVza0xVbXFVOWNvaGg4czVxNmttNGZYSGlGRFF2UnlQOHdNNmtrZkR5?=
 =?utf-8?B?UDhuVndHRVIrS3FaVzMrZ0lybjhLVjU0eURvLzNMUHU3QnprdWlqL0xtT0dE?=
 =?utf-8?B?RFFZQTljWGwyTjYrNlY5WllLNkNUQ29VL0hIQWxSR3k2b29IWUtlWHFYOXNU?=
 =?utf-8?B?WUp2cXdrOWRCNGFuKzhWSXZDTnVqTVppek50WldibFpGRU9ySjVJWG12OFo2?=
 =?utf-8?B?dWU0RFQxTlVRbkovekN5UWpjVGg0SnpsVzRoQTZ4elU0clVQUVdUckQ0K1pz?=
 =?utf-8?B?RVFkUTVSdHVHT3dFR3lOZERES1ZQN0g1V0tzNExzQnBBRjRsK3ppWTJiWGU1?=
 =?utf-8?B?MzllTEJDWUdpNW80b2RrN2ZXUVRJMDNVem9QRm1FaGJ6NFJhU0FKU1hOdWZM?=
 =?utf-8?B?V2lvSlFDT2U3OUx4U01FTCtDT3pNS2FpQzBNbTFlMUVzZlRCRmFaWThrczVz?=
 =?utf-8?B?Vnk4QmRNV3NvckE0UXpmWHdnR09GT1o0aHVKUHpJVERVbEhVbkVMOWJjMGI0?=
 =?utf-8?B?TW45UDdkK2dtVnJFTEFLR1BJUUE1VWg0RjkzbXdUbFJsS3Q4UVMyam1RMm1t?=
 =?utf-8?B?ZTdyZXlCTHB5bjBoZXVBOGdzd29Ud250azNoclJUS3JEOEFmeXlaTFNid0FU?=
 =?utf-8?B?VGFJUE5HMlpZQlhnV1NLcVFreGNUZHpFVmtydFBHSkNNeDA2L1dDcjVRVCt1?=
 =?utf-8?B?UmduaFhSd3JSbUNVZENyVW9kSVlZU3RHdWNveGViVW0zUlV5NDFSVkZaa2ts?=
 =?utf-8?B?UkpIZEFFT1pndW95anlBdnNPZGJDaVBBVjZ1WHVLTGk2R2xid0VJS3J6dno1?=
 =?utf-8?B?cnFTbTlCbkI1QVNHZDRQZUFCUWdmQjVvV0RTaVZ1MUQ4TnkrOGtiMVBaeXF5?=
 =?utf-8?B?c0NZbDFKRHNVWnZmWUg1QldZNEtXalgzRG8yRURpK283ekk0MnNPNHpkSWw4?=
 =?utf-8?B?Nk5kK1FMeTBsVnIyRzFCeFRxSTRIT3NZdlJHK1lxTDMzTHpBMmFORURlUlBl?=
 =?utf-8?B?UHVJb0NpYllkNkNWbGxEMkkzQXI4d3RGNzJBYmNxUjFuUWQ3TzM2aTNhOHZ4?=
 =?utf-8?B?VytMeU1Fa0R1ZFh2a2owR21lSGVKRkw2V1NVdy9YbzhOTms0WGszaHlYeDJm?=
 =?utf-8?B?Z3B0WnhxejBKZkVtMXF1eWtnTnhzUktGVU92NmpGWWtmQWJXSTJ4T29BYnEx?=
 =?utf-8?B?eHFITzVpSXRPZXBVR2laR1UrQWVLVm5SeGJjQ0RVdS9IU2Z5czNMRFRQd09v?=
 =?utf-8?B?QktjeGk5VjRUd2w3RHFNeVdZZGVta1J5YUhqQ0JFU09tcmw5UllBZDQranNn?=
 =?utf-8?Q?iJ+dpPqSgzDJnLz0JQ=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <AC3E152E35D8474A9885CA1C47F555C6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1bbc273-6c5b-4628-5510-08d973fe8fee
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2021 01:59:02.1681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S/nUBbNfmF91ENQqVE+ELaAE1RBBTzlmrIAg8HqiHR4nhpCkmH19VA/8huXb6Ot+NI0X9h930d0Z+dk75YYV3ke2uJmY/4q1vxExpa3iqWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
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

On 9/8/2021 10:52 AM, Keller, Jacob E wrote:
> The e100_get_regs function is used to implement a simple register dump
> for the e100 device. The data is broken into a couple of MAC control
> registers, and then a series of PHY registers, followed by a memory dump
> buffer.
> 
> The total length of the register dump is defined as (1 + E100_PHY_REGS)
> * sizeof(u32) + sizeof(nic->mem->dump_buf).
> 
> The logic for filling in the PHY registers uses a convoluted inverted
> count for loop which counts from E100_PHY_REGS (0x1C) down to 0, and
> assigns the slots 1 + E100_PHY_REGS - i. The first loop iteration will
> fill in [1] and the final loop iteration will fill in [1 + 0x1C]. This
> is actually one more than the supposed number of PHY registers.
> 
> The memory dump buffer is then filled into the space at
> [2 + E100_PHY_REGS] which will cause that memcpy to assign 4 bytes past
> the total size.
> 
> The end result is that we overrun the total buffer size allocated by the
> kernel, which could lead to a panic or other issues due to memory
> corruption.
> 
> It is difficult to determine the actual total number of registers
> here. The only 8255x datasheet I could find indicates there are 28 total
> MDI registers. However, we're reading 29 here, and reading them in
> reverse!
> 
> In addition, the ethtool e100 register dump interface appears to read
> the first PHY register to determine if the device is in MDI or MDIx
> mode. This doesn't appear to be documented anywhere within the 8255x
> datasheet. I can only assume it must be in register 28 (the extra
> register we're reading here).
> 
> Lets not change any of the intended meaning of what we copy here. Just
> extend the space by 4 bytes to account for the extra register and
> continue copying the data out in the same order.
> 
> Change the E100_PHY_REGS value to be the correct total (29) so that the
> total register dump size is calculated properly. Fix the offset for
> where we copy the dump buffer so that it doesn't overrun the total size.
> 
> Re-write the for loop to use counting up instead of the convoluted
> down-counting. Correct the mdio_read offset to use the 0-based register
> offsets, but maintain the bizarre reverse ordering so that we have the
> ABI expected by applications like ethtool. This requires and additional
> subtraction of 1. It seems a bit odd but it makes the flow of assignment
> into the register buffer easier to follow.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Rerported-by: Reported-by: Felicitas Hetzelt <felicitashetzelt@gmail.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/e100.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index 588a59546d12..7ac932e95fcb 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -2437,7 +2437,7 @@ static void e100_get_drvinfo(struct net_device *netdev,
>  		sizeof(info->bus_info));
>  }
>  
> -#define E100_PHY_REGS 0x1C
> +#define E100_PHY_REGS 0x1D
>  static int e100_get_regs_len(struct net_device *netdev)
>  {
>  	struct nic *nic = netdev_priv(netdev);
> @@ -2459,13 +2459,17 @@ static void e100_get_regs(struct net_device *netdev,
>  	buff[0] = ioread8(&nic->csr->scb.cmd_hi) << 24 |
>  		ioread8(&nic->csr->scb.cmd_lo) << 16 |
>  		ioread16(&nic->csr->scb.status);
> -	for (i = E100_PHY_REGS; i >= 0; i--)
> -		buff[1 + E100_PHY_REGS - i] =
> -			mdio_read(netdev, nic->mii.phy_id, i);
> +	for (i = 0; i < E100_PHY_REGS; i++)
> +		/* Note that we read the registers in reverse order. This
> +		 * ordering is the ABI apparently used by ethtool and other
> +		 * applications.
> +		 */
> +		buff[1 + i] = mdio_read(netdev, nic->mii.phy_id,
> +					E100_PHY_REGS - 1 - i);
>  	memset(nic->mem->dump_buf, 0, sizeof(nic->mem->dump_buf));
>  	e100_exec_cb(nic, NULL, e100_dump);
>  	msleep(10);
> -	memcpy(&buff[2 + E100_PHY_REGS], nic->mem->dump_buf,
> +	memcpy(&buff[1 + E100_PHY_REGS], nic->mem->dump_buf,
>  		sizeof(nic->mem->dump_buf));
>  }
> 
I don't think this is quite right yet.... I loaded this up in QEMU with
an i82550 emulated nic. I still see a KASAN error with this applied. I'm
verifying everything again and will get back once I've got a proper fix
that doesn't trigger KASAN.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
