Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A5D572927
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jul 2022 00:17:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2AE581882;
	Tue, 12 Jul 2022 22:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2AE581882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657664248;
	bh=D8KYa+L5kvdHF+oxZRuYVQgWaC0E/hL84etU7KuUV14=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O1CtEwoH9TO5NxeOMgL4Wly3ILEnGc6lAavQzYcZfbQTUW4hndtWd3kXOc3fKjwps
	 oYgl/yuev4Fjv71BvW0PwcMdPp8SIPyK2c9TaJ2qxOis4lauQVEal/N2HYCA5P92DG
	 mtqD1sONfy8qM6+VKIOBAU9TIVXo/nKUqACCR8ELV+mO3Bg4Ln/MyTiILraOncJXku
	 rpDYCmqUN+q8ejXcNFUySU5hF7pn437UBwVLR5G82jH7DdRcD6XqS7jBsQWbMq5M27
	 uacn3idumWkKS3p1eJkb66hUwqn2C4KHlYNkqpy9R7Wgeh5I//0a76H/DMMGpB+N7U
	 C5HVLG39o8HFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJD2P-l7VKwm; Tue, 12 Jul 2022 22:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 926DE81757;
	Tue, 12 Jul 2022 22:17:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 926DE81757
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6CF11BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF5EF81406
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:17:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF5EF81406
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmkAUnwA_dAS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 22:17:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F386A813CA
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F386A813CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 22:17:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="283810445"
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="283810445"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 15:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,266,1650956400"; d="scan'208";a="653096663"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2022 15:17:18 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 15:17:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 15:17:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 15:17:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 15:17:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E5C/omJOEhtFXOUdglw+5Ohl6D/wvNnaBsojrXPsCxxecVm854g5yn1wfuu4Yo1/+be+3/+X27QqF/JV/QrskbbM4sLXqSotHrCDbzU82C9f8vnH4vW4YU5Jt7Up6Jb20+nehhH0Fita+6fsGrMGFbd2yvt/H+A5qbqcQARo7Rh103PY78SH9Pe9d01g2pXXJ0bMvsehlPPsu4SPSy1EqCuqXP8XBblHnuonxbCQClCvu6hArIGg714j2MORBHUozQO44Zkk8LkGdYRCxX3m0i1+hp51B7cWN7n9sWEza7jzPiR3ll64gZVNnrfjsi7bsEEXD/xteLqv9KU9I3wtxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WRypSMiALArEyJVFT3daQn96lP4OiTH1DJ19e6utFCU=;
 b=N9fr9/row9oZHUGKEZmtyMYSwsCXeE7xWpx+ftF+rCS+y+CJLC6FtDQ9b/NtbZP9rf3FCwZoHM2WXj9m+Wg+EHR+ZI9LWXZbz6CXao8UVoS6dx1XJrFa8bYygRTHw54JDdZa5eN5cV+yO+JfZfz6jbLTt4Ukno1eFhqiRzaKa0eahLdWR/OsJEKyse0Aqex8aFODBK+3RroK6t1C7uq9a2lin46yxnP/XrA5NUlkAk+XSDZJnV65E1641RU1X7gFxbtipB37rzOBLt4X7PAWyK6DowjUosWWhBk+k35Cy52S1SlsUffwq5uFiwhN7ZIdeUmIFy2O2APqjsW9bblXqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB1917.namprd11.prod.outlook.com (2603:10b6:300:112::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Tue, 12 Jul
 2022 22:17:16 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 22:17:16 +0000
Message-ID: <b464fd7f-24c1-ba1f-9a96-3a6e058f3144@intel.com>
Date: Tue, 12 Jul 2022 15:17:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220711134432.2398975-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220711134432.2398975-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: BY3PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:254::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e3a941c-263a-43fd-52b7-08da64544705
X-MS-TrafficTypeDiagnostic: MWHPR11MB1917:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: urh9KnxF1yApKc2vLfJ38qokoCY4OI+m7TUXmtGgwWGNSbOpw0HL6413qOCVMQkZwYuwQeaZiIZkvGu6eAbrn1AHZVf3gxXcCbcmFCJakrgbS/xPfsNHmPgRwnrrTz38jA9W2cmhD1ZWEnnukRxrlfJnzfwQYqcVCvUNAH1/+S7Ux7oDKLelFt4WAUMoeeVRkJo+X8KB1kKA2ntRIWHeS4RcZKq2OxaIfyuAScEK4fmPslp1Fd6xqnaEWnPrxWFj3SkJdXG3zuC+nFO+0mDQTw0lMiRRabZ+jWXY7pAFtOSLxbycfedSFRwtC6CEYfD0TrUWwIsJaP/21owD1iIgyDXWUrxKeZhK1ayLROwXpfxZ9OhWFimfngyKEp2kr+hRUYhwjh38/wrThSev307sQbGhAZ+/jblVz8DuQxQvFm+aNLe01PB2PycZ036NLoFlr/bQUsl4XcUfzz6HtVnX58Pxb/udcJMNgvuLQGhjiHentQ3pvAizOxFjeDBiXzKhP/+fkYsoEpcZLFsmwcWOStA1iO/NpYqtnL/83Kgf7a+2sw8ztDG1joNN9moRfGSJ0JxF1IFG/qQ60HXbfekDbn0sIEhJ3tJUJ070UC1c/63t+HGPGC/N2khIDCL4ewm+7XVYAQVDnAu4tg9NnoTK71OZ5WgKXaPS7i8PnKDqwHKIpmg8n+Aha8b+W5CteceyWXQB1naxZQf1bhJSTvQ2et1GBsyAygoHOJ8HClJ7n1mv/Aqb78RrCYWBkST9gIeRwtagQOiSKJeRjJZdvBIvME0gfKjtWmWz+4QUC+p+5M/JlAFVZ2jx+soX8HVMsaNDvzM3Ln3aJI/Ase+ghhmDPFKB1rDDLgK3Y9OgK/jGuS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(39860400002)(376002)(396003)(346002)(5660300002)(36756003)(8936002)(2906002)(66556008)(86362001)(4326008)(8676002)(6486002)(31686004)(66476007)(316002)(6506007)(6512007)(66946007)(41300700001)(26005)(2616005)(6666004)(53546011)(186003)(107886003)(82960400001)(38100700002)(478600001)(83380400001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WU9yVklIUC9BSUJsdjJZb1d3SEYrVFRiS09HODBLeUhEZ09nR3RZNm1VcEND?=
 =?utf-8?B?YXZFUUdHdUc3Rnl0b2hQd3poUXZQTnBMeFpvRVBrZklyOVk3M3dseWtDMDNw?=
 =?utf-8?B?RDFCUGltTGcwZWY2NW9vL3VmN00zZ3hNSStjbVBvVm9yaUE2WWxIck4xQTQy?=
 =?utf-8?B?U3RpNXAwNGhWTWNmeXJZL0pSY1R4aHFkaTZPZzlMczhWdHE1bG1XMUFoR3I4?=
 =?utf-8?B?aFhlbHIxREpxMWo1bURXVkR1SllkbFlFS0xybDdmcUxONnMrc3ZrNFM0RTU4?=
 =?utf-8?B?VzRvTkdSQmlTQ3JKMlZib3VGOHA4YlpRTnZ0eW0yS09FOTlOSURtV2RUNVZq?=
 =?utf-8?B?WjhYNllZZ3lwNmZEUUQyS2Rwd1VNK3hoTHVRZ21mYWx5bFIvV1hWS2U5MkpX?=
 =?utf-8?B?WGJCQm5weDBDaFZQOUt0alMxd3BmOXJDZ0J3QzFwajZwNmVjNDlSckViRHRH?=
 =?utf-8?B?cGVBdXNpd1VKMUZWRlNyOWlKUmR2YjJ2bS8zeHNic3dEcDBzRFdDOGFvZFR2?=
 =?utf-8?B?WHpTbjhGRWVyZzl1aGRVS3lBbk9TU2tiUTNlakVRT29UNXROdG5rM3JWM2xS?=
 =?utf-8?B?a0lyTWtKa2FvZXFZK0lSZjE5b0R2WU42SEZOVzBxbHZaeTZmRDFTK1kzRzc1?=
 =?utf-8?B?ZFROWHF5SW9jbGxsSjhxMndwalllUTJzclRyei9JTmdQNjQyeXRGMXhNK3Vi?=
 =?utf-8?B?MW5ucG95K0VDU3lnaEFoa05MYnh0YXFWMEtCOEVFcTdjSFhVZDVRbGl0UWhZ?=
 =?utf-8?B?ZFNoZHFXbzNVOXRwbEtiUUxyK1F4ak9RcUQ5alFqNmIzcFFpc0dnbjJYWmJh?=
 =?utf-8?B?b1ZPRmZ4UTFGRnZqMXUvWi9Kck1qeEhBMUExUmVtV05QbmV1M3loNmxjZVNz?=
 =?utf-8?B?Z2J5L3ZGRDV4TlBrQy93LzJzeWt4c05SdUFxZDhJUVFOOHB5NFFaenAyY2NH?=
 =?utf-8?B?ZWk1ZGkyeTkyeisrcDgrTlpsMlh5Nk9DMTc2QlJkRHlkRDBYKzF3RXRGM2JF?=
 =?utf-8?B?SDVkbzZxS2p3RzVBaHJYbjFkTE0vdkkzZVNzOVEzbkZTcXc0Q3U5LzdMV1pB?=
 =?utf-8?B?bTZKYzBtR1BqRHF3aXplZEw5ampNYjJFUjBRanM2eUtSRWp3ajQ1THlpR3ly?=
 =?utf-8?B?alVIQ09nUFZJRHVrcUZxRjdtVlpSVlFSdnJRV0E1Z0h1UjQ0OFBic0RlY1c4?=
 =?utf-8?B?eEQ1WkVBd3hyMHlmSmhUUHRVZVNxNlJtaVg3RXVMRzNoNWlTK1ZlallyMjEr?=
 =?utf-8?B?VEdrY1lIdTRYelkzU0lnUzZkNG5nOXNPajBWblQrOUJ1TjNZcTEvRUNhT1M5?=
 =?utf-8?B?MTlUNUNXK2xlZ3c0QWxWVTJLTlFOdHY2cnpyTEdXTzhRK0MxTWhpME1vSkRx?=
 =?utf-8?B?VnhuUzROdUtiUElQQ3FUT29DMGJSc2trYU1veWZDT2NaSFNyVkNxTnVwNFJ0?=
 =?utf-8?B?SFMwZjV3VGJXTW5wME5lbzcwNnNsRTdBK0lMOWRyeHN4QTZvQ2k1TjYrRG5B?=
 =?utf-8?B?M0txaDBXekFDUHRpcE9XMGR2b3JGektHOXYzMUNZS3c0UjF2aVNTdDN5a2Ro?=
 =?utf-8?B?aEtKVUZXMW1vSHVObzNxUGcrKzBIY29SWmF5UDRDRXQ2V1NaYS9JeTF5eERp?=
 =?utf-8?B?ZzF3UHlkbnVRSk9ZNzdvelkyZkVTWTRpb3pFQnRiTStNRmdOODV6YUowc01U?=
 =?utf-8?B?U3BpeU9kVU5nUUM1cGh6bU5WdlRwV2lYRnNhQUNLN3o1cE0wNGFMNVFpbGhX?=
 =?utf-8?B?QVRDRmpiVDFid2dWZjVpaHhsSHFlUGJMeHlQYUxiME80dUdaUnpFK3NYc2RL?=
 =?utf-8?B?VHVscEVYSCtRN3NZYnovZTdRcVJ1K3dLcUJ5Tmd2bThBMzQ3OS9yTUpOWFJK?=
 =?utf-8?B?MnEvWkpmNUZOSEtRSkVZYWhhRDBpUU1FUGdkYVhPQ2M2d283SWg2bC9VRU5V?=
 =?utf-8?B?dnBxOGtjOGdncGJqNjJGYjdBY0NnaVY1dlhRd05XU1RYNWY0dFhDZE04YWF0?=
 =?utf-8?B?VnRRcDBCTC9rNUZ6WFJPVm5aZlU5SWt3SHhQYUI5VjZ0bVZsTGhVMmxQMSt1?=
 =?utf-8?B?OTE2aldMUmVuYTRaSHpONFpCSytYMi9xRVNOQXYwRDMrT2l1Y1NNNVhNT3A5?=
 =?utf-8?B?V3pRdUVFQVo4Q3dxQXRsTmJjTk00bVZjUTJMdzFBNExoWHA0bnpPQUNpbEhs?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3a941c-263a-43fd-52b7-08da64544705
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 22:17:16.0095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 66uTcwasX93jdYjf+g4ZgjAub1j7YN9RQoJ18H7MPNm0giUx4fdcXgHkPrr+4FO26KNSJWSQswRZ5kVqxC2hw4GcjIXjqNBZGif1lRs19Gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657664239; x=1689200239;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=77AaRfb1uOJ7WAk8UR6Y8Jd+4aABPHn+GTkHGEX0gwY=;
 b=mlOdGaNbta5At6iNdb253GQsBpapCRDxQtCTbz9VPRE/mm1Wyhwg5nM6
 7CSMYDS5JWLXba2VzX1UZ/tAhYpDrnhbSt/4a1xP3jyku8d1PFDI9ycQy
 TjjeKDaL7NgucMehbBFxu/zE3b99d4xr3h1pVAtesCSNqzPZf/P63CwUI
 98nY2rQqMgpNxt8n5C4bHlYcLEKvs/wpCKsAGjl3JoqdUyjZdRxqnFJ78
 iSyD3X47Nsi0ppA7tYbc48y2M5G3vOtE8tjDZ3ORU1fpsQx1HQ278kHcD
 E++T4+8CYaooF4wLU0AJUy+oazpXu2P3azADGI04kilwK5hdeiDNNcunj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mlOdGaNb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix VSIs unable to share
 unicast MAC
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



On 7/11/2022 6:44 AM, Mateusz Palczewski wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The driver currently does not allow two VSIs in the same PF domain
> to have the same unicast MAC address. This is incorrect in the sense
> that a policy decision is being made in the driver when it must be
> left to the user. Remove this restriction. Doing this also allows
> use to remove some additional code that's checking if a unicast MAC
> filter already exists.
> 
> Rename ucast_shared to umac_shared, as "umac" is a more widely
> used shorthand for "unicast MAC".
> 
> Also add a helper function to set this flag. This helper is
> expected to be called by core drivers.
> 
> Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 11 ++++++
>   drivers/net/ethernet/intel/ice/ice_common.h |  1 +
>   drivers/net/ethernet/intel/ice/ice_main.c   |  2 ++
>   drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 ---------------------
>   drivers/net/ethernet/intel/ice/ice_switch.c |  8 ++---
>   drivers/net/ethernet/intel/ice/ice_type.h   |  3 +-
>   6 files changed, 20 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 9619bdb9e49a..64748ecebabe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -899,6 +899,17 @@ static void ice_get_itr_intrl_gran(struct ice_hw *hw)
>   	}
>   }
>   
> +/**
> + * ice_set_umac_shared
> + * @hw: pointer to the hw struct
> + *
> + * Set boolean flag to allow unicast MAC sharing
> + */
> +void ice_set_umac_shared(struct ice_hw *hw)
> +{
> +	hw->umac_shared = true;
> +}
> +
>   /**
>    * ice_init_hw - main hardware initialization routine
>    * @hw: pointer to the hardware structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index 872ea7d2332d..8a66f86c8893 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -16,6 +16,7 @@
>   #define ICE_SQ_SEND_DELAY_TIME_MS	10
>   #define ICE_SQ_SEND_MAX_EXECUTE		3
>   
> +void ice_set_umac_shared(struct ice_hw *hw);
>   int ice_init_hw(struct ice_hw *hw);
>   void ice_deinit_hw(struct ice_hw *hw);
>   int ice_check_reset(struct ice_hw *hw);
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index ff2eac2f8c64..ff798a410365 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4656,6 +4656,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		ice_set_safe_mode_caps(hw);
>   	}
>   
> +	ice_set_umac_shared(hw);
> +
>   	err = ice_init_pf(pf);
>   	if (err) {
>   		dev_err(dev, "ice_init_pf failed: %d\n", err);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index bb1721f1321d..f4907a3c2d19 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1309,39 +1309,6 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
>   	return ret;
>   }
>   
> -/**
> - * ice_unicast_mac_exists - check if the unicast MAC exists on the PF's switch
> - * @pf: PF used to reference the switch's rules
> - * @umac: unicast MAC to compare against existing switch rules
> - *
> - * Return true on the first/any match, else return false
> - */
> -static bool ice_unicast_mac_exists(struct ice_pf *pf, u8 *umac)
> -{
> -	struct ice_sw_recipe *mac_recipe_list =
> -		&pf->hw.switch_info->recp_list[ICE_SW_LKUP_MAC];
> -	struct ice_fltr_mgmt_list_entry *list_itr;
> -	struct list_head *rule_head;
> -	struct mutex *rule_lock; /* protect MAC filter list access */
> -
> -	rule_head = &mac_recipe_list->filt_rules;
> -	rule_lock = &mac_recipe_list->filt_rule_lock;
> -
> -	mutex_lock(rule_lock);
> -	list_for_each_entry(list_itr, rule_head, list_entry) {
> -		u8 *existing_mac = &list_itr->fltr_info.l_data.mac.mac_addr[0];
> -
> -		if (ether_addr_equal(existing_mac, umac)) {
> -			mutex_unlock(rule_lock);
> -			return true;
> -		}
> -	}
> -
> -	mutex_unlock(rule_lock);
> -
> -	return false;
> -}
> -
>   /**
>    * ice_set_vf_mac
>    * @netdev: network interface device structure
> @@ -1376,13 +1343,6 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>   	if (ret)
>   		goto out_put_vf;
>   
> -	if (ice_unicast_mac_exists(pf, mac)) {
> -		netdev_err(netdev, "Unicast MAC %pM already exists on this PF. Preventing setting VF %u unicast MAC address to %pM\n",
> -			   mac, vf_id, mac);
> -		ret = -EINVAL;
> -		goto out_put_vf;
> -	}
> -
>   	mutex_lock(&vf->cfg_lock);
>   
>   	/* VF is notified of its new MAC via the PF's response to the
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 8d8f3eec79ee..95e4b99928b7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3425,7 +3425,7 @@ bool ice_vlan_fltr_exist(struct ice_hw *hw, u16 vlan_id, u16 vsi_handle)
>    * @hw: pointer to the hardware structure
>    * @m_list: list of MAC addresses and forwarding information
>    *
> - * IMPORTANT: When the ucast_shared flag is set to false and m_list has
> + * IMPORTANT: When the umac_shared flag is set to false and m_list has
>    * multiple unicast addresses, the function assumes that all the
>    * addresses are unique in a given add_mac call. It doesn't
>    * check for duplicates in this case, removing duplicates from a given
> @@ -3467,7 +3467,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   		if (m_list_itr->fltr_info.lkup_type != ICE_SW_LKUP_MAC ||
>   		    is_zero_ether_addr(add))
>   			return -EINVAL;
> -		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
> +		if (is_unicast_ether_addr(add) && !hw->umac_shared) {
>   			/* Don't overwrite the unicast address */
>   			mutex_lock(rule_lock);
>   			if (ice_find_rule_entry(hw, ICE_SW_LKUP_MAC,
> @@ -3478,7 +3478,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
>   			mutex_unlock(rule_lock);
>   			num_unicast++;
>   		} else if (is_multicast_ether_addr(add) ||
> -			   (is_unicast_ether_addr(add) && hw->ucast_shared)) {
> +			   (is_unicast_ether_addr(add) && hw->umac_shared)) {
>   			m_list_itr->status =
>   				ice_add_rule_internal(hw, ICE_SW_LKUP_MAC,
>   						      m_list_itr);
> @@ -4000,7 +4000,7 @@ int ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
>   
>   		list_itr->fltr_info.fwd_id.hw_vsi_id =
>   					ice_get_hw_vsi_num(hw, vsi_handle);
> -		if (is_unicast_ether_addr(add) && !hw->ucast_shared) {
> +		if (is_unicast_ether_addr(add) && !hw->umac_shared) {
>   			/* Don't remove the unicast address that belongs to
>   			 * another VSI on the switch, since it is not being
>   			 * shared...
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index f2a518a1fd94..bef7c3ba1a20 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -889,7 +889,8 @@ struct ice_hw {
>   	/* INTRL granularity in 1 us */
>   	u8 intrl_gran;
>   
> -	u8 ucast_shared;	/* true if VSIs can share unicast addr */
> +	/* true if VSIs can share unicast MAC addr */
> +	u8 umac_shared;

This field doesn't look necessary at all. This is set to true and never 
changed. It seems this can be removed and the conditions updated.

>   
>   #define ICE_PHY_PER_NAC		1
>   #define ICE_MAX_QUAD		2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
