Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5191E6FC9EE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 17:10:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB8C141725;
	Tue,  9 May 2023 15:10:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB8C141725
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683645003;
	bh=8f8deBEmdi/iErjTiyYwsr9bsOM7q1Zh5RMHB0oC8MU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=infgCEPP/crv/hProhrtq1Gm/p2D7SSbtn7NE6+roe1uFWmvBazJ9iIG39/bBxzE+
	 cc5qe1DbgbEtBnlclqk9b67YTuA7T8H/aMcdKDujbKsEwuBXhL8CkRovXqOmZ91i3T
	 dg6V744/kFwits/pSTerVeSNCDi9jDjwBGzyP29tG9O6L1cdY8JlsnGj+BQYVmutox
	 rbSIwMWffscha9qImkI4RHdfCd0FpGCnqtRjT92I6Fh0H4I3YhtV45YBi76Gh8pJDq
	 YB2wwTUEaOKKx3W8SX2qklkaz9LGjGf55k7+86SmGaLkuEIphhTcx/sIbBUJyWF5Qz
	 UEA6xfqz9QX6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L8yPBSDmuC1S; Tue,  9 May 2023 15:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6630041505;
	Tue,  9 May 2023 15:10:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6630041505
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D39391BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 15:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B807E4038D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 15:09:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B807E4038D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w2ByWYE6p3bl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 15:09:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE97040131
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE97040131
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 15:09:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="347416486"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="347416486"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 08:08:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="698937563"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="698937563"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 09 May 2023 08:08:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 08:08:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 08:08:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 08:08:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGtbVfJaNgs4IolEpId1VGYYV90G+Cz/jcE2EwwEvHTahrt28IfBZPdkw7nBuP9sYT4D+8Snrkumu9TyfF8YNeiMtuyXSEqvcozvT8GuOPRBbro91O+uRikXLyRuqqshYmrBQMPN5fd6YLrnErHXHToc51AizMm9vYNGbEwZqMD+ZsmstdlMcLcQXAx92S1aMNX1IxbzRoyvA8VL8afpqrRSQrEcApIbhwLkRmbimrfseFZTwsBXg9RJec7T7slfTphKy3NQlUA0n6x1BrdIPIa42wIoojLmDII6Sq4A7tW/P+04FxR7NxrG2f5SBfhhv5ioMkuGKXunUvAtqfEvfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UlbMn/dl1Gb6akQe8C9RRHzjiyu0Z8bT3clx5i5zTqU=;
 b=e/DMMTATSCwI9WS9C3824bykD3jja7gdsZ/OEjjWGW8IRUKZC9s6rcEtSigVpOTMAHSxwXlba+MeK3Iyo4SyH0pEfx1QMWBMUbFQay0rH5kXUk4wivCUiwYF7gRYHyPic2U++1nyEnpn0Ng7v3AqY6f7OsJEc5r0bG5kWwJaJRcLducyCOTQpQJNmAwYvBdORaNhaGaMWs/yr1DLc+cYil8p/PKW9EpxyJ9CMnXW0hCTvLEwmMjkDuE7EBU7W+6LPzyMQfqBBSnuqrw4QsZQt6mRREforvlSnTYxA/KT4/kInGzP1t3GL+CxNshDcH9rsgZ4rsnnchFRquSGf8k8tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 15:08:41 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::5dbd:b958:84b4:80e1]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::5dbd:b958:84b4:80e1%5]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 15:08:41 +0000
Message-ID: <af492889-6b0d-024d-91e9-a953f99419d8@intel.com>
Date: Tue, 9 May 2023 17:06:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-10-wojciech.drewek@intel.com>
 <72f95cf5-d922-1f3d-2495-e8bdea6de247@intel.com>
 <MW4PR11MB5776A66941471BB2ABF7E99DFD769@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <MW4PR11MB5776A66941471BB2ABF7E99DFD769@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0118.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::19) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CY5PR11MB6366:EE_
X-MS-Office365-Filtering-Correlation-Id: f105a2bf-bb70-48ce-f6c7-08db509f4617
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vbuumXX5HkQbZHN5TT5bLFzvsgFs0ocMdKdv1JGQTJZRou632w9I9Br6T2HsMy1PiKsqO+5jtejPAiuBXFZtpfoN1ZeNEggoirUwMWP3byWruWykOVnj8BDwHJZJk8SI7j+vLYWq5V13h90AUC4yWkiXKzGXFIzbCNYjlYmzFCLimNHEq5fG82w0H4SexCN9nx17U1rwMqhoOD4/+LatY6h9ffni+QfMUdhZ4n18Q+nzdei1t97E1rSXItCDT96J4nDtOmEyH2i5FxJrEmyASXPYpqRU90NWZmmoL8xxOci2MDA1XAYj2Sqx/vE/engwW2dayr4ReMo/UwHG3pCZ+xIqMd7b63A49uyrHeHd191Zo6fuNIGeLDoxHoEi5LMUE9hi1/7xZbniuctya3p1StJVGYjKvyXmtYY62Wh/x8QnHAC94BJHx6S/PyNTMMKtMFQfOipkGPY1+/QZ874EFtgim/m6LkmNRrrOraOUNOV9gWynDE+3LB8lGYLS2d2qlxukCYsMln6kZagvBv98iLWFa4pXG9WTUs0l4z2aKWs3FpxPJevJk1yYNvDiu4kTYIaXsIWoy3tFGA+WyvgNwVmYFrJ9SM1AnSWo/ee2slCEYwLZe7g4BiAMaootbUtIB8aGTeTS/6BjUW5YYGi6Zw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199021)(31686004)(36756003)(82960400001)(41300700001)(2906002)(86362001)(31696002)(38100700002)(8936002)(8676002)(5660300002)(6862004)(66476007)(66556008)(6636002)(4326008)(478600001)(66946007)(83380400001)(316002)(37006003)(53546011)(186003)(6506007)(6512007)(26005)(54906003)(6486002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzlRSzVUcU9GY3Y0NFM0c1lBOVlabE1YTEFIYmhwdmZ2Qm5SUjZPRUpRQXZP?=
 =?utf-8?B?OHl1MjhOeEVrZlJodHhHbWhMZ0N3YlROSmYyM3g3SktnN004dGQ3VFdvSCtS?=
 =?utf-8?B?UnBBYXJBcVRONGFzK2ZHTW5OckNIanJJNkFaR2NtaEpCVzlOQTZ4WlJXbk91?=
 =?utf-8?B?US9ROGVITTErTFZSY2s5U0tIZlJ0S3BYUjNNK1VzMC9zVDI4eXovbFJmK3lW?=
 =?utf-8?B?bVZjY2JqNVdTZUUzTGxCTGVFaldXZ0FiSnc3WFd5RUJGT1IrbFp1MWJxRDd6?=
 =?utf-8?B?dTRIWmFkVXV0bGtyZENZVDVWU0Q5MnJkZ0tPaHNrUkRoMDZVWWRJalQxc2lU?=
 =?utf-8?B?d0t6Tk85Sk56dTZrb1pBQ3E4QWVteGsxblNjTnorYnYzWlpsOVpkQUpleTFJ?=
 =?utf-8?B?bER3T3NNbnJweUFyc1p1SzlvQS9NK3h4WHQ0TTNFMDdkSmlhc2x4Q1I0OHhD?=
 =?utf-8?B?VlI5ZU5KQTZHUzFjQUFkNFNKaXdkMnRISGx4dTF4RkRkSDlxTmNKb1BpWTJl?=
 =?utf-8?B?b3JQekVOTWVJbWdCOXNHQ1B6d0VEY0c1cGJ0RDBUYjl2bnZ4TzB3MnFscUUw?=
 =?utf-8?B?Ny8wa2hjYnd5RTRYWENBekRYUU1PK1NSYVVjYm5qNDNKRE9ib1kwK1h0SmtT?=
 =?utf-8?B?UnNRMWlIN0NBcXNkeS9CbzRZVlRmOFhVcGJ5anZ5Z0dFdjg3ZDd2TG1KUEZL?=
 =?utf-8?B?OWZTamJOTWlmR0w4R0kwMmFnUWxubjVxT2pCb2lxeUE2Z2NLTkYxK0lUMFhm?=
 =?utf-8?B?S0k1RENuZFFGUmtFbG0xa0c2MnpWY0xnb083VXo2YXRONVJwOEs1SDRMUENG?=
 =?utf-8?B?MnpRUHRkNmRKcTJTa0pQT1RpSy9XMnBuVmJmdXZsQ1RyTElueTVNeVdjVUJ5?=
 =?utf-8?B?YVNYcEFyZlE5UldBZy8vaGhpcFRJM1J0bm1nck4zUVc4a3o2MklMbVJCRXcr?=
 =?utf-8?B?bDJKQVRNMFM2eUlTcktMeENjUU5SVHVoK2FEd2JuWEVoMlJHci8vUm5IRW5l?=
 =?utf-8?B?ZHdzbHdRWUFTR3JDeFRlVlZGVnJ6bmpSRDdxakwyRXdreHZxVUFaZWo3ak56?=
 =?utf-8?B?c05FSjZ1K3Bwd0lRMHZteW5TTWxXemdzcWRMR1g1aWlUNG1MUEZNMXpwelpa?=
 =?utf-8?B?TmduS1FzMEVrRjdJT2UvSU1RYnE1WEVyTjgzNGNzOVY0R241c0RqaXcvZ2xW?=
 =?utf-8?B?YkIvV1djK3VtZGZrdURZMDIwL3BSR2RRNWlzQnFRTGZCaHNKaUMxMSs3UHUw?=
 =?utf-8?B?SGdzTnRFdW5NTnNrUlh3WXl4Uk94bnMvemorZTNOSGdIb0Q1VTkrREpFV2s0?=
 =?utf-8?B?TG1kV0RHR01YOXRsWkl5M0JhYVhCYjdHQUdhaXJTU3JzcndPRHMxbTNNR3ZU?=
 =?utf-8?B?ZEU2ZjFVSEpOOVF4TUZOK3FnaWFVQUlZd0dQZUt2U1ZYRzVUc1hFVm1mSWV5?=
 =?utf-8?B?M3VFWm9aMVZ4Z3VGRFdNZ1BlSVV2WmNMUnNHQ1FYajdWZUNWaW9WYU0wcjNi?=
 =?utf-8?B?MXRJdnI3Q3c0YkFoRGJ3cHcrYk5pdURwOHJ3R2ZZMWJ2MXdncUxKN2VMbVEr?=
 =?utf-8?B?cWdFNXNvWGZpOWh4RE9teXZXMy9NUW8rMEtmMENjVzVwQmV1THcxdWt0OGZJ?=
 =?utf-8?B?cHRScmt6anhyN1VuK1p4aFp4Wlo2M2FsMXdoUFVCaEJlc3FMK3pQUVgyYVpq?=
 =?utf-8?B?eHNsZHQ2K0NURHhIcmVidkJhNGVSSE5TTUdPZ05xaERXcGxYdGxnVVhPTHl0?=
 =?utf-8?B?R1gvV0lsdjlMLzNyM1kwT1F1Y0lCZlgyWjd0MmtjNDVQazg0WG8wVFFKMlJP?=
 =?utf-8?B?TkdhZXRvSzcxc3kyTVRYMWVPc25pRnNJcnJVeTk4ZEgzanRUSmxBS0x1cDdL?=
 =?utf-8?B?UHFmY3Y5RDIxNVZUTzhqZW9McHM2MmJnQzZ4RW13a0EvUXA5YUVCTXIwZjR1?=
 =?utf-8?B?SXhLRlRZNC95V2JVT1NIaCtWVTFqVDEwUTJwUzBMWlFjYldtNnpud21YTlV6?=
 =?utf-8?B?WmZ2cVU4OEV6U2J4Q0p4TzlkRVFRSzd1cjVDU0VNMFlvSjVWeTVON00wakJQ?=
 =?utf-8?B?Q1lSeEg1ZFkwQ2dmSXhOeFh3L1BFNE96ZW1vQ3ZhdmJ0ZDdIZmNYcWs1eHRF?=
 =?utf-8?B?M1RldE9rTTYzckJuamRETm14S0Q4WGc3WXNoVE1RWDA0NWd3dFZ2aXd0OTln?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f105a2bf-bb70-48ce-f6c7-08db509f4617
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 15:08:41.0778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hUMuPobwh6JHHV37axbqdIYfbhY8CspzxcanQokYwx2pgnT1IwMBT/kU1VX5vE27WQ+uPROPl/DwGpsnL/LbJUginugIYDbgD6+6MP0BpXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683644996; x=1715180996;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uk2Wjh+IkyRMn8n9/c1CEnwQ3Qklsuer9OtdAAdE8+I=;
 b=nGx27eP3htrMPQ0li1x6VdE3LdN2SUt0NRL8UG1njrx9SGf6qUrpyU/O
 3uPt20cxdus1L5dc+WHY9hS5nNYOp/L1yzI1hwB8hP2WWt3CrLOkJ9y71
 tl4b0ew2OWW1rvCxbdA4k5EQsmB5h4ZV+iFbLjA3CKp9RGuRohEWhv0Me
 zTAEjBs5RLovWXMQ4+4Ag9hA6URCw0XzGQofRFehi5oqEmJFBAaomAzRQ
 tBp1iXtB6xnBW7o5IITyGHtoncpGs1ZXzKCiWFZNohHEwXUoIy7r4FfHw
 rlzT5mfqKOsBbf5r3pU9+yvGuAdzn8U6pUJSC7PM6fi6spccGnTIYeHAz
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nGx27eP3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 09/12] ice: implement bridge
 port vlan
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgpEYXRlOiBU
dWUsIDkgTWF5IDIwMjMgMTM6MjU6NDAgKzAyMDAKCj4gCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4+IEZyb206IExvYmFraW4sIEFsZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtp
bkBpbnRlbC5jb20+Cj4+IFNlbnQ6IHBpxIV0ZWssIDIxIGt3aWV0bmlhIDIwMjMgMTg6MzUKPj4g
VG86IERyZXdlaywgV29qY2llY2ggPHdvamNpZWNoLmRyZXdla0BpbnRlbC5jb20+Cj4+IENjOiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
RXJ0bWFuLCBEYXZpZCBNIDxkYXZpZC5tLmVydG1hbkBpbnRlbC5jb20+Owo+PiBtaWNoYWwuc3dp
YXRrb3dza2lAbGludXguaW50ZWwuY29tOyBtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbTsg
Q2htaWVsZXdza2ksIFBhd2VsIDxwYXdlbC5jaG1pZWxld3NraUBpbnRlbC5jb20+Owo+PiBTYW11
ZHJhbGEsIFNyaWRoYXIgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4KPj4gU3ViamVjdDog
UmU6IFtQQVRDSCBuZXQtbmV4dCAwOS8xMl0gaWNlOiBpbXBsZW1lbnQgYnJpZGdlIHBvcnQgdmxh
bgoKWy4uLl0KCj4+PiArCS8qIFNldHRpbmcgcG9ydCB2bGFuIG9uIHVwbGluayBpc24ndCBzdXBw
b3J0ZWQgYnkgaHcgKi8KPj4+ICsJaWYgKHBvcnQtPnR5cGUgPT0gSUNFX0VTV0lUQ0hfQlJfVVBM
SU5LX1BPUlQpCj4+PiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4+PiArCj4+PiArCWlmIChwb3J0
LT5wdmlkKSB7Cj4+PiArCQlkZXZfaW5mbyhkZXYsCj4+Cj4+IGRldl9lcnIoKT8KPiAKPiBUbyBt
ZSBpdCdzIG5vdCBhbiBlcnJvciwgcG9ydCB2bGFuIGlzIGFscmVhZHkgY29uZmlndXJlZAoKVXN1
YWxseSwgZXZlcnkgdXNlciBhY3Rpb24gbGVhZGluZyB0byBhbiBlcnJubyBpbnN0ZWFkIG9mIDAg
KHN1Y2Nlc3MpIGlzCmFuIGVycm9yLCBpdCdzIHRoZSB1c2VyIHdobyBpcyByZXNwb25zaWJsZSBm
b3Igbm90IGRvaW5nIHN1Y2ggdGhpbmdzLgpBIGJpdCBtb3JlIGRldGFpbHMgYmVsb3csIEkgcmVw
bHkgYm90dG9tLXVwIHRoaXMgdGltZSA6egoKPiAKPj4KPj4+ICsJCQkgIlBvcnQgVkxBTiAodnNp
PSV1LCB2aWQ9JXUpIGFscmVhZHkgZXhpc3RzIG9uIHRoZSBwb3J0LCByZW1vdmUgaXQgYmVmb3Jl
IGFkZGluZyBuZXcgb25lXG4iLAo+Pj4gKwkJCSBwb3J0LT52c2lfaWR4LCBwb3J0LT5wdmlkKTsK
Pj4+ICsJCXJldHVybiAtRUVYSVNUOwo+Pgo+PiBIbW0sIGlzbid0IC1FQlVTWSBtb3JlIGNvbW1v
biBmb3Igc3VjaCBjYXNlcz8KPj4KPj4gKGJlbG93IGFzIHdlbGwpCj4gCj4gSSBkb24ndCB0aGlu
ayBzbywgdXNlciBpcyB0cnlpbmcgdG8gY29uZmlndXJlIHNvbWV0aGluZyB0aGF0IGlzIGFscmVh
ZHkgZG9uZS4KCisKCj4+PiBAQCAtNjM5LDE0ICs2OTcsMjkgQEAgaWNlX2Vzd2l0Y2hfYnJfdmxh
bl9jcmVhdGUodTE2IHZpZCwgdTE2IGZsYWdzLCBzdHJ1Y3QgaWNlX2Vzd19icl9wb3J0ICpwb3J0
KQo+Pj4KPj4+ICAJdmxhbi0+dmlkID0gdmlkOwo+Pj4gIAl2bGFuLT5mbGFncyA9IGZsYWdzOwo+
Pj4gKwlpZiAoKGZsYWdzICYgQlJJREdFX1ZMQU5fSU5GT19QVklEKSAmJgo+Pj4gKwkgICAgKGZs
YWdzICYgQlJJREdFX1ZMQU5fSU5GT19VTlRBR0dFRCkpIHsKPj4+ICsJCWVyciA9IGljZV9lc3dp
dGNoX2JyX3NldF9wdmlkKHBvcnQsIHZsYW4pOwo+Pj4gKwkJaWYgKGVycikKPj4+ICsJCQlnb3Rv
IGVycl9zZXRfcHZpZDsKPj4+ICsJfSBlbHNlIGlmICgoZmxhZ3MgJiBCUklER0VfVkxBTl9JTkZP
X1BWSUQpIHx8Cj4+PiArCQkgICAoZmxhZ3MgJiBCUklER0VfVkxBTl9JTkZPX1VOVEFHR0VEKSkg
ewo+Pj4gKwkJZGV2X2luZm8oZGV2LCAiVkxBTiBwdXNoIGFuZCBwb3AgYXJlIHN1cHBvcnRlZCBv
bmx5IHNpbXVsdGFuZW91c2x5XG4iKTsKPj4KPj4gKHNhbWUgZm9yIGRldl9lcnIoKSwgYXMgd2Vs
bCBhcyBiZWxvdykKPiAKPiAKPiBBZ2FpbiwgaXMgdGhpcyBhbiBlcnJvciByZWFsbHk/IFdlIGp1
c3QgZG9uJ3Qgc3VwcG9ydCBzdWNoIGNhc2UuCgpXZWxsLCAibm90IHN1cHBvcnRlZCIgaXMgYW4g
ZXJyb3IgaW4gdGhlIGtlcm5lbCB1c3VhbGx5LiBJdCdzIGxpa2UsCiJ1c2VyIGlzIHJlc3BvbnNp
YmxlIGZvciBjaGVja2luZyB0aGUgY2FwYWJpbGl0aWVzIGJlZm9yZSB0cnlpbmcgdG8KY29uZmln
dXJlL3VzZSBzb21ldGhpbmcsIGlmIGhlIGRpZG4ndCBjYXJlLCB0aGVuIHdlIGRvbid0IGFzIHdl
bGwiIDpEClRoZSBtYWluIHByb2JsZW0gaGVyZSBpcyBhcyBmb2xsb3dzOgoKMS4gTW9zdCBkaXN0
cm9zIGhhdmUgInF1aWV0IiBpbiB0aGUgZGVmYXVsdCBjb21tYW5kIGxpbmUsIHdoaWNoIGxpbWl0
cwogICB0aGUgZGVmYXVsdCBvdXRwdXQgdG8gZXJyb3JzKy4KMi4gVXNlciB0cmllcyB0byBjb25m
aWd1cmUgc29tZXRoaW5nLCB3aGljaCBpcyBub3Qgc3VwcG9ydGVkLgozLiBFc3NlbnRpYWxseSBo
YXMgYSBiYWlsIG91dCB3aXRoIC1FT1BOT1RTVVBQLgo0LiBUaGUgZGVmYXVsdCBrZXJuZWwgb3V0
cHV0IHNheXMgbm90aGluZy4KCkl0J3Mgbm90IGFuIGlzc3VlIGZvciB0b29scyBsaWtlIGRtZXNn
LCBzaW5jZSB0aGV5IHVzdWFsbHkgZGlzcGxheSB0aGUKd2hvbGUgbG9nIHdpdGggZXZlcnkgbG9n
bGV2ZWwsIGJ1dCBzdGlsbCBub3QgcmVhbGx5IGNvbnNpc3RlbnQgYXMgZm9yCm1lLiBQbHVzLCBl
dmVuIGluIHN1Y2ggdG9vbHMsIGRldl9pbmZvKCkgd2lsbCBqdXN0IGxvc3QgYW1pZHN0IHRvbnMg
b2YKb3RoZXIgbm9uc2Vuc2ljYWwgb3V0cHV0LCB3aGlsZSBkZXZfZXJyKCkgd291bGQgYmUgbWFy
a2VkIGJvbGQgcmVkLgoKPj4KPj4+ICsJCXJldHVybiBFUlJfUFRSKC1FT1BOT1RTVVBQKTsKPj4+
ICsJfQpbLi4uXQoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
