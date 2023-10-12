Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF597C71F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 18:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B3BD824EE;
	Thu, 12 Oct 2023 16:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B3BD824EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697126531;
	bh=qxZ0gdBjGJCQA/K746Q6k/VkHYd5BdMNp/iYbODRA6k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bDqDHH9TFZv7+qu3KEKqZKeMZGQYrt+BMO+4+jNZ8OHuK5EPYMKSxaauhppXCrB8q
	 oWO/vdFfnXTlKGzcnjW57u3PO4gBrKrMvTTrNZfKsWiCQXAy3QaR95DAC8tVeEhlNV
	 BhJrRypNJnROb5K7mYUrxlTYERQWR1EmC1csTvTq6QExXQUrgKhLTFusOAeeueTmdF
	 CMizoebLy0b+qNw8RHrHRKTR+3EFGy/5DLNVtwfuKy2AKGL0a2puDEmSzRtdKmF/uK
	 /lF5z19yvaVUvXL1Bbw03YH2P/hJ/5Ctj3fEDp5O+0tBWDWGxjQWP3ChT+GNH982RQ
	 mxl48kYndK8RA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id am0ANJtPyRlh; Thu, 12 Oct 2023 16:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACD4C82315;
	Thu, 12 Oct 2023 16:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACD4C82315
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 269C31BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 16:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F05EC401AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 16:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F05EC401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kyINuCkTmjK9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 16:02:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31918400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 16:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31918400DC
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="416008854"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="416008854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 09:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="789464175"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="789464175"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 09:01:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 09:01:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 09:01:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 09:01:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 09:01:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SPBdyTMwypNMLaQ3TM+we0AAIb3Yr0jMS9hEM96IntB5FUnkalpRtxLHrMvdQx7/CYJacD8xSOsSV3lxzEe0Zp/I0jPna+fcOqbl8IS0hgxQLrTr7oYTzN5/wgsUODQBhyKbWf0EVIkjXllP6VebBmoDiZjmQPNxGzoe+cvnAdVepC3goHv8XoCYNBxlA+4W78Sbe0MX2ZumlhFR8zei3fFi/djDHpdoykRN2NWubAGgtgeGNf1B6r3zHfYyFmBDj9OEDOKw9GQg6yvtREWMK92boIaAjQY5Ir3q+mC9zywav1DwnXcoSXfPkBqfNucD6aamqTgmjVtAjzHRQNlHdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Mvyozp1MYCGHGP3cXNEwB479OQ5WZjQjkKdRsVigwM=;
 b=l9OLmknmAXCRCJOMZy7tYzALLT2y72/dS7TFl911Sg0JOw4vKgjNC3yVJfA1Y6grgSimf4/t2KrEEeEhtdg7RwMrj8DK/gNsAv4Hn7FaC+4yBh5mCUTXA3wEz51mZw21P3o3WNecG2H4I+mTQYaro+8Gaaak0VPP6nhB11aKFARLd28Jc3OBzIWsSU7V9qYghkhSjBnH+10ULmCtnDCe1lh3gax0fEU6yuHJKMFpcTIV3pbBS4yjeokv3ZfBN3nL8vYWkUcwTrg9Evyd3U75WMge7mH6IbtBZJJ+FG4xjCJeE8BJFcsC6t3GfCUksQHY6ZxFjVLCDKHz3QIO/2NQjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB7003.namprd11.prod.outlook.com (2603:10b6:510:20a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Thu, 12 Oct
 2023 16:01:37 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%6]) with mapi id 15.20.6863.046; Thu, 12 Oct 2023
 16:01:36 +0000
Message-ID: <cd3ae5fa-b7b5-44a1-952c-4261d3ece8bf@intel.com>
Date: Thu, 12 Oct 2023 18:00:13 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
References: <20231011091342.251204-1-aleksandr.loktionov@intel.com>
 <4ab9d2c8-05bc-40f2-90d5-303aacdca5e2@intel.com>
 <68683434-4241-4726-9028-96368815b7dc@intel.com>
 <SJ0PR11MB58662DE3987F3A160BB45D2DE5CCA@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <SJ0PR11MB58662DE3987F3A160BB45D2DE5CCA@SJ0PR11MB5866.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR4P281CA0143.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB7003:EE_
X-MS-Office365-Filtering-Correlation-Id: a59d7525-2d26-40e3-edef-08dbcb3c8372
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlMzT0FjU21YNnNheFM0V2xUV0U2UVZnU1o1RmpYR3ZuV0FndGlxTWYrSFpm?=
 =?utf-8?B?eVVMdDh4M3Rpb0dxYVcrSzMvV2VlcCtmdXBZZE5Za0hhK2c2bXRBTHlnai9D?=
 =?utf-8?B?OHhsb0F6S1FxaklOVEk0aVRFUzZjQ1dQYUtoWE9qcnlVd2ZyeER0SkNFUUVW?=
 =?utf-8?B?L2J6QytPUGNpVFFLNkRVYTZTUjhrVFBuQmdoTmQ1aUlRYWFmSjZ4SGhoK0JE?=
 =?utf-8?B?bUFVdW9keHV4emVpSWNFZ2FOaWdkN0kxUEVOeUZudkFzNmdPYytWeHZqQzdG?=
 =?utf-8?B?ZDZNbmVoV05uSnFJZ1B5NEgvQXNpeU15U1hGT1VFQVlvY2gwZkVkZVhmeWt4?=
 =?utf-8?B?WHBtbzJiSUxDK29qTHAzY294U3JHTlp2STFyUEl5S0szV3VrUFpJT3EyWDEv?=
 =?utf-8?B?QUxGMmNNQkFBcFlSMmhsK0dTUEd6OERkVGRHTC8xbEVCRWtkV3g0VjRGbjlI?=
 =?utf-8?B?eU1LQk9vSG5YZ3B3RXEzNUx2S0VGdWxSSGJBVVQ2Ykg4SlM0dE5PTDBuOWdZ?=
 =?utf-8?B?T2pNTEZRRVBwZVE2RzJ0L1dSSDRVSVVxbStiWlJadGtVdm1RTDAxWGRFSE5I?=
 =?utf-8?B?ejZpaEZmU0cySTBiVGZ2U0R2NjFMMkQxTnMxb3UyZkN4Z0c4Y3BHdHVpOEs4?=
 =?utf-8?B?TkhrWGJCNjE1cjVLNFdVNUF1Uk14Tjh6OXdLb0V2clFmUXVwL3dkbW5OSk5n?=
 =?utf-8?B?OGc3bEU1RkxHU2lOeHFhRUdpV21RdGxzWTQ0SG5lc0FMYzdqbndPdlpaN3ZO?=
 =?utf-8?B?K3VEcVZYekMzeFgwOERpNTl6dm1zVVhaS1ovSHJVdE54d243MFVadlF2bkZ6?=
 =?utf-8?B?MjV0OEtqams3VWpzdktUTlRJbkRhTDJvTC8wcWNKYXpKT0FmdElZSVBaU1ZO?=
 =?utf-8?B?c1h3QzdRQmI3UTAvamxFZGhGZlA3cTYyaXFPWjgvVi90QXhvdXZ5RW1KTm1r?=
 =?utf-8?B?aW9wQ0F5bXR4UGdGMFhyNDdoeFJrVEM4MzdHZDhrNnZvdEczZVVaamdHUkpo?=
 =?utf-8?B?N2Jmcjh3VTlRSGo0VjkydlN5a2Z5eEdsUTVLQW9DZjh6Ui9qQlp1RVBwbjRj?=
 =?utf-8?B?elZBSStYTXVVUzRaK1dtNWdrSERQM1I4bVFTQjdHQ2MxRGluSEVROGMzNFcv?=
 =?utf-8?B?cXV4bXRMdzhUbHA2c3VlN0NrT2MwMmx0MFhuSTFKMnpZcXVwVm4vYnVKVGcv?=
 =?utf-8?B?bGs5dFVEZnRiR3BaSnBxUDlzdlRsQVdYWm9VV3Y3K3ZTaXlnY3VwTWo2R0JT?=
 =?utf-8?B?U3RMSWJBZndCaDJZb3pFVndxVmFCdzh3TC9MYUlMQUNQSEt2WjFLTmJTNUhk?=
 =?utf-8?Q?Y1ljcvdSjJnikNJMCd8irjEu6gXhEZq1lW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:OSPM;
 SFS:(13230031)(39860400002)(346002)(366004)(376002)(396003)(136003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(6666004)(6636002)(31686004)(8676002)(8936002)(316002)(37006003)(4326008)(41300700001)(54906003)(6862004)(66556008)(6506007)(6512007)(66476007)(66946007)(53546011)(6486002)(5660300002)(478600001)(2906002)(26005)(83380400001)(2616005)(107886003)(82960400001)(38100700002)(31696002)(36756003)(86362001)(521734006);
 DIR:OUT; SFP:1501; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTdjUC9PMzRYVEg4Ynh6M2pKVWtKWFdYYjR2V0tDcFhYM290YWNEOXJzOWRM?=
 =?utf-8?B?NGYzSW8xSHJ6dGdua0gxa2RGNi81SkdKS2g2NnZac3AzcDJ4Sno5SlcxL0ts?=
 =?utf-8?B?UzhMMDZjazYyS0ZzM29oOEUwNE40UXo3SG41U3U3UEJxRmFUK1pwQ0o0Yk5J?=
 =?utf-8?B?ellZUktDc0NvY0RyZE14eHVjeWE3aFkxdXFyMFUzTm50dGh2bnFHMTZ2TXBG?=
 =?utf-8?B?UG5wM3dPUzBhWDd3bHBsbk5abUZLN1NISkZSSUFrdjRDK0xjZWxiaUlvQ0Iz?=
 =?utf-8?B?cEhKd0wzTzN6QXM1UkpZOVN5eit6aWsyenpRZGdmc2Y2T1Jmc3ZxS2l5ZnBr?=
 =?utf-8?B?MnZVeEhSZTBndURyd0R0SjNqMTJoME9lQVRHS21VVm5RZUIyUFRVQkRtb0dp?=
 =?utf-8?B?SVZqdWRSNHBVNUpoajB5R2tTWmFydnRMdnBJTFF4UnAxKzBYOEVEQmxaWjBE?=
 =?utf-8?B?SkJnZS9UK1VQWXBMVkZGY2t0QWp0RkRKeUJIWlRzOEwvWnBhYmVQSWRNbHVI?=
 =?utf-8?B?dWlLK3AxVFNPbEFhd3lRRFRrS3RwN0c4cG40b3h3ZG5Tbkg2V2dMS08wOFNY?=
 =?utf-8?B?MVI5ZkhiMzFNWHV2UGg0RnpVWXV5UG92V1RmZ1FHT203L1FmT2NvU2tDUVo4?=
 =?utf-8?B?blZkNTN6RHpNa0FxZGMyejkvMDZiQURETTdqVFVWRWhtdFJSMUU1VmlUc090?=
 =?utf-8?B?ZHI0cmdBN3hHZ3V3eXJIaUwyNUxtREFIUjByb0RKL1E4azFWcWR4djkxemhs?=
 =?utf-8?B?bFhEWFdxRVlqdXNBWG4vM3FvWXMxZkl3ZHh4bVMyeVVPZnhBaE1aV3hJZmJh?=
 =?utf-8?B?dGdrMHNXU0pPeU1YcnNpU3dSVTBsZ1N5WDZ6ZklBZDlNeFNnQzhiNEFOZkVa?=
 =?utf-8?B?aWxDNGQrQ0J0aW1sc2RTRWY4VXJobFNvMCtyc0JYTE00SDl3Q2VDcXJZMkpw?=
 =?utf-8?B?RlNHYzB5Y1QvSys1S1c4emdsTDdDbjVLNjRsUmllZXppMmViV3BWMXo5dkFu?=
 =?utf-8?B?bHgrTHc2b040RDJIRGwyNGM0akVmY0E2NTZCb3hYbzhTMkgxa1Z6ZzhZUC9H?=
 =?utf-8?B?NHQ3T08zMENYaXZ5TDc4cTNURFpKcEFKWU5yNmF1MnFIL1dLT1ViRnZicFJp?=
 =?utf-8?B?d04wUEFYbUU0cU1tK3YvMmNkelQxUUdHa2t4ZVU5RE8yTUZBbnpqRmgxeDNr?=
 =?utf-8?B?TmI3Y0VTMWVwZmNlek1adXJxc1VQQm04NkNNdEhsWkVkS2dmK28xRjBZVkRP?=
 =?utf-8?B?TGJ6L0NETmNsVjZNNnowMjNSRGt6SFNMSEN0aFdUR2g3M3BjaWJhV0VPVTdF?=
 =?utf-8?B?VnNWOXNXL2RPNnZJaFZnWTBRTSszc0R1a2dwWUlRRFIwcFpudEoyZFdLVmdB?=
 =?utf-8?B?dzZjZEJDakdkOUFQbW0rU3B0eWp4cnI4Nzh4V1lDZnRLS2cxRGhjSTVtTnRp?=
 =?utf-8?B?LzBiY2EydElGWmduOFJsaEVHcTJ0Unp3eFdRdktmNkJmTmpLVTlZT2UxakpD?=
 =?utf-8?B?aGFLQ05SbmQ0ZWdZQkU3WkhNVU5ibnY2eExtNXE1TTluM3I1elJJYTVONmFX?=
 =?utf-8?B?SFRpakxoQ0Q2NkxmVnlINDdWNmlVYWwrQTZ1bzQrVWRJVWM2S0d3Ymp4Zm1r?=
 =?utf-8?B?YlNGMHo0VjRUZGphRnJrbDFDY2oyNjBXdXN2TUFabWJQemprZjVIbVd1ZEpI?=
 =?utf-8?B?ckNjNWloMUNkL20vdDRKeTc3RXhwOThMUE5FT0MrY05KK2dVN3ZpSndBL2xL?=
 =?utf-8?B?RkU0bFZGeVNwL2V4OUUzMHV1ZG1rcFEzUjEzQXpTNGVTbkJLaHRFcENsZDlY?=
 =?utf-8?B?eCtuUFZ2Sjd5MURmQVVQSkRnRTRmKzNwWitOdUdWZDhIVVBXa2d6eEpWcWVt?=
 =?utf-8?B?Qm9IQ0RrbnlWTWp3YStLUTJ2R3J0d1N0UnBqRnpaaWRjNk9XT3U1dUVxQVF1?=
 =?utf-8?B?NHJ6dDZJd1AzSTNKZnNzZTd1VVhZUmUvTndzUWhDc2tFRDBXWkp3R0FLRzI3?=
 =?utf-8?B?Rm02Sm03TXVUV3JLV0FaKzQwcDF6VDRnN2s4QzBONDhhUUc2Z3FoNEVPY0xJ?=
 =?utf-8?B?Z3AwSTdjb3BnalN3ZmlyL1kwQVBoeThkRXZLaHd3UnhYTW14eFBoMVUrNUho?=
 =?utf-8?B?S2oxRExBc1d0NEErNVU3TGlQYTBlM0lPbUVqbzZZcnUwMEVlOFIxM3pHN3RM?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a59d7525-2d26-40e3-edef-08dbcb3c8372
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 16:01:36.9133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KigZ3tTSEeCPr2TDQzvvf1VmwlRHn/hWUbV8ymIE+LvaprtUbLGC0WF9e4EXxjQWLgf2g0FLZUMatha8fHSsl0oRxZafXb1gfmw6oxc7BkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7003
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697126523; x=1728662523;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rrQ3f73oCQM77GK8Lvo84yXo69flrut06zjjVXLc8f4=;
 b=HwUrrC9HlDRYGrGifI6TFgR3t6KbpNsCV9vmCi+XMPxI8JZcUjyZUdVv
 Xui3XqSnc4yCBJHV4tU6mbaKysW2/BBbsl8HY/eTvNYR0YOQbvkmNnaXc
 jZGkHNCxyEIxqS/zRVcy7WzTLBqcDmcJEKRSXdQ86vfI3qJGTKbGx+VHm
 0YVLpp8XG69/IxgIgDFfsFmXCxUIhv5+oUlXWriWAh5VGaw7LiCb0P5o6
 Pue4cS+ErkHsOaxU/yt2D/UkmgPtlHrDHqajewKgkAXMzRBx5Iy6sW3NV
 +DwKnlNtebEqCgcZsY6VjR0hTQlOKUfglJwZ3OLEcq44LiuzGzXOrUhze
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HwUrrC9H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Date: Wed, 11 Oct 2023 12:32:25 +0200

> 
> 
>> -----Original Message-----
>> From: Lobakin, Aleksander <aleksander.lobakin@intel.com>
>> Sent: Wednesday, October 11, 2023 11:25 AM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add restore default speed
>> when changed PHY doesn't support it
>>
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Date: Wed, 11 Oct 2023 11:22:21 +0200
>>
>>> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Date: Wed, 11 Oct 2023 11:13:42 +0200
>>>
>>> Please add netdev and linux-kernel MLs to CCs when sending the next version.
> Sure will do it in next version, thank you for the note
> 
>>>
>>>> In order to avoid no link after plugging a different type PHY module.
>>>
>>> The sentence is incomplete, it tells "why", but no "what".
> Please clarify your suggestion, what is your "what" expectations?

Usually, "in order" is only the first part of a sentence.
Like,

"In order to reply to your message, I need to click "Reply All".".

But you say something like

"In order to reply to your message."

and that's it. And I don't get what you wanted to say here, as the
second part is missing.

> 
>>>
>>>>
>>>> Add reset link speed settings to the default values for PHY module,
>>>> if different PHY module is inserted and currently defined
>>>> user-specified speed is not compatible with this module.
>>>>
>>>> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>>> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
>>>
>>> How did Radoslaw participate?
>>> If he's the author, he must be in the "From" field as well. If not,
>>> his SoB tells me nothing. Author, co-developer, reviewer, ...?
>>
>> Also, his email address bounces, IOW there's no point in adding this SoB. If you
>> want to credit his work, use his working email, either private or dunno,
>> otherwise makes no sense.
> Can you explain what do you mean by 'IOW'?

"In Other Words" -- IOW.

> 
> Radek is original author of the patch for OOT driver which a had re-work to be accepted for upstream. Now he is no longer works in Intel. I wanted to give him a credit. What do you suggest?

There's no point in specifying non-working email addresses.
If you want to credit him, pick his personal email or his new work email
or whatever works and allows to contact with him.

The fact that he's the original author implies he should be the author
of the commit as well, but you send it as if you was the author.
`git commit --author='Radoslaw ...'`

> 
>>>
>>>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>
>> [...]
>>
>> Thanks,
>> Olek

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
