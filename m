Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D42A0974CCB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 10:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80CE740BA7;
	Wed, 11 Sep 2024 08:37:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L1fgvGS03fyy; Wed, 11 Sep 2024 08:37:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20946407D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726043875;
	bh=cbtu++5UvmcjBQbOTfu4mOSu+YCojxGox7BiYX4Up+k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bVADlpUIICDiuc/KEkXlaMc1GupaW1aCIcTp3LCUILlq3nZTnBvNROUxAEKotV77/
	 PqyDWL/EfsWHe7TXSMnTWpDUZoQ4Tz1rMo8W7Duc8bB5GnwtVh4JeU5Z1LB5B9Ac1+
	 9mN7PsE/fA1PFv6fYxpNIKziqYk+vWPt7oCuhkSeiqVdY50ad3kI4WfiWQFzsmXgRK
	 IAfXbf8kntrT5evf/1iKHPRIXXdSuLdFLD9kAysWbrVZKkAK1dU/8uvL42mG+eCAIU
	 gsXX813EEir6Y3bKfOa692AZg7vGSteY/hPxaGQDzb7ipiKZGn7UjBSbaC9t8rwEjd
	 oQpz9Ji5s5LZg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20946407D2;
	Wed, 11 Sep 2024 08:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 591CE1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 08:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4688D60A41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 08:37:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ghFVfRws-zi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 08:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DF02608E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DF02608E6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DF02608E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 08:37:50 +0000 (UTC)
X-CSE-ConnectionGUID: EZ+rXNcNQKuY9mGXqNsX+w==
X-CSE-MsgGUID: or40N11RQrq4XdmBb9cstg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28607117"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="28607117"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 01:37:51 -0700
X-CSE-ConnectionGUID: y1Awc2XOTXqdmvmMNSDszA==
X-CSE-MsgGUID: 7ueFOJLxRY+ArOYEYoP/Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="71432082"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 01:37:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 01:37:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 01:37:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 01:37:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FBUya6mn+MY9tlj0fS6S/K0e9cQiFlQGNXD8KGooGzjV3dv1ZGqhzfWfs4DS/cZxp9gWgTq+sojxypORLRUORP+jivcId/gJZ0SY6aG9sMKOq1pn+pphUXvF7EgvJuH7cybZrCpphL3ZymUG4X9PbABJQUqq9DqeaALWU72niJwHyGIHySBogGw+Sh4DN4Jna4ZHdQ/1RiwKt4d5TYnj3Tet4NQNen2E1lafB86sWpz2nyxs9RIFiIhahXs2mVtsUiPaUJk82lZmEvoqpQITOvtpOxiYGtVKS46/ZIRb1ghVf87uZvd+UNtdvGk8FFLGbgpMJWKNytJvh3IR6BzlOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cbtu++5UvmcjBQbOTfu4mOSu+YCojxGox7BiYX4Up+k=;
 b=dfsGzAG0cLrvMmxWOR3qknLcNHYOtTmi+K6RAhBtCZQc/vHCm4iIbVT3Y/p9CyTWF1YfxH6ywbjxkIJta8xl7TUd/SAoavD8NERtX/1I6fI1PbKN2Z/zYsho8NuxMbkFvIYdUEZcHms22rZKtfLfguq0+RxyDm+wyovIJcRxnChGo2xc5ZYA0uP7MmgoPkJY0ZnJ2w9JNhn0RRxdycmYR7x5A4UL5RcCwCdkzJih79deepOnbL2CwR8RhTJy0su1TF5kAVmOncKsK5kk1/meV5FxGTEQkoTss/9dMf5gyvVDN7vIqgrmcOQdHjnHvdqm01Nm25PYmHpacRvzXfyPIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BN9PR11MB5273.namprd11.prod.outlook.com (2603:10b6:408:132::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Wed, 11 Sep
 2024 08:37:42 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 08:37:36 +0000
Message-ID: <2d5dbb96-d96b-4528-b098-ea1fb9c762f2@intel.com>
Date: Wed, 11 Sep 2024 10:37:30 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
 <4fc61caf-e922-44d6-b3b6-f286fe179107@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <4fc61caf-e922-44d6-b3b6-f286fe179107@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0003.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BN9PR11MB5273:EE_
X-MS-Office365-Filtering-Correlation-Id: f4bbd120-fbc0-4166-938e-08dcd23cfcea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MTMzckhaOThXbVFDd3lKWXh0dDdaRUlYaG93QXJSdWF0N05nbUZDdDNzRWRJ?=
 =?utf-8?B?cEZRRlRiSG1mdDVhK3lYVEJjQUJFcDlmUThCejdaVktTcE9KT29ZZjZoSWJo?=
 =?utf-8?B?ZTRha2toUS9vd2tzVld2QmczUFYrSGlZVEs4bjY3OFJReDJ5VUR4cjNvbDRo?=
 =?utf-8?B?TjhPK251VFEwVGZaRzU3alVmQzllUHNOQU5iWmlGMTRnZ2dCNXNFMldGTDdQ?=
 =?utf-8?B?Z1hQWERBOGNjanFISk90SXg4dndnRE1DU3dWKzR5YlJOdWphLzRqUCtNbklS?=
 =?utf-8?B?aVVNQUF4UVo4QWc0bHJTT3BXYXBnaGlaRk1RM0o2ZXc3QWs5TCtpNXpPWkRS?=
 =?utf-8?B?R3FENW41ZzdkR2s4dXJQVzNTZTVLcDNpeVJxcThqWmQxMnJlQ21YNzRQVXZX?=
 =?utf-8?B?dTRXMENFWCs3Y096blpGazZ2T1dDV1FERkNBZHZWQWc0WWNzc0l3Q3hidTB5?=
 =?utf-8?B?cC82TXROM2hYWi9GbTJVcjdLYWsyTjRRVGhHTTM2dSs1U1ZoNG03ek9kbmJa?=
 =?utf-8?B?ZTVYaHB2aHhISnd2ZXZrVHBOZEVyRWtKUFpYam4vaXRMODRHKzBhTmtleXNu?=
 =?utf-8?B?VXpnVU9XWDFFenNCVVBmcVcxRUlQOUtsTVZCQlBEaWtyYTJHWTZ4K3NkV00v?=
 =?utf-8?B?aTZpYnVDVStKTktBd0hkZ2dReVNmS3kyeU40d0dVNFdDbGcvczlEUWhKT1ho?=
 =?utf-8?B?bVRMTEJKUHZJemFtZ3Q3NzFxVnB5dzF2aFRmT3pHZDltOHBNbWdVc1RtOXRW?=
 =?utf-8?B?NVlpV1NiOG9YajNDYXhENC8xRndIYjlkQ1Y1MmpVZXBFZFR3bjhjQlJXOTJX?=
 =?utf-8?B?Z2VHOE9CQ1NUemdaUkdYL1FycDNQb1NrYmVjOWxBVVRjbk1hOXRCYTFRN1Vi?=
 =?utf-8?B?RW5tb2dudzVWM1hVb2crdUxUdE9qMjJYUGdOdzBDaGg4cUdHUitMTVplTFo2?=
 =?utf-8?B?UFBrUkpoZ3NqMU5zWG5lS0pSWUEvZjV1eG9zNVdsSUt1V0plaEk3WndPbDln?=
 =?utf-8?B?UWV4cnpBRkRGL0tTdWcveStPQ0o0R3F6cUJFcGJmdE1LendWcWVsUEw5TnRV?=
 =?utf-8?B?dUxRRml6UlUyT1BtdmhIOTdrNzdrTTVPNGp5WjJjeHo2eHp3MFRGUHNnaUVu?=
 =?utf-8?B?UWRBa0ZlcFNXYkM0bXZDYi9MSDdZcWY3MHk1YTNUM1pnWUF4cXhhYW9Ldzlj?=
 =?utf-8?B?TDE5aitCMG9PSFgyTms4dWZCQ3JYL3RqNzhFRUZncCtBMUR5Y0MweXNnZnBj?=
 =?utf-8?B?N1lNQzlSbVl0c0JPOVhCRzVEdHYvamc5RFZkN3VxQzRqT24zdllhYjJJbmt3?=
 =?utf-8?B?YVhBYUN5YjRQQ3JiN2V5Q3BwbUJrM2llRDNzSHAyRGNIS0JQaTgzbWVpUmpM?=
 =?utf-8?B?cHlqVzN6VVJRam9nV3RaWUxBT3lWZEkxc1R2Y000TkNUQXFZSEt0WnUzM0FJ?=
 =?utf-8?B?ak83bXR3VEFGYVNJZW5YNUg2SytJQitBWGtRMVA1YVlBQzcxNDlNVThicGhX?=
 =?utf-8?B?TVdhSFJHYnlxSHRTbDZHU0hONi9UamtpMXJpalFkUXpHMllseEF5QkszM3VB?=
 =?utf-8?B?cFE2M25rblJCelZuaUFURXh1R1Z1eDVZRXNGV05RaG9VQTExRllEVXdUK3RP?=
 =?utf-8?B?V2JGODQ2RHdKS0FGUTBxcmJoOUNyUjlYU2RLcXpQL0F1RHNUZ0tzNm5BamZV?=
 =?utf-8?B?T21nMzlmcmhTeGZjeWJTNnFsVGFVTjBSVWRWRXB5QWZ1cHcxR0hyOVVWQjc5?=
 =?utf-8?B?Y1U4aFVFeno3cEszZVNlOWlpUTVVekdJWjVmei9weFdWc1NQRnJIamtEd2Ni?=
 =?utf-8?Q?Ya7/NdEpXaC1tzfG6N/OEZ+b+BTE+tSykzL4w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmdOdlUvYTE4SXVSOHkrTVpQbXVRa3BHbTFZR1MyZjU2RmdIWVgxSkxYQ1NQ?=
 =?utf-8?B?RDRURkR2U040NmVja0J1YzI4VUNrL3FWQ0d5NlppSCtES3JwTjArVFJhL0ZL?=
 =?utf-8?B?TzBKNFg3ZnRITTZOK0RKVGtwTktaaE9OSXZSN0ROaHNGajVDa25KTHJlVi9j?=
 =?utf-8?B?cjVtaEYxdVd6SzNqMjB3K1lNSStDUFhKOHFOdDdzRmhOaENkSlNMUUpBdFVX?=
 =?utf-8?B?WGVCczhvRDVKZE8xYkRXTWNoeXNSdGRFbFpsc0psellqeTdRclhrb1NVQTkv?=
 =?utf-8?B?dGYwbzhtNU9uQ3hjdys1SDBqNGJ0NGphOGtnSDBrSUpoa1FkMkI0WWhzc25K?=
 =?utf-8?B?MnJiWmxJbS9wTlNtNWNmelJqQ2lGRVVsUUpDc2dhZEN5OS9xcjBNbUN4WmdD?=
 =?utf-8?B?UkdxRzNINndZQ0UzSmFJd1ZVK3pDbFRoNmJ6cGJscEc1UDBXdFVtc2JjcDIz?=
 =?utf-8?B?d0txV0had29jaE91angrVjNYUndqUVAwS2RpUjFxNGo4SEQwVTFuNzBIWGNs?=
 =?utf-8?B?Z3ZpbllmWlRVMWlVWEtBZVJWVmpjNmdXWGlRUlUzQzdYYkpRWFNYSmNza01Y?=
 =?utf-8?B?U2lLa2dCM29NUnRLWGJONXRUV2xadzEvMGZvNHBuMHlFTEY3dVh1QXYwZ0lq?=
 =?utf-8?B?MlR4a1FYcGxqUGVpZ0dRRGxlbGhIb1pHUjRaS0NnbWdzNUlEZ1pjSGVsTGp3?=
 =?utf-8?B?S1pxa1R1U29WRzNOU2lOVVVJakQ3SjF0SFZyN3ZQQzNUSTQ1a1FRSnYvWXU4?=
 =?utf-8?B?eEFjUmhLWVpLZXdyR01FcjljNHZRNUNTUXphRUJuWmFqc0N1UnNIcCtTaEhk?=
 =?utf-8?B?NTlKdENvcXJ2VDJyTVVXb0dTMlNaUFlyVTE1blh0RU5lUUZ6ZVFxS0Y0eVNi?=
 =?utf-8?B?SjRIcmNmNTN3SmZnWEdLU1lLUjRNdXdhVE1zRXIreFRaNnhXUTY0NW9MNTZG?=
 =?utf-8?B?VXBCNVp2QWN6and6TU82YWVTa1NIYXFlVHBpZGtrMzdWNVRGa3ZCKzFWcGlq?=
 =?utf-8?B?VFVybnR4TzRJVnlXRWxoWXh0RzF0YnFkcVJaMERCMWdGSkZQc2RhQUFZaDNH?=
 =?utf-8?B?OWU2ZG9nK2k2dEw2ZnRvWlk0UmJLV3VPYWhTRlB5eXdHeEszemI5UWMwYkww?=
 =?utf-8?B?a3J0bEk1SlBvbWtONS83Q2NTNmZmR29UWWk4MVpxNmV2Wk14NXl4bjdLMTlj?=
 =?utf-8?B?NnJ2T0RzTFRqcDBuZit1QzdWTlR2T3laeVZlZy9LZjlRQnVDOFZRUUtiVnRm?=
 =?utf-8?B?bTcwLzhiWTlGVXNubWNlVmp6WnVnTkRkWURVSkxqM0NUeUdZdDE1Mld0aEpF?=
 =?utf-8?B?Z0UvUEtFYzlNNjJqUnBLeHdJamdJWkhnNGw1azRnTTN6YVVYbUUxa2hBZXZ2?=
 =?utf-8?B?WmlmNlhjcEVIMFZvZUt2ZjBmMGRVWkhXZG1EZ0l4QnJGWWIwK1FHbnNPNHNH?=
 =?utf-8?B?OFJ0Q01yV3RidGgweXA4RVRzaXQ0ZVZiakIvZ0VLZ3VSN0lRMFlCVzR2L2dY?=
 =?utf-8?B?MS9tMThKTXJOVnBycUtjdGtpMkcwNHJRM0k5SG1FY0JVdERaUGllUGVnS09s?=
 =?utf-8?B?enIvQjNjbHNXMTRZcFVScWxwT0FXc0FabTBkc1ZpbHdReU1aREk0RXJ1RlBm?=
 =?utf-8?B?bEIrUmxsbmt3TTNTYkcrYzF2Qlk5dTVpelhqNkx5RmQyRlhldE9qeEszVjFa?=
 =?utf-8?B?RjIvL2ovOEYxL29WUjFlVFNkUlVpaDhPSHJhdkV1SENPaG5salBxNnlHdjAy?=
 =?utf-8?B?NWc1ZmV6RUhZcTA0MkN3cEZhUitpQTU2OXJhK3NXT3NISGVNeEFzRlV2SVpH?=
 =?utf-8?B?WkhGODY2U1l3QytpMndmbVQ0aUExU1VaMm1NeHNKeGVxV0VzYWFIYW4yUVUx?=
 =?utf-8?B?Ykl6MWIrSUVIMWdJK2ZONTkzU1F4OXYwYkZKUkNub1dNbUNBU2pqek9lZmw1?=
 =?utf-8?B?Uy96UFFXQWFRd010czJTUktRZjBDaS9vNStFc3VpdUlJL1cweVNPeXg5a0lw?=
 =?utf-8?B?WGpTcGVOQno5YkU0M3lHRUJacEcrTEtCQXdQZUJ4dVF6Y25iaUp6b0ptWVFY?=
 =?utf-8?B?NjNEdmQxVytlQndvR1FNajZRM1JnVkttcjJ0dHdtS0RKNzZTRjA0RWhjTEc2?=
 =?utf-8?B?a2ZCcTdiSmdXWGVadkRZTzh5d3dMMW9HODM4L1poUm9INUVzWnFQMXpGSllu?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4bbd120-fbc0-4166-938e-08dcd23cfcea
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2024 08:37:36.4026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EHTDzoMukhFia+Ta6idV6i93HxSz4OMItkl1KXQXzezIHGAwGQ6CEDnsfBo023N+5v9d+JjOi37mVBXdh/4ETlZUuh+TwV1u9eNnpAC7XaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5273
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726043871; x=1757579871;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l/mK53IJKbgVK4U+wDM+7dOIH5HEBCqyjzs/4MDIsvc=;
 b=DYnLfuxrBkPalFcZrdy309OnDAbPkkC35d+jtX8poSXhxTelo5RCk2zG
 v2Vz3xU8YOQlCKTCkhiix4IaIMJTq9F7lmfvEVY0RBT5vZo2t09/DLLsv
 ZCXlfExwWp3WAJ/lDJ8bOaOwvv2cgO87MQ3gz/T526Jkjn5we0nmqrtmf
 BXaW7fk9PgYxLXciLYYx/ICZs4c4Rf6hnCQpAORvkMA87pPKvzJINiSy/
 wp7yJ8lwnPAebyG1WYpjPmAU4QFQAGnavDusBUvkMGU1OB1ByShimsPFX
 VKicfCAUTtAdTosdOrJt/mu5ypoCR5yauQBQYzi3suhnEWtrfFeb92Uf6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DYnLfuxr
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

On 9/10/24 23:30, Jacob Keller wrote:
> 
> 
> On 9/10/2024 6:57 AM, Przemek Kitszel wrote:
>> Fix leak of the FW blob (DDP pkg).
>>
>> Make ice_cfg_tx_topo() const-correct, so ice_init_tx_topology() can avoid
>> copying whole FW blob. Copy just the topology section, and only when
>> needed. Reuse the buffer allocated for the read of the current topology.
>>
>> This was found by kmemleak, with the following trace for each PF:
>>      [<ffffffff8761044d>] kmemdup_noprof+0x1d/0x50
>>      [<ffffffffc0a0a480>] ice_init_ddp_config+0x100/0x220 [ice]
>>      [<ffffffffc0a0da7f>] ice_init_dev+0x6f/0x200 [ice]
>>      [<ffffffffc0a0dc49>] ice_init+0x29/0x560 [ice]
>>      [<ffffffffc0a10c1d>] ice_probe+0x21d/0x310 [ice]
>>
>> Constify ice_cfg_tx_topo() @buf parameter.
>> This cascades further down to few more functions.
>>
> 
> Nice!
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks!

> 
>> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
>> CC: Larysa Zaremba <larysa.zaremba@intel.com>
>> CC: Jacob Keller <jacob.e.keller@intel.com>
>> CC: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
>> CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> this patch obsoletes two other, so I'm dropping RB tags
>> v1, iwl-net: https://lore.kernel.org/netdev/20240904123306.14629-2-przemyslaw.kitszel@intel.com/
>>      wrong assumption that ice_get_set_tx_topo() does not modify the buffer
>>      on adminq SET variant, it sometimes does, to fill the response, thanks
>>      to Pucha Himasekhar Reddy for finding it out;
>> almost-const-correct iwl-next patch:
>> https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.kitszel@intel.com
>> it was just some of this patch, now it is const-correct
>> ---
> 
> Right. So now we're doing the const correctness in this patch along with
> the fix?

yes

> 
> Would it make sense to fix the copy issue but leave const updates to the
> next tree?
> 
> I think I'm fine with this, but wonder if it will make backporting a bit
> more difficult? Probably not, given that this code is rarely modified.

hard to say, but I think one commit will make it a little bit easier, as
there will be smaller number of possible sets of commits applied
(at least in this case)

> 
> The const fixes are also relatively smaller than I anticipated :D

just adding kfree(), knowing the proper solution is to make code
const-correct, is just a workaround, not a proper fix

change is still rather small, and splitting into two would require
postponing -next one to be after -net (as it will just remove the added
kfree())

> 
> Thanks,
> Jake

