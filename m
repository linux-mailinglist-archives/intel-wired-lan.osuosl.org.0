Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHQ9J8Dj82nN8QEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 01:20:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AB24A8C47
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 01:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C2384210D;
	Thu, 30 Apr 2026 23:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLCEchwK4OOW; Thu, 30 Apr 2026 23:20:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6C4542137
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777591228;
	bh=qQ7AT9/k4PpbzBoRsHs7TDEE8ILC3FsksdaDfUaW05A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i56/vgLIRL0t+I2RxJz71lsE6aQzoOVgifp0pl30xyOZty/mes7ukPXozoNVvbidX
	 7LhcF+KKkssdATYs1BLeQ2Ou2JCl7y4mfRezbwRuphamlOuwEKgasuuFtjCjPaFv1e
	 uAbouTcPURViWQjOaFycM6DmUhsD+ttEKSpHKNdbYeOEB0kX5G+pTdHfLcQKTr92Hn
	 5RxbGdakzWhqgF3toWTFKEWdc7stiUrf+jTLeyTeoH9BnH0OSUr6dVyFHlIooUnVHO
	 KwPXTlTqcy1vlgmoWXeEzAFM/p0vhSPjjhEWL9bhAFcwPonD8Ub4YITgKFC58sTu4I
	 ylvBju/O/7h7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6C4542137;
	Thu, 30 Apr 2026 23:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A36E6BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 23:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 954FF84BBD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 23:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 86aVh4xRgrAg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 23:20:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A20F484BB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A20F484BB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A20F484BB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 23:20:25 +0000 (UTC)
X-CSE-ConnectionGUID: JGTWDIuRTH2AsoFm2eEu9Q==
X-CSE-MsgGUID: zOXsiP6BSl+KRDNPTlwYsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11772"; a="78610668"
X-IronPort-AV: E=Sophos;i="6.23,209,1770624000"; d="scan'208";a="78610668"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 16:20:25 -0700
X-CSE-ConnectionGUID: KXol6G3pTjOymm4foNGRtw==
X-CSE-MsgGUID: qHueRZMWQZuHvRsYbunSaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,209,1770624000"; d="scan'208";a="236525928"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 16:20:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 16:20:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 16:20:24 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 16:20:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D+/XfFUrDU1MROd0mkhIvPVWFQjqOH+XtAnrSCjOh1j5rKSKOnDwl3al+EjYLa2sQQgadwTF23P0PHV1o8W4DeC3ksUh9/xXZnUKzrYdqHCYqvXfiLINe7cb4+R6DLiUJB49mr7feF2hzmqxIfmnN5RaE9/4kxan2obVXC6yPOeYMlnxu1uyWrlHgAY7uih5RF98xH+31W+1NRxKk7yBgsKL+jqBdK4m4TZWPTmyxo++e5pRmAO8rq/TBYfsOZpEzO6kQN2CHADyNprBv5Pr8TaLkezOZMn8KZ5F9Z4LhzcQgAmWj2WvuROfnfPAidwVuWEB1yU7l5VWnBY1lj4WFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qQ7AT9/k4PpbzBoRsHs7TDEE8ILC3FsksdaDfUaW05A=;
 b=HoU/XtPHwxmu/QRbPeI4plfD4eVsgejTWMuccd9LMk7OppBu9G+FctuCI+jJyWS9f1Kgcozm6VvO6n7At6zTIuM4MDuF8exGimrC62SotzyAZ7H9T4QavVxNpUYky5OFNn743vcFHJ1UveGpD9+a3omOgh9Ae3EAVEdcAR0+j2OYjteGM6LBxvWobpmBvslWm5E+bF2gSbi/+YUGkcqUT+SBPdjP3veBS2Ua4pTvcWeaj+6ZvKuniYpOfD87/rc/n6jQzXFP1j1Ph0gOdbbDGUbJvhh9PAITZrmsF6gWlrMr3OpbODeJLEvB+6Oa2toz32SfVp1A4ZuN/8tvGe+dNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.18; Thu, 30 Apr 2026 23:20:19 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9870.016; Thu, 30 Apr 2026
 23:20:19 +0000
Message-ID: <28496c98-3229-400a-94b6-f64600f5b1bf@intel.com>
Date: Thu, 30 Apr 2026 16:20:07 -0700
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
 <20260120134434.1931602-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260120134434.1931602-2-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0195.namprd03.prod.outlook.com
 (2603:10b6:303:b8::20) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DM6PR11MB4531:EE_
X-MS-Office365-Filtering-Correlation-Id: ff5d5d19-03d4-48ea-96b7-08dea70f0b96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 7ovFBGSDKbNCpCpfryPHDvHXGC6W2QuPcig7Lv4VACIEXFmQLzUx1AGAxfRYcy73zf24kJZPBOeBpkFip/voSOoJ91TVRv3qRnm7hN2zOa+rLAWZMSziWc46zMe6/yPL1z8/vKCCQnvHTAuj2xpE6oQgcMzVy28CtiYIXeVk7QIqzGcCl2eHQP66Re8TcklC3BERl4NNvCbCmP5A0nYw5dncH9zfIJowdgaMKhjRHQqQMVuF34oJ8RLvS6NMiITFvF+OSUuCGj6XzDwmlwOyKrETt6JumpGSfZW0XGezAcSLjBTC7niafGmO4+JE3mCirF8PYg0+KZ569YmidC55ETZtw71+woA2a458TaDbxgPl1mRQKF/H/NkUufbuLd56Ha9UefH+yOPm0sRrEUmDoSIU+yO3NfsVQILrFpy6JjR0tgy11tEn+GTO1OAhUwDJ9xAILQAl7HCzNbhbWPiNA+G1bz+jnV2oIM3JvuDVJxCloBtBctxJ6ZPQKKV5KZENtrDpptElGiYhmfPfEzoeFl0DZjK4cIKqNk02FQIBz6t62FO752Plp7eNpPIQ0Eg3ZPVT7BSuqSOameYQ/C477hdxtgfdhZzpcbWIBpqFxYArxTmyjcrN5MqDmwACjxUakZqN9a696afuswzlLwDqTHdAsI4Ulmou6MuBx1rArAfggrAxm0RCEnYYwBQCOMZf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjNDeVA3bGlndVN3N1UzNkNBdWpLbm1STFM3VkVlMXJYQXdKYVBoZ2JLc3ZB?=
 =?utf-8?B?MUY3MUd4YmxnMGVwRkw4S1RnbUlTV3hLYVVFbTViejZZUmJ5YVpLU0Jmandq?=
 =?utf-8?B?cXRpRzRaZ3FJWU1teDZKcmRaRjMyZ1FKb093UmM1Mzd6M2xiemlvTXhQY0Yr?=
 =?utf-8?B?dDN6a0hUcm5kVmttS0pkSDNQTmRrTW9xQTVNQTJoeDc3UFQwVHFwMVlrK1NX?=
 =?utf-8?B?VGVvUUNqa2ZobDVyVy9heVRBOXBqRU1QTkxKM0RSdUpBeHRCU2hZUTZjN0F4?=
 =?utf-8?B?cEE3RVRreE16dlc0VTE5OEVCVHFUY2plZkdyK2FEYzZ3cGZFTmVDbXJYWDNU?=
 =?utf-8?B?VFBiVzRoVTA0OGQyVStqdVM0cDJYRzIyWlg4ZE5hcFBYTktNVnpFNHl3UURl?=
 =?utf-8?B?UU5CV01Vcy92UExsNUVUazRld3lBWHZpZjFMWlpBRnV5dGJvODh4amVLS0dK?=
 =?utf-8?B?bDBTckRiMVh6MFFwV3ZzYjZ0aEkwNUxWcVNoaGV3RWp6SVRnZFBLNFptODkv?=
 =?utf-8?B?UWRGZ2JmMEpIaVQ3RFcvVENLQ0RVeEhyaHMvdFFxUG5FSHh2eExBT1dtU0J5?=
 =?utf-8?B?cXJnZzAweENxQTc0U3NlcVBjSlhiVFI3Sk9uWUdQaFc5a3VSRElveEFpc05U?=
 =?utf-8?B?MVg5c0szR2ZxNVFJZ3lRcjVvZEc0SGd0bzdNVUNiNWdpUkRqR3QxRC9icUow?=
 =?utf-8?B?dWtyRDg5SFErZHhTbTV4Ym5uZ21idDk1RUhaN25YWmlOYmVVdnV6aGJZWmNi?=
 =?utf-8?B?OWFOd3BGbE1TdG5hQWZBZkJZUGt4cmVyeGVRRFBQQmhpemZka0x5NnZTY2hi?=
 =?utf-8?B?cWVwdllKV1VZWm9TZEEreEI1Mk5vQjJoRmRXU1k3OHpreDRwLyt2TllyVnBD?=
 =?utf-8?B?OTQrR2RSZVNhaUFOaVVMU0VKbVRVNTRSajFKdDc5Z1FaMnlIUFAvZElrb2Js?=
 =?utf-8?B?dmRXOGxkRVVHRXAvakovNXRoS3JCMUZQQzkzQzRUV2xvVXd6OGtoNURvbGtR?=
 =?utf-8?B?SXZteFNka3paWWFiTjdlVE1VeUxMQmo0RDk4WHpXZFdoVko2Y0xEblZPVk1j?=
 =?utf-8?B?L2lSWjJNazFTbGFBc0RjU1gwM0FNVlpDditLcjlYQjFUaEplR0VrNG8wQUYv?=
 =?utf-8?B?YXpyOXV0bUpuWThWZVVYZXkxbm5kemNMTU5JUlFvOXZXUlo0SE1WY2M3ZEhR?=
 =?utf-8?B?amJzbWNaNmI1MnFOVTRwTWJEMzJldDBETnNZRk03U3JDWnFBKzMrb1lCQTMw?=
 =?utf-8?B?MlIwaHFOWHZ3cXBienJHYzJrenlwckNDdEY4bXF4aUFmczI5RnpwZ0Naenc3?=
 =?utf-8?B?YmpsS1ptWXl5Vi9xNTc2RS9aNkNjMy9MK0hkOTJNS3BmZG9URlRzeUpxZjRs?=
 =?utf-8?B?TEREUWVyQ0pRZWJoYkRXN2RCbjZGOFpqcTgwK0NqRWN3R2R2THo4QkpKa042?=
 =?utf-8?B?TkFNY3R6MUloT3Z6MGpYdGpWdXZBUkh4M25vTFFxSDJ0MFAxaXlleittTHVx?=
 =?utf-8?B?SHl1VHNQc0EwMDc3U3lyUzJjTWJLQXY5eDZzaEZlcnFMSm92TnU3SllOU2x0?=
 =?utf-8?B?Qm1jdWlxaG83TWo1bjNsWDFGUDk1RUQ0QlIrM1MrN1lOWHR6SkloMFNSM1By?=
 =?utf-8?B?eGlTd25JM09NOWF0VDZIWGFZREZyWmNFU254S0NYcHhyRGl2d1d3U1l0VTNP?=
 =?utf-8?B?UmhTWG5hYzFZSWlIWUN2VXpLL2JwaEJMSDNxcDU0ZDJGb1p6bjlCeHdoTkg4?=
 =?utf-8?B?SGhRdnpYSitvdDBSeUJnR2tNVmlQa0k0Z2tJR0hIMFgxbzRPK1lxaWhzenZ5?=
 =?utf-8?B?WVZOMm0xOGxxUkVKSXBTRUVzNzM5ZVdBNEd6SlhMemxwY2VpN29RUUxVOVZZ?=
 =?utf-8?B?WHlPWXFIQTVsOEg1VkZsclhFOXNoUGsrWVlwVXpTVGViU3AvbGQvZy9ma1d4?=
 =?utf-8?B?NkJ2NHI5S1VvSGNITDBrdDB6d09ONFVKbklQUVAzTG55NklQRXoxZHVtYzll?=
 =?utf-8?B?bWplekZaMEJRUFp6OCttWWJZb3JJVlhsM0Rod0IxRm1oM0FSd09qMVk0blU3?=
 =?utf-8?B?UmZzQzF0UHFZZG0xU1R2VUhCdWEzbUljRlgxQ0R0a3VEL2plcjUzTVJZV2Rk?=
 =?utf-8?B?MlZqRCtZYVZvdEdZcUllUnlQaFlBNnVwbHhVVHU4WHdVOHYyTG9wWnd1M0Uv?=
 =?utf-8?B?UUxqOVpxbnBHallDaEpYenhyaTZpU3Z6aEZzYUhMTDZqYVBFWWZ2anV0ajg1?=
 =?utf-8?B?VnJ0Y2UxaW1QZDlSekhXMzZHT3hpeUYvQXU1aE5wUjdFSmFtRmw5bnZNUnFL?=
 =?utf-8?B?dkJkQ3U5OEF2UVZhOEVSb0ZlRVR1dkgyaTN4VzVqVTFNUzNlbk0zRHZHQWE2?=
 =?utf-8?Q?I8BoWKKn/ObPK03Q=3D?=
X-Exchange-RoutingPolicyChecked: i+1AkwVMLSplFAaMxPtiO0J3nd4jnHwAKD1YpiIXzZxsqig8EeRdXGJsK6GV5gOkHQvHsF/miYOqHkDAZR947LSLKI7Xa+GUkQxuaF1I+jL3/ZtTB7xwI4UXd5cjIaHmTysMC/oaldb26LTJCUerNeyQBAvP5Y4Dyn3ookm78PbwPci+NySYteQS2lovWFiqRESGvFai7AakL0oA+iBJI3jJcwDsrYR3nSQ7pzkbKaVpclJ98rnv0cZLTYo5JT2lhNlxAGtxtAFkvmHS7BjM9m7FRKz8KcZL1imEcwXnHgzgrQFw5ahL/LLUciRvKohXiKN9D/AmUJ1SObhAwcwD3A==
X-MS-Exchange-CrossTenant-Network-Message-Id: ff5d5d19-03d4-48ea-96b7-08dea70f0b96
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 23:20:19.5923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ilG78FyVhKhmlX6rWM+QnpjL3WE15A1SIbonh0tZbFKVehCqI8+C0raDXGO0AMTAviLIzlmoU3T+9/nhNAwnnbThiCgKWq31ExagkPiUpPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4531
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777591225; x=1809127225;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7gbFJOTv7ad1ugez8j6HT0geSUTD7sY06ozXxUPcpM0=;
 b=bK7mjuuMOi6ZNnXPWTypeRGEwRtOTt3rmCTofUpA8iaVYgmZ7DRzFK1V
 Z2e88nPkNJFm+4goff6gB76aQGbeVr/huDf0qu0c9DSbbx+tyiNpw0Eki
 3zYK43coJOFou8wv693wfgYAPiN/jsXXvtNskqWEH4BG1NMWs9gZF+t3w
 pYCXrLerCc0E3/trk5YjwDbTjBYWbrfSxLE4PQ3eVM6Rhhema9LI05dn1
 1H4Sqs8l4B2BfaGo2wUAgAZtl4qABRH/gTN/xSoJemNYf6QDwQSKspfjs
 9rcYwvXM2PFTH/h7neVE3Rd2txhUQ1muNM/Ony/0LGp8yKnOqnqJ0/E8P
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bK7mjuuM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/6] ixgbe: E610: add
 discovering EEE capability
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
X-Rspamd-Queue-Id: 76AB24A8C47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

On 1/20/2026 5:44 AM, Jedrzej Jagielski wrote:
> Add detecting and parsing EEE device capability.
> 
> Recently EEE functionality support has been introduced to E610 FW.
> Currently ixgbe driver has no possibility to detect whether NVM
> loaded on given adapter supports EEE.
> 
> There's dedicated device capability element reflecting FW support
> for given EEE link speed.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c      | 3 +++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 7 +++++++
>  include/linux/intel/libie/adminq.h                 | 1 +
>  3 files changed, 11 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index c2f8189a0738..9ae1e3620ee1 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -628,6 +628,9 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
>  			(phys_id & IXGBE_EXT_TOPO_DEV_IMG_PROG_EN) != 0;
>  		break;
>  	}
> +	case LIBIE_AQC_CAPS_EEE:
> +		caps->eee_support = (u8)number;
> +		break;
>  	default:
>  		/* Not one of the recognized common capabilities */
>  		return false;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> index cde148eec38d..11dc7fc71b71 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> @@ -892,6 +892,7 @@ struct ixgbe_hw_caps {
>  	u8 apm_wol_support;
>  	u8 acpi_prog_mthd;
>  	u8 proxy_support;
> +	u8 eee_support;
>  	bool nvm_update_pending_nvm;
>  	bool nvm_update_pending_orom;
>  	bool nvm_update_pending_netlist;
> @@ -927,6 +928,12 @@ struct ixgbe_hw_caps {
>  
>  #define IXGBE_OROM_CIV_SIGNATURE	"$CIV"
>  
> +#define IXGBE_EEE_SUPPORT_100BASE_TX	BIT(0)
> +#define IXGBE_EEE_SUPPORT_1000BASE_T	BIT(1)
> +#define IXGBE_EEE_SUPPORT_10GBASE_T	BIT(2)
> +#define IXGBE_EEE_SUPPORT_5GBASE_T	BIT(3)
> +#define IXGBE_EEE_SUPPORT_2_5GBASE_T	BIT(4)
> +

These macros are unused by this series. Sashiko complains about them
existing, since the code appears to actually use IXGBE_ACI_PHY_EEE_*
macros which have different bit positions.

Since they are unused, I am going to drop them in the version I submit
to net-next.

If they ever become needed or useful in the future, then we can always
add them back later.
