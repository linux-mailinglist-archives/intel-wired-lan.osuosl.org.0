Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E16CA682B29
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 12:08:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 438C4410C9;
	Tue, 31 Jan 2023 11:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 438C4410C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675163293;
	bh=v2X0kppKMaZsHyDHvaTgk+COXLBkXlQpzXDaue+mjnQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CtGFOeXrjrVepZAmR+Waj+M7up9pD5gI/ahWmx2Yj6mYcOsBoubSIK2GUsQbI8fhM
	 OaQEfY9FJkieWMxhwB8j+5AyZmxohbDheuZedv+EmyAAXVVOhrvkP6Aq90JevevHAS
	 4vBnL9FQRqWizwYmbLJBELDBursesznNAEYpbLwFQqOuEoRQryK6BOPM1eUvcXhb9g
	 8IqF/v+2aQhqE/vL+yjVvpynQsVMoel6p26aX0Z2U+e+KkZFkUuz7/dSNUjq3OLnTz
	 iWyaXkqhf+u+Ey6bY252OYTJp9xf3W/k2HahqjQg9NzKh4f118rju/8sSdrAHve1Kd
	 0i6iOkzzDrWRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0juGa7KW4SvT; Tue, 31 Jan 2023 11:08:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F409A410C3;
	Tue, 31 Jan 2023 11:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F409A410C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9406B1BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 11:08:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B417812AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 11:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B417812AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b8PnqBH4jlQ4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 11:08:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5A7681291
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5A7681291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 11:08:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326472465"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="326472465"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:07:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="733064053"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="733064053"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 31 Jan 2023 03:07:46 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 31 Jan 2023 03:07:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 31 Jan 2023 03:07:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 31 Jan 2023 03:07:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcNPAJDpH4T301bxXYL8O7fqQY2b+qSMqDZXZkkaK7CxysRKq6AZ+SYkZM+bIURZirHIB7Tf3rB8C8nS7XNAhZCNx+ocTSjsgvh225sVdWAVayYVamdeT+5632mUvGcjBrT360z9Hz/pVEnF/aBEP0g+pyQpduK9M/aIEsWAatIY8dyJujNwA1qhqBclqNPLb1WlkeDeXnlHVZIIAq3kqddeEItdrbXhGeT58eQqXhVGZTiGQ6axKKhjwDwwRyDUwMfIuyWNOApvR3cTF2rcTYMzTtHD+380YI0ZHgHEPIvS+yT1v5fjXgVI/hulL4u7jHWlInCmstQha5Jl0hCkdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HwHE7x9lGf5Yi80nnbhKVTL4NF6z/K3u64lztpGEshs=;
 b=Gv8qVNKs/Q2zi/7P22TVyhBgZc99DNe2ZalB5RDbQW83DTJj/ctTsqKy/Iqk1WNNesFiyKunNva1lZ7w5Y0QmdGCXbJzJh9WPb3c3vBczzQ4tEGlpvCV44iIzvaGu4KD2c5D9W3+X5th2j1ZLqixkOMwDGh+KGWy5Aa26OP7yKDOfEIV+vSebiXHSdY9jHkUZePvCw4f1MZv+fVc7ixY09J/F312aPPDsHPcfd32jKTejlu7MhVqn/oV4ZCNLVlZj7wKoW45IfiKk6c+jrvEhC7ojfiVy6wZ4PNjg2FZ8Fcz2XbS5V0+ve4kMobTN6QhjHl6xiQsr4jHNMDyIeo+Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB8121.namprd11.prod.outlook.com (2603:10b6:510:234::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 11:07:43 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%3]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 11:07:42 +0000
Message-ID: <192d7154-78a6-e7a0-2810-109b864bbb4f@intel.com>
Date: Tue, 31 Jan 2023 12:07:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Jason Xing <kerneljasonxing@gmail.com>
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <Y9fdRqHp7sVFYbr6@boxer>
 <CAL+tcoBbUKO5Y_dOjZWa4iQyK2C2O76QOLtJ+dFQgr_cpqSiyQ@mail.gmail.com>
From: Alexander Lobakin <alexandr.lobakin@intel.com>
In-Reply-To: <CAL+tcoBbUKO5Y_dOjZWa4iQyK2C2O76QOLtJ+dFQgr_cpqSiyQ@mail.gmail.com>
X-ClientProxiedBy: LO4P123CA0655.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:316::9) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB8121:EE_
X-MS-Office365-Filtering-Correlation-Id: 393f53da-68cc-4056-0bf1-08db037b5f98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1V76tSawTooSoQHdirrteFLkHqRpipg/0gJ2XZcZ0uJWcNwNYzvpxkwIjXouKCm20i5P4fO3r0BVV6dfzU8waA6+3TZrv77bXo5PZNhdH3lcamMRIb0xXyfwUx4arhlv2KxVjBptNeMrOvN7gWYnncoKYBRqsR9C7+eaO4jnvpFYnqtyMPVfoi3A2guWxfip2Wlr74BTPt5sx/759G07agGlWnpVOhKzKBVWJlFP7M33uhq/A+LDfNz43y658FVNiKbCa90Ul2e4M8HHCJm7gk+0ybPapfmt4v47uyJFqnnct+uXKqV+sSk1B2b40tY8+Lg5WUkmP1vrYzJAbtOTu2RvZlnbzrrlj2M/3DJiDxHvktwXjmiESgY+wMvBedcElOk0x1wX0Uulmg+Pk2HHYEvnV1of4sUD2osDYzu91ujfEZyqY7uwpYulu+6g0lI8UY9jHQCSABmmptg17+uuXQgy2nXOd3ikKhqbGHBdh1QIPntJLeDuVcJDPwv/ZC7eWCy57nXsOaikEjMhAh/aXn5tgpoEbgBZ8dVhs24c8ht7nX0XTREPoyskwyNwcJMm9wuBJ5wEFGYU5a+jFX5LgZR+vx0zB9fU43+neyIYIgPyI0ZNgwhypbT/P69Jyv/tfF1iZe1Aj/C1oCOv7VZlAW3Rz9ISjsfPO72/vsS15A7cyyu6gTMRlNMluVQvTZK1Li9DBUvPvQbcowGK+1wc+PCC47v4MJ3G02Vqtu60K7g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(136003)(39860400002)(396003)(451199018)(31696002)(8936002)(31686004)(2906002)(38100700002)(8676002)(4326008)(6916009)(478600001)(36756003)(6486002)(186003)(6506007)(6666004)(53546011)(5660300002)(26005)(6512007)(2616005)(7416002)(86362001)(41300700001)(82960400001)(83380400001)(66476007)(66556008)(66946007)(316002)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzFDdHFuL2dVWXlWaXd0dmlqZTdMNjcrVXFOd2V0UHZtbEwwendhRWVON2lR?=
 =?utf-8?B?dDg3K3I0bHBFOXhJcmxkeVVOSVErUkYvVXlyZXQvVTVDNkFnV0h6VlZsMzNK?=
 =?utf-8?B?Unp2SHcvMUd1UlRtUlJmWDF2TlBONDdjOW1icmVZZzZRcHBpZ1dxamplRk5R?=
 =?utf-8?B?RFA4UXJURElUeVJscEhCUXhkd1JmR2ZxMkhCY0hmVDcxWTdwdW1JSjhXV2lR?=
 =?utf-8?B?YXpDMkU1M2QxTWxjN00zWm40ekF6ak9lNGVqYnBGOUlEQTFQbWFvbXpXK3V0?=
 =?utf-8?B?N3JweW96alJvNkxwenRnd09KR2NlZjdUQWN4KysxelhRN1JRaFNJU09NTUtK?=
 =?utf-8?B?SDVJenR0OGxOY3pkWW82Wk44L3NRNkpVd3pTZGlteXJUb090S09iVCt6bFJH?=
 =?utf-8?B?bTV1R2Vud05QeXJKOUhIQWlpV0xHNVVjMXhPdzFpNzUzUlJxZmY1ekVQTElz?=
 =?utf-8?B?SjRaNUs4K0Nib1J6MjdiNitUTEJkQjZ0dmMvS3RmRitSRnkzWmJEN3lSSTh2?=
 =?utf-8?B?MWN5dGFlQjZpRnhndEoxdmdDZmhGUm10TjE4dkhXQlJrRm9KSGdaQ3VDRTB0?=
 =?utf-8?B?cnVORC8vM1B6MXhoMlJoTjIySzlwN2ROZ0NLTlUzSk5oZkp0M3pxWE9hZnla?=
 =?utf-8?B?M3FFclhYRERGL0ZPbXZkQTNCTzd2VGd6UXNWbUxoYUJxR1BHOXhKMzVvWVhK?=
 =?utf-8?B?dUNPQUNUc2M3ZEdnNWNpVjVPUjNINi84eXg0c0lXZ1pldmZFSlc3emFibmpP?=
 =?utf-8?B?ODYrZ2NtWW12L2F5WGx4Mlp5cm9yaVVYWk9tb09JUGxMcGFXU3VwS0U1dWcz?=
 =?utf-8?B?RkRzZGdWZ2gyM2VaQ3RiRjhUZ2ZSU3lyNDJIcEEwcXlEcUMvbGhCK056S1M1?=
 =?utf-8?B?M1laT01pRjNxM0JiV2lCL3lQV0pFVGhJMWVTazViSW5BSUFrYlhGazhhUWJo?=
 =?utf-8?B?UVM1Q2FKS3p1UFZPVmNuUFV2OUNUM3dEL0ZQYldiU3hlRGxqRVJhME9ZZU9L?=
 =?utf-8?B?NkpNSldKOVpkbXgrTnBKNk8xSkpYblFVTlF6S2owd2NEb01QcnF5Q0IvUHVv?=
 =?utf-8?B?Rm0vQ2pmVEN3bVc4dGUrYXIzVHlXeVJjakhLQ1ZsVitrdUR4UnJpQXc0Z04v?=
 =?utf-8?B?aVBCM3JraXlva1gxRm0rSUMwaFoyc2xCcEhTNjM5OW0rTEpCejdFK05uWGs3?=
 =?utf-8?B?aHhyZGFzdm1uMEFtSFdZeUdBTm1NVkhrV2FoQWZUWWFkdjA2eTFVeCsxTHla?=
 =?utf-8?B?d0FFRkxkL3ZrNVhwRUxlSFhiVTdsNUFoU29vT3B6QnQ5YTdqV2w1UlkxNTN4?=
 =?utf-8?B?a3ErQWpUMWpBYy9mSnpoZ2hFN0NCNlVHZGJqWWZOQ0h0QktBYWk4QjlZOC9n?=
 =?utf-8?B?M0VMUlZvZDFTTlNiWmdNVm4vWGxpdmVrV3JsNEtzZGRQU3JZU1VFTjUwVjQy?=
 =?utf-8?B?MHo4YXpGR09pekl5dUlIMXc3RnNKWitVT2N1bGZpV1BYTWkvQTRTcHNiQ3lI?=
 =?utf-8?B?Y2RSQW5zN3IrZitadVlLV0Z3ZUMvSjZkNjZTTkliMzlEOFg1akNudEE3b3p1?=
 =?utf-8?B?QTZyMFlqc1RUODR4dWZsUzNoUlp0bTlFK3JKT29KRURYaTlxcUxMeGdJbk1t?=
 =?utf-8?B?ZlNmSkJ1b0hQbnBmRDF4V29UdDJscmFYT1o0dytkYWFQOS9lVTB6N2FWVHhM?=
 =?utf-8?B?bDM4OFZoWnd4MEg1ajhrUTZMekpWTm5idCtXN09DbFhnRFhPTUhydGZvWms4?=
 =?utf-8?B?TEt6OVZwb0RpMVBuR20zeWpzVi9CQ3RieEo4WlpGSWVPa2h2ZWIwYnVWZVM4?=
 =?utf-8?B?b0R1U3NxT1lRT2RKSG5YMFR0T2RrVVFNUWFYT2VUbFZmSnNBMU1CWldySmRB?=
 =?utf-8?B?QVJ3YkJGNlpETEprTUVmRENSSXhxeGRzd1d5SC91U1cwSkZTNkRrRWxxTXBl?=
 =?utf-8?B?VzVSa1N2R1Fxa2NIcDJmSEZwQUltN2lTOGwyNVVnTGMwTldDR1VaOE92dEN2?=
 =?utf-8?B?ZE5hUmlocHJnemN1SnRlOUdMV0VaMkhFRjdJcUhWVlNoRmlSZ1I3alFFTUhX?=
 =?utf-8?B?YU4zQVhYbFhwWTlFUSsvTTJPNXBKKzJWUVlPdEc3RFpPRlUybDZNdElFQ1po?=
 =?utf-8?B?MHpKSjU5akVnQ2gvZU5QWkVNQTBWNFVtWG1CZGtkUm5PTld0ZVkwTFloSk5Y?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 393f53da-68cc-4056-0bf1-08db037b5f98
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 11:07:42.5998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KTX8AAKBAtAjC72pz4tY9ktYsbvpxkYqCfWuyzRS4ACLKOIehy1U9ABmHmVMP3PWxmUX53qR5wFxWSridqojmyLlOXYKX1vyc8H5YlkWcvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8121
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675163281; x=1706699281;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XuTi+PyPf3jYo7hVXtszbZ8CZwXpO0f0PWjsYPo+YRE=;
 b=joWG4pnAx0l+RjI0aBniFyCdWaWJbEBLSRYj+La5SDSB+aIc0Bng/92V
 cOXxtwL6qpXXjo9Z6fjwVTFj8fH5K8npo7ublcm5Y9KB+dh4biaaHGisI
 ZIrOB+6OSulaEVaF028PLFXBd2M4wXubsE7MWFxWs2ktQvnrjDiV+wki6
 rfDKpSDs5dTfP5ccmFAV+p2bUyocgFYTcO4zuAspjec+2eaR5B+GIixaO
 nwwr9heSo7ElL+47CvwmkuotWpA+AsfDVVfQYQVvhIaEfPJMEGQyjJBtr
 idjN140iZhp4SlgxCPmeOj1iaIInikRumNsao4A/Stt9U02117W3LqDSR
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=joWG4pnA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ixgbe: allow to increase MTU
 to some extent with XDP enabled
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 31 Jan 2023 11:00:05 +0800

> On Mon, Jan 30, 2023 at 11:09 PM Maciej Fijalkowski
> <maciej.fijalkowski@intel.com> wrote:
>>
>> On Fri, Jan 27, 2023 at 08:20:18PM +0800, Jason Xing wrote:
>>> From: Jason Xing <kernelxing@tencent.com>
>>>
>>> I encountered one case where I cannot increase the MTU size directly
>>> from 1500 to 2000 with XDP enabled if the server is equipped with
>>> IXGBE card, which happened on thousands of servers in production
>>> environment.
>>
> 
>> You said in this thread that you've done several tests - what were they?
> 
> Tests against XDP are running on the server side when MTU varies from
> 1500 to 3050 (not including ETH_HLEN, ETH_FCS_LEN and VLAN_HLEN) for a

BTW, if ixgbe allows you to set MTU of 3050, it needs to be fixed. Intel
drivers at some point didn't include the second VLAN tag into account,
thus it was possible to trigger issues on Q-in-Q setups. AICS, not all
of them were fixed.

> few days.
> I choose the iperf tool to test the maximum throughput and observe the
> behavior when the machines are under greater pressure. Also, I use
> netperf to send different size packets to the server side with
> different modes (TCP_RR/_STREAM) applied.
[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
