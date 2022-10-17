Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D776019A0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 22:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCC85400DD;
	Mon, 17 Oct 2022 20:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCC85400DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666038406;
	bh=kjyWPR68FP0Q+K4FlnPHf4Nl0wryChTiu42aWoSLFdw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W7YxKm8pxLNtsivQmtb0aifemrKTzsLyJUf+6tLinv6ghZbG7jSoW7GKsSvh1VNAn
	 KxkqOXQeHUisfLdD8O3Qy+atdXtBJDhOzguBYHZjDTQcsRkEDQGnTF2OzlJjpNgRuy
	 2996IPI+xc5B4zA8sgQTTKGuNoJGz91BXFecEelpwh2Wvtx8H5UzLTTOa3UcZKmkLD
	 4y7CK4xIEuPOGO0yWNWWaeI7ZaSNdl6kGyNwbOIpPe5wJWTxEtEt9vKHlyY3LuDGsU
	 RkYz41gOkziokXUNu2ksKYdnry6nP88O8YD8AZcEY5624pct8KesoXTrbeFM6elFyp
	 JqefeoNRcmumg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rddX0sm_hWpN; Mon, 17 Oct 2022 20:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9088B400E4;
	Mon, 17 Oct 2022 20:26:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9088B400E4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B26AB1BF313
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 20:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98C07400E4
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 20:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98C07400E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Py2JBXjWX9Xk for <intel-wired-lan@osuosl.org>;
 Mon, 17 Oct 2022 20:26:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B677400DD
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B677400DD
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 20:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="286302703"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="286302703"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 13:26:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="873607389"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="873607389"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2022 13:26:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 13:26:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 13:26:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 13:26:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 13:26:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YQPXWKhoHgkyoGYKyrK0Zw9IQRNCS+u05th6DMeWLifpfgGr0RSM9ClV6xaKfDvxx1xxzwUuQMnJ0zHzS6Wafo0ciyfGqbijbOv08v9gErRTOJ3/xWC0sGPxA92RtoAlamW446QUm7XyZg6u9TxKX+VRBy7tEtTMLMd8WtNLwRDMHLcaGjcGkH2pXANqTPpF2RKlOTApG2h5lqV186/8ZyUXLyjmWLmplA+ZLZ/q1j93wudzcX0unFoAo57ujwWuGcY7npOcswU9670/qSjq7EpfcpbGzWNMOY8vAp1iyLjQ0fGP5Je+qACzeIWaa/uMHHs9iZ2n0vvZOXHvb1C+3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LtsHd/rH1HuiHFFq8Hl21ozssGmV2gO3ZfXDxji4I08=;
 b=b33IzEsdGbNWJc6CTxTRM3OW4Qmw/QTr3rgHj46OEzLlwsWUj1KX9zOerS8XKTCVBMRVMldtYT6HBpkOKRrwTQr67qOiAfbh8pN6KUmYK9XvzfwoMGyeEt54UcwzHlsMxAGAr1Ah2fgFvmQd7Qix9L2Ab0AkWxtToayINaQ5DTzhqzBZ6OP/IVV/pERk9bHLxMiTKHWdwSavCGjE+s3Sl5wlk7txKjkCKXO0/IPibINpznA4GYCxhq8DEly2o/tB9xpplS4mtbSrSjcTpr/DtKAtW0vu9VmAOL0Cu9+InJbUtAIoJxLi+pa6viAY9cW9+22jW1gWL9sAK+7Q6Ugv6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Mon, 17 Oct
 2022 20:26:35 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8%8]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 20:26:35 +0000
Message-ID: <a8acb463-5061-72c8-6322-ecb46d77deff@intel.com>
Date: Mon, 17 Oct 2022 13:26:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221014100232.410542-1-mateusz.palczewski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221014100232.410542-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0291.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::26) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|LV2PR11MB5999:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c44f35b-1925-4938-278f-08dab07de2e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SOuu/jotChVvYli0qt6z3NI/THO9Ps54/K10kdisaYgL3oFK+qhi620Bsn7XAiCZcRBSeAxOAR38WNIk/GIxlfL6im34XBNJFlFXizyHkz4xHlCTXxFPCEJ48Dh5s665siTkvGotG3rcIvgtcT5ZDDgXhwAIA1/jd18UD+JxrfFPAgWZcLxOI7oLoMuwVlSedPLzFU0aoBjwMkfsa5C4v9uoQjJKyBVbfVbbnePVx8TasxRJb87RFV47Je64536wyg19cHhsXSKcYARF0ijaT3OEXqPiKdwWpSkwGaJLFhiTNcwwKpratlamYsuCxzZ9W4cvRYvvxn6GAR9gDGzuTHEtPBLm8ZDZw/twVjsO61I8vo4JCKpI5vQmJewArGCeeU98Q3s2PCOCrItzjfaXCxoT2Fuw1aHiDM9rTnu/oRbK0ltjodpnZmryVU1RmGpNUIbvZPevfymPmqKaSxci5rAUFBauCQjxdOLGvP2gA7gN2agDNdxSV+jK3RDaMs856xIxe0UeuSl0T6ubWoOs1ZR4T+S/PPt7sWgdBAWV0CXE3g+3mI2/HP0Uv5MlZBfs2/tUgQgIUwyi9X909LgkIZQxmNv3iOLNEq/0Xvyur6ZQBI5Xeb7qpnnANrZcWaxvMAcQ3KrDgpQo1fcE1oMuhM/XFCWDL3X1fYWMcfafy33bU3UymCLdW+S/wlAgIuAgmzXkkT7zbmFL+evS5jJ50nPsRcBqK82ZoGB9Z6NbfPxDfesVAXg08fLDneHytrn2HC4ES4nPmMPq84Mgmpxc+uzzccr5Ciynl7btzWHol4c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(376002)(39860400002)(346002)(451199015)(316002)(31686004)(6916009)(8676002)(66946007)(66556008)(66476007)(6486002)(478600001)(15650500001)(5660300002)(2616005)(41300700001)(53546011)(6506007)(2906002)(6512007)(186003)(26005)(8936002)(36756003)(83380400001)(82960400001)(31696002)(86362001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUg1V0VrUm1LSHMxMEtGdHRZK1ppNHJVN3FzKy9hVFFWQUp5R1VsWnhuTG9m?=
 =?utf-8?B?Wm1DOWJENStXeStSRENHQy9PM3EreDJDTWJyRHFoY1o0bXBRcUk0bk84cmlV?=
 =?utf-8?B?MldGeDluOG8xa3NiWis3Y0xycDVhQy96c2tWcnBLSVM3TjBPSnYzYy91SGZ4?=
 =?utf-8?B?WHZMdDVZTEdtQjR4YTJDTXJpbEh5OUNXRGJMTjRCSXJzQjhiY2UvVXVGQkFU?=
 =?utf-8?B?aFF4Zld6b280RDBvU3c2L0hoQlRLeGIrOFhjQVF6d2FtRHhPSEpoM0dPTGR5?=
 =?utf-8?B?RUJibDRaRG1mYXhqZWlBQUxiWS80R05kU2tFK3BGeENjeVVBaVZITzU1Wncz?=
 =?utf-8?B?SElBWmh0TTd6N212d3gwUzJpUmpZSXAxbG9qS2RObVBtR1BmNFNTL3AwTU5M?=
 =?utf-8?B?b0lPWUxuaHVGa0Zad2RYYm40Y1dCVmJ4MmdMNGVaVjU1UkVQZXJBc3VidStj?=
 =?utf-8?B?N202bkhVaXdjK3BtcGZuQ3M0cjFwelVDMWZUdThhRytkOHJpN2k2Q1ZzRjJL?=
 =?utf-8?B?QzJld3A3ay92REFob2hWU1lpZjRPdmVReTJyazdnK21Ec0QxZXNtSDlPZDhw?=
 =?utf-8?B?R1ViNUZKNENRTEhteGhCYkhnSnRmMTAzY291RnlEdWZXWDR2RzlCNGtpa2xV?=
 =?utf-8?B?UGJnNXlHNTVLR0N3bmZrRkJ6RE1aS25IeUgxZnZCdWxQN3hCam54dWxoTEcv?=
 =?utf-8?B?TUdyblRTLzE0bFUzdC9aVVBGdnZVVklGbVgvZXo5QmhpSm9rVzlwM01aY0Vl?=
 =?utf-8?B?OHJGa2tMek1Wck5HbUF3Q3VGUTJvNFdEOVFLOVJZTXgrRTkrSmhJN21tWUpl?=
 =?utf-8?B?TGl0bGlVWTR3eFIrRHJ4SGZYaStFbTJNMnIyK21ZclYrVjVFOUJMTktzWXBk?=
 =?utf-8?B?SWNoa2crUnVVMnBVQlhuMUYrbExUUmUyTkFaUEpGRjVsUmFsbmUwQTlqMUxL?=
 =?utf-8?B?eHhSQXpEZFZXVFZXQmg5UWpETzNvNVIrVmFKTExSK2lLOFFSUmx5QzZCdHI5?=
 =?utf-8?B?bWdoazVMSC93SWFjVVNxdmJSRXFCalZXY1dwQnA5enh3K1JMTlhnVGg2OEFr?=
 =?utf-8?B?ckNnd2ROSTNVaTBMaVI3aFNFRjloL014STdJdEVZWmgvSmJMVGpPSXJQTlp0?=
 =?utf-8?B?a1gwN1I2djJEdUpsR0lmZWVqZkpZV0hHYmIyMWxUQnR1SGh5WnhkVFN0c2Ny?=
 =?utf-8?B?djNzdUdRbEp3akR3SVc1L0czNHlnNkp0L1dhTURVbnRnT3VCMU01SnZvNWFl?=
 =?utf-8?B?aHBpRGM0UnZrVDV1OW1SNFlzMFVMYkNxOUF4SS81bGpTY05MQzRWS0RYanNF?=
 =?utf-8?B?UlRQQzFwUi8rT2FjSnlkVWtkU09TbmtqOW9ZcDlad0VvUXlEWXllSzF3enRZ?=
 =?utf-8?B?V2pMdStUd3FSRTNXSVovRUtkS1FYOW9pSUQzTE5pMlZic05KZ2syWlFSRzlM?=
 =?utf-8?B?dk0yWkRiaWtnL1k2OE95Q1c3dXd5dnNmcGN2WVNpTkE1WUFRaUVwOVc5b2ha?=
 =?utf-8?B?M1hjb2hLWnJjQmNkeU4rOE14cENaaGtzSnc2VEdtS2gwUUkvV3BLVjZXMzRj?=
 =?utf-8?B?TkI4cEo0M3R2blhwVXBza0ZCekdnNDZGeS9PbzVHbFpXak9sTlFpMTJUUG9x?=
 =?utf-8?B?Q0t2RmpQRmd0aWgxN2YwOUttalo3VDRuQjY3U3ZaZ1h3SmViTmdHd3FEUVly?=
 =?utf-8?B?TTN1TElUNnNHdkkxeHJCVkprUms5VHBKUEZzWW4wRDQ2cnF5SGU0aVhnVWF2?=
 =?utf-8?B?ekxPQ3N0Uk5qd3Z1cE1DM1djUUdINmZPMG4zN25lbU5mUnlYK0p5V1lIZTBS?=
 =?utf-8?B?djBGU1RCNW52UVltYWhXSVBhVzdEbU5RbjR3K0JHekxyWVZuRlBtNzN5STVt?=
 =?utf-8?B?YWtkZ2piRVM5a2lnRlBiUDlmM1VkVVZ4YWZoT3Vpb01jZm5rbjhqWVRpcWRZ?=
 =?utf-8?B?aWo0bFVER1VtcHlzZUkvZGJjdUZVR1gwbnUydDFEeFhkbTFtQlZpM3JuVFJV?=
 =?utf-8?B?WGdZekZjUzVBcFUvc0ZHcVBwU1FFS29pc0c4SE4rMHZiQjE1YzJORzFoNjBh?=
 =?utf-8?B?WXBLSlhHK1A2ZzN1SDYyNDd4Q0NBZ0hsZjg0TjRsbHBmWnMyQ2lXMzFURUVi?=
 =?utf-8?B?Mm94NTU4RGQ4ZFlMSzZsYzRGZ2g0MUJRUncxaXpNc3crQk1DRFhZOWlKcTli?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c44f35b-1925-4938-278f-08dab07de2e5
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 20:26:35.1353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ffnfuWQ/zMJcsVc22KEjubNn4RkHHU/x154dyQUN353jHKGeAP1bVwlxEl9o72CL8rIvlVFo2G0aerbDFEybFZIKPiuA6K3tKqUHWkPuAkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666038398; x=1697574398;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xdzHhF1MWH0VL8V4ckVxrGwpXsD6alcZi21fYCUwm7A=;
 b=YyIDulVjh9gpRPLyCGgJImqXAjmbbZ+1ga1ZysszdyU5Sy11aOVp6PaS
 wwRX8onFdfBdyoQNUz/2pnjYzYqCCHrkGkw5/Cl2s5xt/D3z4NGRVhNG/
 btyCzLf42K10FEusND59ziBWLntR2Qo1PFqXasKynaEN3AVOFZXmkCOur
 k6LyBfMdkJz7lgAW4hoMPztF83W4ymcFdB89Ya4n0hligO4dBUwQScOb9
 4c0NmLUpJUlPtXLNoo3YrAh4vAdgi2HAXc6WIB35pmUk8+nI7+glswxjF
 AAvXxUk0srWAhdiIQve9cM6+Nh0kmzrMIzJKroRr359bQwZtHY4JJoPzm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YyIDulVj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix xdp_redirect logs
 error message when testing with MTU=1500
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/14/2022 3:02 AM, Mateusz Palczewski wrote:
> From: Bartosz Staszewski <bartoszx.staszewski@intel.com>
> 
> The driver is currently logging an error message "MTU too large to enable XDP"
> when trying to enable XDP on totally normal MTU.
> 
> This was caused by whenever the  interface was down, function
> i40e_xdp was passing vsi->rx_buf_len field to i40e_xdp_setup()
> which was equal 0. i40e_open() then  calls i40e_vsi_configure_rx()
> which configures that field, but that only happens when interface is up.
> When it is down, i40e_open() is not being called, thusvsi->rx_buf_len
> which causes the bug is not set.
> 
> Solution for this is calculate buffer length in newly created
> function - i40e_calculate_vsi_rx_buf_len() that return actual buffer
> length. Buffer length is being calculated based on the same rules applied
> previously in i40e_vsi_configure_rx() function.
> 
> Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
> Signed-off-by: Bartosz Staszewski <bartoszx.staszewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 42 +++++++++++++++------
>  1 file changed, 30 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b5dcd15ced36..2fec0cff282c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -3693,6 +3693,30 @@ static int i40e_vsi_configure_tx(struct i40e_vsi *vsi)
>  	return err;
>  }
>  
> +/**
> + * i40e_calculate_vsi_rx_buf_len - Calculates buffer length
> + *
> + * @vsi: VSI to calculate rx_buf_len from
> + */
> +static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
> +{
> +	u16 ret;
> +
> +	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
> +		ret = I40E_RXBUFFER_2048;
> +#if (PAGE_SIZE < 8192)
> +	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
> +		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {

This has a checkpatch error here because of the unnecessary parenthesis.

I can fix this up locally when applying the patch to net-queue.

Thanks,
Jake

> +		ret = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
> +#endif
> +	} else {
> +		ret = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
> +					   I40E_RXBUFFER_2048;
> +	}
> +
> +	return ret;
> +}
> +
>  /**
>   * i40e_vsi_configure_rx - Configure the VSI for Rx
>   * @vsi: the VSI being configured
> @@ -3704,20 +3728,14 @@ static int i40e_vsi_configure_rx(struct i40e_vsi *vsi)
>  	int err = 0;
>  	u16 i;
>  
> -	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
> -		vsi->max_frame = I40E_MAX_RXBUFFER;
> -		vsi->rx_buf_len = I40E_RXBUFFER_2048;
> +	vsi->max_frame = I40E_MAX_RXBUFFER;
> +	vsi->rx_buf_len = i40e_calculate_vsi_rx_buf_len(vsi);
> +
>  #if (PAGE_SIZE < 8192)
> -	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
> -		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> +	if (vsi->netdev && !I40E_2K_TOO_SMALL_WITH_PADDING &&
> +	    (vsi->netdev->mtu <= ETH_DATA_LEN))
>  		vsi->max_frame = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
> -		vsi->rx_buf_len = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
>  #endif
> -	} else {
> -		vsi->max_frame = I40E_MAX_RXBUFFER;
> -		vsi->rx_buf_len = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
> -						       I40E_RXBUFFER_2048;
> -	}
>  
>  	/* set up individual rings */
>  	for (i = 0; i < vsi->num_queue_pairs && !err; i++)
> @@ -13265,7 +13283,7 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>  	int i;
>  
>  	/* Don't allow frames that span over multiple buffers */
> -	if (frame_size > vsi->rx_buf_len) {
> +	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
>  		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
>  		return -EINVAL;
>  	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
