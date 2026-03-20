Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGMYA6C9vWnyAwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 22:35:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE672E16EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 22:35:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3612641EA8;
	Fri, 20 Mar 2026 21:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IwkI_GjdcAbg; Fri, 20 Mar 2026 21:35:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72AAF41EA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774042524;
	bh=Fl4epAakqCoSbb0cxQq7L90CqAUSRFWOqnJMmMtVw3g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=znILJIhMOBV4osjIwM3tTxPYQGps+323sCOn/sagz1V50zcYHageMgIKkDGmG5izn
	 uto7SCh0vit3BTHAxg0NHLEPHbMrkQHXg5UKigE0dvQq53nxNICyGFcJ9naSbpEimE
	 EnoBNAPPlzrc3Kd34OfB9THRfZgOM6bB6wSouV4LXfZr/28VfyGG6YKS1Bm9uBwAwU
	 cJDDWTU+hCdfpwT6tkN5vWLT7gPyKN33UeQMDgeb9v62q3+DuBszKKSmpZvc5vRWsQ
	 58ROnHiiKHTlgD3i9pM+pPTwh7XhDIBg1nuS4RvW8mN+VRcszjegj83tiTVsToFsIB
	 c/tq+V8F8cvGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72AAF41EA4;
	Fri, 20 Mar 2026 21:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DE88021F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFBA44039D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:35:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v7DFKdsEypXN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 21:35:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CEACE401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEACE401DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEACE401DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:35:21 +0000 (UTC)
X-CSE-ConnectionGUID: 1jJhEL7VTCma7VhCTXuYKA==
X-CSE-MsgGUID: Tba0uhRYRZutf6HHQkMKMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="92711303"
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="92711303"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 14:35:21 -0700
X-CSE-ConnectionGUID: sEG8Z8y8T9SJL2i080OoMw==
X-CSE-MsgGUID: msP+y/FoTxahEZpjbi/qww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="246426531"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 14:35:20 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 14:35:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 14:35:20 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 14:35:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EeyNN0r7zOMX6RC0KawviWo9Ql3Bx6pu2ZWo+P9S7abXG+/UwfUBZCP9XSSDkDOKZsrp5znoP45SwJ+5HMTVklTZvl6vcOwmf7riJ3/xrwO8GIN5VXTaEgyyKJxBAkIeDf0rwggW0xYd8UnByhavgJxXKbXVaMlzAPEaZkFwgN/nBhT/hHXV0YLmUwRnY2KSnaeMSOv2GhFvNEm5AmLrlwZrbeH4bpVl5qeMXC4+X3EGFNUjMsPSvJbJmGbSsVvRwpj97zVH05FfyBtfFJvIoKMqvit3hE5eZrlygnknIJILeXI4b+GYJBlRNYFV4Gz9IvfQm+oSlW+SBmayeVg6jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fl4epAakqCoSbb0cxQq7L90CqAUSRFWOqnJMmMtVw3g=;
 b=KRw/SXXnGKIwCwLdNkA8KrhaSU0VDONYhd7ePhAd+2sJpV2LwEb42uwNy3qWZrbliMtsXrODiPD0YPDRm5dSK9tMoE5+nZh1Qh1+ch26PAlOfKBlxFxShCYp5OnleNN9kW0J7fe+5NfzSX6n3sXZ/DEcovz63aD4YMHRnOimlbcqy4+3c3zgQjdTchi5Yr0hZ6BDTvWhHVRn4wkp2dTc+E5J/1UH5Fkm1tjA3uK2iH4o9l9BUHFbCDTcRtOv0rBoXNBPIaquMDrZR0HPAt/o+Wgr7hHxMnwGUvjfjHKLpK5sCpNKcD64bnlRaSQ4Ifbr7fi9xtgsdmgLr52GfGCTgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.13; Fri, 20 Mar
 2026 21:35:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 21:35:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Bart Van Assche <bvanassche@acm.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v4] ice: fix locking in ice_dcb_rebuild()
Thread-Index: AQHcuLCPJJ5/aOBx0UGqgn3Ze8tlD7W38W9Q
Date: Fri, 20 Mar 2026 21:35:10 +0000
Message-ID: <IA3PR11MB89866E2861887A20B400B173E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320212824.264252-1-bvanassche@acm.org>
In-Reply-To: <20260320212824.264252-1-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ1PR11MB6108:EE_
x-ms-office365-filtering-correlation-id: 17e35161-55ae-4a30-e45d-08de86c89089
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|22082099003|56012099003|18002099003|38070700021|13003099007;
x-microsoft-antispam-message-info: svosBdQcBoPbh0WwCOzw1kNNWRoZseLUyt9r0cjjxoCe3Y/8f/tElwOZ4+IMrGrUKN0WMC9lqMGo/vvkm2knUcISH1Jtnoy3JiETbbYCHtZsvKhgiDrdvxBvAypCvi6gy5sfBiRK/I1N2/1eBInM4YD0p8El/XZ7yIgtVvLzYQ/GZ5LQea3VxzMWK71cP2Rorswfta2KPTLCRsMXm0ne3RfY1UHWNjTZgBR6wubIWb+q+wWU4fzWdLlebPRG4sS46bjdUpzxCBoLKXo2mgWPXkQv8rTdjRaLSJWZf5jTlIj80+JRWTHx/rt0AAApuAI/9sBuoFPPQv5CQd1rKp1dvnOKUK1kMGzL4DgU4d7hF7LVSfNxcuFfd+V4qsn0dDp5+aXVCnoBSf+yqi+rCK3Jci5K0/3oS7cKjaR5Zeyeg2UkjIU4E5ZkgL9ji/FxdLgMyVxTDaj0UquA59jYPsdOdwhJxk+O1okoVKZNVk4yp+HY+AuxI69GRpgscd+G32awgKsbSO8RL/A4B+sXyrRaf1OG0QdqEfrcnNIkdyQFtj3pMnYtsKO5PM47HmzVmXfDzWFioW2ilL6j6RI0ASY5xOn+yMAMH2hXShk6fmqsInNTJhlFip6CAlbi0qKHO2e6+h35QIyh08ICPitkbcnGT9SUtiXKOjIN8H4F9Xy8jRtqzUNBAVW8g+qOb4LxVaYCNllU4xqM4dZGCf5zaqUu3IiaNE+4CUYs75TaQM4lxSNbaAqbZOTmf8rEtHjgM79m8mw4wCEyc1USzWwNAJvY+tpcTR7Wvaad4Ab29rH+ok4WQxl/8vc+coqulDMUZWpO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(22082099003)(56012099003)(18002099003)(38070700021)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DiniaBd0xaqS2fcvwi0k6bN1QiAb0hkchGn9nq0NU8Ft/Mzwgp5kRxYx5mF9?=
 =?us-ascii?Q?FrIwSGG9w2aPRt/woab9ix7x8hXXCJ8gnwaV2zbka7OG3tausyH50zcKaIFA?=
 =?us-ascii?Q?fPWfdMtjgVIkhupoMxWtYtTn4/6dTKw9nob91KKC9u5h1RIY1NYoBPrw7SXg?=
 =?us-ascii?Q?udjoldJ7WGCx65omgC1GJP69cvJkECGP0+f4Ym3FuqhEU7jRPamm2FE2l5+3?=
 =?us-ascii?Q?wTwAzbAHDnDvHDohchopJb1WZxa4+azaxlNPYYYYNBoBNDtcsUUP4KS3pM14?=
 =?us-ascii?Q?cD/wHYXwpm64M6ZBB8mNkZrIiR8Uonhz/b2DLfZEgWgJ01w3nRFyYvA/uyep?=
 =?us-ascii?Q?aPyvDMpKpDg6H5TYjup2xPzYpDPtyiA86QVaM6vdaD6ROY8x3PSXdGu2xmjx?=
 =?us-ascii?Q?UZicarPhTeOmVih/n91A0q1RLVMw5q+sI2at6VVIxXwW1fH+j0x2ZEMhgbFa?=
 =?us-ascii?Q?B2yNORCHLXJDu0rcEfasvgAlCGwBEklF+pRC+BPHlk15QURPyEgrH8aJ5CBQ?=
 =?us-ascii?Q?mEazlq9YOLDJuvk4SNKPomYthxWlflztPepmCEw1wDv6YTX1h2YCop8SiyQM?=
 =?us-ascii?Q?gt3+8nuFILeKtYQQPWTX/yqype+R/ZyGW3AzfUdMKfLvHRASsMeZJ94l4umE?=
 =?us-ascii?Q?mIFNxxhjqRDeCn/LW+iTzXr1OX9z7TQSPPpz0L8QEp97cF0JbRtwlMeKAYcv?=
 =?us-ascii?Q?8wjLbo10s04LlswkMAGzn2Vo5kRrNuZbZbkcO0FnKA2Wyr9TSwoYSURU67WR?=
 =?us-ascii?Q?c319+8PU3+ayXrh6u+OQ9mGqQv6c30+pMz6wsO+TRSa/05NqERaAJSriVol5?=
 =?us-ascii?Q?JhDQOs1gb+MWE9QyBw2z5bZatW3MmocPFCdKnhBtKc2rpYFFPfacwwuuyWGb?=
 =?us-ascii?Q?j+S9vmriY+CBquBLJOFyMVds/S+b50hUQbHMk1DZySe1Esqd2mVvcL45npBb?=
 =?us-ascii?Q?yMT8wfOg8tulbnfMGEeAG6AiZcmm+e0ZU9ycDd4TFm7PbGkQQSS+wzVwkWfR?=
 =?us-ascii?Q?LUjcd2YLfoHkcImXyXr3Moxntj3qRF+NoI3OMKOvTraHrD5aTH7bMlSAzZZJ?=
 =?us-ascii?Q?TY7GgYFnNh1LNOqN8FmjfKgni74czQaG9LDkzz1QNLK/hGZNBcrfEUAg/OJN?=
 =?us-ascii?Q?jaAEecizifA26H23rDZ0jxrORuZG547abJshVr9KDgBYRpNJ8TgP/+63KkDL?=
 =?us-ascii?Q?qfHsyc4OXA5eJ04mLOPINpKxr8WjQg+2++eKxTEpKYfmrrYCwhKeRNj1nsaP?=
 =?us-ascii?Q?WPRU/U1cECdSYiuQiWCpm47BQMwVc57Lfe6JqEZW0knbDPyeIlI+Fg2mkXoA?=
 =?us-ascii?Q?h58GWBc9Hxn2VSsG4n3yZdQZYQ+UVodwVqbmVEoRd9iGgfmFOsqeRu0stWJE?=
 =?us-ascii?Q?W7zis2pl+u1wwUVhaLbv/TeMR23Lc+gsmSQdjhbVVbadzi2Ox/Y+TTvEzEfB?=
 =?us-ascii?Q?KwBHLy6/G/MHciVLMbsIiYA2dqLCY1PQzfKLP4L+eMtl0pvDRLE6aJavdql+?=
 =?us-ascii?Q?Gg4mSUc7ht+B8FQDY0nAIBvSim/fjclOuooDCqzUJqbJWjzDa02x42/IT4we?=
 =?us-ascii?Q?2Qvoyg/kcKUd1Ai1JDubsOiAlaL+efO8f7Ips761cNcLsIc8uGwZTkevBTE9?=
 =?us-ascii?Q?okA6R0IzLZHU7T2aFoax3QHWpL4jc/PDGD8Vig9pqXaXGLVnWJ+9g9NnxbdQ?=
 =?us-ascii?Q?oRF2+5FStfyX+62+gNGg+BhA0C7c7krwlqfyvNqK1rHck2B3D/EyKQ11XLf/?=
 =?us-ascii?Q?LWftxJ8tMTlOLVoAlj0AyAFE7tHluHU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rcjbd8gbhyXD1V7NlaRcv3a93LLVXiKxAEeFTmDQCN9hi/rMFfPyk9B9fARi45AC1SqkzX0eA+DhrPAZWYT51diSHd55a09rVykcxNJwvkqNK0JS+Oc4M165o+I64C3JYs2hPKXEcIetcKhdAmqAGalLGt05Gz18T3pqx9tuogfJ07sjyEsigIok8n+8Yn8mRqb3uMTE1yPuK6CEVmL/hjuIqAocRafl5BeAOrd0cx6+9p5+dTnSWEC03XSG9G7/QybHN9SNMFZiTBDteRNBgKiqiHE7FbgF4LyOtCgqAIBqMILp1d02fOA5uVBqZnin7kFwWkzLOR3Nt1VbBYbgTg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e35161-55ae-4a30-e45d-08de86c89089
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 21:35:10.9416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AkMLdTGX0u+jiisCoshyxcHd65rfQapePRsukTdGPqmXYsLvWumvFCh1hOvBpaBy3RbEI8eckHKkB662mcf2eL3DUHH3g7vwwa88tZykPY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774042522; x=1805578522;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dLDCazFxLwn+HXryImCWtAwrv7dUB0y9fjOEUccl+XM=;
 b=iXH9GppoDiR71PEz53Lg7/iXo9kvYd+bUM19Uxe7IT4suhIl+LSYsSUF
 i06EiLdOo2xWrpxlqGJawQpudP5qQetu0qBXp+YuWRHdlcLl2Uk9cbEGF
 sVwiMTttGmiHcb0JwVDIzSoS7ApMHWOWMPBidyR3o88YBXmwMkhv0xOi9
 tT+uulDNZJYKMqWN3opvjIaItIvyLcYe7JL9Kpq3axSB+3TuwXUOBhC2W
 Mh8LfSMtyIXEJIS3SiLLoFoZU5OViHYuXjpJBd0mUxJrlIfkXfH2Jeg9k
 6U4tGPucr/mQP7urqr7CkjBcHZfWi0qOHQ9GNtBZYZW3cTbONwwupXGmy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iXH9Gppo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,acm.org:email]
X-Rspamd-Queue-Id: DBE672E16EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Bart Van Assche <bvanassche@acm.org>
> Sent: Friday, March 20, 2026 10:28 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; intel-wired-
> lan@lists.osuosl.org; Bart Van Assche <bvanassche@acm.org>; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [PATCH iwl-net v4] ice: fix locking in ice_dcb_rebuild()
>=20
> Move the mutex_lock() call up to prevent that DCB settings change
> after the first ice_query_port_ets() call. The second
> ice_query_port_ets() call in ice_dcb_rebuild() is already protected by
> pf->tc_mutex.
>=20
> This also fixes a bug in an error path, as before taking the first
> "goto dcb_error" in the function jumped over mutex_lock() to
> mutex_unlock().
>=20
> This bug has been detected by the clang thread-safety analyzer.
>=20
> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>=20
> v4 (this patch): Changed "[PATCH] iwl-net:" into "[PATCH iwl-net]".
>=20
> v3 (2026-03-20): Modified patch description. See also
>   https://lore.kernel.org/all/20260223220102.2158611-20-
> bart.vanassche@linux.dev/#t
>=20
> v2 (2026-02-23): Combined the two patches into one patch and
>   increased the amount of code covered by tc_mutex. See also
>   https://lore.kernel.org/all/20260223220102.2158611-20-
> bart.vanassche@linux.dev/
>=20
> v1 (2025-02-06): Two patches. See also
>   https://lore.kernel.org/all/20250206175114.1974171-16-
> bvanassche@acm.org/
>=20
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index bd77f1c001ee..78ded6876581 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>  	struct ice_dcbx_cfg *err_cfg;
>  	int ret;
>=20
> +	mutex_lock(&pf->tc_mutex);
> +
>  	ret =3D ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf),
> NULL);
>  	if (ret) {
>  		dev_err(dev, "Query Port ETS failed\n");
>  		goto dcb_error;
>  	}
>=20
> -	mutex_lock(&pf->tc_mutex);
> -
>  	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>  		ice_cfg_etsrec_defaults(pf->hw.port_info);
>=20

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
