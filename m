Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCptLRcr72n98gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:23:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2EA46FD5B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5848142F5C;
	Mon, 27 Apr 2026 09:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsQ1mE5GHMmC; Mon, 27 Apr 2026 09:23:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C8E842F65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777281811;
	bh=KDjsI1frNgv/ApyL1uALatvAmmiGkV9bM07G9ywuTTw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0myYXN9ALGWPmieS0ZST/wbd+kFKLbxEwYYi8Kco4FysENvHyQSyERx46j/eZWyEj
	 XuMgXva7BAzo678s/k+2T2DmYOr8CEtHVlmXVr+j2BUkj21ylOiY+X63/urZWz0xky
	 hkaqj+mSXWRyv0T5eK4/B3+EmAutlWnFrlUe4ijtyApHZe49a3/1Guj+h8uxWuOltB
	 rqf2vYwiUdvfjlA0QvzNdv3WBEq/gHvcjg7LE05x+UTTn7Fad3Gg6+FbQshJlZjL9f
	 LXBRQgnQsao5gEoLGtcnXrCM5X0jNadmtlJI76mv5mogKvd4WiSCSekvZfpljPxBsS
	 ytuOJJbBYWVUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C8E842F65;
	Mon, 27 Apr 2026 09:23:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CB2C52DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC16385520
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vcQEyN6801i7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 09:23:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1F51B8551F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F51B8551F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F51B8551F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:23:27 +0000 (UTC)
X-CSE-ConnectionGUID: c2qOnC9PSNafdAmlxrNjTw==
X-CSE-MsgGUID: 5x4XSMmPQ5q3KjPg7KFgJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="88478341"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="88478341"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:23:20 -0700
X-CSE-ConnectionGUID: aw8iF+pMR7uMr8ocSp8htA==
X-CSE-MsgGUID: KDsx0i6TTI2YpUOFMAes7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="232706582"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:23:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:23:19 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 02:23:19 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dInBVrlz3bTijCyfGq2zmPvYpk73WRgI54jJ7rTt6ST2Yy+HW+AHw1ScfNiPZrZbQ15bkzppoMF24cyR/GNlN6j2oPN8agORycheCkqbdo5Xxx5jMv8OVWgBKJagMPUF+fak/WsW9+GZgx+7BQoKG2wLGmczId5ZvHQw/Cj92A0jObVzUXMiAqAXByomX46x0q5akRe38oAO1NpwHxSNY0WPyxdLPMrJzjrRltFNRegIBuVTGpAvX59zATRBjNJR6jfThH+KTgo6/PPdMIMD24CafdHRH3IUHRFnMSYNUInbouEBfepYBWLrVdRO7VbD/lB9PfjzINaDPKqRqHECzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KDjsI1frNgv/ApyL1uALatvAmmiGkV9bM07G9ywuTTw=;
 b=aK8kYTZl/1GPAeEd7+eXh+l3XkrzN7PDFWHXuJN0wBLipylqZud4o7xW9i8AHK2Iv/lnBG/n+2VoOS23JK2vBtb6kVVI5N8dFl+INmJL72SH/vC/Q9b9IB8j3O3Xxnq9HqltpzUua7Aq8Q1blNPimz1Td/s0khZmtTTsJhAtGJXeM02M7/ue57yeYq5rOG47+oT2NpGohKRCQFDXGJEtKYBvrl8kYmMrDeAtOCytatVz4c8r9ZSCxpwn4+kI4fCMHqszbyS421QsNbCn+RqYUsNyfg7n7fbU0Njl9SNLKAnWYGVbT674wTUGYYSUqSkA35YB552JIA030XdSwflKjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PHXPR11MB9637.namprd11.prod.outlook.com (2603:10b6:510:3ce::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 09:23:15 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 09:23:15 +0000
Message-ID: <d055ed86-89d9-42fd-a881-0384ebfd24f7@intel.com>
Date: Mon, 27 Apr 2026 11:23:10 +0200
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <aleksandr.loktionov@intel.com>,
 <jacob.e.keller@intel.com>, <horms@kernel.org>, <anthony.l.nguyen@intel.com>, 
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <netdev@vger.kernel.org>
References: <20260423130405.139568-1-jtornosm@redhat.com>
 <20260423130405.139568-4-jtornosm@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260423130405.139568-4-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2P251CA0007.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::9) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PHXPR11MB9637:EE_
X-MS-Office365-Filtering-Correlation-Id: d04ac0b5-bc69-471a-5ec5-08dea43e9c47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 9ZNGE3WPHS4QAJYumDq/IaPr23u0R2bduyRkYwdVsy6aUuqF4xMqyZzNlfr5ww69dWLm+81gm3lPb7YJM5kx58RuedBwNXp82/0y+Kep0ef3KYyZzFXT5xB19pNGZOCESFUy3lGyv5RJ3Z0SErir5C9+3ph66Y0mUQQgJrODR55htbhSjE2HFaaQagbOQtTy/k5O/h7T7xrezbXA/gCqnlFD7rPVpKcXUqhyekzrYni8GnJDCz/c+5JBW6vSHU5SkBw8j+MrcaEALj45gyym7Uqk0/hPHG8ZpCSpNC/f58yCIJ7MG4kJ1NxX1tUOkWNtqog4wKOr1X0iH6bHN2RRelm0C4fiAPo+T0V+quYFuiV10Gc9dH/0vzRq5KIoWeOzVufrufOMwCsWmyMZ1QRES+SArRrA9gIXSasp1Amec9sq55L1KMLE6+EnqUWMdT0qdFxFGbuYK2ZUXLd18PXvMqbr/FmDAjwjvZiaSWc4aePRoP9hMKffgwWpld/uSwXFSqEBWegIACfz/oaOfxULHVqjrgq2E8JO01DLPhsfL8iWbt6CNS4vJrQyRevGe4D5yZlIqDUI/j8siQkFM+TKKm7ix5tnooxV+CVLQNSLfn28GRXmpNiwSJy1BTPuGA9IpCM/3JCK+nsh54MgIa5uQL9993SMY9WY4wA1vPtG7Lc35/jNDlBlh8L3VgBV0g4/zTGrmeGbnmP5MAFRz37rrleyWvBB0jYOe9K2U2fIdflldylugQ3feLR/pmyyVK2D
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YktQc3RNL00vQUdOWTN0SGRoVTFSKytSNFgzZTVObmh0U25YY2ExUW82TGdY?=
 =?utf-8?B?Uk1zT0U4cWhLZUZ2VHJKdm1zSGhXTGtadjNkTEtpK0owRGNaNFVFSnpkMGlQ?=
 =?utf-8?B?L0RxVUxrZlZjS0lFWjJiNk1UdkpnSi9HRnRXQVgrLzNIMUw0dGJGcUY3MUs5?=
 =?utf-8?B?WkpNa3BvYTJQbGRYMzM3cFh2UjBCRXBocS84VG9KelRqWEdHUVZzejRRS0tD?=
 =?utf-8?B?MWFPYitFOWhwWHhhNFJxMnFmK3JNUnE5d1llczRIbFdXVHErUGNURjZyWUN6?=
 =?utf-8?B?bXozMkNBczBJR2RNQmgvR2Q4UUlhQmc4b0FDaUZOVTdmUUxWVmJwRTl6dzdW?=
 =?utf-8?B?VFVTNmFEeUhlVFZwUHNDTTZHZTNjY2ZCeEtmV2FRL09zMFFIMWFxN2lyc0Rl?=
 =?utf-8?B?aGtabkRlTGJESCswNTBIUlQwYW4reS9WdXdBWFJ3WFllc0ZVN2dKZ0VOR0tH?=
 =?utf-8?B?L3duNUZPUkw1Ykx1MTArWG92M2k1VndpTEdQK0p6MEZmSjRDRG9oOHRIVitB?=
 =?utf-8?B?VmRiV2dVU0YvbHp2d0VxWE10cExvTUFEWU5GaWZhQTJkY0hTK1FFOEZmd1pu?=
 =?utf-8?B?ejlNdzJaaVdzTkFXSUVHZFVrMS9RYUJ0d2dmZHIxNHA4WjNIMi9BTjJXd094?=
 =?utf-8?B?Y0dQWk1NTlg0cTlrcUc5b0tHVFdHRTlFUW10V1JZYXMybGprT2hrMjNrOWl6?=
 =?utf-8?B?anp3MjUxYmxWK01EU3YwZzFLeUMyRVVjS2xsQVZFSklwSFpSUUl1N3FFR0lo?=
 =?utf-8?B?aXBmdzRNenl0ZmtLeW15UVJqZjdwZklXcllXSGNXaHRsbTgrN1FZZk45NHB3?=
 =?utf-8?B?eU9VUy9nUjhTK3JJWWsrWUV3YzZyTnM4bVFUNkdlNGw4Z21oZFhtTE94eDJD?=
 =?utf-8?B?RzFvaEc2T2NLWnltaFh4ampKTHpXZVNxMGJaWXFpZjJETnNvSVE1VCt5c1JW?=
 =?utf-8?B?VENnRmwrL0pibmVlMGdvM3hOZGtKbWdvanRObXY1M2xtL3RoSTQ4R3cyYlUz?=
 =?utf-8?B?OER1UU1hQXpockJ6ZDZheHhOMzV4ZVZRUmJCTzZZZlVUcFM4S1NuZ01ZZjhI?=
 =?utf-8?B?azFJTDlENHNjR1VndEJkSTZTQUFJUEVkR2xqZzJaOFc2QTZ3YmtWcUNYNHJC?=
 =?utf-8?B?SWdORGNVUWtJTWFHK0VCbXRNVmR2UDBlWDVaOXJJOThMbUhGaGdhMnVwQzdN?=
 =?utf-8?B?S1cwT09GclFqZ2JvSHR5dVBPVytKcENmTE1qNitWakdVTXQ5UXBENXJ1RVdB?=
 =?utf-8?B?U05lb3BVSUY5MUlmcHh1RGJnYXdVSjhuT0RocWZTcXVhZ04zTGJFbGxUYkth?=
 =?utf-8?B?Sng5YXkxVlM2eEZqNzhXSm85THFQTUVSdWtUZE9FZGRVajYrUVhmYXNDVEts?=
 =?utf-8?B?ZGZBbGhPSldtSlFUcWF5QTErTjhjTCtaZU5kS1Z6bUg0OFpBZExqWnFTZnNt?=
 =?utf-8?B?MmI5enRld3RORFlGZzZKbUdCQWJ1K3RVMTFCbUZ3bldNVWlFV2ZwUEJZR3VU?=
 =?utf-8?B?RFB1cG9Mb1Q1bmtJL3NxUTZVMkpvaEUvUTNuS3FqNlBpaldma2pxeUJyaHUz?=
 =?utf-8?B?QkdqVm9yWUREMTJESzc1T08zN1JGdUlvdW40cTZwOTU2U3FkZkdUVjdKeXlp?=
 =?utf-8?B?emRlM3VMY2F2bWQ0dm9lMzJ6d0VsUUtUVlBneEdqeFRqdHo4dkRtNlg4UWdr?=
 =?utf-8?B?WmdNQTc2blpsTitWYXg2NXJhZHk2dkdMYWhlQmdkU0xwaUVFYU9IbER2ZG44?=
 =?utf-8?B?ZXhGcnBJVG51RW1zd01yT3pQK2JqS01iOG00aDJ5Rkw5VWNHQmhSV1lhQnVu?=
 =?utf-8?B?OWJyUklrcUJGamxlcndRbTFhQ0QrOEdua3FublV2MkdYeDRDc2x3SW85VTNk?=
 =?utf-8?B?cytaQ212ZmRSak1jT0ZONlZobXRBM1FqZm5mQy92dW5mV3lxUWE0Mi9LWG95?=
 =?utf-8?B?ekRCRUwvS0lHb1gxbHpZSElrMUZWYmN0K2dOSHlDUzJjMnRjcFFSWEx6OVNn?=
 =?utf-8?B?ZVY4YzFxUVNzcnRaM25jMlNKb1FXTW5Td0hMOTE3dEJhaHVZYzREemFTMEFN?=
 =?utf-8?B?NmdRVmhtSTlPMld1THZYTHgrTDQrbTByei9DUFNBSnp1a3AxYkJJSFhVUGxk?=
 =?utf-8?B?MTdEc05zUFNXcnhhU1ZZOFc2RXBKeDJock1ZZTdjTkFQWGtKRzhHb0ovYno0?=
 =?utf-8?B?QzR0dHlTRjBBbzBVMVZYTS90Q0xBaEJ5alFHakNkaE9xQ3hXWHNXQ2VCcWha?=
 =?utf-8?B?NTE1STgrMmxHc0JNNnh3Mlc3eFJmblRBUTZJYU4xYit2aW5wbzFJb0NveWY1?=
 =?utf-8?B?YWt3ejBHV01qbmJ3Q3NURisxOWFSdXBTWWF4U1lVUTQyVW9yQ1dFdFllbTBk?=
 =?utf-8?Q?I08HM0pTy6fGLNy0=3D?=
X-Exchange-RoutingPolicyChecked: nNoLE1yYp30Isc4ubmyiUCK6GqLZrZ0v7l/2hWKM/2NFrszdKVjJ/k0OniwY/oAkRg9Rviw+/TLFynYZCg5xa6QAdVJS8KSLlxoKfbM2Q1xtV0dSS4AYPXUI9xaU/oicgf11zNQYpRKU7rLMV9C7C5hr5M9snavvSGGJHBtuR8xHSGbDCyJRBV0aUGXVe04J4yS51Qgopj7dbXdx2P2pThguLuzPDrAS/8EuTQ8c6yCM8J6sD4Aj16U2sQ043VSGPXG3ifykLPj8HKD6P0Nn0bgaI8/eOo3JwmVWntzxMJMZyO/CX1NjlIR/D2aOKBoLVZfN4jQnpOalCJYFLbhh5w==
X-MS-Exchange-CrossTenant-Network-Message-Id: d04ac0b5-bc69-471a-5ec5-08dea43e9c47
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 09:23:15.2313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6yo+IgFqzIS8LGqQ/LKrYfIg6iW56W6RaCBXviHnWRG0KWk83ZLjEm/5zfLx8fJHzexlXg+6FeLlJQ5MexGX9PE32oFoCBKSadiO3PNBzJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PHXPR11MB9637
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777281808; x=1808817808;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2MuR6EmeH0/H0J1mkMNHdDOejHj9jXuTCfvBkJcxick=;
 b=TjmSFaZ4eVH9WoZ3pBWq1PITCMXgXqA0pBvoVl50cDdhLzYE8WB3Wkk7
 9ubuqsgII6lOJT4MWspoaIhnv6WSLaGZaG+90dsAGs51vqMtobHgLfKXq
 VNEMvdPKv3dwPgr7gy+72YBCbDnKd3wPEg0rxh2bxmWTUpozmRgMnHNra
 OClLsSLDYjNq9DPDxxgvuV6In7ni6y7OHnt9AmgHeU0v5XXEuAnB/Rsb0
 ehmn6Ltpk1jnoLdh3/4lE7/mLrHAQWljDW8haYRz4S4ZKjgmDL9koXqwe
 xLmH/WrIdWwWQj+OQ74jbW+Ww1ju598tfBhen22Z2Y6ETFRcPEFzj2RF/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TjmSFaZ4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Queue-Id: 0E2EA46FD5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,sashiko.dev:url,osuosl.org:dkim]

On 4/23/26 15:04, Jose Ignacio Tornos Martinez wrote:
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
> operations"), iavf_set_mac() is called with the netdev instance lock
> already held.
> 
> The function queues a MAC address change request via
> iavf_replace_primary_mac() and then waits for completion. However, in
> the current flow, the actual virtchnl message is sent by the watchdog
> task, which also needs to acquire the netdev lock to run. Additionally,
> the adminq_task which processes virtchnl responses also needs the netdev
> lock.
> 
> This creates a deadlock scenario:
> 1. iavf_set_mac() holds netdev lock and waits for MAC change
> 2. Watchdog needs netdev lock to send the request -> blocked
> 3. Even if request is sent, adminq_task needs netdev lock to process
>     PF response -> blocked
> 4. MAC change times out after 2.5 seconds
> 5. iavf_set_mac() returns -EAGAIN
> 
> This particularly affects VFs during bonding setup when multiple VFs are
> enslaved in quick succession.
> 
> Fix by implementing a synchronous MAC change operation similar to the
> approach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset handling
> in callbacks").
> 
> The solution:
> 1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog)
> 2. Poll the admin queue hardware directly for responses
> 3. Process all received messages (including non-MAC messages)
> 4. Return when MAC change completes or times out
> 
> A new generic function iavf_poll_virtchnl_response() is introduced that
> can be reused for any future synchronous virtchnl operations. It takes a
> callback to check completion, allowing flexible condition checking.
> 
> This allows the operation to complete synchronously while holding
> netdev_lock, without relying on watchdog or adminq_task. The function
> can sleep for up to 2.5 seconds polling hardware, but this is acceptable
> since netdev_lock is per-device and only serializes operations on the
> same interface.
> 
> To support this, change iavf_add_ether_addrs() to return an error code
> instead of void, allowing callers to detect failures. Additionally,
> export iavf_mac_add_reject() to enable proper rollback on local failures
> (timeouts, send errors) - PF rejections are already handled automatically
> by iavf_virtchnl_completion().
> 
> Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs operations")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v4: Complete with Przemek Kitszel comments:
>      - Remove vc_waitqueue entirely (not needed any more)

nit: I would add a short note to commit message too
thanks a lot for the rest of changes
I have a few last nits, please find below

>      - Add named parameters to callback function pointer declaration for
>        clarity
>      - Simplify callback signature: add v_op parameter so callback
>        receives the opcode from the processed message to identify which
>        response was received
>      - Optimize polling loop to single condition check per iteration
>        instead of checking both before and after message processing
>      Address AI review (sashiko.dev) from Simon Horman:
>      - Complete iavf_add_ether_addrs() error handling
>      - Skip non-virtchnl hardware events (received_op=VIRTCHNL_OP_UNKNOWN),
>        these can cause false completion detection
>      - Complete rollback for local failures (not PF rejection) reusing
>        iavf_mac_add_reject() to restore the old primary filter
> v3: https://lore.kernel.org/netdev/20260414110006.124286-4-jtornosm@redhat.com/
> 
>   drivers/net/ethernet/intel/iavf/iavf.h        | 10 +-
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 70 +++++++++----
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 99 +++++++++++++++++--
>   3 files changed, 151 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index e9fb0a0919e3..78fa3df06e11 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -260,7 +260,6 @@ struct iavf_adapter {
>   	struct work_struct adminq_task;
>   	struct work_struct finish_config;
>   	wait_queue_head_t down_waitqueue;
> -	wait_queue_head_t vc_waitqueue;
>   	struct iavf_q_vector *q_vectors;
>   	struct list_head vlan_filter_list;
>   	int num_vlan_filters;
> @@ -589,8 +588,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter);
>   void iavf_enable_queues(struct iavf_adapter *adapter);
>   void iavf_disable_queues(struct iavf_adapter *adapter);
>   void iavf_map_queues(struct iavf_adapter *adapter);
> -void iavf_add_ether_addrs(struct iavf_adapter *adapter);
> +int iavf_add_ether_addrs(struct iavf_adapter *adapter);
>   void iavf_del_ether_addrs(struct iavf_adapter *adapter);
> +void iavf_mac_add_reject(struct iavf_adapter *adapter);
>   void iavf_add_vlans(struct iavf_adapter *adapter);
>   void iavf_del_vlans(struct iavf_adapter *adapter);
>   void iavf_set_promiscuous(struct iavf_adapter *adapter);
> @@ -607,6 +607,12 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter);
>   void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>   			      enum virtchnl_ops v_opcode,
>   			      enum iavf_status v_retval, u8 *msg, u16 msglen);
> +int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
> +				bool (*condition)(struct iavf_adapter *adapter,
> +						  const void *data,
> +						  enum virtchnl_ops v_op),
> +				const void *cond_data,
> +				unsigned int timeout_ms);
>   int iavf_config_rss(struct iavf_adapter *adapter);
>   void iavf_cfg_queues_bw(struct iavf_adapter *adapter);
>   void iavf_cfg_queues_quanta_size(struct iavf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 67aa14350b1b..bc5994bf2cd9 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1047,6 +1047,48 @@ static bool iavf_is_mac_set_handled(struct net_device *netdev,
>   	return ret;
>   }
>   
> +/**
> + * iavf_mac_change_done - Check if MAC change completed
> + * @adapter: board private structure
> + * @data: MAC address being checked (as const void *)
> + * @v_op: virtchnl opcode from processed message
> + *
> + * Callback for iavf_poll_virtchnl_response() to check if MAC change completed.
> + *
> + * Returns true if MAC change completed, false otherwise

I'm not a fan of kdoc, but would rather write kdoc-compilant comments:
Return: ...

> + */
> +static bool iavf_mac_change_done(struct iavf_adapter *adapter,
> +				 const void *data, enum virtchnl_ops v_op)
> +{
> +	const u8 *addr = data;
> +
> +	return iavf_is_mac_set_handled(adapter->netdev, addr);
> +}
> +
> +/**
> + * iavf_set_mac_sync - Synchronously change MAC address
> + * @adapter: board private structure
> + * @addr: MAC address to set
> + *
> + * Sends MAC change request to PF and polls admin queue for response.
> + * Caller must hold netdev_lock. This can sleep for up to 2.5 seconds.
> + *
> + * Returns 0 on success, negative on failure

ditto kdoc "Return:"

> + */
> +static int iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 *addr)
> +{
> +	int ret;
> +
> +	netdev_assert_locked(adapter->netdev);
> +
> +	ret = iavf_add_ether_addrs(adapter);
> +	if (ret)
> +		return ret;
> +
> +	return iavf_poll_virtchnl_response(adapter, iavf_mac_change_done,
> +					   addr, 2500);
> +}
> +
>   /**
>    * iavf_set_mac - NDO callback to set port MAC address
>    * @netdev: network interface device structure
> @@ -1067,25 +1109,20 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>   		return -EADDRNOTAVAIL;
>   
>   	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
> -
>   	if (ret)
>   		return ret;
>   
> -	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
> -					       iavf_is_mac_set_handled(netdev, addr->sa_data),
> -					       msecs_to_jiffies(2500));
> -
> -	/* If ret < 0 then it means wait was interrupted.
> -	 * If ret == 0 then it means we got a timeout.
> -	 * else it means we got response for set MAC from PF,
> -	 * check if netdev MAC was updated to requested MAC,
> -	 * if yes then set MAC succeeded otherwise it failed return -EACCES
> -	 */
> -	if (ret < 0)
> +	ret = iavf_set_mac_sync(adapter, addr->sa_data);
> +	if (ret) {
> +		/* Rollback for local failures (timeout, send error, -EBUSY).
> +		 * Note: If PF rejects the request (sends error response),
> +		 * iavf_virtchnl_completion() automatically calls
> +		 * iavf_mac_add_reject(), ret=0, and this is not executed.
> +		 * Only local failures (no PF response received) need manual rollback.
> +		 */
> +		iavf_mac_add_reject(adapter);
>   		return ret;
> -
> -	if (!ret)
> -		return -EAGAIN;
> +	}
>   
>   	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
>   		return -EACCES;
> @@ -5415,9 +5452,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* Setup the wait queue for indicating transition to down status */
>   	init_waitqueue_head(&adapter->down_waitqueue);
>   
> -	/* Setup the wait queue for indicating virtchannel events */
> -	init_waitqueue_head(&adapter->vc_waitqueue);
> -
>   	INIT_LIST_HEAD(&adapter->ptp.aq_cmds);
>   	init_waitqueue_head(&adapter->ptp.phc_time_waitqueue);
>   	mutex_init(&adapter->ptp.aq_cmd_lock);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index a52c100dcbc5..d1afb8261c24 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2,6 +2,7 @@
>   /* Copyright(c) 2013 - 2018 Intel Corporation. */
>   
>   #include <linux/net/intel/libie/rx.h>
> +#include <net/netdev_lock.h>
>   
>   #include "iavf.h"
>   #include "iavf_ptp.h"
> @@ -555,20 +556,23 @@ iavf_set_mac_addr_type(struct virtchnl_ether_addr *virtchnl_ether_addr,
>    * @adapter: adapter structure
>    *
>    * Request that the PF add one or more addresses to our filters.
> + *
> + * Return: 0 on success, negative on failure
>    **/

thank you for also changing the kdoc when touching the function :)

> -void iavf_add_ether_addrs(struct iavf_adapter *adapter)
> +int iavf_add_ether_addrs(struct iavf_adapter *adapter)
>   {
>   	struct virtchnl_ether_addr_list *veal;
>   	struct iavf_mac_filter *f;
>   	int i = 0, count = 0;
>   	bool more = false;
>   	size_t len;
> +	int ret;
>   
>   	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>   		/* bail because we already have a command pending */
>   		dev_err(&adapter->pdev->dev, "Cannot add filters, command %d pending\n",
>   			adapter->current_op);
> -		return;
> +		return -EBUSY;
>   	}
>   
>   	spin_lock_bh(&adapter->mac_vlan_list_lock);
> @@ -580,7 +584,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
>   	if (!count) {
>   		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_MAC_FILTER;
>   		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -		return;
> +		return 0;
>   	}
>   	adapter->current_op = VIRTCHNL_OP_ADD_ETH_ADDR;
>   
> @@ -594,8 +598,9 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
>   
>   	veal = kzalloc(len, GFP_ATOMIC);
>   	if (!veal) {
> +		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>   		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -		return;
> +		return -ENOMEM;
>   	}
>   
>   	veal->vsi_id = adapter->vsi_res->vsi_id;
> @@ -615,8 +620,15 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
>   
>   	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>   
> -	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal, len);
> +	ret = iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal, len);
>   	kfree(veal);
> +	if (ret) {
> +		dev_err(&adapter->pdev->dev,
> +			"Unable to send ADD_ETH_ADDR message to PF, error %d\n", ret);
> +		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
> +	}
> +
> +	return ret;
>   }
>   
>   /**
> @@ -713,7 +725,7 @@ static void iavf_mac_add_ok(struct iavf_adapter *adapter)
>    *
>    * Remove filters from list based on PF response.
>    **/
> -static void iavf_mac_add_reject(struct iavf_adapter *adapter)
> +void iavf_mac_add_reject(struct iavf_adapter *adapter)
>   {
>   	struct net_device *netdev = adapter->netdev;
>   	struct iavf_mac_filter *f, *ftmp;
> @@ -2389,7 +2401,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>   			iavf_mac_add_reject(adapter);
>   			/* restore administratively set MAC address */
>   			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
> -			wake_up(&adapter->vc_waitqueue);
>   			break;
>   		case VIRTCHNL_OP_DEL_VLAN:
>   			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
> @@ -2586,7 +2597,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>   				eth_hw_addr_set(netdev, adapter->hw.mac.addr);
>   				netif_addr_unlock_bh(netdev);
>   			}
> -		wake_up(&adapter->vc_waitqueue);
>   		break;
>   	case VIRTCHNL_OP_GET_STATS: {
>   		struct iavf_eth_stats *stats =
> @@ -2956,3 +2966,76 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>   	} /* switch v_opcode */
>   	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>   }
> +
> +/**
> + * iavf_poll_virtchnl_response - Poll admin queue for virtchnl response
> + * @adapter: adapter structure
> + * @condition: callback to check if desired response received
> + * @cond_data: context data passed to condition callback
> + * @timeout_ms: maximum time to wait in milliseconds
> + *
> + * Polls the admin queue and processes all incoming virtchnl messages.
> + * After processing each valid message, calls the condition callback to check
> + * if the expected response has been received. The callback receives the opcode
> + * of the processed message to identify which response was received. Continues
> + * polling until the callback returns true or timeout expires.
> + * Clear current_op on timeout to prevent permanent -EBUSY state.
> + * Caller must hold netdev_lock. This can sleep for up to timeout_ms while
> + * polling hardware.
> + *
> + * Return: 0 on success (condition met), -EAGAIN on timeout, or error code
> + **/

single star for closing coments **/ → */

> +int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
> +				bool (*condition)(struct iavf_adapter *adapter,
> +						  const void *data,
> +						  enum virtchnl_ops v_op),
> +				const void *cond_data,
> +				unsigned int timeout_ms)
> +{
> +	struct iavf_hw *hw = &adapter->hw;
> +	struct iavf_arq_event_info event;
> +	enum virtchnl_ops received_op;
> +	unsigned long timeout;
> +	u32 v_retval;
> +	u16 pending;
> +	int ret = -EAGAIN;

RCT violation - we sort lines from longest to shortest

> +
> +	netdev_assert_locked(adapter->netdev);
> +
> +	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
> +	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
> +	if (!event.msg_buf)
> +		return -ENOMEM;
> +
> +	timeout = jiffies + msecs_to_jiffies(timeout_ms);
> +	do {
> +		if (iavf_clean_arq_element(hw, &event, &pending) == IAVF_SUCCESS) {
> +			received_op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
> +			if (received_op != VIRTCHNL_OP_UNKNOWN) {
> +				v_retval = le32_to_cpu(event.desc.cookie_low);
> +
> +				iavf_virtchnl_completion(adapter, received_op,
> +							 (enum iavf_status)v_retval,
> +							 event.msg_buf, event.msg_len);
> +
> +				if (condition(adapter, cond_data, received_op)) {
> +					ret = 0;
> +					break;
> +				}
> +			}
> +
> +			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
> +
> +			if (pending)
> +				continue;
> +		}
> +
> +		usleep_range(50, 75);

we got again to the "sleep then check time" situation
to resolve that, you could init @pending with 0, and sleep at the very
begining of each loop step if (!pending)

after that I will be no longer complaining on this patch,
thank you again for the work!

> +	} while (time_before(jiffies, timeout));
> +
> +	if (ret == -EAGAIN && adapter->current_op != VIRTCHNL_OP_UNKNOWN)
> +		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
> +
> +	kfree(event.msg_buf);
> +	return ret;
> +}

