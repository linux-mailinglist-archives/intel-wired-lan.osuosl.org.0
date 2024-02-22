Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1DF85F91A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 14:04:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD97A41915;
	Thu, 22 Feb 2024 13:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7J8LXiuaUJyQ; Thu, 22 Feb 2024 13:04:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A467C4065A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708607068;
	bh=LBtMNESMcfTzEwIAkuEhMlXF2g41bO1wFF3jvmotzvI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9QI+G6RHhVggANZ8W3cyxNxvD3JSH2zvC4JOsLOjk6A558LpaZ2HWF53wWfxlhYLL
	 NhogLIPYXcKuDelGNJA2WT7hv95ys4zhR8XeslvAT5VoeWGjwKZwa1+623hC4FC9Bw
	 UdEJ9ErHTfqViNIaTWqbPj+C0dHmQe0QYTq3tQJVleEsWrZnGm+hGfaN8ezhNfdDMC
	 thpU50k6NeEyk97ehlcqjqQeUQxj4T0KQwQTWjLNUGC/TWyGkKV2+K7kxQQHbXWtqQ
	 QCg97hcvCbdENYT4es3D+V54sAGPS8qR+spRi1dzU7QhLgiCNtD6fQR7g1VvmYAsp/
	 3LmzetTP2Rdjg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A467C4065A;
	Thu, 22 Feb 2024 13:04:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD0B1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E68CE418DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6NxZmYa3h_1c for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 13:04:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B215D418D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B215D418D9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B215D418D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:04:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="20381121"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="20381121"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 05:04:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5433305"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 05:04:23 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 05:04:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 05:04:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 05:04:22 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 05:04:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XmGOnJyAFp5zm27Ijr2OOVnF2Gs6yjkrNBxeO6HRPVZABBd990Tdi+iszx77OsK/XCOHI8l+P9OZq2JQvdi8dHInhHJUMLZ+71bguzGfUHJJULw7gZ/rCuOUKP+GvbFkSlCRLS1ku10SLfW3CG9PnAGXvRxBpkyaQYy0y20XILweReTMktLj01hrKD700MIJOUuv6FF2x/RACCdziS3xsFtCN4HuJ7KXuliGRQvfx+DcJLye5xjK35hCUvDZpigHoqP17o0PSMiroj1KZw4xrpj3OkBmPreALHDXptgZ1DhJ0TvuHo6szZUziVSbUp8HJTxq83pbboRPs9ldC/phHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LBtMNESMcfTzEwIAkuEhMlXF2g41bO1wFF3jvmotzvI=;
 b=dfWPlUIc6uWpFIv9/EU/RGeSC/vMyVpUoOb4zuu8o7Fkjhm41LZ1EzvwzwAcGyUrWYCvRSQBtsumpG3yAxJseg3t9iD07TcwJ3yg73rn4QMg52N3xYsOYaFKO5/crvBMw8WfidZFxDx9rwbl098SQ7jENxm8xXy9kgZNNKMFthLmPYIVfCFcorY9BYG91P/Qr6We1H55FHL2JI2qumbHTg+YufF2PqsdOWF5Urm7TQLHJBYIW5bVPY59XmWG4ifTteTqbiYmYZVeQIpRKbO4ZgqT61wWAJz3gEpSelcatVvAUO7iSwC4RI0M7kCkGahDwBI6XlYwFtqiDpreABNtvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB5861.namprd11.prod.outlook.com (2603:10b6:510:133::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Thu, 22 Feb
 2024 13:04:20 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::93d9:a6b2:cf4c:9dd2]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::93d9:a6b2:cf4c:9dd2%5]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 13:04:20 +0000
Message-ID: <9f4d0449-9995-4bb0-bd95-f12d9bc0b234@intel.com>
Date: Thu, 22 Feb 2024 14:04:16 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
 <20240221004949.2561972-2-alan.brady@intel.com>
 <369a78cd-a8ed-49ea-9f89-20fea77cc922@intel.com>
 <52fa2a08-b39d-4ffe-80da-c9a71009a652@intel.com>
 <7baaefa1-cd27-4dc7-aa2d-946aa4d225e7@intel.com>
Content-Language: en-US
In-Reply-To: <7baaefa1-cd27-4dc7-aa2d-946aa4d225e7@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0360.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB5861:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d2c476a-fe06-4b7e-b12f-08dc33a6c88e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FvyE1v1H32JXaiXuwo4vq4pc3zq5fxz8VBrMsp7mMPLxbzt66avsFnlCKJ0BtXjKpG92YdKkHkb6T4RBFLlIuoHrLo1BXNaFRvRUWSLa2ZZTZNQ3CddiOkq7sL4MNLJ3rkAlD7F8hI2bXEmDeN9WgGQUzd6w2zRWSmvQ6H6n2MLc5PyLc8VC3O6J8T6bv9ik20UdhKKdQ3iIudaPoar8jhu9ib9na/BqwwkUZ9u8oM1m6m4nexJzDptdaPdACzHD6oPjLtl9zoLqHykOqCb66mBdo3rcTRNQWtZTf01GVBAYx+X6dI/u8+Hr+lnpYQYjS/UvPamfB4ANhyX5DItK2u6dSkKvUKxlCutf8GpTFGUORA0qkDI2Sa0cno1+wx9ueFXkUh0lvCafRA1wJNlNp2hZ6atuNhOedycS2k45X5IvDxMJO6fHDw4B7ni4B/jXMIWy0j7WXBJPom/1jLSXYFFBIVRSbfMSHhbJtuVVDeNIoPwLvryYQ4dqZUoS7mf5t1gK5obfrodZfhhhQU2jsg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WStmQTNJTDZpdTJ4UE51K3NhS0djVUc5cTAwbjZMeXRDVUYwT0FGQm9McHpy?=
 =?utf-8?B?SlFLR21peHczUGJ4eDZRWk5KcHdyaklwZWZSMDBwSHZqandLVFlHeTlqV2sx?=
 =?utf-8?B?USt1eGltQklPcytYOVlvWG9wMXRVZk9EWFdJYy92d2t2b3k1Rk9nYUlUM2tC?=
 =?utf-8?B?N0xrZXVTMzBnR3NtaGNrN3NjeXZrb0VGQnl2bFVNODNWb1FNYnpTZUc3Tjhs?=
 =?utf-8?B?VEtiUlRvTFBOM041QWlrRlIxeUJwRzRydjBXdmhoU0tGam5lSkYrdFhjQVJY?=
 =?utf-8?B?N1VSQ2FTSUFDWG5rZEFBcFB6bzBmTXdSM2F6V0JyM1ZPTzJqSGE5b0VXbW9S?=
 =?utf-8?B?c1kxdlVFZE9XVk9LVjhGM0RLeStQbC94ZVZOYWRaRkkzdFJDaVdGMkljeVpm?=
 =?utf-8?B?ekNVbk15eVVHODgyRUhQVWV1b001QnVJOVhidmFIVHphT2s5UitFOXFPUmtz?=
 =?utf-8?B?eGtCdjA5ZU1POCtPQmZpejgyb2U1Q0l1djZNQTQyM3BxS3dEZUFmSkNDeXBp?=
 =?utf-8?B?RDY3bm1zcU9xWHh4eSt4czVTMWZRdVM3MTFIOFdMVnA4ZWdqWWNWMUs1QWlX?=
 =?utf-8?B?dGhJSmJENUpCblNHLzRzd1pNV0V5WXBOU2ZEdnpRQ0ZUWDFTRG9RQ3lrckk5?=
 =?utf-8?B?N2tkOXR4MlB0WFNVdVNaV1JrLzZaVVBhQWNXR29ZaTBCUEpMcUoxdGx1TDVs?=
 =?utf-8?B?V0RmWWxYRDJXdlJmOGhvUkozUm05TmVBM3lRYk54MmxlTzZvQUVXMzNhUmx0?=
 =?utf-8?B?QkVZT1NHK0JvRkNqQXUrYWZUVXh3bHJsQ2tJQmdTbGxvK0ErM1BwSjJIZlhL?=
 =?utf-8?B?R1lXdXZuLys3RXd2b05NNGpidjM5dUZ3aFpYdXV5ZTIwd0w1bDlRRVl4R2Mz?=
 =?utf-8?B?SU1zeG53ajJ4VHRKeVhkMEJJMmREUVRKODR0NGNMUGY2M25ZeWNSdWsrSFMy?=
 =?utf-8?B?TUVOVUl0NmxzQ3V0aHFOS1BCRmQycXQ3RXhUUlkyVmlGQ3ZoQ0dFUkF1TFRs?=
 =?utf-8?B?dDJ0bHdwRGZCN21LanZycVVSU3hGNk1zUC9hTmFTY2thQ0Zzcm04VlIzZDM3?=
 =?utf-8?B?Zm04RklKTmo2MVA1QmswdVBlN2hPRnI1YURrRDBWY1g5dWtBRWdjWnJPQk15?=
 =?utf-8?B?Wm10Z3NDQmpsY2Iwd3BOVEJiSVNRQWRpUTJLNVhhTVNEemRLSDkzOXZ5RGUx?=
 =?utf-8?B?MjA2ejM0TkJXMWlQSHJFWDdZR1E2U0pwOUZ5NDJOV0J5VFp3SW1KL29ndzh6?=
 =?utf-8?B?emtndlpKbmhhSW1RWDRVVVJPQW5UcyswOUpMS2g0L1FRREpTb0ZtK1JhNEc2?=
 =?utf-8?B?S0pCMDZyK3RiUkFNM3JPYUFqaHFWSmJiOVA0d21oUG5rTTZmSTJJVVRVUFFC?=
 =?utf-8?B?S0xGQ0ZRZnkxVjZ4ajVkbEh3SmlxcXE5ZlJSRWY5RzF3NmgraTB4akdsYTdC?=
 =?utf-8?B?NUdSeVpkVHp3aUVoWnRncmJGK2hEVlBiN2hMajdua1h2SldFT2tkTVB1YU5v?=
 =?utf-8?B?QkY2VTZScHZhaDhtdFVhZXFQTk50TDJwUFBVL1RtclM0T1ZUY05oWDhDN0VJ?=
 =?utf-8?B?Z3pUV1I2MHlPeWQybEdjQXJ2OThJNVlzU1kxOHFTNEQrZ3J1VnJwcmsyazNa?=
 =?utf-8?B?ekhUQlgzd2YwMXNZNjJrNllEc2l4NFhpQTI2ZVRjd1NzUzlseHlBYTRPRmdH?=
 =?utf-8?B?UlNMQlBJTWJrdUxPR3BYd2F5NDJLMlRNKytrcGhiTUVTZkwzMnArZE90d2p4?=
 =?utf-8?B?U3lyNk1ESEpzOC9jaERTSmZzWUNrckRFdElWRU5HN2RUeGJSdkc2V3VpOW9Z?=
 =?utf-8?B?eDRsdExlaGxPaVhvMW1jSEZVNEhQRmpNZllZMjdXZ1FNWDNOdUJPbHYwWHZ2?=
 =?utf-8?B?WC9ISnFTZUxRRVUweWJMUW9xZndxblB4dTJoS1JGNjVXZEVndGROTVJMRHhj?=
 =?utf-8?B?V2pnUWhkY2lpeXo2T0ZMUDhZMk9jK3dnVGJ4empsVW1NT0wxczFSRkVmbnB0?=
 =?utf-8?B?RTBOSDRHUStZV0xQaHo5dnhXVzdRZUJ5V2gzUnp3WGpENkh2S1BiSHJsODJP?=
 =?utf-8?B?dzFyZUsvdVNNUUNvUHBhdC9pOXlKRXAzOEVLdC9tajI1ZjVzeHkyRXMyaVNq?=
 =?utf-8?B?dmlLM0wrUXZQR3FsWklvdkhITndRdUIzMndVK252N1NBS0M5Qlh2bGJLMkhk?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d2c476a-fe06-4b7e-b12f-08dc33a6c88e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 13:04:20.4250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 30VABdZ7p8H8aAvSTZVlNqg4mwkIR9Zg+DXw00XsB924l6lndYTg1ELbP/U0XmBAklM1J5zPU9Hz+ucSNWotL1vpEh4lExveC8EgpGyzjGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5861
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708607065; x=1740143065;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0yKcrtmMS5w/HShw+FfQTDbRGXa+RJajrOtaPL/6kFE=;
 b=MBpYpWGLhYONGotYBz2rKxVFwYuHVpkdr0TgVceJVfLEZWA2dN5WgmvJ
 SvQutaw+g6L70X1T8Ka2n4tnIozYlAULIBEqFBTF0D6GfhStKtAfRYDX/
 bQFt1kFNBgYUQcEV0LPi/i3Q/nQzB8bkwjoX3Q0HX9dHQmCjKAckoutdS
 EQTI1cpP3h9GHkPCH/kRnga5VZAFLVY6caRr/M6o2yaRtKMQ/FvJWFfyq
 2/F1yWX0mdlQPO7PcTTsLXkRR/HbSAKqx8slOro5E8RbeCp9lRU2xE2RJ
 raA4vEtYxewXHXouadWCeUGpLtLU7tndTeavw2lCP3w15XnqxuhmVPOCF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MBpYpWGL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 01/10 iwl-next] idpf: implement
 virtchnl transaction manager
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
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 intel-wired-lan@lists.osuosl.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 22 Feb 2024 13:53:25 +0100

> From: Alan Brady <alan.brady@intel.com>
> Date: Wed, 21 Feb 2024 12:16:37 -0800
> 
>> On 2/21/2024 4:15 AM, Alexander Lobakin wrote:
>>> From: Alan Brady <alan.brady@intel.com>
>>> Date: Tue, 20 Feb 2024 16:49:40 -0800
>>>
>>>> This starts refactoring how virtchnl messages are handled by adding a
>>>> transaction manager (idpf_vc_xn_manager).
> 
> [...]
> 
>>>
>>> Sorry for not noticing this before, but this struct can be local to
>>> idpf_virtchnl.c.
>>>
>>
>> Nice catch, I can definitely move this. I'm also considering though, all
>> of these structs I'm adding here are better suited in idpf_virtchnl.c
>> all together. I think the main thing preventing that is the
>> idpf_vc_xn_manager field in idpf_adapter. Would it be overkill to make
>> the field in idpf_adapter a pointer so I can forward declare and kalloc
>> it? I think I can then move everything to idpf_virtchnl.c. Or do you see
>> a better alternative? Or is it not worth the effort? Thanks!
> 
> Since it's not hotpath, you can make it a pointer and move everything to
> virtchnl.c, sounds nice.

Since you're sending v6 anyway, could you maybe move virtchnl function
declarations to new idpf_virtchnl.h to make idpf.h a bit less heavy?
Something like I did in this commit[0].

> 
>>
>>>> +
>>>> +/**
>>>> + * struct idpf_vc_xn_manager - Manager for tracking transactions
>>>> + * @ring: backing and lookup for transactions
>>>> + * @free_xn_bm: bitmap for free transactions
>>>> + * @xn_bm_lock: make bitmap access synchronous where necessary
>>>> + * @salt: used to make cookie unique every message
>>>> + */
>>>
>>> [...]

[0]
https://github.com/alobakin/linux/commit/0c8fae557f4e6ec1ae4353a68c9c5c9c2b70c5e9

Thanks,
Olek
