Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D132A948CBC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 12:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D25C440341;
	Tue,  6 Aug 2024 10:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ncuh_0877Lw4; Tue,  6 Aug 2024 10:23:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C272140225
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722939801;
	bh=KnjL47lvo/2pJlQTgvlbosANb+n3e42Glb/wMwna3uY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Le2E/80hUWpipaDe66IsqQfel6kO4kqiczCDaB00Y4OozXYeupaNokyBksJeEnBES
	 NnFMXs4sTlv4TvAVxMfUOhK6VBv+UEPigRgzzj80bGJ1j5ml17319lf1NswVNlLUed
	 MgYeyZdt//r2EriMejGGR6YxOySDQ49hq2hWZ+YrC6Pru0CF1fj3pJUy01Ur1MC0dB
	 R/A8S0AojYdkT4r4h+u8oJxD9e4tDKYxWoSaF3QI7U6a/6fNpKM3jgUM21sG4uNcY/
	 ntMnU1fhQeZCqB6ta9vhgjpRSg4Nexjj2cLg3wdHnkJRPv2mwKgzFr6POMEoiHWhEe
	 1uC0hexq4n8rw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C272140225;
	Tue,  6 Aug 2024 10:23:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDDFB1BF408
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 10:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D64EF4036E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 10:23:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZ_JKQAPW05c for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 10:23:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA323401AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA323401AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA323401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 10:23:18 +0000 (UTC)
X-CSE-ConnectionGUID: ZBH0FMIaR8Ccz3R4WVT6TQ==
X-CSE-MsgGUID: 16qvXF20SnSZKTHDxCY+EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="46350326"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="46350326"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 03:23:17 -0700
X-CSE-ConnectionGUID: p4EM4P8tSxy412UfH+zN0g==
X-CSE-MsgGUID: wvbVKFM/S76sWYQcGbAKwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56352201"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 03:23:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 03:23:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 03:23:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 03:23:16 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 03:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gy4AbxRODQ1VM+8Q8M1qpdBYffMcuBhkYjQhuM2VtTUER/bGjedK1eoJqNAoPPhL9Bm8S0Yb1V/ksGYXXAP4ivogfRXgcU5Pl3BwVVcUpbfwyrqs5TGWOKymX6m9nGI2su0wyflluhIExO13nVteI6t5KeXYQ318C3FHjAd4j9ddGmThi/qr8Jyf9K4YueoypPK46GdD2gDwveTUFJDp+tXgcJH/zECsK6EBVpB6NQibFty87giJgiKpY870YoEiMKw5P63b2u5u4jHk22sNqTX9+C+zELGWfCkKRD+82SRg/0MyrM+57JRXWpDGEPo+gVhzQhjTKeaKA2vDNHigtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KnjL47lvo/2pJlQTgvlbosANb+n3e42Glb/wMwna3uY=;
 b=mDgB6yTDdOlWiPKGXOs7fNTEQhikjqRqG0rxG2X2FKYTktF6jXPsmWe0NLFbK3BZ95UrA7d1Z81/ngU0MXP+NjZTlMXCNY4IGsk60EOZgFPg3viyxKk5rqtTU/Vg0P9O1nlbsr2QpWeOfnDelIEzNYss7xPEtL6bRgjne0HNl7gcN1RzabsTqYKzjPZ16hql0GsiHwADAY4qr+B/OULEFWrED2QUY29xXCihE9CYyAtfvNh1usPK7PqURYLZLzvLbL+uaSP+sifYo8UuSVRfHLDy7jCK/svbEZfjZ/N95B+j4n0usVrNk4ZjItD8MKWrX7750wvqBeYP1tjibi65DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6664.namprd11.prod.outlook.com (2603:10b6:806:258::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Tue, 6 Aug
 2024 10:23:12 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 10:23:12 +0000
Message-ID: <bfc4a6b1-44c0-49c4-a930-e69825e0e446@intel.com>
Date: Tue, 6 Aug 2024 12:23:07 +0200
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20240803182548.2932270-1-manojvishy@google.com>
 <20240805182159.3547482-1-manojvishy@google.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240805182159.3547482-1-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0137.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6664:EE_
X-MS-Office365-Filtering-Correlation-Id: 10c1f7ab-3a5f-48e7-1a4f-08dcb601c6ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WjRUd2hjV1BhbmZLWWM1UURKcnQzVnZ4bFM0U3lzYVgzY003N1VRS1FtcjBG?=
 =?utf-8?B?bFQ1LzBNR1pWWmpvdkU3azZpbUVqRE1mSTFpeDBmbmtCanpnbzZGVitUV3Qv?=
 =?utf-8?B?Y3M1dndDUi9wOHRIYVNsc2trV2RYaGlKdEtUQ0RxRUVjNjlETUExVWZORVRx?=
 =?utf-8?B?K1B2ejhVZGxFRkEzRlZ4NWhXQldqTWxaTVN2SVg0VitNTHU1Tmpub1hwVnJo?=
 =?utf-8?B?NFF0U09Bd0FBQlhtZ3g0bUdEM1JjZ2gybnJBTUFVeUdNcVdJbnc0bm82Z1B2?=
 =?utf-8?B?TS9jNVovOThoYmdzNzRkaTlEOXA0RU5XVXpzWmlyOEtLSVlIbUU4V1FvRW52?=
 =?utf-8?B?WGI0ZHUwTlBvZmRJbXZFTEFUWmtRV2ZxYm9xNzYyS1E5VnZ5RUtLZUUzT0J4?=
 =?utf-8?B?a3V3Mllsamo4ZitTZzdVK1hhcm1QOGVaamZYZHVkcjZweitMSHFNWTR6MExj?=
 =?utf-8?B?MzZ4L3hMUlZ3ZWV6bTlUdG94WGcyNGx1THl6a0lzY1o3bEV5QmlyMXVONlNr?=
 =?utf-8?B?KzNvMzZyeC9Sa1o4aE43eUczQmtPejJVQllTNVBVeTlyVk1DNU8yL2R4MlB5?=
 =?utf-8?B?RUhLa3JYRmoxYlZ3OW01SCsxYlpNMlJlekxvTXg0UHdUOGFnbUpxd3ExZmRW?=
 =?utf-8?B?MGt2QkViMFA0RzJPU0NyUnBIb3luQ2NobFJ5TGkrd2NGd3Nqa2VpR2QzKzc5?=
 =?utf-8?B?YkcyTk5ZdWI1RytvRWVGTjVVSmtPNktTRGxKVG11WitlVHk1WG5xalhzV2tE?=
 =?utf-8?B?NWsxRWhrWkZCM1pJVTJLS09FM3poc0dCaC85MDZVVkRwazRHNGR1Z0U1ZndB?=
 =?utf-8?B?N2hDcG4vQksvL09VWXZ6NFR2T04xZnJIOWRoWm1BMGZGM3pQMzJnL1dFNnda?=
 =?utf-8?B?RW1HNUtuYWJjM012VnpDMDlFRW9QTHd4amtreTVzajZGcGVGLzNOZkREN1Vn?=
 =?utf-8?B?dG1BRFJsQjVhUmoyY2EvZFNZZHowS1c3eEkzeDlzejcxd2NSS1ZDS0tKempW?=
 =?utf-8?B?SzdkdlppaDR5emcxZ3RZaWp0QVBuMDRoU1ZCY3RhMWVydjVLakhwQzF1UEx1?=
 =?utf-8?B?aWZvN00zZkg5ZlNER2NpSU5oRGNWYzRabTJFL2FuY2F2M3NDNzdtREk0Ukk2?=
 =?utf-8?B?MkpGRzJEYlRwK01SU2VhS0pXV1dvblU3YWRxaHZCWnNXUnZzWGlsckJDeGYx?=
 =?utf-8?B?T244amJlS20yU3pJUERoWEJEZW1NRzlzWmFiZGJNV0xqanFKbkg3YnNSYmlL?=
 =?utf-8?B?YURmNzlCS051alJkeW1sNHhKMGpLWFJ2VFVNMnYrajRkN1VTemNHYUNQVSsv?=
 =?utf-8?B?bTQxMGptRHFQcnI3RExIQk5mZ0YwamtIVXY2czBtWmNZS3RmaXkyTEl1emhz?=
 =?utf-8?B?aTRBSjZvOXpGK0tqdElnM3lvdkdQNlBzejFaRFgyZXNTc0VYQ0RuMW9wRDVl?=
 =?utf-8?B?MlVFSWRSbzJjVUd5LzA2aytORXlNK3hXY2UvT1EwMjdCV2NsRmNHdjhBWWx4?=
 =?utf-8?B?STRSb0hYTXAwaDNOaStPaTJOaFEzV2ZoSVlPTjJFWmJwWjV2dmYxanNCRTdY?=
 =?utf-8?B?M1Z2NUhkL3J2Y0lhTGkxVFlpZ25tajh0MXBLUWlsK3RCRFN5OG5WZUZPeFpJ?=
 =?utf-8?B?c0ZpTit6cmNib2E0dUUvN2tJZU9BbUN2MTI4VFZ6UGZNL2RkRFVwczdNREI1?=
 =?utf-8?B?ZDhpUTlmNjZuY3RqU0FpbVdNN3piVXpCTDVFY3lkZGRjT1JqL3FBODZNRUM1?=
 =?utf-8?B?MWhRN29yVis2R09pSHNiTk5CYXhDTE9Rb3FHQjB4Nkdjb3FJcU1MUjJBVWh6?=
 =?utf-8?B?enBNKzNPMTcxdWovY1FYQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGJLLzhPRmRmb3BUaVBDV09Cd2xDNmdQNC9UV1MyWktjOFV4OE5nK3FjSFVi?=
 =?utf-8?B?ZW5lK0o2Q0xmSnRmM1VLSklCdnE4MWNSSnh4Y1h6OUd4WmdCZDM3VGNjQzAv?=
 =?utf-8?B?Sk1QeUtFR2syQTg3ak1PUStUd1FDSFNIbnhpaTBDalRYMzRUK0xZV1MyRGFQ?=
 =?utf-8?B?dnI2YTZ1eUhtR29ZSVQ2U2VYN1NxMnkzbUtsWncxMnlvL3BPTVRRQi85WDdm?=
 =?utf-8?B?NHNmZjgwbGFhdVZ3UHhQMmdhQXRDSHJyRmxHTCtwSk9YSlhFYU1aVEFsSU5w?=
 =?utf-8?B?bVBvVlM1cThzRDVNV2ZmRWxwTWczdmRXa1R0UTJ2OFdyLzk5MnpObmc0VEdW?=
 =?utf-8?B?ZzhRMDA1alR1VDB0TEE5V0FZeTFBNGMwZzRkdWYydFRqaG81YzZqK04zVWJU?=
 =?utf-8?B?TUlEU2F4YnJkL3hLdklBTGR3VmU2dzI3dmlBdDh3blV0UnVCbmhQRGszR0dL?=
 =?utf-8?B?V1hIa29vWHpwYlc4TzVNalV6WW54RDRzQ3h2OVY5TXN1cXlKT3hnZEsydFFt?=
 =?utf-8?B?Z1BEV3A4THRVS0xYNEVURkQvb0JiK1BqWWw5QnVFWUVGSVE3TnBuT1lDSEtU?=
 =?utf-8?B?WkdBT01yeHIwVlhJUXIyVzlHYnQxSk5TMlk0K3pVeVdyVlIxSEhwUXp3TExX?=
 =?utf-8?B?bWl1emFua0ttV0htSnRxa0RxcHY3d1RWQWFHSHdTdVcwSkNLNUlRZ01EZEtF?=
 =?utf-8?B?Sm9IZVpBZU8wRDRwZnF3Vm9xYTlxOG84Rmw1ZjVQSjIwYmdIU0NkRFFMMStw?=
 =?utf-8?B?VzBINndHa0NvaUU1Q1MvU3NVQTMwR1NWby94OU5HREVxZWhvSkZoWkk5eCtr?=
 =?utf-8?B?ZkRJL0MyNGNybHVuZEtrNVhVcmtPTER0TTFrM0QyUlkyanFxNGxvR2VNZUl4?=
 =?utf-8?B?RzhFTFdnVHF5NHM3eHdNWTN0Tm9BemVjWkFkb2lSSzErODFhUGhXRWlabzBH?=
 =?utf-8?B?NHFxV2FnRXI5OGdsSE1FMzZyUkhPUENaUWJEQmZwL2QzMW1FQ0w0aVF4ellF?=
 =?utf-8?B?MktUNUZyVkk2NCt6U2lsbzNYOWNoSFoySDhRaEVHdWRjSTlHTGNKZDhxN3Bw?=
 =?utf-8?B?NVJ1WWZuNjVITEJ4NHlWUVNvOUg2aHQ4ZUozYnJlRHUzSGE5OHMwcnhoOWZj?=
 =?utf-8?B?UGhEMkNQaURhV3EySU9XczZYVEdRYVE3MHE5dERpVWVBYi9kd1dQRWxFR3Q5?=
 =?utf-8?B?M3hyZGhUWkxZSklzLzR4S1R0NHZkS3V4SnFydWlmTXlTa0puLzdZTi9zaERO?=
 =?utf-8?B?K3hNN2J3Nld0Z0tzRHF1Z0xsSW5IUTNUZXdHOGFXKzJPa3FicWxsN2R3MHJt?=
 =?utf-8?B?bnJBWUk0MFhFMVhscEVTemtTN1ZpYkNqMk1tYlprcDhibGdXeTg3NkRiL09p?=
 =?utf-8?B?bTJOVXhYeEFVSGNYdGdmV1pGS0pGMmhzT2M5bmVBR251M2ptWHJ1cXpzelk5?=
 =?utf-8?B?TU1WamV0bTY0K1BjeXhESDVJMjBXZzQ3eFJYeFRSY1QvMEhDOE9TM2tHTTdB?=
 =?utf-8?B?YzNMbXY1YmxyaHFncTJuVGVkWDBGc2NVNWo3UWJhRWdzempVVzBDODJjNHRi?=
 =?utf-8?B?bUMyYmRUeTNVQytjV0grUTJsT0hmdk43eVl0OUhUa01qeXNMNU1zYUl6MGcv?=
 =?utf-8?B?aERhQlNYUDBLSUR6RjBiYjhTSzQyaExMc0phQlpEQnBsVHlOK3ZCaXBLSE5R?=
 =?utf-8?B?alVUWnZtK2V4Qy9BaVk2dmNYY2x3UTUveFNETndibndsUnN1RUhhT2RGRmdB?=
 =?utf-8?B?UnBSRVZWZFVzcExERkVxQ3dkbEorcWlPZnF0ck1DbFFmN05UcFNrZWpmNzY3?=
 =?utf-8?B?RFJFUjdHM1pkL2orUFFRTUhpdGVDZzlsUnRyOThEQXBENHhCbGNqajZiMGlu?=
 =?utf-8?B?VmM5cnMvQTV4WTRqOTdJZktmaGxzU2ZzSTltWlpmQXZhQkh1YXF3QnplWm9C?=
 =?utf-8?B?M0d4Z0IzYThHWEdMbTZuU3Nydk55Tm5sTEFWNlVFNWFKSUdLOGliUnRKL1dX?=
 =?utf-8?B?ZzhyNW9POXVDVHM3MU9BZUx2SjRvaVYydzdYeHMzT3JVR2FSN1duT1k3NmxZ?=
 =?utf-8?B?azI3UTUxYnNXZXFpWFpXVXdCeDRIcEVwWXV4QjRMNUlmYjV3Nkw5a09LSlJP?=
 =?utf-8?B?QVBxQnl3c2hyNWhlMWhyK3JvT1A1enYrQXByRk1JeUpiL0FSa0gvQmxYWEVJ?=
 =?utf-8?Q?rnsUym/SB1u5BeBixIrVbsc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10c1f7ab-3a5f-48e7-1a4f-08dcb601c6ce
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2024 10:23:12.7247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w3teqBtJitZCT535qrIWh6X1r9bM6rMqjc9Gx66e5+9+8sYOPlmT93cIC9Wk1adYPD6BAV9v9uUB8Ra7o2pc1drPbuusSIVjjCZBwl+tUFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6664
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722939799; x=1754475799;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n22PlU+0Wm+URzWczjXdPKLlVN7+R8rfSheuB07CsZM=;
 b=NKWZDV69QX3vtAsW/CmQQVRKTR8ApBxmzWvNxmffMXcY6OFLzH07VyGt
 bohl3T4jrFgRh2EaFPU70d0AIvkjoLhsp67QJRDySiOQYivdoEXCRVxim
 7Z3ffqzqxTEa7lgXbykLLkTG9JK/weBqqCd5mwY1GL6Iv/LMqdXpV2PDx
 a5zKZiM09BYzJ4KXb95mhFOSc4OWNE4F5+MeXCKfn8sQDws7VuqizLvuW
 +FnI5+hj5MmNaUVDxIlUEsQIzbnHsb/5dOuvQPSj3s36EpqCh5k1gXoJR
 H4LUtawWFPvtn6oozLIsvjgEFoU7Yjthn+psyfdyJi2X1zf39j0MFyRgU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NKWZDV69
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-net] idpf: Acquire the
 lock before accessing the xn->salt
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 David Decotigny <decot@google.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/5/24 20:21, Manoj Vishwanathan wrote:
> The transaction salt was being accessed before acquiring the
> idpf_vc_xn_lock when idpf has to forward the virtchnl reply.
> 
> Fixes: 34c21fa894a1a (“idpf: implement virtchnl transaction manager”)
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Thank you!
(next time please add "v2" (and so on) to subsequent versions of the
patch/series; please also send as a standalone thread, instead of
in-reply-to v1; no need to repost this one for any of those though)

> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 70986e12da28..30eec674d594 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>   		return -EINVAL;
>   	}
>   	xn = &adapter->vcxn_mngr->ring[xn_idx];
> +	idpf_vc_xn_lock(xn);
>   	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>   	if (xn->salt != salt) {
>   		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
>   				    xn->salt, salt);
> +		idpf_vc_xn_unlock(xn);
>   		return -EINVAL;
>   	}
>   
> -	idpf_vc_xn_lock(xn);
>   	switch (xn->state) {
>   	case IDPF_VC_XN_WAITING:
>   		/* success */

