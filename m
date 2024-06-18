Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7511F90D267
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 15:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B71AF81FCA;
	Tue, 18 Jun 2024 13:50:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74o-c8RnLn6I; Tue, 18 Jun 2024 13:50:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1FB38204D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718718608;
	bh=fHzNatcUxYF2mLWbFjqOg7f7VW4RioErGAY9z/Dx/ao=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=elfBKlqHQdv4WLbUYxjYtZWPK646dQPPgvTfXCPgjAmMnbWAAdN6nTd2lppsTI/cB
	 u7HDlUB7kvOELXOxJa3MR618owGG72+1GYeg4mxnGM3Nr45j21FxodzQX9r6zIM0ds
	 hrUD+rMZrCVbqRtHPoyiQ2Dw7Q62AQGFuVpDFmKKm+pu4HPz0Unpsw/5EUJYfBK2j+
	 +PVeyACjkMR7iQ5NmpdTEL5xDSQ4yYK5DW9A6mHBqWTSPaAbTNn0bdrjXpEjAHwIK5
	 zeh6X9JKUr3FjuHeWtph4ff/1IqTaA3O+FCNMY0iRqYk59XKcjv340/YLGNtoPJoEl
	 3lBQ+EF7tnuRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1FB38204D;
	Tue, 18 Jun 2024 13:50:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAE931BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7859605D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:50:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rz65clpGEKSj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 13:50:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A230F605CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A230F605CF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A230F605CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:50:03 +0000 (UTC)
X-CSE-ConnectionGUID: KeIhGFsvTMyqwBoDgNg1Fg==
X-CSE-MsgGUID: k64GVU9RTRqyNtTQD/4yYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="33133687"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="33133687"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:50:03 -0700
X-CSE-ConnectionGUID: kbYGdOTITkquu5KQj02C8g==
X-CSE-MsgGUID: VQKkNtsvQUWYW5qSKyvtfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46104952"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 06:50:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 06:50:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 06:50:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 06:50:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 06:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H16g+VkjPBZ53IGdZkGxCPZlLtjztRqvUQNmP2IJvF/ez1SDwFGYMWLUJlf3YwIlz0D0/g3x5Pi1LFNg594CA5mHa6AIMWoVSFv0pAtk9PBbqvetdzotX+s5+ttl6TVHNsRq2VxpkItNu1d+LQXMLG7oVf+Ng7GehwX5ZZO+YJaR/haNDMKKfygAYFdle0j2l8uqvzxWEI2YBIkYuG1hgEc9NdQXQn+hdTae2GNEqGU8NfVL47FkgolHs1q/zIs2Eu4HeFK2D4YT5qvhOwmf2U7R0p1PRoU/sxpbiyBwuvi8cEiokOLiHXR5LBM53iPjA5AV1nyVRFaipyAyzTTrOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fHzNatcUxYF2mLWbFjqOg7f7VW4RioErGAY9z/Dx/ao=;
 b=NU5VoXFLBul0C0fBg7SxyHehPo7SmsfdYTU3Yo1j+DgZs0bDqQUNNys+NRQfYrkdpXwS2mWOWbQNSJecVW19dn3+7FDT7TpjdTpGmcqzTcKyjfESPNPhGi9E4Laj+eE27YTG624wLV5EgVTKxxeFobRH202iC2nmrC7ScWgDcQkbhQeGmNyrBuB+X5RylskGGFuqbhHUXJPt1BGYfMJJzz1SJ9mlMga+ER+M0s5eG5xcoQ6eL4B7l3dnrcbBeXHBwxmffEmSe+ARU/0GEj82yab79L5tVQ6sXS+VOMIfuqp8PARv0S2ItPsBAVCyUxghdzFhdI2l+/hZc9bmu4WelA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CYYPR11MB8388.namprd11.prod.outlook.com (2603:10b6:930:c2::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 13:50:00 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7698.017; Tue, 18 Jun 2024
 13:50:00 +0000
Message-ID: <07519e33-23e8-48b1-a445-c128b40e1c36@intel.com>
Date: Tue, 18 Jun 2024 15:49:54 +0200
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <anthony.l.nguyen@intel.com>
References: <20240618132111.3193963-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240618132111.3193963-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0128.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::26) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CYYPR11MB8388:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b5c4730-79d3-4fe7-86e2-08dc8f9d8c26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nyt3QjkvZ253M0JNRFczWHViSjBsZThpR0k0dENSb0dHZk1aU0pQR3owOG9D?=
 =?utf-8?B?VUtya1o5dnFzYVhON0tYSDh2Si85VFdqYnh0SzRGV2dzZHV1emFZVjFmQnVB?=
 =?utf-8?B?VU9nMzRaM1g5aENRR3RxejJaamhCc250dlZGNW1IUE4rbUM2YVVkWkdFblNE?=
 =?utf-8?B?YkhRcHBrWFdZemgxM2UwMFVTRVRYLzR3Sk9ZK0NWd2I3aFJtM1hJcDRwSFI5?=
 =?utf-8?B?Y2p6WVRpSW5vWU91SDNTYmQwYjlTMm1xelZnTTBoM2JEZ082ZTRlaWdibWg1?=
 =?utf-8?B?MThuaUxybHpIUVNQbVFmMnE4YnJ2K0J3cEt1RnBUL2ZjMWRTNXJyMWZucW9w?=
 =?utf-8?B?andTc2dpYnRRcGNLNVB5aWh0SUxSOEhPTURtczNvSm85T2tLcjV6dllLRkZ2?=
 =?utf-8?B?akNsQVlPZkgyWWJoM01ybHFHSVN0a0VIMUpUajhEOVd6MlQzalhpZCtlM2E4?=
 =?utf-8?B?SVdKNmU1TjZxeUU0RGNpc2ltdkpkM0c3OGxNcVVCMlJpbmZjMzVsdG50d01k?=
 =?utf-8?B?bG43ZGU1WFkyZzdMZlFMTE95bU1UdEppc1E3K1JUVlc5UDhCN1hVL3pnY0gz?=
 =?utf-8?B?OWkwSzMwejBrQnkxUTczdXFNR29PZUZZc09VMEc2Q0JnT1JUTys5bkdJbjcv?=
 =?utf-8?B?b2dLYVlWWk9hMk40aGJIMVBGdWliZ2FnaGhKQ2k5WjdaUmE2Skc0OFE0M0dN?=
 =?utf-8?B?N2JwWDYrbjJKSUQwamFiR2EvWnBxbWVDQXpzVGswNXkxU2JhQ2NBZVRMSktr?=
 =?utf-8?B?Z0k4TnhhTm1CTDk0U2tuVlVLelo1T1c4Y0FDb3F6d2xmbmdrUCtvK0tLZU5O?=
 =?utf-8?B?M1JvQmdTanpNRlFvYlRmYzhJYWJSK3hqTTE0NmR6R25mMitQaXhTTStSblV4?=
 =?utf-8?B?ZHY3L1ZhQkRrY0JyTlFydEFwdWMrQ2FDT1d0RFdSVVo2emJMSmpoc1pOZE5I?=
 =?utf-8?B?VGNMNmlWMlBLT0dpZTlaa3FjcXQxQU1Zb1d6UG5KYUhjTlB2dTBOd2hYWS85?=
 =?utf-8?B?aURySHAxK20xaDFpLzVaOEVZRy9jTnpmaG5UamJ4Yi9xczYyOVYydzl1UHlK?=
 =?utf-8?B?VUNKemtDOVBpTVNjTk0wVHFVdGZER254VmpQL3dtbDJSckFiazBsMjczaDhR?=
 =?utf-8?B?UklaWHpMWlNQUWlOa091V0tzcC91T1lDbXVsd3BJMC94QkJsSElUZ0M5R21u?=
 =?utf-8?B?bk16aXFVaXRPL3BQTTY4REFFaDIvVTR6QWwzLzR2VG9RbndMd0xaZituNGx6?=
 =?utf-8?B?U3ZiYVkzSkJYK1UzVzhyY1pBdktPOGRUczJ0bFRwSHR1SGpVdkpaZ1BOTWlo?=
 =?utf-8?B?eHNrRHBPbE5YZTEzWng4V0J1dXdkMUtFd2dwcGIvYWd5blZweXh2emxxK2VG?=
 =?utf-8?B?L29jaUMxNmprUUZFSkZhRDQ4dllVVE1VOXN4M2xWcDdjdGUxRmYzaWRRdWF1?=
 =?utf-8?B?RFpoUTJ5Qm54M3packdlVndzeTN4MDJ0Si9EVDBpMXNIVDNXcXpNQzVWS3A1?=
 =?utf-8?B?VTRBcjl2cS81V0Q5VnZvNkp3TUZWNE83b1VnSFlWN1VQWVZvc2lvWm9oNDNV?=
 =?utf-8?B?dzBjNzBxV2NxbzhFWjBiblZ3WlFFbk5BYkFmN1plcTBPOG5WdXlwZWtxVDRW?=
 =?utf-8?B?eE5DcmZkMFZIK1huVmxJZW14L2dhOEJlYzYzQzZOSDliSmdieDdCczBZZWg3?=
 =?utf-8?Q?e4MBh1u56IB1gzPy+Q4J?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHZQSkxzR0RIWWJrTk4xL0p0d09FNERIWmNDQlpNWmdVVGVHOGNub2R3RW9k?=
 =?utf-8?B?djV5WTB6dzkyZk9SWURVTWZHRzIvZDlXek03VUV2Z0RJZEQxeTdwazV1Y2do?=
 =?utf-8?B?WUkydW81YWVhV1R3M01pTHh4NDFIQUxDQmNPYXY5cms1SytWeDdwVmVyaGpi?=
 =?utf-8?B?WlRIRUVnQk55VGlWdDhHRmFZTk04Sk9oc0Z5eTBXWk5YbmMyRGRIQTlrREhY?=
 =?utf-8?B?Y09OOUU2M0w0UnBNNXdoblNZRGdqWHNZQnMrdVVneDRhTFM5bEZ3Qm5CMlla?=
 =?utf-8?B?R2xXdFRNN2FQUUM4ckYrbFZqUURpZVAwcXJRV3p3b0t0WlB2TjM1enFNRndn?=
 =?utf-8?B?U3NGWUVRQ2ZtdXE5NmZMSHRMZ0cwbG91Y3pxVnlRMk5yV0lhTVhXVU1hOGhi?=
 =?utf-8?B?ZzVjZEtLSWNBR01PdWNnYithYXA1c1F4d1VsRlZoSTRhTlJWYTdDM1RMa1Vh?=
 =?utf-8?B?bEc2b2hNOGJBUXdSL01PelNSaDNucnNlbzFVSnIwYVBNa3g5dDBGNC9hamUr?=
 =?utf-8?B?Wld6Uy9TWGREN05IME14ZUNHZTRQY0JlVXdySm41cmM3TzRNejUrSmV1R2FF?=
 =?utf-8?B?N2hGNi80UzQ0OHFyZWdjSHhEZUdvbDliRHh5NkFOczJ5aGp1VCtkRVJSU3d2?=
 =?utf-8?B?Z01HNUh1MDBhY3lqaVpEbmlpZGlSRWwvNFJQMnFLYWlkK3B2VW1hdVlCdTNn?=
 =?utf-8?B?MStETG92L1VaMFFCRkFTU0c5VWF1VzI1RjBqR0xNVlNPZjJCbTFsOWlqaHI0?=
 =?utf-8?B?RUpCWFo0SU5TMFNZYmtWTzh2RThSMHZ1cjlyRE1xaWxqZEE2cFo5SzNNRkc3?=
 =?utf-8?B?YXRDdmtOTERTdFdYbWZUTXowUms2cTR5dXo4Vkt4STdUNTlvL1VCTUFSR1lK?=
 =?utf-8?B?eWJKNXpSeFBVS3JXcStSSFNGMThNaGc5TDBDc3Y1OUF1dldrc0tDMmtITlBF?=
 =?utf-8?B?YVdTTWhXc1NUOUtueHh6L0FxekFHNnpHSzdrODcweG8yU3c2Q0U3VWN2YTRO?=
 =?utf-8?B?S0xqZG5IUXREaHVGYTRpbHdSRzErY3dkK044S21KQTFGS0gramVwbnFYQ1Iz?=
 =?utf-8?B?c1BreVhDT0JiZVN5a2FmVmJyMzZ5TTRpdE82WkRGTlYrTXZOMUJyTytwREQ4?=
 =?utf-8?B?UEZMdHk1cFNoYkFIeXkxZ3ZGMDFEbzJXQmQ2cERleGt4UjBGTFRNWTlHQXdi?=
 =?utf-8?B?VzhHbElYa25WSUNZZGNjNS8rQkNEWjh4cUlyaG5SOFc1Y2FWRkZUUVZUVnN4?=
 =?utf-8?B?T3d5ZEk2anF0RWNZMVlTUWRiVEJiL1h6cmpDWWxzUEMzcVpqeDhtdVpiS2k4?=
 =?utf-8?B?QUZnYjNrVHV3RDVBa0g5aVNOSmdPTkZ3VGpEUDJMR1ladUcxQUNHYTVLSjZW?=
 =?utf-8?B?WlFGUVRjNmFSbTFibGpCNFgweDVjbytqR29Wb2o0WlJpNmxXMFo1U0dhemZJ?=
 =?utf-8?B?RGkwOXAyaXB0WDNTMTZhWUdod0xBTmIvclVBbWFyb2Y1dC8rdFJLL2hqcUtT?=
 =?utf-8?B?MEVRZnJLblBSazl3Y0JEYlRVcmlGMWsyT1ZneDhLVTJIRVA4eDE1Yzg3ZFIv?=
 =?utf-8?B?c1NrUTlRVHAxRGplYjdFaHoyblV6YSt3MDhpRWQ3U2hEWlJWeTE5a09kK0RB?=
 =?utf-8?B?aFVmQ1dxZDZVdmN5MmtCWWZncmNadmRibERJVG9MZlF2N08xVHphczhoenFN?=
 =?utf-8?B?TG9yekNCVDNvNUQyeFA3SkZGQWVHWGJacGNZckswR2wxVzNVSnZibHRKZjAw?=
 =?utf-8?B?WjVyVFdxUktyWWRLUHlPNmwvNitUK2VORkovM3F4UmdZejhpRlRLYjI2V2to?=
 =?utf-8?B?ZnZDLzA1dVlSVG9nRk54dk8veVkwcmM5ZmZmT2ZYeHlBaWNPdkkxRUFoVkZk?=
 =?utf-8?B?OTRUOTNLZDZudDlxNStNM05pYk0vNFhSWXNadzN6eUMwL2w3cTVHbmNMclpP?=
 =?utf-8?B?Z1JiRnJ1bEhucUY2WENlMmZzVExGNUVYN1BEZVhzWHhwNU0wSEt5V3VDUk8w?=
 =?utf-8?B?WEhlZ1pYY2IzQS8vbWFpcEdKdndwSXRxMnR5aTNwbldUVmY1SDlzU0xFZU1a?=
 =?utf-8?B?NkRBVitMUUlYMVZ1eGJVaEE0dXVabDZ0VUJJVURheWJTUlR0TG5GQzZCT2k0?=
 =?utf-8?B?a2NVYTVxaUhDUDBZdGlURHUxSHo2TjgxZzhxd3NWSURUY2hkaXgySzdjcnJK?=
 =?utf-8?Q?Q20FSI2Tr3EwLruEx9uB6zo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5c4730-79d3-4fe7-86e2-08dc8f9d8c26
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2024 13:50:00.4591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B2iDrjRWNydOzTkQAGkKAWP1xg6Z47KJcxaXUyMZh6tHwdYx00SJqt4IRroGteCgMSbPP1a0krEY+AD52f1fmUQzrzBS12+sEYd5E6Wegvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8388
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718718603; x=1750254603;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XKYjAsKRs1adMwNCWld0ontnlCux+uB5hk4ST+JKFbQ=;
 b=aePpCj3UaclefYe78wEfJF6d78ZNBeCJ4fXcqEIhxa9vB1KpsSIP/ugn
 xdzIiqiRlWKl4PejqT8kTT8gObrlf8jYvWMFAaMXUrsBCY14cNdy5+LJC
 9zo1UXUO27yvco8rWjz6yKvlkKf4CgFzrVkDcFPpjbzTb0yJ8+RJ05NuX
 3qbRpr4TT6FIzXoDZDN5lLXQlug1lj73+03TdPGTooitCcuaOMcp5roB1
 VGG5l0czDzNu6BlUm12Rb6PNqzylV7T81io/dVq5yPQLPImDyme9GkONZ
 E9E1Cm2ggpYN/6guiOSNwPP/VZQAAI7uYrAEpK9VxT9UeaoGzg8HhV3re
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aePpCj3U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: netdev@vger.kernel.org, Kelvin Kang <kelvin.kang@intel.com>,
 intel-wired-lan@lists.osuosl.org, Arkadiusz
 Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/18/24 15:21, Aleksandr Loktionov wrote:
> The bug affects users only at the time when they try to update NVM, and
> only F/W versions that generate errors while nvmupdate. For example, X710DA2
> with 0x8000ECB7 F/W is affected, but there are probably more...
> 
> Command for reproduction is just NVM update:
>   ./nvmupdate64

nvmupdate64 is not an upstream tool, but it's fine to mention it here,
as we don't have a better alternative for i40e as of now

> 
> In the log instead of:
>   i40e_nvmupd_exec_aq err I40E_ERR_ADMIN_QUEUE_ERROR aq_err I40E_AQ_RC_ENOMEM)
> appears:
>   i40e_nvmupd_exec_aq err -EIO aq_err I40E_AQ_RC_ENOMEM
> 
> But the problematic code did silently convert EIO into EAGAIN which forced
> nvmupdate to ignore EAGAIN error and retry the same operation until timeout.
> That's why NVM update takes 20+ minutes to finish with the fail in the end.

this paragraph tells more about nvmupdate tool problems that the driver

> 
> After commit 230f3d53a547 ("i40e: remove i40e_status"), which should only
> replace F/W specific error codes with Linux kernel generic, 

> all EIO errors
> suddenly started to be converted into EAGAIN

all or just this one that you are fixing here?

> which leads nvmupdate to retry
> until it timeouts and sometimes fails after more than 20 minutes in the
> middle of NVM update, so NVM becomes corrupted.
> 
> Remove wrong EIO to EGAIN conversion and pass all errors as is.
> 
> Fixes: 230f3d53a547 ("i40e: remove i40e_status")

That is a proper tag, and the description makes it clear that we want
the patch finally applied, thank you for the efforts to make it well
described.

> Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
> Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>

this 2 line removal was indeed developed by two of you?

> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v3->v4 commit message update

Please fix the subject line too, it's what will be the most frequently
read part of your work, and with stay in git for decades. You could use:
i40e: fix wrong error code replacement

and add link in changelog section:
v4: 
https://lore.kernel.org/netdev/20240618132111.3193963-1-aleksandr.loktionov@intel.com/T/#u

> v2->v3 commit messege typos
> v1->v2 commit message update
> ---
>   drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> index ee86d2c..55b5bb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> @@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
>   		-EFBIG,      /* I40E_AQ_RC_EFBIG */
>   	};
>   
> -	/* aq_rc is invalid if AQ timed out */
> -	if (aq_ret == -EIO)
> -		return -EAGAIN;
> -
>   	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
>   		return -ERANGE;
>   

