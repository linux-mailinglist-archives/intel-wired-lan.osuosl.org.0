Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F024B8BD6D7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 23:27:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DFA260A7F;
	Mon,  6 May 2024 21:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bgdEi1h0edr2; Mon,  6 May 2024 21:27:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAAE660A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715030845;
	bh=hbx9dc7gt+zDU+z1SS3+eQSVPSkdfJLbQOnD1RLDYyc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RC3OOHvLJvcLZZeCmwxKegMwWYMF8ks4EnsvU0znwP8RN2jLnVZ8qEQil5U6oCroy
	 uEWVPtUpn+/+f35KS3YtQeThJ+77HMO5fC5xG8n7oWpXsB2TN3CSWb8CR+f7lWZMqn
	 xiDdOOE9Nqbvz911u2yw2CYzLNH0JcI6imFNwMs2L0XkNGG5cfYxMV04SmKvbLCjUt
	 ULIoTLILdthHg64kYMe/UC1dQ4yxNg3VExR2JN0MEMx7GAH5RWlllESMirbY4UzbGt
	 niaGFqczyKfNAHZVZzkQttdckWtYfYBWPz+haEETJXWi9rEAOBvviucmhQCfr+4o2M
	 79oKGBOGQAzzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAAE660A69;
	Mon,  6 May 2024 21:27:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E19E1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48774406EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WS2jtrWK9RcZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 21:27:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4958140362
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4958140362
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4958140362
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:27:23 +0000 (UTC)
X-CSE-ConnectionGUID: dlkAEY6hS5WoTr6Ph8iZ1w==
X-CSE-MsgGUID: VFA6yoM+RPGOijARYc0a1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="13751886"
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="13751886"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 14:27:22 -0700
X-CSE-ConnectionGUID: uDfE2g2hSfiM7lr94w5nxA==
X-CSE-MsgGUID: PJyrXYORR7aY+W4TNEFG2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="32953969"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 14:27:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 14:27:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 14:27:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 14:27:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 14:27:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hC0NLrzBJfYM6jYTP1R0Xjee3Px2Hn6OjEMbVmqaHKlA0nAKRO4eCnONusipMk7oj5rP7Fj9YJYHrAMXJeaVPC+WGNNZS4IgBrswuFRDvGAhBelFF/THSuGbUXVZW9caZNGk5mQB8zPm12/dRcahj1roalEmKI8Ts/YJsKowIZkYCVCxICAQPojEz8ajm/l9F5RKN83WDHNlS7/cwGWD/HpDiZj9OCQy0+/nSzHdsbyuwi9+XI2GNBBVb7Ptp4EWv39S7y/MejeNpMABjJJgFo0hqXouD7siL4DSIYzRWtjAkOKg4vU55mgIYqviZrEJXqRpk2r267ccA0NR5ddQMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hbx9dc7gt+zDU+z1SS3+eQSVPSkdfJLbQOnD1RLDYyc=;
 b=IMm2cBli64GR6VKwjMsJdw/BPLA4WRO2a4woEVkuCf9Bb2aUooFVf+3QTNYrKxfV6TIxoY4TrP9X9hEy2yCMThMikC/LnHfKEZqUYeNL7JOEOkURc6M9d+gT1kYWMUvfhq/KzoXFUaGezvnuYph+OCTU0ELCBzq8tEOvc581HY2pKCqdnX0DoEWulq2/RbUaX5F+7wZexJ9rE0tQnd5QYScNnTcIGaXUH7/G8BE3QtRgUJ4f2jpTmt6ylpt6bxYbCO02KDk+/quUJ6gjTirLpen08gekD5hdgaW6o7DMyf5z51OgAZOMQnUbWeiLzCIdk9/1V5fGXV2ETBFOGZxIWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB7820.namprd11.prod.outlook.com (2603:10b6:610:120::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 21:27:18 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 21:27:18 +0000
Message-ID: <9d359843-e7a6-d2bc-cc7c-e7133ba3662e@intel.com>
Date: Mon, 6 May 2024 14:27:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ross Lagerwall <ross.lagerwall@citrix.com>, <netdev@vger.kernel.org>
References: <20240429124922.2872002-1-ross.lagerwall@citrix.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240429124922.2872002-1-ross.lagerwall@citrix.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0368.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::13) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB7820:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e9ae3b2-b116-4998-df08-08dc6e134e90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1FINDVvZE1FY3JtNWtZdnNxd0Q4ZGNiTGdoeThMaW91OUczdEQxdlZkMkd0?=
 =?utf-8?B?VUZneDB0QXMzc3BlYlpxT1Q3OVF1YmszUERhM0hjdGNGQWFJalN1d1dHZUZk?=
 =?utf-8?B?Q0VkWFliNHpPQ1I5eE5pRWxQMmp5MGtlSHNQMCtudldiRG9vN0xONmROTUR1?=
 =?utf-8?B?SWt2RmwzVUJnS0twZUR2M2loQ0ZXdTVkcGwraG00L0k4RzVYazV6OHNybVEr?=
 =?utf-8?B?SzIwTkRUOW5wWjl1M040Z2ZnVDhWTHpxQUQ4WXErL0VEZVdGYVA5WjdDTTBH?=
 =?utf-8?B?TUw5amFmZEx0NW81YVR4VVJMYXNyVnljTHQ0bjAyYS9KL09sZGRwejc5OVMr?=
 =?utf-8?B?ajBuYVRtVFdSM0FJR0pXSThpR2s2d0xDRGVEUWdLY2Z1Yml0Zm1QK1hMSlMr?=
 =?utf-8?B?enJWUDNWWTdEbmw5cFErWnY0UkMxYVd5cG53eHprOHJza0xydlp2WE5nZWtj?=
 =?utf-8?B?L2pqRElkVEsvQzdRakJjQkFKM3hsYnBzZXdLR0NLTkdiQ1hqdHF3Vlp6ZkdR?=
 =?utf-8?B?RDRsSFlBR1pBTzhOcm42RVorUGlNVVpQdWp5N2ZOcjJqTVV0Wm1RVEltVFhm?=
 =?utf-8?B?NWlUOVpCK2hLMWtzSTdSVWI2SVRJQkVkM2M0UGlWeU5YZVpRc25aMjh2aWMw?=
 =?utf-8?B?QU5UZVF2WnNxUG9sSHNBdEwrRzdNZmJZRUNLMkxYOUhpbUwzdGhoY01xQTFU?=
 =?utf-8?B?bXpwdmYxM1N0d1EwMjJMSXUyT3pnblR1WnBVYkdmMVdLbm9keVNkS3g4RHh3?=
 =?utf-8?B?MHBXUEs3UVIvVGgwUFNoRFBEZ0Q4bW5hc2NKS3VHc0t1VGcybTMvN2lsV1Ex?=
 =?utf-8?B?VFRNTHF4a0FvQjhObDNCb3JETkN0SEJKazJzMEM2S1pqd21uT1QxTDdOU050?=
 =?utf-8?B?WW9HcnBhaXl2cXBQZUlWeVZUbkFMUUtQVTI3bHpITkVQY0lrOGkwUlhGM0hj?=
 =?utf-8?B?MmM3TStTQlJBRnhtNU02aGlhQkJLYnIzM2pUeWZpUDA2ZHhjTXk2RjZ4dGZz?=
 =?utf-8?B?SHNGcW5LZkZuZ3hiN2FGbGVvSFF4YlhDVE5aR1lZRVVQc28wZm1SdnJkdGVk?=
 =?utf-8?B?eWYxNVhBQzByNWVDbEFadFZlZk1RT2RjbXBBSWN5WlIyRzE5VWl5Sytjcmg2?=
 =?utf-8?B?NmpTRGVXcTd4RXBsZGRVQTQwelgvUzRVYUlIZWVBV215UCthRUIwVjM2d3No?=
 =?utf-8?B?MjVBTlNzWnZLY1ZYanF5d2hhWjNKK2lqUXdMdkVGOUhqMWhTRGhwZi9rZnhl?=
 =?utf-8?B?QTBMS2o4VTZad1NFWlBZUVJMSjNmZXZQQXBWQUdrWkNEUk92MHlxVm9NZDNI?=
 =?utf-8?B?SUJHUHhjZis4N3BlNDc3ZXlwQzVDYXNOODRIRXg0NXNPSjhEUGZWcnRWY3Z4?=
 =?utf-8?B?ZE56bW9OK3FBL0RJZnFSalFtR2I3K2ZTZExQYnJXclRuRGJEYmdhcTh3Tnkz?=
 =?utf-8?B?ejBoTGMrMTFLbG45WDdKSU85UVhSMWs4b001ZXF2dEVhZGRpKzV4T0hBdWdj?=
 =?utf-8?B?SllMK3ZpRHdDTVpCMVhnYjdVRmZBYmZ1azlpM0J5WElEekRxSExtMVRJcjJI?=
 =?utf-8?B?Tkw2V1dhRWxva2tnQzIzL096SlduTFlxZjh2WTZOQnBSanFMK1kwMW9FMlA2?=
 =?utf-8?B?aW1XVlJoZXlqQW5ZYWpzOHlmcWN3RDZzdGphcmRFYXJkYm15a3AxTHZoTFY1?=
 =?utf-8?B?akdzZUhFVk1IM1QyRytIOTJ2Z3BPOFExMDU1UmVxTXhtbitkVmoyMll3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXRMRlhTZGlFcWxRdHZxOHJEQk9wOHlBT2p6Z2NYazhCemJCbUEyT29lRnFu?=
 =?utf-8?B?alJKeklyMmVuaXVRZVA5V3hYRFZOOUZqQ21ZMWNSZWJNcHE1ZGgrNU0wamdP?=
 =?utf-8?B?MnhpcGxUYTc4WEIzVWFFMk94Y2JveHhNdktURXNTQVd6MHNOVzgzcFJyUXh5?=
 =?utf-8?B?dmY0RUNPMGhJOWFteGFWdDdiclduSjg5cllUZW9SU2tGTGV5dWpUM0RkYmpR?=
 =?utf-8?B?eFpYNDI3TXEyR1Zzc2F5Slg5NmZJMk1ZR2playtUODJLWGJaNU1ja2hiUGM1?=
 =?utf-8?B?L2JQOXRiMFdWdm1MTFJqbTV6ZEc3TkFLbExOZzhDbTJ4NzFIdE5GSnJ6QzRK?=
 =?utf-8?B?eHF2dzVMY0J6QWRBYklmbW1KVmdpS0ZKQ2RuQUx2dTRKb3pGT1BvUm00UFVm?=
 =?utf-8?B?QytXZERGSWVVczRvZnRoQWtZTENVYVlKdjJpQU9lbVI2ck9mdjMyOVYxcjVi?=
 =?utf-8?B?Tit1Q2lVQkovL3pEYmxqNU0yckRrb0hMa2JVeklsbkhRTGlGcTYzSHRJYkdy?=
 =?utf-8?B?d0owaEwyVG1aWU95VWg4VHZxNW5pZ3VmK2MrNU5ibEhuRGJPUjhJT0NGb3NS?=
 =?utf-8?B?YzJkb0ZjTndwSnNSdDZucmhwZUNpczdWcFU2MitNUVNHdGRVZkFOcUIvTmRr?=
 =?utf-8?B?R2gvc2oybURkaGdxSk51bFFPWDNOY2I1d1dHYlRyMWtUeUpsOEF3VEdtejRI?=
 =?utf-8?B?bGx0TXVHelJpNlR5SVZJOTFRQSttWWJsVGM2eXhIWjR3bFIxRWFkaWJuQWJ1?=
 =?utf-8?B?VmdwYVdaRTBOT0lMUWZVYW9DQmtYL1VKMVJ6S0gxWWhqQW5tY1lVQjlDdytv?=
 =?utf-8?B?SVdyRXN5dDh1cUVtLzAzQXBGeFFUb25yWXAxN1pDVTYxTWhOdzdDVTQ2WHcv?=
 =?utf-8?B?WkJnVFc3SFExVFlwbW9DWHpJVld5a2VvN0hWa2RaL1l0UWp2bzZQNnZ4eEdF?=
 =?utf-8?B?cmpFU3RySXFwQWVvckgzRU1sd0VaUkRLSWRBcHEzMkZnZkUvRFA2Zmhic3hP?=
 =?utf-8?B?eXpLQ2pBN2pQaWhqY3A0R1BrLytCbW5NRnZGbElSYlc3SDh4d2xTOFZMU1RY?=
 =?utf-8?B?RU53Wlp4aFI5eEphZHgvK3ZPU25ublYyd2xybFJmQmhqZXlSeDZlY3V3SUx1?=
 =?utf-8?B?Q1pVZFpTejREbnBXYkNlMzgraWRuajlqMmJkanRKbndFaUY4Z3pSV01LTFhV?=
 =?utf-8?B?UkgrckNnbUxvVDFHUCt4OWc0dG9BZnErZkpOOFpDcUJseFJmWDREZmYyaWp6?=
 =?utf-8?B?NXQrT3JCQ3lDY3k5T3JzdXlDeHpqMTJFN3VYVy8zalU2V2FwYThzZU00b1E1?=
 =?utf-8?B?OEpQS0FjbVNBRzltNUtLcXZEWVlOQkp0dDJMYWdodk9zcGlvMTgyVXVtTE1X?=
 =?utf-8?B?WjR5SUIrTXhMRU1jSVl3RWZnaHU4U1FaMkhTSTBxNUJMSHo2azZ3NjFBdFZQ?=
 =?utf-8?B?MkJRTXZpNzRVY0pzUGN5NkpaRlNDUndERnoybURJRlVhZ3RYZ3Qvd3RwK3JB?=
 =?utf-8?B?dDVieDFmMkZIWDQxYWlYSWFRTkR3NkkxakpHam1Sa3Z4RjdNNEM2WWtTNWFR?=
 =?utf-8?B?b0RSeFN2MXUrNXFIWkQyRTNFR3lFc2NyUXd2ZmlxTEtndjZTM3NxUzhFNkgx?=
 =?utf-8?B?bHpzSGZlVUNBQWh5TXl6cFR4TDd5VlNzV1JyMlg1cXVEdlB6ZDVUdHBtWXF3?=
 =?utf-8?B?RHl3U05RTDZER21pT01JR2RaSE03V1dicHlGclFRdmp4Tyt5MlRuVVc3Y011?=
 =?utf-8?B?VjQrK2ZWdTRhSHBJaTgrTFpNV0RsSTZ4UnVGZytlZVBScHdjQXlGd2hPdTdJ?=
 =?utf-8?B?a0tJZkhBdFEvaXYvZGNnNWRETUVmNTZuS3FsMkRmT2RrK2RYYnlZbitKTjRO?=
 =?utf-8?B?Zi9vZ3B4NUtNWVRpYkRFRDQ2SStxbXBrODhwaWxiMnhCcFZTQ1VsUEtuclRP?=
 =?utf-8?B?SE14VGJHM1hxbEUwSDU2bkZGTVJOZ3ZPTXNLVEFLYkIvNmdPTG43TCthN0Fl?=
 =?utf-8?B?KzhzOEoxcEI0Rzh3UFJJd1ZTMlVraUlnaFRxcENnbEVydFUxRHM3UzUxQ2Nw?=
 =?utf-8?B?endSajNRRXlPVWJDd2VaVGlnM05LWVFyazlnNjVxKzROZVhLYjlYaTkyUWRW?=
 =?utf-8?B?eTcxVzQ4WFlNYWoxMU1QbmtVU1JEeGt5eFhGbkgzOVdqWEh4SmU5SktWN0M2?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e9ae3b2-b116-4998-df08-08dc6e134e90
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 21:27:18.4154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Epr2olsIdwZiEZ8GVLtJ28b09UASRTdDbUUn7xab86oH0U6Lxs6g0IEDj1++dLAJgoD3i5QIm+OGQacwYbAj/zUliujzu99t2kA97b3pDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7820
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715030843; x=1746566843;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HanE/kuOCj8hoVHjflGehnUyIC3UEh+8A3XyIzaYCzY=;
 b=DcRIaJa+IxjpFTs4qnEF7Az94J73XGG6a6Hi8KkOc97MXjUk+VgGUZNW
 BQSAzL2m9gMzyrS5JobxAUHH+ukdQAaWpTHvj1S4Anei6mNHSCm2DoQiu
 7QWVA6c3lu02SGsXWYlOA4HK+C4zCvjoP/JW8/j1S+lWLujSHCttPpHmX
 bS9Oa8iw4C4JypgRMFtn9t9R188YgWEEmOFsIHRW32llyW057RDVAI/vm
 P2iGy+E3Im+pSm59u4GxMIHzmuJyNzngID0IWNm/IsV00Riey2ObWUg5t
 b5QoMNf/VpGmBHkF1kU9RVPNsAbC4sBtnIs7V43XdFpcghGBRE+9JXI0V
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DcRIaJa+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix enabling SR-IOV with Xen
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
Cc: Javi Merino <javi.merino@kernel.org>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/29/2024 5:49 AM, Ross Lagerwall wrote:
> When the PCI functions are created, Xen is informed about them and
> caches the number of MSI-X entries each function has.  However, the
> number of MSI-X entries is not set until after the hardware has been
> configured and the VFs have been started. This prevents
> PCI-passthrough from working because Xen rejects mapping MSI-X
> interrupts to domains because it thinks the MSI-X interrupts don't
> exist.
> 
> Fix this by moving the call to pci_enable_sriov() later so that the
> number of MSI-X entries is set correctly in hardware by the time Xen
> reads it.
> 

Sorry, I missed this on initial review, but bug fixes should have a 
Fixes: tag

I assume you are targeting this for net, if so, can you mark it as 
'PATCH iwl-net'.

> Signed-off-by: Ross Lagerwall <ross.lagerwall@citrix.com>
> Signed-off-by: Javi Merino <javi.merino@kernel.org>

Also, sender should be the last sign-off.

Thanks,
Tony
