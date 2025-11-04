Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B77C2F9C2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:29:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 344AF40BEB;
	Tue,  4 Nov 2025 07:29:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z4O9IfozvnQm; Tue,  4 Nov 2025 07:29:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57C4840C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762241348;
	bh=FfLcfjvsURXut14KZ7FiRm0+BAbZBM/uneUSkr+/lMU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9nm1K7Ksr59UScNxszDp1ByCDmsD3ClzpOi4EWK1e/biKhMFd29JzU0xHZExS/c5K
	 ZHeKbzqLgA8ZKHvhlhGbhwvKerj/zaE6TmdgRXM06GTpP12Cj3/cr+0PAU9DOB4K91
	 JHIY8gAjJlaRz3JMuUm07UXor5r6dGi230u/AhD0CfhvxS3Q2bQYYTTd9BhmlVbVXx
	 sP+G73eSXOeYyITsalBGDh1G60lHzmYaBCG7IybTdBF8NwSijjVExjOeIhCIBlUivx
	 y0EVnYi5GkYV5KJNedC/VNKqoz5VbhT80U/vnYJbuQoUIPMphQRQTmQyR7OSoF2cH6
	 wW5sWtawCqY0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57C4840C48;
	Tue,  4 Nov 2025 07:29:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AF11C278
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FAE440BE8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RrV0d0C3Hh7J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:29:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 88AEF40BE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88AEF40BE3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88AEF40BE3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:29:05 +0000 (UTC)
X-CSE-ConnectionGUID: lh47PiF5RbCJvj65PgKsag==
X-CSE-MsgGUID: yVqGtCXIQUqpbwn98bSK0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="51899026"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="51899026"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:29:05 -0800
X-CSE-ConnectionGUID: Q83t3NcBQda0c5SUSE/IUw==
X-CSE-MsgGUID: h0BO4wnRTciJfKlzDvWB0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="192175201"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:29:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:29:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:29:04 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:29:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SDvm9gpiWDMpUwBcd7GONUniVn41bZxohLdg9GAMlz4MS1RTavHSHJ5ha/fFKzLZujgsgI5pTBqw/3u1PoK7zTR0cPC9vtxWVPPkeIZfTzsJW4+VKpTbeAiJC9mmdvFHbg6gfIzsnMADXGEcSz2pTg2fm45kh2spKKxpbnFAHhLy4Ao5cAMLrVUV5g/NIEPN4p3iRaGjnkaPH8DxNRoemQZLhqFTtPWFyuEitkTITcc7vyeNlyyojW7UhAjsCsw4I5kFP3AEM0knxaZixe2gT9of5bSzgl78qRL9BtdGtLYMhfCkvZ2h6VemIW6qk/DNrlWSF4yPvFueYWrZsH4SEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfLcfjvsURXut14KZ7FiRm0+BAbZBM/uneUSkr+/lMU=;
 b=QyXBxNL3WedwjcboESTkgu4+Ui6Wd+87G62TifnB2sPeXaZc2xWL6mj9hmvWWxC1CsHqhGjS/3MpfjEileoN/NxHysa6BG3DL2otbZT5thj7ZUwmDVAi2W5g5cU9FRr0+QNm3fWtCyFy686VIHn3WFhNWelppblySOl3eeZVzi3my1Cy23dt6Vg6Qo9T5Cc8fYboi9KGOnMsjU1bE+3z6f1hPnMii8QxhxLNf27iCdjQDOQkOSX03saXd2Ir/Jo4AUc4jhtmssbtaQGsijKMhCytBy42x1CjjToot1qnoeLnNktpPnqUAisISNrkROtTX8EPB77hyYJSk71AJkMSTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:29:00 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:29:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 8/9] ice: shorten ring stat names and add
 accessors
Thread-Index: AQHcTSdl0P8je9YpkkOIOg9gHbI4i7TiHuvw
Date: Tue, 4 Nov 2025 07:29:00 +0000
Message-ID: <IA3PR11MB8986D85BE508C02341F832CEE5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-8-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-8-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: 650e1300-dc3e-47f9-7ba3-08de1b73d2fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MUdTOUVpY2Z6VHdCTXVOVFYvZDNBRC9BUEl0STUvQXY1M1BWUHN6aFlsRUNr?=
 =?utf-8?B?dkpyak9zdkRDWmYxMkVDd2pLUTJBczlFV3VXSWlzbkNYTUVzWCtzYmFFOVN6?=
 =?utf-8?B?dGhReHlMZlErSGRyaVRHMUR2T3o0VFU2QzRGS2doN1ZSTUtKNVpJVC9vMWNJ?=
 =?utf-8?B?dEVDS2RSV2xNaldjR2lJTmR2R1Y2eGJoR2FxVjZXMFRDOUZCeGFwRjlIRll5?=
 =?utf-8?B?QlQ4NytLMXF4YlNub2duYUdkWGtNNHIrMGVuTW1PNHJHWkloY2wrckRJRU9X?=
 =?utf-8?B?aGRpRFFmSURrUXoyWFlnTi9xS0ladEZldGZETXVIZEVMMytrTkxlSlJ2TlRu?=
 =?utf-8?B?Nm41SU9QR281cDhMVnpxalYzUzlYaVZQS1ZYa2dBUHlLVW9lRERqYy9vemQ1?=
 =?utf-8?B?VFQ1VXpsQ2dua09GRTdZb2ZZT3VkcGw5SDY0RUk4MGd4SWhsdFI4Wldpblhv?=
 =?utf-8?B?ZGt2eUZQMFVFRW9LSGxnUU4rUFdVSElYbXpBb3BBME9MMUh1S0lORmh1eEtO?=
 =?utf-8?B?MEhsUTZpT3VhNUoyU2MveTRwbGVsK0orZHd6TzErL0JnT2FjMWNFWmNhUGdD?=
 =?utf-8?B?T0x3VWFUS3RPZGRsM3RKeFhtK0lzbUF0TjlMMjZiUjR4YUV2Zkx2WE1yVTAv?=
 =?utf-8?B?eTRGR3lZNWNvV0lSYVpvRit3aUw2ZXR1RklKeWVOUG5PS2Y2ZGtsU3lPeDlu?=
 =?utf-8?B?NE1SNksvTjJsNTYzSHlnTkJXWDdLZWJlTUxnU2ZROUQvTmdGRTRKZzFhWGd1?=
 =?utf-8?B?UHE1eE1ONVRJQlVTbUJEbGN2MExDelFjVnFaM2RwaXFkdVlVcC9Vem1sZkx3?=
 =?utf-8?B?VFlIOS9TS2poUmVNZUZGZW5LZ3RQMG81NFBxTEV4N0hPMGdrTzMwbTJUOSt0?=
 =?utf-8?B?TmRYTTdZUlptUXh2cE9nNFBMU1dnZFR1RForTjJFNUVHd2doSU1mZGQ5QkVv?=
 =?utf-8?B?U0h3ZlpDMnJTZXE0QlVodytmai9EcUxxd2xZclg1azFCMEYvMU9aMlAvdERx?=
 =?utf-8?B?ZlA3QnRuS2VuM0pjbnRvb2I5WmJCQk1iWkhzZTV6SGd2M2M5MjJoazRhUnZC?=
 =?utf-8?B?dzVuYnhyQTBpUUdRc2FTQ1hxaXJuUnFsNTluSVRoY3ZmdVJnaExqVDZRRFZl?=
 =?utf-8?B?SFBUejVVVUw5RWFkYjdISEZyU05kQnZ0WXN0dk40aU9iS1pDVSt4Zm9SbHMv?=
 =?utf-8?B?azZvTnBodmhjb3lhRGdQTER5NE1ha1hjRzJpbFRBUzJ1SmF1aVVZcWl4ejdD?=
 =?utf-8?B?MTRYaVB3SE1vVC94clRDKzVHZGlBWHdFOUZNQVh4MDZPS2ZyVDVmclVRdlpF?=
 =?utf-8?B?RXF4TSt0WWpTejNCVTA0TjVsQ2R5ZTVPa2xpalkvZkJveW5zR1pkcUkxVzVh?=
 =?utf-8?B?Z1ovdk8rL2VKNzBLNHhJZFVFcEo2bzl6VGkwdC9XeUV0Vkx2SjJWbW1iV0t2?=
 =?utf-8?B?T2hnMGdNUDlDUUNzVVJtOXk5OFJBc3YxbmJ3WFF3L1plRCt6eFI1dHpZZjY2?=
 =?utf-8?B?TFpwWHFzU1N5QWRNV3dVM1R2N3grdXB1b0MyZ0cvSDY3YjY2YkZEMFRYelBX?=
 =?utf-8?B?emdEMGp3bzZuWlhUVGxNSk1pWURqUUJPUGFMaEliYjRsMzI0bTVEbkhsT05S?=
 =?utf-8?B?VGlkd3RReHV5eUhPU1pISlo3UFVxa1ZaNEEvbXdpM0RaT1VVMStVMDh2QVZy?=
 =?utf-8?B?dmw3dk5rcmRaSUZiUW5ialFrSlUwQUEvQThFNnNjL29yVGlmbC9GSy92ZFFr?=
 =?utf-8?B?UEV5cHo3ZjVuVjB5SjhXaDIvNHBUaW1pNG82dkJNN21ZcVNwbjRZKzREWDVk?=
 =?utf-8?B?T0paOTNuZWEvRmdNcHJVY2xuRmtiUlh6ZU1OZm1IOUZLdDRrVHIyeTU1T1k0?=
 =?utf-8?B?bWY0cEpGcnB5aEUxRklXYncwYjBHRHI5a1N5ZmlXT214bnZ1V2N5UmhuZkFt?=
 =?utf-8?B?UUxxMFA4cHFUbm9od0tqa2RVZVRMTUVDc2R5eEczcVFSVmR1ZlpGQ2g2ZkZO?=
 =?utf-8?B?NDg2KytuTWUrK0lpRTBEQlFVK284RE1DcXVmTC9EWEVicSs4amF0S2orRHFt?=
 =?utf-8?Q?RnNvd8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWRvRFFHTDNBbXNpNHJYNG80QmQwTy9ER3I4T2hRZURjZ3R6M3ltQmlwcHYx?=
 =?utf-8?B?R29JQzZrNk94amxzNE9iQ3A0ckRNY0RrcEQzWDFzKzMwcWFHdW80RWFUcXN5?=
 =?utf-8?B?bGJWQ3hQd0Q4cGcyM3dpSndJVDNDVUh4Nno2b0hiRXhFZ2IrWnZieWh0dDdy?=
 =?utf-8?B?VTBaektVOFdQU0NKTW9DUkh5ZmM3TUdieWRneE1CNFFRQ2pBZzRxekNGc29B?=
 =?utf-8?B?MGdHTXpENEQvWUVXS0dVMGlrc3ZyUUsvbGE1SHVaMlMzS3dDWFlMOGluZ2Mz?=
 =?utf-8?B?L2I3MDNBdkZYMGZVd2pZNFlqSUtXSGtQT0NjWHBYc0oyc1VSN2JBdWJNZE16?=
 =?utf-8?B?YndKdmxFdy9qMXQ1OW93N3NIRGpHRXVvcFhDK2RiWi9EMDl1anFNaUh4bG40?=
 =?utf-8?B?SXNGOHNQOWljYXRkTndTZUlRYnlUZkxsS1J3M0dBeUUrQlJSVkorZkNYUWtF?=
 =?utf-8?B?VVhudTEwTGFjZ3c5V084bFZUVXdrMW1teFRETk1UM1k3ZkNva2FlTmtNdUl6?=
 =?utf-8?B?bXdmR0FnWFBicTNZRXJsQzY2eXFvOW9jenEzY2NHZXh5bGpvcmhoNGpCeWZG?=
 =?utf-8?B?NExsWmcxWkZtdkdxbGJ4aERHblRLTEhxV3ZlOUxTZGl3L3A2dHlKL0dQOUFG?=
 =?utf-8?B?cmNsREZHc2N4VHJlSDVLY0t3aU1jOWR1RFEzMEM0bFJvTkFVSU80U3IyM2g1?=
 =?utf-8?B?WXlzYW9KS1hGT0FhOW1hZmFWeXFvUTA1cFpVVGRNRUt0eTF3Nm00SThKcHY5?=
 =?utf-8?B?T0c2TTRWMWxNMmhzT25hWW12UGxBc3dQK0c2eEJRRTQvbzV1c2JRNzM5Snlj?=
 =?utf-8?B?a3c5bmtKNHNXWVBROVA1dDdlaWxKc3g5Ni9qN1Q0aTEvMk56aElxNzJrcU9M?=
 =?utf-8?B?eHZrdnNvVVdKS2s1N3p0SVIyUVM3cXlFNDkvRU1iYk14MWtwcUoybGNKamRS?=
 =?utf-8?B?R0c5WEYrdkFwczJwUk44SFJLMjRVaWNlbzcyZGk3V1ZWZ2IvdXVreEdtZEJK?=
 =?utf-8?B?dEkwK1c0cGYzbWQzVFB0dTBaNTZGSmpjNy9STGMySHRDSTJ1U0VkK1FIanhS?=
 =?utf-8?B?N1V5eVBYL3JKVktkUWU4Ym50UWcvQU9IVWQxbXB0VDAzaU5uRE1oU3RTcnhZ?=
 =?utf-8?B?VmEzejdGT3JQWVRPbS9mL3p3WUhXV1JPL2VHWGt1WGo5L1M3aW5sTUd6T2x3?=
 =?utf-8?B?NjNEVjZXUnFhTHZCdC9uOTk3WFRyWWtrNGt5dmUzOVhkdFgva0JQdzd6dzZU?=
 =?utf-8?B?VUFsVXVIN2h6TldPbFpxdFVCWVhmejNPYnloUTlIdWxxMElOZW1CekszeVBu?=
 =?utf-8?B?UTRiQ29uRDlpMktQb09ZUld0elpQY29lc21KYWNCMEsrbStsUXV2Mkd0aGE1?=
 =?utf-8?B?bE1iZElsYTd1MFFhVzJtd3VjV2VDUVJjQ0ZEeS9WRGQyUFkweW8xTDExeHg2?=
 =?utf-8?B?K0UrdlBXcDhCMjh1dENlRlFBdFZQbENOYmRqSlUvamxMa0EzZ2xGaWpYVWNj?=
 =?utf-8?B?NEtkZmVEM1ZjazI0b1IvNmhEdENObVdLYTEvd1BGb0E1Z09taWJyRitqMlRJ?=
 =?utf-8?B?WEg0WlI3T3pRQ2NpSnZOZlppK052a1ptUHhIQ0w4cDVnWVZIdm9wNTZieFh0?=
 =?utf-8?B?dTlVYy9md2YycjdnSTRNUllsN21zckZPS3FrSzQvM0kvOVllTmZvZ0o0dHF5?=
 =?utf-8?B?QWVVYVpNd05WQjNGZWZHbmJjRVg2djBDTHVkOUJjckJxbzJQVEpZbExpajNE?=
 =?utf-8?B?L29vVExOenViMEJwVjdaL1kvamlEcmU4eG1IUGU3VVQrbThxeTBxVlcycFFG?=
 =?utf-8?B?bHppaGRETjY1K24vU0pLT1VQUkxCKzF3MTQ5OFA5L00wSXFvaXlRQ1dPTlRP?=
 =?utf-8?B?VGwya0hocTZsL2F5YzRtRVUwM1FNR3BXQmx3SW5aWFRTaEoyUkpMdElnT1Fp?=
 =?utf-8?B?ZmxKSUFhcERISXFTL2F3c0J5NG13NFhTUlBoOGhWSExCcUUvN0l1QkFzWE9i?=
 =?utf-8?B?aktvcWpmNHhId2QxbEo1cVhMVm1oN2Z3QjNOa2oyNXFFZUhmU2hGYUlob1FJ?=
 =?utf-8?B?c01NSXVkM2tzR0dZQkduN2hXUGdYMm5QUjVJWkJDTGMrSmJySTJvOFdIdmx6?=
 =?utf-8?B?Mll5azBvM095WGNMSkxwNjU2aVVRZVhPSlpyS0pqSGpYM05KNzlzOFJETGZO?=
 =?utf-8?B?MGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650e1300-dc3e-47f9-7ba3-08de1b73d2fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:29:00.7673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 59i/IxfKJMHi+bw5yslR/lVThwWYwth9v9O9zch958KjBAnGRzzueQ8549F6a36ZE3K1lcL76/szR9ZFtSKeTMwKr0cde3FnCUd2OJ0NFSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762241345; x=1793777345;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FfLcfjvsURXut14KZ7FiRm0+BAbZBM/uneUSkr+/lMU=;
 b=CCb6Zb4XI/E5/2EJmOgWyFfPZxJtGoN0MRzaYAqy09VBL7ZV18UwGLKS
 P/oH9JDqqh5icrNI6HhYCQHknhahPr91rfMcWQnoAsuEB5JVGkGzoWZ0y
 k+tZNUNgfb32V+WCShrLnVsql+uEBM883MkL0ilhFAD8HtIdpMzVFTBLb
 qk9TsdsaWDtIeX6m9csCcdJgx3WpTUs0+G3WEaY3aUUZjqDdxnduNCvih
 MJzRrDGHAeJayM6CrF8HXNT+EKRD+MCPrbbDxYJQ+Wfyb64SBAz9qX5pw
 9E4r3fMkQWqGnTCBcEhgPpq/e3eVqE6eyMiYc9m8D6ALkjjPkA+IaqRc+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CCb6Zb4X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 8/9] ice: shorten ring stat
 names and add accessors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCA4LzldIGljZTogc2hvcnRlbiByaW5nIHN0
YXQgbmFtZXMgYW5kIGFkZA0KPiBhY2Nlc3NvcnMNCj4gDQo+IFRoZSBpY2UgVHgvUnggaG90cGF0
aCBoYXMgYSBmZXcgc3RhdGlzdGljcyBjb3VudGVycyBmb3IgdHJhY2tpbmcNCj4gdW5leHBlY3Rl
ZCBldmVudHMuIFRoZXNlIHZhbHVlcyBhcmUgc3RvcmVkIGFzIHU2NCBidXQgYXJlIG5vdA0KPiBh
Y2N1bXVsYXRlZCB1c2luZyB0aGUgdTY0X3N0YXRzIEFQSS4gVGhpcyBjb3VsZCByZXN1bHQgaW4g
bG9hZC90ZWFyDQo+IHN0b3JlcyBvbiBzb21lIGFyY2hpdGVjdHVyZXMuDQo+IEV2ZW4gc29tZSA2
NC1iaXQgYXJjaGl0ZWN0dXJlcyBjb3VsZCBoYXZlIGlzc3VlcyBzaW5jZSB0aGUgZmllbGRzIGFy
ZQ0KPiBub3QgcmVhZCBvciB3cml0dGVuIHVzaW5nIEFDQ0VTU19PTkNFIG9yIFJFQURfT05DRS4N
Cj4gDQo+IEEgZm9sbG93aW5nIGNoYW5nZSBpcyBnb2luZyB0byByZWZhY3RvciB0aGUgc3RhdHMg
YWNjdW11bGF0b3IgY29kZSB0bw0KPiB1c2UgdGhlIHU2NF9zdGF0cyBBUEkgZm9yIGFsbCBvZiB0
aGVzZSBzdGF0cywgYW5kIHRvIHVzZQ0KPiB1NjRfc3RhdHNfcmVhZCBhbmQgdTY0X3N0YXRzX2lu
YyBwcm9wZXJseSB0byBwcmV2ZW50IGxvYWQvc3RvcmUgdGVhcnMNCj4gb24gYWxsIGFyY2hpdGVj
dHVyZXMuDQo+IA0KPiBVc2luZyB1NjRfc3RhdHNfaW5jIGFuZCB0aGUgc3luY3AgcG9pbnRlciBp
cyBzbGlnaHRseSB2ZXJib3NlIGFuZA0KPiB3b3VsZCBiZSBkdXBsaWNhdGVkIGluIGEgbnVtYmVy
IG9mIHBsYWNlcyBpbiB0aGUgVHggYW5kIFJ4IGhvdCBwYXRoLg0KPiBBZGQgYWNjZXNzb3IgbWFj
cm9zIGZvciB0aGUgY2FzZXMgd2hlcmUgb25seSBhIHNpbmdsZSBzdGF0IHZhbHVlIGlzDQo+IHRv
dWNoZWQgYXQgb25jZS4gVG8ga2VlcCBsaW5lcyBzaG9ydCwgYWxzbyBzaG9ydGVuIHRoZSBzdGF0
cyBuYW1lcyBhbmQNCj4gY29udmVydCBpY2VfdHhxX3N0YXRzIGFuZCBpY2VfcnhxX3N0YXRzIHRv
IHN0cnVjdF9ncm91cC4NCj4gDQo+IFRoaXMgd2lsbCBlYXNlIHRoZSB0cmFuc2l0aW9uIHRvIHBy
b3Blcmx5IHVzaW5nIHRoZSB1NjRfc3RhdHMgQVBJIGluDQo+IHRoZSBmb2xsb3dpbmcgY2hhbmdl
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4
LmggICAgIHwgNTINCj4gKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnhfbGliLmggfCAgMiArLQ0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgICAgIHwgMTIgKysrLS0tLQ0KPiAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgICAgIHwgMTQgKysrKy0tLS0N
Cj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeF9saWIuYyB8ICAyICst
DQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jICAgICAgfCAgNCAr
LS0NCj4gIDYgZmlsZXMgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90
eHJ4LmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguaA0KPiBp
bmRleCA4NTg2ZDViZWJhYzcuLmNmMzY1NmRjNTYwYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmgNCj4gQEAgLTEyOSwxOCArMTI5LDYgQEAgc3RydWN0
IGljZV90eF9vZmZsb2FkX3BhcmFtcyB7DQo+ICAJdTggaGVhZGVyX2xlbjsNCj4gIH07DQo+IA0K
PiAtc3RydWN0IGljZV90eHFfc3RhdHMgew0KPiAtCXU2NCByZXN0YXJ0X3E7DQo+IC0JdTY0IHR4
X2J1c3k7DQo+IC0JdTY0IHR4X2xpbmVhcml6ZTsNCj4gLX07DQo+IC0NCj4gLXN0cnVjdCBpY2Vf
cnhxX3N0YXRzIHsNCj4gLQl1NjQgbm9uX2VvcF9kZXNjczsNCj4gLQl1NjQgYWxsb2NfcGFnZV9m
YWlsZWQ7DQo+IC0JdTY0IGFsbG9jX2J1Zl9mYWlsZWQ7DQo+IC19Ow0KPiAtDQo+ICBzdHJ1Y3Qg
aWNlX3Jpbmdfc3RhdHMgew0KPiAgCXN0cnVjdCByY3VfaGVhZCByY3U7CS8qIHRvIGF2b2lkIHJh
Y2Ugb24gZnJlZSAqLw0KPiAgCXN0cnVjdCB1NjRfc3RhdHNfc3luYyBzeW5jcDsNCj4gQEAgLTE0
OCwxMiArMTM2LDQ4IEBAIHN0cnVjdCBpY2VfcmluZ19zdGF0cyB7DQo+ICAJCXU2NCBwa3RzOw0K
PiAgCQl1NjQgYnl0ZXM7DQo+ICAJCXVuaW9uIHsNCj4gLQkJCXN0cnVjdCBpY2VfdHhxX3N0YXRz
IHR4X3N0YXRzOw0KPiAtCQkJc3RydWN0IGljZV9yeHFfc3RhdHMgcnhfc3RhdHM7DQo+ICsJCQlz
dHJ1Y3RfZ3JvdXAodHgsDQo+ICsJCQkJdTY0IHR4X3Jlc3RhcnRfcTsNCj4gKwkJCQl1NjQgdHhf
YnVzeTsNCj4gKwkJCQl1NjQgdHhfbGluZWFyaXplOw0KPiArCQkJKTsNCj4gKwkJCXN0cnVjdF9n
cm91cChyeCwNCj4gKwkJCQl1NjQgcnhfbm9uX2VvcF9kZXNjczsNCj4gKwkJCQl1NjQgcnhfcGFn
ZV9mYWlsZWQ7DQo+ICsJCQkJdTY0IHJ4X2J1Zl9mYWlsZWQ7DQo+ICsJCQkpOw0KPiAgCQl9Ow0K
PiAgCSk7DQo+ICB9Ow0KPiANCj4gKy8qKg0KPiArICogaWNlX3N0YXRzX3JlYWQgLSBSZWFkIGEg
c2luZ2xlIHJpbmcgc3RhdCB2YWx1ZQ0KPiArICogQHN0YXRzOiBwb2ludGVyIHRvIHJpbmdfc3Rh
dHMgc3RydWN0dXJlIGZvciBhIHF1ZXVlDQo+ICsgKiBAbWVtYmVyOiB0aGUgaWNlX3Jpbmdfc3Rh
dHMgbWVtYmVyIHRvIHJlYWQNCj4gKyAqDQo+ICsgKiBTaG9ydGhhbmQgZm9yIHJlYWRpbmcgYSBz
aW5nbGUgNjQtYml0IHN0YXQgdmFsdWUgZnJvbSBzdHJ1Y3QNCj4gKyAqIGljZV9yaW5nX3N0YXRz
Lg0KPiArICoNCj4gKyAqIFJldHVybjogdGhlIHZhbHVlIG9mIHRoZSByZXF1ZXN0ZWQgc3RhdC4N
Cj4gKyAqLw0KPiArI2RlZmluZSBpY2Vfc3RhdHNfcmVhZChzdGF0cywgbWVtYmVyKSAoewkJCQlc
DQo+ICsJc3RydWN0IGljZV9yaW5nX3N0YXRzICpfX3N0YXRzID0gKHN0YXRzKTsJCQlcDQo+ICsJ
X19zdGF0cy0+bWVtYmVyOwkJCQkJCVwNCj4gK30pDQo+ICsNCj4gKy8qKg0KPiArICogaWNlX3N0
YXRzX2luYyAtIEluY3JlbWVudCBhIHNpbmdsZSByaW5nIHN0YXQgdmFsdWUNCj4gKyAqIEBzdGF0
czogcG9pbnRlciB0byB0aGUgcmluZ19zdGF0cyBzdHJ1Y3R1cmUgZm9yIGEgcXVldWUNCj4gKyAq
IEBtZW1iZXI6IHRoZSBpY2Vfc3RyaW5nX3N0YXRzIG1lbWJlciB0byBpbmNyZW1lbnQNCj4gKyAq
DQoNCiJpY2Vfc3RyaW5nX3N0YXRzIiAtPiAiaWNlX3Jpbmdfc3RhdHMiDQoNCg0KLi4uDQogDQo+
IC0tDQo+IDIuNTEuMC5yYzEuMTk3Lmc2ZDk3NWU5NWM5ZDcNCg0K
