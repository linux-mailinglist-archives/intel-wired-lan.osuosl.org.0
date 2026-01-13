Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F09D18E9E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:50:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6C316F598;
	Tue, 13 Jan 2026 12:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SKE9-sp9OHT3; Tue, 13 Jan 2026 12:50:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51DDE6F484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768308613;
	bh=7mRPyLdRQohLkEnpWn9tPMtvPbNbSTvWq5kQ5Ws4uIo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iG03BSNRCQpPx+vIUilx6dhTKdOPesI6078H+8bqYg1TSv7kqvaCQOcTk3ZJrhZmL
	 uxP/5s39BcgkR/9zOkKGbB/GSU2sBhZmhvInbXeg9h3YnsT9YeIQpdQt4rNhDPLDgm
	 mKX/aD9WzWBBy6gPlcUrdvUrlzQToXiPLFNpBPWNXd6aMn+31CI1SJkXjkdbThpmgc
	 lOJaJlSc5Ek8a+lKTlczjCrHtCrj1HXL0OfDh4XTgow3EoFAvKC6+SNDsmYTozyMKR
	 x++3IpqWSykGvb092/pKK9lb3XAJmsVpiHiDMzfIemFV1CRpKcgwct0z0XdTChaTQC
	 1uJIDRJ9rOSrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51DDE6F484;
	Tue, 13 Jan 2026 12:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A280231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B64D42C5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:50:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EoSvg4dcJQQX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:50:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78F2342C51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78F2342C51
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78F2342C51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:50:11 +0000 (UTC)
X-CSE-ConnectionGUID: UpbXK+NVSEWEzPT8+Nq2pQ==
X-CSE-MsgGUID: Qdl3RVUPSvSl8PvtGp6H0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69488647"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69488647"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 04:50:10 -0800
X-CSE-ConnectionGUID: Qf9mgY87S5uvaBV8RB5JgA==
X-CSE-MsgGUID: SoH7BYBMSiuvEZQ8OllShw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204391418"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 04:50:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 04:50:09 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 04:50:09 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 04:50:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kuFDH0+BRAIoHvQ2QdX4/37TVpAZkqFt1OSf5g7/aQCwnY8lJUT5pUAvzM+fWm0QpYcGkHiieGASpY0ZPXYaD6YLfGEKXLMJAXZ2I0OfbxvLdrX8DTZX3XaMSHYDigUN1jRcDJKGNZuAXz5JdFCnzfpFdwXupwxhXCZ5JgOM5dwKfKi/saHboBsIYttRrxwCyhCJpkjfKOtK0dPpJLUYHknh/aW9mFuTbFtixaikqCFqZxco7MqFLsjD99aJF53u1HQUddarGV9RQKMferfzeLjlfnlXrQMi37MQHB+VSEtIn/x9uJmVIHvUyBW+9qkVqqS/hoXD5Tb8F6Oju+ybFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7mRPyLdRQohLkEnpWn9tPMtvPbNbSTvWq5kQ5Ws4uIo=;
 b=ysoXe26vTXd/W/ZBfaQSX44u7jwnod18BVKfPcRiXAHWEtVhp8/D6areeifIvnUVEAWoTLzd2gPMKwZrvMykoX98Z4pVmzREUvP6/2/Wd6iANxCjH9bgIeHYyoHhgcX/IEwgpZbyeGgr3GNXVgsbNTaZLsEfurtW144GfxxsK9kzNqvj66+kpVdyfiv8atqv3TZAsSHDm/u9WgPPCK7lCRkhNgBQ4kMsh4lJURf77VOEE1Vqnnc4Z+dFVsm3EecLvJMH5clxoj2YjBdede9Kt0f1UtEWowytY1CfbzP753WAP+ssGKVKeca6GOgiEYiPtbLYQFj+M6dxWMl9xO/R2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 12:50:07 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca%4]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 12:50:05 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v1 6/7] ixgbe: replace EEE enable flag with
 state enum
Thread-Index: AQHcg85kJDamQr0bY0uRVFA7Ug4/pLVOq/wAgAFgrWA=
Date: Tue, 13 Jan 2026 12:49:23 +0000
Message-ID: <PH0PR11MB59027E7BBF8EF6121DF24DDCF08EA@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
 <8f976990-1087-4ba0-a06d-c0538c39d2a3@lunn.ch>
In-Reply-To: <8f976990-1087-4ba0-a06d-c0538c39d2a3@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|DS7PR11MB6127:EE_
x-ms-office365-filtering-correlation-id: f904ba9f-23e9-447b-63c3-08de52a24615
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?m7u6kT1BXD6yA5V/tt7RNt1cNIuVW0T7WKDWDGx9xb0sPPRmeOoSv2MPWBDL?=
 =?us-ascii?Q?PH6C+NFa2lJcFgnkEzl20y0cN7uj1mBECVWBeGVX73dmphcrQyMTEuQvqSC0?=
 =?us-ascii?Q?d1SuKQBgJqsKlMhkDjLCPO7iwiu8jdHMbrihlPR5w5Ba0jIoM6RTc+MPsHKE?=
 =?us-ascii?Q?CCpeDkyv3aZT7hMs3ZU4r7N9rlndFboQsdoeZoBRcGLqHrTeGOc7/mGMUcDf?=
 =?us-ascii?Q?tLPhgb9eXRU6xs9g4xKGS4pGkuqLO81YPUJDGjCmzsavgigiepKkpiCeKfeB?=
 =?us-ascii?Q?k85JSFdf5PnJTR+XWWvR48vJT3jd01BawCBfRvaOgx/aOQnCoRhiVAdb8Ado?=
 =?us-ascii?Q?yzPAJYeoOrsfOnK2gFK/xaowUqxQ6xGkYNAcrHpQvf/puP/10a2UZNELdDCT?=
 =?us-ascii?Q?HsnzvqMF7ozlgMeFB4gK5vzSguvhOPBeicFhQunVOXE31Y5esNKT/7bJuwkx?=
 =?us-ascii?Q?Y74rVAg1Lgqc1KC40dBBwrSMCXuyfSqLcpt5qDxD3hz8WyTBeQHKnWrKhGtG?=
 =?us-ascii?Q?6z01faqeBxSn69/bTghsP7RVNsNCfnPXcI7V4zeIemJkXF8rxf0NjJhm3EaC?=
 =?us-ascii?Q?mlkZCggPXmo55uiN6TCQYVxBT1nQvwDy6kZ5ny+Wl6WMqjULUbFLjDz2//EU?=
 =?us-ascii?Q?lge0egrfZMTtqirwWcq927FO18g2vkECR9Na49dWTdGfMhd3pQE0mwYKlWrD?=
 =?us-ascii?Q?c9Dunwc4QqW0MqxHbMZAp6aOWNOGaPBwvSCxFve5NJTzEC4sfPTBkJRfXPd9?=
 =?us-ascii?Q?RBxdeT5tk9KVsPDHA3fXEidA+S9zyrJUDp2UA76QNTEB/rEDzQg4HIXxizff?=
 =?us-ascii?Q?XKeCOV9ixuNVZ0gX5c025lmRPVkvb3ttANjhVfSRnHn9buz2ll+blV27wsTV?=
 =?us-ascii?Q?fkfoHIJ60uQ/dVm6DQkWKB+WgNihsCxhcCg9fQeHqIYBBQ3vvCQ5wedS5l0u?=
 =?us-ascii?Q?eCNB/w0A/xRCBGm2OdnPUUqPkP141rmUAIqo5Y/jH2B7n4luR1aKNedELhnm?=
 =?us-ascii?Q?pcbqYRyK+++1lhya693tUiBxamPiZoc+P220CIDjgDSF2k4TIGm0vOvXT7Dc?=
 =?us-ascii?Q?ce9xlsN6SrAEWGt4V1MQ19+kkO7d0Rb5pskvXF+h1D+XKJhhSfafPYzxFcdk?=
 =?us-ascii?Q?2v7N0Q5UBD2daxSblLmJ/iKg3f4oUK91vk5JYi5s9prMJIl/YbvTh1fXT/6y?=
 =?us-ascii?Q?YV0mmvP1lvFJDJIXasvlgzEwLf942MD1dE6g2YnfrMyHOeIyshToXjXypwN+?=
 =?us-ascii?Q?bMMtcr8fhoUD5/2fSKotmuNEga9GvIKKny5cEVqW8+7ptId9kUmN+gmXH1xq?=
 =?us-ascii?Q?l5WCPUYlxFPmlKru/fivVrlTjzm3qI5djHFTuTRIOBXPSCEuY/2oF3B49t6H?=
 =?us-ascii?Q?OS/eO+xDJAbBFq2fahAAs8VNr+6c2XsjAD3azp9AJlpH4ERLguAHRiFz8XjP?=
 =?us-ascii?Q?ee0mjnhIc3WsS/05l5udo76NLv63K1+3PP89HSRnW9IIEuIVh7tPsJ9VtJS6?=
 =?us-ascii?Q?bZHjrAOTNDEXzBXE72vTR5Qyhn6/tPPN+Q5h?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rkvgj5s5TFNmNchwCXcPQU68YXOd0r1VWWGBmKCivVA4gOt07yMBpuxc4zeJ?=
 =?us-ascii?Q?iKD0trjyN2KwaI+8A1YdXluIVB2WC5ZQz/71Xjnc6Z+SoAoLWA7YPCl3I641?=
 =?us-ascii?Q?43FNDbVsWW89FUiWaee6emOmfl+sMqvaybHSBZEe4V5tcgY6n4tjYOwQHKVo?=
 =?us-ascii?Q?7Pk0V6YjTlxlaFtD0Rjo+3MB6XvcwWnsp1ejaA+e/DENNZv+v0vp9YoFVxpI?=
 =?us-ascii?Q?36u3DmB9PHotFAtNOi6MbGewqYrnXVfZTcl+Sc4LzyVjOALOlsJ0AbAE3+K8?=
 =?us-ascii?Q?gJiJrcF30i5Ix9/dyoV5gbd+dQ+tfb1xBS+YwB2miV6/ucW/kr5/CHjq8HYH?=
 =?us-ascii?Q?qAbSsq1Dsv3WZK5aksFtwt7V+TgArsJHmH9EHbHjsaTDGu9F4t2t5koVyreq?=
 =?us-ascii?Q?4MuMbb0c547YpFLgFfGQt8ttCxJLs6mwa7oBbZSfgTflDsTl+Du/oMFri9HH?=
 =?us-ascii?Q?1scDjcHb6AJ72O2utbol2zFg0Mf09KZ9f+rCe+6bejHmx2rpBCIBteKuQhZB?=
 =?us-ascii?Q?5t6gh3ipAQ34R19yz9/XOgZazMU6D+13aG6EsVLqSOaMpqgun1/6PisGiVlg?=
 =?us-ascii?Q?gr22+fK6g6H6t/KnPI9yg7LR5BYv8MkGMamt0xG9LvpYFdmDMMuLMt+rJIwt?=
 =?us-ascii?Q?CqjA1g4belXN/pCL/LCViRHNfkTjGOZQ0uZECpk5wfSZ1u0EGiQGqp3T3C1G?=
 =?us-ascii?Q?xMygHI/ZeVkmURoZVJpJ+J44zehvRova3aFFsJuwLk+J8IjENOQnMKlmZPrL?=
 =?us-ascii?Q?D9WVgQCB4Q5tvN31YZiC4rCjJ+cr/r6VkyWzVPu+ODsDkhs0Ul8I6rtEiXok?=
 =?us-ascii?Q?AKaBqWmLggzmgOVo+JlxqtTmc4EH6u6QNnNUXsdIAH3ZLke/8B7OlyCyswcm?=
 =?us-ascii?Q?k6Hw9ASvWWL9iWpWKi3ywUCVBkzD+DAyM7PpOOWOfCo6mXEEh4yrhu6gIP4l?=
 =?us-ascii?Q?h/VXV2RzNR/e5XsWEKLX4u1Hylm82HqAN1SdHRXuVaP6lNNfi75VRSheRdJd?=
 =?us-ascii?Q?mxNJsrpjQ1A1xEKtynqVmzztE9/LWEaKDx1WYPLlGnHqt7kfYhDBGULV+rSW?=
 =?us-ascii?Q?bwLHe8B1bPlv9RMSnCcxTMDna37LR7plg/k4ilogSZp353opaizg0NDbE6DH?=
 =?us-ascii?Q?Dbz4HvKKmmOLTVZ0ddoEUFXn71aI04E8ffIAwNziYpk8T3gQ6MFNYn9IgP90?=
 =?us-ascii?Q?YsIqEhE8km0Pp9eDJgFL7fkc8WwWxiKfP0MmVzIxoDGRpmo7SHeUu7xq/7IM?=
 =?us-ascii?Q?SmgVROtDzT5cBCK7cPikt63RSaTidznWDaSwg6a2Ui7IurzuCp1I14brRsSr?=
 =?us-ascii?Q?3uRwpOVa0WqYnqM8Xe1xpxjyB6x7w1ufA8DVPTRPy4KOKj1oX9+a7zX5EZLv?=
 =?us-ascii?Q?tt4whgv2d1gq2pMSOKp+iaN6k3MDv4skhe/G7Ypv3ppFhygywun0vk/rV58O?=
 =?us-ascii?Q?Fp9uq4XZe6ofbSridMky29UIsTiemYH5dybSw5nj1mo1J63v7JobKY9Kfm8F?=
 =?us-ascii?Q?+RPSDBTUbXfiJjPhUb+RMeXqFHnWn6UXuisY+HFWByQVXi3EDVkAi/KdkKR6?=
 =?us-ascii?Q?4ElYHzcpYnYEA2Dp6jKLXbApaPcwUlRhbGmT6YX/3CrXDA1+33il6czVzn3S?=
 =?us-ascii?Q?K9oNwrfA3f971nnIznakYAt0sLkkghSU02EGLrrGzgaXcjF85wPmp1wsWkH2?=
 =?us-ascii?Q?MglX3jnGMgWGubtTdAWuPLXLj2sY2X2ByUtseHQ3zPAA8Tw8etglarzL/QJz?=
 =?us-ascii?Q?5cRGeGdUKQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f904ba9f-23e9-447b-63c3-08de52a24615
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 12:49:23.2436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y3YDp6Yh5tpRSAs/u9JXfL8vbldotv7Q6Sqc/YNuBpEHNuNetTSUcYPLYYILrhJ5BA6zZkdbNP9Rt0uTAaFVgbjnZMJCxgBERWsZUBkYokA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768308612; x=1799844612;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H8Vl24tmoKSmFBaYUGbiCQaGd0XUUF32P8Q8bhtbmS8=;
 b=ctBhVPYvnCmTx+KYhWr4ycvy7VmGPVdpwfWNowaXbp6qBhXx5oaD7cXo
 1l9Png/aFEX/0/jCsKMf27a+jNOa36Kfj4uYXvVcgxPrfsqvfNiOydVsP
 6nQCROIqQ/KzAPxtXAskNm2TE+szR8Z5x9pDAxVumOfC58cILRNJ4dMjr
 9W455w/f7dyQKAfG6POSftBWubFtQyEy87p4L35AGuAsnSBA0Y2kHv+4F
 0wYj3KL1WhGMhUtpovJQRmkb6KmWCF62RP1Eq2xroaZrVsugI5nfa31Jq
 EPrfqlWvFIGmWEwWZea9VawTk1n+Zv+3DoJ8Unq7L6b+kod4Ry29NM3HW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ctBhVPYv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/7] ixgbe: replace EEE
 enable flag with state enum
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

From: Andrew Lunn <andrew@lunn.ch>=20
Sent: Monday, January 12, 2026 4:41 PM

>On Mon, Jan 12, 2026 at 03:01:07PM +0100, Jedrzej Jagielski wrote:
>> Change approach from using EEE enabled flag to using newly introduced
>> enum dedicated to reflect state of the EEE feature.
>>=20
>> New enum is required to extend on/off state with new forced off state,
>> which is set when EEE must be temporarily disabled due to unsupported
>> conditions, but should be enabled back when possible.
>>=20
>> Such scenario happens eg when link comes up with newly negotiated
>> speed which is not one of the EEE supported link speeds.
>>=20
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe.h         | 11 ++++++++++-
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  4 ++--
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  4 ++--
>>  3 files changed, 14 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethe=
rnet/intel/ixgbe/ixgbe.h
>> index 14d275270123..9f52da4ec711 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>> @@ -324,6 +324,14 @@ enum ixgbe_ring_state_t {
>>  	__IXGBE_TX_DISABLED,
>>  };
>> =20
>> +enum ixgbe_eee_state_t {
>> +	IXGBE_EEE_DISABLED,	/* EEE explicitly disabled by user */
>> +	IXGBE_EEE_ENABLED,	/* EEE enabled; for E610 it's default state */
>> +	IXGBE_EEE_FORCED_DOWN,	/* EEE disabled by link conditions, try to
>> +				 * restore when possible
>
>This is a bit odd. What generally happens is the PHY advertises what
>it supports. It receives what the link partner advertises. It then
>runs a resolver to determine what the result of the negotiation is,
>and then informs the MAC of the result. The configuration does not
>change if the resolved state means EEE is disabled. The PHY keeps on
>advertising what it was configured with. If the link changes such that
>the resolved state does allow EEE, the notification to the MAC will
>indicate this.
>
>It seems to me you are mixing up configuration and state.
>
>	Andrew

OK, so you mean it's redundant? There's no need to explicitly state that
EEE needs to be disabled when it i not capable of beeing still on due=20
to unsupported link conditions?
Probably i would need to check how E610 behaves in such scenario.
