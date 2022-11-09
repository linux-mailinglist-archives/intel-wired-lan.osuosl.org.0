Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1C8623355
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 20:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 451DA40AA8;
	Wed,  9 Nov 2022 19:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 451DA40AA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668021581;
	bh=O1yzvjeCBkdZAt/EsT+bVorfC3EcDuvGEwIhxXuMm8U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a0/59UHev8KmYDLWwllHmGWKrLcc3tXANaaowaDv1navwkWhe89nZaRvxBpdd34ph
	 IJp2ZLP1+om6V/7Qc+JTrDwBRAg5WsJzijjJ0soXMJ6N2Q4+ki4EvulFavlj1xI702
	 L0IIXqJYBsdEnoZMrk1MLoXAUyp5hY0KL04vnBn+f9rWuYNAV3+6QATWU9Z3BqXKOf
	 RvASXf7IHVryXYtMHZRUtGxYvXVrIB/snfXpAtUAnEso39itaswA6CoHPUtL5aEOKu
	 NzKVAfw4KrAIqzMjrFIY1uFDHhWz55Zg6MIsri9BUDjKxoJJQqDACxFOW4l2PGaWEh
	 AdPKdq9NiZTtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAAZCDH7unIJ; Wed,  9 Nov 2022 19:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFC4E408BA;
	Wed,  9 Nov 2022 19:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFC4E408BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38CEA1BF282
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 19:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C93041735
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 19:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C93041735
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3J13oFoxnlKW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 19:19:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A7014172F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A7014172F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 19:19:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="397370819"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="397370819"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 11:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="636863782"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="636863782"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 09 Nov 2022 11:19:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 11:18:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 11:18:53 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 11:18:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCy0FclRtIctJZdgiXnYSv3xq6yLPzz5cpGh8yfTquWzsDJVgQ+OHwtmJoB5f2j1jbfXG+gizEj2hDj2qNgv4HqNSoKiI3FQtP5+uCEaRYXfAVtOeOl3qOc6qjRUWnltlAFSZd/DYZDcKZDoYMjn32Z52FrdbiqQ82iz9oql/mGMcscs/zLsgm/QHINmGEZRKpU5cUQHMNFMUnwJJw20mkN923nLIZySy1YRrDbiDUqI+ycoDcXoGF1Ddu7Lx/T+HkcO5N9yEQXRssFJx0WK7q+LhedmipEKw02qvTSayKmb2dav5/Jffd8e5oogKT4cXf8C03L86jPh/4DY0os+Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wwygDn1Uebx/sw7ISAAyQbcaY5adY092RdKgc+4h0fo=;
 b=KyqMrCaJ0ukNrjXnP5ARnmMdqhGABpszgHQFehCQr4vTiaRhta63hRt/cNBf31feyP4bhEK4r+m8y45WJzg49HUA+DocMxcQIRQuHsRBVJ+DryEObxKXhBzevmw3JOsPHVDjNXkQaILAFdZid2Th6FlLyIKZr2JxEMz2/+RoI5Vcf/MGtiKlhcwPshcwrsYMIdThI/W4b5oKxJivJI3fY/siroykSbd7IQ0hRLv9n7Ne1cHpUhMG2ZaWGJHTMbEuGtrLs8XlgPD9lw6LpffUqLBc3YuI1NlkpLoLVN7n76TeesbMDEvRsufgD1GAV5komVEf3lTChIKJn2yLZoAcgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4852.namprd11.prod.outlook.com (2603:10b6:303:9f::10)
 by MW3PR11MB4761.namprd11.prod.outlook.com (2603:10b6:303:53::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.12; Wed, 9 Nov
 2022 19:18:51 +0000
Received: from CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::9c6e:32f0:ef8c:999a]) by CO1PR11MB4852.namprd11.prod.outlook.com
 ([fe80::9c6e:32f0:ef8c:999a%4]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 19:18:51 +0000
Message-ID: <9602c529-3474-cef3-aaea-8da8eff287e7@intel.com>
Date: Wed, 9 Nov 2022 11:18:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
 <20221027152401.30801-2-benjamin.mikailenko@intel.com>
 <d73f08d9-c0f0-0023-454c-7f085c456bc5@molgen.mpg.de>
Content-Language: en-US
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
In-Reply-To: <d73f08d9-c0f0-0023-454c-7f085c456bc5@molgen.mpg.de>
X-ClientProxiedBy: SJ0PR03CA0045.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::20) To CO1PR11MB4852.namprd11.prod.outlook.com
 (2603:10b6:303:9f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4852:EE_|MW3PR11MB4761:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d5c338e-88af-40d2-6c63-08dac2873bee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ubW5RcaWN9+1Ua9jA/F+GCr15oyf6hUwl1eY1lFzJU9pMOfRo+Nu9ZwP+MaNNXGxClpb937euBaVaATA2UZE0e1u8cNujRqw35Ba4D0R/O0DQkSARKwQlEtpqCJNzDpr78Rvq+OfZ/wThuA2QKbzCcF2qK0RHlBAxHNs57DnA6YT43i20roih7OnPRPZH6WZiIddZgPWBdeg+PS4735FNkxmgOQEQB5oeZrZMUSWosnz79D7AbQKNLFEeCJ09+ZioClGvPR1tpeCso8YLSQlbVMXtAgJbwofK2Wd88ifrgIUZhUbMGcBK8gUpmwQ/XCJ9e3l9pB6JzNyUhBTD5TRwVwVE4CTpGb5cMGneur2dXR0+/Q0myfy6QO06GmmF6eVN1zWVER6CBkNPnn8QjYqD3v5M6UPjL+MC7CCGFKCyAYmRLmzdFoS1nI2d4tXFzpUj2L6j9+ytuhWrlHUEIPyNLDVPjY2Rv7vgs7k0NzCFGHcMFMI+1B/88QA+DyK2Cs5cknYvg3V1QNwTWKVpP4DKAmsE6EEl4fyqhLdnAwVzPfGjVMGd3YDNRJZuVFcxcclEAa4LxF70vj4Z703TrNqJDcdPN1dCyoqBAkfNE/VSsD5glvcNFWRvbRQN2s/KB/45CWQwtVFoWatOfSdkL46qZV2isNvEuQuX55Ci2UT/fL/5FBnx1U2zIvmg6Fz3YQELr739Yh1dJ/FXvbClQs+sh47/T+KsQdsfXo03/cM4f01D0Qp7+N55Q1XJJYgrJmN7VdaoFYPk89rtfToiGQKmgs6AKoLZLe1wybIqGzvSwA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199015)(6486002)(478600001)(107886003)(6666004)(31686004)(6916009)(316002)(6506007)(53546011)(82960400001)(8676002)(86362001)(26005)(38100700002)(66476007)(4326008)(6512007)(41300700001)(8936002)(36756003)(2616005)(66556008)(44832011)(186003)(5660300002)(66946007)(2906002)(83380400001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVY1WkF3S0ZxVk92NFhzZzlUY01yQXlxall3dFhPOTh4dVIzQWJnZUVuWmlQ?=
 =?utf-8?B?QXRRZksvUlN3cHN1RjlHYU5sN2lZcUFER0NpbDk0QllvVWMxTDl0RW01c1NN?=
 =?utf-8?B?dldJZkJoaDduOTBDUVUyTmVTRjJRdm5xbVBHb0ptcGxuSkx4UHlDcVQ5c2Jm?=
 =?utf-8?B?TC8reGRsUFhBVXYzdVFBQnI1dkduaFVqRUN5cDBjZk5LRFoyZzRTemcrWlRp?=
 =?utf-8?B?Uk4vR2hHWXFVTGFpWmhkeTRlQ3ZZMmIzZVJTVUxPZDIxcmx6eE9seWJKVHc1?=
 =?utf-8?B?Wlg3akhvYzRsei95S0pkaWhLejdsZkJIWFVYMWNTNEhLWU83TnE5RVZJdU02?=
 =?utf-8?B?QjAwcFBZbXArckc0ckdRQkJpL2JEYVJFTXJzK01BTndFaWl5Q0xBY0ZCQzhr?=
 =?utf-8?B?KzhOcndSK094THhGV0JHOWM2RGQ5YW9jLzNVRE9XNlN1UzNqVXBkWk1nck1H?=
 =?utf-8?B?cnJFZDBMaXN2NE9tR2NDcEtXNTdNZk9sRzhxS2tWNnZ0SGkydWZZb2pua1RW?=
 =?utf-8?B?YlZkMHNnM1J0YWMwRVVzNWRReWpkQTNrUitVMEx3YzZiWnk0N0plcjJ6TDMv?=
 =?utf-8?B?OGJNUkFIVUxQeFFwcXJEdm5yUmgwS01kclVTV3BBcU5QbTNzNDNrenZNZHky?=
 =?utf-8?B?Rm1CcU9TQlptUFpsRDZMQ0JGV0xaWWtud1ZSYkpUbUtmTTNTVmhTNFNxWUtG?=
 =?utf-8?B?THU4OHQ1enZJSC9BamF5RVJEV3ZmT0FHZmFOQ2dVTHNNZlJud1N1ejRVaEdo?=
 =?utf-8?B?aWdtUXB6RDVxQkFjZXI1Mkt1d25EZTFPN3FCOWVQcllCOEF1WlNxaTJzQ0ky?=
 =?utf-8?B?bE5sWlNrTnJOY0NIM1pLYWszcUVtckhWY3dzaXh6SE5hcEFtOUFyd012Ylhu?=
 =?utf-8?B?eHJvSTJiaFp2RmFkdmloc00vVzJNRzQwWFdvdjhnRDRtbzZlei9wTzZaaWhR?=
 =?utf-8?B?bHM0Zk9oLytHanlyNmRNYlRxeXVoUGsrTVFka21GLzZZUkhqWWtxT1hsbVI0?=
 =?utf-8?B?RUJieU1MaGNEMndhNEcrT2IrZVI3czQ0V3ViQ01vbFJuWjJIMWtXUjBLc21z?=
 =?utf-8?B?NkxERFJZSE1UZ21ybDZqUzRpa1Judk9ROGNENENtZmlmNFA4OWo1VzhTUlE2?=
 =?utf-8?B?dDRNWUZuSmRydlh1dEo3RWZnUWwyMGVERnMxU2puK0txekp5MktJUXJDc2FK?=
 =?utf-8?B?M2Z2VnA5dlNzZXNVbkYxeWgrV25zQTVNc2tucTRtNEE1Z042NnVMUmdzU0xE?=
 =?utf-8?B?czVTYkx2TmEwcTlaWEZBTnpNMGFJbTZzd1hjQVdxeGdNZUZ5aTZnQkNwZk1l?=
 =?utf-8?B?NTUvQjV3WTExb0dOL0NPektWTnJrR3R5cU1PRnRtMXRIanRwQjd4T2phZ1pW?=
 =?utf-8?B?OGtXWlpJOWttWDBTdFpTcDZWT2p3bWEwOHFpQ1FTR2dGc053WmpoUUJNalVZ?=
 =?utf-8?B?UGdkMjM4VnpNWVpHcjJobEdsb05xbjM1MFlMS0UrMlYxSVR0VEVWRTZLbXVP?=
 =?utf-8?B?cVU0UXhuVm5tOXlSSnJsWXN4RjNxSmpmV0s3MUVVR2lGZFVDVWVJU1c3all4?=
 =?utf-8?B?N2hmc0o2UVpkU2JCYU9NUFNRVlEwWmM4M3N2Sis5MVI2VHVaUnlZbjFrNW9a?=
 =?utf-8?B?cDRFOERyLzQrekpBL2R0VGN2TFdmUno0Z0lMbzg0ZysrMmNHcGt6N05ObG5Z?=
 =?utf-8?B?T1NvNWpndXFTaGJZSDc3M1FaclV1OHVXM0h0SytZdkd6SlF0ZVRaalkyTnVZ?=
 =?utf-8?B?VjlWSmt5YTZRQ3UraE9JTHRqbm9najhHT05paU9DYlNadFBrWVdSVk1tTXZU?=
 =?utf-8?B?SENkZ1dRc052akF1RUZoVWk5cWpySDc2Um5MVGQ4bThSZFA3RzdwbFN0b2Jz?=
 =?utf-8?B?MEtzRVZ1Yk03cEhOcHVPUDlvcmZmUEN3Sk1kV2NqTlhVdmNnNFNWc0FBN3dx?=
 =?utf-8?B?S3NPK2YyL3hJQUl6Wkc2Tk9QQzM3L25sMDVjbmNMZll3N2QvSnhEVHJUNnVX?=
 =?utf-8?B?L0lqOUdrVEx1b0MwWklEMmhRanVzRDB4Y3FzclZtZzgreExNWHlxc3JPS1Z3?=
 =?utf-8?B?S2xvSWtVODFGZm5JQmpoa1UwOXNjZDdQcFFaV00wakg1MjBHNWZYdGZyRjdm?=
 =?utf-8?B?bE9SQTJ5SndaUjVPUi91Ty9lbUZvTHNtMDYzMGxGNUFsZmpZRGZmZVZNUWh4?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d5c338e-88af-40d2-6c63-08dac2873bee
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2022 19:18:50.9450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uKRKRIlBHkAu+bvNpxcbBnmYTsG3i8NUHu8L54sOh3S3GsuqEGdKB5LVsUTtrAtFALkjsRsgnieYNghhhpUIrq84YZ+m+qSfMjW93HYFaj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4761
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668021573; x=1699557573;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HH1bvb/EE1FIYdQHq8cboB9wGCItccIDZ/rIwy6MbEo=;
 b=cQ45hWnDpl4Ib2ZkJeOX/atD21g5WlfaSfDBKcHJQ5jXVkIghffyVa/x
 0dpJV0jdwGoiB8JfZpD6H3tPmFCGaCeVMY+6kyhFgiGsznsxPeAOxcot+
 ejtgEb7rXiVefgiw34WGNeGLZPzV1P7QLeXCan3RUU7Cxx6hGhjvKXvCG
 NF0+TaevFl6+FB+YA4ir1LpggxtmHhcL9Rtrt9UIJYSKFQjksBNin0TKu
 3WoBkP/1doSJiNYUnuRJrK59stArxVkK96ZnvFNso4XomX85wAYTNyMRh
 y3nzGdiZBTQeagQSuDYt6caze9hfLcmHB+zGjDTMPRAHHpFIeyPlAoS6e
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cQ45hWnD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v3 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8zMS8yMDIyIDI6NDYgQU0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgQmVuamFt
aW4sCj4gCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gCgpIZWxsbyBQYXVsLApUaGFu
a3MgZm9yIHRoZSByZXZpZXchCkkgYXBvbG9naXplIGZvciB0aGUgcHJvbG9uZ2VkIHJlc3BvbnNl
LiBJIHdhbnRlZCB0byByZWFjaCBvdXQgdG8gb3RoZXIgCmRldmVsb3BlcnMgYmVmb3JlIHJlc3Bv
bmRpbmcuCgo+IEFtIDI3LjEwLjIyIHVtIDE3OjI0IHNjaHJpZWIgQmVuamFtaW4gTWlrYWlsZW5r
bzoKPj4gUmVzZXRzIGhhcHBlbiB3aXRoIG9yIHdpdGhvdXQgdXNlciBpbnRlcmFjdGlvbi4gRm9y
IGV4YW1wbGUsIGluY2lkZW50cwo+PiBzdWNoIGFzIFRYIGhhbmcgb3IgYSByZWNvbmZpZ3VyYXRp
b24gb2YgcGFyYW1ldGVycyB3aWxsIHJlc3VsdCBpbiBhIHJlc2V0Lgo+IAo+IEFyZSB0aGVzZSBy
ZXNldHMgbG9nZ2VkIHNvbWV3aGVyZT8KPiAKCkRtZXNnIHdpbGwgc2hvdyBhIHJlc2V0IG9jY3Vy
cmVkLgpUaGUgSUNFIGRyaXZlciBhbHNvIG1haW50YWlucyBhIGNvdW50ZXIgb2YgaG93IG1hbnkg
cmVzZXRzIHdlcmUgcGVyZm9ybWVkLiAKQnV0IHRoaXMgaW5mb3JtYXRpb24gaXNuJ3QgY3VycmVu
dGx5IHJlcG9ydGVkIHRvIHRoZSB1c2VyLgoKPj4gRHVyaW5nIHJlc2V0LCBoYXJkd2FyZSBhbmQg
c29mdHdhcmUgc3RhdGlzdGljcyB3ZXJlIHNldCB0byB6ZXJvLiBUaGlzCj4+IGNyZWF0ZWQgYW4g
aXNzdWUgZm9yIHRoZSB1c2VyIHdoZXJlIGEgcmVzZXQgaGFwcGVucyBpbiB0aGUgYmFja2dyb3Vu
ZCwKPj4gc3RhdGlzdGljcyBzZXQgdG8gemVybywgYW5kIHRoZSB1c2VyIGNoZWNrcyBzdGF0aXN0
aWNzIGV4cGVjdGluZyB0aGVtIHRvCj4+IGJlIHBvcHVsYXRlZC4KPj4KPj4gVG8gZW5zdXJlIHRo
aXMgZG9lc24ndCBoYXBwZW4sIGtlZXAgYWNjdW11bGF0aW5nIHN0YXRzIG92ZXIgcmVzZXQuCj4g
Cj4gQXJlIHRoZXJlIHVzZXJzLCB3aGljaCBleHBlY3QgdGhlIHN0YXRpc3RpY3MgdG8gYmUgc2V0
IHRvIDAgYWZ0ZXIgYSByZXNldD8KPiAKClRoZXJlJ3MgY3VycmVudGx5IG5vIGZ1bmN0aW9uYWxp
dHkgZm9yIGEgdXNlciB0byBwdXJwb3NlZnVsbHkgaW5pdGlhdGUgYSBzdGFuZGFsb25lCnJlc2V0
LiBUaGUgb25seSB0aW1lIGEgcmVzZXQgd2lsbCBvY2N1ciBpcyBhcyByZXN1bHQgb2YgYW5vdGhl
ciBwcm9jZXNzLiBTaW5jZSB0aGUKYWJpbGl0eSBpc24ndCBwb3NzaWJsZSwgSSBkb24ndCBzZWUg
d2h5IGEgY3VycmVudCB1c2VyIHdvdWxkIGV4cGVjdCBzdGF0aXN0aWNzIHRvCnNldCB0byB6ZXJv
IG92ZXIgcmVzZXQuIElmIHRoZXkgZGlkIHdhbnQgdG8gcmVzZXQgc3RhdGlzdGljcyB1bmxvYWRp
bmcvcmVsb2FkaW5nCnRoZSBkcml2ZXIgd2lsbCByZXNldCBzdGF0aXN0aWNzLgoKPiBBbHNvLCBg
cnRubF9saW5rX3N0YXRzNjRgIChgaW5jbHVkZS91YXBpL2xpbnV4L2lmX2xpbmsuaGApIGNvbnRh
aW5zIG1vcmUgZmllbGRzIHRoYW4gcngvdHggcGFja2V0cy9ieXRlcy4gRG8gdGhleSBuZWVkIHRv
IGJlIGFkYXB0ZWQgdG9vPwo+IAoKVGhlIG90aGVyIGZpZWxkcyBpbiBydG5sX2xpbmtfc3RhdHM2
NCBhcmVuJ3QgY3VycmVudGx5IHVzZWQuCgo+PiAxLiBSZW1vdmUgZnVuY3Rpb24gY2FsbHMgd2hp
Y2ggcmVzZXQgaGFyZHdhcmUgYW5kIG5ldGRldiBzdGF0aXN0aWNzLgo+PiAyLiBEbyBub3Qgcm9s
bG92ZXIgc3RhdGlzdGljcyBpbiBpY2Vfc3RhdF91cGRhdGU0MCBkdXJpbmcgcmVzZXQuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIE1pa2FpbGVua28gPGJlbmphbWluLm1pa2FpbGVua29A
aW50ZWwuY29tPgo+PiAtLS0KPiAKPiBEbyB5b3UgaGF2ZSBhbiBvdmVydmlldywgd2hhdCBjaGFu
Z2VkIGJldHdlZW4gdjEgYW5kIHYzPwo+IAoKQWRkaW5nIHRoaXMgdG8gdGhlIG5leHQgdmVyc2lv
biAodjQpOgp2MjogRml4ZWQgc3R5bGluZwp2MzogQWxsb2NhdGUgc3RhdGlzdGljIHN0cnVjdHVy
ZXMgd2hlbiBYRFAgaXMgZW5hYmxlZAp2NDogQWRkZWQgcmV2aXNpb24gbm90ZXMKCj4+IMKgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEg
Kwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RjYl9saWIuYyB8wqAg
MyArKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jwqDCoMKg
wqAgfMKgIDcgKysrKysKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9t
YWluLmPCoMKgwqAgfCAzMCArKysrKysrKysrKysrKysrKy0tLQo+PiDCoCA0IGZpbGVzIGNoYW5n
ZWQsIDM3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmggYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlLmgKPj4gaW5kZXggMDAxNTAwYWZjNGE2Li5lMGVkMmYxY2M0MzQgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+PiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmgKPj4gQEAgLTM1OCw2ICszNTgs
NyBAQCBzdHJ1Y3QgaWNlX3ZzaSB7Cj4+IMKgIMKgwqDCoMKgwqAgLyogVlNJIHN0YXRzICovCj4+
IMKgwqDCoMKgwqAgc3RydWN0IHJ0bmxfbGlua19zdGF0czY0IG5ldF9zdGF0czsKPj4gK8KgwqDC
oCBzdHJ1Y3QgcnRubF9saW5rX3N0YXRzNjQgbmV0X3N0YXRzX3ByZXY7Cj4+IMKgwqDCoMKgwqAg
c3RydWN0IGljZV9ldGhfc3RhdHMgZXRoX3N0YXRzOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBpY2Vf
ZXRoX3N0YXRzIGV0aF9zdGF0c19wcmV2Owo+PiDCoCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2RjYl9saWIuYwo+PiBpbmRleCA1ZTZkMTY4YmFjNDguLjRmM2E4NDhmNGU5
OSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2Jf
bGliLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kY2JfbGli
LmMKPj4gQEAgLTg3NCw2ICs4NzQsOSBAQCB2b2lkIGljZV91cGRhdGVfZGNiX3N0YXRzKHN0cnVj
dCBpY2VfcGYgKnBmKQo+PiDCoMKgwqDCoMKgIHByZXZfcHMgPSAmcGYtPnN0YXRzX3ByZXY7Cj4+
IMKgwqDCoMKgwqAgY3VyX3BzID0gJnBmLT5zdGF0czsKPj4gwqAgK8KgwqDCoCBpZiAoaWNlX2lz
X3Jlc2V0X2luX3Byb2dyZXNzKHBmLT5zdGF0ZSkpCj4+ICvCoMKgwqDCoMKgwqDCoCBwZi0+c3Rh
dF9wcmV2X2xvYWRlZCA9IGZhbHNlOwo+PiArCj4+IMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8
IDg7IGkrKykgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWNlX3N0YXRfdXBkYXRlMzIoaHcsIEdM
UFJUX1BYT0ZGUlhDKHBvcnQsIGkpLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwZi0+c3RhdF9wcmV2X2xvYWRlZCwKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2xpYi5jCj4+IGluZGV4IDkzOGJhOGMyMTVjYi4uYTU5NDUzMTliNjJlIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMKPj4gQEAgLTE3OTUs
MTEgKzE3OTUsMTUgQEAgdm9pZCBpY2VfdXBkYXRlX2V0aF9zdGF0cyhzdHJ1Y3QgaWNlX3ZzaSAq
dnNpKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGljZV9ldGhfc3RhdHMgKnByZXZfZXMs
ICpjdXJfZXM7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGljZV9odyAqaHcgPSAmdnNpLT5iYWNrLT5o
dzsKPj4gK8KgwqDCoCBzdHJ1Y3QgaWNlX3BmICpwZiA9IHZzaS0+YmFjazsKPj4gwqDCoMKgwqDC
oCB1MTYgdnNpX251bSA9IHZzaS0+dnNpX251bTvCoMKgwqAgLyogSFcgYWJzb2x1dGUgaW5kZXgg
b2YgYSBWU0kgKi8KPj4gwqAgwqDCoMKgwqDCoCBwcmV2X2VzID0gJnZzaS0+ZXRoX3N0YXRzX3By
ZXY7Cj4+IMKgwqDCoMKgwqAgY3VyX2VzID0gJnZzaS0+ZXRoX3N0YXRzOwo+PiDCoCArwqDCoMKg
IGlmIChpY2VfaXNfcmVzZXRfaW5fcHJvZ3Jlc3MocGYtPnN0YXRlKSkKPj4gK8KgwqDCoMKgwqDC
oMKgIHZzaS0+c3RhdF9vZmZzZXRzX2xvYWRlZCA9IGZhbHNlOwo+PiArCj4+IMKgwqDCoMKgwqAg
aWNlX3N0YXRfdXBkYXRlNDAoaHcsIEdMVl9HT1JDTCh2c2lfbnVtKSwgdnNpLT5zdGF0X29mZnNl
dHNfbG9hZGVkLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnByZXZfZXMtPnJ4
X2J5dGVzLCAmY3VyX2VzLT5yeF9ieXRlcyk7Cj4+IMKgIEBAIC0zMjc5LDYgKzMyODMsOCBAQCBp
bnQgaWNlX3ZzaV9yZWJ1aWxkKHN0cnVjdCBpY2VfdnNpICp2c2ksIGJvb2wgaW5pdF92c2kpCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyX3ZlY3RvcnM7Cj4+IMKgIMKgwqDC
oMKgwqDCoMKgwqDCoCBpY2VfdnNpX21hcF9yaW5nc190b192ZWN0b3JzKHZzaSk7Cj4+ICsKPj4g
K8KgwqDCoMKgwqDCoMKgIHZzaS0+c3RhdF9vZmZzZXRzX2xvYWRlZCA9IGZhbHNlOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgaWYgKGljZV9pc194ZHBfZW5hX3ZzaSh2c2kpKSB7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IGljZV92c2lfZGV0ZXJtaW5lX3hkcF9yZXModnNpKTsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4gQEAgLTMzMTUsNiArMzMy
MSw3IEBAIGludCBpY2VfdnNpX3JlYnVpbGQoc3RydWN0IGljZV92c2kgKnZzaSwgYm9vbCBpbml0
X3ZzaSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGdvdG8gZXJyX3ZlY3RvcnM7Cj4+IMKgICvCoMKgwqDCoMKgwqDCoCB2c2ktPnN0
YXRfb2Zmc2V0c19sb2FkZWQgPSBmYWxzZTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+
PiDCoMKgwqDCoMKgIGNhc2UgSUNFX1ZTSV9DSE5MOgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KHRlc3RfYml0KElDRV9GTEFHX1JTU19FTkEsIHBmLT5mbGFncykpIHsKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4gaW5kZXggMTg5MTYwZGFjYWQ5Li5hYzg5
M2NlMzllNWUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFp
bi5jCj4+IEBAIC02NDg3LDYgKzY0ODcsNyBAQCBpY2VfdXBkYXRlX3ZzaV90eF9yaW5nX3N0YXRz
KHN0cnVjdCBpY2VfdnNpICp2c2ksCj4+IMKgwqAgKi8KPj4gwqAgc3RhdGljIHZvaWQgaWNlX3Vw
ZGF0ZV92c2lfcmluZ19zdGF0cyhzdHJ1Y3QgaWNlX3ZzaSAqdnNpKQo+PiDCoCB7Cj4+ICvCoMKg
wqAgc3RydWN0IHJ0bmxfbGlua19zdGF0czY0ICpuZXRfc3RhdHMsICpzdGF0c19wcmV2Owo+PiDC
oMKgwqDCoMKgIHN0cnVjdCBydG5sX2xpbmtfc3RhdHM2NCAqdnNpX3N0YXRzOwo+PiDCoMKgwqDC
oMKgIHU2NCBwa3RzLCBieXRlczsKPj4gwqDCoMKgwqDCoCBpbnQgaTsKPj4gQEAgLTY1MjYsMTAg
KzY1MjcsMjggQEAgc3RhdGljIHZvaWQgaWNlX3VwZGF0ZV92c2lfcmluZ19zdGF0cyhzdHJ1Y3Qg
aWNlX3ZzaSAqdnNpKQo+PiDCoCDCoMKgwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+PiDCoCAt
wqDCoMKgIHZzaS0+bmV0X3N0YXRzLnR4X3BhY2tldHMgPSB2c2lfc3RhdHMtPnR4X3BhY2tldHM7
Cj4+IC3CoMKgwqAgdnNpLT5uZXRfc3RhdHMudHhfYnl0ZXMgPSB2c2lfc3RhdHMtPnR4X2J5dGVz
Owo+PiAtwqDCoMKgIHZzaS0+bmV0X3N0YXRzLnJ4X3BhY2tldHMgPSB2c2lfc3RhdHMtPnJ4X3Bh
Y2tldHM7Cj4+IC3CoMKgwqAgdnNpLT5uZXRfc3RhdHMucnhfYnl0ZXMgPSB2c2lfc3RhdHMtPnJ4
X2J5dGVzOwo+PiArwqDCoMKgIG5ldF9zdGF0cyA9ICZ2c2ktPm5ldF9zdGF0czsKPj4gK8KgwqDC
oCBzdGF0c19wcmV2ID0gJnZzaS0+bmV0X3N0YXRzX3ByZXY7Cj4+ICsKPj4gK8KgwqDCoCAvKiBj
bGVhciBwcmV2IGNvdW50ZXJzIGFmdGVyIHJlc2V0ICovCj4+ICvCoMKgwqAgaWYgKHZzaV9zdGF0
cy0+dHhfcGFja2V0cyA8IHN0YXRzX3ByZXYtPnR4X3BhY2tldHMgfHwKPj4gK8KgwqDCoMKgwqDC
oMKgIHZzaV9zdGF0cy0+cnhfcGFja2V0cyA8IHN0YXRzX3ByZXYtPnJ4X3BhY2tldHMpIHsKPiAK
PiBXaHkgbm90IHVuY29uZGl0aW9uYWxseSBjbGVhciBpdD8KPiAKPj4gK8KgwqDCoMKgwqDCoMKg
IHN0YXRzX3ByZXYtPnR4X3BhY2tldHMgPSAwOwo+PiArwqDCoMKgwqDCoMKgwqAgc3RhdHNfcHJl
di0+dHhfYnl0ZXMgPSAwOwo+PiArwqDCoMKgwqDCoMKgwqAgc3RhdHNfcHJldi0+cnhfcGFja2V0
cyA9IDA7Cj4+ICvCoMKgwqDCoMKgwqDCoCBzdGF0c19wcmV2LT5yeF9ieXRlcyA9IDA7Cj4+ICvC
oMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgLyogdXBkYXRlIG5ldGRldiBjb3VudGVycyAqLwo+PiAr
wqDCoMKgIG5ldF9zdGF0cy0+dHhfcGFja2V0cyArPSB2c2lfc3RhdHMtPnR4X3BhY2tldHMgLSBz
dGF0c19wcmV2LT50eF9wYWNrZXRzOwo+PiArwqDCoMKgIG5ldF9zdGF0cy0+dHhfYnl0ZXMgKz0g
dnNpX3N0YXRzLT50eF9ieXRlcyAtIHN0YXRzX3ByZXYtPnR4X2J5dGVzOwo+PiArwqDCoMKgIG5l
dF9zdGF0cy0+cnhfcGFja2V0cyArPSB2c2lfc3RhdHMtPnJ4X3BhY2tldHMgLSBzdGF0c19wcmV2
LT5yeF9wYWNrZXRzOwo+PiArwqDCoMKgIG5ldF9zdGF0cy0+cnhfYnl0ZXMgKz0gdnNpX3N0YXRz
LT5yeF9ieXRlcyAtIHN0YXRzX3ByZXYtPnJ4X2J5dGVzOwo+PiArCj4+ICvCoMKgwqAgc3RhdHNf
cHJldi0+dHhfcGFja2V0cyA9IHZzaV9zdGF0cy0+dHhfcGFja2V0czsKPj4gK8KgwqDCoCBzdGF0
c19wcmV2LT50eF9ieXRlcyA9IHZzaV9zdGF0cy0+dHhfYnl0ZXM7Cj4+ICvCoMKgwqAgc3RhdHNf
cHJldi0+cnhfcGFja2V0cyA9IHZzaV9zdGF0cy0+cnhfcGFja2V0czsKPj4gK8KgwqDCoCBzdGF0
c19wcmV2LT5yeF9ieXRlcyA9IHZzaV9zdGF0cy0+cnhfYnl0ZXM7Cj4+IMKgIMKgwqDCoMKgwqAg
a2ZyZWUodnNpX3N0YXRzKTsKPj4gwqAgfQo+PiBAQCAtNjU5MSw2ICs2NjEwLDkgQEAgdm9pZCBp
Y2VfdXBkYXRlX3BmX3N0YXRzKHN0cnVjdCBpY2VfcGYgKnBmKQo+PiDCoMKgwqDCoMKgIHByZXZf
cHMgPSAmcGYtPnN0YXRzX3ByZXY7Cj4+IMKgwqDCoMKgwqAgY3VyX3BzID0gJnBmLT5zdGF0czsK
Pj4gwqAgK8KgwqDCoCBpZiAoaWNlX2lzX3Jlc2V0X2luX3Byb2dyZXNzKHBmLT5zdGF0ZSkpCj4+
ICvCoMKgwqDCoMKgwqDCoCBwZi0+c3RhdF9wcmV2X2xvYWRlZCA9IGZhbHNlOwo+PiArCj4+IMKg
wqDCoMKgwqAgaWNlX3N0YXRfdXBkYXRlNDAoaHcsIEdMUFJUX0dPUkNMKHBvcnQpLCBwZi0+c3Rh
dF9wcmV2X2xvYWRlZCwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZwcmV2X3Bz
LT5ldGgucnhfYnl0ZXMsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmY3VyX3Bz
LT5ldGgucnhfYnl0ZXMpOwo+IAo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
