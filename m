Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770E78C5868
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 17:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0224C41793;
	Tue, 14 May 2024 15:00:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4gq6etE7Ply; Tue, 14 May 2024 15:00:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF69E409B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715698822;
	bh=oIe+F1T4nOJplS5i7BjycX3dxlI9Prs7JtkCvIjCums=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0PQdypgxZYYZpfUZdg89zOSoupRlIwnH+MopmkMl7tTZHA+thIFXAJE9P/2Ef7AM9
	 KB72XjucilmUpP3GRJ3EisBkvNu1wu15z4y3biRQxVSUt9Za3HkXDlQoYIp9SRGvnG
	 XKYoP0WspgR3wNk3xNVmn94Qwb5qZ0Mfa+HtpEGxBOteiywUp0hmGTtQsxe/mXID35
	 0V8Z0vRFLTOE2b6f7SEmy3pSNfokSNhEWUNB9dDGlPoBQe6d6ynVnlDtEAUbJid9A3
	 0zjj2Jo67byKjmgpgGRn593Al5jht9eR5B4wk/4+lkryyCqhyrg3y0A8BGBP0dwqQD
	 M5xQwLVl1WvEA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF69E409B3;
	Tue, 14 May 2024 15:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9057F1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 15:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A4F5414D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 15:00:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IaURDtIk3D9M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 15:00:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4A88414CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4A88414CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4A88414CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 15:00:18 +0000 (UTC)
X-CSE-ConnectionGUID: xBj+i7yVR8akCpt3u1YL5A==
X-CSE-MsgGUID: YRsAXZh4QySyhWMG50iIhA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="29207051"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="29207051"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 08:00:16 -0700
X-CSE-ConnectionGUID: DYe7sj9tSyqMuqY7lv7APQ==
X-CSE-MsgGUID: v0Vo92zRSTuwwBc5BBGtIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30546110"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 08:00:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 08:00:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 08:00:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 08:00:14 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 08:00:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hlR58cyhXwCA19t2tfkGsAFdeZBoYwprGUbfkyqypRzVzQFmVyDcZyBPRnSmUmPC8pAigzmWtkZcVcQSXZILvTwnWkx6bjdE4tV3mT4EkLYRMW7G2eLqOPtNqzYXmjKFytHFijQCNGHPXCmMBwZKqIErp67UTCzoSJR5uvaxpPeTWpoeERdDffbTNY1ZT9s1Ri1Us+Wq+F5eHq3Bt01hopkqUrY0BjXuNuQNjio61+A4+4C04xQa+PDKfa6G9lOzuqscxt7NzNQks9fTGlpNvOn0fuv4nOCaN5VKGj+rewE+gmzjB+1cRl9YLcxFxLm3tOmaieBV8anID9TzOvRQHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIe+F1T4nOJplS5i7BjycX3dxlI9Prs7JtkCvIjCums=;
 b=hbkBfcSzc1jS7tANhsw9PmY+9+IPTK2aaV3jFhaAp0emDSBcfrZfCSuPRn8A9Gwvi+2kDaNNg3VNAEWjBXLUybtX4u8I6kfglaEcSVf/cPbx3U0m/P2fHj+GZUjfMtFVE+2mDWgFxzOdSrLrWHS6LyRoTs6nOQZ4VnMt6Mmu5xP/ol2IGzNxJDO91/noMFxTiXHNl5vUhKVhL0xq30CRhOoU2XrNWRPwHVUTdBF+mhw/oboSY02lAqF7RVGQOwDTC3eJKZKh9UpM2iSKjwX+jQ6V2u2MXjwN9F23NnNJ3VpbSETx5jUCIBUOgXNSDo9RAK8SRJKB6OIIhu+C21Wu2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 15:00:13 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7544.041; Tue, 14 May 2024
 15:00:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/1] net: intel: Use *-y
 instead of *-objs in Makefile
Thread-Index: AQHaoXHjkPUX/AAaokuzOzHnGTI1hLGW24ng
Date: Tue, 14 May 2024 15:00:12 +0000
Message-ID: <CYYPR11MB8429506961A4010D31B6D674BDE32@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240508180057.1947637-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20240508180057.1947637-1-andriy.shevchenko@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CY8PR11MB6939:EE_
x-ms-office365-filtering-correlation-id: c831c0a0-10b3-438b-7349-08dc74268e8f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|7416005|1800799015|366007|376005|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4EO0Gio/ezpze+FFb9dZ4Z+F5uufYVyxnN02wWQI7UHYDu4NoJeJ05m5ZTNL?=
 =?us-ascii?Q?hvWBXSrmUK2ulzPnPh4DXyaH74WwnoexGxqt/al3UU7Nw6FREXKVlQEUY8BE?=
 =?us-ascii?Q?akwU30gGyVAMSu8MPafcplNsG6rGOQStug9Jj//2ZD1x5y9Jz9LBu97GF5Ya?=
 =?us-ascii?Q?AOP7PC2LMqSCQte22+uN3qnb5p0vk+qV/QQw39tpVY06VGzoAVYkG3ClmU1A?=
 =?us-ascii?Q?skgd1xlb7jvz79c5mQaNC7f55Lu5TA1XLamowo/+D1Igj5DF+G54J8Hr02HO?=
 =?us-ascii?Q?L/V4NIRLm//m0X1FYZ1EnSupUprZYfy+wLRfXGxD1dIkR6ew1U7M19GEEr3/?=
 =?us-ascii?Q?kgp96DHpuKNyxypXGkfs1/C/n0fwCVq96MCgE3ImAMZofApJ/570C2T0BVrU?=
 =?us-ascii?Q?IH08JARFzgq35kAvL1Cr5P05NEfTJNP6t5aVTqcoH3UYzn7Y8Vgrc+5IJvpO?=
 =?us-ascii?Q?3h2nNfxeIJU5mpkxZ40WVKCYSUwK6FPXHffGwFcuXOanTjf1SKHM2gLjUf8r?=
 =?us-ascii?Q?nk4IdfKXVMPdP2Nl27eqnZ/1KJjoZmEHQmSZe2Vrmdbm9nllgkRC5M3mC1Ny?=
 =?us-ascii?Q?onUFddy3+CSEkUCF05ZFLo5K8EusY+7m1hsFKBBhzJEJJjLlbaDCK0ZFB6BM?=
 =?us-ascii?Q?hL7+sK5ppmmj5uyBMAc2Q1GHFzMhYejEbHsAKV0L0Yceu7X/PPfzYkBrllJQ?=
 =?us-ascii?Q?czcU/i85eaU6NgiIT1wgmCbi5hH0pYJNVxEw/KgAjtkKM43lhzH5oxRQCAIA?=
 =?us-ascii?Q?w6pMxZw3LiUE5dIooJVKztidUioIU2O26KY1Y0cMkeZzaY7i/XBqMqYFFQSh?=
 =?us-ascii?Q?gVg36usqK1Y+Y0hPlt+847DUhzXimmfVRSGnbHhRsPMVPAMSGLP/ihgmZvkG?=
 =?us-ascii?Q?VqMqAbcEzkfZ2aYRdRwE6xP5lxtsyRKNFrAO2imTOYBkDFWlYwV3BPyB/NoW?=
 =?us-ascii?Q?pd7t2CwO0ka4IPq75AFsMlFjkBip1YmOd11z0zSGoRe0J8A20cUAnsPmwIXT?=
 =?us-ascii?Q?/l4VFgWDUgNUmDHSv5V0z2wkj5ao8LM52/i90Vz1BiuP+qAC7f0xrIxOb6Fw?=
 =?us-ascii?Q?CjSUTTPMOeaAD7YcJROR63CJ9wT0LFl8JBlUoGcgdQO97yEphr8Fewb4b83s?=
 =?us-ascii?Q?ueX7kOm7dHgs1ZJFpg9rsx4dlIu2+NY4Mq7YSRgX87sYYdd/MvkAp7FuLKfD?=
 =?us-ascii?Q?eYVeTkfXEdYJy6ozCFTF9NnYyw88ra81hxpGmmQqjrA6PrOaY3rpWkV6hZgh?=
 =?us-ascii?Q?GFCq0C8wRiTwla9v/6qYNaf9dvqHcyhEjTDR5BGEGyiy60nhv4KZAOIuMrjX?=
 =?us-ascii?Q?+D8waX4dI5e51P6qtHoMCAr1HnQyTfO6uPlIT66PWYqs3Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(366007)(376005)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XfFBuWFw2IqQ7NVvDJXHgKLIou3Insk5j5ya9yRbIzhDJSxZsR7MegW/oPj6?=
 =?us-ascii?Q?kTLFekYiRrD6G7E97z5vaMEDXv2fWgjt0bJ4Lqv9UxetbAADrU8HeLC+bQw6?=
 =?us-ascii?Q?okwZYcmN0gFIKs6lMT/dL36kj7LdXiae8OfGQFHrxE3YxtsEMomiW9MzsZrl?=
 =?us-ascii?Q?17lUFohWsrMyKBpxwfUnyEn6PbP5U1Lo4AQqDdEyjVMWg8Hesv3TJ7E5IHpD?=
 =?us-ascii?Q?ZxodNNfvD3kELklKA2Wrgl+mh+bf/40/ij7PHK0SG9ZdsmXzovnRm1m3VZPX?=
 =?us-ascii?Q?FhmwOpbF/knLsrH35EzVtNSYOeCDImCurOBwWkDbpgPeD/nmvV+rnQrZdyRC?=
 =?us-ascii?Q?eE/wC3wnoxuoO9q+cvRUTHFEQEVlAvlTeFOX4I4BVmK5Ks+/CJ5vy6AKK5+6?=
 =?us-ascii?Q?g4D+O8HZYrf8HY6oPHj8h9Bg5PhandlCiXj6Eh7vxF2X7NSaTVPG6zHxflpy?=
 =?us-ascii?Q?Ky6SCQ5JDkCFcDAnyDfFI00H47NktdPlMIo/pdhJwjmvu7ciNe2BgBM1wbs6?=
 =?us-ascii?Q?ikSQrytIAR2H3031RWe4RGw+1JI8APiMDXuvibNtFZNHayXMcnWM1ORzAEf3?=
 =?us-ascii?Q?QXoDFCtFiGRAMliSc2LjPHOwcsDY2a6hTWnNmEsb2qFdzAtMb2sG7MHwCgRE?=
 =?us-ascii?Q?PVzYTvsPSP67fyalrWiilqLBYyMnlbiSUkw3NpdOgt1WanxuZVKtvQF3MwJh?=
 =?us-ascii?Q?zvI9ifbmDcowfQxvxNDIk1qoHp5DcHXFcdKm/65TOV+sweZhNixYxC/8tMTP?=
 =?us-ascii?Q?fsPl6wsyaqnqvO9BUAViaeAk+q+CopOT/zcURI5kuQg6qQpiCCCsuU9S1jw+?=
 =?us-ascii?Q?fX96oafABvRmjF41kGaMs25uveccXgJeAbIq8g3bSAb/z5YdprR0E920x8/C?=
 =?us-ascii?Q?J16Ii7TpYZwbMhET+1IeGKSn49+zU7t5cZeSsOOco4W59PXMP134N22p7rzs?=
 =?us-ascii?Q?6j1iZL6+hC1USKd3Es6s84wRL0QzRn2oI9l/AvB9POCxdXH3hKRiYy63n9Mu?=
 =?us-ascii?Q?7aZI4CgLrGSok/fYMTd1nzckz0nW00kQuZAVgNutMlL/T5rQQ5KguP18ul0Y?=
 =?us-ascii?Q?vM27l8Wwi6D9SvEaVtrhj1svR3XZoyWvKTGG5sl4iBiWrwkBAQrjNyPp0PlU?=
 =?us-ascii?Q?tKdEtTHavZzCxmbRzkhl04ehhVFSsaRiE21gairkcYAbNrjaCLYG0hqecfsJ?=
 =?us-ascii?Q?gFoKT2WzE8diCgBT0B2zMOCtaAZnirnaYJdvPQ7I40qlMv1XYK6YSc2liLky?=
 =?us-ascii?Q?3tjAmwHo8wikw3T4LrKrHCxZw3jHuRwC6GWtBplFeW6gHlw4MRROBiaaRFra?=
 =?us-ascii?Q?vVLkyfY/DjSyZ41Qh/mUSczFgyIqhBVafaIQti0MtoVDKi3K9o+HROoZim4a?=
 =?us-ascii?Q?9F2R+r9P4kiFTZAyr+3MAP3DEQaf20Gd6J8AzNAwo84gfca7iw5LUlopC21D?=
 =?us-ascii?Q?GPg14xyQhfbmlWjszMnGmodb4e4AI7aIyWpby7mZzFQ3TNEWjRAAHmH7FnLo?=
 =?us-ascii?Q?X3QjC0p5+SXcEz1skOp7ElV3AswDYKOFe9up7tqh6KyUzOvPewc0WOJLwF4f?=
 =?us-ascii?Q?uEeXt5r710cT4OPQiTjRQ3OCq7ZPy6nhjLXSG7/E7ZtbOrCoFSi0U1CEeHUr?=
 =?us-ascii?Q?aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c831c0a0-10b3-438b-7349-08dc74268e8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2024 15:00:12.8531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXkzzMIpb1ZaWd/M9ApnTtjHW1Waxv0WvN25YYbDBOYjavoa04OZFjfB0+7stMFqq4QOqHjZokSEr1S3MT3Br7AjRtgJtz2raSpC+zpF/J+755dyKc7cLPFaASYiL2vZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715698819; x=1747234819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rIBV6LSjPKtx1wojQKbbdwJW5Nsm0pt1tTdnZfKwoWE=;
 b=ZgCddi8f02mwTrdrr80PLbTtjKaQK/3uGzCvLGeruUsX4cTjbrYU+LIj
 ntdS0jQ575/UxcZjgUDeWlmSW8z7WnYmneH9HFBHYagenvW3dQSmG8VrC
 H/FFPkDf69Bxyy3ooG/hmrRPi3o7VETCqoxeXvzHkao9LlWkAqdGANHyC
 KLpOC5NWcKIA8Sk0FvzgiUjcHJjCtrqLGy/47S7iAU+LpgOpD5ehVOb69
 5C89/1k+fd6uVAXiskWx1YGdyeru5DOT3nYkK5U3+skjQ2N0EQ2ve8Ujl
 3mvvF91b8gs0bKv1RVnRpNKZavl6/uhG1paT2lBYhS/gVsmS5bbbebx7+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZgCddi8f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/1] net: intel: Use *-y
 instead of *-objs in Makefile
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Richard Cochran <richardcochran@gmail.com>, John
 Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
ndy Shevchenko
> Sent: Wednesday, May 8, 2024 11:30 PM
> To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>; intel-wired-lan@=
lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org; bpf=
@vger.kernel.org
> Cc: Jesper Dangaard Brouer <hawk@kernel.org>; Daniel Borkmann <daniel@iog=
earbox.net>; Richard Cochran <richardcochran@gmail.com>; John Fastabend <jo=
hn.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; Loktionov, Al=
eksandr <aleksandr.loktionov@intel.com>; Lobakin, Aleksander <aleksander.lo=
bakin@intel.com>; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <p=
abeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/1] net: intel: Use *-y in=
stead of *-objs in Makefile
>
> *-objs suffix is reserved rather for (user-space) host programs while usu=
ally *-y suffix is used for kernel drivers (although *-objs works for that =
purpose for now).
>
> Let's correct the old usages of *-objs in Makefiles.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v2: added tags (Olek, Aleksandr), fixed misplaced line in one case (LKP)
>  drivers/net/ethernet/intel/e1000/Makefile   | 2 +-
>  drivers/net/ethernet/intel/e1000e/Makefile  | 7 +++----
>  drivers/net/ethernet/intel/i40e/Makefile    | 2 +-
>  drivers/net/ethernet/intel/iavf/Makefile    | 5 ++---
>  drivers/net/ethernet/intel/igb/Makefile     | 6 +++---
>  drivers/net/ethernet/intel/igbvf/Makefile   | 6 +-----
>  drivers/net/ethernet/intel/igc/Makefile     | 6 +++---
>  drivers/net/ethernet/intel/ixgbe/Makefile   | 8 ++++----
>  drivers/net/ethernet/intel/ixgbevf/Makefile | 6 +-----  drivers/net/ethe=
rnet/intel/libeth/Makefile  | 2 +-
>  drivers/net/ethernet/intel/libie/Makefile   | 2 +-
>  11 files changed, 21 insertions(+), 31 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

