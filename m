Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F1C66A5BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:13:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D140415B7;
	Fri, 13 Jan 2023 22:13:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D140415B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673648000;
	bh=sxx3cw0mmI3r1vPi2GPo8CSPwEiRZ+Afu3wRKNUEuCs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h7VucdQAbHeQ+Ood/qbt2Bp4YrBXBubmm+Ki1DLnwsmnDYPoQUAo57M/axb+Lr1mI
	 U1I0NpuRi65p6dmt2fUigVSt+6dmWjG+NWVBzQfJwQJs4p44P+hktxT1+/LDVmvWMV
	 NHld3nZC3+czLpqMrmKN+OJNpLdXHwMZZHY2fyi67q+E5CJno6M/RXx53P3tuNJWWa
	 RSrQ4ObU8a3ADAGtpzGDqGXVRCKu/kfkh6j9Lc1R7/+Y8CaScYCb6/vvvRa279g6bN
	 twwZ1jcLocjXlyIAtZ76a9iu53w773u09wCNCX8/QaMYjWqioM9qywyNKQlWa3EqUQ
	 /dDAOgsb8dOoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mYLb98m46BM8; Fri, 13 Jan 2023 22:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45EA740201;
	Fri, 13 Jan 2023 22:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45EA740201
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8C511BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B237060E71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B237060E71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-Dy_b3Sh8tw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:13:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D11F260B70
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D11F260B70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:13:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="304493970"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="304493970"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:13:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="747069039"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="747069039"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2023 14:13:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 14:13:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 14:13:09 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 14:13:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hp8gONUw60asgkt1xOVvNwAXlSQ029Lj/+UdyETGRQR/uo9Uhw2htwm6X9pFVDVyJcICTZzUrse9LcDWVDI3BtbfUXyqBhS06etXlnQ9EcKj/fwoz/ICnnoKdTjr9koAgtU9YQ7vuZOpAoDm8io8AZCwpt6IeEepoUn1qwA+aSXi3DatZkUwTKp8Svbm16sDSxhmyZLqCz0cOw5Ud2vNsEwfDPWgv1EzKRUU7YudXkwZ0Gv5bFIWyKIZVQ4AKNpNRdvsBcW6WRvTiE2b1Ubydvqt0xQnm3JHOO9XKZ0qFf+umaVhraWpaABgnFjTKRduo3a20eJ+ASJBllr6ra1hBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N2BqNigX1iz29FyIRaO418WXOLaQXYWMllEqwa9gfEc=;
 b=UgxaUOehCqOB246TtUuhCoBPgD3qZjqHCixocoZrJVR1oIbxNJzPXf99jmaWzWe/nJxj/W/7sC+AN4z+sQlpH8CDRxW+PKxf33FCgULjqhsEmjX2xHnonIOHn5gXtvMWbSHmh0E/4zHcgf7LlC8fFTC7cp4dir44/YELTrgB0ZiGX4JQc5t6fySFCdTTE1y7b03RnDXe6hFuolEEopLnchNFTocJxswr49kHz71A+FuCSs/PfjpA1pZlUKNyZpWZcKaJJqhP7PHLUPu63BHUpvelrTKk6+1egJO6PmxfQNXWlmXzOy/QA/EP6pycnfPIW3Txb9OE/Gc23XdacIXc6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by PH8PR11MB7119.namprd11.prod.outlook.com (2603:10b6:510:215::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 22:13:06 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::ae83:22d0:852a:34f7%9]) with mapi id 15.20.6002.013; Fri, 13 Jan 2023
 22:13:06 +0000
Message-ID: <7188138f-3f07-97f3-33df-9c64a76e7895@intel.com>
Date: Fri, 13 Jan 2023 14:13:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
 <20230111191906.131-5-paul.m.stillwell.jr@intel.com>
 <Y7/lpDzq6q+SWRxK@localhost.localdomain>
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
In-Reply-To: <Y7/lpDzq6q+SWRxK@localhost.localdomain>
X-ClientProxiedBy: SJ0PR05CA0123.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::8) To CO6PR11MB5636.namprd11.prod.outlook.com
 (2603:10b6:5:357::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5636:EE_|PH8PR11MB7119:EE_
X-MS-Office365-Filtering-Correlation-Id: 1038e587-a5fe-42c7-bc45-08daf5b358da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lRWSbBBIzl/5/n3/mwBj1B3MTlp+Up6bMaT08j63xwuonynMXJ7sJaHWHfoI1WHjxaHu9pQtqG+kAphx9F3FPDLcKw/lE3EMqJ4JXleaYpEsuqIHm9l+XOxEgPHwc+SF/ZrrHERKOGvEWNBb/9f19A5EXmZtu0yb/P+PsdV64rWHzZkh+Btp9j4+rc21NUst7cbvCp9vKrZG6+oYqUfrioeMoojZWST2qnkaBUPRwF4KJHk9v/ekffHi2s4nnhP7W1J98lOMxuAQZAZEVP8e3l/kUNAJhKuslA7/M1mZ28MRbDwurdGJ0NznsUBMcWlWL2LsCD779aYV+jGktmGM+WUHZNIsovUoM5c1V53w3b8f5ZabJJK6DNneRNzWoAAwWRA6ymfqS4Voyh3wodfovJArycIQ8aEpkPsBfq0EJykhyXBaC8kFzDtgJ3PdPGR1HkciYZJqSsW5PQpU14xPngi3q6KEAZSoYPByRhaFsp45NdBvPKHBnptwh19vX53I56UZ0ILMbCxEOIYOpbECDFGM++quM+62wYsD0hCWNSQbRhhcoXlaIAj2zz1CwyQZpNaeUIBIjb4JGDqmYTTN6mIDXopd8GWvkpWgKjz7HprhPp2fKE7KcU7D3Ga4M0AUvELuewm0ODSvTYn8tOXvfVeNnM9J7unw7xQTTNAPwGJUpLkw7EGpcqxzHlciDfxty1jd3tXAW4mF8RJzL38plhdg8z/HJkoupb4Gzdx6tPMhRICfvtuaMtAvHdtochs+L/cwHw5crD3rK8cc2rHi/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199015)(31686004)(66556008)(2906002)(5660300002)(36756003)(66476007)(2616005)(8676002)(316002)(4326008)(53546011)(41300700001)(6486002)(478600001)(8936002)(26005)(6506007)(6512007)(186003)(966005)(6916009)(31696002)(66946007)(86362001)(83380400001)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXNxQ09CMnk0VnNSSUF2UEtoOWhqeHZrSFFaOW1hbHN4WW56WU52dWZ2N0U0?=
 =?utf-8?B?d1p2RXhVb2R4S01ucktUZ3B3ZFowK21zandPV3h4VTFlYks5Z2kvVVBzbFdD?=
 =?utf-8?B?bjBuZmMzQytvRUJOU2hNZFliZmJiQ0UrUHV2V0RYTUQzNGgrYnhyZmN1K2pB?=
 =?utf-8?B?Q1hGRUo5TXM3a0hxb0FKT2pweGh4ckZRd1pZUkJNZG4zdGdjRU1ZKyt3NjQ0?=
 =?utf-8?B?QVJJMUJnTmhIYzV4eGV6V244M2NGdVhJV0d6WDMwVjdLWkZ0dkRrZWJPaEE2?=
 =?utf-8?B?c3dtcXlsSU9yRGVKRWV3L1krM3FwOTJQMnhydlN2c0E4TDgzMzA2MkI5YUdD?=
 =?utf-8?B?QzRUUzd0NjJBYWpWUE1GQkxnUm9zanF1c0wxOU9hWU5wVjk2V1ZmU282QlFX?=
 =?utf-8?B?RWdsRGRncE03YmpOMzFFNkpsM3ExL3RBaGVkMWVMK1RHOGVGQWlzbTJMbEpo?=
 =?utf-8?B?eWppMGRsem5wbXJTamlpOUp6WW9aK1RGaEx0YmtwV1JtT25FbkhDRUt2Y1Zm?=
 =?utf-8?B?d09lSTRjcHQwK0NveHJob2l2WGU5blJzcVUyYzhYVlNoRXRub3JkMUdqZ0dy?=
 =?utf-8?B?eU5HL1NMTzVDRmhFdTBZeEVtdHNxRkxhQk0vRnJsbjdOb3VFY2NBSUkvMDJw?=
 =?utf-8?B?em5Qdm1SSUhsbW9laWgxMVdYZUMyMmJ6UmtiWHlUdmVxSlJ6bFkwdUdLZWh6?=
 =?utf-8?B?UXlOYnZOa0tlRXVwK2ZGYm8yQmpHaG45UUlSSThUbDdxQkVFV2lTNEo0aE9C?=
 =?utf-8?B?ZUhxWWdFUUdlQzUrVjdQM2ROM2JLREE1YjRIVFNoZm1sUXhkTGszcVdwb3Js?=
 =?utf-8?B?U0NZOE5VNElBYkZLem9sbTVQSysveHVQUXFPajlPVzVnSUZUaGQyUEZrSHYy?=
 =?utf-8?B?aXVUOWFnb3VnQ2E4SmVrY0FPR3c1bXEvVVluT1h6M2FCdTIyZzNJcnFvcjg4?=
 =?utf-8?B?R2hCa1BFY2RmN2p6WXQraElQQWtoTFVMYk4ycGw4MkJyQWtDTjRwNnkwYkNy?=
 =?utf-8?B?K0hucFBoVk9jc0x3MzVObTBIbExQNDdZbVdXbTJycEJPSlBSTWpka2dvam9W?=
 =?utf-8?B?a2ZVZmVwWHoxZEtwNDdoYnFDVWdXN051V2c3M2hvS2w0WEtvM1E0R3NxeFNB?=
 =?utf-8?B?dTNQdHBFVXVXeXJTc2c4b3N1ZWxvTEZkS0h0MGRkZmxmcDQrSU5RVE1tTktE?=
 =?utf-8?B?SjhLckZYRCtzRHB1REtrei80bVhhQlpHbG5RRjBUVFRMSkxEUmx0YTVUMk9w?=
 =?utf-8?B?U2FXdnRBTkhOVXVMVENCT2FzVHJpS1Z4TUJJOEFZMTJxOFRpcGp3NDRaYTR1?=
 =?utf-8?B?bUw4MU9jYnh4Wk9tUjJKWU54UDVHY3NVTGFUYkl0SmdPTVdXS3pXMmZXaFlO?=
 =?utf-8?B?NDg0YU9pdlppZ3BzcG1nNUNyZlFKUmw1OC9kMUFWTjdaSmhCUnU3VmxGQnQ1?=
 =?utf-8?B?T3FUQ2dZWjdRTEUyVW1VS1ptQWYwRk5KQlhvMzZqdzVaNGZPN05heHNKd1N3?=
 =?utf-8?B?Si80bTdlK1h6Y3pPcU1IRjNXcW5qMDBxMWVoYXpoanV1RnV0Mko5UkI3a01u?=
 =?utf-8?B?Y25uSHBUaTVySjlXNHdLMFR5OFRkTEU3TDBlaE5OQXJ2bExxRDRVRXlPcEtZ?=
 =?utf-8?B?dFlXOXRzeFlxM1Evb3JBQ0libU5obUJMdENRQXNYT1dXMjR6R2xLYlF5OHVO?=
 =?utf-8?B?Lzg4VS9oQWRNZ3g2cGlVUU9XR1lqTEoyRHBJdGM4bVhZWUxMNEhuY2ZzWnk0?=
 =?utf-8?B?ckY0QmVUSjZuZDhJcnVFcTRqVUM3SFI3blMzOGJQSEJ3RSttQkJMVkl3UUp1?=
 =?utf-8?B?NWRTUENkcmlkcE1HSXlTMHZQTy8yWnVFOFM5WGZVUGthZzd4dEpRRWF1ODU2?=
 =?utf-8?B?djJYSmlIWVdaU3lPRm5vc21VUWFBSHg2VElUWTA5aDYrd3FMajRwL242Slh2?=
 =?utf-8?B?M2tBUEhRVW1PUkhvaCtTZHROU0dDU2sxM0M2YjZ0T09Td1RrSjFmanRUNURx?=
 =?utf-8?B?K2hCcGhjUUlKZ2dYSDc3VW5BdkNVcjR3aGx2QittWlVmak5VUHUranMvU0ta?=
 =?utf-8?B?ZWtic2QybkNiS21CQTIrc3BxTFpEcFFtK3lFbkFPOVFIalRvbUdNYWV4dVpv?=
 =?utf-8?B?VWZ1WGhDRFNPNG9MQjJJa0ptV0ZqWWxUSVBpU1h4c3cvM2dtblVHSjB1Y3Ux?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1038e587-a5fe-42c7-bc45-08daf5b358da
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2023 22:13:06.7214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GlF3z8I9QDEUnncaxDyJGzDbBIUewOO8iyxaHVJXHLxqRxt28Be+BAjG4trmlZwZ69LJxJOcU8+hL4S9aWwzngr0ROA//MkaIQnBoIM9MQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7119
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673647990; x=1705183990;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7vCwGOKfIAtBlon0+KbquOf8kmc0S8F+LPZrHV3oYrU=;
 b=dKOhvzppBx3bWyGLDvcwS2D4z9nvaa+bju+CTi7Ex2TS41MmNuqhPI6k
 RdpkCbqqQWavjdNCkHX9zsGvMxUVp2QeFMZSXqnhB09cBk21gLg9DFSx9
 bk4AgcViJn9m7Icj9G1G4gSj17EI0XUAcSj/RMmDG1xrqhfg3FJoW8UDR
 o/YFFdOwTYaV9I8/QOqozLlscNvM7B+9fZAouwTxdhznHw3hMoHvHGsIm
 y0jW5keKr/2PGx+ZcehUFdXb2Qg6+xEb1RPYOpRiiFlkpfiuWCPdRuIM0
 QlUeRHjSa8p73OStPIRc66qlDVhOsuz8HEecF3LV3fGaboxeutbU4ulul
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dKOhvzpp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 4/5] ice: disable FW
 logging on driver unload
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/12/2023 2:49 AM, Michal Swiatkowski wrote:
> On Wed, Jan 11, 2023 at 11:19:05AM -0800, Paul M Stillwell Jr wrote:
>> The FW is running in it's own context irregardless of what the driver
>> is doing. In this case, if the driver previously registered for FW
>> log events and then the driver unloads without informing the FW to
>> unregister for FW log events then the FW still has a timer running to
>> output FW logs.
>>
>> The next time the driver loads and tries to register for FW log events
>> then the FW returns an error, but still enables the continued
>> outputting of FW logs. This causes an IO error to devlink which isn't
>> intuitive since the logs are still being output.
>>
>> Fix this by disabling FW logging when the driver is being unloaded.
>>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 1b5debc3109d..593efc064f5b 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4500,6 +4500,33 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
>>   	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>>   }
>>   
>> +/**
>> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
>> + * @pf: pointer to the PF struct
>> + */
>> +static void ice_pf_fwlog_deinit(struct ice_pf *pf)
>> +{
>> +	struct ice_hw *hw = &pf->hw;
>> +
>> +	/* make sure FW logging is disabled to not put the FW in a weird state
>> +	 * for the next driver load
>> +	 */
>> +	if (hw->fwlog_ena) {
>> +		int status;
>> +
>> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
>> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
>> +		if (status)
>> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
>> +				 status);
>> +
>> +		status = ice_fwlog_unregister(hw);
>> +		if (status)
>> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
>> +				 status);
> Shouldn't hw->fwlog_cfg be free on deinit? Or if not here, where does
> this happen?
> 

No need to free hw->fwlog_cfg since it's not a pointer with memory 
allocated, it's a member of ice_hw. See ice_type.h, 863

>> +	}
>> +}
>> +
>>   /**
>>    * ice_cfg_netdev - Allocate, configure and register a netdev
>>    * @vsi: the VSI associated with the new netdev
>> @@ -5237,6 +5264,8 @@ static void ice_remove(struct pci_dev *pdev)
>>   		msleep(100);
>>   	}
>>   
>> +	ice_pf_fwlog_deinit(pf);
>> +
>>   	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>>   		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
>>   		ice_free_vfs(pf);
>> -- 
>> 2.35.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
