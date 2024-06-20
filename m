Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB382910992
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 17:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 977F7820FC;
	Thu, 20 Jun 2024 15:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iuBMxKQ1c-Hh; Thu, 20 Jun 2024 15:16:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CEA18216B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718896581;
	bh=v5rVgMX5GNQwpVVpYo1HTcHQEfS9WC4R/Bo/HeLbEmA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3O3Q0svhN903+rkHwz6i+uyYoh6l22AkGnFnErj/pC1Nc+fJBRvNfIqO0QJOIt4O6
	 YT2hGQJPqPn81FpJSWzRRyL5RlakqGr77UJelb3dZ+QAggQnZvjWtXKut4nNZCqkBT
	 cBM6YpnEtCKR/Z0DGcMvcqtmS/mRU/YejujHAPQHaxHkrw6mCzPRly9KNl/UrIHqIc
	 +RLwPZs8Bfuk2bL9MnF3/kJmCUKmNGXpD9eMAAC8L8vcR1aELiFVlrHYUY2iAd0y9a
	 MJ6u+1Z0Ri8L5qURwMn62jRzIUYUhci32eZi6AIeA4Y3nxaDQ2g6Jd9rPprP6W8RAb
	 I1djzqk9Pubzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CEA18216B;
	Thu, 20 Jun 2024 15:16:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F05D71BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 15:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBA3142F2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 15:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h_rB522ROoST for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 15:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4A0B42F30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4A0B42F30
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4A0B42F30
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 15:16:17 +0000 (UTC)
X-CSE-ConnectionGUID: ZGBy1O9gSYij+g0wLuUefg==
X-CSE-MsgGUID: xnrTp2hgRlaqWE99KgTu9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="27010126"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="27010126"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 08:16:09 -0700
X-CSE-ConnectionGUID: lFJrIe/hTq6Fs6f5diXMug==
X-CSE-MsgGUID: M4KVj+rhSr6ms4u3hBcDxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="42387635"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 08:16:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 08:16:03 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 08:16:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 08:16:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 08:16:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MBtuTyPO8lfAO1HsnQGKVrOqi3mlnaAftjNkKPdbWvWtZdrjsv2a9ECi67CAlDh5Z77SV7uwbEd5TT/3ibpjPgIIIkopZng4nRNo7I67o3nD7fXurGJ1fRvG19ZzKStt9WI1rFlNsR0twtEAuJ+QZyy3fnLW3V+Ld+GtQdvd/mn8Knlpow9z7RP/qzHb9MJypIT/gpcZ5KQr9PeUYDWjtp7SbeO9505TuvW3Rj37PFkWrF0vJFIjV1U5U0HEe5djaXcZsedO3gwx42XOrgPfSVRXJkCVyWxEW2EdWStPANQgyGS2VZLVoZs7G2hNb+o2ty3A4NTz4t9ds6rHXFmQ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v5rVgMX5GNQwpVVpYo1HTcHQEfS9WC4R/Bo/HeLbEmA=;
 b=HvZyAZ55Ci6dyrp+ypugpExG+FBU20fztjiEf7winYA5UNNG43TcJU9uaYxs6dauCuhUo9EfQJ4deRgumId1zvAULIgcvfmQv94MKaP3oJBBXU45NgdVc66bw4Bo1TOjvJpXmREWdc4tOuRnWfRhqN4oPFlUzATPPxx4f7Qadw6S6Q1b4bHgMTqoh2di4/z0K4DVLYUZ4EM2Jld2I8k9NH5bHUWYQYO6Cl0ZP08D5aSl+xxj4rpomxpk9hr6V7OEMRfz+AfBlWMa2RoOKV/zZWlV5SuG9DgMr2zMfCfVtrcOY77iprEnhl+1LYDotX16I2XaqYdn2GKrG3npoiPKag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL3PR11MB6529.namprd11.prod.outlook.com (2603:10b6:208:38c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.22; Thu, 20 Jun
 2024 15:16:00 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7698.017; Thu, 20 Jun 2024
 15:16:00 +0000
Message-ID: <38875747-d728-4784-b8da-057d999e1fac@intel.com>
Date: Thu, 20 Jun 2024 17:15:53 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
 <20240620135347.3006818-2-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240620135347.3006818-2-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0164.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL3PR11MB6529:EE_
X-MS-Office365-Filtering-Correlation-Id: d923f6bd-d5b9-4e1d-3099-08dc913be497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|366013|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2p3b0ZTd1ZEMm9nZHJMZmZ0K1JaV3hjMGlISkJXVHdxSGZtZUdnNnBRMytD?=
 =?utf-8?B?bEFDeGZXWW5nOFduT2hsTVE1OHE2ZGFZZFk0bDY4bmR6dGE4cHlNeng2Z2ZJ?=
 =?utf-8?B?Y3NpOTRBNGRqWW9CaVVlTlkxWXhDVy9GUXV2WFRQZXZ1bDltUUdGc052M1dI?=
 =?utf-8?B?d1p6dGJRbHgwM2FRcjE0S1VCamFwaUVVRDl3M3FnRDFlUVpMallZdW5jTVR6?=
 =?utf-8?B?NGllZXpBSFJPWTZwdVhvQWM4TmFURTZLb1R3R1EzY3pudFVpTnB3Q2M4Uk8z?=
 =?utf-8?B?Zll3dVdEWXkwbTk1S2FscHFoNkJPaGdWMlo3dzdZTXhIMjlGdkVseFc0RHpx?=
 =?utf-8?B?aXEyTW1Bazg4cEZ0MG42a0tsMDZ6eEFCNGlWa25XMlREWXFaSlo4b3FTNnFt?=
 =?utf-8?B?RVNwYitMdUNsNGlJVVFrbFM4QTdaMFdkajJZR29mZzhCd2xvd1NiaVBPZ203?=
 =?utf-8?B?L2NGTlBxOU1MODF4elR1MEVuR3pPeUJ0MTBOSWkwaTZmYU42OEdXZThKQVlm?=
 =?utf-8?B?Z1NKczI1R2orOUk4ZGVDZWI0ZDZHZ2pmc2JKTmpiT2p1VkYzenJpb3E2R2th?=
 =?utf-8?B?b0l4SUh5MHUyU0RBa0x3ZG5VQ1NJa0Z5MEVldi9wYldPYUFCdFVVM01EcTJ6?=
 =?utf-8?B?dFIyWlhxVncwbFRENWdJdy9ZM2crVWZWQkVVR2ZXY3JjeTJOT0dtcEtpYnZt?=
 =?utf-8?B?RjZIL09IcFVRNnpkMnNCUmpuMjlDYTFDaHpGeFJqWW90Y2YvU2cydTRTS25K?=
 =?utf-8?B?MFFQam1ZUS85SDRqRkVieDZOTkR4THB5L3V2WEUxeFRVL2lXLzMvS0xOR1FI?=
 =?utf-8?B?R3N6bkxoSXFna2lWamc0M0ZNS0VFTzBjQk9HZERZTkxhbFpjMklVOWt0V0pB?=
 =?utf-8?B?ZG5Sd2pCTzVTVDlLRElINHVvMjRXdDVZQ1ZkRStTbXJCbWxPMm9xem8xRzFG?=
 =?utf-8?B?OWNEVjNOejIzQXZsNVJsakNIOVN4M0dzWnZYZzRoN1lHa2FwcUxPeGpRMDV3?=
 =?utf-8?B?RHdaVnpJYThKeWU5L2thR0FmWnR5dUV0KzJ6VUdHc01LWXRXTG12bG9FU3Ev?=
 =?utf-8?B?YXBlVEdLUWpWZTZTTk9hdGdBaFJYRTRMbmdtM28yd3JLb01zSSsyVHRBWHZa?=
 =?utf-8?B?Um9xT2kzVVNBYmlodzBmSFJxUklLT1VMZXhtOE90MHFjYlh1K2FBL09mQy9v?=
 =?utf-8?B?cVhvY25abmhuZTBqcC9XcXBkU3ZpN3NmeDZLb2pOazFuYXdXRUVXdmcrTFFL?=
 =?utf-8?B?SDdranpybEpsZkdsWEVHbk5WUTU2ejJEQTRjNlhTU2lCZTJnV0RPZjRKaGN6?=
 =?utf-8?B?cDY2WXpCaG16bllrbkt3ZWxkZGtsYjc5N0VQTHplUnNlQmpGc0NwdGV6Tm9l?=
 =?utf-8?B?eEQzOGdubkFvaFV0QmNuY2RwOGJtekhSQkNlNFlwT0lGS1dLZzREQ0sxbFFs?=
 =?utf-8?B?ZzhqT3RZR3JvOWlscGNDZE1GSEV1UTJ4S3BvRlJveGZ4MWVKQVlkd3FFVFdT?=
 =?utf-8?B?cTNzWURmTVhuc1FYZjJzcTFXV1cyaThFRFBETHhNbjlnOUMvVkNiNm1OOWhO?=
 =?utf-8?B?SEFieG0rdnIyZEp6NkVubGY2VmNzSURlNG0xNjQwUkJZc0pRbWUzZ2dyYzhk?=
 =?utf-8?B?UkNBcGNjbHF5U2Erbkg5N1cyS3p5U2FyU0dzR2RzWHVvS3VMWTBpeDlOTnYx?=
 =?utf-8?B?RDVZQitpWFhTcy9FYS9mUnRjWVhBN1BpbEI0YzBhaEoyOHNvVmg0T3hKYU5D?=
 =?utf-8?Q?vZME74vXAtyAB1ojYFMvIQOZ4uUDV4NX4OI/cOX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk9sQWVqbUF3TXNaYzIyb2QzVThiUy81dUdZWEhrWjNMSlhHNVBhNmwyaXlO?=
 =?utf-8?B?Qkc1U2FKVk5CR3ZDZzdIUHNUbURlc0hnWmdnV0dNVWhsUkpZei9aOFZGS0RN?=
 =?utf-8?B?bmY4VUYwaElUNGNZMUlrSHpjd0NPRElRb1NtR3M3eEJIcklSTjVtU0lUVVdn?=
 =?utf-8?B?aXFNMVgwSkJRekNPYWxQV3U3azdaYm85YndxVGd6My9tRU0vd0hjTFFYME0r?=
 =?utf-8?B?WUl2aSt6cnpGbEFjUkpja29xemhJT0ZoNEVpRllqTjdyb3ZRelVMS25XYUlS?=
 =?utf-8?B?Z1l3SUpMcDZwOWhRNW1lSEo2QjZXTXNUTXordXMwTGV4RlIvR3FPeUt5cFF0?=
 =?utf-8?B?VzZKbUg3cjlvSTVzajVScTEvWnlUUjcwVjZGMnE2S0UvV045N09veHVtcnI5?=
 =?utf-8?B?clZERGhSRzA3RldibzhKMUxKQlk4UjlGWTdEWU5INURoaFhKWFR3dXg3anJV?=
 =?utf-8?B?YUtHK21qWnhVM3FHUURlMzg1LzdBK096YlZSSnFRRTZDc2djYmhEd2s0ZFNW?=
 =?utf-8?B?UnJFL0Q0ZzZ5WlhCS2VvcnkzaVVVeTArNnFWNTBlWlkrd3F5aUNIOUFORDk3?=
 =?utf-8?B?ZDFuU0Q0OGpuZnF4OW1oQ1pJSFFsc1RKRld0TlY5UDR3L0tuVE5UNzdMZlN6?=
 =?utf-8?B?ZHVkYlFIMjk3aHVsM0QxcjFjQzBKV1MxaXVWVDhKYVU3ZVExQVBOTkJRbngx?=
 =?utf-8?B?U0ZFanVSWWJSM0xFRVkxZUVEMVcrUUVRZG9maEllWWJZeGVkWWEzUkYxTXNL?=
 =?utf-8?B?N1dQQnpUQXR3Vi9Tc29TZzhQdTJiZkhFNmhKUnhSZnBIWWNpQ2V4dHh1NHI2?=
 =?utf-8?B?NW5ocXc5T0JQUEZWak0wVWdtY0pOZHlmb2dWSXFpZGVwcmxPOCs2UllibG9F?=
 =?utf-8?B?RndSWmRJck9FU2xnNFdFWFhrMWh5d3JhdXBiUFVXR3h5MUVrcG1FMklTV0RQ?=
 =?utf-8?B?VHNBY1MrdlJHaXdZQVVTWHRxNmNueEJvWjBaUFdaM2FBRE1MZVBmZkpoRW5k?=
 =?utf-8?B?dFBrVG96YUdRaDQ1clFYWGtsVUs0VUNHK2lwT2h5cTZTbXh3YllJcnh2UDVu?=
 =?utf-8?B?cmxIbmlqZDNKa0ZKekZ3Y0ZCamdYWmdBNWQ3RStBMzU5b0MyTGdDdk9pU09U?=
 =?utf-8?B?NHdsbG1OSFV4OXNxWENxdEZqMXgvOS9SMjhBdXJaWnF0elUrcGg5c3l6bE5T?=
 =?utf-8?B?cFpONUpNelRZbDJXWSszNDRRbmZSaW0rQjR0UTJJQi9UYTJDQVZVcVYrYXNV?=
 =?utf-8?B?TFRaYmorOEhLdGVwSzhYUVkveXF2aXZvVTNEdzJYb0I2aHVhTktJU3dIVUpi?=
 =?utf-8?B?d3hPUWNqeHY0bFo0eEVpeXBhSkxncDJtQ0lBTVJrZko2SGtjQ2R2YjV4M3pX?=
 =?utf-8?B?ckwyUVZVYXZjT0pkYUdzTUlxZ3FLNVVhd3g4bGVCeEIzSEI3TDFmQkZwam9r?=
 =?utf-8?B?eFdlM1JmRGRrMU5wZ0NidDZlRm9QblJudndrRTVaOEc3YXJoSHlsWWRDSEEy?=
 =?utf-8?B?SlpkUTNOSE5KVk8veFdIRVFYK3BKUGxWcDl2MWpIaFlWeFVOSlFITUlpbWFW?=
 =?utf-8?B?cE1qTnM0ODhMUDVyZjhpd0xMZzJJWjBtT0h5OVJCMk8yS3YzajdTVGdnejF5?=
 =?utf-8?B?bENvRkowZVRiaGUveVdzbHBFSXhFY1YxY000alJCN2g4L1A3Nm9ibGowVTYx?=
 =?utf-8?B?VHBkdUhkbC9EVHdPRGk5UTdNMGRITC9kRXdWSUNtZmIrdTY5am9NbS93S2xI?=
 =?utf-8?B?ZVV0Vm5seXZGZ3lqU2c0WXp4d3VqbkYxdjlVM2w4VHlEMkk4Yk5ydVpwckti?=
 =?utf-8?B?RmJ5Vk9zZlRCcFcrUTRIMEszZmptenNXcU1WUjJWUXdBb29Td3RtNjVEUjhv?=
 =?utf-8?B?UXRKK09lVUJGL1JBK2dRRWd1UmFqL2pvLzBZRzBpRE82SndudUc2SXRGY3Zz?=
 =?utf-8?B?cncwU1lmVXFmQ2pnTHJKQ0tMdzd6UzNGVXE3dnh5Y0FxOVMyY1NCVWl4MU9h?=
 =?utf-8?B?a2ZkSVRwaWZQNXpZZldIb1cwbEZYY0F3U1gvbU16OElUdlpxUXl0TW5vbzds?=
 =?utf-8?B?NGNDN0xyN0pQTTY0enVIUkkyajJDZjhWSjRUYnhVWEl0Q3dud0RvRDd2WGw4?=
 =?utf-8?B?elFGRlpIWUx3YTZlMGZFaW5qSTIxNHZROVlmRHFjNVNBQ3grS2NoajNKL2lO?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d923f6bd-d5b9-4e1d-3099-08dc913be497
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 15:16:00.4916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Aikbc1iQXXyW6UTBPzbf3vVF2WoGdc3FLVdDCD2P4T75Sj4Uno7RADOZllUCxe56j4IZ/NazBRQRhDTXggooYMCAz4A50w0AWe4ADQTkPlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6529
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718896578; x=1750432578;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XlUqzL7mGf02SgrEz+q42qeCDsG3bFK97sB0yDGf1ls=;
 b=kawdHOy77aoMKjxG3ftINMbEcA+rimjhMUtcNywbjMlYvz5DCG1TGD6/
 9qqWoYH4ETa60f32i27l7fPZ7S5b7RrO0nYRZ1teFvM6V8KWO8oggZuSa
 TbyR2L3vz6no+OcZy+FyIdDyn/nsnlYSVi5gzo825RzotaM7OE8GNmsxM
 aBEYPJFHcq4gPxeST3l2EBiESsI0Uhr9ruUA+PLqAJldDhGGhBPyBb6aV
 ROMQM4OTB7ayPkTnUx6Woh6KRsrSe1kQYX/yZO5/xFbnRxn5ekF3xLKiL
 17hWxk6hgvuhHcVkoSIy/T2UUcLWZUTheXnLy5puACNRRt0qcnRQ6l4fg
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kawdHOy7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] cache: add
 __cacheline_group_{begin, end}_aligned() (+ couple more)
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
Cc: Mina
 Almasry <almasrymina@google.com>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/20/24 15:53, Alexander Lobakin wrote:
> __cacheline_group_begin(), unfortunately, doesn't align the group
> anyhow. If it is wanted, then you need to do something like
> 
> __cacheline_group_begin(grp) __aligned(ALIGN)
> 
> which isn't really convenient nor compact.
> Add the _aligned() counterparts to align the groups automatically to
> either the specified alignment (optional) or ``SMP_CACHE_BYTES``.
> Note that the actual struct layout will then be (on x64 with 64-byte CL):
> 
> struct x {
> 	u32 y;				// offset 0, size 4, padding 56
> 	__cacheline_group_begin__grp;	// offset 64, size 0
> 	u32 z;				// offset 64, size 4, padding 4
> 	__cacheline_group_end__grp;	// offset 72, size 0
> 	__cacheline_group_pad__grp;	// offset 72, size 0, padding 56
> 	u32 w;				// offset 128
> };
> 
> The end marker is aligned to long, so that you can assert the struct
> size more strictly, but the offset of the next field in the structure
> will be aligned to the group alignment, so that the next field won't
> fall into the group it's not intended to.
> 
> Add __LARGEST_ALIGN definition and LARGEST_ALIGN() macro.
> __LARGEST_ALIGN is the value to which the compilers align fields when
> __aligned_largest is specified. Sometimes, it might be needed to get
> this value outside of variable definitions. LARGEST_ALIGN() is macro
> which just aligns a value to __LARGEST_ALIGN.
> Also add SMP_CACHE_ALIGN(), similar to L1_CACHE_ALIGN(), but using
> ``SMP_CACHE_BYTES`` instead of ``L1_CACHE_BYTES`` as the former
> also accounts L2, needed in some cases.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   include/linux/cache.h | 59 +++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 59 insertions(+)
> 

[...]

> +/**
> + * __cacheline_group_begin_aligned - declare an aligned group start
> + * @GROUP: name of the group
> + * @...: optional group alignment

didn't know that you could document "..." :)

> + *
> + * The following block inside a struct:
> + *
> + *	__cacheline_group_begin_aligned(grp);
> + *	field a;
> + *	field b;
> + *	__cacheline_group_end_aligned(grp);
> + *
> + * will always be aligned to either the specified alignment or
> + * ``SMP_CACHE_BYTES``.
> + */
> +#define __cacheline_group_begin_aligned(GROUP, ...)		\
> +	__cacheline_group_begin(GROUP)				\
> +	__aligned((__VA_ARGS__ + 0) ? : SMP_CACHE_BYTES)

nice trick :) +0

> +
> +/**
> + * __cacheline_group_end_aligned - declare an aligned group end
> + * @GROUP: name of the group
> + * @...: optional alignment (same as was in __cacheline_group_begin_aligned())
> + *
> + * Note that the end marker is aligned to sizeof(long) to allow more precise
> + * size assertion. It also declares a padding at the end to avoid next field
> + * falling into this cacheline.
> + */
> +#define __cacheline_group_end_aligned(GROUP, ...)		\
> +	__cacheline_group_end(GROUP) __aligned(sizeof(long));	\
> +	struct { } __cacheline_group_pad__##GROUP		\
> +	__aligned((__VA_ARGS__ + 0) ? : SMP_CACHE_BYTES)
> +
>   #ifndef CACHELINE_ASSERT_GROUP_MEMBER
>   #define CACHELINE_ASSERT_GROUP_MEMBER(TYPE, GROUP, MEMBER) \
>   	BUILD_BUG_ON(!(offsetof(TYPE, MEMBER) >= \

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
