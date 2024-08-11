Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 624D694DFD9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2CB041307;
	Sun, 11 Aug 2024 03:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8NsVjIIC6NXv; Sun, 11 Aug 2024 03:39:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E9A940B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347541;
	bh=HNN7daaq3aToXevOQX763Cp9Kq7b/qTSySIFch5KQ6g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RpPNWLwfHAWHnBUjsS9VuXLsn+XUDY8ejItF5Qte/bArC8i9nJDnUunWScCqB4VL/
	 nMrJrLv7ZGm2Lc2kd3JQ20Ya7NGC+5DWBIGZnegrQqKMvZR+Pt2xxDNZtqDoZltlkB
	 QGxTj/C9QB2ezhNORpVZWHlUORstQQXLc72f7aWXrTbbrnK0yhAnoesMyT9iH0iZqa
	 tQMUL1vx7Eko1MqnnQX0gzqJ0ifs56JRrS/VX4cHr5Li7mIZmh+S7NbeztyBBmADeO
	 m/HPIt/lpG9Uqoc+IFsFtgIYsn2WlBoHmiSUp9a2nm3TDOmLTv9wbhy3edC1DWaNuC
	 e5Z+HOk0XeJsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E9A940B7B;
	Sun, 11 Aug 2024 03:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 583621BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5147F40428
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Txw-yaxhDva9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB05340279
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB05340279
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB05340279
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:52 +0000 (UTC)
X-CSE-ConnectionGUID: HJIrKfBPQs6EqHkLtHNGlQ==
X-CSE-MsgGUID: 6H95V/YlQ6q4Z038ZKOrRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="21457787"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="21457787"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:52 -0700
X-CSE-ConnectionGUID: rJpuKxl8RzyOYkHMBHWqtw==
X-CSE-MsgGUID: EqWCj8z+TL+IZe0Ff3SFCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="57828245"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:51 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UJv2gCo9oPO3TcAmOqmmbl+HShh0+HduyXEupcRrtiXGPm36I8xVHnZQDDNAVelJD0G3EcYaLGx0kB07vE6x/mzUias8gmjDEk/cJz+cmnvxOXznkmBUACfSB3BaXph5DUkIJ4dQzFpqKUTCwDWRV7miq/BHn16eU/n4cA7haw+XQzCaMZ/LHPAMdEqC50KPRw0iOz9ag0d+msxrv5DTpYKwaHSI1Mt3a7eTI5ondUxKUp2joJD/bNcwUOTDHEUQqCfevyb6W8GnJ9b8hfw6sN0qsLOoXs1AFtU0xs04GkaPHUQ43IiRCjOtWuhzIML9JaZsJRRBJjvV07JsScnz9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNN7daaq3aToXevOQX763Cp9Kq7b/qTSySIFch5KQ6g=;
 b=wSR13hlpcaIwvR+y7slmhpcZmqlg/du8SsIMq54OH0X2q8OqCpNAsLy7nLFsuTzA5r7qu1Cy8DzTEJUJxuCF5o+IWaGOPp6t9C8h4YN7I56KZbPh0mvgSaYE2j/3VmInWggs5m46l68xAmiMUiCnNjTYYQMvs22avqxvFFzXOVpufSxYz3Y9DPLzbtLjQKivzVld3sQtny21gv+ClFBcVlM23ZaAPmPnJxEeSyLErZ3UxjtPZVo+G4llva83OPQ7SOyiBNFWsZ7ZZZTyPzXIQ69FsuvYLuzNQZfX4TsGagB7jx1b53rxjACuWjzQsLprNkO7B9ZK1V+T0Dmb6cGa1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:47 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:47 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/7] ice: improve debug print
 for control queue messages
Thread-Index: AQHa6EHXqYgGq/Wunk+5m3qAnkOhtbIgV/kQ
Date: Sun, 11 Aug 2024 03:38:47 +0000
Message-ID: <CYYPR11MB8429620D5D2A2A518844F626BD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-2-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-2-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: 00e820d3-fe2a-4d02-3151-08dcb9b71bd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bWo1cENOYVlaYk9NWUZwY3Q4WWNxSm5OYXZKd1VOdEt0RWdzT1JiZUkycVA1?=
 =?utf-8?B?UURmbVR3eXU2ZSsrcEEwbVYzcUhZRjIrTWdkU2tpbFM5dG9xQ0tGdi9mUW5k?=
 =?utf-8?B?Q2dybTBITVplczA4RVgzbGxPNWZ0UlYrS3kyOHJNV1Y4WEk1MlEvL0N0NThz?=
 =?utf-8?B?VXNDRDJVNXMvb2RZL2tPRDVudm42dEN6YjhPRVZwSXliVzg5YXlWcXc5dXFF?=
 =?utf-8?B?TVQvTXpmcWtXTnM5bjVaT3BuVUJOS3AvOWR4SEFyUHBNaTI0cTJxMDJzUG9I?=
 =?utf-8?B?OFFhOXlKQ295N29LZ2daY1Q5ODJTMEdXZ0JTbFJ6d2RkeS8xdUdsRjR4US8r?=
 =?utf-8?B?SUxTNzNXbHVSblJobk5wOHRjNm10clBUQ21qbnRJdFBWOG9HcDQ0YW40WFgx?=
 =?utf-8?B?b0NWSnVvd1VwMTJtMHNuMlJtbEZQZnF4WnFhdzdkU0hTTS8zR0xSeGtpczRB?=
 =?utf-8?B?SmlFUHdLVEdQcDE5TEtCS01SSWN0eHNhakVUeXhWSjRUR3lzc1FWck13c0Nt?=
 =?utf-8?B?QlBkMkI3TE5TWWw5bjdHMjB5YWNRYVBGbklPVWtUTVorRVo4ZU0wbGk0REo5?=
 =?utf-8?B?bTBLYVJCRWQ2cjExbkpzbEJ5WnlablBPNDEveFF2VUl5bkRmSCs0VUxSckov?=
 =?utf-8?B?V1lOMWV3UGVNZkRCTkk4SnR1WE5TbXpNT1NyVzRObkJkcUE0WC95UFZCNk1C?=
 =?utf-8?B?cm04S1dUaDBSZ1M3djAvTytaY290a0FHVnJmbnlBd1NnWFVMN3dpYWlUNFpj?=
 =?utf-8?B?YjFNaVFITkE0cGgyOElZejBZUTlFVWFjUjdYU3VGblppUEE0VmdZVEFHZzRS?=
 =?utf-8?B?Ly9PWDZoVjE0SkRxc0M3N2ZBejdnYjc2NndoZG1RUlErUGZKbU9TUW9DT0h4?=
 =?utf-8?B?T1FUa3JocDJGT1ZTNlovOVAvczMyK0paSXB3dzA2OHZnTEVnRXFVbGRuN2RD?=
 =?utf-8?B?TVFtb3NXUlU4ZHMzMTFITzdRdGR2WWFoRXg0UEFuU21VZGRkd1U4R0NCWkdX?=
 =?utf-8?B?dUtkTVJHSEJ5QUlhQzdoMjB5M0ovOTkzRDRIdFpUaEJzSzNqMkEvSGlWcDRx?=
 =?utf-8?B?V0hXMk1Qa1lvOHpxM1JiOWpDeWxyQWZlTkRJeHlwSHpLd0JZZzh6bENaSWV6?=
 =?utf-8?B?WnBMVEVuN2FJT1hJd3RZTTJSUDVXOENiTjZ4YzdnT0FocS9KRnRPRFpZOXBE?=
 =?utf-8?B?R3JXdUZSNVRHOStNRDgyV2MxV0xwRTl4VXEwRnhHVHNwZ0NDQnZieUl4NEl0?=
 =?utf-8?B?Zkc5VmcrZzRJOFlqaFM4d0N1KzFkVWxrNWlGMDgwSGNSY05CbDA0NW0xRFVQ?=
 =?utf-8?B?NlRvZnk4bWNTbkc3Kzl1MTRNa2x0RXFrWlVwUGNSM0lyMzRkNktnUnQrcXcv?=
 =?utf-8?B?aXlZSjNkOWUrYUVpVzlZSXQ0akdTS2VrZ254MjRRMHk1d28zSU1yN3lnMCtt?=
 =?utf-8?B?V1dPRXptL0ZWTzVLQnF4U093bkYxR1FtT0plWXArVzRJSjVXelM0K1BIUUs2?=
 =?utf-8?B?RHpFMy9VTlppb1lUOUYwZ2pyWjVKNXViOXNoSmhPTTl2d202NHViSkp5cGtC?=
 =?utf-8?B?bUxJY0NvbTRVbUVoaEdpZFlzZUdlTDhqeksvMXN3eFppMTdLbmcxVTN0Q0p5?=
 =?utf-8?B?ZXBUbGtGK2xyS2FzLzgzZDd6Nm1IMHNoRzJWalBkM1VLWTI0RXhwWWxramVl?=
 =?utf-8?B?c1JJNmEwSmdvZXp5UHJuWUpMdXBBUFFOclZCQlhXUHdYOGQ5U0luUEE2OTQx?=
 =?utf-8?B?WEowWjcxNU5paFU2djk0Ukl4cEZqUHVrWmhFNlQza1A4bWpxTWxEdTl6RE4w?=
 =?utf-8?B?bldlQnRWd1ZzUm5MR3VkQVkySVY4V3ZjdXQxcHI4aHlMSnBVakU4TnhyV3BN?=
 =?utf-8?B?ZFRRVGUwSE1wbWxsYzdBSU1xdmxySGRFV1VsRy9kRURjQVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1kyZmlxOVFJNklhTitLUGdaV2hiTnBITEpCMnU3WVVGNnVIdmdXRk1heC9a?=
 =?utf-8?B?c2JDMCtPandHbFI0ajJrNTBFRTRJSEkrWlV5Z2JxcTdmTzhFMDBLa3VHa3ZG?=
 =?utf-8?B?Vm1sODdNK3AraHorbjVKemRoM1RZcXlKaGFDUTQrbUo4dCtVMVAwNnpMeWFs?=
 =?utf-8?B?ZGY2SjdteHBlNGdkejhNOWpSMVk3VUFtRWpoYkg5WTJINmNqRWlyVU5OQ2FX?=
 =?utf-8?B?WVRWYTh3TmkxUW5oRlpvSGdOczJXSGxDN0ZIS3ExUXVoYm5hM3QzcDdoRzdm?=
 =?utf-8?B?NHFnZEFUY3RBamdmTEdPdFZVcEpROHRlbDFheGxsSzIveTVmZzBhQzJHTFB2?=
 =?utf-8?B?VVpmdnJpdTZmRGZxYlBKT1d2VGFOZzRjOG1mclByb3lSL3JRV211dUthWkdm?=
 =?utf-8?B?NUZuUEJrZFQ0dmhlcVRWZ0FLY29ReG00bmsycGk3SCtyZWpQWkFTT0NWRldJ?=
 =?utf-8?B?UGF2T2JsOEVkYmtPZXB5MkhHNjl0OXMwS2hSellaUGJybVNZbTFUQ0FObHVI?=
 =?utf-8?B?QllXc3hRUElmWUpzcmtIMVJ3US9qYWNrQ09CelYxR21IU2wvN2lsbEdHY1F2?=
 =?utf-8?B?TktMWVA0WmcrS2hrUml5U1AzalNTelRpUUVmRUxwMmNkb1RqQkpRbWkvcWcv?=
 =?utf-8?B?KzR6OXNkQnJJSjdnaUVBaHgxMmtOSUNFeVBleHVQWEpaU0U2dkRwclg2eW40?=
 =?utf-8?B?RGNDRGl3UU5EOWVISExPaW51Mm5oaFBKclZ6U1NIdVh4M3ZydTFqMHk5TWlM?=
 =?utf-8?B?SGh0cVJyODMzc3k0eEVZYkNTMmxJU1E2YmU1ZnAwZ29RMExHb3R1QWlFYmpv?=
 =?utf-8?B?Nm05UDQrM2pCWStyZ1RiOTg4UnpVcG40RkJCZDNoVW9ya3h1Qk5DUFBoOENo?=
 =?utf-8?B?VFN4WURmM3BvVkw5S2I4QkpRRnBXYnV5WUVtbzBnbUYyZ2NUekFlQ25sY1gy?=
 =?utf-8?B?YlNQU29jSFBWWUNWUDFTbVhENDRQMmdUYVNRY0J6UVdYSC82R3dtQjhpbkZV?=
 =?utf-8?B?MUpoS1liU2FaLzdHTWFyNjQvSURCM0VwQXRjWWYzemRHdm9zRUJIWVpQeXNG?=
 =?utf-8?B?UXZkYXVtZXk5K2FINFM3WUxqQ3BZUDJmZjMrazd1cU9kbHd3Qk81RU5UcC8w?=
 =?utf-8?B?dURlTUVkWWExZktxdlhmM1JLaGt4ckRQV2xkTHc4UGNmN0ZYb2lNeWxtMVU2?=
 =?utf-8?B?MGsxYncxd2hxSWhpQzlkQ1N1V0JHaGtDL3A1VTl1VnRZb3B1dVZtQzF4VnlI?=
 =?utf-8?B?MHFEZENBTlJBeG5MeDdGc2R3OEczaDZybTIwVmpsaHc1ajNycWRuM2h3cWFD?=
 =?utf-8?B?RnhvbW43YjkzWEdJcmVqaGVTY0JpOFVDNVh5Z0FJcTh4aTFnaEtzVngrVWQz?=
 =?utf-8?B?bi9aRkpzREF0SUloTTNFOHM0U1Y0WTNZMjJKS3dNVE5MWjhGK0lGMEdnRGZK?=
 =?utf-8?B?VXVOSFp2Wm1NaVl5M285ME9IRnVkclJSMHZDdGtuaTBHMlBQRXAzVEMxd0ZB?=
 =?utf-8?B?TEJpYXBKT2h4MUZBZEtVTnkxMk9jaVpoS0dsemZRbnFSK0pBRWxXNTNZRy9B?=
 =?utf-8?B?ZGt1SWh2ZlA1Yk91cXdZazRlR3hISmlxMWhHeS9pdEl4d3dKSFNselNIblM4?=
 =?utf-8?B?ZXV1RXlKMFhXU3RidWpTckVLTm92R21NRkNmbGc0NFBjanA4eUU2T2RYY0tM?=
 =?utf-8?B?bGliV2s1d0lReFlGRHQ1Vzd4bm1rQ1BUL2pLUE9rVTZndkFjNkxYY2VjMFlu?=
 =?utf-8?B?dEVmcis5TUttNW1PSG9Ua1dYdmtBdEt3RFVnbFUwcTBCWUlpWEV6VkllOXRB?=
 =?utf-8?B?dEo0ZjFUMlNmeXhhNWpYZTgvYWthKyt1ZGJTZ20rRUJtbG9ZRjFMSXdmVjFH?=
 =?utf-8?B?c1N2R0VlTjJDWmRwUzJxekxCMndRWTF2S21qL1BkVkFoM3ZzWDZxMmZGaC8r?=
 =?utf-8?B?QVQ4c3FUWkduWlNlK1dYVVZuYTF5YUQ2YmF6L3U5WTZTRGVTRnJZY1RMUjNt?=
 =?utf-8?B?amVkeHlENUk3Ny8rWWJNT2p6WlBlLzJnWVAwek5acytic09WeklnclJjSEJw?=
 =?utf-8?B?VXBjVGtaS2hVd29INmVLZHp2dlZSUWp1N29uUlpWMkhZbklhY2NxUzMxeWw2?=
 =?utf-8?B?SEo1aGZXSUJWa1VpSXY0RGEvcnJsWG9HcUVzLzdNOUR2bXB1K1Z1SjhjRDI2?=
 =?utf-8?B?ZGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e820d3-fe2a-4d02-3151-08dcb9b71bd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:47.6254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ZRNNXzpzR9KsSfmsARdRHYY48eG+Af3G0Fa11KyJaiaPib9dbFPr9RVpR/ufg69+KUyl4b+iKSlwinoOhV1srYJBpeYEn47cBd8LNJx22uqMPh3HtZyQJ8A8xBvKpAF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347533; x=1754883533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HNN7daaq3aToXevOQX763Cp9Kq7b/qTSySIFch5KQ6g=;
 b=emoL0ANw+36qjt/Ujs9yPDrvwTOgQgOVdli//XZcRKWrtHfQT2yYemsy
 lsVHjwJwoQGX1Kw1BADYLVq//f9VAZu+peNHqXx8Di4pZC5bKGcTnujTK
 t5tr26thenJXjZzwYiKg5iOOsOOQZgMgI9+e+42vjyFpKiwKLxzleBRGO
 pV465xzZ2CCPZAKw3hvDQTZApezIFvM07x1tZ0vLSjCT86yP4lpQ68NCp
 7x1Bd8PMTe06B6+pa9URmmJwhn1fTW7PpWgWd7LtDgR5Im//qGl5aQUIV
 etaxO0sSdq3Hys2OY7Tv4GyWohffgddE/U4ETo8apqbfFXb1EIfd/yDYK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=emoL0ANw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/7] ice: improve debug print
 for control queue messages
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCAyLzddIGljZTogaW1wcm92ZSBk
ZWJ1ZyBwcmludCBmb3IgY29udHJvbCBxdWV1ZSBtZXNzYWdlcw0KPg0KPiBUaGUgaWNlX2RlYnVn
X2NxIGZ1bmN0aW9uIGlzIGNhbGxlZCB0byBwcmludCBkZWJ1ZyBkYXRhIGZvciBhIGNvbnRyb2wg
cXVldWUgZGVzY3JpcHRvciBpbiBtdWx0aXBsZSBwbGFjZXMuIFRoaXMgaW5jbHVkZXMgYm90aCBi
ZWZvcmUgd2Ugc2VuZCBhIG1lc3NhZ2Ugb24gYSB0cmFuc21pdCBxdWV1ZSwgYWZ0ZXIgdGhlIHdy
aXRlYmFjayBjb21wbGV0aW9uIG9mIGEgbWVzc2FnZSBvbiB0aGUgdHJhbnNtaXQgcXVldWUsIGFu
ZCB3aGVuIHdlIHJlY2VpdmUgYSBtZXNzYWdlID4gb24gYSByZWNlaXZlIHF1ZXVlLg0KPg0KPiBU
aGlzIGZ1bmN0aW9uIGRvZXMgbm90IGluY2x1ZGUgZGF0YSBhYm91dCAqd2hpY2gqIGNvbnRyb2wg
cXVldWUgdGhlIG1lc3NhZ2UgaXMgb24sIG5vciB3aGV0aGVyIGl0IHdhcyB3aGF0IHdlIHNlbnQg
dG8gdGhlIHF1ZXVlIG9yIHdoYXQgd2UgcmVjZWl2ZWQgZnJvbSB0aGUgcXVldWUuDQo+DQo+IE1v
ZGlmeSBpY2VfZGVidWdfY3EgdG8gdGFrZSB0d28gZXh0cmEgcGFyYW1ldGVycywgYSBwb2ludGVy
IHRvIHRoZSBjb250cm9sIHF1ZXVlIGFuZCBhIGJvb2xlYW4gaW5kaWNhdGluZyBpZiB0aGlzIHdh
cyBhIHJlc3BvbnNlIG9yIGEgY29tbWFuZC4gSW1wcm92ZSB0aGUgZGVidWcgbWVzc2FnZXMgYnkg
cmVwbGFjaW5nICJDUSBDTUQiIHdpdGggYSBzdHJpbmcgaW5kaWNhdGluZyB3aGljaCBzcGVjaWZp
YyBjb250cm9sIHF1ZXVlIChiYXNlZCBvbiBjcS0+cXR5cGUpID4gYW5kIHdoZXRoZXIgdGhpcyB3
YXMgYSBjb21tYW5kIHNlbnQgYnkgdGhlIFBGIG9yIGEgcmVzcG9uc2UgZnJvbSB0aGUgcXVldWUu
DQo+DQo+IFRoaXMgaGVscHMgbWFrZSB0aGUgbG9nIG91dHB1dCBlYXNpZXIgdG8gdW5kZXJzdGFu
ZCBhbmQgY29uc3VtZSB3aGVuIGRlYnVnZ2luZy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2Ig
S2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBQcnplbWVr
IEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5jIHwgMzYgKysrKysrKysrKysr
KysrKysrKysrKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBQdWNoYSBIaW1hc2VraGFyIFJlZGR5IDxoaW1h
c2VraGFyeC5yZWRkeS5wdWNoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IElu
dGVsKQ0KDQo=
