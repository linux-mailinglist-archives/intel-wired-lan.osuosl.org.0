Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 768557844A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 16:45:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 070B360AC9;
	Tue, 22 Aug 2023 14:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 070B360AC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692715499;
	bh=S5R/gOYveki1v3VrtbYfMJKqcJ/Bj6MTO1OZWoVerTY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XKN1vkLd2wWxz6pTnp62ihHEzkZj5qVshr8i862K8iISXe3jx1NppXvehb15ruiSF
	 TiPstmlUv844Qel+BAY83jpiSv1+pPUd8l3lFeEKlkfr52dQ4cLDbFxWQlDdMROewi
	 CYyCIO7Ufi8C2Po9bYF+w+3v4G9HyspJPHkCCRH9nogQ7LrVT2iAjzMIAqH61HMVMk
	 dAufysV7RcM7eiQJqI1c1T1iLatJ4mH6IyQYUicAETB5MSdcWRCpxtW4TAXQU+lQZX
	 VGm1XZCm2BB3c4LGrL3iovFC1WBNktDDnb++boTFqoSLM6Su0iqtdFKO6ENEGweFYC
	 B2EkfUVNPjlKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rjlj5lVhu4ma; Tue, 22 Aug 2023 14:44:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C56546079D;
	Tue, 22 Aug 2023 14:44:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C56546079D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D758C1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 14:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9FC94089B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 14:44:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9FC94089B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69Jx1I2oHuCQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 14:44:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBED040895
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 14:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBED040895
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377656246"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="377656246"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 07:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="713184179"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="713184179"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 22 Aug 2023 07:44:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 07:44:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 07:44:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 07:44:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 07:44:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eaDvM4WqgT0LIJ2FsoKeDdUqloLnhLYZ20vikFjzauhpsR0rifywkaAjZKwLnJNjen3Wz0ctHm2RtQMPdQjxLH+MYULmJToj8tTgufL2zYNtLPoA3lZKioFrWQCTp/+eF42bzYfp2X/Cv1tafVtVquNsA7vuyBhTsvhW7zZps1CzYbfvZT0B1P4Z2tPgB4Chd4FkkwqUZ20kJGKeG2fpVLq/GSJuFEYnq26Z3Fle1QOWn9UQ4kvbqSg0XYb720UB16djhbrAZy13Dw2pWFxAdG3HkJ5T+ApaVGbpddQMdjh100Fw/FDt/5BgaFbTNezY9Fxa0iRsm3B1tQUHHk/+mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XAesGsxnV+omO1dOzrTVmpAFC+vYNQSHP9u13lJY3kc=;
 b=dz3axw7I5ftiAB5QT1FLgc7okGGDfNsUXk1vSHAB8XbI/GPYuGNprftaWXjkNcVeWC1ouLVz1I7/fjqPw0hFkVNdvb83ozSL2IVul9g/Sf/tuow8uSTccIGFo33SusZLTva0NQwy3ghou7HNQSYDQxXlnwMfy7jDuAG/vAz3rHxMcpjAdH5eqJiXMLmQH4XC8xPRpA1kEU78iGAYRXLjl/pSPvlzx8JXGvZ+Pm7y+ULQhNpSPLcg4MtJi8WIi6TKQkc7hk2K9kvc6TA/VrEAwWFofp45PmLw0ofryNVE+xNALSW+gNvi+yYZkC3iwNadGZVm3LlhFKyouYpvAcUHYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by BL1PR11MB5555.namprd11.prod.outlook.com (2603:10b6:208:317::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 14:44:36 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 14:44:36 +0000
Message-ID: <f497dc97-76bb-7526-7d19-d6886a3f3a65@intel.com>
Date: Tue, 22 Aug 2023 16:44:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, Simon Horman <horms@kernel.org>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
 <20230819115249.GP22185@unreal> <20230822070211.GH2711035@kernel.org>
 <20230822141348.GH6029@unreal>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230822141348.GH6029@unreal>
X-ClientProxiedBy: FR0P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::16) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|BL1PR11MB5555:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f2aeec7-e6a2-41cd-a853-08dba31e4e9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1AFu/J+o99B6AEY6pgK97r/JA4JXGgbUSrGEtgnUU0N7uTbNVapc4tYpo/CJZ8NAReUTyzGGdGTQxV1jp3VsBa2piR37VZa7eoPD+UxOG7FZu768E1ukRPmIYU5UcH40rWP55rI/GV59uxx7P0gI2NalF0VOVxsNeo3JwRnOJ/6yf3cLQ6AqOjG9dijUbZqelElDr49GeaxeCy++SqzF2jBt2slOVqVUKh0V1y3996gY/M+m6AgACTNMugHXtE+3QoX7rBmMUX5i/Fjyr4wbLiPMbIecm6Wv/ckszD3VteunTS9YFSvYbrPGirGV7Vw7PnZro8gOWKYGPie6LYkdq25v4O1CaFk7r4dq1C7AvnYJ5wUHAYe22brzYhHLWGSXe8Wmk0F4ptLKFcHRv/TyqumnBPK4r9bpA0S48V7u4bZ6fO8iYqdnAvSTAK1sVM30hshIugwynODnigopuUNqZGjKn2pWbWKCmwF6GmU5gNxcvLAF9GNPuQ4xMeRKlq9cKkARCtQQeDYBC2AdPeYYn9NfvdsAtzNCff/dQGZGA5Aa0phmLciPMKN+ptczZ9CP+BSBJD2PPIiGbSEWyN7m1hitSOT3eJOge399iJYqZS/5Jao6xapFieaBNmE7IIbBYzFdAO5N+2DmcEkpDqSeE7mqNLlq5/Pidfs8qXhb35ICiw8B80YmvdC14T+Kf1TY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(39860400002)(346002)(366004)(1800799009)(186009)(451199024)(66476007)(66556008)(6512007)(316002)(66946007)(66899024)(82960400001)(110136005)(8676002)(8936002)(2616005)(4326008)(966005)(36756003)(41300700001)(478600001)(6666004)(38100700002)(6486002)(53546011)(6506007)(83380400001)(2906002)(31686004)(31696002)(86362001)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2M5cGQ2NXB0WisxRGJYNTJOTW5KMlhDeHd1a3ptUFU2b0NuWXViemEvc2Fp?=
 =?utf-8?B?ejBuTzZ3MUh0WmpEUndhSU9MS01Dcm9QVGE0Ri9RTkNrK1p6eEg4MEk5ZXRv?=
 =?utf-8?B?OGdIY1h6M3lEQ05nVjU1RGU4UFRuMlF0VU9lZ3g4MldYbmRVaXVueTJyMW9x?=
 =?utf-8?B?dk1BeUVkNCtGeThBamZSZWVOcWl0cVRnbElMd1FnQVJ1cSt2dHZHd2tVdEpP?=
 =?utf-8?B?WSt5THcrWVFQS25YRU5TNWJ3SDJ3OFovdVRsTHdFQlpHL1ZuQjIxRDk4RW9q?=
 =?utf-8?B?S3RCc3U1d2JYbVl2YUc5TG5XUHhiaWtOS1RuQzRzV3h5b0plckI4YkJrb1FD?=
 =?utf-8?B?NjY2ZDRXRVpkWEZPNjM4QXhNMmNmT0FjQU1NSXFrd2pxemNBUU1yeUtDS012?=
 =?utf-8?B?ckptMDBSMkJFU0pFdWN1RUQrbEhoUmIwcGdMSWdDRlZNVjdjUjV5eE81NlV4?=
 =?utf-8?B?OUpoMXRCRlpHbVZMd0k2dHo1TFZjd3RKOHVEQWl4d1ZlWlUra2o4RDdsaTBW?=
 =?utf-8?B?cTBNZjVQN2t0dVJaeFBlbi9tSm96Nno5eVZDNVU3djRKTmVtV2xONTNqaXN3?=
 =?utf-8?B?TURWdE9yVjE2SU9nL3NvNTJseW9QK3lJb2ZFbzluOXpyWFltK2xxcVJXVmxG?=
 =?utf-8?B?cFVnMkNnMDVKeWx3MEd0SWYvSnJmTXNKMkx6MTVqSlFCZ1cvaWE1bk9jRWlS?=
 =?utf-8?B?bW9HK0x6OG9helFuaGdLcnFwWVNtVDhiNUp3cUxtQnMrZ0tsYUdBUXFoLzEw?=
 =?utf-8?B?bmtJejJYVG41Mlg4SWVFaHZuSzh0OGtnMjAyOGpWVDlnay9WbTRWT3ZZS0tt?=
 =?utf-8?B?UGlRMzhudmtQd3p2Z3Yrb0F4V2RlRGdEQjRHRHo3WmpqQ2RjMElsVDl4Q1d2?=
 =?utf-8?B?N29FZ2tmcGxRNkg5ZEp6RStxL1BmRndCcFgxeHI0K0ZsVWNJOUoyZVpPWUMw?=
 =?utf-8?B?RGJPT0l1QzNwMlZNdVp5WU81YkFSYUl6dWhZM2lYK3FnMm5EeVNJVVBLa2Np?=
 =?utf-8?B?NURBZWFCeUpuaXkwa1Z5RlM2WFVPSmhBUUE2UFg3SUFJUnVDR1VKMWJ5aFZ4?=
 =?utf-8?B?LzdvTExzckN1emN6VjVjWWF6MkZBd29MUGg1YjlpVnlTVHVLMzFqVHlvVEFq?=
 =?utf-8?B?MWptdU13VXdmOUdmdEFYWFVISWo1ZjFQQkFQQmdaNWZkcXoxbXRNNjVYb1Vt?=
 =?utf-8?B?b3FRVUlzVHR1QzFGTUpIUHNFY3ZNeExQQjJ6UjM2WWNFRUlka2ltUlFYUGtV?=
 =?utf-8?B?VWhDeFNuVE1mSUdiOHNsRm9CYmRna1BYa0M2M0l5bG1tbG9nRWRWYXJjNXZR?=
 =?utf-8?B?OStWcUFEVGdpNUQvcGhpT1QzMFplSmRRY3ZHaGRhU3p3eGFHRENMUmptc3RU?=
 =?utf-8?B?MWZhTUVHbkNzNjYwV3N3ZlZEU0J3RllMWFh6U0s2NW1MeVVGc2xxakJlUzB2?=
 =?utf-8?B?SHZkY3ZMRHY3TmR6K09wQ2tKTFE1OVZ4Nll1aWNpeXFCT3NGSGsxaERSTXNi?=
 =?utf-8?B?N3ByNkU2M3d1MFZTOU5SMnZ0UXNZazFSck5CaUtyM3R3eFZQeVdjQXhGVHZp?=
 =?utf-8?B?VzhhcHZMVXBnc0UrZ2Vscmc2SlRBMHRtalphYlNiVURQZjB1SnhmaWRtQWo3?=
 =?utf-8?B?YlJ1WUlZOEVTRGs3UUZWU0R3MExZelFsTUNqV2lpMDYzRmp5T0M5bGdGWkFJ?=
 =?utf-8?B?dzU0ckMzdTRYTFFIYWxMVmd3OU9BZ3pvR2JIZ1lzSm1DZXhTSjdabHQwd3c3?=
 =?utf-8?B?K0dpZ2VHditjUGxSU0duNXZteURGMVk2L2dlM25kb0c4ZkticUtBNVpQRXEw?=
 =?utf-8?B?YmRWWWtXejMxNUxzZ1RHYkt0cWRER2JvM0xLQ0p1Y2thTEVDcVRINGFVcTBk?=
 =?utf-8?B?SHlFMHN2ZHZUVTdqWjFDaTVOR21MVGg4cmZEQmtIMmpjM1gvWksvOU9sbmwv?=
 =?utf-8?B?aXdIN2Z5L0tjRUVvVytVcjZUSkpvZG43U3N4d1AwSjNHZDlwYkFhVUVpNXAr?=
 =?utf-8?B?V2lMM0MyRHh4aHFRYXpkVXlYblIwcGl3aWVzYXdiZGRUVjVBN1JoUllDQlox?=
 =?utf-8?B?RkpPcTkvV00ySnNybDc0OXM1MUxSR0IwS3laVWF6U3ZZNUluL0prQ2lrdnRP?=
 =?utf-8?B?alJMVW96aEJpaVJJWTNDREd3YUhLSFdKeEVIbWhlZnlGV3paWUViMGZYQ3RD?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f2aeec7-e6a2-41cd-a853-08dba31e4e9b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 14:44:36.7467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ekdluDdI8S0wptiRBUnq8dT3g9l3CujxJ2jlE9xEDl/6FlR5V9RAVf6/t7btJswjUE33n7cV1EUpKGsoUjl3BP1I8dStnJGNrUS2Nut39o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692715490; x=1724251490;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nteqYLE8OVHV638aEcg6/R5kWYgvC+DY0fun3TxJyTE=;
 b=iUvFiSeZFhb4j6RmI+cg7ncczCoIglPR00F7qXplivsOY+0Q51W5yYzl
 n4PSeu7DJweeS2ZyuJF5dhFC6fyfQ+kcOeaO3WQPohjRoaSqwnjLA6j2Q
 ZW9D1ZZuGTl9h245jJOV5zTcxcV0fAKXbbm7jbzaq8ZcNJXiTcYE8J1ei
 HrnZD5f4SBUSzRG98jKJ1gZKEsgfMkoukxBiBqu4x8Tt64V5m7USv19DX
 sZezOBKWC9+777i9tu3nDWmzVQCWndi3hqOCUQ8LG0JbtKUJdrOt9dRzg
 GbgrPI1KvAlZIanvSozc9A+A2q2DhDqoeH3+UGnKpWVHrcpVXeLwXiFHU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iUvFiSeZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8yMi8yMyAxNjoxMywgTGVvbiBSb21hbm92c2t5IHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDIy
LCAyMDIzIGF0IDA5OjAyOjExQU0gKzAyMDAsIFNpbW9uIEhvcm1hbiB3cm90ZToKPj4gT24gU2F0
LCBBdWcgMTksIDIwMjMgYXQgMDI6NTI6NDlQTSArMDMwMCwgTGVvbiBSb21hbm92c2t5IHdyb3Rl
Ogo+Pj4gT24gVGh1LCBBdWcgMTcsIDIwMjMgYXQgMDQ6MTc6MzhQTSArMDIwMCwgS2Fyb2wgS29s
YWNpbnNraSB3cm90ZToKPj4+PiBUaGUgaWNlX3BmX3NyY190bXJfb3duZWQoKSBtYWNybyBleGlz
dHMgdG8gY2hlY2sgdGhlIGZ1bmN0aW9uIGNhcGFiaWxpdHkKPj4+PiBiaXQgaW5kaWNhdGluZyBp
ZiB0aGUgY3VycmVudCBmdW5jdGlvbiBvd25zIHRoZSBQVFAgaGFyZHdhcmUgY2xvY2suCj4+Pgo+
Pj4gVGhpcyBpcyBmaXJzdCBwYXRjaCBpbiB0aGUgc2VyaWVzLCBidXQgSSBjYW4ndCBmaW5kIG1l
bnRpb25lZCBtYWNyby4KPj4+IE15IG5ldC1uZXh0IGlzIGJhc2VkIG9uIDViMGExNDE0ZTBiMCAo
Ik1lcmdlIGJyYW5jaCAnc21jLWZlYXR1cmVzJyIpCj4+PiDinpwgIGtlcm5lbCBnaXQ6KG5ldC1u
ZXh0KSBnaXQgZ3JlcCBpY2VfcGZfc3JjX3Rtcl9vd25lZAo+Pj4gc2hvd3Mgbm90aGluZy4KPj4+
Cj4+PiBPbiB3aGljaCBicmFuY2ggaXMgaXQgYmFzZWQ/Cj4+Cj4+IEhpIExlb24sCj4+Cj4+IE15
IGFzc3VtcHRpb24gaXMgdGhhdCBpdCBpcyBiYXNlZCBvbiB0aGUgZGV2LXF1ZXVlIGJyYW5jaCBv
Zgo+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90bmd1
eS9uZXh0LXF1ZXVlLmdpdAo+IAo+IFNvIHNob3VsZCBuZXRkZXYgcmVhZGVycyByZXZpZXcgaXQg
b3Igd2FpdCB0aWxsIEludGVsIGZvbGtzIHBlcmZvcm0KPiBmaXJzdCBwYXNzIG9uIGl0PwoKTW9z
dCBvZiB0aGUgdGltZSBJbnRlbCBmb2xrcyB3b3VsZCBiZSBmaXJzdCB0byByZXZpZXcsIGlmIG9u
bHkgYmVjYXVzZSAKb2Ygb3VyIHByZS1JV0wgcHJvY2Vzc2VzIG9yIHB1cmUgZmFtaWxpYXJpdHkv
aW50ZXJlc3QgaW4gZ2l2ZW4gcGllY2UuCgpGb3IgdGhpcyBwYXJ0aWN1bGFyIHNlcmllcywgaXQg
aXMgYWJvdXQgcmlnaHQgImNvZGV3aXNlIiBzaW5jZSB2MSwgc28gCnlvdSBhcmUgd2VsY29tZSBm
b3IgYW4gaW5zaWdodGZ1bCBsb29rIGF0IHYzCihJIGRpZG4ndCBwcm92aWRlZCBteSBSQnMgc28g
ZmFyIGJlY2F1c2Ugb2YgIm1ldGFkYXRhIiBpc3N1ZXMgOiksCndpbGwgdGFrZSBhIGZyZXNoIGxv
b2ssIGJ1dCB5b3UgZG9uJ3QgbmVlZCB0byB3YWl0KS4KCgpHZW5lcmFsIGlkZWEgZm9yIENDJ2lu
ZyBuZXRkZXYgZm9yIElXTC10YXJnZXRlZCBwYXRjaGVzIGlzIHRvIGhhdmUgb3BlbiAKZGV2ZWxv
bXBlbnQgcHJvY2Vzcy4KUXVhbGl0eSBzaG91bGQgYmUgYWxyZWFkeSBhcyBmb3IgbmV0ZGV2IHBv
c3RpbmcuCk91ciBWQUwgcGlja3MgdXAgcGF0Y2hlcyBmb3IgdGVzdGluZyBmcm9tIGhlcmUgd2hl
biBUb255IG1hcmtzIHRoZW0gc28uCgpUaGF0J3Mgd2hhdCBJIGNvdWxkIHNheSBmb3IgcmV2aWV3
IHByb2Nlc3MuCgoiTWFpbnRhaW5lcnMgc3R1ZmYiLCBJICpndWVzcyosIGlzOgphZnRlciByZXZp
ZXcmdGVzdCBUb255IFJlcXVlc3RzIG5ldGRldiBNYWludGFpbmVycyB0byBQdWxsCihhbmQgdGhy
b3R0bGVzIG91dGdvaW5nIHN0dWZmIGJ5IGRvaW5nIHNvIHRvIHBhY2UgYWdyZWVkIHVwb24pLgpB
dCB0aGF0IHN0YWdlIGlzIGEgbGFzdCBtb21lbnQgZm9yIChsYXRlPykgcmV2aWV3LCB3ZWxjb21l
ZCBhcyBhbHdheXMuCgoKCj4gCj4gVGhhbmtzCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
