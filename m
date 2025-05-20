Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43784ABDDBE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 16:48:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF52B40B0D;
	Tue, 20 May 2025 14:48:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bjTesbdDRrT0; Tue, 20 May 2025 14:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 803A940B1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747752533;
	bh=612nwKqm5YkgJnDYxXe20CE9yCEJNLteXyQMsReLSTE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x5pbTaBcBPERJ1Kj4LL0EgW9C/MXfuJ6q065Z0C0xaxZHMAFT441lhUeAThTHuK0x
	 LLLiC2N1pmLIXhxijoczmNQErUGY5EiNhe41DF0k2F32BaiTWnqkKus2zQz2FfQV//
	 2cjbZsbuAXcUgwUI//+5gH4kRweFyYsO/IjDgLvt0vg9S1mWEjWT3pBSFy3ztF/LE7
	 3RyB5BDod/0iC3LGpjS9Zwd+rezhigfvR37+mtRRvTbrTftql3rU9kq0+5Lf2AzX08
	 mbb+ZZBv3pTzhEmnm/oUivyXnUijbx5wC+kx/LruSrh85D3MlkojadYhmkzhuwqTfB
	 0SRCt+nLaAFEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 803A940B1F;
	Tue, 20 May 2025 14:48:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DBC2DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 14:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EEE581C19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 14:48:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xk0EN8CNTdIB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 14:48:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 530DD81C58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 530DD81C58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 530DD81C58
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 14:48:49 +0000 (UTC)
X-CSE-ConnectionGUID: WPt4RS+fTiunEDL7xalZ5w==
X-CSE-MsgGUID: PEIVYy3xTKaYEEwocYtzUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="67099925"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="67099925"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:48:50 -0700
X-CSE-ConnectionGUID: mEQVC6gJTRuWJpCVUt4NwA==
X-CSE-MsgGUID: p4ehyhKXQbGMzJBKSkkEpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139561663"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 07:48:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 07:48:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 07:48:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 07:48:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DnxBGKIjlCqUx7kq0y+F9Haek7Z+AnIWxawlzJO630UVMFdRBQXGvvKj565a694+gsiHA//RiskUgfNnDN53elGynPoBAKPjh4A44yPUqsCpiSkBWNAsbsCZtAo2FcxbwvQ5cD4NSPZvu0G09V0bCCRQ/F+jXtIUdFrN4wzUYzOHn4vRp8HSEKk6JcrTb4Qy0Jwe1RpacC4VOK47mpk/bIlBpSDV68RuQX7+jJNG7QBR5tpd22dDcE5SwYHwWOmlXDL3Pjxfp+Iyu6tcWnRenOjdQTBi/2VRnqBNaD5jS5Cl5Ne4hLEqMyy+sFYilUqNZK+H62CovX5T23K9DVJ01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=612nwKqm5YkgJnDYxXe20CE9yCEJNLteXyQMsReLSTE=;
 b=MaBV/kss472ecQzAnrdPMlO4Yr+aC4NhkkRB6siiCMix1+HqSgNGyp01vBS30GBzVynwWEUunEtZD/mR2aIkTfi66qiqnd6qr3DYxOIGUtidRncv2t0yj9aLh4tDowvRHNZZGkLPPJNfLBtSbJz0PXD1nlO+s3bwapME3eelJUyK+HW1fGUANgKtes+UWXnLLVwTMq6d2+PHo0XrHyI6LBt0Nj4OdGbs8q9mCtbRpilAOrbGwjq+mFvUEYu5ssdIDBvBOOpFxwRdS1azt1kbuVMBnnBeqKZxVPfJOGzahL6/QgkwjErMzhb73KZhBCCYspRqM5woF4/uM+7YkB+gEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DS7PR11MB6223.namprd11.prod.outlook.com (2603:10b6:8:98::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 14:47:34 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%4]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 14:47:34 +0000
Message-ID: <4068bd0c-d613-483f-8975-9cde1c6074d6@intel.com>
Date: Tue, 20 May 2025 08:47:20 -0600
User-Agent: Mozilla Thunderbird
To: Krishna Kumar <krikku@gmail.com>, <netdev@vger.kernel.org>
CC: <davem@davemloft.net>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <andrew+netdev@lunn.ch>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <sridhar.samudrala@intel.com>,
 <krishna.ku@flipkart.com>
References: <20250520050205.2778391-1-krikku@gmail.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250520050205.2778391-1-krikku@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR04CA0015.eurprd04.prod.outlook.com
 (2603:10a6:10:110::25) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DS7PR11MB6223:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d3933c4-ecad-4c4b-3005-08dd97ad4189
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MktUak9YWThod3pjMDFIajZGMnpIamd0Qk1pajFnU3JFTDFuenlQL29lenU1?=
 =?utf-8?B?cEQ4NWpEZC9iZW1rbnp0eE1uM1o3RnVMZmU1SHRBb3NNZkdFL2N2NHV0d2Ry?=
 =?utf-8?B?TkJwblg1OEtPNW5FUjhWVmVPZnV3QStEN2tyYVQ3NjZzREtDSnhIL0RWMktq?=
 =?utf-8?B?ZjE3ZE1rR3lsUDd4QUtJanJrNzliSTFNdmRnbHQ3V01ZWWVyV0NweWtiN3dr?=
 =?utf-8?B?cUQ3SkZhSGhpN3VpanRmMWpGQkd6WnBac0lzQVlDM0VhSFhTTkxTZzBpWkkz?=
 =?utf-8?B?SDF5Q2FOb2hrK1ZEeURqeVN4ZU9ERDZ2MjlOS041RmJzVEZwSFFJNGV4c1RC?=
 =?utf-8?B?SVhJZW5HdHhLRDliTVFsYVdMd0M2V0dPWnU3b0UxTmVFQnNnNWdIWkVodDBj?=
 =?utf-8?B?dGJWMkQwNSt3eXJxM3hVNFdEOW45eEtSVWQzd2RUNXJLdHB4MGJ6YW9xNmcz?=
 =?utf-8?B?R2VqSGNMakxHU01mRldXR0NtOU54b1FRTysyQzIzdEgxYklpZkRRQzV4YWpj?=
 =?utf-8?B?U1VINUt1NXNqMUFaNFBEQTY2NXpuQ1JNNWxucnRwUUsrcEowekJ3MjBLazhU?=
 =?utf-8?B?c0VqVVFKdHljWHFZb0FvcmlCVHRPNDFGQTdxbmNmYWlaRmRTa1lKeWNoZW9w?=
 =?utf-8?B?TU9NWkRpdTRMdzByZkN2VnRTWERFZEhCWXhOcm13QVpSTzlKWU1ucW10Uk1Y?=
 =?utf-8?B?VERXeUUveVprOFY3TlFyVWljeDBQdXdJeFhkQ3cxK0o4UERyOTJuTm1lUUpp?=
 =?utf-8?B?TElJR0dOWDBUTXduVGo1dzE2R1I0eDFuMmVyRDJTMjUxSFlMWHRzYWtiYm0x?=
 =?utf-8?B?TlV0c1VDV1pvekdMcGU4N1ZEOTY3ekFRNjhlTndHa2ZYVnVVK0Rsend3di9q?=
 =?utf-8?B?NTNIUVlvTGg5YU0yUm1DUnBBcWJ2VmcvWFVZVHBXcTducC9Nck9yenRkNGln?=
 =?utf-8?B?N2crVEI0OTVpVWhIUmdzR2Z0UVlJcGZEMUtqblZ4Mm4wak5Ma2dsNVJoTWpl?=
 =?utf-8?B?U2xxOElTR2YraW9WbXdzcWFTMDFWTFVmKzNJVllPbDFNQ01lVHdLYkxvRkl3?=
 =?utf-8?B?YlRLT2JwbWZQcTZSMm5yV2xqbkZlYjgzTjZnNW5WVkpiQ1l5Uy92MDNPYzc0?=
 =?utf-8?B?VGFDcDdOa3lVWHNhZjF5dWlQeGROMUZLK1ZiMjhGRy9Ea0F1QjJkb3pyanRJ?=
 =?utf-8?B?OG9DTDVCQ2dSdjcrOGswQTAyU2hRUzVFWGR0WktXYmcwMWlvWldva2haR2dV?=
 =?utf-8?B?RDkzNmJhdTNaMEhWcUx4V3RSSFA0WDlvbXlCQXlacXJ2bHgzWUQ0NTZ1Wkwx?=
 =?utf-8?B?bXc2SEpCVWQvMU8vWTE2ZzFKK25OKy9HQjB3VUR4TXpCdHRsK3J5Q1l1ajI5?=
 =?utf-8?B?YzVML0dtc2gwOUMyQnp6aE9pMURHUERoamczUkp0NU11cWFVY1BSeWorQklT?=
 =?utf-8?B?Nk9RVDQ3M0pCZWFGSzZYa1JHbDd2M29tRHJ5YnBRVGo3Y2IxM3VKVlNKS2p5?=
 =?utf-8?B?SVB1ZHJOdHJzcFFFSzZWZ0EzOWpQVTZST05rUkJ1VW0rckdZbkpLOTZqZ0sv?=
 =?utf-8?B?NkJFWE5lSmRIdkdvRFZTbXhUMW81MHB2UHZsaXdVK2VxSldmeHRRUGY0cXpt?=
 =?utf-8?B?alp2YURIWmwydDQvWU9YbzlnZ0tFR0htVjlpOWtRNkNOMFAvSzRpa1VYMWtt?=
 =?utf-8?B?ZitKWW1iMTlyYXlvQTlWZ0ZJRjlFcFIyQTRaU3FXZ0w2VDdycVc0ZXcyU2Rx?=
 =?utf-8?B?am9HWElkY3RRRFR3a2YwZnB5UlhLa2JpZGNVMk9nOGhlOEFZWHRMZ040YVJN?=
 =?utf-8?B?QnNnS2tqU1lWU09WRC82SUpTSDVXRjk5WFUrR2s5T0lXWDZWT3pnSkxYMS9V?=
 =?utf-8?B?TXZicWxFNjlVWnZkT0U4UnV2QVVKWVVsZTc1c1d2dHlwRmExeC9OOHpMbDJN?=
 =?utf-8?Q?RwvXAFB38DU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UW1US0RHS2UvYklOcmlKb0trOS93SE9GL2t0dVJjYy9Ic0ErVFhJS0xYaElx?=
 =?utf-8?B?SHBqSGdhYmdkclllK0lpSTNKbEZtMXJsOTV5QlZuWHBmZks4aXU3OW96Wjd5?=
 =?utf-8?B?eVBoVmFqcWRYNkNrZ0RSaXozbTMydmhFeng5YUptTGZBaXN1cHZoY2hqR3JD?=
 =?utf-8?B?UnBtTkRkam9qRWpGZlVrb2p1ek5WcU50L0N4WjhwVjFMWTVJam9qS2lMdUQ1?=
 =?utf-8?B?bjk0QlNLMXRCK3c1aTg0cVQ4dlJiT0hXUGxCWXkzYU1VVno4a3E5SmNIbjFm?=
 =?utf-8?B?RkdieUxQd1ljZmpIY1ZBSUo3RFB2MGx0T3VHR2RrdGRaUk42bVJqbW1FTC9J?=
 =?utf-8?B?RVlXdjBpK3g3YUl4TFpLdGgvbVlQUHVjREV1ZTk1dmpXeWRtcDVyS2dhdTJZ?=
 =?utf-8?B?ZmdBLzBTU0NhZE5wdVFJZURuYWdINnVsT2xRREpvdC9SMFBmVlZISGsrcVN0?=
 =?utf-8?B?cndVMjlmbGVjU285VDFKN1hDVDE2WTFrR3V0cU8zSXBaYlBKMEJ1REx3YVo1?=
 =?utf-8?B?aS8zbFFqUWltMUw5YXhpNThucUNqOE1oUVBicFJDMjZsOXNYK3plSmptN25j?=
 =?utf-8?B?ejRkbDVIKzNRQUVYZWNUR2M5RU9tRzI3S2JzbVhVL0VnTThjbnJucTlVSjUv?=
 =?utf-8?B?SmhCUTdpVThjZzVVWmRoOGZhMEtuQzNzUWxNZVNDVkdwZFZHWEpoQTVzTkR0?=
 =?utf-8?B?bmVWSFBmcGZnanpWVmhHcnI3WG9ST2J4Zm4wOThVSlJXaE5KajJmOElvTkVJ?=
 =?utf-8?B?anlmRmU0VUx5V1hxMnBycGJHNEt3NlhFNUlacTc1NnJiUnVxa2IvWTV6bHhq?=
 =?utf-8?B?ZVFRRDJ4bEYwTEs2SjRTUU5NVUVlMENQb2YyN3RjdXVlci9TTmQ0ZnhtbGNQ?=
 =?utf-8?B?ZUdTM0Z6SjlGWHk2RkxzSC92aEh0djI1OTlwUHdlRWJOckNyc1hDWE80N0xG?=
 =?utf-8?B?b1c2aUcvVlhCVVE5MEJKclk2Um9xU0NiUjZaUlFvT0ZzL3YvZUV0Y3NUV0lp?=
 =?utf-8?B?Y2VwbkJMMUVZRGw5QWFiSXV4MmtOL2ZoOVB0S3Q1MVNpVXlSdTdoQk9UUVN6?=
 =?utf-8?B?MW9JS3pjcm0reW81eERPVy9qZXF2UUo4ZUQ4ZWRjKzFLdXk2NWo4WUNScjY4?=
 =?utf-8?B?UmJuV1VJVEZMdmRiOElaVWJRNFpDQnh2M1hIay9CRGlDRWFYWmNOUE9YdUoz?=
 =?utf-8?B?RXY4Q0lIelhmN1crT0U3c1B3RmNpQzdLdEkwWEViUkJSbFB3bXFDcDQ2UFJv?=
 =?utf-8?B?S2czdGVpZHhxSFAvd2xMVWJreXZFZlpkc0F5blc5VHZkN2VDbzlkZjl5TjFB?=
 =?utf-8?B?VTVaWEFnRThsaGVNb2lZREJOY09jZ3JUOFBwNGxCZnZ2UGNPRlErNGp1eTBn?=
 =?utf-8?B?WXBIM0tiS1JabTYraFQrUS8waHA0NlBMN2JPNlZDWFZVcGd2ZHFCSEc2V09N?=
 =?utf-8?B?MjdrZ1d6UC9YS2phZFdYUVhCVGFJaUZiVGNheERMWEZLZTRmMVhhQVhGVzVT?=
 =?utf-8?B?RkFZbFMrbEREeWpXbmdyMDJ6SWZUVmgyL1I4QTg3d2N6VHAwakc1UVMrYWpv?=
 =?utf-8?B?Mi9WNmZPY3NxMmdOTlpxQk4yMUs0VnFiVllCUDBjQzkybjY0cGpoNXF3cDBU?=
 =?utf-8?B?R3NUMitwaGpDQk5KTGV0bXdQNDgwT29kaEhCL1BHL2ttS0gweGt1TmtFSnA0?=
 =?utf-8?B?VFZiSlJqb3BwV0lLc29RV0Q2dzlHWjhDYkYwZUltZlBuUERTZHNUQlJPNGw5?=
 =?utf-8?B?WVZHVUNsMStKUThxUkdmWkwvNE9mMGpYY2JkUUdiaTZIeGNlZFByY0J1VWlm?=
 =?utf-8?B?ZFRhZXEwYTZ3K2ZlVXM0SUpndGF0VDJJMnFtd0ZUZ3dyNnRmdWM5N3F2U0Ro?=
 =?utf-8?B?OW12aXh0WUk0RHVlOVJaOWVQNkNlR1BUdnE3Umk4ZGkwMDUzamNCMXBRWUsv?=
 =?utf-8?B?RUxVQk00TkF1a01zM01tUzVPNyt4c05wak84SFJHR21BcnNwOVFUMUxuQ0FN?=
 =?utf-8?B?SkhYT0FNNDNEeVNMNTZaeSswNkZNdVJIYW55aVc4Qm1PS0ZsbklvZDdlRHYz?=
 =?utf-8?B?V1Y5RmlmUnRjYTRRUlh2L25OaDUxU25EYmZLcG1UdU1YL3E0VEFjekxYbUpK?=
 =?utf-8?Q?r1nk6r/G+1lko/EUZqJod61Gq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3933c4-ecad-4c4b-3005-08dd97ad4189
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 14:47:34.3840 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lf6tAC7J9CpFfSf6UYCHL3yfCZBDGTF67f25NCh/AsWsUUC7wckN5qZwL8qSWvO7+DPT3q9FQJWfWsUEEroIgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6223
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747752531; x=1779288531;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b3u63xrsU9oDVHaYtM54FdACun2HgOOFSFtiDVqhSms=;
 b=iKywxbktLTxlOpxehKGaazlBGiz+YKo1kfVOdcavHayjtWrGKevDwlMO
 0vZZ8YfikzgG3oROWfiVpIq9aYYDBGKUt7nH05VIlfYkbggy2POjxOGoj
 Wp12HzzxN4rw0MLhrzSJEozoU2E+LnVvGPKKpzreAYQPqDVf+aYuDJl6E
 ha2qAVmwvXG4D2ukfadBA5P9PjKuKoavr0VvAl44oM1g/YpdD1Q0eCnAi
 /4hJvjXUXaeps+PiC9jPHd7gNyGHOJnK8I7LYCtE0+aobBfhrnuKkIQE7
 PuUbUo/36i29v0j7Qn7u3sFgAX8L/Tv71TwOV6BOm10ZxbpIjs9/5TzMH
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iKywxbkt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] net: ice: Perform accurate aRFS flow
 match
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



On 2025-05-19 11:02 p.m., Krishna Kumar wrote:
> This patch fixes an issue seen in a large-scale deployment under heavy
> incoming pkts where the aRFS flow wrongly matches a flow and reprograms the
> NIC with wrong settings. That mis-steering causes RX-path latency spikes
> and noisy neighbor effects when many connections collide on the same has
> (some of our production servers have 20-30K connections).
> 
> set_rps_cpu() calls ndo_rx_flow_steer() with flow_id that is calculated by
> hashing the skb sized by the per rx-queue table size. This results in
> multiple connections (even across different rx-queues) getting the same
> hash value. The driver steer function modifies the wrong flow to use this
> rx-queue, e.g.:
>      Flow#1 is first added:
> 	    Flow#1:  <ip1, port1, ip2, port2>, Hash 'h', q#10
>      Later when a new flow needs to be added:
> 	    Flow#2:  <ip3, port3, ip4, port4>, Hash 'h', q#20

add empty line.

> The driver finds the hash 'h' from Flow#1 and updates it to use q#20. This
> results in both flows getting un-optimized - packets for Flow#1 goes to
> q#20, and then reprogrammed back to q#10 later and so on; and Flow #2
> programming is never done as Flow#1 is matched first for all misses. Many
> flows may wrongly share the same hash and reprogram rules of the original
> flow each with their own q#.
> 
> Tested on two 144-core servers with 16K netperf sessions for 180s. Netperf
> clients are pinned to cores 0-71 sequentially (so that wrong packets on q#s
> 72-143 can be measured). IRQs are set 1:1 for queues -> CPUs, enable XPS,
> enable aRFS (global value is 144 * rps_flow_cnt).
> 
> Test notes about results from ice_rx_flow_steer():
> ---------------------------------------------------
> 1. "Skip:" counter increments here:
>      if (fltr_info->q_index == rxq_idx ||
> 	arfs_entry->fltr_state != ICE_ARFS_ACTIVE)
> 	    goto out;
> 2. "Add:" counter increments here:
>      ret = arfs_entry->fltr_info.fltr_id;
>      INIT_HLIST_NODE(&arfs_entry->list_entry);
> 3. "Update:" counter increments here:
>      /* update the queue to forward to on an already existing flow */
> 
> - **rps_flow_cnt=512**
>    - Ratio of packets on good vs bad queues: 214 vs 822,392
>    - Avoid updating wrong aRFS filter: 0 vs 310,826
>    - CPU: User: 216 vs 183, System: 1441 vs 1171, Softirq: 1245 vs 920
>           Total: 29.02 22.74
>    - aRFS Add: 6,078,551 vs 6,126,286 Update: 533,973 vs 59
>           Skip: 82,219,629 vs 77,088,191, Del: 6,078,409 vs 6,126,139
> 
> - **rps_flow_cnt=1024**
>    - Ratio of packets on good vs bad queues: 854 vs 1,003,176
>    - Avoid updating wrong aRFS filter: 0 vs 50,363
>    - CPU: User: 220 vs 206, System: 1460 vs 1322 Softirq: 1216 vs 1027
>           Total: 28.96 vs 25.55
>    - aRFS Add: 7,000,757 vs 7,499,586 Update: 504,371 vs 33
>           Skip: 27,455,269 vs 21,752,043, Del: 7,000,610 vs 7,499,438
> 
> - **rps_flow_cnt=2048**
>    - Ratio of packets on good vs bad queues: 1,173,756 vs 981,892
>    - Avoid updating wrong aRFS filter: 0 vs 30,145
>    - CPU: User: 216 vs 206, System: 1447 vs 1320, Softirq: 1238 vs 961
>           Total: 29.01 vs 24.87
>    - aRFS Add: 7,226,598 vs 6,960,991, Update: 521,264 vs 32
>           Skip: 7,236,716 vs 4,584,043, Del: 722,6430 vs 696,0798

Are these numbers with the patch applied? Can we get a w/o and with patch?

A table might be better to visualize, also may be drop the 
"rps_flow_cnt=1024*" case. I think it is enough to show min and max ones.

Also, please add instructions on how to get these values, so that 
validation team may be able to replicate.

> 
> A separate TCP_STREAM and TCP_RR with 1,4,8,16,64,128,256,512 connections
> showed no performance degradation.
> 
> Some points on the patch/aRFS behavior:
> 1. Enabling full tuple matching ensures flows are always correctly matched,
>     even with smaller hash sizes.
> 2. 5-6% drop in CPU utilization as the packets arrive at the correct CPUs
>     and fewer calls to driver for programming on misses.
> 3. Larger hash tables reduces mis-steering due to more unique flow hashes,
>     but still has clashes. However, with larger per-device rps_flow_cnt, old
>     flows take more time to expire and new aRFS flows cannot be added if h/w
>     limits are reached (rps_may_expire_flow() succeeds when 10*rps_flow_cnt
>     pkts have been processed by this cpu that are not part of the flow).
> 
> Signed-off-by: Krishna Kumar <krikku@gmail.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_arfs.c | 45 +++++++++++++++++++++++
>   1 file changed, 45 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
> index 2bc5c7f59844..b36bd189bd64 100644
> --- a/drivers/net/ethernet/intel/ice/ice_arfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
> @@ -377,6 +377,47 @@ ice_arfs_is_perfect_flow_set(struct ice_hw *hw, __be16 l3_proto, u8 l4_proto)
>   	return false;
>   }
>   
> +/**
> + * ice_arfs_cmp - Check if aRFS filter matches this flow.
> + * @fltr_info: filter info of the saved ARFS entry.
> + * @fk: flow dissector keys.
> + * n_proto:  One of htons(IPv4) or htons(IPv6).
> + * ip_proto: One of IPPROTO_TCP or IPPROTO_UDP.
> + *
> + * Since this function assumes limited values for n_proto and ip_proto, it
> + * is meant to be called only from ice_rx_flow_steer().
> + */
> +static bool
> +ice_arfs_cmp(const struct ice_fdir_fltr *fltr_info, const struct flow_keys *fk,
> +	     __be16 n_proto, u8 ip_proto)
> +{
> +	/*
> +	 * Determine if the filter is for IPv4 or IPv6 based on flow_type,
> +	 * which is one of ICE_FLTR_PTYPE_NONF_IPV{4,6}_{TCP,UDP}.
> +	 */
> +	bool is_v4 = fltr_info->flow_type == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
> +		     fltr_info->flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP;
> +
> +	/* Following checks are arranged in the quickest and most discriminative
> +	 * fields first for early failure.
> +	 */
> +	if (is_v4)
> +		return n_proto == htons(ETH_P_IP) &&
> +			fltr_info->ip.v4.src_port == fk->ports.src &&
> +			fltr_info->ip.v4.dst_port == fk->ports.dst &&
> +			fltr_info->ip.v4.src_ip == fk->addrs.v4addrs.src &&
> +			fltr_info->ip.v4.dst_ip == fk->addrs.v4addrs.dst &&
> +			fltr_info->ip.v4.proto == ip_proto;
> +
> +	return fltr_info->ip.v6.src_port == fk->ports.src &&
> +		fltr_info->ip.v6.dst_port == fk->ports.dst &&
> +		fltr_info->ip.v6.proto == ip_proto &&
> +		!memcmp(&fltr_info->ip.v6.src_ip, &fk->addrs.v6addrs.src,
> +			sizeof(struct in6_addr)) &&
> +		!memcmp(&fltr_info->ip.v6.dst_ip, &fk->addrs.v6addrs.dst,
> +			sizeof(struct in6_addr));
> +}
> +
>   /**
>    * ice_rx_flow_steer - steer the Rx flow to where application is being run
>    * @netdev: ptr to the netdev being adjusted
> @@ -448,6 +489,10 @@ ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
>   			continue;
>   
>   		fltr_info = &arfs_entry->fltr_info;
> +
> +		if (!ice_arfs_cmp(fltr_info, &fk, n_proto, ip_proto))
> +			continue;
> +
>   		ret = fltr_info->fltr_id;
>   
>   		if (fltr_info->q_index == rxq_idx ||


This seems similar to a patch I tried up-streaming before:

https://lore.kernel.org/netdev/20230407210820.3046220-1-anthony.l.nguyen@intel.com/

not sure why I did not pursue further. If that is correct, then 
obviously I have no objection to this patch.

The exact flow match will reduce (but not completely eliminate) the 
chance that a packet may land on wrong queue (since there is always a 
chance of hash collisions in aRFS).

Thank you.


