Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ABC8D373B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 15:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2766818BE;
	Wed, 29 May 2024 13:12:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vLHuW7j-LQap; Wed, 29 May 2024 13:12:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA3DA818E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716988341;
	bh=ctiei+eXYi6PH5PBusa0YkoR8oNrHHGME1RWx8wmeYA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xqckJ6sOcw/ahpotMe/TE1YXnybLi9w9uNsF0H2C0mXpxAt8uUtMNS8buO2SxVPap
	 K6ybJKBW1a7xdiyFgwvrAIWBfDZ+Zia0zBHsbNetkpBV0uItm7aAAdhc0nQgZWKJGq
	 HtKl9zn6kgFoFQyAbpwd/0B1WqF/q6rvHDejTqDEldjz8ozMMr6dPaW9O9J/8QsajV
	 ekxIP1CyVEP0CuGvdeCc4yC7NI1vlO2EpOodSsXH1y8hZ4oQFVUubhoH58xJL+K1b3
	 06gMr7rw43llsimNaQLwGqhOFz8gc00RF4yOfI2CMp43FpPpguaKP5cXN1EOrDqIa/
	 KdO/enYui01Yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA3DA818E8;
	Wed, 29 May 2024 13:12:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45BC91BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 13:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30DA160A91
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 13:12:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rNyQzD41vL3i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 13:12:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4960160A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4960160A6A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4960160A6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 13:12:16 +0000 (UTC)
X-CSE-ConnectionGUID: u7sp8HqGRmiQ99OinZgDxw==
X-CSE-MsgGUID: xzQIc9xKRZKpSiWDv2EVnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24044015"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="24044015"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 06:12:16 -0700
X-CSE-ConnectionGUID: Ys1teFNLQmqbjkdQnFj76w==
X-CSE-MsgGUID: UpNriAf9S96SWHRN8ILY0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="35512141"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 06:12:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 06:12:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 06:12:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 06:12:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpRTu2j9a2REaR92BhIrVRb9ifePKnCkEPaanl39liEHpLOGhCdPFtqrDm5U3nsvR7ZOjIAsD9UN/kt/et/+WWQC/745AYJN5ikhM09xGCA7D/uLBgVemzshVKQVFO8HkyI8UqLXKfAGz8tZ2SVhj9fbjJ4WQaQMWQnuoQLUIaseblg2Nw60cWWm/jrgU9igvlUdEWuNCfvgX5+VIE5tYc+dP8V52govjyGmS468DmGpdmPAKMvIwTRylubhj8wo2I5Zx4ip44wBOojUoO+ICfS8TPw8HVW/HF0YJImeGv0cmZgjATRLI/IysoBQ+IyXmGJhDr8DH1sER2QcqUndwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctiei+eXYi6PH5PBusa0YkoR8oNrHHGME1RWx8wmeYA=;
 b=h5FDupRafOwtq2XPh+4Or5RZyZcPGcp0pnRjd03j3jPgzbLsCCeCBPXKDOt74yMehCFMnv6Q6kr+wo/4GMaXaIb75AKTgBZodUZuSKtfAn7AocRjX83SNvwZsP3t0aE/fNNG2gVTZqFmDOIosereuKA0iDRYRw+C+urejhQ+s4AKp8tntGnkW31a88bCVGWd8JMh/+4ELmaslmQr8aqwmQaH+2a3MGK2sRbsBQe0qpjM5Kf8qt4oQkM+BGPhOST5GkK8RyQDVJrDkLbHbXTC+zV7qAjQQ76isVdJUc1AKFTQVIBY+UJkXIiW2NHDrJwLsfEwC1LzUmrvxE8iky2XLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by PH0PR11MB7422.namprd11.prod.outlook.com (2603:10b6:510:285::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 13:12:13 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%5]) with mapi id 15.20.7611.016; Wed, 29 May 2024
 13:12:13 +0000
Message-ID: <18d08ef2-d08b-425f-84f8-a5281de978fb@intel.com>
Date: Wed, 29 May 2024 15:12:09 +0200
User-Agent: Mozilla Thunderbird
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
References: <20240528112301.5374-1-mateusz.polchlopek@intel.com>
 <20240528112301.5374-12-mateusz.polchlopek@intel.com>
 <20240528130055.4ecf339a@kernel.org>
 <CO1PR11MB508916EC8EF80A8EFE6EF19DD6F12@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <CO1PR11MB508916EC8EF80A8EFE6EF19DD6F12@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0136.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c4::12) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|PH0PR11MB7422:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b521a4a-0019-4c5e-d7b0-08dc7fe0f48c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2xsaE5nTlptWnhFL3F3UThOR2JkMlJHTWJ3UWlheWlvR1JUR1JXaGdOVy9N?=
 =?utf-8?B?bUNYWE9rbTVmdUtOMC9RTzRpRzZKaSsrVCtiMkJ5VWZkSTdVOVdETFMyajRm?=
 =?utf-8?B?bHBBemFpYWNRK3AzdjV3ZEFSSGlGZ3p2WUY4S2tnYy9nYkpuNEhXaDRSY0kw?=
 =?utf-8?B?MS9ERTZlYjNEbVBEamlwWm1VSlJrZFZKSUk3M2VVTWtPVnFMbHdZc3RpRis0?=
 =?utf-8?B?Yjg0SGcxTk52QTJYVllvZlRLUisvcmV5TDBqenFEM0F0aDhDS29rNk85ZVBM?=
 =?utf-8?B?bUJ2R0M1dlBacCtXRmF2Y0g5cC9GVDdURDIzWlNlWTJSWEo5aXpIOUZ3dnJn?=
 =?utf-8?B?WWdaUFR4cWRxM3FuT0xmRXhKSnVBZWU2K0xrVHpoRmovZjYyYi9OZGllVy82?=
 =?utf-8?B?THdTQXIrMXhMZFg4QUpoSS9VaFFIYjR2ZVJmUkk1UUY2Y1VjTUF4b2pQcm9x?=
 =?utf-8?B?VEpland2a1BFYnlxcThTaGFtRklQc1RtZzhYS2drc09sQXBkQXZmLy9hNkRl?=
 =?utf-8?B?V3BKYXhzK1VSOWthTUNkUG93T0lVWVcyaGtrRzZPYk1pZXlCRUhjam5CeTdX?=
 =?utf-8?B?VlJpQ1Y0aDB4S3ladG55U1pYcmpYdEVFazBJa284R0l0dEZMR2FzZ2F0a3dR?=
 =?utf-8?B?aERLL20rVHR4Q2VMbEdsbW1KL1pNWTFiaXo0NjlPa2JFYzRucE54OE1Hb1VW?=
 =?utf-8?B?emZjSGk2V3plb2VObGtYdmFBUmxTWGdIRksxVDhOYlV2MEY1Q0FEMERsdVll?=
 =?utf-8?B?cGtpSW9VTVBpTkE1SDVIWldPMjVvdWphUDlJdFBrc201NUJQZ25BUW56VUZt?=
 =?utf-8?B?U25xK2gwbTZ3MGljYVVPYjBmbWxlSkxhbFltOUpOREFvYkg5bzRPRDcrWkJw?=
 =?utf-8?B?ZUt4WWY5UDBPNm51aEt6K0dQQmoveDlpem1VWlFET0p6NXlaelZZOExTcjZr?=
 =?utf-8?B?STBQQWdrZTBnQ2hqaHRJVXpzcmtUQjhmYU14OVp1cGJndkNDZzlSdDNaVXFP?=
 =?utf-8?B?OWpPMmw0cU90eGIvTmZ2UUNaRGoxbjJuN0I2R2lnMExoOEFzV1RwUFBWWklo?=
 =?utf-8?B?TDZhSU8zYUJ0TEVsUzRJQUhBNVkwd2I2MWRjbUlWRkVLN2p2ZFM0SjdQMndm?=
 =?utf-8?B?eUVza01YNUJDUEFXMnh1ZEdhQ25GY3hsUnJwck4zV2dmQ1lHNDBiMWZPUSt6?=
 =?utf-8?B?Ymwybm02aEJqaTlVV1hSOHFiY2M5Mmx5QUJwa24vUDRKVmUwb1k0V3RCWDMy?=
 =?utf-8?B?MnY2TUVGZEo3dXVhVWZFWDhkb2Y5eS9NejdzTUE1NVhhWmZJUDFwa3l1VGVN?=
 =?utf-8?B?NW9DWXRlVHRGVHlFSFFuRHpTYncvcFhqQVNkdHMyT1MwQThMYVkvaGFYZkZi?=
 =?utf-8?B?TEY1TlRsYzE0YUdFTDJEWTRZcWVaWG5iTjhjMmN4azFlNVFFeHNzT1VUSTJa?=
 =?utf-8?B?VFBHamtqZUQ0RGFsbVQrRGZ6TFhNWVAxRGxqNCt5NUR1ZlpJOGkxdUtidDRU?=
 =?utf-8?B?Y0EwUHdRRE1VWmdKOU9LeW1weUFQZEJKRCtudDBUUVU5Sk5RaVo2Rjl5WHpQ?=
 =?utf-8?B?OHllSXJsYWcyc05IQVFQQ2F3ZWZzNDhWd1NUY2RmR1hGYTBEdFJCSjk1ajhV?=
 =?utf-8?B?RzR5MlY1dmxCK2tSUTY0SktMTFpMR2l5NE8ycTNkRHgzOFJya0tLd3RsN3hV?=
 =?utf-8?B?cUh2RUJUUzdlV3R1UkJJQlA1dUw0QkpYT3plQ0tpTEEyem5UWE5vSWx3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkoxV3lEbW5ORjFDZk5lN3FwNXZSZGxLcFVOa1pzcWZLRjZ4ZG5uaUZrbDZj?=
 =?utf-8?B?TkpIN1huMnhIaXc0NWlEQzN3d3VydnV3WGZvMkR0cVJRckVPTDRxZW92TGpN?=
 =?utf-8?B?dnkrUzV4VHV0cVQyQVpPbS9YRXAvTzFZOFBxdmU3dDNUeUsyR1JEN2c1Skdu?=
 =?utf-8?B?a2Fkd05VZkplQmpHanY0Zlhyb3p1VThFNXdWOVdtNG9XaWNlaDYwUERhZUNW?=
 =?utf-8?B?bWF2QkRZQktTczA1Q1NSQ3A0QklGK0d6eThwUUMrU0k5VVpERkFqc1JqRnRT?=
 =?utf-8?B?TitRN1FaSy8rejMzbUtUTkhOa0lqZGlBU3kvdDZDd0p1ZzZRTWdBdGlnRWRG?=
 =?utf-8?B?a3NiNzNPNjg5U0Qrb1VjOG9uQytTQmNhakxSbC9DaC9CZklZQnVEUHJKaHk3?=
 =?utf-8?B?RUh3dExEaXgzdTlOT1ZTUm1EN080WHdpdWQrUkZuWjZURkNsc3E0QmZzR1pX?=
 =?utf-8?B?Z1gxOFpLN1g4eGtvR3lIUDV0Smduc0NYdmdGa3ZJa3JSemk2UUNZTk0wTlR3?=
 =?utf-8?B?THlVNVcvMEovU3hESmZQa3cydUxGL3lqQVRCcDN4Z0NpQitNajNqVm9XSmNy?=
 =?utf-8?B?K1ROYjEvMGVITU9GZTdEV3VTVCs1TExMdW5EYmZ1M1IvVzIyaWRVZEZtRk42?=
 =?utf-8?B?UmZIVitDTlVCZFRRQS9XK0I4NzRhNUFCd3VnZVVYUjdZaFNGU0RXdHNLRzhq?=
 =?utf-8?B?cGVQVndQM21PbWM1R095NVQwbCtaaWxsMzNxRUF3S0tsRFlqcU4zMVRJV0c1?=
 =?utf-8?B?MzZ1V3M4YnpXU0VGUi9iNFo3U0JaSk54VnNZZGRKSlg3S3NPb01xNW1kMnZq?=
 =?utf-8?B?UStKaGphVlZBM2YwMEVLNi85UitaK0NnN3ZYVWQ2RjZnUFdocG1Vd3p2THRw?=
 =?utf-8?B?ZU9kYTBaeEY0R0Y0cEkrVVpYWkhtbHF1aVhXSE82WnBTTWZxcjFpNzRmcUNS?=
 =?utf-8?B?ZU5Ddi9rK2d2S3JNNVh4bmhZUlQvbGcyQ0w3YUtvR2taejgrQ2VTcWZjYk5a?=
 =?utf-8?B?OUdxSmRtTHFLQ2lpaDFKd1pKSnMzb3BGak53aVlrNFZTUHVjL1BYWmJKK3dh?=
 =?utf-8?B?Wlo4T20vWEZhdjVqVHRINnJZeTJxTU9hWktNQkRSU2tQSS8wNFRkRVE5VzRX?=
 =?utf-8?B?ZFlEZmhiYWVBYXhwYmRqQlhIMmdsS3JMUngrUTJZVURpbWYzeGtDZGVHejdQ?=
 =?utf-8?B?U3dMaklmMzhCcEJQQm91Z2hDZGhOWHozZGNKQzRJSERVNWdpbmpRN1E1MHVy?=
 =?utf-8?B?SDhKY1l3Zm5xejh0TkdnT1BIRmV1UDZtMGJ1YnhLYTJEVGx3UW5RRnJtdnJw?=
 =?utf-8?B?dmswN21ZZW82dXdrZ09JdXhMMytjcTZYMHJPRTN4cHdkNDh5K2cvMkRYRjRS?=
 =?utf-8?B?Y2NhUCt1OTNWT25JZ256N1NzVkJnWTNGVG5lMG9WNVJHc3pzOE5MRWZET3Vw?=
 =?utf-8?B?OFV2Tmxmd3REQTAwMld2UDFydUdRSEh3eGdPQXhWeDV3TFJ6algrRHcyRGRK?=
 =?utf-8?B?UVFWNk13dDhCNzYzZk81SXhWTGlPWVN0UHRJMExVTTQwZmtBa1U1dlVtWEZH?=
 =?utf-8?B?bjlZb2NrRXRTcVFFeTBYZ3A1S3d5YkxrQkNNRVQyempROUE2alJkTDZ1eU9Y?=
 =?utf-8?B?Mnk3R1BhV01FTUVGNXpBVGdlQVNwNkRUdHk5UitYMjlTd0FLYUtxZzNPcWM2?=
 =?utf-8?B?dXhBNHRJbnF2VDFUdXFhUVBBc3lucGxQUUpwWVAzT3JVaHJ6QlZ1OVdxVStH?=
 =?utf-8?B?ejBXV1ZIVWpQcVEzQ3F0OG5nN0x2M0Y3aUhjYWF1eVJlMnVtWjBxQi9uczFa?=
 =?utf-8?B?dEFFSmwyVFcyc3JaYnBtcTlkZzhpY25KWlJWaCtRZ1VCUXFZeW9qNi9ZcnZU?=
 =?utf-8?B?eEJjbDFCQXpsbHd3ckQ2NUEzblg3RzR2VTMyeUdmTmZ5TVMzWmwycmUwWjdV?=
 =?utf-8?B?M2ZSUmxNT2ZLNGJaVVpCeUJGTEtQVjdDR2dLTmhCdDJRRy9lWWlBK2RYVno0?=
 =?utf-8?B?eDVqUjVwTkx1dDZBZDVnWVozQW5vdXQ0RW05dmpWbHc2VENxRHB1YVVWbVUx?=
 =?utf-8?B?RSt3a1RCRFZ3RWJlQ3YyWWlJMmEzR0ZwaHQwUnJvRU5ra0d3TFFEdUU4RVcz?=
 =?utf-8?B?N1dhT3pzbmloQXVLMU5nK2tjVU1vMFZsVVdxbFhFVE5jeXdycDJUL0RJZ1l6?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b521a4a-0019-4c5e-d7b0-08dc7fe0f48c
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 13:12:13.4174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yn2ff4fh0a3ShaLMWCAXXI+Lrf4ZAhJwImW07gXAbbecpL4NAhjdh8Z22ASgxBQuK7Vrfz65eqGCSGZFhg721pQrQK8+SGEF4fYTyRwwypc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7422
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716988337; x=1748524337;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=diGxcAGtjsE5FvBNRCeX109aCWAe6228yqT5TtkhKSc=;
 b=Sk8jVdeTMyD7B0DcAPyPXXV/L6qVSHX66TlbGY9LJdM57vaWvVS0bxyg
 c9CuOB4Vt+N3nJaick8gB+2V/cGJU6ZmxDICBc9JiTHO4PHv1ulI95mbe
 gBaQqQeNi58wXm99u0/3Wa+U1U9ekzdGfcLcgsjQbVDlYe7m2kx5SdpY+
 7P0N3mqXe6PqeSM3AHHvKAfLyLIGfW4wTWnWLMyaU1VmCvgHqwIYhgshC
 o+6Xu37OaTuVPDIBJ7me7J4c5DQyWjxVx5cvvQ1BWR1JvpuxKdu5M0ROz
 QIiCKmBHPHxjAOvNFVpSrZlf58e1Bgznrb1GhytjsQYyN+8s/TAb86EPb
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Sk8jVdeT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 11/12] iavf: handle
 SIOCSHWTSTAMP and SIOCGHWTSTAMP
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/29/2024 1:54 AM, Keller, Jacob E wrote:
> 
> 
>> -----Original Message-----
>> From: Jakub Kicinski <kuba@kernel.org>
>> Sent: Tuesday, May 28, 2024 1:01 PM
>> To: Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>;
>> Rahul Rameshbabu <rrameshbabu@nvidia.com>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 11/12] iavf: handle
>> SIOCSHWTSTAMP and SIOCGHWTSTAMP
>>
>> On Tue, 28 May 2024 07:23:00 -0400 Mateusz Polchlopek wrote:
>>> +	.ndo_eth_ioctl		= iavf_do_ioctl,
>>
>> Please use the new ndos:
>>
>>   * int (*ndo_hwtstamp_get)(struct net_device *dev,
>>   *			   struct kernel_hwtstamp_config *kernel_config);
>>   *	Get the currently configured hardware timestamping parameters for the
>>   *	NIC device.
>>   *
>>   * int (*ndo_hwtstamp_set)(struct net_device *dev,
>>   *			   struct kernel_hwtstamp_config *kernel_config,
>>   *			   struct netlink_ext_ack *extack);
>>   *	Change the hardware timestamping parameters for NIC device.
> 
> +1, this is an excellent cleanup.
> 
> Thanks,
> Jake

Hmmm... sounds good :) Thanks for pointing that, I will take a look
and will try to prepare solution in next version
