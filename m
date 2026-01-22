Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFNFGjj4cWmvZwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 11:13:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 348EF6513D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 11:13:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D631344BF1;
	Thu, 22 Jan 2026 10:13:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qc-PQS67RWn0; Thu, 22 Jan 2026 10:13:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0055E44942
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769076789;
	bh=MsvvhgV+ZZk7oM4koMo7NNQSFWyqh4GrjZDxqM/04iw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cPH/nyu8hhdH22yFhLcmYtmQ696W5dc9PSPnd+uNrjls3Kyw0SZfL5rBBRNTu/kPV
	 VOXI0+jCW9+KMmfGWHBaQ/BZ1XpVkbHU4Mv+U/EMHWhdKbHWW/GoaEOarIsoMdp9OV
	 3fzSzuHosJGpfWmcy1HgOP7EyniwufVfT+14DFcx/lA4/vUM30CAl8IBkDIHU7hdjC
	 py90TdCoLZXHq6wj4FV25isS1pBHATNdlZBjJ8i7MMb2dvJtuo53kTCtw9MfNm7vJ7
	 StIzTD1ea4SvT7cKhJUIdSvfSoiGdnsL8LmjCbT38wRyUR2Fa9aXHUjC9fovDdISP3
	 GwVExipykkchQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0055E44942;
	Thu, 22 Jan 2026 10:13:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2149B24D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 10:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 105E34480F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 10:13:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NKxO62PZ0sQW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 10:13:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D4C5644882
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4C5644882
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4C5644882
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 10:13:05 +0000 (UTC)
X-CSE-ConnectionGUID: C0HbOQQuQyy3aAUDb3oWYA==
X-CSE-MsgGUID: sV0tsb/NQzKplnDD+nfIag==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70286992"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70286992"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 02:13:05 -0800
X-CSE-ConnectionGUID: j4PMbcGnTaiPHU3vTYbZ8w==
X-CSE-MsgGUID: X66dSNQNQVaT/nW0Ja1gkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="206512196"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 02:13:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 02:13:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 02:13:04 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 02:13:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y9/UjffoKdGVmZnTeNhdkmqrrZJOEFJ4j9tv7zXTBR9wOkEQKTh8zD1fPXoLWbS2IYRDEU1TtIjqeWNx2Llm1d0JE5FtHvfAmBTcpSFhTBRZmXm7WocSka9qemMWiSYW3q+QxIq7V5Ij45jRasxZwNCW+Hf07CNxznsc/4QyhZw1TVLpddPiNon1tJiObecY+gNTO0Ns+gjNRtdH71/f7l9bluLvDG8ptFzpxuIeofZM+An7a9MCN+5RcrVVcmUyliV6bcG1WmA5jLVHeEPjMbtzvVoy6zbeBN2tJZTxciex98yAR5SSgIxhHfmpOqdR6FdaFS7VPVidpKyGLmQmKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsvvhgV+ZZk7oM4koMo7NNQSFWyqh4GrjZDxqM/04iw=;
 b=RJYpdwLc8bfX2Ac1wjT4vsMxYsG+z/0keCvvLiYgf6qE4IdFUp0v+JOx4mufRgto706yksybBS2Qil9eIrxBWv9WHofzvW1xCPM+E2c4wAAII7++YHa/lpBVelY6R9tkPotERLaMptqiyJkDdfb/c+phUd/3sEzL4wKowWhCT1aUZKqtb6RkBXxGjnFpzeFNoiV1qhiwGNU7Y9uBtHlt+qRd2tvxgV7raKqu4hFKSj+6Oy9ptDHgTwdLiWT52FAyMKBdROjSnT8cptPk1fplYWyYe4IECjgqrRbiVBdYpzo3X53VjNTuHIVRVglS95S3uK+v/HpJDyZJARe9RcaDFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7432.namprd11.prod.outlook.com (2603:10b6:510:272::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 10:12:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Thu, 22 Jan 2026
 10:12:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Qingfang Deng <dqfext@gmail.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, 
 Chuanhong Guo <gch981213@gmail.com>
Thread-Topic: [PATCH iwl-next v1] ixgbe: fix type punning in
 ixgbe_update_flash_X550
Thread-Index: AQHci3xFnsinakTbf0O2WrZMXHVJv7Vd7w6AgAAF1OA=
Date: Thu, 22 Jan 2026 10:12:54 +0000
Message-ID: <IA3PR11MB89869D6FDF168BE8A17C40FEE597A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260122085102.1117651-1-aleksandr.loktionov@intel.com>
 <20260122093940.213113-1-dqfext@gmail.com>
In-Reply-To: <20260122093940.213113-1-dqfext@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7432:EE_
x-ms-office365-filtering-correlation-id: 8acbd672-343b-4786-f0af-08de599ececf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?LzB0TXVFVUtjbEpTV3hxK3J0QUdCQkJYMENEVEo2MTUxdmtIcjd3L2ovOGhL?=
 =?utf-8?B?eVc2S05zVXM1c1FEUXNETjNnYzNVdEVrVGFyK2hybTVQOVlzNHo4dnJqRGtv?=
 =?utf-8?B?Qm9OSTlGOFZZdWZCN2JuSzF3UG5vRVhBNUxKRUhNbTZJaXY1aEh5YS9IUmo2?=
 =?utf-8?B?bXdoREdaclMrKzlWWUJDNnM5TmVQRStsMUY4Yk11ajg4RUlPRDh6bzMzVCs2?=
 =?utf-8?B?eGEyaE51ZTZ0dEU5QmpqTzAycXNRN0k5azJNUnMvODNDN1Z1Ly9IN3RRcG0w?=
 =?utf-8?B?Yk9sdzJwd0xpdHROenJBd1ZUTHpkakxRSVFuR3dmMW02c1FiMjdqWDE5dGZD?=
 =?utf-8?B?amlCbVF4YXhzemEvcmhpWUVSalc2azR2OEMySTcyM0JXdkw3U3ZXMitON2Zz?=
 =?utf-8?B?b3FhRHpwK0tqSU93bEo1Z3IvUVY4K0w2OGNCYVdjSzBCNHVpeVkxNkZROGVk?=
 =?utf-8?B?NkNuakxzVzVORHN2WnQ0RWNnL0hhdjVKUEZQRWdRR1ZlZ0oyTC90R2lrWWxT?=
 =?utf-8?B?aTVTbVcrVFBaZ2tGVDhZYnZJSC9JQ0hvSTBCY2RYbHlsUGJxY200eGxEb3BN?=
 =?utf-8?B?T3BSVjk2R2hNU0ZWa2x1WS9uNUVvc0d4NHBjSzZ5TUQvSnVCM1ZQWWxVRHpq?=
 =?utf-8?B?Z1IycThoaE1acG95T1Bsb05HUHMwbTNuSStiMTh2QXIzOThackZLVjNEendQ?=
 =?utf-8?B?anV1Z3BtaDNVM3cxTVhNZXdmaXJtT3JsZExYWHpOdFlVNS94b0FrakNpYlEv?=
 =?utf-8?B?SU1QSWJhaGJaOFFMYWIrSzJrYmlDTHlpRlphblkyY2NmL3Ewc3IzZG9FMCtR?=
 =?utf-8?B?TWxZYkZEYkhrSHNCK2RsUXc4SE4zMUdhUjJXSHNsSDJOdmVVMFJoTXpMSXF6?=
 =?utf-8?B?M1JSL0ptSkRHNU9CR2VhTWUzOXdYQXdDc1VtaVQyRWcyeEFXZThKdnJ1N0JR?=
 =?utf-8?B?QnJES010SDlFUk1ZZkp5V3NuVGMyckFjcnRsQ09KNjEzTmlwRzVid1Z6Q04y?=
 =?utf-8?B?Zk9yd3dFMlViTEx6NjlzdHdhQnNuTHFjTnVIMkZTOWRoMXJpcXl1ZzhJYVEy?=
 =?utf-8?B?REJibXV5RUMyWUxPMzNKTDNZMzJVR28yZloweHIyc2FrdldPaU5zaFpZSDd0?=
 =?utf-8?B?T0JMU2FRaHM4ek5wcWx3KzBoQTVSWXM1M0hYdXIvWDBXUjFxYXAzdnVZMnBZ?=
 =?utf-8?B?bytPMmR5bWtKbG95U1Z6d2wxdXFERzBmUjlLQ3l3bGc1TXRrN2Z4UFc3QktC?=
 =?utf-8?B?Tkxnb0YyNGw4TzZyTG91di9Fd0xmR0pCYWM1SHQwTzhDM1dFeXNCZ3dGemdN?=
 =?utf-8?B?Ly9yUGwzdjVZUmk3SjhiOW9YdFZ1Y0IyZjkxeU1EWjhDd1l2M3NiVGQwdUxS?=
 =?utf-8?B?SmR2NzhhMTd0eWw0NTc2dE9Kcm5iejlVSTVrWDY5UzVLbnZaeXhIekFXc3Nj?=
 =?utf-8?B?ZUhlSGNmWjJncU5aR2hYbXNvWE0xa2VFV29SN1Frc2NJWlBOUi9Db0tLVlJa?=
 =?utf-8?B?VXMza05rYWJhZHpmellYV0Ivd3pCRGNoZGhzYkNQYmFRQ21lV29qUTJOSFI3?=
 =?utf-8?B?OHBDTCtaK0VUa0Q1dzJhVHpodFB1c3JnRTY2VkhIQkZWaXZVbzMrU2E5TXI0?=
 =?utf-8?B?TGdDU3N6ZWExMnJ0NHM5VHg1RDhodEN6RWlBN2FmVGc0NEVhLzhDbElpWmlx?=
 =?utf-8?B?UXladGR0bjVMZ1R2TDhnckl5blZNTVB0cC9xcE5DdGxqTDV2aEFabHVLNFVL?=
 =?utf-8?B?a01HaFFjY0dCN05kRVo2QU9DZmdSdnJ1bk1heFZDQ0tDVWErYTRHYXJ6MlYx?=
 =?utf-8?B?RWIvQTlMVU1pZnBMeXRVVEdhMG95VXIxNTVnNFQyVTQrVWZmY3Jud3gwK1N0?=
 =?utf-8?B?Tm83cjFGa2pKNituN3d3ZHhUVTB4UjJMTkVmdHpNRG5RUGswbXgzZmF0WlQx?=
 =?utf-8?B?TnhuOWMvYXVFVFk3WnB6aFVxcTNiWnMrOXRGdXc5S2w1bDR1NDBQTS9icFVX?=
 =?utf-8?B?Ulp1YXRxOTBzWHcrNFpkN0xINzBlRHQwc0tTMVZGOC9aZ1lqTkszZXE4ZmhQ?=
 =?utf-8?B?bGVhVTljUmxoc0J4cEMyUVdFcjkyVDNsRTJXQnc4dTkzMFhJRjFmN2VUU2tZ?=
 =?utf-8?B?dXB5UkJPeEF4VXdkcWUrckgrSlBJaVpYbGpvNGJ2eldzZW5COXBOTXJrdktt?=
 =?utf-8?Q?x/4DrbiMeTZ/yAKhct/04uQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dEttbnZJQmJwSjVnMXhidXYrT2FybTlRd1psWFBsNzBpdTNZMTdsMUxPRWNl?=
 =?utf-8?B?ck04TmR1QklUVmJzRlhuMUFEZUVXbnhnc0cwNEVRSFRDdlBJOW90UlhOQ01F?=
 =?utf-8?B?TlpBYWY4Ynh5cHl2U0s0S04yS3dFRStvcEN6ZWp4REFzRmRGY1lSZjJXcmlE?=
 =?utf-8?B?ZEJUcEo4TDdoL3ZuYVZrNjFsR0toRSs4TkF2alR6eGdadmFYT1oxaGZtTGtN?=
 =?utf-8?B?ZWRzWGx6WkZ1RnI3eDFPU0M3d1lyaXBvT2tRcmIzMlZKZ3h3d21kczVHblVr?=
 =?utf-8?B?c05tNjBwclN5QTl2SzhRTFpUOTlZTmJzR3F3MUFkQkovWlcwaXRlbG9wY2Jn?=
 =?utf-8?B?NFRGTzUxeVJvWklGRzJGYy9wOXFKcDVLbGE4M0JJWXNSNFRGNDNhSFc2WDVm?=
 =?utf-8?B?RzN5WDVEZWwvNTcyK2kxWjBRcnBhTEdyZW00MWxFUXY5b0tFSmpiRFNDZHdT?=
 =?utf-8?B?dHY2Q1RHWDZHZkgyOTlsK0VVUGpYSUU5dERKUGpMeTk2SUJvZUE0REppRldF?=
 =?utf-8?B?VTI3c2xWUXdMc0FPNGVLdDF4WTJxVC91Ylc4Q1BLblVXUXM3WSsvbGUxTzZ6?=
 =?utf-8?B?YmNzOFJFb1ZzSko3ak5FOUpTdlBvSDRTNjdaVjVsR3gwalIzdFNnWWlEZmdR?=
 =?utf-8?B?RlUyNEtOMkhJclJJUnZyK05DZTVza2haS1pHVzVXeE5IMVlya1pTZVJkVHVm?=
 =?utf-8?B?Y2R6WW44SHk2TjlNRGZlMVhZMDNtZFJXb0lJWWZJNjdGdGF5N0cvd2l6U3hr?=
 =?utf-8?B?OWd3SFZzdUVPUjIweHdacDRLczQ1UHc2c1ZmNWNQUnNudWcwWFk2VmYwalVR?=
 =?utf-8?B?czFScmJ6QWJPTmtveFd6OExPUlB4RFVMV01lRkcweTV0WXdWLzdpZmwvZGtY?=
 =?utf-8?B?SmhWYnVOT3EzNEFtSDRsN2dEbXNKSjVLZzZWMnhLRDNwWDNyS0wvekNjL00y?=
 =?utf-8?B?cXJCZnNSOEUxS3ppR0RTSzB4RWNPdlFzQU0xT0xWQUJMcTFTSU16Vm9GbFNM?=
 =?utf-8?B?RGFXeVVRQmVOQ200K1dwcTViNDc4UGg0aGRUbytQaUdGS21PVmxybDVZYzR2?=
 =?utf-8?B?bk9HWWIrNTdtcGEveG5BZi84dWMva1QyZmNLNFkxQmJRQUpQb2xmUDBxVk9F?=
 =?utf-8?B?bzNrM3E5SUlYUWo0S0JOQ3h2dnBJK3dkUlQxMkdta2J0TnBYRllJSlp3Yndz?=
 =?utf-8?B?cGs4czNvQ0hmbTZJMmx4cTBKaWtRZmxTRnIvcUtucm4xNTlMMUxsOG4zMzRG?=
 =?utf-8?B?czNHcXVDNzYwbmgxKytSbmtPdDUrSEFCNllSYUlyb1BZemczOUZybkZCN21P?=
 =?utf-8?B?SzM2bjFscmducWt1MmdISXpEWjhBREw4UDNWd2lVZndLenB1c085Q2VFUElO?=
 =?utf-8?B?ZE12Yk1KZE5NdVN3M1dpeEJQbWtxRE1FQ1hNejhRMEZIVVBtZUh6czlpKzdG?=
 =?utf-8?B?Y1dLK1Zlci93QXNjeXNGSzNodnlKTHlheTEzQzNWR1cxY0pVdnd5R093QlNZ?=
 =?utf-8?B?eVJtZDBiazRlZWRoU3JyQlFRU1F0dTJnc1lyL2xGV1pBQi9aYmFpdTlML3A0?=
 =?utf-8?B?QnhwR1dPRnZMWlA1N1Urak45d2JKUGFGTS8ramFCMlZqSmtQZXJONnNYbWxi?=
 =?utf-8?B?SXV3REZsNzdCTFlHbGNTY3p0MUpCMHdkcHhtaFVvRFdQeGlYWHFVRU10dXVJ?=
 =?utf-8?B?bkhrWmhEMjFkV0pPeWVUTEhacmRxM09EODI1NUtQMnJzZU5qUnBvK0xYTk5r?=
 =?utf-8?B?ZUdZTW0yUWdUTFpFV3JIMnNER3JjQ2FKZDRKVFQwZnNCSkJvWmt3cy96L2dr?=
 =?utf-8?B?MkpreXY3K1dIT2RRQlU5NHNXRmN2MHlmc2F3SkNBMjJiWXZWUUl5N2NyTXpM?=
 =?utf-8?B?S0lvWEZCQlo4VXV1MkJCZ0RPL2p6aHFxYUZwR0o0dXM0TVhpR0RoY2RDcFIz?=
 =?utf-8?B?Z1NtSERkeGkvNkVjVGdOcmdMVkRwL000NHl3T0dnT0FlaDNYM2owblM2c01t?=
 =?utf-8?B?S1oyRUxXTU93Um1ZWmNMZWNxZ0ZCR215aEJGNEUrZ25pNVpiMThMa2lHZndX?=
 =?utf-8?B?Y1RmL0FlQzREaDhhVHh6WFJBa3ZUejRDUHk3c2t0cEhDb2doMVpaSWsxRmRa?=
 =?utf-8?B?MXYwUGJmanhLZ1VLc01Na25WQ2Nza3NtQ2lkbDk2SUtQN0oxZ0V4YmliQmg2?=
 =?utf-8?B?SWI2dlVKRi9ETjBENEY1R1lTRkswZFpHRXpoMCtoeUJuTUtIOVg3MjdLT3Jj?=
 =?utf-8?B?YklCMTUzZWhEVFhYYnExMjhNVDM0MnFLenFwUnVXajNMMzRIRm04YlZIaVVK?=
 =?utf-8?B?a1BJN2xxNzFCcEhHTXdhTzN6L0YyV2JCeFlSZDJUZmpTaThQTDJpYzlkb0hG?=
 =?utf-8?Q?8fiqFZilX0RGNqmI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8acbd672-343b-4786-f0af-08de599ececf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 10:12:54.2450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xyc7txNZC0lLnbOLw5T8UZOBqGorDm04HDmopveAFSngUIHo550ZGfIOJFe+PIBe1jRHXXkBbsu4J3mH/DFPsyCYPKE1OBS0BcyesfTLrkc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7432
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769076786; x=1800612786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MsvvhgV+ZZk7oM4koMo7NNQSFWyqh4GrjZDxqM/04iw=;
 b=CK2JSNpZvkAo6JOenIzS17fVfHBYf9jSgzMUYeuTz75h1OPOzDo+Jnwg
 mC1n2bK7D0OkpZwbaAVaev0NTJ1wUWPpMN4uiZtHnw6hyiLAuy7SND8pa
 8Q1dQKM9ZycWtUuNWyEerdiA6uNYEdJEjdtyBZPLpGoR/tJ1TDM+GYa+I
 Si2kTDkq+sbbQ/BBkdp5jipBJw2X2vMMUH3XA0AwKJSCJyDTMMa2Zl6Kl
 dlQnPBtbVLRQLPu06qeRXiiTAXZN2DKZUFxIxWJqXimK7SwPAE1jA0ld7
 DL8hB6UtYatLcjiG4T692o8LC18dDB5YIiFalnKIXwNNKohY74MP3cQYy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CK2JSNpZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: fix type punning
 in ixgbe_update_flash_X550
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:dqfext@gmail.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jedrzej.jagielski@intel.com,m:gch981213@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 348EF6513D
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUWluZ2ZhbmcgRGVuZyA8
ZHFmZXh0QGdtYWlsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgMjIsIDIwMjYgMTA6
NDAgQU0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGlu
dGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBOZ3V5ZW4s
IEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBKYWdpZWxza2ksDQo+IEplZHJ6ZWogPGplZHJ6ZWouamFnaWVsc2tpQGludGVs
LmNvbT47IENodWFuaG9uZyBHdW8NCj4gPGdjaDk4MTIxM0BnbWFpbC5jb20+DQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggaXdsLW5leHQgdjFdIGl4Z2JlOiBmaXggdHlwZSBwdW5uaW5nIGluDQo+IGl4
Z2JlX3VwZGF0ZV9mbGFzaF9YNTUwDQo+IA0KPiBPbiBUaHUsIDIyIEphbiAyMDI2IDA5OjUxOjAy
ICswMTAwLCBBbGVrc2FuZHIgTG9rdGlvbm92IHdyb3RlOg0KPiA+IEFkZCBhIHUzMiBidWZmZXIg
YXJyYXkgbWVtYmVyIHRvIHVuaW9uIGl4Z2JlX2hpY19oZHIyIGFuZCB1c2UgaXQNCj4gPiBkaXJl
Y3RseSBpbnN0ZWFkIG9mIGNhc3RpbmcgdGhlIHVuaW9uIGFkZHJlc3MgdG8gdTMyIHBvaW50ZXIu
IFRoaXMNCj4gPiBhdm9pZHMgcG90ZW50aWFsIHN0cmljdCBhbGlhc2luZyB2aW9sYXRpb25zIGFu
ZCBtYWtlcyB0aGUgY29kZSBtb3JlDQo+ID4gZXhwbGljaXQgYWJvdXQgdGhlIGJ1ZmZlciB1c2Fn
ZS4NCj4gPg0KPiA+IFRoZSBpeGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5kIGZ1bmN0aW9uIGV4
cGVjdHMgYSB2b2lkKiBidWZmZXIsIHNvDQo+ID4gcHJvdmlkaW5nIGEgcHJvcGVyIHUzMiBhcnJh
eSBtZW1iZXIgaW4gdGhlIHVuaW9uIGlzIHRoZSBjb3JyZWN0DQo+ID4gYXBwcm9hY2ggcmF0aGVy
IHRoYW4gcmVseWluZyBvbiBwb2ludGVyIGNhc3RpbmcuIFRoaXMgZWxpbWluYXRlcyB0aGUNCj4g
PiB0eXBlIHB1bm5pbmcgaXNzdWUgd2hlcmUgd2Ugd2VyZSBjYXN0aW5nIHRoZSB1bmlvbiBwb2lu
dGVyIHRvIHUzMiouDQo+ID4NCj4gPiBCeSB1c2luZyBidWZmZXIuYnVmIGluc3RlYWQgb2YgJmJ1
ZmZlciwgd2UgcGFzcyB0aGUgYWRkcmVzcyBvZiB0aGUNCj4gPiB1MzIgYXJyYXkgZGlyZWN0bHks
IHdoaWNoIGlzIHNlbWFudGljYWxseSBjb3JyZWN0IGFuZCBhdm9pZHMgYW55DQo+ID4gcG90ZW50
aWFsIHVuZGVmaW5lZCBiZWhhdmlvciBmcm9tIHN0cmljdCBhbGlhc2luZyBydWxlIHZpb2xhdGlv
bnMuDQo+IA0KPiBUaGlzIGNvbW1pdCBtZXNzYWdlIGlzIHVubmVjZXNzYXJpbHkgdmVyYm9zZSwg
bG9va3MgbGlrZSBBSS1nZW5lcmF0ZWQuDQo+IFRoZSBrZXJuZWwgaXMgYnVpbHQgd2l0aCAtZm5v
LXN0cmljdC1hbGlhc2luZywgc28gaXQncyBva2F5IHRvIG5vdA0KPiBmb2xsb3cgdGhlIHJ1bGUu
DQoNClRoYW5rcyBmb3IgdGhlIHJldmlldywgYW5kIGFncmVlZCBvbiB0aGUgcm9vdCBjYXVzZS4N
Ck15IG1vdGl2YXRpb24gaGVyZSB3YXMgdGhlIG1pc21hdGNoIGJldHdlZW4gaG93IHRoZSBidWZm
ZXIgaXMgZGVmaW5lZCBhbmQNCmhvdyBpdOKAmXMgY29uc3VtZWQ6IHRoZSBjdXJyZW50IGNhc3Ti
gJF0b+KAkXUzMiAqIHBhdHRlcm4gZmVsdCBicml0dGxlLg0KTWFraW5nIHRoZSBISUMgYnVmZmVy
IG5hdHVyYWxseSA04oCRYnl0ZSBhbGlnbmVkIGlzIHNpbXBsZXIgYW5kIGNsZWFyZXIgZm9yDQpi
b3RoIHJlYWRlcnMgYW5kIHRoZSBjb21waWxlci4gU2VwYXJhdGVseSwgd2hpbGUgeDg2IHdpbGwg
dHlwaWNhbGx5DQp0b2xlcmF0ZSB0aGlzLCBvdGhlciBhcmNoaXRlY3R1cmVzIHJlcXVpcmUgbmF0
dXJhbCBhbGlnbm1lbnQgYW5kIG1heSB0cmFwDQpvciBwZW5hbGl6ZSB1bmFsaWduZWQgMzLigJFi
aXQgYWNjZXNzZXMuIFNvIGV2ZW4gaWYgYSBjcmFzaCBoYXNu4oCZdCBiZWVuDQpyZXBvcnRlZCwg
cmVseWluZyBvbiAx4oCRYnl0ZSBhbGlnbm1lbnQgZm9yIHNvbWV0aGluZyB0cmVhdGVkIGFzIHUz
MltdIGlzDQpub3QgZ3JlYXQgcHJhY3RpY2UgYWNyb3NzIGFsbCBzdXBwb3J0ZWQgYXJjaGVzLiBU
aGlzIGNoYW5nZSBtYWtlcyB0aGUNCmxheW91dCBleHBsaWNpdGx5IHNhZmUuIEnigJlsbCByZXNl
bmQgd2l0aCBhIGNvcnJlY3RlZCBjb21taXQgbWVzc2FnZSB0aGF0DQpmb2N1c2VzIG9uIGFsaWdu
bWVudCAobm90IHN0cmljdCBhbGlhc2luZywgZ2l2ZW4gdGhlIGtlcm5lbCBpcyBidWlsdCB3aXRo
IC1mbm8tc3RyaWN0LWFsaWFzaW5nKS4NCg0KaXhnYmU6IGZpeCB1bmFsaWduZWQgdTMyIGFjY2Vz
cyBpbiBpeGdiZV91cGRhdGVfZmxhc2hfWDU1MCgpDQoNCml4Z2JlX2hvc3RfaW50ZXJmYWNlX2Nv
bW1hbmQoKSB0cmVhdHMgaXRzIGJ1ZmZlciBhcyBhIHUzMiBhcnJheS4gVGhlIGxvY2FsDQpidWZm
ZXIgd2UgcGFzcyBpbiB3YXMgYSB1bmlvbiBvZiBieXRlLXNpemVkIGZpZWxkcywgd2hpY2ggZ2l2
ZXMgaXQgMeKAkWJ5dGUNCmFsaWdubWVudCBvbiB0aGUgc3RhY2suIE9uIHN0cmljdC1hbGlnbiBh
cmNoaXRlY3R1cmVzIHRoaXMgY2FuIGNhdXNlDQp1bmFsaWduZWQgMzLigJFiaXQgYWNjZXNzZXMu
DQoNCkFkZCBhIHUzMiBtZW1iZXIgdG8gdW5pb24gaXhnYmVfaGljX2hkcjIgc28gdGhlIG9iamVj
dCBpcyA04oCRYnl0ZSBhbGlnbmVkLCBhbmQNCnBhc3MgdGhlIHUzMiBtZW1iZXIgd2hlbiBjYWxs
aW5nIGl4Z2JlX2hvc3RfaW50ZXJmYWNlX2NvbW1hbmQoKS4NCg0KTm8gZnVuY3Rpb25hbCBjaGFu
Z2Ugb24geDg2OyBwcmV2ZW50cyB1bmFsaWduZWQgYWNjZXNzZXMgb24gYXJjaGl0ZWN0dXJlcw0K
dGhhdCBlbmZvcmNlIG5hdHVyYWwgYWxpZ25tZW50Lg0KDQpGaXhlczogNDk0MjVkZmM3NDUxICgi
aXhnYmU6IEFkZCBzdXBwb3J0IGZvciB4NTUwZW1fYSAxMEcgTUFDIHR5cGUiKQ0KU2lnbmVkLW9m
Zi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+
DQoNCldoYXQgZG8geW91IHRoaW5rPw0KDQpUaGFua3MhDQoNCj4gV2hhdCB5b3UncmUgZml4aW5n
IGlzIGxpa2VseSBhbiBhbGlnbm1lbnQgaXNzdWUuIChzZWUgYmVsb3cpDQo+IA0KPiA+DQo+ID4g
Rml4ZXM6IDQ5NDI1ZGZjNzQ1MSAoIml4Z2JlOiBBZGQgc3VwcG9ydCBmb3IgeDU1MGVtX2EgMTBH
IE1BQyB0eXBlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVr
c2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogSmVkcnplaiBKYWdp
ZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oIHwgMSArDQo+ID4gZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5jIHwgMiArLQ0KPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGUuaA0K
PiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oDQo+ID4g
aW5kZXggNjFmMmVmNi4uZWI1YmYzYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlLmgNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlLmgNCj4gPiBAQCAtMjc5OCw2ICsyNzk4LDcgQEAg
c3RydWN0IGl4Z2JlX2hpY19oZHIyX3JzcCB7ICB9Ow0KPiA+DQo+ID4gIHVuaW9uIGl4Z2JlX2hp
Y19oZHIyIHsNCj4gPiArCXUzMiBidWZbMV07DQo+IA0KPiBUaGUgYWxpZ25tZW50IG9mIHRoaXMg
dW5pb24gd2FzIDEgYnl0ZS4gQnkgYWRkaW5nIGEgdTMyIG1lbWJlciwgeW91J3JlDQo+IGVmZmVj
dGl2ZWx5IG1ha2luZyBpdCBhbGlnbiB0byB1MzIgKDQgYnl0ZXMpLg0KPiANCj4gPiAgCXN0cnVj
dCBpeGdiZV9oaWNfaGRyMl9yZXEgcmVxOw0KPiA+ICAJc3RydWN0IGl4Z2JlX2hpY19oZHIyX3Jz
cCByc3A7DQo+ID4gIH07DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2l4Z2JlL2l4Z2JlX3g1NTAuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfeDU1MC5jDQo+ID4gaW5kZXggNzZkMmZhMy4uNGEwY2NiZiAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMNCj4g
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMNCj4g
PiBAQCAtMTIyOCw3ICsxMjI4LDcgQEAgc3RhdGljIGludCBpeGdiZV91cGRhdGVfZmxhc2hfWDU1
MChzdHJ1Y3QNCj4gaXhnYmVfaHcgKmh3KQ0KPiA+ICAJYnVmZmVyLnJlcS5idWZfbGVubCA9IEZX
X1NIQURPV19SQU1fRFVNUF9MRU47DQo+ID4gIAlidWZmZXIucmVxLmNoZWNrc3VtID0gRldfREVG
QVVMVF9DSEVDS1NVTTsNCj4gPg0KPiA+IC0Jc3RhdHVzID0gaXhnYmVfaG9zdF9pbnRlcmZhY2Vf
Y29tbWFuZChodywgJmJ1ZmZlciwNCj4gc2l6ZW9mKGJ1ZmZlciksDQo+ID4gKwlzdGF0dXMgPSBp
eGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5kKGh3LCBidWZmZXIuYnVmLA0KPiA+ICtzaXplb2Yo
YnVmZmVyKSwNCj4gPiAgCQkJCQkgICAgICBJWEdCRV9ISV9DT01NQU5EX1RJTUVPVVQsDQo+IGZh
bHNlKTsNCj4gDQo+IGBidWZmZXJgIGlzIGEgbG9jYWwgdmFyaWFibGUgYWxsb2NhdGVkIG9uIHN0
YWNrLCBhbmQgdGhlIGNvbXBpbGVyIGRpZA0KPiBub3QgZ3VhcmFudGVlIGl0cyBhbGlnbm1lbnQu
IEFzIGl4Z2JlX2hvc3RfaW50ZXJmYWNlX2NvbW1hbmQoKSBjYXN0cw0KPiBgYnVmZmVyYCB0byBh
IHUzMiBhcnJheSwgdGhpcyBtYXkgY2F1c2UgYW4gdW5hbGlnbmVkLWFjY2VzcyBleGNlcHRpb24N
Cj4gb24gc29tZSBhcmNoLg0KPiANCj4gRm9yIHlvdXIgcmVmZXJlbmNlLCBJIGFkZHJlc3NlZCBh
IHNpbWlsYXIgaXNzdWUgcHJldmlvdXNseToNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjMwNjAxMDE1NDMyLjE1OTA2Ni0xLWRxZmV4dEBnbWFpbC5jb20vDQo+IA0KPiBQbGVhc2Ug
dXBkYXRlIHlvdXIgbWVzc2FnZSwgYW5kIHRyeSBub3QgdG8gdXNlIGNvbXBsZXRlbHktQUlHQw0K
PiBwaHJhc2VzLg0KPiANCj4gPiAgCXJldHVybiBzdGF0dXM7DQo+ID4gIH0NCj4gPiAtLQ0KPiA+
IDIuNTIuMA0KPiA+DQo+ID4NCj4gDQo+IFJlZ2FyZHMsDQo+IFFpbmdmYW5nDQo=
