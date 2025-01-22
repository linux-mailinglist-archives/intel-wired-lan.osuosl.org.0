Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFE2A19649
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 17:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D789E61286;
	Wed, 22 Jan 2025 16:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FzuryDB5Q_qU; Wed, 22 Jan 2025 16:16:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB691612A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737562591;
	bh=zjEi4bQOk8wit2V2bAOFIczNwj93bjUCcPUhZH+Xxfk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=izvVjY0ZsOdpcZGLw0otaUm9r1xOMOp7pVAK0SG8HdTsGWR2zvB3RQp1fmERemULn
	 uT9jIAFvSSd/Rri3+4ra1khs9+MrtIBCSgGD5oWHROOXhIdnJfBIiM0/ob3vkVrnb5
	 SzBh0Law7gCAjGjARpBfRKoxfI9WcJBFWJKvdKPm6ykZYXwugEfCCja8pm15EHKxRO
	 TptHpLsa9DX9HYTIycNOI3GLBvrku6cvCC3hc04NP/AObdl4hYYyWXg1FO9rYN6YpW
	 qLLmJDm1xYFcwUOhk4NiKs1UTWGlPsEAkYHfBw7V/BanulgRE99AO/5MByaY/8t+K5
	 TovwWaMYhbSVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB691612A8;
	Wed, 22 Jan 2025 16:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 64C731DA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 16:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3156542598
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 16:16:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I99IqQWcIjSb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 16:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA23942575
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA23942575
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA23942575
 for <intel-wired-lan@osuosl.org>; Wed, 22 Jan 2025 16:16:28 +0000 (UTC)
X-CSE-ConnectionGUID: IfvGVb4lQn2JseinrvynRw==
X-CSE-MsgGUID: FNeG0rWQTfqLWWgjOOsORg==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="41697760"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="41697760"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 08:16:28 -0800
X-CSE-ConnectionGUID: BtKVAovbRv2ltulM8LRFXw==
X-CSE-MsgGUID: 2Lcnp74yTzCSS1LbuFG0aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108058259"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 08:16:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 08:16:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 08:16:27 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 08:16:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AOxXwD2rPaKMGlUUC+4v0Y8obRMdtDHb2H594+PqApMM3zEyza1DiJvbp1Tbi8NOEeR3v/ZuYYIz/+JNsR9xIxgY9KLmtE0xYVlTztYEOeHR5vF6IxRF0duy5MWm/cldKCYpJPWF3u54GjChNaB5i3+SvZw6iu5ZOklXXj/9Qa1iz5FC9IWL7Yi4JQ5UJEPgStcs+T9v7e+nS0MJAPElHVRukaM8Gy7zkyaym7+6d1ain+HrXp+cyoaS5V+QCFLFr5KLxxAfMRyrECm8Zb4AG0ESN4Ej7HD0TVzE7mSr5bwtqV7PXi2H7ATPiPJF1vuGPUE7vppYKt5KFCiHItHYMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zjEi4bQOk8wit2V2bAOFIczNwj93bjUCcPUhZH+Xxfk=;
 b=cM06WYhyR4fiE3s/4dmR6uHq8lpGI0N3gkOh2YlkeTrP9JOsPw2D3xN0XPWuOgO4pLNXwL01tVH2iLNodzHWJjwBcb6Q1XavlKcbXfLbqMvGCEpbzrXnC6TWKpNAcAUR7oB3MViPzW520gAbuHrCx3oTtwJobfCle8mCUPBYVyJ1Dqks1BL/lnyeUHRmdZHxKYkqvLu/M7MR7LWYzzL6zKPqISVWQFB6K8i58Cd/iKtlpCTjABNtw0R8Q2Fl0bHp/liXIXdPIvpAMb8ufzAwrLV1+AA9V9zD2ye4mkb0xItwD1F1+HlYT/9i+iURU08CgNcZPvcEHB1kGw9hlxGbaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CY8PR11MB7923.namprd11.prod.outlook.com (2603:10b6:930:7e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Wed, 22 Jan
 2025 16:15:44 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 16:15:44 +0000
Message-ID: <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
Date: Wed, 22 Jan 2025 18:15:27 +0200
User-Agent: Mozilla Thunderbird
To: ValdikSS <iam@valdikss.org.ru>, <intel-wired-lan@osuosl.org>
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CY8PR11MB7923:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a698c5e-5ef4-41ce-30e5-08dd3b0005e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cHpOU004b0pZWEE3MWZaOTRqNk9KZnMzWVZBNXdXOURxT0RUUmU2TXVLUnYx?=
 =?utf-8?B?L0xpb2s1TkxEK01YUm9QOXF1UC9NUjVuY1BMT2hvWk5MNjFjeTEwTVFjNWgz?=
 =?utf-8?B?RTVNaGhvc01vMGsxR1psTVUvT2FZMEhzWVNLbTFPcktuQ0c1dGpCK0tYbHJt?=
 =?utf-8?B?Yms3UGlxNEFVbjJMRnEraFppTTJMRE1UbHNlK2dVeC82N1VCYjFPb1pHVEFt?=
 =?utf-8?B?TDU2ZEFNWVJhbGE2WDJwNTQ3OFFkNUx6S3I3NUFCWXhQcnZZWmNRV0tXeTFD?=
 =?utf-8?B?S2NiYXR5VDdGNjdmNFU0Zm1tbUQ3V2l3K3pUQStFTnpMcXFidmIwNWxiMmty?=
 =?utf-8?B?SWJjZVZsSVkwN2tPK1hQS1hNQks2ejBIdnorWmNQQ25lcWRQU1cvVHNPYXhR?=
 =?utf-8?B?Zy9qRkRNTHNyMkExdnF4ZjBISzVFZHl1R0xXV3JYS3JjTzRyWlNNK0VTTTd6?=
 =?utf-8?B?dTZpZ0xRZDNnWjZ4T1NuQ0NRNGRoVzI1QTNLemoxWlR2TXRXbGpvTVJEZldP?=
 =?utf-8?B?cnJJUC8zdVhqSElTVEVFeVlObVJoVGhwajUzMmQwWDB1aE52eDRhOEFJM2R2?=
 =?utf-8?B?T01YY2g5d2hvRXU5QWZ4cnBNRS80YTFRNDJHNnJnMi93MTVvSm9nTlJEMlE1?=
 =?utf-8?B?LzJ0dCtlc3ZSNkVPbnNDTkR4Tm5EUWUxTmJVcW1ISWtyL0p3R0lNOXlVN0JU?=
 =?utf-8?B?NWVveFRLSjlmYzMwcmZEODhSYWpmNDI3RGxlTnBlYXpEb0ZpbG5LREJjNHVi?=
 =?utf-8?B?aWVFUUhkNHlabVRsQmVKQUlnR2YvUDk4VzdaNXNKTGJkUUxhc2d6RWxpNWpU?=
 =?utf-8?B?Y2k5aU9Bd0IzVWwraUNnMVBYRXpLczcwdmZLZEZxZExUSWtVV0VPS0g2NHQ5?=
 =?utf-8?B?RWxFSlk4djc2NVNWdGR5MkpnZmVEUUg2cnYzY1ZnWjB2Q29OWE9hSis2L1JD?=
 =?utf-8?B?QzA3N0IzL2UyUjVOUXNmY00xQUJNdWNzNHVpVDh5Y0NIRUlBalVESC9pRFZF?=
 =?utf-8?B?K0xMbXZWMVRUdDFiQ1kzZkxJV2xtZHlwd0FCdndYK2huWXVpV3dnRGwwL1lm?=
 =?utf-8?B?N0FqdGNBMFJOaTNzeXhGZG02SVJqb1drdWFzRXd5Uk9VUjhHYjNsczdxS0lq?=
 =?utf-8?B?WjhuV28wTE0xbEMxR2FMVnlsa3RvQ0dPdHdGREg3QUs5bUdVYXEvbDdjN09D?=
 =?utf-8?B?L3hlT0Q5elU0WlZZWFkzVVI4b0dHaW5yTlpSQjRUcjlJaC9wdEdVdEt3bERw?=
 =?utf-8?B?bGhCYjduNUdaM3p3Wmh3bktBOTJSS2tiOCtHNTFzOUJPZVRVd0dNU0VPTmhn?=
 =?utf-8?B?U1RVL21VeU9KWlZIUk9nNlFZTG4ra0pPWmhQTEtCVklYZWVUb1pKcGFUS2VR?=
 =?utf-8?B?elZtbU1GaVJKN0FJZS9EWEVWUU5VTEFBUWxFSHc0OVFvZFUyaWdPVmREczN2?=
 =?utf-8?B?V3NHaWpTWWJobEZuUG9ieCtCRG1MMlRuQm0rQWlKMktCcENDTFpvRnFYTVRQ?=
 =?utf-8?B?M0xIK0RCclBzUGg2aW1RTW9jckhNaHp5b29Da0lBUVhiQTBBSm9GK003MWZy?=
 =?utf-8?B?UEs1NUwxQjNXWCsvS3kvUGFZQlhMbzJVTktzazlVRkQrbUJpai9JcExaK0lG?=
 =?utf-8?B?ajhJTVJockkzalpMRXlnUlFBTWRIWUlsZHR6Uy9aWEJsMmErRGx5N2JZS05j?=
 =?utf-8?B?Ymo1NjJWV0NRbkk5QkE5M2k4SXZrdGNORzBxRWNkbjFlU2JVZXJoL3NpOUJs?=
 =?utf-8?B?ZlR0ZmkrZkNaMWVwY0N4UjlnSEIxYWZ2TXN2TTBzTjBFZG1ZMjI2RFZvSFpu?=
 =?utf-8?B?eit5cVVTZHB4L1RaT29TQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlNPc1ExQURJVUtITW5PTzc5ZDE2a1N4WG5HQ2psbmh3bktERTdlbE1JUGhJ?=
 =?utf-8?B?WmZ1UDlsWEhLSytLb3pYMGdkNzl0c24yVytReWVyVHFmcURnOThuVGVENDdl?=
 =?utf-8?B?aVQ2YTFqL0pFaUlic0F6c1BzRHBOU1dnTUpLRkFCeW1jcHlmMVlONER2am1P?=
 =?utf-8?B?LzNlaHFMS0FQUlN2QlB6WExWUVNMZHFuT0NlT05zRlROUUFCU1F2QnhvdlJi?=
 =?utf-8?B?YmFPUHdmbGhnaENOcFU1eEhkZG53aFNpR3N0OGRraWZKbnI0S0VZV3Z1NlZC?=
 =?utf-8?B?eTBWMWs2QUNQYnF4azNwcERlanJubkRRSTJyTzZid0duQjVWZTVKMUJnNnhq?=
 =?utf-8?B?U0NXS1FZSU8xZVR1VEZaN2lpUU93Y3JBTWY1QzJiR2dGaTdRL0NQKzdnSVM3?=
 =?utf-8?B?WmRhZFJNK0xheDFZcXJzWHRPekg1Z0xqMUtra0g2cXc1TTVnN0lzQlMzTFc1?=
 =?utf-8?B?Ri9LYVRHUjYwait6RTBTWmx2RlNWdk05Y0ZibFZUaFdzK0oydGFqZUg5bUtP?=
 =?utf-8?B?a2hjMFRKb1g0SXJObE9CN2M1YVE0RVdFVmJwL01GdE9zREIxTm9GWlRMWW91?=
 =?utf-8?B?OUtMdG8zRnkrRE9JaFZXcm9ZN3JBM3I2UUxYWkF3d2Y5QkZWRUlRSm1neElJ?=
 =?utf-8?B?U3FVaFI4UzduWjljRWsza2RMdWFaREdCdmhsd0dseTAvaUtPbVNWcUF4Z3dD?=
 =?utf-8?B?bDF3SzVZQ2NJZXBMSGU3ZW1QV2FiV2oxNDlDbVZWNXozbUE0Zm1tTUxyaUEw?=
 =?utf-8?B?dUVjdDBMOGRxL2M0YkVRclRhK2IrOStzdVhWbUJqTTN3RWJFbk5LQ3FEaTZO?=
 =?utf-8?B?ZkhQdGdJS2dtczlSYUNvNHZwREI2U1VzY1BiR3ZzODVkSytNN0phRGFwU1o4?=
 =?utf-8?B?a1RKb29IK0FaOGx5bmFVSGxJazJxRTRkeExFNXFMMWpQOUhSY2xuVXVlSzd5?=
 =?utf-8?B?MGVtTitOWW52YUVtM3hJQy9OQzRiRmxkMjgwb1IxOEtCNHlyQ3hVWVNmZWs5?=
 =?utf-8?B?L2xkTW1WcHFoeTNNenNDMUF3dUJPNitrRFZtQkNnZ3V5NVZUd1hrYVFFQ3R1?=
 =?utf-8?B?VXFRenhUTlUzRFZabFpsMlJrcFN1b25OWFdlc1BDSVZ0K0ZGNEt1OGNBVng4?=
 =?utf-8?B?U1M2elNZYjQ2SG1BZE9DdFBUazNBd1lEZzI3ZDZGRytHVkNoUnEwdDNFT3Fh?=
 =?utf-8?B?OUxRRU1XSUJneDdlTnZHdmhnOS9GdXhlMXJhUVNvZWlvQ3I0bGVvZ0hSVGky?=
 =?utf-8?B?c3RFclA4SzlQUjUwTnZjZ3dFYklNKzhrOThJeDBGL3FVdWZwR1lIRXJvUTZD?=
 =?utf-8?B?T1pzUzd1eTFjUVdrUTFzNkdQZ3VySktmdlBVdWlFUFBVSEdBMEMzdzN1aTQ2?=
 =?utf-8?B?TE45Yi9NLzEyamh3bnRuem5BNlJRb1JPT01MTEE4SXNibDdQVWpkd29LejBh?=
 =?utf-8?B?M3hIK2FEZURWTVU4dS8veVdBRFYxT2VER3BtdWZHQU9sL3llbEdORDR3aUJv?=
 =?utf-8?B?Y2xuU0M4bkNwbjg3ZnRYZVcyY3lTd2Z4VnVzTEJ1UVFlQjAxMS9QYWl3RmxS?=
 =?utf-8?B?Zzh0VjRTTEhKVk0wM0t6Ukh0cmV4OE9wODZpaUFZazROSExCQk8wQVJzNVN4?=
 =?utf-8?B?OWVqQWlzSExlWm1yUngwUXlSVXBSREdqdzdLU3N1OVJ6ZHZZS3dWL1QyeGRC?=
 =?utf-8?B?TDRVWkZHMmxCQ29jU05UVmdjb3RzZ0xCb3UwMHl1SE1kNWk2NFJIamJBeHJP?=
 =?utf-8?B?TWZBa29GM2Y0TXR3WnZHMWlqMTM3QmxIZXJteFcxcVJPRExwNmRyQnpqVXVG?=
 =?utf-8?B?VUZhMTFuWERIcGlEazJlMnJvOGl5anhCbThVTC9JazhCcU5heUtsOEFLaUQ1?=
 =?utf-8?B?ZDdVcWRWYXV0Nm93UndWTDhrNzgyN0dDcHU3NFM0OWVkaDU0YWdGOGlYS0xl?=
 =?utf-8?B?ZEM0SFhldVp6dVlnVjdEZEVPSTl4Nkx3am9YdlhJbUIzYksvUVVMaVFLdHJE?=
 =?utf-8?B?N2twNm5XbTNHNW4vTFdvMW1wZ2owZ051RG51WDN3WnkrUkxCMTJoOVdUdVZL?=
 =?utf-8?B?dE1lUFJiOXZha3VxL2xtSDdtYU1rUFM3WUVvWWNweVN4V0w4eTdJVERLRlNN?=
 =?utf-8?B?TmNTdkdFR0dwbUdyNUt0c1RvSHN3WGU4cjExNDduS2Y4RlNHYTV3TlAydXJT?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a698c5e-5ef4-41ce-30e5-08dd3b0005e2
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 16:15:44.2358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VIjad9T4ab5dmXp0REEvwMwwSsdYxcScw8F4m6wo4IKeXR3moPMngKcyAqpJwf+YFNZn4YTlk4AIm+7ibL0WJRsC5mG9Y7qWixug0VHTMVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7923
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737562589; x=1769098589;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=e3k3TEXW+uJNTAcMcWB7WbWpPpo0NIuMMzuV9PMaFU4=;
 b=ePgRvrLZVnhatdEE6q9Mv1LSz81XG1j358Evh8FZCiYvC2tnGHTwLtnt
 pDgYTaL/XxRDTzibV5Zi6y1fcU8fJ6UC49lLbEW+EIQ5X6xMOzV5e3mqx
 EXU09YeQcszVop4r212HnzLHKsaD1/G8sh1mK+3ezH9OCzJfzqVK3CG10
 66JQ8MGKNKmUFujza3p5CrXPt1rCnHfJVpM303bl+SWaCFE7Vkze2AFNR
 xU+aQ64nlqmCME2FGBTi023/p5hF/w7I7F9QnvMPli0xXkr+8HdXVGHZn
 9WF2YYGNoRXE0wtk+eBNKBaMofTdI5E9fMiToPgQDgY0b3dh4eqTH9SMN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ePgRvrLZ
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



On 1/22/2025 4:57 PM, ValdikSS wrote:
> On 09.12.2024 12:21 PM, ValdikSS wrote:
>>>> After (presumably) latest UEFI v0033 update for the NUC, my network 
>>>> is limited to ~250 Mbit/s download unless I disable PCIE ASPM option 
>>>> in UEFI settings.
>>>> 56:00.0 Ethernet controller [0200]: Intel Corporation Ethernet 
>>>> Controller I226-V [8086:125c] (rev 04)
>>>
>>> Hello,
>>>
>>> I believe that the issue you are facing is related to PCIE L1.2 state 
>>> exit latency. To confirm this please try to reproduce it after making 
>>> the following changes in the igc code:
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ 
>>> ethernet/intel/igc/igc_i225.c
>>> index 0dd61719f1ed..1c0c3d665a0c 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_i225.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_i225.c
>>> @@ -612,6 +612,10 @@ s32 igc_set_ltr_i225(struct igc_hw *hw, bool link)
>>>                   */
>>>                  ltr_min = (1000 * size) / speed;
>>>                  ltr_max = ltr_min + tw_system;
>>> +               if (speed == SPEED_1000) {
>>> +                       ltr_min = ltr_max = 100 * 1000;
>>> +               }
>>> +
>>>                  scale_min = (ltr_min / 1024) < 1024 ? 
>>> IGC_LTRMINV_SCALE_1024 :
>>>                              IGC_LTRMINV_SCALE_32768;
>>>                  scale_max = (ltr_max / 1024) < 1024 ? 
>>> IGC_LTRMAXV_SCALE_1024 :
>>
>> That instantly fixed the issue, thanks!
>>
>> With the patch:
>>
>> $ curl -o /dev/null http://speedtest.selectel.ru/1GB -4
>>    % Total    % Received % Xferd  Average Speed   Time    Time     
>> Time Current
>>                                   Dload  Upload   Total   Spent    
>> Left Speed
>> 100 1024M  100 1024M    0     0  55.3M      0  0:00:18  0:00:18 
>> --:--:-- 59.5M
>>
>> Without the patch:
>>
>> $ curl -o /dev/null http://speedtest.selectel.ru/1GB -4
>>    % Total    % Received % Xferd  Average Speed   Time    Time     
>> Time Current
>>                                   Dload  Upload   Total   Spent    
>> Left Speed
>> 100 1024M  100 1024M    0     0  21.8M      0  0:00:46  0:00:46 
>> --:--:-- 20.1M
> 
> Vitaly, this patch doesn't seem to be sent to the kernel. Is this fix 
> final, or was it intended only for the test?
> 

It was intended mainly for testing to understand if it is the same issue 
that we faced in the Windows driver.

We haven't yes submitted this patch to the kernel, since we are still 
evaluating whether this solution is robust enough and doesn't cause any 
new issues.

