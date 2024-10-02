Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED3498E606
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 00:18:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 932134023C;
	Wed,  2 Oct 2024 22:18:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xs9s1NoeiOuf; Wed,  2 Oct 2024 22:18:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0819C40251
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727907524;
	bh=YTgFxrWRm0thWb3cNKtDWOuQP9/JK0zZp120Fpbe7EE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hGETjifp4BUE0zxRKYeFQUWbqwYYX2GiCkobwQGnqPejopiW3V4/Izjxi1Zu3tD03
	 4APMRb2lRWwQVZm8mOswuK2NBQUE+qlf7ww+M0S+KahpixHVc0EAkfg1/whX8LHqIY
	 eEIOv3Nnq7eGgsiekZKbINLHzPeHOSTTW/W3vaVoMaJjZ5CneF1+ghGOM3eRk+QwYR
	 pfYeGGm5YuEHkbJplvH4ge1n931TxeKSG6QIaY+Fhkfc/cDBBEFk3+4ixX0QMbwOoQ
	 7XWXajKyGt5UYqwhUm+b3VzeZo+8hpbk5jq5n7bLL5vaO476RJ8q5rHbozWYjeFbfL
	 4JlGFCr6/g7Aw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0819C40251;
	Wed,  2 Oct 2024 22:18:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A39311BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FD384023C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fcZyKgDyxe-n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 22:18:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6078140199
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6078140199
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6078140199
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 22:18:40 +0000 (UTC)
X-CSE-ConnectionGUID: 32rQW1KhRICzbXBRwEZsNg==
X-CSE-MsgGUID: CxOxr0tzQjaDTxay1g5NUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="37644746"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="37644746"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 15:18:35 -0700
X-CSE-ConnectionGUID: pJ+oLBeeQwyExuRcXHpfaQ==
X-CSE-MsgGUID: oyxxVBvYQgWOHYNnLIpjbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74257205"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2024 15:18:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 15:18:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 2 Oct 2024 15:18:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 2 Oct 2024 15:18:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 2 Oct 2024 15:18:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZgC+yhDu8HygjROMF0b2Jd5MolSge9T3+JuAj0RQVWs0X/pEjfseTziLEcHd5np/65dHDjiWCnbNwNh1oH5krqs42PiUZx+2YLDSPkDYQXqTwjBYgTzpqmUtSBnJxNkcJjVqS7ISWdjUMmATat9QhmxrEVuO8BJI2yOR3Ygk733UUKZpX40Wd1Od0bvrmBs5N62rgQW7P68tGHUKG6NZj6fPsV28uWWNeGmoHhwjpFJuSiEPM4YYGzcK9qfcdIIalgBdVEqxpkYDTTjHqBPE2Mk2LUq6zdjO8IYvwUU9SY4eT/vvUsUX0fQE7HDlJw8DUoN+bDYEGmBbsAwsqlNupg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTgFxrWRm0thWb3cNKtDWOuQP9/JK0zZp120Fpbe7EE=;
 b=rJO74g2Enom0/XTgqEG7QXtF8Z9TWCdm+OPHynralYMt5dA3DGoQkNy4CbK2MGyqgUMmd9hRHFuYidd81B6lkP8PR/16cEbvfqxEkHXoQXGOYG+qX7iJKVRIYIUpIw6p0NI8bGo11Cmgr5WbiTn1WH+vO6+cBARyvdowhho73BgM4oXji0WUA+bGubaFJlGR9cs4HmaSrWPJxkGWSp6VG621jaFgOB+wMP+zZtsYzboh1Ae4WTGrT4xbUqQI1QnbGzosdJeXNZ3EEiw+Pkzwb/pBY337pAnS8En9BsYIH5dzB5QAfY1Jr9BYrnZpuHwcWMvDHBv5coKrBEEP9jwJ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by BL1PR11MB5238.namprd11.prod.outlook.com (2603:10b6:208:313::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Wed, 2 Oct
 2024 22:18:31 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8005.026; Wed, 2 Oct 2024
 22:18:31 +0000
Message-ID: <7b84469d-8404-1961-c038-27eca4bd93b6@intel.com>
Date: Wed, 2 Oct 2024 15:18:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240930184030.897689-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240930184030.897689-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0112.namprd05.prod.outlook.com
 (2603:10b6:a03:334::27) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|BL1PR11MB5238:EE_
X-MS-Office365-Filtering-Correlation-Id: e7c1cce5-2e64-49a8-7d5f-08dce33025e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UmZUczNmN3ppMGxVWnJEVDk4MXJldjR5Y1VnZ25PTytPZ1Mxc2x1aWNWYVYz?=
 =?utf-8?B?S2tJOFRsSFZjQ2ZtYU9CZExoR0ZBWVBMb3ZWZGVxM2tLYnlkRGFNcXgrMkdE?=
 =?utf-8?B?WGNpY1BhUktWeUxyek1ZcmM1QldyK2pma1d0R2ltZ0ZwY2RNY0s2REpqOUsx?=
 =?utf-8?B?STZreXhXd3FhREFXdzlYM0pmVG1PeTQralY5dHNHT0phZmVGTFZzdkRudGh6?=
 =?utf-8?B?dDVObUF3bWZWcWJwaVlacm8xMUJ5Sm5nVlh1V1BSRDV2WGhYUGt3QnNiVDU4?=
 =?utf-8?B?U0tyYkdmbGJnZzdFKzFmaEVDV0FDNExPR01yY3dGejk2bTFnYW9BaVRYYzQ3?=
 =?utf-8?B?cDlrV3pxRFRvc3lsUitOTlo3cmZjeloySmlBbGxubTB3Z2xsYmFWeEMzS2hB?=
 =?utf-8?B?ZEtIbDM4OW9VaUVQTTdzdGI5eWJFWnZ0NDZ2ZUJWVTllZzVUMnRZMCs2NjBl?=
 =?utf-8?B?RVFMOWdNb0VJeHU3ejY0Q0VENjltcEluNFBPU0o4bkFISy95WG1NOER2MG44?=
 =?utf-8?B?RzQ2SE5PSU5nQnZ4ejFVWnc0S090dXFpQUt5WEpxdVpQUFhNOGVybWJYRURP?=
 =?utf-8?B?ekJMVy9mN284ZzRjelFreFRYQkhzNUV3WFdnakhhei9LTWF0My9MOGJOaGdG?=
 =?utf-8?B?TWNVNVBkbnVySjJTNk1jY0tYb0szTGdZNmJrN3hWNnpua0MrRzdRZjJPMVFj?=
 =?utf-8?B?UFpzemNDL3d0QVJWSjVsaVRXZEN6VWc2NHlMMy9YVEF5ejFBN1hYQVUwODNP?=
 =?utf-8?B?T0h4QXNwZEpKbHdoTUg3SDM2NGtwalNZOTdqY3FDbHhpN2VqNTZidzcvYzJO?=
 =?utf-8?B?cG41LzA4NnRVWU5PUUZ4VE5veHFxM0Z6a1V0a1pKZE9LSWx6bjQ5OWpUaW1B?=
 =?utf-8?B?Q3NwRzBpL3dLYzhNeWJXMmVEN0Y2TVJYL2Q1UmoyOEVrUEN5L0dUdGR5Uk8z?=
 =?utf-8?B?Y005UURhb3lCQ0o2WWUxU3FlS1h1aGlxL1lQWVBkYVcrRHFqNHhqR1JvNnB5?=
 =?utf-8?B?aHY1SmpkeG9xQm54L3QxcFlMR1p0MWhVNnhsM0VQaTZ1b2VnQzU1cUFsTzVl?=
 =?utf-8?B?bFkzOHZlaEJpTlJvQ29IUkRZb3d2RnZyVi9jaDUvTlFMajRPNlRFa1psLzBr?=
 =?utf-8?B?Zml2RnVPQjM3WmRDaFJGU1JMbFcvbVQ4OG5zSEk2UkpBMzl4UVRHbVlGejNR?=
 =?utf-8?B?bUhrNi9wL25TS1ZhU1cyY1JNdXNZNHV5TGRxRFI1T1NJWkhQRFAwTk5mZk5B?=
 =?utf-8?B?ZGxZV3J6TVNDOTVVS0cxWmNndHVka2JuRTIvM1lGOFNldVlaSWhxSFVtVlA5?=
 =?utf-8?B?K0VYSVBldmlqekhYT2VWUFVpSENzN2pLYnNpeWc1Q1BPc2lHWGNrcTlmbmVE?=
 =?utf-8?B?M25pQkI2ZkNnd3VNTXpQMkM4QlBmQzN4WDE0QzNhUHl3c1pRejNGaGtWcFM2?=
 =?utf-8?B?NHVCTXZjbEI1dkEzajZNS3ZCT0pibjJBeU55eGNSU1NYVW1PWXltR0U1Qncy?=
 =?utf-8?B?R3pHeVlHV0JvcS9FNFgwQ254ZTVvb05qenBjYXpDSy8wSFlaRlJ0Z2xrbjhV?=
 =?utf-8?B?WUZoMXI1TjJQSmdCUHdFMzdheGtiRE9Kcmh1OXFScnJoZTJZQWlweHhTYTVW?=
 =?utf-8?B?V28vU2tVc1FyZkx6SEVwaWtoQ0NLbitLSm1jaFpFYTc3RGUreDRVang3VGxB?=
 =?utf-8?B?SzlFNU95M3o5dGRvSFBPNTd4ZnBQY1RIcVY3TWJIK05nNTZiTGxkWitRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QklReXYxS3ZzMEVEZ3V6aHZaR0VES2w2b3JUbDVVS2RSdTlyUW9wZDJsamo3?=
 =?utf-8?B?c2Jnd2c1aGZCVWZyOUNWaElpYWo0K0FLZ2pySUoxV2ZYdGh5anJKYnV2VzBM?=
 =?utf-8?B?QTRDRXpUT2ZDUFJLU1B2aGNBVTNKYklPR0NLU1g2cmFiNEZ4ZTRRb25qUThN?=
 =?utf-8?B?UGI5cHAwaDNVS3V2WUhWRTZBN1Q0ZW16c2pXZ29peFlxeVNxVThTWW9LRjkr?=
 =?utf-8?B?LzNmM0ZVckVTbVZtYnZsSCtaZ2Uxb2NHS3lNbW0wTytxeURxc1NqNjQvczhx?=
 =?utf-8?B?VEJxeFl4UWlna21HbUZ3TjZSV0EzYUtLSzMrK0tWN3JYK3kyUEJLZGNURXZU?=
 =?utf-8?B?S3NUQ1lJbjh2akpVQi83eG5rMStFRlBPYjhEaDNpMnB0b2kvY2xiUUJKMlND?=
 =?utf-8?B?ZWxLY0tBOVhOTjkrSmNIL29PdStyaE13MFhzL0FPaG5sN3Q2V2JFOHcwdGxU?=
 =?utf-8?B?Y2llbHUyelFCYWpCUjZnRkVyWHExbXNFazk5eUhJSkljUlgrN0pNSWZnSms3?=
 =?utf-8?B?OEZFSjZhZzZSQ0c0ZW9qY242ODRyL1M0dk03M1pvanJHVzFYOVhGUGxVcG9G?=
 =?utf-8?B?VFVuc2xvTmNwQnhIYnlwZmFWbE5aS2VNT3l5SEI1RzF3cmR5RE51L1R5R3lx?=
 =?utf-8?B?Zktkdlp4UnpGR2J0R2lnQkN6QzhGUmtGamJ6S3ozMFVjekZ6ZHQyVjdXdnZS?=
 =?utf-8?B?eFk0SlQzcXRIdUxZemtFY3VEMHVac05GajZMaGI5bEl0TjljbitPQ2IxaFho?=
 =?utf-8?B?Z0NLcWxRZ2N5aGtrN0pEc1V3ampqT2U3UHYxYjBoQ2tNeFNZZm9GVzlpbU1n?=
 =?utf-8?B?NW1EQmM1WDl4TUlPWHVNYnRFYzBZNG02dVE0SExZSHk2Mkw1TkVvWFFQSzBD?=
 =?utf-8?B?Rm9lSDZiVGZjMFIzbHN3bHU1M2cvdmlLQnJEYWg2WWpQNUJDajlXdEJMdlJr?=
 =?utf-8?B?SE1IcksxYnV0OC9sR29kWGRJcEYwOXVERHYveFB1ODFSL3JyMTZQNG16TGNE?=
 =?utf-8?B?Uy82TUIwVHRLYVROcTl6RU95cXRRUWw3clFsNTZqSGVJR2Q2QmE1TEFZZDRV?=
 =?utf-8?B?WG5HZEpKVCtkWk04MzVpRTdDQ3hIeG0wSDNFOVI1SGkwVVhnYmdVRTh2WUdH?=
 =?utf-8?B?MUxqTThlWDY3ZlUvU0NBa3FJQUI2SWxaSy9sRnZaaENieDRCNmVlZkRlWWZu?=
 =?utf-8?B?QkRFT3JPempWM09tdXJ3MFF3aTlpVWltWlUxbUxucDlRZDhxenlSRk9xbHda?=
 =?utf-8?B?M1V1NmY5RUJJOWdLMFZ0OUQ5ZU9ka2kwQzA1TldSNkRnQ0NFSi83WUFUWGZQ?=
 =?utf-8?B?U01KUW5LSGJRQ0NrTWJORThXQ3NKc213ZHpUTmtGK0h4b1ZQZXdadnJQWHph?=
 =?utf-8?B?LzYzS3dobDN6ZzVHQzFobEg4N2pyMmhEUVdhYXFRMXZnblRsc0tXdVBzU0Va?=
 =?utf-8?B?Y1hpUVZycXRjdlRqUm1zZXUwckpjaGpoTlU0dGtSMzFzTERVU2wrNExTaXdM?=
 =?utf-8?B?SUlkVlBwcEVRZmhUZHY0RmZUYVhaaG42YmVuWkU3aHVzRVpBbWtTKy8rM1c0?=
 =?utf-8?B?S3J3QXBJZmU3UHVqeUhQQVcyWVJMeWZTaWJFcXFUejNwaU90N1kwMmhlRlNu?=
 =?utf-8?B?UWNadkFFbTh1MENVOHNEZXd1WW5Vd0VKYk1LUUIwdnVIRXozTFBYNGRZT2VL?=
 =?utf-8?B?MFRhYVhjc09KRVVYendjUlBsNzcybjRPUURGUStWZVZzNGpmZGFJREY3REpQ?=
 =?utf-8?B?Ui9KVUNydktpa0J0ZFhsOXFtUWlSZ1ZiZm9hZGlCNWlpQ1ZQNitUUFNGaVJ3?=
 =?utf-8?B?ZVJKYWlzL1ZseWNjUno0QndLeUc0UXhRUFNZY2tRc2RoS0p6VzlBcGx0VmlF?=
 =?utf-8?B?K2FkTHZYUW01VHhpMGF6Vk1ka0hQQmo5RmRiQnFQODkxQzRMTzh2SGJ5UUJC?=
 =?utf-8?B?UGFieUZkc29mU1RnVzRHbVpUamdQRG9zNlRWU0taTnN1RGR0bjd5VHc1QTVj?=
 =?utf-8?B?bDhZZS9vRkQvaDQ3OUpWWlUrWmRpc0s0TnJhd2ZMRnNURnhtclFEK2RsVDE5?=
 =?utf-8?B?NzNhcHV3a2kxM1E2YXpPOGVFNWZ0aXN4RE41aXFJUG5rUXdkQTJPVk11MnRp?=
 =?utf-8?B?MzlYc0w3cGx0dy85SGhKWU9KWndvMGxrczg3cVdmMkhQbGtzOHpuNlNpaDVz?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7c1cce5-2e64-49a8-7d5f-08dce33025e8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2024 22:18:31.5695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TjzXE6rIyTFpOAJwbIMwxCxJa3xthmWxNop+N6cVqtGn5u5OEqqLU1gl4bqJzMJTJ3k+xBvT6/NCO6ORoxEXdjjRmWUZsBkYEhIqG/9cmMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5238
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727907520; x=1759443520;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pCZFWWnBUHt6qR6V3B4KFCOPmdknmXgv5POfL0s/MPk=;
 b=YFIjyLEVqf/jjDbRGDi1OvTBuXJBYLk6MIYg5GLcGFuw2LzkwDGtHJAr
 8Ftba/XfnRoY1iWtSqzMrQtaI4e5XFiGuwDlldq4fgTGxWThIDSlc1/Tc
 QQqQif3fZQ+cbL77uEnx7L4rWaYC2W3jes3q29Pce5tU6BalMVgWZ7MlW
 cGDGXF0CJ3Y/yoXc3Ug8dsWqD95wM9HxXIxXxPbbRAgkTyH34hpEt0mEi
 zYdRv9iI2AsMD1JeW9n+PCXTfag6Xx8W/lUADtSvnJr139mBLaX8FWyq8
 hiiOzqXfQJoriQE4Er5lXHo/ZWoTJcgsCZ6bbefwUJZcL94C9V4rkgw2+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YFIjyLEV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix crash on probe
 for DPLL enabled E810 LOM
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/30/2024 11:40 AM, Arkadiusz Kubalewski wrote:
> The E810 Lan On Motherboard (LOM) design is vendor specific. Intel
> provides the reference design, but it is up to vendor on the final
> product design. For some cases, like Linux DPLL support, the static
> values defined in the driver does not reflect the actual LOM design.
> Current implementation of output pins is causing the crash on probe
> of the ice driver for such DPLL enabled E810 LOM designs:
> 
> WARNING: (...) at drivers/dpll/dpll_core.c:495 dpll_pin_get+0x2c4/0x330
> ...
> Call Trace:
>   <TASK>
>   ? __warn+0x83/0x130
>   ? dpll_pin_get+0x2c4/0x330
>   ? report_bug+0x1b7/0x1d0
>   ? handle_bug+0x42/0x70
>   ? exc_invalid_op+0x18/0x70
>   ? asm_exc_invalid_op+0x1a/0x20
>   ? dpll_pin_get+0x117/0x330
>   ? dpll_pin_get+0x2c4/0x330
>   ? dpll_pin_get+0x117/0x330
>   ice_dpll_get_pins.isra.0+0x52/0xe0 [ice]
> ...
> 
> The number of output pins enabled by LOM vendor is greater than expected
> and defined in the driver for Intel designed NICs, which causes the crash.
> 
> Prevent the crash and allow generic output pin initialization within
> Linux DPLL subsystem for DPLL enabled E810 LOM designs.
> 
> Newly designed solution for described issue will be based on "per HW
> design" pin initialization. It requires pin information dynamically
> acquired from the firmware and is already in progress, planned for
> next-tree only.
> 
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c   | 44 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 19 +++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>   3 files changed, 64 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 74c0e7319a4c..4bb4d74a7eb8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -2063,6 +2063,48 @@ static int ice_dpll_init_worker(struct ice_pf *pf)
>   	return 0;
>   }
>   
> +/**
> + * ice_dpll_init_info_output_pins_generic - initializes generic output pins info
> + * @pf: board private structure
> + *
> + * Init information for generic output pins, cache them in PF's pins structures.
> + *
> + * Return:
> + * * 0 - success
> + * * negative - init failure reason
> + */
> +static int ice_dpll_init_info_output_pins_generic(struct ice_pf *pf)
> +{
> +#define ICE_DPLL_GEN_OUT_NUM   16
> +#define ICE_DPLL_GEN_OUT_LEN   3

inline defines are frowned upon. I'd put it above the function, at top 
of file or .h file...

> +	static const char labels[ICE_DPLL_GEN_OUT_NUM][ICE_DPLL_GEN_OUT_LEN] = {
> +		"0", "1", "2", "3", "4", "5", "6", "7", "8",
> +		"9", "10", "11", "12", "13", "14", "15" };

... however, could we declare these without the sizes and use array size 
for size?

> +	u32 cap = DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
> +	struct ice_dpll_pin *pins = pf->dplls.outputs;
> +	int i, ret;

smatch reports:
../drivers/net/ethernet/intel/ice/ice_dpll.c:2105 
ice_dpll_init_info_output_pins_generic() error: uninitialized symbol 'ret'.


> +
> +	if (pf->dplls.num_outputs > ICE_DPLL_GEN_OUT_NUM)
> +		return -EINVAL;
> +	for (i = 0; i < pf->dplls.num_outputs; i++) {
> +		pins[i].idx = i;
> +		pins[i].prop.board_label = labels[i];
> +		pins[i].prop.type = DPLL_PIN_TYPE_EXT;
> +		pins[i].prop.phase_range.min =
> +			pf->dplls.output_phase_adj_max;
> +		pins[i].prop.phase_range.max =
> +			-pf->dplls.output_phase_adj_max;
> +		pins[i].prop.capabilities = cap;
> +		pins[i].pf = pf;
> +		ret = ice_dpll_pin_state_update(pf, &pins[i],
> +						ICE_DPLL_PIN_TYPE_OUTPUT, NULL);
> +		if (ret)
> +			break;
> +	}
> +
> +	return ret;
> +}
> +
>   /**
>    * ice_dpll_init_info_direct_pins - initializes direct pins info
>    * @pf: board private structure
> @@ -2097,6 +2139,8 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
>   		pins = pf->dplls.outputs;
>   		num_pins = pf->dplls.num_outputs;
>   		input = false;
> +		if (num_pins != ice_cgu_get_pin_num(hw, input))
> +			return ice_dpll_init_info_output_pins_generic(pf);
>   		break;
>   	default:
>   		return -EINVAL;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 3a33e6b9b313..e4ab76496d3a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -5964,6 +5964,25 @@ ice_cgu_get_pin_desc(struct ice_hw *hw, bool input, int *size)
>   	return t;
>   }
>   
> +/**
> + * ice_cgu_get_pin_desc - get pin description array size

missed updating kdoc from copy/paste...

> + * @hw: pointer to the hw struct
> + * @input: if request is done against input or output pins
> + *
> + * Return: size of pin description array for given hw.
> + */
> +int ice_cgu_get_pin_num(struct ice_hw *hw, bool input)

... though I wonder if ice_cgu_get_num_pins() would be a better name?

Thanks,
Tony

> +{
> +	const struct ice_cgu_pin_desc *t;
> +	int size;
> +
> +	t = ice_cgu_get_pin_desc(hw, input, &size);
> +	if (t)
> +		return size;
> +
> +	return 0;
> +}
> +
>   /**
>    * ice_cgu_get_pin_type - get pin's type
>    * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 0852a34ade91..f28cbae924dd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -404,6 +404,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>   int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
>   int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
>   bool ice_is_pca9575_present(struct ice_hw *hw);
> +int ice_cgu_get_pin_num(struct ice_hw *hw, bool input);
>   enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
>   struct dpll_pin_frequency *
>   ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
