Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0D1A8175C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FC8482EB4;
	Tue,  8 Apr 2025 21:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K_Qy6yn3Msei; Tue,  8 Apr 2025 21:02:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F075814B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744146152;
	bh=nCQx5eZjjgQe2TroqvidcqvWbOya9lrKhEzwCS7XzZo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gIaVdRicdeAzWqmOf2iUsTP4+PY0SR/sBgTlCw2gX+jq5BLwQC0V0Elv8l+CZ+63c
	 hTQpJjE96Sfh7gdLR4Sjix3sG5TAOaBUEo49m5KHAwjjXsiF0BLaOTVw/xvEZIj/pF
	 quUFq+H8OxEYK2KXUlQPidvcJEKvh6iE2xlNHNZuiSKK9xp6kpSaR6+GEOxjg4yGVe
	 S/KvZPYDF0LMUG8ffzCZ7YYs6dWvicqDpC4d63n6+y+eko3T+P2qPgS3T0i9Zv82XB
	 2tXbzNUDwrJqa0Uh1e3avAzHGjvhewytw40fVXN0kap2z1bL2z2XDmTGCUU/rjqvWo
	 uJWuO9RjbAdqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F075814B5;
	Tue,  8 Apr 2025 21:02:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2BBB1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98E9740731
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:02:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lz0RSYzJHVzb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:02:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DBF3E40CDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBF3E40CDA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBF3E40CDA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:02:26 +0000 (UTC)
X-CSE-ConnectionGUID: o0yLvDaFTt6eKR2AFDKqyg==
X-CSE-MsgGUID: 9bY5N4mlRgi0c5PaSw1T2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="55785069"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="55785069"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:02:26 -0700
X-CSE-ConnectionGUID: V4uYgQ+yQK+HHt9Boy2cAg==
X-CSE-MsgGUID: YgVhpIHfSuSNk+EH6dL2pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="129220885"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:02:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 14:02:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 14:02:24 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:02:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m9XH3LrhWGGsYMv01BV5LWtFBvCKUHlLSfW2Xyjn6zJnBCalzM1+qJQJFwpb1oRekm0UBn3ifbZGSROxeIxkZ1el9wTHBFQpqMndWOpwAI3o24RLkQne5Zewwk4AYXsmZdbkpW6dIdgyL7Z9WB5oW7BwG/XPSluyL3nG/F3746Nw4OG88TQjaJtTakw5Yc9EtaGXSjOZB/urtTIdiqIp6eYmiXJVmPAJoyKVn2b9g8eOYgo6vNyjA8pKt4fssAdL2CGFzH1nSXOXr2aJw1A1VruGFvMfXJx606wsnsX3nRAm1lQLSEdPSDS2PO6LwIpfUpD9aa6uBkyiUEVkbfywhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nCQx5eZjjgQe2TroqvidcqvWbOya9lrKhEzwCS7XzZo=;
 b=Y6lWg9tohkGYvFt5083y34hK9yqYw8ehEk0B96WG/1TTxjIoTVohaxi5L2L/UaBoWc8vMbzDymi4IomVV5+uhsmTTACm7Fifnc2pGI/qrA2Pw7DhW0dWBRVrNVIjfzMP4RSD9irS5M3mUD9r5/AjGqHhGwRK7Ht4q2Wgo8yd6NU3OkM0Prg8o1UJF5VYpB9YnGOzF9Gm82K+Hv+3ziYFGrW28SAGshJ0ml+Mhh/14KORSKvSVvZJU6vr1YVSHFXv1GIzfszbPBPmUSKBEfYFVVq0Ocp5K/y8yOz57vkC7udo7LFz/APeya39VEZg5XbD5AfWkHn3wI+b8YYoMJynIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB6810.namprd11.prod.outlook.com (2603:10b6:303:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Tue, 8 Apr
 2025 21:02:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:02:22 +0000
Message-ID: <50b4f1ef-154d-40a2-8e0d-26e156d81e42@intel.com>
Date: Tue, 8 Apr 2025 14:02:20 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Willem de Bruijn <willemb@google.com>, Mina Almasry <almasrymina@google.com>, 
 Samuel Salin <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-7-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-7-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:303:b9::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: d12b9626-d930-4637-5cc0-08dd76e0a826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dnVUWmVmTnBNSkx1TWxsaWx0Qjh2NDFTanRpbGQ2ZGlOQ1hTZ2d3bmt1QXVt?=
 =?utf-8?B?QzNYMTBlSktUdklDWjMyc2thb2ZrUUtTZFVyTXFUR0JDbHI4RzZxaUV4MHFE?=
 =?utf-8?B?R3JlYThMemhOZE1VRlo1YUw1WGMzKzhmV1A1ZGFsUGcrVUFRREpwK3RjSTEv?=
 =?utf-8?B?bENUQjdxdzBzZUZuVGN5a2w1REZ6RitkNkpQay9xVTAxMHZjKzZnUGFzRTFt?=
 =?utf-8?B?R002MWtNeGpPNnFiT0c3N1dSOVlRK2Z5RWVlcTZtOTZIMlV4VWx4QXZsZndN?=
 =?utf-8?B?S0xaaGNoTk5xYlB1RFB4Y2ZJQm5Ka3BCZEJ4cC93RkRiTVQ3VVlzdVJrc1J0?=
 =?utf-8?B?bFZTbkRGWTZYdEpCNk50TFhWNW12T09OL2VLR1RHYjlNUGljaUsxSDJ2UDRK?=
 =?utf-8?B?SmgwVGxjMW13WDBtQmhhMXpvdVd1R1grS1dvNmxUZXlUVXhibjFCelAxY2k2?=
 =?utf-8?B?THJMZlZRQmo0YUo0VC9yZTJIQmgxOGk3bitweTAyNHhIYkFVUTVpbWd0TE9s?=
 =?utf-8?B?M3U1WFJBL0cyL0VlUTMrMnFueW9QeW1ma2NmQzVkelJDeFA1ZmJZU2E0MTVt?=
 =?utf-8?B?Skc5Y3V5bnIzYkpFMFlXcDdvblBZRUVibnFQckFDd2d0Y1NlVVVOeEJ4Ny9G?=
 =?utf-8?B?YUVYUkhlNlZtNkhqVFJyM1NiWWpnQWRPMlRYWU1Yekp4aUJac3Azc0VwcXRl?=
 =?utf-8?B?Qlh3LzdRdnBMbVU2dG9LVnFGRlFEM1JCcERoQ2FxT3p3RGw1Q05NWnZmQ0hS?=
 =?utf-8?B?L1lHK0U3OCtiZzg5Y2xGTDVyZHJteHlqenp6eVVhRVh5UWNYTVQ5dE1JRzZa?=
 =?utf-8?B?ZWd1cDZNbFVaY01GeUhkb2NIUTBXTnY2T3ZuUjhtYVV3ZVRaczF4TTZJb1FL?=
 =?utf-8?B?VHRvUGdZaUpPREJoaDNmTE9tbzFzNU9tSVpzc2ZnQkFhanl2TTFSOFVtMUkw?=
 =?utf-8?B?RTdneGpQRUNyZ1Ywb3RCRHF6b3ZuWElSaWx2d0cxdVRUZU43S3lNVG5GMVpt?=
 =?utf-8?B?VkVvVGNCUnlNU2VnSGZFSzhEU3p4Ri81RTJBcG5IV09Rb3ZrclZqVzc1a2dO?=
 =?utf-8?B?dnV1QkJCb3cwdTFjQXYrbk5oclZ1RllHNUJybExFUUVwYmJpZUM1ZjZoTkRX?=
 =?utf-8?B?Mm84VUtmY0NESjlySFdsTm50Ynh0NE4zVW1VRFh5N3RuWjlpMnZtZCtNa3Vw?=
 =?utf-8?B?QXZHa1g5U0VDSi82ZUllVGxQM01MdGk3OWdzcWRIYWZOSDl0UUtlVFd1SVRp?=
 =?utf-8?B?bmd4M1dTYUJnOFRhZnB5WG04QlphUzFZdk5kUjlIeDFDVGJ6cW4veE5vRzAy?=
 =?utf-8?B?dnA0ajRTTnBJZlUyMmt3dDR4Rm1ZT3ZSbGl1dE0vK0dwV2F5SnRrVkxPTTZj?=
 =?utf-8?B?RUZXZUM3YTEwR3VtUFZkNE9ndlZ2WklIL0ppdDRVaFA1VDVZL1ZDTi9BN1JM?=
 =?utf-8?B?ZFNiTllWSW15bW9ST2RvdUNNZ3QrS3dqSklTMGh2NlhYcVRFdzZCV3Q0ZFVt?=
 =?utf-8?B?SmNtVGpyeGpwSlROR2p6VURpd1RwengwQzBBVlpHNVM1TVJobjVSWjVuaUNj?=
 =?utf-8?B?c3E5MUR2ZVM4b0I3ZjJzVlFKOWxmVk9kZS9PNWtBaHpoQytnLythTGtFQTJk?=
 =?utf-8?B?bFplb05xYjliYXcvU3MraEdKYXRPUlZrbi9WUWZ1ZlFReHcwMVBVS0Vma1lJ?=
 =?utf-8?B?Q2VSdUllQ1BPN1JiaUdRT0t1K2hYcFlla295WkhYZ0VGNW1qUU1JY2x4bks2?=
 =?utf-8?B?azNJUTNqbHdHNDN5RDZHMTlrNlhaY3k5bTZvV1k0VWI0VlFsRFF1YlhkTjhY?=
 =?utf-8?B?TnkyTGFhUy9EZSttOVRvSWxrVzdEbkJQSm5Mb29FZjZ2alpzWjkzdkpzR3h2?=
 =?utf-8?Q?Po4R4U6COZ8ai?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWQzRVlnRUV1MXdPTE42Y0hiN3ZacU5od2J3ZThJd2htcE5YcFhzQVFvZVRV?=
 =?utf-8?B?SSs5MjVnUVVFRHRybHhwaHJGdWFnT3hiL2NZZmUwLzlaczF5K2pGanR1RFY0?=
 =?utf-8?B?ZlpxL3AxUFZ4dFVuR2lycERCKzFLclk1RGhZcllGSHNkSWdVTERyT0Nsc2pG?=
 =?utf-8?B?NWYrdE4yMnNKeGkxRUJ5OUNGNUF3TVlMd0UzUjcvV0tlUEJWclo5QmZWc0FW?=
 =?utf-8?B?UTlIZFZJMk96cHFPdks0b1lmcFlsRVoySnRJMzdGR25BSkFUL2dxY3lRY0Ro?=
 =?utf-8?B?blBvZjFvWmkveklmZFpaM3hZSklsM0N2TGpESUorK0NHN2FTS09mVkNrbkdh?=
 =?utf-8?B?V3FDRUZCMXZZdUlab1ZEVUx6Qi85SnVSSFRsZkZXSTFtYnkxRnZTRWNPcW53?=
 =?utf-8?B?ZVFycTZoSSs4eTA5QithMFlCbVpFOW9EUWhoUTk1U21ZYWs0OEFKUmtjK1Nk?=
 =?utf-8?B?SG1CMDZDbjg2L3pFcWVMc0I1UGhvYTE5T3ZFMGVBd1lkQkcreFpSQlJxQlhV?=
 =?utf-8?B?TGcrMjd3N3FYRnVOYlVqTnI1dXVRSWF6dStSOEZIbkl0ekViOXI4cVI2S0Vl?=
 =?utf-8?B?cGxmNC85QmNkWGYzMVFVMGFMSFFURy9NbEI0RWh6c2RxME12d2szVnV1S0Rl?=
 =?utf-8?B?ZjgxdWdtNUVCcHdLMEI3OE1LdFRwTUNmSWpOYXZFYmUyTHpyOWJuNDVRTnZL?=
 =?utf-8?B?RVlvMjQzOG5lbGVkT2VSd3dYbDJibzN4ZXJUUmhxT0hiaVNFY09sRXBQaEwy?=
 =?utf-8?B?TllyaUlNWU5tckVLS3MvZ0k4UjdpcWJvTHlkYTZ5UnMxcGRvV3hodEJwQlk3?=
 =?utf-8?B?U01Idk9Cbk9VRjlqaCtMNUhYSDUvMzNUckl6ckIvdXZLTmpISGxRQzNKOWlJ?=
 =?utf-8?B?ejErTk5yTkxXdHR5dCtLNjY0b1RXV3Rwd2FKOTlLajBBd3JJdjRjRGVGWjgx?=
 =?utf-8?B?QnFuRHh0SjRWck1HdzVtVHFtRjNVNmdSMU1aNmN2VUJ0c3FFNUJqd1YrNG1B?=
 =?utf-8?B?V3FyT0RuNldHS1VLY2Y0WUFlZ3gzMmlMbEZDTVMvWFJ2L1MvaHRLeVV4OFk1?=
 =?utf-8?B?NGxqY0FaS3ZsNHlRVFBPV0JTeThMZ2ZLSlluQVdBNVFqd3d5azBqc0w5cFlF?=
 =?utf-8?B?a0ZyK25ZYU9JSEZqSFMvZFpISUhFRnQ4cHA0K3BIRUlnRE10YVVqRytzdHVW?=
 =?utf-8?B?dUdRQVV1c0E4R1pad0NicWxmRnJIM2U5UnBkRnI0dVB4U3I4ZGliLzFpaEdE?=
 =?utf-8?B?MVpSSWd5RHl5a1lDUGtxYmtsVnVyZ2Zsb0MwdXZqNmdOanJBNER2ZmVHeVN3?=
 =?utf-8?B?cGMweXp0UzVXOWJnbnU4d3dBemRCUENvUk9KTkVsQmRsSkY2QStTcTRkMWcr?=
 =?utf-8?B?aXlFRTZkZ2MzUDdHUk9DMlY2NTlWNjdUWUNpM25JdjNCaHJ6V09HRjRXSDRW?=
 =?utf-8?B?TjFuem1ETENEQlNKK3pqbXAxNlpueDNGNE5WdEsyMTdJLzU2anpUSFZKYzgv?=
 =?utf-8?B?NXN1cTZFeGs2YnZVcHB1L1BybklIbXJSbWpoK3d6blg4dU5JNFREbkk3aWYz?=
 =?utf-8?B?S3V1L3RKc2dkNUxERk5kT3FwblJZbmx0cnk0S1U2c1JLNFJGbVplbzFPTU5K?=
 =?utf-8?B?ZEJzOU9PKzBSSm5aYnZELzhkUXFtMGJVOE5mZ2xhbVl4ZHBjUmFvemtxV21t?=
 =?utf-8?B?bzl3QWsxNVVmbzJwRWY1YmlKRnpvL0hYN0kxVmFnZWIyTWF1dlpWcnZoWjVW?=
 =?utf-8?B?Q3VSdHBhcjZIc1p5M3BEUmRsT1NnU3N0UmVWVCtjS1BzL0VtbWZFU2d0M3FL?=
 =?utf-8?B?ektaWEpZOENqS2VYMkdIUGd4VDNWWU4vWHFSWWlKRWhTOUhiSU1NZXJXNUIx?=
 =?utf-8?B?Nkl2TlpYNkZFTnkrdlp5d2dyditRVExnRWhUbytaRmtNTFEzYmFLSFlZUGMv?=
 =?utf-8?B?eDQ4bXdiclY0dzE1cEhObExDV1BTNEs3Slg5Z09XeTErK25VakxnSy9Rd3BQ?=
 =?utf-8?B?RGRLYW5Hc3l6WWhHajFYWWVaeituSFBac2RqMXBXWDRoTjVuUEhDNnE5VGhj?=
 =?utf-8?B?b1gxS0dQTlp0T0pCcXhQendUQk10TlZ2c1pmdDE0eGtqL3lZazFWeVdZZ0VO?=
 =?utf-8?B?WXp5M1VUWjljbmRUZzRXd29EVTRBb1Z2c093MjhKVERUK3AvaVh6QzhnQzkw?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d12b9626-d930-4637-5cc0-08dd76e0a826
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:02:22.3652 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pYLkkVbVIifPOrKnkAnYtExVbFXr1EmXnELBXqikuPljsqmMi5pWlyrFzmzwt9qx3mjkopM3q2Uk7go9XWR/mTZT99l0SJ7NNuEcaG02rw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6810
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744146147; x=1775682147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vz5i9bVgPtxBEQIHxYBlTPDLztOV0cmOD2N83g+WnIM=;
 b=C++5NDd7MdwUm45BE3/U7ZQehv8AJrYMIfACOUwV/qE8DgNxtI3vt981
 gGH69eFQDa9ndWOdqtiXE62+fMsnH4Mu4tKR/dcFqcHQ6jp29F2WmcHY2
 r4smc9/qi5EEEaYFSgSuUFZgKZIyZbUSN9Ox1ky1pTIgJ/R753FBz0yNZ
 wjULZ1QPU10A08K0lAZMXh2f2COLiIU8J0cV4HTm8AD5NHkOjWhdKE3A7
 eVyDMpF6czcPAxPuyY+q0ZBEO4ZmWwFbv8rbugkOobB6QF4yocL/K2Adp
 pkwMbHXWO3yQnqmwo/86t5druzQp/hFZ7JOaOvs+pgfrHEk42GKjBdkkZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C++5NDd7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 02/11] idpf: add initial
 PTP support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/8/2025 3:30 AM, Milena Olech wrote:
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during the
> capabilities recognition. Initial PTP support includes PTP initialization
> and registration of the clock.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> ---
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
