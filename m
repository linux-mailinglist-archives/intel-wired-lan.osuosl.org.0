Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4B97D4D42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 12:05:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BB276FB6D;
	Tue, 24 Oct 2023 10:05:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BB276FB6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698141901;
	bh=P8no3O4kXT1AluPFJHgfMS+Hl7xQa2zgKrzMJMRvJIw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=89VdNo9xC3rOImFmHWEyNKmQM7QFFoKNe/XPIxBHUCPdu+mJtXNeTTEeAo/oqW2Uu
	 dal0vG/APTwmXm3G+dvgRXnWIlEHRYXppQC7Un+T77rtV0ABM0ViFuUJJikeJjD/N0
	 D8qNEQrayJ1tVitluTU0HDlBIdOSohq2jiVVm87Aoq1UFQ9V9K+M7ON8eBUNxqCV4n
	 Hh0o99puIUR39EqBDDhQz69rnZqBhm/3NorCuWkRO4nv68b6FSZ/jEpFQpJBGLoUp+
	 v2YnPSbXQR6g79GOJri4EDR9eS+toOE0D0lT0dnlS546Pr1Kr5GAj1nf/WsiFoY4MC
	 dA9unuOv/B4jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ggb2vGBbmAYS; Tue, 24 Oct 2023 10:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CA616FB44;
	Tue, 24 Oct 2023 10:05:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CA616FB44
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 671DC1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 10:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CC516FB44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 10:04:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CC516FB44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RD3SPM_AGkHC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 10:04:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8FB76FAD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 10:04:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8FB76FAD7
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="473249459"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="473249459"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="1089796555"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="1089796555"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 03:04:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 03:04:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 03:04:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 03:04:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fNddFUI8buCIeXDrEcu9RhZg1IRlKeA0aJOZN+MkIMDpdn41E3cJAPfuXuDZGOtsMwzohMcQtHTCChYCV1lCI8/EL4FQ8lchN5XJxf9rF6fFv0u+OCp6m0Oq8f6KQWfKOvjcm5cli0G6ZU7Nb0dYj07OyoCI4uLQFVSfYZCJ8aYXhwIBv9gHumNtDbKbosHyqLVIZJWB/q5Qe3M7J5uTT6x0euai7eCT47GPD4t5IC8XCEVImIwdn24UodJXTXigQVBPm2HE9G7/4BUHo8rzgaQPMUj3I7/hFBN72VNTHJf73zj1q2RA9hoNpRaD1PK4S9L+Wqt7L4lfL3pyUQCgtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a1ZHbU6m1yX965c2v5lN0Zq1k1nqhWnmnLhvcRbe3NA=;
 b=kfT1WwPfBc1CHun0hwAPCsBaFKgvXDzTE0XKVnAQtIcejngHxuHzjed2m54iNqJlxAMPG/pcJUOk2VfRjcn25Zp1izChWXELPCg3JoQWnAFUc9UjRuefSCZbwQQd6TXzY60zcFKn0riONF+pnkSHrBSI9r45+LFvQEKrWUfa9+qxteDPnvJkBDvj0GPPvzP3bUU2yL4KzUUf3leaHsT4Xxxc5W7q37697mpahLaftEAzO1IyHbgMqcbn4DNr8MCoyr+M/Pf4fVqo8Yjju0mFhFG9km449pJjPxUre2rKPokK7uayOm7k3VaWUfTUC6DOaS0rK1reeb69DYH50HMKnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CH3PR11MB7322.namprd11.prod.outlook.com (2603:10b6:610:14a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 10:04:45 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::71a7:70c4:9046:9b8a]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::71a7:70c4:9046:9b8a%4]) with mapi id 15.20.6907.032; Tue, 24 Oct 2023
 10:04:45 +0000
Message-ID: <5a918c17-af73-4d4a-8016-855aa667456f@intel.com>
Date: Tue, 24 Oct 2023 12:04:39 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231024081211.677502-1-ivecera@redhat.com>
 <20231024081211.677502-2-ivecera@redhat.com>
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20231024081211.677502-2-ivecera@redhat.com>
X-ClientProxiedBy: WA1P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::18) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CH3PR11MB7322:EE_
X-MS-Office365-Filtering-Correlation-Id: 894c8994-9258-4923-fa35-08dbd478a62d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eQARy8PVwo9dfbpoLc6QtUUsl+nb+yR+ApfigFT7F9u2sE4M3Y0T6NPBBGTkzOCGeCHfF8TitvrG2WB1gres64o8awN4zwDvLOuEnYxoHFU4PtnpmEkBrw3pB3Xbpm6lbzdhNQjreD3+U+5A0NpY6kRUBeDHjdSr5V38XJ/m0BW7Tj7RpazdQhQW3BLzIzosOymqjVFLrWTl4aAecCkIlu8sRXC3q3M0UfpVinjuSAf6mxddRswQoeyRcCRB3MwhIgvQcfq4MzM513SgcrNch+LM4i+g776SFiOiEAHvgNWpaZ8Q5e4m9yUHhywcytDPTl87acpfCpPOhpK+Rrahps+sQG0oT/PXVRL30vL3X0xP5Trmm4rQgh6Q5Ht0W+jhlQ7HM8sQkEzZm7rEsXfDfggPbfqZjD95Vm+loLzSNMNL9Uv+rT4lkeGuFt3z1r0mLeI12IqoRPqkqq+v7lQupiHOHXPl5kOVnalDaQewCixwtYIMY7eKgChbcucVl/9IXCvROEjKaO7iJXzCihor4G06WEmjKJbI70vAdgdctRCxNyvQz9hVEBItZZSs+YYFWcVg8URwheXI/Y33zoYV2oNg8MoJq33NOQGR+Y8JdC/Aj/Kt/Z6nX/TJ5kttt7FN/zHD58eR4tMCumfYb6WajQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(376002)(136003)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(86362001)(2906002)(44832011)(38100700002)(41300700001)(54906003)(66476007)(82960400001)(316002)(66946007)(66556008)(478600001)(2616005)(6506007)(6512007)(6486002)(53546011)(83380400001)(4326008)(31696002)(36756003)(5660300002)(8676002)(6666004)(8936002)(26005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3ZxbDRaQnB0VkxjM1RPdThuelBTK2FBME0zaG9OdzNnYlhxc0hPVHRtVjNu?=
 =?utf-8?B?bDd1K1dJZGgraDFZcXNpdW5nOTZVZ1E4S25DWnNIMHR2akdsVGg5NS9DZUYv?=
 =?utf-8?B?b3JmZWNGZEl1UTRNT3pkNnVPb3JJZER4ZjJtRlo2Qlg1N0FPeklaSFZGOE5Z?=
 =?utf-8?B?dHdxVWxkdXpIZUFrNkp3bkY4VWtiYkZaMjloQitsamN3aGVscDVqcmNRNXhw?=
 =?utf-8?B?cWtLRU56ZGZuUHhZZGNiUHhWNWhjVzBNeDNpcjJacVBNM1VKR2VxMGdVRjNv?=
 =?utf-8?B?MjJTcVh5a29tSEx3OUN1UUsvdHRWWDl6OWFQVFRIQUdtZ2NXQWc1OEE4YXBT?=
 =?utf-8?B?N3N4T0NBMjRRbVl6MXJrTXkwMWlUOWlaajk2RTdKUmRUY0gxRjRQcHpFeEtF?=
 =?utf-8?B?TnBzSFk2aTNwRjArdXdyMzZGMjU0V2lxc09VRGNkUVg4N1lzNUFWMnViYlZN?=
 =?utf-8?B?Y3VDRVVuRThjTGFBQmJQU1NtdDVDc2w4cGhsQkNRUUJtd1BuN3pLRXJ3VlRz?=
 =?utf-8?B?Ui9wekJKYmRwU3pUWDM5aU9EOFJZWUpJb3lValhsNnNtRzlOWUU3ZThlT3dZ?=
 =?utf-8?B?bnQxMXI2bDlnYk9YcjJOT1FCMTgrYk5NTTU4Z051a0hDbk8yZTYxcS9nVWJo?=
 =?utf-8?B?NDc0cWNIYWlsOE5XYktPQUF5T2daek1PK2tXK0lYZFZlLytIblRZQUdWSytZ?=
 =?utf-8?B?ZWxrTDliMFpuWUUzUStlWmd3OXNseXdKdFh4Vjg5ZTVEODVRQnMzNmJnQlJR?=
 =?utf-8?B?MWdydDFYcXNzVzNTSWxyclNqa3FBU3EwRTdaNUhVZThYZHNyUUEvRVh3aGh4?=
 =?utf-8?B?ZFlHekhzNk5BT2paS3A2KzdMZ2NHN3pKMDlBZTdzZzJtL0dDMlVrY2NmNDNj?=
 =?utf-8?B?ZzN6TFRsUm5JRC9aOUZvQlhPZGV4QjJrcWR4S0ttNDd1NVdvNjJScUN2RkxQ?=
 =?utf-8?B?WDdVaFVwbEFWRHdqcU1LSjhTRURZaHcvU2lobE93L1Byb2lZeWRBUnBod2NO?=
 =?utf-8?B?cGI1NzFDTmRMR295aFBoZ1RMSWNyak9aUWQweFNSR1p4alVoZU1TWkZweEl0?=
 =?utf-8?B?QnpBbEFLdE5pd212a2o5bzVpbjRZeEVNaWpuak80LzY1d0JCcjYyY3dQRUNT?=
 =?utf-8?B?dGxZcjNtNmZ4c3lydUtTeVhkaGgvOEV6ZDVuV2J6QzAyMzlPWlhaVnlLUURD?=
 =?utf-8?B?a0ZkVUo5N0Vxd0oyamxsSkxJdndNZFhyMytnSWozeXc4bUd2Q0VNNlZ4S2xZ?=
 =?utf-8?B?aXozRDcwTmFaVTd6cU1XQ2FsRHd6OGRqZWJCZ01jV0N5TThXSTdOMkhta1Ix?=
 =?utf-8?B?NmQ5YW42UjRWR0xtbWFRR0xESzVWYzZ5ZmNmeFQzMHQ4SDhieE1BeW02OEdD?=
 =?utf-8?B?KzZiaEM1RUV1VFh3Sit1aXAwY2g4TmNwajBDUW5QWUtIS3dWMENpOVBvVVRp?=
 =?utf-8?B?aHRYalpYNVJ6Z3R2R1Y4UUhtN3gvOHFZV3FVN016OHZOWGEwNWxzVVB4c1M0?=
 =?utf-8?B?cm1DQkhpM3VOYTVLT2pBMjhjSUkzWVJXYkFPZUxab0hrbFl2T2tNWVBRN3Fw?=
 =?utf-8?B?UWVtM05Mc21ZSGRlUkVMWGZnbkRHQnEzVWNNYjlpakhaSUdaR2lBUHNNS0gz?=
 =?utf-8?B?UVhhWGd2Nk81T29qNHZ4aXpVN091V0pjU1gvb28wamlxSFFFWWFISFB4Q3Ft?=
 =?utf-8?B?TUJFY3hLZFBJUkVUTkVzU0Q0UFJCak9LaGYvcmswWWJ6WTFodURoM0FOZ0U4?=
 =?utf-8?B?T0ZJcy91SnQ0M0JzU2tmYU84NUZVdUNZbmdTb25ieWtUUENLSEpLTDE4WTVT?=
 =?utf-8?B?S0MwVjFXaVdzRkNuTWxhTytlUVZXczZTNkJpK2h6MVUvNnIra05ocW1SQ0Vn?=
 =?utf-8?B?ODlRNEVSOHdqZDRJQTdVbnJFaFBTbloxUVhQaTZKZlZkaGJkTDZsK3ZRMnZU?=
 =?utf-8?B?c0xhWTlzNzlhTm9wbWdMaHVYbmlaSXRDdWczaVdwR2R3SzFMVGZiYnAxUDR5?=
 =?utf-8?B?YVFRSHg4c21JSjZKa1lXaDZxeEhSV201OVd2bktya3lpdklPZWVhcXVNL0Ni?=
 =?utf-8?B?MEFKOEpKZDg2REMyL2V3RUdTTllvRzd5bjNkdHBmVGFtZnNmUXh0S0xvQW9D?=
 =?utf-8?B?aGZzdUVOWHNPb2xkM3JlVmdmRUQraVZMNlFtdjJtZlp0TlQvaVdickgxKzJB?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 894c8994-9258-4923-fa35-08dbd478a62d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 10:04:45.5239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pXigvIYE8bIf144iTdaqJQU+tf5NvXzS97xQMksryJlHasr1SeGnFIihjPlJiBKkKMYWldY5bdOBO7TNMwh1xJWTZOArPYH6q4MS/Q591fg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7322
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698141889; x=1729677889;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fCOhPWr9PU9kpfWBw9h257OjGI+lTsQVZccj5/ozYjo=;
 b=O3G+jCr8uLNou4gynJHlFfbIUTFsMcbpjVPrL8ntcohPxsrFMrygmQwP
 IUkshT8Tl2eioYFNlOvdC1Ce5p6INf/KEwPb3Bgk8oOd20drcrp0mip7P
 zMb+klDogttVEOGkprEOZKW02urdHzOLBS4BW6EdoZvZCiQP/r8zylCL7
 1sl2ntZh0AMqeoWpCIounrlkbNTsvohjtRrcTDhbr6ZsTxM8zIGfSHqxs
 zfk49GB0avfu10nnHtUhDPZmBmRPJsSSXog3GVot7FfUDzGtS36Wvm+nz
 E/oxUL+uYxZq+ItRdr82T5JdoLuCukU6S274wqbwtB09UC8c+/k2Os6f3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O3G+jCr8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] i40e: Move
 i40e_is_aq_api_ver_ge helper
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
Cc: dacampbe@redhat.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 24.10.2023 10:12, Ivan Vecera wrote:
> Move i40e_is_aq_api_ver_ge helper function (used to check if AdminQ
> API version is recent enough) to header so it can be used from
> other .c files.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---

Thanks Ivan,
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

>  drivers/net/ethernet/intel/i40e/i40e_common.c | 23 ++++---------------
>  drivers/net/ethernet/intel/i40e/i40e_type.h   | 14 +++++++++++
>  2 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 7fce881abc93..df7ba349030d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -1749,21 +1749,6 @@ int i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
>  	return status;
>  }
>  
> -/**
> - * i40e_is_aq_api_ver_ge
> - * @aq: pointer to AdminQ info containing HW API version to compare
> - * @maj: API major value
> - * @min: API minor value
> - *
> - * Assert whether current HW API version is greater/equal than provided.
> - **/
> -static bool i40e_is_aq_api_ver_ge(struct i40e_adminq_info *aq, u16 maj,
> -				  u16 min)
> -{
> -	return (aq->api_maj_ver > maj ||
> -		(aq->api_maj_ver == maj && aq->api_min_ver >= min));
> -}
> -
>  /**
>   * i40e_aq_add_vsi
>   * @hw: pointer to the hw struct
> @@ -1890,14 +1875,14 @@ int i40e_aq_set_vsi_unicast_promiscuous(struct i40e_hw *hw,
>  
>  	if (set) {
>  		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
> -		if (rx_only_promisc && i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
> +		if (rx_only_promisc && i40e_is_aq_api_ver_ge(hw, 1, 5))
>  			flags |= I40E_AQC_SET_VSI_PROMISC_RX_ONLY;
>  	}
>  
>  	cmd->promiscuous_flags = cpu_to_le16(flags);
>  
>  	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_UNICAST);
> -	if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
> +	if (i40e_is_aq_api_ver_ge(hw, 1, 5))
>  		cmd->valid_flags |=
>  			cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_RX_ONLY);
>  
> @@ -2000,13 +1985,13 @@ int i40e_aq_set_vsi_uc_promisc_on_vlan(struct i40e_hw *hw,
>  
>  	if (enable) {
>  		flags |= I40E_AQC_SET_VSI_PROMISC_UNICAST;
> -		if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
> +		if (i40e_is_aq_api_ver_ge(hw, 1, 5))
>  			flags |= I40E_AQC_SET_VSI_PROMISC_RX_ONLY;
>  	}
>  
>  	cmd->promiscuous_flags = cpu_to_le16(flags);
>  	cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_UNICAST);
> -	if (i40e_is_aq_api_ver_ge(&hw->aq, 1, 5))
> +	if (i40e_is_aq_api_ver_ge(hw, 1, 5))
>  		cmd->valid_flags |=
>  			cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_RX_ONLY);
>  	cmd->seid = cpu_to_le16(seid);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
> index 22150368ba64..a21cc607c844 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -594,6 +594,20 @@ static inline bool i40e_is_vf(struct i40e_hw *hw)
>  		hw->mac.type == I40E_MAC_X722_VF);
>  }
>  
> +/**
> + * i40e_is_aq_api_ver_ge
> + * @hw: pointer to i40e_hw structure
> + * @maj: API major value to compare
> + * @min: API minor value to compare
> + *
> + * Assert whether current HW API version is greater/equal than provided.
> + **/
> +static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
> +{
> +	return (hw->aq.api_maj_ver > maj ||
> +		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
> +}
> +
>  struct i40e_driver_version {
>  	u8 major_version;
>  	u8 minor_version;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
