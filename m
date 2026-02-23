Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL0rLHSJnGlWJQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:08:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E47A17A5AF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:08:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E034A608D5;
	Mon, 23 Feb 2026 17:07:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id icIMD6vEUz72; Mon, 23 Feb 2026 17:07:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DF6F608EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771866473;
	bh=vk7GU/z4WuO1T/M8uW5NL10Wat1rjANdZydTo9FtVFA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rbHV8IL3ql2m/cGW0965cR3P+YmhggEBAvJ0U5786RDBO4z/FLFQmsf06ZdDlYyaC
	 q0mMqnDaH7UGmHiICvfjgD7TihpGbqy9dlf1zaNSgRT+q0ddfPesYLGGTvT9WO8s7C
	 BIliRuPmXyIXaRekSKDE+YjYn5xLv2NAtwxMDh7Nt0fTHBHx3t4s4PlXsJ36EE2O4Z
	 VXpJaZI/Q/2ArsVLq8u/hKYx1awx8NlQYPKMTUTYMscQCA18qIt/j82qX1FzMV8Vfd
	 XTDUnoqNAQcRuLcoF7BLptB7mfbEDN4HJR6p3jwWPaJkgXRGY+HfwW2DQsx5UvH5xB
	 Xjzd/6ppgTUXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DF6F608EB;
	Mon, 23 Feb 2026 17:07:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 59C98237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:07:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F88140351
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:07:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d7IwPnnlrOww for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 17:07:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8078740072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8078740072
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8078740072
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:07:45 +0000 (UTC)
X-CSE-ConnectionGUID: lxHs/ia8Qk6KKvSu/tOfNA==
X-CSE-MsgGUID: x4EDAnr5SU2HhHwFd1cd4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84319290"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="84319290"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:07:45 -0800
X-CSE-ConnectionGUID: Ixe/FyLZTgOZk3dza9mHUQ==
X-CSE-MsgGUID: E3sxlUvhSaOnWc6JFXJdTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="220177520"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:07:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:07:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 09:07:44 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:07:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x56NZOVJ1YcIm1bvGapTKdIjKDcnq1Qkr0yvzGBGac11/bGu3slrThFtCyTd6Icelnk2RGrwCDXrN/NAOrMzNP37eWFmNhYv0KWIgmDNcB7awuaQvdGYvluy85M7VdsXw2zPmCbQ778hvV6t+JIExFTzfdmu0xEbL5cAM0hfgqQTkeRqcTyNhzHXRp+5fZ7+BVtsJUFNRLgNE9Pfg1YI36uQJH28s8onzTZQ370eUjoEnK6iRfM0i0y8VfNyW/wFaXhj0TPgZ4OSuQDuquu/6jZFpKycaCFPPLGjpllSEyAL3oAvjRx+Uisum5yBuIENKj0OUOHRbTiWyfAeWfjXow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vk7GU/z4WuO1T/M8uW5NL10Wat1rjANdZydTo9FtVFA=;
 b=gkaol5jRfAXYDx4+yAy/ZTv8J6CdClXexuvxcRoKFB4bNIuBcdh9nfwz5kTL72pyCJuED0Ey0kQql+5E1DVgDaDkz2/FFssJNiSJXhZGotaJnZIr9yHYJbG3SRJKueD2Ng1R1Tjl7t/gz3r7hPhe5kEO/5UomxWB1Wr9Q7g3HM/n+jgJux2q5plvGtQEcHpKpI9d53jVvhMxlTyMM6ktkmK8jFyQDnTJzPpVGoCGxm7FM7tLfwIQstVWBzZRnyTgSoin7Q+fPR0cGTW/S16a9fVTWLZ3GmxECSdjele3bZTbSFz9ynm+Wyjtt7nHZIlvfijKbvpCLhdkhKfJh0EHLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Mon, 23 Feb
 2026 17:07:40 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 17:07:40 +0000
Message-ID: <79b0f862-c62c-4069-b39c-2574e6025c0d@intel.com>
Date: Mon, 23 Feb 2026 09:07:36 -0800
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Kohei Enju <kohei@enjuk.jp>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alice Michael <alice.michael@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
References: <20260220184031.60113-1-kohei@enjuk.jp>
 <IA3PR11MB89864DB144A3D8990E6512D5E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <b57460ab-d523-4e2b-ada3-4d338dea6701@intel.com>
 <81f91e12-599b-49e7-9299-cfecb994cb6f@intel.com>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <81f91e12-599b-49e7-9299-cfecb994cb6f@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0045.namprd04.prod.outlook.com
 (2603:10b6:303:6a::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 44dbbda6-19e6-40c6-f80e-08de72fe0d4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aE04aHRqbHhmNHc3UmZXSGJkRGVPNXA1M3VPR2R1cUYxekN0R1NVTk1Kaitp?=
 =?utf-8?B?K2NVWXZkdWl4Y1M2RVplaDgvTS9Pc2RiUHNMSGZHcUIrZTBCcFZMWnRyT2Rm?=
 =?utf-8?B?OVZJb2Y2Sm9iMmhRcVNPNkhDT0liZTIwV2pIdnczNDlQYThVMzYvRkVleFRw?=
 =?utf-8?B?eUNyN1NLSGJzMnB0ekZBelhEbUdCRzd5L1h1MTN5NXhtVldxRDBNMUtNOVNp?=
 =?utf-8?B?c20yTEhOb3VVMEIvRUh2LzZyd1hvaGhzMGxwaVQ1M0hWT0NydmY3K0pzK3Ay?=
 =?utf-8?B?ZXhtSTdQSWpTRzJ6RzYxSFBvRzlCQkd5OWtHMHNEZFVndnpGRmdERklTVmVx?=
 =?utf-8?B?Z1I1UGNZNUdwZzVURFRuK0oyTkQ0TDJ4TFRLR3ZNcXFRU1k0aTVjR0IwWUdU?=
 =?utf-8?B?L3o1NTIxM2M5bVdRT1d4dUNEMWNiVjdhZWI4YzVzRTR0MFNNSkNGRm5iZzcr?=
 =?utf-8?B?NWxnemJia3VQN2hRZ3F3STQzOHd2ZnYwRTVzSjBnYTZpZC9VUDhVaEtFU29v?=
 =?utf-8?B?MU5kem1GWjBHSm8xQ3FtU2daWGFZbnRJRjhKNVpydmNNUXp2QjNMVm9hTllw?=
 =?utf-8?B?ZXJmTVhQTENQbjVCVHpTTWpmNmdWMThxUVJHZWtIVVYyRUZZS2czRE4yK1lj?=
 =?utf-8?B?L2RmRmF5SSszRVBkcnV4SWNzUEdTQXpuSUJ6am8xc0tCMDR6UEpyN3o3aG84?=
 =?utf-8?B?VGI1bUs0SmZLckZ5MFRMc0pieTVCSDREMVREM2loL1REamdJM08ySXFsb2tr?=
 =?utf-8?B?MFU2anRWQmVUcXFLalgxeFloY2dFU1c4L3dpR05peUkzK3JpZmlXdndadnZP?=
 =?utf-8?B?WW9OMUVDZnU5UlozSi90ZFhJSG5FY1dOUFNZb2hxM0JxSUdNZGt0Tzdma1A2?=
 =?utf-8?B?RUl3UUg5cytqUFJBMWVMaW40bWZlSElzcmY0aHNrUXNULzFEcSs5VzV0MHdx?=
 =?utf-8?B?c0VSQVYzOW02V1EzcmhYOFlhUE53Tk9Fd2VKRHJ1MnVUTVNXTjk0YzlXY3Rp?=
 =?utf-8?B?bWxpUXIrM3BEa1dURjE5aGtPR3JvbFhmY0d0RXV6NnoyWEs1SXBZSk1ONVJa?=
 =?utf-8?B?WGo1aEpIeElqTGFpY3JhekdWdi9VREIyanVocitGT1MyNndOM21lbm1DanZw?=
 =?utf-8?B?Y3ppZzNMSTB5TkJxNjlOTXl4ck0zcHV1WGpzZG5DQ2hPM0diMnlRRXhtY2NB?=
 =?utf-8?B?b0t6ZVR6THIyVjAzWThkSmZKS2MvQ2FFYm9LNVY1Z29vV1hCdHlwcWxuQWlD?=
 =?utf-8?B?SU1NVzVWOEtxelExeWV4c0FEMTFVV0tkV1lIZEhZRGZyTnVaTHFibnBuOFla?=
 =?utf-8?B?QmR1Y2pBeTE5OGdMUkVraEhZcHliSVdXOThBSHJFRW85aWRjcFBNSlpZb3pq?=
 =?utf-8?B?K2VsYTZkTmRTbTgxeTBwdlFESWVmMVRIK1NiQzVFRjZiR0xFUERJVHZhUzRx?=
 =?utf-8?B?cHkyc28yaTcycTJUcTRsaWJxbnVQVzBuS2taNVRTNGJyZGI3SjI3b0JlK1FP?=
 =?utf-8?B?RVNxOVduMjMydGZvQVYvZkFKVU1KaWRTVFBqOHM3U0FMSDJaaTRhMTFBeUFB?=
 =?utf-8?B?ZmltcTMrOVBJUXJxN0s4cG1kYWt2SFZaVXVvZkhKbmhvODJiSzRWc1F1WGg1?=
 =?utf-8?B?RzRoRXVUMzJYRVUrNTduQWNqeDRoTWtFV2orSTlBTEZiWHlJS2xYd0NqaTBm?=
 =?utf-8?B?R0RKVVZNcEFTQXJVbTBBM2JtVXg2bktaMUlTU290S1h4bFp5aTllYmRyN2gr?=
 =?utf-8?B?L0RWODU3REIxS01CRDJhbWpnR3hzSER6S0cvZEZmaWRub0xqcVN6QlcreUdQ?=
 =?utf-8?B?a3B4T0RJUEpyUXFiKzMvbndPcTJ2L0dYQkh4cE1sV3h0U1E2RFpxcFk0QXBw?=
 =?utf-8?B?K0hDMFNadDhTdXlvU3kwRUJTNjdSN3Yvd2k1RVZMV0dUb2tTZmY0UUE2YUFC?=
 =?utf-8?B?ZlNKMmk1YVRJeHBZSHFQMmJxc2QxMXpIYnZjZHFDbzg4dEZVR2ExVysvSjYw?=
 =?utf-8?B?YVVZZGVIOTUxSjlPcmV2dWF6aW5aNTJGcmNUNytmQ09rZ2xLYndQNEwxaW5x?=
 =?utf-8?B?ZExXc3phUkZUU1Nvb1BLVGIwdE9jdVBDWk9zVGtQRFB6RGRzbGdjS0VnY1E3?=
 =?utf-8?Q?Rvqw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjFnWklqWVZOR2svcXNkbkl0NkRISFZFdnJmY3RZd2NpYzBUZ1VGT1dNUnc3?=
 =?utf-8?B?UHFkWmVPV1BYTXVBNHAvRE9iSWtaaWJKTXFTY3E0RU1LSkZZUW1KQXQ4VEw4?=
 =?utf-8?B?U1haWTRsNDM4enJsL0RyOXhQVEpld0Y3QkJTTGN4ZmZ6d1J2MVdJZTlwS1F5?=
 =?utf-8?B?QVI5YVE1NnF2ZGc1OWFPQ25WZjE4bWZxU2lzeHFweEJvd3J1cjhORGZiQ1RP?=
 =?utf-8?B?a3pPZnBFMXZ4ajl0eHBCNGpxV0FZSW4zNlRCMW80eXlzVVduekNSdkl2bEdm?=
 =?utf-8?B?OVhTNEhPb1JQU2g2SVY4eU0yK0RkZXFJYUpTWUFaU1FXUjZQTG9pRTNFWXZB?=
 =?utf-8?B?M3k2Ty9UL21YM1hiRUJQZC9yakFJNkhpTnltVjNOek1RaVc4UzVPMTJpbTZV?=
 =?utf-8?B?UENjSlhSWnNITlc4Z2ttRE1pYy8xZHl1cllETGFhc2NtOFhwRC9OdS84Uzdl?=
 =?utf-8?B?RlVBSmozNk4vOVhOVWRjTG1pc0k3MWU0T3dhbFdYVXlnOWdmWVFuL2NxTEs4?=
 =?utf-8?B?dnB5UGJySDl3Nys5cUorS0pWdUpFWkZqT3J5YUdJZ3Z4NTl2WnQvd2t2ZnF1?=
 =?utf-8?B?RmxoVE5wSGhjYTh2T0FwdlJQV1FUOW1seFd4RGRqV2dZdzE5czc2NTE2Q3Vi?=
 =?utf-8?B?K0IxUmVOYlYyTVRFaDFaenNpdnN0ZHZNNnB1K2FqYVNvMnFUUGVXSlhkMjRF?=
 =?utf-8?B?YW9FeVdhNXFkZFN2b1YwS1duWGVtZ2g1emoyWEN3MGxFZThPcTZ4L1MxQ1RQ?=
 =?utf-8?B?TWxFUCtOL28wRUVvaDJmeEcxSU5YQlJtZ1I2M2pYenlWbzhqN0ZEOXNtbXRC?=
 =?utf-8?B?UUgrZkpkVExHL05xSGlIRjZhazQ0eTJLR2MrR1lZSnRxNTdpbml0R21MemVH?=
 =?utf-8?B?L0JwUmFqdGlDWkk0WU5lM2dDclBhWE13Y0U3WlVMN1Q0b2NLM1JRUEFYYVhK?=
 =?utf-8?B?Szh6dWF4WG8vWmlZS2lpVUladWQvd0U5NCs3dWg3dmlPL0tQT3I3YU4yMGJ6?=
 =?utf-8?B?M2RmbDVnRUhNQTZXc0I4M1pEQTdiTlpzSkxqc200SHVzKzFNQm1meDBVTDJX?=
 =?utf-8?B?WVVWQXB3M0dJZHpSWklWaStkRjJVaUdySTJQUVMvdjVGUDBwQktGU2RpSThH?=
 =?utf-8?B?eFpFeXBZOVJRWU01VDVyQSswQmQ5OTg3ZHJBZnoyY3krZ1FzZ2JCbkRrS1N2?=
 =?utf-8?B?ZS9BSzNGOU1KRVJiNTdaSXMvQ1cxLzlMOGFmSE14MTRYUThYRHhpQkJJK3hU?=
 =?utf-8?B?TVVMR1Fkc2Rpa1l6MHN0blU3ZmJrUWRGNkpBemtWS0dTeTBjNVhTSDZVOVZG?=
 =?utf-8?B?ZWFMODRpcFphSkc0c2ZpOVZlcXFkanNteFd6WmpZWFZvN3VKSFZxRkJLeXNp?=
 =?utf-8?B?eld2RFc3SnhFOHJtcEtCUHBWUlJOVU5kejdkRkxFNTlrMXlvRDZNVERoUmJO?=
 =?utf-8?B?N0lSVlRSeFRiODhxMWNKWEFSTDE5NVk4OXh1NWFrZUpJTjZhWTYwK0x1dUF3?=
 =?utf-8?B?Z0tReU5BUWdmZ0hnQVQ2U2xSckg2SVZPejJKNzNaN0ZNRnRmVmRmSlU3NVNa?=
 =?utf-8?B?TGZST3Qvd1IrQzdjeHpVK2FDVERxQ1IvejV0WkdYSUFUZUJ3Ujl2SkE5ZFps?=
 =?utf-8?B?U1o0azhUWjJTSVpLTU9RazBubVZYY2xjbHJqSHNEakNIZ1crZFZlTVA0QTVK?=
 =?utf-8?B?TTZTVVVjdEV2ZmpiSCs3dkhsa2l6Wm5tYkxua3VIbVVTWjdnTkY4TUZpUDlZ?=
 =?utf-8?B?dkZrN3QwUVJZZjREY0k1SllhSWxWOHY5MC9sQi9WQ3dISEpHeVJld015WE5J?=
 =?utf-8?B?N3dBZTdNT3NobkJaNTBNWDkrLzRUYzZFTW9zRWZENkNjVEVic3pYMFJ0MjJz?=
 =?utf-8?B?TnpMV01uMERKTkw4MEMwbmNEbDBONHVrSElFd2pFcWFtZXUyNGQ5a2lwQzN2?=
 =?utf-8?B?SlRMVFpUZmlrOG5yQnAwV2Z5djhqNDd0R1psOTlwelBRUTNmZHpBTmp0aVo5?=
 =?utf-8?B?dHVOSmpYSUZSSlhSb2JudmdnOHAydjJtVjM3SXYyL3pvM050YWJZbTBlSkhO?=
 =?utf-8?B?MkJRQU1aZld0UzRJU3N2SlNEM3loK1JOV3M4dDNIRkQ4RVZRODkycXF3dGE4?=
 =?utf-8?B?UWpwcjlVak5UVlh0eVVrdUFNT3FIbkNVeTg2Y3lXRHk4OC83TVJhMFdoNVlk?=
 =?utf-8?B?R2NtN0I2ck80aVZQL1JwZmx1c0lZaXpUcUJTcEZVaTl1UEJlcDZkUnZtS0k5?=
 =?utf-8?B?eUc5WVo1THk3aW1RVURjd0hkWkNJdElxejJISWNRVlpHSmZuNlk4MG1weitn?=
 =?utf-8?B?Sy9XVnRsNlhCMWVqZ0UwZURZS3N2Z1N3RHV1NzlwdEEzK2RDYkZ3dEovWFh3?=
 =?utf-8?Q?AYQT0hyxaDDLGxjU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44dbbda6-19e6-40c6-f80e-08de72fe0d4b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 17:07:40.5517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tjuRML3WlEg3qICmik+Gvslnhi7dB0cfAm3qx96b7vbsvCLkOEAwMYWAHX4eAt1MOf3RkDraS9aUopaEiNCNUAxwijkwkwQ878Z5h/FkL5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771866469; x=1803402469;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dDbSpnrfwdQFcDgjmUXndxFkZ1bIh8SSw4oZSL9a6hE=;
 b=h/1vKy512Wuu50ysacVcQ+kYoU9Kxy6u4EyerSuNYYAcLdQpajvSbrlL
 NftBMA696lQhxr1QhvWv1E+4d6FnX6OkhDFLXLaiTNtPtyorwDmIjZb0r
 lqgyF4ckc6VPHneRPPrXr4YPw6Zx2AkqDpMtaa+rnpYUwLRiRoFGCJygP
 Huto/s5IYCOhKxwXtnaM07kzzJdQkKnXfNjvw9+WKFdTLlzboTGFIRJvJ
 Y2Cv4souyAoyhFXx31Ov9Ba9fSp0pLAEDgfHCFGqEC7DigbvHdZ+97MUp
 5Q+mvAQGF7MsHZHZNVRUAWSTmaK85s4DENWCvZeTMb5g8UGbma1u+apq8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h/1vKy51
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL
 pointer deref in error path of ice_set_ringparam()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:alice.michael@intel.com,m:maciej.fijalkowski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[paul.greenwalt@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[paul.greenwalt@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6E47A17A5AF
X-Rspamd-Action: no action



On 2/20/2026 5:50 PM, Tony Nguyen wrote:
> 
> 
> On 2/20/2026 4:35 PM, Greenwalt, Paul wrote:
>>
>>
>> On 2/20/2026 12:04 PM, Loktionov, Aleksandr wrote:
> 
> ...
> 
>> Also, per Alex's comment, please target 'net'.
> 
> Since this is for an Intel driver, iwl-net is the correct target.
> 
> Also, as was responded, this works off changes that are only on net-
> queue at the moment.
> 
> https://lore.kernel.org/intel-wired-lan/20260220204526.7514-1-
> kohei@enjuk.jp/
> 

Thanks for the clarification Kohei and Tony.

Reviewed-by: Paul Greenwalt <paul.greenwalt@intel.com>

> Thanks,
> Tony

