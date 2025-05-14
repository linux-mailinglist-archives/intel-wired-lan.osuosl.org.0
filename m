Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D034AB7754
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 22:50:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED0FA412B1;
	Wed, 14 May 2025 20:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uzpPo_eOi82A; Wed, 14 May 2025 20:50:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A7D840DA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747255831;
	bh=pW8s3mc1CNhE7e+c6mhB51163Rlihfw0xStWkZr9rS8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cer1MZYTOSqHB9jmdvlz5CrJ5y8778ZRPuf3BHVnTFa9uqFeID/+CXQVYjAF8Bl1P
	 6283esIa5yuGRH0woZ1kXNo1gl2zaT+x15DN98XkVImRQU2T9MMoLHsOwee3b3uDbX
	 8IX2BtOGdWUCR9H+/P265zUXxF10aQvKlAl+/iB7U6Swv1lvStJxuqkD50v/hOY+0o
	 ysdnqZaJo6CCyWjTE9DmyH0Ii1md/RpgTVP1zdjsHNXzp/0H6Xk4FAJULq1c3u0Shv
	 iU52uZF8xRymF/b4DhGnwgQDXAsj8kpyXDFymFPzgs8BROSU5mN4KTBF82ENr31LG6
	 HSEdufavMWpVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A7D840DA5;
	Wed, 14 May 2025 20:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A99512A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 20:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F6A54088A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 20:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9IN1C2FHGFrj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 20:50:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4314D40CBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4314D40CBA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4314D40CBA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 20:50:27 +0000 (UTC)
X-CSE-ConnectionGUID: 39A3Cq4jQf2tNr+zypfy9g==
X-CSE-MsgGUID: 3W9FxhRTRF6MXQKfcfgv7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48859621"
X-IronPort-AV: E=Sophos;i="6.15,289,1739865600"; d="scan'208";a="48859621"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 13:50:26 -0700
X-CSE-ConnectionGUID: WpJnzmOMR0+LsF00UNMeGg==
X-CSE-MsgGUID: V2Gs1tUhSgWsUUCDJjOD2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,289,1739865600"; d="scan'208";a="161435183"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 13:50:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 13:50:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 13:50:25 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 13:50:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bQHX9+KZCGfnYEgkU/RgD/FxME8+42SrIeskflLHMTH7HRjnYIl892XM6HdxjPaJcHLb2LQsl/yymbRS0Fb7uFPgvdYn2LPIzk/Cl/M64hMHH8p+dYm0iyG5rvyj6wfMl/PK0jpOVUOGMcPR/cTGLpjJNFK63VDe6IRHoqiCpwM4DleJKtocDRgeeLZSXN4vOQE5Ip9b2yujm8erGw0kE7Y0NFQirkf8NbN4IcrdM0I6A3bbZNkhKnA+VBzJ2akqCWjpNzWjoTRx5MpX8oeWT2eS7TzQj0A5RXS/w8GWbZ4ttWJD6OeLXXYrjioIIfKpe2hxvfET89Wkjdm/ZhLhTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pW8s3mc1CNhE7e+c6mhB51163Rlihfw0xStWkZr9rS8=;
 b=taFOwHP1qmdyuvEK0QNCKvMAlqb0COxu/db5k1KGWigEZlphOEDBLKQT60BMUBZGKJNdkOf/FQdfp+cTzvR7AlClYHeDbQ+QnxXfXMHvDvVS2nrT/d15iBIPLPKnU5Pum4uCxPJfA6LfTsOA4jBo9G86yRm+JQ8/oV6QsZS2Toayp2ornVuTFwyuk2zezHDUlmwjzzIEXrvmqKku/qYwtxGjr4SxdcUhu5Yk2O1S2jhxFoapOMBPvezG/+27wvVhpNC0KEtciQpUc/MSswDzZE4VM1zuDzdxJRaAoI3HraWL4V3KFGS/C7iX9/E4nyCPT8eDuiFrsSPIlGxaxcatMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Wed, 14 May
 2025 20:50:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8722.031; Wed, 14 May 2025
 20:50:23 +0000
Message-ID: <c8daed51-5935-4070-8d8b-8994d348f746@intel.com>
Date: Wed, 14 May 2025 13:50:22 -0700
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <horms@kernel.org>,
 <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@intel.com>
References: <20250514123724.250750-1-michal.kubiak@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250514123724.250750-1-michal.kubiak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4878:EE_
X-MS-Office365-Filtering-Correlation-Id: 81384341-0557-4b06-5d18-08dd9328f2ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEdDUDNOVFpNK25YdkFhbDRBcUZ0cGlxSEE5Y3hUWWh5RVlmMnBERXFaNlY1?=
 =?utf-8?B?cll5RUpCYnZTMFJZSm5Ud01mZnoyVUZyTi9EaUtKWTlkWXpqcmlOTzRJWnlu?=
 =?utf-8?B?Q0p4N0hwNFV6ekl0azllM2RyOUl6SjlsT0FIb2hNYmRsTTBzNFhROTVDTXdD?=
 =?utf-8?B?aDVrYnFNSFFFQTVuVTV3eHhnemRta3krakpXRE5ubWY5VEpYbmhkZllvenBs?=
 =?utf-8?B?TE16aUxFcHRwQWxZeWtiQ0UzdHltQU41OWZjMU8wc1NmdDkvclBQK01IZ1do?=
 =?utf-8?B?QlpFaEVwN28vREFtRk4xb3VsYkpnbnJHNXZ1ak9tNzY4S2dDaXdxeWZFdDhY?=
 =?utf-8?B?cVpGMnlTRVFTak1uRWw0bFdlaDhidytMOWVMblE0N2VQYkNhTVVwY3lCUGJE?=
 =?utf-8?B?SXZSUjFMdHpUT01RUmZNMG12UW5vLzh2d2I4dkh1YlRwL280Y1I3MTliUjY1?=
 =?utf-8?B?dUFSbmdqS09nUXJTTG9nSmRTcnQ3RExPMmMvbDErNjJaSThIeCs0YmI0OFJa?=
 =?utf-8?B?SVZWSGFLbzMzWHAxLzZtRERDbmtLWXQ1Uk9hZEh5em81WFppTVhPSjhKUk80?=
 =?utf-8?B?TU9WQ0NCSGdGaEd4Zk5lYUlMSElkand4RlJIT0dkRnBJMWZ6eGhEbHZONkNi?=
 =?utf-8?B?amovR0svUElkRUUyWVREb0JWVkE3d01vZ3daY1RXdmlLdkNtZW11QlN1Ykxm?=
 =?utf-8?B?RVdTbzl0TGlhOHdXZTdVZENkb1pxdWhWTllCaHB1dWcvSmJiL0RYM2plVjJJ?=
 =?utf-8?B?UTZqcTZueU5HOTI2TFp4eFBpOHNZeE5GVHF4Skh1Z2FLTk9xWFhRaHpvbGVz?=
 =?utf-8?B?ZmRybUErZ3hCd0l3eHVjTFIxUHg4RlVMRm1mL3dlVjhUdnFDU0R3alJma2lP?=
 =?utf-8?B?WjNUbDNoZ21JOTdya3hIeHM1MVRKVGRMS2Yrby8zU1U0d2pvUWh1S3p1aXhY?=
 =?utf-8?B?ZlpINHhHOTg1ZUhmYnZtWXVzbmFHUnpOcGdmY3NCUDREcmxTVElzUmcxUUVJ?=
 =?utf-8?B?WWFnOW4xVEF1T3dmKy85VUFrTnZRODh3WmZXK25uZDZCMEE3RUZkanRtdStR?=
 =?utf-8?B?YXBleG5NK0NFTUlUSERxY1czeS9aeDZMWi9aZDhkd29VcVI3aCtxdndaMlkw?=
 =?utf-8?B?RmpzVERKbXZWSXk5WldvbUxOQWdzTStOZHFmSnR3YjI0bm9pd0VCM3ZYSzZy?=
 =?utf-8?B?L25VME1XbTVhU2JpR05wQVR6N1A0OEhPN3hwWHdiVm9keUQwTkxFeWhDWGQ3?=
 =?utf-8?B?SjlzaHpQYXAza3RMODNvTjdUZjVzQkw1aThTTGJCUy9ac3JSbGM0WHJCbTRL?=
 =?utf-8?B?bGdYVm5IbUlwSkRJcUpwL0tjckkwbGY3U2F0emczMjVabkN2YkI5WUhYaDZT?=
 =?utf-8?B?SzdsN01KWVpTK0tUdGFtTjFmbmdpZURTREljVXJ6MDY0R3psams2NHhORUx0?=
 =?utf-8?B?N09aTW1FcnFUOFdIMzdJT3ZEQ3M1c3pLd0N4ZU9jSExnUkZYc1Z0MTBZS2RP?=
 =?utf-8?B?RkQyTXBCRnpHSWxRWUw4Uk45ZlN1L0JROHZ0bTUwZzd0bXJmL3hHNVhKWEtW?=
 =?utf-8?B?ZTI5a0pxM09yMU52cjJzMlZLMEQ5QnpPUUFBNkpGK1pSZXIxMGIwWWc5V2Nv?=
 =?utf-8?B?eHk4Vm9nS2ZreUVOcVNORG9mc00vU2NONy9tSlpiY1JicXhQMWVkWC9jUVB6?=
 =?utf-8?B?T0JaK1JaZmxJOEVyU1RaUDRWY2hPRlBaOFdISS9OMis5VXNnZmtFV2lvTFJD?=
 =?utf-8?B?QzdVNS9VZjExMGd6cTkrOFBPajJzY3BWQ2l2NFVuNzZLVStKZmFieURPdnpL?=
 =?utf-8?B?dmRWK3lqd2tHa3hrZkZNZW5xN1ZDN3FoUkU5SUVYSEVhZ0JvdjlrM2U2WCtS?=
 =?utf-8?B?M1VJS1NNWTRucGVNbW16N3dCSlZkbU40eVh6blk3LzI3eGEvUUp5MFpTSnlS?=
 =?utf-8?Q?Ll3PWQkLuJ4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0J0TzFNTWdZeS8vSklucUZPL2UyMWhBV2N5VTlpbGdGL0R1aTBndEJnL2p4?=
 =?utf-8?B?N3ozc1lnT05tOXIyaHNZTFFUWjJycWJxV3FtK0lNSkdkMU1EMzJkNHN2MWlr?=
 =?utf-8?B?K29IMTZ3cHZwTVBBYmE1OUl0cGl6RjVhajdzZ0NOdktFdVNPaFFaY1p0Smlw?=
 =?utf-8?B?Y051a2dQTTV0OVovR2hIL3BLMDEzMVlxMlRaeTBjdGZrQlNMSWh6QmZ5MXk3?=
 =?utf-8?B?OWl2NHlmV2xiQTZxdk5wUGZhUVNDZys4a1JrSWZHQ0RjU3NoaHJBQ3Y3ekZV?=
 =?utf-8?B?d0VQU2x3STZqVUg1UXlSWFlJR01Qb2lRVVluZmttYm5INm55N0syZ1FneSt6?=
 =?utf-8?B?TWkzV25OZ0xIcllUV3VlYndLU3VveFVSY0trcFJXZmJNc1NZaGdKZWt1aGwz?=
 =?utf-8?B?VUQ4ZzF5ZnVXSWx1SDRYcWNFQXd0TVpJSjJRWXV2QTFzUEZ4VEl6S0RaUTFM?=
 =?utf-8?B?OU1idHJlNk5tSm9NcUdLUmt6eGpUS3UwNEpwQXNJSXNVdk5KNXdVK3czWmJu?=
 =?utf-8?B?cXo1Qmw3ZXpkUHA3b3ZpNTkySnNYcVlGZ2ZQU0NZOHc1di9PVkZSK1A3Rkp5?=
 =?utf-8?B?bWpDaCtKY2ZnTnQycWtwWG1nc1VPeWF3cWpRa1IxN1ZsSm5TWlVNeXVQTnYw?=
 =?utf-8?B?TnRDeGFiZUhkTTIyY2hLQXNqSTdVV3ZEWE9DTGg5NTRDRHRwZmZ1MFdpeXlS?=
 =?utf-8?B?L29zQnZ1V2g2VVQwR1V0ZWVHaUxMd0xaRU5Bdm1ydkRZYnQrbnJ1aFRMTU4y?=
 =?utf-8?B?amZuZDlla0pNN21ZZ2VwOTc2WWt5b0p1Nm82T0dnU2x1SkduditxNXRwMTVS?=
 =?utf-8?B?RlRDU1FlRlJEN2EwcXVtN3dCdnBxUm9uWVR3dVdEaFZ3Q3BpQStLZmd5WGZK?=
 =?utf-8?B?eW14L3BxUFJTTWxzbmdwZ29OSHl3TDhpOWIwaXFoT2Vpa295MmVXVnhQTkxS?=
 =?utf-8?B?d3d6YUJzcnJIbjJmU2FBR3puaVNKKzFDWVdwSDd0emtWSVhxa0E2Wm5xQXJV?=
 =?utf-8?B?V0xaUEg0ay9sSHJrMm1pNUlaKzlMRUU5eHhFMmlTS2NVSGdmQ2ZHNXN4cmZm?=
 =?utf-8?B?T0hvMHdFendjaDhjNnhQOHNxUXBlYVJGK0dhUFhTdjF5VFNSa1dmQ1RXejd5?=
 =?utf-8?B?ZXZsekFlZzEvamVEMEpRTVFuZ3dOLzdFSkNwMTFiR2RzVkZra0VsSmhnRUVL?=
 =?utf-8?B?QjgycjRoZTZzQlpBczY3d0U2NFdFWk9hTytPN3laaVkyUE5rcE9nRlB1emZW?=
 =?utf-8?B?TnMwYWx5b2lEV3JWVmkzRWpoQXBhRDlXVUZiS2krc0VldjJTaERCdmwrdTFW?=
 =?utf-8?B?Zjh6V0hpemZQclZWUUluMzNWVEExNGIxTU1aRzNOSkdhL3pBZDdYUGZUaDhH?=
 =?utf-8?B?UWR5SWczUEVTVjV5cFFDdTdvY1NZa3Z2ZzhJbXZHVzFQWVhjbEFNbHFQZ2E5?=
 =?utf-8?B?SkZBbWlDUzVyUlZMeU5VVFlGRFFRTEY1ZUdLOGhrWFNuR2sxRWxQQklXRFh5?=
 =?utf-8?B?Z1F5cnUrT2kvNjFXU1hET3QrQk9jNnBrSVRHcGVhakhoZUkyWTNoSDlVYlpD?=
 =?utf-8?B?MjBIZ3l4djU4bEdlQUZabXhlcmZVZDJSSzdvQXo4Qm1UN2wyWU55b29zWVZm?=
 =?utf-8?B?VTErdWozc3Qzb0VlRUwvZm1ncm1YVkNHQ0VsdTlLR0RNWkk0aGhlejJ3aWVm?=
 =?utf-8?B?L0UzZE8xSzVaaHVkbzZDbWJNRzgxT3FsbUxJR0lBSnhFRTdQU0lMT2lnZ1Js?=
 =?utf-8?B?TVJCOHZsZTB4T0NOMFNSZTcxWWg0SjlDMjhqOTV1eGVJbUJQb0owTFBReFhO?=
 =?utf-8?B?TnErWStRbVh6dHlGUzBnSjh5UG5zTnQ4ZTM2OUJmRjNZMDdHWWc1bUl2RmtH?=
 =?utf-8?B?M1dRNzVUcmNnMFNDSjNyL3M3aGp1VjFhdzlVQ1B2elljajBpR3N1bnJMQndU?=
 =?utf-8?B?aTRxMlBPZUpFbXNtV3MwTnVzdE1jTmNkb0ZrRnNQVnk0Q3pkRm9rSll1RS92?=
 =?utf-8?B?bkhrcXU0MVdDSjU4U3MzSDdnTmtHbFAxck5jOTR4N2tRSURSOUl0T0VBNXpD?=
 =?utf-8?B?OHJEZ2tGWXZtYzQ4UXA0WnlvYmdwZnc1VWZ0WWNGNzNBVnkzNkQzNzlHZWdN?=
 =?utf-8?B?L2wrdll1QnRRN3dYdXJZc1RiWGlwVG9Qb3FsWExrKytxSklPeGVWL1hiTFpC?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81384341-0557-4b06-5d18-08dd9328f2ad
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2025 20:50:23.7113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EjHiX/gJQ9wnLuK33ruW+7c+D1Ohp2vhDD3SN8IkwCevqd9X1qa2M/qc1S54LzFU62Dhq8pGxJPlm2A15+IvRmwQmiiTKmHr5jRu+9yyUoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747255828; x=1778791828;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5/x/P37inqrhhdY65ApaaWmoSrtkA/JzbO4Bmj0TGxU=;
 b=Pj9QCdGumEqO+Lk4F4YIHuY79B7P+bWvuBZJR1Pq7xKgBxtiqE3A2T2X
 PZrgGkYDr3SMIuIV03/9RWK0YoTu9hE2ajZBTIo//S9fB+Migy3hHEBTP
 HG7ZtFmr5XUYlcJmQMH1dWq7kClkPbp+VJmKOxY8S6zyVMYyT0jr/g/3X
 5JeIAFqTxkKiJnbx7ds6E4r1/Kb6jba/njzucjoTioZ9OJXpJxvsNwoqZ
 KDm5CkQ8ohPk7LaLSsKKgQfbeYgnfrFzalKs9dnqYg5wiIOEVlw+Tat9Y
 Wix6ZftSkWVQx3w3w+9oOxtLVLCUd/4hD+aNaIPtIAGHcOt57b+gNISgp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pj9QCdGu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: add a separate Rx
 handler for flow director commands
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



On 5/14/2025 5:37 AM, Michal Kubiak wrote:
> The "ice" driver implementation uses the control VSI to handle
> the flow director configuration for PFs and VFs.
> 
> Unfortunately, although a separate VSI type was created to handle flow
> director queues, the Rx queue handler was shared between the flow
> director and a standard NAPI Rx handler.
> 
> Such a design approach was not very flexible. First, it mixed hotpath
> and slowpath code, blocking their further optimization. It also created
> a huge overkill for the flow director command processing, which is
> descriptor-based only, so there is no need to allocate Rx data buffers.
> 
> For the above reasons, implement a separate Rx handler for the control
> VSI. Also, remove from the NAPI handler the code dedicated to
> configuring the flow director rules on VFs.
> Do not allocate Rx data buffers to the flow director queues because
> their processing is descriptor-based only.
> Finally, allow Rx data queues to be allocated only for VSIs that have
> netdev assigned to them.
> 
> This handler splitting approach is the first step in converting the
> driver to use the Page Pool (which can only be used for data queues).
> 
> Test hints:
>   1. Create a VF for any PF managed by the ice driver.
>   2. In a loop, add and delete flow director rules for the VF, e.g.:
> 
>        for i in {1..128}; do
>            q=$(( i % 16 ))
>            ethtool -N ens802f0v0 flow-type tcp4 dst-port "$i" action "$q"
>        done
> 
>        for i in {0..127}; do
>            ethtool -N ens802f0v0 delete "$i"
>        done
> 
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Suggested-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---

I assume you meant for this to be still targeted at iwl-next and the
iwl-net was a typo?

I'll queue on the next dev-queue.

Thanks,
Jake
