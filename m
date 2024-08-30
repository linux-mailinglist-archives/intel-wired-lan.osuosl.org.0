Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097F69667B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 19:13:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B10AD411B8;
	Fri, 30 Aug 2024 17:13:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1P92OgEpluhf; Fri, 30 Aug 2024 17:13:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F8D8411D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725037984;
	bh=i8Cf++nsaJNeiytqpMYSzNokZXTTq9dIYjFhrBWd9+8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8u5cyQx/3KymbaBO6HclZKEnclKf8ZRMY0RLHC2+ut/+YSLmeWxn1m5XJUovg6H8R
	 1QlDX8HZfDzxoAH85bABSX8d6EoGsRZNEoQvEoXpXTywP8swGdaGKY3Q4AuiW3pGy1
	 EkE8Ll6ikyFSUtEA07svxUXxSUGEOXPk2EwFplkKgUprn1gP/vCvmYV/sszhQ6Zm/W
	 K/6cozM+4BlzmI9UNhXL887b/dKbUd8TXCme7jR3CppXJ0Hf0gafc3Av7eVvNPcGnj
	 fT4GlltWF4txfUyS9GcLo22npW1hqIOduzgalpfebb5ixwyVxqZ1LNfL83+LTqDbH/
	 MB6i63QCKibeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F8D8411D1;
	Fri, 30 Aug 2024 17:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC06F1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 17:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4A5142469
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 17:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gGgr4RHChrt3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 17:13:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6CF6040B47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CF6040B47
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CF6040B47
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 17:13:01 +0000 (UTC)
X-CSE-ConnectionGUID: o9q5z4F0Q4qojO7eUe2SVQ==
X-CSE-MsgGUID: orb5uUHWRGOxpmAByd8Nww==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23873865"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="23873865"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 10:13:00 -0700
X-CSE-ConnectionGUID: sbOK5DZqTSiXVD0oKcUs0Q==
X-CSE-MsgGUID: OUxWKdP+Scykn28nCuMf1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="94692268"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 10:13:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 10:12:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 10:12:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 10:12:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uJhwPBXcXYraDa0+Fl3z2n/wKNm3qCBYRM/yoUp8b/GmRbw6Q6E8gbiib9npdbbY1V1yqicw0wy28ExY7irr/UMxAa0hrdLlPTOKBM/JtFbnOadjkSTzMyvYsGkT0AQijN/jPTHLjpGzZQCN4se9fBfiYk2wj1LHu+hmqcKq3ZX3Rm4JlEnGBONNYS0o9T5RmgW3w82kau1rM32DEJOmzbsuLTj5TTq5tfo1nxBVtSo8YS1N4hj9TDZ1Yn+1dSM7PiBDNfmLvPxLg/cvhSaY1AytykYT1yVe8bupI+l5vpGss52dEzeKRkONcFm+52mqUPhD1xVfGSkROqUk7wjSpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i8Cf++nsaJNeiytqpMYSzNokZXTTq9dIYjFhrBWd9+8=;
 b=RM4d/q246APQld/bBLFe8rwTYOjOT6hwkJCC/s+UYjWWcoHx5olbxWc+yvWKZCe45xXhyt+j3+lCtPNe1UaQr8XMHGPXYOvOC55ZZ+f/t4vjvYPQF2z0McT7Kx1xgJ2hxUqN7e71zav+s2KqdvIV1oPItcxkMpUGRl2aBheAP6wqVl+rmTZ8P3SdsUJ9ftv5PWflhEL5CjopK+gVYErdEYbtKnSqmbmZ+Rqe0pqn/L1/mtAl8S2uHWEO3hddXOzCz4BdoauU8fM9oYPazvgFR6Tz8OsCjVKbGlrvZcap315nd1rtO0TO3MN5thGCUrzMstOSG3SENIeHcsQLX+ydew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by SN7PR11MB8066.namprd11.prod.outlook.com (2603:10b6:806:2df::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Fri, 30 Aug
 2024 17:12:57 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73%7]) with mapi id 15.20.7828.023; Fri, 30 Aug 2024
 17:12:56 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Thomas Bogendoerfer <tbogendoerfer@suse.de>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH net] ice: Fix NULL pointer access, if PF doesn't support
 SRIOV_LAG
Thread-Index: AQHa95Y1Efi2DG9iyEmO5dKgB/gp5rI5SQiAgAAKBACAAV/0gIAAx+wAgASTPaA=
Date: Fri, 30 Aug 2024 17:12:56 +0000
Message-ID: <IA1PR11MB61942396759BA7F1C20BA41BDD972@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion>	<20240826121710.7fcd856e@samweis>
 <362dd93c-8176-4c46-878d-dd0e1b897468@intel.com>
 <20240827211224.0d172e40@samweis>
In-Reply-To: <20240827211224.0d172e40@samweis>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|SN7PR11MB8066:EE_
x-ms-office365-filtering-correlation-id: fd5a934c-c960-4394-a461-08dcc916fe0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aVpabWtPRWxYdDYzTFdmSTFzNnQ5NGVBWmNnS3E1bkZMK3AyM1BiZWtJb2F5?=
 =?utf-8?B?bGlpc2wrMFo3aTBONUZtWW9KZVhTVXhyY3ZDUFM0WkovS1VtR0dSQzdTNWxR?=
 =?utf-8?B?L0hhdklxUWo3VUExTWhjaDgxaFJHc3pMbzN3bmh3a3JMZGlucmszOW1iMUds?=
 =?utf-8?B?d09BbHh2SW5wZmx3SFJ2RkVkK2pYbHpNd3VKTExtNlQ3SkhMWHRoQ045NVJT?=
 =?utf-8?B?WXVwUGttbFd5KzdPdkJDQWZoeHJtM1U1by9qenlTNXIydkgzQ0NHRzI3b1Uy?=
 =?utf-8?B?SXdCVHhHc3VuUkM2bkFnUENpU09TQlcxWFlIajVyYVk4cm0wZGV2dmQveEp5?=
 =?utf-8?B?WHVSeExqV0g0TE9TR0RYbXZORy9SRlU2algxSFo1NnBodFZpbEY1OFZYSE0y?=
 =?utf-8?B?bWtlcnZZb1pEUUxUODdiUSt3Q1hZcDhYQnM5S25FZjFRVm54T1RnSVAybVhT?=
 =?utf-8?B?eVAyamFBUEU3MmVtcVpPWkdDMVR1R2hLMjZzYWlTeDhna2t5UThlZzlSU21p?=
 =?utf-8?B?RkcxaVVPTGhNdVc0M1h5ejBmclZWbXU2dHdXMnpuYkJKWE9aNWEzV3NVdTZz?=
 =?utf-8?B?ZHlmUzJNT05BYi94S1NEQytJb1drWFBQdmtBaFc5SnBUUkt3UmwxOWdwTVpP?=
 =?utf-8?B?cE9Uc25za1NSNUpiQW1GTU9MUTArWi92ZzN3REZGYU9sUllpRmdsampRMU9z?=
 =?utf-8?B?dm1WQkdqTUZVdXd0OUw5QUEySXNWU2lkSWRNTGhEZWJSMWs2cGZsdHREaTdl?=
 =?utf-8?B?M004RGJIU0U1M01NNmhxQzBPOG9MYjlhZ1ltdm51OWtNb1ZZZXl3bW5xSy9L?=
 =?utf-8?B?NXRzamQwcmJyd0E4QjFXVFlnbHlGeDZ3cC9GSWV4YmRFbmJBbGFCaVVnUWhD?=
 =?utf-8?B?alZLQWZJeWVqRityUWIwK01uaXZ0cmpaVld3TE1FN01yc3Zrd0FVMnI5aEp0?=
 =?utf-8?B?UnRRMWRsS3Jnc3M4TkcwU1p6S2V1amxKSmJVZGhKUFg1TXlnaDRWVHUzL0Zs?=
 =?utf-8?B?N2UzMnk2aFRZZFpmazNMMnkvazZEWVhvSmVMd1BOeUQ5Um1DU2pBdnZDMVRh?=
 =?utf-8?B?N0RLVGlvcVFaSjVrdHQzVFNBbmI0dGN3ZnovcnZJbEtzUHVSZC9kQ2M5TThj?=
 =?utf-8?B?SGdXL0pmeHY1N2ZibUozWE1LOVFabFNMazZYNzRiMmRuWmttU0VEZlp6SnpL?=
 =?utf-8?B?NGtKZ3JJWHZxT2RYOUJVZm5zQTBFN1FuSEFzK0dFZmpwWldacFVpT1dhYW1H?=
 =?utf-8?B?UjA3a0MvV3lQdTJGVk5KSGE0b3ZQNWtmNWwwSHV4T2RlSld4WG92R3dBcjJt?=
 =?utf-8?B?V0QzdWUzQzMrSjRHVXdhMUsvVjhQOFY1MWZmUHRleXNVVHRtK0V6cHdUUzN1?=
 =?utf-8?B?N0xVcFhIWjljM3BFTXpCS0NlQW5uOFRRQy81WHJiSmNqWU1XL2FCbHhac213?=
 =?utf-8?B?VEFXbzRuOHpnNjVxbFIyVCt2Sm1hNkFWdHUxelViQjNIRi9YNy9RTDBVUzVO?=
 =?utf-8?B?eTJSb0JOZFRDNTBQK0Q5MHVVTkl6TFhlc1Jqd2JoZDI0S3RyS2hhbGxWdEJT?=
 =?utf-8?B?RUllNmZXUloxTytFcThVRE9HcCttZjhOUGNIdTV2S1lzVVlKWFNSKzQ0V1Ja?=
 =?utf-8?B?eHNSR29Cdk1aYi9VSFpiYVJjakRTT3BqTHpyTWhQS2tvSitXMDRFT3V3YzQ4?=
 =?utf-8?B?Vi9nWHZzT2RqSFRnQzBqaUpUaEdUQngxQWpnRE42TG9TS0x5S0thWEQrc1FY?=
 =?utf-8?B?cUwzVUJuRVA0Z1ZiNXZFc2pjdEVRZmVVUzBFc05MWFFwL1dZRHltTG9kbGlF?=
 =?utf-8?B?T2YzSDJMU1ZRN2d3ZHU5QllWTEwvTGRmVXM5VzRLaGtnL1BURTVuSnZjWXdF?=
 =?utf-8?B?VnlXQXZNZ3FWMTgrWVhuWUp2bWxaVldnN2ZNSkZIRjYvV2c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Kzhjd2c2bXZSalZsRk9XbUQ4aXZQbWxOTUZyUkhGUzE0dEt4YkgwbFdRVlBH?=
 =?utf-8?B?TVJmKzdvcEg1SndUMWpJbnl3K3RzNXJmSUVqcXgvcTcrdlN2aVJMMWtuNXFX?=
 =?utf-8?B?QlY2RVc0dVhnazNGdGNsUlRnWHNCNjRHcmN6Ni9TZkVQeTdvUlBTZDJZSnhm?=
 =?utf-8?B?OTFtRXladTlJOXA4M3lwbTNwL3NyNUdWU2J2c2MxVlphR2VPM3daUDZoNUJM?=
 =?utf-8?B?eDJtMkNicnRyWTgycGNsRVdQbFpuQ3E5RDN4dDNFTVUrZXNNRUhaMjNzcTU4?=
 =?utf-8?B?OFRBaStadUVBZFJkODdRWU5lVnJaU1RaZldldEw1cmNncCtjRmtNeEx1K1dN?=
 =?utf-8?B?Vko2c2JKWUpQL3c1eGJyY2RFd2gzQVExWnAyaFZqNGlzcjJNaDVhK3J1Snpk?=
 =?utf-8?B?bEJqR0tVRVBQa0lWY2twbUpHb0oyRGQ4WHdSM0d3RERjZjloNTNFeGxNQTBv?=
 =?utf-8?B?dllkeTJkK0c0WkU0b1lQTlRYc09EUkNQSy94VitBUGRpWXJWb3R6NVBsbVNR?=
 =?utf-8?B?WStEZ2R6OGE5WTZFSWRCNHdlU1BTTjZEdTRFQWk5SHJld1FBL1dUZGc2cFli?=
 =?utf-8?B?Vm1jdEZ3V3lXU1JWYWNMSkV1cHFHUi9vNVJETHRueENtaVpuVTNGUkFKQ3ps?=
 =?utf-8?B?Y1VLTEhIMXZqZzJJRHhJMDRHb2NvU3hmbW9PMUtkVTFCVnhWREhqZlNjT2N6?=
 =?utf-8?B?RzdyZjkwZHpieWhKb1l0K1FScU9qeUdpV2VBUjFvUnhXRFJGVXJ2UVRZdHh4?=
 =?utf-8?B?bndOKzB6M3JWaDRHTTNuTENiTlpBcVVod1J4WVhKeUx3cklIUzU0dHhGZXFa?=
 =?utf-8?B?L0xpZkV4WVhOUCtRdXBvQXczNC8vMzBaQnlDckgyemNMMlNPOTlIVGsrTUxj?=
 =?utf-8?B?YlBXMXFrbEpLUGY4ckhBa1JGcE5BcG1teFNKYWtoNHluNTk1WE5ZTnVHR0F0?=
 =?utf-8?B?bzJpUUxuUiswK0xoWUV1WVFqdHVpYU5oT29QRXBqZGxhY2JQUUJTYkc1NUxI?=
 =?utf-8?B?TldwYlhYL1pXS0R1L2xoekM4RXhoejZlbXdjSUhpdWdLbVRJd3VSVEVFWHBN?=
 =?utf-8?B?d1ZyWmxEYlloeXgwT0VCQjlDelN2S2NXdDJGeE9EdVRLWWlRbjdsRDU0S0xD?=
 =?utf-8?B?aXhmRnQrSEN3Y2kwQVRBZUN6WWdPWU1XNDBrZmxrenZydEcrMDhmc1pQNTQy?=
 =?utf-8?B?K3ZZN1Z6L21hRHpUNmp6VVBKeUk4Ky9uWXQ3WDViOXh1RXpLSzNLVHJHc3ZL?=
 =?utf-8?B?bDZNTDl3UUszc3hSeFphNHRCOERrblc5Y2tHaFRnSmxmSkpKWmZ1Vlp0YmRl?=
 =?utf-8?B?RGdaOU5qNFJrQU9oOXNLZWFmMTM0U2NLR20yeFZBMXNiZzF4dW0wRllEQ1lO?=
 =?utf-8?B?NVFKZDZ2RTFFRGNyRlptOWpyTnpHTDRaUmFNOWJEVjlQRldaei9ZckYrRHEr?=
 =?utf-8?B?THNrdFdEckpZbktIaUJpM3JZSlBsTzV5TlA5dzFKVTc2a0QrdXhOdXBjbFVa?=
 =?utf-8?B?SjEvbnBYN040UEcvSTRSMDUvVTVwLzllK0FlSjdkZk42NUI2c1FnTk5JWUhN?=
 =?utf-8?B?MWh3Sjk2YXBzWFZEbVM4MzRncG02QmIrQ1lFaEFONVQ0aEVUZEo1dFpxd205?=
 =?utf-8?B?bjh4RWtjTFZGUXpCN0NHcE1ZTC83Q2tqMXdIekpzWFFscys5b2loNnFVZHMw?=
 =?utf-8?B?VlRXNStMbDV0ZkV0VVFQcll2bGJFYmlsYk02dXd6bW8wRTRzUlZwMU5CY3pW?=
 =?utf-8?B?REc4eStYRzJmL3c3dmpJWmJ5N21Lb21SRWFzWG1MRW9lZ0NVUWNaUUs3R0VR?=
 =?utf-8?B?clpoUjRGd1ExWjZ3d1NaT2gzZ1pFUE1BVStxWWxsd2VFd01LYk94UlBMcHRr?=
 =?utf-8?B?MHhBSEhNQmlUcG8wVHJvdlMrWUozeHFnMFFkNG13SmIwWjUyRXhkUk1GdUQ0?=
 =?utf-8?B?Y1lZZ0wxaUFTMyt2N2FUQitIdFN3MTJ3T0xSci9waHVoVFFPMkIvTmNyNU53?=
 =?utf-8?B?MnR5Z2U5emtaQ09MeHpSVDdvMElkajJJY1RFdTNObzExK1lOenV1bDBCRlRt?=
 =?utf-8?B?eHQ0VEdiRXZWVlpEaGVCbFFzL1l1b2tBM3JJd290SDBiQXAwVFBBdXRIZEFP?=
 =?utf-8?Q?DTgK1A0d6Gef1abZ2ViHOezdL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd5a934c-c960-4394-a461-08dcc916fe0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 17:12:56.8082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TqPuiGfnKurxLne7UfPLjikNwJ3Kl6ktrk6QIqBQ4x5x2TDbfwnXbMCktrQA7pLEG/uVAplYtg2tdXfBMEOcpCVaeEWjksHHQ4FYAfX22vQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725037981; x=1756573981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i8Cf++nsaJNeiytqpMYSzNokZXTTq9dIYjFhrBWd9+8=;
 b=mv0774uMPMX9sh9DuULpj4YDm8NxezeA9o/TdI88GOmzGcoRHFFpxWjH
 AAoHRq2rFFytHwxTq4aFKYFjQeFWETzekqp47/V71xzD0estLvzjM5MYc
 LLv2N7ueWo8m8LNFVWmvxzMhZa6jn/jEbSNWVOTH1RsELxTdslEbcmm9K
 egvwNWIrs7IiowB0jv7BBLR2M3MUngVSoOYarpZzfxNak8/L5mrLmem5J
 EpYJQMjiS/+N01W+Gi35RVyai32qp0KUFlJrL59mUX4h6kyUgi89CIGIk
 8cwsV+hJL/NWjAoao2oQ6k1q3UHRDi3OZX6KKzX7WHbpXcHgrtauiAZpG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mv0774uM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBUaG9tYXMgQm9nZW5kb2VyZmVy
IDx0Ym9nZW5kb2VyZmVyQHN1c2UuZGU+DQo+IFNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyNywgMjAy
NCAxMjoxMiBQTQ0KPiBUbzogS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVs
QGludGVsLmNvbT4NCj4gQ2M6IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IERhdmlkIFMuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMg
RHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViDQo+IEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBpbnRlbC0NCj4gd2ly
ZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0K
PiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBFcnRtYW4sIERhdmlkIE0gPGRhdmlkLm0uZXJ0bWFu
QGludGVsLmNvbT47IEppcmkNCj4gUGlya28gPGppcmlAcmVzbnVsbGkudXM+DQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggbmV0XSBpY2U6IEZpeCBOVUxMIHBvaW50ZXIgYWNjZXNzLCBpZiBQRiBkb2Vz
bid0IHN1cHBvcnQNCj4gU1JJT1ZfTEFHDQo+IA0KPiBPbiBUdWUsIDI3IEF1ZyAyMDI0IDA5OjE2
OjUxICswMjAwDQo+IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT4gd3JvdGU6DQo+IA0KPiA+IE9uIDgvMjYvMjQgMTI6MTcsIFRob21hcyBCb2dlbmRvZXJmZXIg
d3JvdGU6DQo+ID4gPiBPbiBNb24sIDI2IEF1ZyAyMDI0IDExOjQxOjE5ICswMjAwDQo+ID4gPiBK
aXJpIFBpcmtvIDxqaXJpQHJlc251bGxpLnVzPiB3cm90ZToNCj4gPiA+DQo+ID4gPj4gTW9uLCBB
dWcgMjYsIDIwMjQgYXQgMTA6NTg6MzBBTSBDRVNULCB0Ym9nZW5kb2VyZmVyQHN1c2UuZGUgd3Jv
dGU6DQo+ID4gPj4+IEZvciBQRnMsIHdoaWNoIGRvbid0IHN1cHBvcnQgU1JJT1ZfTEFHLCB0aGVy
ZSBpcyBubyBwZi0+bGFnIHN0cnVjdA0KPiA+ID4+PiBhbGxvY2F0ZWQuIFNvIGJlZm9yZSBhY2Nl
c3NpbmcgcGYtPmxhZyBhIE5VTEwgcG9pbnRlciBjaGVjayBpcyBuZWVkZWQuDQo+ID4gPj4+DQo+
ID4gPj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBCb2dlbmRvZXJmZXIgPHRib2dlbmRvZXJmZXJA
c3VzZS5kZT4NCj4gPiA+Pg0KPiA+ID4+IFlvdSBuZWVkIHRvIGFkZCBhICJmaXhlcyIgdGFnIGJs
YW1pbmcgdGhlIGNvbW1pdCB0aGF0IGludHJvZHVjZWQgdGhlDQo+ID4gPj4gYnVnLg0KPiA+DQo+
ID4gV291bGQgYmUgYWxzbyBnb29kIHRvIENDIHRoZSBhdXRob3IuDQo+IA0KPiBzdXJlLCBJJ20g
dXNpbmcgZ2V0X21haW50YWluZXIgZm9yIGJ1aWxkaW5nIGFkZHJlc3MgbGluZSBhbmQgbG9va3MN
Cj4gbGlrZSBpdCBvbmx5IGFkZHMgdGhlIGF1dGhvciwgaWYgdGhlcmUgaXMgYSBGaXhlcyB0YWcs
IHdoaWNoIElNSE8NCj4gbWFrZXMgbW9yZSBzZW5zZSB0aGFuIG1haWxpbmcgYWxsIHBvc3NpYmxl
IGF1dGhvcnMgb2YgZmlsZSAoaW4gdGhpcw0KPiBjYXNlIGl0IHdvdWxkIHdvcmssIGJ1dCB0aGVy
ZSBhcmUgb3RoZXIgZmlsZXMpLg0KPiANCj4gPiA+IEZpeGVzOiAxZTBmOTg4MWVmNzkgKCJpY2U6
IEZsZXNoIG91dCBpbXBsZW1lbnRhdGlvbiBvZiBzdXBwb3J0IGZvcg0KPiA+ID4gU1JJT1Ygb24g
Ym9uZGVkIGludGVyZmFjZSIpDQo+ID4NCj4gPiB0aGUgYnVnIHdhcyBpbnRyb2R1Y2VkIGxhdGVy
LCB0aGUgdGFnIHNob3VsZCBiZToNCj4gPiBGaXhlczogZWM1YTZjNWY3OWVkICgiaWNlOiBwcm9j
ZXNzIGV2ZW50cyBjcmVhdGVkIGJ5IGxhZyBuZXRkZXYgZXZlbnQNCj4gPiBoYW5kbGVyIikNCj4g
DQo+IEknZCBsaWtlIHRvIGRpc2FncmVlLCBlYzVhNmM1Zjc5ZWQgYWRkcyBhbiBlbXB0eQ0KPiBp
Y2VfbGFnX21vdmVfbmV3X3ZmX25vZGVzKCksDQo+IHdoaWNoIHdpbGwgZG8gbm8gaGFybSBpZiBw
Zi0+bGFnIGlzIE5VTEwuIENvbW1pdCAxZTBmOTg4MWVmNzkgaW50cm9kdWNlcw0KPiB0aGUgYWNj
ZXNzIHRvIHBmLT5sYWcgd2l0aG91dCBjaGVja2luZyBmb3IgTlVMTC4NCj4gPg0KPiA+IFRoZSBt
ZW50aW9uZWQgY29tbWl0IGV4dHJhY3RlZCBjb2RlIGludG8NCj4gaWNlX2xhZ19tb3ZlX25ld192
Zl9ub2RlcygpLA0KPiA+IGFuZCB0aGVyZSBpcyBqdXN0IG9uZSBjYWxsIHRvIHRoaXMgZnVuY3Rp
b24gYnkgbm93LCBqdXN0IGFmdGVyDQo+ID4gcmVsZWFzaW5nIGxhZ19tdXRleCwgc28gd291bGQg
YmUgZ29vZCB0byBjaGFuZ2UgdGhlIHNlbWFudGljcyBvZg0KPiA+IGljZV9sYWdfbW92ZV9uZXdf
dmZfbm9kZXMoKSB0byAib25seSBmb3IgbGFnLWVuYWJsZWQgZmxvd3MsIHdpdGgNCj4gPiBsYWdf
bXV0ZXggaGVsZCIsIGFuZCBmaXggdGhlIGNhbGwgdG8gaXQgdG8gcmVmbGVjdCB0aGF0Lg0KPiAN
Cj4gSSBjb3VsZCBkbyB0aGF0IGZvciBzdXJlLCBidXQgSU1ITyB0aGlzIGlzIGFib3V0IGZpeGlu
ZyBhIGJ1ZywNCj4gd2hpY2ggY3Jhc2hlcyB0aGUga2VybmVsLiBNYWtpbmcgdGhlIGNvZGUgYmV0
dGVyIHNob3VsZCBiZSBkb25lDQo+IGFmdGVyIGZpeGluZy4NCg0KVGhvbWFzLA0KDQpOaWNlIGNh
dGNoIQ0KDQpJIGxvb2tlZCBpbnRvIHRoaXMgYSBiaXQgYW5kIGl0IHNlZW1zIHRoYXQgd2hlbiBJ
IHNlbnQgaW4gcGF0Y2g6DQpjb21taXQgOWY3NGEzZGZjZjgzICgiaWNlOiBGaXggVkYgUmVzZXQg
cGF0aHMgd2hlbiBpbnRlcmZhY2UgaW4gYSBmYWlsZWQgb3ZlciBhZ2dyZWdhdGUpDQoNCkkgbGVm
dCBpbiBhIHNwdXJpb3VzIGNhbGwgdG8gdGhlIHByZXZpb3VzIGZ1bmN0aW9uIGZvciBtb3Zpbmcg
bm9kZXMuIFNpbmNlIGl0IGlzDQpqdXN0IGluIHRoZSBlcnJvciBwYXRoIGl0IHdlbnQgdW5ub3Rp
Y2VkIHRoaXMgbG9uZy4NCg0KU2luY2UgdGhpcyBpcyB0aGUgb25seSBjYWxsIHRvIGljZV9sYWdf
bW92ZV9uZXdfdmZfbm9kZXMoKSwgaXQgc2VlbXMgdGhhdA0KcHJvcGVyIHdheSBvZiBmaXhpbmcg
dGhpcyB3b3VsZCBiZSB0byBlbGltaW5hdGUgdGhlIHNwdXJpb3VzIGNhbGwgYW5kIHRoZSBmdW5j
dGlvbg0KZGVmaW5pdGlvbiBlbnRpcmVseS4NCg0KSWYgeW91IGRvIG5vIHdhbnQgdG8gZG8gdGhp
cywgSSBjYW4gdm9sdW50ZWVyIHRvIHdyaXRlIHRoZSBwYXRjaC4NCg0KVGhhbmtzLA0KRGF2ZSBF
cnRtYW4NCj4gDQo+IFRob21hcy4NCj4gDQo+IC0tDQo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25z
IEdlcm1hbnkgR21iSA0KPiBIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykNCj4gR2VzY2jDpGZ0c2bD
vGhyZXI6IEl2byBUb3RldiwgQW5kcmV3IE1jRG9uYWxkLCBXZXJuZXIgS25vYmxpY2gNCg==
