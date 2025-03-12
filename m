Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C62D9A5E7C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:58:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 360B182C75;
	Wed, 12 Mar 2025 22:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-gnOgf8RDnO; Wed, 12 Mar 2025 22:58:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5597982C35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741820316;
	bh=6yvIyuTCV8MGlccwNjkdsojbIXAA9gOnWE2uR0fw/Nc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LSDuTNY6LH04ATxpTDgijIe9ud+mHMHzgugngnP6otJ+2bUtOoepCQXJjMAjok73d
	 llPTt5KAgS+aJe/pno5WTnk8/hbDVX6kCLY7wUacqt1tIv3ZWK+d5wbiY+1yVhpuAf
	 9LpShz+FR2KQKpeFYu24H3tfUhA8wZAX3DfC59+UUMQKkjtQeo05qLEWbbzPZI94vY
	 tvZmUraTiySXhq8Bvr2S8qyUwiTJKNTZRa+dedGOw7QAZMQuVFh1PJ6xXYD0ODH9ye
	 CXjgowqEayDpUnzbmnpBosyJe+xEXdrByVOQibc0u3FJffNnEOjw3eKAn4jK0MEpeS
	 1eDaSNyT8WDqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5597982C35;
	Wed, 12 Mar 2025 22:58:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FCD31E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 794C7411EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EhIrXPKFLOAT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:58:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B680410D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B680410D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B680410D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:58:32 +0000 (UTC)
X-CSE-ConnectionGUID: oPjQQ9QKRqeldFzgXtu9dA==
X-CSE-MsgGUID: HtA58YhKRwi/G7r9ZFerYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="43103483"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="43103483"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:58:32 -0700
X-CSE-ConnectionGUID: il8En9bzRd23ugmZxHl+gA==
X-CSE-MsgGUID: j619hgZFTHi94MIKtifRiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="151603773"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:58:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 15:58:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 15:58:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 15:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdVV82nSimYP69W5T18ZBsq3natcLJ2IbISP2hgwcHFOiyr1XA0pKGnjBqueg4zgjgPpcPaL3XoW6K/yE6fbjBP862VW9MNDBXeHtKM0etl1RlKH+yK8lwytsohbsu2d4y1MYZD27SaDN29lg4E1GAO4pOGCMIU/v/0FksHK/Z27p1CXXGhX8w5r9DFX1Z62RdVKAG5Nu/1LVEqgXa6E/MFuw5I443pXk3vkrrwIelhl83wS07W7pf5llSjSeOuyjS6Fqr3rZXuV996m8OsiRfQsByxkm/S7Rfzju6UeKoERLGS7vZ7vj+b9ftKkwaI16gMI4GKFYYElZKKmHoTANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6yvIyuTCV8MGlccwNjkdsojbIXAA9gOnWE2uR0fw/Nc=;
 b=naA4IM1mii5dlVaBIAS3a2dCReM5aQbF5mcp/53qAw/YhZowysIKXh6nnDk0fsd53O3r/EaH6pn4KFYz4pCUo5eOi2zX6VNX6Ml3tAGLj8VfGM9nMJuC5MBDL555vG52A8m+hdT03mDVnyFmLb7eb3SDvKzLd6kentwxqhcX+L2Ho6H4Yt6YRncOEXNymw+y0xzGyigq1QZg5x5Bbb/yPTfDI8fPyb0rK+AW1tB5ehxlX08tnFg9FY3p7nKlAEGzS+Mn4SR/6CCWPBtFxv6T/6nI7kb/rCsjRbEMU/pJ0tpl6aCXjWIrD8Y1wl+XkbE5G71uxIHCFSLoEXFv3X2l+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7245.namprd11.prod.outlook.com (2603:10b6:208:42f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Wed, 12 Mar
 2025 22:58:29 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 22:58:29 +0000
Message-ID: <a95dfb14-45d4-429f-8687-177c74428db1@intel.com>
Date: Wed, 12 Mar 2025 15:58:25 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>, Milena Olech <milena-olech@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
 <20250310111357.1238454-13-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250310111357.1238454-13-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0013.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::18) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f16763f-9bd2-4fad-0678-08dd61b96794
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejM4cU1qNFpkNnRSbmFWQ3cwYkhlbHo2TEoyUXhrS0haeFJiVjJUREFMbjBp?=
 =?utf-8?B?UHBMQ3VKSzJIaUN4OFF1b211WW9IR2I1ZGZYOWxxL2p6aFRSTUF6MXFsWlZp?=
 =?utf-8?B?VmtNbnlpU2c2d1FZR0FSdGFhcXZrTnRvbmh6ZWdocDBndDQ0ZXRYNTJlaWlJ?=
 =?utf-8?B?MlRpcnlUYlR0ME9yMXovNXl2NU5yVHRQQ2FBZkZlV1ZZdDhWamxtcnIrVUVu?=
 =?utf-8?B?bkhLR2FLdmcwdGFTZ3NjbHF6dGhBVFNhVThjTUhTeFA4cDBqQS9jN1lQalI5?=
 =?utf-8?B?VmtsTTBrOElJYlFhdWRnQ2hJOVg1Z2hyczdKZ21obXpNaGRJQUI1VjRCVTl1?=
 =?utf-8?B?NTAvVHMwSFFUTUQ2d2psTE92Z1I3SVpPVGk0bGx3L3haQTNYQUo1UndlZVlD?=
 =?utf-8?B?ZUpzUHZlejJ4K0U2M2EyZitHR1FqMTE1YjFOaktqMzRCMkE5VXE3UzRkUFdu?=
 =?utf-8?B?ZUs4TS9DOGcvcFRaQmVzVDRtaXFsdG5XMWRMSXAwVkFpb0c2eDc5RmFBSGRK?=
 =?utf-8?B?NjRjOUx0QWxXRE1VY3Jwb1NmZWNBanJyL1l2eHJUQTJMbHludkNGTHRBSzBN?=
 =?utf-8?B?TUtUMGNJU09BN2JMWExWV3RqelFBWWZsaEY0NSs2OXVhTUFxaldueXNUY2kv?=
 =?utf-8?B?bkZ6bUdndkZ0NFFNUXRXR2U1ZEUvdjVRQktsa1dvMmdxV05yaHR6WE55QWRK?=
 =?utf-8?B?T2ZlajZJQzlzN3JVeStaS0k1eG1CZDRSUStnT1FKVVpydEpYVVpRbDcxYnk5?=
 =?utf-8?B?c3YrUWtkZnRlaUpScTgvZENVcWlNK09WVWFyZE0vKzZPMDExY3Zwa0xLRHlS?=
 =?utf-8?B?dUJucGlIRGpxLzYvSkFpVzE1Q0x6dld3TXRLRXg3YjIxRm9wRVhWWUFlM3ZB?=
 =?utf-8?B?NVM2TzhRRitqZnhtbGJXU1NFNzZFVVUzWWJ4Zms1VW5qa0lRaVRWb1pJQU54?=
 =?utf-8?B?Vjh6c29rNFdxa2xKL1ZrT3RCWmdVNnFmU2NmbHRKclhaTFU0ZXlYVHViNCs0?=
 =?utf-8?B?WENISms3aXY5YXFjSEZEaE9PVHgzeHhPVFVzdWljZ05OcUhyTC9UQTluN1JQ?=
 =?utf-8?B?a1VEMUd3YTcwdnBFVFBqZkxRaGpzaStkdmp0WlVpelNHbGY5VjF6dXRtdFBR?=
 =?utf-8?B?S1Zsbmxpc1g5aUl5Wm5vdTRYbXd0RHlSVzJ5T0dWd0JpVERXRUd4RXBBTllm?=
 =?utf-8?B?TU5nd2Q1YzRHbUk3SThCR1Yzb2ZrSzlyQmR2a0htVHFQV0FyNzVudmVVMGU2?=
 =?utf-8?B?d2pYQi9jVEJsMkVUZ0p6SmxROUFQbE1aWFRLWEU2WHJWdCtuSzFNdVNXZ0pt?=
 =?utf-8?B?ZFF5SzNRT2ZtaG0zQkRGVUl3c094TUpBYmd0cno3RTBLdExxRERxK2YrTCtY?=
 =?utf-8?B?VzZQZFdFdVRBL01ETnk2QjBWRXVLdjhzSGhBc2J0blp0aEtlVi8zYTVhdWxX?=
 =?utf-8?B?aXNiNjA2eFBRRGtlWExsZjJRS0hXcyt5cERua1hmaUFCeW5jNFlHY1FrWkI0?=
 =?utf-8?B?ckRHSmQ3M0FEelNIOEV4TVJYOWZnVHZQelJYUzJIeEVMUVN2L1hDenR3VE1j?=
 =?utf-8?B?eUZnRDdvbmUzVlNZN21qNW1PelkyNXJDVDRwT04raGlYTEF4b3lVWndQUTNq?=
 =?utf-8?B?QlljdTlBY3pMaG4vY2NHWk5tbGx3Z0RTSU5EN0ZTQVFsZjkrMm40Z24rdlBq?=
 =?utf-8?B?Mk5sZU1IdENsUnFMZ3l1QmFzQ2ZlZWloUzRLamlCbDhlUWkvMmpoWUU1WmNr?=
 =?utf-8?B?UFZBeXBrVGp1bi96Z2hVdzZsMmRqOUZUMnZFS0tnci9hNGpPQVZBaTJVdVAy?=
 =?utf-8?B?QzAySWp5OXNrTnptK21nUlJUQWY5WVVFNzkycDgvb3hvcGVHTmNaYWxiOFVG?=
 =?utf-8?Q?dCzUIcmyftJhV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0c3R05pMDliMmRSWlhJcXd1RkMwMHIvZHlQbDF3UkZxRHNlb1loSkxUdmJL?=
 =?utf-8?B?aUVVOUFLWXZRU2M5WFc2Wk9oSjdUV0tGekxlbUZJTVFManBzOEV5Wmg4MmtJ?=
 =?utf-8?B?N3JrU0V3b3FNT2EzZjVxRFAybzJPVWJ3RjhVN3MxM1VqWXNSbitqRGNkWjNa?=
 =?utf-8?B?Tm1sNzlBZWVQcWNCb2RHTEhUYldUdnJVQlBuU2hDU0lES3pPUVNaaUh3QklK?=
 =?utf-8?B?MzFRZG45VGUrb3JnNFBIRHowOFJYclNkeW9MMmRWOElOdFYyREUycnFiZkky?=
 =?utf-8?B?RlVpcEJadXBoTytRZ2dsUDZzbkhKRWlNNHMzMFFOb2pRK3ZYajRjMlhwZW54?=
 =?utf-8?B?eEx0WTJvOHRuTE9xSUlNUUhlaEhQMGErTGUxSFBxc3JOM0s4aXMyQnFkaTlh?=
 =?utf-8?B?RGNORnRpck1GSC9PUUFWZUpYOS9sM3VjWFdwSkMzL3JlWTRrMnFFZ29ZS1Vv?=
 =?utf-8?B?eWdaYUxxMU0rdVFKQ1hhU1Y3YnBvU2txZWM1VE8wM1hXTk5uclJhYXI5OEZn?=
 =?utf-8?B?UmFQdUhXdVp4Q21FUmpHOUM1VUkxUm52NDJMOGExYlJGcllGSXFHanBJRC90?=
 =?utf-8?B?NHJ1aXJFODJvd3cxamtQQzQ3RURneEs3UUFQSkpqR0huVnAxellRM2xSS3ZF?=
 =?utf-8?B?dFlpVVFzVVVUaCtKdGRMTUdsMjFWQi9qaCs0aTNkRlhNRTlSOHpMbWRENXli?=
 =?utf-8?B?Q0Fwc1RUZ3kwZFpzQzJoQjBaYUhrY3J5STRCM0hNYXBPNTlhK05SSS9PcDYr?=
 =?utf-8?B?NUJRU3E0aVBNaUJxSThGZEEzOERhWDlhdHh3NjlVTFZCejF0MTFJd3RjbVJY?=
 =?utf-8?B?eUdZakxPS0xyYjRYUWFaWnprZGVBcmxoaThNVXdVMDliUGJZU3JHUnNNWVFO?=
 =?utf-8?B?ZlR0Y2hhZjhvOUFPd3Mwck5BQldYVVd4U2k5a09YZzlPRkxGazBSZ3pDdzRm?=
 =?utf-8?B?N29ndXRMajFIQnlONkxEanJtVDl4dXNSZ2pLNEpyR2lBREZlRTdTWlJqVjhh?=
 =?utf-8?B?aHBDOGhPQkVSdmcxelUwbDZkRjhwYTlsZHlVNXhlNlB5Z05HSUhKV0Q4bkVV?=
 =?utf-8?B?NXkveGtFMlRLbng5UHYwZzVXRTE4Ujgrb1dsR1BUYi85aFFUSVQyYUUva00x?=
 =?utf-8?B?Q0dkNTVOT2hydW5YcDNUQ3ZKR20wNXNFNDZJRlJXbzlEaTA1a0JGakFpSjd0?=
 =?utf-8?B?UDVmK3BhYkp4MmpyRURqR3ROQW1DU2tuNzlMUzZ0M0trTWlEWTkrRENwblJ2?=
 =?utf-8?B?YzZBWm9CTjZQQjFJUHpkK1IrK24zU3o2c1I2UUsvN0xwMEVPTzBOR1REb0Fr?=
 =?utf-8?B?Q0xlOS9lVklBOVZjWnBqT0YyNlZwaVgrZGZ5OXNuTnhHcGpjQmFRUlJwUnkv?=
 =?utf-8?B?N004dTNJckduLytvWmxna0dzRTdtZ004VWVBcy8rMExsekZ2ZmRLZUJDNlJV?=
 =?utf-8?B?czBtdXBHUkVrNGs2WUN2VmdRRjY5QmpWU3NmZ3cwdTRPWjZwdTB1d01QcE00?=
 =?utf-8?B?ZkhzRkwvRU51aUc1TkJsVmlFSDRTUlVDbEJTbFh1SDBESzdHcnczZmJuNDFr?=
 =?utf-8?B?ZllNVStYbTZSZnljeWNuV0wyN0xYRG1jdmNpZ3JjSGpINFZlZDI1RnVabkU4?=
 =?utf-8?B?MS96R3Q1SEtDTlBTMFI2MitndHVtWTlqNi9nL3c5TXFyRXByVlZteDR2bFJj?=
 =?utf-8?B?NjRJV0NoeFlwWERhZzZJWEhPYUxxekFVdzFpRWV0RDlSMU01ZTYreEE3eDZm?=
 =?utf-8?B?RjN1Y2VtUENEL0w4UC84ZnlvU1JkbGxFQU5teUJ6Sm1SZGRkTUJqdjNJYWdt?=
 =?utf-8?B?MkpwRGNCMGNHR0tyRTY0L2xuMmxvMDNQSSs3TTlaWk4xN2YrNldWQm00bHZn?=
 =?utf-8?B?Y0VOd3NFTE0wcUJJVHV2Ym16MTJ1S01ZcmNSenhLcEQxc052ejQ5Wk9CNGNy?=
 =?utf-8?B?UjRYZW94ZUVDRGpaa0d4c1ZuQko1OGlLRXd5bGo5QzNZS29CWEFwVU9OWEhv?=
 =?utf-8?B?ZzBybWJ0Z0lhZHMwQXRybmZ4a2Irb2JXVDZ3QzQxQXZXK0I1cmFtYVljUGhJ?=
 =?utf-8?B?WE9BL3h3aXorSEQyMFlhQ2QrN3NpcDd6L2w3ODZRL1NjN01mbWxvVW1mTURV?=
 =?utf-8?B?MXlmbUFkNjgybVloZDR5OXNYZlUwS0dseGVyaGVoQTVtajFtWnd6NmgrbVRZ?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f16763f-9bd2-4fad-0678-08dd61b96794
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 22:58:29.3888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ia5quKkT4GF3huVqXqL5kQ8k2Xh2GAynZ4X2NdEZkuPMqy2qAgjvA+7wqsGgHTrlDbtICRKWAog9OxOepc20s1vvFrZcgLavWBO/6OYSucA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741820313; x=1773356313;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EjwYFW+jSglMIz3QldP9pZz8DSnXTl7xDmKJZALEQPY=;
 b=ElgVZaD2mfnS3PisjI9xhwsOJlrMKXlzowV+YcRcNmFbLc/cWy6L6+h1
 uwiA4312XFgJpp+SjpKgf890Y9VcDe/VXyoK8AMpLkmpj9vdMjPZ/XfXO
 omf/cbq7tSDeTXTf4dBT+9eefHTyPu++yerSJu9b/ZvphMT0AgMlKoD54
 kV2wpPmepw1GoyiuYRAdA2t9JIzm29V9TWHb5lUMsJ+rbd1XTjrUUVOfF
 5ic6kz6JOHiWQEHRgwti+wu8HlIejSPVp1BJt89Kg7t7A1vTtYiPtR3U3
 ACuyBe/ZiOWS+3EvZohlqTjYxsHD9/z4uVYEWSNnFdq1xngQFY2FatNBZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ElgVZaD2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 01/10] ice: move TSPLL
 functions to a separate file
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



On 3/10/2025 4:12 AM, Karol Kolacinski wrote:
> Collect TSPLL related functions and definitions and move them to
> a separate file to have all TSPLL functionality in one place.
> 
> Move CGU related functions and definitions to ice_common.*

You lost changes with the move, specifically 4c9f13a65426 ("ice: use 
string choice helpers"). Please restore them. Also, please use the 
change/helper in patch 4.

Checkpatch reports missing SPDX:

WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
#1323: FILE: drivers/net/ethernet/intel/ice/ice_tspll.c:1:

WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
#1972: FILE: drivers/net/ethernet/intel/ice/ice_tspll.h:1:


> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Milena Olech <milena-olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>   drivers/net/ethernet/intel/ice/ice.h          |   1 +
>   drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 181 -----
>   drivers/net/ethernet/intel/ice/ice_common.c   |  61 ++
>   drivers/net/ethernet/intel/ice/ice_common.h   | 176 +++++
>   drivers/net/ethernet/intel/ice/ice_ptp.c      |   1 -
>   .../net/ethernet/intel/ice/ice_ptp_consts.h   | 161 -----
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 542 ---------------
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  43 --
>   drivers/net/ethernet/intel/ice/ice_tspll.c    | 643 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_tspll.h    |  43 ++
>   11 files changed, 925 insertions(+), 929 deletions(-)
>   delete mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.c
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_tspll.h


