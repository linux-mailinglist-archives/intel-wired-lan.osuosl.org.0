Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13DC95ED9F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 11:45:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51FEF40156;
	Mon, 26 Aug 2024 09:45:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EKPsnW7BDpJv; Mon, 26 Aug 2024 09:45:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 716FE4056A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724665555;
	bh=63zxYBP0H8Nm147vafbzZw3xQDreixPdG1Ww6JAUj+o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HlYxkINtt4af4GQngPvUcmRgZjCjl59hNltX5OyvsFURCGc+UZio0NOvmPvnBBZDT
	 Xj1SKAVBrHexlk7JniSxgTUGeOOw6dsK2LoqCJK9f7psVI0KNgSlBrhG8996Kysmmo
	 aqiHGhRZD/CfEODc11LKsKo+H0R7Z5tE88PXVeEuO3Qy0e6Qq534ZWsilqP/rF651i
	 ki2OQSQLjftvZMSJtZJPtZUTQSg9CnpoyzUu4cQK2/5O/Iwy9psec/nFxIZ5hJkh0G
	 oyU7SnmeO7vXsrMLNOD9Yl1nqE/1SvRSWbFR8TNny4nuCrOuEto1+4aDVuV5b8NJMF
	 ITPv7wXYOxzQA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 716FE4056A;
	Mon, 26 Aug 2024 09:45:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A868D1BF388
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30B5060732
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8arLAWnAuSV5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 09:45:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F3DE060590
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3DE060590
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3DE060590
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:45:50 +0000 (UTC)
X-CSE-ConnectionGUID: UkPLWSzAQiCTDKafzqEANw==
X-CSE-MsgGUID: 5+gWweepT+2wkZs2tI7Wmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="33742341"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="33742341"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 02:45:49 -0700
X-CSE-ConnectionGUID: fQOzsseWSfmryFqMKL/yAg==
X-CSE-MsgGUID: q4Vvr+AFRBuEvsmGxMIgIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67154578"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 02:45:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 02:45:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 02:45:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 02:45:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yTH2Qs8UWROrtZ/McnrxZLFiP3XbgrHU0Jp5ShSYY7eRHetrikNyWk/+d4SrqHpkYCKPuOMu7KbThON/5JR6Hgxcd76jp1RebKcpsxhQp6I244ASv8hON3aYw6RX/58L4m9RJSeOZmD4jPi8ydGZSw8hYeRq7nAdTKQHv9/o2Td53v84WO8q3I/2K09n0hkyJzL7DyU26Yzz+lfw7yMdfhZz0xTqh7G5MKZ2af4QQJ9pjpHMKdt2j+1x/udfX+5994rqk2jeXht3hL0qphYFgkm/2OzrfHT2EZ3R1P8IlVDE1V3HAhU5pmxug/0GIh1gHQU4akcwJkuSpaNV7UJPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63zxYBP0H8Nm147vafbzZw3xQDreixPdG1Ww6JAUj+o=;
 b=Mqcftln3nXRLnrAYST7IKa1x5sDf8aXuGbxSWGGuftZlOMHlf+EjKMVbq1zwm7q0PhHtSP/T35nju/WXr6NFmS4D6tmG2WNFuFZ8N8xULl8fJePJfiP5HSDI18rJd5CWq0r7NpjeiS89DOGabLeuVwI28ZDvXMIuEWZjf+usJHGKuGUMbFedRPNb8TkTFnAXMbvfIX7bdR4HRE/TzvSKERg94AL4AqVcfBIDHFmWdld5D3hpcWvDlvGLNy5bKOVF519HOscBnQ9FoHTyLBvrUNHfgdQAQ1wi8ycq/Nf1jhqlCvP4OkASI8bIsNCzHERQvAb6k2t3t8BLJakzeJJpEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Mon, 26 Aug
 2024 09:45:45 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 09:45:45 +0000
Message-ID: <c5e2010a-133b-418b-b7eb-9c57c3543d52@intel.com>
Date: Mon, 26 Aug 2024 11:45:39 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-5-wojciech.drewek@intel.com>
 <b8845a87-e27a-4834-b510-f9fde51a364c@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <b8845a87-e27a-4834-b510-f9fde51a364c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0369.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::15) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: fe3a8e30-547a-482a-1421-08dcc5b3db57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cU1pNmdrQTFVQ2w3dXNXMXFtc09vS1VyTHNySlQ2aHdxZWRRS1plZ3d3OVpr?=
 =?utf-8?B?aU9WZmZIcTRTNERrT1d4ZTNTc05UaWw0bisxdE9YTWo2bWlNVUVPVlVXcXBY?=
 =?utf-8?B?VEpmbmd6VTZxSUdXb2ZkMEJmb3ZaMG5LdzdnbzQ0VENpeit0N3MzMkdXRS9Y?=
 =?utf-8?B?WW9uWCt0QWR1RlQrZUhFT0haVlFseCt4VitKY0VrdXl0V1pRUFYrME5VS2pS?=
 =?utf-8?B?SVdzaG1hcjlSRW9sRzdpeTFIcmFNa1k4VFhyTUVUWkFiZGtKT2ZBWGJSV0xN?=
 =?utf-8?B?cG5kUFY2N3lwZFVySWpPNVdoMWJyWWNpSm5wSy9IZHNPNVJlVHlwQVBXeTdC?=
 =?utf-8?B?bllWN1IxYkgvWU5YZnhHVHJDMUFEOW1jZkhxM1R5VEZMbVdSdldxQzV3TlNU?=
 =?utf-8?B?K2kwd2lnRkdNRHBhbHhjQTV6OFhOdkQ1RFNKU0N3Y2dhWE9CazFPY1NkMWtK?=
 =?utf-8?B?cTJxMXh3SGxnbG0zVDNDK2krTHJocXZXK3F0QmRhSVN3WWp2cDRnNWsrWUVu?=
 =?utf-8?B?Zjl1OEd1TVBRTC90a09KWFo3aWkvMVhoQjFBNFhaVXp1S1h6WFN5MzhzVDVJ?=
 =?utf-8?B?dUk1ODZ4b0pzT2NSYU1hMmtxem04S0lLTlJEay82SmY0TnNUU3hleHZZc3ZP?=
 =?utf-8?B?SXNsUURyOEt6d1hPajd1MnRxU3ZJblJkY1pFVE8yZDFBYVFRdkt6NVhxSHhV?=
 =?utf-8?B?V0x2dXdWalFzcWp1MDhlelpEUUtXN0FlMjg0WmN5MDhzbGlQS3RWU25ZMTVl?=
 =?utf-8?B?djVFSFhZSXNNanhrc1poUlArbHZDN21pNHNuR1RyS3U5RTNYMFZBK3l1RFpJ?=
 =?utf-8?B?cGFLOU1ZdWFBYnhQNGo5d3NUZi95V05vdk9KaEJGUEdxN0FvMDVRRkp3dkUy?=
 =?utf-8?B?OTRpcHJodlNqd1RqRlJCdkk2V0Z5dUo2N2k5QUo2bG1PbEtXV0hXNGhVUE53?=
 =?utf-8?B?S2FrMU1SeEN5cGh5STBOWlZ3ZjNjTEVtQTNUQlptUUhRYTQ0RUI4dnQrMnQ5?=
 =?utf-8?B?WFMvRVVnZVZ2Z0tUUEE2N24xNXhYWFBGM1dBN2ZRQnpxYzB1UlVIMVRCODlC?=
 =?utf-8?B?UlpjWU1Ob3c5a3prM05zQ1doWlpZNXFjd3hHODQ3S3U5TDNUUno4V3VIajFQ?=
 =?utf-8?B?VjZIOVlMMXBrWkl3eG5JQ3lReXZPZDNCZkJNd25pbTY0QWJGVitBRk1LQ3Rw?=
 =?utf-8?B?cnVHallobm1TY2MwNTVnbld3Zko0Uit4eEYrdXJIOElxek1XbWpOaXYvQURi?=
 =?utf-8?B?VTdLeHV0V0dxb3lBakxMcnBYUitrZkRUeHpyTXJaUU9IY28xOTlkbDVEOCs0?=
 =?utf-8?B?RTlQL29lMXdMTElPbGtRd0dzL3ZFVTVGL01tdzVTdTBqa21HZFlxWTVIWFda?=
 =?utf-8?B?SEw3emJacmhrN3pUTUhqenFLMjNuMlhhdS9pRGFrZ1VyNUZycnRSQk4rbm1G?=
 =?utf-8?B?Q3ZwK0hjOUxlY0FqMFU2VXlwTG5DYkJWMUs0NFVHK1J4a3B4SlQxR2Rnam81?=
 =?utf-8?B?VWVNMFVkOFd6UlZYQ0l2QitWU0V2L2U0T3RpOWVXajFGN0R4OEcrVVAxOHBa?=
 =?utf-8?B?ZlFsMjZscUVlZkxkdkE2Vkt4djZXVndCa0FJN1V3cHM0eDk0K3JuTHZ3TWV1?=
 =?utf-8?B?ZFVUZlAxSVVaN1p0Qk1vOTVJTTUwUnZGbHNvWk9EbDU5dmhwY3owa2QxUXJt?=
 =?utf-8?B?K0tZVi9waHlmcHVIYU9LU3R6dU5nOU4wTkxPdDdGdFFEVkV6YzBTUzFQU2N0?=
 =?utf-8?B?QkJ3NWdEZDg1dkVpMXk3dTVmWkpjVDVjNFNSOUN6aFhaem81dENpdldLR0lX?=
 =?utf-8?B?SVBETWZ6NnF2ekVyN1lMUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFRlWWtpb3NBUXdZTk02UDQyaEdCQ3BoUnI0bGdlRlM5TEFNcklXSVprOTZD?=
 =?utf-8?B?cHB0UVBhTnc5YzluSDVlY0FtVlVrUkRSU3VEOXEvTk5DRWRkaGd1YUZvQ0VG?=
 =?utf-8?B?STBiaVFQUTI5K2V1MzhnZzdHNXROZXNhS2tnTVM5Mm9VRTZLaXJZa3JBYmU4?=
 =?utf-8?B?TUxJTXJwYnVUU3BhN1YrTTJyWWlhUFRiQ2pBOXJLdEJkZ21sZVdZYXRzQ1Yz?=
 =?utf-8?B?a0o4VS8xSzBTVUNoZm5oaGlIRzh2MWtZODBUYkpqU2NRdmZaV0NSMWc2My9O?=
 =?utf-8?B?Q0VVNVpnY0dGZEhnc3Jvd0Q5ek5zcGIwQklKR1NZbFJNQ0JBRjZjVG5vK0RR?=
 =?utf-8?B?dkE5K1VucEhSNlNwRVZPcjN5YWlpdG94N2JIeGJhL2l0NlltTDR2QVNqZzBR?=
 =?utf-8?B?MXhFVTZrdlBLV0tNbVBQM29jM1hLZGpBY1Z4VklJZTRNSDNSU1hjZk1OMnFs?=
 =?utf-8?B?b1I4U1ZzbFE0SWlCdW9FT00wWmtOVGRGNVNBeGFmYVpqYzNRa1psTENvdXRF?=
 =?utf-8?B?ZU5GUXIvcFdjMWw4ckc2dldCbWZvcUVORFpKR0xyK0R1K0ZOQTYvbG0xMU9F?=
 =?utf-8?B?U2VDWXc2SWVybzFHMTlDTTczOFNwT1dPOTErU1NNRVJtV2NKU2VvZ0sxb25w?=
 =?utf-8?B?dENNSmgrUm9UV0VZYndzSHVqNVFTenVlTWpMRmhFeGJFZXlDaUtXNEU3U1NU?=
 =?utf-8?B?WDFFWWttV1VycUJyUmEreG95SElkNzhsdFlxVXFLa3hZZEYydC92RGFzbks3?=
 =?utf-8?B?cW9uekZiaVdXNkIrS2xNNzNhVEU4Q25NYy9MeFVwYXVhQzd1aTFlbGlQM2dh?=
 =?utf-8?B?emgxREFNY1Z2S1BtcFVRMm9SMU9xWWtrcysra2gzY3RoSUVqU2IwNFRwekxs?=
 =?utf-8?B?RzMvcnMxVEtENmQrZ2IxY0VySUt6V2o5TzU2R1BOWklnWkYveWR5R2hKNGxi?=
 =?utf-8?B?Q1RxWC9rTlRpMUFyZHJnVXE3TW9iQXBUMi82cURWeDVtOFVhSXM2NDRHSXNi?=
 =?utf-8?B?MElHWHltRHUvbGFScmd0MktxNERQTjUyYUlpWlBjNUp3bXJ4VTdKVzJhUith?=
 =?utf-8?B?dTlYeFVMei9aOEo3bTk2dG9lcUNTenZKOVhEcTliNGVHVGRoT2Y4aWRETy8z?=
 =?utf-8?B?M2VNSnRodHUxV3lyWmQ4VStBMVNYaUFmMk1vRE5vemQ2aUhUbkx3cHZQNVNw?=
 =?utf-8?B?enVndnA5RDdsa1hoUXBHYmlmRzNqSWVqdkQ5MTdJdTJETGRuREZaLzg1RVI0?=
 =?utf-8?B?dlVMeFc3MHkxOVZzaXJhLytCTE1yWFJJaWhLcG95NHlpT2xnNHRCZ25YakND?=
 =?utf-8?B?LzRDR3FWbWpSekNlMWk3YUVRdEFhdXdjazRVeWNpWitoNWRDWnEwRkpLRDNQ?=
 =?utf-8?B?YkhteDcwMjVzU3hWS2QwZFl3eHN6T01ZZExCeG1RYWdqQ3BEbWpLZjYwcklB?=
 =?utf-8?B?ak14U0NwRW1CemFVSThzaTF2N2laWkcwUUQxZjRWQVZOQWRjSS9SODZWeVlu?=
 =?utf-8?B?bG1nSlcwNzhNZDlRQVhyR1lTRUJOZUdqY3FqY0tKUXdnM05zY2xydmlzZHpB?=
 =?utf-8?B?Nmt5YmlZY0lsT2E5ZGlzakxMbG9mb0J3NzFEMVc5TFZyRktaMlhOcWt4Q3lu?=
 =?utf-8?B?MXlsUWwvSHROR0RmLys2Rm5qVVdBWXZycTZRQWVaeURDMFpGWGFlSGFqdWlV?=
 =?utf-8?B?Z3ptYzRJRW5Qc2NmN3ZicFo1ZXlSbmN5d3grZ00vSk1hQ1Y4SnNKODRSRC9C?=
 =?utf-8?B?L0FWbHZJbW4wa0p6R20xaHJWOEZuQ2RDV01QbkdKcWpnL2c3TiszWVJPTzZJ?=
 =?utf-8?B?ZXFNYUxnRzFJOUYvVldwaDZDbFZWa3FHcHQ2NFVGWVg2a21qdVB6UDAxeU14?=
 =?utf-8?B?QlNYZGROaDBkcU1oYXBwMXBwdk91UkFPT3hrSG1ab3JXZEFuMGJqSGp0Zmd5?=
 =?utf-8?B?QXR1NGR5c1YvT0NITUtRY3FBR3U5UjBpMXF3YnErZ2VadCtpeXRXOU9GZzRl?=
 =?utf-8?B?NkJMZDROM3RwcjlPL3BCemUxcHp3RVZZMXNoS3lWaHhLKzRTMno1dm1nOVpV?=
 =?utf-8?B?b0MrNnNzSEdMK0JlWkREbzFpYmtNQnBnVHZWcDdxRGVoUCtWTVJpTXNCQ2px?=
 =?utf-8?B?NGxkeWtEQk5NMFBXZHlZQmxpUGxBazRPWkVZS2RSVTBjN2hRNHpROEZXckZm?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe3a8e30-547a-482a-1421-08dcc5b3db57
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 09:45:45.1837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iy7nZYRrRD/k4XexlBiHOUe1xlHG3/jB3hbBJJ+DfvZsb9NoRlPxILwUoCIJTPm1XS2OezncWWpJQLhAvo8weEx2Cs7nrRytnqBLWyzeMoY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724665551; x=1756201551;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sdjQoZKXPGTr0Od0lb7H+0+CUU+xFYkZnbfLKQpYoNc=;
 b=QvNf4DMD5Du8SzUJwPffJGIfBXhBRT9Bsk6ThrrswrDcTzttvRoqDbtM
 +xKlxdiqOgL5a+ANyBid/Z6ORaTZkzt+ZsdP/CEZDTCKDFBXqcSl3qa27
 gVTSvKqvprR8G5nw0rP0aqEfXmXhEeHsg7CPrTmzr++gp1DsMeMdKjtvI
 PzE9lQvlY10+MgdGgIBgw12mi6knu62lzN30lPLYub4HU5mOl+hdsqN8i
 Fb/g2ETCJgH5uX870m94P+BsF6dWMWEy5g9N3wUZ5OlX0briSoeg377z1
 k7nMHjtrQtSVz6TN3xm/OoB4eFeRB3pZgB3zRvDfTGhodCcuPEhpW/fG/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QvNf4DMD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 04/14] iavf: add support
 for negotiating flexible RXDID format
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.08.2024 15:52, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:29 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
>> driver the ability to determine what Rx descriptor formats are
>> available. This requires sending an additional message during
>> initialization and reset, the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This
>> operation requests the supported Rx descriptor IDs available from the
>> PF.
>>
>> This is treated the same way that VLAN V2 capabilities are handled. Add
>> a new set of extended capability flags, used to process send and receipt
>> of the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.
>>
>> This ensures we finish negotiating for the supported descriptor formats
>> prior to beginning configuration of receive queues.
>>
>> This change stores the supported format bitmap into the iavf_adapter
>> structure. Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled
>> by the PF, we need to make sure that the Rx queue configuration
>> specifies the format.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> [...]
> 
>> +/**
>> + * iavf_select_rx_desc_format - Select Rx descriptor format
>> + * @adapter: adapter private structure
>> + *
>> + * Select what Rx descriptor format based on availability and enabled
>> + * features.
>> + *
>> + * Return: the desired RXDID to select for a given Rx queue, as defined by
>> + *         enum virtchnl_rxdid_format.
>> + */
>> +static u8 iavf_select_rx_desc_format(const struct iavf_adapter *adapter)
>> +{
>> +	u64 rxdids = adapter->supp_rxdids;
>> +
>> +	/* If we did not negotiate VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, we must
>> +	 * stick with the default value of the legacy 32 byte format.
>> +	 */
>> +	if (!IAVF_RXDID_ALLOWED(adapter))
>> +		return VIRTCHNL_RXDID_1_32B_BASE;
>> +
>> +	/* Warn if the PF does not list support for the default legacy
>> +	 * descriptor format. This shouldn't happen, as this is the format
>> +	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
>> +	 * likely caused by a bug in the PF implementation failing to indicate
>> +	 * support for the format.
>> +	 */
>> +	if (!(rxdids & VIRTCHNL_RXDID_1_32B_BASE_M))
>> +		dev_warn(&adapter->pdev->dev, "PF does not list support for default Rx descriptor format\n");
> 
> pci_warn() or netdev_warn() if netdev is available here, sorry if I
> didn't mention this earlier =\

sure

> 
>> +
>> +	return VIRTCHNL_RXDID_1_32B_BASE;
>> +}
>> +
>>  /**
>>   * iavf_configure_rx - Configure Receive Unit after Reset
>>   * @adapter: board private structure
> 
> [...]
> 
>> @@ -262,6 +276,37 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
>>  	return err;
>>  }
>>  
>> +int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
>> +{
>> +	struct iavf_hw *hw = &adapter->hw;
>> +	struct iavf_arq_event_info event;
>> +	u32 len = sizeof(u64);
>> +	enum virtchnl_ops op;
>> +	enum iavf_status err;
>> +	u8 rxdids;
>> +
>> +	event.msg_buf = &rxdids;
>> +	event.buf_len = len;
> 
> This looks suspicious. @rxdids is u8, while @len is sizeof(u64), i.e 8
> bytes, not 1. Is this intended? Or maybe @rxdids should be u64 here as
> well, just like adapter->supported_rxdids?
> 
>> +
>> +	while (1) {
> 
> @op can be declared right here.
> @err can be also declared right here if you address the comment below.
> 
>> +		/* When the AQ is empty, iavf_clean_arq_element will return
>> +		 * nonzero and this loop will terminate.
>> +		 */
>> +		err = iavf_clean_arq_element(hw, &event, NULL);
>> +		if (err != IAVF_SUCCESS)
>> +			return err;
>> +		op = le32_to_cpu(event.desc.cookie_high);
>> +		if (op == VIRTCHNL_OP_GET_SUPPORTED_RXDIDS)
> 
> When one of the elements you want to compare is a compile-time constant,
> you will get more optimized code if you do
> 
> 		__le32 op;
> 
> 		op = event.desc.cookie_high;
> 		if (op == cpu_to_le32(VIRTCHNL_OP_GET_SUPPORTED_RXDIDS))
> 
> because then you won't need to byteswap a variable and constants get
> byteswapped at compilation time.
> 
> But given that iavf runs on LE 99% of time and it's not hotpath, it's up
> to you whether to do it like that here or just leave as it is.
> 
>> +			break;
>> +	}
>> +
>> +	err = le32_to_cpu(event.desc.cookie_low);
>> +	if (!err)
> 
> 	if (!event.desc.cookie_low)
> 
> Because 0 == le32_to_cpu(0), it's always 0.
> So you don't need @err here and it can be declared inside the loop above.

I'll refactor this function to use iavf_poll_virtchnl_msg, so
this loop will disappear from hear.

> 
>> +		adapter->supp_rxdids = rxdids;
>> +
>> +	return 0;
>> +}
>> +
>>  /**
>>   * iavf_configure_queues
>>   * @adapter: adapter structure
>> @@ -308,6 +353,8 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>>  		vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
>>  		vqpi->rxq.max_pkt_size = max_frame;
>>  		vqpi->rxq.databuffer_size = adapter->rx_rings[i].rx_buf_len;
>> +		if (IAVF_RXDID_ALLOWED(adapter))
>> +			vqpi->rxq.rxdid = adapter->rxdid;
>>  		if (CRC_OFFLOAD_ALLOWED(adapter))
>>  			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
>>  						   NETIF_F_RXFCS);
>> @@ -2372,6 +2419,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>>  			aq_required;
>>  		}
>>  		break;
>> +	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
>> +		memcpy(&adapter->supp_rxdids, msg,
>> +		       min_t(u16, msglen, sizeof(adapter->supp_rxdids)));
> 
> Why is this needed if you assign ->supp_rxdids in
> iavf_get_vf_supported_rxdids()? Or is this something different?

I think that iavf_get_vf_supported_rxdids is used only during init.
This part here is used later during reset e.g.

> 
> I'd also say this memcpy() is not safe. ->supp_rxdids is u64. If somehow
> @msglen is less than 8 bytes, you'd probably get a corrupted u64 value.
> I think you should compare @msglen to sizeof(u64) and bail out if it's
> different. If it's the same, you should just do

Sure, I can make it like that.

> 
> 		adapter->supp_rxdids = *(u64 *)msg;
> 
>> +		break;
>>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>>  		/* enable transmits */
>>  		iavf_irq_enable(adapter, true);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> index b60df6e9b3e7..3c2d6a504aa0 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
>> @@ -2709,12 +2709,12 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
>>  static int ice_vc_query_rxdid(struct ice_vf *vf)
>>  {
>>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
>> -	struct virtchnl_supported_rxdids *rxdid = NULL;
>>  	struct ice_hw *hw = &vf->pf->hw;
>>  	struct ice_pf *pf = vf->pf;
>> -	int len = 0;
>> -	int ret, i;
>> +	u32 len = sizeof(u64);
>>  	u32 regval;
>> +	u64 rxdid;
>> +	int ret, i;
> 
> RCT broke here =\

sure

> 
>>  
>>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
>>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> 
> Thanks,
> Olek
