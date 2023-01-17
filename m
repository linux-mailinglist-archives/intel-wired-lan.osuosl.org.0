Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D3966E75D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 21:03:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 183834052A;
	Tue, 17 Jan 2023 20:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 183834052A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673985821;
	bh=zQ2N50Ergp62tg5Qc4LDedygpXJMV+1R7gEyBW+U1No=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2KXhiEjguoiMz9wmLcwq59riGtfirT4MYP/r9Sk9dzjPwW+H4npeCNJb+kgtOoJze
	 E8YT3D4P6RSiNwJMOUaIY3yUag/lMapx6ZsR/Z40XozdnGzcqX/qHhfTSfy5EfMHMV
	 svCp7nI1JBw8me3/+vmI8ZgEs7jsjA8u2ovk1yH9rOc1+W0RjxMGUwHuzUJ+y4qqhl
	 boXGbjFxqBZZUDrUz0Xn22VptNASicj6/MTatqF74FZwj4uuQ8I+bcbufEhxjR9ZMn
	 v73bwo1mAXlk1r8Nd6g+aA4RiZojK40tOrhVNqjfahDyBNThKnEkqJxOPpP8x4w4tU
	 0kFwLizSf5eYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MG4IVWlaChIH; Tue, 17 Jan 2023 20:03:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0BCD408CA;
	Tue, 17 Jan 2023 20:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0BCD408CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C937A1BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 20:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2E764036F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 20:03:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2E764036F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsmL-e0bRQ6L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 20:03:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 903D840187
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 903D840187
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 20:03:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="324855368"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="324855368"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 12:03:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="722801340"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="722801340"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jan 2023 12:03:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 12:03:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 12:03:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 12:03:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SjFpczdKfa1p0EiEHVKM6P8csM5O8FpZFSV/VKuRZDjWhi8aEIDI+enRvZthsIs44MgeehhJFTuzhzJzacuiGMAh5vncO24b5uxesylJh1HVApmOItDs4lYGp61yN/qkJM1IZTKTJfG6UNAqA2/pOaLs8t804utZynynU4zF/q/BUueeEE1zz//g0y1JNuAQnDQSkAaRT5NIYI+5TRzF7KXdnaFt4BctZcVLf1/ydZMzwQVt4SMLY7w3hfoS9o0XtXXUdKwsJP3yD7fCe6e5wQ3LKdGglJEsNHl1G6ngtPn/sHWocvyJHRGaad2rzBZ1I9HDdAplXhVLhraptUk8xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lnwNdeFO2gFC+O8Wimsr/eAoe0eccR7GygLgJ+NHW7M=;
 b=PlCwleHD+g2ltOM7rhaQwfC0EmhBurwJfkbNZlJg9/A1028GC0dpMWe8jA0aS/J2GkcytabK7AfxVTSEe7SQ7Bd8s8ZBnQJO5bbWNxiT77kydsc8MIWjWmbKrLpQOkNVH+W0zwDlrpkHmhNoekDQ0t+2jt7wMLsQh8/ULTWsyCCNkRjkVsJpmaQ5p5dhylVxadZq+lOhlEC1gw5TWBoLsrFo+SwJ/oyDzwlO7QFMg67re17Tgq4Hd9JY4J/cUfsH/qvbA2NsIEh+FvHDQmpNwS0g6NsziROaC002HQd0b/ChICiHatOXHIxMYv/4tPF75eW75NTF5AzxmyBkeS72/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY8PR11MB7133.namprd11.prod.outlook.com (2603:10b6:930:63::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 17 Jan
 2023 20:03:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 20:03:26 +0000
Message-ID: <2156a274-3224-440f-ee68-3f359a3a7b9a@intel.com>
Date: Tue, 17 Jan 2023 12:03:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230113131717.186154-1-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230113131717.186154-1-jan.sokolowski@intel.com>
X-ClientProxiedBy: BY5PR17CA0026.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::39) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY8PR11MB7133:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b3d5085-d1ac-4918-b114-08daf8c5e51b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rKrdTHibbMwEBQ4Qcw/z8ilZDY6ygIB3rTjTvFLx5K4CYnC+2TMfOLNf8U7FMn20+AbYqbOG6PcZ2I0RYJeOwUwN3nVA3xbtYKz3VFJN6SsxnLlI0thqJKyKQ0RT73baJgoZ0KyzgSj/XyedpvO0nHNHQCmcxOQQh4npmqI3/P8TdIcWszAo1EU7IBoIAxopphlIE7gVAJh2xvi1StZwVuLOT7KqlMnTkjCEua46sCw62N8mAfp8K+X2xVlObVlXjewqtNvE4io0itSkx+8uEmddS9xe3Nug7siS3zM34Lrtbz0rdOYxwxcjo1Y57jTqUbsS+PeaZwhSIVx1yet/AR5SmCA0/jJtRVrB54Gg9LQ47D1DJc4nv8cCbfTx8VAnuAYYHgyH0O62X2K2VyQ6NYG2e/JL/ClQrYUKeFFr/LSb8iJNR1tGRUaW9rlrE4gKYjuG9XkpZp1MsyW5Q+LbI6n4gIWmSWGbcXz1fxG/5eg8R+RARGhBYtwfE1yBTapz/GmpoSt1OZ9O9to4+kQmovkClq8Dy4R69B37Sem4pZognOUgAXE4niIyw0HSkEt7Hmmh4ukdxOz3AHmjTY9TWetcGfLbeyFIq87CF3fO904kOyNtkLUIpcPDOfqzgRd+7TTx0hWBkZuwMxn861JfY+RIM04GUCwFfIIsY7DQYqu9isJEnDsCgKU3jz7YWMkq0gjzi0+kXbx9FXWNiclFXUet2GbOME3FVy28xXk8kZJuj8ufdyIi9OC1FgEvk5tv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199015)(36756003)(83380400001)(41300700001)(8936002)(2616005)(8676002)(54906003)(4326008)(316002)(53546011)(5660300002)(38100700002)(86362001)(82960400001)(31696002)(2906002)(66556008)(66946007)(30864003)(66476007)(186003)(478600001)(6486002)(966005)(6512007)(26005)(31686004)(107886003)(6666004)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGU4ZEhqUjArVWIzUlREY2RNOU9zUzJFODdGVXBkbHZrWWxBSUo2RzlYUXRa?=
 =?utf-8?B?SmtSMjNMd2ZyUkpRWXdYbDc2ZXYvVFB3UzhOZkZvVzkvNWN4SEpwZ0M5WEQ0?=
 =?utf-8?B?VWRGYnRzUTM1aG5waVFFT29reTlrUGpudzZMbWJOeUo0Y3RKNEtSLzA3NVlY?=
 =?utf-8?B?KzNSbnV6emgyWktGZzNYN1c3TVJMKzlSb096TTZQNk5GTmxON3RPaTYyTjg0?=
 =?utf-8?B?K2Fva09YVVJ6TkNRaHlmakVjM2RQSDNIREJOT21ldi9NQU5BREprN0poNXJG?=
 =?utf-8?B?NDRGTG1rK2dwS252anE3OVpzWDJNYllkUnpTTGhvZVRTM1IvQ1QxeXEyRFJw?=
 =?utf-8?B?WDIwVHArRXZNbkJTcFlDRVJkdDd2aDRVWGtxVWtIK2htZ0RwMEx5U2FaaHZW?=
 =?utf-8?B?TVI4T0J4UWpQdjk3cFg2K1dxZGRpajdPZ3prYS9lbmlLOWdNSXkvdW5iRFhw?=
 =?utf-8?B?cE9xak9GV0d6TWtMK3NZZDF6emhUTlVFbWJodjVWUXlJR2hWQ3RNUTl6RXZu?=
 =?utf-8?B?NmpBaDNMdHhKNDMxWitOZVVlN01JMXRaU0dselBHRGdMYTBYL1czVVNWd1dr?=
 =?utf-8?B?aHI2eVdROE9RZjJZbndjYittOWxaQXBnRW9WVjZvazAvTVZGUXQ0SVN1eEtT?=
 =?utf-8?B?OUhoU09YVDhpZFlVRVpobXlqaUxrb0gxMXJ4clF3cGIwWGJKdXFWTlhQQkM2?=
 =?utf-8?B?WDYwSDZTY3AxTnUzU0hCMkZtOEdRcFZROEtiVGg3cU1JcTR6eTUxNDlSNUtT?=
 =?utf-8?B?RmQ0NUJMZVFIYTJ2S0hWdndNbDkrT0FLQ3JPdTBKWWhIZVF4eG94eWU5VC9X?=
 =?utf-8?B?aHdaaXcvcFJYUTRIZVhFbFVaMEhpQXZXdVZ0OHNjaWJyZkxxTktjTm1BeEZO?=
 =?utf-8?B?Zk9wb3ZwTnFXc3h4OUVYMUVaV3pubnRxWHk2UW5wamY3QjI2bGdzSjExaE05?=
 =?utf-8?B?dnpPdEVETlpRdEVSdkdYc0ZDeTlIbkhGTlp6cGJ0NGtwL3MzTkZWRlpiTzl3?=
 =?utf-8?B?dy8yQ1BoRWxKeURUeHh4SHVGTTZ3MDRXelVUcWlPY3JaS1JqVDlsdXZYUmlE?=
 =?utf-8?B?S01JeG5UNWZtWEdIZEpkVmNITUZER0dzMk9aN2E5NmIwYlNsdGg1anl6VGFt?=
 =?utf-8?B?OEJVUnV4ZmQwZGI4S3R1WlhaSnhYRFk1cU5oZDlYN2FpSHVycHEvNmxFRmtr?=
 =?utf-8?B?Y3dWNkxOaXZyR2VYaWJSU3FySFllczJqd1VkdklTNUJYOXE4aVRBVWVrVGQz?=
 =?utf-8?B?V3d6YStUeW5Ea3hrbFBXUUgvZEpJT2FHMGVYR1pyVlZiamNFL1NKcElXTzNS?=
 =?utf-8?B?aHpUM0lHNXhYSFV5M3pNdEVwNENuSHVqY0R1b1JjUkNiMForWVdKNzBKa3E2?=
 =?utf-8?B?K1drNjg4cEJyV1F2NU4zdGNYb2grOTl0eXlCUWJuRG40UzJPSndNYUxJUXNM?=
 =?utf-8?B?c05XeXU0MStkdldUZmRORGRIdy9OVkRLQ05jZzBQb3JjTUp1UUNCNnd1cjA5?=
 =?utf-8?B?dEhSRDllYzUva0FKNnY4WmZZeGpjdXBaTjl6ZXdYTGQ2M0VnY0ZOZVZNekxU?=
 =?utf-8?B?RlBWejlMREEwNWtabmFqRlVnQ3YybXVsUUpQTDFOeXpmb3VtYjMrY3o2QWxW?=
 =?utf-8?B?b3FoWk8rS2lMeHh6cG9jejN5RnZrTHhhTW95elBuZHJOMnVjMkd4N09HUUdl?=
 =?utf-8?B?cEFqUHIvM2R1Z1pSVDF6KzZCcndnSVY2RUFFZkc1VnJSU0ptcWNEUHdIWWU2?=
 =?utf-8?B?SzJ0Q2FJOXY2MWJMamE2dUNLVFhWOUxlallHYzlpV1BzY2RBKzI0K0ZyMjBs?=
 =?utf-8?B?VHpPVS9udmxRRkJkTUVBbDNrZHM1VlBMclcyU0d0WmdWaUM4czVDaEJWT0xH?=
 =?utf-8?B?RWhIaGdOclpYSjUrSzUwL0hyRVdHRUFmZ2dyRTQvZkkrRFZFMU41UnRvSWdN?=
 =?utf-8?B?KzdVZkRKSXFVb1oxWnhSNGYwRk5kNm5pRzhXV2lOakVPOU4yS2pjZXJVYVFs?=
 =?utf-8?B?L05BMzhXdjc5aEZLNDN4R3RLMElRZTBmNXZFTW1yTFd0ZXB4ZGVQUUVDdWR6?=
 =?utf-8?B?MkpKQ3JVZWpyd0JpZTA0dm5iL2V2NlJ0SlJkY01PdFA3Q3FDc1J5N2hzdGRm?=
 =?utf-8?B?WEtOdDJnNTJQaVZSdTk3UkkyU1l4MlIxZmtZL0t5UDUzZVlublNYdktJZldY?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b3d5085-d1ac-4918-b114-08daf8c5e51b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 20:03:26.4264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zl2/RK5PWvyIfP9rUXGta3yzkq1DmeMf/PrlXr69vB9xSaLeV5/sugwnj+Tj0eHe1MvWdLHzseSHvFIUMcyEojwS/pE53POz4dh0qOOoJAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7133
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673985811; x=1705521811;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DWDMxbvRM/GJmQL7RDPXjRRe8LjHw9sZ3Crz9thwXJ8=;
 b=RHejKBo3Jzz2dFRFpDUhWi+NjuJ8zIqgvvu9u1hm3jdXhRaQJ2LTgDSO
 ZvN6CrNWwpjoFaaRudeDdNQCeTwvhSg+IjIAq1pn6llEXNs3cXXaXTm/X
 OgW/jYlPtL/BNOiSn0p5I0ZW9E9QpugcUBEYXxXiKhC2D0MXCxhka+Z5Y
 5eatGf1piVVPhPyuIQpt16Jiuc1O6D5k4xUWrumbwdYXC9veCL+royj2d
 vRA47AVh4CHotQXOuRrHquRf/F5cOxaGApk5WhF+fEcUY7cTM6C3Pa0mR
 ylkEXTP/vftqoBfMWcs26YfCaK/Y1YAsxKujzWxm9PC1JAmKt6BdfhN/g
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RHejKBo3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] i40e: Add ability to
 change VFs default MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/13/2023 5:17 AM, Jan Sokolowski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Currently there is no way for a VF driver to specify if it wants to
> change it's hardware address. New bits are being added to virtchnl.h
> in struct virtchnl_ether_addr that allow the VF to correctly
> communicate this information. 

This was added with eb550f53099b ("virtchnl: Use pad byte in 
virtchnl_ether_addr to specify MAC type") which landed in 5.14. I'm not 
sure that's "new bits being added".

> However, legacy VF drivers that don't
> support the new virtchnl.h bits still need to be supported. Make a
> best effort attempt at saving the VF's primary/device address in the
> legacy case and depend on the VIRTCHNL_ETHER_ADDR_PRIMARY type for
> the new case.

This whole paragraph probably needs to be reworded.

> Legacy case - If a unicast MAC is being added and the
> default_lan_addr.addr is empty, then populate it. This assumes that the
> address is the VF's hardware address. If unicast MAC is being deleted
> and it matches the default_lan_addr.addr save the time when it happened
> and replace it with the last MAC address on the MAC filter list.
> If a unicast MAC is being added and the default_lan_addr.addr is not
> empty,
> then check if default MAC address was deleted shortly before adding
> if yes then update the default_lan_addr.addr.
> This is done because we cannot guarantee the order of
> VIRTCHNL_OP_ADD_ETH_ADDR and VIRTCHNL_OP_DEL_ETH_ADDR.
> 
> New case - If a unicast MAC is being added and it's specified as
> VIRTCHNL_ETHER_ADDR_PRIMARY, then replace the current
> default_lan_addr.addr. If a unicast MAC is being deleted and it's type
> is specified as VIRTCHNL_ETHER_ADDR_PRIMARY, then zero the
> hw_lan_addr.addr.
> 
> Untrusted VFs - Only allow above legacy/new changes to their
> hardware address if the PF has not set it administratively via
> iproute2.
> 
> Trusted VFs - Always allow above legacy/new changes to their
> hardware address even if the PF has administratively set it via
> iproute2.
> 
> Co-Developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>

Please fix ordering. Author should be first. Immediately following 
Co-developed should be the co-developer's Sign-off. Co-developed-by is 
preferred over Co-Developed-by

> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: previous version had been reported to not build under
> some kernel configuration.
> v3: fixed minor kerneldoc misspelling

I don't recall seeing v1 and v2 on this list(?)

> ---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 264 ++++++++++++++----
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   9 +
>   2 files changed, 217 insertions(+), 56 deletions(-)

Patches don't apply, please rebase.

> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index c2141f0c9adb..6654a230b035 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2976,26 +2976,112 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>   
>   /**
>    * i40e_vc_add_mac_addr_msg

Should this be deleted?

> + * i40e_vc_ether_addr_type - get type of virtchnl_ether_addr
> + * @vc_ether_addr: used to extract the type
> + **/
> +static inline u8

No inline in c files.

> +i40e_vc_ether_addr_type(struct virtchnl_ether_addr *vc_ether_addr)
> +{
> +	return vc_ether_addr->type & VIRTCHNL_ETHER_ADDR_TYPE_MASK;
> +}
> +
> +/**
> + * i40e_is_vc_addr_legacy
> + * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
> + *
> + * check if the MAC address is from an older VF
> + **/
> +static inline bool

same here

> +i40e_is_vc_addr_legacy(struct virtchnl_ether_addr __maybe_unused *vc_ether_addr)

Why '__maybe_unused'?

> +{
> +	return i40e_vc_ether_addr_type(vc_ether_addr) ==
> +		VIRTCHNL_ETHER_ADDR_LEGACY;
> +}
> +
> +/**
> + * i40e_is_vc_addr_primary
> + * @vc_ether_addr: VIRTCHNL structure that contains MAC and type
> + *
> + * check if the MAC address is the VF's primary MAC
> + * This function should only be called when the MAC address in
> + * virtchnl_ether_addr is a valid unicast MAC
> + **/
> +static inline bool

again, no inline. Pleas audit the rest of the patch for this.

> +i40e_is_vc_addr_primary(struct virtchnl_ether_addr
> +			__maybe_unused *vc_ether_addr)

__maybe_unused?

> +{
> +	return i40e_vc_ether_addr_type(vc_ether_addr) ==
> +		VIRTCHNL_ETHER_ADDR_PRIMARY;
> +}
> +
> +/**
> + * i40e_is_legacy_umac_expired
> + * @time_last_added_umac: time since the last delete of VFs default MAC
> + *
> + * check if last added legacy unicast MAC expired
> + **/
> +static inline bool
> +i40e_is_legacy_umac_expired(unsigned long time_last_added_umac)
> +{
> +#define I40E_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME  msecs_to_jiffies(3000)

Please move the define out of the function.

> +	return time_is_before_jiffies(time_last_added_umac +
> +		I40E_LEGACY_VF_MAC_CHANGE_EXPIRE_TIME);
> +}
> +
> +/**
> + * i40e_update_vf_mac_addr
> + * @vf: VF to update
> + * @vc_ether_addr: structure from VIRTCHNL with MAC to add
> + *
> + * update the VF's cached hardware MAC if allowed
> + **/
> +static void
> +i40e_update_vf_mac_addr(struct i40e_vf *vf,
> +			struct virtchnl_ether_addr *vc_ether_addr)
> +{
> +	u8 *mac_addr = vc_ether_addr->addr;
> +
> +	if (!is_valid_ether_addr(mac_addr))
> +		return;
> +
> +	/* if request to add MAC filter is a primary request
> +	 * update its default MAC address with the requested one
> +	 *
> +	 * if it is a legacy request then check if current default is empty
> +	 * if so update the default MAC
> +	 * otherwise save it in case it is followed by a delete request
> +	 * meaning VF wants to change its default MAC which will be updated
> +	 * in the delete path
> +	 */
> +	if (i40e_is_vc_addr_primary(vc_ether_addr)) {
> +		ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
> +	} else {
> +		if (is_zero_ether_addr(vf->default_lan_addr.addr)) {
> +			ether_addr_copy(vf->default_lan_addr.addr, mac_addr);
> +		} else {
> +			ether_addr_copy(vf->legacy_last_added_umac.addr,
> +					mac_addr);
> +			vf->legacy_last_added_umac.time_modified = jiffies;
> +		}
> +	}
> +}
> +
> +/**
> + * i40e_add_vf_mac_filters
>    * @vf: pointer to the VF info
> - * @msg: pointer to the msg buffer
> + * @is_quiet: set true for printing msg without opcode info, false otherwise
> + * @al: pointer to the address list of MACs to add
>    *
>    * add guest mac address filter
>    **/
> -static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
> +static int i40e_add_vf_mac_filters(struct i40e_vf *vf, bool *is_quiet,
> +				   struct virtchnl_ether_addr_list *al)
>   {
> -	struct virtchnl_ether_addr_list *al =
> -	    (struct virtchnl_ether_addr_list *)msg;
>   	struct i40e_pf *pf = vf->pf;
>   	struct i40e_vsi *vsi = NULL;
> -	i40e_status ret = 0;

How does this exist after the i40_status removal [1]? Seems like you are 
on the wrong tree, branch, or are not rebased.

Also, looks existing, but some of the vsi and ret initializations look 
to be unneeded (below as well).

> +	int ret = 0;
>   	int i;
>   
> -	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
> -	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
> -		ret = I40E_ERR_PARAM;
> -		goto error_param;
> -	}
> -
>   	vsi = pf->vsi[vf->lan_vsi_idx];
>   
>   	/* Lock once, because all function inside for loop accesses VSI's
> @@ -3016,20 +3102,23 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   		f = i40e_find_mac(vsi, al->list[i].addr);
>   		if (!f) {
>   			f = i40e_add_mac_filter(vsi, al->list[i].addr);
> -
>   			if (!f) {
>   				dev_err(&pf->pdev->dev,
>   					"Unable to add MAC filter %pM for VF %d\n",
>   					al->list[i].addr, vf->vf_id);
> -				ret = I40E_ERR_PARAM;
> +				ret = -EINVAL;
> +				spin_unlock_bh(&vsi->mac_filter_hash_lock);
> +				goto error_param;
> +			}
> +
> +			ret = i40e_add_vmmac_to_list(vf, al->list[i].addr);

This function isn't added until patch 2. Does this patch compile?

> +			if (ret) {
>   				spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   				goto error_param;
>   			}
> -			if (is_valid_ether_addr(al->list[i].addr) &&
> -			    is_zero_ether_addr(vf->default_lan_addr.addr))
> -				ether_addr_copy(vf->default_lan_addr.addr,
> -						al->list[i].addr);
>   		}
> +
> +		i40e_update_vf_mac_addr(vf, &al->list[i]);
>   	}
>   	spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   
> @@ -3038,82 +3127,145 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   	if (ret)
>   		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
>   			vf->vf_id, ret);
> -
>   error_param:
> -	/* send the response to the VF */
> -	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
> -				      ret, NULL, 0);
> +	return ret;
>   }
>   
>   /**
> - * i40e_vc_del_mac_addr_msg
> + * i40e_vc_add_mac_addr_msg
>    * @vf: pointer to the VF info
>    * @msg: pointer to the msg buffer
>    *
> - * remove guest mac address filter
> + * add guest mac address filter
>    **/
> -static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
> +static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
>   {
>   	struct virtchnl_ether_addr_list *al =
>   	    (struct virtchnl_ether_addr_list *)msg;
> -	bool was_unimac_deleted = false;
> -	struct i40e_pf *pf = vf->pf;
> -	struct i40e_vsi *vsi = NULL;
> -	i40e_status ret = 0;
> -	int i;
> +	bool is_quiet = false;
> +	int ret = 0;
>   
>   	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
>   	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
> -		ret = I40E_ERR_PARAM;
> +		ret = -EINVAL;
>   		goto error_param;
>   	}
>   
> -	for (i = 0; i < al->num_elements; i++) {
> -		if (is_broadcast_ether_addr(al->list[i].addr) ||
> -		    is_zero_ether_addr(al->list[i].addr)) {
> -			dev_err(&pf->pdev->dev, "Invalid MAC addr %pM for VF %d\n",
> -				al->list[i].addr, vf->vf_id);
> -			ret = I40E_ERR_INVALID_MAC_ADDR;
> -			goto error_param;
> +	ret = i40e_add_vf_mac_filters(vf, &is_quiet, al);
> +
> +error_param:
> +	/* send the response to the VF */
> +	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
> +					 ret, NULL, 0);
> +}
> +
> +/**
> + * i40e_vf_clear_default_mac_addr
> + * @vf: pointer to the VF info
> + * @is_legacy_unimac: is request to delete a legacy request
> + *
> + * clear VFs default MAC address
> + **/
> +static void i40e_vf_clear_default_mac_addr(struct i40e_vf *vf,
> +					   bool is_legacy_unimac)
> +{
> +	eth_zero_addr(vf->default_lan_addr.addr);
> +
> +	if (is_legacy_unimac) {
> +		unsigned long time_added =
> +			vf->legacy_last_added_umac.time_modified;
> +
> +		if (!i40e_is_legacy_umac_expired(time_added)) {
> +			ether_addr_copy(vf->default_lan_addr.addr,
> +					vf->legacy_last_added_umac.addr);
>   		}
> -		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
> -			was_unimac_deleted = true;
>   	}
> +}
> +
> +/**
> + * i40e_del_vf_mac_filters
> + * @vf: pointer to the VF info
> + * @al: pointer to the address list of MACs to delete
> + *
> + * remove guest mac address filters
> + **/
> +static int i40e_del_vf_mac_filters(struct i40e_vf *vf,
> +				   struct virtchnl_ether_addr_list *al)
> +{
> +	bool was_unimac_deleted = false;
> +	bool is_legacy_unimac = false;
> +	struct i40e_pf *pf = vf->pf;
> +	struct i40e_vsi *vsi = NULL;
> +	int ret = 0;
> +	int i;
> +
>   	vsi = pf->vsi[vf->lan_vsi_idx];
>   
>   	spin_lock_bh(&vsi->mac_filter_hash_lock);
>   	/* delete addresses from the list */
> -	for (i = 0; i < al->num_elements; i++)
> -		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
> -			ret = I40E_ERR_INVALID_MAC_ADDR;
> +	for (i = 0; i < al->num_elements; i++) {
> +		if (ether_addr_equal(al->list[i].addr,
> +				     vf->default_lan_addr.addr)) {
> +			if (!(vf->trusted || !vf->pf_set_mac)) {
> +				dev_err(&pf->pdev->dev,
> +					"VF attempting to override administratively set MAC address\n");
> +				ret = -EPERM;
> +				spin_unlock_bh(&vsi->mac_filter_hash_lock);
> +				goto error_param;
> +			} else {
> +				was_unimac_deleted = true;
> +				is_legacy_unimac =
> +					i40e_is_vc_addr_legacy(&al->list[i]);
> +			}
> +		}
> +
> +		if (is_broadcast_ether_addr(al->list[i].addr) ||
> +		    is_zero_ether_addr(al->list[i].addr) ||
> +		    i40e_del_mac_filter(vsi, al->list[i].addr)) {
> +			dev_err(&pf->pdev->dev, "Invalid MAC addr %pM for VF %d\n",
> +				al->list[i].addr, vf->vf_id);
> +			ret = -EINVAL;
>   			spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   			goto error_param;
>   		}
>   
> +		i40e_del_vmmac_from_list(vf, al->list[i].addr);
> +	}
>   	spin_unlock_bh(&vsi->mac_filter_hash_lock);
>   
> +	if (was_unimac_deleted)
> +		i40e_vf_clear_default_mac_addr(vf, is_legacy_unimac);
> +
>   	/* program the updated filter list */
>   	ret = i40e_sync_vsi_filters(vsi);
>   	if (ret)
>   		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
>   			vf->vf_id, ret);
> +error_param:
> +	return ret;
> +}
>   
> -	if (vf->trusted && was_unimac_deleted) {
> -		struct i40e_mac_filter *f;
> -		struct hlist_node *h;
> -		u8 *macaddr = NULL;
> -		int bkt;
> +/**
> + * i40e_vc_del_mac_addr_msg
> + * @vf: pointer to the VF info
> + * @msg: pointer to the msg buffer
> + *
> + * remove guest mac address filter
> + **/
> +static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
> +{
> +	struct virtchnl_ether_addr_list *al =
> +	    (struct virtchnl_ether_addr_list *)msg;
> +	int ret = 0;
>   
> -		/* set last unicast mac address as default */
> -		spin_lock_bh(&vsi->mac_filter_hash_lock);
> -		hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
> -			if (is_valid_ether_addr(f->macaddr))
> -				macaddr = f->macaddr;
> -		}
> -		if (macaddr)
> -			ether_addr_copy(vf->default_lan_addr.addr, macaddr);
> -		spin_unlock_bh(&vsi->mac_filter_hash_lock);
> +	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
> +	    !i40e_vc_isvalid_vsi_id(vf, al->vsi_id)) {
> +		ret = -EINVAL;
> +		goto error_param;
>   	}
> +
> +	ret = i40e_del_vf_mac_filters(vf, al);
> +
>   error_param:
>   	/* send the response to the VF */
>   	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR, ret);


[1] 
https://lore.kernel.org/intel-wired-lan/20230109141120.3197817-1-jan.sokolowski@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
