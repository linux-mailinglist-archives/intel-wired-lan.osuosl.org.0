Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0A4906AA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 13:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 085EF402FD;
	Thu, 13 Jun 2024 11:03:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GW4X2pKoKzhv; Thu, 13 Jun 2024 11:03:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E377840150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718276617;
	bh=TjHGCi3ERiSu1JvgGRMqn7R4omsYhFo/mVklU8cBNCg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x+2a0Um95y2iWa6JhBm2xbuvAu/bUn0igYPtbe60hvNfzrAQjggq11MPe5RBldKCS
	 ql465OP+fXmAp1CkAGHT69dIC9yracmiPEE12SgResjyKaH2ERR53BPH1fber+71y9
	 23f+cfjwy04vrAV/SNEYXii9+GeAeIjSyAOkXR7ngIfhb4fTbfLf9t23ucJTL/lVkt
	 rw1ZUt3zBVCBeCInCesVBeeEZAp6r9GGhtgDs4QEmO6uClM6AFCIv5SfH1vr5sZomn
	 W4LzgcZV+jAy4rq63HcDrLmEEi5idZTg5EXrqnAQF1KodvsS6Qx5kN3p+v3oZwuPQy
	 PKNIHf8xQQQBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E377840150;
	Thu, 13 Jun 2024 11:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25B5C1BF354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 11:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1102D4010E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 11:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIf59xeRGsKh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 11:03:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AF0C0400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF0C0400E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF0C0400E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 11:03:32 +0000 (UTC)
X-CSE-ConnectionGUID: 90od4d08TNmJqjkqLHb17A==
X-CSE-MsgGUID: eetexnZ2TlSNSyBGPMQMqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14964131"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14964131"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 04:03:31 -0700
X-CSE-ConnectionGUID: BELE9v8LQpitoVnXQB5SdQ==
X-CSE-MsgGUID: G+khCa5DRZm3zkCO6dCqOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="45054702"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 04:03:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 04:03:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 04:03:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 04:03:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 04:03:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aosrL/LuAQ/d+n/VETzHvX11uz3LucJ3xypZstoW/YQap7v+PeyP/Y6ASibpJV564+fkpmFnYikVyGwxt3AIkiPqVTFGxx4HfJRtWJbIfyxdaby8Ryg3sPZB5NjvlJ/FyOY5PqRVXa+LHnZKsDAIoaeq5DQkno+MvQ3B0kGQvZDR8R5Qhp1rUNhdkmKGQ4iXGmZ8RYUxE85DLmIOAll4nG+W7jH2T4wFqWUr2lco1PtU28MfXrxOyjsV3CpPOL6eHvVcq75B9MUDj0/dBaY/NWBorLYcV0riVKJtb3IEoGOUcjOq2d9Y+zh9rCHKg0BNUCYXYTFlA+4LWD1r1N/wqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TjHGCi3ERiSu1JvgGRMqn7R4omsYhFo/mVklU8cBNCg=;
 b=PwNhw8LvRMi2Y9in5byxBaznOIsKd6v0LfmxxhqmvOEWcfe5DJ4ACmltk6djzyHE3jQwbELS50te5OvY9MTay71ou1pKkClGqcGG/tkRD6ATzNKQQ5V6CXlxoy16QFG1PKAtG0/a3ax+ZE2EBIQ6YQG93BnQo6LAqzsLRU7G6mFF+P+LlKIH0J6oEkWDyGt2WkSLNC9gcTGgYPHOpf2l5r1aIS6AATSQBnlZfNmjaOQ9tUVnEMRK3FQrQ88RjjbTQ8DyZVxlje/ySMiunKrmLXKD8fXsebkjdBGs6NxvksfjYYvIrSMtwUFiFDfu85YhWDC0pTrGLh2zb48MiHPebA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB7279.namprd11.prod.outlook.com (2603:10b6:8:109::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Thu, 13 Jun
 2024 11:03:27 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Thu, 13 Jun 2024
 11:03:27 +0000
Message-ID: <b110726e-d496-4975-8089-57a4931da47d@intel.com>
Date: Thu, 13 Jun 2024 13:03:00 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-4-aleksander.lobakin@intel.com>
 <20240601085308.GY491852@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240601085308.GY491852@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR06CA0013.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB7279:EE_
X-MS-Office365-Filtering-Correlation-Id: f693441c-7c86-41d0-617b-08dc8b9873dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|1800799018|366010;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlZST0ZpcGFndklTMkxkQk9UTFkvRkgzWkw0UlNDcTdCOWN2cGF6eVlTWVRp?=
 =?utf-8?B?aDEwRnpCdXMwZk1aRkUxTmJLUVYvWjFId2tQNDlEeGh4Mmh2K0JxOGxrL2VQ?=
 =?utf-8?B?bVdUNmJhbmlQVXlJMnBja0ZjOE12VUJ5RlVySE81ZVVyRUE5Zm5JenJ2L0FX?=
 =?utf-8?B?RVltbWJSR0x0M25sTHBXb1BxTkpKWTczL3RVMGQ1ZUphaER3b2xVeDdNVXAy?=
 =?utf-8?B?c3pWTzVGR05nbWo5Y3phdmtjRzRSQVN5TDF2Wm1FMmEvSFQwRm94akw2QThP?=
 =?utf-8?B?c1hMc2tXT2Z6UTRySDZDMmlLRVRuZHVRZ0pWWVZZMis3UjlvTlA5VC9DekJr?=
 =?utf-8?B?SytXeksrUEI1SjFUTE1abHBnTW1aRm94ZXlTajF0dFVGYVh6V2E1N3NWbVRx?=
 =?utf-8?B?ZCs4UEErV1VJT2swaUszY3IrZ1d1V2xvUDhjS293WStnT2JqZnJLZmhIcmFU?=
 =?utf-8?B?OWpRWGU0VXhCcDIyNk5WSWxPaEtJVytJdzRnWDl4YWx3RHVVNFZRZWNvdGR2?=
 =?utf-8?B?WS9ObGtoeHB5b3FadVBaYjRrNmUyWW5NWmVWa0pKTmd4UzErRDFlSytiS1M0?=
 =?utf-8?B?bHBZZ0VjVXVCNVdwLzUrUjlndHcyUzZFMjN3blNVenBMamZwWko4ZTljSFI0?=
 =?utf-8?B?czFKTWRXbFNkT1FwVmd5dGlOaXFXTERra0ljLy83MDRkelNYaE16UTRIZnhZ?=
 =?utf-8?B?QjhqSitNdWNqYS8yYi9OS01lZUlrUHRubDk0S2NUa0NMbGtBcElnbGRxZ2hU?=
 =?utf-8?B?aWhFVm9qMnp4S3RnOWNKdVdXMVNIRUpFaXNlZnAvbnFMV3A1QlpKazFOcGUz?=
 =?utf-8?B?NE5BZ1hDWjdHUTFrb0YwR3VoYVNhSG5KejFXclRuV3lVMlRGNXMxU3VsTmRv?=
 =?utf-8?B?dTlISFA5d0ZOUDdrOFFEYTRMVVBJSU1LazFBUDVhVVlvWGxOc29zSUdPY2Vq?=
 =?utf-8?B?dXFmdTNrWXN4ZTNjbWZvR01KeUZIU2FJSkNkczdBOWV6TWw2MjIrZENzTjMy?=
 =?utf-8?B?cWs3TXVKU3RHQkE3T0FDWnE1K0V3VjFIMFRYZDZUWWFJL2V3aFIrNHVUNWx2?=
 =?utf-8?B?bUgrR1VSdDlSdm0zRzkrd1lCdXowd1dSYTEzRnVRMVFUU2RXMWVsZjZtaTlt?=
 =?utf-8?B?QVlwakJ3MXZLWnVrRDA1K3dyVUhFRmgxTURLbFZrckJ0WlBESnRjNEZodmdS?=
 =?utf-8?B?Z21aeWZkTmN6N0hHSlBsMDNEcWdzVy90MHhiMXF5Y2l2a1pKUnAvVVB0YXRv?=
 =?utf-8?B?VDVIY0FDOFdUYTFNN3E5WEk3ZmtxK1ZURzR0L290MCtnMFFhS0pMTlVDdEFz?=
 =?utf-8?B?NHBQUElFa0c3SkJvSk1HY2VzK3UxTjVqM2tpalFGbzBvV1Z2MjQzQzJOQkR2?=
 =?utf-8?B?UzV3c0pwSW1UYmlnTVAzWW1HaGFVbVlKNVFrdnIzTWlDa2t5aUk3b2ZkN3dZ?=
 =?utf-8?B?MmFzSlpGaXlkV2RMbk1PSzNYVVN5M0daTnNMbGF3T0RCYW5aWmRIcy9tNlMz?=
 =?utf-8?B?Smk3ZWZXMENBazlwUnc3NHBwNlZHcGptblVVK3p3azB6TWJIWnZjSE5OK3hK?=
 =?utf-8?B?SlRQejgyc2kwczRVOGkraWF6MG1wNWJNSHZDZk5lM3krM3NJTm56TC9LTytY?=
 =?utf-8?B?cWNraURHRlQ5SkJSSXk0WGtYRTg2cW02L0dBbXIvVVp5VGk1Nmo5bVNDNFVK?=
 =?utf-8?B?S0Rtb2p2L0ZJYlIzZHJ3RnVldmUvOWt4S1huZXlBeVBEdHBnN0dCaDNuWlJM?=
 =?utf-8?Q?0JIxAGyrXcA5UpQewnGcjkUSeo1KmDoVJHJvair?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWd1RUUwQ3I0RS9VYXN2ZmNlMDU2QmhxMFdNenpFWnpUUWhBc29MRk92Umh4?=
 =?utf-8?B?MlliRWI4elErT0tlMUxXV0h1YldKTVV4SXhvU1BDcW5xOE12dTEvWFY5dzZk?=
 =?utf-8?B?Y01YRmthTTVuRWJWbmdYWVQ0ZTAvUFpkL3AvTFhiL2h1S1BmRTdoVlA4d2wx?=
 =?utf-8?B?VDliR1FoZFlkbURwamdIZFd0Mmh5QjU3eGFDd0s2elM3MlIzRlE3NHB6K2RS?=
 =?utf-8?B?bHFGdzBWd3VFTjNDekNVUGJ2b202TnBGaWVvOUN6aEwxbmR4bmt0QXBlUitI?=
 =?utf-8?B?RUgyZVBFY0dwb0lIbXNVeDZ1ck1Cc1U2aG1HNXZVV3VBZkY0SWRXd0wycmhn?=
 =?utf-8?B?RGFZMnpVT1FXKzRuMHAvSGJNR3lzOURkUG9aWHRCRWYxK2xud0dCaFRzWFcv?=
 =?utf-8?B?VDAyTS9hZ25vVDZTb1M1bVhITG9jYk5aM3JFcGJycU5LVVFHc3dLdTJ3bWZ6?=
 =?utf-8?B?QXViaXgwWHRLK01IbG54UGZTQzh0bmtuTWdXa0U1OFVUcjNRclpsMTFYb0Ez?=
 =?utf-8?B?ZzU2NkVRamgxWjMxbmVEZ2dNK2w1WGxsVUFXdnRhWjF5VDdyN096cGYzb01E?=
 =?utf-8?B?UlFHQkNzd3EyMHBZb1l6d1J1RklDRVJ6c2V3SWNhdyt4K2R5Y3N4ZE5sSU0r?=
 =?utf-8?B?T0RQeVBqbUM2UFZaUEN4OHJ6cTJmUDQzUlhFNHBCenJHRmFIdThOdGdZdVAy?=
 =?utf-8?B?QVo5SXBGT2NZOVoxa09jYXFydGVnZ1BObXdqTXB2ZDlSbEtXNEhRdW5WUUFM?=
 =?utf-8?B?eUF6T2lFU0lxQzNOMXJiZ010RlhRWnBBeHBKb2cxMCtaTmo0S3JwN2xINDBR?=
 =?utf-8?B?U05NMWIwS1ptS3AyY1VaQkZpRFBIU3NTSUt1RmxrWUx6SU53K3M5aEM1dE1B?=
 =?utf-8?B?cmc3U3FNN213UUZGZXhKY1J2cHQ3SWY2V3JyQmlIYm5rS05OZ0V0UHdTY2xz?=
 =?utf-8?B?dkNSLzE4bDZyRXI1WHhhOHVPM2Q3T3J2NTVCZGNuQkVvTnZsdm9hVWtCYVhX?=
 =?utf-8?B?SWY5ZUE2Y3NOb1RqRXdkdi93azV5aVRpT0VDQ3V5MG1rTHZBWW53TmRlb0M3?=
 =?utf-8?B?YTkyTitPVDV4ZGFFZnVBREFPd1JiUnZIQ1NUSk5Dc3FKaERsb1JEY1IxRHg2?=
 =?utf-8?B?cUFBN0lYZlFwSTE2bnlsR3phZzdiSkZWcmorQk1NVkFJclFMZ0ltOUlWRm5t?=
 =?utf-8?B?NFFjOHZ6TXpTVFNLMXN0YnZTQjNsODI0bmFRS25EMEdKWnFmeDZWOTI4OTE5?=
 =?utf-8?B?cGxjTkxsZTlneUk1UkZlNVJ4bUZ0L0FjT3FXT1dzZXVyelBzYWs2Uk5YZ0th?=
 =?utf-8?B?dWF6aDV5V1JpU3h3WmVjNEwvUTFsWklDbVlLem1tTnJRWDNFd2o2dnNaYXAr?=
 =?utf-8?B?NkloZmpNQjkydS9oN3RPSHc1TDE5RndIdmFRV2NJdDV5T1MxMDBQK3pMTmpC?=
 =?utf-8?B?T2szUUVZVU0xSWorZnlESGhBbjZaalEzRmNxbDVpbFZnVTZ6ZmlLQnRWV1Zz?=
 =?utf-8?B?UjdoMWJzZHViUzFVV2NVUkp2clVabTd5VEk1OVJ0NDU1ajIwcXNRaDFESUZv?=
 =?utf-8?B?YXVCOWJTaXc3aDFmcG5pRFpkYS8yS1pSTDQ0VndHdVdXQWNUVThkZnUvQTFJ?=
 =?utf-8?B?RzJvWUxsRkNjUzQ0a3ExN0FTR2pmbThaOFB3b3lBSCtZUUpGS3ZobTJ1Y2VT?=
 =?utf-8?B?ZVVNRjAyVkNqSXU5WU1Kb0VoV1A2QnlPY1BiWTNWZ3VUQ2Nwd0ZmV1grZzdt?=
 =?utf-8?B?MWdnTGNuS2k1SUdVRFV4UnN4UHAxdlpETEhVK2lrSmdkN1ExRXNaeHl0UFEx?=
 =?utf-8?B?OS81L0RrZTdiTU5qN08reStLNEpZdHpLc29ubldSQWpFS2lDY25tVFBwdDVT?=
 =?utf-8?B?TldWVndaMWJoMGcyOERlVUVrUW83UUwvYjhSS1NmUldVSEJIdTJVZTNvbHNB?=
 =?utf-8?B?cnJjQlBTN3R2QlE5VUZ6c2JVK0pMMDZ4T2JtRUIzMElNRHdpNlNtRitsZ3BL?=
 =?utf-8?B?Rmg0bHdpNGI1NEh6MS9vSXpTU1ZkMXo1TnJubkNFeGc4R2hDRHkrY0xlZmRW?=
 =?utf-8?B?NEE1WjFOOUJ3K0dTTjVQc01sMDZzTzlvSFA0djlQZFh0TjFFc3dJaVN1T0c0?=
 =?utf-8?B?UzIyTWVBTWlZOXBmN1dwNkZXQ2N5SmNVYmUwSXBIWUN0THVjSkhZUVdIVXRi?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f693441c-7c86-41d0-617b-08dc8b9873dc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 11:03:27.7031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NhJfmFhb4KJBk8hremop55ygGUdiFJiq7ovdmMZf2ckBHiswa19XP2UVtK9e0x+Z8dGybjlKnOr4kcb+7DgpROkEEvQsYeHAPWDq5f1I4BM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718276613; x=1749812613;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lBnDfpVXhNZK04PQMGMYmeivrj7OP60ixAM9gTJ/obU=;
 b=b9v9TFPlv+WppAm8peTM2U3GQcauzOBmIG6CKVsvprozUX372AnPji4E
 UY2bIoe6Z2/39B/8LteBYhGjh1/JscE1cmqj4H88+qxZrrB9VJU2UBjWP
 rZUqaLKREbMH4Ec26QVTQ0R2jn8idh1XkPgEl6PZt2R7fbH6L9hxXgrXF
 8n4p9BZ9uLu1mEcKxP6lrzOGEkdWOdBHToRlNEEJrj+pJznezQlVDXO1f
 D86HhwGkIBf9qx0GCtpzS5/xAsePtV4H6ta/Q+KupidSGjgaV/O4r9VIt
 0tjXEfnPM/Am/Icy6T3kR/CltptBa6v3y8rOnoHD2kvslXOEd9GFdakE3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b9v9TFPl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 03/12] idpf: split
 &idpf_queue into 4 strictly-typed queue structures
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Simon Horman <horms@kernel.org>
Date: Sat, 1 Jun 2024 09:53:08 +0100

> On Tue, May 28, 2024 at 03:48:37PM +0200, Alexander Lobakin wrote:
>> Currently, sizeof(struct idpf_queue) is 32 Kb.
>> This is due to the 12-bit hashtable declaration at the end of the queue.
>> This HT is needed only for Tx queues when the flow scheduling mode is
>> enabled. But &idpf_queue is unified for all of the queue types,
>> provoking excessive memory usage.
>> The unified structure in general makes the code less effective via
>> suboptimal fields placement. You can't avoid that unless you make unions
>> each 2 fields. Even then, different field alignment etc., doesn't allow
>> you to optimize things to the limit.
>> Split &idpf_queue into 4 structures corresponding to the queue types:
>> RQ (Rx queue), SQ (Tx queue), FQ (buffer queue), and CQ (completion
>> queue). Place only needed fields there and shortcuts handy for hotpath.
>> Allocate the abovementioned hashtable dynamically and only when needed,
>> keeping &idpf_tx_queue relatively short (192 bytes, same as Rx). This HT
>> is used only for OOO completions, which aren't really hotpath anyway.
>> Note that this change must be done atomically, otherwise it's really
>> easy to get lost and miss something.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> 
> ...
> 
>> @@ -1158,20 +1325,22 @@ static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
>>   */
>>  static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>>  {
>> -	bool flow_sch_en;
>> -	int err, i;
>> +	bool split, flow_sch_en;
>> +	int i;
>>  
>>  	vport->txq_grps = kcalloc(vport->num_txq_grp,
>>  				  sizeof(*vport->txq_grps), GFP_KERNEL);
>>  	if (!vport->txq_grps)
>>  		return -ENOMEM;
>>  
>> +	split = idpf_is_queue_model_split(vport->txq_model);
>>  	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
>>  				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
>>  
>>  	for (i = 0; i < vport->num_txq_grp; i++) {
>>  		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
>>  		struct idpf_adapter *adapter = vport->adapter;
>> +		struct idpf_txq_stash *stashes;
>>  		int j;
>>  
>>  		tx_qgrp->vport = vport;
>> @@ -1180,45 +1349,62 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
>>  		for (j = 0; j < tx_qgrp->num_txq; j++) {
>>  			tx_qgrp->txqs[j] = kzalloc(sizeof(*tx_qgrp->txqs[j]),
>>  						   GFP_KERNEL);
>> -			if (!tx_qgrp->txqs[j]) {
>> -				err = -ENOMEM;
>> +			if (!tx_qgrp->txqs[j])
>>  				goto err_alloc;
>> -			}
>> +		}
>> +
>> +		if (split && flow_sch_en) {
>> +			stashes = kcalloc(num_txq, sizeof(*stashes),
>> +					  GFP_KERNEL);
> 
> Hi Alexander,
> 
> Here stashes is assigned a memory allocation and
> then then assigned to tx_qgrp->stashes a few lines below...
> 
>> +			if (!stashes)
>> +				goto err_alloc;
>> +
>> +			tx_qgrp->stashes = stashes;
>>  		}
>>  
>>  		for (j = 0; j < tx_qgrp->num_txq; j++) {
>> -			struct idpf_queue *q = tx_qgrp->txqs[j];
>> +			struct idpf_tx_queue *q = tx_qgrp->txqs[j];
>>  
>>  			q->dev = &adapter->pdev->dev;
>>  			q->desc_count = vport->txq_desc_count;
>>  			q->tx_max_bufs = idpf_get_max_tx_bufs(adapter);
>>  			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
>> -			q->vport = vport;
>> +			q->netdev = vport->netdev;
>>  			q->txq_grp = tx_qgrp;
>> -			hash_init(q->sched_buf_hash);
>>  
>> -			if (flow_sch_en)
>> -				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
>> +			if (!split) {
>> +				q->clean_budget = vport->compln_clean_budget;
>> +				idpf_queue_assign(CRC_EN, q,
>> +						  vport->crc_enable);
>> +			}
>> +
>> +			if (!flow_sch_en)
>> +				continue;
>> +
>> +			if (split) {
> 
> ... but here elements of stashes seem to be assigned to q->stash
> without stashes having being initialised.
> 
> Flagged by Smatch

Hi! Yes, I saw the report, but isn't it a false positive?

Allocation happens when `split && flow_sch_en`, and here we have

			if (!flow_sch_en)
				continue;

			if (split)
				// assign

IOW the assignment can't happen without the allocation?

> 
>> +				q->stash = &stashes[j];
>> +				hash_init(q->stash->sched_buf_hash);
>> +			}
>> +
>> +			idpf_queue_set(FLOW_SCH_EN, q);

Thanks,
Olek
