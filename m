Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 224A65BF897
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 10:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A68760FF8;
	Wed, 21 Sep 2022 08:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A68760FF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663747571;
	bh=feArgrruavgONelKTSwv7fHaBrF/ERuc4573mhku+K8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jfZsIS+HHEpenmb9I5r8gJj3yOceI8XtUgNfEWSBzZu+im1YL0eXnh0yjqXuSdGxC
	 UZJmU92FzDl6MEdRX+zFl/0xOUAAS/fFhVUNtsm3QzJkldY3Jp/A5BPHFxJYnoSLT7
	 J8OHHnxwluob2ecmVfofOlALu2KRQMOzM49oAUNbBd8fCB8CVzkWHNrUCMHMomeciI
	 UFkxgH8igvIJmQgZV1s0Ane8mV14YznP2HAzP2HIwCbvGVfEeS269z+CFgXSESg+91
	 ZkwEVUH8WUW7CKunNfrWMD+QYKSVPBuUAHe8jpF/BmURBCEkinRxcdwSu/I4S13o7/
	 RUoAiGgMFkbTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id toBoWjYjiJ9y; Wed, 21 Sep 2022 08:06:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1396661002;
	Wed, 21 Sep 2022 08:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1396661002
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEAFF1BF3AE
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 08:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D35B84018C
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 08:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D35B84018C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PByPPn-UIOmw for <intel-wired-lan@osuosl.org>;
 Wed, 21 Sep 2022 08:06:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EBEC40187
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EBEC40187
 for <intel-wired-lan@osuosl.org>; Wed, 21 Sep 2022 08:06:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="386220583"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="386220583"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 01:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="681668983"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 21 Sep 2022 01:06:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 01:06:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 01:06:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 01:06:02 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 01:06:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/Pq2eXuDZ87unTZdR0pF1BQkSF1Pg9FCoV/YGECnlzfHdgDNGLl4BQxDHVCpPGBLWOQBzvTDAAEW7lnzU2tiNcrefL+NVKNAJVC+6xU5wSVg/Ggu+MyIWsz2N/ojey+pCThH+PXLBudHQe0oREm7BWcn45Ipq2nV8WtcYvyXmokujhJyMUeKjtUWp2O/jmSC9eAEvhZHGIKuKEwGcHn6dR5F254WFeaDJYYqZQ9U0YO3u4qjMa0RqePZN0WCIKjKoCgQAb/Q20G+94NYbYfbLbX6K7lDw5QnOiAc40SRWhku1k9NKBFvs2quDsJ1PnTLgzdeld2cB8LRpU9QyzmoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lzoWpmVBz9uVHs/46U3nh771ShANcDo1wmz0/C3JP+A=;
 b=d1VCocZSVYPT2dQuPH/m0aNolNHagGfcotmZWaQXVHCj75lUHGfm5wndgcgOJr8b9ctemAMWKpWjEdlzwYvPFVsQDHTef7GmjHG6nnCoZIuA2lu3k45cFNmq92Bm676BD7X2EhOGpFe17Y+exoGm5Q4GDg7spC1krHQAjas1lRI0DGNTKPxZh7JquRZWP055n2/GlklY5ceAmvBuCfHg4l0GqgJku3FBbthEhjuItkhND9gD8wvQMtbqxWCFGPbe4VU7aTYcloVwweayNXYnai51g2fQV/wjTtm8XdKhpsYhJOi9sN8888G6ZyBbd4vMrd5972XszpbqNK6085GWpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by MN0PR11MB6207.namprd11.prod.outlook.com (2603:10b6:208:3c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.17; Wed, 21 Sep
 2022 08:06:00 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::6956:55cb:1f16:adcd%11]) with mapi id 15.20.5654.016; Wed, 21 Sep
 2022 08:06:00 +0000
Message-ID: <7c487555-20bd-929d-e887-35cca5b7cf97@intel.com>
Date: Wed, 21 Sep 2022 11:05:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20220921024940.2128-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: LO6P123CA0032.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2fe::7) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|MN0PR11MB6207:EE_
X-MS-Office365-Filtering-Correlation-Id: 877686ba-38e2-466c-5956-08da9ba81ed1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jUEHmsFWrqnMVFBwlOCANBPWDYq5iR8GO3bAYYYHlzw1eGQtUTDU6ihsWwPKBl5EemGX2PXFL2z07OXC5rOUjcSYz4+4FPFoGiVPDAjvCHEh96bGEMY/EKfnPG3723Q+43TIhXmPFHLdRAVFCfJacHodXnAChFr5YSh9wn8fhDrG0a/fBqHGBnYLaVkmjJ4kZgbW7iDECA2839GowMFPId4EIBe+obr+uwNB1nccLv8+1XYgRwgfhuvp8lhIDwJ7VDN+LVIHYIWMV3PhY3FXbFBEs38dfeAuBOuTmaKUs6m/y3oooqeJOqEjHOcY2CZCCQwk2QceHFFBtOoO80UzZUlPCeGRRe0tXUtg7cqWJiFL0LpVrIbXRVy+kq27UtAr6UinilfC1DaF2dQMX21V7O0JZ752sx6Metx9FY6Tdeh+tZjq2e1RzkJ4Bvcx83anmDTdcYcT4DpbWKIUwrfsgfrupgF5q3y3HWZ/KT5VusuxruCIOz02CcJ3DwsdBiuZhfsBwm83YDohGXd3DmUmpCxoPfCBgd+iV5buKVGz1icAIWFKR2pWLcxpI/OfXLruVapiLcdHs7dABrXgt5SkrBsDglPk1YXEZ6uFDI1r9CGzvBk8rBm0Bb1C+J0AfCiSRilfNyItzJ7G900lPs1ib9Fj+4d86t2RNp9EY1Ez/uH4Le6NPTeeuFyP39CTckzyXvrIvzJJtivf527yumLxR7nlOf8Na175ZHiRiQR+25czCz8oqN2C5ZqMPqXZ9ugVLFL0JPUV5/MIwhd6eF3ya5pvA1rlLt/ODByyKd2kkiw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199015)(6666004)(6486002)(8676002)(53546011)(66476007)(31696002)(8936002)(186003)(478600001)(41300700001)(66556008)(36756003)(6916009)(6506007)(66946007)(2906002)(316002)(26005)(2616005)(6512007)(86362001)(83380400001)(5660300002)(82960400001)(38100700002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MU1Oa21kTlBBV0c0R0J2VEp1NFZNNFNzSksxTzF0UXNaNzFmQ2s5N3Z1Z01Q?=
 =?utf-8?B?MzQzL3ZBdm9sM1FPT3lsaTFqenRydVVhcnFtODEwNUpjOTZMVmFvTll3SzB6?=
 =?utf-8?B?ejdhS21aRUxDZWRhVUlHcEw3dFVCUkFUM3B0ZExZVjVEWU5tb0lHcDB4U1N6?=
 =?utf-8?B?YXhNS2FqZ1h2N3RGeWdKcDdJUldpRnNSU1VxQmFqVW1nbHF1d1Z3cm1EUGJm?=
 =?utf-8?B?ZGltd2syNXAzMzhidS8zUTZPZWJYdFhBZ25Nc0p5M2IrMEdEMk1UU0VEcjNX?=
 =?utf-8?B?bWhHbW1yaFNNaittOFo4SHpjcU55SlVJSlkxWk9VR0ErTGhTUTBVcEhZOGdx?=
 =?utf-8?B?dUlPWno3Vk5ZdGNlNVNWNkl2VkI2blJUOVNaRWtjUUhOREN1N081YlFSb1d4?=
 =?utf-8?B?WjRIR2ZiWkRuM2NHeW9aeHd4OXgzMTE4SzVnc012YU5NcnpCUGlpOEdMa1Yv?=
 =?utf-8?B?MmdGUzQ4L1R3VEZ1WHMxZUpCbXZUS3FKNlpObTJVVDh2cEZ5dDhUNHFPcUpJ?=
 =?utf-8?B?K1cwajlFYnBxVERNNUlpRTR1KzZJTGFkR1pORzJQb1NlRGJpVVRKbUpvWURV?=
 =?utf-8?B?Z3NQNkdPcUtpYjBweEtnSE5hdVA4dGZVd3Z2QUVtQ25uR2QzbWhiZGcvTGky?=
 =?utf-8?B?N3J1MG1LU3VxRWhpU2xQRlkvNHdXTm83am5aaUtoTUtsQUxtQVd0NUJOdXFN?=
 =?utf-8?B?ak1kZUF0MWs5Rk1iK2tFOWQzeThhdU5PMHFHTXdxaTNIZlRIcVpibmtRMzkx?=
 =?utf-8?B?UmV3cXR0OE02cW1oVE5GcVg2WVNrend5cUZwQXFYclpOeUI3ZXlFRHRkcFpC?=
 =?utf-8?B?UVBZK3J2L3VUWndUUjRiU3Q3R0QyL1JXbUt0MVB0SHdibHV0dVp1MkxVay8x?=
 =?utf-8?B?dGhJRmQ5Q3VpVWlyWWg3bk5ENHdaT0tISlNTTXdqT3EvTUEvc1YralpTWnB4?=
 =?utf-8?B?WDlMVGxqRWQwOUVOK0Q4bWZnSFBRdlRyaGt6SUk5RTRaK1NSejFGSkdVai9u?=
 =?utf-8?B?Z1ZYNFB0VzBHM1NNQVB2STlKM01Ua2g1aWxZUEFOOVpDdStLb21KdHFUMjl2?=
 =?utf-8?B?aWVOUmNPWlF5eVhrUC92eDRxMnAwNVd0ZnRBSWJPR2F3STFhc3V3L2U4TFlN?=
 =?utf-8?B?S3BzakdBYWJ6aEFkMmhuQVpXalZXVVl1WCtJSzMrK2J1OERkcDdicDN4M1Rl?=
 =?utf-8?B?c251aWhneFhZaFJaUWVKWm5KZG9Wc0VBcVlnMnZoQ2lZNkx5QkRIYUQ4b3R6?=
 =?utf-8?B?Y0IzSlAzVHhZdW5YSXk5aDBmeVhWbmpKRkI3Z2dhMkU0WGtwN0oyRkcwaDVJ?=
 =?utf-8?B?dXQxSEh1RXNKeXlONFhEeU5NSytSMVJ3Ti9kUnJFMDZwNEJKaWlWbEJ1R1FX?=
 =?utf-8?B?R2NPZno0VVQ3VGcybnBBdlA0RkU2cnVDSE5OcVFSLzlZazZuZTk4MDRRU2ZE?=
 =?utf-8?B?RHR6S1laaXZXejZpUE51dG5Sc2pXM2lzT09OaXdZcnlOSisvNE9YVXh0K0Z1?=
 =?utf-8?B?YUpkWHhBczJBZktqNXV4RkFPMFJNY1Z0QS9tNjBiTHF3STdyQVhkTDAzSEJ2?=
 =?utf-8?B?azBzZGNjanM2Z3lHRzJ6cmNLQllzbFBjdXpnOTBucnV0WDNSUnBCTmFWYVdn?=
 =?utf-8?B?Mzk3eHFMWlpCNnlyQlJhQ0tnNFVkZmFWSVJYV2R6WThJOElkR3hwVGdhdExU?=
 =?utf-8?B?dnI3NWUrQjBWVnJJSkxxN1Z5RlBUeDVZS0ROL2hNbGNCVHF4OGtxSGRpazhl?=
 =?utf-8?B?WmNFcDJLYlJkMG1wS3FpSzc5eHJJRkM1RGl5L281b0xJalE5c3FjRzNxVVBj?=
 =?utf-8?B?V0NFUzVHNjhmRCtpYTg5K1RTR1Rwd2plR2JWS2YzT3JlNVVtNkZpUHdxUkpR?=
 =?utf-8?B?L0ZCMjNiS3BpRWtiUWNLSkVnaURGdkIrdEh0bzE0ZzJ6Rkh1VkYzc1hXOXlK?=
 =?utf-8?B?T05OOW43cXRUWElZR1R4WnZXRG5YRFhFa0RLRmZqMmhHUVFtNFdiWjJ0Y25H?=
 =?utf-8?B?TXBRSkRoeWx3Mm4rN2hOa3lUL2VtY2FEdVAveDMwbUdXK2ZINm9TQjI3Z2p5?=
 =?utf-8?B?MzBwa1ZWZzMzNkRGK05FNWVyY0RSWk4raXR3VVhCbHRQaW4weDZBV01ZWE5l?=
 =?utf-8?B?MXJlampZQXc3UUVuNVpWeXN6bnBGdnYrdkR6TkZuR3g5NmllYkljWTAxMTFO?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 877686ba-38e2-466c-5956-08da9ba81ed1
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 08:06:00.2224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NLODxK4C6RQ1aQ15ssXybbC0IV1CzMxN7OlUhcpE9Ncibo3HLGbZX6yzrKH7lShfYpBf3GQzv/jQjcum/yIm3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6207
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663747563; x=1695283563;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OiuT0ZnRQQLS+ZYEoKxK2xHbeBeLK49E95bWhbOctro=;
 b=OT/1YaFTYBHGQ/4o5mneNOdeBHOscO0H/12QCoxcaHZNsz/YEj09eERm
 JGolrWVooSFuklgnTusLz0gNBz1LDbkIm/PRQX2guvLuuDVL5EXXd/LRI
 y8RUMN06C+aPMa3C5F9bFTdSsv3xHVlFUftW9z7E7jxk5AE9T4UMLEYbz
 9j4qwf7p7B/bZGsI6VJ7IhtK7LZzjqGX2TwcAdviRneNGB9f5dha8Wc9I
 sHVHuv2ETenxUpgWb7yS9cJkLR1EJVAXLsY3SMBXtMB8ZSCjqYMcDIinV
 g7nGjuq9Pcd8bj/ogpH3H3wMuoV/7U5PstfjppMRv+hHFMLrq2xL4HiXH
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OT/1YaFT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: Correct the launchtime offset
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

On 9/21/2022 05:49, Muhammad Husaini Zulkifli wrote:
> The launchtime offset should be corrected according to sections 7.5.2.6
> Transmit Scheduling Latency of the Intel Ethernet I225/I226 Software
> User Manual.
> 
> Software can compensate the latency between the transmission scheduling
> and the time that packet is transmitted to the network by setting this
> GTxOffset register. Without setting this register, there may be a
> significant delay between the packet scheduling and the network point.
> 
> This patch helps to reduce the latency for each of the link speed.
> 
> Before:
> 
> 10Mbps   : 11000 - 13800 nanosecond
> 100Mbps  : 1300 - 1700 nanosecond
> 1000Mbps : 190 - 600 nanosecond
> 2500Mbps : 1400 - 1700 nanosecond
> 
> After:
> 
> 10Mbps   : less than 750 nanosecond
> 100Mbps  : less than 192 nanosecond
> 1000Mbps : less than 128 nanosecond
> 2500Mbps : less than 128 nanosecond
> 
> Test Setup:
> 
> Talker : Use l2_tai.c to generate the launchtime into packet payload.
> Listener: Use timedump.c to compute the delta between packet arrival and
> LaunchTime packet payload.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  9 ++++++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  6 ++++
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  1 +
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 30 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_tsn.h     |  1 +
>   5 files changed, 47 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 4f9d7f013a95..f7311aeb293b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -400,6 +400,15 @@
>   #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet size */
>   #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
>   
> +/* Transmit Scheduling Latency */
> +/* Latency between transmission scheduling (LaunchTime) and the time
> + * the packet is transmitted to the network in nanosecond.
> + */
> +#define IGC_TXOFFSET_SPEED_10	0x000034BC
> +#define IGC_TXOFFSET_SPEED_100	0x00000578
> +#define IGC_TXOFFSET_SPEED_1000	0x0000012C
> +#define IGC_TXOFFSET_SPEED_2500	0x00000578
> +
>   /* Time Sync Interrupt Causes */
>   #define IGC_TSICR_SYS_WRAP	BIT(0) /* SYSTIM Wrap around. */
>   #define IGC_TSICR_TXTS		BIT(1) /* Transmit Timestamp. */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index bf6c461e1a2a..97b9edb5153e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5382,6 +5382,12 @@ static void igc_watchdog_task(struct work_struct *work)
>   				break;
>   			}
>   
> +			/* Once the launch time has been set on the wire, there is a delay
> +			 * before the link speed can be determined based on link-up activity.
> +			 * Write into the register as soon as we know the correct link speed.
> +			 */
> +			igc_tsn_adjust_txtime_offset(adapter);
> +
>   			if (adapter->link_speed != SPEED_1000)
>   				goto no_wait;
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index c0d8214148d1..01c86d36856d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -224,6 +224,7 @@
>   /* Transmit Scheduling Registers */
>   #define IGC_TQAVCTRL		0x3570
>   #define IGC_TXQCTL(_n)		(0x3344 + 0x4 * (_n))
> +#define IGC_GTXOFFSET		0x3310
>   #define IGC_BASET_L		0x3314
>   #define IGC_BASET_H		0x3318
>   #define IGC_QBVCYCLET		0x331C
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 0fce22de2ab8..f975ed807da1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -48,6 +48,35 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>   	return new_flags;
>   }
>   
> +void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u16 txoffset;
> +
> +	if (!is_any_launchtime(adapter))
> +		return;
> +
> +	switch (adapter->link_speed) {
> +	case SPEED_10:
> +		txoffset = IGC_TXOFFSET_SPEED_10;
> +		break;
> +	case SPEED_100:
> +		txoffset = IGC_TXOFFSET_SPEED_100;
> +		break;
> +	case SPEED_1000:
> +		txoffset = IGC_TXOFFSET_SPEED_1000;
> +		break;
> +	case SPEED_2500:
> +		txoffset = IGC_TXOFFSET_SPEED_2500;
> +		break;
> +	default:
> +		txoffset = 0;
> +		break;
> +	}
> +
> +	wr32(IGC_GTXOFFSET, txoffset);
> +}
> +
>   /* Returns the TSN specific registers to their default values after
>    * the adapter is reset.
>    */
> @@ -57,6 +86,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
>   	u32 tqavctrl;
>   	int i;
>   
> +	wr32(IGC_GTXOFFSET, 0);
>   	wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
>   	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
> index 1512307f5a52..b53e6af560b7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.h
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -6,5 +6,6 @@
>   
>   int igc_tsn_offload_apply(struct igc_adapter *adapter);
>   int igc_tsn_reset(struct igc_adapter *adapter);
> +void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
>   
>   #endif /* _IGC_BASE_H */
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
