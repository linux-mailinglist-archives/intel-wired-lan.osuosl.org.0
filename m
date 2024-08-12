Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8C994EA64
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 12:01:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52B9D40337;
	Mon, 12 Aug 2024 10:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvrOKSWp37Hu; Mon, 12 Aug 2024 10:01:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5042F402E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723456910;
	bh=M26rQqbJA4Kr4wgVyDmh91OqVLzu+R2RDc8oHPmXQtQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OgvkRF34zTQBpllbY3mEaY58D1mO2s2Uac+Ww8gD0vIkECCQT0m2KJ+LMse0lMaNZ
	 sTIVooWB/O+8tMFTQ1qG12gtOmc/MypuYlDSJQeN9RL8n24+CU59U6WQJk0RVeDjDA
	 cijA7Wtkrj5BZI32xYn6VCbV+qTvPpgEYWVxj0/SL2swVV84z1TxgX3/NawCRVv32T
	 7Z+X3js6IrcHOfX3FbQJexhEWAkheTaQyMsyoHbrAXjh+z/PDT11t8ImQeaV1RPV09
	 8lxa82p6BDgsn64oT8jGsSIj2l0cf4aqdsbxBH7OQuJuMPX4dOicczSGlnVVc4HaC1
	 WRgRcAPMHLueA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5042F402E7;
	Mon, 12 Aug 2024 10:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C47A41BF27C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0CF760685
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:01:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R4M6usEi16eo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 10:01:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D2FEA60616
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2FEA60616
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D2FEA60616
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 10:01:46 +0000 (UTC)
X-CSE-ConnectionGUID: awwW5rprQX6Du3Oj8XS7BA==
X-CSE-MsgGUID: uvzsMEm9TxKJWZiiPCevjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="46958154"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="46958154"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:01:46 -0700
X-CSE-ConnectionGUID: 9KlHs5HNSKmMNSW/+IikrA==
X-CSE-MsgGUID: 1JlCMoBZSyuoah+U3rx7uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="62608205"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 03:01:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 03:01:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 03:01:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 03:01:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGv4yjdoiZ7i0/M+AFOjcX6810reIA3Dcx7iqsKDkeAyRcoul9SDUnf/9v4VYcl6QDC6tpbgw5WcsSsZfaSNLC9+qgvviPw5JUJ8v4q9pjLhF50YUeloJb/NTNMasjNU7YJUpQo6jqi9Fh3emW895R/t+lskALdwNiVRZlxCqTzrRRZ41u1WywWQzd2yuXBBi/0MwGitmUgpPFSLlhB9B9muiayA0h6aEXQcolRnT0VaI7OKAU1UT9u3NMLqstry9iATODEAFXTe3LbK+PuG1cjuuJF8bgErzCsTsX0JurQIpgnpD/LU63MZpPtCubGdxJLMmrZgo18z2LKS9btfCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M26rQqbJA4Kr4wgVyDmh91OqVLzu+R2RDc8oHPmXQtQ=;
 b=wUSvBcxwspkR6ZXxLFmMRMD/mMM9skfHH8h++cLJOL2WNwtvHY0FJSZk0IO0p+VpgA7crQTcs2/Ns1Aj2us7WmAL8VlFoniAAg27tRvep7YF77gpQ44qOB1QW/10wk/ifAqxzCD+RdWWFBidCVDiZYasb2zuZgbFF3wE79EsS/lrdyxo7fZGBJ5veka2361AOhER8c6u1YEVsFC/Tfaf/RAYPVXhH4Ka1lpGLw2bFonxEGR05Ksw0aMuV/o2HjXZulQvankYdLAm/Urxx3+VtKltQG8SeCMEQZ74ge+VUxtP+cNTp7gebNNkNdOQnYOr0zA1ApmvzPvqx7EsO9hzhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by IA1PR11MB7811.namprd11.prod.outlook.com (2603:10b6:208:3f9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Mon, 12 Aug
 2024 10:01:43 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%7]) with mapi id 15.20.7828.030; Mon, 12 Aug 2024
 10:01:43 +0000
Message-ID: <7495a81b-0367-4883-9e6b-e4487ef378be@intel.com>
Date: Mon, 12 Aug 2024 12:01:34 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-7-mateusz.polchlopek@intel.com>
 <390393c3-b4ee-473a-8055-813130876e71@intel.com>
 <ed34373b-1afe-487c-bb35-3a62e4cfe4f9@intel.com>
 <e562774d-162a-4b42-b286-28a1feb77b62@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <e562774d-162a-4b42-b286-28a1feb77b62@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0021.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::15) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|IA1PR11MB7811:EE_
X-MS-Office365-Filtering-Correlation-Id: 8062dfbd-6473-42a3-4f58-08dcbab5c47b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnYwZnBGVCtZcndDNS8yTjhPcmI4UXpKRzNwYlUraDF5NXBNdHpBdnJMcVRs?=
 =?utf-8?B?Q1duOHo3QngvRWd4Z3RGejJvRmNkeHV2S2RoM2M5anNNQkdCWFVVeVI1VGl2?=
 =?utf-8?B?OFJhVDIwSnByUlJ2b0V1UXdjS0ZuLzNPWjZQNG4ySnBYSEF0cDczbE93SzVi?=
 =?utf-8?B?MGJoZTZKVEdSVU5zSXZvOG4vU0ZucVJ5VUwvbjYwc1IzUTlGOUN3L1kyemtV?=
 =?utf-8?B?US9ZbHNCVk04bE5ZWjF1aEF1M05WM2ZtdmNTc1NrVlVORXB0TC82Ky8rUUhI?=
 =?utf-8?B?dnFiK3hHc2lSbG5RdkRCd2ZNeUdLeDN3dEk0bk1FcVFoTlc4UnRra3BuQmxB?=
 =?utf-8?B?OFU3VlRiQ1hHQUpxeFl4ZTgrdU5OSUlLNmZrdGtSYm5FMTVtYXQ2cGFVUHBz?=
 =?utf-8?B?RGtFbTFaRmNkV0lpYzgrajhFVUFuQ0JHV1o5eXBaL1BJZ3BmSzBDMFlrVFdZ?=
 =?utf-8?B?VlVOZmhIMnJUZStzOTQxZXdxVHZTQ2JyMWhrYThXS21JMDNpdFdFL1NlSGVv?=
 =?utf-8?B?QXZrTnVEcXptQU4xOTZJMVo0by9UVXBZVHN0MU92K3BldFRJOG0vQzA1RnZC?=
 =?utf-8?B?TCt1M1UvNDF3Wm9vam1rN3NuUGxCNURLN3NBdzlPWHlWcGRXM0dyeEh3WDV3?=
 =?utf-8?B?Y0R0N2xkU1lwTVFtWkg0RmtGNkxvZmJDcTdsMy9xbHY2SGxzOW9JNWpmRUh5?=
 =?utf-8?B?QWRCSVJiMUFSMm1Ub2d0cEdoYTZqTEFBaGozczg5Y0hPem9wWStkL1NmTXQz?=
 =?utf-8?B?c3AvRC9JSmRhQ2VaOVpybDlicXJmYVc1RThwUzB5ODByZGZpMGFRN0xCY0Nu?=
 =?utf-8?B?Wmd5amhGdFExQnNtN05BcnZhU3pzQUMyNDMrUk1uNDQ4M0ROOWN3K1R5dGdY?=
 =?utf-8?B?NGNSN3pJc1VpVGswSis4NGlZekFTblZyN1RXanRBbkcrTFd2RkFpYWRoRlkr?=
 =?utf-8?B?UDNqUVNJRWRoblBRTytoUlJtdzBqemI3WnRaa0ZOdyszeUNqUGxJdUdyMHZn?=
 =?utf-8?B?SHVmOURNcTZYZFhENkxYK0hSeE5YelZVenQ4Q2NtaU4xdHI1Y3N4V0F1ZGgv?=
 =?utf-8?B?M3l2bmwySjdZTkJRdlRWNk5rSnVTODlVakVCNmkzbVJKRWdMM093ZUhBVWFw?=
 =?utf-8?B?c0JkOWhzMy9IM1VYbEluNzRUUDZNdFVDTkk5Mmh4NjFtVnlvSGU5MjZRRHFM?=
 =?utf-8?B?SHJ4aDB5TFNidGdWVnRwYVRnSTB5TkhOaUNNNFFsVHVtaFBRRWUxTDlldVVn?=
 =?utf-8?B?OTc1WW9JR2dzdzlGTU9Ja2NyVjYzZnNrNGxtRmFSS3JwMGFLS01FYXVEOHl3?=
 =?utf-8?B?VGxtNGtGRi9YMysvc0VReG1zRUIwV2hFWC8yZkc0Sm5nL3lubHRacGFHU2U5?=
 =?utf-8?B?VmFMU0kxSjMwL2RvVTUwenlJaUZrV3huMjFPZXVpdEVCRW8rWGJMTFhoc3pP?=
 =?utf-8?B?SDNQd0hVRDFqZGd5MnhxY1VaTnBZNkdldnFJRWczT0pJQjNVVVRTQUc1V1No?=
 =?utf-8?B?R2sxenM5K2Jmdi9XRnYzbk45elFsRCtUWFUzUVZVQ1cySnRoS0QwMzVBSjZp?=
 =?utf-8?B?Z01ScGVuRnh0YVJiNUF4QTQrTHFkbU1qa2ViNkVxNE5ybmhrbkVzZ1FESEtw?=
 =?utf-8?B?b1NEZmxQK3NqUm1STXNzNkRnOXZkMVRsUkdCSGhDNndSMU1POUM3Z1pwQk05?=
 =?utf-8?B?NURFYWtXaHJxbkhlUWdiMERNZ3JodGQ3YmpJeVNGNkVYY2dlc1hCMHAxZGFN?=
 =?utf-8?B?YUU4MW4rNjUvTmdHeHVpeVRPNnVTTTFDSlBDdFcvcTJPWGs5Z1owMEQ3dEVr?=
 =?utf-8?B?UDd5eFBUbUh6S2ROeG83Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UCtzT05WM1JMcW1iZXRMNHBaQjcxbHpUaTdJdDh5YzBLbUhMcm4wNHpFV0RN?=
 =?utf-8?B?YjV0NThqMWx3ZTJ4QXhucXB6UkxHb1c3QXErYm02d3Mya2ZHN01yRStJVmdX?=
 =?utf-8?B?elFRTCt2ZDQyWkVkMHJocUdWbjJJcFNHeXV4b2FicjA0TmVYelVUNmFQRVBL?=
 =?utf-8?B?Z1d1V0VTRWxQV0FBRWpwN1hlbTBpRys4UVcrWnlCaVdSS1Mxbk9Zd3VmT1l6?=
 =?utf-8?B?NllvbGFDMEpLb0hmVzhhb3Vyb1lqSzY4TTE3cFp5RURwYlBrK0MzYi85cGZo?=
 =?utf-8?B?UThGcHRjNWZocy94RnlTamFwUCt0UzA0R21pWXVUdjRSN0dWQzljN0poNi91?=
 =?utf-8?B?aVNBUkVBTVgzb0YxV3QvWndaekQzdktGaXl1WUxWek9oSDZFcWEwbkxaT24y?=
 =?utf-8?B?SDB1aGpRQjcyNWJIU2VxVTRrTXBTbzlzaTBzWG9ZVXU3QW9YUE5ETC8xdXdD?=
 =?utf-8?B?V0lldnNUOHJkdk53Z2dBeE9QaDgvUWNXR3lNTkRPeGxwUFB0RyttcHp0eHp1?=
 =?utf-8?B?U2taV3ROOS91T3M3akpxeHVFbmNZTzFhNVl6TnM4ak5GZExqNHZvcUx2NzhZ?=
 =?utf-8?B?Rm1JeGxrRElRRUZXRlAvM0JUVWZZRVo1aFhEV0htVWgxaE1JVDNPS1FydTB1?=
 =?utf-8?B?bnlKWUhUUVl5elVrMVRzVzhOc0o3VjJOSEZJR3RJTlZmcmFJN3EzdXpaZDM0?=
 =?utf-8?B?eU1GYzM2V1Q3a1IrMmhoZDkwMm1VcUZiekF4N1NjMHhYYk5LK0VaZ2d6bWN4?=
 =?utf-8?B?LzFEZ3lIZVFTaDMvNTM4V2l2NDdYQTcwWlFWbFhMR2hLU0JNTWZLOFZseWMr?=
 =?utf-8?B?aC81OHM5emJiM1lHMkNLdGhyaWhjQ1hNcWd1R2M1L1VPbG5iMEU1Ky9yTjlo?=
 =?utf-8?B?eWZSb2VGRnZPb3RUQ0NFZy9hVXBwb1BQbFBwaFNJNG8xVnViWURRNnJtb1Jm?=
 =?utf-8?B?cWltWmRWenBxS2p6dmxhM3VTWk4vaFN5dEx3UHlHUDRjYmVOWUYyWmNvTEFj?=
 =?utf-8?B?emc3MmxYUTZweWJ4c3lzbEZvblJOelBYVVdENVNEeWNQM2ZkN3JEOEE3bjdy?=
 =?utf-8?B?V3JsdDZ0Mmp1WXdyTHErZUpHSE1FelIxc3R1NGhBbHRoOWxLRlQrSi9PSm1Z?=
 =?utf-8?B?eWVZZUd0cFUyM2dNS2VyK3JKc2tIMHpaNlVoejBoUkxqZ1ZOaU5XeERObGpB?=
 =?utf-8?B?VVZPdGxhZmZyNUEzUFVFQmlTN1BtWnBzTlhBYXNoV21LRkREY1VPUytWc2tX?=
 =?utf-8?B?SzhBRGNiSWloZmsvNzlUNzRMWXNQZXpUWjE1NUIzYlBwWnB2Lyt5OVZlSjY5?=
 =?utf-8?B?eXN0KzB4OWd2VnB1V1duMHhzMGpHS1Y3TU5EYmNaeVJTSUwxemRjS24rRXpF?=
 =?utf-8?B?OTZtL0EvMmtzMit0Wk8vN25wK2VaTEVKTk82VzR5TFBFeFEzMFNwQ2V3cldE?=
 =?utf-8?B?NkxJc2wvTzNWZENJVEtLNnBrdVdRcUhrcVpNeXpCWnFJNnFranpMOVphRnA1?=
 =?utf-8?B?NU1KRXFXMDV0ODlaRnVmZHlsNWxhZUZydWd3cHlrdXU3VWU4NUZlb2tpdnhX?=
 =?utf-8?B?QmtMZ2grVnBPcGo3TlRJNXdrMi9vUTVhR1YwTnpqbkdUbGx0ei9qdTFobXZh?=
 =?utf-8?B?T0JkaGxBL0VqeVh0OFBaVkh2RGtVVUVFQkxCZldyZUNvTDlJcnRKem9tdHZv?=
 =?utf-8?B?bzhRL3Z3RW5ENjIvZGxGNTl6V085SzlHOWREUURiMXNveUIyZlNYaXJPTXdD?=
 =?utf-8?B?NTB6UVhXNmNVaGNITWg5VkVkNndVQm9KeXN5a1VaQ3F4S3ZsZUVtbEJ6OU1r?=
 =?utf-8?B?VDlMWm9wSTg4dzdwRzdOQ0RKQWQ5MnpTVzRKSFZFM0R2WmlrNDFBbHBrUVM5?=
 =?utf-8?B?Zng3c3NiS01LM3RCZDRaVFJkakNkRnlzaFZSbWpZdThoQXcraXY4NSsrdWJt?=
 =?utf-8?B?Y1M1UnpFUTRObXZVZ3RtdVRUWlpmM1RIVm1TR3hjcyt4WTljRk9wTUlpL2J5?=
 =?utf-8?B?MVlTSjBrSXJSRmZYUGxnQ2R1eFNEc3pXdWpyS3ZENjdmUlBWSFRlNUt4N3Ft?=
 =?utf-8?B?SUFoUmkvTEJodFVWazQ3VDg1ak9kdmcyL0VjdHRWb0RwT0psQlRzOWNXRG0x?=
 =?utf-8?B?bEFEVjNFWFlhUG9xc0ZlSTRXMnlLSXFIUjE1TER4b1ZYZFNLV0VmaU8xdVN4?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8062dfbd-6473-42a3-4f58-08dcbab5c47b
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 10:01:43.0322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DupXQnKa/MzPdEZmbVtOf+FDtHjoD3rSKsZZ3HTNNVsckk5Jb0PqG/MQhCMYtupSRfh6EBMYWHYjLWGCgMF7xrSOTA0YEOsQLEQJf06I5hw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723456906; x=1754992906;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HeE0z2Sc8K5JEP/w2InPqQOG7faQ4q+wQlYA3GMw9U8=;
 b=f15cy6dUyPGzUUzYV0/WPXzdAdUolfK38ZiSTyAGkBpspBg0IuIm79ch
 VbeiUa/qhx1BE8FdINIoAiqQmqv1vCLMD/elpEeNbl0c0N2qqjG3LMfH7
 akoPh05LyZpLR6yXgmH6FjBWaCtC78mhuWGbEZy/x3b0jpOwgYECRhMDG
 UXvQ2PPXwzl70ro6JHKfE1YpdrdPyTOaJuIGgi2FRgmMVM7fVi19cnQD8
 FPgQbcbCb2PgdBKMvsR5pfd68IDSTej9TvJZz1DZ/Xvr9DDG3dvizyMKP
 0OmsJHi8nOiYOY9dG3EGVi8JebWXQrVkwMXvOQlkVwr/TwHwIT3gFyei5
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f15cy6dU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, Sai
 Krishna <saikrishnag@marvell.com>, Ahmed
 Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/8/2024 2:24 PM, Alexander Lobakin wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Date: Thu, 8 Aug 2024 13:04:29 +0200
> 
>>
>>
>> On 7/30/2024 3:40 PM, Alexander Lobakin wrote:
>>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> Date: Tue, 30 Jul 2024 05:15:01 -0400
> 
> [...]
> 
>>>> +bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap)
>>>> +{
>>>> +    if (!PTP_ALLOWED(adapter))
>>>> +        return false;
>>>> +
>>>> +    /* Only return true if every bit in cap is set in hw_caps.caps */
>>>> +    return (adapter->ptp.hw_caps.caps & cap) == cap;
>>>
>>> Aren't these parenthesis redundant?
>>>
>>
>> I think they are not. They wrap bit operation and also I checked it
>> with checkpatch script and it doesn't complain about reduntant
>> parenthesis.
> 
> If the object code doesn't change when compiling without them, there are
> no compiler complains etc, then they are :D checkpatch doesn't always
> catch things, but I don't remember whether the compiler won't complain
> or change the object code / logic. Could you please check?
> 
> Thanks,
> Olek

Okay, good point. I checked that and they are not redundant. If I remove
them then compiler complains and object code changes so - parenthesis
stay with us :D

thanks
