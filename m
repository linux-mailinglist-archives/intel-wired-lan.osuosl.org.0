Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D41B2BDDC05
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 11:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95BE5416B0;
	Wed, 15 Oct 2025 09:22:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GxlEqGsUQ8MJ; Wed, 15 Oct 2025 09:22:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A107F41598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760520176;
	bh=aW9miH5u9wW5XjuW3sU4DPebWTr68iJp0nZlDXelu5w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7GYOApBKJHOi8tKA1NccChIlmRbgjLHcyl0bC/I8rEQ+PO8GtGAlyOJSfjhjccF0l
	 5fsODGuS1ixk1T0u9g6pVswKf7hUhxmyg2X60QYE0kC/iTnmYjCDlJGY0MR6SRqFZC
	 ZiMZWX3tGRe+qVTalYTaRETBsLgUT2z/00vbJ4INiYh0aAJJWnJMpYVNchT6WdGKwh
	 fl5cEy/+C7vV2Ppzo/nJiAX3g6knSJT1p9/AfTIjYBlKd4WxxyPxbxvZT+csxQ2iFL
	 dhp/FWlLKerZvoG07Gnv2qqwr0qPVcPLU4oNbu1d7XiyQUn9VQ+ZzdiddYd+hEuuJF
	 btvdn2ys2BelQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A107F41598;
	Wed, 15 Oct 2025 09:22:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 547F74C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 09:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4599C6144C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 09:22:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tze-ko2Xn2ZW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Oct 2025 09:22:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04CE160F81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04CE160F81
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04CE160F81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Oct 2025 09:22:52 +0000 (UTC)
X-CSE-ConnectionGUID: vt58344vRb6NS8nABBauuQ==
X-CSE-MsgGUID: QERID9a6Sw22o/KsKxStjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66552005"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66552005"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:22:52 -0700
X-CSE-ConnectionGUID: EmYEFhoTQhGT/5jgXRl70g==
X-CSE-MsgGUID: IQivjthuSSi6JfV+JWIV1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="205826260"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:22:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 02:22:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 02:22:51 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.60)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 02:22:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S0/9iBVWlZyxuz5TSAdxPItC+q1v/IzgQEefEATtZJRAjQuV21ZoVfnWyQDWepCcGskBzY6V73DyaqGLAHn92hLYFGmMnfA8T32DsOh7S95r5myBqDhxbFwfnwoHjtsrny0U3MGb/lOiZChTF/prVm6KRG+FJYLpiWQHNCzyc06D/6BZxHLfAAHFhqeOK2C248u0gc2dyTnmVkCHVN7vdGt1tfJdYAzGyNyLoysoitfy4Nz1KoCUWMG5SJQJ/5xBzBua7O9+OJW6L6W3TjYmCWuPBj4XME+yn0wa6sbK4ZsA96rbpFQK7+T3ykc/DbNAnLEEZD7a313cMRF4p2lguQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aW9miH5u9wW5XjuW3sU4DPebWTr68iJp0nZlDXelu5w=;
 b=TvxATkmQ9fcTb3BsMu0WHngwUiaLd51Vrn7v5tL7t9y2u1Jso3Qd8WsnFB1zV4smPyFFPfaHGIBVPZ6uesbRSqMKcyUEPns68iVArFlyBC0svHkuod2/xWyFy+nkKfPx47Y8kBOvDBQMwHGRuln4K+W9p28KYFmRG/ObyNFAHrj1/ujkFvDRACrWlpMFK+1aF3SKuhoJD5PNMcTfo9AAWzkQMfn11NDRh0Bd9z8U1GG5V8EsCJwt2rVMrX/o8Kh3jEis8NYmFONXO/XQFTr4Zqr2WyyeI78+M412Gu/vXr7tneccQHXEJWL8UcRvMaJDeQuZ8bNuy4iTi75F//OjtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 09:22:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 09:22:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Birger Koblitz <mail@birger-koblitz.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew@lunn.ch>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ixgbe: Add 10G-BX support
Thread-Index: AQHcPWNDH3TmGDFiiECQHRBvGTOTp7TC74sA
Date: Wed, 15 Oct 2025 09:22:44 +0000
Message-ID: <IA3PR11MB898642D1124B965FAFC5388AE5E8A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251014-10gbx-v3-1-50cda8627198@birger-koblitz.de>
In-Reply-To: <20251014-10gbx-v3-1-50cda8627198@birger-koblitz.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CYYPR11MB8429:EE_
x-ms-office365-filtering-correlation-id: 666bb10f-df6a-438a-f8b5-08de0bcc65f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|366016|376014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VFNRU09WQ2Z6S1BZeWkzRHRua3RHZDBDMkM5bnd4WWhRaFkxWnloQ1JuM1BM?=
 =?utf-8?B?TkN1cElXZ1lEM1RZRXR2S1luVFQrbVkxOU5oSlhrMWVxdVg0OHcwbTNHMUgw?=
 =?utf-8?B?UVJrMjk4SXl6MXVJMnYrL3NmNEtGUkRaTFV2R0cyQ0lFVDYzaDY4ME5Velcr?=
 =?utf-8?B?dXVvWEM3ekZNaVJKS2lDUFk5ZU9mRHY2NGVDRjVTczFtSmZ2SVRVdXlyYmIw?=
 =?utf-8?B?b1QwMGMya3BXRnJWZk9VV1JUbERKWWRqaXptYjdiN1pMUVk2Z1dXc2V1SDk1?=
 =?utf-8?B?bzNIeXJ1dXpUa3pvTnRzRWNBMXkxM3ZvQjE5RXp1QUIyUVlmc1FvaWpCTUs1?=
 =?utf-8?B?RmlVa0RHU3NUdUZiV0hFVGFJL2ZDR2oxQTJDYVVhdy9LbnNQeWhudjlWK0NE?=
 =?utf-8?B?VmJFTWllVy9EYWd6c3BjWFRzVjVsMU1mNWh6c2lTMWJNTm8zdGluK1YwQWFn?=
 =?utf-8?B?MXphcUdNQ3FzTDhDaFROd251V3BST2o0WHNnLzlsQTBTMklPNUoyaHRwVnFa?=
 =?utf-8?B?bjQrWGlTQnlQLzluL2lyOFZGOTVEdjBkdUtsK0ZjN1k4NnU4ZGdaWUkxWEtL?=
 =?utf-8?B?WXBGc3RrWnhHRTBiaGI0K0VIcFBYRldSRHEvUzJkMnRxb2pVQ0gwNURNMEVJ?=
 =?utf-8?B?WmtVVElkR3FFaThkRWNndEN0am5hNytBRldNWDdnSHRQbEdIVXAxS0tVRVFw?=
 =?utf-8?B?dUEyQ1hVVnNqdkVwa1RqTHJYSnFqSmJuNDBvOU5BV1ZwamRQZDJkVUlhU2Nm?=
 =?utf-8?B?TWJIWjNvUmhoVnVCeUVlaElFQzBUS3ZlY1dPL0luMkdMMnl0eXJSUTBnbHE1?=
 =?utf-8?B?SFgrOTErSEhES2RDQTc2Vlk5T3ZNWjN2NUthNFlYRHRBT0s4bjNDZmZ1ZUR5?=
 =?utf-8?B?RURYWWJsZWE2ckJFcUUvdU1aVVJ4dS9FN05oeDkxNUNGY0gxZnd1eVJSNDVR?=
 =?utf-8?B?Ni9ZUWxmWTdRc2krTU53d0JGZzFZRFRjTERrdlNpOGY1R24yVnJvZG1MR1FV?=
 =?utf-8?B?UDVtZkpHbWJmM0VDb0xuRFpuNEhtTE5uTFkzVUVmK3RYNEQ3cGs3S056emts?=
 =?utf-8?B?eHZkMzhQMVVwVEJ5VUVPUUF0cGd2Vk9xUlQ2WlBOUnBubWdvVVdXbXJ6b3JR?=
 =?utf-8?B?d1ZnaDJIUmVBbU9aQUNzSGFDTXBsQ3VHNEMvdmlSU1hGcmx6RlBRTXhOaE5O?=
 =?utf-8?B?OVYyZjZ1aVJtS3ZBd2pKZVpIaGM4c0h1NFgwVW5BcWlXb0FLU201N2lLVStj?=
 =?utf-8?B?dUhSdnhQSEJxU1d1bDREN2J3RFgvMjRQY2UvZ3ltMml4K2tySWFBN09SWmhi?=
 =?utf-8?B?d1dkNFBuTHZVZTR4d2J5U0FiQ0R3bmJXU24wRDRxRzM5YUhvejM0UFo3L1Z1?=
 =?utf-8?B?YmVkUmwxd2tweHM5OXJxWGorTmhCMmFmSEQvWGFKc3lOK1BYam9pK21LRklZ?=
 =?utf-8?B?bzlZTmtPSzFwc29KMjVYR2JqeDR5ZnVSWUtiOGhHNTk3Wk00SmprNElEczAy?=
 =?utf-8?B?bVRGbWYrcVRBWnl5TkhDMUxYb2JGV2ZqV3E1bmV4N2grY0NVQnRsajQvaGps?=
 =?utf-8?B?ZHBqQW9TNU5WYXVpV25UbjgvZVJjeStoZE5NeEdidi92cmhybUhyWTRHd3RL?=
 =?utf-8?B?bTRiVVJXMDBWSEs2RldJeVhocCtnM29NQWVrSXI3eEhxUTZhUkpuTjBPS3NW?=
 =?utf-8?B?Qk1HcGdiZGFiVzNFV3N5Q0NTTFRoeHplMmR5T0FUc2YwZlV5NThUcFUwanpu?=
 =?utf-8?B?WDhLbFA4YmM4cEVqYUk2MjlNWnY1bHB6NkFucCt5dVp4ejQrNitIRFd1eFpY?=
 =?utf-8?B?eHhFS0gyUnFNNUlpdytaSCtxaUxyZGRZSElPdWdOeEQwS3ZNRXlJOVBTWENo?=
 =?utf-8?B?Tkc5VGdkZis2V0llSUZGR096ZDJwZHIvUFJPVUxWdWRuRVFjMkdoZkFwMVdx?=
 =?utf-8?B?V2kzVTVRVFhWS3Z4OU9QL2JaZFRCN1lJcFNvcVhaYXplY3Bid2hEZDdsUnNB?=
 =?utf-8?B?TzRGckxKcldEY3I3VGU4bzdkcldLN09KOXNOR1dzTWl6Qm1CclBObmpqUUN3?=
 =?utf-8?B?ZTNOeHRUOHJ1WTlyaERIWTkzYkFaL2w0Ry9wZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(366016)(376014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXl0eEJGTTRMU1Jkd1FvdUd0cXo4eDdGaFJBRUtuYXl6SE5rMStBY3dXQVdo?=
 =?utf-8?B?NlZRZXZHL2lsN2Z5Y3p3anZlQTdBSHkvNjI4SXNydFBlRnFzeW9lc2N5YThz?=
 =?utf-8?B?dU1mbW9iSzlDakxha2xkUk9FN25vbTVSVHZyOGY5RTA2aEhsOE4yMTBRSHpp?=
 =?utf-8?B?VUgyQW9UZ0NCM1BucjZlbGNJQTg1V1dxUnpEOERnVmNlZmdybTBCc2JtNzkv?=
 =?utf-8?B?MGtnMHd5OUxPb3IrMmh0UEJ3d24rRXZHVUl3N0M2NjdHYTNuQnowbDd3L3l2?=
 =?utf-8?B?dDJRa0cwYkxVSWhhOXBMLy9CVnkvWU1IYmozTzU4NWtHZm1XYUtRbW9PaGJH?=
 =?utf-8?B?UDBTK2g5ZUJNTFdlQ0V5RnA3QTVXdzJtcFZ1Vml3MEhuVDFrWGdxU0Y2SGJh?=
 =?utf-8?B?aENyUDZ0ckFpcGtPY3ZGdElqbkxZOW9UL2tkbFl0S2xPRVcyYVN4WGVMdDMr?=
 =?utf-8?B?d21idThOM2ZORWZDc2tYZkU2L1NkMnY4dHNNeW9kTUs4dnB0N1ZWS24weVpr?=
 =?utf-8?B?WVNaL3NaWUlSMVhSWHVjekV2S3pNTGNpYjJkUzVubU96WWlSSTZyUXZ4V3Mx?=
 =?utf-8?B?ZXZUUEFKZkRJaE5KaHo1SG1zZDMyaEJlR0hUSE9SWUdVTE5tOXlUUXQzdi9G?=
 =?utf-8?B?TGlaWW9XTGlWeHhTQkV2bDZNcGVpdFArYWs4Z2p2eGd5M1hWL1IxdVo0djl0?=
 =?utf-8?B?S2QrbnVyWVd5VHdOaU9zUCtlOXdVZ0M2U1YxT3V6eHI0VVNLTHNZaUZWYWpY?=
 =?utf-8?B?WWhzRzBXdlJRbkZPdnZxSEZ6MDlpcXBCN3Z1dGlyeDlGS3dISkxIemJLQjVB?=
 =?utf-8?B?VzNla0tQdWg2S0xLTkJ3a2dwdm5xWDc2QS9XbE9HR1VFczBzcEpRdjhsYjc0?=
 =?utf-8?B?MzFUUWs3QWRqU2huZWV3bVZUMThndUgzeW9mZzdmZVJwMGRnMi9aZ0ZScGlN?=
 =?utf-8?B?V3F0eUp4MWg0Z29RdEVEYVJ0MVF4OUhWNWVYR0RpVU1QRHlwNzNnN3ZOOGNt?=
 =?utf-8?B?L0ljNHRBV0NhRUpSc0lEMStWVXlMUDZFYUF4ZWpuYmYxaW0vNE9iK1QvaUtF?=
 =?utf-8?B?S3BSWE50U0VaUkhlQjh4Q0kxMnFPdjB0ck9pbFpQMmp6U05aRU5ETGFNcFJ1?=
 =?utf-8?B?eHZkUThVajRoVDFuZ0xRZmNFL2JrV3VlZ3BrQ2hHdWZsMnM2V3dBZEdzdnEr?=
 =?utf-8?B?YWlPMURtUC9Lb3QvOXI5UEdOb0FVVmNQSytSNEtNL3I2UW8zVGZBWmtZTk11?=
 =?utf-8?B?aHNHMFRoanlPNFkyOGd2YUtxRlVvVGkxemFlcXA3WE5ReWV1TU9xSEIrZm5v?=
 =?utf-8?B?ak05ODNyYTlmalFrZGl4Y2wvL1lkVjBwZy9ZSXFmVzhrZlZYTFBJU2hza3ho?=
 =?utf-8?B?aDVGS3FudlFqQ0VtTDIzby9qd2xtclFqUmdRdGJhMHRwWDVnbHNncmVOUFBY?=
 =?utf-8?B?eE0xc25LbDRsWk1qY2dhR3FZOHp5YTg2U2FORkJ2bGVUSitBYXBXVVczTkZ3?=
 =?utf-8?B?R013d2ZPalZiR2s4WlBralB3aVRpdUxvMXZ0NGZlK3prek1pb3VQVE9JL0Jp?=
 =?utf-8?B?bDlJemMvek9naTF2c0dsZXJxN3NpT3h3VG41Uk9odzRtVEFuVlhrazQ1ei9O?=
 =?utf-8?B?VW1qRE40UHYzWTRNeEpycHArYXp3aHlKYzJLZU1vQ3RlNjhUN2JxbklBSDZq?=
 =?utf-8?B?dzlEVWJEeVpuN3ZMNE45dzZsLzBLYXJYM0RId2tNSkFXbVQyWFU4RmpUS3hY?=
 =?utf-8?B?cjdadjBXa1kwY0R4ZGtmc05BeE40ZGZORUJZZndaSXY4K2ZkSmJqcFB2OHNW?=
 =?utf-8?B?dkZTZFVJWmt1bVhtVVJuVXBLSXNqNnhRdkFXcnBUZFErNFlKQndCSUd3VldG?=
 =?utf-8?B?cVVWaUNzQlN5VWducEJzYUxWR2NLYkI1TXZjVkRxNXBnc0xMRWxDY1ZaOHBT?=
 =?utf-8?B?ME5zK2ZsUVB3RjRyWkZtMlduRHkvY2MzeFZCRHNiSG5UUU5vemtUWWMxd3lD?=
 =?utf-8?B?UnFqQm15NzNFMjg2MDVtMGIvd3lydUFYOUpKOXJmQTVUczcyL3d5eVNWTXpG?=
 =?utf-8?B?K2k4THlaaUoyaWJjMmQ3eDd1ZjJaUHNxZDNQRS9BdnpmdG5TaE9majlxY28z?=
 =?utf-8?B?UGtlWldtQmZNL1p1SWhzVFphMDB1SG0yTjN0eHdhdTBzU1ZQVTJ4Uy9IR0lP?=
 =?utf-8?B?NVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 666bb10f-df6a-438a-f8b5-08de0bcc65f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 09:22:44.4762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s97UDE7riKFWq4thMccgva7oJmkZGb8KC5tMHLjWB4rT2cDzjSY0IHMuLm/A3YqHHynkpP8ZOcnVe2UjmaC78z9yEugGCkfnSikDK1F1Uqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8429
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760520173; x=1792056173;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aW9miH5u9wW5XjuW3sU4DPebWTr68iJp0nZlDXelu5w=;
 b=GbtndOgNZzg23vAog6GsGnAd+s90StD2B6rrbFj4EjzNSCLqyvSrUffB
 BFsaAs0YWsovfaZ769YJg/UefiA6Xdoqo1qD5zK3Nt6ejHyvuR39pGcjc
 XbCubu52MdyJsKoRfKEAfevTf3ALIYeKYb2r7kzC0S9xRRwrgeXJ4lnIC
 Wg3vPt2qOvXP+NQFt6BW2AAGtcG3xWSbE4wPScsiRYEUaPRSRNHYyVs3k
 K66gedhgMcO/WGTUcL6WgNTy+sCjAea2QPZl/JbSGpYwzOjFzLtdsaP6h
 LJJBjSBKRxuT3Y704TIinfXa2HRU3oBgHC0MHQTBIjl3BrdEYQuvL/6nU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GbtndOgN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ixgbe: Add 10G-BX support
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQmly
Z2VyIEtvYmxpdHoNCj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAxNCwgMjAyNSA1OjE5IFBNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3
IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEJpcmdl
ciBLb2JsaXR6IDxtYWlsQGJpcmdlci1rb2JsaXR6LmRlPjsNCj4gQW5kcmV3IEx1bm4gPGFuZHJl
d0BsdW5uLmNoPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0LW5leHQg
djNdIGl4Z2JlOiBBZGQgMTBHLUJYDQo+IHN1cHBvcnQNCj4gDQo+IEFkZHMgc3VwcG9ydCBmb3Ig
MTBHLUJYIG1vZHVsZXMsIGkuZS4gMTBHQml0IEV0aGVybmV0IG92ZXIgYSBzaW5nbGUNCj4gc3Ry
YW5kIFNpbmdsZS1Nb2RlIGZpYmVyIFRoZSBpbml0aWFsaXphdGlvbiBvZiBhIDEwRy1CWCBTRlAr
IGlzIHRoZQ0KPiBzYW1lIGFzIGZvciBhIDEwRyBTWC9MWCBtb2R1bGUsIGFuZCBpcyBpZGVudGlm
aWVkIGFjY29yZGluZyB0byBTRkYtDQo+IDg0NzIgdGFibGUgNS0zLCBmb290bm90ZSAzIGJ5IHRo
ZSAxMEcgRXRoZXJuZXQgQ29tcGxpYW5jZSBDb2RlcyBmaWVsZA0KPiBiZWluZyBlbXB0eSwgdGhl
IE5vbWluYWwgQml0IFJhdGUgYmVpbmcgY29tcGF0aWJsZSB3aXRoIDEyLjVHQml0LCBhbmQNCj4g
dGhlIG1vZHVsZSBiZWluZyBhIGZpYmVyIG1vZHVsZSB3aXRoIGEgU2luZ2xlIE1vZGUgZmliZXIg
bGluayBsZW5ndGguDQo+IA0KPiBUaGlzIHdhcyB0ZXN0ZWQgdXNpbmcgYSBMaWdodHJvbiBXU1BY
Ry1IUzNMQy1JRUEgMTI3MC8xMzMwbm0gMTBrbQ0KPiB0cmFuc2NlaXZlcjoNCj4gJCBzdWRvIGV0
aHRvb2wgLW0gZW5wMXMwZjENCj4gICAgSWRlbnRpZmllciAgICAgICAgICAgICAgICAgICAgICAg
ICAgOiAweDAzIChTRlApDQo+ICAgIEV4dGVuZGVkIGlkZW50aWZpZXIgICAgICAgICAgICAgICAg
IDogMHgwNCAoR0JJQy9TRlAgZGVmaW5lZCBieSAyLQ0KPiB3aXJlIGludGVyZmFjZSBJRCkNCj4g
ICAgQ29ubmVjdG9yICAgICAgICAgICAgICAgICAgICAgICAgICAgOiAweDA3IChMQykNCj4gICAg
VHJhbnNjZWl2ZXIgY29kZXMgICAgICAgICAgICAgICAgICAgOiAweDAwIDB4MDAgMHgwMCAweDAw
IDB4MDAgMHgwMA0KPiAweDAwIDB4MDAgMHgwMA0KPiAgICBFbmNvZGluZyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA6IDB4MDEgKDhCLzEwQikNCj4gICAgQlIgTm9taW5hbCAgICAgICAgICAg
ICAgICAgICAgICAgICAgOiAxMDMwME1CZA0KPiAgICBSYXRlIGlkZW50aWZpZXIgICAgICAgICAg
ICAgICAgICAgICA6IDB4MDAgKHVuc3BlY2lmaWVkKQ0KPiAgICBMZW5ndGggKFNNRikgICAgICAg
ICAgICAgICAgICAgICAgICA6IDEwa20NCj4gICAgTGVuZ3RoIChPTTIpICAgICAgICAgICAgICAg
ICAgICAgICAgOiAwbQ0KPiAgICBMZW5ndGggKE9NMSkgICAgICAgICAgICAgICAgICAgICAgICA6
IDBtDQo+ICAgIExlbmd0aCAoQ29wcGVyIG9yIEFjdGl2ZSBjYWJsZSkgICAgIDogMG0NCj4gICAg
TGVuZ3RoIChPTTMpICAgICAgICAgICAgICAgICAgICAgICAgOiAwbQ0KPiAgICBMYXNlciB3YXZl
bGVuZ3RoICAgICAgICAgICAgICAgICAgICA6IDEzMzBubQ0KPiAgICBWZW5kb3IgbmFtZSAgICAg
ICAgICAgICAgICAgICAgICAgICA6IExpZ2h0cm9uIEluYy4NCj4gICAgVmVuZG9yIE9VSSAgICAg
ICAgICAgICAgICAgICAgICAgICAgOiAwMDoxMzpjNQ0KPiAgICBWZW5kb3IgUE4gICAgICAgICAg
ICAgICAgICAgICAgICAgICA6IFdTUFhHLUhTM0xDLUlFQQ0KPiAgICBWZW5kb3IgcmV2ICAgICAg
ICAgICAgICAgICAgICAgICAgICA6IDAwMDANCj4gICAgT3B0aW9uIHZhbHVlcyAgICAgICAgICAg
ICAgICAgICAgICAgOiAweDAwIDB4MWENCj4gICAgT3B0aW9uICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgOiBUWF9ESVNBQkxFIGltcGxlbWVudGVkDQo+ICAgIEJSIG1hcmdpbiBtYXggICAg
ICAgICAgICAgICAgICAgICAgIDogMCUNCj4gICAgQlIgbWFyZ2luIG1pbiAgICAgICAgICAgICAg
ICAgICAgICAgOiAwJQ0KPiAgICBWZW5kb3IgU04gICAgICAgICAgICAgICAgICAgICAgICAgICA6
IFMxNDIyMjg2MTcNCj4gICAgRGF0ZSBjb2RlICAgICAgICAgICAgICAgICAgICAgICAgICAgOiAx
NDA2MTENCj4gICAgT3B0aWNhbCBkaWFnbm9zdGljcyBzdXBwb3J0ICAgICAgICAgOiBZZXMNCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEJpcmdlciBLb2JsaXR6IDxtYWlsQGJpcmdlci1rb2JsaXR6LmRl
Pg0KPiBSZXZpZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPg0KPiAtLS0NCj4g
Q2hhbmdlcyBpbiB2MzoNCj4gICBBZGRlZCAiUmV2aWV3ZWQtYnkiLiBUaGVyZSBhbHNvIHdhcyBh
IHBvc3NpYmxlIG1haWxzZXJ2ZXIgREtJTQ0KPiBtaXNjb25maWd1cmF0aW9uDQo+ICAgdGhhdCBt
YXkgaGF2ZSBwcmV2ZW50ZWQgcmVjaXBpZW50cyB0byByZWNpZXZlIHRoZSBwcmV2aW91cyBtYWls
cw0KPiAtIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTEwMTQtMTBn
YngtdjItMS0NCj4gOTgwYzUyNDExMWU3QGJpcmdlci1rb2JsaXR6LmRlDQo+IA0KPiBDaGFuZ2Vz
IGluIHYyOg0KPiAgIEFsbG93IGFsc28gbW9kdWxlcyB3aXRoIG9ubHkgQnl0ZSAxNSAoMTAwbSBT
TSBsaW5rIGxlbmd0aCkgc2V0IHRvDQo+ICAgYmUgaWRlbnRpZmllZCBhcyBCWA0KPiAtLS0NCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlXzgyNTk5LmMgICB8ICA3ICsr
KysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wuYyB8
ICAyICsrDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9waHkuYyAg
ICAgfCA0Mw0KPiArKysrKysrKysrKysrKysrKysrKystLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3BoeS5oICAgICB8ICAyICsrDQo+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlLmggICAgfCAgMiArKw0KPiAgNSBmaWxlcyBj
aGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlXzgyNTk5LmMNCj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV84MjU5OS5jDQo+IGluZGV4DQo+
IGQ1YjFiOTc0YjRhMzNlN2RkNTFiN2NmZTVlYTIxMWZmMDM4YTM2ZjAuLjg5MmE3M2E0YmM2YjBi
YjFjOTc2Y2E5NWJmODcNCj4gNDA1OWI5ODcwNTRmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV84MjU5OS5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlXzgyNTk5LmMNCj4gQEAgLTM0Miw2ICszNDIsMTMg
QEAgc3RhdGljIGludA0KPiBpeGdiZV9nZXRfbGlua19jYXBhYmlsaXRpZXNfODI1OTkoc3RydWN0
IGl4Z2JlX2h3ICpodywNCj4gIAkJcmV0dXJuIDA7DQo+ICAJfQ0KPiANCj4gKwlpZiAoaHctPnBo
eS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xMGdfYnhfY29yZTAgfHwNCj4gKwkgICAgaHct
PnBoeS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xMGdfYnhfY29yZTEpIHsNCj4gKwkJKnNw
ZWVkID0gSVhHQkVfTElOS19TUEVFRF8xMEdCX0ZVTEw7DQo+ICsJCSphdXRvbmVnID0gZmFsc2U7
DQo+ICsJCXJldHVybiAwOw0KPiArCX0NCj4gKw0KPiAgCS8qDQo+ICAJICogRGV0ZXJtaW5lIGxp
bmsgY2FwYWJpbGl0aWVzIGJhc2VkIG9uIHRoZSBzdG9yZWQgdmFsdWUgb2YNCj4gQVVUT0MsDQo+
ICAJICogd2hpY2ggcmVwcmVzZW50cyBFRVBST00gZGVmYXVsdHMuICBJZiBBVVRPQyB2YWx1ZSBo
YXMgbm90DQo+IGJlZW4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX2V0aHRvb2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX2V0aHRvb2wuYw0KPiBpbmRleA0KPiAyZDY2MGU5ZWRiODBhZjhmYzgzNGUwOTc3MDNk
ZmQ2YTgyYjhjNDViLi43NmVkZjAyYmM0N2U1ZGQyNGJiMDkzNmY3MzBmDQo+IDAzNjE4MWY2ZGMy
YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
ZXRodG9vbC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X2V0aHRvb2wuYw0KPiBAQCAtMzUxLDYgKzM1MSw4IEBAIHN0YXRpYyBpbnQgaXhnYmVfZ2V0X2xp
bmtfa3NldHRpbmdzKHN0cnVjdA0KPiBuZXRfZGV2aWNlICpuZXRkZXYsDQo+ICAJCWNhc2UgaXhn
YmVfc2ZwX3R5cGVfMWdfbHhfY29yZTE6DQo+ICAJCWNhc2UgaXhnYmVfc2ZwX3R5cGVfMWdfYnhf
Y29yZTA6DQo+ICAJCWNhc2UgaXhnYmVfc2ZwX3R5cGVfMWdfYnhfY29yZTE6DQo+ICsJCWNhc2Ug
aXhnYmVfc2ZwX3R5cGVfMTBnX2J4X2NvcmUwOg0KPiArCQljYXNlIGl4Z2JlX3NmcF90eXBlXzEw
Z19ieF9jb3JlMToNCj4gIAkJCWV0aHRvb2xfbGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShj
bWQsDQo+IHN1cHBvcnRlZCwNCj4gIAkJCQkJCQkgICAgIEZJQlJFKTsNCj4gIAkJCWV0aHRvb2xf
bGlua19rc2V0dGluZ3NfYWRkX2xpbmtfbW9kZShjbWQsDQo+IGFkdmVydGlzaW5nLCBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfcGh5LmMNCj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9waHkuYw0KPiBpbmRleA0KPiAy
NDQ5ZTRjZjI2NzlkZGYzMjc3ZjRhZGE3NjE5MzAzZWI2MThkMzkzLi5hZDZhMWVhZTYwNDJiYjE2
ZTMyOWZiODE3YmNmDQo+IGNiODdlOTAwOGNlOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfcGh5LmMNCj4gQEAgLTE1NDEsNiArMTU0MSw4IEBAIGlu
dCBpeGdiZV9pZGVudGlmeV9zZnBfbW9kdWxlX2dlbmVyaWMoc3RydWN0DQo+IGl4Z2JlX2h3ICpo
dykNCj4gIAl1OCBpZGVudGlmaWVyID0gMDsNCj4gIAl1OCBjYWJsZV90ZWNoID0gMDsNCj4gIAl1
OCBjYWJsZV9zcGVjID0gMDsNCj4gKwl1OCBzbV9sZW5ndGhfa20gPSAwOw0KPiArCXU4IHNtX2xl
bmd0aF8xMDBtID0gMDsNCj4gIAlpbnQgc3RhdHVzOw0KPiANCj4gIAlpZiAoaHctPm1hYy5vcHMu
Z2V0X21lZGlhX3R5cGUoaHcpICE9IGl4Z2JlX21lZGlhX3R5cGVfZmliZXIpIHsNCj4gQEAgLTE2
NzgsNiArMTY4MCwzMSBAQCBpbnQgaXhnYmVfaWRlbnRpZnlfc2ZwX21vZHVsZV9nZW5lcmljKHN0
cnVjdA0KPiBpeGdiZV9odyAqaHcpDQo+ICAJCQllbHNlDQo+ICAJCQkJaHctPnBoeS5zZnBfdHlw
ZSA9DQo+ICAJCQkJCWl4Z2JlX3NmcF90eXBlXzFnX2J4X2NvcmUxOw0KPiArCQkvKiBTdXBwb3J0
IEV0aGVybmV0IDEwRy1CWCwgY2hlY2tpbmcgdGhlIEJpdCBSYXRlDQo+ICsJCSAqIE5vbWluYWwg
VmFsdWUgYXMgcGVyIFNGRi04NDcyIHRvIGJlIDEyLjUgR2IvcyAoNjdoKQ0KPiBhbmQNCj4gKwkJ
ICogU2luZ2xlIE1vZGUgZmlicmUgd2l0aCBhdCBsZWFzdCAxa20gbGluayBsZW5ndGgNCj4gKwkJ
ICovDQo+ICsJCX0gZWxzZSBpZiAoKCFjb21wX2NvZGVzXzEwZykgJiYgKGJpdHJhdGVfbm9taW5h
bCA9PQ0KPiAweDY3KSAmJg0KPiArCQkJICAgKCEoY2FibGVfdGVjaCAmIElYR0JFX1NGRl9EQV9Q
QVNTSVZFX0NBQkxFKSkNCj4gJiYNCj4gKwkJCSAgICghKGNhYmxlX3RlY2ggJiBJWEdCRV9TRkZf
REFfQUNUSVZFX0NBQkxFKSkpIHsNCj4gKwkJCXN0YXR1cyA9IGh3LT5waHkub3BzLnJlYWRfaTJj
X2VlcHJvbShodywNCj4gKwkJCQkJICAgIElYR0JFX1NGRl9TTV9MRU5HVEhfS00sDQo+ICsJCQkJ
CSAgICAmc21fbGVuZ3RoX2ttKTsNCj4gKwkJCWlmIChzdGF0dXMgIT0gMCkNCj4gKwkJCQlnb3Rv
IGVycl9yZWFkX2kyY19lZXByb207DQo+ICsJCQlzdGF0dXMgPSBody0+cGh5Lm9wcy5yZWFkX2ky
Y19lZXByb20oaHcsDQo+ICsJCQkJCSAgICBJWEdCRV9TRkZfU01fTEVOR1RIXzEwME0sDQo+ICsJ
CQkJCSAgICAmc21fbGVuZ3RoXzEwMG0pOw0KPiArCQkJaWYgKHN0YXR1cyAhPSAwKQ0KPiArCQkJ
CWdvdG8gZXJyX3JlYWRfaTJjX2VlcHJvbTsNCj4gKwkJCWlmIChzbV9sZW5ndGhfa20gPiAwIHx8
IHNtX2xlbmd0aF8xMDBtID49IDEwKSB7DQo+ICsJCQkJaWYgKGh3LT5idXMubGFuX2lkID09IDAp
DQo+ICsJCQkJCWh3LT5waHkuc2ZwX3R5cGUgPQ0KPiArCQkJCQkJaXhnYmVfc2ZwX3R5cGVfMTBn
X2J4X2NvcmUwOw0KPiArCQkJCWVsc2UNCj4gKwkJCQkJaHctPnBoeS5zZnBfdHlwZSA9DQo+ICsJ
CQkJCQlpeGdiZV9zZnBfdHlwZV8xMGdfYnhfY29yZTE7DQo+ICsJCQl9DQo+ICAJCX0gZWxzZSB7
DQo+ICAJCQlody0+cGh5LnNmcF90eXBlID0gaXhnYmVfc2ZwX3R5cGVfdW5rbm93bjsNCj4gIAkJ
fQ0KPiBAQCAtMTc2OCw3ICsxNzk1LDkgQEAgaW50IGl4Z2JlX2lkZW50aWZ5X3NmcF9tb2R1bGVf
Z2VuZXJpYyhzdHJ1Y3QNCj4gaXhnYmVfaHcgKmh3KQ0KPiAgCSAgICAgIGh3LT5waHkuc2ZwX3R5
cGUgPT0gaXhnYmVfc2ZwX3R5cGVfMWdfc3hfY29yZTAgfHwNCj4gIAkgICAgICBody0+cGh5LnNm
cF90eXBlID09IGl4Z2JlX3NmcF90eXBlXzFnX3N4X2NvcmUxIHx8DQo+ICAJICAgICAgaHctPnBo
eS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xZ19ieF9jb3JlMCB8fA0KPiAtCSAgICAgIGh3
LT5waHkuc2ZwX3R5cGUgPT0gaXhnYmVfc2ZwX3R5cGVfMWdfYnhfY29yZTEpKSB7DQo+ICsJICAg
ICAgaHctPnBoeS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xZ19ieF9jb3JlMSB8fA0KPiAr
CSAgICAgIGh3LT5waHkuc2ZwX3R5cGUgPT0gaXhnYmVfc2ZwX3R5cGVfMTBnX2J4X2NvcmUwIHx8
DQo+ICsJICAgICAgaHctPnBoeS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xMGdfYnhfY29y
ZTEpKSB7DQo+ICAJCWh3LT5waHkudHlwZSA9IGl4Z2JlX3BoeV9zZnBfdW5zdXBwb3J0ZWQ7DQo+
ICAJCXJldHVybiAtRU9QTk9UU1VQUDsNCj4gIAl9DQo+IEBAIC0xNzg2LDcgKzE4MTUsOSBAQCBp
bnQgaXhnYmVfaWRlbnRpZnlfc2ZwX21vZHVsZV9nZW5lcmljKHN0cnVjdA0KPiBpeGdiZV9odyAq
aHcpDQo+ICAJICAgICAgaHctPnBoeS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xZ19zeF9j
b3JlMCB8fA0KPiAgCSAgICAgIGh3LT5waHkuc2ZwX3R5cGUgPT0gaXhnYmVfc2ZwX3R5cGVfMWdf
c3hfY29yZTEgfHwNCj4gIAkgICAgICBody0+cGh5LnNmcF90eXBlID09IGl4Z2JlX3NmcF90eXBl
XzFnX2J4X2NvcmUwIHx8DQo+IC0JICAgICAgaHctPnBoeS5zZnBfdHlwZSA9PSBpeGdiZV9zZnBf
dHlwZV8xZ19ieF9jb3JlMSkpIHsNCj4gKwkgICAgICBody0+cGh5LnNmcF90eXBlID09IGl4Z2Jl
X3NmcF90eXBlXzFnX2J4X2NvcmUxIHx8DQo+ICsJICAgICAgaHctPnBoeS5zZnBfdHlwZSA9PSBp
eGdiZV9zZnBfdHlwZV8xMGdfYnhfY29yZTAgfHwNCj4gKwkgICAgICBody0+cGh5LnNmcF90eXBl
ID09IGl4Z2JlX3NmcF90eXBlXzEwZ19ieF9jb3JlMSkpIHsNCj4gIAkJLyogTWFrZSBzdXJlIHdl
J3JlIGEgc3VwcG9ydGVkIFBIWSB0eXBlICovDQo+ICAJCWlmIChody0+cGh5LnR5cGUgPT0gaXhn
YmVfcGh5X3NmcF9pbnRlbCkNCj4gIAkJCXJldHVybiAwOw0KPiBAQCAtMjAxNiwyMCArMjA0Nywy
MiBAQCBpbnQgaXhnYmVfZ2V0X3NmcF9pbml0X3NlcXVlbmNlX29mZnNldHMoc3RydWN0DQo+IGl4
Z2JlX2h3ICpodywNCj4gIAkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiANCj4gIAkvKg0KPiAtCSAq
IExpbWl0aW5nIGFjdGl2ZSBjYWJsZXMgYW5kIDFHIFBoeXMgbXVzdCBiZSBpbml0aWFsaXplZCBh
cw0KPiArCSAqIExpbWl0aW5nIGFjdGl2ZSBjYWJsZXMsIDEwRyBCWCBhbmQgMUcgUGh5cyBtdXN0
IGJlDQo+IGluaXRpYWxpemVkIGFzDQo+ICAJICogU1IgbW9kdWxlcw0KPiAgCSAqLw0KPiAgCWlm
IChzZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV9kYV9hY3RfbG10X2NvcmUwIHx8DQo+ICAJICAg
IHNmcF90eXBlID09IGl4Z2JlX3NmcF90eXBlXzFnX2x4X2NvcmUwIHx8DQo+ICAJICAgIHNmcF90
eXBlID09IGl4Z2JlX3NmcF90eXBlXzFnX2N1X2NvcmUwIHx8DQo+ICAJICAgIHNmcF90eXBlID09
IGl4Z2JlX3NmcF90eXBlXzFnX3N4X2NvcmUwIHx8DQo+IC0JICAgIHNmcF90eXBlID09IGl4Z2Jl
X3NmcF90eXBlXzFnX2J4X2NvcmUwKQ0KPiArCSAgICBzZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlw
ZV8xZ19ieF9jb3JlMCB8fA0KPiArCSAgICBzZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xMGdf
YnhfY29yZTApDQo+ICAJCXNmcF90eXBlID0gaXhnYmVfc2ZwX3R5cGVfc3Jscl9jb3JlMDsNCj4g
IAllbHNlIGlmIChzZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV9kYV9hY3RfbG10X2NvcmUxIHx8
DQo+ICAJCSBzZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xZ19seF9jb3JlMSB8fA0KPiAgCQkg
c2ZwX3R5cGUgPT0gaXhnYmVfc2ZwX3R5cGVfMWdfY3VfY29yZTEgfHwNCj4gIAkJIHNmcF90eXBl
ID09IGl4Z2JlX3NmcF90eXBlXzFnX3N4X2NvcmUxIHx8DQo+IC0JCSBzZnBfdHlwZSA9PSBpeGdi
ZV9zZnBfdHlwZV8xZ19ieF9jb3JlMSkNCj4gKwkJIHNmcF90eXBlID09IGl4Z2JlX3NmcF90eXBl
XzFnX2J4X2NvcmUxIHx8DQo+ICsJCSBzZnBfdHlwZSA9PSBpeGdiZV9zZnBfdHlwZV8xMGdfYnhf
Y29yZTEpDQo+ICAJCXNmcF90eXBlID0gaXhnYmVfc2ZwX3R5cGVfc3Jscl9jb3JlMTsNCj4gDQo+
ICAJLyogUmVhZCBvZmZzZXQgdG8gUEhZIGluaXQgY29udGVudHMgKi8gZGlmZiAtLWdpdA0KPiBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3BoeS5oDQo+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfcGh5LmgNCj4gaW5kZXgNCj4gODExNzlj
NjBhZjRlMDE5OWE4YjlkMGZjZGYzNDY1NGIwMmVlZGZhYy4uMDM5YmE0YjZjMTIwZjNlODI0Yzkz
Y2IwMGZkZA0KPiA5NDgzZTdjZjljYmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3BoeS5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2l4Z2JlL2l4Z2JlX3BoeS5oDQo+IEBAIC0zMiw2ICszMiw4IEBADQo+ICAjZGVmaW5l
IElYR0JFX1NGRl9RU0ZQXzFHQkVfQ09NUAkweDg2DQo+ICAjZGVmaW5lIElYR0JFX1NGRl9RU0ZQ
X0NBQkxFX0xFTkdUSAkweDkyDQo+ICAjZGVmaW5lIElYR0JFX1NGRl9RU0ZQX0RFVklDRV9URUNI
CTB4OTMNCj4gKyNkZWZpbmUgSVhHQkVfU0ZGX1NNX0xFTkdUSF9LTQkJMHhFDQo+ICsjZGVmaW5l
IElYR0JFX1NGRl9TTV9MRU5HVEhfMTAwTQkweEYNCj4gDQo+ICAvKiBCaXRtYXNrcyAqLw0KPiAg
I2RlZmluZSBJWEdCRV9TRkZfREFfUEFTU0lWRV9DQUJMRQkJMHg0DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlLmgNCj4gYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlLmgNCj4gaW5kZXgNCj4gYjFiZmVi
MjE1MzdhY2M0NGMzMWFlZGNiMDU4NDM3NGU4ZjZlY2Q0NS4uNjFmMmVmNjdkZWZkZGVhYjlmZjRh
YTgzYzhmMA0KPiAxNzgxOTU5NDk5NmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGUuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV90eXBlLmgNCj4gQEAgLTMyODYsNiArMzI4Niw4IEBAIGVudW0g
aXhnYmVfc2ZwX3R5cGUgew0KPiAgCWl4Z2JlX3NmcF90eXBlXzFnX2x4X2NvcmUxID0gMTQsDQo+
ICAJaXhnYmVfc2ZwX3R5cGVfMWdfYnhfY29yZTAgPSAxNSwNCj4gIAlpeGdiZV9zZnBfdHlwZV8x
Z19ieF9jb3JlMSA9IDE2LA0KPiArCWl4Z2JlX3NmcF90eXBlXzEwZ19ieF9jb3JlMCA9IDE3LA0K
PiArCWl4Z2JlX3NmcF90eXBlXzEwZ19ieF9jb3JlMSA9IDE4LA0KPiANCj4gIAlpeGdiZV9zZnBf
dHlwZV9ub3RfcHJlc2VudCA9IDB4RkZGRSwNCj4gIAlpeGdiZV9zZnBfdHlwZV91bmtub3duID0g
MHhGRkZGDQo+IA0KPiAtLS0NCj4gYmFzZS1jb21taXQ6IDY3MDI5YTQ5ZGI2YzFmMjExMDZhMWI1
ZmNkZDBlYTIzNGE2ZTA3MTENCj4gY2hhbmdlLWlkOiAyMDI1MTAxMi0xMGdieC1hYjQ4MmM1ZTFk
NTQNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gQmlyZ2VyIEtvYmxpdHogPG1haWxAYmly
Z2VyLWtvYmxpdHouZGU+DQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVr
c2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0K
