Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C57C0CC78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 10:56:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 290A3840EF;
	Mon, 27 Oct 2025 09:56:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oFuqu_xdh78Z; Mon, 27 Oct 2025 09:55:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74E39840E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761558959;
	bh=nVV5/A3gh337GxVYP3mXD5MWkV8/UO8XzA7+7YztcXA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9kY1YyMUNsC4bX43zR1SthOfHEL0mBD/jWi4gl8mj2iH/QE64y++7zT3mW9cu6ml1
	 YVOZFsgNPOPMSXlM0xQqiEDWHDQeqLIe7tpTPNqu0gJMQsS3nOWwgpCR3n7vOSOlAV
	 lglqHFfhwrEKQUTT0zcYZqIK7hrEKkQz0jFwEbhJOrmMHZiIgGze6Ogz3I04nDTXCC
	 SU/TkhlMvdEFUOtyQk4FXYm4puzcK5mJ20To4ouVGVwQN+rPz6QcfcC6rrRPmC/Vpb
	 ozFDseWdUS2JJTS6Lj8MJgP1n5sE11fB3J40S9q/tiRMN4nSMzzflGmZv9dyFKqYjF
	 aCFs/EYTn6ErA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74E39840E4;
	Mon, 27 Oct 2025 09:55:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BDD243F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:55:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 323D8413BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:55:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pm5E09j7GxtD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 09:55:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57D53413D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57D53413D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57D53413D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:55:57 +0000 (UTC)
X-CSE-ConnectionGUID: Bz0jcg91RYeueO/cfsveQw==
X-CSE-MsgGUID: bCIkEeO5QeOg5LgYvEaB7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81265725"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="81265725"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:55:57 -0700
X-CSE-ConnectionGUID: TfHw2pAlRuGT0fGohlmUIQ==
X-CSE-MsgGUID: kNrkpKOaS76DSjcTCbVG8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184903308"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:55:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 02:55:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 02:55:56 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 02:55:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JMVphIes2sNNd22iamqIjmN/4wmtMZ6ETzb/3eteVBINyXrir/yqJyIBZJnNZ3xM5wtGS3PTSYvczDJ3npC4W8kd6IE7SyGf1CA8C2rSt7bkBXDlZSPTtlxWnI40gosCbSmFfV5j80C9O27hCDoPRWTt1R4eEwt4Rr8dFLERMyqW7x/zdzDZzMds46vd+EvL6rZhd+uBsg6avXYXil1CIbKsdx0vMgHewbobsOOs9/rkz5Akd5dHQhJSwqSGyNNSsz7F59A39CavemGfu4hwHT/L10L4FE6JUGf3YQYwG/xozBUYC3rbO+iN0IWMDeaLmaLVQ016EAbzXcuioDjMRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nVV5/A3gh337GxVYP3mXD5MWkV8/UO8XzA7+7YztcXA=;
 b=H9pWkuwrdTisZGFGafsy9UI3mWOY+YSccj7pGVMwSCBh/BlYKqU0EXN2r+c5Ctwsn9OWqLu3gWyCI+WAt1p1gaBPxNBDz6sOsSHVrssDtyEFvUl2vr2FduZwQxnDJch35j063wRLGpo26ZlGzz817LSU/1Tv7NECtB0uef8LT2LdfZa4NM/tAg8wlZFfaO6GuZQh8CtqV6MI/xSFpVdz1S9WEO2iMporuduc9aBsEycQsFjlgPCniIutNuX2+8eYkEuTe6okJplpxtu2QOH3ltMJlwg0JQK4ZmUhjcSa6xlK8vSa6Cy/U6Fv8/iJVe9Xbp0KC4z8TRqBvGC/g6HBnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 09:55:53 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 09:55:53 +0000
Message-ID: <13c69833-9f45-45d0-96a4-301011d52fee@intel.com>
Date: Mon, 27 Oct 2025 10:55:49 +0100
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, Jesse Brandeburg
 <jbrandeburg@cloudflare.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <vadim.fedorenko@linux.dev>
References: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251020100216.4144401-1-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P191CA0021.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:54e::21) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB4781:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fe88183-68c5-4f7b-e6f8-08de153f0449
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUxTL1dmVi9lSkRya3ovRzRBa1dZRG9hNE1obFdHNUp4QWsvVDdTS3NTZUVk?=
 =?utf-8?B?ZXRMYkNSM3pSaE9YQXRITFVpUkRwaFB5VlhwN0p6YUNSU2J4NFdBQkZmbFFv?=
 =?utf-8?B?a1FKUVRjRlhCWkY0cy9mYi9mMWloNVNCaXdlV3d2Qkx6T1lDTlNiRENJWFJy?=
 =?utf-8?B?UG03NnBoY3hGY1Z0S2YxeTJ1QVBvRGpQZlExNzhCenpuQ3BCTU5tMzdXTGdn?=
 =?utf-8?B?aUF5TkpIV2FhaVZiNmtwQWY1Mm9OY2hmV09od1Y0KzJoT0VVaEVlZHhGckk2?=
 =?utf-8?B?OEFOZWhXSDY0QUlNUnZkWWsvaEw5L3psdUpwbDlhSmFiZ2VvbUFXVWZMSjEr?=
 =?utf-8?B?K1ZhNm84U0syRmtUNURhTjNGelZhL2VhNCtZWWsxQmhSSlh6Uy9rRlh0Z3JC?=
 =?utf-8?B?RG1XQmJvdzV0R3JYNGVIQ3JiTEdhUUFad2JGUU0vNUNQOFR1TUV5YkEvZkJ1?=
 =?utf-8?B?KzFGSTFGL0JtSWhjd3g4NFYzcVYza3JwWFVGdEhwQU5ybTBBT2tWZFYzK3lk?=
 =?utf-8?B?M241VjZOWGJhVnpWSlk2dktiQUJ6MjlxMUpVL2ZnWS9jSU5uaGZOemlIb2ZL?=
 =?utf-8?B?VVpBNmhoY2JqUWdOUkZiZ3IwZk9hZ21OMFE4YVJEZWJmZjNYUXNqNmRvT1R6?=
 =?utf-8?B?eVpHNWFNaGl3OFhmUjJOWnlZT1dlaU5DNkc0ZUlKdldXUG8ycFlFRUVhYUN6?=
 =?utf-8?B?SGtEcnA4QlN3WWZEdUpWbXZyM2orb3YrbjloRDdkZjhOYkQvcWpnZGg2eEFh?=
 =?utf-8?B?STM3dEhMZXp2M2xvdWVDNisyV3NNbFlNNHBFdExnWDZVSHQrc2tiUVhIVzJO?=
 =?utf-8?B?aUxzZG9samtyYnpDcXN1L25GWkFhdUxSaGNONXJqTVlEOFpqdDJrb0FnanNs?=
 =?utf-8?B?YU9kYm9wWUY4T05rSUpaS1VFQmcxMHpjbEVkR2RsWVdhcG5PYVBlVndKYkla?=
 =?utf-8?B?L3h3bC9mb2RPclZMbXlSSGdnd1NiZE56R0dmNDB1SjUzeHNVVU1sZi9MMmRj?=
 =?utf-8?B?UDE2RmhQRzNDa3BIQmZhd0djaFgxOTNvZTh4Y2pJdmF3ZW5ZKzZmUlVXSGVm?=
 =?utf-8?B?bS83d01XTE1oWS9JWEZlL3FFY1dQb3R5QmY1M3BscXNEdFdySmRrMmZqMkxh?=
 =?utf-8?B?RGpQK3dPZUw0OGNMcUF1RHQrRTRDdUQxUGFzUFVtNVBmK2pKTENnbDFkRmp2?=
 =?utf-8?B?dmExSjhvLzdUK0hpc21YdWpwT0cwRXJFK0NZSjFWZUhpdUpYYlMrUWg0c2JJ?=
 =?utf-8?B?RXl6L0IyL1dFMURZbmF0MHl5UE5pM0tvYjZvUVZKdzJpeUZTdFB3LzRMSWJl?=
 =?utf-8?B?a082d2cwVjF2YXBVY2Jrb2Y2cHFjUC9iREZMNEFHbkpPTXBpYVNOa0hUdG92?=
 =?utf-8?B?VkJkOUVOZ01qV0JYdXh1cWtXVjlTV3BqY0RQLy9vK3ZEYkFtMXNtSlVDTU5K?=
 =?utf-8?B?WUF3Tm9YdHgyNUpLMW1SZDBrMm5LNUx2M3BTL2NmVFk3Uk9sUzRZUnJjanBQ?=
 =?utf-8?B?QjdSVlZ0YmY3cm9ibGlSSFpUbVhkQU5MYTY0QWYwK1J5dGVSYTlmVEs2QXp5?=
 =?utf-8?B?M2VZUytnNmJrOFhNc1FObEFNY3p0UVBqTFNIVzh0aEhvUnY4bUloQ05qUnR5?=
 =?utf-8?B?bGU3bnVKQkpvQm8yRmx4L1Buc0dYSG44Vmk0UGc3bjRpWDVIVDc1RkhqV05p?=
 =?utf-8?B?NVZRbS9BTWpNMDNJVVd1TkNic1AwM05oU1lnOUg1MXlMYnM5MytCY2lYN09l?=
 =?utf-8?B?U0UvZzJxb2NBZ1huNTRxK1RBMzBBUVdQTWV4TnF3VCtTOW95R0IrcS9QVWJY?=
 =?utf-8?B?STEvU3ZSSWttKzF5UWUyRXFKdzY1cjJaRSs3Q0pLVyt3dStRbitnYXBkNlR5?=
 =?utf-8?B?WGRSQUJsa0YySXhBbEtCaTY4K09aSkdBbi94VU5HOWs0RjM2b2oyaFdRSmdC?=
 =?utf-8?Q?6ePHG1d9KTDBs0YgcLhKUgDP2KW+ktXk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUp4dUw5RGF0ek5sSUE5Um9MZkN0NWdMZjhtdUlDTVhTeS9hV3pxRG5uNVRZ?=
 =?utf-8?B?TWdQOStFUXlRZzZDN3dMZDZBTkRkYTFUdS9BU2xSTTRvUkdDS2pxUHZLNk1s?=
 =?utf-8?B?TkVRbTVQLzIxbVR5M3ZMZjFxWm9ySjgwRHhnMVlld3Z5YnVKUEUvUWt5N3Ji?=
 =?utf-8?B?U3JlNU9EaUFxR3o0NEVrbFREbE5leG1oU3JNbnZwUUwyLzBNQmhKckNNWUtE?=
 =?utf-8?B?NlRaWHFMcU03VEc4S21zejlEZVFDMEx3WTdFZG1vZ3FtT1VGSm56djNQOER5?=
 =?utf-8?B?UWs0aDRXcVlOZnhpZ2xmYkVsa2ZYNWd4Z3hjRFYzNUp3VWJuUXVtUUZYT3VL?=
 =?utf-8?B?T3hpcWZyVk00UXgrMDlGcDdDK1B0akpPeC94ZElXVm9FdFZuMWVpOHcyQ0tv?=
 =?utf-8?B?TmJlZWhJdHVHYWJFa3ZsdlJaSGpJTlNYclY0R0t3L0RRWk1EQ3ZSWkFMeFV6?=
 =?utf-8?B?Ry9IYmUySi9uRVlINnNqdEt3MGxicjI4eEthZXhkUnJ5aDJsbXU2ejZGUkp3?=
 =?utf-8?B?c09DYjBWYmdPRGVNM2p3TFhHdDN4b2x2b3FZaG1WUkdIQk5XWTFGdzhCZlhW?=
 =?utf-8?B?emJPZjVSSFZ2QndIZDlpV3ZYZzMwNC9iU0NVemhoT0d5SWZXVnRRbkZZSUpy?=
 =?utf-8?B?VXZGejE5TmN3amVIWHhLMVhoVlY3OVZzSkdUMko5eFI3NFlwelZWZUlIWDRN?=
 =?utf-8?B?bEdkbHVKMHhZVVpERkwzNklIN0Z0eVhiU0UvVHRhekVLT0RSR0VsU25qcE44?=
 =?utf-8?B?WHJOOE9yM1d5aWF0VVZ2eGQ5NHRBZ2xob3lnZGxrSE5uNWtZS3A0MFRmZC9J?=
 =?utf-8?B?WWJzRnhiUXVSWjdpV1QrcCtIMnBxZmc4bFVJTENjL09MNk1NZTFqSzQ5cVBz?=
 =?utf-8?B?Q3RCMjhSNGlOalgydmtSaG50SEtUOTVvZ3dXOGhJWXF1REZBbitDT1Y5Tlcr?=
 =?utf-8?B?TFBQQkNad09OZDdXcVJjRkl3OEJTSHhxZjlRU1JZVjBKZXN3S2VxYnNCcGFo?=
 =?utf-8?B?RmJnRlRRL2R5cXFqaDZOYVNJL1JhcDQ4QlVTQnFtUVh4NkxJZDM1M2NXbGdn?=
 =?utf-8?B?UDZMdEl1d2tQbEZRVHNZUTA2NmxuRE4zd0thWWs3MzdqWlhCSkFPcWN0d1E5?=
 =?utf-8?B?UVVTbDZYMTlVQ3Z2Q3JVbGRCdEpPMjZkNGRGVUxPc3VJUzJnei9XcFp0Z2t1?=
 =?utf-8?B?c3NjdHhZRE9XV1JBR3FOSkpobDFOVGp0cWFlSXJNUHNybE9iSTF3TE5DWVU5?=
 =?utf-8?B?Q1VEM0pwT1dmY0FDRTUzOTV0Yk5TdWU3MnRMYStUUjdBalc0a0VoeVRYUE1o?=
 =?utf-8?B?bFFmSm55VG9MZzhWdkV6a1AxN2VzNEpnTnRaMEVRWmN1Q00wUFJyNUNVODRS?=
 =?utf-8?B?S3dPQzdCU2NqNFZsMWlkT1lUZzlKMWVKUjVZRWp4VDY0SU1kbnl6Z0RjOHJW?=
 =?utf-8?B?YW1oYmVRV3o5N0VIVVJjdi9SaEtJNFVmb3JML1ZGT3pLOCt6UTdOQTlIWmhp?=
 =?utf-8?B?SmtpdmhxT3Rnb3NZdFhIeU9TUjY3UCtnOTFuR2VyOU5OcmorVm5KMkVCeFNi?=
 =?utf-8?B?RTdnWVlLT3N1Nm4wU0hxZnBDTVRHQkkreDNDV1N4VkxPUm9ZdmNMUTM5N2VV?=
 =?utf-8?B?N2diUC9FeStIalZkcHNmby9qdzAwSVczbDZWK25HV0JMVEw1bWN0eEhtelln?=
 =?utf-8?B?UHIzTXdOKzl0eTJWRU9vcENYczQ5TGxkVW1KOStrQWY1Q1NxSjg5SXdCeFdG?=
 =?utf-8?B?Q3ZWanJXVlJVM1dmMGtZT1VMbjl6d2QxMWdKckphWHNCbkJ1bnNyWThyU2k0?=
 =?utf-8?B?M3o3U3dsbXBKWUR0T0R0Rm1TN2hYd1hYbGlTRzZqWEJENXI5WEk5c29HOGVq?=
 =?utf-8?B?MmlnTWFsQlVScXVPazVISmRLa3RvRFArd0lVNENkcVkzeXRkeVV5aDlyVHRh?=
 =?utf-8?B?eXlaWDZVcVRaQWdKYlZ4UTYxejA3cDJoMGYvalFiTkpTTjlGWnpoWlJwOGIw?=
 =?utf-8?B?cWNtMTQ3cyt6a29oenpRUVlvTDdLTEsrZ1BpZjFJWGxvL0FoQlZXQU1hM1pt?=
 =?utf-8?B?MGdKYUJxSWk4T01WNVlDR3hZS2k2WjZ5L3QwM1BUbHRqMXArZm5RRk9GVTYv?=
 =?utf-8?B?SUFLKzd5NXFRWEJ6b21aelovUnVEQXNhWG5PbVNIcXB6bjNFNXVWOE03NkJW?=
 =?utf-8?Q?xGg1L1fGHo1fW39WyFcTL/c=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fe88183-68c5-4f7b-e6f8-08de153f0449
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 09:55:53.3718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ILbQKqCQ1qYbb3vHgnkYfI+9P5pn4Cy5+g6s7yCGw551IkdACh1q250+saaVm/ymjEGyuTtLRkSzyfEZQcRd9FR6HXU7FWIWAur+NC15hTk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761558957; x=1793094957;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2e0LNS8uG3CtZ2zEoBOWHmogHman3crkoGrcQFiUlOo=;
 b=AYKyA6sW/bAUA7hJ7mKRsyM+lJw35t0VbRUpTWLrzrR245W/vDAAlOgg
 SiuU6P1eteQX/yDlzOty0jiS/MVjSG50NOMJI40r2JWjX96sCuJPvdaCK
 KP8uqILj4cfY2DOFvT6g7YuIZ5xTdTwmSYnIftSKz+9PxNOeteeebLM5z
 WIZVhtUtsgNcPtafVL8AIoOckt+QTbLYb2B2ACDYm6EBuZtcA4I9ffnJa
 KQSI75stYCnDhxCbOTxo1ydINNN2/ipZ2wlVru24wn8s9iCqL92bU71EO
 dGHrvdXmpyHB4TC0g60wi4UWXCDHrQ3k9f/MyUcr+nbHN4qlayAmPqvSY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AYKyA6sW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix PTP cleanup on
 driver removal in error path
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

On 10/20/25 12:02, Grzegorz Nitka wrote:
> Improve the cleanup on releasing PTP resources in error path.
> The error case might happen either at the driver probe and PTP
> feature initialization or on PTP restart (errors in reset handling, NVM
> update etc). In both cases, calls to PF PTP cleanup (ice_ptp_cleanup_pf
> function) and 'ps_lock' mutex deinitialization were missed.
> Additionally, ptp clock was not unregistered in the latter case.
> 
> Keep PTP state as 'uninitialized' on init to distinguish between error
> scenarios and to avoid resource release duplication at driver removal.

+Jesse, IIRC he was reporting an issue that this patch should resolve


> 
> The consequence of missing ice_ptp_cleanup_pf call is the following call
> trace dumped when ice_adapter object is freed (port list is not empty,
> as it is required at this stage):
> 
> [  T93022] ------------[ cut here ]------------
> [  T93022] WARNING: CPU: 10 PID: 93022 at
> ice/ice_adapter.c:67 ice_adapter_put+0xef/0x100 [ice]
> ...
> [  T93022] RIP: 0010:ice_adapter_put+0xef/0x100 [ice]
> ...
> [  T93022] Call Trace:
> [  T93022]  <TASK>
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  ? __warn.cold+0xb0/0x10e
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  ? report_bug+0xd8/0x150
> [  T93022]  ? handle_bug+0xe9/0x110
> [  T93022]  ? exc_invalid_op+0x17/0x70
> [  T93022]  ? asm_exc_invalid_op+0x1a/0x20
> [  T93022]  ? ice_adapter_put+0xef/0x100 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> [  T93022]  pci_device_remove+0x42/0xb0
> [  T93022]  device_release_driver_internal+0x19f/0x200
> [  T93022]  driver_detach+0x48/0x90
> [  T93022]  bus_remove_driver+0x70/0xf0
> [  T93022]  pci_unregister_driver+0x42/0xb0
> [  T93022]  ice_module_exit+0x10/0xdb0 [ice
> 33d2647ad4f6d866d41eefff1806df37c68aef0c]
> ...
> [  T93022] ---[ end trace 0000000000000000 ]---
> [  T93022] ice: module unloaded
> 
> Fixes: e800654e85b5 ("ice: Use ice_adapter for PTP shared data instead of auxdev")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2:
>   - rebased
>   - complete full cleanup if failure in PTP intialization path (no need
>     to do a cleanup on PTP release then) and added a comment with clarification
>     why keeping PTP_UNINIT state on failure at init
>   - setting ptp->clock to NULL explicitly in error path
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 22 +++++++++++++++++++---
>   1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index fb0f6365a6d6..13b73f835f06 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -3246,7 +3246,7 @@ void ice_ptp_init(struct ice_pf *pf)
>   
>   	err = ice_ptp_init_port(pf, &ptp->port);
>   	if (err)
> -		goto err_exit;
> +		goto err_clean_pf;
>   
>   	/* Start the PHY timestamping block */
>   	ice_ptp_reset_phy_timestamping(pf);
> @@ -3263,13 +3263,19 @@ void ice_ptp_init(struct ice_pf *pf)
>   	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
>   	return;
>   
> +err_clean_pf:
> +	mutex_destroy(&ptp->port.ps_lock);
> +	ice_ptp_cleanup_pf(pf);

the order of calls here and in ice_ptp_release() is different,
it does not matter now, but would be nice to have that aligned
(but I'm fine with merging as-is too)

>   err_exit:
>   	/* If we registered a PTP clock, release it */
>   	if (pf->ptp.clock) {
>   		ptp_clock_unregister(ptp->clock);
>   		pf->ptp.clock = NULL;
>   	}
> -	ptp->state = ICE_PTP_ERROR;
> +	/* Keep ICE_PTP_UNINIT state to avoid ambiguity at driver unload
> +	 * and to avoid duplicated resources release.
> +	 */
> +	ptp->state = ICE_PTP_UNINIT;
>   	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
>   }
>   
> @@ -3282,9 +3288,19 @@ void ice_ptp_init(struct ice_pf *pf)
>    */
>   void ice_ptp_release(struct ice_pf *pf)
>   {
> -	if (pf->ptp.state != ICE_PTP_READY)
> +	if (pf->ptp.state == ICE_PTP_UNINIT)
>   		return;
>   
> +	if (pf->ptp.state != ICE_PTP_READY) {
> +		ice_ptp_cleanup_pf(pf);
> +		mutex_destroy(&pf->ptp.port.ps_lock);
> +		if (pf->ptp.clock) {
> +			ptp_clock_unregister(pf->ptp.clock);
> +			pf->ptp.clock = NULL;
> +		}
> +		return;
> +	}
> +
>   	pf->ptp.state = ICE_PTP_UNINIT;
>   
>   	/* Disable timestamping for both Tx and Rx */
> 
> base-commit: 978b03527a6c24f908b24c51da32daca02f0fec8

