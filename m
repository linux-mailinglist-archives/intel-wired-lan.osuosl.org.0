Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B4C8ADD51
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 08:09:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1917F80C34;
	Tue, 23 Apr 2024 06:09:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tStz9iQz-tHV; Tue, 23 Apr 2024 06:08:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3273880BAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713852539;
	bh=1FGDKolljBSfxka43O5OqZdJj34kNRzfm0bUMgIkvAU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hAGaYIDzgei+d+Ior+1scpJL/Wfh9EfjPwWICmZzi95zPzYNx3ICVvYYHLe3B5Skh
	 StTqN6Cs0Snqj3a6Oym58BZpZsCUgn6RYyE+fIlelU6K7DBE85K2Ctunh8q73yOS+o
	 5AN1p3YRBdeonpNChH1d9EU6j5ZyZvK3yBIEVcnP/29brvRRxBAC+DqDwRqXIFIcKl
	 OIa83sMAo4tvGQSMUwFohU8haLHu6/YpLZU0UA0GIGRBZ3LSWkmVKRIwLZgHEOvvLa
	 WQXbkuHsder4PXQO/HiAsXiy7GAnUJzSJMKYhZUd3Wf/hch6mA5LXYYBP+rBVrrZgU
	 hLSJGAp6ofKCA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3273880BAC;
	Tue, 23 Apr 2024 06:08:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD8F71BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6B64404BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kX21vMsPEMui for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 06:08:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A6BA4016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A6BA4016F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A6BA4016F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 06:08:54 +0000 (UTC)
X-CSE-ConnectionGUID: vsK6g1t4RMCDKkU+9Bf+ug==
X-CSE-MsgGUID: bGCyjFdDQBS9+oZfQni2Pw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="20114640"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20114640"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 23:08:53 -0700
X-CSE-ConnectionGUID: Xttal72STQOPbE+xonJ0Bw==
X-CSE-MsgGUID: bRG1y+MqQwKLO5kMBJ/wRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24316286"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 23:08:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 23:08:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 23:08:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 23:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iDKQskUb0AdiFc3S0yWlb2/fCO3srTuFhJT5OE0wVgaGF9oqPPH2qGREuLm7pt8VvMwaP8T0ZGzqCNfTri2BVcjMboRTmg1XTydsa9YoIZJtgSaslmnTV5i8ShcSFhthH+dwipqMQbcFVsBt7j7K/ZXKCPL/wECmtiZ48cil1rEHtm6tJHH5arOgoQnpVOU3zEorBXSkTI7QI5O3RPX87q/m1jYHvhB44R8EKMmNXRjPJwGFGSGnmDoebIZSei1pHteVNDlQxbjsPfjTFJ9N7i5CGOs3OGay1pb7Y+NSpepYDGu80SM8TCetDkEmoM++F66Pkien+PeOCDQL4H8CjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1FGDKolljBSfxka43O5OqZdJj34kNRzfm0bUMgIkvAU=;
 b=buqOC8HWmJNlnAnJmwUSyPzqIxg7aPi3Wr6CNb+eageOr7F3N+QapTqZPxx5T70q1mkufMWxj0D2b2SHQEIqMCNuFswAT0qug0+SRjN5l9upX1NmNLF6CpCPZlr5k+UQvtDrEA0HW0K+ZBv1Prn0XTYIrnWXiiB65R5cRcwaX4TLfWCCib/wrqiAKApZq1Zs27PN02Ma2AaYjuDJtYmrktFMXOdMnwROzkCxB5bxw5arDu+bIbWGesv8J1dNu/NSpQ1d3fTZtNBs12zROKsQfIyJxWKSuIrl9M7rWfBpbxDDVJX4SWocJdKrquIhRL+lsTCsexlTYcrDbtDUWBI3Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by BL3PR11MB6337.namprd11.prod.outlook.com (2603:10b6:208:3b1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 06:08:51 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 06:08:51 +0000
Message-ID: <1889bdbd-2fd3-4383-8df6-ab928c0b0bd8@intel.com>
Date: Tue, 23 Apr 2024 08:08:47 +0200
User-Agent: Mozilla Thunderbird
To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <87v84ectez.fsf@nvidia.com> <f4696921-caf3-4873-b5ca-0b4f6a993cac@intel.com>
 <87le54pqc2.fsf@nvidia.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <87le54pqc2.fsf@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0260.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::8) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|BL3PR11MB6337:EE_
X-MS-Office365-Filtering-Correlation-Id: cf2581e6-d769-4c1a-74eb-08dc635bd8cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1lXTWlhdW1UNmMxL0NhdWc4TzlWUk9ZaFVsTFRwdnFkZWZ5bHZ4eFNTMmg4?=
 =?utf-8?B?dEpKVXJPMnNVRFVwcDB0Z1JRbm9Kejk2WUYwdXlYbXRxamZNbXBrMjFIZ2lD?=
 =?utf-8?B?R0trdXBwK0tSVzFXeEh6WE5wdnh6eGZoUWNPeEQrd1NKU0pvdm1rVWVXc1JK?=
 =?utf-8?B?ck9Uc0l5VVJuMmZDcmlZV2FRaktBTE9XTFpERDRlN0dmbzdYQ1dzSEhPdmxo?=
 =?utf-8?B?NTFuZ0hjVGI2TDRDdmxQUVVQUC8zMmdQNzgxaUdCcXRpdHRkSHpCRFlsNERo?=
 =?utf-8?B?bllTS3ZqWm9iajBWQy8xcG5OM2dTRlVOY0JFQlRLU2VqSnpIOXNZZ2U3dXZl?=
 =?utf-8?B?YXI4WTYwYkhGOW1IL050TXhrRnlOdkQxZ2NLaGRCV2hhZ2RjSVprc1FHVzl3?=
 =?utf-8?B?R2VwTk8yWjF1clR5OGxhVllqdFpUM3BrRkVaUjlvYmtXWGlrdU11K1licitV?=
 =?utf-8?B?SFVxZ3BuR2tOM2FiRDNuRVpJYnBSODJwTDhjbFVQd2I1UkhNN2dSUnlCWGpF?=
 =?utf-8?B?bUZvamZvOGE1SjQ4Q3UwL2QxL1d3MElCQ09iTXBXSFluMW5velRzdTJ4aDQ5?=
 =?utf-8?B?cnR1NWtPRFdoUlI5c2xJV1NabjhWU2gwR3ZtUm1NMmZRTCtNVStCSTVUaGg4?=
 =?utf-8?B?bFlMbHJJSU5JUDZxVmk3eVRWUGIzY1Y5S3pnTU1sNGhjVlJVd3NpOGdmcHdr?=
 =?utf-8?B?eWZyZnF6NDhlbHdxb3VPcGhDcTJDck9VdEYzZ0FYanZoTlR5NnJLSkVwZ3ox?=
 =?utf-8?B?OVlON2haV2xtd2lQZXhickVCc3V4U2hkcWtXdFN3Q05rVkxmeitFSUtvWHFR?=
 =?utf-8?B?bmo2N0lmNHBTTWpLcjFYQm91MkZDWlVsTVNoWE0xY2hUcVF0SzFzTWlYZFdq?=
 =?utf-8?B?NG9tajQxTkFXcWcxVXhsbG9XSTNoRktpc3JRaDM4RDNSaHAzMnNSMVdSM1lz?=
 =?utf-8?B?NXJrbXBaZXkyYThJZ3ZTc1VrdVQ2Y29VNEpMSGgwVW1Xc3cvVEpkNzNZS3p5?=
 =?utf-8?B?REhTSmxsZFZLT1VOMDZURCtLMVB3QVJscHBabnZSZ2RLYkFZL29xY3pRS3Ux?=
 =?utf-8?B?K3NUMjk1WGQ4WmNoa2REVHZ3MzBwLzV0MkE4L0tpOTUvWmlxTnJGalRIR2hP?=
 =?utf-8?B?OVNpS1NqSXVYcGpiV0pWZi94K0hsakswWVFnNE5LUmozNDRnWEU5K3RZQmN2?=
 =?utf-8?B?UEduNE1GVmpXWkxtSGxXY2hJZzhKMm40SytvMDZLZHRWTDV4aGZZUTF1T2Vy?=
 =?utf-8?B?NXpzdjAySXpKeEo5bGl6T0JtdXFyeEVNN1dLL2dmWWU3YlVTQmlFM0xUc0VH?=
 =?utf-8?B?UGNZQkZSaFRhSktDSUQ4QWNBWUNwbHFhemRjYmJrUkUvanRoUzNpckpaUnhV?=
 =?utf-8?B?dUM5ZGtGUm8yTVZXaGdiRTJhZzdIRDQxR0ZPQVRxRXhpRUN1a1QvbTV3S29a?=
 =?utf-8?B?TXI4T1ZGREFVYVozdHZmTER6b2ZFOWNsY3R1bHhtNkQ1NmhWaUlpb1QxUUxB?=
 =?utf-8?B?aFFEek9may9WVjhVR0lOZDRRV1NCeHphZmFiV3J1VDV1cTlJOUx6NlZqZ3Jp?=
 =?utf-8?B?UGdhanVYT2x0N05zTkFVb0VqYU41YmQ5WklsOVpRSlhjNFFrZkV2bWFDMGh5?=
 =?utf-8?B?eDVIYXZxOVNueG02WWhNbTVMSXRwSWdlTDJ3c1Z4Uk00bnJSRytjTUxHb0xy?=
 =?utf-8?B?YjhJYVZMcGljVmY2aHFEc2lVK2ZLc1B1THQzN1pSNXhBZWdVc2laU25RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzN2R0RIcnZYWUMwNDNPcWc0R0FlNTNNWCt3K1VCRlUxNU9qVkNRdjVLbHM2?=
 =?utf-8?B?NGh4czYrYzFnTHVXamI3OUNER09KTnBrejgrVytyeG9nK25aSFJtM3ZFM0sz?=
 =?utf-8?B?NGxTK3hlNnNNem1NbllSOFhlaFpzM0gwcXRnd3dlaTZIY3Bud0hwQXRHdWd4?=
 =?utf-8?B?OTRoUE1Od3oxeExsYlk3Q2FKeWZuTmRUU0M2MWN2NkFpblFGUlNzQzV2Rktl?=
 =?utf-8?B?SXpvVGpoV1d2Y1VpVEF3dmV3NmN4RlZKQ2NmeFBWSG9hQlRGcnJpakhudGs4?=
 =?utf-8?B?eFlqRnprMnluNUI0VnpRR29BaUVSUjFndE5iL3oxWmU2YVBudHM0OTg0dm9i?=
 =?utf-8?B?SkFmTFJZU2hsTEhmNmV4eXFZRTJXdUUvMS9NNTl4aDR3ckZsVUdsMElKWFJy?=
 =?utf-8?B?UjVZUHZiZTZpWU8xNldmZGNuQmFKQ1VWczFKRXBLYW1EVnRPS0J1UVdjd2hu?=
 =?utf-8?B?eE95WUlrb0ZKUHMxUHJoSE5RUWRMS1UvM0xtWTM1VlMzNDNDYjdrUnNjZlZP?=
 =?utf-8?B?Yk50NGpYV3c5MkIxY1p0NXJpYk14QzlzbnhoU3hVaUNRVmJWdDVrSWJ6Si81?=
 =?utf-8?B?OGxldXBBbUt6OXJsRFVweE04b1pNNkZQb1RpMU1oNmRHT3c2eGtUbnB6dm1p?=
 =?utf-8?B?RE1JNzNqM3F1M2wveE1NNkN2SlUvNEZUcVRyek5VNHpDR2xZNWo3VDQ5Q2dV?=
 =?utf-8?B?ZDd2SWZ3ejVMNS9pRHFUVDZwVHlhSFpHbURyMDZxeS9xdjBYRmhnZmd0K1d0?=
 =?utf-8?B?dHZQK0ZFK2w3YW4rSnhoMEtPS3NTaHRpSmxGcHJFSWp2bWlRR0M4ZUs5c05C?=
 =?utf-8?B?V2IraHpCc0xzb1NuMjBGNGJDWUZ6c3F3RHJIZ2s5MW43ZnExOWZGc1JFNmNO?=
 =?utf-8?B?R3dIQ3dtSndUcUlkUEhCVmt3czF0MHlsVGlieVpRdjd0SktSbmVWSzZrcjdB?=
 =?utf-8?B?RHZHWHJDcTgxWmV6bzdjMXg0UWlDeVhlYzhSZTJydlBmNkRKaXVMVnJYVnFQ?=
 =?utf-8?B?c0w5YXB5eHo5aXp1U0V3WFVneXZGMGxNNGFNckxUWW1UR3BwSEJLb3lvMWVN?=
 =?utf-8?B?RURjRnFaS2xRamUyUFdwMWpJazdOSGJVU0l4dyt5U001QUZ5SW5FSTVNbUdE?=
 =?utf-8?B?YlVoUXY1OTQrRmJlY01BRC9ETXFMajZXbjl2Nmloenh1bGZPK2l0RU9zc0lC?=
 =?utf-8?B?TkFtemRtQUtWZDVyemwwRFprNXZjTmlkOHZDeTQzVDcwY2ZZZktMaE9Sbjk3?=
 =?utf-8?B?Ny93a1NFSWlyRnIwbEFFUUFGU2lnOFRqTTZDK1g1ckowRnN4emNMUmoycXdF?=
 =?utf-8?B?eDcrQmlkZklZQmtUUmFMSTRRL1gwOVFVbHZpSnhCVXUydm42a2FvUDl6cmd4?=
 =?utf-8?B?RDdwTlUvS2ZjVWlHSkkrRjU3eC85R3lscEljcnFDUUxrdVpRc01MK1p5OEpu?=
 =?utf-8?B?T2RYMHJwM1JjOGFUVkVWNnZmZ0RZVkFhL1JOSW5ua3BGd2FHS2Nmdkh0azFW?=
 =?utf-8?B?OFVNbWRnb3VVMWU0T2RuVzRFdVRabjNDMnVtTXJmVFdaQklFRGVqUmE4c0hL?=
 =?utf-8?B?cWI4ajNjNkZmT0xBd0VQZGVNVUU0RHNIYVU5d3ZhaXF1eDFGQ0tPZE4zTWhD?=
 =?utf-8?B?MEY3eDNuR1NMbTBGM1Rvc0JJMHVRdjAzdUtiZ2JDZ0lFdWFnRU9CN2ZrWXp4?=
 =?utf-8?B?YjJTWEJZYVNJa1NreUc3OTdFeGdwN2IycXExclNraW5Wc2JNWmhrdUswYy8r?=
 =?utf-8?B?RVpPOXpZUHRFNU5KQndUck5yNVFJSXBlNXRCTzdYaWNLaDFPd1BSeXlxVkxv?=
 =?utf-8?B?dU9XUTlwR2xibS9kSFpOZys3QTNZMVBjZWFCKzlHeUdxd2x3M2MyYmduT2FP?=
 =?utf-8?B?QzUweUZlZjVmM3N5bEtiMHVGQ0xDSmJyVUxrWGE4d05tQmp6L2pUWm9qbW16?=
 =?utf-8?B?OFVjTFlhUExwZFNySWk1R3lHQ21QMWVTRGZrN1UxTWZPcnljY3MxcHV5M0pn?=
 =?utf-8?B?cE4wTWw4TFdUWTFtbnBPMEdCdmJ5K2RjOGMyK3puaTlGM0tEYzhVSzc2dTRh?=
 =?utf-8?B?RlJmS1ROMzlCaFYvTWF5TG5BY3orQWxwWkltRkFnSUV6MUhrTlBGUzVkaGND?=
 =?utf-8?B?WGtIYXFKQjVjRUZLcGsyT3FRQ1YwRENZYld5SjdGaGsyaGx5d1JTN2lXeUsv?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf2581e6-d769-4c1a-74eb-08dc635bd8cd
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 06:08:51.1923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gasAcBmy3A30nIhNIB8h1znKrPP8Hq9sOp7vE1niehl4DXkrXYmYWCCkScCymU4p8MEVrwbjcrZ2VcEz3wW0Nh/ssBoMEBusi4/chUt4wSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6337
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713852536; x=1745388536;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Iz7vXyTpxSQYXGc+PVYDFs5WrOpYHckbfWlb2TupdmU=;
 b=NiDDwgtcqM0F6JhPT6mZ9m7KmEp5M0f2NHGztUUakkCGcWFgxtzv7pAR
 Ep7XuNdHs/n1PzObJhqkDA52QiItcZgC6HCFqaqrrJe4aKWh6SrmcahqT
 ozrCN28Sq2xyy5NbNG6+PsxMOoez3+Ha50yJ5tdfk25CttgGMRuaMiCdR
 1B5Yhac5Lk983yQOv7KJLW6AZ6sU5Cg5TUclnOWYAJY1Zbbv6YVG2Myo0
 tr72GM8NwdLhSsxU/24xeGQzFkVFPLeo41lHHhnlf3NJcAP4vyLNm3s+8
 J2VzcV3kEssyWCg5asJkIJYPWx9uFgsOMmLv6QxylWD8Tjq8Lz3JGmirQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NiDDwgtc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/23/2024 7:57 AM, Rahul Rameshbabu wrote:
> 
> On Mon, 22 Apr, 2024 11:37:14 +0200 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
>> On 4/18/2024 10:19 PM, Rahul Rameshbabu wrote:
>>> On Thu, 18 Apr, 2024 01:24:48 -0400 Mateusz Polchlopek
>>> <mateusz.polchlopek@intel.com> wrote:
>>>> Initially, during VF creation it registers the PTP clock in
>>>> the system and negotiates with PF it's capabilities. In the
>>>> meantime the PF enables the Flexible Descriptor for VF.
>>>> Only this type of descriptor allows to receive Rx timestamps.
>>>>
>>>> Enabling virtual clock would be possible, though it would probably
>>>> perform poorly due to the lack of direct time access.
>>>>
>>>> Enable timestamping should be done using SIOCSHWTSTAMP ioctl,
>>>> e.g.
>>>> hwstamp_ctl -i $VF -r 14
>>>>
>>>> In order to report the timestamps to userspace, the VF extends
>>>> timestamp to 40b.
>>>>
>>>> To support this feature the flexible descriptors and PTP part
>>>> in iavf driver have been introduced.
>>>>
>>>> ---
>>> Just one general/cosmetic comment. It might make more sense for the
>>> Reviewed-by: trailer to come after the Signed-off-by: trailer, since the
>>> review happens after the patches have been written.
>>> --
>>> Thanks,
>>> Rahul Rameshbabu
>>
>> Hmmm... I think that the Signed-off-by added by sender should be the
>> last one on the list if there is Co-developed-by before.
> 
> Sorry, my bad, I should have expressed this better. On the first patch
> for example.
> 
> My expectation for the trailer order would have been the following.
> 
>    Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>    Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>    Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> instead of
> 
>    Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>    Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>    Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> I think for the ones with Co-developed-by:, you are right that the
> ordering would be strange to re-arrange.
> 

Ahhh... Now I see, You are right! I will fix that order in next version.
Thanks

> --
> Thanks,
> 
> Rahul Rameshbabu
> 
