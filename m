Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 551898CEAE2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 22:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F247982410;
	Fri, 24 May 2024 20:31:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EUprMVrR9u3E; Fri, 24 May 2024 20:31:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EE2F82404
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716582718;
	bh=UXN/IoMHfXqyTfBZ+lRUPV/HpJS+GmLBqBoONX4PiJ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jr1bwRpzv+/554OevOpvhXm/0egpOjklr9mUAK9p7e9/qafo7p8x/swATSZ5M5MuD
	 by9oleHWMHEA2dBPQTHIpb+zOrSHibxeypOqNy4+GQ+ZoAHblyx4XSmzpsVsPNnWXJ
	 tF5qMRdBOaJrRQ3zqIZrznBnfBXHbt8OuCUnjDj/o4SaPdix7cOv+44lHZkWNNplvK
	 euJXFP4zbRoBIihxR166vNoJIlv4qUmNIcuOkvAf7NtCnR1WymKLvKCCe+hrlto3KX
	 /sYJ/kTJeUoe4VBEvBLpvDnQJyH/H30sEmeBt5mpU4do6X3x2Be+kpckxsGXXG4pcu
	 I/AbmFjLOXhBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EE2F82404;
	Fri, 24 May 2024 20:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DE6D1CFDB0
 for <intel-wired-lan@osuosl.org>; Fri, 24 May 2024 20:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D5FA82393
 for <intel-wired-lan@osuosl.org>; Fri, 24 May 2024 20:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yfGIJ8sIcf3e for <intel-wired-lan@osuosl.org>;
 Fri, 24 May 2024 20:31:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 579C882392
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 579C882392
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 579C882392
 for <intel-wired-lan@osuosl.org>; Fri, 24 May 2024 20:31:54 +0000 (UTC)
X-CSE-ConnectionGUID: Xu0SEhOdTNCmiujQxMgvqA==
X-CSE-MsgGUID: C3wcn/POSCCo4zuKxtSqJQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="16766415"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="16766415"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 13:31:54 -0700
X-CSE-ConnectionGUID: LMI2hKq9QkGpaETA3DoppA==
X-CSE-MsgGUID: 9qGAcId1Q/i37oFD0hXOpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="34644810"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 13:31:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 13:31:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 13:31:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 13:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FCss3zrV0FTAFymdiQLAGLfuHUH47WMFhGsb3eCwhXxOAQq1hHiGb46mfOMeRriWZK+oWrF98VmxU9tnfjbw8zbWOWRJkXPnCfVEAi8+GPZZ61N0j7nE+ky+kzMcCoMZfrxwNWpxvguTINjfQNZG1k5+IGEOkTpZdCppcCyGAyRrAiI+3Dm1arPI/7N4aQvz8lk3JtvPnOED+KQeBIBBIcUQUKNIgnHjvqb5kMG8/1MWjeuO5UHl3Qdama1sSGvk+hKKZyKF0HwCFOgE/sJuQjuRaAlNTdr2krRm7zPD2HO1zJFxP/BFQ/1sQ9+u7H8p4BoDBygk6Lh2Wg3VbCuXKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UXN/IoMHfXqyTfBZ+lRUPV/HpJS+GmLBqBoONX4PiJ0=;
 b=k1aMyyZPDlnfxfrVzA/jKqeriux+M8kg7Mp+7nI2cfl4RMn0+19kjX4y7xtbHIA3Ev5auCX/Fs3T0tdRfkRhzmH0t8ovlcNoJqanT3zfu6OCYxZrCvCYmx0YsB4b7i8iaS4jV8ZyOEafqZICg3vNba3h8Z4ieRq+Eg7OrwXbJuJaGJGKt6mobboB/s65jAuMU0m5OABvB4Y8gWj1YYDbmJ7HsDvhZtkhTyeLoBTO5VgrRfh6ilCK3d0PHOypU4kQQOSpC/trVaFpbrMuemRW8DCSyoM6DtNIPd+gc+NwXr9Dll7TK6gzbQdGzTQhITm6WfnCloaXi4ehuPolA1NPRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB6671.namprd11.prod.outlook.com (2603:10b6:a03:44b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Fri, 24 May
 2024 20:31:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 20:31:50 +0000
Message-ID: <ec395fff-c297-4ad2-ae5e-1185b8de0e15@intel.com>
Date: Fri, 24 May 2024 13:31:48 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v3-1-f46c53cfb67f@intel.com>
 <2da2aa2d-5d65-4250-b39f-6b09eb07239d@intel.com>
 <0cb9aa33-768e-4623-bf73-8c9bd713aea6@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <0cb9aa33-768e-4623-bf73-8c9bd713aea6@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0064.namprd03.prod.outlook.com
 (2603:10b6:303:b6::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB6671:EE_
X-MS-Office365-Filtering-Correlation-Id: 1133f782-166d-4872-33d3-08dc7c308a8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ay8yZkVwNklrMGovcDlYTGR6SFU5U0ZUeENTU1J0bXpTS0FpeFdoR3dWeExC?=
 =?utf-8?B?YVo1NE1EUEowRGdLS095a0ZldS8rK0VEellZSlBEM3IvMlFiekxMRmJjb0k5?=
 =?utf-8?B?bC9hQ21JVUx6Rnhzam85ejZ4aHNEYmpyb3BCK0ZmaEUyM0x5R21uWUxxcU4w?=
 =?utf-8?B?dE5rYTV4WXZyUzNwRklVcTRSd25uZmU3SDFoRXlBeFc5MDZFQXJoWE5RNWZp?=
 =?utf-8?B?UlFVWThJRSs0M0VVNllIMkRZcFVxeXBRR2xEVkl1MVA0SzZPMm5CRnAvaWQ1?=
 =?utf-8?B?YUNLMjVuUHBqbVRSZWJYR1R5akNyelFabDllN1VCQXdIUG43NUhwWmdVQWF5?=
 =?utf-8?B?WXN1TFIyUnBUVWNxZysyRS96T1pjQlRoNVcwcVcrd2ZUd3ViTnlKZElTSnMz?=
 =?utf-8?B?YWkxOHFsV05BMlJOOHlQY2RRQkFUdVF2NHpTbGxTOWdYWnNQbXBwLzRkNlha?=
 =?utf-8?B?aXlUM1pjcUF4bGluN2FRbE9GdS9NMVA1emNPeEVqbzhISGlUQ3lmRWRaU1Fk?=
 =?utf-8?B?ckd5N2M2aEpCa3A0SFNId2VacCtDSVNTenZGVXdLM1NzaDdxYllQYTBGWVJ0?=
 =?utf-8?B?RzNlTmRGTEJianVrKzRZMmpnemlxRVliM2IxYlJScU8yMnBVTmhCWE4xaHdI?=
 =?utf-8?B?SkswVW4vaWpQWW1nbkRyczByd1dzcmExN2xaNDVOMWdLcWRlZUdxS2Jpcmw5?=
 =?utf-8?B?QVhFWVhESTdtVWpRUCtEUEJIZXJnWXduZDVjWHkvNmhzUTZnbWpPUE9mc0J0?=
 =?utf-8?B?Tm5USzRSQlU2OXpiM2V0bHhtU2lZMGhUN1Nudnd1TExYbUlOYWdQRHhnWWx6?=
 =?utf-8?B?Z1JjeFIyZmZ6QXB2bDVCZ0c4N0NQeEZGY1hCMWJmOHQ0SUZkUEFyd3kwMFhF?=
 =?utf-8?B?WmlUZzhwZmJCeWtnRGJLeWZ1VE9NS3JYQVNHNHdnMHhJUmR2WE94MVJHYlpt?=
 =?utf-8?B?QWdTb0dmRG9YT1Fkam0vbU1VMnRRV0pOL0JkZ3dOWWkrWHJ2U0JYT05VQ0pz?=
 =?utf-8?B?NUxIbjRjMDdlM2svNlYyTHpOOTREK1pETGV3allZbzhuMDI3Z1FDY3JxUFBV?=
 =?utf-8?B?Ymdwb0pNQTNHVTZub1kvL3BueGFveEd1bFJ2YSs0VUt3cFRHYlA3bElmV3pY?=
 =?utf-8?B?N2pENEI2aW1vL0Nobk03RUJJdGM3UnlTRmx4dXB1TUE3OVNMSTBxNW5jWFdm?=
 =?utf-8?B?cTVQcElPMzBLK05YSEppdHhTRVFlTDJncjJqSllHd2RQTEJnNHVOOFcxRkQy?=
 =?utf-8?B?d0l5d09hUEVVd2ZhV2E2T1pTTGQvQmlncldCZFZEQnNjSDFBaHFPRks1Q3hj?=
 =?utf-8?B?Rzk1NTJITlNGVE8wZUhsdTc1bEpOd2lCaTJPR0pPWjBQMnl6cExZNDViSGZ0?=
 =?utf-8?B?TlVzZCtaNzR1bVFPNytUTmRhYlJ3ZEIxdU1XWVZ6ZWFqZXA0QW0zUWVlN2Rv?=
 =?utf-8?B?RmNTUWdpSmdHQUlXaXFUUnVwdEFwKzBrUlpZdHhOVEFVbFRwNWxkVHVRaEhJ?=
 =?utf-8?B?R1NGZjlqRFRqcXF3R3RDOURoRS95amcvWVByN1RXY3dSekkwWUFCR2RybmVU?=
 =?utf-8?B?RCtzais5L2xob0ZSNXRZdWdGS2Y3VTU1Q1VBZnorZHI5ZVl5WE9IbGJxWThl?=
 =?utf-8?Q?a6D+HdQFDTyrsitGF0kfipZJIqbviXvtlbeW2+q/iBuo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFhRcFE5Yk5CYjBqQ2RrZ29WZEtJbFdzTTBkM1kweXQ0RW5vWDBsdWo4cjZ4?=
 =?utf-8?B?c2xEUENZZjBqY1dkZEFVYmxFcFdFcjdKcUc2ZU9QN2RtQU5odzBnRkJkZnVt?=
 =?utf-8?B?d1NCMCszWGRlRVlMZmJkVXVlOElLV2RoNlF2cDJrZ0dBQW5GbUNQN3FJV1pz?=
 =?utf-8?B?dnBiQVNZNVFsbnh2aDh1WWJkeUVjSW1VOG4xQ1NBcVc5ZkRUQ29UakFJem1j?=
 =?utf-8?B?S0I3YVI3cEtUTVNlMEdqUEJPYmFXeVJNb1NqaCtOaFArbFh5L2lGbmFYT2JG?=
 =?utf-8?B?aWtueUxBV3lMODdmUDNCQnk3Tkg3cExWdkxCaEdnUTQ1a2lyYkcrKzZ6Sm94?=
 =?utf-8?B?Q0swNmIzN1RPSUxZc2hHQzJOeTY4bVA5TEJOcW9mQ1gvajZ1bHlCR0lEU0Er?=
 =?utf-8?B?cXRhV3IvVnZ6N3N0TGM2b2VFVEJPOEJvM1lYWUtZZ1RkN0N2dVhtRzBYVWU2?=
 =?utf-8?B?eVJsMStoNGpqdzVlYjE5T2FyaDZ5ZTRyUUdIeDFHWWd0L01oR0x1OExXTUhC?=
 =?utf-8?B?SUxuL1JKcDZoY2lmVTl3KzY4eFVTNDQ5YU1VbmNyMDZVMUplYldYbG9JektV?=
 =?utf-8?B?cUVIM1FFZGxTcStiSkdDQjJkU3FocU52MU5jMTVpSlFQZG5ZamVyRXgwZ3NU?=
 =?utf-8?B?dUM2NW43UkUyNGtoeERYaFVZM3c5eGZObEZKbnIyYmxQcE03L01xZWt4NytU?=
 =?utf-8?B?M0UvVERDNUYzWmtvN1RtVk9XbzdLNmkzbjBOWWRTcXZ6Y3hnaGNGVzFDaUs0?=
 =?utf-8?B?UDZVeVF1U2RZQjFLOW40NFMyaCt1Y0FHOWExcVVWSnBJSjRoMG9zdHd3QW5M?=
 =?utf-8?B?b29SY3FpSVhDWGVWdXEzQm1ucG1XWVBPWWdvTkowWEpSN21nT29tS2dNeGRI?=
 =?utf-8?B?ZEx2Rk1ZOE9aaFZQbWZGNFNWeXIxS1ArSHhsNkd1NFZKWm5kYWgxam1HdnFT?=
 =?utf-8?B?dXZwZG5rekZsNGFOQjJmUGI1WmkrQmhJRkFJaU5rWkw0VnNkQURUNG1uREpy?=
 =?utf-8?B?aXM3R1J5dGkwTzdYVkxDd3UxbUlxUmpKTVBlRmtoSnpXcHlIVis0aTFsbk5v?=
 =?utf-8?B?MWtVaXV4elBzbnpENk1HZ216dUFHOFdGZjZkZHFVL2RmSDlmZDBNVzhsRk1F?=
 =?utf-8?B?SzZaUmhmY2l2eitnQi96VkUva2JUMGV3cjdTOW1hcldIUGV3RnVGSnNOQWgw?=
 =?utf-8?B?KzJQamtDczRmRnQyVjdHcWk2dXpyaGdKQ0I4dTh5UWRwTFUrK1hacmZKVFRX?=
 =?utf-8?B?aXQ1TEIvUXJydW1uS2lXYnBRVFNKVE1Mbm16Zy9KbWhXREFrTDZiajZ3RDFp?=
 =?utf-8?B?SXFZVE9jNFUwamFES3Bya0xKSURMZ3RCWi84QzJhSG50ZVIyNDZydXJoWG1I?=
 =?utf-8?B?RFRWd3RqZHJtdFREYXNJd0U4ampKU0thOFRVRDNVSHBpdHlZdTdkajJySnFu?=
 =?utf-8?B?ZzgrTHBOMVBjeDVmNWhtVmtkeVFtOXRkMTdHM1NYNHZCZEZiUkJqZ1cxUWhI?=
 =?utf-8?B?RDc0eGtGTzlaRzFrMmRGMTdHRlJqTXhZdkNSWUQzYzVuVGk4b1FMUjIveXpN?=
 =?utf-8?B?RDY1eVI3eTVrdTdENG5jR21mMmRQZ05saUlhTm1rNE5mNUx1dlFhNzJYQS81?=
 =?utf-8?B?bnhqN3BpVThPOGNwbEI0UjFCNUZoZ2ZKUzYyRGhiekk2TlloRmxyTEhOc2Ey?=
 =?utf-8?B?RmkxUzFzb3YzKzlSMzIyVmd4bWUyQ2FCK3NKbUVPRjlrZFg5ZXJ5V3VDQ1lw?=
 =?utf-8?B?UzRDcHUzRmplL2FLbGRmZTZaSlNnQUlaaWpZRXZhWkVhL2puOGFYa0szSlRW?=
 =?utf-8?B?REZxdXBYNE9ZOG44MVl5aWxWOTloZmJRRDY5QTdFMmpVWVRNS1Nxdzkwei83?=
 =?utf-8?B?L3BVRWZBRUxvd2hVaTI1WGR6NVNib2p3NmdkbFgwSUJLbFNaL1pUaDRNQ2Zk?=
 =?utf-8?B?NTRzTjh3NGRSejNXc1ltSXNCNzg1NktpU0F6WmJpQTJoVGFoREFjazJBbEdG?=
 =?utf-8?B?VHhscmlEZGNIajVwTkhUL0YvcFVxUy8vS1E2VytyWUZHa21qRDJFeVJtbHNv?=
 =?utf-8?B?OHlZV21LSk52NG9pU1JGdW8wSVF0cTIzTjdsczNzU2p0T3Vsd2dlWU80dkUz?=
 =?utf-8?B?bmFHMmtCWG9odHZCNjArekhtV0VOeGFPSTA2R1Z3c2c5eGhzREpNbkRUbzJ6?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1133f782-166d-4872-33d3-08dc7c308a8e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 20:31:50.5333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jvx3S/5//MxgR88j9cW4EaUVAHwWQJ08oE7+xDgUAzcmMeS1/VnpIIGKBdXRg6OuktoFJVVYI5dhNYRHd+4XxV+PT1gW3Z4RbIRLXtbNh5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716582714; x=1748118714;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=94Sp6FX3HsaElZHTt5ibI15XRy1BsYjxW60plzsNp2I=;
 b=ag3YU5tQLeXstxeTbKfV+A52R0DsKWASd5UOj3VFAhnLBjYNmDl/OqV4
 YuymCiNosmYb9ffrPPxvcsKhic1mEIDtIE5oS4eU5ZTy7skMKSMge0hvQ
 eGBA8PRtx0bMWRwuFBWExvYHjfqZwQ1CuSXbyp05D4MuFmm20T8JYm/k3
 tJdpIA41FxDK8IGQbufHj7of0TUGGtf1AYQuM76KXwvE3qgsVzJhvMhXE
 ebiVapVSb0D4Sph+5FZruD3U+Ot4UBWj7J7VTZ/6DaC711XfYEOkS+URn
 X9vtb4lU8bB4JYdg466NV+NXggUJVP7KKvWE8ixmzk6qy3BUGB+8SDOAi
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ag3YU5tQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: avoid infinite loop
 if NVM has invalid TLV length
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/22/2024 11:33 AM, Jacob Keller wrote:
> 
> 
> On 5/20/2024 1:33 AM, Przemek Kitszel wrote:
>> On 5/18/24 01:22, Jacob Keller wrote:
>>> The ice_get_pfa_module_tlv() function iterates over the TLVs in the
>>> Preserved Fields Area (PFA) of the NVM. This is used to access data such as
>>> the Part Board Assembly identifier.
>>>
>>> Some NVMs in the wild have been found with incorrect TLV lengths including
>>> at least one which reports a TLV length of 0xFFFF. When trying to read the
>>> PBA from such an NVM, the driver will compute a new offset for the next_tlv
>>> which is lower, due to overflowing the 16-bit next_tlv variable.
>>>
>>> In the best case, the driver will incorrectly interpret values until it
>>> finds one which has an offset greater than the PFA area without
>>> overflowing. In the worst case, the values in the NVM result in an infinite
>>> loop as the misinterpreted lengths result in checking offsets which are
>>> valid within the PFA, and which ultimately point in an infinite loop.
>>>
>>> Fix this by using check_add_overflow when calculating the NVM offsets, and
>>> bailing if we ever overflow. Additionally, use check_add_overflow when
>>> calculating the initial maximum PFA size.
>>>
>>> This ensures that we bail immediately on encountering any TLV who's length
>>> would have caused the naive addition to overflow, rather than entering an
>>> infinite loop or otherwise misinterpreting NVM values.
>>>
>>> Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")
>>> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>>> ---
>>> Changes in v3:
>>> - Fix missing {
>>> - Fix missing pfa_ptr variable to dev_warn()
>>> - Add Fixes tag
>>> - Link to v2: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com
>>>
>>> Changes in v2:
>>> - Use check_add_overflow instead of increasing the variables to u32
>>> - Upgrade log messages to dev_warn()
>>> - Link to v1: https://lore.kernel.org/r/20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com
>>> ---
>>>   drivers/net/ethernet/intel/ice/ice_nvm.c | 19 +++++++++++++++----
>>>   1 file changed, 15 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>> index 84eab92dc03c..be731b83d667 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>>> @@ -440,8 +440,7 @@ int
>>>   ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>>>   		       u16 module_type)
>>>   {
>>> -	u16 pfa_len, pfa_ptr;
>>> -	u16 next_tlv;
>>> +	u16 pfa_len, pfa_ptr, next_tlv, max_pfa;
>>>   	int status;
>>>   
>>>   	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
>>> @@ -454,11 +453,18 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>>>   		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
>>>   		return status;
>>>   	}
>>> +
>>> +	if (check_add_overflow(pfa_ptr, pfa_len, &max_pfa)) {
>>> +		dev_warn(ice_hw_to_dev(hw), "PFA starts at offset %u. PFA length of %u causes 16-bit arithmetic overflow.\n",
>>> +			 pfa_ptr, pfa_len);
>>> +		return -EINVAL;
>>> +	}
>>> +
>>>   	/* Starting with first TLV after PFA length, iterate through the list
>>>   	 * of TLVs to find the requested one.
>>>   	 */
>>>   	next_tlv = pfa_ptr + 1;
>>> -	while (next_tlv < pfa_ptr + pfa_len) {
>>> +	while (next_tlv < max_pfa) {
>>>   		u16 tlv_sub_module_type;
>>>   		u16 tlv_len;
>>>   
>>> @@ -485,7 +491,12 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>>>   		/* Check next TLV, i.e. current TLV pointer + length + 2 words
>>>   		 * (for current TLV's type and length)
>>>   		 */
>>> -		next_tlv = next_tlv + tlv_len + 2;
>>> +		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
>>> +		    check_add_overflow(next_tlv, tlv_len, &next_tlv)) {
>>> +			dev_warn(ice_hw_to_dev(hw), "Failed to locate PFA TLV module of type %u due to arithmetic overflow. The PFA length is %u. The last TLV has length of %u\n",
>>> +				 module_type, pfa_len, tlv_len);
>>> +			return -EINVAL;
>>> +		}
>>>   	}
>>>   	/* Module does not exist */
>>>   	return -ENOENT;
>>>
>>> ---
>>> base-commit: 83e93942796db58652288f0391ac00072401816f
>>> change-id: 20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-99ebb2c55c52
>>>
>>> Best regards,
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> It turns out after digging, that this appears to be caused by
> erroneously reading from the NVM past the PFA TLVs:
> 
> I added additional logging and I see:
> 
>> Failed to locate PFA TLV module of type 22 due to arithmetic overflow. The PFA length is 0x00002f00. The last TLV was 0x00002fff. The PFA area ends at 0x00003000. The last TLV has length of 0x0000e7c1
> 
> We're trying to read a TLV starting at offset 0x2FFF, but the PFA is
> supposed to end at 0x3000. I think this is actually just a case if an
> off-by-one error when calculating the maximum offset of the PFA, that
> the next_tlv < max_pfa value check doesn't trigger.
> 
> This results in the final loop trying to interpret whatever comes after
> the PFA in the NVM as a TLV, which gets the incorrect length value and
> causes the overflow.
> 
> I need to do a bit more investigation, but I believe the error comes
> from the fact that the PFA length value includes the initial length word
> as well.
> 
> I'm unsure if we would still need the check_add_overflow in that case.
> It might be safe in the case of an actual bad NVM.

Paul and I finished investigating. It turns out that the PFA is
documented to have one extra "last word" with a value of 0xFFFF. This
was not taken into account in the looping, which is what resulted in the
problems. This is not in fact caused by bad or corrupt NVMs, but merely
software which fails to properly account for this extra word.

I'm working on a new fix which will supersede this, and will have a full
explanation and new commit title.
