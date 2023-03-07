Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDDC6AFA35
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 00:22:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 456D6416DB;
	Tue,  7 Mar 2023 23:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 456D6416DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678231349;
	bh=v5Rdf+Dq8zcIkDEzg2gstIyLsPvW/qldVRxKdrcCNXw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6xAYGAFsOijJCm9L5ae0uZStW+AxK/Cx+o7buj7gfJqypDQ2fzx8YnbYBTqo/Jf60
	 +ZKIEgULmSFIoX8FKOmS8vZDDp00a3ZCmAq9dnminPFVon2mnd3rEQi5edOuqOqgEk
	 0gNlJM754OEKOJXZOCJtGWASdDh48G4nNspyCVnWiduI+Ft+JiCJ5iIdkaXyqwPywr
	 GvoGOUOhFaeATsfuNSaDEc/4CoE7kRIYBTF+xzqn6ULnHmuX7zRqUDQEx4g5eRnYwc
	 9/vNhlKlFgMfKktLPwl/qXxsXGuionSFAUmeZQSR+/aN9G4fEVsvOKQYbBMbZCqBPR
	 xTIPQ30qSZwTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTDXPIVirGAx; Tue,  7 Mar 2023 23:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86F77416C4;
	Tue,  7 Mar 2023 23:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86F77416C4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA13C1BF4E4
 for <intel-wired-lan@osuosl.org>; Tue,  7 Mar 2023 23:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 927524014D
 for <intel-wired-lan@osuosl.org>; Tue,  7 Mar 2023 23:22:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 927524014D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xuQYDPWsvTme for <intel-wired-lan@osuosl.org>;
 Tue,  7 Mar 2023 23:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CB0A400EC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CB0A400EC
 for <intel-wired-lan@osuosl.org>; Tue,  7 Mar 2023 23:22:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="398580312"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="398580312"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 15:22:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="922558816"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="922558816"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 07 Mar 2023 15:22:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 15:22:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 15:22:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 15:22:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 15:22:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzDX60GiU/PbtFyWnWOR7A/W+KlSlVRkxKwExm2/zC5fygThWJ4avnQ7okGmIoEz05JtBZzXTWuVoo+dvz4h1wOkQ1iCrL/lYgMpA+Fg7CBiTA4ihFmZZpBCtnLESyG69rsEF1F7mYFvQhR6ZJrdRDyALD/B0PTgR4mKdr7/kwkxUoJp8GcPTUynLsHVdHEGrK7mxM/hmOJTBeVLzokXszqu7DOAGqx62c/AH7mSNGX0QcIxO77XGa+RJGRKrftR3FOrD7XPl4pobLcpbd9j25PPGBfSDGiQiSvR9XABXaj6iuZf646OGtxveSAfzpJuQQX6FZy2VVBgeVh6tn7W5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+jdC3BQ3RFATjcrCxZIAE3G6XBgW3qhgemDiMt97tXI=;
 b=GTDhopH4+UzhrlRtQYFmfXf/tq+eTmZx5Q1LIQl0olVLboqjKoUqpiyDFpVDnLYDHzpqgCbHg1vxtSrl78zfHtc/UtYimOv8kNIn5zHgVcQyRI4fp8Ucrk3HC4vThDWBtMFlkX8wepCxRW2WjADS30B8E2UpsjwVN0QDscvMBKm53pFv00UaZJJgZvo+suZj4BcYjL83lmJnmKO9NHaAisdBl513kRuSk08InGz55/lXT+KhYD2rXxlww5gK2DnGGtEWpS7k6eA2708g3BSgz3f7tJYMlT7z1Xl+TpYy0R8eUia7QispCoon8i7wGiHy9CziKVxFlDxZCCpt8ouPGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:388::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 23:22:12 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::a54:899:975c:5b65]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::a54:899:975c:5b65%7]) with mapi id 15.20.6156.017; Tue, 7 Mar 2023
 23:22:12 +0000
Message-ID: <4d513cda-1379-13ff-b680-149098c78203@intel.com>
Date: Tue, 7 Mar 2023 15:22:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: <intel-wired-lan@osuosl.org>
References: <ZAc/3oVos9DBx3iR@calimero.vinschen.de>
 <20230307152917.32182-1-linma@zju.edu.cn>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230307152917.32182-1-linma@zju.edu.cn>
X-ClientProxiedBy: BYAPR07CA0101.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::42) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB5501:EE_
X-MS-Office365-Filtering-Correlation-Id: 06e8c40c-e407-42a5-d16d-08db1f62c7a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q0RaU19yiukBlrbo+JlVXLhCY65yq/dHxUbt8PeJPz/CGLono4p3J2szFEQSzAjqJJMGCLJYBkGXI4GVu/Vmkb7OD2FonGjKIwdCAtK7tFBq1YJA0oqqhcFsqQDHyvjFpVjmj9zBGeKXgvrryYaDalWX2saW1bmifxJiiVYFN0sHWHd2W8UDZFrt6Oqpfj5kDdZK8U3eUCGL1hSiO6h6xGdmao6QTpPxjq5iTrRlbd5XYEgtcCrcyiUDkNr+jybHfGNvH/AULhvkR3CFin7uiNgfjfZ+IqeKOfqpWkgl592CERRdV60urk1UFGx0V4ctZqXw6kpO+sLgY00UrGriLfQ5bn+Uy0fsaa57gbb08PJ2mM+y8aRhCtbEklH/zJq10yLM8hnGpvjdXfnTlhQGLXRzPVejG5BGVR4Ompqfl/2cSzOm+Twl+g9+28q7yms2YGZYMr9+IDEodKw2FdajfLwwNiiC2F0dY+eIOPCnbahmolneBBg58aRIU1RwubTH/S5A0yq+YFqPwObWL/wGVmPGPHAxEO6pbdAqgwIh//x1QZqa4JfpOM+RYspqQJZqKgkEYXNXsJa78wN1inycPEMBTetIV4wa53BUYN5p/ZQczJBu3UUsHTdXDtqR531jmDeR4D3tLaT8IaboL6zgXdndMpFNwWeQSXqV1uN1N3uFOYbN8XGJXc5pxbyF4rL+gwI8g3wei77oZeSt6c8dC3/4iAAhqESjPa5q4bteNYc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(396003)(376002)(136003)(39860400002)(451199018)(38100700002)(86362001)(82960400001)(31696002)(8936002)(36756003)(5660300002)(2906002)(6916009)(41300700001)(66556008)(66476007)(66946007)(8676002)(53546011)(186003)(83380400001)(2616005)(316002)(478600001)(6506007)(26005)(6512007)(966005)(6486002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjFSeDFoRE1Bb1F5NVJLOFIrUUVSRDVINVNRWW8xNnFFaTVncVlyRDVET0lw?=
 =?utf-8?B?RVBmM2Z4eHhMbm44emhMeThqWCs2eGRHcm9TR2M5RFVLSVFtZUY3SkdCU3Zk?=
 =?utf-8?B?WlVSY2xXOEhMR2kvV0p1RXNneXZYRmg3WjU3U05CQ0k3WnV1N3lTdXhqZitC?=
 =?utf-8?B?cVhiaUo1NmxqK0tGS042T21STWFCcy9pME45OUZya01ORDJnM2tNMTVTMTRy?=
 =?utf-8?B?ZG9VME9PRXBzSFc2K0N4M1NCMjM0RitFbWtZaExESnBsTjF2MkR5MXJnL0Fo?=
 =?utf-8?B?Q0ZDTUFFZkpjUW45eWNLOGFTTE02Y0pBSGlwbVg0WUwvSDNaTTZ6azdkalhp?=
 =?utf-8?B?bG0vdnphcXp4czJkRjRsZjRqSGxFdkcvVEgzaHYwUVZ2RFVER3Z3NGhJQjFu?=
 =?utf-8?B?VytoTDFXZGVZQ21LUlpVeXlWSHRmRFZwanR2V1Rlb1pldFBEQUIvVVFqSDQ4?=
 =?utf-8?B?Q3ptbG1DV20vcXdaTklVVlplbURUZkQ5dGdCTmhheG1qTGNjYnZHQllaZmI0?=
 =?utf-8?B?SDZwdzM0QWpGZlNCc3kwZ0xkWEZjcHU3VGhIL3pHVUtVb3hJZXhRQ2dTY24w?=
 =?utf-8?B?RWcrWlBxOHJNeE1MVThSUGIyMlFlQjlwQnhxUGRka1lnUXkwSWtmMm0yM0hJ?=
 =?utf-8?B?L0V5U3VQOHFSa3dtREhLWm9jek5wYnNFVUV4RWJIS3BLcWlQZDdjUGJjcExa?=
 =?utf-8?B?VVZ3M3Evb1ZCZDJtdXYvZHpRd3BTSGt6TDNIOEhMOUFKbzExdUpXelFnOEVk?=
 =?utf-8?B?Y2ZsMG94OFRqT0psWTJKeUkwWndIRVNFV29hbFp5S241N2YwM0djaDVXa1VC?=
 =?utf-8?B?VHdLRU1LOXpoTGt3Y0JpN3FyUmo2TXNEQ2RNekRuQ1Y5cU43cGxRbzNJM3hB?=
 =?utf-8?B?cVB1T2MwT2xaTHZQeGN6MUJ6aTB0OHlBN3JQQ0JzKzYvVW5MQUZqTUw4Mmpl?=
 =?utf-8?B?RE95cWVLUkdsK21YUzhpWDRsSloyZFNFL05UL24wbkp5TFBHZE8yazIrejV6?=
 =?utf-8?B?ckJhcTZCQ240NXhxTFRqY0VyOE9kZlNiZkg1elFpWHFZRkFOc21Wa1gwcDY0?=
 =?utf-8?B?WTlqa2gyRzdmSWZ4TWFhS0lXbkRwR21NeGNWSDNvc1Z3TkQ2Mkw2SGZOYVpU?=
 =?utf-8?B?MDVDNkEwWXJPU2ZDU1ZDMXZaN1QvNVBpbGk4MkRxNi9wYzB3RjBVZ1JYSFVQ?=
 =?utf-8?B?UXlOL1JFeVVCeFhFR3VFblNYOXNOeXB6dllKK2lQK1BRY2RYc3dMYXl4UkxX?=
 =?utf-8?B?RzZrRjdPUlFXQitkRGtGMHYxSVFPVmhhaTlFNEJpa0wrbDlpdlBOSE9SenFP?=
 =?utf-8?B?enY4aXVtdGROdklKQ0ZUN1hNTjBQLzA0VzMrVTBheFFCN1JXbHlOdlYyTFlM?=
 =?utf-8?B?Qmdjb3pBczdZVjl3VmZyNEpVYUhUY2Nac05pR2VGZWJxMzQ5NW94eGdyaHNk?=
 =?utf-8?B?UmpQZDNucDlNTUJkWUEwUWVkWDV0UW9tUzFGejZUUitiQXYvMWtuejM4K3Fk?=
 =?utf-8?B?anlPQmZRRlNnS1dEbzdIc3U4UkVuOEpPTG5WWld3ZmErSDhTOWNoZlVNclA1?=
 =?utf-8?B?WlVqK1FjWmdhSEdoRjFFU0Y3dlNqMm1QNWs5TTVNQUVtbjJyZDZFS01EWk4y?=
 =?utf-8?B?cDU2d0xNS09vVGtxcmlwdkhsSU4vVHB3NUpBODlTcmE3OGVwV0dsSDFTMDBh?=
 =?utf-8?B?SGJ3L0pYbXVlZTQzVGpLdlRJMWw2U1dwaVVxWDJyWnBXNnpCNVN4WTVyOGFJ?=
 =?utf-8?B?VG5XMGgzM1V0WGtqRUppWWVyQkg3VFFoaUtsR05INkd3M0FSTTJYYldHbzJo?=
 =?utf-8?B?TlMyb1FTMXRPK1p2dFVFMzJkaHVEQW5EMk1Iak51WFJ4eDVCcDhRQWd3RlZF?=
 =?utf-8?B?TFZiZmtjR3NDZy9HSGRLN1g5L0xuaTk4bUdBMml5YUhYY1pSZ2czZHRiVFBJ?=
 =?utf-8?B?eW5yZ2svN2VETFBZN2I3UkFuRFo2a0NFaWd2YzVwUC9hL0Exc0tZZk9DaFNE?=
 =?utf-8?B?cWdtRkdjVkNVVlRwc3c3amhjOE9zeDl1SjBWOEFSVHFLUi9LUDMrRlpod29w?=
 =?utf-8?B?NUdpdGJaenlOajczL2Z3SGtPMkM5RkF6eE91Z2NkTnBJRE9BUWdEdGMvK1B3?=
 =?utf-8?B?WnJMMDZMWk1NbWlVUGtSNXluYy84dlpiWmtXWk54ZkFmMkp4NG1rd0VQQVh6?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06e8c40c-e407-42a5-d16d-08db1f62c7a9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 23:22:12.2139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MPPuqL8ArXy3lSJktWdup+VmUuLDyV2m4WBJQARDifq84MyAN+D9N2ik+nzQ6qxcftZZRBYCHV2MO8TgpNo8FljYnvt8Ns7Gx5GgppeFRD0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5501
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678231340; x=1709767340;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZcR6/yg8YrR42TxhIIvfQYA9r75vWaJDOHQY3+t3cxs=;
 b=jUhoQOPWRbzz5qEdknpXZ4aI/dZy0Rm5E4nONNNtNfWrLWrkIX/JHDpT
 ZBJYgP9sRADu+tJKMXsVUNm+YSg2lF/zliQP4nBdkzYDIBmlIFIKz++ya
 dwiK2um3DlSJZaMwqt/sbSPY+68a6sCxp1eUrPnldcWR2x0oZqhjZNcVa
 sR1MRpI8CDBxN59lWauCxgYUNxbDDLMDFv3mlWPggUDATTGpReaq0Y5LF
 yFFIEElQGl6df3XKH4hlG84I77DtP9tUqdqKlOtXy2v83f/rj2SkVr1sA
 UDqrNWyhui2ADQU/igxlzDdQJjZsf7ek3xTIoSJs4x7mpEnf0B+moqwel
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jUhoQOPW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: revert rtnl_lock() that
 causes deadlock
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



On 3/7/2023 7:29 AM, Lin Ma wrote:
> The commit 6faee3d4ee8b ("igb: Add lock to avoid data race") adds
> rtnl_lock to eliminate a false data race shown below
> 

This patch does a number of other changes as well, including its own
spinlock, so this is only a partial revert. Ok.

>  (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>  igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>   kfree(adapter->vf_data)          |
>   adapter->vfs_allocated_count = 0 |
>                                    |    memcpy(... adapter->vf_data[vf]
> 

How was this data race detected? KCSAN?

> The above race will never happen and the extra rtnl_lock causes deadlock
> below

So this was a theoretical data race but in practice hasn't occurred?

> 
> [  141.420169]  <TASK>
> [  141.420672]  __schedule+0x2dd/0x840
> [  141.421427]  schedule+0x50/0xc0
> [  141.422041]  schedule_preempt_disabled+0x11/0x20
> [  141.422678]  __mutex_lock.isra.13+0x431/0x6b0
> [  141.423324]  unregister_netdev+0xe/0x20
> [  141.423578]  igbvf_remove+0x45/0xe0 [igbvf]
> [  141.423791]  pci_device_remove+0x36/0xb0
> [  141.423990]  device_release_driver_internal+0xc1/0x160
> [  141.424270]  pci_stop_bus_device+0x6d/0x90
> [  141.424507]  pci_stop_and_remove_bus_device+0xe/0x20
> [  141.424789]  pci_iov_remove_virtfn+0xba/0x120
> [  141.425452]  sriov_disable+0x2f/0xf0
> [  141.425679]  igb_disable_sriov+0x4e/0x100 [igb]
> [  141.426353]  igb_remove+0xa0/0x130 [igb]
> [  141.426599]  pci_device_remove+0x36/0xb0
> [  141.426796]  device_release_driver_internal+0xc1/0x160
> [  141.427060]  driver_detach+0x44/0x90
> [  141.427253]  bus_remove_driver+0x55/0xe0
> [  141.427477]  pci_unregister_driver+0x2a/0xa0
> [  141.428296]  __x64_sys_delete_module+0x141/0x2b0
> [  141.429126]  ? mntput_no_expire+0x4a/0x240
> [  141.429363]  ? syscall_trace_enter.isra.19+0x126/0x1a0
> [  141.429653]  do_syscall_64+0x5b/0x80
> [  141.429847]  ? exit_to_user_mode_prepare+0x14d/0x1c0
> [  141.430109]  ? syscall_exit_to_user_mode+0x12/0x30
> [  141.430849]  ? do_syscall_64+0x67/0x80
> [  141.431083]  ? syscall_exit_to_user_mode_prepare+0x183/0x1b0
> [  141.431770]  ? syscall_exit_to_user_mode+0x12/0x30
> [  141.432482]  ? do_syscall_64+0x67/0x80
> [  141.432714]  ? exc_page_fault+0x64/0x140
> [  141.432911]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> > Since the igb_disable_sriov() will call pci_disable_sriov() before
> releasing any resources, the netdev core will synchronize the cleanup to
> avoid any races. This patch removes the useless rtnl_(un)lock to guarantee
> correctness.
> 

you could say "harmful" rather than "useless" here.

igb is holding the RTNL lock while calling igb_disable_sriov which then
tries to remove the VF driver which then takes the RTNL lock and deadlocks.

This was possibly not caught before because if the igbvf device was in a
VM, this would not deadlock since the VF driver would not be loaded in
host, and would thus not acquire the host RTNL lock.

Ok.

This makes sense how it might not have been caught before.

The original commit referenced that the RTNL lock was added similar to
719479230893 ("dpaa2-eth: add MAC/PHY support through phylink") so I
wanted to check if that might also be buggy. Turns out no, its actually
seemingly unrelated to this broken use of RTNL lock as its holding
something for disconnecting a phylink object, but has nothing to do with
SR-IOV.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake

> CC: stable@vger.kernel.org
> Fixes: 6faee3d4ee8b ("igb: Add lock to avoid data race")
> Reported-by: Corinna Vinschen <vinschen@redhat.com>
> Link: https://lore.kernel.org/intel-wired-lan/ZAcJvkEPqWeJHO2r@calimero.vinschen.de/
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---
> V1->V2: update Link and correct Corinna's name
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 03bc1e8af575..5532361b0e94 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3863,9 +3863,7 @@ static void igb_remove(struct pci_dev *pdev)
>  	igb_release_hw_control(adapter);
>  
>  #ifdef CONFIG_PCI_IOV
> -	rtnl_lock();
>  	igb_disable_sriov(pdev);
> -	rtnl_unlock();
>  #endif
>  
>  	unregister_netdev(netdev);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
