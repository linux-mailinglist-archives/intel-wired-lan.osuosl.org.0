Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C14D94A91D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 15:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F5CE405E5;
	Wed,  7 Aug 2024 13:54:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A-UTuh9WdO-o; Wed,  7 Aug 2024 13:54:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A332405D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723038891;
	bh=HLcA3EiePx5Qni9bLNEdfG47w2YEY1r8hoKIMsIb1BY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YQuW3ogkqWo4tAFC37r22t5s+szAsh7PuN+eTBOI2D1qGjZq1xlD4Vo8cR8fzKdL5
	 U8u8CF/OaeDv/JuA9HSw6n2T6UwajFDF5TCLhlstxbSbnOVKUXphG9vW0ikDi99nOw
	 ra03xGJkA8p/7w2A1t/pegqdjSG01qIgFouzRd8z+s8XOqLCPqFWGAMiYY+xEYF02+
	 u49iyQVC7X28cA/YRjRw7mFKliU0l88mYYD61jj0ybMftY2dK9z4p58irtPAYa0Hxj
	 AKrOqr5sOG+rqbChxiig9LKxzYzxyd7pAtrq+ExymD5Tb1NMp10JPhfluoVnDoTdcq
	 qoH5XO3s9BGSg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A332405D1;
	Wed,  7 Aug 2024 13:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 218F31BF40E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 13:54:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C6FD40263
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 13:54:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jMDJ415omEVY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 13:54:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2F0340184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2F0340184
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2F0340184
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 13:54:47 +0000 (UTC)
X-CSE-ConnectionGUID: t1XPaq69SIeNi8Yflb4f3A==
X-CSE-MsgGUID: iwtIm/WPTMKve60pG7kbWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="43631298"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="43631298"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 06:54:46 -0700
X-CSE-ConnectionGUID: eTaNqD77Teu1+Q2OJLd09A==
X-CSE-MsgGUID: xVuLwOx6RpuFCZL/7JUpWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="60984185"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 06:54:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 06:54:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 06:54:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 06:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uQknWLmmNGBNN5huYSNIeiid7YSWrEGqDcyWqDQVYO/PpyHGsJ3n/4ibtQLOsxnRD4v35ubPuqrRI4CeCTVjho/xh6n8dw6wf7A5H+UIHDXoXH7RoOlQSeLZpNAcEnUP4kAEC8nZjMj6xvKUMEiAHYnXnTcl9sY1mpJmlYPROnTlQBtBAj0dLKvSXf8i8LjTKsN1o6qSEiwoORfUTEOyNeO66trSPqPf+LiXij8C34FZvmqrVcNIKThhg/WorVEVPW7m1CGm+phkOWN3THSEu1+g1sW54gajl/dbfpaG/u+es7dePL+ldsggD7LMjcwcRyWAQvC+b459UWBLsw3sbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLcA3EiePx5Qni9bLNEdfG47w2YEY1r8hoKIMsIb1BY=;
 b=aa1fYPTrvY9XycYfEI2lRktS8X8hfAoedjvM4I/HDKhJlT5hzKvCvF7tsOfyZrn3QF8LPgLzXhakrbKuOqBDwkgviUoUUaMi0acqBRZ3jsmAbgpVKOAeeRVKshKfG/WmR9avnL30xshfCYLxkHM9rgsVYaNXUa2sbAiMOUkcRx8pdRqaxDDLP8IUezoi9usUZfxB2GJnYICs8oiRoQZo2HZr7BIoAhXwhM2olCHVIhpqhFYMrOvefvVEAnWfpgKf3Ss4m9P2Q6VMSZFXK/UvHLIq1jnzPq0q2h2ZMel4EKDIAjFytBIJ/4rqIwKN3IIbFlEyBB+Les2NWwYKc0PxTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH0PR11MB8189.namprd11.prod.outlook.com (2603:10b6:610:18d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Wed, 7 Aug
 2024 13:54:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 13:54:42 +0000
Message-ID: <e54793ef-f81c-447a-8cdd-bed97df65f2e@intel.com>
Date: Wed, 7 Aug 2024 15:54:37 +0200
User-Agent: Mozilla Thunderbird
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
 <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
 <IA0PR11MB838091A67C0AE3598BFCDF8D86BE2@IA0PR11MB8380.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <IA0PR11MB838091A67C0AE3598BFCDF8D86BE2@IA0PR11MB8380.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR2P278CA0086.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH0PR11MB8189:EE_
X-MS-Office365-Filtering-Correlation-Id: ebf26496-9db3-4265-2199-08dcb6e87ce2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YnUvL2RXUVA5Rjlndzc3N2Npd1dsMmRiMm95ZUcrbjd0V1hoR01vRWUzVXRL?=
 =?utf-8?B?bzB5WStSZGVwYkxYbFl3TVpnMHZUTFFBTjVBUFJiRFZqM24vOXRmb3Zaa05D?=
 =?utf-8?B?NXd5cE4ydTExWFB4RHFsREMrY0o4RVltL2ZsZFZIUVl1eTdlUDMvcHpyQTRv?=
 =?utf-8?B?blFTT2hxbDdsODNhdU1PNmg2Qy94Slg4b1htWHpBVnE2cVJodzBEWkszU3hN?=
 =?utf-8?B?cU81TzMvelpvWjllZkVucUxGdERMOFl4SXE4TVVmNGhGZEluL1k3ek5YV2pi?=
 =?utf-8?B?N3AvUTNRRW1NS05QS1kwaU1zK1hibDJINGlMTXFBMkZ3TkwybzlKTzczTlRq?=
 =?utf-8?B?NmY5L2lZN1lQTDBHL0Jnb1NXV3hMcnB3SFB2Rzlpc3hDdWthNVBDUE5mNWxn?=
 =?utf-8?B?NDB5YncwSVhBbzg1OHk1cnAzNkhycXJXVWNCek9TVENiNFlVWHM4RmhVa3F3?=
 =?utf-8?B?cW96ZU43VHhrclRkR0RtaUM3NXVERVFRa203WTh5d0pTSVpUNDAxanQ5b01D?=
 =?utf-8?B?S1JheG5rRjVMVVJhbDc2L3RwOElFcUVpNG5oN1NmWVdyRGczWWU2WDFLRkZt?=
 =?utf-8?B?bVk4b29vN1ZXZy94UFQwQk4vNXZGRG14Z3NZVENJYXZyS3Ixb2k5cWU0dDdr?=
 =?utf-8?B?MGhqU01MdHFSZEtvL1NjN05IUXUveGd4dHNpZnNNa1ZUMDc5NTRVRUZvbDRa?=
 =?utf-8?B?UVkyOTlyZXhwMlJhNm1qcGFCUHdUWFZ1NGRnckxRWURmbE94ajlyYlIzMlVY?=
 =?utf-8?B?Ly8rMWNhQWIyMUpjeXUyZ29rZzkrZEJadVo2a2h3NndnVVRCTXUrcTBJWnlp?=
 =?utf-8?B?QldONFMrOXRsSnZxMDBjR1BNVkp5dTNxeEFBVWxlRFlpVUdUNkp2Y01uV3Ju?=
 =?utf-8?B?YWFzWTluRHRNN1BmZ1ZwbUV2TG1Nc1k0cjFsN0ZVSk1rbU5nVHdwdkpveHRv?=
 =?utf-8?B?N3M5bHlEeHVVVkJuR1Y3MHFLcU9GemNPeitKSWJrSlJRL1c3RzVjc2dpVjZS?=
 =?utf-8?B?aC9qaXZ3VVdNZGFaTExYOVc3a2Vac3U2N2hLWnNXTVpYQlhtaFZUbXZqNEpG?=
 =?utf-8?B?b2hNejNrZ1U3RmpZbVltTWc4SE93T3FiUXc5SW5UaERwRWdDTTVRZzlMU3NJ?=
 =?utf-8?B?WWFGdk05K3FBUHRsellRRE53eXM1Mmhld1hMRDBkMmFzamk3UjhYTzlnaHNT?=
 =?utf-8?B?cXhtZm1KMmZrQXFJYkNUS3pYQ0RDaGYrcmR0aUUvRmoyL0NkK2UyRll6ekZh?=
 =?utf-8?B?MTdZSUJRMm9TTC9adkEwazY2OUdTWlRYdks5bmZhVEpPMC9lVUg2enBVY2R6?=
 =?utf-8?B?OUNkUVg2aG5rZStPcUg3Umw2YkNiakpGOGdnQWlpWHlJL1daSko0L0VsRXBJ?=
 =?utf-8?B?NG05b3E2YUdxTk44Qjk1bFk4SG9EaWZENlpsbmZUczNISGdvVXVPTDltdTFa?=
 =?utf-8?B?K1FmZDJoMS84YTBYTS84cTFtRmdtK0sxWWtCcGJOWkdqdEY2STQwUVhUMlRL?=
 =?utf-8?B?SWdRalFIM3dySGQxUGVOcFRKcTJHTEJNS2Q0NzRiVEFnLzNhSGJtT2dMUmVK?=
 =?utf-8?B?QTFjMkUxazg1Y2o2VWlGMU83VWt0aFNBdTd2cDFhaENnTmFMU3Z2TVZOK0Fr?=
 =?utf-8?B?OTJBdTRGbUNuRXN4aHN5YVhMem1pc08xVVFxalhCRVNRQS92bVBOL0JPb2s1?=
 =?utf-8?B?U1RhUjR1cVUxSlROY3ovZ2NPWCtvWHhhUWZsRERBZTZGQnBPbVFjTDY5VitW?=
 =?utf-8?B?UkV4a0FWRmtRSkJXbzJ4S2tyRTJxQlVSMHRXaG1BeW1NUTcrekpQUkVlTTdw?=
 =?utf-8?B?RGdDdWIvQy9nd3hEYVhJQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0crbWdLWktvWm5yTERJb0ZHVWszK25rVmhPRzRGd2pwZk0zRUZBdFYyUnYr?=
 =?utf-8?B?SFhsTFVHQUZRR3VITFFhWGNpTWgvczRvMjJYRkJRRC90RXBCcC9aUGFuRVVH?=
 =?utf-8?B?RWtucm5QWkN6UEREWGNEWG9qRGNKbDUwbXZKbFpHK3RqQUh4RmJWMTg0TnNx?=
 =?utf-8?B?ZHpCdTZFZ05jV3EreUoyR0s5V2pUQXFkVHVhRERIVmN3a0RVSlp2ZHNhSGoz?=
 =?utf-8?B?dWQwcE5ReE9VMDF0NG5jQXdCa2ZwY1FNWDNoUFNhanUwWVB2K1IvQmU0dnJP?=
 =?utf-8?B?bGI1cjROYlAzcWVLMW54QnU1bDg4aFJHd0ZjSlVxOTI0VFQ1aFoyMDNFUFBZ?=
 =?utf-8?B?TUh6aHJ4SEFGREk2VlE1NnhlMG0yUVp3bjZVUDdHWWNQMkZMM2EzQzhlN0lS?=
 =?utf-8?B?ZjdKUjNTaXh0SmYwUjlKVnR3TXZHeTdMcGdsWHBEb0RNOG5obVJpZ1FHSWVU?=
 =?utf-8?B?SHZBWGtiY0dKZ3E2TS9aMEF0ZzFYdEpHT0pWRWJRSW0rdkp4ME4zSDVFaDV2?=
 =?utf-8?B?TmdHY0tWTmsvMjFIL25Fbmc3bEFYUDY1SUZ1RkJCMlFaK3lLUFQyek9wK0JC?=
 =?utf-8?B?UFJBQlZwMTc0VUIzdUhTbDhzcXBHMnBNTjBicDRIMVYrMmhqUWxPMElwUk5B?=
 =?utf-8?B?dmZtTXpnY053UGxCOXg5bmdpbFhteFhLa1ptUHlBWTJtRUVEYnBEbGVjV3Jo?=
 =?utf-8?B?SGtJdDMzS2ZxUnBYTit6UkowTS9YbTRZYUcvbmZqWDAvTXRRWktJN0Jlb1Nw?=
 =?utf-8?B?cUZqdndwUUNMZlU0VHVTbFg4RFc5R3dtdnRobDRTc3N1c1R3Z3N5dSs4elRE?=
 =?utf-8?B?dExVb3BBVHdYYy9CYUlrSXM5S3hQQUJEdmg5MEw5b0lZNHlBaGhURkpJemRI?=
 =?utf-8?B?ZzNQUVdLZ3VsSkk1MUllOVdkdG9BSnFLRExtQjBWMXV5cXJQWmthRXQrVGVS?=
 =?utf-8?B?WmNFYzRnTzlXRGdmN1FncXJTa1BOd0orZ2xKRkhMMkQrejVQTUMwNHRLK2VC?=
 =?utf-8?B?bWJaK0pwdEk0R2czdDhndzRIUlBJaldWaG14dkkxbGJuRU5iVjRnT2lJU243?=
 =?utf-8?B?VWtjTnY5MDczdGF1bFlCQ3JFNWJjWTAyQXNVQkZnUWJpa2hJK3FKenIwS0V0?=
 =?utf-8?B?WVl4UDZJTXdFMTcybmZrc3NoSFJ0SmxCUWVMckVqMjhkRW9MOWdnNVRCcUhu?=
 =?utf-8?B?MGVQTi9YdytaRDJIWFRPbElnTUhTd0dPK0hPYm8vV0VvTktVK3JRUUp6b25R?=
 =?utf-8?B?VFlBMFpRaElGQm50b1hMckc4VXU2Nm9NYUhkMEpOdGU2NmVqNFU0ZktmVkdR?=
 =?utf-8?B?SFZCL0hxRW1DTHc3MkNtNmk3cXVNZ1FqNnB3SjlKdDNNVFl6cnJVeDFWUEZj?=
 =?utf-8?B?TUxENlJYYUFxaTVEVWVCaG80dWdWY1ZoTmFSQUsySk1Vc2tkVUdrZk1OSlNQ?=
 =?utf-8?B?RzVFY21sZFh2N3lzQkd6K1pocDdVQWZZVGpqbFB4V2JWUEhSSllaYjJCWXhl?=
 =?utf-8?B?amhLcUYxQjZPL0NGZjhQNzFXd1V5S1o1VXdtcHJBaTlZNFhsY1VwcnNzQU8z?=
 =?utf-8?B?SjNxRk8ycXJLSzZHTVhWN2hvOHRHNUc0QVBndkFoSjg1VXlaQXhkNUxjU0tm?=
 =?utf-8?B?aDhtSkxZOXF4dHF3ajRPUEEvaW1zZXRZcHdqb1RGWnNRUzM4b3hxWFJIdi9q?=
 =?utf-8?B?TFFXTHZ4RCtjSkd6VExHSE9aRnh3a3Zzcy80OVU5dnppalBQNHk3RHlEdWg5?=
 =?utf-8?B?cXR3SWVibGFkeStZN21qdUZvYjZiaVhZcFNUMit5U0x0S0thamczMURaS3Ba?=
 =?utf-8?B?R2NueG10aWxER1BjTDlrcFZsRSs2Mzhnenhwb1Z2NlZ4aTQ0RGJ2QnNvSmwv?=
 =?utf-8?B?enJqUFVUY3J0RXBSaFJMOXE2bndNRzQyWEdQYWNtbnhYTkwrTmVFL3h1Sk1O?=
 =?utf-8?B?dHJOQXVzOGFiTm52UjRFemdpOUkwOGhJMnpTZDlkN3g4V2NvaXVha1F4REVz?=
 =?utf-8?B?M3Q2R01POEwxbzlmVnlWTENrbkVYOU5GM0FDajZHZjhrV0dreFNENFFmamFp?=
 =?utf-8?B?dDhVSUZtRElNSHRnbE9semt4aWw0SFVPajUyWUxFcSt4TngyQ2h1NnV3UWFT?=
 =?utf-8?B?N2FkNm9CN0RTMDliNTYySWJLN1lVcVVTa2ZkS1lBZzUvYnJOY3BWOVBMS0ZB?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebf26496-9db3-4265-2199-08dcb6e87ce2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 13:54:42.6316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gV9xYyZGw7z79MsXrxAztgU8xKn3VUg38xrMfYzCGK5SVZM19qiCvUCQiaDim5DK41LAEKG1rODkaUm4+EWkMngq6FYs3T+Q5nq+GdzibDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8189
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723038888; x=1754574888;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fji/fzYH+9OrzTfcqwZdOiwEE3nIA7tkeOZc46UTkCU=;
 b=LQwinRgS70TlBS+1N2UlLIJa4p8CLGxBO5ZupvWKJowocqJ+u8l3QbUv
 Z2Ch+DRQWgdryr5S0QPfTr7r9DjSn4KK2F1D6az1Dp+gOJXj4tMd3ecG+
 7gsx0hY7w+vLZG1g+ClSUoQBmd+RqO4OYm1ApgXdj7xCrgdApNcYOOr5g
 G798aJxHLT67sPP32KwPDmGlSQbs8hJ8gGq+WyKha0vBv6/II4rK4emsc
 K7GAFod/8FIC09sGjMJD8NmcE+13kJuSvzCrlENRGIo8We3a+nJGgi5Yh
 ykIl8WRVsi3yKYiPIFLhVlbl9P6R7zYyojV3FIFYdAnYByCcGZlCT4EEX
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LQwinRgS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kolacinski, Karol <karol.kolacinski@intel.com>
Date: Mon, 5 Aug 2024 18:21:39 +0200

> From: Aleksander Lobakin <aleksander.lobakin@intel.com>
> Date: Fri, 26 Jul 2024 15:37 +0200
>>> +/**
>>> + * ice_ptp_set_funcs_e830 - Set specialized functions for E830 support
>>> + * @pf: Board private structure
>>> + *
>>> + * Assign functions to the PTP capabiltiies structure for E830 devices.
>>> + * Functions which operate across all device families should be set directly
>>> + * in ice_ptp_set_caps. Only add functions here which are distinct for E830
>>> + * devices.
>>> + */
>>> +static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
>>> +{
>>> +#ifdef CONFIG_ICE_HWTS
>>> +     if (pcie_ptm_enabled(pf->pdev) &&
>>> +         boot_cpu_has(X86_FEATURE_ART) &&
>>> +         boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
>>> +             pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
>>> +#endif /* CONFIG_ICE_HWTS */
>>
>> I've seen this pattern in several drivers already. I really feel like it
>> needs a generic wrapper.
>> I mean, there should be something like
>>
>> arch/x86/include/asm/ptm.h (not sure about the name)
>>
>> where you put let's say
>>
>> static inline bool arch_has_ptm(struct pci_device *pdev)
>>
>> Same for
>>
>> include/asm-generic/ptm.h
>>
>> there it will be `return false`.
>>
>> In include/asm-generic/Kbuild, you add
>>
>> mandatory-y += ptm.h.
>>
>> Then, include/linux/ptm.h should include <asm/ptm.h> and in your driver
>> sources, you include <linux/ptm.h> and check
>>
>>         if (arch_has_ptm(pdev))
>>                 pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
>>
>> It's just a draft, adjust accordingly.
>>
>> Checking for x86 features in the driver doesn't look good. Especially
>> when you add ARM64 or whatever support in future.
> 
> For PTM, we check only pcie_ptm_enabled(). PTM is a PCIE feature
> supported regardless of arch.
> 
> The two other checks are for the x86 Always Running Timer (ART) and x86
> TimeStamp Counter (TSC) features. Those are not tied to PTM, but are
> necessary for crosstimestamping on devices supported by ice driver.

Ah okay, it's not tied.
So, instead of asm/ptm.h, it should be named somehow else :D

But this X86_FEATURE_ART + X86_FEATURE_TSC_KNOWN_FREQ check really
should be abstracted to something like arch_has_crosststamp() or
arch_has_tstamp(), dunno. Maybe to the already existing asm/timex.h?
Then, implementing this for ARM64 would be easier, as instead of adding
more ifdefs and checks you'd just implement arch_has_tstamp() in its
timex.h (I've seen Milena'd been playing with PTP on ARM).
At least that's how I see it. But if it's fine for the maintainers to
have arch-specific ifdefs and the same code pattern in several drivers,
I'm fine, too :D

> 
> I guess I can remove checks from E82X since all of those are SoC, so
> HW always supports this.
> 
> For E830, I see no other way, than to check the ART feature. This is
> what the HW latches in its registers.
> I think we could drop TSC_KNOWN_FREQ check since there's new logic
> around get_device_system_crosststamp() and cycles conversion.
> 
> Thanks,
> Karol

Thanks,
Olek
