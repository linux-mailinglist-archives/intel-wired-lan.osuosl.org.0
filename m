Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B37E7720736
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 18:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FA9042759;
	Fri,  2 Jun 2023 16:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FA9042759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685722599;
	bh=CDk5MHQ1IDyWsGs6lbfQ7hwRpiRbAVNaGaHsLifqTr8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TCDlj+EYUMN32S3tnYttLmgm7anVgylRAfclkol/pcc9MStJAV0MANs/6dAr+xedj
	 rwg5kxZ3T5yiC+FtBu4+QTvajG9DPCfuPAvFMG33NYbKo57e2q9iczJh62u9L/hCLO
	 3L34G8xfKRn8lE7xI4hkxjO+B2WgkHWqf4zmlI1enQQgDH7tnE/g5JqQ3I+JNn4Fam
	 n+YnRo0RafJJgleAqk0AZhTb281/0WU4JfSGrs8Y/cHwKGD3hSuNNHk0H+wf4Guo/P
	 4RTFJzJVpuQEJSgQv5DKzCzYVkWusfdGYRhUBMWf1pQjL6p6qY60CQ/nLIlFLqWiXH
	 SC3w7KzuTreNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6h6D9UfabzzP; Fri,  2 Jun 2023 16:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F0EB42756;
	Fri,  2 Jun 2023 16:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F0EB42756
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 746B31BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 16:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AF5960BFF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 16:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AF5960BFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1KZc46H-rQan for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 16:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0C1060BD5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0C1060BD5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 16:16:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="358337817"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="358337817"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:16:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="820345242"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="820345242"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jun 2023 09:16:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 09:16:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 09:16:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 09:16:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 09:16:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqiUwedmYtUm13O5uWTH7sEAtEW7ZO68u9x5VMlIghNg5Vx4aHQDBhjRe8rPq2M/GDCWBXJp798Bf1VWaRc2MqwpNcXJjxFWWu8GTFEAp1eOnhDs2nSDSEXaDf2aS1KnxekBjPgEsJUYWk0o+V6ZxOrefZzN3sptSBxXpBgJsybJPlBr3nGJWp32v4CRWkW9e/WPMHoMxQXY6gturPph4356dBh7KMRdjQCKyBxONBLcEPmvZEPqcp9DffQhI/G1nQFl55SnUdWyom+KvMYrCPHpGhQH4GdZhGLRM65biVU9K2WLphTF8CqeGDNLgxWNfs0c2F8ti0zmFA86q8nrdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AU0vseKYY1yI/deY0sVFOIp0BralLIdzdIuQEMbn3w0=;
 b=Qby+7Hirjmiz7c7uK8lARJlWl80Yl3wlQ0F8lIaPBYmSQpPrgU5N16pH/nQhgdnk8kCC4mhHLazIIARtW2jOd8mdRup2A5T7xPFl4qHhVFP8JdqpJfgPpURoyMsdPBXWUq6H1vXVsvp1J237bpz/tK4g0zc6jxR03IlBvqdBZr5xrntzedS07jlB62VLvBP+dLGpXAwQchKsQ0BKFbMNHZlpe5YGbiTV8wRgOZcAMxTQWq29oXwaf8iOKBf1gx9+8noF9FIehHbOFOG69SKyxVlf11pk3nxp2TWFs2ue6FGJ/TssUtfghamzyIMnR6RMR+OEIz4U+GosVN5OjfRM7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB5120.namprd11.prod.outlook.com (2603:10b6:a03:2d1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.26; Fri, 2 Jun
 2023 16:16:23 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 16:16:23 +0000
Message-ID: <cd88ac7e-fe82-fdc0-3410-0decf57d3c43@intel.com>
Date: Fri, 2 Jun 2023 18:15:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander Duyck <alexander.duyck@gmail.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-4-aleksander.lobakin@intel.com>
 <8828262f1c238ab28be9ec87a7701acd791af926.camel@gmail.com>
 <cb7d3479-63a5-31b4-355d-b12a7e1b2878@intel.com>
 <CAKgT0Ud204CiJeB-5zcTKdrv7ODrfP09t73CqRhps7g3qhWU5w@mail.gmail.com>
 <d375fef9-43c4-9f2a-41c9-5247fcb3aa1e@intel.com>
 <CAKgT0Uc4UQ=PpVtjUAP=hjTDrWWkc79PeSwp39T6MSpo1ZyOag@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAKgT0Uc4UQ=PpVtjUAP=hjTDrWWkc79PeSwp39T6MSpo1ZyOag@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::11) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB5120:EE_
X-MS-Office365-Filtering-Correlation-Id: 026ba02e-06fd-48a0-75c4-08db6384b4ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RopMLUlmr3KVaHCEDmYYPhACT6tcOcnttyDJX6Iyp1ebPDY7xtzJz6hQEHqJBR0yGJWozEndivN5hHTfYt+9P6AI0l86WKnsUQDlTq+fgyLlbbru0wJv03bwI7bR+bv9GY49cNHjRxi/4Xh1NAiCeKJAGSa5SeauZgqehObHbgZm79SuMnfN9LU/3piQ1olLd1SoOZxmGCEjY+wpzXnVr3phqoW9jLClR53BfJXZjTbYGhTDMcKcWBVEWkih+47ZlnDko2rZJdvRrIEww7fRxl/r0RyXyNTQiuYjMnj/SWH5Y8AtYAhGO3MkK1FEKx8FB9x/JPGKaRziJEW0jTM4vGA3GtFi0I5pxTGIQcWw3RkX73RVgFhot0ZyWK9hIIagbwMAGuL0b67CBaXUyE1Dw2kU6/YNysAXr66+00Zfk6w4Lx7nVBV7mNO9hhx/SwD9a54Wszx8gcK31g06vDCbmQuU1+g1J/yzlFwsL72cMIMb2wJd27CBlnqhv5earDKOnSTx8VQrnmEnmmLTmjsAWurb9G0VGZwkc8/TV938bn9dsYX0tdwX8pA4fow9k0rqWsQYM1iEdDoKhKbfnsQNL7GeWZ6NGgnMbcR77J5/o4055fMkZKpd9miaQ2haqeNE4AjPxJxCI6opuhNudB9zcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(39860400002)(346002)(376002)(451199021)(54906003)(5660300002)(8676002)(8936002)(478600001)(41300700001)(6486002)(86362001)(6666004)(316002)(4326008)(6916009)(53546011)(186003)(7416002)(107886003)(31686004)(66946007)(66476007)(66556008)(6506007)(26005)(31696002)(6512007)(2616005)(2906002)(83380400001)(36756003)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGY0bEdoRkk2THVVY09PTktGVisrRGgwZ0xScnJZZmhrbjkzM09ZbmJVb01J?=
 =?utf-8?B?bHRSV3JwSDRIZ1ptRzJPZ0ZmM3NjNFgwQi91RG5RdURlWTlIQ1MwdjAva1RB?=
 =?utf-8?B?bllTdDJoOGdwU0MvRTdvMUNZUU5KTmg2N1U1ZlZnL3h1eGtCWEZnTVh0S1hK?=
 =?utf-8?B?UWw1S3JSZnczZ0dkMmc0aERxZDBmaTRacldCa0Y3SHFNUm1RbzhoNmtjTkVQ?=
 =?utf-8?B?SmliYjdMKzhYNEZ0Smk2bmUrYjdiTlZ6ZXRaRDBTZDc0WklKNThsNU1XUEN4?=
 =?utf-8?B?SzNYZ1BGcHlRSXB0bzRzRWpQbTZtcFhOTjBQdWtEcEpjTzNHMHNrYjNIL0FT?=
 =?utf-8?B?bUZoVExqdlh6eFpkeHB5TGw3MFVqZEpMZGxScU9wK3Z4QXl3czFHSXROYk4y?=
 =?utf-8?B?RWkrQVd3N2ZaS2pqV3I3MmI3Nmc4aVNrbG5ZYXhicHRBS0tmTWVGdVk0dXRx?=
 =?utf-8?B?c3cvU1lVc2QzQWtiWDh0bmtOc1VXQVVZNjJsNHd4SzBUNWYzN1lxQ3ByRFBa?=
 =?utf-8?B?Qm95ejR0ZW1xSGk1QnMrTSt3blArMzc5NURMcmx2UTVKTmRhK0FhODV5UHpM?=
 =?utf-8?B?Q01xWmdsN2N5ZTQ5TmUyVitDVmtHZWdaNEFna1pua25OYzg1STVzcU9GZzBw?=
 =?utf-8?B?a1ovQURPellOZWIxVyt3VEtUWENBa1k0S2sxYmQ1TSszRW9vdGVkOTNaUS9S?=
 =?utf-8?B?RXBZU0FpaWNNN1ovNURtcng4aEhtc0hRZkF1cnJZVjRyb04rcTlZaVlOSDlI?=
 =?utf-8?B?ZkM2ako3RFIrT2ZRZWZBejZnbTdLUE55bFhBT1ExNm10VUY2VC9xUU9pcDMz?=
 =?utf-8?B?WTVKUXZIcENnUk1Qa2xsNXRxZ3dPR1dNSWVJaER3NzhlZGpFMjFGamJEYUVZ?=
 =?utf-8?B?OExRQjdIVkF4Y3hwR1VocVZkS0dxOWgyVUowd3JxZUlnT0thTEI2K1lteVhQ?=
 =?utf-8?B?dEJoMUtjdXpweG1LUFhyb2dlVW9iclFTRk1WYUMwcFRMK1hWZjA0Qkc5OEhm?=
 =?utf-8?B?UHhXSFp5a1FtdWx1TFg3ZDRiR21MZEY1QUUvN0t3OE9YR0hDSmxTTEp6MzVk?=
 =?utf-8?B?RGhKb1k1TktqekVOU0RsOWhuZGVZK1FjTDQ4UmpVUFJENjVxK1JLQkdaZjB0?=
 =?utf-8?B?bG1nMVFZVS84Unc0Uk54L3dpczBoeEc0WTZOaXFhNElZUGdVRjlYanFoSlZX?=
 =?utf-8?B?MzNHVkt6S2ZNeFcrTTU5SG50SkYrcWJBU2orOG9nK1JjSktpMk5IWncrSGpn?=
 =?utf-8?B?QjJ2NjB0WWRoT3A2UE84ZW5yZE1Pck92VDNWcUVSdUZSVGJVQjl6aURkMmh5?=
 =?utf-8?B?YXlzaDhQa0hGUWlZL1RoOGY1Q2NBNnpNOXdIWTlPeXlFMHoxcFZRcXNBRjFz?=
 =?utf-8?B?ditqLzJCZ2wyUXRTWFRQTFZKankyNW1MeWJndC9nSURCeFFUTnUyMm0vY2E1?=
 =?utf-8?B?UkNiV09ocXlaRGRrM1laVUFkdTdWdGZTMHZudWdqNkNVODZiNDZDVEtCUDZL?=
 =?utf-8?B?bVQ4aWppTXdzb0NMbUFlNE45OENQYmFXWmd4SmJBWWVZR2x1OTRrSExmTjJM?=
 =?utf-8?B?NmtHQ1BTNEhnTjV5ZE45MTNzSjFwbUJEb3p0ZldNamM3dDBsRzZ2QTV1eE9m?=
 =?utf-8?B?Y3RzU1RHK3J6ZUpDd2FVdzZ6OWQ4aithQ1lFazJtZjRobGROaEhNYUI5dVZz?=
 =?utf-8?B?R1VnaWZXeTY0NG5ydVNCSzJvemFGOXhhRURMZTRIK3BVNjJvK3ZOcGlWeFcx?=
 =?utf-8?B?Z2VpOEZlZzFORWxDUjl5Y1ZHekpzKzV0RnlGM1hwV0ZQUnAvMzkwbDY1bVFa?=
 =?utf-8?B?bnAwYVlQMnpGWGc5NGF4QkFlUU9rWU82clR2ZEE1STVCYUJjQmZjWWdUNWVH?=
 =?utf-8?B?bXhYdmNmNXlsOXkydXJGdUZRMjlzRGY0NzlXWVpnREFYb0JWcllyL1BGOWNn?=
 =?utf-8?B?NmJDdVVoa0JSb0hqQnRHMExMaXVHU0JpVGtDQmNhc2Q0RnVrSy9VTGlteHFl?=
 =?utf-8?B?d3dIYWtXU1pNMXIvS05kQzh2S1ZITGpQeU1nNkFtSWJYdVNSZGttTTlicE5I?=
 =?utf-8?B?M2NYSW40SUNORTQ3eHFTNWoxUlI3UkxCa0NQVzBEUG5zNmJydEhKYkxKWWlH?=
 =?utf-8?B?UjZWUnhJaHo3WUtsRDdNN2tvbXBlSlV4cG0vaFQ2VFFHaERIRDlMc1IrTlFH?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 026ba02e-06fd-48a0-75c4-08db6384b4ab
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 16:16:22.4863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AgBqpC0Fg7BXyNbSrSfC2uvfeXoOzYJ6ZyN9nsB6/erPfQ8nqTViP/g+VltkyufDe3QRrJ/fXUuZO+nNvj0H19EVD1atxHCbBMSRBP5fPFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5120
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685722589; x=1717258589;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZaFcI7Q0gamIyzVbr9zmaHAn2Jiytdin3HKTYjKIDr0=;
 b=R0D0TyN8qlWzV20rX/dzO8WRbExGwnvad7yq+dQzUqTAouQLOwXOirbz
 BZuCwYK10Qw7D2+V8UtaxHOTStdXCrAfb47gI2j6VuTtxrW637Gmzpb1O
 5Ze0COpQEcjygG0uRnzx+QkTXTjkQn9zxE9bOu/hSilwgLUQV/80aTG4z
 Sc623Lg1uHH1TPatIFJdImHtUnI+UBTb/jAvfvOmTDz5UK93ZUHSMz5mC
 EJNJ1DY9F4gRiSgUM6vnroGruq9M/7g2lXIQIg7HDiwHFRbWRtAJtzTE9
 JJohhs1zLhrj6JED3V/lYXG/RnZnr9GdVJHOI1ajHO2wuSYwpsPLjgsQz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R0D0TyN8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] iavf: optimize Rx
 buffer allocation a bunch
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPgpEYXRlOiBG
cmksIDIgSnVuIDIwMjMgMDg6MDQ6NTMgLTA3MDAKCj4gT24gRnJpLCBKdW4gMiwgMjAyMyBhdCA3
OjAw4oCvQU0gQWxleGFuZGVyIExvYmFraW4KPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNv
bT4gd3JvdGU6CgpbLi4uXQoKPj4gVGhhdCdzIGZvciBSeCBwYXRoLCBidXQgZG9uJ3QgZm9yZ2V0
IHRoYXQgdGhlIGluaXRpYWwgYWxsb2NhdGlvbiBvbiBpZnVwCj4+IGlzIGRvbmUgaW4gdGhlIHBy
b2Nlc3MgY29udGV4dC4gVGhhdCdzIHdoYXQgdGhlIG1haW50YWluZXJzIGFuZAo+PiByZXZpZXdl
cnMgdXN1YWxseSB3YXJuIGFib3V0OiB0byBub3QgYWxsb2NhdGUgd2l0aCAlR0ZQX0FUT01JQyBv
biBpZnVwcy4KPiAKPiBJIGNhbiBzZWUgdGhhdCBmb3IgdGhlIHN0YXRpYyB2YWx1ZXMgbGlrZSB0
aGUgcXVldWUgdmVjdG9ycyBhbmQgcmluZ3MsCj4gaG93ZXZlciBmb3IgdGhlIGJ1ZmZlcnMgdGhl
bXNlbHZlcywgYnV0IEkgZG9uJ3Qgc2VlIHRoZSBwb2ludCBpbiBkb2luZwo+IHRoYXQgZm9yIHRo
ZSByZWd1bGFyIGJ1ZmZlciBhbGxvY2F0aW9ucy4gQmFzaWNhbGx5IGl0IGlzIGFkZGluZwo+IG92
ZXJoZWFkIGZvciBzb21ldGhpbmcgdGhhdCBzaG91bGQgaGF2ZSBtaW5pbWFsIGltcGFjdCBhcyBp
dCB1c3VhbGx5Cj4gaGFwcGVucyBlYXJseSBvbiBkdXJpbmcgYm9vdCB3aGVuIHRoZSBtZW1vcnkg
c2hvdWxkIGJlIGZyZWUgYW55d2F5IHNvCj4gR0ZQX0FUT01JQyB2cyBHRlBfS0VSTkVMIHdvdWxk
bid0IGhhdmUgbXVjaCBpbXBhY3QgaW4gZWl0aGVyIGNhc2UKClF1ZXVlIHZlY3RvcnMgYW5kIHJp
bmdzIGdldCBhbGxvY2F0ZWQgZWFybGllciB0aGFuIGJ1ZmZlcnMsIG9uIGRldmljZQpwcm9iaW5n
IDpEIGlmdXAgaGFwcGVucyBsYXRlciBhbmQgaXQgZGVwZW5kcyBvbiB0aGUgbmV0d29ya2luZyBz
Y3JpcHRzCmV0Yy4gLS0gbm93IGV2ZXJ5IGluaXQgc3lzdGVtIGVuYWJsZXMgYWxsIHRoZSBpbnRl
cmZhY2VzIHdoZW4gYm9vdGluZyB1cApsaWtlIHN5c3RlbWQgZG9lcy4gUGx1cywgaWZkb3ducy1p
ZnVwcyBjYW4gb2NjdXIgZHVyaW5nIHRoZSBub3JtYWwKc3lzdGVtIGZ1bmN0aW9uaW5nIC0tIHJl
c2V0cywgWERQIHNldHVwL3JlbW92ZSwgRXRodG9vbCBjb25maWd1cmF0aW9uLAphbmQgc28gb24u
IEkgd291bGRuJ3Qgc2F5IFJ4IGJ1ZmZlciBhbGxvY2F0aW9uIGhhcHBlbnMgb25seSBvbiBlYXJs
eSBib290LgoKWy4uLl0KCj4+IE9oLCBJIGZlZWwgbGlrZSBJJ20gc3RhcnRpbmcgdG8gYWdyZWUg
OkQgT0ssIHRoZW4gdGhlIGZvbGxvd2luZyBkb2Vzbid0Cj4+IHJlYWxseSBnZXQgb3V0IG9mIG15
IGhlYWQ6IHdoeSBkbyB3ZSBzdG9yZSBza2IgcG9pbnRlciBvbiB0aGUgcmluZyB0aGVuLAo+PiBp
ZiB3ZSBjb3VudCAxIHNrYiBhcyAxIHVuaXQsIHNvIHRoYXQgd2Ugd29uJ3QgbGVhdmUgdGhlIGxv
b3AgdW50aWwgdGhlCj4+IEVPUD8gT25seSB0byBoYW5kbGUgYWxsb2NhdGlvbiBmYWlsdXJlcz8g
QnV0IHNrYiBpcyBhbHJlYWR5IGFsbG9jYXRlZCBhdAo+PiB0aGlzIHBvaW50Li4uIDxjb25mdXNl
ZD4KPiAKPiBUaGUgc2tiIGlzIHRoZXJlIHRvIGVzc2VudGlhbGx5IGhvbGQgdGhlIGZyYWdzLiBL
ZWVwIGluIG1pbmQgdGhhdCB3aGVuCj4gaXhnYmUgd2FzIGNvZGVkIHVwIFhEUCBkaWRuJ3QgZXhp
c3QgeWV0LgoKT2ssIG1heWJlIEkgcGhyYXNlZCBpdCBiYWRseS4KSWYgd2UgZG9uJ3Qgc3RvcCB0
aGUgbG9vcCB1bnRpbCBza2IgaXMgcGFzc2VkIHVwIHRoZSBzdGFjaywgaG93IHdlIGNhbgpnbyBv
dXQgb2YgdGhlIGxvb3Agd2l0aCBhbiB1bmZpbmlzaGVkIHNrYj8gUHJldmlvdXNseSwgSSB0aG91
Z2h0IGxvdHMgb2YKZHJpdmVycyBkbyB0aGF0LCBhcyB5b3UgbWF5IGV4aGF1c3QgeW91ciBidWRn
ZXQgcHJpb3IgdG8gcmVhY2hpbmcgdGhlCmxhc3QgZnJhZ21lbnQsIHNvIHlvdSdsbCBnZXQgYmFj
ayB0byB0aGUgc2tiIG9uIHRoZSBuZXh0IHBvbGwuCkJ1dCBpZiB3ZSBjb3VudCAxIHNrYiBhcyBi
dWRnZXQgdW5pdCwgbm90IGRlc2NyaXB0b3IsIGhvdyB3ZSBjYW4gZW5kIHVwCmJyZWFraW5nIHRo
ZSBsb29wIHByaW9yIHRvIGZpbmlzaGluZyB0aGUgc2tiPyBJIGNhbiBpbWFnaW5lIG9ubHkgb25l
CnNpdHVhdGlvbjogSFcgZ2F2ZSB1cyBzb21lIGJ1ZmZlcnMsIGJ1dCBzdGlsbCBwcm9jZXNzZXMg
dGhlIEVPUCBidWZmZXIsCnNvIHdlIGRvbid0IGhhdmUgYW55IG1vcmUgZGVzY3JpcHRvcnMgdG8g
cHJvY2VzcywgYnV0IHRoZSBza2IgaXMgc3RpbGwKdW5maW5pc2hlZC4gQnV0IHNvdW5kcyB3ZWly
ZCBUQkgsIEkgdGhvdWdodCBIVyBwcm9jZXNzZXMgZnJhbWVzCiJhdG9taWNhbGx5IiwgaS5lLiBp
dCBkb2Vzbid0IGdpdmUgeW91IGJ1ZmZlcnMgdW50aWwgdGhleSBob2xkIHRoZSB3aG9sZQpmcmFt
ZSA6RAoKPiAKPiBJIHRoaW5rIHRoZXJlIGFyZSBkcml2ZXJzIHRoYXQgYXJlIGFscmVhZHkgZ2V0
dGluZyBhd2F5IGZyb20gdGhpcywKPiBzdWNoIGFzIG12bmV0YSwgYnkgc3RvcmluZyBhbiB4ZHBf
YnVmZiBpbnN0ZWFkIG9mIGFuIHNrYi4gSW4gdGhlb3J5IHdlCj4gY291bGQgZG8gYXdheSB3aXRo
IG1vc3Qgb2YgdGhpcyBhbmQganVzdCB1c2UgYSBzaGFyZWRfaW5mbyBzdHJ1Y3R1cmUsCj4gYnV0
IHNpbmNlIHRoYXQgZXhpc3RzIGluIHRoZSBmaXJzdCBmcmFnIHdlIHN0aWxsIG5lZWQgYSBwb2lu
dGVyIHRvIHRoZQo+IGZpcnN0IGZyYWcgYXMgd2VsbC4KCmljZSBoYXMgeGRwX2J1ZmYgb24gdGhl
IHJpbmcgZm9yIFhEUCBtdWx0aS1idWZmZXIuIEl0J3MgbW9yZSBsaWdodHdlaWdodAp0aGFuIHNr
YiwgYnV0IGFsc28gY2FycmllcyB0aGUgZnJhZ3MsIHNpbmNlIGZyYWdzIGlzIGEgcGFydCBvZiBz
aGluZm8sCm5vdCBza2IuCkl0J3MgdG90YWxseSBmaW5lIGFuZCB3ZSdsbCBlbmQgdXAgZG9pbmcg
dGhlIHNhbWUgaGVyZSwgbXkgcXVlc3Rpb24gd2FzCmFzIEkgZXhwbGFpbmVkIGJlbG93LgoKPiAK
PiBBbHNvIG11bHRpLWZyYWcgZnJhbWVzIGFyZSB0eXBpY2FsbHkgbm90IHRoYXQgbGlrZWx5IG9u
IGEgbm9ybWFsCj4gbmV0d29yayBhcyBtb3N0IG9mIHRoZSBmcmFtZXMgYXJlIGxlc3MgdGhhbiAx
NTE0QiBpbiBsZW5ndGguIEluCj4gYWRkaXRpb24gYXMgSSBtZW50aW9uZWQgYmVmb3JlIGEganVt
Ym8gZnJhbWUgd29ya2xvYWQgd2lsbCBiZSBsZXNzCj4gZGVtYW5kaW5nIHNpbmNlIHRoZSBmcmFt
ZSByYXRlcyBhcmUgc28gbXVjaCBsb3dlci4gU28gd2hlbiBJIGNvZGVkCj4gdGhpcyB1cCBJIGhh
ZCBvcHRpbWl6ZWQgZm9yIHRoZSBub24tZnJhZ2dlZCBjYXNlIHdpdGggdGhlIGZyYWdtZW50ZWQK
PiBjYXNlIGJlaW5nIG1vcmUgb2YgYW4gYWZ0ZXJ0aG91Z2h0IG5lZWRlZCBtb3N0bHkgYXMgZXhj
ZXB0aW9uCj4gaGFuZGxpbmcuCgpbLi4uXQoKPiBUaGF0IGlzIGtpbmQgb2Ygd2hhdCBJIGZpZ3Vy
ZWQuIFNvIG9uZSB0aGluZyB0byB3YXRjaCBvdXQgZm9yIGlzCj4gc3RhdGluZyBwZXJmb3JtYW5j
ZSBpbXByb3ZlbWVudHMgd2l0aG91dCBwcm92aWRpbmcgY29udGV4dCBvbiB3aGF0Cj4gZXhhY3Rs
eSBpdCBpcyB5b3UgYXJlIGRvaW5nIHRvIHNlZSB0aGF0IGdhaW4uIFNvIGVzc2VudGlhbGx5IHdo
YXQgd2UKPiBoYXZlIGlzIGEgbWljcm9iZW5jaG1hcmsgdGhhdCBpcyBzZWVpbmcgdGhlIGdhaW4u
Cj4gCj4gQWRtaXR0ZWRseSBteSBnb3RvIHVzZWQgdG8gYmUgSVB2NCByb3V0aW5nIHNpbmNlIHRo
YXQgZXhlcmNpc2VkIGJvdGgKPiB0aGUgVHggYW5kIFJ4IHBhdGggZm9yIG11Y2ggdGhlIHNhbWUg
cmVhc29uLiBIb3dldmVyIG9uZSB0aGluZyB5b3UKPiBuZWVkIHRvIGtlZXAgaW4gbWluZCBpcyB0
aGF0IGlmIHlvdSBjYW5ub3Qgc2VlIGEgZ2FpbiBpbiB0aGUKPiBmdWxsLXN0YWNrIHRlc3Qgb2Rk
cyBhcmUgbW9zdCB1c2VycyBtYXkgbm90IG5vdGljZSBtdWNoIG9mIGFuIGltcGFjdC4KClllYWgg
c3VyZS4gSSB0aGluayBtb3JlIHRoYW4gYSBoYWxmIG9mIG9wdGltaXphdGlvbnMgaW4gc3VjaCBk
cml2ZXJzCm5vd2FkYXlzIGlzIHVubm90aWNlYWJsZSB0byBlbmQgdXNlcnMgOkQKClsuLi5dCgo+
IEVpdGhlciB0aGF0IG9yIHRoZXkgd2VyZSBhbHJlYWR5IHdvcm4gZG93biBieSB0aGUgdGltZSB5
b3Ugc3RhcnRlZAo+IGFkZGluZyB0aGlzIHR5cGUgb2Ygc3R1ZmYuLiA6KQo+IAo+IFRoZSBvbmUg
SSB1c2VkIHRvIGRvIHRoYXQgd291bGQgcmVhbGx5IGRyaXZlIHBlb3BsZSBudXRzIHdhczoKPiAg
ICAgZm9yIChpID0gbG9vcF9jb3VudDsgaS0tOykKCk9oLCBuaWNlIG9uZSEgTmV2ZXIgdGhvdWdo
dCBvZiBzb21ldGhpbmcgbGlrZSB0aGF0IGhlaGUuCgo+IAo+IEl0IGlzIG1vcmUgZWZmaWNpZW50
IHNpbmNlIEkgZG9uJ3QgaGF2ZSB0byBkbyB0aGUgY29tcGFyaXNvbiB0byB0aGUKPiBsb29wIGNv
dW50ZXIsIGJ1dCBpdCBpcyBkZWZpbml0ZWx5IGNvdW50ZXJpbnR1aXRpdmUgdG8gcnVuIGxvb3Bz
Cj4gYmFja3dhcmRzIGxpa2UgdGhhdC4gSSB0cmllZCB0byBicmVhayBteXNlbGYgb2YgdGhlIGhh
Yml0IG9mIHVzaW5nCj4gdGhvc2Ugc29ydCBvZiBsb29wcyBhbnl3aGVyZSB0aGF0IHdhc24ndCBw
ZXJmb3JtYW5jZSBjcml0aWNhbCBzdWNoIGFzCj4gZHJpdmVyIGluaXQuCgpbLi4uXQoKPiBZZXAs
IG5vdyB0aGUgcXVlc3Rpb24gaXMgaG93IG1hbnkgZHJpdmVycyBjYW4gYmUgcHVsbGVkIGludG8g
dXNpbmcKPiB0aGlzIGxpYnJhcnkuIFRoZSBpc3N1ZSBpcyBnb2luZyB0byBiZSBhbGwgdGhlIGV4
dHJhIGZlYXR1cmVzIGFuZAo+IHdvcmthcm91bmRzIG91dHNpZGUgb2YgeW91ciBiYXNpYyBUeC9S
eCB3aWxsIGNvbXBsaWNhdGUgdGhlIGNvZGUgc2luY2UKPiBhbGwgdGhlIGRyaXZlcnMgaW1wbGVt
ZW50IHRoZW0gYSBiaXQgZGlmZmVyZW50bHkuIE9uZSBvZiB0aGUgcmVhc29ucwo+IGZvciBub3Qg
Y29uc29saWRhdGluZyB0aGVtIHdhcyB0byBhbGxvdyBmb3IgcGVyZm9ybWFuY2Ugb3B0aW1pemlu
ZyBmb3IKPiBlYWNoIGRyaXZlci4gQnkgY29tYmluaW5nIHRoZW0geW91IGFyZSBnb2luZyB0byBs
aWtlbHkgbmVlZCB0byBhZGQgYQo+IG51bWJlciBvZiBuZXcgY29uZGl0aW9uYWwgcGF0aHMgdG8g
dGhlIGZhc3QgcGF0aC4KCldoZW4gSSB3YXMgY291bnRpbmcgdGhlIG51bWJlciBvZiBzcG90cyBp
biB0aGUgUnggcG9sbGluZyBmdW5jdGlvbiB0aGF0Cm5lZWQgdG8gaGF2ZSBzd2l0Y2gtY2FzZXMv
aWZzIGluIG9yZGVyIHRvIGJlIGFibGUgdG8gbWVyZ2UgdGhlIGNvZGUKKGUuZy4gcGFyc2luZyB0
aGUgZGVzY3JpcHRvcnMpLCBpdCB3YXMgc29tZXRoaW5nIGFyb3VuZCA0LTUgKHBlcgpwYWNrZXQp
LiBTbyBpdCBjYW4gb25seSBiZSBmaWd1cmVkIG91dCBkdXJpbmcgdGhlIHRlc3Rpbmcgd2hldGhl
ciBhZGRpbmcKbmV3IGJyYW5jaGVzIGFjdHVhbGx5IGh1cnRzIHRoZXJlLgpYRFAgaXMgcmVsYXRp
dmVseSBlYXN5IHRvIHVuaWZ5IGluIG9uZSBwbGFjZSwgbW9zdCBvZiBjb2RlIGlzCnNvZnR3YXJl
LW9ubHkuIFJpbmcgc3RydWN0dXJlcyBhcmUgYWxzbyBlYXN5IHRvIG1lcmdlLCB3cmFwcGluZyBh
IGNvdXBsZQpkcml2ZXItc3BlY2lmaWMgcG9pbnRlcnMgaW50byBzdGF0aWMgaW5saW5lIGFjY2Vz
c29ycy4gSG90cGF0aCBpbgpnZW5lcmFsIGlzIHRoZSBlYXNpZXN0IHBhcnQsIHRoYXQncyB3aHkg
SSBzdGFydGVkIGZyb20gaXQuCgpCdXQgYW55d2F5LCBJJ2Qgc2F5IGlmIG9uZSBkYXkgSSdkIGhh
dmUgdG8gY2hvaWNlIHdoZXRoZXIgdG8gcmVtb3ZlIDQwMApsb2NzIHBlciBkcml2ZXIgd2l0aCBo
YXZpbmcgLTElIGluIHN5bnRoZXRpYyB0ZXN0cyBvciBub3QgZG8gdGhhdCBhdAphbGwsIEknZCBn
byBmb3IgdGhlIGZvcm1lci4gQXMgZGlzY3Vzc2VkIGFib3ZlLCBpdCdzIHZlcnkgdW5saWtlbHkg
Zm9yCnN1Y2ggY2hhbmdlcyB0byBodXJ0IHJlYWwgd29ya2xvYWRzLCBlc3AuIHdpdGggdXNlcmNv
cHkuCgo+IAo+IAo+Pj4KPj4+PiBbLi4uXQo+Pj4+Cj4+Pj4gVGhhbmtzIGZvciB0aGUgZGV0YWls
ZWQgcmV2aWV3cywgc3R1ZmYgdGhhdCBJbnRlbCBvZnRlbiBsYWNrcyA6cyA6RAo+Pj4KPj4+IE5v
IHByb2JsZW0sIGl0IHdhcyB0aGUgbGVhc3QgSSBjb3VsZCBkbyBzaW5jZSBJIGFtIHJlc3BvbnNp
YmxlIGZvciBzbwo+Pj4gbXVjaCBvZiB0aGlzIGNvZGUgaW4gdGhlIGVhcmxpZXIgZHJpdmVycyBh
bnl3YXkuIElmIG5vdGhpbmcgZWxzZSBJCj4+PiBmaWd1cmVkIEkgY291bGQgcHJvdmlkZSBhIGJp
dCBvZiBoaXN0b3J5IG9uIHdoeSBzb21lIG9mIHRoaXMgd2FzIHRoZQo+Pj4gd2F5IGl0IHdhcy4K
Pj4gVGhlc2UgaGlzdG9yeSBiaXRzIGFyZSBuaWNlIGFuZCBpbnRlcmVzdGluZyB0byByZWFkIGFj
dHVhbGx5ISBBbmQgYWxzbwo+PiB1c2VmdWwgc2luY2UgdGhleSBnaXZlIHNvbWUgY29udGV4dCBh
bmQgdW5kZXJzdGFuZGluZyBvZiB3aGF0IGlzCj4+IG9ic29sZXRlIGFuZCBjYW4gYmUgcmVtb3Zl
ZC9jaGFuZ2VkLgo+IAo+IFllYWgsIGl0IGlzIGVhc2llc3QgdG8gZG8gdGhlc2Ugc29ydCBvZiBy
ZWZhY3RvcnMgd2hlbiB5b3UgaGF2ZQo+IHNvbWVib2R5IHRvIGFuc3dlciB0aGUgIndoeSIgb2Yg
bW9zdCBvZiB0aGlzLiBJIHJlY2FsbCBnb2luZyB0aHJvdWdoCj4gdGhpcyB3aGVuIEkgd2FzIHJl
ZmFjdG9yaW5nIHRoZSBpZ2IvaXhnYmUgZHJpdmVycyBiYWNrIGluIHRoZSBkYXkgYW5kCj4gaGF2
aW5nIHRvIHB1cmdlIHRoZSBkZWFkIGUxMDAwIGNvZGUgdGhyb3VnaG91dC4gT2YgY291cnNlLCBh
ZnRlciB0aGlzCj4gcmVmYWN0b3IgaXQgd2lsbCBiZSBhbGwgeW91cnMgcmlnaHQ/Li4gOkQKCk5v
cGUsIG1heWJlIGZyb20gdGhlIGdpdC1ibGFtZSBQb1Ygb25seSA6cAoKVGhhbmtzLApPbGVrCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
