Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 993E974884B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:47:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B9288206E;
	Wed,  5 Jul 2023 15:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B9288206E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688572067;
	bh=ueJpY3NpgL2ZVHxDsHvZeBlXBmmRKGMqt1Yc9d5JgJg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F/+R8BCo/K6h+zrfoK8j+rYQnXz+GLeQ3GAkXXo5KIbq1rWuRqYne/Rw7NQj8l24Q
	 aL6aAlhhI1Rn/gpJZrfgzW/VG5SU2syCW96JSpzcfHku4wREWH3CbdK9aFbHcAZdNO
	 cRdYRepQ1zuz/ffNFT+s2oLK6V9OMSPKbm25/k4QsZkDy32ATDVkoeF8/OhHf56fjm
	 rwEeuM/kthwMw6K8sqmb+45gV8O2kZ5yyoC61dPyZAG1BibyPh1Cu4dnrumySsLVaY
	 DirBOd8A5UoQQVB4VXbOpqKOOBF0UFugL3DSYj4MOWyx1gJtfYzWtRUDaVWaYL/C85
	 6gWLxW27CSVfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5USyz8_jAi98; Wed,  5 Jul 2023 15:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7881A82051;
	Wed,  5 Jul 2023 15:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7881A82051
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4561BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 666536104D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:47:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 666536104D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNmPXnyyWUIp for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 15:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79AD160FA4
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79AD160FA4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 15:47:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="363407289"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="363407289"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 08:47:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="843326220"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="843326220"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 05 Jul 2023 08:47:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 08:47:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 08:47:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 5 Jul 2023 08:47:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 5 Jul 2023 08:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lu3zuM5inzablBzrnAaRjBPMcQmh5ffp7oWbhmsU36P/msnVmS/hGJTObFdY3rMfg+oz9URklAJAf/8k+NJfH2QH7rofLxCMryRB+RfZQcb6DlxrtJ4UReQu3GPcc6FLNi90SEJMu7J12VPD7nfNosOHIJ57FVKzL3+LxnuAOC4QDftGs7/VPWUD7chXwCKEAjRYAeL9l3kzZDYjfZPEU4g446A9L9ynaCpqjXcPGlU2FSOhSawqW5OKEvZyWZBRM9Qp8RiR42vH1WiyPsRPzbB9lxDlzJeFwDdGdLWVZ2mIHvGYCGmqHliE0s5OmhMgkwAzIrPegDGpbZ0f7dkBVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QruTkLuEkJGQ3nw0G5eWQCr1fYABvmosJ+FSqosNTcg=;
 b=LmPi04X/8HM3TnjPO330AYKP2Jfreps8g1PME8JeqX5e2oSC5CSd5D1UpUbD43tac45O+SIdKfil+f5HUM8F8xXJWu9rIR6jud7I0x0xaPQ0W33DAKXzFwx/NJbXayCutpbup0LvEih4fNKd90GIdY1wn4QkjshtZ+idKW8lJ8sB1XyU2OlRDCHEiCthtjcr5SXyNutikyPcyHDP+US204420IO4zhj/lIYw/iRhxXaFNOvEGyqAwwvvrM8Y0uiNKMgJxBwmvH1KW8X4ZlN81VgS1ZV29LW3RXuvOa28tHM6VW2821pb6iz0PIHvrzCMxE6e2NFnCwwHgDEZbCbkbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by PH0PR11MB5126.namprd11.prod.outlook.com (2603:10b6:510:3a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Wed, 5 Jul
 2023 15:47:34 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::8029:1845:3559:3560]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::8029:1845:3559:3560%4]) with mapi id 15.20.6565.016; Wed, 5 Jul 2023
 15:47:34 +0000
Message-ID: <9fff2b17-0b66-93a0-87aa-ca6479cb0663@intel.com>
Date: Wed, 5 Jul 2023 18:47:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
To: Yu Hao <yhao016@ucr.edu>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Edri, Michael"
 <michael.edri@intel.com>
References: <CA+UBctC57Lx=8Eh6P51cVz+cyb02GE_B-dWnYhffWoc-nm7v6Q@mail.gmail.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CA+UBctC57Lx=8Eh6P51cVz+cyb02GE_B-dWnYhffWoc-nm7v6Q@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::17) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|PH0PR11MB5126:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b191378-ecaf-496b-2927-08db7d6f2686
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iRcajMnv/YcIAAIUAZL0s4vFJvsJaqn6SE6nP375faz3je7PE3JtC0PDBhPEY6WnHo9uqXmAtgEaSir8PwJV43iCCIPzwZAv+z7Cpnoy49RBPPG73MxXMU77EdEVrQvwwKXki7JQAq+u6Q/5vv7kFLnCLCWpW87ELNmg1OSB0n5s0ad55/gpsBtcwHTf0C5caVnztKEiwjkJB1ebw2mJLETXQNoFSYL0cGTDHGHV9VTdN6CHlGM+fetMOlTNPyC7ivFkzu1svm7IVEE+qSZ1t8Xek6KiHoK5wfanUWEQGiNbuHaxVIWpO/KIDyaXn2Yt7Mdx25MEke/kGx/0qypwYLPF32QS/AnCSSrhjwGPVbAbfslzYTusAdqUx3qqzVe89e0HrFMHJACWMsi7pIqGwdkhMwLNdG7p3FOU1EASeNeVKWvS/3l3VzqsGIqjBtqcOmnOLGLT9jFGhpiV/Wwa7LJyeF0QxAnj1GqrHnqWIwCAtI0z0t843sOZRtfeJdKseQwJoJS5bRkKpN/uwX/PxURu3rMsHPlNlTsfF1p4JN+mtJiDsp6dUX1LOdb0RNCaGdW9TnWe4zZSbfZcBAAvpoGZ3GdZnGs6bneNnmHGLGMri8qQHHwITKeD8LN0ll4OpFxhAGM4C7HGRzFORZ4UiLaQyPMhWKiKVcLbUqWGLo8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(396003)(366004)(376002)(451199021)(83380400001)(2616005)(2906002)(82960400001)(921005)(38100700002)(36756003)(8936002)(8676002)(86362001)(5660300002)(66476007)(316002)(6636002)(66946007)(66556008)(6486002)(6666004)(110136005)(41300700001)(31686004)(6512007)(478600001)(186003)(26005)(6506007)(53546011)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjJXWHJPVk9LR0M2RVhtMEVVSXJwaXZWTXd3cUFQZGU4cmNYNitzeUpCMzcz?=
 =?utf-8?B?SFpFdHRrd1U1OTFVb0Y5VEJ4NW10RHBXdEZLT0NkWkJQdnZLRXoya1dLVEdB?=
 =?utf-8?B?QlZDSDJsTngxUEFzR0J5aFBJQnNRempDWmpnV0crSUZQT3JGQVlld3dHckxI?=
 =?utf-8?B?MmU0eTlVNHlOUlQ4Y0ZOY1NuUlZyQ0hvRnZCV0RjVFJCU25RNXlOWTFheG5B?=
 =?utf-8?B?MURFVXpkSUtma0VTRG9SbzlDSUlGNXdSTEU2UVR0Q1FMOGYvZ25NUGlMUklD?=
 =?utf-8?B?c1o5VkpMS2ZDbU9OYVRsSFFQeC9tck5iTStJRnlSUzlyc3VkR2dmL2pPZlEw?=
 =?utf-8?B?OTY3WWdCMURVRkZ0UjlOMklqS09UWXRaRXZ1eEFhcjVjMnVxbU1wWlc3ME1t?=
 =?utf-8?B?ckZNRC9jV0IxOGVubkt3RXY5MWpiQ1NQMWk2eDdLaHlGakhEYnJSbThSb0NG?=
 =?utf-8?B?WGJuWXRGa2VRL1c1S1hnVWRITnFNZWRxdXpKazlTRmhnKzNBTERjUmF2UHhG?=
 =?utf-8?B?WFcveCswMHVaWUN2c3Q1ZUpZWlVUd1paMDM3d1lya0RnMGEzMng5aWNPeFRL?=
 =?utf-8?B?amtOT29MMzBxV1FJTndxNElBUnpSOFh5OGwyY0hYRHFQM2FadzNZUkljL0o3?=
 =?utf-8?B?M29kbjZsNU9RVlVoUGZsZG9ReHF4akRaVEtoSWNzdHNEdlI0UlN3YjRDNHVW?=
 =?utf-8?B?NUtMQ1hSRGxyWHdXRW5qMmlJaUo5bmsvd2RmOHBZL0hLSnBRVGsyUENVc21q?=
 =?utf-8?B?NVJKRmdyN1lGVUZFYjJDb0lJeS9EUVd3OVZudlV4QzJONWgxazEvaDJHODhu?=
 =?utf-8?B?V2piMHlOd2xPYzhjWCt1S1lHS09TNXMvUHY3TzdtZ2swUk5oT0xaTi8zbjlE?=
 =?utf-8?B?UFB1OTBwQjIxWGNDYVJDTGtsZUloNFBDcDluYjdaRWZpbmdYdllGalhpRGJk?=
 =?utf-8?B?ZWZyaDd6MzlsOCtOU3ZpZXhSMFlkTVRtbmVlNURJaHoyRXdqaGJvc2xBSDlU?=
 =?utf-8?B?S3JUU3piTjREcjBCa3hPd1RnUGhFWjVDdy9nY0VjcmtBUmxjQm43WGxzT3lW?=
 =?utf-8?B?L2kyZTNKK0FBU3Jaa0pKaUVTcmxEeUFyS2l6VlA4SHpuaDExU2FiSWF2NlJo?=
 =?utf-8?B?U013ZzdydU9UenZ4VDNBRUR6WG82WjlyNTliK0ZtRXJUNmdoTFlRU013N2Js?=
 =?utf-8?B?Q29DeUtvRVBtSzA3Nyt4dHB6OWlWekI2MUlYRW1Zd25aZnVCenFtajlDdXZL?=
 =?utf-8?B?WHgzYXNXWTg1aVBJaTlYaUduL1k5dWE5bU5STG02RGtnTG1JbUVUMk9lSzFo?=
 =?utf-8?B?aktvK3JtVndoeWZHUDNQaU1PVExmOHVJUUJVRlVVRmN0Lzc3b05oRWpEbCtN?=
 =?utf-8?B?UEl3VnBZR1hwN01rZmVwZzAyNkhMQ0krRGRqbUxKUS9TalNVUlhDaC8xM1dU?=
 =?utf-8?B?aHlxWXozVmZ0L21VZVBBOHFqc293bTAzVEM3anFFUmxMU2JicGo4ekNpa0tH?=
 =?utf-8?B?RE9kRG5NSCtOL253czRRTVhiTGFwN1dJakFFRVZ5cXdGWTNtczc2b3hMZkgz?=
 =?utf-8?B?ekt4OVFwaVF3ck5IQ1dDclQzRytHYXR2SHVBam0rWXAvZjlKQ2FXczE4TmE1?=
 =?utf-8?B?Tks3eTFVTDJ0bTV5UklQVXBzaXVYai9QMXNCSm5BWUhUQlNNYTNFSERXdEE4?=
 =?utf-8?B?TU9pMFRWaHg5RGRxb3pqcDk3Ym9LRDNjbWJGOGZ4c1pxTytqWmJLUkl1YjE5?=
 =?utf-8?B?UGQyRnRIMmx6OXBlZnhpZEVBNElWQjhlWlhwdGttVDh0bXlwVzdKUWs3SEN6?=
 =?utf-8?B?M1ExWnM4Y2g0SU1EU0FGdGFUTlVSWHltTzBscnF2bTBRZnpKVElCV0ROdDVw?=
 =?utf-8?B?WW02aUtscG5rNHh6UHExRGRZZElPVU9Sb3BvbWE1NmlQaWZDQnk3WElxeFdF?=
 =?utf-8?B?TUFpYkJvRGFMSmQwMnlncEl4Y2pGRk1LdjNzZGZyRGRWZkhMTXR5NkVKN0dj?=
 =?utf-8?B?a1pqSk1CYnNweGJoSWVNbWZUZDVuY2xFQVFiRGx2WTgyajNQdTU0YUJOTDZJ?=
 =?utf-8?B?dXJUVjdoOEljbjc5QS9QNzcvcm1LdDBGamhxaVBlQ0habkR0emNMN29TSTd6?=
 =?utf-8?B?SmF3NWwzTHFNVEZiSWhYeGo0VEZrOUJRRGpJN0toaTJNdUNwRWI4MWNId0xr?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b191378-ecaf-496b-2927-08db7d6f2686
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2023 15:47:34.6983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DpzX4wBucbXA+M07Qfi+HUGSvgjc5XCCPDC+RjYInkuLMIV3Dl3MJs34lU+CshfEvNnv04H0XXrFbSiiCklfoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5126
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688572060; x=1720108060;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6TmrV2dCPuPLpG1GuCwxzWXc4+NuDJrkYgT/AVhXFbU=;
 b=HDnnqZB+6lOGYyKHc8Q/TRrZFRRLXYXAm5GRxfnqmpxmoiW8GNJ7GYaI
 9a0m4vAg+hshaDTwy4+7MEutVV6ONqFfKxxxAAii9ENwqmo4eCkxq4IwM
 rOBAtnCb6znolH0lO4I1kGx9sPZaq+H/m9dBERLkJ8yYlXHK3zjRmSpvW
 BPPBSI0CClkXgX1jQ/QNHo6aN9nczEE5horGTSPqx6QzCpTBUSU6LP5pK
 wWbr8Rj91AyQNFozj8A5W8fveA2W56V1HxhTBOXob9aYSB59l5OyziSVu
 oEi8Rfz2SYm4F6NohulFt7KAb5gmzGmTnIIRKxnY6Xa8EsFBe/yoBgiyF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HDnnqZB+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: e1000e: Fix possible uninit
 bug
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/5/2023 03:10, Yu Hao wrote:
> The variable phy_data should be initialized in function e1e_rphy.
> However, there is not return value check, which means there is a
> possible uninit read later for the variable.
> 
> Signed-off-by: Yu Hao <yhao016@ucr.edu>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 771a3c909c45..455af5e55cc6 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6910,8 +6910,11 @@ static int __e1000_resume(struct pci_dev *pdev)
>      /* report the system wakeup cause from S3/S4 */
>      if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
>          u16 phy_data;
> +       s32 ret_val;

why just not initialize u16 phy_data = 0? How did it hurt us? (legacy)

> 
> -       e1e_rphy(&adapter->hw, BM_WUS, &phy_data);
> +       ret_val = e1e_rphy(&adapter->hw, BM_WUS, &phy_data);
> +       if (ret_val)
> +           return ret_val;
>          if (phy_data) {
>              e_info("PHY Wakeup cause - %s\n",
>                     phy_data & E1000_WUS_EX ? "Unicast Packet" :

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
