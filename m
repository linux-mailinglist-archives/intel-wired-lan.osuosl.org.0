Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CBF7E4901
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Nov 2023 20:10:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 901E34046D;
	Tue,  7 Nov 2023 19:10:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 901E34046D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699384241;
	bh=X7wKs0wYrQwrHrdF95LWjWcUlSh2rngxlcVX52VoHPo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aelGXPd6FLt9vm5qxf7r2N0i/sBSTg3g5DpBbOecBT7Blcex+3Mcq6z5qrc3ISUFW
	 6CoQAiBUhNhjKdqU+Xj0Tne+n6S9XPf0eh0zDR1XCP3jJ8aUxe+b18dP6jwSmqt0bi
	 oraVBys8qcFaXRobBBckthd9+fhBJnWl8vWFnnTb+8IP33JhhNhAGG3VTnBlYmYe+s
	 +OJNkpngFT2vTyy2GilV4eyJ5hDuZzCDOVFkH4ZZsyIE3nfF2Sk1dxWP6Y81CARAaM
	 UAMarxiHh6S4W6PcVH2WTktbAfIxvOzSaIB5jILzBTQVtuJ63whoJffzVomWvB/P1L
	 SculT1FWtuwow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vsVK_SRRZ4v0; Tue,  7 Nov 2023 19:10:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CBD940362;
	Tue,  7 Nov 2023 19:10:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CBD940362
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C2561BF429
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 19:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4180F4035C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 19:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4180F4035C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wMUxJg37vc4h for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Nov 2023 19:10:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1627640355
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 19:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1627640355
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="374623872"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="374623872"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 11:08:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="906512288"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="906512288"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 11:08:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 11:08:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 11:08:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 11:08:30 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 11:08:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQFGkqhjKzo1YbtJDV/zlw9r7d5GVTTz0InR4jVvIR1HFWUi3b4V9ASyYJZ8rQ3spVNhndszlSHVLiTUAyosxTJTAIc9EXB+znVgPRwzR/Y71OnBpXLSnMBCHBetsgpIrRa7quNEiC7skqdjhLwEUbfSlnYoO8JUs+g4/SzVBjkiCn0583UzCzljatbci5U1pAl4otRqt6cPwWe9s+nNkFSRh9Gsf7G9FEZe99JJ7uPCO1r0PLeiW07uC8Cx6r/wPC8b/Cacg2RCmFZjStuEZGY+JeOMorM0NLeeBO8sWKDARYq+YON8u0IO1ropLyvefTgdaMsUPw40iCSKE+8E0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgVnY89EyxLC1MrXhdEHqqm5EUejCVFEIMErp4V6JU0=;
 b=W87bBCjdBQHoZ5rFU8+cyUpMHhzKYnKPb7bLYzzMAq/RKCsRzfF3IUusv3XFLPnESar9/o0sq2CcbkdjbhPYeUHqg048IYuleIzl7te5loMKL0zma8F6SDBFwUgjsTxKck7uiztzGX3ew7fk5RvQwC5Ez+VF56y6vUUZozzAmwm+89ZNBZ/B3RMjM43Xy7K/iHpE/vVgQAt+Mc9IYCqOEbfQoToZgJIDZHi66zHeK0oEtAJeJt2o05kwWpC7acoTlz4wp8gJLkqn86lOp3CssfhN3prWi7S3u3R93NZnH9t0MvYd2LxuFcGCIYKfcn3ooxiS6C4yBcAKtlCVV+I0KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Tue, 7 Nov
 2023 19:08:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::eb9e:707a:8941:43bd]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::eb9e:707a:8941:43bd%3]) with mapi id 15.20.6954.028; Tue, 7 Nov 2023
 19:08:23 +0000
Message-ID: <2632696c-c964-6ad1-5395-cce8556def0d@intel.com>
Date: Tue, 7 Nov 2023 11:08:20 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231025121330.216300-1-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231025121330.216300-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR04CA0370.namprd04.prod.outlook.com
 (2603:10b6:303:81::15) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY5PR11MB6282:EE_
X-MS-Office365-Filtering-Correlation-Id: dabbbcae-9cfe-486f-44a9-08dbdfc4e9d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iTDElhC/01GIi3aDwC6dY/5nO1OShMySU4Y48XFIlAHnK1/GMeacKEiZ5OveBvyfWxbzx4FQJ52fv/OfEjmvsNUXtVcO84RKI3Ty8izdJ7l7m4b2O2EnXHFtcjoe7IaIXC6o03mseuVGK9r+uQ+0b55fLOzWph1QkK06f1cDGJVPu29QpE0YcY1e0Eux/ylfrp3VFaczyWhqqVlPK4qQu4vqC68ycTUZ0K4vZOSkbnKmvqT7llMIQbdJkPpf+AE2NTgolXQehiLd7TH5iTVjEf/u4DALMcpfEmWh45Zv2stIsXrCQCTmVMPMtr3UxlOOdQa+T5a3j/Gfxli6LMvjCftYA/radB3Ypexb/+pKvBQEDGk2Ts7NAKjUWZLbMpGzGFMe8fDtdSHcpkw4b6pRulc1wVnVQxgdeKjULArsroKcRSmg3/CzxHCdPGlckHOALIuciJNxaUy0JRiflJMjMXdeb0OBoGH0oNWEI89mQDjZmOVNcRvWZt4Y9eUD81ZygUmH/pJZurNmMzUsIbYioYA/bBCRBtZF7Dn96EHFyGdcFk0oiYQS63hH/z6Wr8g5anJN8q5YgYCyM0BBnEnqZE0/sQjxhwPp0nFzW2H3cBwf6zA36i+UH+Hh52IfGq9hqBjBLvdrOp3PoM+R/idC7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(38100700002)(53546011)(6506007)(83380400001)(31686004)(82960400001)(6512007)(107886003)(2616005)(2906002)(41300700001)(86362001)(31696002)(966005)(8936002)(8676002)(4326008)(5660300002)(66556008)(36756003)(66476007)(66946007)(316002)(26005)(478600001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnN3S25paVdzeHlqS2pnLzRXNFBmdVdyL2RNUDFxOG5GemZqWHBYS2hZbThI?=
 =?utf-8?B?QVE0WTY4UGNMMDgvbHpPTXJ6b1RtZ0dDOVRCaVhmMmQ2QkM0TGF1MWJ3aVll?=
 =?utf-8?B?cFl3YURheWE5ZnBaR1JWWlFmMzgrNzJvSE8wZ2VkWTU0cWtDZjJlbktLTzg4?=
 =?utf-8?B?NjNLbC9lNm1RWTRiWDIzb2lyU2NLU0FBdHVnVnA4aDdKNTg1ZlVMbmYxL0tM?=
 =?utf-8?B?MURESTUreWtBMWxmN2ZYVHJhdkMyOGN4amphMW9JMzhTOW9SajZxVS9HdFc2?=
 =?utf-8?B?L1pLZHA5S1NEWjdKT1dtbi90bTVROGRUdHNZSm90Vkc3cFZaMTJsOTVYdnFl?=
 =?utf-8?B?SVc5a1hLc0RYT3FXdkcxNFdueWUzeEZYSXl2VWs1ZUxPNk1mN04vU0U4Rk1J?=
 =?utf-8?B?dWxhNVRwcW5iQ3lyRVdRc0pvakJoSUhOc3E3d2d6NlNCamdzQi83MFZaRUJJ?=
 =?utf-8?B?dzJqOEttWDR5WGtMUW1JU04wRlpQUGhwNjRBS2J6S1gxTlZLSkJPU3YyVDJH?=
 =?utf-8?B?UU14cEUrdlJ0TjdLbnlHWW5kSlU2UnZlNFZKKzVnRlQwc2hXSFl4Y0doKzVE?=
 =?utf-8?B?QjZGWUhZemk2RkxuM1dMaHI3eEQrUHlEd3Q0bEdYdjJ1VUw1cFR5T3UwYzZR?=
 =?utf-8?B?eGFMeTQ2Y2psUXVRUnNaZGhYbTRnSWM3VndBNmxNTGlQQ1hUR2FBYW9TU0Ix?=
 =?utf-8?B?ZXM0TDZUTFo2eUYybjU0ei9wWU5LdGtKb3RDVGVjZHdCZmtYenQvVVRmaFZZ?=
 =?utf-8?B?VzZFdmJtSVRDSFh2aGlKeU1KL0dCOXdyMVNiamR3R09QZUJxM1hwWTZZWmQz?=
 =?utf-8?B?d2RIZnNZak5LVWk2b2tyWW94WW5NSERsdFNwNUpRcm51Z1MyQVlhYTF2Sndp?=
 =?utf-8?B?YURmS1RUTEtxVG9jOGxOL3lKWWhQbmludWxrSTZQek9JWjRrZWE2K1JvSE4r?=
 =?utf-8?B?U3NtT2QzcnhCb0FmTjFBZTljSmVhMnNwOGMrNC9Dc0s0ZG1kTExwVENkbThX?=
 =?utf-8?B?ckJzeHU2bDdPdDV2MHRnNlVOVWQwOHpzT0dGVVRhZkdlTm9oNHZFTG8rOFhi?=
 =?utf-8?B?UVhIWFQzMlMwNm84eG03Z2Y3S1BmaDAvbmM5YTRUYmNzTlJzVFF3R3MvUkJl?=
 =?utf-8?B?alZOb1R3MmV6RjVyekE5ZVVsdnAvMlZhM3BIKzUvK2hwOTVLU2xuY3ZtV3hz?=
 =?utf-8?B?dXVmVllHWTdmNk41UnFCbCtid0pNSEo5UEI3STFGbmpQb2hZeXVicWZwbG1M?=
 =?utf-8?B?VmFBdjIzVDlBeW9uTUc0b1JyUDgzZEQvdHZyNkl0Q3FIc24vakNZQU5NN0JW?=
 =?utf-8?B?Ull4Yk9pdWVKV1A1ZnJBWmRQK2dCRmFBWDlDZEpaVmRJRVdHcmNxTVQ1UFE1?=
 =?utf-8?B?citqVlVMeWw4WjZNSmhQWkwrcWkzdVBnbHhzUU1raXA5RnJzakFvOWJHMjN2?=
 =?utf-8?B?SW8zcE1CV3NZeWl3dDVYQVo5bGNLN1dpLzNNVlJxOFh0SGwxQnQ2djd6Q3Rm?=
 =?utf-8?B?eVVubkFpaXhvTGNQaHllZVN6V0VZQUZOUXptanNGQzFVbUEyaHdDRUdIZTNa?=
 =?utf-8?B?UFNNTDJKTE1mejZ4cTdVa3pDaVZkeTk2NEo5bTBSQm5GR1VGNHI0NVFwcXV4?=
 =?utf-8?B?dmhUb09FVDBSRTJMeXpFSWJ3RkNrT0FsWW5rZ3dyM0hoYlM3WVIrRzBxZzZx?=
 =?utf-8?B?WFNzcUVGdTdwanBXWVc3U1NNQnlpVjVqTFdab1cwNkNtNTJBdXl5Uk9taXB3?=
 =?utf-8?B?eHhPN2xxcXhvN0dmUVk4TWdOeVVEZXBncmxtVjI5UVZBY1k4WlNhNThMVjJO?=
 =?utf-8?B?bndqWnhIVnhoblVtQTJVbU45dDJJN3RCSzFNL3FVWUxxTzlwWE5JQUxQZ1h5?=
 =?utf-8?B?SG5LaG5HbFhOcDFiMTRwYmxiSDlDUGsxM3FqNmtlOTNCQ3hUS1pRL3N0bkpn?=
 =?utf-8?B?WUo2cm5KMjFZQ0hleVRIMWNEU051VWxSWHpXUnd3d3M2TCt2cUsvT2VSUmJO?=
 =?utf-8?B?SnUxK3NCNjIrVEY3djVmcm12VkhSRHltdWVESzVFNXBPWHJkTDRBb2tUUStK?=
 =?utf-8?B?ZE1JY0xkTDJUUXpibk5qekFPTFp1R2pNemxld1VVNFdwMmhXQ0tKQWtJalNC?=
 =?utf-8?B?a2t5SWYyZC9YZTZKRTNqcUw0V1JzK0pkdzhaUUVmVEdIK1FGS3pzRjdJYSsz?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dabbbcae-9cfe-486f-44a9-08dbdfc4e9d1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2023 19:08:23.5014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sQyNkEbGsqu1G8jyhPPdb6GA3oMOgK5Mq1IJ5swOiTL9rQV9DyG5/bSXXuJuySDMGNklsTLesqpBOg6qwOTVjMgCyc5oRDinPlsXSNxpJdI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699384234; x=1730920234;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V2mfsJVDQuoRoq7ZUc8s4ndRn4SwXFgPE+Y2dt0brAo=;
 b=O7TtVnqjGV//8nMib0AaYjkylHSQA4QeEDJM+Rlt//UpaNsjkuR68zpP
 yJbhXznzskaqagt74ACO+TAqoVAPhi1+Zv93fjmG3Q1qGj5wzt6si8DKe
 FfL2LuOFEuyfMrM3yxESfr/XLpFm5gwvarGrV2+pJmVllG+vQL9eTm3ol
 6Qs7vPnkhslgfHml1yw1+TJ+mm1Zjc1JLa6rT9+vOqbih9QDW1f34ulgB
 zSKh6rK7v4DQR18bPoDAIGzV4PuckZS+Tfw4eowERXigmtImzB5C49WRS
 jXUQnRBedAogfRPmOtYOuUR9Vz6v8yOe2goL7jq2e4KO0FpZqzSqQdHhj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O7TtVnqj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 00/10] ice: fix timestamping
 in reset process
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/25/2023 5:13 AM, Karol Kolacinski wrote:
> PTP reset process has multiple places where timestamping can end up in
> an incorrect state.
> 
> This series introduces a proper state machine for PTP and refactors
> a large part of the code to ensure that timestamping does not break.

This series has quite a few conflicts now after taking Jake's reset fixes:

https://lore.kernel.org/intel-wired-lan/20231103234658.511859-1-jacob.e.keller@intel.com/T/#m8ecb1403ca012e506215ee798a455f90256a8a14

Can you rebase, resolve, and resend this series?

Thanks,
Tony

> Jacob Keller (9):
>    ice: pass reset type to PTP reset functions
>    ice: rename verify_cached to has_ready_bitmap
>    ice: rename ice_ptp_configure_tx_tstamp
>    ice: rename ice_ptp_tx_cfg_intr
>    ice: factor out ice_ptp_rebuild_owner()
>    ice: remove ptp_tx ring parameter flag
>    ice: modify tstamp_config only during TS mode set
>    ice: restore timestamp configuration after reset
>    ice: stop destroying and reinitalizing Tx tracker during reset
> 
> Karol Kolacinski (1):
>    ice: introduce PTP state machine
> 
>   drivers/net/ethernet/intel/ice/ice.h         |   1 -
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>   drivers/net/ethernet/intel/ice/ice_main.c    |  14 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c     | 312 +++++++++++--------
>   drivers/net/ethernet/intel/ice/ice_ptp.h     |  38 ++-
>   drivers/net/ethernet/intel/ice/ice_txrx.c    |   3 -
>   drivers/net/ethernet/intel/ice/ice_txrx.h    |   1 -
>   7 files changed, 222 insertions(+), 149 deletions(-)
> 
> 
> base-commit: c7ee7435210df79c6f08ae8bf045933478b6a118
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
