Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF61F90534C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 15:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7551380E75;
	Wed, 12 Jun 2024 13:08:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06g2BjBn03Rz; Wed, 12 Jun 2024 13:08:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7A0680E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718197731;
	bh=nN4ids9+bN6WYSlaxDPo7HzBLf0Xa/7m+jqOPjXhg04=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=amAfiqEU2RY310NVBrCEHh0QchT09tY8e9Sci84hEwjhUkjRgGD5JeOYakEcrPkzf
	 pexobBLweXN1+I2mKVpMYzy8XL5A0YqWGizFtmSTbhxinoXD6G+HJHw2zrwHUstQE5
	 zyD9QGVxxd22Zh5TIR9amRCWwwlpkfI0KbthFCes0ydTaCq1GX43bnndo9fP8UNQaW
	 rAo/rlUI60Ln7IrWceMuoMnJEUPukGSouo8QBcScCm8iVPWrz4WkQksDWLGfXWhdf6
	 p5ziY57NrTArEsltxRFsUTiXF1CVZJ0Q8OWhy1/JZg87iKNfPhyewWnkX3zBTgd92s
	 SMe7GSL4nmQ0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7A0680E00;
	Wed, 12 Jun 2024 13:08:50 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6243A1BF371
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A8324016F
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kYtIw_KIJMDT for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2024 13:08:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C553940167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C553940167
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C553940167
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 13:08:47 +0000 (UTC)
X-CSE-ConnectionGUID: Qc/VkwXGQXWMdBvo4G4+5g==
X-CSE-MsgGUID: 3ULUSsCZSgewREzbaRMeHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14832299"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="14832299"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 06:08:47 -0700
X-CSE-ConnectionGUID: r9JvhRxaTfy3n4wFt11KQQ==
X-CSE-MsgGUID: 6PxtaUU+RiqYV9ge44vlmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="40484161"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 06:08:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 06:08:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 06:08:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 06:08:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 06:08:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eFH/0UZk5TNv+XVAt5VGwNKiXcytxBqf3iXZzs0/TPwPHpgJbX6OsexAW4UJEE93nvPhpqgKOEodyg5HdODHMO0NO1o8R9gIF20qGZiR/fJLw24MNVl94k+iZpiB2iN1IjAPAHzFb0anBlfWsKBwYG3Q0fjAnMB80Hf7dytby/4plCk3jwqXXdWnjwXFnvvoXaMonnCBGtO+GshfOakZ8/prC2W7htQiXsgr+bxU9K8KRs23IpaMJL8nT5RXpBX08PxkaECO7sQRrNCJ/xuCgt97dM+mTTc/VJwk3QSIKRNOw1b2KFpE50SHbHmZy4g4SfWwr5tejQg2GmqmN9DGzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nN4ids9+bN6WYSlaxDPo7HzBLf0Xa/7m+jqOPjXhg04=;
 b=Sm+d/xCNX8xBROxxBlaQ9NO6xIChMO2l5sdcynHry/kDPqZOcP6YkUe47XcRENL7wQNTyb3qwyLK/3lftRIVYfAGiVDG7sFHi/4iqMnmJGpWJ6IUddNFY5CjD6s4xDapsBpOfGzoyt8CtZa6ndXEG6Ov7jOM5llurlGi9lxlqXCpdIaO1bfCwVkYNuqBIs87izJ2DxbkI1WZJ7WPrZ3GPkADyXU37hNvukSnsGeIangOj2nZjC8VFBTKeFgh5zxO8nlWCLLXz8O9jFt762MJ7ZVlX3+Jp08208rBmHOboBFcVX5Xd6Uc9hsuR3DeAkizGF9tggKJC6gnTxkxtM3C9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5769.namprd11.prod.outlook.com (2603:10b6:a03:420::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20; Wed, 12 Jun
 2024 13:08:33 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 13:08:33 +0000
Message-ID: <4e53555a-c89e-4621-964b-52b9b694e1d6@intel.com>
Date: Wed, 12 Jun 2024 15:08:14 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-6-aleksander.lobakin@intel.com>
 <b25cab15-f73c-4df8-bfca-434a8f717a31@intel.com>
 <7cdd9b21-e597-48ef-91a2-a45b99821b28@intel.com>
Content-Language: en-US
In-Reply-To: <7cdd9b21-e597-48ef-91a2-a45b99821b28@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0311.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: a4c156a9-99e8-484c-5fa4-08dc8ae0c32a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|1800799016|366008;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWh5RXFzYklHaGFDajhmdHc0eHpaRm1qOFhLOVhYSzJ6QTVrc3gwemFLbnhU?=
 =?utf-8?B?bmd0Q2RmYXNLOW1PTmJJZU1JRjFTWnB2TWQ0Z1hvWXdQaHJRdHNTUnk2WkFB?=
 =?utf-8?B?cHQyYi8zdW52ZnVTd2tnK290OERaWDlQMzUrZjdHdzFIOVg0ekRHMzRVaTZR?=
 =?utf-8?B?WnRTMVlhVnY4RjhOTjQyZEV3ekV5eno2ZzM4dVBPNGYxZjlmL05QQVo2YWo4?=
 =?utf-8?B?MWp6TVBsTHNnTjdXeDZYbFpaUWs1cjlsc0k1NnF5dFE4R1Zpbm02cS9oL1k1?=
 =?utf-8?B?ejlRTXlNMm1NUEIvZm5ycU1HbWdwcHVrZlU4OEJFY2E2NUk1Z2JuTGRPM3JV?=
 =?utf-8?B?Rm9ReWVHZXZ0V0xvRmo4S0RacXcwcFZoVFMyRG1TT2Z5bGhqSll6Tkw0U3FV?=
 =?utf-8?B?VXM2V1NJS09waC9rNW5lUG14b3NoSS91VHdtNFc2cTdtRXl5aU4rUnB3OTVQ?=
 =?utf-8?B?bDZOcUFEdTlzU2ZEa3Iwcm9YUWhlUW93ekNTWk1EOVlTNnlodnduUEIyLzdm?=
 =?utf-8?B?MThQSnhsa0l2cEJoM0duRE82Y0c3QlFBemltb2R0QVcrbHhLMXpKNUkvcnJU?=
 =?utf-8?B?aGxMOWVvRStYYkNUWk9GUTFIRnFYTGRtQTl0THd0Q3p2QTExeG1LVWp0RFVW?=
 =?utf-8?B?ck5FcnplTTZkRzNVbXJMUFlHNGFuQnRNb3V5MWVhc0h4VVJwWXNpZzJPUXM5?=
 =?utf-8?B?eEZldnhVckRYbkI3Z2V6VWYvN2EwQ2twVi8ybG1HYWNrcVkvNXN0R3AxMGpv?=
 =?utf-8?B?QWdSbHovcE5DQ0ZqNEJubjc0UzM1VTRjaUlBaVRrV09UZnVvYkUxTTQwZndX?=
 =?utf-8?B?bHJXNjNMbHVkUytkZS9nbXJxaWJndWZGT3czcEZGRzVqeUxOankzOFZkVUR3?=
 =?utf-8?B?M1VyUGNYY2EwaW1tV2tHZVNZVmdlVEJqTGlPemJ2U3FkZm9hRDFrV2lPdVZV?=
 =?utf-8?B?TE1MUHpIMWR2V0dUVlhNR09UdEp4UWxtTUFGSFF1OFlJUlFzMDNNY2RXUW1z?=
 =?utf-8?B?cUc5cnlGOFR3ZDc4bjg0WTVuVkU1cklNeS9aMmxIS3hXZTg3UjhDRER1bFpp?=
 =?utf-8?B?SVIwckJKdUxDUGUvcUxyUFFBNTZDK1JXWVJNb1NCTkVvZFBBTmV4NnJ4Y2pB?=
 =?utf-8?B?WnlhbzZYcXAwNStPYkxuYkFNWFllUWZqbGlhWmRhZTNRU0o3VUZzUXhTMjhZ?=
 =?utf-8?B?bmpMNFZidXlGb1FBSVI2Z1FWb0NjUUxiYk1DQjdPeS9nQlRuNDJCOGZ2Z094?=
 =?utf-8?B?R2pOakNGMi95UDRaRVhuRXFub1RUTmdxNnZQR3BIN25SWE9VcjNXSG1XdDZY?=
 =?utf-8?B?OUV4UWNZYURySUphbkh3NGc3QVM3U3VKd2JuazZycCtZNFdIeTBta3pRZE1Y?=
 =?utf-8?B?Zm13VVlVMnZsVTkxMFpSNnlPUncyVGtUcDNSR1hxRExDbmVhb21VUWo3K1Ri?=
 =?utf-8?B?THRFUlhRcFpGOHNyN1RMMmt6NVIvbnBKeXNLQSs4a1VHVWNxTmFvUG5TWlNY?=
 =?utf-8?B?VURHRGJBd2Nad3A1L1Q5SVlzTHdWMFU5bGNIcFFRS0VnR09HMUgrTThKTEpU?=
 =?utf-8?B?T3BMYis1elY2djhyeFV2T1hZUlFBVDBKN3JpcUo1elBIQnJBaFBiK2hIejg3?=
 =?utf-8?B?a0tlUzk3SGFLdTNiWVRJL2RyMTdCQm9nMElDR3ErKzUrRFU3VXNOZ25HZ09J?=
 =?utf-8?B?cUNwTVZSdzlWOU1md3NwbnVTVGEvNis4RkdvUHZ4V0tERVB1ajFId2ppWFVK?=
 =?utf-8?Q?0r366yrNPsWKcJf8fuGufzdiDhQJGhid0terwP3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(1800799016)(366008); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEc5eXlDVzRBcVFTOW5VVGYvNU9yNE94SDY0ZEpiRG5naVl5RThPOFFmS0ZQ?=
 =?utf-8?B?Yy9YZTRDekpCUVltdkhkZWxJSngwRVc3ZVdWWnZEemp3Umozd2MvMDZDRTlm?=
 =?utf-8?B?UGpQWjlHYy9ySnFTUjRtYXVFVzBQRkl4YTU4NHVjbnkyNnp5YWxlamZibGJV?=
 =?utf-8?B?MGxjbXdXVHoxQmlPQjdSeXJhbUtjaFdpNTZqS3JCZ3o1cGp0OVhBaUtjSFFk?=
 =?utf-8?B?aDRsVkRjMUk4dUtrd2JvMzVReEdYOFN3SEVFR3F6OFJLVU9oVEtSRGZiaGRH?=
 =?utf-8?B?bXh5RFhEMUlUTU0ySGN5SnhmMWJiTUIwYnBWMGZDRWEzRXpsTDYycUpOVTNs?=
 =?utf-8?B?Z0xOKzRFMWk5bFdHSVFCdE9Vb0ROS1VpOFdCNGNUYmJlWVZRWkdmMFAwRWNH?=
 =?utf-8?B?Mk40NFZYbFpUL0R1ZnNFaWk4QjdpZE5uVHRoVEhBekxOWmVPOHdPMEFabjZ2?=
 =?utf-8?B?M29wUWo2QjhXOEcrcEw2L0lxQk5HMjJJaUdqZkMxTy84NHpyY3VFZUZNTlhI?=
 =?utf-8?B?SnRVVGw0Z1pBRDRsN21DZnhEZFlsaURqSHhtUXVQOThpQi9mMEF2L0JjZ1Rn?=
 =?utf-8?B?WHEvYzl1R00yNk5vV013WnFrT21KMk90T2g4SDM1dXRtSHlkNHFXUGxIN01o?=
 =?utf-8?B?TDNFOWgwMG4wMVRQZSs1VlJXbHcvZ0MwcWVTdi9nM2ZvMG9wRnQveTlLQXFN?=
 =?utf-8?B?ZCtGaStjOXhZdG5HU2hwZWZEeGFQemQybitYMDlGbUZ5S3ppQ3hxU0dzWG5D?=
 =?utf-8?B?cnVJQUdsWmJodEpCQXdXQTdjYThLVVJjOEtMakFSNk9kQ2I2RGtIUmVtU0Qy?=
 =?utf-8?B?d0JjS1R1RmRseWhGQkwwa0JGOUZHTUVjaldwVDBHbnJFNVd0aDJQWXFvSTdz?=
 =?utf-8?B?MUN6Nm5Wa1F0MjQvdHBwVFZON2JVdnVQTm0veWEwMFE3cGpJaTBnaHorRmo0?=
 =?utf-8?B?VlhodDhaUEFmWnZhQjVnK0J5MVlmSVBGQVFvSCsreVFhNTIzQjVGR3FTZTRC?=
 =?utf-8?B?VklxUWVjbWFwWmNsSXN2L1RqYmYzVFBEZjVJTzFTY0xKNW9xVnRUZnpSN3k3?=
 =?utf-8?B?ZTJtNEtGWC84UlVpT1FXYWo0ajRScmhxanRQK2lGZFpyN3BWdENaNVNUWDBF?=
 =?utf-8?B?UnNWS0ZTZDdFNW5iOFFUQkRHNTNZeGpPZmpnKzdPOS9yL04wcjVxRHF6ZzlS?=
 =?utf-8?B?Y214YmhlZVVjck51OHUxOEdkMVdQbjBTaXVTYjNVblRiUk4xTE5ycXJCVkhq?=
 =?utf-8?B?OEVDaE1rU2sxbHlHNWFSbTMwdDV6b2pzenNHK1ZDTmJUWE04azRtWE5wSWdt?=
 =?utf-8?B?eFlRYnV2NktxbC9RelZiZnNuSnBXQjM5b3lVRDI5a1B1S2d0VnNHTzdmSDl5?=
 =?utf-8?B?OHl5TTZ4YTJzeW1FSzViTUN1S00yOHFSc0hiWlIvZWdsajVsVmtSQ1hqV2RX?=
 =?utf-8?B?U0xyZlBqYitHczFnWGRldmNkUkxLWHR2VWNuelZVV0VyQlpjNFFBQnE2OXZZ?=
 =?utf-8?B?cGdGNEt2R1JOZnMvdE8rQWdHMnNhdDhtVkx0cExMRkpYY2NMS1BHRmM5eVBq?=
 =?utf-8?B?ZWhyRDJIY25iOVFDSjNPWCtQYWYvMktRN1V1ZG5iR1FPaTZZNmFVbVY0Qldw?=
 =?utf-8?B?dFpyOEptVUFPUGU3Y21kTDhEaytiUUVqYnpkbzltT2dtZnFTeVVUN09ydVhI?=
 =?utf-8?B?bVlreWxPV1RXSjRBb3Vpd2RsYkROaSswejBnQ2krZWNHQkxSNDhIVE9VTkFn?=
 =?utf-8?B?WmFIK0xwQUZVUXZoM2xpRkdmaGR5a1dDclpNaWM0NVF3WUthaWFxSWs0dm9Y?=
 =?utf-8?B?K2lwZmNPcnE5S01RSXRuVjB5bkZkd25hcm9LL3FJMCtkMi9kZHdPSVBObjhZ?=
 =?utf-8?B?cVNEZGxySDR4di9JQUkzV0lmb1Brdnlyd0FUekdwZ2RZclZUSDVYWXBJS3R6?=
 =?utf-8?B?U3RUbUJHc2l6aGxsenI4SCt6MHRsdzdpUWJQNUtZcjg2YU5xTUhaT0ZFZzUy?=
 =?utf-8?B?V3RvcDRPUW1mYlBWR0hiNkUwL1haUmM1cWc5dHorL1A2U3Nja2EreGpmcVJq?=
 =?utf-8?B?MU42ZCtaY1F1Z0szRm12elI4SWRsd1R5NHo2MXNkVDRibG5FeUZCZlBWUzFl?=
 =?utf-8?B?Mi9GdTVBdER4MnBGVVRrNXVkdjlZSHgzKzRQTVZiVjQ3amNDMEIvQWVScXhw?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c156a9-99e8-484c-5fa4-08dc8ae0c32a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 13:08:33.2674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FcDGnFDUC4q0qskceTsFv08oc1B1/qV3mXPuAWs6DLBc8+lpCptjBEIoHkJAl7OqR9D608dfG58O2dpeReWbRnlmEEsxKBzqUugMAt9UR/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5769
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718197728; x=1749733728;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3QN4o8ZJ8Ohj99gxFogdHWP4oqeb6xA0lWFGzB+kXdU=;
 b=aTCEo/oDcuRRFnVV1HXYh9+jAmAodEJn0GXkjqu1sSxVGO3I+VkPEPt+
 ylwEiYmxaGt05SZt9tNtVOMJdDYssbLHqTNUz81eLCv+Ircapn7EO+6cK
 Edx2hUDq+ZYR2aDKh4tk3URKUBLJHHwwyioUWLfFJEZudi5NZRwfIsMHf
 dKL62vPmaVKKEG4NDqNxiPJLrXRYL3VE3yH2xFuWS8y+cAv2+QUPgpqVo
 rGmHSVJU2W+m6O7kT78ATr665F+SLwNDC9uny1SuO7rs3jV77P0uob6ZP
 Upv88d3yXOQhft5PL9tIkdmIxh5hyWJcj5ZNBrpZSmglWtozzaSEi2bSi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aTCEo/oD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/12] idpf: strictly assert
 cachelines of queue and queue vector structures
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
Cc: intel-wired-lan@osuosl.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 12 Jun 2024 15:03:07 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> Date: Tue, 28 May 2024 17:43:34 -0700
> 
>>
>>
>> On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>>> Now that the queue and queue vector structures are separated and laid
>>> out optimally, group the fields as read-mostly, read-write, and cold
>>> cachelines and add size assertions to make sure new features won't push
>>> something out of its place and provoke perf regression.
>>
>>
>>
>>> Despite looking innocent, this gives up to 2% of perf bump on Rx.
>>>
>>
>> Could you explain this a bit more for my education? This patch does
>> clearly change the layout from what it was before this patch, but the
>> commit message here claims it was already laid out optimally? I guess
>> that wasn't 100% true? Or do these group field macros also provide
>> further hints to the compiler about read_mostly or cold, etc?
> 
> Queue structure split placed fields grouped more optimally, but didn't
> place ro/rw/cold into separate cachelines. This commit performs the
> separation via libeth_cacheline_group(). Doing that in one commit didn't
> look atomically, especially given that the queue split is already big
> enough.
> 
>>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> ---
>>
>> Having the compiler assert some of this so that we can more easily spot
>> regressions in the layout is a big benefit.
> 
> [...]
> 
>>> @@ -504,59 +505,70 @@ struct idpf_intr_reg {
>>>  
>>>  /**
>>>   * struct idpf_q_vector
>>> + * @read_mostly: CL group with rarely written hot fields
>>
>> I wonder if there is a good way to format the doc here since we almost
>> want read_mostly to be some sort of header making it clear which fields
>> belong to it? I don't know how we'd achieve that with current kdoc though.
> 
> Since commit [0], we need to explicitly describe struct groups in kdocs.
> @read_mostly and friends are struct groups themselves and in the first
> patch, where I add these macros, I also add them to the kdoc script, so
> that it treats them as struct groups, thus they also need to be described.
> Given that one may use libeth_cacheline_group() to declare some custom
> groups, like
> 
> 	libeth_cacheline_group(my_cl,
> 		fields
> 	);
> 
> it makes sense as I'd like to know what this @my_cl is about. Here I use
> "default" CL names, so this kdocs looks like Ctrl-{C,V} explaining
> obvious things :D

Sorry, I read your comment badly =\
I think this is enough to have it the way it is right now, as you anyway
has something like:

* @read_mostly: read-mostly hotpath fields
* @rm_field1: first read-mostly field
* @rm_field2: second read-mostly field
* @read_write: read-write hotpath fields
* @rw_field1: first read-write field
...

I mean, they are already sorta headers, aren't they? By looking at where
the next group is described, you can have a picture of which fields
belong to this one, given that the fields must be described in the same
order as they're defined in the structure.

Perhaps we could do

* @read_mostly: read-mostly hotpath fields
*  @rm_field1: first read-mostlyfields
* @read_write: read-write hotpath fields

i.e. indent the "child" fields, but it doesn't look good I'd say?

> 
> [0]
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=5f8e4007c10d
> 
> Thanks,
> Olek

Thanks,
Olek
