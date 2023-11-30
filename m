Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EE77FEE69
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 12:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B2DD6F683;
	Thu, 30 Nov 2023 11:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B2DD6F683
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701345576;
	bh=ZHoEnL5Tsii67/0Z0QKquyWoxNf3aCZQkFCbmsvkODM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MJAaHRGpFPB+HbB22Ty3F8xyCE4qK2wC7B+NGdnDjNIRV/E/VELkYviVDGX5LrYW/
	 c6jIndHgdiidZybWXedDz2CqyC7R2swyqd3x4Jj7k/eIzrB0WAobNNaBtJejYF/+rB
	 Oj1mWmmBU1X0a1G7o1232UpwGt3o2CWLmWLtLuIWtTzzDbQPP/6UctV3fjM24qt/Rj
	 R7SnX/DJqwxUxz8MEjiCBLLtPJhsmd1R3dqvIyzUfGPGEY4Rhk3v8ZaHk5GGQaEx0W
	 IMn+/l8s+pOK8/cfW0s4Dz7qao0t7s9AytLWsK9YFNkK+R4mR5hlaNz4gZ6dIRGSTt
	 l2NFSSqCy2fSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VgMnp2D-GVwl; Thu, 30 Nov 2023 11:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A6146F5C3;
	Thu, 30 Nov 2023 11:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A6146F5C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C69A1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 710606F6A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 710606F6A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o4xmwoAwO0Ya for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 11:59:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 65DA96F5C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65DA96F5C3
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424462155"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="424462155"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 03:59:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="860175038"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="860175038"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 03:59:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 03:59:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 03:59:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 03:59:24 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 03:59:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PXmumuYHbeU9g0XtIpiiPc70JueuqEKHfk5+FTe5eXjiI4HxI7504tIxnKFspJme2LEs7vKJfYtGciQetEMDyfVOpSBSP+TagUz3w9Sn5hBugVU2HGEk6G6f5tKRBAR8CqWMWiqiNx+Y1aRBmWYZ4mMkcFmqyl3ZECxxXEFIWGcnUf0OMKM10VZWmx81OTNWNvljRxl76xV96D1x6B/M10ECX9RHkzyMp99YwE5gNv0ASn+PogJXWPrkRsZPCXhGZEE25VTBhQiyYsxv8ei6pvkpSlRr5wA3QFXccLbER3fi9Ws3nbR0rPUfHSu2RyekPvHMT/WxZOj1n2xT6oPILg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iff1Tu/WfnfuJWJZkIwgSLMM+YZtqLE1hZADlxkNFTE=;
 b=h5zuR9bsJRh6zpwrSKRH5Y9EU49dR/O5FPnqAeACoI0CkBqsha20QerWmJDF/PWnDVRWjTjo/StrY+1jJ7h173bhy4xmK9rhBRNRFZsuY9xZDFM0NOiewaSl05HmgvS1W7tsPYMyPcOFsAPwRpJQI+WoozvaLmbkEdcy+2nSjW4SGbwP5jt9rqWl6Ynx7yjioVKF+Zlrqelk6S0kIhvC8rqjJVqfYkP/bNLYPYOF06iICTRLWKXpWKuR9NgD338pBs5G9lyGXhdf3xP0S3bGhNUxfhWq3VWNTDGAALJdWV93Oc4+UF3ICtFCc4qosnhb2wmzvwwmDq9M7V4+ZfPxPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH8PR11MB6706.namprd11.prod.outlook.com (2603:10b6:510:1c5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Thu, 30 Nov
 2023 11:59:17 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 11:59:17 +0000
Message-ID: <d8631d76-4bb3-41a4-a2b2-86725867d2a9@intel.com>
Date: Thu, 30 Nov 2023 12:58:27 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yunsheng Lin <linyunsheng@huawei.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-4-aleksander.lobakin@intel.com>
 <6bd14aa9-fa65-e4f6-579c-3a1064b2a382@huawei.com>
 <a1a0c27f-f367-40e7-9dc2-9421b4b6379a@intel.com>
 <534e7752-38a9-3e7e-cb04-65789712fb66@huawei.com>
 <8c6d09be-78d0-436e-a5a6-b94fb094b0b3@intel.com>
 <4814a337-454b-d476-dabe-5035dd6dc51f@huawei.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <4814a337-454b-d476-dabe-5035dd6dc51f@huawei.com>
X-ClientProxiedBy: DB3PR08CA0031.eurprd08.prod.outlook.com (2603:10a6:8::44)
 To DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH8PR11MB6706:EE_
X-MS-Office365-Filtering-Correlation-Id: 73c0c545-f19c-42ad-8f26-08dbf19bc7a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SQJ68upDlUBwIEYQsZau2C7jVJV6edeUKjBCcMnHnBbkcR1ZTmxtsH/YIBHsxvCFEpwWY2Y5MVGIt2HIaZvZ2beVEiR9m9SBjvpxkfG5tNc6f62HTdLAo/o/sINl1b8ZWaK7xDU5urLBvGxN8vmKaKZCNOELk0dID1AyulV4bVHq0zGdGauXOuUf6tJ+X9rd94RDK375B3kPiOWTUhHBc/rcs2DFRI71iNHjki0fJ1TteuBU+8xJ+NEUWKAnKANu2Cc2guV4hmwVt5wp1CeDYcxtt6ziug8LQP8nA01elj/bzhUahQBX6VYFoTppurQx+uCzsq3yqN+FB0sif5bhFCOVtxJMRKBlQMhPg25ke+jkdysr+XPxsGRCzCfug4c2KqpYyz4pzmQ4eA2KED8BCO28gTy9+4HeOfTx6HTwLESFBtunPZ6zB7w6SK2v0ukEnCaNOI+UQzWycDeT2qDzmq0C1xUE8TYhpkq9ArDb8Le8n00x13wFLzs0RgWz9YM1zKthOiuT4esq0CNaEXRmyhoVvBPYo+PGRzCRpuyDF69k+I3/Q5gXRbPryG8ssaSdLCtYuN36oxrWh2AAnIJD7KSeYfdF9x1cgncq5e08q+k1j+vLu/xkXJt/nww4LUSdA77S0yFblbgOA5QFPYMYFgxUgsXqB2VLfOVJfR0g0eqhSWFC/OsTjXk08Rn2va8p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(136003)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(26005)(36756003)(53546011)(6506007)(6666004)(41300700001)(2616005)(6512007)(82960400001)(202311291699003)(66946007)(83380400001)(6486002)(966005)(86362001)(6916009)(316002)(66476007)(66556008)(54906003)(2906002)(5660300002)(7416002)(4326008)(8936002)(8676002)(38100700002)(31696002)(31686004)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGdzMWRDUS8veGROVUJwTkJqVUY0cFduRGhaWWIzYzQwSW5iMTlrN0c4ZHdL?=
 =?utf-8?B?OW5YaXgxcEZHY3NJRjZHcGJhVnRDQUVSZ2YzQ1d0YlhMc3RPSE5iVGFhVXFO?=
 =?utf-8?B?SlB2NzN6QWJXci9mSWVUb0ZiYkcvaDhsK3hhZHlMVEpPWVdqYSs3UXR0d2pw?=
 =?utf-8?B?V3M2SHJzOFBKSUhGdXdPdE5udGhyNEQxeXJ2MC9hM0ptWEVuUlA0cU4zaGty?=
 =?utf-8?B?UzRJcmx4SW9RTWpSRlk4S3lONm9xUHZZOS8xUXhnd0JRVXowQjhLWWpyWlB2?=
 =?utf-8?B?RVVsRk05aEdWZlU5M1VqN3Z2b1RwWkFYeDRhNkFZd0JMMW5JbTVzejlOYU10?=
 =?utf-8?B?T3Y2bWpFNUZjVStSNmhMNEdDWitaZmRDMUhUQzA0YXRXV2k2RjVTQUZGYUVq?=
 =?utf-8?B?UjZsb3hCTkJiOWRvNEtHbmlBRTR1dVZxLzRlZEpqK08yWi8vaTZxZnBjT3lC?=
 =?utf-8?B?dlFOZXZEUTIycVROOVltNkNkaUpuUkVhQUw3bDdza0JSZm8rQWpwQzJ4SWl3?=
 =?utf-8?B?YnZtbHBGckhTaVJjWlZ1Vm5KK254akIzeFZDWW1aMEdrcnRSUHNVU0Q0amVY?=
 =?utf-8?B?UG5BR0dybU1NSjJ4RWg0RFRRcXpScVVvTTAxMkhMRm9GRW5HcnVMSFdVUTh1?=
 =?utf-8?B?Y3pubDhxTVFLbm45VUh1UGs5U252VHJobVl2aVY2STlKTG1uZG8xVjh2Zjgw?=
 =?utf-8?B?ZnEzaFlwWE8vYzJDOVRrRW5KUXU0em9QQ0w1MW1zdGk5VmRyS09sWmoxRzZC?=
 =?utf-8?B?UlJNVHNHUUNQMTZ2RTNYYzZwUnloK2s2d2RhVmJ3UExmeDlTYnVzVjU0dGZ2?=
 =?utf-8?B?eWtLSjFjd0dVUEx3dUFYbXFkQ0prdE95VXJPUVFhcE42bVhpNllRN1hoSHVH?=
 =?utf-8?B?YmNIV2I1RndPbHJVR2p1cTJtdEtrOHJnNEVwR1luV3R4c3BzQUp1UEFUa2kv?=
 =?utf-8?B?UFBTMjNVNGdzdmwxaDgwbkZFUFVGTnRZYnZ4ZnJmWTNGNG0zUGpYcWQ2TDlQ?=
 =?utf-8?B?cEJZeUxmb2JlVW1XVGRmMkpPRjlOcFl3dzI2T1BMRU1pdkthVU5wUWZLT05U?=
 =?utf-8?B?cWtiRTc5bXhpeVdoUFJXMDdBNGJ3bXlFc0Q3MGhVR280Q0NCL0JrdXNCT1Vn?=
 =?utf-8?B?cFhXZTJKZnFTWEZkc0pvOFUyRmp0dW9vRlJRQXExdmVxbWZiMFBCaDgxczNV?=
 =?utf-8?B?U2dVNDBiLzFJajQ0amhFaUhpUXVOdnBkMnB2VkNiRmZtdDVCUytGVTJaSHJi?=
 =?utf-8?B?Vk1XYllRUEtnTThaOURCeVdER2FOOTlOMVBFOVo5djViTWJQQ2t4akZhZUI3?=
 =?utf-8?B?b1ZGcU4yUDVVRHRKcXEvanBIOGtsNTBLTmNLdXZya2s1VlgxRm1RSnllcW5I?=
 =?utf-8?B?aEZvZ1QyOUVoSjA1cVNtUEI2eU42dHJwb2RjdFBySnB4MEJtaTJGUnlmK2JL?=
 =?utf-8?B?WTlPTFRwU0llZ3J1TVRGN2Y5M2UwR3dCK01xM3RSeFlXdzRoM1RHTjcxTjY0?=
 =?utf-8?B?NHdKUVJ2V3A5NXZsZURoQVFpNVlmUlBYb1VXOXJ1aG8zZHk5ZXZsMWRDU0g3?=
 =?utf-8?B?VWx6WWJYR3MxSTBiSnA4L09TSzRCckVCcDEycjBlSmxxcDNwL2VkYnNheXV1?=
 =?utf-8?B?TlhQZVo1blZtS1duU1RxSTRLcHA5MWVoWlllZlNXZTA1RTFIMEo0REZ4WEVo?=
 =?utf-8?B?QnhtbUxWNTVxTE9JM1BwVElTcTlJenUwbmVib3lHV0JOeVJTUWMwMWw3K2tn?=
 =?utf-8?B?QjNDNlQ5QU11SnNJTkI2ZHdtK05BOWdrVVpHb2MzVTQzWTgzM2NKMFRTR0JQ?=
 =?utf-8?B?a0g3MUJMclAzOWJQTEVzRFFBa1NpaVVHMEhtbnRRK3N6dDZEYWF2MTRaeEIz?=
 =?utf-8?B?Z21IbytoMDkvVXdhTU8yR0JMNU1PUWhMakYvcG5aWkhMRjlMLy9FUnVOZjM1?=
 =?utf-8?B?RlovMnlVcHVML2xHRE1BVDFDakNKQm56YkhFUUtJV2JUaG9OcUtLRWhNMXZp?=
 =?utf-8?B?NTJGSW13WHF1K1pBdStUYjQwbnBhNEhhd21MdmUzN0xuODJRUGt6b2V1MjY3?=
 =?utf-8?B?UmMwVlR2cWp0Qy9uZG11a2t2RWRQVDVGUnM4RFRiQ213RFd0c081aldDY0M5?=
 =?utf-8?B?M25yYzJ6Uy9mSTR4Tk5QcjZIbUQrTmhmV2w3OEt4eHRLRmYrRjRxc3ZPWWJr?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73c0c545-f19c-42ad-8f26-08dbf19bc7a4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2023 11:59:17.6814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ecfIh1gulhZYmXm5CrAdQ04N0GEDUu67AVw8USGSQuNDiS3FUeDh6goBcTuJx9rq8Vt6pvWjVj+C2nN/IZKmTLD6Z0wHfkfe8NU4yN3MdDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6706
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701345568; x=1732881568;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K3N04p/mrufVzSEMIdy1LxEGQoZYeRDn/hG46a4DwWg=;
 b=S8wW5uUYSrvJOSjkGMKSV+DaWMXBu5zKhE5kIfqTUzJa8U6QzMLMnxVk
 WBXhdP9X96vJJpBzhsnlNKOpcXgPQ93SbYGknj5217FOLMrLxaVKPzy2Z
 D6rTxUBO9I5pAT9zP+fu4N/GRCMcJwNkdqqo+SD9eeOTC0nQLLQVvPD5M
 rkut+UqtZ4tbFoFxEk1yOcR4SjrLcYHa2PLryXATsAZsUUan4QNcORJt9
 s/9IcHbx0hCS8Sl01WHV3jUeDFTfGbPd43iBUX1u2rcC33j9zpcSkldE0
 jshBjVFjwqS+0qx0N62xG60RpWW2fuOcHp2rpgriLPqlIcvQP133XszBo
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S8wW5uUY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 03/14] page_pool: avoid
 calling no-op externals when possible
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yunsheng Lin <linyunsheng@huawei.com>
Date: Thu, 30 Nov 2023 16:46:11 +0800

> On 2023/11/29 21:17, Alexander Lobakin wrote:
>> From: Yunsheng Lin <linyunsheng@huawei.com>
>> Date: Wed, 29 Nov 2023 11:17:50 +0800
>>
>>> On 2023/11/27 22:32, Alexander Lobakin wrote:
>>>>
>>>> Chris, any thoughts on a global flag for skipping DMA syncs ladder?
>>>
>>> It seems there was one already in the past:
>>>
>>> https://lore.kernel.org/netdev/7c55a4d7-b4aa-25d4-1917-f6f355bd722e@arm.com/T/
>>
>> It addresses a different problem, meaningless indirect calls, while this
>> one addresses meaningless direct calls :>
>> When the above gets merged, we could combine these two into one global,
>> but Eric wasn't active with his patch and I remember there were some
>> problems, so I wouldn't count on that it will arrive soon.
> 
> I went through the above patch, It seems to me that there was no
> fundamental problem that stopping us from implementing it in the dma
> layer basing on Eric' patch if Eric is no longer interested in working
> on a newer version?

I'm somewhat interested in continuing working on Eric's patch, but not
now. Have some urgent projects to work on, I could take this in January
I guess...
This PP-specific shortcut was done earlier and gives good boosts. It
would be trivial to remove it together with the XSk shortcut once a
generic both indirect and direct call DMA shortcut lands.
Does this sounds good / justified enough? Or you and other
reviewers/maintainers would prefer to wait for the generic one without
taking this patch?

> 
> It is just that if we allow every subsystem and driver using dma API
> doing their own trick of skipping dma sync, then there is less willing
> to implement it in the dma layer.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
