Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47378D3539
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E48EA4057C;
	Wed, 29 May 2024 11:13:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uSJ6Z_4JiS1F; Wed, 29 May 2024 11:13:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9E31409E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981201;
	bh=na4FsO5koqPT66IQM2E+XSuIXgISYJSOKgrNqYb7tPU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a+S4XMqvyXCEiBna02ZfVUi+cxTec41SzseRmv0qgavkMX5SnmST/JjMxS/egCz67
	 s+nWXXt4dqJXBEwV4ShgVLSmr0eCy9t5i6f9vtB2KF0u5iHijjUrLda/4hwsxI5KsH
	 qJ2e3Puqo1lAT9+pXE75RzL+Dew9OjMwItplnOokW8VfHLuh7KUievxDmcfGC46Jx6
	 b8ozLs/xpD1kRAVbbHnOPq57T1wzsh3OUoYc2owE4LZydAHFvPUCROszxM+ak40JSq
	 dOflaAUyrlEAwjOjjPgbTWnW3R5RICTzf0mzcjLNoQ36k6z2IuYloncAIzTc2HjkEp
	 lQIEs+rM4hiHQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9E31409E7;
	Wed, 29 May 2024 11:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C55D31BF865
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 11:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC28881C81
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 11:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGr1y97CAcIs for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 11:13:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C5948124F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C5948124F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C5948124F
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 11:13:17 +0000 (UTC)
X-CSE-ConnectionGUID: eiMabE5nTpqSSt9O/pqCbw==
X-CSE-MsgGUID: 256mCWHjR1Sg1vy003EaYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13497573"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="13497573"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:13:19 -0700
X-CSE-ConnectionGUID: CjHHg3yhQj6KS4vzmVwzvg==
X-CSE-MsgGUID: xakotwMiQYCgZ7FabsiZ0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="35872290"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 04:13:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 04:13:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 04:13:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 04:13:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 04:13:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2CHc8CXLtbba8Ym8OAMFrKnQlna/J7KRSFQSP1MCSWqMAuQHfi7YH6V+jUl4klfI62YsIyFDyACUITe8tsvFQLfSSqU4QN3GU9VBmYOJckeXok3ZvXhLs45Y9PkDPONvjWEUvlGZmURgjSH2+McoDFRbdraTJQsujobaHigUw+LEJHO+D81LB15S+7ab97Q21ZPw/97ojBmCp6ExnU4ZXk2WY144VYe5rUYwX53j5UOfIdesy5kAHasYIzW7Ja9D7I9Ms86+FLEL+Yuwlh9l1xBxA89GP8P5lprcN5Tg2PmJqK3EXTczPBMmPKN5xLayIzqe2/+DOprYLgyDZ9RVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=na4FsO5koqPT66IQM2E+XSuIXgISYJSOKgrNqYb7tPU=;
 b=QvzgsqiwsenukHEHqCaRSBEvrukamj6w9ALkdlz2yliqP4Aox9kCPoszcMz+8F14gxcsuK+A18vnMxftxcQ+OLrBXAcgbWZ+ee5TbejwNTavzrq0fmzNrvDqy6GOSgLCQ/ytfA6/dlae/vEJZVEjFLj+T2a7MLkBTkDKEoqnv56Ij7oG+FXSvwnxTuQTrwSSeOBk4pC8BZ2z0rsvqtSycmr4Bl7Mignpt6fenxYqYCaintd8usfxGLaN8MAb9/3nX16NsVULZKqFRY+zima/BaMegB+AkufvKuD02iw3AlwLj8ihYWZ7zhwf8Kps1SMwNPw1EBAkGYU3td2qEVQYdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH7PR11MB6697.namprd11.prod.outlook.com (2603:10b6:510:1ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 11:13:07 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%7]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 11:13:07 +0000
Message-ID: <303a35e6-263e-42e4-9e1a-5e71f2eaabc8@intel.com>
Date: Wed, 29 May 2024 14:13:01 +0300
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240528103329.784584-1-vitaly.lifshits@intel.com>
 <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <9ca46bff-e118-436f-81c7-4d2c53556a42@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0016.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::18) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH7PR11MB6697:EE_
X-MS-Office365-Filtering-Correlation-Id: 865331a0-874d-40a5-e598-08dc7fd0515d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wkk4MEF0WGlzR2FIZ1BxVmFJYitPY1pSVG84S2VOM210NFhmUTlVOXpWRWlZ?=
 =?utf-8?B?bC8rNlB2QXlmeHJiaVY4Y0NFa21taXlGaitXZ0h0Vld5eU90cnlGSkU4ZDFt?=
 =?utf-8?B?MmlPYTZnUitZN0I3QlZtR1NEREVram12bGQ4ckNsMzdSYjhuT2RZc2FLVHJR?=
 =?utf-8?B?WTdkajZuMTVFdjlkdWxqTDdNcFQzbWdEKzdiYTF0UytMWXVHMmZPTlNia3Rl?=
 =?utf-8?B?eEtKN2F4aTVBVGdwQk5ZMEczUGYzNWk5L1ljSThBNGN4dnNoL2tNeGY1dUVS?=
 =?utf-8?B?YXpqSTZSVHZKaFRPUWtDMFZManEzL0FUWit3d3o2aU1mTThxZHlKMzdVY3V3?=
 =?utf-8?B?TDhpYVRZRG5lN09EQnlDZnVwV1p6V0hhUmRYcVU2MEZXMmpOdmpuZitnSVpQ?=
 =?utf-8?B?V3Q4M2ZUYmt4bHl6b2pHbFpTdVFRZ1FhQjlqOXRyL0JNaGJTdTB3NTI1YXhw?=
 =?utf-8?B?eE9yYmJnVnpBOG44WjU5bWdMSkN4NmxKbUtOQ3BrNmVzcFZWcTNLRm9EOHZR?=
 =?utf-8?B?TzA3aXE2T2lMNDRVcEprWmtSZGk5UmR5dk1qSnhwcDVDMVEzNVpHWjNveFZa?=
 =?utf-8?B?K3N3b2dKV1BVTVZtSFJrM3NnOFUvdXp0ZmZjTm9QcFhiOUV3bDhnTG9GQnhr?=
 =?utf-8?B?RXBiRDdJTWRnRzE4dlV4QXlPK0VTbm5iQXp1cGM5c05QZk9TL1UwT1drU3R4?=
 =?utf-8?B?MFBONWtTdUJtc0dsNHF0RiszY0JzUmt4R3p0ZHY1dXkrNXZhZ29NUkhJbVlV?=
 =?utf-8?B?aUZjSEtuVTFFUUFwRUlWVGo2RGlqS3VHL3FTYys5K1pYWUdzd0gwNlpCUkYx?=
 =?utf-8?B?MWphdTcxYWpsMnllSVY1OUxlTy9RMk9ZaDFCZUVRZm9uOGV4WkowNFFRTklq?=
 =?utf-8?B?Z2VhSDVHOHRwRUF6azRQcVl5TlhuM1B6d1d3SGxoQzhYa3RvSGFmNnBpaUQv?=
 =?utf-8?B?aDVEcGo4cGgzT0Z5ckEyRkdTQzJnYlVyamJqN0ZaMFVnZ1lDaHdjVzZJdjVV?=
 =?utf-8?B?NzB6NkNBR0lsaG5PSVNORnFYUXdoRnlSMC8yNlJoekhzUW0ydURvTTRWSkdy?=
 =?utf-8?B?dTVRdXlWY21nL1NENHk5elUraUxrZWx4dEdwZk43em1OYkp0N3FoeTFSNEFX?=
 =?utf-8?B?dERnNjZGL1ZoMWtPVVp1OFVHVTl2dlRoQnRlOU1yRG9iVnBlMm9ZSmZZdm1G?=
 =?utf-8?B?M0tRWkFMa0lpdGM1NUZ1RzJiZUk0Z1YzM3grbUhjaC81WWcrcnlMdjVkb3Ba?=
 =?utf-8?B?eWZyQUc0a2pBVm1jWWRtK2wvL2lKMVZnNnJVNWpZTTdrMFhaRldEZ1ZpMWs1?=
 =?utf-8?B?TDdpVjYveTQ0U1NpeW5ycWplWkY1aTNtVW5BVGxISDRiMFh4eDNUbFNtbklJ?=
 =?utf-8?B?Q3dPV3J3REREbWpnUXJHOXJCcWNOTFRKYWgxSmJBQlp4Tm4wc2tpUEk0U05Z?=
 =?utf-8?B?dzc3SmxXUWtwUCs2bTZZTmFFcXpIeXI4aDFGak55ck10NUthYUh2N2NXK3FX?=
 =?utf-8?B?aUFFeVQxR2Mra1lsWFgrQldUaTNLTW8zVm44VmZUeHBqZ1NKb255aEt5cElO?=
 =?utf-8?B?dlUzbkh2Y09uWit2MlJQNDhPQnhnMC9GKzVOV2wrVTBMNVc1OHZFWVJqT3pW?=
 =?utf-8?B?QjkzQmpCQ1psVlVLcUE3NmMwcWlkT3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U25OdGxuQ05oSGtZTDErSTZKQTc2RFFMSmc5RzcrSWQwc2s0OFl1QjE2S2RK?=
 =?utf-8?B?RGl0bjlFZm9ha29EbjJCL1JzSUl6ZXdVYk5UQVVYcEdsTmI4WGhFOUM4dkoz?=
 =?utf-8?B?T1JYR0YyZjhucFQ2dS9uQlhvT0U4Z1E3ejJPM3YxTHdiU3pqVStXQTgzQ2Vq?=
 =?utf-8?B?aDFhYTVvbXdZL3Z5cE90YmxWRC8yT05UbjNVS1VYd2ZLeFdiZStrS2trOFIw?=
 =?utf-8?B?NzZRRktBYnJ3TFdvUXRkNEtPb2FEeGdlV3hpREsvWVBRQ283aW1xNkJwU21D?=
 =?utf-8?B?azFpdkE2TEhPQUZ6YnJCVHJZcTJLeTJyMzBuMldqNEZGZ2RCUHFuVlB5Z0RQ?=
 =?utf-8?B?SjFadzNqQS9JMkg2ZlJSVVlvV0MvWHlDRHJOYU96Z3YzQ3FHc2o1UDdhRGwz?=
 =?utf-8?B?VjNuRk55Y0FRNStJblFoM0dnNitsWTZjNUNDOUFuTmp5VUpqeStOZlphL0t5?=
 =?utf-8?B?M0pUWjVMOHJIc0xrZW9TMjJOaWdFcTdZNTNpQ0RVWG9xLzIxVm1SbGNHeERE?=
 =?utf-8?B?Zm9JNjdjSUJXQWxiR3F6QW8rRitibzVINTM5SXh5a2hPeURjSCtVWHlWdE9N?=
 =?utf-8?B?WUp3QWZNdHc0RnNYclNNclNud1VMeUdMQ3FlQ1hSUGQwSVZkRDlTYVBEQnU2?=
 =?utf-8?B?alJYVTQ4ODlFTEhRKzM1Z3M3V25JcDYwMVhnTTVyekk0bjV6eUZZZjlrQWRM?=
 =?utf-8?B?dU0rVTNtVkpWWG5RUnhhWXo3VUt6cHFZUFF1ak4wQmNMWElFVXR1R1o3TkU5?=
 =?utf-8?B?UHI2dHVzZU9xQXdlSEF3alVwUjc4OHovczNvNnpDWVQ2NzlDL09OcWd5bllH?=
 =?utf-8?B?U0dHc25LRDRRNE5PY0VrWmRDbTZrZ2JvSEdnZUtqdDB6RTcrWTExalJ0Qnkw?=
 =?utf-8?B?c1E2YTlyNXA5VFIxU1YzZnB5ZVVuQms4MlBPUVN4dWl5bjdsSXBSZDYrdjlE?=
 =?utf-8?B?UUpkVmFXMTVOaTZVYWtpc0lsYTdxa2pzQmdxKzZnM2ErL3hKZW9tcEJ1dERo?=
 =?utf-8?B?SHZBTit0bGIxYjk2UjNFdmQ4YU5URU02blVoNUFRWWYwU29GT1BlTFJTUmdo?=
 =?utf-8?B?aWtxdHFNZjJMSzNyWEZrV3hQVklEbDVGRmV4SlJpcEY4MWFvMjl0Y0Nldjd2?=
 =?utf-8?B?QkhvQVZ0NlFiNHdNMDA3NHVkZGlXQ25sU0tJcmw0Umg2OTBjODNXMVRhMWVa?=
 =?utf-8?B?elB6cWFWTlhZOE5BQXM2UnNjK0d2UWQxSitqaHBjejg5eHNsV2w5blFsdjdX?=
 =?utf-8?B?UGdhNG4vMW9jQnZtMDlYK3k4YzE0eTNnT0FveWRicUZaSkJQa1h1dUdhUVRl?=
 =?utf-8?B?OExhUVZzYmpZbXRDeXFMYXl3UzNqcXFVTGNLWnVIRk8vNDh0OXNWSnNmVmJv?=
 =?utf-8?B?bFJYMzMrYjJ1YWxUSjRSVkpKcHp5UDRZQWpPd1ZlVHV2aHRjRmtGNExvWTRM?=
 =?utf-8?B?Z1EyUGNqVlRESEFUcjZEMGVyY1BmZnlJaVVnVk91R2NhOGhIcjdKbHZCSmgr?=
 =?utf-8?B?ZHdVM1QvRHJUU2pkdHVxTHVxZEVjQlFpVmQvWDZNU0h0MHBnRnVlSjJIMGVJ?=
 =?utf-8?B?QnJJanlmSFgyWTd2WTZkZ2tJb2JiRXdRNzB2eVczeld4Ym11ZWpmZkhMUlVO?=
 =?utf-8?B?WXpmaUdha1NxVU1jREZ2cTNSWUVIb29FNlJqMGZPZnBtdmR1K0RxeS94MHps?=
 =?utf-8?B?M0dOdlMybis2RDRicnlOdGRkMWRRZUhUNXhaUVFNOHpBQk5zV0tsR1hmbGhu?=
 =?utf-8?B?U1FkQUgyL25mSm94WlI2dEdURkdQYTdkeTJvSFZoRVJJZkNETGs1cTdYNFY4?=
 =?utf-8?B?eno0RVl3MXg0Ujl2ZVNQb2ZuOTRYNy9qbjZla08zWkJRQ2dETWI0TzNJTEJX?=
 =?utf-8?B?bEVPM0M3aVZ3eW9JT1lIV01sL1RQSHNJaVNUbkNzZC9hWEc0NE1vejdGbUlt?=
 =?utf-8?B?ZysyUzlPem1ZcWdwOGVBZFdXWnhMVEVSQXl2UW5tVmQ3RCtBZitqU2VNelVJ?=
 =?utf-8?B?YVhMQXRXWjJESFk1TUZ1Y1g4R0wzTnExWmtBa0hybmtZSTQyL3lUdjArRHFD?=
 =?utf-8?B?QStGNzFUVDQ5ZHdORVhKUjdDTW9rNFYzeFUzSDY5MGo5bGFnUVprVnIycUc1?=
 =?utf-8?B?K2p5Q2d4QzBML2M1Q3BvZ1F0cEkyWndtSWVqbGpzQnNyOHR4VmhkaHQ0bXdl?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 865331a0-874d-40a5-e598-08dc7fd0515d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 11:13:07.7701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I4tpal45kxweIE835pMLB+YnCoVOhYzccJ4G4cW9C7ULrqCT+TnWRJOp3pjWKGZT5nJ5CrmnXR/YZYbPi+xpd9uBWp615HykZs88scbqxqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716981200; x=1748517200;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DwwRugjXGJ2n14+rp4NT6TPH1XKHY/GAyDh48ZBOvew=;
 b=eImD/o+j2mCa7dSPcn2gDInuYC6O+136X0xI998I/Ete/dRuTxI1AU38
 qaHTxZmqu7AD8dAmHUL/mPWivQWqnPZgD8jE4TRXJSBFvsAAuauNIZ52m
 QRtEF8glJx2XnIj8hHkvZBGC3LbwGFcnkFIUKx0ELP9LDeaE3lv/pHuSu
 I6mwsL1g0DiMaAy7p50SbwB7h8kUYGRRfIHy9yDjf+XFqaLPp8+Abp1mh
 yUb8ZF3+Rbku1tdiysXy7uNJ9Aj6bHu3bLBwfm7Sn/dcyyy/Wjifhu3jL
 okd5F4OnEigTu069N0vt2XJ1dAHQgFXnrYRVKb03Q41DNePFmhogW/BoM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eImD/o+j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Fix S0ix
 residency on Meteor Lake corporate systems
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
Cc: intel-wired-lan@osuosl.org, Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 1:43 PM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for the patch.
> 
> Am 28.05.24 um 12:33 schrieb Vitaly Lifshits:
>> From: Dima Ruinskiy <dima.ruinskiy@intel.com>
>>
>> On vPro systems,the  configuration of the I219-LM to achieve power
> 
> s/,the  /, the /
Thank you for noticing it.
I will fix it in a v2.
> 
>> gating and S0ix residency is split between the driver and the CSME FW.
>> It was discovered that in some scenarios, where the network cable is
>> connected and then disconnected, S0ix residency is not always reached.
> 
> Disconnected at any point, or just during suspend?
Yes, at any point.
> 
> Any URL to the reports?
Yes, https://bugs.launchpad.net/sutton/+bug/2054657
> 
>> This was root-caused to a subset of I219-LM register writes that are not
>> performed by the CSME FW. Therefore, the driver should perform these
>> register writes on corporate setups, regardless of the CSME FW state.
> 
> Is that documented somewhere?
Only in an internal documentation.
> 
> Please add more information about the affected systems, and the test 
> environment (firmware versions, …).
It is mentioned at the beginning of the commit, Meteorlake vPro systems.

> 
>> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
>> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
>> Signed-off-by: Vitaly.Lifshits <vitaly.lifshits@intel.com>
> 
> The line above with the dot can be removed.
Will be fixed in a v2.
> 
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 132 ++++++++++-----------
>>   1 file changed, 66 insertions(+), 66 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index da5c59daf8ba..3cd161c6672b 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6363,49 +6363,49 @@ static void e1000e_s0ix_entry_flow(struct 
>> e1000_adapter *adapter)
>>           mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
>>           ew32(EXTCNF_CTRL, mac_data);
>> -        /* Enable the Dynamic Power Gating in the MAC */
>> -        mac_data = er32(FEXTNVM7);
>> -        mac_data |= BIT(22);
>> -        ew32(FEXTNVM7, mac_data);
>> -
>>           /* Disable disconnected cable conditioning for Power Gating */
>>           mac_data = er32(DPGFR);
>>           mac_data |= BIT(2);
>>           ew32(DPGFR, mac_data);
>> -        /* Don't wake from dynamic Power Gating with clock request */
>> -        mac_data = er32(FEXTNVM12);
>> -        mac_data |= BIT(12);
>> -        ew32(FEXTNVM12, mac_data);
>> -
>> -        /* Ungate PGCB clock */
>> -        mac_data = er32(FEXTNVM9);
>> -        mac_data &= ~BIT(28);
>> -        ew32(FEXTNVM9, mac_data);
>> -
>> -        /* Enable K1 off to enable mPHY Power Gating */
>> -        mac_data = er32(FEXTNVM6);
>> -        mac_data |= BIT(31);
>> -        ew32(FEXTNVM6, mac_data);
>> -
>> -        /* Enable mPHY power gating for any link and speed */
>> -        mac_data = er32(FEXTNVM8);
>> -        mac_data |= BIT(9);
>> -        ew32(FEXTNVM8, mac_data);
>> -
>>           /* Enable the Dynamic Clock Gating in the DMA and MAC */
>>           mac_data = er32(CTRL_EXT);
>>           mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
>>           ew32(CTRL_EXT, mac_data);
>> -
>> -        /* No MAC DPG gating SLP_S0 in modern standby
>> -         * Switch the logic of the lanphypc to use PMC counter
>> -         */
>> -        mac_data = er32(FEXTNVM5);
>> -        mac_data |= BIT(7);
>> -        ew32(FEXTNVM5, mac_data);
>>       }
>> +    /* Enable the Dynamic Power Gating in the MAC */
>> +    mac_data = er32(FEXTNVM7);
>> +    mac_data |= BIT(22);
>> +    ew32(FEXTNVM7, mac_data);
>> +
>> +    /* Don't wake from dynamic Power Gating with clock request */
>> +    mac_data = er32(FEXTNVM12);
>> +    mac_data |= BIT(12);
>> +    ew32(FEXTNVM12, mac_data);
>> +
>> +    /* Ungate PGCB clock */
>> +    mac_data = er32(FEXTNVM9);
>> +    mac_data &= ~BIT(28);
>> +    ew32(FEXTNVM9, mac_data);
>> +
>> +    /* Enable K1 off to enable mPHY Power Gating */
>> +    mac_data = er32(FEXTNVM6);
>> +    mac_data |= BIT(31);
>> +    ew32(FEXTNVM6, mac_data);
>> +
>> +    /* Enable mPHY power gating for any link and speed */
>> +    mac_data = er32(FEXTNVM8);
>> +    mac_data |= BIT(9);
>> +    ew32(FEXTNVM8, mac_data);
>> +
>> +    /* No MAC DPG gating SLP_S0 in modern standby
>> +     * Switch the logic of the lanphypc to use PMC counter
>> +     */
>> +    mac_data = er32(FEXTNVM5);
>> +    mac_data |= BIT(7);
>> +    ew32(FEXTNVM5, mac_data);
>> +
>>       /* Disable the time synchronization clock */
>>       mac_data = er32(FEXTNVM7);
>>       mac_data |= BIT(31);
>> @@ -6498,33 +6498,6 @@ static void e1000e_s0ix_exit_flow(struct 
>> e1000_adapter *adapter)
>>       } else {
>>           /* Request driver unconfigure the device from S0ix */
>> -        /* Disable the Dynamic Power Gating in the MAC */
>> -        mac_data = er32(FEXTNVM7);
>> -        mac_data &= 0xFFBFFFFF;
>> -        ew32(FEXTNVM7, mac_data);
>> -
>> -        /* Disable mPHY power gating for any link and speed */
>> -        mac_data = er32(FEXTNVM8);
>> -        mac_data &= ~BIT(9);
>> -        ew32(FEXTNVM8, mac_data);
>> -
>> -        /* Disable K1 off */
>> -        mac_data = er32(FEXTNVM6);
>> -        mac_data &= ~BIT(31);
>> -        ew32(FEXTNVM6, mac_data);
>> -
>> -        /* Disable Ungate PGCB clock */
>> -        mac_data = er32(FEXTNVM9);
>> -        mac_data |= BIT(28);
>> -        ew32(FEXTNVM9, mac_data);
>> -
>> -        /* Cancel not waking from dynamic
>> -         * Power Gating with clock request
>> -         */
>> -        mac_data = er32(FEXTNVM12);
>> -        mac_data &= ~BIT(12);
>> -        ew32(FEXTNVM12, mac_data);
>> -
>>           /* Cancel disable disconnected cable conditioning
>>            * for Power Gating
>>            */
>> @@ -6537,13 +6510,6 @@ static void e1000e_s0ix_exit_flow(struct 
>> e1000_adapter *adapter)
>>           mac_data &= 0xFFF7FFFF;
>>           ew32(CTRL_EXT, mac_data);
>> -        /* Revert the lanphypc logic to use the internal Gbe counter
>> -         * and not the PMC counter
>> -         */
>> -        mac_data = er32(FEXTNVM5);
>> -        mac_data &= 0xFFFFFF7F;
>> -        ew32(FEXTNVM5, mac_data);
>> -
>>           /* Enable the periodic inband message,
>>            * Request PCIe clock in K1 page770_17[10:9] =01b
>>            */
>> @@ -6581,6 +6547,40 @@ static void e1000e_s0ix_exit_flow(struct 
>> e1000_adapter *adapter)
>>       mac_data &= ~BIT(31);
>>       mac_data |= BIT(0);
>>       ew32(FEXTNVM7, mac_data);
>> +
>> +    /* Disable the Dynamic Power Gating in the MAC */
>> +    mac_data = er32(FEXTNVM7);
>> +    mac_data &= 0xFFBFFFFF;
>> +    ew32(FEXTNVM7, mac_data);
>> +
>> +    /* Disable mPHY power gating for any link and speed */
>> +    mac_data = er32(FEXTNVM8);
>> +    mac_data &= ~BIT(9);
>> +    ew32(FEXTNVM8, mac_data);
>> +
>> +    /* Disable K1 off */
>> +    mac_data = er32(FEXTNVM6);
>> +    mac_data &= ~BIT(31);
>> +    ew32(FEXTNVM6, mac_data);
>> +
>> +    /* Disable Ungate PGCB clock */
>> +    mac_data = er32(FEXTNVM9);
>> +    mac_data |= BIT(28);
>> +    ew32(FEXTNVM9, mac_data);
>> +
>> +    /* Cancel not waking from dynamic
>> +     * Power Gating with clock request
>> +     */
>> +    mac_data = er32(FEXTNVM12);
>> +    mac_data &= ~BIT(12);
>> +    ew32(FEXTNVM12, mac_data);
>> +
>> +    /* Revert the lanphypc logic to use the internal Gbe counter
>> +     * and not the PMC counter
>> +     */
>> +    mac_data = er32(FEXTNVM5);
>> +    mac_data &= 0xFFFFFF7F;
>> +    ew32(FEXTNVM5, mac_data);
>>   }
>>   static int e1000e_pm_freeze(struct device *dev)
> 
> Doesn’t moving this out of the branch and running it unconditionally 
> affect a lot more systems than Meteor Lake?
> 
> 
> Kind regards,
> 
> Paul
