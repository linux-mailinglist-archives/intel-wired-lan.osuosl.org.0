Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 663D8AC9E4D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jun 2025 12:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EF6141DBB;
	Sun,  1 Jun 2025 10:04:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xp_KCIjBPb8x; Sun,  1 Jun 2025 10:04:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7799241DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748772289;
	bh=sGkrYEdurmm0UOcsXMmwutDLq6oMOlsP4Nl7+z2BstM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dt7y7xlo4HAGnNWdzlnm1zLTnFBD05PsNEkUV0AmslZ2771iskQU33G+1RDag6H7y
	 5+FrJjAnOfrcjc2bNoo+xyjjLirFrTpkScGTvpm+sNwmcXoKNrrdpPYYtyR0v1e68I
	 Yj2hTRrXlLCOe0OfdhP8R/k6v6cxl9aavuLgoKHZogYCcsbPvd5PClqFn+Jg+oLyxk
	 9myDBxy+hf27Tu09Pw+/UYrji7HOWYCHymCtSgwm+DilZ8GLNMGhhtdzmVI74SUHVi
	 QJ8By1takDlLc+6L1+srzlWXfuAW37ii7D8odQf6NDiBVvaO6UlDG75/gi0dh3thNK
	 fPSCNCmDdczGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7799241DBF;
	Sun,  1 Jun 2025 10:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC9A71F7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 10:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE5FF80735
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 10:04:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gjGDBcqyNz5C for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Jun 2025 10:04:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 31FEB80F28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31FEB80F28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31FEB80F28
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jun 2025 10:04:46 +0000 (UTC)
X-CSE-ConnectionGUID: rHbkd82lSVWDYBl9F9X1Yg==
X-CSE-MsgGUID: fyar3XzzQP2108BIBNUNVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11450"; a="54600902"
X-IronPort-AV: E=Sophos;i="6.16,200,1744095600"; d="scan'208";a="54600902"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2025 03:04:46 -0700
X-CSE-ConnectionGUID: El11a9A3RUWjfxqvOYYEuA==
X-CSE-MsgGUID: BwXUgasXQEyleCFYRJ+7Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,200,1744095600"; d="scan'208";a="144259023"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2025 03:04:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 1 Jun 2025 03:04:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 1 Jun 2025 03:04:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.86)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Sun, 1 Jun 2025 03:04:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QVv8oS8cgA3O6OzKVwZ23UhFKW1Taa5Le0AwWOs6++BW/Z754RYtAMBdNp3k4cjEiWWP1R31kIdIr70W3JsxuUCo71ERa44vvEMn1VBU7js8bZNRQkX2BoOrP0zXph4g/R8myEiAxwfrrlhhIAK250OLIC2n5/VEUWMeSqUWqvfZ+b7OFpmJGXgbYMWb35cpWiYFc4W606dVYS6i8mp8RRMXihMuC6+/1PhRYzSHw6aU8gpfzIFTJg82A3mOqHkFslA1V2L9TVrvByWzjWqiqxcarovVrxciv/vC+1aPFfQrv0Jv69ak1OzYZsRhTpSGdkr7tAeyA+Z7MHWaDTDTNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sGkrYEdurmm0UOcsXMmwutDLq6oMOlsP4Nl7+z2BstM=;
 b=lnuOxWhnT5+mSV/uvfFNPVQoHTOHLLrs9kH15ejTXz0xM4MzvNMNHat02965gPaatvYO139zpknbgNelpsZtyHr9gg9y1s0+CJ7+5Kx2IwOVp3BXMEAuV4BiKbg8WJ3Jsw+Ct2h1yJG1NWhqs/sJnj06NFW8+mj+hr3rm9ByRbWXDLGNDUmuRDDfA34o8sIlJrif5lnpjtsARtb9EnBsD9GdOFxB4yto2HRpDcaoSZCmVjqep36MwXR8X2O0OX7WUrzspvczkeyYdLT19rg3Ita8iQqXpQJvRqAoVbv9jWhJXUxU6ispJBqjr2aVckwqgdGUhLKa2xd1MKdTl2xRFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Sun, 1 Jun
 2025 10:04:23 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%4]) with mapi id 15.20.8769.029; Sun, 1 Jun 2025
 10:04:22 +0000
Message-ID: <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
Date: Sun, 1 Jun 2025 13:04:18 +0300
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>, <intel-wired-lan@osuosl.org>
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|SA0PR11MB4734:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d20b4ae-4485-4507-ae5b-08dda0f3aea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWcvZkVDeDJnUWdxZFlxSzdKK1NuMGdlKy96dUZuSzFCTlljdWZPS3RneGpz?=
 =?utf-8?B?U1VBL3VZWGE1dmV3YkNjaWdxT3RXa3VhcjhkbXd3T2Jlb25DOEs1bmJIWDNX?=
 =?utf-8?B?UmVkWi9pWG5PZEgrclRVbTNxNkQ3bnFSalY5TlNrZndIWjZIOTh3am40YmdX?=
 =?utf-8?B?SnNyQkJRMWxDVDBFWHRQTjBhdDdLN2pUQ3FHenFFRXFUaDd4MFhLQkwybGh6?=
 =?utf-8?B?YW10NW1FblFtTjlzYmZ1R3pxSmVyaEJjVGYxM2ZJYURYUkU2VGdiS1dnYmFI?=
 =?utf-8?B?cVI4SzZaVFIxZ3dhY0g3NWZrdVJ2UTZYNjBlRm90eDhYWDdsYjYyR21oOGh6?=
 =?utf-8?B?dEpGQmJSdmJWNTJGaXRJSmxxdnRtbkloOVNjYlMxeFVvN0I2aGpzbWEwT0lr?=
 =?utf-8?B?VVo5VDRUTHFwS2pRMTRZVGZqdU5MYzRmK1dTQlR6VzFPVUcxdElGMGFRUExa?=
 =?utf-8?B?aGVEQ3Q0UUk2ckl1OUdONTZCcjJwckhCWXZiZjF2M21DZzFxVVBnRnhDbHo4?=
 =?utf-8?B?YjEyV0lMM3NsYnFVTlN0SExCZXJ3R0h3YjNpeXdqaHpyNzAyQzUvUktQbk9k?=
 =?utf-8?B?Y25tOERpbjJBVzcxODVPN3MyYkdBbU1xM25HOTJsTUpLeFRjVzJqRi9aMFBV?=
 =?utf-8?B?R1dMbEpHblJmZzVWcXVwUDhQb0ZkK2UwaHAvZkdXSFNiM1ZyTEhUZVJCVEVh?=
 =?utf-8?B?bW9oejFOcmt1MStEV1FSZ00xaU56MXBQcjdjaFkvQWFJZ1lMdjduc1pVYlBn?=
 =?utf-8?B?VENXdFE2VC80OW4vdHlyN0JyZVk4SEpwek9uSkI0bTVZWmVGUk9CclJBSkU3?=
 =?utf-8?B?THF0TkZwSVpnRk05ekkwZFczQlZ2dEdReWRPdzgvM3o5RVkwdGplL1kyZW05?=
 =?utf-8?B?RDlMajd5S2kwVkRlQkdTUWthT0ptMzN1Vm03MzdoWkhEaS9pR3BmN2JWdDkv?=
 =?utf-8?B?aE8wcjdLaUNrZVF6UWZOc0FpOUUwVnNhQzdOM0trb1ZMQ3lMZFpDK1hsOG4w?=
 =?utf-8?B?bWpQT21oandIYlhIQlYzODJyUEdxY0ZEN1hqNTRDdGxiQXQ4cVFJaW00OWJ4?=
 =?utf-8?B?bHRuOFRreFJnM0xkMERxWXZrZTVDUHVUYW1Tcmt2a1VzeUU3aFJic3pHcERF?=
 =?utf-8?B?eHpSOFJJOS91R3JBYkYxVzJjeUpkcUdiV3dHN3pIbmJ0V1ZoZi9tbXAzVUZX?=
 =?utf-8?B?Q2RsNzJMUkpQYTRDNlVjNU14TVc2VHVGNFBqOW5SNTVPNno2NzZaSlppMEk2?=
 =?utf-8?B?STU0cHpVRjJkMXBKV0pYY2x6NlJPTXphL0hIVTVIQzF1ekk3U2ZjUW1qT2pH?=
 =?utf-8?B?elZQSjI2Z3B4ZVA5TWZMYUhmc1BxNEVtUVNTVjN5c1VSSEZsRDhEYndCakkv?=
 =?utf-8?B?a2JCajQ1U2lmUzBxaFRJUnpjeks0RU9TK1FaV2ZjemUxN3VyczRacm1DR3Bo?=
 =?utf-8?B?RGQwRURPbXl0VE94bWtnd1pXUGd3RDA5NDRsc0pibmFidy8yK0M3YkxlbCtU?=
 =?utf-8?B?bDVHejdTWmZoandNN1dCTzZwT2RCZzJZK2VaeVE4SjdGeS9SQWtFYzFlVjcz?=
 =?utf-8?B?V1BZdmRGcDZPQzV6UVNTcTRBRmRESDJUNTY5V1NQaHZzNzU5R0g5NytTZ25u?=
 =?utf-8?B?U2ltQ0pPemFYbEZhcm9BeVpqRXdSQjEzVndBanA2Tnp2dU5CSzdrVzZ6Z3A2?=
 =?utf-8?B?S0lWR2R0eWl3WWdkZG10NG5qRVY1dnF6SHBjenNqcVRPa3ZtT3JQaHFHdHFS?=
 =?utf-8?B?cHR1d1dtYWhKYkNUTEwyM2l3VnhtWTV0SXVUazdUMEZYUHBzbTNyZk1WMXJB?=
 =?utf-8?B?aE9abmE5YTRFenUyZS8zWjNRck5lelZpTXNQRWlkaHZTenlWbk0wMytsSDZW?=
 =?utf-8?B?ZU10WlBXNHhoaXNDYmVBWHNJQmRieTh0TzEvN2VoWnNyT21xMXlOVVkzcFZq?=
 =?utf-8?Q?gyYG7jOi428=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qm1FK1VSb3V2dnRkTkFod1FiemJtTmtncVVIa3NadURKZ3JWMFYxaEJRY2ti?=
 =?utf-8?B?Q1hxTlVaK2VtTzhVY2FNbVZYMDhheXNBd3p0QzBRQ1JraVh3Y09YTVZ4c0NC?=
 =?utf-8?B?SFBZT2l5UnZSVkhrTFkrdVU2M0lPNllRRksxN2Q5OEEzZGhnL1ZzcVBoQ1hR?=
 =?utf-8?B?TFl4LzVLT3R0U0Z0VXJyUnIwUUgrTVUzaUVxWEVjSlJnOGpJR1J5V2hjUXhY?=
 =?utf-8?B?MGovWHBYNDJBUE00Y2VEVzV1WjdDcnhwRUxlYlhoU3pPcGtzOTdxK2E0MWk1?=
 =?utf-8?B?MVZUVWROZVVoRXFheXFNOUJXUE4vaUN5c0R3ZXdKQjR5d1dxaVlSS3V6WWlx?=
 =?utf-8?B?R1FiWU1uQmNzMTl2dGs4YXJ5RkFpUFVzQ3Q1V0xPMjYzSzFjQVNCbkpQNmRD?=
 =?utf-8?B?a3JWd3JqZnI2RTJxTzJVMEdZdEFMMkczTmNUemR6dWkzZ0JGdmdqV2lWVloy?=
 =?utf-8?B?SXVQdFJzd0lIaW9mZU1kREN4b2F4VkN0NU42T2d4RnN0cmY4Y2RIeDFiYlF3?=
 =?utf-8?B?VWM1dlA5QVl5Umc4RjdyNWpUcG55aVNqUFdLVFg2V256MW1WYVVvMmZyZjRO?=
 =?utf-8?B?UHRWR3U4bnZlQXJHRGR6ZlUwV1E0WFZvT0FkNjBIdXhkV2hxTHkreGJKdTRO?=
 =?utf-8?B?ZEJNRGZ0ZlgzbkJvZmJDSHFxM01SNUFLTEEvNEo3T2g5a1JKRFdLcWp5dHRU?=
 =?utf-8?B?ODF0bnlPRE50SE9QeGNqakdyU0lJckhpY1BTbEhRZjZ5aVdnS3NoWjB1QjBS?=
 =?utf-8?B?Ykx6K0NrRmJkNXFiaExjR0FRM0NNcTRtaGhyRk1BNjZEc3J4Y3VBR05FbjhB?=
 =?utf-8?B?ODNodGFzV01pNU5xRlZrd1ZpT3I2RnRtUm85SHhxUlBvNXpvUXJjc2NRVDFp?=
 =?utf-8?B?VUR5VE5reUhLUTBYaVd1R3kxNXlsdm1uZVVKYk9sMDZCNkVlY1p6WExCci92?=
 =?utf-8?B?NHJwMjY3VjRMeXJXNGxLenExMm5RMnV1VlZNSEJJQUdNNUplekNoZGtOOHI0?=
 =?utf-8?B?TncrYUExaVl3bkk2SllvcW1kRlJYbVk1cDJHcDE3Z0xDUmNkcUZ2N2FkRUtL?=
 =?utf-8?B?a2RRaGplUncvWGxnbjBmT0xVR0xrUHJST3JPRGVBVy9WZ2dTYW1LUmdPNGcx?=
 =?utf-8?B?VzNGZThpVjMzV3Rpa291cmtwUy9aVW1wZ3JwNktXWjNhNVM5VUtubUs2WFlk?=
 =?utf-8?B?cHpQbVZuNEhwRVpvTFBEQUg2WHdLODVNNi93QWU3aFFXWnpOc2lGZzgzNWpT?=
 =?utf-8?B?MDRVT0FlS0JyKzRIQ3IrV3oyRkZ0V1RZMmIrd3A1ZFFYWUZma2ZQRFNaT3Rt?=
 =?utf-8?B?QWJsMGgyaFovNTNFcVJ2RXBLNm5GYXZNZ1JxeFovVXBqL0wvMExpZ0liQ2VD?=
 =?utf-8?B?NnhYUUZuSk5KTXVIem9RbU14UWl2VElRMkJzaGVEa1F5bGx6UWR6eVJ6eG4x?=
 =?utf-8?B?T1BFa203ZUZBTmVNcU1xZEs3WWxtckdtdW9yVkhSWDNwTFpJTEZOcHNDbG14?=
 =?utf-8?B?cnZRT1pQTkhiaWpoSU5zdEFpK0pCMXRNY1RhR1JXRTBGWS9hR1RhVjVLSFIw?=
 =?utf-8?B?Y0ZrdDM5Vk80VVBYaWREMTdZcEU2ZkMvYW5JaWhzVEFKMHAxZ0NwUVJDb3BP?=
 =?utf-8?B?cThYd0lJcDNrVXMyQ3hia2JkaVozbXVGOU1uV20xM0UyTDEzQ1YzSVVaZCtm?=
 =?utf-8?B?WVNMcFJBdk1pVzBFV1dtNEpMOFk0SGNRTXZvZFJkWmRIQTd5STF4NEZqM25i?=
 =?utf-8?B?Q0FqbDMxTm8xSWRrems5M3lxUnFTY01HOUtaV1BFRkljbUVnM1U4UkdHUXNz?=
 =?utf-8?B?L0JnVVBsZUdOb3c5UmdoS0h1UkZDcnpxbjg3bGlYRmxlUktKVHowdFdzdVo1?=
 =?utf-8?B?Z2ZoNjV3cWN1WUZDbXpra0JSM2VlVktSUng5Z0FwWjhFcUFvcnpQVzhvWkVL?=
 =?utf-8?B?dnVDSTMwSUF6MitXa2tiUEJmdXAwbnE5Y0RjQlQvcWVEWmxBcTVKSk9WU2RH?=
 =?utf-8?B?OTFOWVJmM3hlaVZ1YW93Mks2REU1c1JnUUV2eis3dXJpMDRWYkpYd253SHF4?=
 =?utf-8?B?SE5Tb2tIamxqcTJTYVFFcHk1U2dYNE1yMFVBMWNTeStJYk9ESGRYWGllRUhi?=
 =?utf-8?B?WlM2MDR4WkxCQ2crdktNTm85OU9VckNRVkpOZmVVN0hqMU5nOTNYdnA1WVpF?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d20b4ae-4485-4507-ae5b-08dda0f3aea3
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2025 10:04:22.6216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J6/66F6rONb+6+pzt4dCHUPB5gp/dI48A2GZhWmNBexh1MUs30gzYhmFyrUAqc534MHlgeJmGT4ZEHbxDumUIOl+W/OCJYnj4Muz42gXrVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4734
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748772287; x=1780308287;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=udhiqMVKldI8JqBL9uIggy2a2t6S6L2vFLFNkSvOpyU=;
 b=Pkn+79NxVg52AKtawOIXcEhPwTPSTPwuCQvoKJN1HvEW1hL3d+o6pgNm
 IlTX1cUtWRaiAFSiMp3KHguW1zKLEXMR++FzSxP+hmH4QETbjRILc+eZS
 nBk3xBMp5NEI3ZWLbCs/lrtHb8IhkuZXwY4RBQBgHk2RCUO8wr1bwLJ1d
 kMYGJAxA8JNooHB8OLCR3Y/Rzu29HXSlVRbMiLJ7igbrLhb/i0ktYA+8n
 1zgIZYyGnnBPhvtt0TYr6nuUzJljS0qsWa8e3E/jDMExmFUZhLg85v2lR
 QVjVYcpz5LEpMerYHHugNZplZlCHLMHfc/gNd12BktnpCicQc9H1Iaq+j
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pkn+79Nx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM
 enabled
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


> 
> Hello, are there any updates on upstreaming this change?
> 
> If there haven't been much testing, could it be put behind the module 
> option and disabled by default?
> 


Hello,


We've decided to pursue a different solution to the issue.

The original workaround may negatively impact system power consumption, 
as a low LTR value can prevent the CPU from entering deeper power states.

As an alternative, and for testing purposes only, could you please check 
whether the following changes resolve the issue on your system?


--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7426,6 +7426,8 @@ static int __igc_resume(struct device *dev, bool rpm)
         pci_enable_wake(pdev, PCI_D3hot, 0);
         pci_enable_wake(pdev, PCI_D3cold, 0);

+       pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
+
         if (igc_init_interrupt_scheme(adapter, true)) {
                 netdev_err(netdev, "Unable to allocate memory for 
queues\n");
                 return -ENOMEM;
@@ -7551,6 +7553,7 @@ static pci_ers_result_t igc_io_slot_reset(struct 
pci_dev *pdev)
                 pci_enable_wake(pdev, PCI_D3hot, 0);
                 pci_enable_wake(pdev, PCI_D3cold, 0);

+               pci_disable_link_state_locked(pdev, PCIE_LINK_STATE_L1_2);
                 /* In case of PCI error, adapter loses its HW address
                  * so we should re-assign it here.
                  */

