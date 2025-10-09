Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C44BC8265
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Oct 2025 10:57:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF80040F2A;
	Thu,  9 Oct 2025 08:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-Qz9z0NHTvB; Thu,  9 Oct 2025 08:57:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 293A440F77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760000222;
	bh=Zca+BWh/hy46ycv2hQQ4RRZ+qO6AKGbKqz4rzxudC3Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bGKzLGVcjKzHF7G+0ryFntf2GZDbCOByDUJhbJheu8/BesHPMswZz7Rj+fVty822B
	 s73nz6WglbZm7xwIz6KvS0BQ/cYeOzUTv/3F8SumZukbvMZGkd8Nxo6QxNAovhbLlN
	 ehMg0HyZryM9MrVjWFQ8krj12aw+LFD1pxxfIk1eBuBaRfrE03iOXvdLMWWNkp03JI
	 LMDorZoP7oLEyP+wLbZGmQIQEwBLIxAVdg6D0A629b/CRDTFJSNmx/ulLSUvMDVJPT
	 v51rTn0NCxQUg+dJx3ynTZgWR69qK9taaU0Gr1OAEI7pIzPujH/xZMKu1u0xF06LdG
	 tXAV3+cW73Lxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 293A440F77;
	Thu,  9 Oct 2025 08:57:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E4C421B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 08:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7434540224
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 08:57:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCmaeS4NpBdJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 08:56:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7319B400E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7319B400E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7319B400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 08:56:59 +0000 (UTC)
X-CSE-ConnectionGUID: MZhpD7MSTQOw2b5p1Yf9jg==
X-CSE-MsgGUID: qAC2SBtpT1aIjqZ2C+57gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72465032"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72465032"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 01:56:58 -0700
X-CSE-ConnectionGUID: 8seUCnJpRWOUMh7XUC4lUw==
X-CSE-MsgGUID: DCQeEp3RRT6lkjfORygjjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181070561"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 01:56:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 01:56:57 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 01:56:57 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.21)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 01:56:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RfcMnctKgkxIPFEAJeuvehFcFn/rBEE1ejns0zrilrdXwUBwEms2q3H4xoArN4JA4uPahp/kMXNZjLR3KN2QpB/J8H5rqnEnYNGQGqqi7WPBFrFlGfYXWgg3vCqYiI2rwUVMuAPXo3Wz4+LJiEwLma+lnGHBCtclJ5K9ca789aLXBCvj0eH5JkyenZxDgzx5TdD0nGlNC8Bj4QdBWjalPb53TPQFx8RNYb04Pw0hxbDCEBtrZCSXpWs4Zb5nesDGUBhB9c7aU3f4Krr+B3C+tuS1eytKcMamyTUyYqJ99njnhjHvDcm1AocKljaLimLB0/f1IqHtN8Qx0Vf7zSSiDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zca+BWh/hy46ycv2hQQ4RRZ+qO6AKGbKqz4rzxudC3Y=;
 b=WYoxeHEvrMA8FDwQQqilCZgeIBmsL3SA/8B6OHW6Ec7K8Y6M3G9bjtMwUdstzT1gXATttoi6wOO1Q1sE2EwvB8LRh4tk+7BeLYGAJB7B5WhVcwykp4SfNTu3hs3NOIDbmTjjbisEeY2Idl6aLmDjQXP0ac18QrlnPqRwOzg9BAGM7EYa/9c7PAiAGYvcONKU6CRruuWwl+vb+c1Q4rpj7Vaa4S1bFxbidsAIeXrhJ/nY+FnP/cYgDKyShySWD+XueSJHkmXfxXUffqRcmeeKMtBA4JFQi/OnVq2HvNxJjuBQLnGbZf+xEvan2uU1KuxMNMvDZm5ZuLae8okmdx50tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7311.namprd11.prod.outlook.com (2603:10b6:8:11e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Thu, 9 Oct
 2025 08:56:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Thu, 9 Oct 2025
 08:56:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 2/5] ice: implement ethtool standard
 stats
Thread-Index: AQHcI3WvYhGUD8OQLkmrYhQNeGQdW7S5rkVA
Date: Thu, 9 Oct 2025 08:56:49 +0000
Message-ID: <IA3PR11MB8986EFE9487153613CA27535E5EEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
 <20250911-resend-jbrandeb-ice-standard-stats-v3-2-1bcffd157aa5@intel.com>
In-Reply-To: <20250911-resend-jbrandeb-ice-standard-stats-v3-2-1bcffd157aa5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7311:EE_
x-ms-office365-filtering-correlation-id: b9fbfca3-a3cf-4516-09a0-08de0711c895
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Q1pObW1LMjVXS2FWeURnZDVuSTF2dXp0RGhseXFWUGtuYi9uMkNhTHJQbFJU?=
 =?utf-8?B?RzBWVzAxTjltS1NNUVNpNFMxZ3duQVZKUHpnOXVmN3BCK256ZmhxaGlpa21U?=
 =?utf-8?B?dy9CUFFob05YeDRCNkxvYzlKcGg4SGpZY2pCVVM4WFdCRWs1MlVvN1JwMFp4?=
 =?utf-8?B?V1BBbldsTkI5YUtzNk5DNjYzTGVnTG91QnVyWlZuNTdjdjFCY2pDVVc4aWcz?=
 =?utf-8?B?VG5FRjRTYXptakpEWmpXZSs3R0c5aTMxT0VMdE9qVU5aOEZGSTJyenkzUWJK?=
 =?utf-8?B?MjZoU3h3a0VEK0tCRVJrQUoyMHNXci80SExEWjQrTVc3Y0Q4N1p5LzdNVmhH?=
 =?utf-8?B?WDFtNGZVczRCRjVVWTIyTmk0cVhwS1NuREYzaDBXaEJlaDFENDFIMTlHcmhP?=
 =?utf-8?B?UmZucVF5U0xDSFRjTFFiWVNGbGphUWdYZWNnOUdtYVJJYVpkWVI0RTNzeUVF?=
 =?utf-8?B?Q1M5M3N6d2tGNVQ0cDhUaWlMSTZzQXlWUTVJaG9zcDh6NGZKYkhIU2xTSDhQ?=
 =?utf-8?B?MjUrQjIrY0hmNkR6UlVNV2Y0V20yaGVwc2IySk1TdjNBallqSWtvVzdyb2Fl?=
 =?utf-8?B?dlVZUDYrY2IzNEJQTmxaT3VvblhqbTFsTjZLNDArZFFhRmtNamEyVTVpdGo2?=
 =?utf-8?B?aGRueG81bkt1WVdJY3Y2b0JCZzY2K3VYL2F0Y25rUjEwaGFXam9wMXA2T0VH?=
 =?utf-8?B?b2NWTk5VbFE3MDdSYkxsOWNXQ3pYT2RDeUVkcDFuNjBCOEdjejZyTC9ENWdM?=
 =?utf-8?B?Qmx4cHgrVEtyNFlqaGp4Vys4K0x4d0IwWlZ3dHlFK0N4RW5jSUJvbDFBbXNC?=
 =?utf-8?B?ZnZFV1pCMnVmRTBGRFVoRVdvcmZubWduZDhoclNNVFJSdWJHSG9lck5wZWta?=
 =?utf-8?B?WG1oT2svUVNxYzN0TjR2bjB4OXJNMlRjMmVIUThpVEtiQ0NKdjEzVWVtaVhL?=
 =?utf-8?B?eFFnWnhBSlU4d2VEZjRYRTgzd1k4bys5Qm5GYzdoT2JsTURWcFNSSmpKVmUw?=
 =?utf-8?B?UkU3aEMzb3FDUjVHZXd0ZE5hZ3pUSlJUWmtpek81Um5NRisvRHJsaGF2SEFX?=
 =?utf-8?B?b0doQldENmlRSUhyZDA3cEZ0OGZLVFlsVE1ZRlpxVUxkVDBuYS8xRkd2Zzhx?=
 =?utf-8?B?cXJhQmxvYW5TM0J5V1BBZnN5MUNadlU4WHd0YnBpdDFlb1YveEcrYTZWNmVN?=
 =?utf-8?B?eTZFUzJtUUk4WjBHVlVWdDYxSERQd1dkY1Y0NThlZDlYeDc1TlVtYUUvbVFm?=
 =?utf-8?B?eCtka1NndVROa2J6TkpwUUE2Mnh0d29POW5FcGJDQ3g3UUVsK1I2UmgwZHJG?=
 =?utf-8?B?STRGbHlacWRGcEFzWWFVeE9WV3NqWVBPRkdFSGFlZjFaemdHQkJmTlJTZGtJ?=
 =?utf-8?B?NGpORlo1a2JJMk1OUE5sdjloQmRaSlQwOVJLcFlxUjg0RXhaWUkxYXFKWE5i?=
 =?utf-8?B?ZTQ3dzJJOWVEZXJSWU1hZGhSS0tiUHFESHhNQ2RsUHVxRGZ5TDRHQTlYWk0z?=
 =?utf-8?B?aTR5WjcrQjFhN3dhSmxhRkJTWDUxV3pFRGJXSG5iL0xLQ2JUYjA2QVU4cmg2?=
 =?utf-8?B?UUJMN3gvQjhjSW03NytScWllYzMxQ2psNTF4NWM1dVJ1RnpwY3ZwYnlGOW8w?=
 =?utf-8?B?V2dDRUVVTHFJWUtIWlZZaW5rUVp4UUFRa0RjbXE3M25zYVQ1eUx6ME5oNnpV?=
 =?utf-8?B?NkpuQVBiZnhDTkpYbVRyRmxvdjNQNUVDSFlLKzdWcjNsNGI2VjcwdFp0cVAx?=
 =?utf-8?B?RHl5YU1lZXNNaDVGbHBKWHVrWVZSb29YVTJFcVNRTGsySGdyb3M4S3BiRUJo?=
 =?utf-8?B?cWtDK09tbElHejlqOUhPY080cGo0bFFxNjNvNHRHei9RQTBOdUZuT1BUaFNF?=
 =?utf-8?B?UjJHbFg2QTBnWlFFVElQNmQ5bHo1c1lhY3ZQNVNDVnovNXRVNDU2SzNZU3Bp?=
 =?utf-8?B?WVRNUTJPRWNWamFxK21DdW1QQlNqOEkrZG83U3ZqZ2NyUTg2OVJ4NXV4dmFD?=
 =?utf-8?B?ZkgwRnlwMWkxSFJ5K2wrNkJDT2l0VTN3bG44ckJMak83UEJQOUJQU3NpYkNv?=
 =?utf-8?B?OEFlODVMYlVJdEplQ2tKQW8vamcxbFkyTDZyQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGhIWGNXenkxOEk4c2g0YWpnQlJ3UTdLQnAraEt0bW9kdTlFQXpOMVVKNldV?=
 =?utf-8?B?enBMdURFQUcwQTg3a3BYdUpra0VDYjdvT0VvY3psTEtHZjZpSlVyVGlvTFF2?=
 =?utf-8?B?MEtjY1ZtS0E4YU1oUmpkS0tsS3VoODhGdVdqa0w2Qjl0TEJiTUt1RDB0UUJm?=
 =?utf-8?B?dWpiL2hmRDJuUnZMdGNnU2NGU1RtekFxZTl0SmtZS0NEcWJWeEVBQi9VaVRD?=
 =?utf-8?B?V1IvM1Q5ODVRQ08zN0QydExFeXQ5Um9hQW92aFFFcjZQc1JrMTBtMW4rc3dp?=
 =?utf-8?B?ZE5hRmlkYnNHWm8rbUVyYUtwSXN5M1lqMzArSzBDQkhZQnd3MXpaajhXRitJ?=
 =?utf-8?B?b1ZqTGt5cjJIMVVLdkZ1M1dFdW1mZFkvUmdKYWxJeXpORlp6azJnd0ErUnl2?=
 =?utf-8?B?Z2p2SXQxNG9LVFpONitCdU43SlFWTVlQOHFCSGdrbTMxbTEwc2VHZXBrT1lV?=
 =?utf-8?B?bTNRanJaZXVMaHJ6VGg0MmwwUEFTdVJWTHJhaUhRR0lGUDd5UUFIVEd3blkr?=
 =?utf-8?B?SEU1YWtYM0ZSWGdlQjJNNzQwL3BTTHlkTVNNaWhWQU42d05GYzVrYTFpOWJh?=
 =?utf-8?B?dDBOcEN4M1I5V3loT1hKS1ZyRjlIQjhRUWNlY3B5YVJSVEg4anc5ekhpbXpE?=
 =?utf-8?B?SFJZVnRvd0NOZmljV2tMbkR1bC9OeHMzRFhEWGRUcGgycWV0RVdEb0tkTnk2?=
 =?utf-8?B?R0loSGFaUHE2dktDOHFPa2dGbkZ0MkdjdGUxOW1BVUZMUGkyYUR5RVpEYjFx?=
 =?utf-8?B?dHAzcUZOOTk4UjY1Zy8rWk1ZZFVnWm9UYTU0VTZHZ1dpMVgxSjZpVzVHRU1B?=
 =?utf-8?B?blR6RFhBV2ZVS1d1UjRLbkFKRDVrTGZNbUh4bGUwcDZ4TTBqUmZJOGZaekFa?=
 =?utf-8?B?Mkh5Vm1WR3pLRTJaUm5raTRvV0hDL0VpQmRJQU56UnBoS1N5VHE1NjVnaTBs?=
 =?utf-8?B?K05PaFBrMjdBaE80VkE5NDd5S1ZmUHphdktwRis3VHZ0UTZOQ0xLVm5ZU2Zw?=
 =?utf-8?B?Nko3QWlXZHpjSTZIVkZIRStTUFkwMDVNUVN3bTVFbU85R0RUaHVINDFjS0tT?=
 =?utf-8?B?U0xvQkhFNTk3Y2gvUUR6eHl1SVRJZWNNeG1USkI1QnIxL1hwNit4S0w2a3Yz?=
 =?utf-8?B?SisrbW1lc2xWWmFVdDQwUG0wV3VTUzg4L2kvdVFVWCsweFdaVHd6aXliMDBC?=
 =?utf-8?B?Y2d0SElIQWN1YTI1clZvNk1aUWU2bmxBRUdvanBGUzlrZUx0aUZlWVptdzdv?=
 =?utf-8?B?VHZhNXlhMGsxczRmd2VJRUtQRUFodUdIVjl4VzhjSmZiMVZCRWdndWppSmxQ?=
 =?utf-8?B?NTBUV0tyaTRJOTNYalRCd1c0Qk1Gb1RlQVR1VE1xZGt5ZFhIMXNYUWN1aWla?=
 =?utf-8?B?TUs0SEQ0ZGVKV2dzamozZGJaeWxzS2VEUk95SmFhR3N4VU9CTFg3RTdzcDV4?=
 =?utf-8?B?RFQyWFd4WnRVc3RDaS9xc1h0K0o3eXYwRDFBbnlSdENvSGNFd2tlUDlNd2N0?=
 =?utf-8?B?cVlBT0tsdDI0d1F1TFRVOHc0RTFEcVFKNzBVMnlCaTgyVDZHTEhDRlNtdTFw?=
 =?utf-8?B?TlFNM0NacXl6WmFRQlZhbVlvRUFyckYxRTBOTHQ2blNkdUYwK2o0SkZlSWFm?=
 =?utf-8?B?d3FBaHgvcVNObVU3SlFzQldvVU9vdE80bXJDVDBBR1dLUzl3R2hJbHdOTzVZ?=
 =?utf-8?B?RElyY1ZOOWRwa3lrdzVGdDdubXpzQS9JeTdRLzgzbU9SaXU2cW90WHJVbnFj?=
 =?utf-8?B?TkF1RW9WMVFpektnNFBWT25vSjBuWXhMSXY1ekptZVB1M3ZFMlkzNGhEdlRl?=
 =?utf-8?B?Mmc2ZW1jYlA4aHA0eVdHWTgxWW5aRWoreC9ldngrUVU0SzB4bEE5RlRBU2dY?=
 =?utf-8?B?Z1lVcXdPNE54RzA3REgvSjJrZmpIYXFHaDJRa1ROWWhjYmdJS3BmU2t5R3JZ?=
 =?utf-8?B?bUtWcGt0UzBJMmRaakFPd1lIdDFybTJ1Rmx5Nzk1SlJRdUJPVXpWSEg5a3E3?=
 =?utf-8?B?NEQyWjNlUjZLd0Z2WVdTT3NCS1VqTkRrVkY4S0VjcGU0Sld4MDdNQ3k5ckpv?=
 =?utf-8?B?akFVQVV6S0hqb2hadUlqUnFOOXUxWVpqZWdmK05Fa2VMWEpoeGZVVWpCNmNG?=
 =?utf-8?B?VTA1Y3BOTENvVkNsWFlOQUpzZ0d4SlpTN1ZSSUltdWF5aldyTWExWko1MVJj?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9fbfca3-a3cf-4516-09a0-08de0711c895
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2025 08:56:49.3926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AHSwNRCKuAtBos7z3s8ieKp8DqoWZxJCVFanC4d3mwhbT11q9J6vfg4if34mlTvOy8CVyOy8qMtT0iPLwWW9wyRVSaTnYMYRqsLM8P6tBks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7311
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760000219; x=1791536219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zca+BWh/hy46ycv2hQQ4RRZ+qO6AKGbKqz4rzxudC3Y=;
 b=MmxOQbm/vCg9aJk5xld+/s4oWXCVHBh8d8oHDnds1xIfTCAoacApiafE
 O81DlV+IioOpT7aIW6Yvjerf4pdIUq54QDJ9WsSX2R1S9rhxdVWcrcfu6
 izOuVaDzBfxHTH/8+nYvvykTitWrTRIAoCVY9XPhLEXk7RTzH64nywHrf
 CXgnpxJUwBhsfRvw/qF5/RdDXkWPbxtRKTqLincUhjnukn2fAuRLWurEa
 aJshddMFh22kkGvrX4vUnp/joA9khFVdyZpheCwgqqBfg5rA+aVDfwT4f
 8kk0aUOg3TpES25s06jKJpDLajNIeu6Q50NuxSY6dSiTc6cdOomIDfrdB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MmxOQbm/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 2/5] ice: implement ethtool
 standard stats
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDEyLCAyMDI1IDE6NDEgQU0NCj4g
VG86IEJyYW5kZWJ1cmcsIEplc3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT47IEpha3Vi
IEtpY2luc2tpDQo+IDxrdWJhQGtlcm5lbC5vcmc+OyBIYXJpcHJhc2FkIEtlbGFtIDxoa2VsYW1A
bWFydmVsbC5jb20+OyBTaW1vbiBIb3JtYW4NCj4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNYXJjaW4g
U3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT47DQo+IFJhaHVsIFJhbWVzaGJh
YnUgPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOw0KPiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtZG9jQHZnZXIua2VybmVsLm9y
ZzsNCj4gY29yYmV0QGx3bi5uZXQ7IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPg0KPiBDYzogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MyAyLzVdIGljZTogaW1w
bGVtZW50IGV0aHRvb2wNCj4gc3RhbmRhcmQgc3RhdHMNCj4gDQo+IEZyb206IEplc3NlIEJyYW5k
ZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPg0KPiANCj4gQWRkIHN1cHBvcnQgZm9y
IE1BQy9wYXVzZS9STU9OIHN0YXRzLiBUaGlzIGVuYWJsZXMgcmVwb3J0aW5nIGhhcmR3YXJlDQo+
IHN0YXRpc3RpY3MgaW4gYSBjb21tb24gd2F5IHZpYToNCj4gDQo+IGV0aHRvb2wgLVMgZXRoMCAt
LWFsbC1ncm91cHMNCj4gYW5kDQo+IGV0aHRvb2wgLS1pbmNsdWRlLXN0YXRpc3RpY3MgLS1zaG93
LXBhdXNlIGV0aDANCj4gDQo+IFdoaWxlIGRvaW5nIHNvLCBhZGQgc3VwcG9ydCBmb3Igb25lIG5l
dyBzdGF0LCByZWNlaXZlIGxlbmd0aCBlcnJvcg0KPiAoUkxFQyksIHdoaWNoIGlzIGV4dHJlbWVs
eSB1bmxpa2VseSB0byBoYXBwZW4gc2luY2UgbW9zdCBMMiBmcmFtZXMNCj4gaGF2ZSBhIHR5cGUv
bGVuZ3RoIGZpZWxkIHNwZWNpZnlpbmcgYSAidHlwZSIsIGFuZCByYXcgZXRoZXJuZXQgZnJhbWVz
DQo+IGFyZW4ndCB1c2VkIG11Y2ggYW55IGxvbmdlci4NCj4gDQo+IE5PVEU6IEkgZGlkbid0IGlt
cGxlbWVudCBDdHJsIGFrYSBjb250cm9sIGZyYW1lIHN0YXRzIGJlY2F1c2UgdGhlDQo+IGhhcmR3
YXJlIGRvZXNuJ3Qgc2VlbSB0byBpbXBsZW1lbnQgc3VwcG9ydC4NCj4gDQo+IFJldmlld2VkLWJ5
OiBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT4NCj4gUmV2aWV3
ZWQtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBSZXZpZXdl
ZC1ieTogSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4NCj4gUmV2aWV3ZWQtYnk6IFNp
bW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJh
bmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEph
Y29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCg0KLi4uDQogDQo+
IC0tDQo+IDIuNTEuMC5yYzEuMTk3Lmc2ZDk3NWU5NWM5ZDcNClJldmlld2VkLWJ5OiBBbGVrc2Fu
ZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
