Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oK4LGS2G12mwPAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:57:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 703B93C955E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3EE060D92;
	Thu,  9 Apr 2026 10:57:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yrZ89W0JHuMk; Thu,  9 Apr 2026 10:57:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3668460EDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775732266;
	bh=TU0NsFPaCFAyokG0D2Elae5zoRB2RfR1In0VABj9Ug4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9kX1g3o8Svfh+uxgWGubgF3zBjkYcdDY2bchwk2hworQi62paSYttzyFh8LBAp5y1
	 LQr0fY1HVTpGYlm7mrpv3gItInDJwAiKq3YIaqa5ryKndevrkmQbmvIonr+jj0ypUT
	 97BkUjoIlzAjJn+9EfVJEp/wCKxhPAhGwwhXekv8oUMvosO3nekEWp3NiKmgTVpOeg
	 CHN1rpDgr9DLMlrodIGrqtwbs7FFS5LVIAEYtWNPvDQjOnMyHPdeRnN4GWzkmXKlmv
	 QcyrOlQ/UcS5emOXdxgLBGd8LvpxMHUU5+yXPThkqvamjmi5s6vXVJLGEiAAPh6BBd
	 swafT/4P5AYqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3668460EDB;
	Thu,  9 Apr 2026 10:57:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 08DB71F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E5C8D60891
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:57:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c1Y87AqlmbpK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:57:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC3F860807
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC3F860807
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC3F860807
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:57:42 +0000 (UTC)
X-CSE-ConnectionGUID: K/QQKJHtTSyHedkCplvUHA==
X-CSE-MsgGUID: msqnBrFqQViA2pgk35axdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87431126"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87431126"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:57:42 -0700
X-CSE-ConnectionGUID: ytYTg83ZRKiN9s7DuE3aBw==
X-CSE-MsgGUID: EzHLRM8LTp6gG3JvwkZ/0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="224434699"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:57:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:57:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:57:40 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.14) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:57:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OU0YWBMlKBGbmsX6jPq0clDPF5KMtSwjKNjSlum/deEMRrfGzx6JSzHOp+q/s+P4dVh87sG4AQhTQOKfZ5FLUojGA3VmdODveO7EQoUC3PW4X2W8sWNNaYkMoQpx5tT989ecjyRyqS7MQsTpGZdTIdSB2UoV9W2wIlppXwQjg6kC89VvdnHJoznNG1lky6pvCz+Vg52WJhW0VIh1TabAtVTwVXglFXsEqa5MKl1bxjqzsd7kwhZaiYmxbWMgssJyvS/PLuE7KdiVZR/RLd430Zce8G40fHTPG94M2uuB+FFNZFvDpYO5gG7wqSV7RXpMqiZcpeInDlbyl81s/RBmQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TU0NsFPaCFAyokG0D2Elae5zoRB2RfR1In0VABj9Ug4=;
 b=a1uLDib3uMyifWuw+lqNpL1v84Q4JVcc+VQ+qphlBf3t2EJelmENNUvW7q84hhZimFKa9561h1UfVgIr+9GqA27NGXx+Y4+C9Lxck/YQLr9/0zbph8AaMVxgSp+cZdnhlPeGhwARkdDDpvtVtdt9br0vrSLS2Bb7hWxd8b7BeNNjM2PuJ4lYs2SJL2CL2zlYyzJ/TndnVCrCfXFXiVuGlOMxOAxQGlpCFwraLpQM2yH/wpd8UnXnpkgB4HgJJpyhjnY1Ggty5jX4H1ejFMfzgYY6LMbSnadgiskBB51begxSWYPZRYnT5yMppGHKAhY+oaI0hFS7CU+FZwBu6mKXOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by LV0PR11MB9862.namprd11.prod.outlook.com (2603:10b6:408:382::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 9 Apr
 2026 10:57:38 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9769.014; Thu, 9 Apr 2026
 10:57:38 +0000
Message-ID: <b9016556-abc8-40ce-91e1-3ded50d29148@intel.com>
Date: Thu, 9 Apr 2026 13:57:32 +0300
User-Agent: Mozilla Thunderbird
To: Dima Ruinskiy <dima.ruinskiy@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>
References: <20260318093412.2628443-1-dima.ruinskiy@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260318093412.2628443-1-dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0020.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::9)
 To PH8PR11MB8013.namprd11.prod.outlook.com
 (2603:10b6:510:239::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|LV0PR11MB9862:EE_
X-MS-Office365-Filtering-Correlation-Id: 56d7e6c7-c028-4480-1d51-08de9626d03b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 2+G1ESG96G7QGToZDTq1/6y7lrCnv1/wI+TpD9VDtDqBR8eoxeFwCgmd34ZVGA9CjS2zjjb++T9H80G31YJhyhqy3o1H7hLWraxfdruD949G2PZizqQhrc9XQn9FbBJSvYVZEGblUMqbLnvB3R016iqIpQplCbwvMk7zHIhDtuyAOj+9Amh0x9G0VbV4y0/NF+Z20oUgEmTa39ve3rKSp/IYBJAR8Xzm4GGc9UERRcZroIiMf0cNBk03FUhYig5NjOmXk86HPO0MiQvkK3eXAZ7SvRtqcOoLC2sLhSFOY5XKVar/w/qDe2zQgcKfLtUeDTgsQla62KPpGYEkOmYsKKtQ0G42YkhaRxi5ra3h1xITMzOiqOqOhd55xvul5iXlH52OVJnKQmStEjTS45Ht6a2WkF4wi3ahy4PDIJ8q10f+gih2jr5nbXaPAflzYwhe7C2K/uVKDS0Ce0UmATobcwFrmGH2F2oo0IdTVlukjFrf6RoedqfmEGuSRCFHNn3r34lkuhNSlR6daov0ITk666eUAqniC+TXsiaDVoSsmDm6v52W7Cf11rn3dEnCmLljBtB59AKVxFiaQohXBK6amnK/hoQu0sS+omAcADwNX8E4mddkIOxKmr9KYp+Fsew00GuIVddGgmXBVZ0eILKr2UkoQQSrIYQYVePe3rE/NUczBJbzbLKln88nouJIoXzihuIPX0qgCJRhmVDWJPpEirbQk3mmLm+LQ91ga20IOzM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1I2WWhQSWl6aWc5RjdXUTVzZFUzbWZnN0lLUWhCRFFQYWJDRm1qSVhQVnVj?=
 =?utf-8?B?ektqeDNBNUJVN0JjSExNd0lpTHc5Zzg2Q3ppQXA5bFVGYXRTUHQ3VnptN1FO?=
 =?utf-8?B?L1ZaRkhncHBmaEZqKzJ1V2FpejZVYlFENVJrRjh3bUVmRUIvQ2JyRVIwbHpY?=
 =?utf-8?B?TktoMlVuSm9FOGxHNFlmY1RQTEsyZEFlQnp6UDlEVUZlc2l5WGdBenRTWWEx?=
 =?utf-8?B?VTBaRXZhMHJzZmxlQkpZdXova1NuOFE3T1UvMTVnVE13NEpieWNQQ0puMTc1?=
 =?utf-8?B?V1BBQ1BRRzNaTDRqbUQ5bHlrdktjNm5BT1dJWGFIZHMwRnF1a2NtbksyQjlm?=
 =?utf-8?B?b2owTWhkTHJGblc3empQUUpuekRsR05VYkt4aW1ld212Ukh6NlhmZDJSUCt3?=
 =?utf-8?B?VzNWWHQzMCtkU3NscDJCSFpneXdGOXRESitHeXhRaEtkY2Nsb2hKdWRRcDA4?=
 =?utf-8?B?ZFpnNFh5NlBoQTZyWGszZG12QXdhQnlhMzhEUGo1QWJQcUtnM3lHSjJuV1d6?=
 =?utf-8?B?Y0lPVHRCd1pPTitnOFRIVGxjcWFnUWZXMXA1RGNPbGxlbStxWHpNcktuQ0lp?=
 =?utf-8?B?WGFmVmZRZWJ3dStqUkNzaU0rL0pocUtPMUgyc1dpK0czV0VBbHVna0pBZDJU?=
 =?utf-8?B?bzF5T3g2TTROMVFGck1KSTVhZnNJQzIzTmFzYVF0cFh0M0ZBM2VZdkZRaHVT?=
 =?utf-8?B?aU93S1dia2l4YmxxV3kvNHl0cE1pM3VrbUd6dGMvaWV0aWtaM3pTbmdFTW01?=
 =?utf-8?B?cDFOb0VLMnp6azlUblFoS25VRTlrSDFORmE0MERpdDM2M21xbnU4d253WHAr?=
 =?utf-8?B?RmRwSVc0OCtzZmtuU0FlRVhMUkFtd29PTDV1OTUvN1prOUdTS2dZbDdveXpy?=
 =?utf-8?B?Q1pZeUhuSzFtL3JIbUhuMUxSS1UvRWxwSFNYbjAzZFRxRkNmL2Fnbm1SOUZa?=
 =?utf-8?B?Qlp6TzNCcTFMSGhCeERsMXNwcmZYSVphRy9RNjBONDRPdUV3UzY5MkRUVzZX?=
 =?utf-8?B?Y2pvRjlIdHFqaUEvYWY1UGpabkdsZk1BaDdqd3FqSFc0WnNNQkdoMXF3UXFr?=
 =?utf-8?B?UU1ONThPSzY4YU5EQTdzc2VOdCt1WWRaVkFTdVBEdUZXbTlOVDNxbTBYZkw1?=
 =?utf-8?B?ODlTU01pSk1DQ2ErWTUrOVAraEVkbXplOTdDa3h5R1hrc3hVcVc1YUF2S3dK?=
 =?utf-8?B?MUEyQU9TVDhheFU4RHlaaEw4TU5BWFRNV1N4cEZTUFAzVjgwcHZKOVJaTHQv?=
 =?utf-8?B?bUdLZ3dEZUQvYWRPVzIyODNmQ0JFdzFxZUtLdU1Mck9nb1VtV2l3enFwcDg2?=
 =?utf-8?B?czBvbHpBdGo0YytNbVhHdGdXR1R0eC85NTRDeklRNzFTc3hwOFlJRzNwUmZE?=
 =?utf-8?B?K1ZyRFBnSUVaMkI4RzdDMUlaNmxEVFR0ZmRyUTlzZUhqa3FaaG93MFg4Sllh?=
 =?utf-8?B?aU9JcytpcnBSemh0ZWNLV1BLSjY3TlJ1akx5MzFqUm8xdVl5amRFeXY5Mkk0?=
 =?utf-8?B?ejd2b2F5N0xrWEFmTkxZZFRZZS9wV2ZKV0kzYXVBaGhxVDNaZWZTYkFqTDV4?=
 =?utf-8?B?NDJrWXpxaUhNbjBscFFHMUlTN3UzVnN2RWdYWXBEVFVkNkc5YUFSQ1F1Z1h2?=
 =?utf-8?B?K1NUTE41VWs3MUJDNkJUcnlYNW5MUEIrNjZwckJNR0lyUTlweFhDajMwOUZX?=
 =?utf-8?B?VTNIUlNoL21lTmR2T09ZT04wWlVJT3cycHUvbWx2bGNEV1VCbFNTR1JUbElm?=
 =?utf-8?B?WFNIa2s3WUVmS1hqYWxyRzlWVFR4TjVQb0plcnZDcTczM3REeVQ0ZlpkWkp6?=
 =?utf-8?B?YXpaL0xvYWlVR0tiS1FwUEVub2pSdk5jUGlsRFA2cmdSTVVFYk5lWTlvbCtr?=
 =?utf-8?B?Wi9KSlN4WWQyYjcwODd5N211UGRVVmkyOHEwamVnOE81a3czYStDK0xETE5Y?=
 =?utf-8?B?S2grR3Vlb3hQVlovS0dXb2ZweVBkb0FmajlMV0QwTTdMRmtzSzB0VWlmYzc5?=
 =?utf-8?B?eUVvZlE3M0ZTQng0MTFKN3UxTmltcUtrNTIzSHVDV1B2ZlhKV2RYWSt1QlVk?=
 =?utf-8?B?T1h3aGNnL1NpSE1xb2pKVHR2a1VNN3FNb3MxVGdRZ2hDTGNTVW5nSXdIcDFQ?=
 =?utf-8?B?dXFIbGljVjZNclNCS2JDV2dJS2MvaGgyazVFUzdkNi85UTlZaDI1SHpHL0hI?=
 =?utf-8?B?anBnZ0xhc1kvM2NaQTlnb09wejdjbzR0N3QvakttQUZXRzFVS04wVGJSOS9a?=
 =?utf-8?B?ZHNiZ083R2xKcDI5cVFxakFteVBsV1FOWGlYQURQTVhKRURSeVNDZnlMNVR6?=
 =?utf-8?B?YnZOaGdHdlN5ZldLQ2hBUVBDZDAzSnNZS01xb3pFZnZ4MlBPTUxsUT09?=
X-Exchange-RoutingPolicyChecked: IzTK2piZ+sdBbiCqqPDCfNKtZSDTpzuQ7XPHIJ19POHSsazIyA0/JJYrxKPg0mnDTEj7h65roI+kUHlohOEki67+g2BSUjtKSz5ZBpFZcjYhs9KjLE3WL3rnF/QExMsJhtoz7zl41/7o9Q5ScuXJB1elYps3T7KqHgfOWWOUvxLFW+odtgcVd5XyKbLAeBVepoVVmHHSZRzwAz2YisV8KG5pXINxcjy4ROIMYZzvzWbWXVYaSR4msFmiw6MIBpO8vRNb4r0X3bqfznbiI1NUqVSqRlskjycf6tvO2ZQ2b58RZE/WDb+A6Md2PXI0jUe4JqVnHyMv7R4gDYjX1oWO9A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 56d7e6c7-c028-4480-1d51-08de9626d03b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 10:57:38.2505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OqC8CYn43wuLGhryKoioNYOxih9sStgejFtDFqVoMUyIsSBPsEy0VoEKvw0inC2GEj78/+JtFc1hRKD1hm0DGcphnuKM9yC8Ctetl33eJAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR11MB9862
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775732262; x=1807268262;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6/SnIwY8GXOWx3Ib8++JRB2zfksDx0BRLXnfveOQcps=;
 b=jLw+QYalT/bZ6xEhiXD5/wg3dEBE2qQdBCDf0TcGC7y1MEiyfCt4oNCy
 OcnGnZkXnHzs1ArERaASAwBaJnbJLanzECYWBVbqEl6NclrSuq/bSHK26
 z6spEFjTcAzACDNcBn8YZI8qdB7T4v8aqs0RgNVErjzk6s+HKXc0P6fss
 P+UMM6pEWV0Qhd4ts2PZJoiEJV2dVeFK8xGG+NI+smH+VxKU7ynJnxJ5y
 mY73tvA5Q8J2Hirlhh0joQZzooqbnKCs/Dzly2IfYUhLddVpZUbpyui1Y
 8MjwDM6yBfhjmmcZRuPwcm8PnUVOqbLCeJ9mGXN0TwAUkmROzJnjb4397
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jLw+QYal
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: correct TIMINCA on
 ADP/TGP systems with wrong XTAL frequency
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 703B93C955E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 18/03/2026 11:34, Dima Ruinskiy wrote:
> From: Vitaly Lifshits <vitaly.lifshits@intel.com>
> 
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. This causes the PHC to run significantly faster than system
> time, breaking PTP synchronization.
> 
> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
> cross-timestamps. If the PHC increment differs from system time beyond
> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
> 38.4 MHz profile and reinitialize the timecounter.
> 
> Tested on an affected system using phc_ctl:
> Without fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 16.000541250 (expected ~10s)
> 
> With fix:
> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
> clock time: 9.984407212 (expected ~10s)
> 
> Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> ---
> v3: fix cc.shift and wrap TIMINCA write in systim_lock
> v2: avoid resetting the systim and rephrase commit message
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 78 ++++++++++++++++++++++
>   1 file changed, 78 insertions(+)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
