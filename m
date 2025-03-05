Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC52A4FB6F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 11:14:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6BAC60710;
	Wed,  5 Mar 2025 10:14:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5iPBSqldcUjs; Wed,  5 Mar 2025 10:14:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 974B1605A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741169672;
	bh=N2I4a2NrLqadckFRmSMZ9TU2EJ0Bw/pfk8JMNohMy/M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=i297WAJkZGeUw8Ub2osOtybBoNJl06CVtYgC4bmHLdjyeSxhkKN7qqazHOdO0N01O
	 yY9RjQBgEhew9SXHoKQU/9n4l09mduB3qqW5a2ZH3syP/3FkK1/AZ1bEwNlmky7l0v
	 8FCTx4VvUa6Fp5nb6qmX7a08Rbx4CD/j2JxWWAA5NUZwOJBgbHkG9NJwoOFXdJxmdV
	 KjbVJhJ/vboZ+UC2+68SLnyqEftokYdQkAAVsmPfkKmAt9WB3zXyvkkJft/AUjI1uA
	 nlEF+gNw5qYUPA67PbO1V1UpZ7woBB1GZ9ET13VFL51ciwMPIVdbYMcGLzf3or0mFu
	 WhSytFll60HLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 974B1605A4;
	Wed,  5 Mar 2025 10:14:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 59B6A95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 10:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CBC7605A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 10:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZgXSVGJ6eyde for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 10:14:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E853F60652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E853F60652
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E853F60652
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 10:14:29 +0000 (UTC)
X-CSE-ConnectionGUID: FaH8YALPTEih50EfUa33WA==
X-CSE-MsgGUID: S+C7qbg9TJeZqiDhKI6Y2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42015277"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="42015277"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 02:14:29 -0800
X-CSE-ConnectionGUID: xz14gJzwQ2qci24h1+bnwQ==
X-CSE-MsgGUID: ldO2BZlaTpq9e5HzfZtsgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="123670055"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 02:14:28 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 5 Mar 2025 02:14:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Mar 2025 02:14:28 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 02:14:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avjnVsLg0ypd81EQfAfOftRNFhvACgyD3F71CsrUkk2X7Zi2IzL7EuLXOV25bjCB3n8tX4JFf02aeOqPHMDtmb7WBTmoAgH795iGHkZYkUD+Btn//zWKNj0OlMGbsVQuCOLNSpvAMIHEzOzijtDMEFrJ/cEZud6IM20VcnvuwZo9ebG09NKdvYpZNPySxbO81hnp/+J4d/GeudPFAOvbgzGaQaxbS0Cuh0LnaOY/DIyIRjNEl1sdH2wEcScCbSSyCtbxBz7F63eQtnHj5usarXhJSiQEv5LHoeE8qBZOeJJMZSCGljvBxLoCQ/SspOWQcw9IfEjJCmgbG9ywlkpM+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N2I4a2NrLqadckFRmSMZ9TU2EJ0Bw/pfk8JMNohMy/M=;
 b=x8pP11u4BcSfCK1jHGq6ON0S446dyuurG5BT+RtGb5yJfNO9VQUNeApldq2xptEylmZBN1bXqVinYlo7668LlisbR09VQoxuzz0Hb0PXG9522o4T1NqT6ZRlZxBtgOIGl9AhFUEh4HIjsc0mkBSTqMgwY7yXNL4xA2+bqEzLfo8SYzfbJTmkOQQt1Idi/wX5AvYijRstWrTdwq7kOrtfPsqcVene6wyensRxnxepPknf8GhV0u+EKGm7dsqknymQgYRXssuH+KKjGREJ4nyq1XzPTjiENXIzZyBKULQwNBEVAFux0mrdVYXRRmmbIj86flBPGv+ghWt/VQITXlUrng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB7009.namprd11.prod.outlook.com (2603:10b6:930:57::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 10:13:56 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8489.025; Wed, 5 Mar 2025
 10:13:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kyungwook Boo <bookyungwook@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
Thread-Index: AQHbjFeboY2QFMlphk6AK6PA+x/DLLNkVFvw
Date: Wed, 5 Mar 2025 10:13:56 +0000
Message-ID: <SJ0PR11MB5866F240386177564F78E8AEE5CB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
In-Reply-To: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB7009:EE_
x-ms-office365-filtering-correlation-id: 6c9878dd-e95a-4e2e-1b22-08dd5bce7036
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cFoyTzJDR2NybWQxeUVYaG1sK1hHbWFqS2RvbS85d1h6M2VSZWZIeFpGVDJM?=
 =?utf-8?B?WE9jcW9razVJWHB1RlZPZXBFZU0vbU83WUdRMTF2VFpSa0QxM2JtWE9HSDRv?=
 =?utf-8?B?SWJoeFVic21rUkY4VkpQbmx3OGh4SDl1THpHRGZzQTFCUHdhMVE4NU9TaHN2?=
 =?utf-8?B?OFZTbW9IL2JIWnZQcVU1SHEwckMybUpybStRTVdmTzFCbUdocVNVRHlsNmJN?=
 =?utf-8?B?MERCdVpUTGxhQ3dOaVBkNnhRSEF2ZHlxdzZEL0g3ZDFQVWErbFdNQ0ZjTVcv?=
 =?utf-8?B?MGZnaSthOHgrL0hqNkN4RUxDOVBTVHREUkM2WkhjK2p1dXFob01NSmpaV3Q1?=
 =?utf-8?B?b0ZSNGdjdk1vQUtDYUR4MnhlQmo2TGtuQ2hOR1luWXl2dzgvU3l4MXk2MlRv?=
 =?utf-8?B?WVk2SXBPeXBiejNBOFRvTDVSWmFqMGhtdVNFUk9nMTNiLzRNTktjMElEUTY5?=
 =?utf-8?B?M1kwdE1PZ3psd3VxMEJ3VW0xMDBDdlhNaFUydDNhY1o5Q0ZFZDNwQWdKS1Q5?=
 =?utf-8?B?Yll4djRyM0hUcXQ2d3lwREtoelJacEVhWGk3cUhwb1huZjRsbkk4THlNdm5D?=
 =?utf-8?B?bFc4WlhWNHBRTmFqaEtMZ2JvYWFhckNhWXRNbjg1d2Z4WUxFZGlkbU45SVlY?=
 =?utf-8?B?OVpIbzJqemtRdWREamV2VzhSY1VTUkxoNVU3MHJMRFBna2gyNElCTlgzUmhp?=
 =?utf-8?B?SWlBQzBXZnREL05Jb3pRWHlxN2VxZzNzU21GNjJYSi82TVNhSjNVSVdtdFZT?=
 =?utf-8?B?Q1RZbnVPQUhQQTVUYlhuUnoyVWgyaGE1WjFBcEhuakd2b1cxVE5zWDkvbFJo?=
 =?utf-8?B?SFBpVHgrMmd3cmxVY3BSaElQZDdOaVg5VnlIU3U1dGw3ZFhkdWs4RDY3Q1Yv?=
 =?utf-8?B?U3h2Q0ZyOGdhSmpBVVVZM3I2RDhmMmVMNEFGZ3ZBS3lKYkZLTC9qRVFOeE11?=
 =?utf-8?B?QWIrZ3kvdlNCTnd6emgyV0Frd0hJaElxbFBTTWVTMlphZkIxMEdMZXJGcERz?=
 =?utf-8?B?L0t4bGlKL3BwT1IwZjhBS0FlK1lkYXBla1dqWldGWU5SbmgyWnFraDFXVjJh?=
 =?utf-8?B?VDdXMk0zVUxoQjJzSDdEYkgvanhmY0haT2JQYjlLNkhodUYxbFgwK283Rk9n?=
 =?utf-8?B?Z1NlWjVDSk8zS3VEK2c5aHhIaFpBYTVvQTdsN0JMNlA5UUpBZDFjZlo2QUJy?=
 =?utf-8?B?cWFvQWQ0Q2pTMkxDZXlMSkMyZFlZQUt2NHg2YWRxaVlaRlFyY3F3c3hLQWNw?=
 =?utf-8?B?eEFsWW9KK2VEdTBXWDJWTVJtdXVpZXMzbDZFZzg3ei95b0RyVFRwUlY3RkZV?=
 =?utf-8?B?bkRmSDZua3M0c0ZwaGlLV3pOK1cyUVkxUUt5QVBVT1loK3lFUk04TkRwSnBS?=
 =?utf-8?B?Y0NWSGxJZzhIL1lIdXZGQ3ZyblhQeVFscFduWE0vSHlSb2MvL1FwMmw5NzhW?=
 =?utf-8?B?WW9OcXo4aVNoamwyYjJtQkJiUGNWay8xNDdIVVNBelFUSzM1QmRFSGFMK3dV?=
 =?utf-8?B?SGVBSGE0VzRsSlJNd0hsOE41UnR3Q3pJTklKdy9KN1Zleml5MDZQaUFnQkxw?=
 =?utf-8?B?U09adXIrN2lNcmVaZm5kUHdzYlkzcHd1Y0FxTW5Fa3BIUkQ5aTNMU0N2cmtk?=
 =?utf-8?B?L0ljSzFBZ0R0b05mTmRSeGs1OUdLRTZkMmRuMkUveEZKT3RXMG9Bb20vVUFJ?=
 =?utf-8?B?V2ZtR2o1cTRYTnF2WDhITHhGZ3hXeTBsUXg0VktWcCt5TkRMb2dzdzUxVCtE?=
 =?utf-8?B?SldxM3lSWlJCd3hQQnBweDBFNGhJWEh0bmY5eXlFNjl1MWZnYUM5MUVvZkp3?=
 =?utf-8?B?dEdEc3lWNUdsN2hpU3dOL21zSkhZcjNqNXgremRWZGZnRGFid3lZRVRTTmVq?=
 =?utf-8?B?eVlmRXBwZmpFRFZIakZTOVdnLzc4WFc2SzVjUkhOVHFjc3JRU2E5cjE2aWlW?=
 =?utf-8?Q?ocxpvjxGmbLkmwaPgL7jUiw5qIa+ohIv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUtidS9tY0EyK1ZYQ1ozc2I3L0NFekY1SE55am1YcHAzdlJoc29PRktsbzNy?=
 =?utf-8?B?YmlXM1c3cVNzS2IrMHFqK3JGL2hVVEVra3VlZzR0RDUwQUkyOTczV1hXSjMv?=
 =?utf-8?B?OU56Q3BRdjk2Zzh6S0xxU3ZNZy93dW8xV09iMDZ4Y1BjV1BkYnZndXdTRDdi?=
 =?utf-8?B?Tjcxem5weW4reTgvQVR4eHhPdytWOFFoQXMxdjhOUXBjRjY2ckJKeTAwSyt3?=
 =?utf-8?B?TlJGcGJVWnkzWFZveW9ubmdseWJyS3g1WjYvWGZBditVYVgyeGxNVUlxZ1JU?=
 =?utf-8?B?SityKzN1VTRnOEZqclNhaXIrZjdQbFQ5bWVYTHN0blh0OGRIWTVyOWJPOTA3?=
 =?utf-8?B?dUt6OEJTeHNoOW42QkFIdjB2Y3FTUUhIOVk0bitKYndDM1hOZURoMm5odTRZ?=
 =?utf-8?B?dG4yQ1VZbHlhaEpMT05hZmRBT3RWZlNxcGNnZDJYZWVML1dQRTVTWE5SKzNR?=
 =?utf-8?B?MDF3c0h2L0FsdEtJY3Nva04wVUNLd3dJMXgyZnlrNDBLS21JajBsNGZ3N1Ri?=
 =?utf-8?B?VmhDMURlN3h6c29OUHVWb21qcXFxZmZNNmdwclBGZEk3YXBRRVh4TnU0ZlYz?=
 =?utf-8?B?VTd6aE5uL1poUjBDeXVOYlFaWWhIcGU2WkJiV0ZoQTVYdk1xUDg2TlhpN1Zr?=
 =?utf-8?B?QTdwQzZJUUoxbUQ1MG1ia3RsZHRBbnN3OHQ4NGNqelg2MGNSRkZlR2RVa1dp?=
 =?utf-8?B?ZkxXek4rMWR4YjBwSHUwMzE1SEJQZU4yck51TDFYVzdUeXdiQWVvdDRzZmNG?=
 =?utf-8?B?V0cyVDhzcXdhdWd1eXVmQjloVUpRcStGWGpscWNXN0xEMlp2ZHppQmZkSExj?=
 =?utf-8?B?S05kUk5YSERvT3dyb1o4K3lVY0xvNzNISUx4MmxWYXVzTmxWV3dsa1FZUDRI?=
 =?utf-8?B?SG9kT25WNm5lQnljVFZVSUZtbDlMSDNzSUVyQUdZUHlIYmFWY3ZIckRHZE9v?=
 =?utf-8?B?bngvM1EvdjVRaGQvMGNadjVPbkd5ZUI2RmJha2pJSUZRSnhEMlpJeGJpVUhi?=
 =?utf-8?B?TEJJOUtzRGpVRVBWd0hMZTFuc0lLeWNOVk5ESjZjaEpLbW10SGF1a0JKbVZK?=
 =?utf-8?B?WjhiL2lnSGlkV0hJb0lxemJVZWQ5YXBJZmFBRzA1VEowbkFRQk8zZzFqVVNm?=
 =?utf-8?B?aUdRcDAvSVhXaW96RmNWWC82L3VrRURiN3RKeHQ1SjJhVTkvWFdGdHdmYWJP?=
 =?utf-8?B?YWhKalBrWjZUVDRlaEgwS2l1dWhNbS9NazREOXRJQWo5TThEdDRHbUpYSXYx?=
 =?utf-8?B?NjNTbHVRUWZ2bTV1VEdCTXpMOTMxcmNnY0l4N1lOR0FUQ0oraXYxb05RblMz?=
 =?utf-8?B?Q1B2MTdLbTVxL3VnQldUYm1Id3BiYWpyYzEwcjZuTTYxcE56cDlTelZpL3VV?=
 =?utf-8?B?U1FFbFQ5SWNPNDF6ejhMT3ZBc2xWL2o0Q01Zd0RSdERxM3IzMzdsYnliS1lG?=
 =?utf-8?B?NENYOUhOdStjVWY5cFRGTEdVRDMwSFdEb0FsT1RUZlgzWHkrc2cxbXJVVlFj?=
 =?utf-8?B?Mk5PeGx3RlM4cU5lREtnQmxnVEJ3d1VMc3ZLNU0xcVVtNjExSlFPWlBLV3Bp?=
 =?utf-8?B?a2dCT3pHZ3U1aHhEejNISG5BVkI2YmZLc1IxMmZVVFBtUnFhTDRGVGE0b2V4?=
 =?utf-8?B?aUNGWkd4TWtlT2w3dDRjbzFwT09yc2hHQitVTjUvSXhERVZ5VnYzd2dYZks5?=
 =?utf-8?B?SWlTSkZhbjZQTjJJZGpmM2JvQW44UjA1NmhLQ2pjb3o4YngxbVpZZS85czUy?=
 =?utf-8?B?cmV3dE42bW1QUU5COTJFQ2IybTV1UkUxWEsrenBpTWNiNHFFbEFiTzlDMTA5?=
 =?utf-8?B?M0xyMURxMU1ETmlFb2Z5SzJDQWpFSlBBaE95d2Q5SVRBT2tZYy9FZ0xSY0lj?=
 =?utf-8?B?VVlJbGRwNjJDeDIvRk0wb2cyb2lZdUdUa2lrTC9NVzJxYWdSMCtDcUFuQkFo?=
 =?utf-8?B?SVo1bUZqbURhbzFWVENOTWRORmJ4M3ZCM3E3WkwzQmN4dFRYNFlFa2hXUVFL?=
 =?utf-8?B?eHZEMzc3cEVIQ0NjbERSMFJWT0lJRW5NWVpxT2E3M2J3WnpZMkRHSjdwMTJD?=
 =?utf-8?B?VE5oeWNiUW1SeFZmVkFVSnJIV3h5eDg5aFNxWlZ5UVY2Ykd2WEFkemJ3R0VZ?=
 =?utf-8?B?aGwreWczaGN4QWVRdEY3YjhMbXZFUVNidS9VRkwzREtlaHB1bUl0UnlScHF5?=
 =?utf-8?B?TEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c9878dd-e95a-4e2e-1b22-08dd5bce7036
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2025 10:13:56.0413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1jNZPCQoOGuRDmwuTnDQMhc9+/H+ITe8SpkfO7n4nbul+kd6dzaEW3aqWu8Cispxu3pnZHya7lshULf1I0oiEEpsQJx30qpn6bc8umbd+S0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741169670; x=1772705670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N2I4a2NrLqadckFRmSMZ9TU2EJ0Bw/pfk8JMNohMy/M=;
 b=lw+JmU54Jy81yn+ErHBpAFaA8j11dOIn/elLaAQsLwc4EYwrlFd18Lz9
 3AmyDJfbEgrVRVVBp9aONrPjKO6P6pC8h3p8pmRRGKCYKTN3FKLkUudO1
 knGb2507j7Yu8ZLBE9V5mbkeOAPtSnKvg/4gWZVsjlv6qi/+mF2xNA6mO
 qRU72nvwui7TcNp2Q1a3COJsFyvc3mSxOa17V2Sod4AQfUj6VIcRrWmY1
 9AqjDfAHbD/NbZLgYXj9eKKEOyep/BQFxtX7AMlE7hqp4stIw7ERnCrIf
 3KRzt/4fU81Y/DRfl1B5zt+wtaW6wUeKPYUxRiLqopnpdkTGudvAKbxNS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lw+JmU54
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gS3l1
bmd3b29rIEJvbw0KPiBTZW50OiBNb25kYXksIE1hcmNoIDMsIDIwMjUgMTE6MjAgQU0NCj4gVG86
IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9y
Zw0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBNTUlPIHdyaXRlIGFjY2VzcyB0byBhbiBp
bnZhbGlkIHBhZ2UgaW4NCj4gaTQwZV9jbGVhcl9odygpDQo+IA0KUGxlYXNlIHN0YXJ0IGNvbW1p
dCB0aXRsZSB3aXRoICdmaXgnIHRvIGV4cGxpY2l0bHkgdGVsbCB3aGF0IHlvdXIgcGF0Y2ggZG8g
aS5lLiA6DQpJY2U6IGZpeCBNTUlPIHdyaXRlIGFjY2VzcyB0byBhbiBpbnZhbGlkIHBhZ2UgaW4g
IGk0MGVfY2xlYXJfaHcNCg0KDQo+IEhlbGxvLA0KPiANCj4gSXQgc2VlbXMgdGhhdCB0aGVyZSBh
cmUgaW52YWxpZCBwYWdlIE1NSU8gd3JpdGUgYWNjZXNzIGluIGk0MGVfY2xlYXJfaHcoKSBkdWUN
Cj4gdG8gYW4gaW50ZWdlciB1bmRlcmZsb3cgZnJvbSBudW1fcGZfaW50KGFsc28gbnVtX3ZmX2lu
dCBzZWVtcyBwb3NzaWJsZSkuDQo+IA0KPiBUaGUgZm9sbG93aW5nIGlzIGEgc2FtcGxlIGNvZGUg
aW4gaTQwZV9jbGVhcl9odygpOg0KPiANCj4gdmFsID0gcmQzMihodywgSTQwRV9HTFBDSV9DTkYy
KTsgLy8gKDEpDQo+IG51bV9wZl9pbnQgPSBGSUVMRF9HRVQoSTQwRV9HTFBDSV9DTkYyX01TSV9Y
X1BGX05fTUFTSywgdmFsKTsgLy8gKDIpDQo+IG51bV92Zl9pbnQgPSBGSUVMRF9HRVQoSTQwRV9H
TFBDSV9DTkYyX01TSV9YX1ZGX05fTUFTSywgdmFsKTsgLi4uDQo+IGZvciAoaSA9IDA7IGkgPCBu
dW1fcGZfaW50IC0gMjsgaSsrKSAgICAgIC8vICgzKQ0KPiAJd3IzMihodywgSTQwRV9QRklOVF9E
WU5fQ1RMTihpKSwgdmFsKTsgIC8vICg0KSAuLi4NCj4gZm9yIChpID0gMDsgaSA8IG51bV9wZl9p
bnQgLSAyOyBpKyspCQkJLy8gKDUpDQo+IAl3cjMyKGh3LCBJNDBFX1BGSU5UX0xOS0xTVE4oaSks
IHZhbCk7DQo+IC4uLg0KPiBmb3IgKGkgPSAwOyBpIDwgbnVtX3ZmX2ludCAtIDI7IGkrKykJCQkv
LyAoNikNCj4gCXdyMzIoaHcsIEk0MEVfVlBJTlRfTE5LTFNUTihpKSwgdmFsKTsNCj4gDQo+IEFu
IGV4YW1wbGUgc2NlbmFyaW8gZm9yIG51bV9wZl9pbnQ6DQo+ICgxKSB2YWwgPSAwIChpZiBNTUlP
IHJlYWQgdmFsdWUgd2FzIDApDQo+ICgyKSBudW1fcGZfaW50ID0gMCAoYWxzbyB6ZXJvIGFmdGVy
IGJpdCBmaWVsZCBleHRyYWN0aW9uIGZyb20gdmFsKQ0KPiAoMykgQW4gaW50ZWdlciB1bmRlcmZs
b3cgb2NjdXJzIChudW1fcGZfaW50IC0gMiA9PSAweGZmZmZmZmZlKQ0KPiAoNCkgT3V0LW9mLWJv
dW5kcyBNTUlPIHdyaXRlIGFjY2VzcyBpZiBhY2Nlc3MgYWRkcmVzcyBleGNlZWRzIHRoZSBleHBl
Y3RlZA0KPiByYW5nZS4NCj4gDQo+IEZyb20gYWJvdmUgZXhhbXBsZSBzY2VuYXJpbywgdGhlIG1h
eGltdW0gYWNjZXNzIG9mZnNldCB2YWx1ZSBjYW4gYmUNCj4gYXJvdW5kDQo+IDB4NDAwMDM0N2Y4
KD0xNzJHKSB3aGljaCBzZWVtcyBsaWtlIHRoaXMgdW5kZXJmbG93IGlzIG5vdCBpbnRlbmRlZChh
bHNvDQo+IHRoZXJlIGFyZSBtYXNraW5nIG9wZXJhdGlvbnMgbGlrZSAoMikgZm9yIG51bV9wZl9p
bnQpLCBzbyBJIHJlcG9ydCB0aGlzIGlzc3VlLg0KPiANCj4gSSB0aGluayBzaW1pbGFyIGlzc3Vl
IGFsc28gY291bGQgaGFwcGVuIGF0ICg1KSBhbmQgKDYpLg0KPiANCj4gVGhlIGZvbGxvd2luZyBp
cyB0aGUgcGF0Y2ggbWV0aG9kIEkgcHJvcG9zZToNCj4gDQpQbGVhc2UgYWRkIEZpeGVzOiB0YWcg
IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGlu
Zy1wYXRjaGVzLmh0bWwNCg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfY29tbW9uLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfY29tbW9uLmMNCj4gaW5kZXggMzcwYjRiZGRlZTQ0Li45N2VmNzliZTM5YjMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21tb24u
Yw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfY29tbW9uLmMN
Cj4gQEAgLTg0OCwxOSArODQ4LDI1IEBAIHZvaWQgaTQwZV9jbGVhcl9odyhzdHJ1Y3QgaTQwZV9o
dyAqaHcpDQo+ICAJLyogc3RvcCBhbGwgdGhlIGludGVycnVwdHMgKi8NCj4gIAl3cjMyKGh3LCBJ
NDBFX1BGSU5UX0lDUjBfRU5BLCAwKTsNCj4gIAl2YWwgPSAweDMgPDwgSTQwRV9QRklOVF9EWU5f
Q1RMTl9JVFJfSU5EWF9TSElGVDsNCj4gLQlmb3IgKGkgPSAwOyBpIDwgbnVtX3BmX2ludCAtIDI7
IGkrKykNCj4gLQkJd3IzMihodywgSTQwRV9QRklOVF9EWU5fQ1RMTihpKSwgdmFsKTsNCj4gKwlp
ZiAobnVtX3BmX2ludCA+IDEpIHsNCj4gKwkJZm9yIChpID0gMDsgaSA8IG51bV9wZl9pbnQgLSAy
OyBpKyspDQo+ICsJCQl3cjMyKGh3LCBJNDBFX1BGSU5UX0RZTl9DVExOKGkpLCB2YWwpOw0KPiAr
CX0NCj4gDQo+ICAJLyogU2V0IHRoZSBGSVJTVFFfSU5EWCBmaWVsZCB0byAweDdGRiBpbiBQRklO
VF9MTktMU1R4ICovDQo+ICAJdmFsID0gZW9sIDw8IEk0MEVfUEZJTlRfTE5LTFNUMF9GSVJTVFFf
SU5EWF9TSElGVDsNCj4gIAl3cjMyKGh3LCBJNDBFX1BGSU5UX0xOS0xTVDAsIHZhbCk7DQo+IC0J
Zm9yIChpID0gMDsgaSA8IG51bV9wZl9pbnQgLSAyOyBpKyspDQo+IC0JCXdyMzIoaHcsIEk0MEVf
UEZJTlRfTE5LTFNUTihpKSwgdmFsKTsNCj4gKwlpZiAobnVtX3BmX2ludCA+IDEpIHsNCj4gKwkJ
Zm9yIChpID0gMDsgaSA8IG51bV9wZl9pbnQgLSAyOyBpKyspDQo+ICsJCQl3cjMyKGh3LCBJNDBF
X1BGSU5UX0xOS0xTVE4oaSksIHZhbCk7DQo+ICsJfQ0KQ2FuIHlvdSBjb25zaWRlciBtb3Zpbmcg
dGhpcyBpZiB1cHBlciBhbmQgdXNlIGl0IG9uY2UgaW5zdGVhZCBvZiBkdXBsaWNhdGluZyB0aGUg
Y29kZT8NCkkgdGhpbmsgaXQgY2FuIGhlbHAgdG8gbWFpbnRhaW4gdGhlIGNvZGUuIFdoYXQgZG8g
eW91IHRoaW5rPw0KDQo+ICAJdmFsID0gZW9sIDw8IEk0MEVfVlBJTlRfTE5LTFNUMF9GSVJTVFFf
SU5EWF9TSElGVDsNCj4gIAlmb3IgKGkgPSAwOyBpIDwgbnVtX3ZmczsgaSsrKQ0KPiAgCQl3cjMy
KGh3LCBJNDBFX1ZQSU5UX0xOS0xTVDAoaSksIHZhbCk7DQo+IC0JZm9yIChpID0gMDsgaSA8IG51
bV92Zl9pbnQgLSAyOyBpKyspDQo+IC0JCXdyMzIoaHcsIEk0MEVfVlBJTlRfTE5LTFNUTihpKSwg
dmFsKTsNCj4gKwlpZiAobnVtX3ZmX2ludCA+IDEpIHsNCj4gKwkJZm9yIChpID0gMDsgaSA8IG51
bV92Zl9pbnQgLSAyOyBpKyspDQo+ICsJCQl3cjMyKGh3LCBJNDBFX1ZQSU5UX0xOS0xTVE4oaSks
IHZhbCk7DQo+ICsJfQ0KPiANCj4gIAkvKiB3YXJuIHRoZSBIVyBvZiB0aGUgY29taW5nIFR4IGRp
c2FibGVzICovDQo+ICAJZm9yIChpID0gMDsgaSA8IG51bV9xdWV1ZXM7IGkrKykgew0KPiANCj4g
DQo+IENvdWxkIHlvdSBjaGVjayB0aGlzPw0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBLeXVuZ3dv
b2sgQm9vDQo=
