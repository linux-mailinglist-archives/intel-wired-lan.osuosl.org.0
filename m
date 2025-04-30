Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D75AAAA4B6B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 14:41:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8387340CC6;
	Wed, 30 Apr 2025 12:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L7ZU5dxpGChn; Wed, 30 Apr 2025 12:41:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B5A440CC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746016870;
	bh=qoh9l23BlsvzRsoXph30PIxKsUrnXXr5V+c2FeXfUdA=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VTGCGQO6vM6g6V1drvHB9oosjsoZbKdTVKUOXcGY1Oy2vB0MHviHJv25HpAGLuB71
	 1bZ1MxO20gzpthTKpZ4erNN6dmhsO2kXGKqf5ZBOsa+32SxWTl8qYtDJB64coYY+YM
	 8JHqzrrqdNrYvfRe6o1/hR7bEUu31qEWVo2FP0wFN7QX2sGnUdvGqCua0HZw0VyFvZ
	 uw89yLizzUWMHyoH5lUD76pFbwq+XxbdZ0lEFqYWPULG+tK9ZkWx9qzDnkwaSQGU71
	 Ig+FYIV+jUi3SwuSw5gsCHfMLb1bnJeMvCYYzpNSx6rOhbet+MMJGBgbCX7CEwHSbz
	 KYDeKma7Z+tXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B5A440CC8;
	Wed, 30 Apr 2025 12:41:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 342A71C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 12:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26A07811A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 12:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zfcQAI3wFCJl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 12:41:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C8503811A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8503811A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8503811A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 12:41:07 +0000 (UTC)
X-CSE-ConnectionGUID: rWePuEQHTr6hy1EKvRtxZQ==
X-CSE-MsgGUID: UaAiubYzSZeM89508ZzmCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="59049339"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="59049339"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 05:41:06 -0700
X-CSE-ConnectionGUID: wLFHeeubRLqSbHeB2Pv64w==
X-CSE-MsgGUID: 3dxXYVSJSyCT/CAnaN5B3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="135053016"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 05:41:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 30 Apr 2025 05:41:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 30 Apr 2025 05:41:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 30 Apr 2025 05:40:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G31UdTk2JQdoMiTRPQtLp3O5mj0EkciNMsg/4JdXX48UbV1FCqD8nGOkHOoZlhg4oY/2VZL6DgsOZkOpfWxdxYLIkrCvhn3ZawhxJDdGnDQmwzVRp5mNEmmsO5/aFi9VhRn/GpEIzu7aQrf+JYTBr+YNAAsYPFTMiEGiTQhGoWI+3FcGYnJ2g9dVacW+AtJDFX38q+Rh1JScb0uD2N+ScYLHLYpyEQufn37I4lmz1Zs8WPAMnHpG+xTlLDI8wDMpMSRRaASPC6mir+fLG/M2d8O2DJYGJD+1r3xs2C7d2azzXsX55xsuD+Pwk0BemzGq1jn9U24S3Yqkm6he1ldCyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qoh9l23BlsvzRsoXph30PIxKsUrnXXr5V+c2FeXfUdA=;
 b=ayxr4T+3exUMM+f25moMR8G4P1X8ND2tP6sbVFpxOZxEW7ju6DfbX82k0/+qAFt5m16DjvJYKGSwLvrNlyi8tMqeXgE2xkFkQPIqNs/Qbe/3TocajLyXdMmm0br0mCLcYEYLbdg2buVN3njybyzzvcf3oWi15HqNU70WPXqy57RqNYroZiB+dMxyBFJ9/kEk0MhCUFjiBbnYQxX7PgT2XnnIM/SEf3NjcOPWXfwY2KW+C8pYadztIvg4XbcN6HkdYfOxYbwNyfbMcZuGfR229uf3BRvHtugFflWBN8aunVS5ucZGlulqs82FA/Y9gHJXH0abGR7tkHC/GzwgM7cCTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7920.namprd11.prod.outlook.com (2603:10b6:208:3fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Wed, 30 Apr
 2025 12:40:30 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8699.019; Wed, 30 Apr 2025
 12:40:30 +0000
Message-ID: <445d48a8-8e4e-4605-bad8-4a80707a1452@intel.com>
Date: Wed, 30 Apr 2025 14:40:26 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Petrausch <christoph.petrausch@deepl.com>
References: <06415c07-5f29-4e1d-99c3-29e76cc2f1ae@deepl.com>
 <f5f8a9a0-a590-467e-81ad-81e1feea3b79@deepl.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <f5f8a9a0-a590-467e-81ad-81e1feea3b79@deepl.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7920:EE_
X-MS-Office365-Filtering-Correlation-Id: 425fada9-dbf6-4d1c-bc5f-08dd87e43106
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0tPZCtUck53SjUyR0hmNk9GOUt1YzAzZ29ROEtsUm9TWEhEMVB4NEdKUUUr?=
 =?utf-8?B?bGNPSkZSYjVqYklDbTI4SnJZOWZ0WWY0eHI5MkVVSHQxemZwR1pLRzUvZ3FD?=
 =?utf-8?B?N3hVRFVRU1NlQktuMkZsMVJqTmJ1SkFOU3JodFpOMHIreTNrZjRLWkdnNXY3?=
 =?utf-8?B?Y014b0xFVFFPRFB2aHFsMGZLbzZXZloxaUMybUVzR0hSWUIzOW93ZFNjcEJF?=
 =?utf-8?B?cGZyNWg4b3dxdkRjamhJakE5MzlHc2NXenJSZHVvbHAzb1g3S1VQR0dFSkdo?=
 =?utf-8?B?K0d0bHp3ekN5MXpNazJYTU9CMU1NeExzTS9VUU85VE9tYlJUSUpDTVQ4Um1x?=
 =?utf-8?B?djNMZDBCOFd6UGtFemowbEZ1TEFIQm5qL3ZwVXlaa0wwS0ZxYXViNGt0RFMz?=
 =?utf-8?B?bWJjMmdRd2pXTUV2bTdRUkdPbllnVTR0b3ozQjNwYllPUVhjc2lpcE9hdXB6?=
 =?utf-8?B?RTNNdDF2WVlWTG5Id1FBUmdRNjFMcEJmTGdGeGYyUTV4UHpGZEdhbGdCL0Vr?=
 =?utf-8?B?c1JMT1IvVmZ0TVJhUzVtbWdwb01TbENBQm96d21rSzVOYldNSm1MRytqUndJ?=
 =?utf-8?B?cFYvdXZ3L2xrSjM4V1c0aW1zTWc4bzUyNDZlVkdWUGllcVUyc0JuaC9SK0ls?=
 =?utf-8?B?UWJJMk02UUo1aWtuSkNYQ3Ztdnh6ekQwV0sxb0xGOERHWGdvcjg2WThXZFpQ?=
 =?utf-8?B?bXIxQjhLbWtXZ1c1cGErMlRjMU4yM21IdDR6L1ZRejBOMkQzMllmR1BYdGUz?=
 =?utf-8?B?Zm9GMWhndG9rL29CUDhDeGIvdzVtaVgwTTRac1RsNmlOMFVlKzU2RlFlT0M2?=
 =?utf-8?B?NWlmazFrQ1RuTDdPY3lsZkNEQXEzb0Q4TFpWWGNRTWJPSm1Ra0lUUWdrbWtX?=
 =?utf-8?B?L1BmQ25xNWNqNzFRZVpkY3VQQis3ZjRQUGdDek84bE5KL0Z3a2JQcFhKNWdU?=
 =?utf-8?B?Y0F3aTN0OFRBTzhVNG9FY00rV0xMVGNPa0NFM2xDTm9zYTMwRjRhYTNmdW81?=
 =?utf-8?B?OHBraFdHTlhKV3BReUZrUG56d3RVRXlPUkNrNFdIOE9YVkNVeVlEUlY2NFRk?=
 =?utf-8?B?QkhxVkQzUnBCam1Ic2QvdmZqTTZJZWE1NW1ESlVRWExTUStFMzVKUytqVWxw?=
 =?utf-8?B?TjJ0QzBITzlMYnVXMzQwYk5JS2k0dGpxd2JZMTk2RFk0REI1WTRkcVpQbzBD?=
 =?utf-8?B?UkNqeGwySHRITUhUMlB2SHNNRENQUmNEOHpPbHpncVdpVUhCSVo3ZFVBOGxt?=
 =?utf-8?B?b0F2d2xpUmhOQVFDQXNuSDBLWm9sK2Fyakl6TDhRZGZpcFlxbWFIcHkwN2p5?=
 =?utf-8?B?NmZGYi9yajZHRWU1NGF1YXFtL2s1RmVjNXJUZGFhRFJyNEozZ1hDcUh5SnQ5?=
 =?utf-8?B?bXRVNUJQd05wT0VoTW1acTZ0eFdtOTR0ekFTc0t6ck1oU2dSdFZYTGlHaHc0?=
 =?utf-8?B?elRWaUJlNmxKVldRK1VJQ2Jrako3UnF4SW9LdTFEWTFMYnJtSVd0R3JzV01v?=
 =?utf-8?B?SURScXZEZVNoQjdpOGlCZ1NmQ0dSOCtkZFcyUDdOUm1NQ211VlJRN3psaHhJ?=
 =?utf-8?B?WFJHaUdHREhNbS9Gb0JMUkJWRk1NZ3Ezek5UOWJxUFFrT1d6M1ZjMUNscmpy?=
 =?utf-8?B?V3djT1duM3J3QUtDelhhVk5wNXlMOGl5aVBqWlRGZ2RrR0RSVzRxYXNhYWJK?=
 =?utf-8?B?TG5HejdjUHNRTUlldXY2VjF3ZTdBa2I2WG90dlJzYjh1d0dUK20zb3c5OTB4?=
 =?utf-8?B?d0VVZ050ckhXQkZSeE1NRTdWZjRhWkQrbURRNXJTU2JFV3VnMmo0UUQ3OGFv?=
 =?utf-8?B?cFJ6MU8wOUE2UUNXOVVEQ2s5MU5vaXdVdDJGL1FsV2xBbzZoV0V5WDdRRVlT?=
 =?utf-8?B?N0ZiUnNVMUp2NXltd0tYYzV1bzk0a284eHRJTXhteCt0Uks4ZWlCT01iU3JO?=
 =?utf-8?Q?vPM0mZzgt+k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWZvS3ZGTnJHcFl3RTdLY20vandZWU01K1hQdXR0a0dZanQzQWM5RkFySWJO?=
 =?utf-8?B?ZDVPY29MU1M3R1NRRE4xZE16SW1rTGFNaGo4SGVFdU4xSnBrcTlwekdXMjM5?=
 =?utf-8?B?V0xnZ25mUlNpVGpHZUcydm5VcHdXbDF2eUhVcWV4MGExM1YyOGs4SmJ3UkFr?=
 =?utf-8?B?WDVpUGdXK25IZGNkeXk4QXlnY0tSc2p2TmdBc2lucitNdUVXWmUyUDc0Nm0y?=
 =?utf-8?B?LzNpSi8zTS82NGRTREl5ZE15cTVjY2RkM01lZlJCcW02KzZyMENycjg2cndE?=
 =?utf-8?B?aEcyYzBYRVJZQktkVUVua0xidkVmRURKMUFnVTQzNVd1YkVhVnQ4RmhKVlp0?=
 =?utf-8?B?bHVwTllNV1ZkTmVZQWoxT1crakJIVzRGSUI4WC9wY3FPd1lzQlIvMzliZ2hq?=
 =?utf-8?B?R05ySlN4c2t5Z0F2WDIzdHJVMXZKY1ZLQXdUbHljVTE1dUV5a2ZINVhCR3JR?=
 =?utf-8?B?aVkzYTRnZDdDUnhtdXhrRDFkbzI0SUlOZmloeFVkTnJqUEFNTFYxU2RpdVVK?=
 =?utf-8?B?dGErMm54dTA1cEpsRG04b0JVUzQ5V1kreHV1ZE9GMU9TRzhjM3I0bTUrV2pX?=
 =?utf-8?B?SjU4S1AwWnBINytVTkt1c1M5TExKSDZ6M3BtNS9PbGxEMFdmWld4Vjd2QWU1?=
 =?utf-8?B?Vmprck95NmptVXI5TEljb3YwTlNlWGZHWC9XSERGanlrejhWQmxkK1pnTytk?=
 =?utf-8?B?TitxbitSSURIWjFYWkVhNm84L2JGeldjMmpmUTkweVE3cmlSNG1LeDdwSjgr?=
 =?utf-8?B?eXJXR0hlYXllUU90cDZvR25vTVdoNXVNUXFnQ2V5TnBsSG9sb1lpREUxRWZW?=
 =?utf-8?B?M2J6ODFIM29BZVBqV2F4WnlzeTdEZWVOSGQ0anVKejZsV1ZWSDZVbHdIRG1q?=
 =?utf-8?B?c2VBbXlMVzlrL0F5dlpUMjRHSFlGUHdWczJ1OUFvb0NPSU1RK2M4OHNMTWNO?=
 =?utf-8?B?QlZCVG1RWkZKWkV1QURLcmhTWHp0Sk4wNGZQQkJHdmVuUVgyL0VQamZWa2t6?=
 =?utf-8?B?dFFGSmsvRG54ZDJ6K3dYbWVTTFFwYWhkVHB2ZUlKTXNGUTI4Vy8zNGRlTUFX?=
 =?utf-8?B?ZFZrekh2UW9adGxQem4zbk1YVmdmVnRPdmlTUGZPTEk4bTNEQjJ5YkJTRnRk?=
 =?utf-8?B?OXBXcnlicEhycjJWN3lOcUgrQkVldlRPTStuYWtBQXZwdjRLaGphcFN4VGlH?=
 =?utf-8?B?K25TeWVxN29DNFJTRWgxbDRIeXZuRnJsNnlwUkZPZkVTNFVhNEJ0OWVWd0NC?=
 =?utf-8?B?RExCS29YbVo1SnZkSEV6VDVTWVlPRWt0R1FsL2dKRW84Sm9FY3QvZ054cVZo?=
 =?utf-8?B?YkwzTzFoUDZ1Z1ZDYzV2eC9qN3EzWlN0QTMvZFRWMENHcTBwclk0WElwMHZj?=
 =?utf-8?B?Z3JhWGc5dFlvVkRLOFVpeFlwYzJRM1BGNmI2UmRlSys5VjNvUDhDWXd5bCtm?=
 =?utf-8?B?dWRMSnRWVG4wVEpIc2E2Z2pYalhjOUJrWXl6ckN5OGxqdTlGbnoyQW5aOEY2?=
 =?utf-8?B?cTJLOWQ2L0lUK0RuM1dnaE9KVzJLTmhwOS9rMHpjNHVrZjllamgvWkVQZUJM?=
 =?utf-8?B?WFRENS81eDJyenBiaWtFc1U3a1FuUGljTllaTmdVYUdQRTF1cmxTVVNITjVn?=
 =?utf-8?B?eXV5VFV4c1Bib0prUmVPOW5JellkYzF0Y2V6TVJHZDc3ZEx1RTVFcjRvY3ln?=
 =?utf-8?B?QXJ4NkVyOTlhSE5yZy9aZ1ZvZUZmbWgyK1ZpWEVuTHdNUmN5R1RZUXdRWGdO?=
 =?utf-8?B?cmFEcW94Q05aQitlWmhINy9Db08wWTI0djVDWm5wN0NoRHhnc1RMWHlrUXhR?=
 =?utf-8?B?bHZGdkY4MmlCN3VRakhEYjNlOXFtdGJuckVVMm9zTFVSSDhjbE9DT3B5cFFv?=
 =?utf-8?B?MFZMcFFNRnBjK3dsMDRXRlpBalZlVkNSZ3BQRmxJZ3MvS2hzZm8wRk5oV3h5?=
 =?utf-8?B?RzErMTgzNjJickpVV0pxV0dtTGx1Y2lyWElCZnRnM3JBY3pXT1I2QWdUemdj?=
 =?utf-8?B?WEFXMTNYaVpRTmYyODRIcEkzVUZVeVZJK3IzN1NxTE43NGlOcWlsWk5kQ0lS?=
 =?utf-8?B?VnNRa0h3V3NKdVhVd0RVemUwVGw0ZkJkWjFxeVYxaEczNGpKOC83NVRldEdZ?=
 =?utf-8?B?dGVKaXFQVWdoNGE4RlFsY0NST3dVQ0FEN3pLVmhRQXVVYXpMRWxKNGZEdVV2?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 425fada9-dbf6-4d1c-bc5f-08dd87e43106
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 12:40:30.3550 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7tIxWZafwbaNwzFx8qs8w1CLsKql2WZg0MLZfKnucm4raThvI3hpIyuUe8AToyeJEEJ3mEaIvgAdrBTxjbBxUdfRAwyWmVRMixuB9ND6fI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7920
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746016868; x=1777552868;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ftm52ChNYnkDsd1pfSV42DjG9vw2TxSBp9BPm9OqVmE=;
 b=NitlJFTEXwYugUfLSMo/cxfUWTv8kKUv5iX8lp2wvyZYGDw0Kifs3Eqo
 /tUrUTGghYyTadYyXrfRT/+CIX9EcbrNY65Lzxjg8XNanHRid5s7Tqzh9
 8eB/b0adSJ/K+i5kmR5xAthTFAl10cawklYCUmGixlNwrHlc1x0kxo3QM
 koe1IQ4hJ7iB+rmb0Vnf7KB4y/QaJxKTm79RM4jyKA5jxsvOuUXHmduVy
 ttrn7fNNvQgn934AaYCI1HfnDYCl9hc82Ex77KSrDCDPncdbqs0EQ32AG
 kyeYIVxCmJQRd95hyHt4FGs6rznXLvjkGeaFw/x8zZiA0PMjT+VL/fPs3
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NitlJFTE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Possible Memory tracking bug with Intel ICE
 driver and jumbo frames
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

On 4/30/25 11:16, Christoph Petrausch wrote:
> Sorry, my mail client fucked up the format of the commands how to 
> reproduce the issue. Here is a corrected version.
> 
> On 4/30/25 10:59, Christoph Petrausch wrote:
>>
>> We can't reproduce the problem on kernel 5.15, but have seen it on 
>> v5.17,v5,18 and v6.1, v6.2, v6.6.85, v6.8 and v6.15-rc4-42- 
>> gb6ea1680d0ac. I'm in the process of git bisecting to find the commit 
>> that introduced this broken behaviour.

Thank you for the report, the commands, and bisecting efforts!
We will also try to dig deeper on our own.
(side note: CCing IWL ML typically yields faster reply times)

>>
>> On kernel 5.15, jumbo frames are received normally after the memory 
>> pressure is gone.
>>
>>
>> To reproduce, we currently use 2 servers (server-rx, server-tx)with an 
>> Intel E810-XXV NIC. To generate network traffic, we run 2 iperf3 
>> processes with 100 threads each on the load generating server server-tx
>>
>> iperf3 -c server-rx -P 100 -t 3000 -p 5201
>> iperf3 -c server-rx -P 100 -t 3000 -p 5202
>>
>> On the receiving server server-rx, we setup two iperf3 servers:
>>
>> iperf3 -s -p 5201
>> iperf3 -s -p 5202
>>
>> To generate memory pressure, we start stress-ng on the server-rx:
>> stress-ng --vm 1000 --vm-bytes $(free -g -L | awk '{ print $8 }')G -- 
>> vm-keep --timeout 1200s
>>
>> This consumes all the currently free memory. As soon as the 
>> PFMemallocDrop counter increases, we stop stress-ng. Now we see plenty 
>> of free memory again, but the counter is still increasing and we have 
>> seen problems with new TCP sessions, as soon as their packet size is 
>> above 1500 bytes.

The faulty state perpetuates then forever? (say, at least few minutes)

>>
>> [1] https://github.com/intel/ethernet-linux-ice
>>
>> Best regards, Christoph Petrausch 
> 
> 

