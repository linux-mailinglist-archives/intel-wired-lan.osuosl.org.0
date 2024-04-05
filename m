Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F5589A0B7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 17:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5432640815;
	Fri,  5 Apr 2024 15:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZTTF11Sichv4; Fri,  5 Apr 2024 15:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58CAC418C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712329902;
	bh=BnIxs25X9porhtOiK/BHCi6P8+d0SBtT/qudt2jZWdI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SgKNmjLWtiuGpao4V0G3mWDZ8CxQpmZ/uPA0ZDXhCtKJ20D1cRjgLD0AF/KrCEq3j
	 /GcZrlj1sZvBx+mulq9RvrM6cvrtr5c8b43CVMvLkwz8Htqq0TsdE8igOSZvSDP97y
	 lwfZonrnr4AQ2hJkMMiy88+8bPFHHGZJ3Jgr+qJ3vLnYpQVwn09RY0BeFL5hruiXuT
	 hvPCj15FrJM6BCrEgZnIxJCvVAbyOJed9rKTKgCKyAQotPvFIc6X+2jehNaJsJJz8l
	 JDaQ7ZHPycbgGlJZIIURUK4DAiRdnzoNVR10KW6rmTdngZ8aHBw4aollPJv3K3Slt6
	 61byPvFwEj04A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58CAC418C2;
	Fri,  5 Apr 2024 15:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BFE21BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 156D0831CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHbzyvxZrEXK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 15:11:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF17A831BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF17A831BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF17A831BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:11:38 +0000 (UTC)
X-CSE-ConnectionGUID: rmaupgZeQoKYXThcxnXdgA==
X-CSE-MsgGUID: ERk7yAmuS42mnx5XxLvIVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="33061689"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="33061689"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 08:10:59 -0700
X-CSE-ConnectionGUID: xfXA1QaMRCWaf1Mw/cdzpA==
X-CSE-MsgGUID: j/EVHSzASxmdzkL83gGOwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19218970"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 08:10:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 08:10:58 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 08:10:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 08:10:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 08:10:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M465bu0wt6x/J+wOzjUwu9OGUjdQo22rUQxDpUdWOsYrMDN8EF7urYScKGjMLj5wL3GzNgHm7YvcCivw3QMD0dvjsukYAxmM0ah7ZVhEJdi/kDaQi8PmE2LMEOWRUnjXCxL+xz49tkTckxZsUlaeI/TwIUH89pz9RBRSG57FNumhqGYoxCSwkLo8Y+50zpf6dxjQV8C5lNNGokxn9JA6KhRteMimK7sXF14jK3URs9FgZOm648MQ7URAo6pciBWu1mWLTNvbpANdEEibx0sEyJSvn5DdTLgdAduyiA3BqOz/14ezoHb0dWxSzAEdNMqEM20RJhwca5FFDfgR94VCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BnIxs25X9porhtOiK/BHCi6P8+d0SBtT/qudt2jZWdI=;
 b=EnsYa0QXiGyMKIuXTC18qFJBRTVC8qIb54Wp7Og73MLNpGggdqtblSs2W87/TUKndbri/clABZWCj0n5u0+QlydfLI71F/ZyrOV41mUM79Frkuxd0YVfMVg/lxi5xOEE1WIC6RH6Fr2st4EwK6SFMVFDiOwjaKaInv+2lIvwuNp0WJsL6zXgTcEwLI02Z4PwfF2BVdbhOCOpF+lppbaRBJcwECik7RVGPMnHwJipeDPOEuezwIn5byZGeM8QRyzou+PF07s+s0Z2dJMH0XXLW2cd1k+qN4wboCGfkMVRUWkdi1j3r76sKfgn9G6nLgdzba/SeDJjjCZ8GHhdriEG4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by CO1PR11MB4881.namprd11.prod.outlook.com (2603:10b6:303:91::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Fri, 5 Apr
 2024 15:10:55 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 15:10:55 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 3/5] ixgbe: Add link
 management support for E610 device
Thread-Index: AQHagFz2/cw/J8Ed9kyFAS7MQH3ssrFY29qAgAD5SbA=
Date: Fri, 5 Apr 2024 15:10:55 +0000
Message-ID: <DM6PR11MB4610AD8C2A75BC215FC0621FF3032@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240327155422.25424-1-piotr.kwapulinski@intel.com>
 <20240327155422.25424-4-piotr.kwapulinski@intel.com>
 <87r0fkbr7i.fsf@intel.com>
In-Reply-To: <87r0fkbr7i.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|CO1PR11MB4881:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a/2IlwNy9WBzIG/7PKCiqqYA16FkZI51JvBL16GIRj+Vj1A2BhzOtiY21kispDpfIJ628VQ6rZ5zz6NBczVrTzVp/FvYcqUkh0j3u08pRAAbiV0eEE0ACppyzGu36U5lC/p+Ar1z99DiuSNWf/FOiX23QXIqJmgm4BUf/GnwXnb/k08Y/gL9O3Uxd1erLaFpMua9DtpY2NMkPjRKHzKisFAB9hdWMytaub8hoWM1Hx7pKCES2glYcZWFmsxstArDXzpK/4YE4gfGspYgGXHieuo8QvkWVIq2KP4IWhuxn8A3Jx1/PeHEbxsn7JWG9/f2nTPOFeZAp7lvmswNAbg9lIoaPQ1Kc8Hvxa41jhYB2BtbQHS75+ASiM+fq4uUl+l6SZLbv0dE5NHT47xsXFo+v59xWTNXY7NgDGvpxL2RR5E9OjFXCoMnka5UVrBsTnxpsqPVuuX5AmbGzDqtL4JQXDX1UF4CUBT3UXSetsTZvnLLVBtYv/coUxdxQQVBAj6SlI111qn1MxpiGYFUnPRnlqL2/l75++Y0Cp7Newr2vKWwq87rUvZ+1YaZSKytBp03d7vXITpIYafTOE2Wjset/otsJ3Sxcq61BP2WSG2FV7KCET7EjmPaP52r50BVEQAWEw330IkANdWCD4pbm4ZxAAlWL2hbjArSIDtfLFu4kHg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ntLspFnxsfczlmDjvAE5XCPK0dK/fNPrtTb+gCrncv4fZ3PJlLPQD3h8L4ba?=
 =?us-ascii?Q?LkYk1YRQ3lUwN/h38iiZV54TmIROpSH+/wz+bbKmXQEr5lC6a327sC8h+yi0?=
 =?us-ascii?Q?LZhxUHMB/ZxOy4nRQZfuMq/ML/dma4cCXAemnniA1XsbUFt/uTjelHCoDO2i?=
 =?us-ascii?Q?mXDJml7woVDdfZdlQ4LwFvtwmjsVENfi6RTvOf2nLaM8h2579MdFZ9ASJS7t?=
 =?us-ascii?Q?1mFMA7j9GrE7NmYO3yPm1Y8qjDRE6TOhyFI1bCgJ14yPqUOsKptUu/dR3wal?=
 =?us-ascii?Q?WFn4053MSPDI9AJbsCbm+DcxZ6VdccFmCCiqXnjiSSRDUxZj+8AdQy5brcA+?=
 =?us-ascii?Q?cYejSR6ZsXgzOg/hAQZ3U1Aeb+nr2CcWFn32ZVz1LeZkNq5KvK0Tmbm1/9od?=
 =?us-ascii?Q?HpoFZ2sFy2P3qY04ty4HO7L3xZ4Wd5lBdfcIDIOB/hHXXn6bgUvmaujCgslL?=
 =?us-ascii?Q?ydPlHbad7r8QO49WM5r+BUPJ7uLwLk7ELmdnWfU5qQZBnGYHR7cb2a9K2/kB?=
 =?us-ascii?Q?TVe1pJZL2iUHfjZo3WEf2BrMvb42pLGIaT9zxbriSi99ug9ldEzLOfjSkcIw?=
 =?us-ascii?Q?s2n/wWsNC4wcM9b/nH9fN6Svsn1jRV2MFfm61+oKvNLtwpjl2Or89/R2s/Vs?=
 =?us-ascii?Q?VCcmTl/rRc7n6MSuOM3/8JBkszkt/fyDjH3UNjGIZBNCUfoir4c0Tyoa0ia5?=
 =?us-ascii?Q?RVb9yZOjmJGVYkJXUFVc1zjxd4CN2MzbEYhIbhEjYfDlUlB7T6nGtt5tXJ8S?=
 =?us-ascii?Q?be7F4/NWXimc1CYIVO/7LtprvSg1aWdaM1Y1SL54em+o5+hgXpDOxbk+2YMj?=
 =?us-ascii?Q?LI5GS14wsZ7lkjGv3VsVcrjLla+GY589HqCLaglTcuFCEQL1GJdsnP1E+82b?=
 =?us-ascii?Q?yNF0y9/3QGnPuL3SI2RONUxfwCgHBEOgM1s4QexsZ0SuFKWlUFZinEDa+VEJ?=
 =?us-ascii?Q?ErtzjOHmGu3/0owMmQ7ulXHoJJD56spVUXmriaiRJTAEs3lHYpm+qqm9b8G+?=
 =?us-ascii?Q?8J2IQdyqaz6ARRiYR8E5YLY+TIi9kxGVku0choUF+zR36BSwm/XZRYnIYddv?=
 =?us-ascii?Q?MbTfO1JedHi1S/pppC1YBlPuBYpwvqjHHp0XrJ+6cBgbsW4KJs1ClPHwgJka?=
 =?us-ascii?Q?E3VRvtR8AfCmeobYcvahCt/8S5KHGZW6q4D/h25bFKGRIXTi8qwELaKw3rcN?=
 =?us-ascii?Q?GMEZtzR7srkXFwLpJhLVyl3PuLovjPolShzILBrhbp92nyrCO6LLmlJCzHak?=
 =?us-ascii?Q?kVFwW6gwkg17HvViuupfhKHau2Bhx9qU4jz+jWteiWH2jIZsj6KAhVwqUx3G?=
 =?us-ascii?Q?y3j4IG7WIoh5VKVtlRFMBYzxVia2EpIfxCPMuWTBQsb3IhtHdfABCCn6epDK?=
 =?us-ascii?Q?e2No8BytBsZfyZD2qAPG+XmCv0QJSg6JgByTIWdmlXwOAMU4Gr/0yoVlfe18?=
 =?us-ascii?Q?UzJL3wGDU9w6gIeMMoe13yLYn6uB8JJtvFnexkmsmVGdY7eUBTZuXqDqEtFe?=
 =?us-ascii?Q?7V7HmBXcBX1OWuuzOPsz/i2W5jIe+yvSpLeTQCXvB//kASjskx7AcmZQhJz+?=
 =?us-ascii?Q?Rfc1GbhDzjaqg74d3Uy8t7Lfnhmb002LKKy0SGtH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0a271c2-a0ed-43f2-5c7f-08dc55829798
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 15:10:55.6722 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OCq0ZLrQxicV+Nlfnps+hc7ClEBEJj9IpR5O8UpWvqKx0AU0qifzrCVUWhpaOrE09yNonECgwyRbKuAtCWphL5USfy0C6JLRba+aG8o+J8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4881
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712329899; x=1743865899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P9CS6eiKFIBG73F1pNamLF8ba3UGB8S9sF4xPNhe9XU=;
 b=Tg7Pbg60NN0KKO2R4f9eFnSwPQJ8/Hbyr7/xGyzRY6ckuZVc20cO3MSo
 Fj3fnMCQWFYHYet02d4Sf8SN0ff14OxApKHGWkPzJk8xXKmTwHd5vEqWo
 TfbNFJ2e3XIjzf10/zWGdgOoZrC2P355qO176RhRrV5oyQUEKZqqd8vYN
 d4iNNzPSDPJBvVTvy3XHGilVAvW2luJ7EmGLbZM8ZtzGfitoQCyeqZWeT
 bTi7sUkrdeFrzhHqYgL0/zDfwQhCfTLke8leOrPb+MtPUeEawfwzbzw+A
 W/GksG0HZLHKS/AFzKiVNxQSJYGjKaooGjYGyaIYogy/nPkkf8j5iRZDY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tg7Pbg60
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/5] ixgbe: Add link
 management support for E610 device
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
Cc: "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Glaza,
 Jan" <jan.glaza@intel.com>, "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Gomes, Vinicius <vinicius.gomes@intel.com>=20
>Sent: Friday, April 5, 2024 2:15 AM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; intel-wired-lan@list=
s.osuosl.org
>Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; netdev@vger.kernel.o=
rg; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Glaza, Jan <jan.glaza=
@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>
>Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/5] ixgbe: Add link man=
agement support for E610 device
>
>Piotr Kwapulinski <piotr.kwapulinski@intel.com> writes:
>
>> Add low level link management support for E610 device. Link management=20
>> operations are handled via the Admin Command Interface. Add the=20
>> following link management operations:
>> - get link capabilities
>> - set up link
>> - get media type
>> - get link status, link status events
>> - link power management
>>
>> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> ---
>
>[...]
>
>> +/**
>> + * ixgbe_update_link_info - update status of the HW network link
>> + * @hw: pointer to the HW struct
>> + *
>> + * Update the status of the HW network link.
>> + *
>> + * Return: the exit code of the operation.
>> + */
>> +int ixgbe_update_link_info(struct ixgbe_hw *hw) {
>> +	struct ixgbe_link_status *li;
>> +	int err;
>> +
>> +	if (!hw)
>> +		return -EINVAL;
>> +
>> +	li =3D &hw->link.link_info;
>> +
>> +	err =3D ixgbe_aci_get_link_info(hw, true, NULL);
>> +	if (err)
>> +		return err;
>> +
>> +	if (li->link_info & IXGBE_ACI_MEDIA_AVAILABLE) {
>> +		struct ixgbe_aci_cmd_get_phy_caps_data __free(kfree) *pcaps;
>> +
>> +		pcaps =3D	kzalloc(sizeof(*pcaps), GFP_KERNEL);
>> +		if (!pcaps)
>> +			return -ENOMEM;
>> +
>
>Seems that 'pcaps' is leaking here.
Do you think that __free() does not do the job here ?

>
>> +		err =3D ixgbe_aci_get_phy_caps(hw, false,
>> +					     IXGBE_ACI_REPORT_TOPO_CAP_MEDIA,
>> +					     pcaps);
>> +
>> +		if (!err)
>> +			memcpy(li->module_type, &pcaps->module_type,
>> +			       sizeof(li->module_type));
>> +	}
>> +
>> +	return err;
>> +}
>> +
>[...]
>
>> +/**
>> + * ixgbe_get_media_type_e610 - Gets media type
>> + * @hw: pointer to the HW struct
>> + *
>> + * In order to get the media type, the function gets PHY
>> + * capabilities and later on use them to identify the PHY type
>> + * checking phy_type_high and phy_type_low.
>> + *
>> + * Return: the type of media in form of ixgbe_media_type enum
>> + * or ixgbe_media_type_unknown in case of an error.
>> + */
>> +enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)=20
>> +{
>> +	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
>> +	int rc;
>> +
>> +	rc =3D ixgbe_update_link_info(hw);
>> +	if (rc)
>> +		return ixgbe_media_type_unknown;
>> +
>> +	/* If there is no link but PHY (dongle) is available SW should use
>> +	 * Get PHY Caps admin command instead of Get Link Status, find most
>> +	 * significant bit that is set in PHY types reported by the command
>> +	 * and use it to discover media type.
>> +	 */
>> +	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP) &&
>> +	    (hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
>> +		u64 phy_mask;
>> +		u8 i;
>> +
>> +		/* Get PHY Capabilities */
>> +		rc =3D ixgbe_aci_get_phy_caps(hw, false,
>> +					    IXGBE_ACI_REPORT_TOPO_CAP_MEDIA,
>> +					    &pcaps);
>> +		if (rc)
>> +			return ixgbe_media_type_unknown;
>> +
>> +		/* Check if there is some bit set in phy_type_high */
>> +		for (i =3D 64; i > 0; i--) {
>> +			phy_mask =3D (u64)((u64)1 << (i - 1));
>> +			if ((pcaps.phy_type_high & phy_mask) !=3D 0) {
>> +				/* If any bit is set treat it as PHY type */
>> +				hw->link.link_info.phy_type_high =3D phy_mask;
>> +				hw->link.link_info.phy_type_low =3D 0;
>> +				break;
>> +			}
>> +			phy_mask =3D 0;
>> +		}
>> +
>> +		/* If nothing found in phy_type_high search in phy_type_low */
>> +		if (phy_mask =3D=3D 0) {
>> +			for (i =3D 64; i > 0; i--) {
>> +				phy_mask =3D (u64)((u64)1 << (i - 1));
>> +				if ((pcaps.phy_type_low & phy_mask) !=3D 0) {
>> +					/* Treat as PHY type is any bit set */
>> +					hw->link.link_info.phy_type_high =3D 0;
>> +					hw->link.link_info.phy_type_low =3D phy_mask;
>> +					break;
>> +				}
>> +			}
>> +		}
>
>These two look like they are doing something very similar to fls64().
>Could that work?

Will try to apply.
Thank you for review.
Piotr

>
>> +
>> +		/* Based on search above try to discover media type */
>> +		hw->phy.media_type =3D ixgbe_get_media_type_from_phy_type(hw);
>> +	}
>> +
>> +	return hw->phy.media_type;
>> +}
>> +
>
>
>--
>Vinicius
>
