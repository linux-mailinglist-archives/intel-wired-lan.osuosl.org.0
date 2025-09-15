Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEBBB58822
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 01:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5753B60D61;
	Mon, 15 Sep 2025 23:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZkT7tHIZkM3t; Mon, 15 Sep 2025 23:21:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8242860D59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757978469;
	bh=Bl82ePRActPhlDjdq5VfBbIi5YED3r6JtJVSx20YiC4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sq9Sy0kUX5/bfIpvt/BlStRrCRKP9VyOj7TcOzzsuhAwsLvJkWrvEKcHRnGQClCB5
	 2y3n8a5b7ozom7mk87ByUE8OIzKzxkaMODikwT6fcY+AhxLZmeKZR/td6OBOIfU9SW
	 9xFlyhdagAHpKQMgntoCDJrgFaxg2fvTNOmrzkkB9igVfM907WJVPoHzDSdu41k4SV
	 ocLR/ZA1PL/IOE2SV8jX2q5N3KACSXXAnt/Se9Fp29bwZmf/4tghPJUuRgYULWLJVT
	 fuhwkV4mfOGrU//jF71xxT5hZqm1ZfkhaJdq5U5ksf+FhMcCFdB8ACoZAHPe2l929c
	 nQnjVr4p907rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8242860D59;
	Mon, 15 Sep 2025 23:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DEE1522F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 23:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4230402F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 23:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O8E7ozDPXeBk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 23:21:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 336E3402DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 336E3402DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 336E3402DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 23:21:05 +0000 (UTC)
X-CSE-ConnectionGUID: RDGMuwRSRiaoJeEmEAR9zw==
X-CSE-MsgGUID: XOAbzDthS8u7DyQ/KJlMmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59296027"
X-IronPort-AV: E=Sophos;i="6.18,267,1751266800"; d="scan'208";a="59296027"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 16:21:05 -0700
X-CSE-ConnectionGUID: nZ+Zeow3Q1qWqFgs7BsTAg==
X-CSE-MsgGUID: d9tno7knSqmF/ClFbyiu/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,267,1751266800"; d="scan'208";a="173906635"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 16:21:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 16:21:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 16:21:04 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 16:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F0Uox3MaFLa4BjaE09WnWpa523BDbAk6L6ZdMO8QTK/zLfqNrC8EuiwujOAJLZX34R/K2PgZSJ7lOcjOi3rlAe10y/uEk1Nz7aVHunz+auq+7gmUXppGjfq4Y27R7ELzbEYCtLoV+UWD2iWPxN1avc3t8M2CpLg8t8LScK6U7We5EGACnzoSA3xmVArD+xVGSrlpRpivcenjmNmXTAznswjZWanOHk6bKHK2Gyfr8CeKSRyiuoptij0nIiCGJStLiNdoDkSJcJpPMcOe5eEXJlUvGlx34cs9kPZmSY+Mqvrhmly3s6nly4TTkVlq4k9gVrfbbeVejfe452Wz+1YhIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bl82ePRActPhlDjdq5VfBbIi5YED3r6JtJVSx20YiC4=;
 b=Up/ARJ97rfOU8R3vAffprd7in0ny/kGAStPMX2GPivAbI8wHwuG5GAQYg5ikTHYo1qC2YPpxxFp/9Y6szLUSJsObnrqVAHQQD470cen0QcwSu98hIqaJ3NzUjaowkF1v/BaG9wWw4QmhdO8kiIu3B8TG1jsuTNj7JaxihU/D18eMdp1wGUiiL/LwZFx7gLlD5OT/SMIRUBQG9b+2rYOY6epz4a0CD0g2zSeRB0O0xOZPVt5h7a7fv4wXRJKJ3N4q7CA2Jy+TvfLMz7Cgt4j6Ql70mOlAZjlD7OU9dC9t668IolulzwizAe8TlEyjb4+1xck0obBBR3tIZyF6jyGZZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5094.namprd11.prod.outlook.com (2603:10b6:510:3f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 23:20:57 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 23:20:57 +0000
Message-ID: <6de12304-090e-424c-83cc-11da8c8f0a5a@intel.com>
Date: Mon, 15 Sep 2025 16:20:54 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Breno Leitao
 <leitao@debian.org>, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <202509140606.j8z3rE73-lkp@intel.com>
 <mpxxgmukbabs7hkasdph24vg2pt3myjojab3vocpgerm77so4m@n3dwy7mypowe>
 <38605896-5268-4f19-9835-77a4c3f07b94@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <38605896-5268-4f19-9835-77a4c3f07b94@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0269.namprd03.prod.outlook.com
 (2603:10b6:303:b4::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5094:EE_
X-MS-Office365-Filtering-Correlation-Id: 13851aa7-006f-46f3-9c74-08ddf4ae8620
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWd2UVBoQ3NoelNyMDMwZUk2Z1NpMlV6QVRqREdTck50Y3hEZ1M5QVE2ZGha?=
 =?utf-8?B?MmtPUitIc3JyTkp4bDhoMXRHczlxeWpnWkRENGNBVlpMRlhpVjlXYk9ibmtE?=
 =?utf-8?B?cCtxQVZSSlovWXpVbTIrNVdJbGwyKzRydGJMaG8rU0FDdEtITUp0OHVVWFUw?=
 =?utf-8?B?NGt3aTg2SzhQdDA4bzR5UHB3Y0hwNUtrV1B1ZDlOWWxON1lIdG9OakROc2pW?=
 =?utf-8?B?N01lNzloeURtaDNidTZGc0hwNmY0dERiaDNsK0o1MXBGTUczOFQzNDNLeC9P?=
 =?utf-8?B?KzR3NTB3bFBLS2FUajJWMXpqZ1ZyVkxsKzd6bG1zbDZic0RWOXVZL1pWS3Av?=
 =?utf-8?B?UGk1WU8rdUhuKzNvU0JJZnFLc3NBRkN0WmhhdG01ZGdFbFQ5Njd1SGwwSnZl?=
 =?utf-8?B?aFpQZTNmUkJrcTV5ZFpJRStBdTZ5dHVCcUYvMTh3enk3aTBHd3lFUUdjdWVt?=
 =?utf-8?B?TFhOY1FyaDlwQ2Z4Sm9oVGUza1Y4WmFJMkdWaTlGYnVZZldLeWlWSkcvUnZ1?=
 =?utf-8?B?T0J2V0k0K3lKMWJ1MkhsWVNRb0FuL2FHYnFpYUM3dzRrV2xjQ2FtWm0vLzNI?=
 =?utf-8?B?TE1BcERPY1JvUTRMTE1ZLzR6WThnRnBQV1U2a0FLWHBmOXNpNjR5ejVEb0FV?=
 =?utf-8?B?WmNCVkV1M2ViMVVBQ1FQRTRQNEpxaVhkUHBud1U2eWVtczE2YVBIYzZaSEtp?=
 =?utf-8?B?TUxXeDdyUi82QXhGYWt3cDZGU0F3TG9rQzNabndSMkVtbVlmTS93N2JyY25N?=
 =?utf-8?B?b2lqcDY5bGNMM2NyK290VFp2NkhmSzdiMkVscXdUTE5SOWQxUGV0cU9EemlU?=
 =?utf-8?B?b1NqeG9vaFB6T0Y5cit4cjVTNk5UY3JwVVhUREdKSjlkVy9kVHUwZkV4WWly?=
 =?utf-8?B?K1N1Y2E0RGU0MHpuaEx1MzFtZ3N4TWkyWFAyZVo1RHVLZ1JPV1h1SHM5QllF?=
 =?utf-8?B?UmRMQjlOU1FNaG5CWmpBb1VCOERyZG90ZGdEUTlKUS9SRmtTd1k2TWYzRjVD?=
 =?utf-8?B?UkVxZC9nT2YwYkEwanhyVUtsQlNpa2JvU1ZydFlJT3llc2dyTE9OMUVaRGdF?=
 =?utf-8?B?KzBGR2VCNm82eTZnRmxINktKU2Rpdm1SR3E4ZUsrYnFZaEdGZHpweVBCUUx6?=
 =?utf-8?B?UnlIK3ZyYys4NEdlSEhiN3Vma3JJdXBKai9YZzE3bGpVR3lVNFFxOUR6elN5?=
 =?utf-8?B?RG82WmZUQ0tTekxmY3VvMVZoczVWTkVORjJFTG9QVzJ5bzhBV1ZZNW1aak03?=
 =?utf-8?B?TUlCL01xVlNJWCtUeE5jTzNnblQyUFlPQ0RLY1lvenJiQTZFTmZLd1VJS3hV?=
 =?utf-8?B?eEJWNlRvU1NCQlh5U2ptZmFQdXFpS1dQUmkxOHd2dmcrM25MYlVyaEZlQlJz?=
 =?utf-8?B?SWxpTGpoT1BGYXJrVkd4UXYyZXNzZThhRmdsQi9nMGt3YmsrNjVsUmk1QVgr?=
 =?utf-8?B?YUdxc1hiMTRuWUgvRlp1UGtTLyt4NlBVYXRNa2NSblJsM0ZTZnptREVRSU1v?=
 =?utf-8?B?RkNaUGwvd000YlFkQUJFOFBad1B3Vkk0SU1BeXY3VUVJOEpiMFhjZyt3cSsw?=
 =?utf-8?B?R1BON3IvSnRUeWI3NitiN0JJZEhWdDhSZGpqQzF1alRmNk1mOHFQZUdmRGNQ?=
 =?utf-8?B?d3UrVEl0ZmRUbHREWVAzV0U1TlBuK25qMnJ0dHdVZk9HV0x0UWdmQUJqeEdr?=
 =?utf-8?B?cFovUUIrU3VYamNzV3FBOGdySUVDbjVhV2xWSUYvTGx4VlFNOGpPOXNETnZV?=
 =?utf-8?B?YTNxZmVOSDZWM3hyeHcvRTV6Vlo5MTMxeTZZWFg1UWVOWWNHbVR0V21lUW83?=
 =?utf-8?B?QUlwaEpXcW1obGFyQ21lM0xZQ25KZFh1cGlUaEs1c3JZd2pDQ0NtWjExa05s?=
 =?utf-8?B?SkUzWmtZSjExTzB6SEt5OXJMcnZxUkx2ODlZeEhCVkwxZWtmZEFaTUpyNmFk?=
 =?utf-8?Q?gcZLwl4hMfM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTkvUzUxNExBeVhKMEtDYyszVkdSQUZ5MEx5dGtra2tobGpPUHljY2htcXdT?=
 =?utf-8?B?ZE1WcGR1WmdMaVRDZ3lBZzFDVTdObFdCUlhCSFBTYmFIN1E3Y2J5WG1nTEMy?=
 =?utf-8?B?Z0lEc28yV1Fob28wWHFWK3lBbXA2YWtiL2VwRGR6OUtla0kwRFA1SCtkOWdq?=
 =?utf-8?B?TkRRTzR3M0JHY2ZvRTczbHJqcXNmT0xXU1J3Tmg2UFZkZG1XdkREamRRSGNM?=
 =?utf-8?B?R3VYa1g0SkZpNnpxa0JDSkNpbzhLMklTcFBmaStCYi9lZFZDWTVyMnRZZEpj?=
 =?utf-8?B?TThGR2ZiM2JjSXBHSGhqbS9BWmQ5M1labjhiU3RPa1Jnd2xBZ0gwbkw2TEhM?=
 =?utf-8?B?YTdoRzJXd2hROUUzMlNrLzVva3JBbHZxR1JJZTV2aS9NRXFxNm5seHYrUnFO?=
 =?utf-8?B?czlMcURYMHlOMTNrS2dqTDZYa3dlL1FZZEtXQXVGTjdDaHpoak1Ic2F3Q2dK?=
 =?utf-8?B?akJuWjJVNjMyOUkremw1N1ZyMGlTRUVob2xKTU5OMUg0Um1veS9FWkdzcVZo?=
 =?utf-8?B?cCtQZE94UVQvenliSzB3ZDRIVkdIVzRodWc0R2NveG5KdEFQaWRENGp2QytI?=
 =?utf-8?B?OUE0azQ4MWp0ZUl5YjJoZWx4U2ttV2pISHVnTVQvYjBhMDJZTXlEblNOejkw?=
 =?utf-8?B?WDlwQksvUXhjb1A0SDhHa05TRTgvUTVrMEkwQnRsZTNvelE2aWhKREM1TXBY?=
 =?utf-8?B?Q0N5SnJBUE9yZ1VBbGlSVGxSazNjVWd0bUdUY2ZuL2t4VFRtOFlTbUJtSEt4?=
 =?utf-8?B?NldaRzdkaEJtTENaV0dKY0FxeU8zZ2VlWXhyTFJtRGxnN1lUYTJLWEpJcHhH?=
 =?utf-8?B?RXBWblByUGh5ak1QSlpabEZ2MXU4MXROcE9iYm82d21rcXhJdmhxNjUzUEk0?=
 =?utf-8?B?cytaUzE1V2hJOGg3UVpIVHI1TlF3STdtWm9SUGF4QmVFb1FJUWNwdEtTZi9N?=
 =?utf-8?B?K0V1NHkrRUV5UEE0TnlnWjZmWk5WaDZweWhLSm1HcDkzay8wcWNqL2NnTms3?=
 =?utf-8?B?Rm1maksrb2E0bkg3WkgrRHpuVDlSR3d0TmZmdXprbkNLY1ZjSUcwYnA0Qm1o?=
 =?utf-8?B?b1BFdExpMU5rbjdlQ2g4TjdhVTBqOFlYdUhmZTRwUFEzcEdVWVNKMlBIK3cy?=
 =?utf-8?B?YytoV3RBNytBcWlLc00ycncwKzJyTVJiajZIL2dQSHllaCtWTU1XTGhtWTFw?=
 =?utf-8?B?YjdOQk9jaTR0V1k0NHRaSi9FQ0JNZXB0MDVoeUo5T3A2WHVPODRlaE5CV1U1?=
 =?utf-8?B?cXF6ejExRnh3c0JoemZhSjJRbmg5YXdyMkI2NmxFU1NZMDBZWEIzOC9xM3JJ?=
 =?utf-8?B?TS9FZFZZdEo0UnlxVGhYNzRwdDhlYk04aFZGZkN5UktsVzJ1YWV6aWJ4UTNo?=
 =?utf-8?B?NzhZSkRPYXVUUUl2SXpudG9MUlNYbmhlSUZ5UHI0NGp6UUN6eTc4WWIvd3dp?=
 =?utf-8?B?UkZiVEV5MjVXQ1J5WnIyOEdaaFMyS2NEdXNVZGEvWkV3TFVqY3o3dkc5MjIr?=
 =?utf-8?B?MHE4UENXWjl5cFRYM2phQkhTUDBVeGJNOW85eE1ISWsvREpRaENkUjlkNTVH?=
 =?utf-8?B?T2NRMFY1TEdUaXF6aytkdnc2TXJLTnFiOUR2dEpsT0pBMk1tbkZLaUpsb1Zi?=
 =?utf-8?B?ck9pOFhvaDc5eGhHb3hMOUNUWFFqdjZML1VTWllRNEhVQzRvMXlnODVZbXRI?=
 =?utf-8?B?MVBnTkJPdlFWRFEydVl3eWFWREF1a2l3MXpJaTF2YS9tMU01WWMxbFpqaVJW?=
 =?utf-8?B?T1FPNThLV3o1RmR5Vmplb2JUS2YrOWlnVEN2aFd1WG8zc2NSajRPVWpRc0RZ?=
 =?utf-8?B?QU9wM1czTGFURmMxUTRBYmRNckxLNXFRYWozcWphNnBKQ3RlTXZ6eit1M0NM?=
 =?utf-8?B?b3BGcEVlTTFmWXRkTlBVcEo4YVY0RENjeGhDZVJjb2RoQURvYVNlczNGaDl0?=
 =?utf-8?B?aWZBekx1OE1zQUxVdlV1ZkZ2MVRPZytEcWFqRWx0L0xkYjFXS1NMbGttdGFn?=
 =?utf-8?B?NUVaTjZYWHFBM3ZyaDBFNzkrWHd4NGgzeTVqazJuWXVVeG9UWkhaV1I0ZFl6?=
 =?utf-8?B?VUN2YlVwdXFWcmpwNGtldG1mNU9sZDNFWExHZXU1TnFiU212Ky95SVFiTDln?=
 =?utf-8?B?NHhEWFVjbFhVekZGbnFRODFza3k4N2lWb0RhZ1NSL1dvS0ZXb2QzTWk1UUYy?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13851aa7-006f-46f3-9c74-08ddf4ae8620
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 23:20:57.0137 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OEyNhwsDjhWYZwFmR7klNpkViFIAggwkL1myMSYJZ59QymKPLwNMu2YDQymHOju0TMaYAC7nwag4c6OTaFBGeMNCEgB2BrwmAc40P386Fkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5094
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757978466; x=1789514466;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Znp4VYiwJgtVTa+5890B0BMwmTSt+Rj12sKC/rQriCE=;
 b=NW4sGYd9cNfaKY4oseurgy2eiaY9ED2/mo6Ab9IXjxeff/v4UIgSAdz/
 U6JCA6G+2tYd/9vAxYMEXwJ5h9ydn8T5W8T42cglz1dEdYoN9U60vo5tS
 Rcw+6AVCoyb3smTkILoBDjSEHU4iSIV9CCjLDs2CmnDP01KNeY0E0M9hY
 cg8UBT57v2RaLWMaiYisM9zl/MBvfoWBRVOMMYTRVcpPkY4zFPSHZV6bU
 QDQS455Iv8V2zPpSiM/wDd9dgpPrjWH2gT94qOiSxKh9oCnM0WrpPYLHt
 5p8pXsM6qEWMths6A2iRriFro4tptdqq4YqwUdZUHgluUgvgS8YvTl/js
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NW4sGYd9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 a6c7254e995a80be8c3239fb631d9d65c9e75248
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
Cc: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/15/2025 5:51 AM, Przemek Kitszel wrote:
> On 9/15/25 12:14, Breno Leitao wrote:
>> On Sun, Sep 14, 2025 at 06:05:17AM +0800, kernel test robot wrote:
>>> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/ 
>>> next-queue.git dev-queue
>>> branch HEAD: a6c7254e995a80be8c3239fb631d9d65c9e75248  idpf: enable 
>>> XSk features and ndo_xsk_wakeup
>>>
>>> Error/Warning ids grouped by kconfigs:
>>>
>>> recent_errors
>>> `-- loongarch-loongson3_defconfig
>>>      |-- ld.lld:error:undefined-symbol:libie_fwlog_deinit
>>>      |-- ld.lld:error:undefined-symbol:libie_fwlog_init
>>>      `-- ld.lld:error:undefined-symbol:libie_get_fwlog_data
>>
>> I am having a similar issue on net-next, where the kernel is failing to
>> compile due to the undefined symbols above.
>>
>> This happens when CONFIG_ICE is set.

Hi Breno,

I think I may have found something. Can you share what your CONFIG_ICE 
and CONFIG_IXGBE are set to? If different, could you try matching them 
and see if that fixes the issue?

Thanks,
Tony

>>
> 
> thank you for a human report!
> 
> I were analyzing this in the past, (after all fixes by Michal), and
> code looked fine, despite lkp complains.
> 
> Now, when an actual problem reproduces, I tried it too, and indeed there
> was problem - but, it was not a full build (I made a full build just
> before fwlog PR, then just added the patches)
> 
> during my attempts at understanding what happens, I have fixed the
> problem on my machine, so not sure what was needed.
> 
> I have moved the below line prior to #includes in fwlog.c:
>   #define DEFAULT_SYMBOL_NAMESPACE        "LIBIE_FWLOG"
> 
> that itself didn't helped, and with that reverted the fwlog.o an .ko
> files are still building
> 
> I have invoked
> make nsdeps # in the root of the tree, interrupted in a few minutes
> then later:
> make M=drivers/net/ethernet/intel/libie -j nsdeps
> what got my attention as the very first time that I got fwlog.o
> 
> sorry, I have no time for proper digging if there is some incremental
> build problem (which I have no idea to classify as a "wrong build-user
> operations" vs "buildsystem issue"), at least today

