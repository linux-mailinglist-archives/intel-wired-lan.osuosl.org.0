Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C80165BA87
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 06:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDD6741690;
	Tue,  3 Jan 2023 05:44:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDD6741690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672724680;
	bh=0g3dbCyrwtzWCW/IzmiNknLvhob8D3bLsZVu2PTKbDY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aTgQlR4FtzboRtNYSuYa2UNDzgXm4C5ho5Wzc2ZoqFr1IXCJpo85Wob8JH+JAl2rb
	 1kE9odbCJMa81aq9BUhMXYeQstPupOA/RY803nyIDyeptUe2FxjAjErfu+oixUsA/E
	 BZ8MoqOQsnzHePkr39Jw5jRp4F8FJmxItiKY/jkrVu3Wvk4hcA3WHmalBj9AZ8+1GR
	 IyY4VPtHbcUggZ7NXIY+fYof2+IFIqU1Js3peRMFmPOlofuoBLBLsmZs0ARTbSVqwN
	 QLmJJqQS9ME6gquU2tBb1GV5aEagSKRHnzijdINAVa6MjkQ0HJy5lAlmczXsjldmH1
	 Uqc5n4iUfW5kA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qKtD9U3UIFNm; Tue,  3 Jan 2023 05:44:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A209403AC;
	Tue,  3 Jan 2023 05:44:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A209403AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A39851BF338
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 05:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8945C60C2E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 05:44:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8945C60C2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5EY8Fk4kpFSf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 05:44:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A23860A87
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A23860A87
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 05:44:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="386025022"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="386025022"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 21:44:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="778737959"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="778737959"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 02 Jan 2023 21:44:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 21:44:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 21:44:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 2 Jan 2023 21:44:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 2 Jan 2023 21:44:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VrtLmkOZLlnZ3pDjBggZl2yzTMOB1YKXmQC0z3C/en3Ix/xnSq+lSDkTGwx9taLSLYcOdTq/9x+0kF3S22qG1G6k7Llhth60YUjo2BmB6VcSAf2m7FAjpnQ737aGo7t7ZCQWPExr2tEWHPIeUaIfsqahVL2cpYQzMjkySpE/a0DR7CDkJxs6dh6ibobD7yyMV1TuEY7YxETNJ1qm3+GIDy9XVVesj9dp2s8dnslkrhnCF+6oNJed7cMZFVKyZkMM1Un9oyH6v8DbHPh3a8mMNBEbnYasRdFnJW/Z+mito8jPXPkDmz/iSS3toxrLbQTn+SszMPIrYTWIbj1dqACMiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jyoh+M4swj2wrg0ConFhLeuPmsB7jHtQlDDZn5PCJWY=;
 b=A++7/q6du9dZPXi7uvczq3Zg0dgX+zbMW/PwO8qagsbReNpUG+s2KZ8YyHTy0q9w40DTqTDVrV6I98MaMXKDkONJepoqv1SN/HgbgvSTwN2P1vV+cgr9N6Ee8WgPtcvxc7z1v0no8F2wHr7yoNqNxiuHpe2O5Ms7BfcWh84CHQQn6+VPQu0YI7mYpNurVfOfWp/4waJCNmDCGY3cmi8i0Svmva9vB7hZ/W7vqsv/DKFMdwLBi4LWDrKPBedUo6XVhUi+i1jEkbksa9/uK9AJ0rxwD0+q9c4tmiuH48TRUYEDeqQGasKpcLD00PUrIaErlJciGmWMV5JmptwM31Q2GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by DM6PR11MB4692.namprd11.prod.outlook.com (2603:10b6:5:2aa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 05:44:16 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::7c7c:f50a:e5bc:2bfb%5]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 05:44:16 +0000
Message-ID: <ead8421e-eca6-a11e-6082-261ed9de0f09@intel.com>
Date: Tue, 3 Jan 2023 07:44:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: "Khandelwal, Rajat" <rajat.khandelwal@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Rajat Khandelwal <rajat.khandelwal@linux.intel.com>, 
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, naamax.meir <naamax.meir@linux.intel.com>
References: <20221229122640.239859-1-rajat.khandelwal@linux.intel.com>
 <eb5a9805-3e53-ec22-696e-21c6b8cf0bfc@molgen.mpg.de>
 <CO1PR11MB483580BF9FF4BFA280A6F3F496F79@CO1PR11MB4835.namprd11.prod.outlook.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CO1PR11MB483580BF9FF4BFA280A6F3F496F79@CO1PR11MB4835.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO4P123CA0670.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:351::16) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|DM6PR11MB4692:EE_
X-MS-Office365-Filtering-Correlation-Id: dad8a917-a6b7-44e0-5092-08daed4d8d2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XiUTxSJOu2NbpNRdawY1gva3tAJkjF6nQwF386jTrW662yQPAv0b3t2ouYQgYT4qDJBpOUMi0y3NE6sRQMDD76wvKW3BE3Te6A7Lb7HIlyX/9ow+pa2ahTlEzPtr1n088oz5FYBNfKwst1HxtKr4M9ZheLE1ZA0HaF5Kq4zZSXpXyt7Fvzb7okKa+xjYm0ujVGoZwu0VOhFQ36WtZi68Z4S/L3C+Z6iCZWKkjhkoYXBkPC5KibQmORtYVnzMBIEFLr3RzlMgdp7KUN57Hsu/G3a0EvbLG0gD4WGqv4bo8BBDf209Hb2zH5rVKfa2IzkVYR8YJI0HDxhkExKT86jKVWixrDzsPJAwjC/cjcxeplVHWWyxZA/WpbPNeQFyDyjk8DjpCAYncn8MGhBvppg6vIK+7455WPLhsesDgNkcY/xkS26k6UeK/RF14/uDZsipcAlfXrFpWgs1GU43s7yTrDc7UtwQVQh56v0Kh9WK0QBcB3ip3+9sw3YC2rvUpe0PWZ0WEVlIdMYIUuGb4bU2FPJys/kladveQy+YL1v7qdJXhwqxO9Rlt9skxs/MJpqk/xV6zpHCGo7bH0cNTpvyi93bkI23SnWRfKLMc+ToM5Z/ga+2yfQeMQ6vWMceiybvelUl0WKI1UTPtvagCQPHhxXmLs2/6/3NDSjUdym9ul2Mk8lYucwR/8Tmltlc/guinjG6zCT1ZdUCq8Ocontu7bdkrjKbiRyAEywlkZB+4adHWW0NRHV+XOvsIfjWfNcj3I8cXLJbuYY5xS0jhaWKvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(366004)(39860400002)(136003)(451199015)(186003)(26005)(6512007)(83380400001)(2616005)(86362001)(31696002)(36756003)(38100700002)(82960400001)(31686004)(66556008)(316002)(110136005)(2906002)(54906003)(4326008)(66946007)(8936002)(41300700001)(5660300002)(7416002)(8676002)(66476007)(6666004)(478600001)(6486002)(53546011)(6506007)(966005)(22166006)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ME9ydldmMlpvUEVRYng1dEw5RFY3SmZabVpWL1ZxSHpYdW5DZHkvd1RabkNm?=
 =?utf-8?B?dDZ2akVBVWg2WkJENXFVRTlISkxPZXZ5VUVJSWN6NFpNeWVHWXBHcXJCKzk1?=
 =?utf-8?B?N21veVk0SFNVUnhsZnlwWEVpTXhTSjRrdVMzMTBGQ2FZUTFYb09XeEpwTWJR?=
 =?utf-8?B?UnI5b3NtemQ5VFV2Y2xaSmZ5ekZkL09Nd0tlVmlLT1FWUmhFbVhQaHpXci9K?=
 =?utf-8?B?dGkvQnhVRkFkV0FqUVhOOERMbEE4OE9FQW94bU1tQm5zQTBqOHlEWm02OHpY?=
 =?utf-8?B?akQ4UmY0a20rdUxMaENCSXBTd2h1ZUdabUZjWTJ2VHpLMERSTmdlejVKOUli?=
 =?utf-8?B?bVRHMXBsU2xGTlc0NUgxdTZYalFubGZVZ2VzbGtRNEhuaXMxbnNreFBNQUpl?=
 =?utf-8?B?VFFNWnJKOGxsdXZmMVZFdlpKcDRXYm1GcW1CZHlmKzNpYlJMMkZPMWZKTytn?=
 =?utf-8?B?SEVZaTZ2VG9KQWRaVnZrS0pNTUZUOVdBSnpsSW5acmV3YnBYN3Ivbm4yUmpS?=
 =?utf-8?B?NGVuS0ZUeGZ0dURkeE5Ia1dDS01uWjJpOVVwcnhJWGVRem81Mk56bmJQOSti?=
 =?utf-8?B?UkZYNFIzWlU3NXdGM2RFSVpHVzR0ZzJRc1pnNFk5NTRPcXE4eGhLczNFNnRU?=
 =?utf-8?B?Y3JwL096WExpcEx6UzAzN21yeFJXWVhuWnNITUI0SXFDcHkrVW9Xci9nek5s?=
 =?utf-8?B?OXZYWm51Ymt3YlR1ZllIMUI4bzgvdHp4cHl0SVVRMmNJZlM3Z1NZODIzV2xQ?=
 =?utf-8?B?NzlIb1JDZXY1b1cyUWNXSy9VSjkrd1VUWmJpVytreEUrOEQwUXRkd1JlQnZJ?=
 =?utf-8?B?MCtuYm1EZlhML2hCVUlxeXA5bnZLK1h5eTVjUWtxYnFDZm95OGVJNlJHNWsv?=
 =?utf-8?B?U1ErVGkxYVE0Y3o1eUlsWGtpclIrQjBRdld0N2VrOE9TaVp2TWhlWXQ5TU5I?=
 =?utf-8?B?a0IvbVVOQ3NTUWVtN1BmTktndFRqVFFQOEh5ZVhvSVdlcXFZbGNYR0xsNDFW?=
 =?utf-8?B?ekhqWlN3M1NHOHEvNDFlNWdwZnM4NE0wemNNU1c2K0ZCeDE0RkxaaGpBQU0w?=
 =?utf-8?B?TWMwdlgybDdFMmpvZ2ZUREprTDFIMkxyQldibWZQTmhKNEtNYzY0N3NUeTc1?=
 =?utf-8?B?alVJU3g5STNTUXFZaUdwVVNSczR2K2p5dDZ0dVlKNVRYMTdmVXZqNUNHZzYx?=
 =?utf-8?B?VWRwbCtmOHFVK3hTZEpyN2wza3dzNnAweTRzR0p0RDZORFg4cXFhMTRYQlhX?=
 =?utf-8?B?cVNiMHBOY294Y29BODJ4OG4ycFJxQ0lzcXhRNmlJTVg5dVpHbHhERmxlS1Br?=
 =?utf-8?B?MmdFdXpUMktHTnRpdXR5bkhoRGFMRisyeXVtUWtISG9JWW5aVTJqOE5VbTJa?=
 =?utf-8?B?WDlIbFk3VmU2U1k5dUFCRUM2RXlqdHkyTUNjdUZCWlhHamlTU3J5NnVzTS9r?=
 =?utf-8?B?bTRmM2kzK2h5WTVzWWxJSHdXdmQvdFdidDRsQTVRTXNZdlVUWW9Gellzalo3?=
 =?utf-8?B?czNuRXNtbGZiZVNUSk1zYldFN2xOZXFoKzlMNVo2cEY1WVUyQXNLWG5NVmty?=
 =?utf-8?B?NHZCeUJZcUNjQjArVmd6ejZQd0gwVzd4eVVpWHpySng2ZHh6eTljdzYvMzd3?=
 =?utf-8?B?Z3I4cUxNclhDZzBWMVRwY1l0NHhROGpVQ2JnMWxrcnhSRXltWjhyV2dFQ1h5?=
 =?utf-8?B?bCtIRG1zSXdDR1NyMUxvcStXckliR3FaVkIrSnk5dU9TUUF4aDAyV3I5MjhP?=
 =?utf-8?B?VEpqOFdVdFc4NGVvWi95Z25KTG1oUGdqZHZjTXJCbm9ZZU91cUM2ckVEUWx3?=
 =?utf-8?B?TUFuYzJIcFpNcm51cDFGNm9FekdoK2U0ZDBLOERIZDBISmxFUENCNnBxRi9M?=
 =?utf-8?B?SEJXOEErYWNhcnI0dlIzVHdoU0p2Q3JTbjhvdjlYeHdqUG1OWWJ0RUI0MnQ0?=
 =?utf-8?B?am1hemtIblVVdFBxV2NDRzR1bnR2SDNZaHFHTEFnNTZBR2pjV3RDNjVabnJG?=
 =?utf-8?B?alhuSVU5ZXBaQ21EYW5rSzhYdmR2RFFYOVFqSkM5emRQVksydGJ6OVBZVjNz?=
 =?utf-8?B?ZDZOaEI4TnVLc3VVUmxYYTBIbWt2dG9JbVpML1NKaWRsdTlkUFM3b0VJdlB1?=
 =?utf-8?B?WUlzTTY3OGw4UERvei83eHRCQk94U3FmaHU0alFJempQQk5rVEMxbmk5YkF1?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dad8a917-a6b7-44e0-5092-08daed4d8d2d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 05:44:16.6448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Bf22GYQHfd3YxgHEydk1pCl9ar1qgss7/fql26+l2H8sfTR7WX4up6JPNHpGkIvyWrLLXlr9wkzr/EQlXn4nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4692
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672724673; x=1704260673;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=44fg93/eDJbw3Gu8zXd5nJ+qj3VmM7jMD5Fp82rqKI0=;
 b=i8QSryZViPoEC2orDlO6MeSm5RG5KKYZGMFF/yvsnJKCL7tNzJaEKi6b
 hv82nlt8JfzfIGj9XLSMimBdAY7+WxotMe+rOgMXiWSj0HHdy+eOTT6Re
 CrM4QIZcGPFTcC8ADf8sU3ew/O5I5NqdG0xlCW7UpGB10cvyBAbxId0Ax
 LczPOoGF33Hg2yZ29A9aolqA17z/o0RqbCZKQK8pI3bQz8Qdikoj/dszk
 EV4syEpf2jQJ9txXNZUbNvhC2HFTufvWyenQXSmHHPe5YnCMYbcb1gNxh
 g2f9as7uV7twmAu+I+qtqKX5+p8sY3sjsUIaWqyojwO/x5MO5mYmVlNVg
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i8QSryZV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: Leon Romanovsky <leon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Mushayev,
 Nikolay" <nikolay.mushayev@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Efrati, Nir" <nir.efrati@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS8yLzIwMjMgMTk6MzgsIEtoYW5kZWx3YWwsIFJhamF0IHdyb3RlOgo+IEhpIFBhdWwsIFNh
c2hhCj4gVGhhbmtzIGZvciB0aGUgYWNrbm93bGVkZ2VtZW50IQo+IAo+IC0+IFdpbGwgYWRkIHRo
ZSBleGFtcGxlIGxvZ3MKPiAtPiBEZXZpY2U6IGh0dHBzOi8vd3d3LmhwLmNvbS91cy1lbi9tb25p
dG9ycy1hY2Nlc3Nvcmllcy9jb21wdXRlci1hY2Nlc3Nvcmllcy90aHVuZGVyYm9sdC1HNC1kb2Nr
Lmh0bWwKPiAtPiBjb3JyZWN0aWJsZSAtPiBjb3JyZWN0YWJsZQo+IC0+IEkgZ3Vlc3MgYWNjIHRv
IHRoZSBjb252ZW50aW9uLCBJIHN0aWxsIGhhdmUgdG8gdXNlICNpZmRlZiBmb3IgbXkgZnVuY3Rp
b24gc2luY2UgaXQKPiByZWZlcmVuY2VzIHZhcmlhYmxlcyB0aGF0IHdvbid0IGV4aXN0IGlmIHRo
ZSBjb25kaXRpb24gaXMgbm90IG1ldC4KPiBIb3dldmVyLCBJIGhhdmUgdXNlZCB0aGUgSVNfRU5B
QkxFRCBtYWNybyB0byBjYWxsIHRoZSBmdW5jdGlvbiBpbnNpZGUgaWdjX3Byb2JlKCkuCj4gSSBo
b3BlIHRoYXQncyBva2F5IQo+IAo+IC0+IE9uZSBsYXN0IHRoaW5nLCBJIHdhcyBhbHNvIHNrZXB0
aWNhbCBvbiB0aGUgbG9jYXRpb24gb2YgdGhpcyBmdW5jdGlvbiwgYnV0IHRoZW4gSSB3aXRuZXNz
ZWQKPiBuZXR4ZW5fbWFza19hZXJfY29ycmVjdGFibGUoKSBmdW5jdGlvbiBpbnNpZGUgbmV0L2V0
aGVybmV0L3Fsb2dpYy9uZXR4ZW4vbmV0eGVuX25pY19tYWluLmMsCj4gd2hpY2ggbWFza3MgdGhl
IGNvcnJlY3RhYmxlIGVycm9ycyBpbiBpdHMgUENJZSBkZXZpY2UuCj4gQWxzbywgSSBkb27igJl0
IHNlZSBhIENPTkZJR19QQ0lFQUVSIG1hY3JvIGVuYWJsZWQgZnVuY3Rpb24gaW4gcGNpL3F1aXJr
cy5jIQo+IEkgc3RpbGwgdGhpbmsgdG8ga2VlcCB0aGUgZnVuY3Rpb24gaW4gaWdjX21haW4uYywg
YnV0IEkgYW0gd2FpdGluZyBmb3IgeW91ciBqdWRnZW1lbnQuCj4gCj4gQE5lZnRpbiwgU2FzaGEs
IEkgYW5kIG15IHRlYW0gcHJlZmVyIG1hc2tpbmcgdGhlc2UgZXJyb3JzIHJhdGhlciB0aGFuIGRl
YnVnZ2luZyB0aGVtLgo+IEZpcnN0LCB0aGV5IGFyZSBjb3JyZWN0YWJsZSBhbmQgbm9uLWZhdGFs
LiBTZWNvbmQsIHRoZXNlIGVycm9ycyBhcmUgb2JzZXJ2ZWQgaW4gbWFueSBvZiB0aGUgZGV2aWNl
cyBJCj4gaGF2ZSB3b3JrZWQgd2l0aCAoaS5lLiwgcmVwbGF5IGVycm9ycykuIE1heWJlIHRoZXJl
IGlzIHNvbWV0aGluZyB1bml2ZXJzYWwgd2hpY2ggaGFzIHRvIGJlIGRvbmUgZm9yIHRoZQo+IHRo
dW5kZXJib2x0IGRvbWFpbiByZWdhcmRpbmcgdGhlc2Ugc3BlY2lmaWMgcmVwbGF5IGVycm9ycyBp
biB0aGUgbG9uZyB0ZXJtPwo+IEFueWhvdywgd2Ugd291bGQgbGlrZSB0byBtYXNrIHRoZXNlIGVy
cm9ycyBmb3Igbm93IHRvIGF2b2lkIGFueSBjb25mdXNpb25zIHdoZW4gZXRoZXJuZXQgZ2V0cwo+
IGNvbm5lY3RlZCB0byB0aGUgZG9jay4gSSBob3BlIHRoYXQgd2lsbCBiZSBva2F5PyBXYWl0aW5n
IGZvciB5b3VyIGp1ZGdlbWVudCA6KQpJIGRvIG5vdCB0aGluayB0aGlzIGFwcHJvYWNoIGlzIGFj
Y2VwdGFibGUgKG1hc2sgaW4gcHJvYmUpLiBEbyBub3QgbWFzayAKaXQgdmlhIC5jb25maWcuIEkg
c3VnZ2VzdCBleHBvcnRpbmcgcHJpdl9mbGFnIChnaXZlIHVzZXIgY29udHJvbDogCmVuYWJsZS9k
aXNhYmxlIHNwZWNpZmljIFBDSUFFUiBieSBmbGFnIHZpYSBldGh0b29sIGFuZCB1cG9uIHVzZXIg
CnJlc3BvbnNpYmlsaXR5LilTb21lIGV4YW1wbGUgb2YgcHJpdl9mbGFnIGV4cG9ydDogM2M5OGNi
ZjIyYTk2CkkgYWxzbyBub3Qgc3VyZSBxdWlyY2suYyBhcHByb2FjaCB2YWxpZCBmb3IgdGhpcyBj
YXNlLgo+IAo+IExldCBtZSBrbm93IG9uIGFueSBtb3JlIHF1ZXJpZXMgYW5kIGFueSBzdWdnZXN0
aW9ucyB1bnRpbCBJIHJvbGwgb3V0IHYyLgo+IAo+IFRoYW5rcwo+IFJhamF0Cj4gCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4u
bXBnLmRlPgo+IFNlbnQ6IFN1bmRheSwgSmFudWFyeSAxLCAyMDIzIDQ6MDIgUE0KPiBUbzogUmFq
YXQgS2hhbmRlbHdhbCA8cmFqYXQua2hhbmRlbHdhbEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEJy
YW5kZWJ1cmcsIEplc3NlIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IE5ndXllbiwgQW50
aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IGRhdmVtQGRhdmVtbG9mdC5uZXQ7
IGVkdW1hemV0QGdvb2dsZS5jb207IGt1YmFAa2VybmVsLm9yZzsgcGFiZW5pQHJlZGhhdC5jb207
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3Jn
OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBLaGFuZGVsd2FsLCBSYWphdCA8cmFqYXQu
a2hhbmRlbHdhbEBpbnRlbC5jb20+OyBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29t
PjsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQt
bGFuXSBbUEFUQ0hdIGlnYzogTWFzayByZXBsYXkgcm9sbG92ZXIvdGltZW91dCBlcnJvcnMgaW4g
STIyNV9MTVZQCj4gCj4gW0NjOiArQmpvcm4sICtsaW51eC1wY2ldCj4gCj4gCj4gRGVhciBSYWph
dCwKPiAKPiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guCj4gCj4gQW0gMjkuMTIuMjIgdW0g
MTM6MjYgc2NocmllYiBSYWphdCBLaGFuZGVsd2FsOgo+PiBUaGUgQ1BVIGxvZ3MgZ2V0IGZsb29k
ZWQgd2l0aCByZXBsYXkgcm9sbG92ZXIvdGltZW91dCBBRVIgZXJyb3JzIGluCj4+IHRoZSBzeXN0
ZW0gd2l0aCBpMjI1X2xtdnAgY29ubmVjdGVkLCB1c3VhbGx5IGluc2lkZSB0aHVuZGVyYm9sdCBk
ZXZpY2VzLgo+IAo+IFBsZWFzZSBhZGQgb25lIGV4YW1wbGUgbG9nIG1lc3NhZ2UgdG8gdGhlIGNv
bW1pdCBtZXNzYWdlLgo+IAo+PiBPbmUgb2YgdGhlIHByb21pbmVudCBUQlQ0IGRvY2tzIHdlIHVz
ZSBpcyBIUCBHNCBIb29rMiwgd2hpY2gKPj4gaW5jb3Jwb3JhdGVzCj4gCj4gSSBjb3VsZG7igJl0
IGZpbmQgdGhhdCBkZXZpY2UuIElzIHRoYXQgdGhlIGNvcnJlY3QgbmFtZT8KPiAKPj4gYW4gSW50
ZWwgRm94dmlsbGUgY2hpcHNldCwgd2hpY2ggdXNlcyB0aGUgaWdjIGRyaXZlci4KPiAKPiBQbGVh
c2UgYWRkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHMuCj4gCj4+IE9uIGNvbm5lY3Rp
bmcgZXRoZXJuZXQsIENQVSBsb2dzIGdldCBpbnVuZGF0ZWQgd2l0aCB0aGVzZSBlcnJvcnMuIFRo
ZQo+PiBwb2ludCBpcyB3ZSBzaG91bGRuJ3QgYmUgc3BhbW1pbmcgdGhlIGxvZ3Mgd2l0aCBzdWNo
IGNvcnJlY3RpYmxlCj4+IGVycm9ycyBhcyBpdAo+IAo+IGNvcnJlY3RhYmxlCj4gCj4+IGNvbmZ1
c2VzIG90aGVyIGtlcm5lbCBkZXZlbG9wZXJzIGxlc3MgZmFtaWxpYXIgd2l0aCBQQ0kgZXJyb3Jz
LAo+PiBzdXBwb3J0IHN0YWZmLCBhbmQgdXNlcnMgd2hvIGhhcHBlbiB0byBsb29rIGF0IHRoZSBs
b2dzLgo+IAo+IFBsZWFzZSByZWZlcmVuY2UgdGhlIGJ1ZyByZXBvcnRzIChidWcgdHJhY2tlciBh
bmQgbWFpbGluZyBsaXN0KSwgeW91IGtub3cgb2YsIHdoZXJlIHRoaXMgd2FzIHJlcG9ydGVkLgo+
IAo+PiBTaWduZWQtb2ZmLWJ5OiBSYWphdCBLaGFuZGVsd2FsIDxyYWphdC5raGFuZGVsd2FsQGxp
bnV4LmludGVsLmNvbT4KPj4gLS0tCj4+ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfbWFpbi5jIHwgMjggKysrKysrKysrKysrKysrKysrKysrLS0KPj4gICAgMSBmaWxlIGNo
YW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+PiBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4+IGluZGV4IGViZmYwZTA0MDQ1ZC4u
YTNhNmU4MDg2YzhkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX21haW4uYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdj
X21haW4uYwo+PiBAQCAtNjIwMSw2ICs2MjAxLDI2IEBAIHUzMiBpZ2NfcmQzMihzdHJ1Y3QgaWdj
X2h3ICpodywgdTMyIHJlZykKPj4gICAgCXJldHVybiB2YWx1ZTsKPj4gICAgfQo+PiAgICAKPj4g
KyNpZmRlZiBDT05GSUdfUENJRUFFUgo+PiArc3RhdGljIHZvaWQgaWdjX21hc2tfYWVyX3JlcGxh
eV9jb3JyZWN0aWJsZShzdHJ1Y3QgaWdjX2FkYXB0ZXIKPj4gKyphZGFwdGVyKQo+IAo+IGNvcnJl
Y3RhYmxlCj4gCj4+ICt7Cj4+ICsJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBhZGFwdGVyLT5wZGV2
Owo+PiArCXUzMiBhZXJfcG9zLCBjb3JyX21hc2s7Cj4gCj4gSW5zdGVhZCBvZiB1c2luZyB0aGUg
cHJlcHJvY2Vzc29yLCB1c2UgYSBub3JtYWwgQyBjb25kaXRpb25hbC4gRnJvbQo+IGBEb2N1bWVu
dGF0aW9uL3Byb2Nlc3MvY29kaW5nLXN0eWxlLnJzdGA6Cj4gCj4+IFdpdGhpbiBjb2RlLCB3aGVy
ZSBwb3NzaWJsZSwgdXNlIHRoZSBJU19FTkFCTEVEIG1hY3JvIHRvIGNvbnZlcnQgYQo+PiBLY29u
ZmlnIHN5bWJvbCBpbnRvIGEgQyBib29sZWFuIGV4cHJlc3Npb24sIGFuZCB1c2UgaXQgaW4gYSBu
b3JtYWwgQyBjb25kaXRpb25hbDoKPj4KPj4gLi4gY29kZS1ibG9jazo6IGMKPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIAo+PiAgICAgICAgICBpZiAoSVNfRU5BQkxFRChDT05GSUdfU09NRVRISU5HKSkgewo+
PiAgICAgICAgICAgICAgICAgIC4uLgo+PiAgICAgICAgICB9Cj4+Cj4+IFRoZSBjb21waWxlciB3
aWxsIGNvbnN0YW50LWZvbGQgdGhlIGNvbmRpdGlvbmFsIGF3YXksIGFuZCBpbmNsdWRlIG9yCj4+
IGV4Y2x1ZGUgdGhlIGJsb2NrIG9mIGNvZGUganVzdCBhcyB3aXRoIGFuICNpZmRlZiwgc28gdGhp
cyB3aWxsIG5vdCBhZGQKPj4gYW55IHJ1bnRpbWUgb3ZlcmhlYWQuICBIb3dldmVyLCB0aGlzIGFw
cHJvYWNoIHN0aWxsIGFsbG93cyB0aGUgQwo+PiBjb21waWxlciB0byBzZWUgdGhlIGNvZGUgaW5z
aWRlIHRoZSBibG9jaywgYW5kIGNoZWNrIGl0IGZvcgo+PiBjb3JyZWN0bmVzcyAoc3ludGF4LCB0
eXBlcywgc3ltYm9sIHJlZmVyZW5jZXMsIGV0YykuICBUaHVzLCB5b3Ugc3RpbGwKPj4gaGF2ZSB0
byB1c2UgYW4gI2lmZGVmIGlmIHRoZSBjb2RlIGluc2lkZSB0aGUgYmxvY2sgcmVmZXJlbmNlcyBz
eW1ib2xzIHRoYXQgd2lsbCBub3QgZXhpc3QgaWYgdGhlIGNvbmRpdGlvbiBpcyBub3QgbWV0Lgo+
IAo+IAo+PiArCj4+ICsJaWYgKHBkZXYtPmRldmljZSAhPSBJR0NfREVWX0lEX0kyMjVfTE1WUCkK
Pj4gKwkJcmV0dXJuOwo+PiArCj4+ICsJYWVyX3BvcyA9IHBjaV9maW5kX2V4dF9jYXBhYmlsaXR5
KHBkZXYsIFBDSV9FWFRfQ0FQX0lEX0VSUik7Cj4+ICsJaWYgKCFhZXJfcG9zKQo+PiArCQlyZXR1
cm47Cj4+ICsKPj4gKwlwY2lfcmVhZF9jb25maWdfZHdvcmQocGRldiwgYWVyX3BvcyArIFBDSV9F
UlJfQ09SX01BU0ssICZjb3JyX21hc2spOwo+PiArCj4+ICsJY29ycl9tYXNrIHw9IFBDSV9FUlJf
Q09SX1JFUF9ST0xMIHwgUENJX0VSUl9DT1JfUkVQX1RJTUVSOwo+PiArCXBjaV93cml0ZV9jb25m
aWdfZHdvcmQocGRldiwgYWVyX3BvcyArIFBDSV9FUlJfQ09SX01BU0ssIGNvcnJfbWFzayk7Cj4+
ICt9ICNlbmRpZgo+PiArCj4+ICAgIC8qKgo+PiAgICAgKiBpZ2NfcHJvYmUgLSBEZXZpY2UgSW5p
dGlhbGl6YXRpb24gUm91dGluZQo+PiAgICAgKiBAcGRldjogUENJIGRldmljZSBpbmZvcm1hdGlv
biBzdHJ1Y3QgQEAgLTYyMzYsOCArNjI1Niw2IEBAIHN0YXRpYwo+PiBpbnQgaWdjX3Byb2JlKHN0
cnVjdCBwY2lfZGV2ICpwZGV2LAo+PiAgICAJaWYgKGVycikKPj4gICAgCQlnb3RvIGVycl9wY2lf
cmVnOwo+PiAgICAKPj4gLQlwY2lfZW5hYmxlX3BjaWVfZXJyb3JfcmVwb3J0aW5nKHBkZXYpOwo+
PiAtCj4+ICAgIAllcnIgPSBwY2lfZW5hYmxlX3B0bShwZGV2LCBOVUxMKTsKPj4gICAgCWlmIChl
cnIgPCAwKQo+PiAgICAJCWRldl9pbmZvKCZwZGV2LT5kZXYsICJQQ0llIFBUTSBub3Qgc3VwcG9y
dGVkIGJ5IFBDSWUKPj4gYnVzL2NvbnRyb2xsZXJcbiIpOyBAQCAtNjI3Miw2ICs2MjkwLDEyIEBA
IHN0YXRpYyBpbnQgaWdjX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+PiAgICAJaWYgKCFh
ZGFwdGVyLT5pb19hZGRyKQo+PiAgICAJCWdvdG8gZXJyX2lvcmVtYXA7Cj4+ICAgIAo+PiArI2lm
ZGVmIENPTkZJR19QQ0lFQUVSCj4+ICsJaWdjX21hc2tfYWVyX3JlcGxheV9jb3JyZWN0aWJsZShh
ZGFwdGVyKTsKPj4gKyNlbmRpZgo+PiArCj4+ICsJcGNpX2VuYWJsZV9wY2llX2Vycm9yX3JlcG9y
dGluZyhwZGV2KTsKPj4gKwo+PiAgICAJLyogaHctPmh3X2FkZHIgY2FuIGJlIHplcm9lZCwgc28g
dXNlIGFkYXB0ZXItPmlvX2FkZHIgZm9yIHVubWFwICovCj4+ICAgIAlody0+aHdfYWRkciA9IGFk
YXB0ZXItPmlvX2FkZHI7Cj4+ICAgIAo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
