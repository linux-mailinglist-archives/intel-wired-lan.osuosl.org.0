Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B12271F418
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 22:45:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F4C96158A;
	Thu,  1 Jun 2023 20:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F4C96158A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685652336;
	bh=i2hGt2WfT5A3f+2D3RrBSc24UNvry8sQzw7p2cF2LvM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XK30gMk8PDTBWterCcuz2vUJ0b4eHWX+Yo1XAiPBOSyKaWHIt8Tukg7Abi/s7qDp/
	 eCYKXCgg+RSRuLzuT6jANLCd0j1S/BxbrtB2l8n3TL1L0X+/2gTZviRdBbCnL5gNBs
	 yNdqDKDShc2t4kIwRRNt7uUXvpevnvD03PkiIqA7os2xo8pltY8XtBiZ+WqkU+uijl
	 8nQ4ACnaDiH5Ynth06lVuRkxu2S+mrs0kyMZoOb8e+rALAjbaWocpjUVnp5i3X1zj/
	 xmvZlpGTmA32D+ylbGkxgpFGt+UmjlWvpCccRDxoxdaej5sOX5HAD7zEJXbwaOP7tO
	 gyV1lfgN5DGGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DCr6TsjYIXED; Thu,  1 Jun 2023 20:45:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B84A161587;
	Thu,  1 Jun 2023 20:45:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B84A161587
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2BCE1BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 20:45:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 874D2843F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 20:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 874D2843F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmUXH1tAZ4NR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 20:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF054843D4
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF054843D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 20:45:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="335299153"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="335299153"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 13:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="1037643848"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="1037643848"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jun 2023 13:45:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 13:45:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 13:45:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 13:45:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNVrPqWZfHdNEZ3l3SSnGLedp5Z8fD38EPxDt1h8Mofh0tEGA//HXcJZdN4Gv6yuQhtTct2Owe5JxPl6B/m28hrOLLA4nvxyoOnqnP0fZaSbdGjJaFNdMYA8CUGCReV6V+HiPYz10CfoM8mkvkaOT/xPr/Vb5lYHQPJDp6fAjSJmqGNqklunxQxWlZt5jTQXp6MBeB4GNt4OqehAjpiBYC26hp5op0KH+UED+m4jONxP48q5Fs1mxLgmG5eesrPJ8dUn2aKM/CMlNa46gRZJ7XS1J+b/5e+YC351BU8yXNykWvTF0cJzFBv+GQ6PsXWHsyiuU8VBHD/97wNGhhTI/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OuAxD4eE082tuxlydgMMs/lndCS+KlozpEFmvM/vqS4=;
 b=lJ58Lj+nT1o301hd0BDHym7aYVBRf+8b4c/vXuqvbp0cxqWVzLLYdSklTDxxzUlB0SYp7TdIv6KZmnbEaikkrZFyToKiatGebku8pIV9HLr9QEQ7VNvRuHtYQW/hTB5I4IpAk39NpHTEyFOtJGgywoNrvvCwOrWPaidRQo8pqMy+ir8KIOdZBGvzOtBHfLFhgJQsWrlBkaaOgXgeDftxAov2ObExTRgC5/gbMZJA190a2GohliaCgM0nXWDWqbSl59yMi222Pmv7exviqBenXkIbo95BkW2EJ/yZLgAHT+tNSu9ncnKOAHmbnz29c23CI7sDhdqYVggEKap1jeoNoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB5928.namprd11.prod.outlook.com (2603:10b6:510:144::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.23; Thu, 1 Jun
 2023 20:45:14 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 20:45:14 +0000
Message-ID: <22e193f7-b55d-a31a-0179-4a53af692a89@intel.com>
Date: Thu, 1 Jun 2023 13:45:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Yuezhen Luan
 <eggcar.luan@gmail.com>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>
References: <20230601070058.2117-1-eggcar.luan@gmail.com>
 <CO1PR11MB5089465F5D37EBA62BB1A123D6499@CO1PR11MB5089.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CO1PR11MB5089465F5D37EBA62BB1A123D6499@CO1PR11MB5089.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR05CA0034.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::47) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB5928:EE_
X-MS-Office365-Filtering-Correlation-Id: 73d1a557-1971-47ea-e233-08db62e11976
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T+tWVIXwQgZPF7HO2NsYn/GI1M6UuMuhPqzMATJYXHD7g2Ab7SNmNiPMByy0CB0WrrR/utihvkCCJ/PvrEZ2R9nspBvuEhBW/bzmVpjfvaVG28VfXEYsaYu4oGLFVcDN/SnoFmtXiwU/d674FIjGz3WkhERLAbvIHusxIVLOzIxHGmsXp1hRG1qxNrkCrwByg3NZEJC+bQwd0GSYXXC3T/Wtow1RhGztVz0JQksaJ9rOqqj2rlRzubGSN1RYtRwYPsw33H4BnQ6BwGRm4ri/AGL6bVqlDQkmf0YG7K/ZxNQtK+1syeGQiMwafS8eC3X667jv03tr4GQcx03eQSWukoMTuBToqpL9g/fPOChjx2tWju8b8ixK9xzYiTkRdZtXOqlNOSjQXccu6Wm8Okm/PUeD9Qf5xg/uPLSlcnzr2uyKAzpZtR5+vyXgGr2mKEPaCaWGHV0Us4fJtccbZLsZ2+gvEqPSjrx0Euasg0AmEGlVRMdcRLeIis3xWPL74v6aus+luFg7GugoCJRPKVq17/FSafXfXVjrBRVsknu7JMFgzP+ixSwPFFWTEEcdmRQBWE92N4dHeEO9H/AJ+Gnhlg/DD+gNSsvXvcjTlP2IiSZPKywqysP1isNEYona6SRl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199021)(478600001)(54906003)(110136005)(8936002)(8676002)(5660300002)(2906002)(36756003)(86362001)(31696002)(4326008)(66556008)(66476007)(66946007)(316002)(82960400001)(38100700002)(41300700001)(966005)(31686004)(83380400001)(186003)(53546011)(26005)(6506007)(6512007)(2616005)(6486002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWlQZXZrVm5ZelNNaE83MVZFRkZLOXhMUTBNOHJwOVZTdktHU294d2dMOEhv?=
 =?utf-8?B?SWZWUjR6VXA2eUJMMUlZT2lLeW03Q0c5MXRLWUJ2OE85bXFXTVVqMHlwNUg4?=
 =?utf-8?B?VG9Mb0hPV05wYVl0VzUvMTNnbnU1c1B5TXBQR1V1anFEY3BtYWlVWE54V0xS?=
 =?utf-8?B?WURRSjlYamlybnBlNGNibTA2dWV5bFNUT25Gb0s3aWZDdEN0b0ZiMFNyem5X?=
 =?utf-8?B?TUlRNjJQbDZYeFhlbFF0ZnY0a3RpWWxmN2lsdHhMYUpTaWVsdC9uSGJSaHJY?=
 =?utf-8?B?OThrNHFyMGV6RlgrNWt5djdlcS8vUlRtK1BXYzExQ1Q4bG9xeGtWaDR1VkNF?=
 =?utf-8?B?d3FvVzBoUDNQSUxyY2xHTFBFcWdsZU9pMkNjVGdyaFFITy8yeVFZU3JQZHFp?=
 =?utf-8?B?djJqdmxBMGtCNFA5aVVSR3BPRk1RWm5Pbi9rWlJsY0NpOUVJcXpva29jbmpY?=
 =?utf-8?B?eVQwWENTUjl6RktUSEdEQUJkZjVsbXBKNG9jWDlzQ1E2elNFQ0pUUHo4eXRP?=
 =?utf-8?B?anVWOHc2S1NETmIvN254TG5LSEM2elpoNyt1TWlxVGNYbEJmUjRoVWRoZzMw?=
 =?utf-8?B?OHN1YWFRR1BiaWtCMU93S3RWTEllWVBSUFoyc3FYMU00YTVPYjJkSnF1ckNX?=
 =?utf-8?B?NnliZTZVeitmUWErNytqQVNmaFY3cXlhYldSdzFhWWF4QlgrUXV2b0s4bHJQ?=
 =?utf-8?B?Tk9YdTE1bGVzdUJnRytYQy9zLzBOUG5QbHpXRlNUQXBPbHNLaUJsTmZMSFo5?=
 =?utf-8?B?WTV3YkhRS3BvelhJRzVIS2dkdHdyaWRpOGRFeUFkNjA4TjlHYkRibm8wRjVl?=
 =?utf-8?B?TCt5WkpXcjRsclBMNktiUCtlNktPRlFKN0dPbExRZG5XdGJZYndqQ2ZHbmV4?=
 =?utf-8?B?OXVjWEo5azA0UGx5eVh1R3ljUG0xSzVKUG9sT1JEaHJSakRUeHlKN2ZPdHh1?=
 =?utf-8?B?aWgrMHpHMUd4b3lMSk10a3FneHV0VXFkTVJBRlVFQVF3b0JTR3dTaStuOG1i?=
 =?utf-8?B?Z2JQRDJBYTVja3Nkclc0S3lsRlR4ZU1sUThWbnA4MWxBRzdiMnk4YWtLVnds?=
 =?utf-8?B?eXc5NTdrSVozcmVQNnBkWktsTVJUY2ZwTlA1cEVUSnM2eGN0aUt3bWpqa25i?=
 =?utf-8?B?MTg5TUpQakVaTE04bTI4M3VwcmMvSFczTHRNcFRFUFdJZjZOK2VPRkJPUlR5?=
 =?utf-8?B?b3pDZWdNdHV6L2hlNis0ZnZVWlNIMjNLOVFZSXFTdzlnY05qYnZrTmtvcm8v?=
 =?utf-8?B?aVI4L1lwTWhXdHJvbmx6b0R6bWZzN1g4ODJkMkQySFh2bFQxS0NUbWdQZWYx?=
 =?utf-8?B?RmQ4UlVtYVhJeExsRkJ3V25GblZvcnh4aUdCQ3VmNk1vVlZyNnEyajRZUXJp?=
 =?utf-8?B?SXJXR3hyS1l3U3J3YlVjNXN5b1oxTDFTdGs4bmdrNnYvdW92TnltQlJhakFM?=
 =?utf-8?B?NWlpb0EzbXlZZDEvL1paRWM0TEtmYitLWXZDQlJNSDQvb3JKdmFJZVpBaUpH?=
 =?utf-8?B?d1FhZkp2UFprd3c2TVZmc1FQc3FxWlM3NDZDQklGVTdKb2grNURxZUlQVmly?=
 =?utf-8?B?VDE0bDZuL08rNGxFMzlxMVppMlJrZWFISGI5SVhqYnRLbFdaM2x3M1A2VmVK?=
 =?utf-8?B?SEd2M3BLVStnc1d5aUlrMHBCVlJ2ME9Jc3UrSG5wR20xN21oMUVuWWY3Z2RH?=
 =?utf-8?B?T3hPSEttcVdYQ3hYYkdZbjdOVkQvZ3NKVXljWk1XTE9YYkRpKzhwL0EwUWhB?=
 =?utf-8?B?cjJlZEpFbndwTnhSYUYraTlza0diZXdIME1QdkZ1bkt1UkFHM1Fjc2RmYmxS?=
 =?utf-8?B?Yk5UN1VFVWRLRFFVaWVWZUgyOFpJZk5VVEkyWnRuNXRLb1lkSjlQemxHaTdQ?=
 =?utf-8?B?WXBWcXROWThERWhtQUE0Z1ZlRXVxY1dEZGZkQWltVlNjdXJQVFpodDJqN3Vw?=
 =?utf-8?B?cXBwSmFNOVBHOVZMMFZJaFRkZXoxNUdkcnJNVXVBUU5KcUVmZDhkdHRsWWoy?=
 =?utf-8?B?TG45UFBTbEs3Y0VPNkFNbU1ObmR4dnBoR1N4OGtkODVDTjNabStaS3k2ZGhk?=
 =?utf-8?B?SEJGQWpVT0Vna2pKZXRXdHZDb29UWkRTdHVQM1RPRWp5dTh3eGpTUzVUY2Vv?=
 =?utf-8?B?RExyWDgrU05sTWdSRTkyRjJzVmIyK0s0STNISTR4UmRpVHEvWkQ3cnFQZWc4?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73d1a557-1971-47ea-e233-08db62e11976
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 20:45:14.0621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +fHYBWT1u84bB3Bx6s5KC342uQae6/5rxHMDzCPAozLW6MljW6Tq7n1Rdi3/iXa8d0o8IijiohtAAfmKauGgirt/Qs/87fK7gQDcphWiJxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5928
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685652325; x=1717188325;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ikxfwc6kbRo3Jdg+Af9uzVPBVVxs7eNM2NtkMksiZDY=;
 b=IwOTfAhN0OJof6defIBt1ii3TZ0fJGQZT7wxmA9XYFo3a8CRqgnTYbyu
 Uq/578566pYQmXAwDTx3sQhfEB7a70xOTD919Ex8ZjF2Iuz3BuBMhGwRA
 mqerhTCh5OZz0+QggHKX2mpMJXtM16NpdgIkc93Q36txGDtQUAbpMg0Z9
 Hq5+RnOYEgwDXTzuZs6sDQ3pkZzlJqeWYE5scEjk/rJRCed+Jun6Cfoh+
 SPqhzCqCpg4OXtlURWyvRugP/7ffORD3f+LoyF0l2J+sNEARLDEzRnsw6
 /C+FA8rJq//Wi6ilzud2A7fAC+qDXT4UXvOja4eLCr5VjAOKAIZ9y5EGW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IwOTfAhN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix extts capture value
 format for 82580/i354/i350
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/1/2023 10:05 AM, Keller, Jacob E wrote:
> 
> 
>> -----Original Message-----
>> From: Yuezhen Luan <eggcar.luan@gmail.com>
>> Sent: Thursday, June 1, 2023 12:01 AM
>> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
>> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; Yuezhen
>> Luan <eggcar.luan@gmail.com>
>> Subject: [PATCH v2] igb: Fix extts capture value format for 82580/i354/i350
>>
>> 82580/i354/i350 features circle-counter-like timestamp registers
>> that are different with newer i210. The EXTTS capture value in
>> AUXTSMPx should be converted from raw circle counter value to
>> timestamp value in resolution of 1 nanosec by the driver.
>>
>> This issue can be reproduced on i350 nics, connecting an 1PPS
>> signal to a SDP pin, and run 'ts2phc' command to read external
>> 1PPS timestamp value. On i210 this works fine, but on i350 the
>> extts is not correctly converted.
>>
>> The i350/i354/82580's SYSTIM and other timestamp registers are
>> 40bit counters, presenting time range of 2^40 ns, that means these
>> registers overflows every about 1099s. This causes all these regs
>> can't be used directly in contrast to the newer i210/i211s.
>>
>> The igb driver needs to convert these raw register values to
>> valid time stamp format by using kernel timecounter apis for i350s
>> families. Here the igb_extts() just forgot to do the convert.
>>
>> Signed-off-by: Yuezhen Luan <eggcar.luan@gmail.com>
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>	

Thanks for reviewing Jake.

> Thanks for fixing this!
> 
> @Nguyen, Anthony L
> I think this is a worthy net fix.

Hi Yuezhen,

Could you include a Fixes: so that we can route this through net.

You should also add a target tree for your patch (net or net-next).
Here's some useful intro information for netdev [1].

Thanks,
Tony

[1] 
https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#netdev-faq 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
