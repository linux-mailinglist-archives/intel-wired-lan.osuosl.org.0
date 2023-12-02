Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC5080195A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Dec 2023 02:14:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2C1542279;
	Sat,  2 Dec 2023 01:14:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2C1542279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701479654;
	bh=9fqCw36WQfroCqcKCVQOlS4OjWUE+J3QiU6xpjrR7D8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mE8IX5GClTZJLvV9Lx5hh2nIMtjsCA1AKO1EXZDRTFpFmAZxrWEFuy3JtVpClgcnV
	 RWD3IJRUnMFBlHrvirThDndoAT3Qnx6whIo1VOro3WNE7Ex4bXrFQbw04JAPbVHkoT
	 k88w3GAIolu5UGnILC4HlqYJfBwejAT9IqzhzpwP6bmvPxmV3aAAQ/dg/rPaMRFB9T
	 LUs8/KXeVKP/gg40PQ0m9PEgwe14hRUnb7H6b/D/aY6Ij00gbjumMIR7w2KRCUqsBB
	 KSv6WVgOYUwH6lyYYz9QS1T9E0lQOiCa4MPb7HG9X9dbq2+ExY68WWmnLsvW1Iisv3
	 AsfOzG7zamIPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OYDiLaAxPkzN; Sat,  2 Dec 2023 01:14:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C18142265;
	Sat,  2 Dec 2023 01:14:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C18142265
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45A851BF3CB
 for <intel-wired-lan@osuosl.org>; Sat,  2 Dec 2023 01:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28ACB8474F
 for <intel-wired-lan@osuosl.org>; Sat,  2 Dec 2023 01:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28ACB8474F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLcKAKT4pK0l for <intel-wired-lan@osuosl.org>;
 Sat,  2 Dec 2023 01:14:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 069B7846C3
 for <intel-wired-lan@osuosl.org>; Sat,  2 Dec 2023 01:14:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 069B7846C3
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="457892282"
X-IronPort-AV: E=Sophos;i="6.04,243,1695711600"; d="scan'208";a="457892282"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 17:14:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="860725456"
X-IronPort-AV: E=Sophos;i="6.04,243,1695711600"; d="scan'208";a="860725456"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 17:14:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 17:14:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 17:14:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 17:14:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 17:14:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IA3kqcNgxwYAqXEKVJ8cNuSph8yvfh9Gj7vW1pC9k+BmL/IUk8nFgx3Zv8XvDjWmGrOp+7rt69YOgUczvke3V1khRJapZHv1VgBIW42iqjZY5++xvmYNTXAIYAC7+5Dd/APWJUEfrY4ESsnBRBB8kziHhGJVTFnG1wiCSKArGJ7kIozdwa1qCb4sHDnb3pYoMOCowoC/GwTCcvm3IJIfLpi/qcsSOdRrx5ry/n9NP9pAWW4qmWqSmayr+WrGZJmYa/bzqam8Z+MJE/RXDOynf/EXlwBk2DMZnGmWezy757lSgc06TGBOE+btllYJdVwhgY8NKAqDvZa1v9ESgE2Kaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hXg/lz1SHCx5hQ60fzDiv1e8+klB7LZ8DhavWO5MAuo=;
 b=fL3Ure1FfFUhqjhioHGy29kFoB/cQbHEj/IT2TwoqVBLBMbL6pJaDfcgrAAtt8lAuhP0mkT1azeUSMw0NeQLsyvujtYLBJKypE0GGuxAy957SMRKuPFQmrWglrN2xoDO3UvbXv1Maiv6uVe33H165ug+vkmpt7ZpQHVzxJ/ufbRMio8Okm9+ZYOSjxkkb+15dhsVSRHt7lT5iJjiMpeafwjkuG00Q8ejWM1yeELpzqF6IoIOXWrs/bile5psm8+o6Wc5dCcSTxM+OuucbnFkGXxuOw32U8NnPuR7xxcRXFGUrSN6T8qp3pQOFy3L2pLtKqYdPiW7/Jd+c6+v8Tadgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DM8PR11MB5688.namprd11.prod.outlook.com (2603:10b6:8:23::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Sat, 2 Dec
 2023 01:14:01 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d%6]) with mapi id 15.20.7046.028; Sat, 2 Dec 2023
 01:14:01 +0000
Message-ID: <f2dc8363-ff43-47a8-8ae2-38c01877ccfb@intel.com>
Date: Fri, 1 Dec 2023 17:13:59 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <whiteheadm@acm.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <CAP8WD_ZLjaAF+xZ4AA8o250ckq6naRhMMfeWQ9TFi70Rhuo00w@mail.gmail.com>
 <acb99fc5-035a-1191-89c1-f4b3b073c94e@intel.com>
 <CAP8WD_bBka2G2uoaWR=TfmGVkMVPL1Nz21wTgs18KaOeU2PHbQ@mail.gmail.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <CAP8WD_bBka2G2uoaWR=TfmGVkMVPL1Nz21wTgs18KaOeU2PHbQ@mail.gmail.com>
X-ClientProxiedBy: MW4PR03CA0283.namprd03.prod.outlook.com
 (2603:10b6:303:b5::18) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|DM8PR11MB5688:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ac67fa6-20d0-4aa8-c2d9-08dbf2d3f787
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YtCkbPo08fzpbTb45xhXa3QbzCRm6tFxbohx9m97T6Et0aI4Tfpt3ubdAZ8J2gJgMG3bZp5Egm/BF1ghk8G+4Vxze8YO0RBphbPVMnjxq5TOPoo3qn++QXg9IEehn9MtKw+DnU0OctxLBP77AwpW7q2EcX0J/9z5hhhY9wuHtN9uZ+dXnbyDaFyimy+QIoWl5JlPZBl7gHsADXV5Wn3dBWXmyWC8dz5CeObJLn30zVh1npxJt8I7jhlJW1J0uu4LBiOPmbPl2dd8k5nz7lVonNl0x2ZES1zh3noX88TvuVVQp7p/uwdNN89CmluajQC8M8uTSlIQC13r80w5kXvkWKYSefW4/H6gDAB78xpfIrZvNdab214KPa/R6uO1huaC1aOphUw2Mlwxj3efDU0apfXX7MQ27m/JImZrhLHyrAgkDrr8ETlYUc4YqPimq0oDHzqf6Bc0CNVwRzWWdLV6I1afYw3oN4JHd9mLzAsxZlYzHRJX6MO1hM7D1jvs1aGrK8BHgfBMEgyexZt7+XZg4SK5g0ouMVjRofh8yEwyDCeblRrs1FasmprBKhXpDwTiillm5IW6cuXUxxTaU1edvBsKK5dHF50WIr+gmDVbwrgulEkWrGIxO+PQbACbOZ+ud8gMoL1NuenQPYkieos7G5Bv09iyqeDvUYilyGMMcZe6pke2+qpY+MEikuu0zqaj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(39860400002)(366004)(230173577357003)(230273577357003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(478600001)(6512007)(2616005)(26005)(53546011)(83380400001)(5660300002)(41300700001)(66946007)(8676002)(6486002)(8936002)(66556008)(2906002)(4326008)(66476007)(37006003)(6862004)(6636002)(316002)(82960400001)(38100700002)(36756003)(44832011)(6506007)(31696002)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzBiSlRZMGdQcUF4SEdHaWxwbFVIQ2hSeFJOQ09IUkZaRmpTTUdEZ3l3b3k5?=
 =?utf-8?B?K3dZVU5yYWgrWUduYXhxUEltRDVDSXkxZ1JaVXhaRlc4N2FxaTZaOVp4ckdY?=
 =?utf-8?B?NmhYRmQ5M0pHMm5WV3AyTDBpUVVnaStrN1h1V25TNVlHNEpQYnhXMEcySXln?=
 =?utf-8?B?WitkaU44cW9EaGR5UVgxM2VJSk5IN2J6cHJyWjZYUmZNWnIraUxEZzFIZWlD?=
 =?utf-8?B?eVhRUHZPWnlNVGYzWGh1SThLdDhKNVM1dXpkL1ZwRnpJVUFubkZmZHZ6L0Zs?=
 =?utf-8?B?U3RjQldOcFZqaVRhWW1TLy90VVNSdXV4Z3NWOC95dDJJaUlwTWgveFFIUUJV?=
 =?utf-8?B?b1ZwdTdzRVZObkpXY1NDdWxhWTBvMFMwL2dDaVJvMVRSVUZ2WjRFa3V6bTh5?=
 =?utf-8?B?SUY1bFd6MjZ1L3BveGMwQWY4NjZLaURlSVMwa0phVTVSQXF1ZVplZjR2am8x?=
 =?utf-8?B?RE9XSlJRVi9lU0gxZTBTTUF5WXdxczRER3lTa3dzeGZ4Z3JzbWFOUENOVFl0?=
 =?utf-8?B?TlFiZEs2c2lhWUNkSG15NlpEMWtvZkI2a0dnZ1ZHanNhdmxGWm9MQUFIbEpY?=
 =?utf-8?B?ZGNiazNGWWwvdE5rUlZlMlZ1VCtTUU5OVkJ1NEdrWmJ1cFJpWFFLZWxaNmk4?=
 =?utf-8?B?V0pkNHhTSC81T2VRWnEvdU8wWm1VUkgyRGI0QzkwaW9YcVBKT2lMSkpZZTdT?=
 =?utf-8?B?NVQzRGRIYzkzcXJzYXVNZ2dJVDk1L1F2cEF1azhwQWUxSmxPRUR3Zkcwbmlz?=
 =?utf-8?B?YlE2THBvNmlXL3dUSUxpRVJFUzdTWlBFaVgrTjcvczQweEZ0YnYydWR3RlFD?=
 =?utf-8?B?UHhQem5JVWREbzFxOU9CK0FuVGlUN0JWWnFXVTBucHhBUGdZclZlRWlIVjgx?=
 =?utf-8?B?dkhnRlNCN2hTTDcyVnh0czhXMGdBOHBoUEJnMTdta3RIaDh6WGtMT0RrYVRZ?=
 =?utf-8?B?QmlHQUJwRGpMYU1PSWNLNWJrZllhWU1kZEpBZEdTMDlwZ0FRM01IaWlaR0hq?=
 =?utf-8?B?VHFtcXlRaXZOalN4OW9sWjlNRG91QkFVQ3RNdFUrQ2VCaThXSk92OVRDKzdT?=
 =?utf-8?B?bmNmQm02emtPS3N2K21kZy9aM3RGNlo1azZQcTZBaVh6WHBiOW94UGpnSHJy?=
 =?utf-8?B?ZVZ6K2MxSVZLa3BLcWtEeGRLZldZVGxVTjRlakJSRWhlL21hcGY3aVBBUE5G?=
 =?utf-8?B?M21nKy9Zck9WRGplYk1TWHA0MFZ4VEhrTmlsODZVOWttV1pnQmpCZTNiRG1N?=
 =?utf-8?B?TWVpZmpUR2dMSWRsZXdGd0xZT3FCVFdkTG1kT25hSWZEbkJrRk9OdEdHSVVL?=
 =?utf-8?B?Z2JjUTR4S0pnNFcvb3h1NjhZNXV0SzNGVG9YdnRyazNETVpSV0tWZmZrdHNM?=
 =?utf-8?B?UU1rMHBoZ1pKVHZSd0d3eDhxbXJGamRGR2dUMjIxc01Uc0s3dXlGdkF5NUpQ?=
 =?utf-8?B?Zkt5cHlWemR6bVhsU2U1ellURlVhcnlhdUxlbjRWS2orZnhobHlHcTJKdk1L?=
 =?utf-8?B?Qi9wZzJVckd5eHFUa1I1bmFVVlN0WXB4cFE4NFJURThYMDBKdVpxcjNvTmFQ?=
 =?utf-8?B?RVhQSVZLamlNcEcwTmxtcmY2VTg4dWNxaDkyakIxK3lNTS9RMGhLN3FEVkY1?=
 =?utf-8?B?Wm9KMGdCbkRDbUtpcFNkbW01OWtlT0NWOGRzV2dnZXBUYUlhbkZSRXJNNUxD?=
 =?utf-8?B?MEk0VzUxUGtQSUlrUjNQL0wwcVUxY1ovZ1BQRm5UK2N5Smk4b2l3VmVra29T?=
 =?utf-8?B?aWxMTHNsOHFQY3Q1QnZhdUVGMkxuZWZrRGJGeFFpa01ZZGtmZjFsZ2lHVFlY?=
 =?utf-8?B?VHUrdmFUaUp1aDJkb3lMMmxlU1ZjSjg5Vlg5SDRIWGRPQkw2dFFRM3VjMElY?=
 =?utf-8?B?aVplV2lLdUc3SFRCNlhBK053ZHlCRzRmRFo0NzlWRUpSZ1JydGR3RDVLSTAw?=
 =?utf-8?B?eWV3cXlNVjZ5MzQ0M3I1RkJ5eS9QMVdwM0pFMHZXUHlrRVRBYk5QSlJBaUxh?=
 =?utf-8?B?aXpWeTV4cmRXNkt5RGY5UjlYOUFoYjJrUW8zVTZwOUZVOXdQODlUT0haQTgv?=
 =?utf-8?B?a0FvRFNScjRPMmpvKytUM3FhQm12OENVYk9CY2FRbmh3WEZsZ3lSZ1pQQVNK?=
 =?utf-8?B?NnFia0ladEpBb2Q2UmZyNTJRZUZpcjdHTUNtUjhFdmZZVVMvN0xOT3VaL3Rq?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ac67fa6-20d0-4aa8-c2d9-08dbf2d3f787
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2023 01:14:00.9349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BoD1vkukTAf82Jfd5bXh7bAx3NSv0oh0Ffud/5ms7rHGmjOK9xo0XpGskmeGPrU0gMQV6nsy7Mqe9kcoqsA9TUOfahUav+8JWEzfeNkC8c8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5688
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701479647; x=1733015647;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ADg6d0aw7CEQR4oAaAbkYN95QbnnDUCVNzuC2URc9Xk=;
 b=fFf+2j15DkcsM69rkaC4D/Kl4c2LqBK9lo12Ih6s42db1vpAPRlOIvjx
 b9gnWCKt4v+Dio6blMnVbnY7RCSIGQ27V8deDKvl5wIy7gUrr4v7Buzbf
 UjOGBaa5TNN9FBifvPx2gSaT203mQn3a/UeJhMZEB5vZpkTP8U9saHoY9
 ZPEhilVr9gxLbEDcJQm9mFQl5qk3amusbvqyxORJAQehJP3dBEakw/uwH
 l/I00S4gpkMzCMyx6mW+uOckRYJma5hEQm72jPIm+5I8DOxyA5rV7aLow
 xyq5WdxRlV8Nv5qsldc0zZqJKs3nkLebdDbzu1JMji6qSBY3wpI29AZM2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fFf+2j15
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Compile of out-of-tree 'ice' driver fails on
 32 bit
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMS8yMDIzIDU6NDEgQU0sIHRlZGhlYWRzdGVyIHdyb3RlOgo+Pj4gSGFzIGFueW9uZSB0
cmllZCBjb21waWxpbmcgdGhlIG91dC1vZi10cmVlIGtlcm5lbCBuZXR3b3JrIHNvZnR3YXJlCj4+
PiBmb3IgdGhlICdpY2UnIGRyaXZlciBvbiAzMiBiaXQgaTM4Nj8gSSB0cmllZCBpdCBmb3IgdGhl
Cj4+PiBsb25nLXRlcm0tc3VwcG9ydCA1LjEwLjE5NyBrZXJuZWwgYW5kIGdvdCB0aGVzZSBjb21w
aWxlIHRpbWUgZXJyb3JzOgo+Pgo+PiBBcmUgdGhvc2UgcmVncmVzc2lvbnM/Cj4+IEhhdmUgeW91
IHRyaWVkIDEuMTIueD8KPj4gV2Ugd2lsbCBhbHNvIHNvb24gcmVsZWFzZSBhbHNvIDEuMTMueAo+
IAo+IEkganVzdCB0cmllZCAxLjExLjE0LCAxLjExLjE3LjEsIGFuZCAxLjEyLjcuIFRoZXkgYWxs
IGhhZCBzaW1pbGFyCj4gY29tcGlsZSBmYWlsdXJlcy4KCkkndmUgZ290IGEgcXVpY2sgcGF0Y2gg
Zm9yIE1hdHRoZXcsIEknbGwgc2VuZCBpdCB0byBoaW0gb2ZmIGxpc3QgZm9yCnNvbWUgdGVzdGlu
Zy4KCkknbSBub3Qgc3VwZXIgZXhjaXRlZCBhYm91dCBzb21lIG9mIHRoZSB3YXJuaW5nIGZpeGVz
IGFzIGZpeGluZyAzMiBiaXQKdG8gZ2V0IHJpZCBvZiBwcmludGsgZm9ybWF0dGluZyB3YXJuaW5n
cyBpbnRyb2R1Y2VzIDY0IGJpdCB3YXJuaW5ncyA6LSgKCgo+IAo+ICA+ICQgbWFrZSBBUkNIPWkz
ODYgQ0ZMQUdTX0VYVFJBPSItREdOU1NfU1VQUE9SVCIKPj4+IG1ha2UgIGNjZmxhZ3MteT0iLURH
TlNTX1NVUFBPUlQgLURVU0VfSU5URUxfQVVYX0JVUyIgLUMKPj4+ICIvbGliL21vZHVsZXMvNS4x
MC4xOTcuaTY4Ni1wZW50aXVtNC1tcGVudGl1bTQtbGVub3ZvL3NvdXJjZSIKPj4+IENPTkZJR19J
Q0U9bSBDT05GSUdfTU9EVUxFX1NJRz1uIENPTkZJR19NT0RVTEVfU0lHX0FMTD0KPj4+IE09Ii90
bXAvaWNlLTEuMTEuMTQvc3JjIiAgIE5FRURfQVVYX0JVUz0iMiIgIG1vZHVsZXMKPj4+ICAgIEND
IFtNXSAgL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4ubwo+Pj4gSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC90bXAvaWNlLTEuMTEuMTQvc3JjL2tjb21wYXQuaDozMzUxLAo+Pj4gICAgICAgICAg
ICAgICAgICAgZnJvbSAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2UuaDo3LAo+Pj4gICAgICAgICAg
ICAgICAgICAgZnJvbSAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2VfbWFpbi5jOjg6Cj4+PiAvdG1w
L2ljZS0xLjExLjE0L3NyYy9rY29tcGF0X2ltcGwuaDo4NTE6MjA6IGVycm9yOiByZWRlZmluaXRp
b24gb2YKPj4+IOKAmGV0aF9od19hZGRyX3NldOKAmQo+Pj4gICAgODUxIHwgc3RhdGljIGlubGlu
ZSB2b2lkIGV0aF9od19hZGRyX3NldChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+Pj4gY29uc3Qg
dTggKmFkZHIpCj4+PiAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
Cj4+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3RtcC9pY2UtMS4xMS4xNC9zcmMva2NvbXBhdC5o
OjE2Ogo+Pj4gLi9pbmNsdWRlL2xpbnV4L2V0aGVyZGV2aWNlLmg6MzA5OjIwOiBub3RlOiBwcmV2
aW91cyBkZWZpbml0aW9uIG9mCj4+PiDigJhldGhfaHdfYWRkcl9zZXTigJkgd2l0aCB0eXBlIOKA
mHZvaWQoc3RydWN0IG5ldF9kZXZpY2UgKiwgY29uc3QgdTggKinigJkKPj4+IHtha2Eg4oCYdm9p
ZChzdHJ1Y3QgbmV0X2RldmljZSAqLCBjb25zdCB1bnNpZ25lZCBjaGFyICop4oCZfQo+Pj4gICAg
MzA5IHwgc3RhdGljIGlubGluZSB2b2lkIGV0aF9od19hZGRyX3NldChzdHJ1Y3QgbmV0X2Rldmlj
ZSAqZGV2LAo+Pj4gY29uc3QgdTggKmFkZHIpCgoKVGhlIGNvbXBhdCBmaXggZm9yIGV0aF9od19h
ZGRyX3NldCBpcyBqdXN0IHB1dCAjaWYgMCBhcm91bmQgaXQuIExvb2tzCmxpa2UgdWJ1bnR1IGJh
Y2twb3J0ZWQgc29tZXRoaW5nIGFuZCBwaWNrZWQgdXAgYSBjb25mbGljdC4KClRoZSBuZXdlciBr
Y29tcGF0LWdlbmVyYXRvciBzY3JpcHQgaW4gMS4xMi54IGFuZCBuZXdlciBzaG91bGQgaGVscCB0
aGF0Cmlzc3VlLCBvciBhdCBsZWFzdCAqY291bGQqIGlmIGl0J3Mgbm90IGFscmVhZHkgZml4ZWQu
CgoKPj4KPj4gVGhhdCBwYXJ0aWN1bGFyIHRoaW5nIGNvdWxkIGJlIHJhdGhlciBlYXNpbHkgc29s
dmVkLAo+PiBmb3Igb2ZmaWNpYWwgZml4LCAxLjE0IHdvdWxkIGJlIHRoZSBlYXJsaWVzdCwgYnV0
IGxldCBtZSBrbm93IGhvdyBpdAo+PiB3b3JrcyB3aXRoIDEuMTIueCBzbyBJIGNvdWxkIHByZXBh
cmUgc29tZSBwYXRjaCBmb3IgeW91Lgo+Pgo+Pj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+fgo+Pj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vaW5jbHVkZS9saW51
eC9iaXRzLmg6NiwKPj4+ICAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2Jp
dG9wcy5oOjUsCj4+PiAgICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJu
ZWwuaDoxMiwKPj4+ICAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2FzbS1nZW5lcmlj
L2J1Zy5oOjIwLAo+Pj4gICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUv
YXNtL2J1Zy5oOjkzLAo+Pj4gICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgv
YnVnLmg6NSwKPj4+ICAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2lvLmg6
MTEsCj4+PiAgICAgICAgICAgICAgICAgICBmcm9tIC90bXAvaWNlLTEuMTEuMTQvc3JjL2tjb21w
YXQuaDoxMzoKPj4+IC90bXAvaWNlLTEuMTEuMTQvc3JjL2ljZV9tYWluLmM6IEluIGZ1bmN0aW9u
IOKAmGljZV9wZl9md2xvZ19pc19pbnB1dF92YWxpZOKAmToKPj4+IC4vaW5jbHVkZS92ZHNvL2Jp
dHMuaDo3OjQwOiB3YXJuaW5nOiBsZWZ0IHNoaWZ0IGNvdW50ID49IHdpZHRoIG9mIHR5cGUKPj4+
IFstV3NoaWZ0LWNvdW50LW92ZXJmbG93XQo+Pj4gICAgICA3IHwgI2RlZmluZSBCSVQobnIpICAg
ICAgICAgICAgICAgICAoVUwoMSkgPDwgKG5yKSkKPj4+ICAgICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5+Cj4+PiAvdG1wL2ljZS0xLjExLjE0L3NyYy9pY2Vf
bWFpbi5jOjU5OTI6MjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCSVTigJkKPj4+
ICAgNTk5MiB8ICAgICAgICAgaWYgKGV2ZW50cyA+PSBCSVQoSUNFX0FRQ19GV19MT0dfSURfTUFY
KSkgewo+Pj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIF5+fgo+Pj4gLi9pbmNsdWRl
L3Zkc28vYml0cy5oOjc6NDA6IHdhcm5pbmc6IGxlZnQgc2hpZnQgY291bnQgPj0gd2lkdGggb2Yg
dHlwZQo+Pj4gWy1Xc2hpZnQtY291bnQtb3ZlcmZsb3ddCj4+PiAgICAgIDcgfCAjZGVmaW5lIEJJ
VChucikgICAgICAgICAgICAgICAgIChVTCgxKSA8PCAobnIpKQo+Pj4gICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KPj4+IC4vaW5jbHVkZS9saW51eC9k
ZXZfcHJpbnRrLmg6MTEyOjM5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYQklU4oCZ
Cj4+PiAgICAxMTIgfCAgICAgICAgIF9kZXZfZXJyKGRldiwgZGV2X2ZtdChmbXQpLCAjI19fVkFf
QVJHU19fKQo+Pj4gICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fgo+Pj4gL3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4uYzo1OTkzOjE3
OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYZGV2X2VycuKAmQo+Pj4gICA1OTkzIHwg
ICAgICAgICAgICAgICAgIGRldl9lcnIoaWNlX3BmX3RvX2RldihwZiksICJJbnZhbGlkIEZXIGxv
Zwo+Pj4gZXZlbnRzIDB4JWx4LCBhbGwgRlcgbG9nIGV2ZW50IGJpdHMgPj0gMHglbHggYXJlIGlu
dmFsaWRcbiIsCgpUaGUgZml4IGhlcmUgaXMgdG8gbWFrZSB0aGUgcHJpbnQgY29kZSB1c2UgQklU
X1VMTChJQ0VfQVFDX0ZXX0xPR19JRF9NQVgpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
