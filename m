Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC4957A98C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 23:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE62B40201;
	Tue, 19 Jul 2022 21:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE62B40201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658267965;
	bh=VmHSgqlz9Lhio3IbI57v7EcXDvOTrstAwOmBsgk3L7c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=25Pq3I/DF764nkRas8qPeeFcgz+U5/WnU8UdmSrjG1x4Y8BzqCHn0M6S45OG3T/L8
	 rcux4eQSMxboPVQ5mTu3+EdTMPHljOSAULPoacRGLhvwARagSQgcy4Mv+t86Zq1I/a
	 sJqY74qyM4D51Dp8nyTRzqjb7ui22hhs0ckLu844gPCWapDzvvLDDYMYZdMvCu5oI7
	 wwY4sJc0tHoNgt8NiR2Et1CpBK1NGfiN3U6qpcmLwXweyblK5wrjY2oQmxGutCPMV0
	 0N4orckGjZMDspzrZACyRLKGmnFISaKk6qR8ULsWjsph0THDh4HTQ1eM92UnxRv853
	 pIvVC0Hq25tuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GHf_9D6EXCHF; Tue, 19 Jul 2022 21:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2D0D400BB;
	Tue, 19 Jul 2022 21:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2D0D400BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51BD51BF228
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 21:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2929761044
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 21:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2929761044
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpDCWX2n55bb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 21:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CD6F61019
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4CD6F61019
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 21:59:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="273453927"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="273453927"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 14:59:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="630517938"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2022 14:59:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 14:59:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 14:59:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 14:59:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 14:59:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqckUPqPWqkITG73zxW1IAHjLQxO2pi4mLgOcB49vSLyAbc6a4/w0rTWixtkDFrHLFOAOiaKhxasMQCRrLitibJw7IkhFpSLYpRyZhjQ+C+QNQ+Eg9BCZD31gYbn2SVtGbKeVvOF/NViWdd71/0aKQpXlo/33Qo80EycdqmEyVM897olCJAaORku/oRH4xQIQRFsY23I7pQULam92v+xbd0thQV6nXLYFPVWS+5RfIiaK8IIuD2/NIuRH7NHIKDuVfxqm7zyjHnlFLJjtFpfF526ZnUOUpZBfLnlNgOavdTBZwTEBnEBOUoTKgokIAT64KHDF5nEhB2+r+1BeseAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q5iAxGOhBuyf7G0/mmDt1D4G5AfUSMAG/xxBoKnzJ84=;
 b=MQuG3uZ/xwRYqmOK7KH7TP+HxOxlgTd3fgUE3AfJpSQdheSrXL93QQwjcy+5GUD387BrWnbki98WG6unBzSwFiBluDL5G2o/Niyba6GO/sRdzPyfe0zj55sHByRtP2mA96LkDryJh9lwPYxL0If8SIjJKArqTkNqJuGah4j2JtGbmM5OvtzJgsLDMyCCNTj4QDIngEeeWmwyUqA/v79rIGNl+JMb3PvgPHItX6Zdz8e7iFmELCkFWkrH0suGZKUWFfRAOaXRwznNbw/ub+oslRp3XzMK+PQCFnrgwS/zympkxW2CXlQijfY9T+xI81e6nmj9EbjTp02YdNcL8yipQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN6PR11MB0004.namprd11.prod.outlook.com (2603:10b6:405:68::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Tue, 19 Jul
 2022 21:59:16 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 21:59:16 +0000
Message-ID: <05f1b24c-ccad-64db-adda-907a928b86dd@intel.com>
Date: Tue, 19 Jul 2022 14:59:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220718164244.261979-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: BYAPR01CA0037.prod.exchangelabs.com (2603:10b6:a03:94::14)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 143a8820-abab-470a-9459-08da69d1ec59
X-MS-TrafficTypeDiagnostic: BN6PR11MB0004:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tNsGOlHlZ+0/6spj81nbyNO8VxtUp7IkubaolMpgJWo8VR61bIfljW47ViYgRsDdMm0w9hw3U+g5x4o8iqvlwpYbkvMEjgEMuUXss549QgQPpCkziKxuUiooFDC3PEj1axHIBs5+OZa3yOUN99pExvGdPRWtMcPq+cYbfHY+DLprJEwuO+51zjSyesv0N5dQdJeSAf6sb9jW0RmdqnPQPQgPqy38r1sKtxOuArD+Ukh/2Hi8DWY2UZ+6I6LFvuLQ4cbliojmmUIH03IEvQXUCqqmhyz1ghMS5hwOKOngA+aemhlklVHyCplJ7N7e8JKTozqptGfcu96llGhV3DeB2VZxJ6fSYimFtxY9FZWVsWgBIzXwZ7SwZGTAH2KZW45o7S1nf4h1F46xcHEQ8wOn9H4jXOI3aahwZgkHBymTYAs8pmL1nDYOT8jbiXBFu5eJ7Ql+KFZjNmM1CYMslqtWcHe/gTwAVydlQ0qEKaup07yHXOE9/mOXneHszJiAOeTcXPkoiPXh3qUdOSzjk1A+79pFSd3k6TSMkXRoRtluMAPcts6sMyoOiGhrbar7NY154MYEOp/pb4TK+TihBdeUh8g1SdhN0SM3lqUNWdn1tltvBWvLO/wUhOq4385OsiB7x2QzVaFM/nqtt/MNiPEBm5vXf79Gxws0aMGqZl1Z2Y6bz7I5rb/Z2tXwjIuJC3VwIL4T+UZWTWLy+4DTKp33yF64BCYE3UJyeegLsPvau4+c690/p7LuEqoWu3VnB/Hl3PqGDa2aMarPOhRdy6LNw7r3rk8KZJnL5bsaEp3X6O/Oj45OHpbqBUVsJoYgqct5hhdw1P253cnY8drPV7/yQzH51rqmfbpUi77r3H4E7VHG16Q4f4OeVhO5QC7gF6y5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(346002)(376002)(136003)(396003)(8676002)(478600001)(26005)(2616005)(6512007)(316002)(36756003)(6506007)(8936002)(6486002)(5660300002)(53546011)(186003)(107886003)(31686004)(41300700001)(31696002)(86362001)(6666004)(38100700002)(2906002)(82960400001)(66476007)(4326008)(66556008)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDQ0dmVNNnNiUjQvQ1dNWXJDQk83eWsvT2V1MFA1KzVidkcwdHRKQlV0dDBX?=
 =?utf-8?B?UThoUE5sRTYwZEZ6aG1wUzJINkNKcFd1dlJwNS9rL1hqS1RoVTVrUVJXdEov?=
 =?utf-8?B?NGhCMHNDdGxkZmRyQTNDQlVBaUVUTkVOWGdKUEFRUitUNkUzaHBDYnFPSFN6?=
 =?utf-8?B?MVA3NUpxNjdwNjd6MU9WQmR4NjlKaUdtR0VONHhLZkp0RWw4NXpTanpoNFRn?=
 =?utf-8?B?bUIzbFJtT1pUNTNtTHZkajkxR2w5bzhKNTRLMnpvUjY5RDFoU09mVVBpdlUr?=
 =?utf-8?B?aW5KakxiU1Q2SG9PT3RLNzdPOTdJWE16MUlxRVo3R2VnU0pMM0NqTHE1MGdV?=
 =?utf-8?B?Yk1BRVEwMU9rZStQSy84dUw0amlMQlpDa3B3Qm1JZ1REdlRnQ0U5OGMxVDdv?=
 =?utf-8?B?RHlvajlEb1Y5VVhPWjVwRU1WMVVSa3o2YjhEQnVpemZvRjV6bU03Q0ltamN2?=
 =?utf-8?B?YnA4NmNKbGlKZXpvdU1FckExZHRzVGRhYU5nMzZHZFBPTHRUU0pManVKVXor?=
 =?utf-8?B?OFFCcmJVVlVvT2lVblVBL1dDRW1uNHhJU1NLWmRKQXU4c3RLK3EzVnlvenBW?=
 =?utf-8?B?NGMyYWs5WDlnNkprQUxDNFZHRWFQR2h4ZzBDTWZyR0lQUXNEL3pPNG5Da2h0?=
 =?utf-8?B?d2tpN2VCVVMzcWxUKy9HSlVTN3ZORTlzZDFHMEJxZ2JOUmpRTytyZXQ0MGNO?=
 =?utf-8?B?eE1CVzlNdGFKVjJTYmFTWDI3MXA2SGRTSE5FQ0N5bXprYTlrejY1OHV0QThC?=
 =?utf-8?B?cnQ1K1Buc3BXNHdoOXpzS1FkT0hSOTJLR0xvWTcxdHc4S3FzVGdabnhBVHpq?=
 =?utf-8?B?ZFJHMTlBbFZNWG5mbkt2QUVIanJCWi9xRTMzUXJhemJiaGRkM0xTTy8rN05O?=
 =?utf-8?B?QUtYTU52ZlYzWXdYb2tpVld6SmRKNzBYaWhpNy9CUDk0WkE1ZWwyQ3p0WUZJ?=
 =?utf-8?B?Y1IzTzAxMTNxalByTW1TUkJ3am5QMUtJWnhMb0lsT01tV0c5cWkzNmpOT1py?=
 =?utf-8?B?WVVSNVFxM0FUNGk0cjBIRmNlZFRHUWNtRlFzcXM1cDVnZFJEbEhURExQMG03?=
 =?utf-8?B?eDBhc1Z0NmJLK200MG5sS3VXOEwyMU9HMTQ5U29Oa0dqTTRMdHdQdUJEbG13?=
 =?utf-8?B?MHZWRjhTTUFMZ3I5K0svRThhNWFqUkV6TFVqeW5NUUtySjRET1BJTXpldXpi?=
 =?utf-8?B?Z1JyWkdmbFM0Wk5LYXdBZHJPa1Vhdktac3R4U09HV01HaXNLT01icENPb3dw?=
 =?utf-8?B?eWt2aEVXRWNXclNZZEsrWUZPUXQ5R1UwYXViWGFINnErcy91RGlielRZS3Z3?=
 =?utf-8?B?em9CRi9Ld29ZUi85NXJnVkJnL05GZ2hORUcvZytXZVlzejNFYVhFWm1rbktV?=
 =?utf-8?B?d2ZROGdhY3lFdCtmOFRHaTVtWHdOU3RXTktURW14VWVNN1grM0dJK1hoUmpV?=
 =?utf-8?B?R3R2TG5pRmVzZ2g2bXAwTzVOZnBhY2JZaE1XNTJ5b2tPeXN0RnRGaExUN1Bm?=
 =?utf-8?B?U29ZdXVkNlJTcUdOelJ2dFRVMldKdnJEL1lGSy91NEllSkJlSEZ1Wk5PTWhZ?=
 =?utf-8?B?ZktlNklLMS9VeUJzbkNlRkJ5bmRaWGtqcll3MzZGRzVwM2hoQVExZUhTNXIv?=
 =?utf-8?B?VnUwd3FEZ2x5OGkwSkIxN3M4ZE11NThyMjhhbEppUDcxYTFPYlBYcjJvVWg1?=
 =?utf-8?B?KzFmWGJ0VkZpTUZubmdsYmVzcUh6NkRKa28wVzBSNVpKM3c1UjJ4am5vQldu?=
 =?utf-8?B?WDdRZXNyRGRRUVFWc0dSNndQVE9Ka3JzM0NGQlVCbGhmU05xUkFvMHExV2NH?=
 =?utf-8?B?dFFncEtIN3IvWmdDd1haWXNuZUlsYkdrMWVZamZsV2w0Uk9ISGVuY2hwbXhy?=
 =?utf-8?B?bkxJMnNwWk1ud2QwUmt2TThPYVdxMjhBYTNZWmp2Nnp0dWZLZ2U4ekMxeDlN?=
 =?utf-8?B?ZzdzK0JhMjdGQVppenVJbk9kczZtcVVQMWhhb245ZlVvc0tkUGYyK3h1MXVa?=
 =?utf-8?B?WHB2Z2tTQXRDWGx6WHhka2xsYmJvSk5DaURiMmFMQUdqa3JubndBcUx6V0pw?=
 =?utf-8?B?SWdYNndyRm4wM09hWjZKN1RnSjA2YXo2QUM1Q0xYZXNva2cycVdyVmxZZVFm?=
 =?utf-8?B?YVFDdEpzcE8zc3MzazdGVC8yME9WbHAvWEFmTDhoTmdmV0F6TkJaS0pWVjZx?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 143a8820-abab-470a-9459-08da69d1ec59
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2022 21:59:16.2127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rajau+3VfrQ195YIqClSicz+xsqlcI9oreqYdTaRn8EN0fa5d5nsG8r5fb8Yx7j4F/Bcu6by+AcXBwtlgxFwnMYcZKMsWbZHhkkhU0ah7ys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658267959; x=1689803959;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iY2ZIdRDVgtcbVTPlCby54cLgN6nxPeTu4KdbVADZWA=;
 b=D1KTJHRs1Ocqc8NibqZpwb3w5MccDrlQ90ZQVPAZJxAvnN1dRQww0ns0
 ZBUn1pNg8FF9wgeDkReTwTyNtfvzeRTLAhyLTtuJB+s8YkwgmmPsBEB9U
 Jds6zZHBxDccXftye5ua7gvd0B4v99j3JmytzNJ9nXPk+PStVc4r2HCa0
 FIWNVGzvmug6S3Buf/j2uWUMDufVwn0w393PDmfQmFUn2bzY9Teq74CXB
 h+TVyilX6TLiTJJDSivmdfFg0ap2i/X4cGbhd6PSdjh67M6VBItNXvQQc
 BKSSvdKovSSd3RVo5lM4mGjCxUhXss1fK+yx4FRyTSB++21aLd+IOaRaS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D1KTJHRs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/2] ice: Fix VSIs unable to
 share unicast MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/18/2022 9:42 AM, Jedrzej Jagielski wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The driver currently does not allow two VSIs in the same PF domain
> to have the same unicast MAC address. This is incorrect in the sense
> that a policy decision is being made in the driver when it must be
> left to the user. This approach was causing issues when rebooting
> the system with VFs spawned not being able to change their MAC addresses.
> Such errors were present in dmesg:
> 
> [ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
> exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1
> 
> Fix that by removing this restriction. Doing this also allows
> us to remove some additional code that's checking if a unicast MAC
> filter already exists.
> 
> Rename ucast_shared to umac_shared, as "umac" is a more widely
> used shorthand for "unicast MAC".

Since this will be removed, lets not thrash the driver with this rename.

> Also add a helper function to set this flag. This helper is
> expected to be called by core drivers.

and the helper.

> Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
