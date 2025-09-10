Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3BB50F5E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 09:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 548B481E3D;
	Wed, 10 Sep 2025 07:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-Mj1Auhv7hm; Wed, 10 Sep 2025 07:28:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59CCB83C66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757489320;
	bh=dNdNfTmPjm6K1wkzKW5k07/qWSAaVJOHHFHubTneJrM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zOh5XpO/fls6wXf1ANMjmmqdBijdSjnzjOkht78A1YLte+agCYB8MZI0Fxec0OwzX
	 n81kkV6JAxXwzZxhlMJFgHEnenLwPc0Hi0CfXCML0sknKW7fQI8zOXE5eOvZDhoIxa
	 QUtKW6Ju8c4k42SCll+wsBvJ3AF/jmb4pEpJNzMMjVdCgw/xI81DhGSwkv3gUVxQL9
	 FI5kdDr7xTC9MlduKPJEZOVkb2CCXOPVGil7kSBA0J4y8kgelig6Xw8Ro8b2pfEu7j
	 cGIvnvsuviAoOTZEzVL9EW+C2GEr4zPJM4K6VDMkezMiuvVjDqGBcFZK3QLcfty2SL
	 B7XMPdaksjyWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59CCB83C66;
	Wed, 10 Sep 2025 07:28:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E9614E1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAF6B80C72
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:28:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R-gyg0_30awA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 07:28:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AFAE981E3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFAE981E3D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AFAE981E3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:28:37 +0000 (UTC)
X-CSE-ConnectionGUID: bjYDkHbJRFiSnVCbhjzSrQ==
X-CSE-MsgGUID: qrs0L/63RCulrs/FD4r1Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="70890087"
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="70890087"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 00:28:35 -0700
X-CSE-ConnectionGUID: LQfXjWESQpibhQG5iR1fPg==
X-CSE-MsgGUID: Afi4H9VXSayaKq+/AT0q6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="210437293"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 00:28:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 00:28:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 00:28:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.54)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 00:28:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uV0riZk7WIl/sCgmIEMCYiyB2/lbHN2oadeibmzBqeeW7qjO6scwXIE26XSkPANHhMm+uvjurAQelbQ/jA6Fp6Eufgmo8+XXKamsd14vIlJ7pfOEKpsZi+46XhyaZ2OZc7OyZWRSQW2vKMtbk+2v1jEDmwwf1oJFPQVDAqFwW35qSsZftid3sGjXmfCexW3uiOc5A8Qgg7SU8kn2xVujUWZI4AkdQGAM5ZCxMaOFOAQJYBWfRSpZxba/3xOkoqnkGXcbSpSMI7+O8vWhEXhiiV49ipcdZ84ASYdQqQH7oStXa8/AFd6AELtGvRKHPOF3FC5oEvvFIHuxaDwyaGT0bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dNdNfTmPjm6K1wkzKW5k07/qWSAaVJOHHFHubTneJrM=;
 b=X8ekggFdu1MFXNvU39MjfHwS3aTDujge4iC26VbbQY9MY4HKC/mDECrvcK1Bx3Gwcjt7pZDYWnSZOykXO0h0X6RhyVNmvBZ7nxPM7fi8t5kt6WcAuqEhaa5Nub+aoBn4azLScoNGrHvLtSfl4iJo79CvWxinixP3QUXOHKETGSj3uOcQP3xmf2+IqA6yA9FTkbfBs/bvsibVKlkgtkZ9gxdOdZlMgmBZZM3nuroTZm0JBLFfUj/G7TwoIvEv1bufPXVWr8OIXz2XNtN4kHS1U3oF0b54A+L+zAtTxFdrq1ZTiaUGj0fgvpDVpL0qsMoo75O8ZBpCRKPBcLSz0h8XqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by DS0PR11MB7458.namprd11.prod.outlook.com
 (2603:10b6:8:145::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 07:28:23 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::6cbb:604e:d0b9:97a]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::6cbb:604e:d0b9:97a%8]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 07:28:23 +0000
Message-ID: <15453ddf-0854-4be6-9eed-017ef79d3c77@intel.com>
Date: Wed, 10 Sep 2025 10:28:17 +0300
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Kohei Enju <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20250906055239.29396-1-enjuk@amazon.com>
 <87ikht794t.fsf@jax.kurt.home>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <87ikht794t.fsf@jax.kurt.home>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|DS0PR11MB7458:EE_
X-MS-Office365-Filtering-Correlation-Id: a743b462-0814-4503-ed85-08ddf03b9fba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXhhK2V3MHhuZmJic3laR1ZFd3N5a0JaTE1Kd21FdnozUUNFVlRqa3JncVV5?=
 =?utf-8?B?VUJmTUlHMWxHaFgwMkEwT1NTdlJ4Q1dTcHp5VWR5VUltRmhBV1h0d1NFUDNV?=
 =?utf-8?B?V0RlR2I3TEUvL2FEUklSZkNLckdEQ2R6WlNNU3pqa29LV2JPV01IVTR1VHdL?=
 =?utf-8?B?MFVGRXI0MXdTd0lZUnhzc0ZkdmZ2T3dmdnhQVDdqNXU2UU5ydzB3ZWFOYWhw?=
 =?utf-8?B?dUJ0dVc3bzFNSlRGQjRJekgzVHBCeFFHWHJMVzZsMDM2NmJVTklhbGpNYzdp?=
 =?utf-8?B?RmowKzZ5VTJXUHkvd1VHVGxnTFMvUVlabmpSckxleGxObDRDMmtabXZuTit3?=
 =?utf-8?B?cTYvWWlHWHhHVnJ3NENybW0zSnpCQXQwVlVGb0xBL3BuOEdLdW1tYUU5eWVF?=
 =?utf-8?B?MXlSb2wzalIzai8vVllLV0VqcnJDeVY4MWhEKzVJWUNVblN5bFpmUnhKdFNo?=
 =?utf-8?B?VHFPSUdsRW51K0I2cW8ya2RnbXREU3JPSVgxaStNeU8zK2tZSDBNYnh0TmNr?=
 =?utf-8?B?Y3dKWUVlbW5WVlpFSDYrZlRmT2hnT3dLVno3SEsxOGNaNE9FWmJNak5vc1R6?=
 =?utf-8?B?Q2Z0MHcrRVJ5SmpaN203dnN6amRaOGNHZEQwRytsbjVuM3BLTFEzLzBnMzdQ?=
 =?utf-8?B?eEIxanZEa2d4T3ZKdEtXcVNnYm9POFg2NmdGSDRXa21QRnN0Mjg4QmxYeGVi?=
 =?utf-8?B?M1NaWUp6eFBjN3B2RUp4S2hLRzN6RnZSWTZNd2ExbHJwbVYwZ1VvbFhJRVBO?=
 =?utf-8?B?bXFnODRGZXhiT3Q4QndIRWpiNmxPMW0yZktpc2dTZmtkbDBiek1UcFYxdHVV?=
 =?utf-8?B?VlRqMDFlanFiRVBvcURDKzBvMTBlcWRLaDA5d1BJTy9xaEt4MnhMeXZqRUJo?=
 =?utf-8?B?SG9QajNLS2RZTE9HVmE3NUpxL0RsNmhpN2V2OFpHMU53dVdHdUliOXRVaWIw?=
 =?utf-8?B?Wm82SGlkdlJMR1RXTktwSjJ2bk9EbnFwdFhuL0IrbzVOYkRrNU5vNFg0VEph?=
 =?utf-8?B?NVVVODlZMmtLcmdTWUxmQ1dIc1NONlhmWTVub2FQSXIrS1p3UHF4MUpiZU9K?=
 =?utf-8?B?SEJvY3BGeEVydUZ0anRLc2poM2JGTGpUWk82UVUzcU0vdlpHcG5ubXN4R1Zo?=
 =?utf-8?B?RnNyd3J1ZlUvaWhNTmcvVmVxS1FPcFFDNVNjbTNNa2pmK0hmYjB5bjNVaWFm?=
 =?utf-8?B?V1BpQ0FueXN1c0JaNzJsa3BBcDVGc3JWNFNqaUtNVDB5ZnlBUnVUS3JuMVBB?=
 =?utf-8?B?T0hacjRJSzVKWXMyaGlUMjlQN1hPdHZYTjBGTURmdTZXUmFodXBjM2V3UDNj?=
 =?utf-8?B?eWNJVHlBL3dZVGl0NCtmaDR5eDBEbXh4cVZYSUtsWlRZSXVqZWFZbHc5REVz?=
 =?utf-8?B?dERNczdUUC9WMFBUSmxqTGtGVmRjRXdmYVFCNU9seWR4dG1RV0pHb3QvYUpt?=
 =?utf-8?B?cTFQTDU2aVpobU5CeG9RM2JuYmU1K2dROFdzUDhmK1R5S0IwTE01ODZCaS9o?=
 =?utf-8?B?b0ZzeUxYckloSEFBS2F4cStRN0s0N1ZNcEllVkdubmt4N1pzRkttTVEzMGJh?=
 =?utf-8?B?UDdsdE5EMFdaa3h4SkM4WFpaVmw5cUhPSWhIbjdndjMrTXpNZ1ZySzhmNUNZ?=
 =?utf-8?B?bWV6NmJiTlByc3JJWjNqNnFqcmRER2tiOWVzb1Y2Zm80QmZXMEpobGlYR3l1?=
 =?utf-8?B?S1dWN1ZTUldhMjhXK0NvS0NFWDA1L3dia21oaXBBWGpQK0tKTTdycWFRMkZ0?=
 =?utf-8?B?NXpBK3VTVmJ6Y1dTVGl6eG8rNHZxUS9EN3NkV3RmRXJOQnFHZVFDaFQzaFIz?=
 =?utf-8?B?TUJKUGtYbW9vaEtsYW1lam92R294NUw2RHRkVGxRelVZOTdVZU1DNklPQUV0?=
 =?utf-8?B?TnJLcmpYMFN3TGlFemV4Y1pFQ0dOTy9KVHZVRHp6dEg4dVBOeU9aZHdOMUY4?=
 =?utf-8?Q?cU9TplKTcrU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWJRbnEzWGpVSlZReHZlRUY3N0s3bCtsVTB2cWlZQ2d5eDRzL09MVlcyNmlD?=
 =?utf-8?B?RStwaWxZVDQzS0FtQzErR1JFZU4zUFRMcUpheTc0eWlFVHhibmM1UEtNUCtF?=
 =?utf-8?B?VjhJYVVJYnFMN0VKSVZkb1NXYStyVGxOVHNNaGF5a2kzdmRnRWNPOHZ0WjZj?=
 =?utf-8?B?L3o1b0VrZFViQ2FrOXpCdkpQREF1eVZlY1BVKzRRTWcxYkZKWDFFUVYvL3Jr?=
 =?utf-8?B?RWw4SGlzcm1McE55Ukk3UXpDMlo0c3VrOWdxc1ZGV3VmSXlHdEphZXNiVXp5?=
 =?utf-8?B?VXdQeCt2V0cwMlJFV0tUU3kyUjdNVm8xTFQyR3JLUzVTanIyUzkwSUNPUUcr?=
 =?utf-8?B?VkI4KzZZZXdRQ1dxR3owc2FyREU0eThyWjRYMlZFKzAxYVpHeS9QUWJZTEdK?=
 =?utf-8?B?cjUwcGxBSE1EaVpmWHdFQU42WXc5WkJUOU42dS94OTcxYU1KVkxQdW1CM2h0?=
 =?utf-8?B?SnE0KytmbzFUbWc1ZVNnVElVcVE0QVpFMUdYZUJXS0pkVmdUSnJWWVV1a24w?=
 =?utf-8?B?VkpubkFDV3lFeVNOYTh0cXE5aFIrQ2ZUNUs2NExteEFFc3U0c2VmR09BN00w?=
 =?utf-8?B?OU52V2h6ZVhUUk0rVTlSWTVSQjlSVWpaa29IaDF1NjhCUnYvNERLSkIxeUFV?=
 =?utf-8?B?RWtRSXU4Y1FuR3VFTitWV3JNN1BWb0d1czJKRjB2cVJOSmFUL0lXNk1ZNGpX?=
 =?utf-8?B?ajNTSnZsQ2IwZFhvN1pFTnhkeitqNkF6dWZQT0dObEJVL1F3YnltRUdwaGZs?=
 =?utf-8?B?YzFjVEFsdTVEcXBGbHVDTDREVG5uRkpzcThLY1JXZEppZU9kUFRLNStud083?=
 =?utf-8?B?Y1dvV04wWFU0ZWFFNmdFUUpreGxhZzc3YlJjdjh6cDFHcWhOdGRoa1hyVndu?=
 =?utf-8?B?ajJyenJiZlNwb2pJTjZOZURKMDkvNWdYMXVxaEdoWkFHYmZPQkNabmZnUnNm?=
 =?utf-8?B?enBndWhCbG5YSk9HeU9kSVFQWDVyYW9nTTlrUjUzaUl5cXB1RDBCY1lyM0t4?=
 =?utf-8?B?Wm8xUk9RdkgyY1BXLzdGbW9CNy82UlRPV1MrTkcxZWt4aGI5TTAzUmhodEt4?=
 =?utf-8?B?cU1idExCWlVqc0VZV1VTcStIVjBwTEtaV045SzJ2UXNyUENEY0lMMkc1Ti9B?=
 =?utf-8?B?cDNRRENTMmRVdWo4RXJFeldPYm9pY0tzRGNOTXBjRElkMk55SHB1MG9zTkhF?=
 =?utf-8?B?eGxidEpLZTRrWUJuMlY0eHFER0tWMTFvNVVCVEZZRVB0K2Rxc3Uxd1hrc3VE?=
 =?utf-8?B?TTdqTGU1YmpwdjJoMy9BaGZoVysxeWVjcVRwSitZS0E1blhldFFzTXpQZVlO?=
 =?utf-8?B?UXI2czlHTFFtd1VUNTlaSmFmeEk0RkJXN3FNUDZjeC8zdUF1WjN4QTIwdXBC?=
 =?utf-8?B?d1A4NWVwT2IrdUY4SWdNR1VWQm9TVTV1MHl1Yzh2RU9ocTdoL0N2WnBqZkly?=
 =?utf-8?B?WUo5NjkzVEpKcFJMejRabEh0K3VOa2lZT2RndXM2MnhOeHp4dnZXYTFGUUpK?=
 =?utf-8?B?d1JLVEtBdWVycE9LeEdkdE5mV0o0RVFEZVpzRVJUQWNPVkszTHgvbktnYlc0?=
 =?utf-8?B?eDIvTytab2F2S25odHBPY2ZESnBNZzhseHgxR25qOWl5TkVLejArMnlQYUlV?=
 =?utf-8?B?Q0prd0RIZlBsK3gvc1NWY1liR1FSZkE3Qkd4OGNsSGNGcExzaTU0SG5XZURp?=
 =?utf-8?B?UE9RNlBzS01OQkRKa0pKK1dXeFpveDNWTW5obDRqS2dZQk5iL2hWQTV3ZTJB?=
 =?utf-8?B?aEsvZ1huWXhIdlVQd2dlaGR1Ty9QNkM4Z25qd1BiSHRQN1BYUlYvUDZ0OHEv?=
 =?utf-8?B?SUd1Ti9yNHNlVGtKcU5vUWN3MkI5blIyN2VwSkROZ0EyYWFXMXhIdUhuY3Bj?=
 =?utf-8?B?bXVjU0tZMDhOS3RCeGlSM2padlZoa2NlNmRuejFLQjZxcm12VTNnejVuTTQw?=
 =?utf-8?B?WjdlTFpzQnBXTkVKZDNEempTNmQweFNvT1FJa2tSOTdUTlN4RlVDOFVTSzJP?=
 =?utf-8?B?NUgvQkpQRkp3RDRVMnExU2hRM1VGSnhlQXA3d1BEcC9VYTVoanpwZXMvVXhZ?=
 =?utf-8?B?ck5mY3lOS2NZOEZWZExkWXJtcnpvU2NkUTRCelA2SWczTmNkMm43VDVmMk1B?=
 =?utf-8?B?SGMwV0hKbkN6bGZ1Q0FWT1k5UWFRQzM0cnlDbDA1bmVHRHdOS0FiUmxVVmFQ?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a743b462-0814-4503-ed85-08ddf03b9fba
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 07:28:23.3047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FE3GBZkbemvR72ak+3VaEa4672g3j7afi0FCZaMOFmQKvgVJGXmLlnhz1//lWeOzWuk5O3+h3v7JAqtpHeQUjYH64bXMUrqaMIWF8BDm/Zc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7458
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757489319; x=1789025319;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ltrmr+xeSWJp5V29Xv/DG9mbka3IGxYNgASfzPXwvmg=;
 b=h705ly9sd9DAG87HkXtvpbuMuEkQd+NiVzWq9oebys64CB1uEIiq7zRh
 YURsLbxOfavOUs8Pl53z/q8IAZ7r3VQ1TdAsUJG9CbpCDG4mruLkgHTJ+
 RvT7b1H69Iclk2O2sE5xiBmnSE1i5AIq1gUmIWH6wCZ96WuWEmpOW45dl
 jT8prJKeGcmqk48IU6UoXsHcYGIkKpAeHqra9kltPX1Bk69I8lAk44A1I
 KW/IlZR4aAnwhv6Vd3JTfeUU7x4Sc9cSAuzUZrWQEAtgkrnZA762GWyIx
 9ibEEO6O1z96dJ+goYH4rOmtzdXg4FZNVcc7J3PtaOtOajKzIQUsAEg9Y
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h705ly9s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev
 when igc_led_setup() fails in igc_probe()
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

On 9/8/2025 9:26 AM, Kurt Kanzenbach wrote:
> On Sat Sep 06 2025, Kohei Enju wrote:
>> Currently igc_probe() doesn't unregister netdev when igc_led_setup()
>> fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]
>>
>> This behavior can be tested using fault-injection framework. I used the
>> failslab feature to test the issue. [2]
>>
>> Call unregister_netdev() when igc_led_setup() fails to avoid the kernel
>> panic.
>>
>> [1]
>>   kernel BUG at net/core/dev.c:12047!
>>   Oops: invalid opcode: 0000 [#1] SMP NOPTI
>>   CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>>   RIP: 0010:free_netdev+0x278/0x2b0
>>   [...]
>>   Call Trace:
>>    <TASK>
>>    igc_probe+0x370/0x910
>>    local_pci_probe+0x3a/0x80
>>    pci_device_probe+0xd1/0x200
>>   [...]
>>
>> [2]
>>   #!/bin/bash -ex
>>
>>   FAILSLAB_PATH=/sys/kernel/debug/failslab/
>>   DEVICE=0000:00:05.0
>>   START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>>           | awk '{printf("0x%s", $1)}')
>>   END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
>>
>>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>>   echo 1 > $FAILSLAB_PATH/times
>>   echo 100 > $FAILSLAB_PATH/probability
>>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
>>
>>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>>
>> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> 
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

Thank you for the patch and for identifying this issue!

I was wondering whether we could avoid failing the probe in cases where 
igc_led_setup fails. It seems to me that a failure in the LED class 
functionality shouldn't prevent the device's core functionality from 
working properly.

 From what I understand, errors in this function are not due to hardware 
malfunctions. Therefore, I suggest we remove the error propagation.

Alternatively, if feasible, we could consider reordering the function 
calls so that the LED class setup occurs before the netdev registration.
