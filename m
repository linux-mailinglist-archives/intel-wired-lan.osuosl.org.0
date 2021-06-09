Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB743A18A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 17:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F04483C25;
	Wed,  9 Jun 2021 15:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TNgFj3ioa3W5; Wed,  9 Jun 2021 15:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6675282CDD;
	Wed,  9 Jun 2021 15:09:57 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 997F41BF616
 for <intel-wired-lan@osuosl.org>; Wed,  9 Jun 2021 15:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87E31401D9
 for <intel-wired-lan@osuosl.org>; Wed,  9 Jun 2021 15:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xRab50ih4ynS for <intel-wired-lan@osuosl.org>;
 Wed,  9 Jun 2021 15:09:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 596D44018A
 for <intel-wired-lan@osuosl.org>; Wed,  9 Jun 2021 15:09:52 +0000 (UTC)
IronPort-SDR: tnI7oTy+7MhQ8S++jT6OerdNFreZc6RuJIwV2cl2fglWcbTIRw2O01vpv8327dN6+Zv96btLCH
 vzyOlg0mOadg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="266244852"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="266244852"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 08:09:50 -0700
IronPort-SDR: PUzMnGdc6VLC9Wm3+UGGrbLDiqAqL4YLb4g1PDoX+pFtPC9S+EVvSSG0kZjVWl1NAkefW7qGgC
 T7jUX9S6o9tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="476984153"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Jun 2021 08:09:50 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 08:09:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 9 Jun 2021 08:09:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 9 Jun 2021 08:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a3qKZK/cO25C1LWUbyoEB7vPf1cBCYfn+vteY57osT8T0pU+hJwPviU6MZucHKHNMcuwkBDeQx0llp5//aYlwNmmYcDm6nzphfZBy0xbh26lqf+0qThCwo8Q/FwEu3I+S0KaI1J79Q5mqrNMcwcm6+fRXm9lmXRm5fRn0o2PwgRm/x57BPZMctDx9Jt6Ox7Ta9RPMXlQ2BVyvAfpj3WM2g8E7h/IuiTPsVEnrn3VtFHwQ4BbpA8+W8zk+uPvmfUhzIWHPr1oZ/EKNFR9fkvuFDZATTWFRMPvGisiarw6e2DRltRngITtYEBk/oCD3BH3+ihNE5+4WiFtf3A3C0/DdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sX2qwl0By2W9f34Or55KUVq2a35vxIrMbT+3/mFmw6Q=;
 b=dZHbUd64AAr3PvuTPOUZlAogWjqKM0kt0PSFStCWZYKEp1BRqaszs39r1KseqgqZFKru5l7TlDSQSt1yERVfCXL3J4j/sMxU7s2sTaOPGlEN/Km8CVy10gV8OIxSgejfheJpumGc3rlybN8yt96+DDpxN/hyfN86rwOKig4VsDLmDNuFmcIirCSWHkQ1zOqG5stj2GlhXwEPYFs+r0SUbdazr+Qcv1axLO0aHWGT3UH17YjFmSYGiRNEawm7OjzQ139t5BPuV3H1kZaU1+ISVbsRX0sGEV7H5yOnlzQDAjoV/nrYVly1RihJ7eZh7I6We0neQ7e/yTEUH+E0Egbl3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sX2qwl0By2W9f34Or55KUVq2a35vxIrMbT+3/mFmw6Q=;
 b=pXIb/ecTjBBEpIn+uM7pAJEf0KnK7S95+2QrbqyWEe2UbBhoL4z2LxHoLwV4LGLBoKbwMrwgRvq2+3wKpD4YWghSe1VUH4G2PmZEO2updXFNRxAd3IF+/5IUcKvZXTZgE8/1SIIEjyTYkCbOFmsicDvlBfUkuII/QAUxRMA6tsw=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BYAPR11MB3352.namprd11.prod.outlook.com (2603:10b6:a03:1d::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.21; Wed, 9 Jun
 2021 15:09:49 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::582b:fb8a:1c12:716e]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::582b:fb8a:1c12:716e%7]) with mapi id 15.20.4195.030; Wed, 9 Jun 2021
 15:09:49 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "mantykuma@gmail.com" <mantykuma@gmail.com>
Thread-Topic: [Intel-wired-lan] igb: Random NIC down for 3-4 seconds and then
 UP
Thread-Index: AQHXW6RxfXUjQOAImkaLbFYcvlj3yqsKwhmAgAEIizA=
Date: Wed, 9 Jun 2021 15:09:48 +0000
Message-ID: <BYAPR11MB3606E7E70D2E3B2E58BD06CDEF369@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAB6A5-B6kH6hiOJHZ-8JY0H8PqXeab07vUGMdBvfCgGPR8QzBw@mail.gmail.com>
 <6b36112fc1548f06a737bc7a1febaac06f799b6a.camel@intel.com>
In-Reply-To: <6b36112fc1548f06a737bc7a1febaac06f799b6a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.100.41
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2602:61:73ac:e600:2180:1db3:ef24:bc81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1aef23bd-e2c5-4472-0a60-08d92b58a003
x-ms-traffictypediagnostic: BYAPR11MB3352:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB33529F86AAB870B6974A9220EF369@BYAPR11MB3352.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ssmwQp2d0XqsxPCoMWi1uuozipsxpV+CB7y3rM4pEn3EDhdIqb+bj8++kb2Op7nlL4aFCyms2YB3jkdGRzjnRhkF73K8m2c6vl7eP8gD9zds767yPfIOcxqQUNaEq0iLC+WZEYfypqbiPt/9tx/9o4l8eEo+dPR7QrL6Kq9j3KdnucePQWHHRJHJit6F7q1jq4H3WwC7QNkvUy5sXTUOhX1dZ3305CIBpNLxnepP+qQBKE9ZqWYcKD80sv5JS39SqDonP689Nhmh7jnJJpynUIP235e/lztj2ttvZsdQzzuw+4qabb5zUwxzTMN/mqeaZbhrF7JgZ5p7rAgJysbcOe/PGVJImU2DJvfhKHLk0LCJbsv2Jfm6c19gLuXnEWEnxQwqItmE9miu+pmaOK2qbsyZBrlYFtOyLLFqwlTqpdJUI9pLcoBa8GFcHvYWyR2xphz0mPP1/rgv4fhmsRsjGpuzd3pb53UYSaD6UbhpCgsrCBRKCx+5AiPVcFqtu7vZJKNVKEdjnsU4LUEQC2xP9sdM/AO2GZb/2i0bQmeYipay818fJC22J8tYOqUjMLfgxXNSjUYn9WWk9tjg4WWsMT3Oim+3Binrw0BxMTXzzzfDXGVRniThaUY8f3rPeV31ao0TCRlOVOQ16hqMp1u9TAhcagSJP83AO7eHMxbUf6B6JPU7GViQQZN/7w+f3Y67/C1x6E5TfUaBMCs5cOjsdH/TyntgOrTtqKdYKV/sWZc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(376002)(136003)(366004)(39860400002)(966005)(122000001)(478600001)(52536014)(186003)(86362001)(38100700002)(53546011)(64756008)(2906002)(66556008)(66446008)(6506007)(7696005)(71200400001)(8676002)(66946007)(316002)(76116006)(83380400001)(55016002)(8936002)(5660300002)(110136005)(9686003)(33656002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zhvdBlNvSeQveDQTHMlfgpdIxiXjZJMtRmHn5ctz7BgzJLkoTXPtx/raEWYv?=
 =?us-ascii?Q?0DnzYM4uxnpSzZ54i3uFlDTVcqDkFQ6lVnCj4kovU3O+B1d+VLF5cI+KlG8G?=
 =?us-ascii?Q?nf/dPAaclc8/ngIq65NC6du85wWk+HIXoP1RWoyjhCTwXH5ILNXIWGGw+pb2?=
 =?us-ascii?Q?13fJtKwZYSpoDS+UkPzGhojXttNrpCvCZ1PmYtG8UMobqcwm9MMTQuXbLTBv?=
 =?us-ascii?Q?/8uXmXq3B6RezcT+Z2VAdjmLkHXfWHZwoudNhGcL3Zn5xnFj6bB36/WRnfxY?=
 =?us-ascii?Q?3liJwpVJUgUzkUjhgji5lMo0DmpaihHPlVUm6zRv2GCybp53poyrahtkYX04?=
 =?us-ascii?Q?BMF/sxNoOHu4o0S7XzXP8Jq0mLKfFPYYys2LZBo7xJFqN+eUGKVGpyitZY4F?=
 =?us-ascii?Q?W/aJqmQ84f9rfkiQKlP0udMEjLopSM98pFMVQaRh1RF/s7pEipYj4CiwuvkD?=
 =?us-ascii?Q?STIFdOu6m8HL830erP1YeInXeqE7fs9CMzKULr2DP6ILSTYN2M0wHsc7olfn?=
 =?us-ascii?Q?h4/PtEeINNHj1aEdKnEeEPlm3OgTTU4maRO5m0CatzCk8pVOdSuVqaq49d6k?=
 =?us-ascii?Q?l4s55jo0lV+0F7EZDOoknD23fJb7Nx+crQZ7ay1PyPfjQHaqa46SMFD1qbmZ?=
 =?us-ascii?Q?9DSFT6CFYPaVLYrzLDKFUeSF3P8SdBxgLZ6+5H71vCiZB52nDIGHZF1mPZ+h?=
 =?us-ascii?Q?KQRDNjmoSrFPQbRX2zW4FwKLkDEFwLWKJpuwBe3F8t2J2AlSoxYepo1aO+RF?=
 =?us-ascii?Q?HPbPp77uoIGtpqgQfseWLPdRxiSAk20T6OoIfHSWFm4l5PI8s8dWvj7baPYu?=
 =?us-ascii?Q?zGx3MEkqslS/q18PxFKXT0AXnNYnayX4k7ciYYEyNm+AR05fMEAsf42Ewtbz?=
 =?us-ascii?Q?XRasnOPH0kYCJaeAK3ca5EWGCCgiuSzjldE//FOja4uqEUSNl6/to9JkNOTC?=
 =?us-ascii?Q?BURtcgl4sVvvwMVh2fHHgAGrtR7Dt/mn6P6dEBqC0DHIBo04hhaHoLfggj9T?=
 =?us-ascii?Q?aundLqvEFtTCoMOW75TGSkRvM8oYgytyttsi33S1d/0eLwC29HJ3PGD144tN?=
 =?us-ascii?Q?d7JAvLb58c+HwFt4AWRVDdKK7cqd4Q5MmRBErDEp3Boyhm0XFH3Tq4OCz3Fw?=
 =?us-ascii?Q?VIH+5605ayYnTM6UlvXIKsserjuaBQcJKFi5zwwo2Y6TsFSLdKR2G6f8QELd?=
 =?us-ascii?Q?V7cNV7lW7wKXS5VnQ1yNZ0dyUuQbzcekX3uTHx00BL21EcoC8CeuvIyXWxPT?=
 =?us-ascii?Q?5d+vI2o0Rlj2Qzb/ZIPmIFzBucr5dzIrPUoIq00VVew75VSSU9rfyrUNE/IS?=
 =?us-ascii?Q?5q6Sn/zcvnMHWYOb/fizjmu3docoy/yTbjdCvvnQAJpSd1AA0o57QCv5MPix?=
 =?us-ascii?Q?KAv1B4qylRfUXRspagIGzwmeylR0?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aef23bd-e2c5-4472-0a60-08d92b58a003
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2021 15:09:48.9837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y0TfYLke79sCd1gYPE56YCAG2FYqKkN2979Ckl3lZJKQYJINEBsQ3P5mYiVWWtnG97S52fGVZSPYYXzhgMnhSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] igb: Random NIC down for 3-4 seconds and then
 UP
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

Usually things like this are hardware-related when dealing with mature drivers.

Is there any way you can file this through your factory support because we're going to need a lot more detail. We don't usually handle issues through email unless you want to go through Intel Customer Support.

We'll need to know OS, driver, hardware, link partner, kind of traffic, etc.

Thanks.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Nguyen, Anthony L
Sent: Tuesday, June 8, 2021 4:19 PM
To: intel-wired-lan@osuosl.org; mantykuma@gmail.com
Subject: Re: [Intel-wired-lan] igb: Random NIC down for 3-4 seconds and then UP

On Fri, 2021-06-04 at 14:42 +0900, manty kuma wrote:
> We see random NIC down like shown below. It lasts for a few seconds 
> and then the connection is back up.
> 
> From kernel Log:
> ```
> [ 3306.560431] igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Down [ 
> 3309.532558] igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Up
> 1000 Mbps Full Duplex, Flow Control: RX\/TX
> 
> [ 3337.380117] igb 0000:02:00.0 enp2s0: igb: enp2s0 NIC Link is Down [ 
> 3341.672189] igb 0000:02:00.0 enp2s0: igb: enp2s0 NIC Link is Up
> 100 Mbps Half Duplex, Flow Control: None ``` Steps to reproduce: 
> Unknown. Happens randomly
> Frequency: once in a couple of weeks so far.
> 
> Kernel: 5.10
> Firmware version: 3.25, 0x800005cf
> driver: igb
> 
> Is it a known issue?
> What can we do to better understand the reason for this behavior and 
> fix it?

Hi Manty,

I'm not aware of this as a known issue, but I've filed an internal bug so that it can be looked into further. Could you provide the lspci info for the device? Also, if you have any info that might be helpful such as occuring under traffic or when idle, etc.

Thanks,
Tony

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
