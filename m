Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC139A30D79
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 14:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9097E413EA;
	Tue, 11 Feb 2025 13:58:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3BrGvwq7fSsz; Tue, 11 Feb 2025 13:58:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B414D413EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739282291;
	bh=KRiOebsabvPy2UjI7Oipcysgzu60cG4hJUXO2vtWTjA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NNKQFFOJEjv2U3eicuP5mg9bM7EYxtJPTbeVT/MtNkvYW3zSiMiMci/S+VD0FYyTB
	 kSDsudkgLLtE8FfvWmx1jDM6CLHmRx2yQxjFSgBz+b7du4/IzDEWyMOSyuxTDuiEB8
	 8cdthjrc6edaV2Z/a3seUQpB7DtGD01lXAR+atE72HM0K03Nvnfw1l9aM5IixuCWcY
	 6QF5NH7ofO11HRaUhTDykGVmhrrCpcouFam1VyPEX4zIMBnAOy6ert74eLlwQrB3FB
	 w3HrJTctouz3D6AtFofQLgXOCuhMDKB6m020UJcVcs9+/0x3T6w6Wt4fmcPdjHz9EO
	 etdbLJv8+Zbfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B414D413EC;
	Tue, 11 Feb 2025 13:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16F4F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 13:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 04EF441183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 13:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTNoKOR2YQ0H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 13:58:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EAF31401A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAF31401A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EAF31401A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 13:58:07 +0000 (UTC)
X-CSE-ConnectionGUID: 2vsKB/g+QTad0VpO4Nph/Q==
X-CSE-MsgGUID: 60Ms8oHBTPKxxpTIvnd+KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40026585"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="40026585"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:58:07 -0800
X-CSE-ConnectionGUID: T3DKGfCYR76CA9NX6Y9QVg==
X-CSE-MsgGUID: a4HXbBeyRs66EMxkVVELTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="143371453"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 05:58:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 05:58:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 05:58:06 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 05:58:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H8Hj0VJBoHZ46W46O6JU5Y0D1yTc0YskjjUMWTKfwz/n52H+2xh7d5O05TO5JeScnYVn7lMOuh7rkx+h3dFZguDl0re9N4DP7SJBOOvL8XM5cJ3kVzUzcSGVoFoo14Qplb5BjN6I9c1cFu+N/oJfY8MR54tOJNmSg8EX/asiEcwnWROpuk/r5cxDr23yrxbrGAOw4Ia0QeMZ8zfyTSOvtbOCI0D7Rq9C/VQHWSJsUKJMkW1/efRvkJHe7HTAsAQzTNNSUnkc7hUMF46e8tDRGK/yDVAIieEPU1DloKUw9tjVyvK9wW55fX3cx140TJYOBu/LDRcvUv1KOPaMkIuHxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KRiOebsabvPy2UjI7Oipcysgzu60cG4hJUXO2vtWTjA=;
 b=o3IsueJECRDSENTppTlEDPZiuuj2de+z50RryxqxsvwrBJ18XXK4tcjsr/X6KNolOaFbVIn69zDxQSoxj0tGaZHWd1Pve7QjqL7hZz4/B9HErOk2snjI3+a1/VYAIw2R4t85J99CbOeL6oVHrgyUcWUmEsQ606xwBTSsGc+ptNZcXPvMItLgbrN1Hpwbc5HwANAtbdc4pyr8IkC+AKbYKpjsvQs2th2uJrmhQio/I7HDLu8pzmywKiqtARzhDuW/p4CYDy/harhOnqMiyMCI+M6WFlfrKCCqX8bMIArIxFjgJ9iXQzlGytzj1nOK9eJnc2O+aftkC6AnSI8sqaxK5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by DS7PR11MB7905.namprd11.prod.outlook.com (2603:10b6:8:ed::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Tue, 11 Feb
 2025 13:58:03 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 13:58:03 +0000
Message-ID: <d043fc1b-b1f6-47a7-af6e-43372ef4872f@intel.com>
Date: Tue, 11 Feb 2025 15:57:57 +0200
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Malli C <mallikarjuna.chilakala@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
References: <20250205023603.798819-1-yoong.siang.song@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250205023603.798819-1-yoong.siang.song@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|DS7PR11MB7905:EE_
X-MS-Office365-Filtering-Correlation-Id: acbd30b4-b290-492e-8f33-08dd4aa41a3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?em40ZWlCZmM2bGFTd1ZsYXpYeFJrRkxWSWhsczRsUS9QRHA0NG9XWllndlB0?=
 =?utf-8?B?LzRyTlAvQ0xFZjByd3NiRVRNTHBDekUwa2dUaUtrTXRXZklKVXJyZkxFVWxS?=
 =?utf-8?B?QUR5L1NJampVQm5obGFjZmxJMUF2TG1Kencwakc2V2xUNndQZVJNejhWQ0N3?=
 =?utf-8?B?bmVqMTA5WVJ0MFBkWXhSaWdLNWdlamx4bXFkYWNpWDlURXdmVFFBZmtscTJD?=
 =?utf-8?B?RXYvcXV4VGNDSDFsTVFmcUduMnJ6S2JLYnlEbWplZGtCd1hLRkdaeVJ2TEJS?=
 =?utf-8?B?allvSzlXVDhxY0g3TUJENGRtNFZQK1NWaTBDakEzYnhwenBUQ0lraE53RHR5?=
 =?utf-8?B?amVsWUpFN3hBb3IyVTByZ0dRcTZDeG10Qmt0MTNFTlAwcklEZTRPdzZYTnRT?=
 =?utf-8?B?WjMyK3B1YVl4dUhsYXY3N1pGNDQyeWNMbVkwOGhVSnBkME93eXBYUkFZOStx?=
 =?utf-8?B?T0hjN2hpMmg1L2tjWVV2Z0E3VnBSSGcvcU1yYnRHMmFVaUJiTkRUTWcrR2pu?=
 =?utf-8?B?RUNzdjR3SVhFMVEzU2xiTjY1VE56OGRUT0ZlVE4vcENWUzhubElUa2tHNitl?=
 =?utf-8?B?eE51M3Mva0pZa0VjdHJHblRFM2ZqV1dxellYOXFjQmE0S3Jjakp6dVB1dHl1?=
 =?utf-8?B?ZVhHUWlpNDJOVkpCMlR6d1ZNTnFGazhuZ3ZGelJQOFZDUHNVVFRyL1I5YW9w?=
 =?utf-8?B?ZmVXU0J0V0Qrb1pXTS9IZzlPb0pTczhEQ2pSRXhzTzdvakxKQXZueXVJbE5p?=
 =?utf-8?B?VkZTSGo3akV0bGxLc2pFNnVrKzVYa1gwbnEwOG1xUFRUMFpnMXVKU3BwdDBy?=
 =?utf-8?B?akNCdWpHdDJxbURDWk4vekEwOFhqUFNBUWJSazhxck9RWW5VTGQvbUJnTkVS?=
 =?utf-8?B?R2pHc1lERmduUmJlSzArcDBrejJEQ0JkalJXZU1SUHd4M0JpcUVzTkpubVZQ?=
 =?utf-8?B?a3laZ3drc3FSUzNBdzkwcmhRUlFRcHBBRUdCalJ1L2VieFR3TW1TSm45OVJL?=
 =?utf-8?B?RFFuL3c0RFVzWkJmYWlBSWlXQ3BLREdjQ2p2ejFNNzVZRURyaktGTXdESVlP?=
 =?utf-8?B?L0lvMEFtMTJzZGlsTnNGMU9ydkNHM0VBZ2k2Lzh1bXNOdXlScVluYkRsQ2Jz?=
 =?utf-8?B?QUN2NjRGd21YdUxtS0luMmR4TjRiNVNNeWYwOUU4c0NhZlc5cVZoaHFSdEpq?=
 =?utf-8?B?cTBST0V4MFpmT0NwL2RZampwanJ6T3ZNUWpYK1doQkQrbzY5Q1NrNVVma1pr?=
 =?utf-8?B?K0NnRkFiLzgwMXR4dTFkdzZFZWwwQmpXcnV0ZXIzcVlQY1B0dy9ObUZxK3Bh?=
 =?utf-8?B?ODgwcnNkMGhUTVBZdDVnaE1PN1hvNkp5S2NsYkcxOC9vV3B6dUhXcU8wck4r?=
 =?utf-8?B?VEJnZEJtMk9Fc3JyeWRac1FFWFlJTis5V2w2cFNoNzJ0by94bXlCeXBZSDlC?=
 =?utf-8?B?THhNakk1elFORkZkTWF5Y2dCaHZkaWtpck9rYyswU3BNTmd6TnZGOW5Nb1BS?=
 =?utf-8?B?MytzTEdRNVk5cUVrVVBIR0U0bEVkMTEray9nVDhiN0VuYjVMK2pORS9tVDZO?=
 =?utf-8?B?NmFVS1pyRHdLb1lMMUVWb29YakJqcmFFTVg0MmdEWktPd1F4ZVI3UG9iaUU0?=
 =?utf-8?B?VjB6azFURkttZkZpYms3ZGwxNmpmU1RhOXRtNjNBS1ZVOGpCU0Rmbi9QYzU2?=
 =?utf-8?B?bzdBalNkR0xyaEFyY1NNY3R3cFlYdUphVFB1bU83aHZ0Z2NRN05uMVhoK1FC?=
 =?utf-8?B?K3drZ0ZRRzE0MDB2MGIyMGo1YXZkLzZoRHdBRTh6dmIxc1hOeVFDNmNhaWNi?=
 =?utf-8?B?SXd5a3ByTVhJaGZDOVE3eHhBdllLSHpNd2hzUEY0SE5CUHRTM1dkSENxZm1t?=
 =?utf-8?B?OHNVczZ1SHc5OC9MalpuTkFtWFBVTE9tck12OUllZDhnWGxQbXJrS2tTRWdz?=
 =?utf-8?Q?NYS8uASPoiI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHpoNlh4RE11TS90Yzk1MWo4eUFVeUNaVkFBQUxEcElvajlyYTFJcGp0Tk5C?=
 =?utf-8?B?dmloSit2K1I4SktWL1F0RzhJREVnWndQeWg2RnhDRFlpemEwcjBXekdTZU9Z?=
 =?utf-8?B?TEx4cFNxM21kUDBzWHkwdjk0dVN6VjhpQU5oSGhuVmxmVXNtbGEzMFBFdzh5?=
 =?utf-8?B?eW05czk5dXBSYjduTlYwa0ozYm85SUR3cVVFNDJFVUNTbm9xcXFFWHVmWFpG?=
 =?utf-8?B?MWtpWUJCS0pTc0pERHVmRmtSK1Z5cWVKZHRGNmZ4c2RIZXV3MTVTQmczdE5F?=
 =?utf-8?B?VGhsalluVUlHMjFnYzJDYm9UZWpNYi9BWjhLdVZlK3JPcHZZbEsra1M2YUNP?=
 =?utf-8?B?c2NPQXVnci92Znp4VitidGYwQkdrZWZNd3VPak9ZaDBoOHU2ZForb2FQLzlh?=
 =?utf-8?B?SjYxaUZYcjBmZ3dLb2srTS81cW1YSEpjMEszMHlld3J2UmRCb1VybldRRDVx?=
 =?utf-8?B?U3l0V0lObXhuTXFNTFBYZzZhTFR5bTBJQ3RzU0xvMG1obk1ZamhlSU1sMGhh?=
 =?utf-8?B?TmNPRXR6Q0RCVlFZVmd4M0w5R1oxQjl5dlpTVjZVbWMwYXEwb2lkM0NVbFc1?=
 =?utf-8?B?K0NZU0ltb3ppREppRWRuNjM0ZWFNbk9rSzhNNld6NDVsR1JNdkpPQ3VYZWcv?=
 =?utf-8?B?WEhnQ01pQUFTTWczTEZNMEJpd2Z6c1ZMVHB5OGdkd21TV3h6SSt4M2VoVWFU?=
 =?utf-8?B?ek5JM3NlRzM4dlY4c1JEdnRJL3Rvcm8zV0cxbzZrbXJJSVRIci8rOUNjdzFT?=
 =?utf-8?B?NkY0aW1EdFNDNTJWdHB4eFBnbXkyNGZVV2kvb3BVZmtTcmZhd2FUQnE2UnZr?=
 =?utf-8?B?SjVaMHEvcjBNUU9iVXovNGdDanh6QVdzaENjUysrQWhlU0MrWHY2ZEhlZ0RV?=
 =?utf-8?B?b3U4ajdNNVdyM25KZDJmVzZkWHJXMkVCaitManpjcEIyZFpSelF2U094dEJB?=
 =?utf-8?B?R2J1V09Ld2hVTlVURmg1dDQ2MXkwY1JNRm93bXY3aUIzenFVSy9OMTFKWC93?=
 =?utf-8?B?eXVvSVRjQldHU1Z6OStPeXRxb28ycG5BRlFpZi9NeG1BQXZIaS9oclVzU1Fj?=
 =?utf-8?B?c3NIS2dSS2ZJV3hRQ0tSOWpVRWNJVktuaDNNY2lNTlg0TUJpeUVmZ3U4OXVa?=
 =?utf-8?B?dHFTNUN3Y09XOGlPMFZkRVlJdXgySXc1eGZPK3ZTTGhhL09seVk1OXNLUXRG?=
 =?utf-8?B?OUQ1NEsra1ZmTUx3WGFpTmp1ZU1tUytETGhxcmtEVCsxdWM3dXd0MHBENkJi?=
 =?utf-8?B?OUUxcHN2ejUxcnZ3ZzEwTnBMbEF0c1h1L1FlWEFKY1BhakU1NkxRemFQOHRi?=
 =?utf-8?B?bTRlRk1qakl1RHI5UVhmRndSVEVkZnlTTk0zZFhCT1NoelFlcjZlVUlETW5Z?=
 =?utf-8?B?NkpsajlrbURoSjMxbHFZMWZGUWNvNVZtMy9XSTVvSVhLUk4ydWN1OGdKL04w?=
 =?utf-8?B?My9sZlZzd3BLUTdTZjFqVldQcEwwdTRraThldnduSzlZU3Y5U3ZzUTEyUDV1?=
 =?utf-8?B?UTVQVVM4L01KeGVlc1VyajZheVNqakRjV3hWSit0WWFJVUM0aEU2MEZ4eUZS?=
 =?utf-8?B?NTVZRCtFM3B2K0wwdDVVNDVxd2krbDk3MlBOQzdmQWNXTWozU0dtMWJtY1ky?=
 =?utf-8?B?L0pVT2VEOXF1cGE5d05ZSmkzcGJ1QS82bUhqdi9ZYlB6bjNIRC9vMjk3Y0JP?=
 =?utf-8?B?RlFoTkJBRzZSeUZoWWhRY0gyYWRxZ093V0xLN2p4d0I0cVdPY3ZqVFF1L2hq?=
 =?utf-8?B?SS9FelNLWmFRaFNMcUNqaGNIOVdHcUZ2OU11T2VINDVtQldBQWdqZkRwK3Va?=
 =?utf-8?B?S2M5Tk1VOWJUL2p6d0svYWd3bkpSKzFYZ2tvbkRzN0NmemNDanRBQ1kzQkM1?=
 =?utf-8?B?c3RnN2xrU004Y1FHcXJ0anNLdkpUb0tsWjJ4QlRTcExsZ3cxSnNOdDJSWDNr?=
 =?utf-8?B?THVVQVBVSzVVR3BHWGdOREpDZW1IaDBzNVAxL3lkTWJBVWI5emZ3bVlzek5S?=
 =?utf-8?B?NS9DakJqSldGZFpXSEljUWsrKy8zcmlIQTNyL05YTVlsbDVIRkhZWk9RTTA2?=
 =?utf-8?B?UHM3bXU1eHo4cm9XM3h5NFVhK2t1N3RSTTZwWjlWcnYrVHExVFNRRk9jN1FH?=
 =?utf-8?B?VWtPNk9DUngyTWVxRzM1ZzlMQmNic2kycWNHaVR6OXpqRndzaG45Szd6U0Yx?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acbd30b4-b290-492e-8f33-08dd4aa41a3e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 13:58:03.5275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B09srijcr5uVze77GlsYu1hmuu3sDhg8ZNCwg+XtfX9KzDKWfAumfb3MuGEDdhI2cOCBG46nZv2YqqAi/mRSVMQrtsLQqguye3idnOULmFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7905
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739282288; x=1770818288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=++fWvm+s/xer+/qFM9NQKvCbKlLF+n55Sl8QZgwYuRw=;
 b=QOQAA3XEue3W7qovVjeyJLLywGxEBER2Mxp0DIGybChThOXYsmap0AsD
 J2aiVXTNV4KJhR1k3bmwKKZqbGInPVe3Gdw9cOEP+HL39xDXX1ju/1l0o
 6Xk3qrslqU/jQGE65fLYxjRuJu5SlyPOue7sdGhB0Cno3yJrqgeW+klEI
 xGmk9hl6YBtpqez8yCwA5DTKZPyEQuizeKNyMJ9lIYMagql/HG8vxAHdj
 PnovaB9qkTtWjDC1NL6SDoMQ8RhM1HUiW2xJtg/L8R/k4vFj+zeVg8I1k
 WBlmlJgvkU9IsGjhQ2saR7wULO00Z0+1NcLEOp8hn/HO3Opp+oIJDLbJv
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QOQAA3XE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Set buffer type
 for empty frames in igc_init_empty_frame
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

On 05/02/2025 4:36, Song Yoong Siang wrote:
> Set the buffer type to IGC_TX_BUFFER_TYPE_SKB for empty frame in the
> igc_init_empty_frame function. This ensures that the buffer type is
> correctly identified and handled during Tx ring cleanup.
> 
> Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
> Cc: stable@vger.kernel.org # 6.2+
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
