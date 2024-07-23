Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B88A93A9AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 01:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E72A405BB;
	Tue, 23 Jul 2024 23:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FDag5gZI_P8S; Tue, 23 Jul 2024 23:15:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA8D4405C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721776543;
	bh=Z707vqZDGb8BraCmkv734ajGngNp78fLt/vGNqo/aRs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=76kurBcyhEnomnnSew8WZurrp4LqWrhWbAepOgXEkxwpRYPIFO3/YTo+v30UDt+wA
	 p+y6AFlpMJhPkvFyTEnXr31qijF3xq1F6nhrP4uukORGLPMzgxbZroUiABMfMIXtQJ
	 tCEisiHBBDWo/aT8aCwwVJsWGCc4GyVggJKNzmPhKnTclzNAPRmGUXp3V5YTxEg9d5
	 bnb/z7URt8emnFIzim9sNRA6UU6St2J6OSHdnkIjqEYpuCVX84P1VRoajXdi3iZybZ
	 fyzB1E9znrEDfeNPpcFz/Quxc3o2g2suNYDDQYWYfPxOpIZUNbWEQGHPtTO3eGnr+H
	 4gqsxywSVr2Sw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA8D4405C9;
	Tue, 23 Jul 2024 23:15:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 448F41BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E7C980A8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:15:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SmYbN4V8KSoT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 23:15:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1BB4B80A73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BB4B80A73
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BB4B80A73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:15:39 +0000 (UTC)
X-CSE-ConnectionGUID: NbxaXj4FQ3Gr1ZP8N/us/g==
X-CSE-MsgGUID: 0f02l0mYQ6u/wNkwLLSf9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30847088"
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="30847088"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 16:15:38 -0700
X-CSE-ConnectionGUID: My7fFtV2Q3e9Y3zHA3kHKg==
X-CSE-MsgGUID: ygANJzG5Q+WOMMAGC0Ksrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="56544401"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 16:15:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 16:15:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 16:15:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 16:15:37 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 16:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FAHUK9X07oBmDlS+N0qSQTHcYOF08FKtojFPcHbFOvtmVl1zP2yDG8AatZp3yy1dlkyi7+/dc45/m2+rNR3S3GX957YNmL2CcF1eFZxjApzD2ENfF3a0Ts19l6SJUvzJOVegB+9W2s/CBDb3bb79LAIHOGV01d1s33mCmXEKxPhx9zUhGOvo79MCoH0o3O806xc+IISWhT+lMqHIWFTGM6ualXP3uB+VxtHYWkQ/qrb4bzJaEfLbCCW+b7cNV3cpPFFKxvAyDvKoUKFxps1gZT4bEMe8jcuL6olkJfA+xcdN0YBy7MyiA08abgjWHGunLlptlHrj6O+edK1H5s3JeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z707vqZDGb8BraCmkv734ajGngNp78fLt/vGNqo/aRs=;
 b=DXu3KjKcR3B7UcSxx8YwfhlrKjyO5+BtfRnAWYQu6AbY9pKyX0+Zu8lzfXpHAVcEiviL0XCnQhLvaWMvipRh8kmtfax/3Pht9ZQZ+tjrcHObv+p0xLES17URP0rh7f/qMNebhc+MfN98IBUlv2jY1rrRyeGNf0wWMxjRCRD8hQbRicTu2m4THc/CT/a2pdT+PBLY02g28HiUYX7wYRbDTOazeBFvpWUKIKFZ0/cBckdBcRjG3qeRphU9EbjgInbH+Q4w3tDhq2LSPXVgQ2D9eqbyf104nDRIBHvZxiMsjOcF9IBN7VrHThxHJ+PVzy2O1dWBSqiU84B0mdKDwmb2ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4927.namprd11.prod.outlook.com (2603:10b6:a03:2d6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Tue, 23 Jul
 2024 23:15:34 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Tue, 23 Jul 2024
 23:15:34 +0000
Message-ID: <0c8a76f6-92fb-4c50-9ef5-b66c241f41c1@intel.com>
Date: Tue, 23 Jul 2024 16:15:33 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
 <20240718105253.72997-4-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240718105253.72997-4-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0014.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4927:EE_
X-MS-Office365-Filtering-Correlation-Id: f35f3dd7-6f8d-4b7a-112a-08dcab6d5b08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUdYcHlBM0g3NU9ZV2hzQnl5cG90aTNtOWZWSGhmQjlzL3paU2dzRklNNWJW?=
 =?utf-8?B?RVBFQzNUOFBwZXB2K0pZRm1rTmQ1d2lQeHBJemlDS2REd0dLRXNPU3MxaHBr?=
 =?utf-8?B?VjJwRmpUMlZaMzIrNFhEdjk1Q3JuUGE3WitJQ3ZxSnpBbXpPVTcvMjdveHdM?=
 =?utf-8?B?WjZrSE8yZnQzcC9KeExSNzhYNmovM0pJaVBFdTlaZElKaTQvOW8zTDE4b3dO?=
 =?utf-8?B?YU1YRjluQXlZaExTU3hKdHc1RVhJeGVHUUZnR0laYkQ1clFIR21XWnBaeWMz?=
 =?utf-8?B?dWVXQzZjWHlqVVlBOFFteVNwd2FqWXNpUFQ3WnRtSUQ5bVhOR0Vna1R6Tklz?=
 =?utf-8?B?K2gxbThOT3Z1OUJQai8wbFFwMitIalZyRXI5Ym0xa0hncWY0Wi9xU3JYd1Nw?=
 =?utf-8?B?bjlNVFRKcVZucmZGUHNUVU12N3Z2dU41bVZid1hYNXg0RTlDOW1IZ0dsaitN?=
 =?utf-8?B?cnB1b283OVVvTmRod0RpWlBXUVQzdHErcXBNc3cvazlvU2ViQTNYa2tPcUpK?=
 =?utf-8?B?N2x6Rm04MnVlUXR6NktPRitnenk1VVZ2YjlKekFGSTJ3cGxXblBhTmlQY0Nm?=
 =?utf-8?B?VllYQjRpdytYNnpBMENzaHQrK2NrWXBUSm1tZVRlekdybmtXS1hPWHNFR2I4?=
 =?utf-8?B?Q0lGSWIvekhOS0JXU0xBUnNsVEQ0VkliY2hVc2t4L1JSY1E2QjQ3QUFZZFoz?=
 =?utf-8?B?c3RqSXB1R0l4TXBUdElYdGh5amhHb29GYTFMU3U5S01PbXNqYTRVODFCejBl?=
 =?utf-8?B?WEdKcHVEbTBuemNaRXdrMUJMU1RyK2dsOXJ5dGtuckNGVUphOGdUVUk5OCtK?=
 =?utf-8?B?cEp3TTNSTnF5aktpNHBBQkM2Zm9zN0pwaFp6WXBHRmRzUE1JSGNDVGF1M1hp?=
 =?utf-8?B?YndLVnh4TFJ1WFFKd3VZQWY0U2hqcjl3UEFQTitldXRxckdvelVaY1NUNEM1?=
 =?utf-8?B?VHJ3S3RUMElCS1RiZGxsMUtVSk1oWDVHZHNHWHg0MGhlbWd2d1hPT0ZtbzZ4?=
 =?utf-8?B?VHdMbk9IZGdtOW1RZjNCeWxITkcvVERnc3M1L3BPY3NUbVRuRk5DNVFvQnBN?=
 =?utf-8?B?VHJUMGE1WHMyclUyTzh6bm9SVUlTWnlMVWx3RSsvMW5VaTd1T3QrTXVaL2Zj?=
 =?utf-8?B?WjJoNmRmMk03OFlUekt0a2JqeDJ2Zk9Oa3JYSUNhaThjOEtkaFBmRmk5UEJi?=
 =?utf-8?B?bll4ajYvUUlJakEycVVvN2xVZXFPRVpUTVJ4dGIzYldhV0Niek16RnlLbURR?=
 =?utf-8?B?OGRwWWh2c0JsN25kVWpNY3V5dHI3TWRRSTRRQ2RhUWN4UUVIVjdCV0Z3VVhD?=
 =?utf-8?B?cU5WTHpoRlVReGd4ZWxTclRoRzd4S2FsV2JFeTl2dDBSbWV6TmloTGdjQUpS?=
 =?utf-8?B?MFczdUdHczdsL0U4WTJaYXo1S3FRb1lkMnF4R3UxUnpyNkYxcjZjQXhmbmxN?=
 =?utf-8?B?Zk1URHBHblJhSUhkbkcvaXJGOWErNFJLRVUycndnVzZVWksrTjUyT1ErL0xK?=
 =?utf-8?B?VndmTU1tOWM0UlNXNDM0citWTi9jMjhSblFobTRDWHdUQTdrVEFzVVdiT1Bs?=
 =?utf-8?B?d0JNajlqRlNaUmRnbjFIMDVkMEl5QlFTdlVZMkVKWlNvN3F6VmpSZkozejdP?=
 =?utf-8?B?S3k1SlBIbHgrdGRXWnpzc2JJbHp4Tm44eE5ldFhab0RrODYzN09UZm1jZEd6?=
 =?utf-8?B?NGhObythdHBIM25JaDlDa1EraUwrdmpYK3UwdEtHcjVGekkzMVJUaS9xWGlp?=
 =?utf-8?B?Q2F5aDQ1d28xN1ZtejhtNzhmV1Q2ZWZhakpPdmJmZ2JEV2psVGlvUm9PTDdp?=
 =?utf-8?B?YmsrZzRPVUhqb0pxcG5WZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3dyc3BBa3ZKRjB0ZW9FU01DWkpmRmFuNCtaTGlrZFNrUnNLOVVjclBDZkR5?=
 =?utf-8?B?bVkzb3JXTTVzSzdOQnhwWnZPV0JBMTZwWGJHQTBOVVgxSkdIQ0FEV2JJcXls?=
 =?utf-8?B?NWVBQzRVam8xZTJKd1MyYlVFbXpLMkk5ZVBwdVJ5dlVlL20yS2Z3K2orTXA4?=
 =?utf-8?B?K3A2NkRocVQ1Rnc3aERMc21pdFR5YUNJZVJ3OUxmL1k3eGdnaTMxT3M0Qmkz?=
 =?utf-8?B?a2gyaGNpdEp1SFBqRm0vZVc3N1ZYd3dvMXNmYUVqRTRpOVhzQkNvam0wREo5?=
 =?utf-8?B?M1dTR3dERDl4SDZFN0xSb3NzUnkreTlvVjcwUk8rdG5FYngwL0htazVWRno2?=
 =?utf-8?B?c2JFWGw2TU8zNU9odWo5NjVHdXBvTjc2dERWT1N6aW95MDJQdEVrY2lBQ090?=
 =?utf-8?B?NEh4b1lRR2tid3RWY1o2R0FUT0V1eFY1NFZrTlQ4Y29kbHUrd0NnLy93SzhB?=
 =?utf-8?B?QUxYRlFYb3BOdFBPd3g1U2pGdnlUMnFpc2NTdVh2N0UyNG5wM292N0NTb1FG?=
 =?utf-8?B?eFA1MWdTY08xV0MxTXduUDZMVFdmajBienRwZWNtR2daL25WSUd1V1hPUElB?=
 =?utf-8?B?S1hremNxRUZNSVpNQkx0cDIrc2tYZjQyeU1JMVY2RHFPMjlKdklySVBucHMv?=
 =?utf-8?B?aFNtVkpRUXRPQlBOOVRTZzhaTU9GZU9xRmtmbER0WHZNRkZVcU1rOFZzTVVY?=
 =?utf-8?B?T1Z3d1NsTTV0QzEvZm81SFBtbENadWdXYzBmQTNsTzl4WVBlbmpMYjlvektv?=
 =?utf-8?B?QjhaVmpDMGVtMytVTldjeU9kTmV3QnJtR2ZaLzJaRHdtOStpS3VpQW81Qzhq?=
 =?utf-8?B?UlBnY1dhNjh0TGo4N3JVeTRRRkhNbzVIYTZLZzNZQno3NEVHbG9BdjZqTDAz?=
 =?utf-8?B?dGhmM3VwaW5lbkUyZnIyWFRQNUk1Q1RDajVPRVVINGlDUERRLy9GUlJDQ003?=
 =?utf-8?B?TkdFU09IRGY5WlVOTXlKSFF3SWh5eGtsK0VoMWg0eWtMdDBmT01HSFVINHRK?=
 =?utf-8?B?YVR3Z09qNENOVEN2U3FmbXlkekNTNEorRnE1NTE4QnJpODY5Ky85Vm0xcElq?=
 =?utf-8?B?aEw0YmY3RE5qZ1Vva2dhQnhyMFZVUFo0dkhvQ2FPMld5UC9sRzhyaHNOTWtP?=
 =?utf-8?B?c2ZxSzRCWVhCUVplSkl4M3VLYk82d1dVSEFMSjhUV0NZTWdibm1Qb3VjRTQv?=
 =?utf-8?B?Ry9GTzRVd0p2a1YrL3FkVTE0c1UzQ09xZmxyb21ab1FJb2ZFOG8zWjlsMDZB?=
 =?utf-8?B?UVZoR2FYUVB3TTF2djRMRk1BNVMza1htcWJKaG5jUzFRS0JpeHYyQU5KakZ5?=
 =?utf-8?B?ejRWTnp3alRlQ2lqeHFYOFZYemh6cHgzdzgvdkJSWDFrZWJ2RGFTcjlUOGdC?=
 =?utf-8?B?R3IyY3htVTZTRzBGSThoMkpaTkZzTGFJUVUrZUF0NTVyK3p4eno0c0NvL2Rw?=
 =?utf-8?B?TDcrSFJHVHY3dXhkeHNSNGpQZmtqcVl1UlNLbEpmWEhnYWN3eWVyMUhkTWFl?=
 =?utf-8?B?aW0vUDIwZTQ1bFh0MlRRQ2lVQ1hNakhvZmZDRDhvck52NTFvRDRzUG1zQXFr?=
 =?utf-8?B?eGI1MUJacjFDYjNpRk1vWlVEV0RpRmxYcFRSMU5TQXcxZGlNczFXUFJVU1Va?=
 =?utf-8?B?NEVNVE1tYXo2d2llSzI1em1jcEtPVEJSSXNoQzQ4NkZqU0pMRDY4Z3ZKd0FB?=
 =?utf-8?B?ZGRudENZZkpobk5qUXNwd1dXSXAybGVhZDRpUldXc2poeUlsdkhCdTllNXJ2?=
 =?utf-8?B?S3ZVTEluN3AyY0lZck9RY1FvUW1FQ1MrR1NSNmFqN1hYMElqOW9YZXJGcElG?=
 =?utf-8?B?Q1ZTbG4zUTE3b2g4K1lSVVlmNlQ1VWlJajNKN3E0N3Z1dXhMTDJnZm5oRU94?=
 =?utf-8?B?MEVodW1uc05XYWpLeDRkVGRMeURPajRvdG13TElueVllZUN1UVBiOXZtUEpk?=
 =?utf-8?B?RjJMcjV4Vk1EOWlYMjRSeTFYSWcxUk9sRWFlY3NSN1AzM2NvUi9BZk9qdk14?=
 =?utf-8?B?VFdRTHNMd2hYV1RDY1JaU28vaWZNR0dtaUZLR1luZUdhdDRYcVRyTWdySmg0?=
 =?utf-8?B?UlBTbXZ2RGFjeWFmZklYZENRM2x1LzR3ellKTmdYRG14TFFkdG9JMFVnQkVD?=
 =?utf-8?B?dmNCN1AxdE54RG55UU9FYXdkaWlVYmJPVXlrMWNLODVjOGFaMndacGkyZmNn?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f35f3dd7-6f8d-4b7a-112a-08dcab6d5b08
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 23:15:34.7568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gHIyzmEixhTAU/Mc1aW2BXYDjA/ay4OkOEacDEOyejweofkctkx85xXEC484C/f5EfgoOAQ/EDD9lqtTznZTSt4NXPE2zbqhySL/DNh/R0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721776540; x=1753312540;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2gjvznWbJUVUGESSDxC4ooDtOFuudRx+PYMp8wWfW+g=;
 b=WllmmtR39txvWEQZnfSlHaV7COrkEOEAPfq8+8FNJ4I5LXqpz/E/vkSD
 6GEP/F3/G78e6UtLtMjm+TYlqlmAik+FlZWVyRFK6Evw98ed5bMjNy9k1
 LyIqoepQQhy30rtK/Yr1K6J+hWhvdvl2Tr/JGJ8NX68kw6GboSUZVam9m
 /ypfORfEDiK4SPa7DNHfwHHa9y4o6vZej4PUvVmt70M+a/7YIjRNLtg1p
 Fsg3xKynjrXXyOf7iNtYKZ/KTfpWBVWdSWXuE/YqoXHyUfQwShff1maQB
 0jx1Bx4wfREqv7JfUqaKAVyhSuayvWrOMcsyQRcLZrK5IXRSoun3czdd6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WllmmtR3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: Initial support
 for E825C hardware in ice_adapter
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/18/2024 3:52 AM, Sergey Temerkhanov wrote:
> Address E825C devices by PCI ID since dual IP core configurations
> need 1 ice_adapter for both devices.
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
> index ad84d8ad49a6..903d0bc9e3e5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -9,12 +9,14 @@
>  #include <linux/spinlock.h>
>  #include <linux/xarray.h>
>  #include "ice_adapter.h"
> +#include "ice.h"
>  
>  static DEFINE_XARRAY(ice_adapters);
>  static DEFINE_MUTEX(ice_adapters_mutex);
>  
>  /* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
>  #define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
> +#define INDEX_FIELD_DEV    GENMASK(31, 16)
>  #define INDEX_FIELD_BUS    GENMASK(12, 5)
>  #define INDEX_FIELD_SLOT   GENMASK(4, 0)
>  
> @@ -24,9 +26,17 @@ static unsigned long ice_adapter_index(const struct pci_dev *pdev)
>  
>  	WARN_ON(domain > FIELD_MAX(INDEX_FIELD_DOMAIN));
>  
> -	return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
> -	       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
> -	       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
> +	switch (pdev->device) {
> +	case ICE_DEV_ID_E825C_BACKPLANE:
> +	case ICE_DEV_ID_E825C_QSFP:
> +	case ICE_DEV_ID_E825C_SFP:
> +	case ICE_DEV_ID_E825C_SGMII:
> +		return FIELD_PREP(INDEX_FIELD_DEV, pdev->device);
> +	default:
> +		return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
> +		       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
> +		       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
> +	}
>  }


If we extend the ice_adapter to non-PTP uses (like the RSS or other
ideas that were pointed out a while ago). How till those be affected by
this change?

I think it makes sense still, though we may need some specialized
handling if some of those configs don't cross the IP core boundary
(unlike PTP which does).

Thanks,
Jake

>  
>  static struct ice_adapter *ice_adapter_new(void)
