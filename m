Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7FEAD55FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 14:53:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D915E80F9F;
	Wed, 11 Jun 2025 12:53:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7iFDPM0uGIJI; Wed, 11 Jun 2025 12:53:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A80B480F68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749646396;
	bh=QM+He3fKiXYtRLRrjn3v08u4q1VY2Xv2cn8WkdofcN4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oXkYI9lTq+7ZmgICsJ8Kfei6E5GELF04O5cVcBCZTBaImjFTuMDY38m1wpVWE1bc6
	 +yAJjmaEX+/9WYZYBvWPenPftS67x5yZ9yYVOi5n3Dnwl/TMET1VV7pe5xvdCyqXkW
	 tmNjVQyAgOFTsVmy612CJLIcDQ1KrLuCBateBWDW6RCHiCPeDY49YA1ql2eLUH0rey
	 tyjEntDHBR7jiKz58NFtzp/3UaRXtEjGXhxKLyQagJl3qnJZE8HpLkxVH8NRCdORvU
	 oKVSACd7XPGdoF3WJMcPsorP6FwVSlx5yV46fCpa64SLidG2JaBjofUbibwA6Nkz+3
	 arJHT3dygoMNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A80B480F68;
	Wed, 11 Jun 2025 12:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EEB8A183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 12:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E07DC40420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 12:53:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LV3ZAlOgVKgB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 12:53:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 04EBF40024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04EBF40024
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04EBF40024
 for <intel-wired-lan@osuosl.org>; Wed, 11 Jun 2025 12:53:13 +0000 (UTC)
X-CSE-ConnectionGUID: iGiuu4BgSBmiuHW5bacMqQ==
X-CSE-MsgGUID: UNleVEg6TmaXz3+nxW3q3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51667410"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="51667410"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 05:53:13 -0700
X-CSE-ConnectionGUID: igMQMq67SaO5mYNWqrMuAQ==
X-CSE-MsgGUID: utXg8uDgSdaMYQ4h0Apilw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="147681715"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 05:53:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 05:53:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 05:53:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 05:53:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q627+K5u7JsxK2EVVyAz4iKLLK++962uv+jJgOf2hihugN1nzSvH8nEytMptdhIVqMle3rdEScv+jJs7RaqOc/N4J3vqROEHml5jFG11HCUDz75hkV7vVyeyGM/EQWfeVJnx+9zVypRqmwoAeiwxycQtTpSSnfhZxwnN2+w39+/mHVvwc8TR8FUhlN8T1UKuyyDTSVdw3MJ2i4Vgj0bU1vaIUwWiFHy5/yXJkSFnf2xy3GZNdoUOQyLmY/V8sszGiILo+k1P0hfnMkCCQFs3x+sha96IWCtbzkULdlWaWuFQL/F197wohPPZm47BLbfEUljugYxy6GBmtfW9MZJusA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QM+He3fKiXYtRLRrjn3v08u4q1VY2Xv2cn8WkdofcN4=;
 b=FX6qJxbU0OiQoHqHIVkLY45HxDjSCsso9GPZTH4DWepFvxkkEME3yQ6VGaNJZdVRsGZEaZ1WeBXpsq3xh3GKtHfyGErft8x5IreOcc+q+E+OzexkmpOvT6sYuUXlIZH01RVWDgGHKqJx673BsExcZu5hmxbQcAYiQP1ElffUiige2O4l4AuaOILmem2e1ndwb7j0EHP5IMmitXQuiM6Taod9HrCK7IJVuYOpleY81iaEzp1sWEMH1zg3BM7bUe7mM7T+kc9NLyFsNhL+t0RYHzfG6Jf1knbM1gq9tivAMsrKKA87ugUAusjvzvxpi7eB7yGsFvaJLT2opbHUrFgygg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by CY8PR11MB7362.namprd11.prod.outlook.com
 (2603:10b6:930:85::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.20; Wed, 11 Jun
 2025 12:52:41 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::a82d:bc86:12ef:3983%7]) with mapi id 15.20.8835.018; Wed, 11 Jun 2025
 12:52:41 +0000
Message-ID: <979b1cad-9e39-4ba7-800c-964c53c76447@intel.com>
Date: Wed, 11 Jun 2025 15:52:36 +0300
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@osuosl.org>, ValdikSS <iam@valdikss.org>
References: <20250605070617.184882-1-vitaly.lifshits@intel.com>
 <77a2ba00-174a-41f5-83ed-e3ffe86dff7f@molgen.mpg.de>
 <66679114-c63b-43e1-bdf9-bd227602607b@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <66679114-c63b-43e1-bdf9-bd227602607b@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::9)
 To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|CY8PR11MB7362:EE_
X-MS-Office365-Filtering-Correlation-Id: 970c232d-cf32-474c-9e36-08dda8e6da2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVh4NnBlQlFpYmxPT1BIb0JKbVpNcUtKdXp0QndmdmZOY1paZ1lJOUVJWmhN?=
 =?utf-8?B?V3ExSG1od3l6aUZuM29tZjU0Z09qSld2aWhqejZ5aDFCVC9xZnhGSzZ4Uk43?=
 =?utf-8?B?ZGFmNE1oZ1YyQXcxNEdYSit1VnZia1FoRGFnYXhLWHlwczhWZ2VrMGJCUGgw?=
 =?utf-8?B?NlJzQk9xUG5saWNpRlk2ekZMYTJ4OGswdmYrK2ZodUx6QlBHbHNPaFAyUm0r?=
 =?utf-8?B?cTV3VkRIZkZjTng0NzBpNENTOEw4TWpzYVlCNXBEN084SnlzQjVaWk5NdStu?=
 =?utf-8?B?QVhHK2lEVy81bW9PL2FwMWdUaGRuenF1M1VuM1NEQ3Z1Y1daSzZnd01iUXlR?=
 =?utf-8?B?TTliYkMxZEVWY2xuSTQ4QW9obitjZURKQkdRVUxuUzNFZU4wVFJsWjk2N3Zz?=
 =?utf-8?B?VXdxMmdUV2g1NzNEVm03VzFyUXZaN3ZqcER6UXFJazlMVUxmTlZBdFJhTlVs?=
 =?utf-8?B?SmRGYVVrTndaci9TYk01cFFqMUFsZXJmRERad0c4N0VVMFd4QTFiVytidmNM?=
 =?utf-8?B?TlFUQVRXU3FYUzZ2RGZBRFc3cWx1ZFZwbTNVc3h3RXhwRm1Ra1daM29RL2ZB?=
 =?utf-8?B?SGxXcnNOK1EwM2paVVpWclkvM1M3YW02dFo3M0ZURS8rMk11TzBsQ3lkWFdZ?=
 =?utf-8?B?UitYS0prc1k4Umh4RitrZEVhRXNGaGZ6TGsyRmN2b01FbnEzUTFmSmtFRTg2?=
 =?utf-8?B?NVA2QXZWV3A3T2g5dDdkekFTa1N1VXQ1VkI3NG9acXc2MTZBN2lrSXQybjVs?=
 =?utf-8?B?aWJnaUlFWkhzanVHeDFqRHUrVmY1N0lLcVpsUVAzVDlKWXAzb3ZLZW1XQmNS?=
 =?utf-8?B?aUwrdzVRSE1JZjNnWXRrNm15SWlwU2FsUm9QWEFRNnAzSTg4ODN3SnFRSHF4?=
 =?utf-8?B?UzZxZ1lPeXNUWFFIeDBDb1R4R3BwR0lxYzI2N0YyUzhmQVpCc0FSRFBrRGM5?=
 =?utf-8?B?bENzZVlwMGN0a0lkUmtHTm5IWnFDQ0RWem8wU3F5QkpKTkVVMDhoanB0aEJt?=
 =?utf-8?B?NzRCZjRNT3kxTTFiMEQ2RkV3SFNPODE0cXA5Uk1QekNOOGFncnR1MUQzd0pM?=
 =?utf-8?B?MEpDU0Roc2MyRmhGRVhEbjI3eGVnUDVtd3M4Sys3Y1JVMys4VnVxcGJGb2xs?=
 =?utf-8?B?NUZxRkc4T01YL0tkOXJpdTdqV1BGRi8rVlYreWtjcVBPRDJZL0ZRSkZISUlp?=
 =?utf-8?B?NVBtd3E0cjZnMktpZXo0K2JNM0EzNEowK3lWMGZRRTBoc3IzUGR4R1Y0Y1U5?=
 =?utf-8?B?UktYUXNhRHZERzhjcSs2VlY5N0tjSWN4bG41YlVGNitsdnIzbGtxWUN4S3A2?=
 =?utf-8?B?M3RsUmgxOUNibEt5eGFpVkNPQk4yWU1WRlRweUE0NjBlUVBCWHlKaHo1V3h4?=
 =?utf-8?B?YnBoaFBLWWhwbzRQNWZUcy9YUFNFclB4L1RPUmF4U0ErcEpVY3crajRqb0Y1?=
 =?utf-8?B?ZWU4UjdMUHNKUFYxWW9QbUh5N1VFTjRnVGZ3S3pLeVk5ZVRqZGJjVDNUQUNY?=
 =?utf-8?B?dzNxY2lUVjRwWkZxM20vRFdKRDdCM0VuVnE0Y1l2eVR2NllpTWVUNDlNRWRh?=
 =?utf-8?B?ZjgvcG1zdG9INlk5Nkc3MmxBREY2dzFrTjBFQ0ZDZTljY1d6OTEyUnFTUlR1?=
 =?utf-8?B?UjNzSmRkWVRvaUptT3djUDBWdzdwbE1RQjlwRDY2eFFGWUw2NXVFOHhQNUJV?=
 =?utf-8?B?VzhnSmZ4aTBGZkNHUmYrOUc1TlZHMG9MR0JKK1ZVMk9tZ2VOYjJZbmJNdG1r?=
 =?utf-8?B?bHBsajNUaHRtcy8xQjVVQ0dZQXBmNmNOcmliRTYvMmtUbGRWY0QyZG1IQ2dn?=
 =?utf-8?B?UTk0OS82UksrYldRNXZZMTVIV29MdUV1cXhXUlh0RmZod09NeVl2UjNZSy9o?=
 =?utf-8?B?WnZLUDJFeU40NzFXQzhHNkRIZ0J3cHNZdTVZQXFKaVJBc1FzNy95Y3NaS0Mz?=
 =?utf-8?Q?O/C7DUNozxI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmlIeXhoOERVWWpXc0pPejVxaWNrT1ZRcmpxT3lCRmZWL3A5TllvYmVtb2Fa?=
 =?utf-8?B?YklkQzVLQjdiRmdUcWpFZ0VxaDdJWEI0OEdDUHhUdDJGWFczSE1MM3hMZmFR?=
 =?utf-8?B?OFVxNzJmUHdLN0I2TXZCQ05EWFcvdTY2MTBHNGphTXRjWkxEOUVWdXY1THlJ?=
 =?utf-8?B?b05WdFYzR1dSZU9kejVXczQ1V202bmM3aE1uNk9RWXo2cytMNURyUG5ROWRw?=
 =?utf-8?B?K1VCSUFuWUtjeUhqSTBtc0Evc0VuT25tT0NLMjFobFFIYlMwdENMdnVKM2hz?=
 =?utf-8?B?WnRUR1ZSVURrNTRiTDhaMEY5czhaMFR3YUFmcTFiVFIwRTFvZGhHYVY4RVFC?=
 =?utf-8?B?SXViUVZ5Qk9UUkxJc1NQclNkalhBVlRnTWh2RTN3NGdKVkdoU29JY0hDdzY2?=
 =?utf-8?B?M01sY3hlUHlPNnR5MkNqRGZxdDBBYlQyQThCRk8vTG1EdDIxOXdjL0RFZksw?=
 =?utf-8?B?SzhyTHJZZEJONUZiVU82K2tXSFJSalIvcnE5Y1NWSjNhNDRzK3Flbm9TdnlB?=
 =?utf-8?B?dTRnUXZ5cVBZb3FxYWx1dkxheFZwTXVhNWpCREdITHo2bzJUeHdkWlZsY3hr?=
 =?utf-8?B?NjVDb2kxZU0yd0p2K0VURlp0cms5L3NIM1B0azAvOHIxaWd0bys1SmhNM2h4?=
 =?utf-8?B?UmpocW53dFpoeHRyZGN6UmJCVmVPbG5hSXVYV1dsa3pjbkx6NzFzNlVCcWFr?=
 =?utf-8?B?eHIybVNZRW54TWtXaFVnSVFWOXFlaS9Nd2RjMTdrNklncEFOVEt1OWRqOFJJ?=
 =?utf-8?B?dHZrVHgxMFc5MjFTamxEWnRRSzI4K1dabFIzenhTa0VhWXM3SURUeU1aODNQ?=
 =?utf-8?B?UFo1YmNyVGJnQlJESHEyUVkxRFQrN3g0V2hydnV0eDVrSnFpS1Z1dDdyY2l1?=
 =?utf-8?B?ejBFdHd3QXErc1hqV3pIMVljUTdCV3o5Z3dPcTQxdktPZzZnaWhoUDRENmdD?=
 =?utf-8?B?ekpiaWo3Q0xnMWwvZVpTME56Q2tRKzR2QjM0d0QvNk5BSE5lL2NQT0trSFc3?=
 =?utf-8?B?NTVaYmNRTnQwZytSUG96K3ZnbTd2REJYQ2hqK25CdjdkOW1LUVhOYVI5RGxo?=
 =?utf-8?B?ejZ0eXFVK0kyWGI4T2tlcmFJZ1NUTVMySFV5UncvNnRkQzQzNWNNWDltR0Jo?=
 =?utf-8?B?RStLRFNTTHRvWi85blFVcjNHdXArMVZaMlpRNHNaUzRpNWo4UXdRSWV1eFMw?=
 =?utf-8?B?OFl5QlRBZS9NMUJPNFhJcFpzRFF1UzVla1ZFVzlGQTNNaXRwakhKaVp1bnhx?=
 =?utf-8?B?ZW9VZk00VnBkZXlxWS94Sjkycjd2R0hZRCsvdUYreGFRUEJMSm5PQU5OZmJj?=
 =?utf-8?B?djlHbzRQWDNleEpROU50ekc5KzhhSWY2MzBkNkRQV3Rlck9nc3VYMVJ2czFr?=
 =?utf-8?B?NEwzcGY5ZHZSZFJXZStGUU8wb0J6V053bW0wS2NmR2ppbDZ6NHFxVUU3VHRK?=
 =?utf-8?B?c2hPclVOdDdSSXpxc1I3Z3V5UDFUZlRXb3ZSRFdsUTNxVUdyM1ZIQmJ4WDVm?=
 =?utf-8?B?MmxEaisxOEtaK3BFOVhMMU1ONEd4Y3JBTnFYNjBQallucVlYa2FEdGdPdFBH?=
 =?utf-8?B?QWpDMGpFakhmbDNVNnJkQ01pbmN1N2prdEFwaTM1RWYwQ1JUcWRmU1czZDdJ?=
 =?utf-8?B?b3VXcVNzUHppZmZXRldFbm1rNjRMZGRsZXJIWkRxMllyWnVjTGxnM1UrM011?=
 =?utf-8?B?OTBEQThPK0srUC9XU1p0YVhKelRwdFRnS0IzN202TXE5SWdyTkFUaE85bFdi?=
 =?utf-8?B?THRxdVhhRFdxWlpMVnNtdVNGdkZwbzhIcEZqdk8xK0p5K014eWlKZ1Q2bUFW?=
 =?utf-8?B?WHpVdnJialRlQk1LbjQ3cEw4eENBZStnMExkY0VxbmdleHJ5YS9nUFRHNkxX?=
 =?utf-8?B?YjdiSXo4SWUyMEVpaFlMZlhoSmxWaExCT3BiQzV3SW1CUU4rQ09XOXVnSTVS?=
 =?utf-8?B?ZFZOaTlvMTNzV1RqNGxCbm5yd2QvVFhhMkVDaFY1aDJ0U3REUU54Nmx4MVlW?=
 =?utf-8?B?aDdBZTd1NzkyOEZiR2hFeGNzS3dZUXNSY1ptNVhSTzZnVC9MV0tqY0NFajlu?=
 =?utf-8?B?L3BockFaV24wdUYxZGN1VmpxQ1gxcFBEYXVEZk1lUXRZeCtWbVdNU1orRHlQ?=
 =?utf-8?B?UkdpNkxnbUNGYlRZNlUwTnFFVkVWZmdGWkNKUFdrS00ySURKMEdYSDVBUGQ5?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 970c232d-cf32-474c-9e36-08dda8e6da2f
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2025 12:52:41.6120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YqU1jxzcr9gsODg+agoMKeV5IV/7XRNhLtejppjsDHwcSmPSyHCplsowOsqHUS60PYmBsOpmUBVbXR4tMUNTetLERh2LksSZg82PJFMx+BI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7362
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749646394; x=1781182394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KhdpWD9ZBQOUaebf2j9ivLBGlKzJ27JqGjtierMFVec=;
 b=mIROqNzbAeVT07QOjBH4M2MAIjxgaXtLfUlvG/HzEx2nvG7ieuXepQAi
 K4lB+UpbNGuuN3NS7qLe3nEmtQAEUYmHPIK0bOtz1zWqpSN9U2aQGWfnU
 /4zi1BEXDWFf5jfVk36unO+mcum8kr2AXL1lwGm20aMw59NUlR3CsZbnw
 T86icCmcFusAvadwRWX9B9m4qde4i7ZcQk2839NrOP6pfqd3z0dhA0Qg6
 vpo6ynFb5Fm/fGI1gdm7QXBbar9YdD7FuOGrM43RSo5Hrou3eyD8rLASx
 uB8IWAXEksaL95caiQsIu+/IAhFYPQdLf9zpUupqLFIaOq+pSVtERllfq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mIROqNzb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: disable L1.2
 PCI-E link substate to avoid performance issue
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



On 6/5/2025 11:36 AM, Paul Menzel wrote:
> [two additions]
> 
> Am 05.06.25 um 10:26 schrieb Paul Menzel:
>> [Cc: +iam@valdikss.org]
> 
> Remove again, as it does not seem valid anymore.
> 
>> Dear Vitaly,
>>
>>
>> Thank you for your patch.
>>
>> Am 05.06.25 um 09:06 schrieb Vitaly Lifshits:
>>> I226 devices advertise support for the PCI-E link L1.2 substate. 
>>> However,
>>> due to a hardware limitation, the exit latency from this low-power state
>>> is longer than the packet buffer can tolerate under high traffic
>>> conditions. This can lead to packet loss and degraded performance.
>>
>> It’d be great if you could add details about the exit latency times.

This was established during internal validation and, unfortunately, I do 
not have public documents

>>
>> Despite, you referencing some of the problem report in the Link: tag, 
>> that message is badly formatted, as lines are wrapped. As you have the 
>> details about the problem currently in your had, it’d be great if you 
>> added the report details too. Another advantage is, that the commit 
>> message would be self-contained, and people would get more idea about 
>> it without requiring Internet access or loading an HTML page.

In my commit message I referred to the general issue which is the packet 
loss. The packet loss exact numbers may vary depending on the system and 
its link partner, so they don’t play a significant role. Therefore, 
elaborating on a specific setup doesn't play a crucial role here and 
other similar reports can be found in the web.

>>
>>> To mitigate this, disable the L1.2 substate during both probe and resume
>>> flows.
>>
>> Were you able to reproduce the problem or only the reporter?

Yes, we reproduced the issue on different platforms and operating systems.

> 
> Also the power usage implications should be documented.

The power consumption is insignificant and this too may vary between 
different systems, I’ll add a comment about it in the next revision of 
the patch.

> 
>>> Link: https://lore.kernel.org/intel-wired- 
>>> lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
>>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>>> Fixes: 43546211738e ("igc: Add new device ID's")
>>> ---
>>>   drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ 
>>> ethernet/intel/igc/igc_main.c
>>> index 27575a1e1777..65ec705eac33 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -7074,6 +7074,8 @@ static int igc_probe(struct pci_dev *pdev,
>>>       const struct igc_info *ei = igc_info_tbl[ent->driver_data];
>>>       int err;
>>> +    pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>>> +
>>
>> Aren’t you disabling this unconditionally now? Also, a comment would 
>> be nice, why this is disabled.

Yes, initially I disabled it unconditionally because I225 devices don’t 
support this link state anyway, so disabling it won’t have any affect on 
them.

Nevertheless I decided to wrap this code to be applied only on I226 
devices so that it won't affect any future devices using this code.

>>
>>>       err = pci_enable_device_mem(pdev);
>>>       if (err)
>>>           return err;
>>> @@ -7498,6 +7500,8 @@ static int __igc_resume(struct device *dev, 
>>> bool rpm)
>>>       pci_enable_wake(pdev, PCI_D3hot, 0);
>>>       pci_enable_wake(pdev, PCI_D3cold, 0);ValdikSS <iam@valdikss.org.
>>> +    pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
>>> +
>>>       if (igc_init_interrupt_scheme(adapter, true)) {
>>>           netdev_err(netdev, "Unable to allocate memory for queues\n");
>>>           return -ENOMEM;
>>> @@ -7623,6 +7627,7 @@ static pci_ers_result_t 
>>> igc_io_slot_reset(struct pci_dev *pdev)
>>>           pci_enable_wake(pdev, PCI_D3hot, 0);
>>>           pci_enable_wake(pdev, PCI_D3cold, 0);
>>> +        pci_disable_link_state_locked(pdev, PCIE_LINK_STATE_L1_2);
>>>           /* In case of PCI error, adapter loses its HW address
>>>            * so we should re-assign it here.
>>>            */
>>
>>
>> Kind regards,
>>
>> Paul

