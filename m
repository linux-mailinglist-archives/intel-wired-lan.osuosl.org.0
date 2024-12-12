Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BB69EFB9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 19:54:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C401845D1;
	Thu, 12 Dec 2024 18:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rDzcroXg7O_Q; Thu, 12 Dec 2024 18:54:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEAB5845C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734029644;
	bh=ptHMgGOxFQ9EHdUEOtxJvTaNd+D5Tn+FJYnCUXiG2nk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O76m/+TXPi8oT8flVd6Jgrftzon7wLWHfBanZjHLcmI3NmgG2v8BNzfzIqCqyQbk9
	 852nFFglCP4GekEDeBUlx4FdXTORjGJf4Pj4ueCsxMDzu5Y5tHRQsbdBbTC0LGl3NT
	 DrYOlSEYye0P8I89ulbkn460xNhAMWm316Re+pXtEnEJulfWPDouLUmEh/vmc/MpnT
	 uYCiwxbLL/ptMta6iAf7zaqO90BLujdCGydaelJBj/W+HWC+oaKXsuD6HEJStppMSB
	 VHBoVPadNPVw/CMQb+3A1uEkQmnXRM28/UWZ5DshZSkbnm3J8BS7HT6U+OXTti5mXL
	 Dz1UJWBZLfrzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEAB5845C0;
	Thu, 12 Dec 2024 18:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E4071146
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 18:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E91641586
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 18:54:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tqZtkhvQ45Z7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 18:54:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DDF6C4061F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDF6C4061F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDF6C4061F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 18:54:00 +0000 (UTC)
X-CSE-ConnectionGUID: VRc2nXu2RJKgWwzH0D3eiA==
X-CSE-MsgGUID: c1UfmPRTRliVxsPNJdp1Yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34193344"
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; d="scan'208";a="34193344"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 10:53:55 -0800
X-CSE-ConnectionGUID: 9eyhwMQET7+Kdjtdne+tWQ==
X-CSE-MsgGUID: 3GQQ91/KSJ6H3Uk31bDHAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100886112"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 10:53:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 10:53:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 10:53:50 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 10:53:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eP+C76XRuUr5TYVuRZhX/EEm9oDs/ignxaoCj8Fg/8NnAFbYTRY+CMaVwMujWjV/X8GHQvnZdfOTWPedrbqn9D37eFk1+2982PEj44nCVgULZQxdzCNh8IHw0t1HhGVVwMmGIH3+OUoidNuB1O3lGLhvU2nL2mKYjOcMF4ErDwhGU1pcx2qgUiM1+7eY93LODn4KtjMyLvgCZQAjfd34vpOF/uuGeSYF0+L6YcYpVP24toOo2qbPCGmNCnkz0hAvYYRYblyIpLgeq+WPBMCniJ6UXltBZgSUzsBuOzf+iJbN1MiGYLqKkNVxfh1zH4kCdASeHfH80oQDugvjlTNGQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ptHMgGOxFQ9EHdUEOtxJvTaNd+D5Tn+FJYnCUXiG2nk=;
 b=j0yHLDWRCivwkjFE97BtLvpqvSTvM0PCzbsmiQJpzUnXYZZYF/oz7zhLeteAkzVNKEI0n75cweTno6UrlR2AK0XVuG2SXXtho3SH6kwE1GUZs1dKxsgKUDxpSRUPzrB11o1q03hvNibS4vtteU/5MgyQjAJREFmeZrgo0Eqz8/hxLDOApQKWT9e0M2avo8ISLxOX3p99eR8wMx0SM2pV6l8fVg5J3lPBzZRARIhC24N5FG6pggEvbxWWlAEStM1EBCd/JxPdhtKD0sjgMfQ0M+HwUVYELCIMwO+gwT5YKm8bO5YWQhJSXNqX4xLVBlcVsjokTjr+PHXA3XYNC5qoFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4696.namprd11.prod.outlook.com (2603:10b6:208:26d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Thu, 12 Dec
 2024 18:53:46 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 18:53:46 +0000
Message-ID: <a7de2973-7802-4716-9aab-761d5be9165f@intel.com>
Date: Thu, 12 Dec 2024 10:53:43 -0800
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Sokolowski, Jan"
 <jan.sokolowski@intel.com>, "Connolly, Padraig J"
 <padraig.j.connolly@intel.com>, "Romanowski, Rafal"
 <rafal.romanowski@intel.com>
References: <20241115194216.2718660-1-aleksandr.loktionov@intel.com>
 <SJ0PR11MB586584A7DD6C2BF831B358418F312@SJ0PR11MB5865.namprd11.prod.outlook.com>
 <CADEbmW1otJrU3HgcJ2mx22r50Xjmcb15LxJ=h8R8Cs+L0QBGSg@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CADEbmW1otJrU3HgcJ2mx22r50Xjmcb15LxJ=h8R8Cs+L0QBGSg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0115.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4696:EE_
X-MS-Office365-Filtering-Correlation-Id: bec7cb0f-ee19-4af9-0783-08dd1ade4eca
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bi9WTGJINVhDempnL2Q5R25mbzBzYUExM3Fmc1krLy95a0xJaG5xSy9NNmtC?=
 =?utf-8?B?d3ZZc0xTWTRXS3hoYmdyaFc3NTdRRGJiV2Q3eGF6cnBVL2ZJUmxBaHorM09p?=
 =?utf-8?B?YjFRQjYwaEdPQ1B6WEcrNHI2bDdteU5xdTJiUTZOVjQ5a0Z4SzNxYk5XZnFF?=
 =?utf-8?B?VW0vQmNEbUlqNHAzYW5wT2RQekFrVmRuS2hkUk9RanRmdjFKczd2dlVFNkRQ?=
 =?utf-8?B?MFBBb29QaHhkMnJuU0xMMmRZeGcyQzlxbk5Wc2pGcWtydlhBWFBvOCsrbFlN?=
 =?utf-8?B?TlZPbE5iRU1uZW9XaEQ0K3hEYnJmWWRFU05EbFJyZ0lNOGFKb2g0L2lnbEVm?=
 =?utf-8?B?akphZ2lsZ0Q5VWNScFJ2cDFhaFUyU3VhdEZBKzU5WlU0WHlOS3YyeTZ6bnRE?=
 =?utf-8?B?d1dUQjJNazRCVEtBeVowQVdEcktyWGJqcllNRlNHQUJLK0tkb1ozM0N4eG1K?=
 =?utf-8?B?bEpDL3AvcXp6VGpncmlFSjZQeW5GRFR3T29uWTBFQ1E2VzczS25rcUxoQkxO?=
 =?utf-8?B?TUxMWnpMWU1YdXd2SGp0R3c2MGFmbDdJYk9GRlBIS0RDMXFsS2E3Rml6bnBk?=
 =?utf-8?B?d3dPRmRZL0N5WXRHQ2VQSHVHT2MrbWR3NXY0M2I0ZjVkWERCTkxkeDloVE92?=
 =?utf-8?B?WnF6Ly82bkI5SzAzZ1d4U0JldDZHeWlrV2dWMmRMZG0xYjY0a3RrSE9TRURm?=
 =?utf-8?B?V0dCWEZhdFhTbkhxd1VLU09pV2xrNWhid054U3R3bm5KL29mVlhtcnVvaUlO?=
 =?utf-8?B?bjNUWTh6TFMxK2FnclRud3JkdWcwa0RxdE9GSVoxbWhGNDdwczBzLzNUQ0xC?=
 =?utf-8?B?WS83Q05ONzMrT2RwWHpUdHhuYVZEUm15OW05bVAzMmlHU3pDV0lZYmhvZSty?=
 =?utf-8?B?b05BdWErcWh1Ym8yeVgrbzFlN1VwZFh3R2VaY2srekc4cG03YWdLdGNSTEN4?=
 =?utf-8?B?MHRlM0pTa01YNmFCN0FYRHljUm16eS9aRS9WS05DZWw0THRDT3RCTHZESXJX?=
 =?utf-8?B?a0R1SDllaWJWWVAvaHNFT3czRDRhTnZwYUtsTDkzaEpyVThNVHVUTlFLdXQ2?=
 =?utf-8?B?K2FOTVEyam1SMzdtcENua1hGbVFIRE5SS01TSUZ2emRzVnd3VjVodEhzczVW?=
 =?utf-8?B?SmVvTmxyT3VkSXJnOGNGQ0pKUEJ4aDNiM2JXVzJ0NStLNGFNMmxmRnk4TWxJ?=
 =?utf-8?B?OVBQUXdHcmhmRFFaSy9UN3ljckQwZjBUbkZLWFhGazZHQUtmS1NId0E2dDhp?=
 =?utf-8?B?cHVpbjRIQ200dmNwMkcxUTc1amJMK2NXU0NwSFdCV2JOdmxqZFJGd3VmRDNQ?=
 =?utf-8?B?SlM1WnNMSmViSUFWZ2RUUlJPamhFNmI1QVA1R1ZOMkV2UnA2dFNqK1l5WUhZ?=
 =?utf-8?B?eFJsa1VrRVdXVEhvcDNaMEFtbUNIbjdwS2F1cHNERG00SGpSYWpRb3FVNVkr?=
 =?utf-8?B?anBmV3BEcEZIYnYzanNKdXlqelBFcmpDWUNFeEZkV3BZOGNLUlB6ZzVqYkR6?=
 =?utf-8?B?R0tnM3RBcjJLSHpSSGhjK0hoZGZvNjhhaE51djRKdVk3d3BmWGdzQnJZQTRJ?=
 =?utf-8?B?Y2gvbmZzOHgxR21IdnhsbFNWL3dwZGs4SG4zSU1JZUF4QUhLS2tmQ2RRbjF6?=
 =?utf-8?B?SFN0aGZuWnY2SU9sRWtIa3BYNUtsNnhVekx6RCtWTDZidnIxOERuQ05KZ2k1?=
 =?utf-8?B?Mm82UW50K2pNd0lBdWk5czZSWUpqL1UyS0VoMW50WDdXaTZoa3hYdklsd1RK?=
 =?utf-8?B?MkRjdUkvOHJTZHNWRlp3OVJZdzgyQ05UVDVZRTFFV1FTaWJ5c0pXamJnOUVV?=
 =?utf-8?B?dWVRaVI3a2V4MUd6Z1hNUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnM0bDArZkZxdTN0Y0lHQjZOQ1VLcFhKMk5pcTNpN0pjUDVKdEFaNzJnWVps?=
 =?utf-8?B?T1NYWmgxRXhCYTBKMTcyTlhwT2FZcEZDbGtlbXhMRXFvSndJRkZvWWU2YkdM?=
 =?utf-8?B?NkVFeGdCN3Y3SjBNUEp4Vk15dTRVVFJaclBSV2dPSExRSkhCb1RYV3NkS0hy?=
 =?utf-8?B?eDB1ZnphQll6WkN0WHVNSXdmR2UvMnJOakN1RXQza2RMMGdSaTN3MSszb0dw?=
 =?utf-8?B?YlI5QnVyQ0RYNzdFL3lqSWw4T1h6NmkwQmROTTFtS1BtazV1U3l6blV6S3I4?=
 =?utf-8?B?UDBZZUE1WUFBWmNFZUdJazJ0cnpzNWsydEdCeTRxQ3VXaUM1K2JmLzlqNVdh?=
 =?utf-8?B?YmpCdzZ2cFowcXprbkJxOTk5SVJtdDRKUVdlNjhOYWRFUUppWGVPVnlXSXBs?=
 =?utf-8?B?bitETktDWWp3UTcwN05WSzR6SXNXd2h1SXhFY3RjSGtQWEx4U2tVWDRreTVO?=
 =?utf-8?B?bURWSUlHMXJXdlRxQWZGMTU2OGh1WmUrKzZ6UDdMUUN4c2xaVXU1a0VZNkY3?=
 =?utf-8?B?LzVlQkhITWhBWjV2S1BXb0VpYjRtK2tTRTA4WXNpWDdiV1UzanpBdkp0Y3FS?=
 =?utf-8?B?Mm5MeVpwNUhUWjE3Mi81K3VlMU1ZMTcvMHpUVno3b0x6Y2xFRGlVWVZSTnov?=
 =?utf-8?B?bFRDV1piU1FSZmxkNG9vVm5kTjJ5ZVl3ay8vYytTbmQ5TEwrdXMzdlRxZ0dp?=
 =?utf-8?B?RllCdkdJNEpDOXJheC9sZVBVSjJ0OUxIVk9kL2loZGdvaGlQcGgvVHBFZlZI?=
 =?utf-8?B?bUxqL1dySVhPazNLa0RPSklUVkhBWEVqZXgxZk5FdWx5Q2E0QWZjbkZLcGxO?=
 =?utf-8?B?eFpsREFMbG1EczhsdmZnaDV2NzFHem9ENHczK3FsZ0VjcDZDN2RrRVBGMlRp?=
 =?utf-8?B?RWZrb2hRUlgyU0JtWndqTkl2OTdxeEtaYUNJUVpWbmpiRUpmREI2TFJGVi9h?=
 =?utf-8?B?NVBhVVhlaUtwcjExUTBGZXpMUm14UXlBeDNCdVZmT3Y4cEU1MWQrYnltaUtL?=
 =?utf-8?B?elVHbmtrTTRpTGFwYTZ5Mk9SblBFUU9uV0xoYTVDWXp4OUxYL0ZZZUtoYWxF?=
 =?utf-8?B?ODBVNFlHTVdBNjc4VFhZTW5DekEwai9pSVg1TVRuOXpBTDhxNUhYbXcwcmow?=
 =?utf-8?B?b3ZhUU0xQ2NUNHJ1RFdqaFdGU2hZTmE2Rjc0NzVPVUlhMndSNFd0cExyL1h5?=
 =?utf-8?B?UHpPelBvREJJSXpSMTFMZmFpRWpkQUVPRGQwUkdNbFVQL2VGUDJ5Q05FcFVm?=
 =?utf-8?B?UGpLVk5YdHNpUTJkSEhvRDRtQTltRzIxcUNiSDRFRzFFOXNmWXpmUXFuNmlv?=
 =?utf-8?B?Yk1SeUdBaGcrWWNIM20zU1dNM2VCd3ltVEM3Y1luQlc1VVJVVm51SlNMUEt2?=
 =?utf-8?B?enB5VFJGM01RajUzZXlxd3orL1pMZVQ2Q0YzZnZ4cE5jc1haOHpJY3p4bi9W?=
 =?utf-8?B?cVBhbjNRUUNmZnlqU3B6ZDQwSFhncFQzTlpJSllWaS9JNnVjMXJlbFBLU0Nt?=
 =?utf-8?B?SFRoMktUb3lVREVUZnNmeDREeExXSExjbmMyeFp2RlAxSGFPdmFQN1hDOXpV?=
 =?utf-8?B?Y3FaeTI1VTZTZW5WMHdEMHk4bkxnK2tDbjV2WUE2TFR3WUhnekd2VWFZODlM?=
 =?utf-8?B?aDYzTEszMlFLaGtadWpBUzY4Q3hiRG50M0lXNmE5RlZEbTlVZVIrREpxRUpt?=
 =?utf-8?B?Vi8wZ3ZDU1FVRVBKWjAzb0R4SkhiV2xBb2tqZVkzK1QzU3djaWJwWDNDelNL?=
 =?utf-8?B?aFVudk44UXVEZEgxWnZDeDdoMnFRU29PS3JmMjY5WVhveXNJZ3l1UHpTV3kz?=
 =?utf-8?B?d0lQRUxsU2h0RGxIT3gvOUs0ZUlGWXk1NVQ5N1hFUXROTW00UHYxMUtGZ0xG?=
 =?utf-8?B?Z2puckJQR2RaUlNKZFFxNzdHWFgwL3hkN3VxZlc3TlhiODNLR1JMTUx6L2Er?=
 =?utf-8?B?QXdocEh5VGRpS3o4ekxBMTJLUDNpWTZvaHlaZld3YWFmeGFQRmNwVUZoemlN?=
 =?utf-8?B?VjFHbG1JV3hodG9xQ0hwbFJkaytWUGxEWUVSZVlmUTg0T21sOW83emUvSWJv?=
 =?utf-8?B?NGpEVzd4L1A3VXRlakdUZExQZ0xqTHNMWldMN2NLS0l2aUdSRTdwNWlPWEZS?=
 =?utf-8?B?eUhpRHVTSlBiQldNTDdlNEo0bFVRV1Y4SFpiN1NrSjl3R2x0YlNaOWFONDYy?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bec7cb0f-ee19-4af9-0783-08dd1ade4eca
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 18:53:46.5179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x5ts2ZezpedNdApVRVbsDPlaklBYZlQCwprHy7AAb4py1HkWy45wHJVJ9Fcg5Wm7sf+LtC/3QEMIHEmRT/BBh7HG93gmbLKN5fM2fMm5aww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734029641; x=1765565641;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mpSEuzU8MiWvVmNHNHcQd30xd92gBuVBciXMVN+KW8s=;
 b=f+yhMoGibuVuukfoXKWmtEFFewpn9Nu9yDA4HfnhEGHrfg8DYQJZ6033
 o6xwwuj8UrOLsm/WRoO6s3mUpb5w93/khGzCz6LifAJq+dm3HK7aUQPhi
 gURlsPQgQmNypI+v3W3zvl7M7NTtZZVulcdxhZM+6lDt6y4jcgCUOGaPC
 i/8FzEGm+sjDgwE781tBfU1a9U9kN+E85dO6EZkIEM+yvYWnSQMfy0dUJ
 TcRfAbxVmAs3y0ZfroPhVhfAHghSdGROyT3OLk+HVtGtMZoBhvVBrsOoJ
 cdiUqyWIvRBhUJzDkybPOn3m7AEVaqSzcpOFCdOct+sXhnSmLTkGQ2fxZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f+yhMoGi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add ability to
 reset VF for Tx and Rx MDD events
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



On 12/12/2024 5:11 AM, Michal Schmidt wrote:
> Hi Tony,
> 
> Did your tools miss this "Tested-by" from Rafal? Maybe because of the
> weird quoting in Rafal's email?
> I see you refreshed dev-queue yesterday, but the Tested-by is not there.

Hi Michal,

I do have it on my list of stuff to go out. Even though the quoting is 
off, Patchwork did pick it up. I'm working through the tested patches 
that are before this; I expect this to be in either the next series or 
the one after that.

Thanks,
Tony

