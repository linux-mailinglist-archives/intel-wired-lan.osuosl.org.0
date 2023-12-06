Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82347806400
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F89A61412;
	Wed,  6 Dec 2023 01:18:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F89A61412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701825499;
	bh=ixCvOfRSOMjHARBlCq/hO+VjOBo6y3gShqN604Akasw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ti743ovUI+XQJDjWTV8jZ0Na8ugnqC7qLM8+yyMMAOP5pDfJMnZ7f3LyPZeBCJ7KE
	 IYuQhaMftUimpRqldx4zY0vmNBYDgw4mqJLqYXM8I9NOaLz/NsiGnRScYrX/OUtNoC
	 0lCW6l4Vu0X66z/KIWxiKZJeyuKT6HwXacCwYksg9pizYymNFlrbLExP1KYUdQpp6n
	 S9jP0Re9GE+7BFiMkaIB8kZjJv1xyc33CRtSCX88F25WBSDkW5IdwAESNpb8EUZfBQ
	 ix65Qb3/jnaXTX2DQK+RyYEQxcVLu4KHaY4vx8uB31zxiLPtTCix9lEbx8dAHU0sOh
	 t3GAmFCf8GTMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJvdHZA4RpZb; Wed,  6 Dec 2023 01:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D94046116D;
	Wed,  6 Dec 2023 01:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D94046116D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09D9A1BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D894B40BFD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D894B40BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ho4VXXD0zVU9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:18:11 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Dec 2023 01:18:11 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50C3B4029B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50C3B4029B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:18:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1073267"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; 
   d="scan'208";a="1073267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:11:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="837138125"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="837138125"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 17:11:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 17:11:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 17:11:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 17:11:02 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 5 Dec 2023 17:11:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUucESLlkVztGRL2pcAU9rbj/OfFBBCxWPgWi21u2++Twp/bZ2c19btQYsaj5takY5Reb88vuvWAOqElCJY2hFlmjGvwWpW1Qr8qmuOsds0ckk5yAbPiQxPIIhvvW6pcdjaVbmNUsjl0OsHuqzAt1GEiuK8PzsqOGLy0+F0CK9EaskMCaO1daYRIVBSHfDUmp23FjubARP2gGGNwsrqC9I50u6v6p0lCNNJdnG+zCCpjySDevWLy3D+2C1AkvPQvh5vk+maZBSs+2udldwhJQNSGYPFIS2VmZzmvnTtACtx09ootNZ6lUVcXymTDoDAq1M82i0/MnNP+yVnbr2jjNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHej4d0TbSVPoUzUGCGXit9ZYITzAe1jWkbHsG6NxQY=;
 b=AtVQlhnPrRT/fQRKLeNfP/oi5xRF2Eb5uCV7GwcT0JhQfW3dibz6jx9ahvvxL9RTZYKMldjV/NQ4o/ESKXBOkrWB67dxJW3iJ7rS3rG9i2t9Q9N5wTJvIUlzGj447ZhjmHwfgKrDrcd2TlrTk13SELFNz2QTBeyVlX4aoVARuVWb+BNHe5kbIZ1pe1fUms9Ey60L+4dbmlumAq3j37yhiverdCWz3Gmmz72q9HbtIC1EnnsmJq3w6jSbDF7V8Po40RgyDCxez/DW+/RrEklqSdv+gU8y3y5WLXEqNNPyqC5xwOx3KcZayHbvFrmO3WnLj8aqgmHtVER7RBTyRnlcXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 01:10:59 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d%6]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 01:10:59 +0000
Message-ID: <eff20fb6-d2d3-4b12-8d46-1cd891ad0156@intel.com>
Date: Tue, 5 Dec 2023 17:10:58 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20231130214511.647586-1-jesse.brandeburg@intel.com>
 <212e5518-0f72-4bf5-bc5f-49d184be1931@intel.com>
 <97ed09be-cb2b-48c3-846d-7a0e453ef816@intel.com>
 <30c89a45-602f-4fd4-9fe0-70f335859f8f@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <30c89a45-602f-4fd4-9fe0-70f335859f8f@intel.com>
X-ClientProxiedBy: MW3PR06CA0015.namprd06.prod.outlook.com
 (2603:10b6:303:2a::20) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|LV8PR11MB8509:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f2cd5fe-cfc2-485e-a216-08dbf5f834fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9t8qMANukNSt20VwEw2kjqpW5PtL7u009CepNAyD8UVV5SpjhN2wpDtsb3NrhrGDVSZO78pFd26/f8Ckk3gCYiWTfjwES0umzwrAGoA9ZoeMQFmvDbGMt00MwKdhZ/x1pyLByPbB9IibsPDuTGKkT3p+jOVOppvy73muny6YQgZAdNNvm+EHmDK+v4hYvaeGfD8KVpRJZcfMk2wtSZVZCRGRUMXqfzaGUw58Eqo2clpTmlQZYL4wOdqHEYszkO7zXuyCQmwc5mwe76nTQtkuE6VSG/0tnIhN/Ge4GWaFfJQ1+97unsYe7ZvnHCg56G0WmRym02AMmNDKvYnMgmz1baaIv/VTz56kZ25764vuMNGB6urb4z8o1rJ1mtNZMf1kgDkLZ4BLW5i8AB6RRzEElktpoD/iAIuLrm7ucbLe/Qvyy1ShNcxbNsi+QMOcFoTRpQDzBZziJhtY4ptqRMkIIsCn2qIWRtMlGQt3r+yggZ0OPktVqd9dDmiBOs9P95TWrgkzCqVGfTZzllyxZLdkjH2Z/SmJ8v1uXtbcAOj2zfBPE4VnXI18T3gqywtFjOKtOT8hgsN2Krhw3vqbAAtoyEaey/2HrHUtv1nAY46B4xkgsMst9z4+QyRmUEhvQ9OqU/0NfRjJ1dcKTa2LrdzjgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(346002)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(82960400001)(26005)(83380400001)(36756003)(41300700001)(53546011)(6506007)(31686004)(6512007)(38100700002)(2616005)(6486002)(2906002)(31696002)(66476007)(86362001)(44832011)(37006003)(66946007)(5660300002)(6636002)(316002)(8936002)(478600001)(66556008)(6862004)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nlc4VlNFa0MrOVJuUnYvV1RJaTFhTzZBZzdmbVA2N1NCT09ocCtqclNoOTBW?=
 =?utf-8?B?STJYT0s0cnRVaE1KL096SkQ2UEYwOGVPQjkrTmRtVko2bUxlN004VURhV0hE?=
 =?utf-8?B?NllqcXVIbWxlQnJrU0JZWFRrTzFjeFE4TkJUQ25FNlBXejkwdEtjM3J4MGRh?=
 =?utf-8?B?M3k2SGRQNDlROUJROVpQb05KQVlPUHFOUE03RWlheHpkUTRqUzN3czVpeUNS?=
 =?utf-8?B?Y281OGgvNlQ0cFh6b3NzMllZSm9WeXBQTG1BcUJyYUJLQnV5Qjd0bVFPbzR5?=
 =?utf-8?B?WXFKTzFkTk8wTEoyZGxINFI4SVRmWXlDWXZiS2Zld0RYamQzWVFUSWQ2YUlw?=
 =?utf-8?B?eFFYRkx6YWZBVTh4dmhTakp2ZEJWMXoyc3E2VEd2ZjY1NWRkc0J4TUkxVTBF?=
 =?utf-8?B?Rk93Q1F0SVVVZlZVcDljTWZNRkVnZE40TWIrWDY4M1pxck9FSU5nTnc0OFQw?=
 =?utf-8?B?V256VzREb1dsWjFjZHNQVkUzbFdaUThWMmJ2U1Bvc1VWODZqQ3hzRzUvRS9j?=
 =?utf-8?B?VEV2bUlTd043KzVhTzk5L3M4Y2VMa3Axd3QyMERsSERpT21FSU9DQlZadXJR?=
 =?utf-8?B?d2R5b3Y0dTZoZUhybkYxS0FFRThZVXp5WjdKcHQxNmFGeVJraWN4RkFMMEgv?=
 =?utf-8?B?bTVTUk5NTzdjV21rZm9OSzhraURXNkIwaCtFSFpZUGo2S0JRTXIzT01Qdldi?=
 =?utf-8?B?M2cyS3NNRmxPamFHTm8xaGZlSjZ1OXl6emc1Ym16VURyQ3hBUWRmK091bDhO?=
 =?utf-8?B?Rm9BV3ZtUmxiRHlDQlZZUk8zcWszajNQLzJRM2tjekdiYlNCOFJ4VkU2Q095?=
 =?utf-8?B?SU92bTZvRkdqZm1sdm9VK0tIalFldnFJaVJVVE1UVSt1NWMzOGdJRG4rY1ZW?=
 =?utf-8?B?ZFVtTkU3MlZPY2s3b2VtRHNSQWdDR1I0U0p3YVFXdHBlSiswNVlTZDZDWlR5?=
 =?utf-8?B?dzlZUkhtdlNxSk5vZU5pdUk0WWc0aTlON2VlbE1SNEEwdDByV2xqQ3FDT3BY?=
 =?utf-8?B?c3V0Q2dEY0lPdUFzekZoZjBuRnQyVVpDOEpkZGtOTjhzUUFWdXhiUG5RaFEy?=
 =?utf-8?B?QkozdU1SM091VEN3YU9JbEFHVUhLMGVJeHdYUVJCa2t2d2hBN2F1d2VQUm9M?=
 =?utf-8?B?ZFB3NmFGbDE5dE0wV3l0bDV4dnlhMWcyTjVjUy8xOFowMWZ2VXFuVG8rREFp?=
 =?utf-8?B?RkptdUNXdDZzbnViY1JjcHdrWndZZ2VlYmNBR3dXM3lFcUNYaXhnak0raHlZ?=
 =?utf-8?B?aGl2WWl3MS9sK3E5MjN5blBMTnNHTDFsT3N4Z1JHTEhwOVl5TXo5bUJvWXVL?=
 =?utf-8?B?TnhGM3c1RXN4eFp5QWtPeUZHTXhJVkc5b1BPMGxxY2VUZGxDK1N5blhUUkps?=
 =?utf-8?B?MjNOb3hTSFpuN3ZYOXE3SUwyUmVkeEMveXp0eTZFa1AraUtsYko4dVZaWnBL?=
 =?utf-8?B?YnN6ZEp5Tkt3MTlPUUlXaEo3Tjk4c3ZER1JjWk92WU05SHZlOUwwd1k5Mzkx?=
 =?utf-8?B?SHpaUjlWRjU3SGVteUtCemFQTzNEVWtNdHNMT1luZkFsdCt5b0M5MUhOaGJE?=
 =?utf-8?B?NGt4Skg1OTZBbW1UakxwMVFEZVllLy9haWpwcVFJMVR3TGFjdWhiMitDWXFD?=
 =?utf-8?B?em5ET04rbW85NXNrUUdwdU9BVVp1bVczazA3Wk5zc29TWktPN1RWL0NzU1V5?=
 =?utf-8?B?YnY5Y043TURVUlNhc0hGeC9YSjNnK21jS3FHamJTN1M5QlRBUjBVMFlHN25B?=
 =?utf-8?B?aGIrV0V2ZkYrWXJrWUhXTFQ1UUhadXJDeThUMUpKY0xWWFVtcndmYmNPb2Q0?=
 =?utf-8?B?d29KemdMdC9HMGZ5TjV2ZWZVYWdSQXlyVlI0c0w1L2NwL2JETHBLWXIzV1VB?=
 =?utf-8?B?REZ1QktFbXJQU0RrdlRpc1F2QzRiQTI0elBOYi9DbUJVWCt3NlFIcEo0YzNp?=
 =?utf-8?B?aUpudk9LTFdIYTRwaHcycEtTbkkzeVdPUDc0VWNUbzRhc0J4MXliYVNUNmxK?=
 =?utf-8?B?b2JNb2E0RVpxOGROTWpvNWQydm5tQWM1MFhTbXpmdDBwTlYvelp1eDd2SnJL?=
 =?utf-8?B?WjhIWmtlTzljbUFPM2N4eUc4MjlkdlZRL2Y1YkRhVVA1cWFQNVFtVnFaV2xs?=
 =?utf-8?B?Nk8rQmlCZEZOWDRheHh3TTRoUDJDK0pod09XRVpnSm9WcmxjUDBvTnFmdUdu?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2cd5fe-cfc2-485e-a216-08dbf5f834fa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 01:10:59.4116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6CcHFQtE+69VTpowXCG4FJh+outLB4R4zwrryzoD/pVxZK+xemj5o3b9slT/5JYNNAxxCop26W6d13TziZxbnAvfizqXy3M8rAseZL45IFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701825491; x=1733361491;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pYoe2DCw4TA8jAco3DFxHCDXgJ8Hwoy7rg9DCgYF+hk=;
 b=KVVN9q0E5UKfkiStWucPv1GWxw9PVt0SQRNM6WPF6BUMt/S3x8wfqe0n
 ksNol3BngUhZ6VXv8Rzo99lsNvv+8YjSzFSeVcQwWMwqHm4D0+SBdJ+ba
 EKYIKLktCB7RXARfMq6HUC+Jyoqp3AndRMTvHrEpkCHfnQydpe8Mrv9rp
 qQ+cjQSea0TVsCvw9wfsBonPe6b01aM8dfyelprAlD7ZibCypsPaNGe47
 hQptOO66iaynDvcqGL5SOPxu0kGQyyZrtrz1B3ezojdM7hSS0oAC5xEkt
 S4y37oLu9C9p97Agxxo9ry7xwse2ddSo1SznbCc5pJwi9Eezl4gD8e77O
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KVVN9q0E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: refactor some
 missing field get/prep conversions
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
Cc: Julia Lawall <julia.lawall@inria.fr>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/4/2023 2:26 AM, Alexander Lobakin wrote:
yping.
> 
> What is "not a constant"?
> 
> 	ring[nta] = FIELD_PREP(IDPF_RX_BI_GEN_M,
> 			       test_bit(__IDPF_Q_GEN_CHK, flags));
> 
> Is there a problem with this ^ code?
> 
> "The scripts ignored that" is not a good argument I'd say :>

Fixed in v2


>> Generally I'd prefer that the kind of check above returned a bool with a
>> constant conversion of the mask (compile time) to an LE16 mask, and then
>> use that, which is why all of our other drivers do that instead.
> 
> Ah, good point. Smth like
> 
> 		gen = !!(tx_desc->qid_comptype_gen &
> 			 IDPF_TXQ_COMPLQ_GEN_M_LE);

Yeah, it would be nice but I didn't add that to this series. But you
have the idea.

> 
> OTOH x86 is always LE and BE is seen more and more rarely nowadays. It
> might just not worth having a LE-version of each such mask for the sake
> of a bit more optimized code on architectures where our drivers are
> barely used.

Our drivers should work on BE, IMO. sparse annotations takes care of
making sure we have the conversions right, they cost nothing on x86.

> 
>>
>>>
>>> Moreover, you could use le*_{get,encode,replace}_bits() to get/set LE
>>> values right away without 2-step operation (from/to CPU + masks), but
>>> you didn't do that here (see below for an example).

Done in v2.

>>
>> Those aren't widely used yet in our drivers so I wasn't picking them up
>> yet. But thank you for pointing that out.
>>
>> <snip>
>>
>>
>>> In general, I would say those two issues are very common in IDPF and
>>> also the whole your series converting the Intel drivers. The scripts
>>> won't check whether the mask has only 1 bit or whether the value gets
>>> converted from/to LE, so they won't help here.
>>
>> I had been hoping to do some more followup work. it's possible that with
>> some tweaking the coccinelle script could learn how to detect non-pow2
>> constants, and therefore possibly one bit constants as well. Maybe
>> @Julia can help us refine the script and possibly get it into the
>> scripts/coccinelle directory to help other drivers as well.
> 
> Every automated change needs polishing by human.
> 
> Don't FIELD_*() macros already check whether the passed mask is actually
> a contiguous mask?

Yes

> 
>>
>>> Could you maybe manually recheck all the places where bitfield masks are
>>> used at least in IDPF (better in ice, iavf, i40e, ..., as well) and
>>> posted a series that would address them? At the end, manual work is more
>>> valuable than automated conversions :p
>>
>> I think a followup series would work better for this, do you agree?
> 
> Nope :D If you want to convert all of our drivers to use bitfield API,
> I'd like to see a complete mature series instead of incremental series
> of series where followups will refactor the code introduced in the
> earlier ones.

v2 of the previous series sent with audit of all *cpu* conversions and
fixing up leXX_*_bits() opportunities.

Appreciate the reviews!

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
