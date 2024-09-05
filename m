Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B1096CF10
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 08:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DC8C405D7;
	Thu,  5 Sep 2024 06:20:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-rlU9mG143b; Thu,  5 Sep 2024 06:20:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62CC7405D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725517214;
	bh=frKrYPGK5LTcZSdGDVHC42k+CwpuGAYu4zKXFJSlpBA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pAjGABoFqjQQn8JRltGbG4Vo0M98FphraOIGX7WVN6ZiCqkco0GwahvrdpZk7CVps
	 lZl+pwBSzPxQHzdWoZnb1mkTvg/Zbyi97nuypLrzM5yczT9opvJMEDoInijh9wbUFI
	 K1XGt6MXkjYyFNz49Z/ItbvoGhPgubEWqB8J1673K666yDMRhL9gi7lXEDqEmUYskL
	 m9eXuNi7Zatxb3CUS7yqxNo/1WwMoSEdvNTTns5kHbP946mzi2dziNZQbhLNT3hKyu
	 xPy4OLUuNn36R6zfzm7x7ECNcfdaouzvRjeLUh3YoNWera/Us0CjzWtpYmM81gi9D1
	 NQ9Ap7YQv389Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62CC7405D8;
	Thu,  5 Sep 2024 06:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87A901BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 06:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 741E960631
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 06:20:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mKjT6YDglJIm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 06:20:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 82397605BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82397605BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 82397605BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 06:20:11 +0000 (UTC)
X-CSE-ConnectionGUID: mRBLrhsJQOaHT11PVytJwQ==
X-CSE-MsgGUID: TfD7T01KTjC9DxHJJTuGMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="46742981"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="46742981"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 23:20:06 -0700
X-CSE-ConnectionGUID: /WxNfqC2QYWIE1Xj+DD4BA==
X-CSE-MsgGUID: V5w1H/KgRYaw5nBOJ5VtAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="88755308"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 23:20:05 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 23:20:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 23:20:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 23:20:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zPO3suZBSOj72PbcvizaJIdOQwMFOSDbjqNyt5gsNr7Fen16LPriAeBekVyJyitqE7BPzOh14D3VxPpq05/RnMNEQSDvL2lsbKlMHvTB6lYV+LhsYO7uNlMZtqPhp03rXTssiXu6de7ZMx5mgCUA/v/jD4S73RoZJAOuzdK3PzKqVO74+dA0Ua8/8umDf5V21gkrvI1iPpIKYHaHvSgH4mYBCBdJTBPIaQwq8N8V2h8YVnr1nw/aPdwP34JSI7dKkGZxWMyDeLT/IT8jFgC/FT61m5ulcBPW4e9vyUQ0WNER1ocnwAYCLAk1tiaL1NKF4XZYbhh+nYwlBH9jCS/Auw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=frKrYPGK5LTcZSdGDVHC42k+CwpuGAYu4zKXFJSlpBA=;
 b=l7HjoiPkwb7ZiPqxYXAfVbY2C9K/tXsTA1/CnKQ0fA0DP67IcfeOUV6PCnsP2OO6wvuNxsqPoTWurWacAl7xqMJlcfU+HcLWvPHXCaJycDaYlwvdflv+QZ3mslUMYP4ex41cFe4lHZNkZ7PsIVuUDmNcJ657bQMcuWLLTVFNdOAto0Xl3qtls7JYkJ0p09EsJD7YtPvGBKinLZo3XrEpbJEHIVOndap7k8lFu0rWAX9Ig2o4/ZET7UuQBxSx5WhH1HhotDR0yNNurlvDgodszp7iNYFKDxJ0NEtvyas1c81aRA+6tjPAv6CeFUw+qeeezNyGYOOQ2ANqG66XH0nSXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN0PR11MB6256.namprd11.prod.outlook.com (2603:10b6:208:3c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 06:20:02 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 06:20:02 +0000
Message-ID: <65f17b12-860e-4cd0-a996-459fee71b4f8@intel.com>
Date: Thu, 5 Sep 2024 08:19:58 +0200
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20240904120052.24561-1-michal.swiatkowski@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240904120052.24561-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0211.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:88::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN0PR11MB6256:EE_
X-MS-Office365-Filtering-Correlation-Id: a189bd76-fcb8-43c2-c5bf-08dccd72c6db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TU9HS3hPNExxTFhWUVFmeG40dGxaaXJranJPV3BmanNvdzBMYzBCTVVwTjVh?=
 =?utf-8?B?NFUvUll0UWJPb3h1RzRLaEw5ZERwdksyQS82bDFhM091d2h2QS9LclorOVdL?=
 =?utf-8?B?VHJFQVBqYVhHa1d1Q3NJRHRyRXZ2TFRkVGQ0L3VpN2xQRHFsR20wSTJvM3NB?=
 =?utf-8?B?TnVBOGdFZVNkMkdJOHZaRlp5enp3RVg0MXcxWXZGcHhhclVhMWJ0dWNDQ3Iy?=
 =?utf-8?B?Nm9kekY1cko4SDBCNmEzOHJxVExkSmNkUXV1ek9Vb1VJUitjOFo3VnVXT2Rw?=
 =?utf-8?B?SW9HN2ppd0k2VWF1SjRVYmZIT1RNd1FsMjNuUEFqNnRtZkZ3T2x5V3RSM0Rj?=
 =?utf-8?B?UzQvRUt6Tm1XekZvdjV0cWFrVnJZNW45ZENUQlJaanN5aFZPR0VMNi9MYXR3?=
 =?utf-8?B?dlhFVEZDaTQyek56TzFQYXB0TURZbWY3ZFFzaFovdGFKWklkdHhmTEpuVDVD?=
 =?utf-8?B?TmF5VFV1QXhKOHZlNEwvWGRHQTdZaUJPQ0FYRDEvanBnMWVGNmtQaGJ2bGlu?=
 =?utf-8?B?ZWxwZW5RK0FRUWF0NEkweFZSdXBQOHhnRW0wZldXVURCenVpaFplT3lQWVU3?=
 =?utf-8?B?emp0aWZjaExLSUUyT3lUSzQ3UG10ZEI5ajdSeGh2UHd0c1ZxYmV2djRLUHBo?=
 =?utf-8?B?Y2svWXcwd3BJSTJLcjJQbHAwVll3MFE5dGVFMjZJR04zYkc0K3lYSmx6ZXhW?=
 =?utf-8?B?VDYxTkRhckYwV0VCSzNVenkvNG84ZVpwK0RoWTRRQTVGaHJhMGVielptQmFD?=
 =?utf-8?B?SXE3MS9jSWxNb1pwbDlIays1VmJzN3ZXOFVKV00vWW4xSFk1ZXFaQ1Jod1BC?=
 =?utf-8?B?MWhHcXZ3VEZFN3dHMmhBMFFHRStNWHZkOEthTERZSFY1QnFIQWlTd3VuS2VQ?=
 =?utf-8?B?WUU5cUdIS1dsVUsrcXRWYWRFeUdBa085dmo0d001SUVla2VhNm1MUzZkaVZR?=
 =?utf-8?B?S09WR2FXbDNyZzJma1JTcG9iTW1XWG1wV241Z09pdjNLb09kSVBpRG9kVXpi?=
 =?utf-8?B?R1hBVVIyUU5GRW9DREI1UzNyZ2lmYTVVS2tzRkdHK3U4cTdJUkJlbmFHYjJO?=
 =?utf-8?B?dUc1Zm5YSEd1dFh1d2xoRzRGLytqSlJ1UGpyQWJ6TGZIWDJzQ3dOOS9vZCt6?=
 =?utf-8?B?TEdId1I2WENDT2IvcXRmZ2REditJSnZ2bG9KL0NtZWV1Mkg5R212NnM3bEVT?=
 =?utf-8?B?ZnFwajNkbjlMM0tLZzE5TjZ5Yk1uRGFqQlpzK0ltMi82RnVMRVF2TFlJOHdY?=
 =?utf-8?B?LzYySVFWanJEMDAwYTJDMXZXemp0clJlWng1WkE1RE82NWVDMHlHeVVjTkhY?=
 =?utf-8?B?OWNZUDNqckYwd01oMmdLUzdFeHFXenJXbkNmS2pmTkZpeVA2S2wwTTJLRlBS?=
 =?utf-8?B?ZEZYODlwdlRsVmMwWnNCLzRMV3Q2OEdoVHBJRlNPUUR4VUFYMmp1TkUxanNZ?=
 =?utf-8?B?S0dzejFlajhMSitOVS9VdG5LdG5peHJHd3FNN3l2Nys3aUdxK2J6V3htWFcx?=
 =?utf-8?B?dFE4Tk9hYkxZZ2RkQjVNcTlCZEJydUJpUTgxTG94QytaeVY4dURjcUlzMjRh?=
 =?utf-8?B?MFRlSkxTSEpGaVpoUUZSb0JoVXZiVUNBZlkyKzlaazFjZWUzaVJYaHprNVQw?=
 =?utf-8?B?SENPMjM1aksxWlZUdEpmV25PR2V0Z0NxcytrZkhKaEtpeTlyM0hnVnFxYnJE?=
 =?utf-8?B?SkxESzhVd3FpQmVNR2dwTVVLOEFiTVU2TERhelQyczViWXd1QVg0WVJYSUhH?=
 =?utf-8?Q?Xsr3e+zqqWUbdHziUw0omsPfBVK1z+WRAjiXl9p?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlI3SEN4V2RUbVZVSUs4cUVRdyszaDRnYjRYWjg0dTBuS1JlRHJHU1YyQURq?=
 =?utf-8?B?SUloOTJIcThUcE1BdExTNExGbHQwRlp0aENNU05zTFg3SzdmZ1Jjb0k4VWFP?=
 =?utf-8?B?VHVFMTJLTEJmVWkwQXZGM1RtcDEybXVOZUt1SWVmMkIzT1I5YXdaVjJsTnk5?=
 =?utf-8?B?MnJQN1FYam1PMmRBL21mOUcxS1FGT1dOVmFYY0xhK1Q5ZXVWb3llSnBQdytJ?=
 =?utf-8?B?L2w0b0lFdVFtNjlVTUo1VjNUSHRIV3NBMmlVSGJJLzl0WTV2R2s3cXRzbHha?=
 =?utf-8?B?VVF1U0R0ck5vZytZSVRKR2dMWkczeExoRC9SSklZWkRMTUxXSEtqaTlPaFdM?=
 =?utf-8?B?cTVHTFl5dXhOU1Z1RUtJbU5lbDF1NHowWVVuWm5URm5VeGUxSTNNTERkNE1C?=
 =?utf-8?B?UWtZd0t4ZWFldjBTOFhWdmkvNktGSzZtbjRUZ3lENE1ibnNLSlJ4ZVVJQlJV?=
 =?utf-8?B?ekQ5Q1JWZFRRcUJOeVcrQjlFTDk1Y1pHbEg2bWIwZzVDY3Q4STZ4MmdUV2k4?=
 =?utf-8?B?SVEwOXAyLzJsSjdvK1FvY0hKWE1ZOGtuWU4xQmRLMmhtODFHQnA3WHd1UG0z?=
 =?utf-8?B?am5FKzRncXdaaHQwNTRha2VzVldoRkwrcGx6THVsZGFFZllzODI0eDlTbHdi?=
 =?utf-8?B?cDNURGFIODR6Zm5WY3Nyd1BDOHJISDB4L3cvR3J1OWJVUWZ2UHliWHRtN1FJ?=
 =?utf-8?B?UTZmTHJKemtuQWFodEVHdkozUG5KL3hDQlFCdnBuUVN4QThDVTVXeURVY1dN?=
 =?utf-8?B?aE9oZ3BqN1pJWEtQZXlLaUQxa1dCVmNyOWY0V0J0bkJXSVFVUkdvazBVSkdZ?=
 =?utf-8?B?dEVEeXZJcTROY1piNmtEVUFGWncyWjFzbXRBOVZtYXR4c3pVY2FOOUtmaWlE?=
 =?utf-8?B?QWlmOFkwZ3RUbU1OYktHeVBKM1lONE1pMFB0TFVrclVJaWtJNjJPMzhwbDZ6?=
 =?utf-8?B?bldqRHQ3SGFYSzdmSnlsWFlOSXN0Nml2cGhIQ25JMGR5MjU0Zm5BL2lNMnlY?=
 =?utf-8?B?S1RKZnRmQ0FqMmNtZ1JLM3BSY0c4UFdiVFpSVW0zQjAwQXdCTFFtazlYaXBx?=
 =?utf-8?B?SytrSUdHRnJsMEp5eWNPM3dhV3JGOSt0WG5VLzlQUTdzZ3ZMd2dzMFBvWVFW?=
 =?utf-8?B?MlVZSFpBRzU1YzgyYTJOc3l5cnpFcnI0dG53RXFObDYyYjlDZ25JM2NONGNU?=
 =?utf-8?B?WGROMURnTGh0MXl4dENqTWZzc0pDWlNkRnRESEtRK3VUL2FISEZuc1VnVDc1?=
 =?utf-8?B?QjNPT0duUEk1Ynlqck5Xa1JBUGt1Ykw1cW9uQWIvZ3QrWmpsSEd5Z1g4dnls?=
 =?utf-8?B?dDN1c1pDcHBPeDZlZlNIRFkvZmNJUFd0ZC9ya1l6QUY3WEpMcXRYUnlhTnpw?=
 =?utf-8?B?a2FxclZJM3BqVTkzdHpUVDJIaytKZlhxM1o2T3dkTHFwb3BVOENwbzV3YUo0?=
 =?utf-8?B?N1VaTW1VSllaQVNvTGw2bmtDQkpLcHVRc0FWbUhVMlZ4V2tiaktZQTBjdVlW?=
 =?utf-8?B?MGYyaE1Pam1uZkI1NXowd2FEdVY5VGc5RHUxQWdZeVNjKzYrc1gwb2J1aGNv?=
 =?utf-8?B?K1E4YnZ4cGVmMzh2bnBTUUV5RlQ3UmR3T1lVTTViQ2xwVmVTdG1pVCtFdVE3?=
 =?utf-8?B?TmsvVHpTSU4xVTJaWUYzVVVBRnhHdVlJZ0QzNkRkSHRtcmt3RVlwT2c2ejdu?=
 =?utf-8?B?UTVwZkN5QXZpdEFRTm9DMlRGSWNMdktvN2tjNmFOc1MyREZQQW5yalhjRU1k?=
 =?utf-8?B?TXhsZjh1eUd5RkFpNnBsdmc3cGxwc2lSSVFCeUdKK3I3a3AvUHFpU2FTK3FY?=
 =?utf-8?B?aFJCZk13amxKOUVIR3FISTk1TzJlOXdFYW4rSXBnV00xMERmM1RoVWE3UjVs?=
 =?utf-8?B?UnFNZFVxRzZJUWkya2NZT1A5aGR1WjFweXdtNnM3ZG5qR1JFVTRodnlGQmgy?=
 =?utf-8?B?U0cySDVBMW1iMXhhQ25aWnh4ZVNncDlOeDVRMThFbmd2QlFTNHFjVk15UW5R?=
 =?utf-8?B?V2hkZWZldzh6ZE4waXZTS2tla0wzSytWOVNVVk1SRGJBbStvWFR5MnFBdGsr?=
 =?utf-8?B?L0ROK2RKM2FYMm9zeVc1U0RCMkJoUGdrZ09VYjFTOHZ4ektWQnArOHBhenIx?=
 =?utf-8?B?SEFYZnFqMUFFM1pHWkZ6M3lIMkppeFNXNmN0aCsrQ1N3SlRCNndNUHZlSXkw?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a189bd76-fcb8-43c2-c5bf-08dccd72c6db
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 06:20:02.7765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lfs0NjTXJUovA2X3y1oE8VGH1HGZiVcksh8RN38CscdalRDRkr2vfuazdkodd4Gnc13EA4dr6Kyt15/gY1XP8hqxbG36q4BDgXqtPhxXPwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725517212; x=1757053212;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UjgaWIWvtiXKXVBULZuKRn6RunVj2ORU90p/sWf4aMg=;
 b=T982enVxaezHKJC06weyCsOHq9FjrlSZZP5BHVIfX/yTLFCr6DeB02F9
 YRGp6bdNXFaRACnuizmagJ/7doYsLcqreHxkrEAFRuGkTUtwBzRevFM3i
 cwRsBSXmqN2JOhxkXZDPD9aK0imj++o0YPx2omkE+xqM/1s5cWnxBJJLm
 3qBU/qGPD3Uec57oKGagtauA3eo8ZMpVukZz6oIsOUL4mj6rhA2Ku5U+d
 zpDWQKg5qvyVSLAToknHG6r8YX/i3DbFQtZynfbPq2Zv+oSRLAP6+MFTB
 EvVeDx/qGZ+EXagDIKfURHd7VSYI7VrGiLfqfD4yd5CvP4jdBCn94V4Sa
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T982enVx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1] iavf: allow changing VLAN state
 without calling PF
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/4/24 14:00, Michal Swiatkowski wrote:
> First case:

[...]

> Second case:

[...]

> With fix for previous case we end up with no VLAN filters in hardware.
> We have to remove VLAN filters if the state is IAVF_VLAN_ADD and delete
> VLAN was called. It is save as IAVF_VLAN_ADD means that virtchnl message
> wasn't sent yet.

I'm fine with combining the two cases into one commit as that is related

> 
> Fixes: 0c0da0e95105 ("iavf: refactor VLAN filter states")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 18 ++++++++++++++++--
>   1 file changed, 16 insertions(+), 2 deletions(-)

[...]

> @@ -793,8 +798,17 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
>   
>   	f = iavf_find_vlan(adapter, vlan);
>   	if (f) {
> -		f->state = IAVF_VLAN_REMOVE;

you forgot to put this line in else case below

> -		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_VLAN_FILTER);
> +		/* IAVF_ADD_VLAN means that VLAN wasn't even added yet.
> +		 * Remove it from the list.
> +		 */
> +		if (f->state == IAVF_VLAN_ADD) {
> +			list_del(&f->list);
> +			kfree(f);
> +			adapter->num_vlan_filters--;
> +		} else {
> +			iavf_schedule_aq_request(adapter,
> +						 IAVF_FLAG_AQ_DEL_VLAN_FILTER);
> +		}
>   	}
>   
>   	spin_unlock_bh(&adapter->mac_vlan_list_lock);

