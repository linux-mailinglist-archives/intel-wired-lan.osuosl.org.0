Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CEE975A1F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 20:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 963B540748;
	Wed, 11 Sep 2024 18:13:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3YhAkNLv3_v; Wed, 11 Sep 2024 18:13:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B01140789
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726078381;
	bh=N2ud9N6nqPuJF0EtfDfHDyrOtuPcf9g/tkUC4AxtWh4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=klwLBBxGM1ELAaJvX8VLUWUIt9bqEYOMSShmJR8leA9gz5nbeNzgpnJY/Trklw/wb
	 R9LudIotePVWDNm+2jKj40Xci2E6ZndtDPrGrfp9pZA6Nz2rPds0MF4iJZ9UWdTi2K
	 lL12YHGJoJUBxMnZ94tDXu0sJHHH8B0hu8pS/WMkSu3GCdB15dCTZeURczyMOCePNe
	 GZ9SXB3IGU4Fd7NXe1Ui1KtEKIUU4qk5zAbqVXP2QGowBufXJA7p5JpJL8I8GIu3+7
	 K1WMRjL4+X2okJdHsN48SO0zIvdjCxvhawSAXO8JNR8vLdtesgUr7gNr6CQxXVnHRb
	 0zS1XeR6uDIlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B01140789;
	Wed, 11 Sep 2024 18:13:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A19541BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 18:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E9A140466
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 18:12:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nPiSeDX7btwK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 18:12:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0E79840257
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E79840257
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E79840257
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 18:12:57 +0000 (UTC)
X-CSE-ConnectionGUID: uve3TLTCT3aRPuHQ88WQ5g==
X-CSE-MsgGUID: Xi0qbhGJRtmCANaals685Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35491215"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="35491215"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 11:12:57 -0700
X-CSE-ConnectionGUID: QvM76g7ySiy8/fl/M1LHTw==
X-CSE-MsgGUID: f/Lo25TBQxuNcmTNhqo25w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="72045261"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 11:12:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 11:12:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 11:12:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 11:12:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 11:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DDv/tgigzc4AagftGFTfMyEFbVzfQIb0ydwmkXrXgD0qGc0eL1MyXlFaaAvvHRCjODKpsyJuzsn1Vn18QOuLTORtQI/ae2Il+mxRYfOiOlEGYrN+ZTH2SGbNacTa4FZGV6/IJ59t6VBLxRdnTlyELcRegjOTRn315X2LaXdRoJ7OQDjbUUkam6U8mRSfkkAb9fvGvKxd+WxFduIMcF/cSUO7pshs5P2irMbBksbdaPUjlI/EQcmmGXwOKRIFBgVVHYafn4Tv5CP0FxzyaQj1uyHlN6+9tiON84QJzZ+WLosBU+ICMUqA/DC0TK+fkUm4DcxKbMJ1AsTKi8NSt4v2TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N2ud9N6nqPuJF0EtfDfHDyrOtuPcf9g/tkUC4AxtWh4=;
 b=Bhes+pyCwuX8qbkrRZUtZyiO7mGqKlTne/aMmqtc6xF3q8iy8t5KjPNBaY88QipzbKPPjmXFGSuCrgafH8XNtatDn6y71+z/OJbyzHPNPgAw2hF5JWcjGcp8hppBSOufhs3E5tQhiHqz1MrXfu00HuWO4g7OE3yes+RaKUF4XTVyy8tFO/qbklXtdkbD1mVsQbg+q/Vc4hcbVYorQbd2bc6FU9ySLOZERvr4NIfgwge0lfUR4wpm0N/48Tvt8XB9azBfKLjfIIszVu4yI3PGC6RnySDMCRYratagYjZYKmEKlOXzPiqqwYpeeCT4v4nkLxjB8/OeOPcT6lLhjaLIvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB6720.namprd11.prod.outlook.com (2603:10b6:a03:479::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Wed, 11 Sep
 2024 18:12:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7939.022; Wed, 11 Sep 2024
 18:12:52 +0000
Message-ID: <795ab8e6-8759-4e7e-a8ed-c072ab5253ec@intel.com>
Date: Wed, 11 Sep 2024 11:12:49 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
 <4fc61caf-e922-44d6-b3b6-f286fe179107@intel.com>
 <2d5dbb96-d96b-4528-b098-ea1fb9c762f2@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <2d5dbb96-d96b-4528-b098-ea1fb9c762f2@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:254::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB6720:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ef89647-2989-4315-d347-08dcd28d59c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFFnVkIzKzBsYXMrZ1p3TTdqYjZNeDlGczZCWUIrN0o3OXJLb3dHdWdhblA2?=
 =?utf-8?B?Q3RvdEN5cFh2MmlzakdnUVhmUkhJRkl4UGpQMUtnaFBQNmEvNlVQdVRmYk85?=
 =?utf-8?B?S1EwY1g3L1VLNWl2TFlIRTg3YXFWT01hd05DS0YvMG9Sa244OGtDeVYvdG45?=
 =?utf-8?B?YXUzMzN6bmZ5NGYySHhXK0hVdEk4akROazlpUDF5dnYycUtxVlVIV250eHE4?=
 =?utf-8?B?aDlZRGJnQUZVclRCNU9XSWlUcnplcUM4aG0vc0pLUmF3bE1lampWVEFUam8r?=
 =?utf-8?B?Wk1HU0dSNGpNdUtaUWJQcjRrWGtIWFlteXdIWWtRLzA1VkZKYnFaZkxPTEVm?=
 =?utf-8?B?SkNrZUQ1clBseXUwMzYvTFVCbHAzS3lFRjkyNkwrTTQ3SFN5bGlKZGpUTFJy?=
 =?utf-8?B?MkFMYkp0MURVdGdNT2wrdVdFMzEzYlZLeVJWK0Q0ZWVKV3BORFFGeFVmYm5W?=
 =?utf-8?B?eE5JMGY0S1RwNlRMcU84U1R0eG9qNDZiWS9mbC94RGkwbGRaNVVWdmhya0ti?=
 =?utf-8?B?Si9rQkw1KzJ4QnhheFhCUnRCUEMrTzVzdENxZ2NIV3JkQVZJemNjQWpKOXp4?=
 =?utf-8?B?RzlmQWI5VzVWUUFsRXNvOE12NFdEUkNqN0hvNnRnRnJTSE5CRkd0ZkJtQVkr?=
 =?utf-8?B?aGEzdVkvNTh1MDJPU2RNYVBHVVFBOXZSd3AyZEh3QUtFQ3RyTklGQmMzQmNF?=
 =?utf-8?B?VnppbGNHc2owMzBxVktJb1N4KzBpRDByQ1ZiRThiRGFWWWVhcDNqbUMxbWJ2?=
 =?utf-8?B?TWxUYk94K2l6ZmwxdmIraS9CZklvbFdIRVl6eC9wOW0xLzZXbEljemRLbXFu?=
 =?utf-8?B?YWE1ckxxUUdqV3ZJeVhudTh1QzRxcnFQMm1OZXpJTHI2K0xNaCtvbTUramhq?=
 =?utf-8?B?M1k1S09BOU0za0VpbVZXY0FTOE5YL3hpSTZNeWZocFJkYnp3RDRIUm91N0ZB?=
 =?utf-8?B?a1BNOGZlM3pySTNVaElkdGJjeHpyU0pDZGtLSFgxVzVHcWt1VW9xRUEwUUYv?=
 =?utf-8?B?WnVzSVdOS0tjYWZYZDFaTGpaalZURGkzajBuMHNIWTRhVWl6eU5zdkFMaEJM?=
 =?utf-8?B?VkdKWjY1Y0szdHpkWjN6Tk0vTmhWKzN3cW1Hakc1VmJrN3RCSVdsNlBmbkh6?=
 =?utf-8?B?aGdkR3ZPMy9ubkxJaGVLbENndTBoWEpvd3htaVhDRkoyQnZ3NnhUZmtVZGpi?=
 =?utf-8?B?UVZCM3hHMTdNL0Q0WVZ6RERKZFZUWlBtdG9KdkNuWWVEcXVLQno5dDR4b21p?=
 =?utf-8?B?S2lmbmtVVmo3OGlZc0RtN2UvdWFmMWRjemN0Q0EyZUY1QkN1VXpHOHlpcGhX?=
 =?utf-8?B?WkZkcGxtQkZ1L1BiRUpTaHFocFZmajZUQTBSL3RwelFxbCt2VUF2WHN4V21p?=
 =?utf-8?B?Mkh0T05ZYnkxSXlQdkdNMkJVdStZSlF4WmR3TEpSaTBVYlcyc1VoNWhLN3FT?=
 =?utf-8?B?ZlhuNFoyQkxkZ05NL3kwNDcyRnNKbVVFaWlyd0FMWjh1THFuU2ZabnZZMVd6?=
 =?utf-8?B?V2xGRUw4b3BiOGhRaE1oNGNOUUJLVDhQTlJ4QUxzUm8yNGpoVjJEUnB0OXND?=
 =?utf-8?B?Wktma05HcWpiV0R6azlwZTl0Vis1by9vRUVFamYvdE9KakRMSlVTZ1JXQ2JW?=
 =?utf-8?B?OVl1aFR4K3ZXYzR0MTlOYXBUWmJzc2FsMENGYUxIanZUcHNpcDVLYU1RaXJG?=
 =?utf-8?B?eDRhQkgzL3VVUTlpRWR6RC80MldsQXlCaDdXTi9Nd2NZYm50d1FZZlNTVkdT?=
 =?utf-8?B?TWVobGpNNGdOSmRGYlFZcThIbDJOZVh3bW0zTTdJdDhGSy82VnUzNXBvQlM2?=
 =?utf-8?Q?lykMfP3EY/x9tjW/zQIXLZ3a7LHEv1PSL5cdc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEdaQWh3RHVLelNSbXI1eHovRkxmRFFHOXJ4WVBNZDBTK2k0Q0x4UjlKaTFP?=
 =?utf-8?B?d0NLcXdpMTdERmMrbC85QjZTa3ZMeWdRbVFYV3pKZnY4eXpZdzhVVUN6TVhR?=
 =?utf-8?B?R3RKOU5WNFk2QldnL1RnZ24wRmZGcld4STlwWU9qSUUyem9LcHIyZnhyQjRY?=
 =?utf-8?B?bkhNdmg1UkM0K3p5QzJ3bWJ4UXhwRnpkQ0w3aEg4dFNuZWd1ckNHWUY3dEVq?=
 =?utf-8?B?YUg3aExycFBFTXMranVaZnZXanFMWjE1SURKYktFRi8va3p2cHVJN0tYcURN?=
 =?utf-8?B?K1VSR3ZKMXBPa3RQYlhLYktkL1hZZlYwd3lWdVF5QVNPTlFKeDhtelRYQURN?=
 =?utf-8?B?ckhzcFFCZHFMRTBiMC9CZXpRZ2IyZWxMM0RvZmV3UGZDd1daZ3czaXlHYnJR?=
 =?utf-8?B?a1RWdWV1UHhvYVhzelRyaWJuMVRGbU42MHN2SmF4NVR2MS9tWjdrTmNUZTBY?=
 =?utf-8?B?bjRMTXpuM1lSQkV0SjMrY21lYTRiNkszQWkvNWQvTWZEMUU5ZWxKblJXVXRj?=
 =?utf-8?B?MDlBYit6N0kwTVZpNmlmNXBCTDkzcmFtM1VSdXJld2swYTVpM2hneXg1ZTJI?=
 =?utf-8?B?NkNmQ0s1V0MyVU85N1B5WjN1eU51ZDB1akxNSitYS0tsS2M1OVVRYTY5UStW?=
 =?utf-8?B?SHZuZVFFSTRhdmU1ek5HWnMySGNudzFSUVlVTVBadG1nVkpTR3hXS0dIUXVJ?=
 =?utf-8?B?RGNUbXREZnBVNHBYckVKV1BPUVJ3dG1zbEdlaHJpcmNGMEVESTZycmp3V2VM?=
 =?utf-8?B?M3h5T21zbWNyK0R3dkJBNjhxWVd5SjA2ZGQvNFpVc1JRb3dNeGRPd2NzQWsv?=
 =?utf-8?B?NUY4OTF4ZWtFd1pMRVEyY2lYcE9EVThWZlpEY2V6TEFVRnFjNDBKZm1MWXdX?=
 =?utf-8?B?akpGZENydE80QXlNUkplcER1OEpRSUEvQUorUU0rdWJQajNjSi9sRE4zdThh?=
 =?utf-8?B?SWY5VEZiTXZVdHk1ckRFRi85anNrK2VmbVpBQWdhWUdFejlrWVZhYjl1NVRl?=
 =?utf-8?B?MXBwcHBqYmNMNzcyNVlrTzgxdUwwZHVyelYvWjI5NXQ2NkFIVVUrNk9qbFI4?=
 =?utf-8?B?cnlKKzh4SWxGd3p1b09GQTBqREdjZG5WMk1xNGlhc2VZdXlQd01XZmoyemM5?=
 =?utf-8?B?eUVBMVRqU2Z3TnFLajNRNExVRWNiOHZtcXYwRWxodjdDN0MweHczR3phMHZx?=
 =?utf-8?B?YlY4RnZZakV5dDlQRUdoT0xUbmNMYzNzZkh2UEd3aXVSdWxCK05BQlFnOHBz?=
 =?utf-8?B?L0owZ1pHNzBrRmNTOGx1bFVTZXFuOXJTbXFtME9UR1o0dXlSWlRkZEZBVk9m?=
 =?utf-8?B?SGhwZDZsVnMwb0pDVlVXbXBGaEhkUFJ2Uzdud1ptY05salJ3TG40WnBDTzRI?=
 =?utf-8?B?b1RwQWM1Yk9lWU8yR0pPc1JzY3VSbUM0ampJTVhIMDVxMTNKMFl4TGZjN0Zj?=
 =?utf-8?B?ZHV1T0tjTEtOaFdDVzRZSnB2RWV0b2xMakRxclBtUmhKaTZveUJKQkp3WkJT?=
 =?utf-8?B?SFltK2ZMYTNsbjhYRWR3d0h0UFd3RnNwZUR3a1JQaDFmaVRyd3dqUnBlbmNy?=
 =?utf-8?B?Z3FPaG8yeDZscW1jRjNMbnAxcnR0MFZQZmtTWmxYUkovSE5IMDRzaDJhY1lR?=
 =?utf-8?B?ZGwyTDFIQWN6WG9yZTF4WjlQcW9CTmEzQ1c4ZG4vbHdzTTRka0VFNnJUb2Zj?=
 =?utf-8?B?T3NvTXl6cVNsNDNWZml3THlsdnpWMkdTbGpaN1NSc1RUdDJ6Q3ZIQTJlR1Zn?=
 =?utf-8?B?Qkd5LzYvLzNFdFhrMVhYalNycVZLckNWUDJGaDk2eDIxanJ3SDRHZkFDbXNN?=
 =?utf-8?B?L09EeWlRQ1pRRjA2TitsZFdTdTNPOVVmYWEzNmJodHhCeFJEQkU5NlZrRlll?=
 =?utf-8?B?MTRDWG9SYWI3c2xDbUI5RGpEYWR4ZGFSb1pSMTFmaXRKbGZqSUFiM2tRUk45?=
 =?utf-8?B?VFYyYzhkT05XL2RuaWdEdFh4bXZTOFlkeExFZDNkSkdTYXBnWGVxeW90RnUz?=
 =?utf-8?B?ZHVTZ0hGYnpqclU3Qzg1MHFBTU8wV2liLzd6MnNzaldGRzBlc3NPMXFlOE5k?=
 =?utf-8?B?MHpSV1RweUhESmNEYVkwVk9DOGhid21uVEFIcWNWYXNmclRETTMxaEFXT1pO?=
 =?utf-8?B?R091TjVQNjIxK3F6ZUQ5NzRLZzBmQ1pDNXVZQ3gyU2hFWWd3QytDZjNaRldo?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ef89647-2989-4315-d347-08dcd28d59c7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2024 18:12:51.9889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w/ZftgC5k8fjcW9V5pmCE9vQhsQgSCy5/mNppT0snc165i2pzuoQlt3Bu3Gump4+uKzhaMlRt7dlqErquF2tTXj47MRMyY83IcfY6jAOqlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6720
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726078378; x=1757614378;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/geGXKoGVNWHBmRJhV6pHvQE0D5ldK3lI1+Qjtpql28=;
 b=ZITgO46GfsEJvb/5YG+6+xDrmFnMnSb+UKG5cwmxr3IJ5zeYWDIjwiQ4
 vB3G2yXxc4kk92eT2zXFgl27y3IkJ4uaKKUtzCdPwtJutE86vc7S1H54l
 RABpNAfAsrV4r6wEz/T76cQlivETl+D24Q8CjZaXmWMoSnFMBK2WzuZ0G
 ACYE9frTj/d8JrNB8dPHH8+kFZWxDbkA/VyuWHXdC5hFv3urO5U59QqAA
 cMgmgSFxh7i9zAPODwy283TdXYa/jgn2auhjunhrvCgAgUbXqL2jUPsKm
 dDdocZjMdYcSNCb+EzalhhexVGZYn5sCV5EI2fRCsuDAXT4LnYundr5qM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZITgO46G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memleak in
 ice_init_tx_topology()
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org, Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/11/2024 1:37 AM, Przemek Kitszel wrote:
> On 9/10/24 23:30, Jacob Keller wrote:
>>
>>
>> On 9/10/2024 6:57 AM, Przemek Kitszel wrote:
>>> Fix leak of the FW blob (DDP pkg).
>>>
>>> Make ice_cfg_tx_topo() const-correct, so ice_init_tx_topology() can avoid
>>> copying whole FW blob. Copy just the topology section, and only when
>>> needed. Reuse the buffer allocated for the read of the current topology.
>>>
>>> This was found by kmemleak, with the following trace for each PF:
>>>      [<ffffffff8761044d>] kmemdup_noprof+0x1d/0x50
>>>      [<ffffffffc0a0a480>] ice_init_ddp_config+0x100/0x220 [ice]
>>>      [<ffffffffc0a0da7f>] ice_init_dev+0x6f/0x200 [ice]
>>>      [<ffffffffc0a0dc49>] ice_init+0x29/0x560 [ice]
>>>      [<ffffffffc0a10c1d>] ice_probe+0x21d/0x310 [ice]
>>>
>>> Constify ice_cfg_tx_topo() @buf parameter.
>>> This cascades further down to few more functions.
>>>
>>
>> Nice!
>>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Thanks!
> 
>>
>>> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
>>> CC: Larysa Zaremba <larysa.zaremba@intel.com>
>>> CC: Jacob Keller <jacob.e.keller@intel.com>
>>> CC: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
>>> CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>> this patch obsoletes two other, so I'm dropping RB tags
>>> v1, iwl-net: https://lore.kernel.org/netdev/20240904123306.14629-2-przemyslaw.kitszel@intel.com/
>>>      wrong assumption that ice_get_set_tx_topo() does not modify the buffer
>>>      on adminq SET variant, it sometimes does, to fill the response, thanks
>>>      to Pucha Himasekhar Reddy for finding it out;
>>> almost-const-correct iwl-next patch:
>>> https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.kitszel@intel.com
>>> it was just some of this patch, now it is const-correct
>>> ---
>>
>> Right. So now we're doing the const correctness in this patch along with
>> the fix?
> 
> yes
> 
>>
>> Would it make sense to fix the copy issue but leave const updates to the
>> next tree?
>>
>> I think I'm fine with this, but wonder if it will make backporting a bit
>> more difficult? Probably not, given that this code is rarely modified.
> 
> hard to say, but I think one commit will make it a little bit easier, as
> there will be smaller number of possible sets of commits applied
> (at least in this case)
> 
>>
>> The const fixes are also relatively smaller than I anticipated :D
> 
> just adding kfree(), knowing the proper solution is to make code
> const-correct, is just a workaround, not a proper fix
> 
> change is still rather small, and splitting into two would require
> postponing -next one to be after -net (as it will just remove the added
> kfree())
> 

Well I was thinking of splitting it as the change in this patch where
you move the buffer copy, and change how we allocate things but with a
forced cast, instead of changing all the function prototypes to const.

However, I think this is small enough its fine as-is.

>>
>> Thanks,
>> Jake
> 
