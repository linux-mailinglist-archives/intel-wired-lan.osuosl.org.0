Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7s30Dczb82lq8AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 00:46:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF434A8A50
	for <lists+intel-wired-lan@lfdr.de>; Fri, 01 May 2026 00:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 556B0612EB;
	Thu, 30 Apr 2026 22:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D7wXH2-02pZc; Thu, 30 Apr 2026 22:46:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B97F1611D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777589191;
	bh=xQJbsxTRTNS6cDaW5Z/dDNOxt5p7lJqP5q/pBEEH+TI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vRDVzUYIViW2bfdCjjKDQXcgR+p8jmVEOoOSRVj8ckHC4tOS32hrDQtDQqH6kb5S+
	 p/TfwpXArD4UDZ1KjPBFKn1mXxVG67sex2H//BNLR/+pk1KI6BZV15Gfl8yGJpCAZM
	 EkJApJ1EqX+LLsRIVVwDzmYYPzB4D453XmD5l8YnXZbils6azqNtpyzDMyNWYBjYkG
	 EqRMThD8XqRBWcobqAJMOeU8gg8mqU+gXF5vMf48Mm6WHbzGkUM6HSueckMLjCa+65
	 9Wb04+hs289kJjKHmqIiIx7okH8vcBFJKyjB+ooFVu87BCfI99MqS+gQYnuTYXOgWd
	 XODkL7ZedJ74A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B97F1611D7;
	Thu, 30 Apr 2026 22:46:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2296E127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 22:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0825340F30
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 22:46:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gX0vu58KjRcB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 22:46:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32F7640AE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32F7640AE9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32F7640AE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 22:46:28 +0000 (UTC)
X-CSE-ConnectionGUID: AFxWnvq+T1GbePAe15xttA==
X-CSE-MsgGUID: 0ZRpJTnqR4GyRkfaaquOpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11772"; a="82412198"
X-IronPort-AV: E=Sophos;i="6.23,209,1770624000"; d="scan'208";a="82412198"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 15:46:28 -0700
X-CSE-ConnectionGUID: Qf8XvxzBQ9GgJEsJUaguig==
X-CSE-MsgGUID: wHhUet0sSomxDUUnOGXKkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,209,1770624000"; d="scan'208";a="258049729"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 15:46:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 15:46:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 15:46:27 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 15:46:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gk12d7q05FiponkcioKervdRMgyqAcCk6nlmMOG6DaDX1yfGY1a8VziqEbediQV3lpyb3L5w81Yto2GFXYYCAyBzZAa/GGTUyfExKRpDM9HKViJWfy6g/iHfSak0VD4rkEVyWU88vlbwbVmsmRV8WeFf4Z2ia+v1UGp+ThrHQysIVuUBnTL/Rs75fftlxwom+/AUExtFjGEJX1mBoBEDc1RFXHIL+6ulq9NdWphjarGNj19b/FGqyUSASsj2IH0/SGI/soDEMMVAZfnWyW2RWWrvFd0OQdLjV7I3yxnBeYEGAYzr/YgqNgTnWJ16eIouHWoxdfdBN+05cVTHZCtnfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xQJbsxTRTNS6cDaW5Z/dDNOxt5p7lJqP5q/pBEEH+TI=;
 b=kvUFC845dNUyBldi2NjIxW4kUNufiClg4UdZTHjYIiROoPWnOZN7jlgpFO8vEuC41r2Bc1jWk7GV34irwp7ZP842wjb0OcLgO+uP2lYGfxeT+TsjR+TJeX+8bkidUrP6hui9IklvEL2t4yMdDjFuXgq87c4ZNEvrCacH/MndbvV7P5DoYGnkAalGf7GcFnndjCxO2m4pn7462oIm/3JzugvxV0kMabgy9iFzFCKD6JAKQKyiwgqExCJbO6iSaStIllq7PqtoakAPQqZvBuVru523vqzQFv+8T8bykgY+Nj9CpGvynpB2gL//9Be6WVcp7vZPMyVsk6LD67JXwgWh+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 CY8PR11MB6866.namprd11.prod.outlook.com (2603:10b6:930:5e::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.20; Thu, 30 Apr 2026 22:46:24 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9870.016; Thu, 30 Apr 2026
 22:46:24 +0000
Message-ID: <4c2b3c63-4668-498e-9c4a-a135da5cd5b3@intel.com>
Date: Thu, 30 Apr 2026 15:46:21 -0700
User-Agent: Mozilla Thunderbird
To: Li Li <boolli@google.com>
CC: Simon Horman <horms@kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>,
 <edumazet@google.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, <decot@google.com>, 
 <anjali.singhai@intel.com>, <sridhar.samudrala@intel.com>,
 <brianvv@google.com>, <emil.s.tantilov@intel.com>, <stable@vger.kernel.org>
References: <20260421051641.370436-1-boolli@google.com>
 <20260423163307.989421-3-horms@kernel.org>
 <25163a38-53b5-445c-936c-0cba94cb731f@intel.com>
 <CAODvEq4R_7SXfo5QJ0z=fM5npz1ZFFcCQTTKkdoLKtXyoDnjRA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CAODvEq4R_7SXfo5QJ0z=fM5npz1ZFFcCQTTKkdoLKtXyoDnjRA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0300.namprd03.prod.outlook.com
 (2603:10b6:303:b5::35) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|CY8PR11MB6866:EE_
X-MS-Office365-Filtering-Correlation-Id: b0164605-df4d-4d02-a2eb-08dea70a4e73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: Dt5IzFNk/EzCXAgkTOK1IXB9tq8ILLST8UO/Q6MOALrLF8D7G4L9knx7FWa1rGShwMdyCxr+cBZgqZQsby6aQnlARfB4tmmU5e4eu71YNtOQZHbx949dJM1buZ9vA+N/MfnQP9Vw4je1MZQhMq43DsknBLFKtLafGmwW2AtGoBqdpb0AqZwPDWFh+2fW2OM5IeXALlOSp5ifhPi6u0IPlZTborDJM51m9kbkzJ5ZCqnajOBWOqWYemWif65FLOIQ/YhHf57zwNRCyYm50JQ2U+PICpkUonDDj+JR0tHMxPl4dr6P7WPjU4G24317E1Ltq2FCXvPiaiyvI6JxfSKLCaG9RSKSS7YaI6hMyx7xtP3tFOc8stkwvwdzMn0Zy5F3kDhDYE1PPF/h8rRFWjY9Wd7wW3A3yhFeVVP2CDcHRV/PB8xwJ/usNzdzR75HaNobNaU7MKYx2Wo7JF/JTvSsUMDPAVzMGrCK/vskjQL4AIYaks1aB05JEsMY8eKEqzdRQPdlvLmryGczbzdadvzDRr3tRPTOURQjivHCMwauz46+M/PqCzNsER7tbwl7r2iAXa1I2PqiOXqTTBnG22kjsM/2oe8NTYGNiKLQKNUPGceTCjJudnAIkEoEEtBC2DFhGRofHlOoTnfemiI/UjsLG3xc3wRdBW8/5TfRXuI6K5WoeSeJc5N2yWqiVqH97/O+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zmc1VmdzYjRhbDNsNTNxU2JpRThoY3BYL0llQVVQMzFtMmtUODl4TUJEcUR1?=
 =?utf-8?B?RkZIbnVyMitrVE9GTVNXblNqZlE0YXliclk0VjMvVWVPcDdlSFJqUDlFYzBz?=
 =?utf-8?B?Z05BTGhGSVgrbVZlRExYV2hXeld3b0xqdTRJSmJNSWhyVmFuWFA0M3ZhaWdN?=
 =?utf-8?B?bUl2c1RSM1d1KzJmYkJuV054dlJhckhXb0xiWWlUTURxUTVjUnFrY1BFYits?=
 =?utf-8?B?ZWFPcHU5UDEvZytyVGFpSjA3REhlODBoVHZoVmF5dzJ5Qm1HaVA5MFdZMXBk?=
 =?utf-8?B?T1d1aCs0cEl4eDN6dUdzRHg5UUpTN253OUE1bmcxb3JKNTBFWWgzZjFUYlZv?=
 =?utf-8?B?YzgyaDlQOTRPK2x5S3BEdjkrTEVCa3Ara2dMT3ByRlRWUDNaazQ5OHVLSTVY?=
 =?utf-8?B?Ym5HeXc2TkNyczgzMzBYUEJSUEt4Z3p0TDhWQjFxTE13MDBQdHBlMmlwalNJ?=
 =?utf-8?B?UDRmQ0FTNDY4TjZEOGorWlNpNkh6RnAvV2xmNHpBSWpxLzRQQlBlLzNpM3J2?=
 =?utf-8?B?ZkxCOTBCYVNpVnZHNjhtTGlEenVmVS92K3pHQXVNMlk0d1MvYlVnQ1crRmlU?=
 =?utf-8?B?d0c1M2VDZ2Y5K1pqMy9ZWHNLZlE0c1dmN052OGlDN1BGQU4waFIrclE2SDY4?=
 =?utf-8?B?RllFQ202a3Z3UVlJaHdKaVpxU2F3a0huQnErVXVoUEIxUTlBYSt5eGlqTnlw?=
 =?utf-8?B?eUhUalB4czJkcDdaSEZQVVU3SjBscytROXR2VkJnQmp5NjdvME5iSTIyOWE2?=
 =?utf-8?B?QXRtWnhQVEVjMDdYenZVaFhMWkloNGR1WEZobUFhYjFMbE55SzE4WTkrWDB0?=
 =?utf-8?B?c1YxeGRxWFRpejBEU245NVpxTFNjVURBVWgwMXJsTkhjZXNoTFcxNHNTSkhi?=
 =?utf-8?B?bEcxblRFZEdoeWJUQ0RpUjlPNVpneXI5enQ4NHRMcmphM3NXekpZS3k0eXl1?=
 =?utf-8?B?alIzZGhzbGdEeU1jVGhscHJpb2QzWGxYb3NUTFhiQ09xZVBwOGViQ0VIUHBO?=
 =?utf-8?B?NGdMYlBrdW1BbldiZWI2TEtSU3JQUkNVeDRiTGhuTk5wUFVsOVdDV25JVU9j?=
 =?utf-8?B?UWxoV1pGS1lXV1JqTUIvS2dTRFFuOEtwYUVmenZZZXEydlhaSnBXVnBpRzF4?=
 =?utf-8?B?dzJtNDBYOGVqUW91ZjdYcUpkRllScGJEbFlwOHpMaU1aYTJnYy9MUmtoQlp4?=
 =?utf-8?B?OXNTU0JLRldpSE5Eb1Jjbmtzc1pUUlI3QW5ja1Eyb3JrS1k4cGd5d2ZxVWtU?=
 =?utf-8?B?OEFoUGJlczg5UGkvc3BZNjVkamNlSE0rQ0R6dGpSMDRSZHFZNjA2cUFGTXFL?=
 =?utf-8?B?emJ4d1d0MHlRYmRRYXgydjI2V1o2UG5palF3eXVUN05CQ1NidUZJdnJVK09j?=
 =?utf-8?B?aUlQQkNsajdDUVBGcmNYRmRxUTZvMXREVzluV3pUMXlXWVR5eUh5amhYelBC?=
 =?utf-8?B?UjFJN3A0OGFmdUtSREt0ZmY1QzdkU3NaMlZwdXVaOHptY08yMHJjeWUzOG45?=
 =?utf-8?B?V0w0MUhOU0RhZXNQNHBSQlhId0Q3SHNrWlpRbXhIOHdFc0hhZEQvd3VSQ1Mz?=
 =?utf-8?B?VFVMUEk1SG9DZTNDWE9QUStpaGxaSlFka3VlVFFlMEdjM0JCN0JjOGMwTUhw?=
 =?utf-8?B?Z0NEMlVQR0VDVlpVajB4UUhjTUtLUzRLbXM3V0N4ME9sLzFyb2RvZGFYMDly?=
 =?utf-8?B?dTk5S2pmb2I0WDNnVnVFejdzQlRoeWt6L3VpbG8zVTNrMmFKNS84WWtpQkVD?=
 =?utf-8?B?VUpZaE1Pd0FIZFo3YTZjSGl5SXJHbFdwbFNUK2RSWGxGSkFET01GVHExK2hN?=
 =?utf-8?B?WlQyVEgyMnp3Q2pNcVJxWWNrMWRlQ054eDhFS0lMRFc2UXFiZ2NpTHR3OG9s?=
 =?utf-8?B?aFc4UGJIRFhmOUtsZFI1bE1qOEEraTVjcWNoSERpc2VwMjErQ3FNVDBZM0N5?=
 =?utf-8?B?OEJvblFjditXSGtxMTg0QkpPbHNkbm40dlk4MitCREJOWVBTZFlVN0FSR2tZ?=
 =?utf-8?B?SXNjb2l1Qm5EMG1VUGM4OHBkdEVlbmxWbndXSVFVNk1hY3lEZXluSFNKR2ZQ?=
 =?utf-8?B?MnpXT01TVDR5NENFMHNDNlZaSUl1aGptazJTTS9uMnBMakdvaEx1eXBsejNC?=
 =?utf-8?B?YXVpSERjOUJ0RFZpdnd1Z09RRysrUXI0Y3VvOXFsNStNOXlvQ2RRSWJiSTha?=
 =?utf-8?B?NFBUdUg0S09rOTUwTEFuMXBGNDJhS2g2cVNNdmR3a0tIZW1FMDQxWjZkR1I2?=
 =?utf-8?B?ZGVBQmhpYnNNUk9KUjM4OFo3d2Q4Nm80ZVJIVXNTcDY3a00yb3RmbThOcHow?=
 =?utf-8?B?RjdjOEpETmVaRDQwdURmR1YvdFNmcjQwa3ZJbFA1OGZ2dDF4NllmRmVZRHdq?=
 =?utf-8?Q?N75dup2b6KubDOq4=3D?=
X-Exchange-RoutingPolicyChecked: p17D0GNqilZjv/jnqnwM8lz5PIGoKswVo6bw9UJojbVgx97cXj6DyyORn16hsVLRawsMw0WiCng0UaP2vIlF2lva9nJ1TgB5JWfqrku7YjREcEZE0whpgCkXeLZVXWJwyhrWhdVs0663UfwWjPADEhBAlyQO4naP7wuVKg/HRkb/LvpmwzRKJJ+ekUlEyqsxHkpVMG1g/AjOQbnbxdBNquLtsglXMxERVAQ0Wz9gyAJhiwf4fBo0Vo4D/1w+ULjGWTYGTOwzmTPJn92wJDBTmqSCamyFaiHHyb+wPyWcbu8hd5g3X1YXo6N66236tKUUypj804QYnkcfoXhiqFsA/w==
X-MS-Exchange-CrossTenant-Network-Message-Id: b0164605-df4d-4d02-a2eb-08dea70a4e73
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 22:46:24.3365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKCXpUxABy3TscGmJCXZIAbCpDBOv11aWDKEMm0TImi7hHCHVjAyjHLVYyu6+UrOk0N4X34TRGZXdVtXQtfHtH5WpnusvwFKoNDUU8UUK9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777589189; x=1809125189;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dX7fS/ZXOorkeC5pdAWpoe5un6ahYOebd+D50yHx8IQ=;
 b=B/x7gCHJLUgSLXdGCnF/4u9IBXnGwKFf4w/1/Zk4lZuFQpzbAP+RTsyX
 ccLqWLejB8iTAO0YPpHof9r7TQpF9QGjbUNOZIN10RJo7Vd7TAD5jHPW2
 yWJiZw057dEwViBTQnDqF8NAg4GkzqBjRp+kmPKcYHIMYa34j7TLhLNXG
 uCAu0qgJVvzYdNeOYwY/ie0UZ2jtxl/Yv8dj+BDGMnkzbeeFWYZz3JaKF
 HgL9i0AY6ynhFTlQUjhcGqQZ5hqgyd6kVDtA5lwmbRzPsmlyw2Fq1dAHu
 njpCa67ra13KLcZqRqNTyebRtcb7xJ9A1DkQTxiMoObr36AKi+bg6JUld
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B/x7gCHJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: do not perform flow
 ops when netdev is detached
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
X-Rspamd-Queue-Id: EAF434A8A50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

On 4/30/2026 1:58 PM, Li Li wrote:
> Yes, OpenOnload calls idpf_set_rxnfc directly without checking if the
> netdev is detached first. I've discussed this with the team
> internally, and we decided to fix OpenOnload directly, rather than
> adding the check in idpf.
> 
> Please feel free to drop this patch, thank you!

I've dropped the patch from Intel Wired LAN patchworks. Thanks!
