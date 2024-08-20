Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C2D959061
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 00:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B625040699;
	Tue, 20 Aug 2024 22:19:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Rzda3l0YLpO; Tue, 20 Aug 2024 22:19:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A852A406ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724192362;
	bh=/YbtPT3j5N20tXx+wWiMWRDwHrvQ4dAGeG0882uk6vQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hit63QKA3pHJ2uk3Hv1/WYz4dGAZR1VRs0ug4VQslufUIEJJRwx8NuttN/4vr9lEC
	 clGGZVdFYwH+E0DqM3dvjjKTDcaShIm+24ntunCFECLOXkl99UnNaFBl4KTKWrR1ds
	 KK3HZffKJ5AaIOkNX1Ey8t4WJXOJOF4vSrPSsEq6jqnedUaCos1IjGaYz7pAvA65BV
	 ezIoWCucEkahH/vPQFLQlxP7x4mhEC6LzDr5JgjSuqZ1/7YksDAvVsa1PUideGd9g1
	 XDWlnvdKw6r9LaVmVAqAl0AkOzxbKmGXJM3WG/wDBfqd7h5ZVIZoeKLqqINOz3l0ic
	 tdPcAPOhSwPVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A852A406ED;
	Tue, 20 Aug 2024 22:19:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A440D1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 22:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 914E8811E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 22:19:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIPnYIExAgZ8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 22:19:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BFB3480CBE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFB3480CBE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFB3480CBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 22:19:19 +0000 (UTC)
X-CSE-ConnectionGUID: kvQrbgKFSzei93pT8FYKlA==
X-CSE-MsgGUID: ogL32YgnR6aIL5TKfEGMAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22659120"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="22659120"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:19:19 -0700
X-CSE-ConnectionGUID: tSgBseAMQF6knb+tx6Ty7Q==
X-CSE-MsgGUID: oHjdTUNoQGKEOwNhvJVuKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60920099"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:19:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:19:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:19:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:19:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrUbeT00cB1hA6NccqY4LPWtxHB2i83jjv3z+fxFPWvH0WExPlqtvaT+0zErAjR+Fw8MlpgrEeFdcQRVXSzcPBltJJBQd1QE0sxasRYohr1WzRpTNkK2FPEBPzyf0HJqZM1AKit2HjZug9asvFzh1jNbvC6O3Y2hTjaAFzDqIQywPZiEiwfGTvQ/97Do9MqtkIq6PD6pivJcmd1+Apirj2M9A2Su3ehwqj+euqO5ETlHZ0qbiAdjG5Q4TkrcIm/ebPOzaNleFRV3bDFfpWp5ay3pZ3LM+8DPV0gGtBdnj81ExSfpoma5Sh9Fqtpkd2ipbsoOpR7Y+pngoImH2yq67g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/YbtPT3j5N20tXx+wWiMWRDwHrvQ4dAGeG0882uk6vQ=;
 b=f8toHi17hBIiE5IQi8SfyqqNTxkiKgcmXXcVIrUh5WW7KZC5CGN7FImLL+twASSwGK5n9ctQcJ4P2xIPHO9AgRpqgdCOHmz4l4VVeWQlO4ORIs6U6P/m9+KIS412sqfpuqvrAGpZrE0H+S0mr/BxdH0Hypxh95ZDoK/B5Mf53wI5bpauLHdxfaCjMp9OY/5LHEZutFoQbP3yh3Lz2U++CBZSdjdIhWwH3CdKsET1D1D/wSglBfVj9CKqrE2ODLkgYKfa6J4GDGCJcvyxWFj5YjdILPmPbcib8msY0dMxvIHadvBWrley8u3koh+CvD8xAlSSlIEH8bQGxKS4KAucxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4519.namprd11.prod.outlook.com (2603:10b6:208:26c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.22; Tue, 20 Aug
 2024 22:19:15 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.023; Tue, 20 Aug 2024
 22:19:15 +0000
Message-ID: <3f3075f3-b2b5-fd5a-43be-fde0411a5da2@intel.com>
Date: Tue, 20 Aug 2024 15:19:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240814195434.72928-1-sergey.temerkhanov@intel.com>
 <20240814195434.72928-5-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240814195434.72928-5-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0004.namprd21.prod.outlook.com
 (2603:10b6:a03:114::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4519:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f1e43a6-abd9-4dfa-0f1d-08dcc1662055
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWZRbEYzeE11b25qWFV0MDMrMEw0dlBUNjg2SUdkRXh3QzBjUDBVOG5PZUdN?=
 =?utf-8?B?bGpyZHJoc2FGeXdXWW96Z3J0bGpnR2VJdEpvSXc5SzdjdmF4azcrRzliQ2Ni?=
 =?utf-8?B?b25lVEZud3RnR1lOc1Zpak5OMWFTQUNkUGFRanBhTnlrWkpzQ25DOE5jd3Jt?=
 =?utf-8?B?Y0NEM21JNVYveE50RkxBTis2L3BUbXBySUUzdHJSc0QrK0tJaXRDTG02V3BK?=
 =?utf-8?B?WjRHT1dnMkpRZVZycmU2UEZCblB5Y2pBTjlabWt2VThaOGZlelV2b1FJR2lk?=
 =?utf-8?B?ZGsrWnZJR05tbVE4ZFZrUTFCM1ovM2VGS1VtNjdtWThZV1JLMjl5TTVDRU92?=
 =?utf-8?B?YkxNTGUxbEZYcWk0anVxYkh0dWZEVDFIcGNUdE5LMm1wditxQXhvbkFpbHZt?=
 =?utf-8?B?NDNEdnFhYjN4L2U3RWVsaDM1NHdrMnZTNlFlUHJlakhMcVhRS0VBakxtVi9W?=
 =?utf-8?B?bHJ1aXRjN0JyYjh5SVJ3SkFMVGFEK1NKUW9ZUW5MUjhBTlgrd3ZSaWloOU9y?=
 =?utf-8?B?bHNkQ2FFY2xQckxOeTl3R3QzQWdrNHM2OHdhbThZMTNFcWVMSkg2VFlIc2ZD?=
 =?utf-8?B?bDVoRzNRVjhVQVRQUHpBZlN4RXZIcDJZckE0ZDdvYU9BeHFyaGRJNjZCSWZV?=
 =?utf-8?B?OHBRMWNuTDdFblJtUkZQaHNtUmtxR2xjRDRCMEFpM2ZOb2pJV2ZncHV2VmJL?=
 =?utf-8?B?d3RtOU9XU09aQUlXcmt6Qm4wNmlBWGVLV0E3dHpPeElHWmZuclJjN1BKZDNa?=
 =?utf-8?B?SFJEeGJqTEg3V25NSUZRZXZ6d211ZzJSYlBTVjJUTHdnbXJpSVR0YWk0Ti9U?=
 =?utf-8?B?emJtcnNlYjZvRkZLM25Eb3Z3WHNWdjdQbjhWUjdBSlIrNXkyd1JyWWNsZFNP?=
 =?utf-8?B?c081dDlUZjNDVjdjMVc4U1Q3aDZPZ3lDK245djNuQ0ZCa05qTWR5clZMSlRX?=
 =?utf-8?B?SnVWM3lhVUJyd2ZVY2gxTjdsdnpSdTZNOG1MOThjY3dyWTgxWlhHRkxFbDIz?=
 =?utf-8?B?dEtEaEVwaWt6ckJ1RzNJdldYVllKTUJhbnQxUHdSb1R0cWFNeXNVb1p3UXZp?=
 =?utf-8?B?QjM1ak9HTGlpaDVQOFBCSkJYN0FZWjR1NlhHWkFLaVh3bWFqMmFJWDZGTGlR?=
 =?utf-8?B?UU9ucTVETHlsYVFtLzd4KzZZUDdpSXNoN01yaG1jd1RjRTNJOVJIVDI3OTlu?=
 =?utf-8?B?Qk80V0NCNllhTWZkeHdldi9VT2dqdmx3bDNNVlhqOFd1RWJweEM0bnFiaU9J?=
 =?utf-8?B?YStaamtBSFp6ZVNwelJmRUVkQ3dpMmJlVncvTFZ1d2tRNlVzQTFsMUtoRHpl?=
 =?utf-8?B?NlViak90TERsSXdQek9FbmlDYU9zMjJoL0plWThKcytOelBSYldxejQ2UlN6?=
 =?utf-8?B?WUtJby9rRlBKWm9RNWxIRzc5SWtpenQrSUZ1VEYwdURGd3U1b3A4aW52NFVD?=
 =?utf-8?B?WW9mMmIyMmROaFZZL0xKc1lLYStnOVNXdCtsWDFVckU0UWs0MFhXY0M4cjhK?=
 =?utf-8?B?R1I3V1Y5NUhRSVdPQkhUUTNvV3JCK2tGZmZjMy9RcU5YWWl5Y09Xc1liWnpk?=
 =?utf-8?B?VHE1dUxmb1BqVS9SdUxjUTFQb3lrUzdwYUhncHdvR0pLVGNMQzRXakZ6Y2Jo?=
 =?utf-8?B?R1o4VXVXVTFoRGdUL3FQTE9jaE5uWGIrZjBBRG1GeFNTbVMrblBLczEzMW41?=
 =?utf-8?B?MFAzVHFydVZRa3BUZ3F3RHZzWmNEVHkxbkVXT1Z4bDlTWXdVNE1laE83L3Y1?=
 =?utf-8?B?WlpCSkY0L3dkNHJkV1MremxRUklnRFQ3bmd3WUhtQk10eDZib1NlMXFqWEdF?=
 =?utf-8?B?OUpwamg3RjduZmx5ckdIUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUI1YWRKSEJpdW50M3A5Ly92Q0R5ZFFlVXplK1gzdjFYQ1NZdGcyY1lIY09u?=
 =?utf-8?B?VXdUWldKc2hZWmFFR2ZRSWtkMndEbjBEcTlLZmxNcDZ3OGRjN0Vpck9ONXZ6?=
 =?utf-8?B?eERjUlNNM1J0N0NBeFFVWWpnbGY2TFNIbDJoMXF0QXhVMXhMb0RpR29tbFJI?=
 =?utf-8?B?dFZWYmJoREI1Ti9QQ3BwaTJ6QlkxS2d6SmhxK1NhTFZHQloyb0xtSExYUmRO?=
 =?utf-8?B?T2p1Qnl4eFk5NkM0Q2ZSR1Ftck1NLzA2U0RGNWpBaGNuZnNRTDlmTlBPdlgr?=
 =?utf-8?B?THNuV29UQnVzeVVUVkd4VFEzVzRsc2tDdkpzMnBTZmhIUjhIMzFMWU1WSzVs?=
 =?utf-8?B?ZmJFaUhRSlJtWGdEV3B3eEdheXZRMkoyeHdIc3YrM2hhczdrMk1YNDNvcGRk?=
 =?utf-8?B?cStLRFNKNVBpNWtEZkFWYWx1NmM0bXI3T2NIZHVzbHdOQWlNOEFzemt5bEtW?=
 =?utf-8?B?dGp4WDR0QXFFM0xuSnVFRmFNL1N4T2hCMzNLcE1GSjU1NTlEekN6Y1hObXFa?=
 =?utf-8?B?UUt0WmxGRnpVNkw1cFFOaEpBamt6VnhyOWp3WHYvZ3NVbDVMOTdKWG5UUjls?=
 =?utf-8?B?aHIwL0xkYWdsdG5xWlRGTnQ2M3QzaVpkK1ZUZXljZHg3cHhGWGhRaE9NTVRK?=
 =?utf-8?B?dnJBWHNZMzI4YXhSeXdmNEZOK2RvNXp5aUhtcGtmUVhLeTNiYVhubzhTRUd5?=
 =?utf-8?B?SUxpbzBFZmlaSWp0b2Y0NjA1YXFia21FdDU4U0wxdGg2WS9CRFB3VVZNM0VR?=
 =?utf-8?B?MU1uOHhHL2VhdldrRkRZd3h3NUxXdWpXU0YwWHZFa3NIVmxrK1NXcUdyT3ln?=
 =?utf-8?B?ZXlKUG9UQ3FqZFBINTV6L0hYTnAyQ2dlRlJkVlo2bDhUdnNWMHZmZzJ4T0dr?=
 =?utf-8?B?R2hHR25HZXdJdmI2Q1pFellLZitIUWhKSjRRem1XUkduLzF2TU1UMkdXWTZK?=
 =?utf-8?B?ejlrSmxDNTl6SUlacG1JN2UxMFUwR2NrTGtiS2VRWkw5TnZHRjc4a0JoNnd6?=
 =?utf-8?B?SExnOHo2M0h5TGJlOEJ1alhrQjliQm4ya25rWFBhdG9IRGFUMEpMbDdTWEs3?=
 =?utf-8?B?TVBYdlBVd05SSVVvMDcwVW80UmtLSHJjOUp5TVdtaVJrQW9RMVFVd010a1JE?=
 =?utf-8?B?OTRjTlNhMDRRS2RQTFNGTnlWc212eUYzdlJLY2ZocFQ2anU0Q0ZqNGFYcE1L?=
 =?utf-8?B?NEg2aVJxU2FLejN0dTJkaUhnRUhqaUZNZVJkTVRMUXRJT1kzYm4zYXBlSXVk?=
 =?utf-8?B?QlkweUMrUi9nYTZMdXNSTmFBcWJrQUpiWGdKWjJtWW1nNklhb2lrMmZ0TmVu?=
 =?utf-8?B?L21xb0VnakpDSkZEUUxVZHhndHJQbjJtZVp5MTZJVTR3bm1nczc2dm9kb1I4?=
 =?utf-8?B?d2Z3ZEt6UUxSVFR3WmZyWUhIRTVmS3E0OUhpZXVSMkhxY29OOWdubDBRVkk3?=
 =?utf-8?B?R1Bvd3JSWUZEd3RCZHZackFwUW1VRk81NkV0Tm1GQ3RzbkMxRHpwcnlXcURm?=
 =?utf-8?B?aExxb2pYbDAwZWNyVnBOTHlzQW8ydXdFckRnM3pNZyswZzI2TEEyeGdSM1p1?=
 =?utf-8?B?UmhVZm9zYzg5dzc4dUVyUm9ONDgyQ1lXVnh1VU0raTMvR2E5YU5iV0dGLzhJ?=
 =?utf-8?B?OStpdi9GbSt6SHEvSHBWRmxKcjZoVno4eWVUSDlvN3dkUnpBdC9SVmIxL085?=
 =?utf-8?B?MFIzelhYL3R3NTJNRmxVREtvcTMzRTFzYVVNVW1OV2dmVURnYXVTR2NYOHMx?=
 =?utf-8?B?WEo0TGVxZFFxM1B4N2xMc3A3OXFpRjVxV1hLZm1CbkJweWRpWGsxTU45bUM5?=
 =?utf-8?B?V1I1ZXF2bW16QllTcytINmhLNGo2UVorOHRxS1YvUFFmS3RwRUJwN2tFd05B?=
 =?utf-8?B?N1lCNEoraU9aVWFCdlFyVEV5WFFiL0lZMmp5bXB4WkRGbk5HYnBOeno1dDc2?=
 =?utf-8?B?OVQ5SGl2clE1ODM0NFJwM2Q4V3huUUFrYUFHR0RvWVRyQzNleEkrc280cnk5?=
 =?utf-8?B?NGFhdmZUSVQvdGdqOTBQc2IxQm16a3A0Ump4VDUrUWYzanhJVGhEYS8wWW1B?=
 =?utf-8?B?SUhzRnp0S002TGRiSDlPbzFRbU1TclJlTUxUWVJOUDJLMWp0bEE4K0Z4eGZh?=
 =?utf-8?B?aTIwbVowYzFUdmFsSjJCb0VjMDc4aFhaODNtRHJkRFl4Qk51U1FnbUNWRjVN?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f1e43a6-abd9-4dfa-0f1d-08dcc1662055
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:19:15.4636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gpOrxIJbkM6Ch2jfJnGI321IBLMzxL5qDUxfx7xJtTdzhphOB6Kqs03VYdxpSrBDuV6RVZ4Cz3dOlx5sltaAyGV3wy7fJ/3jxsSVmQ3ykso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4519
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724192360; x=1755728360;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2xuxw4AdF26l/JlhrKo6ccx9Tcd0aPPmFPn0eTao828=;
 b=V/9FUOeM80uMnitDnSqPbHUCvNRREr9wCUpJrH8+zEefWSQpV2SaPeO4
 xcte0pv54NU0L3t5XJMJ9VDVCEqXNsr34FYXY+hlQWbz/R3fLnzQz5BJV
 SoK8hsctdA4jdz/k98FhGtb7z+P8uCbAu++kYUETZS15lwa364Wf2zfp2
 gQxvm98MbpNkQ47aP9iMwJef5ubjT5o3sKJP1PGbsDrrRRqTSwSUmHY8D
 WV4QxlIrPszz0w7pNIBox0W6HlApgpaK0OHjvt7hz2a7VuDvtWZFT1XfC
 v8rsXzRzxKroWf6f1Xkk9JCaKfPHt+1WBhy7lWsUckOW17Zx2LnLsgP0j
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V/9FUOeM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Use ice_adapter
 for PTP shared data instead of auxdev
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/14/2024 12:54 PM, Sergey Temerkhanov wrote:

...

> +static inline bool ice_is_primary(struct ice_hw *hw)

No 'inline' functions in c files please.

> +{
> +	return ice_is_e825c(hw) && ice_is_dual(hw) ?
> +		!!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) : true;
> +}
> +

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index fc946fcd28b9..f67981d64bb8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -468,6 +468,11 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
>   	}
>   }
>   
> +static inline bool ice_is_dual(struct ice_hw *hw)
> +{
> +        return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
> +}

 From checkpatch:

ERROR: code indent should use tabs where possible
#408: FILE: drivers/net/ethernet/intel/ice/ice_ptp_hw.h:473:
+        return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);$

WARNING: please, no spaces at the start of a line
#408: FILE: drivers/net/ethernet/intel/ice/ice_ptp_hw.h:473:
+        return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);$


>   #define PFTSYN_SEM_BYTES	4
>   
>   #define ICE_PTP_CLOCK_INDEX_0	0x00
