Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1D690528B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 14:33:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE7D740323;
	Wed, 12 Jun 2024 12:33:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YsFnn4A_F27T; Wed, 12 Jun 2024 12:33:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 636844011B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718195627;
	bh=NQkM9RJUAqBeiGex6TazgzAnCJ2YATDUqc5B8BUZa0c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SaDYIcOUnl5Hw085a5jAyaYkwUuw1Gd+JsI/IJQNAqFtPLR4iYSm1xK96ax9uN5g8
	 sr1iWDlCHH5jvbkOjd81cuU2u03whREFSfzNL/on0a1rCCeO4ZA2ShJdddye/tlqPp
	 2+al+bvHi0eSjG30v3RHav/eG07n8KxvEiZhUdLaoQ0CBBnmviPCqJ/tbQ6sfMF2O7
	 xSx0osnIGGhrZqVUyMbZpvAhRmsvVLsB9w10QvlymSQKHNXdVLbl3GEo7fgZfCQKAy
	 vlKWFPXPUSJCaL0VXkrHVgQolSRSW5CQ9t6lkVDKLuzHfWzwq1rJPHRz5p1W7gkfwP
	 sNn7T6SeZqngg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 636844011B;
	Wed, 12 Jun 2024 12:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 047431BF372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 12:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F199781E5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 12:33:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P7oWNi2iWM6E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 12:33:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0F8B81760
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0F8B81760
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0F8B81760
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 12:33:42 +0000 (UTC)
X-CSE-ConnectionGUID: tliG2lscRN24o5q86ntQDg==
X-CSE-MsgGUID: +XjsTl/EQ7eFz3Cf+mBk4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="25632288"
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="25632288"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 05:33:42 -0700
X-CSE-ConnectionGUID: O6o8rApuTwW0Ymbn32X58Q==
X-CSE-MsgGUID: JeOiHnpOSxqbVHy14fmY2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,233,1712646000"; d="scan'208";a="39888711"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 05:33:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 05:33:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 05:33:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 05:33:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1b/j1jWiDemvcpF8tx3W8J+JaO1aWUJOJhJbLYCEp+V8rJAUs8fazfolOcD/IZH0MFZNtinZJIuPFiui+1KiHeI2O6SguKKISl5LoEveq8GGFz4mhixe70WfD1L8AfXVwkazI9yIayoqoWzJpmY6HMbKgRheXjxx4x80LBGI3quzIMximy6OvoXYtD1+WLAGTxa5ZX2h1306IVR7NJwWTt7fPokDT6BYKK8L6pUPsdXdeqa5b4Us+WR9h3dNHZmhrZVhwXpXvJs5mF0mAtij806zN7ycVD5m/UMwm/ATOU28uNJOcvCTNo0JFSBMHOGO4sXkmWyqXLqodyGiB4Aiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NQkM9RJUAqBeiGex6TazgzAnCJ2YATDUqc5B8BUZa0c=;
 b=Y7TaAIQEB6WZF/jQ29MHYjf0FGutPQnVbLRxPD3RmobYNFz13iLXTyX39hOdO2jR2UmhV2BI+AICGtyB0DIgoSIk3ZzuHeL4CT5iVxiZoyZ2rtbKacAY/diEh85Ykihv8maTqTYZeyFw8v+F3G6EWVtiHaevyOXuszdPHSGWMJTlJ1uR7xH5O/3lEiX2ob80EgQvJvRdSgCj71xgTvhJrScnUMFEZTVhZLcsflF3AljzEhOQyRK9RLWX/oHs1HIdySkssDI44MZHKvlKKxBeUneXcfqQTNWR8iqGIpEJA2k4A8AxC/rA4eWWI+GCQ+0HNccOW6v3vUd3W/IKlOM+NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB7567.namprd11.prod.outlook.com (2603:10b6:806:328::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 12:33:37 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 12:33:37 +0000
Message-ID: <f9689f4f-885b-46ee-af63-d4775cacd43e@intel.com>
Date: Wed, 12 Jun 2024 14:33:17 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
 <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
 <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZP191CA0011.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::9) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB7567:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ec9540e-3a63-426f-9480-08dc8adbe1ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|376006|366008;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjBrWU03NXRqV3NGOHZqRFNNd3BUZGNNOHppd2NUSEE0YkJibzBwS3ZJUkRr?=
 =?utf-8?B?Z29QaTJLYjRBRG5jVFE1SHZHMVg4U2VPMVZkMUVCY1ZadUNLNGFKeGFvWnZr?=
 =?utf-8?B?NjdpSGpIZmFxU2FKMDdzcmNZbTJDdDdZMXIvQ253bmxZU2tLNGxUSkJlemN2?=
 =?utf-8?B?Vk9CSWR0cDJEalZIVXRUKzFsaHBjSHdTMDkzcW8wMHd5VDFMZ201bTBpNTFt?=
 =?utf-8?B?bmJIZGxuYmJ0dUtDT0RrU1psdDg0VlBWV05kYkZZOHp6YS92Q09aZ0I3ZnNU?=
 =?utf-8?B?aXYybmRmMDdLVDF6SVY2ZjJ5eWNGRVFFTmtlRG1TZCs2ZmhoQ3ppcW40Y2to?=
 =?utf-8?B?dkUyT2hrNU5pTjdIb2ZRMVQ3RnhYSDdPd2lQVzMzNUEwNkRYSjBONStrRk1H?=
 =?utf-8?B?NXc1Sm4wb2Zsb0RPYnZvZVdMYVZUblRzajczaTFYVzFNS1ZtNnNRcnByRzUz?=
 =?utf-8?B?cnQ4Rk85MHJEbmRFNmdabEZHc3Z5ejN1Z0NiL1VsY1Nzd2ZBeFdPRzJvOVNF?=
 =?utf-8?B?UmtLakJJZlVZVS8zRmVKckVsSmc3YjVPNWZUSXdoczFFY25CT2FXelFvQWo1?=
 =?utf-8?B?MmxzZ2IvTUVkVHV3cE9nTUhXSFVkTExuRk5pcTZSbTlaWjdIa2owSEtuemc1?=
 =?utf-8?B?bkhHeEdiMURpQzZMdmEwMEJPNmovd0JFNVJoU2IxelpaeXVSSndmQWtJTklT?=
 =?utf-8?B?dnFRQndOSVRIS2Y4clNWSGxWQTZVa1NnZWt0dHcralFUSmJhREl0ZFpGZmtX?=
 =?utf-8?B?VmxLSXExMW1BL1lyeDdQN2N6ZkMrZVVmRFFqajBDNkRWSmpMd1krOEZ5YmNi?=
 =?utf-8?B?ZkV1cmxrN3p0bTczUENxeW9IWEI3R3YwQWRlSE4vK1BmMkRBZGhKNmN0TmRq?=
 =?utf-8?B?d0xibzBWVUhQZ3NZc1RZaXJzTEkxSk4zZDNhSm9SMnk3cEZSU1NqRlRFY0Zy?=
 =?utf-8?B?YVJXWFlWTExOekFoZm5BbkE4K1M0VUpNTjBiZHdmelhHSGlrY0pLVXR5MTN3?=
 =?utf-8?B?MzRYd0RneEJ1a2lzU3ZtU2VOeFFxcUNTek84SlhGRVBHRTBNVGdHbHVTRkti?=
 =?utf-8?B?UjZ6VGJEMVRQWGgxWVNQdVNjZTRXYWRDY0szWUJxeXh4bUhOdmdRK3YzcW96?=
 =?utf-8?B?dUc2U2V4eVYzZ2RQNEtRa0RlcVZNSFprRXVaZnhsaklPL0NoQlk2RGcwNjMv?=
 =?utf-8?B?bm9kSTZlUmFDN0w2elRneEhleGxneFpaZlU4bG9VQmZOQ1dtL1pjVm5PU29r?=
 =?utf-8?B?dkV5ZENKRzZKYTRDbGVtSkgvenNYT1A0ZThaYUthbGxqRHYzcnpqWDl6Z1NX?=
 =?utf-8?B?QVFWMTI4QUZ6VkJkKzQvb0p5MDlTeGtMZUp6ZHYxaHowdXJLVVRBK0p1Umlq?=
 =?utf-8?B?S0hVVkFNZGZxdkZNeTNCT3p0Yk5XcXF2b2RSTi9XL0RjaU43eW5mQVUrZUhh?=
 =?utf-8?B?R05KbGp3UTFXcloyV2NBODVnVE5uaExDd2FrWGJ1K001dyszdzJTQUhGSzRC?=
 =?utf-8?B?NWl3d3RTa1loUEo5c3pMNzhWWFhuV0JQdk9PMXZtWlVQL09lVWNLQkhqLzlH?=
 =?utf-8?B?NFN0WUxPamU5Y0tsM0NlbWpxTllVdFJwa250WGhmamRIZzVVNTFaMkxIR0Y2?=
 =?utf-8?B?bGRpMUpFYjhyMDZwQWg5bE1HODJLTjRBRk1yNmM5Qmg1dmwvb280dW9yVnJH?=
 =?utf-8?Q?kBLktug7sId1fgdNcHrD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(376006)(366008); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2wvcUZNUEEzZnA1MGpVWWk2R3lKTTJ0K2NHQ3VrY2VLV0sxTTVyOTRnazJ3?=
 =?utf-8?B?UXhQbEpoazNnRkxkYzJKMU1Oc3ZXQmR4U1VDWFpyWXNKOWJTNHowSnl4RllT?=
 =?utf-8?B?anQrVHhNcnk1OVo0RTFqVWtyMGF6Z1RqeXNxZW03VE5UYTlQTFpJOHZFeHB1?=
 =?utf-8?B?M0RjamVJSm1MeVhxNzArR1hhZDdJeGg5YTNpRDBmSzM5YmY2Rms2WTJZM0xQ?=
 =?utf-8?B?UktUREdDZldUMEROQnVPNDVXU09YVmovRHg3bGZkeG9HL0kzelh0WkpVYlJL?=
 =?utf-8?B?alhqMFp5MmhSczFzcndoTFdaYkoxSkxQd1Y0TlI2ZWM0Z3hLcG5ET3doSlJn?=
 =?utf-8?B?blZKeTlOV3RSajQxYmhjeWM1aXdTNm1Za1VUYmNRMU9KWDFqaVgvVDNzaHJz?=
 =?utf-8?B?VitiWjZQOUR1cWFEajd1QmMxRzZsaVlZZHZpRUZkWCtkZUtBNnVsL1c3M0ZF?=
 =?utf-8?B?YXhjYnRJay8yQVk2NEV5cHk4NXlOWUEyZGhVSWl0U1J4RG9TYW9oT1FjR09a?=
 =?utf-8?B?YWJIczFiWDRlRng1SlNta3BnbzVmbFhoMDhjUXNTN1JFMTQxTEJUdGZwSmVE?=
 =?utf-8?B?MWkzMXNLdndIOHc1SXZQdllEakh4cEFCZ2llSDJsek9TY1FXTFM5S0JGNURQ?=
 =?utf-8?B?eCszVithQ1VQTDA1R2tIWkZOMzd3TzJMaFlDTE1NOXYwN29IdDE5T0gra3RD?=
 =?utf-8?B?WThIQmYwUXdVOCtBSm9JNTJDUlFEelJUOVJkMXJpbUtCQ3lhTUtxam9xVjV1?=
 =?utf-8?B?QzJRa0hEK0hYNmxHN1d2NjNvRmdRUEZWaEJZUm00dU1CQ21tbVlnbUxpd1d3?=
 =?utf-8?B?Z28rZnlZanE1NVNUT25yUkF6VUsyOXorK3JmMU0wYytvcHlqcnEvWUIrSmF0?=
 =?utf-8?B?bmhMMXFNeXVUVWRiYlY3aHJya1RtLzVvMXV5eFhEeXJ3cFg2WmZNSDdyZkhh?=
 =?utf-8?B?Y1NpRkFLSUxtUUdZT0VyTXdRa0o5UmZwUlRteEpGVW1sUVRoQ0oxMzk4Q1o0?=
 =?utf-8?B?NFhIUFhRdXRGaTEvSnowK3NaRndzS2RVa3FENXBxRlltU0IwTGtWRCswejhZ?=
 =?utf-8?B?WmFlVXplaElPTGRDUis3NGswMjUrdWVYOC9VOHpvQUVVV0lCMVZxbXBVTmFC?=
 =?utf-8?B?RC91dHVrZ3N0M0cxd1JnWEhaY29oQmM5YTJnUkdNQUVXNW5ML1NIbHpFUHlr?=
 =?utf-8?B?V01GejAraERpd0FzNmdzb3ZINGRuRXAra2NYUnV2T05kWGZmVVExYktRT1BP?=
 =?utf-8?B?c3BzaHJXdUt4dmtVVkJPaTFPZVBZdEZTS2hSZnh3UDMvaSt2dWp1VXp2Mjhw?=
 =?utf-8?B?SkpYcUtMdmZJRlA3UklBaEM0UURvTFlKOUd4V3daeXdLNFoxdFd6UDFDTllK?=
 =?utf-8?B?RGpOT0NCWHdTYVo1VytUWGFvdjFTenUzNUxQRTZFN3dnTFpTRXRGbGt1RURM?=
 =?utf-8?B?d3BqRUh5Ky9mMlpKTisrN0NXbXg3MFpaTVhwSDZVWFhYNmlxZ09mMWVlWGF5?=
 =?utf-8?B?by9zT3hoeXF0TXZqRWZsRStENUdTdm1pTkNZeVREVWZ3NGNoY3VZWXo0YXJJ?=
 =?utf-8?B?V0xhRkJLOFRuQ3lES2RCTjBpVldReGMxYkJnYlZHU1RrVmJ4LzJ1dzA3dHk1?=
 =?utf-8?B?alRHN2kySDNFNjhIK3lwMlVYNGtVTWdRaDFQTEl3ZkJQSUo3aFRxMmsrV2Fk?=
 =?utf-8?B?UE5PdGRhanVoQ3pWcHRuTFZKMHgwUC90RXlicWhVczBYbUJCTHRZdWNYcHV3?=
 =?utf-8?B?UUFQSnRZLyt6YjdTV0RobWFVdXhML05Vc1dISk1pZWQ3TkErS0JzMy9wT1VR?=
 =?utf-8?B?YWo5ckwreFRXNTJudkNOckdpdGxtYmppeERQOUlLU29Oakh4bTBadVhXV1Q2?=
 =?utf-8?B?dVlsK213b3F5UXdaNkFhd3V3QjI1Nk42WFpUR01Qd282dWxRMHB1Y0VOaXJF?=
 =?utf-8?B?N1A2SHJ0S0FHWWc0Y1doK2lMd0FiUXRhZEpGTzZLSWhtQVJzTHo1R2dTUDBl?=
 =?utf-8?B?aDlYOWZocHlMMU93L091Vk5LR24wZEJSSGlvZ1lEYy9MOWwyNU5teUlKZFZD?=
 =?utf-8?B?azNWRE1Rck1VYmVtTzF0UHo4N00raVFYM29jM2Z1ejdzek1zaHF6d0pBcmN4?=
 =?utf-8?B?ZWlYK0E4MmhQVk5Vc2lveGl4ZExsN2Y3V3lBR28yZ0xWTGorSHRlNWtpeWhu?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ec9540e-3a63-426f-9480-08dc8adbe1ff
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 12:33:37.6073 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XPiN17VbhXKEa8ODFURGuSVbmxJvK240ghI7tKxep0AiNxbvnb6E2KqPJtfHQHYE1ZdNZDIyq9XSAzbMpsHNioVEeycTwJLJ0Ybzfn1PG0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7567
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718195623; x=1749731623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RJNUWMR2xwxfH14KbebcBr2wQToXLK7D1fVYd3sl7Yc=;
 b=iE/QfUiHl9LzdWdQv2Mg0tQw3c+2gPn6k4BllB7AiiiNk7eF+eUeouPP
 mZqPy5YfPz1KKBpIImWV6wD75oa/RXwgxJdJHl9GvBBeOy6sV6hpeC2wk
 gHzibiTUtk97xbySxrWxXavPsTvc9VkKSzqWryov9/eTm1flxfDrUg6sE
 qwryalic3shPm3n/bmKk/K2BBmaJyzR1Q1+7pnPh2tDzVPqMgd+u8eXgG
 9WdBhCt+gTodecqKsYmWadQMRv6LWhd5C6u6ndp7R7YZpActNp9jPAp3V
 rzLT3Y2I2JfOm60gjSsZ0S6C4EBpcFOENNa4opwUr2TLJHjndduuRDbSP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iE/QfUiH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 11 Jun 2024 13:52:57 -0700

> 
> 
> On 6/11/2024 4:47 AM, Alexander Lobakin wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Date: Tue,  4 Jun 2024 09:13:57 -0400
>>
>>> From: Jacob Keller <jacob.e.keller@intel.com>
>>>
>>> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
>>> negotiating to enable the advanced flexible descriptor layout. Add the
>>> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
>>>
>>> Also add bit position definitions for the status and error indications
>>> that are needed.
>>>
>>> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
>>> descriptor, including the size, rx_ptype, and vlan_tag.
>>> Move the extraction to a separate function that decodes the fields into
>>> a structure. This will reduce the burden for handling multiple
>>> descriptor types by keeping the relevant extraction logic in one place.
>>>
>>> To support handling an additional descriptor format with minimal code
>>> duplication, refactor Rx checksum handling so that the general logic
>>> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
>>> structure which holds the relevant bits decoded from the Rx descriptor.
>>> This will enable implementing flexible descriptor handling without
>>> duplicating the general logic twice.
>>>
>>> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
>>> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
>>> format instead of the legacy 32 byte format. Based on the negotiated
>>> RXDID, select the correct function for processing the Rx descriptors.
>>>
>>> With this change, the Rx hot path should be functional when using either
>>> the default legacy 32byte format or when we switch to the flexible NIC
>>> layout.
>>>
>>> Modify the Rx hot path to add support for the flexible descriptor
>>> format and add request enabling Rx timestamps for all queues.
>>>
>>> As in ice, make sure we bump the checksum level if the hardware detected
>>> a packet type which could have an outer checksum. This is important
>>> because hardware only verifies the inner checksum.
>>>
>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 354 +++++++++++++-----
>>>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
>>>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 147 ++++++--
>>>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +
>>>  4 files changed, 391 insertions(+), 123 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>>> index 26b424fd6718..97da5af52ad7 100644
>>> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>>> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>>> @@ -895,63 +895,68 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
>>>  	return true;
>>>  }
>>>  
>>> +/* iavf_rx_csum_decoded
>>> + *
>>> + * Checksum offload bits decoded from the receive descriptor.
>>> + */
>>> +struct iavf_rx_csum_decoded {
>>> +	u8 l3l4p : 1;
>>> +	u8 ipe : 1;
>>> +	u8 eipe : 1;
>>> +	u8 eudpe : 1;
>>> +	u8 ipv6exadd : 1;
>>> +	u8 l4e : 1;
>>> +	u8 pprs : 1;
>>> +	u8 nat : 1;
>>> +};
>>
>> I see the same struct in idpf, probably a candidate for libeth.
>>
> 
> Makes sense.
> 
>>> +
>>>  /**
>>> - * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
>>> + * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
>>>   * @vsi: the VSI we care about
>>>   * @skb: skb currently being received and modified
>>> - * @rx_desc: the receive descriptor
>>> + * @ptype: decoded ptype information
>>> + * @csum_bits: decoded Rx descriptor information
>>>   **/
>>> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
>>> -			     struct sk_buff *skb,
>>> -			     union iavf_rx_desc *rx_desc)
>>> +static void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
>>
>> Can't @vsi be const?
>>
>>> +			 struct libeth_rx_pt *ptype,
>>
>> struct libeth_rx_pt is smaller than a pointer to it. Pass it directly
>>
>>> +			 struct iavf_rx_csum_decoded *csum_bits)
>>
>> Same for this struct.
>>
>>>  {
>>> -	struct libeth_rx_pt decoded;
>>> -	u32 rx_error, rx_status;
>>>  	bool ipv4, ipv6;
>>> -	u8 ptype;
>>> -	u64 qword;
>>>  
>>>  	skb->ip_summed = CHECKSUM_NONE;
>>>  
>>> -	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>>> -	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>>> -
>>> -	decoded = libie_rx_pt_parse(ptype);
>>> -	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
>>> -		return;
>>> -
>>> -	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
>>> -	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
>>> -
>>>  	/* did the hardware decode the packet and checksum? */
>>> -	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
>>> +	if (!csum_bits->l3l4p)
>>>  		return;
>>>  
>>> -	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
>>> -	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
>>> +	ipv4 = libeth_rx_pt_get_ip_ver(*ptype) == LIBETH_RX_PT_OUTER_IPV4;
>>> +	ipv6 = libeth_rx_pt_get_ip_ver(*ptype) == LIBETH_RX_PT_OUTER_IPV6;
>>>  
>>> -	if (ipv4 &&
>>> -	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
>>> -			 BIT(IAVF_RX_DESC_ERROR_EIPE_SHIFT))))
>>> +	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
>>>  		goto checksum_fail;
>>>  
>>>  	/* likely incorrect csum if alternate IP extension headers found */
>>> -	if (ipv6 &&
>>> -	    rx_status & BIT(IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT))
>>> -		/* don't increment checksum err here, non-fatal err */
>>> +	if (ipv6 && csum_bits->ipv6exadd)
>>>  		return;
>>>  
>>>  	/* there was some L4 error, count error and punt packet to the stack */
>>> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_L4E_SHIFT))
>>> +	if (csum_bits->l4e)
>>>  		goto checksum_fail;
>>>  
>>>  	/* handle packets that were not able to be checksummed due
>>>  	 * to arrival speed, in this case the stack can compute
>>>  	 * the csum.
>>>  	 */
>>> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
>>> +	if (csum_bits->pprs)
>>>  		return;
>>>  
>>> +	/* If there is an outer header present that might contain a checksum
>>> +	 * we need to bump the checksum level by 1 to reflect the fact that
>>> +	 * we are indicating we validated the inner checksum.
>>> +	 */
>>> +	if (ptype->tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
>>> +		skb->csum_level = 1;
>>> +
>>>  	skb->ip_summed = CHECKSUM_UNNECESSARY;
>>>  	return;
>>
>> For the whole function: you need to use unlikely() for checksum errors
>> to not slow down regular frames.
>> Also, I would even unlikely() packets with not verified checksum as it's
>> really rare case.
>> Optimize hotpath for most common workloads.
>>
> 
> Makes sense.
> 
>>>  
>>> @@ -960,22 +965,105 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
>>>  }
>>>  
>>>  /**
>>> - * iavf_rx_hash - set the hash value in the skb
>>> + * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good cksum
>>> + * @vsi: the VSI we care about
>>> + * @skb: skb currently being received and modified
>>> + * @rx_desc: the receive descriptor
>>> + *
>>> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
>>> + * descriptor writeback format.
>>> + **/
>>> +static void iavf_legacy_rx_csum(struct iavf_vsi *vsi,
>>> +				struct sk_buff *skb,
>>> +				union iavf_rx_desc *rx_desc)
>>
>> @vsi and @rx_desc can be const.
>>
>>> +{
>>> +	struct iavf_rx_csum_decoded csum_bits;
>>> +	struct libeth_rx_pt decoded;
>>> +
>>> +	u32 rx_error;
>>> +	u64 qword;
>>> +	u16 ptype;
>>> +
>>> +	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>>> +	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>>> +	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
>>
>> You don't need @rx_error before libeth_rx_pt_has_checksum().
>>
>>> +	decoded = libie_rx_pt_parse(ptype);
>>> +
>>> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
>>> +		return;
>>> +
>>> +	csum_bits.ipe = FIELD_GET(IAVF_RX_DESC_ERROR_IPE_MASK, rx_error);
>>
>> So, @rx_error is a field of @qword and then there are more subfields?
>> Why not extract those fields directly from @qword?
>>
> 
> Yea that would be better. Probably just because the pre-existing
> defines. Should be simple to update it.
> 
>>> +	csum_bits.eipe = FIELD_GET(IAVF_RX_DESC_ERROR_EIPE_MASK, rx_error);
>>> +	csum_bits.l4e = FIELD_GET(IAVF_RX_DESC_ERROR_L4E_MASK, rx_error);
>>> +	csum_bits.pprs = FIELD_GET(IAVF_RX_DESC_ERROR_PPRS_MASK, rx_error);
>>> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_DESC_STATUS_L3L4P_MASK, rx_error);
>>> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_DESC_STATUS_IPV6EXADD_MASK,
>>> +					rx_error);
>>> +	csum_bits.nat = 0;
>>> +	csum_bits.eudpe = 0;
>>
>> Initialize the whole struct with = { } at the declaration site and
>> remove this.
>>
>>> +
>>> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
>>
>> In order to avoid having 2 call sites for this, make
>> iavf_{flex,legacy}_rx_csum() return @csum_bits and call iavf_rx_csum()
>> outside of them once.
>>
> 
> Good idea.
> 
>>> +}
>>> +
>>> +/**
>>> + * iavf_flex_rx_csum - Indicate in skb if hw indicated a good cksum
>>> + * @vsi: the VSI we care about
>>> + * @skb: skb currently being received and modified
>>> + * @rx_desc: the receive descriptor
>>> + *
>>> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
>>> + * descriptor writeback format.
>>> + **/
>>> +static void iavf_flex_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
>>> +			      union iavf_rx_desc *rx_desc)
>>
>> Same for const.
>>
>>> +{
>>> +	struct iavf_rx_csum_decoded csum_bits;
>>> +	struct libeth_rx_pt decoded;
>>> +	u16 rx_status0, ptype;
>>> +
>>> +	rx_status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
>>
>> This is not needed before libeth_rx_pt_has_checksum().
>>
>>> +	ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
>>> +			  le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0));
>>
>> You also access this field later when extracting base fields. Shouldn't
>> this be combined somehow?
>>
>>> +	decoded = libie_rx_pt_parse(ptype);
>>> +
>>> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
>>> +		return;
>>> +
>>> +	csum_bits.ipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
>>> +				  rx_status0);
>>> +	csum_bits.eipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
>>> +				   rx_status0);
>>> +	csum_bits.l4e = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
>>> +				  rx_status0);
>>> +	csum_bits.eudpe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
>>> +				    rx_status0);
>>> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M,
>>> +				    rx_status0);
>>> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
>>> +					rx_status0);
>>> +	csum_bits.nat = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS1_NAT_M, rx_status0);
>>> +	csum_bits.pprs = 0;
>>
>> See above for struct initialization.
>>
>>> +
>>> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
>>
>> See above.
>>
>>> +}
>>> +
>>> +/**
>>> + * iavf_legacy_rx_hash - set the hash value in the skb
>>>   * @ring: descriptor ring
>>>   * @rx_desc: specific descriptor
>>>   * @skb: skb currently being received and modified
>>>   * @rx_ptype: Rx packet type
>>> + *
>>> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
>>> + * descriptor writeback format.
>>>   **/
>>> -static void iavf_rx_hash(struct iavf_ring *ring,
>>> -			 union iavf_rx_desc *rx_desc,
>>> -			 struct sk_buff *skb,
>>> -			 u8 rx_ptype)
>>> +static void iavf_legacy_rx_hash(struct iavf_ring *ring,
>>> +				union iavf_rx_desc *rx_desc,
>>
>> Const for both.
>>
>>> +				struct sk_buff *skb, u8 rx_ptype)
>>>  {
>>> +	const __le64 rss_mask = cpu_to_le64(IAVF_RX_DESC_STATUS_FLTSTAT_MASK);
>>>  	struct libeth_rx_pt decoded;
>>>  	u32 hash;
>>> -	const __le64 rss_mask =
>>> -		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
>>> -			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
>>
>> Looks like unrelated, but nice change anyway.
>>
>>>  
>>>  	decoded = libie_rx_pt_parse(rx_ptype);
>>>  	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
>>> @@ -987,6 +1075,38 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>>>  	}
>>>  }
>>>  
>>> +/**
>>> + * iavf_flex_rx_hash - set the hash value in the skb
>>> + * @ring: descriptor ring
>>> + * @rx_desc: specific descriptor
>>> + * @skb: skb currently being received and modified
>>> + * @rx_ptype: Rx packet type
>>> + *
>>> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
>>> + * descriptor writeback format.
>>> + **/
>>> +static void iavf_flex_rx_hash(struct iavf_ring *ring,
>>> +			      union iavf_rx_desc *rx_desc,
>>
>> Const.
>>
>>> +			      struct sk_buff *skb, u16 rx_ptype)
>>
>> Why is @rx_ptype u16 here, but u8 above? Just use u32 for both.
>>
>>> +{
>>> +	struct libeth_rx_pt decoded;
>>> +	u16 status0;
>>> +	u32 hash;
>>> +
>>> +	if (!(ring->netdev->features & NETIF_F_RXHASH))
>>
>> This is checked in libeth_rx_pt_has_hash(), why check 2 times?
>>
> 
> I think libeth_rx_pt_has_hash() was added after so this patch is
> re-introducing the check on accident when porting to upstream.
> 
>>> +		return;
>>> +
>>> +	decoded = libie_rx_pt_parse(rx_ptype);
>>> +	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
>>> +		return;
>>> +
>>> +	status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
>>> +	if (status0 & IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M) {
>>> +		hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
>>> +		libeth_rx_pt_set_hash(skb, hash, decoded);
>>> +	}
>>> +}
>>
>> Also, just parse rx_ptype once in process_skb_fields(), you don't need
>> to do that in each function.
>>
>>> +
>>>  /**
>>>   * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
>>>   * @rx_ring: rx descriptor ring packet is being transacted on
>>> @@ -998,14 +1118,17 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>>>   * order to populate the hash, checksum, VLAN, protocol, and
>>>   * other fields within the skb.
>>>   **/
>>> -static void
>>> -iavf_process_skb_fields(struct iavf_ring *rx_ring,
>>> -			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
>>> -			u8 rx_ptype)
>>> +static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
>>> +				    union iavf_rx_desc *rx_desc,
>>
>> Const.
>>
>>> +				    struct sk_buff *skb, u16 rx_ptype)
>>>  {
>>> -	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>>> -
>>> -	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
>>> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
>>
>> Any likely/unlikely() here? Or it's 50:50?
>>
> 
> Strictly speaking, the likely way is whatever way the software
> configured during the slow init path. That's not a compile time known
> value so we can't really use that to optimize this flow.
> 
> I don't know which is more common. The pre-existing descriptor format is
> likely supported on more PFs currently, but I think overtime we may have
> more support for the flex descriptors and that might end up being default.
> 
>>> +		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>>> +		iavf_legacy_rx_csum(rx_ring->vsi, skb, rx_desc);
>>> +	} else {
>>> +		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>>> +		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
>>> +	}
>>>  
>>>  	skb_record_rx_queue(skb, rx_ring->queue_index);
>>>  
>>> @@ -1092,7 +1215,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
>>>  /**
>>>   * iavf_is_non_eop - process handling of non-EOP buffers
>>>   * @rx_ring: Rx ring being processed
>>> - * @rx_desc: Rx descriptor for current buffer
>>> + * @fields: Rx descriptor extracted fields
>>>   * @skb: Current socket buffer containing buffer in progress
>>>   *
>>>   * This function updates next to clean.  If the buffer is an EOP buffer
>>> @@ -1101,7 +1224,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
>>>   * that this is in fact a non-EOP buffer.
>>>   **/
>>>  static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>>> -			    union iavf_rx_desc *rx_desc,
>>> +			    struct iavf_rx_extracted *fields,
>>
>> Pass value instead of pointer.
>>
>>>  			    struct sk_buff *skb)
>>
>> Is it still needed?
>>
>>>  {
>>>  	u32 ntc = rx_ring->next_to_clean + 1;
>>> @@ -1113,8 +1236,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>>>  	prefetch(IAVF_RX_DESC(rx_ring, ntc));
>>>  
>>>  	/* if we are the last buffer then there is nothing else to do */
>>> -#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
>>> -	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
>>> +	if (likely(fields->end_of_packet))
>>>  		return false;
>>>  
>>>  	rx_ring->rx_stats.non_eop_descs++;
>>> @@ -1122,6 +1244,91 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>>>  	return true;
>>>  }
>>>  
>>> +/**
>>> + * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
>>> + * @rx_ring: rx descriptor ring
>>> + * @rx_desc: the descriptor to process
>>> + * @fields: storage for extracted values
>>> + *
>>> + * Decode the Rx descriptor and extract relevant information including the
>>> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
>>> + *
>>> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
>>> + * descriptor writeback format.
>>> + */
>>> +static void iavf_extract_legacy_rx_fields(struct iavf_ring *rx_ring,
>>> +					  union iavf_rx_desc *rx_desc,
>>
>> Consts.
>>
>>> +					  struct iavf_rx_extracted *fields)
>>
>> Return a struct &iavf_rx_extracted instead of passing a pointer to it.
>>
>>> +{
>>> +	u64 qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>>> +
>>> +	fields->size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
>>> +	fields->rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>>> +
>>> +	if (qword & IAVF_RX_DESC_STATUS_L2TAG1P_MASK &&
>>> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
>>> +		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
>>> +
>>> +	if (rx_desc->wb.qword2.ext_status &
>>> +	    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
>>
>> Bitops must have own pairs of braces.
> 
> I don't understand what this comment is asking for. braces like { }? Or
> adding parenthesis around bit op?

Sorry for my english :D Parenthesis.

	if ((status & BIT) && condition2)

> 
> 
>>> +
>>> +	flexi_flags0 = le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0);
>>> +
>>> +	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M, flexi_flags0);
>>
>> le16_get_bits() instead of these two?
> 
> Neat! I wasn't aware of this.

Indexers have a hard time with this as these inlines get generated by
preprocessor definitions, see the end of <linux/bitfield.h>.

> 
>>> +
>>> +	status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
>>> +	if (status0 & IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M &&
>>> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)

[...]

>>> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
>>
>> You check this several times, this could be combined and optimized.
>>
> 
> Yea. I wasn't sure what the best way to optimize this, while also trying
> to avoid duplicating code. Ideally we want to check it once and then go
> through the correct sequence (calling the legacy or flex function
> versions). But I also didn't want to duplicate all of the common code
> between each flex or legacy call site.

This one `if` won't hurt tho if avoiding it is more expensive like
you're describing. Up to you.

> 
>>> @@ -1219,22 +1414,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>>>  		/* probably a little skewed due to removing CRC */
>>>  		total_rx_bytes += skb->len;
>>>  
>>> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>>> -		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>>> -
>>>  		/* populate checksum, VLAN, and protocol */
>>> -		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
>>> -
>>> -		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
>>> -		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
>>> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
>>> -		if (rx_desc->wb.qword2.ext_status &
>>> -		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
>>> -		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
>>> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
>>
>> BTW I'm wondering whether filling the whole @fields can be less
>> optimized than accesssing descriptor fields one by one like it was here
>> before.
>> I mean, in some cases you won't need all the fields from the extracted
>> struct, but they will be read and initialized anyway.
> 
> 
> Yes. I was more focused on "what makes this readable" because I didn't
> want to end up having two near identical copies of iavf_clean_rx_irq
> which just used different bit offsets. But then it became tricky to
> figure out how to do it in a good way. :/

Nonono, don't copy the whole function.

But perhaps we can fill @fields not whole at once, but step-by-step?
Splitting extract_fields() into several small functions?
I realize this will introduce a couple more ifs checking for the
descriptor format again and again, but this might be faster than filling
the whole struct. Anyway, this needs practical testing which way is
better. Filling the whole might indeed be faster, as you'd just access
the descriptor once in one place (well, not once, but less frequently).

[...]

>>> +		struct {
>>> +			__le16 rsvd;
>>> +			__le16 flow_id_ipv6;
>>> +		} flex;
>>> +		__le32 ts_high;
>>> +	} flex_ts;
>>> +};
>>
>> I'm wondering whether HW descriptors can be defined as just a bunch of
>> u64 qwords instead of all those u8/__le16 etc. fields. That would be faster.
>> In case this would work differently on BE and LE, #ifdefs.
>>
> 
> we could define them as __le64 qwords for sure.

In the idpf XDP code[0], I defined Rx descriptor as a pack of __le64s
and then either access it as u64s if the platform is LE or
field-by-field if it's BE, so that we get perf boost on LE without
breaking anything on BE.
I could play around it on BE as well by just defining bitfields
differently there, but it's not a target platform, so I left it as it
is, it's not slower than the current Rx hotpath code anyway.

[...]

> Thanks for the detailed review. This is rather tricky to get right. The
> goal is to be able to support both the legacy descriptors for old PFs
> and the new flex descriptors to support new features like timestamping,
> while avoiding having a lot of near duplicate logic.

Not really tricky. idpf's singleq code also extracts some fields to a
common structure depending on the descriptor format and there's also a
couple identical checks. One `if` is rather cheap and clearly better
than copying 50-100 locs.

(you can take a look at the tree and/or idpf_txrx_singleq.c in the link
 below, it has patterns similar to this patch and I optimized some stuff
 there, e.g. libeth calls vs open-coded checks etc.)

> 
> I guess you could achieve some of that via macros or some other
> construction that expands the code out better for compile time optimization?
> 
> I don't want to end up with just duplicating the entire hot path in
> code.. but I also don't want to end up with a "to avoid that we just
> check the same values again and again".
> 
> The goal is to make sure its maintainable and avoid the case where we
> introduce or fix bugs in one flow without fixing it in the others.. But
> the current approach here is obviously not the most optimal way to
> achieve these goals.

[0]
https://github.com/alobakin/linux/blob/idpf-libie-new/drivers/net/ethernet/intel/idpf/xdp.h#L113

Thanks,
Olek
