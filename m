Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEF389BC39
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 11:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB78B81EAD;
	Mon,  8 Apr 2024 09:47:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v3t3_x_9rtHa; Mon,  8 Apr 2024 09:47:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B4F481EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712569656;
	bh=Ia6S9HD5jhk4fto5/+z9wWZTVsmkk3xnAAWmLAoOtUw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kvwocgTvN1UxbL1mZgM5xnvvRk7JWKdqy0mxmO2MkM4FZ6tjePU0nAHfwMpXyxUy1
	 RtURB3kAr+pSd/88KqYNVPAg5KbWVG1cY+CN/SJrNNgFKU0+utuVqHSZh8DxH+ZVI6
	 JwHzJftshW2CJ3QkvrEMTeWDgyEdE1j8U1I+gJSAhiT85iwzx+inDFM/jXkyQBhWsP
	 qFdN76x2qexgUTjsNOID3HXXTQo7uwu1bJ0D1LpViFqFh4qW8ov7ZR3yEZaWSmP2Ld
	 95oI5yUrDA0eYhV+8Sw3jbGJ0lGd/7MS1wFobiS3foyJynlzc7Um9Vay4Xl7gZkvBY
	 fIxKRd71bZtWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B4F481EAE;
	Mon,  8 Apr 2024 09:47:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D432C1BF82C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF44F40AE6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b8NpOXNDzkUg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 09:47:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54E1C400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54E1C400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54E1C400BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:47:31 +0000 (UTC)
X-CSE-ConnectionGUID: lyzsqzZhRgecenTuni6KXg==
X-CSE-MsgGUID: GihfZ0C+RnOlQjOLXvDWqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7939758"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7939758"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:47:30 -0700
X-CSE-ConnectionGUID: itBeR800TGSiOvVigtylQg==
X-CSE-MsgGUID: Z1T7v/TjQdigjYaU2PXbvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19782800"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 02:47:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 02:47:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 02:47:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 02:47:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 02:47:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g39rvE8t5qiqr3XezzTdXcaumo15nRy/rsMaFlj2Q4HOj/uVjVn9i+flqxQ0j1/p4wSpcaniNRHmyyfwka4nN0i0+kkQNW/j44nKPGIyanW/MsDjKmgMMX5VnLJU6aHpbAnjFxFRtclfuGb7mxOuN0shSbUlO0nVhmz0PdsAOwOkc0KFBwx7nOwlZxyNfuMnHlVKMSXkKRAZ8we95C4O7PnBYXF25Mu2duyZuO61N7EEOQaJtQi8JbaTG6NnRSoAO1FO62AaypZVifidtbvc8IXQE1R/U/8uJE8D/NQth2U6kUT4LVFBicnh70NArPgKOw5DXqvrSFUbWhY1hkeouw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ia6S9HD5jhk4fto5/+z9wWZTVsmkk3xnAAWmLAoOtUw=;
 b=XEMNefcNvAC50TfZwlPRl2+xVXyEqMZ+jSiaDMoie//wdz5c9hXF0pNs1sTfPeYLLEorczb/SjkceNZz7zGNk7uyp5VmS7yi7oLJENCa9rnOqgZXxxpzmWkW/2VOCVrgITsSbiXgOaxnO3xAOw4hr89VbFSkHyaM9+19lcnVOJRT6h4V1AColNU+llkWUbxTik+z4BnTVxyLq2GCUtcW5B7G7RWpZUJvzXezZqBKo/+nwZOjXn5DmixfJYbhNzoR0UX97/QjZRVqQYKzTimody20rRLJikflbaGHo6Dvkgl2d0Za7iQ4DS4oF7VOcJtu6s2V+9Gt/ySMELnRWdmA5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW4PR11MB5774.namprd11.prod.outlook.com (2603:10b6:303:182::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 8 Apr
 2024 09:47:25 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 09:47:25 +0000
Message-ID: <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
Date: Mon, 8 Apr 2024 11:45:32 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
 <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
Content-Language: en-US
In-Reply-To: <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0015.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::8) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW4PR11MB5774:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Bx3VU46w+jYyPne/6/VDFGIUb+WkiC6QKSRg3bKyMQKqIAm/nqH2AZaV1BI+YVUu4P+dBakb9nIxO/azcF7K/K6BHP2UMmG3qcl5AD0NburgStBb4+RjwrAakDKDWRYr3f04mI827pNCkw4zZgZo2ohRxreefREs22JlMc+YaV4+cdgIPwRbp9sUweZrhJzVU96c7aYban8FYbY/OK5lehier30E1R8btmCo2O2n4pOWB7D6O7pQyoXp0aUdS/EDTMmt96vHjAIvfUbXC0YpKNaT910+7mGqf55Aov/WBXHr0dCoE8kWdPfJnpAYe5KTCN27Y9xFTdqXhGWbva710gMSThIqILMBVSInQzImRpmAb/capTvdptACfXsoebbYmPrSHPj87oREjoycTlfFkDed2Fw9gQCdOBz8mACOfgo1xP1FkH6sTVXy9Fa/9wabKZh4VjqlSfmOZ4Kl2snGVhvDSN3bafaxsLZhTmm9GessDd99nJAoKdsfVo0xiWYqBe/y89Rrbbb3m5tnCPyfj1jjI2j/4EZsOABulMBEXxZ/SsUguSmK/Y4Pr+NI4NteKUurCylNIjQsaXqhF+PB5/45QBjcexNNQslT2Z9AS2iVzUm1zciIzBkGdhgStqH03yEVva/frG22m4cwOoGrMSuZzNjyeFu+0lKJ3l7E2QI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(7416005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWJoWmN5LzdXUFREWmZlTVoxWEdGK1NySTJlL3l2SDhVNnNMWExpbHQrUzk3?=
 =?utf-8?B?cHhoZmNPd2VVWk9IT2sxdjF0UTVrb2lYODMxMUNmUHlzSG4yaHBKbG0rd2RV?=
 =?utf-8?B?bmdVQmJnTGRrMloya3d3QkdZVStIQ3FLbGRJOXNvVDRmY21CNUlTb1FwVUtB?=
 =?utf-8?B?YXg4WnZpaVhDbnA0TkRIc2tpVjBCSmFvZThPb3hUdkpRUjdXbDhrTkxvOFFv?=
 =?utf-8?B?b1NpVDdLY2tDYUVOVEp1SnJVNXM3QWFqOUVSUEZNWXE0OEhUTGVrUlN3ejRs?=
 =?utf-8?B?blhjZXhaNUYwRHI1WXdOejZabTQ2RW45WXc0aTgyQWVUZW9qWXQ4blpMK3F0?=
 =?utf-8?B?K0NQZXJLQ0xhUG5FTkFKSnVnWGRNNDN5QVU1VTNwQlF4bHlzZWtDTEpPRkts?=
 =?utf-8?B?clgzNGxzWmQwQmRlanZkTGRVVWVMQUNWamFGOWdmWUpqRHpqTldQN2ZQVGdI?=
 =?utf-8?B?OEYwKzVWSVFMSFI3Qy8wbTBMZGRVYjMvSkh1bURibUtyMU1wSWtCYmJZMWlO?=
 =?utf-8?B?cG1sbStHdVFlTFhUNmplWkdzVDBLTnYxdFRsMElSQXJMc09kWmp3UnB6SjFz?=
 =?utf-8?B?VGEyV1dlVnZ3dHVZY2RSU01nMmpuNmNLYkJQdXV0RVR6VGxhODN4enp3TXpX?=
 =?utf-8?B?aFhhbHdrbUFtcWUzeWpjeVdJTU1Rb0x1blJZZm9VUTV1L2lHQ1QwcnVOM2wv?=
 =?utf-8?B?WXM0d1JFMG8xeVRFY2pKMzdTVkZpVURoRFJOTS9QQ0owWnRaUm9kSGJPckda?=
 =?utf-8?B?WWl4Z3FZK1NtT3AvSlRjbkRhVFpwZGZMRkhsUndRQUJSek5NRkZxWmgrNThh?=
 =?utf-8?B?R3dicHBiSWVGc0NTaGVyb1k5TWZaRDlESGpaZzFtclM3VFhzS0ZGTGRCdzRB?=
 =?utf-8?B?MXVMbzE2SHlvT1RWSkwzV0xXSkh4TWZTOTlxTVNRLzRuRjZlS3BzaFRaUE5w?=
 =?utf-8?B?Si90cWI2MTU2R0FhcStHS1VWSGs1Z09WQnFuM21FdDkwRjFKOU1tMlJ2WHVE?=
 =?utf-8?B?aktHdFBoMjFaNUEzUVdpMUJsblFTT3FySU85ekt2T3BtUXNod0wvb0w5enFO?=
 =?utf-8?B?Z01YZTBrS3BxQU1sUklSQzFublV1VE5MdXRUbnRDK3ZkVzJvd1VjcU0vNVBY?=
 =?utf-8?B?Vy82ZDhYYUxsby9OdE1GWHZLRFF2WE52UkFwaUpoWGdrR1ROaEFuelh2UHMv?=
 =?utf-8?B?dWtqZ01KKytRcjhIUzN6cEozOFplTzYveVBnSDFKeFJxdmpydWJJbnNRSHc1?=
 =?utf-8?B?UUlpZzhtaXZJT3pheDRSS3lhNnc3Y3E5YTIrRzJ2cFE3eXJOZnV4VFNBb0xz?=
 =?utf-8?B?MjRkU1FaL1RFOE1OcFovSU9hbVNsaDV5QUlxMXhGa1VmR0VsaFJpUTJ0dllE?=
 =?utf-8?B?cWh4MFBZZmhiTkR2dStoZjJPWnpYNkpuYlNoRXlpNzBsTkpvOHh6Ym1oR2N2?=
 =?utf-8?B?SmhabmJUQ2tBWjkzQTVsUkNPdXp6N3dHK3BLMnVzRE5TNU9xZkJpRjduNUVL?=
 =?utf-8?B?N1dWWVF1cHorQVJsdEQ1ZHhCbGpQZWJ4dE5jeDZwYjlBVFlnSWorZzlQbWly?=
 =?utf-8?B?Wk5nUllaNTA0TEhBcWdzdnlyOFJqdkhsUHpGTFRpa2xBZ2xtczJPR3VvZ0tL?=
 =?utf-8?B?M3VjQVBHbHdQMnUyRWtJSXQ5dVVoaE1saG5UMTRHOVRwcm5mZHhBeHFRcS9s?=
 =?utf-8?B?ZUttMlhlcFcxajFWWXpmMFZGdldhY2thOUd4Z2l6RGhSVzB4VFhSMW1GMEth?=
 =?utf-8?B?Q2JDLzRCSTYyTWU3V1FXWkxGWGRTVUVENUgwVEFpaE5XZ2NXS3Iva1B4MGR3?=
 =?utf-8?B?Q2x0NC8wa04vWko3TFRSN0RXQjBSNlFvUnBtTm1GdEE5bmpNQ0tyYkFyS0VO?=
 =?utf-8?B?bmY5ajZTMHIvUWxWM2NSNHFjeGZMZGdac04yYlhtdm1rQmpvbE1CeTMybDRZ?=
 =?utf-8?B?YTFsdUF2U3VhOVNGNWhzZGpHK2J2eCtTSXNvMXA3bUpOdzczeEMxSlNlN3Fj?=
 =?utf-8?B?dWNycng2ODc5VUk0QUlyRjF1S2dsMzUwQjBLYnhyWDViK0hRRmRGOWU4NDMx?=
 =?utf-8?B?RXQrQXBJVGk0VTFUQmNmalpxeTRPcVQzbGI0OEtjaUdKNmpmbzBRbHJYS21D?=
 =?utf-8?B?RnRadzNqZ01PYTc2MWtCdWxSTXBIUlNRN2wrTGZzdHU5K0xFVVJRK3h6WjR2?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14b80e2f-93c7-4356-8274-08dc57b0e544
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 09:47:25.4222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DKYmllRdpc5nExvZ3zWP6cd5uYdnM8l+li6ob1HGM+ZJUsmjIK4UR4tl4ZbIwjtY6XxYdARlGHprEnLrkEH7Vr9U/Vp9BlL4bCF4NS3a5Hk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712569651; x=1744105651;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s1tC1pukuaijnvqnHTyMXaFh72wjvDKJ59D2iaTbeaY=;
 b=gaUkAHY1/iDPiNtsZY18RmLzkBVSNZQuk9g+XR9FhU5NrFisLaGqvcXG
 naK9d3bSsgaQldG9VMplv5aiGuA15T4NI2cSnIiGfE//zYX8z9QeGXjJc
 ZDDoT0VGgILEYV0MAR5uC6Q8UoDKH598fxUifK9Be4hRabLBMCNYR3s2C
 F2ocQeHTWDVc+bdbpFBVBXXw/NXmLIdFlsdBrrTazGOsJEwr9EXEyLxUq
 mlG2uERJjbAIll/GI8/vailljZHVEsy9zkyXMR+P2TKfFleW+ppOTXiFu
 1o2RK3rgfBUn7xjMAztJG4CipCYcw038e2MNNeajxYIMcHf0neP3gMr15
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gaUkAHY1
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Eric Dumazet <edumazet@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Vlastimil Babka <vbabka@suse.cz>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Mon, 8 Apr 2024 11:11:12 +0200

> From: Jakub Kicinski <kuba@kernel.org>
> Date: Fri, 5 Apr 2024 21:25:13 -0700
> 
>> On Thu,  4 Apr 2024 17:44:00 +0200 Alexander Lobakin wrote:
>>> +/**
>>> + * struct libeth_fq - structure representing a buffer queue
>>> + * @fp: hotpath part of the structure
>>
>> Second time this happens this week, so maybe some tooling change in 6.9
>> but apparently kdoc does not want to know about the tagged struct:
>>
>> include/net/libeth/rx.h:69: warning: Excess struct member 'fp' description in 'libeth_fq'
> 
> Oh no, maybe we should teach kdoc to parse struct_group*()?

scripts/kernel-doc apparently can handle them...

+ Kees

> 
>>
>>> + * @pp: &page_pool for buffer management
>>> + * @fqes: array of Rx buffers
>>> + * @truesize: size to allocate per buffer, w/overhead
>>> + * @count: number of descriptors/buffers the queue has
>>> + * @buf_len: HW-writeable length per each buffer
>>> + * @nid: ID of the closest NUMA node with memory
>>> + */
>>> +struct libeth_fq {
>>> +	struct_group_tagged(libeth_fq_fp, fp,
>>> +		struct page_pool	*pp;
>>> +		struct libeth_fqe	*fqes;
>>> +
>>> +		u32			truesize;
>>> +		u32			count;
>>> +	);
>>> +
>>> +	/* Cold fields */
>>> +	u32			buf_len;
>>> +	int			nid;
>>> +};

Thanks,
Olek
