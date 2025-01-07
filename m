Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E06A03BD1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 11:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A93360AD0;
	Tue,  7 Jan 2025 10:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UfaQywldG6Sp; Tue,  7 Jan 2025 10:07:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0391160AE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736244436;
	bh=B8Qwy2S87pyEYGb92oFxDVlNO+pv7hZjbojE+udX0IU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ryzr1cPSBwb/Zy7BQmpv6TylIcEmA/JASjTcbynfY7zn/yNYGFSsA3K8MOdrs2fki
	 o8dLna0Xl756sGt0N7gj9UZKiJr0wIvBCf1lMdfrIJCQrF9Wo96g+UldMWN6Uam4J0
	 0otQikwlQDEvhBcCa++7orRbnK7Pt1CL5f4uU7P9GOTncvZa1eAjESvpmqWk5X0wx3
	 klFU/BLVFOwaEX5teBWSc8pMIvv1i+r6V6JEfoOXJLkIK1AD+3/Ert7hlFZzg50ugG
	 SlVHv/Z95MBjKhejprO5Qoe58gKYwgco9fBIOcsw5guV/I1E5w0N0Wjw6yDQaHznr8
	 uIYj1iX8fCvhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0391160AE6;
	Tue,  7 Jan 2025 10:07:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 950877AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DE80406BE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x1eo6vWHX4IY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 10:07:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE0D1408D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE0D1408D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE0D1408D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 10:07:06 +0000 (UTC)
X-CSE-ConnectionGUID: rfOnSgpwSS2cdqEHCRRO6A==
X-CSE-MsgGUID: GSmsTvFCRHSQV09496HiXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="24025787"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="24025787"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 02:06:45 -0800
X-CSE-ConnectionGUID: ZxymOxZdSlOA7gmJ1QXaYg==
X-CSE-MsgGUID: dTzTNEH8RWeQKuCpaUq0gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107344580"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 02:06:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 02:06:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 02:06:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 02:06:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LQNfmYMuhOMuiRVvymmn8jnfrZBau5CxORm7YlAuhsUmEZJ2jKqlHZbwMOwc4C1NDZBIsOySAsfofZAWKnW4AWlf9PA+IWBnRD0q1CrR5+2tWSR4iLlz3DhTGMwunvHpDohKVrfr2P7HhT+n7uJlMMbWgyTkNBHDYJ6VZY6Q9wuDwVicxr5VUFAHx4wTQ97euQ2NVdxwY9LRgESU7Wvzv7hyRSGJ+KXC1R8gI9OemTU1aeaR9jk1mHe67kRnIP7UMZibeKalBNpPuCgTGXplCPjdxE/qn9OK9hT/vMYkQR88GdJqAAyqrA+vEkPivRWpgtuMx1ouSybLBu2y+MXJJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B8Qwy2S87pyEYGb92oFxDVlNO+pv7hZjbojE+udX0IU=;
 b=yK0/E1ZkzPz9uQKnVRRud664DfZ4g9fCPxtzi82hzEJxvZDVluvFY6041AITIuwtOGjGHkLkwZrX4FvR4YOAni+0GYYLuwq/mZAdM7UR/K6RGoMPbpdfiDGydLO1b+W/s1mRbSmmqy/QbgykG7X/2rdDjEy6leQjwswyGVNWg6QpFy40jg+/xGRcNbrGctDMBpKWW7w1izotbOdMLUPhmJKTra6SKbpVgBawAzza+tZsU3n5KOAtrAVJQc+fPgdHLSr7JU2FZOFbsfmK14hIFe9+Js2c+ZaW8JN6WFFVKBNi0uUt4OnsiK3pjkXvXjLVodlE1X4aNP2WBR6o6b1jaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Tue, 7 Jan
 2025 10:06:41 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 10:06:41 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Wander Lairson Costa <wander@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>, Clark Williams
 <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, "open
 list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:Real-time Linux
 (PREEMPT_RT):Keyword:PREEMPT_RT" <linux-rt-devel@lists.linux.dev>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/4] igb: narrow scope of
 vfs_lock in SR-IOV cleanup
Thread-Index: AQHbRkHM1TGUP9Fne0uoEdQ8ImHq4LMLSxaw
Date: Tue, 7 Jan 2025 10:06:41 +0000
Message-ID: <SJ0PR11MB58657540C92FD4DBA94926A08F112@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241204114229.21452-1-wander@redhat.com>
 <20241204114229.21452-2-wander@redhat.com>
In-Reply-To: <20241204114229.21452-2-wander@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6824:EE_
x-ms-office365-filtering-correlation-id: 79adb3bc-c662-4fc2-5254-08dd2f02fbb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?OXIzcnJTVnFGWXZYSGMyWHcvamZEQUk2SjJ3MjNvNUJBWnNlOEk3R0lTblYw?=
 =?utf-8?B?UDVwNUhZL05NZmNSaXNyblBaSGd1RXlqRFFEUE4vVlNyZU5XanFKeUxWaVNC?=
 =?utf-8?B?K0JwWkJiTHM3TEpZdEU0R203ODM1S3VqWDh6WUZWdHZGL2N4emlkRGtyalZz?=
 =?utf-8?B?SHFxQWdHZzJZLzR2UkxyWk9ZQzFkNzBtVU96aTdrQ2c3bW9jekljOU9PNFVa?=
 =?utf-8?B?NlE3bEk2Mk9ELzZrNzZnektDVUxVNDJqL01JYlpjRXJ2MERoNnRtSE03V1lY?=
 =?utf-8?B?VDFoT0lINHVheXNZTHZDd0I2Y2lOa0NMd1RKVHZuYnMvUmhIcWp1SDBJcytU?=
 =?utf-8?B?UEJLRG1TNUpCRGZjSEZlNnBjNFB3TFd5dWZwaVFlaGY1YURBdWdqbStQLytJ?=
 =?utf-8?B?MlNoMDFueXk2WXZLTXBsenRPM3RtdWIrcjlITlhUUVI2Z0JIY3I0RzlTVFgw?=
 =?utf-8?B?dVVJanE0emZqWnFaaEVsZnIwdHIxRzhHUi9PdUV1elRSME8wbzZVM09qTGhh?=
 =?utf-8?B?ekxQVnRTTVpyZzNWc0dQVnpJa3dhb2ZTV0RuRkYwQWUxL1JSSE9LSldZMmlo?=
 =?utf-8?B?bHNIU2haRzBDQk9YR2RFTXhQNFhrcUdIRGZWS2JYSVFqREVzS1oxVHloaHFP?=
 =?utf-8?B?amtnSk1VbXBNamZGRlpxaGE4QStFRVBydW1Ibkx5WWRJV1J4TFBobzEvdDM4?=
 =?utf-8?B?VkNYdHRydkhvUFRFSk9hKzYzenVaKzFFaU9JOVJITmdwbWluY2dyaTFiU1V4?=
 =?utf-8?B?Qk1XditUUUJuOS9Ybm1rRHdqczJpMWE2aGVSNDA3YWZsMXdRdUk0MzBzb09u?=
 =?utf-8?B?NWxXaExGTmdmcGZ0VHVCNnhXZmFhMnZtblc4aWczRkVweWJiR1VhOGkvWmpq?=
 =?utf-8?B?dENTeUN5U2JOUTh1L0wyWTY4cy9RSzVoZjExM3FaTnp6WW9IUjZ4RnR1NDJO?=
 =?utf-8?B?K013OEx4Ri9PU1NnVmZwVEYvSitRc3ZySVczbHlzWWFjUE5lVHhzZkFxWjBa?=
 =?utf-8?B?SFc0TlhqWXV4aG1zTEhFcTBrYWYvR0lIVXNpQkJuZlowV0czaDNHejQwQjR4?=
 =?utf-8?B?aVU2SXBvTDVScWltZ2tjMldmWjBEbXRTN21kVXhjajgxdEtYeGlJUlh2WGNu?=
 =?utf-8?B?Sk8rMlVQNC9XZU41dWhBYURwcGI0YXdVOVI5NmE0Q0h0WVkzcDJCZG5mUzZY?=
 =?utf-8?B?TWhSTFY3OVFPUzNDbnlYRjR6SlF1T2k2Y3hWRFNPM0tFdHNlWmdLcU9NV1E4?=
 =?utf-8?B?RmJ5RDBzUFBGQUxUZEdLNVBNb3NtS1pYVnM0dkFKaG85RGlkdHpNWXRMb1NH?=
 =?utf-8?B?RzFld21GRkhITGE0NzVtbms4V1E0QVFmL0JvcGdxUFBKck5FY3J6d1RET0JR?=
 =?utf-8?B?QzAzSzhGcDJLa1dITDIrNWJpYTQxQkFCVFVuNjEwcWRqNDZBRmE3blcvNVFY?=
 =?utf-8?B?WmE5YWU3L3BYVDhRSytaODg1NFVtSzdEY1FYZGJtRWdpVmlnb2NwSXpEZmhs?=
 =?utf-8?B?aHdnaFdjSkFPQlhLWXdyWDlrQ0htbUtXbUYvQ0dZV05aMkFFRzJWYTZEd3VO?=
 =?utf-8?B?S0VqdURTOTgzMzNRejByQzFlTTROcVFtWXV6UkFBdTF1ZytyV1BEY0NTL3pZ?=
 =?utf-8?B?Z0VtWmpXZVRsVWZ5a0JEdDlxQk0rRFJxc2o5cW4xbU5jb1EyVU1DaVhpUEYr?=
 =?utf-8?B?QW1BZEdidGd2SzlHVVNyZmN2TXNGR1BYSWY0KzRKQzFSSXlCQStnNzFFWGE2?=
 =?utf-8?B?MW9YRXBCbjgrYU1uaXRzMkMwTmhkRlF0ZitFU0JQTThCcGJiRFNISDMvWGU0?=
 =?utf-8?B?alBxN1g1d1BOejdEM293SGVsTm9tWXZWVG9kZldoMGNiMUcvZnJNbGpZNnBL?=
 =?utf-8?B?bzVDbWcxNk4yYzZvQTBCZzAxMytZbFkycmFiNEx0bHY5SGIyM1V1ZXJwTk9B?=
 =?utf-8?B?NW9KV0lxY2htenJsRHNMZGVSMkEzZEFNd1hKaHQ3R1lmQURtK20wbzBtVnA3?=
 =?utf-8?B?Ukg0UEZ2QzJ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmlqZEdiSHFZZi83VGNoWFdtQ1FDblQ2R2lBNzAyOXJ3Uzd2bVFqSlhKTVJa?=
 =?utf-8?B?RGhuamhzbHczdzR4WTh1ZnFmNUJVdHAyalZYdHBlNk81RVFEQ2wyRk9UR0hx?=
 =?utf-8?B?aEpMZWRtc1VoWEVOMWx6czZqSzV5YXJ6dmYzajJ1WE8rc3J4Zlc0eUlLSy9L?=
 =?utf-8?B?MFJLSUVhbmR4SmlzendCNUlmYktvQlUrU1pMRmlEU2t2cWk1aFFieVk1aFkz?=
 =?utf-8?B?TXA5R1NLQisyeXZzTmU2c21uTXBOYWhUelQvR2EraHp1UXdpQjV4MTlNbzRz?=
 =?utf-8?B?T3pUVHU2ekNEaDhFSVJmQUNVbWI1T0w4WjIvVUtoZjBJbzlhZnhEblFFY2Zv?=
 =?utf-8?B?dW1DSXFZcXlYMDJCYmxkcU0zZjZScmpOSkJiKzJDUGpxYXgzL2pNR2YrT0RN?=
 =?utf-8?B?MjF2bFFQc3JoaWwwUlpwZWJEV3NLb1NuVjQ1VGFmOGhEUFlFazl6KzA0Y1Yr?=
 =?utf-8?B?ZU84enJNcjVvUHZTWHVlT2JtUDVRdXJsS0xKRlBLVXk3MmhCSGRKdHRVUllm?=
 =?utf-8?B?UXNQOWZZdFR6S1drM0ZPbXVmSVZkOE5pM0tGMC94NC8rRjdIbzlEcmdVck44?=
 =?utf-8?B?ZG5sUHRsbC9aZWIxYXhXM0Erd2hNSERJZ1MxeXp4VEQ2S2lwTG1aNktqeVZL?=
 =?utf-8?B?MERoRFZrVjdEZTFJNmcrdlVnZmg1ZGZVbHpCQitqWlN3TFc1M1ZoN1B0QW1J?=
 =?utf-8?B?bVFZYnQ2RFUzRDI1a2wyNGh6bjQyV3pvMlJPNWlQQVdkNlgyd2VSOFRRNGYx?=
 =?utf-8?B?bEpjalNDWm0zTG9XZWFQdWJHOUpicGsrbEU3M2NWdWRXVmQ5ZGpJcWJPbkZC?=
 =?utf-8?B?dXYzRk03cmgyU1NVMkZOejJoUWpISCsweUF1TE1icFV3ZEpqeXA0Q3NCdkJu?=
 =?utf-8?B?dzZ1NnpSdTNVUUdXeHh2MG9FcEFNM0JVVVBtV2hsMDE5cFlUdVFkVkh1eGdq?=
 =?utf-8?B?cUdhTENBZGpQTENwNXF0R2RFN1hEMmJuZWpHZ3Bwd0tHbnpxYnpwb0dUWitI?=
 =?utf-8?B?MTNuVmUzdUk1V2haWHRnK1hPalhqaTJFN0RuZ3hMVFNCUTRqVUJxeFdDTjly?=
 =?utf-8?B?UFJ0QittMzBYZEovM2ZSTCt5OURZQTF3UUhRTUVYS2xNZm9xSzEzVUprR0pp?=
 =?utf-8?B?bUQ4WDE3WjFtMVFPSVNrZ2Q5NWtZVXFBYkJRK3pPUEJoQnpXaDQrTWRpWDBz?=
 =?utf-8?B?WVJQSFhJSzNzSjU3MTljd1JwOEdaSFVzQitlMkltUEhaNmdqdStQWDRmNkVq?=
 =?utf-8?B?QWRlUVp5MkpPRW51OFI4aVVseDZCckZqNjc3NzBGUmpmdXlLQ0FyYnFaMUZ2?=
 =?utf-8?B?Mms4ek9qcmJMZjdGbW9XbzV4QkxpMXhncnpabEZ5TVVsQjZRTjZXKzFnV0Fw?=
 =?utf-8?B?blV5Nk1KdzdGLzVNT2F0VGpGR0JTTmh4ZFpERnhxUkNIS3BvV3lSNis3b1Rr?=
 =?utf-8?B?S1U4R0tORmRta285OVhjVElrQkZSTDBGYjQ0MkJZRmxqVWdHeFlUdzU0Vno4?=
 =?utf-8?B?Y0kwYVNETU9qMWVyK1lxU2JTektCZXhUdTRtWDVWSDk5UmFHTTVHMU96R0dI?=
 =?utf-8?B?R2xyVHdGelR3cnd4SFk2T2lQdjgyRStUc0VZR0h3enI0S21nN3c5QzhHSmY5?=
 =?utf-8?B?bXFwWGlWTWw4RStSVXZCa21yQTd4cE1DTUdPY3NaWW02R3BjQXFiTmQ0K1JS?=
 =?utf-8?B?YkZhVnlmT2R2WTBMbGtRakpMaGlvN1RhUkZVcVZSZ2J3QW1ua01nZmJHcW1y?=
 =?utf-8?B?RkVDWmdTdTEzSVZXeDR1cndpb2ZtWlBodEJ1NXZXclpzVW9XLzRHT2hKZzkv?=
 =?utf-8?B?cC9OcFJ1QVdOcXorOXVMZ3ZrQUxheHVmTVdFVUhFdEJSL2RYQUQ2SGNkUmN3?=
 =?utf-8?B?ci9HdlBFSmNFam5WR3JiakRPZjJkK3JQNTZxaHRxVk1xM0l6WENQM0krTm5U?=
 =?utf-8?B?RUg1cVRFRVhod3NzQis1RmM4Slp3R1lLTWJncHpZVEVIQ2RTV0RrQStWSWJS?=
 =?utf-8?B?UGkrVGh6Mk9nK3RvZ05RKzFHMk9JL041K1ZvcUxKMWlEeCtQWVhSb29oM1Br?=
 =?utf-8?B?UllQZGh2c2RPaU96RnIvcXlHeEZhTjA0eVBLRU1MZDB3V1pBWGZkakpwWHdT?=
 =?utf-8?B?YTZnRnppRmY2U3U5NjBFK0hJMk1GNkh4K3VvODJXRm1jNmJOUDIvSGxOc2Q2?=
 =?utf-8?B?Y2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79adb3bc-c662-4fc2-5254-08dd2f02fbb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 10:06:41.5707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i46k6dkkNDhJ3HxQOkm9J1iu/V4HkTh2sawkoYnqAGzLgGa7rzAbWkcrNZ4o+kRcqTnOJNgnNr4SR+XY13wgt8kyvM6teLVUWm8fNGSYatU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736244427; x=1767780427;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=B8Qwy2S87pyEYGb92oFxDVlNO+pv7hZjbojE+udX0IU=;
 b=E5sn8wYCnNMIC1F10CDTprY42sijp81jPNPPIaPgsvNRRpnC1YffpJxp
 gEl1TpJzu1NBTPNEiR03uoxcdsV3HFAaXoBJHuftEU5H8skcgPg1OClOE
 0PFrTCXfGTQSXc1iBz948Tv/wepmx6oMqXkdXVdYyuVNhiXGItpFMEeKW
 b8RCWIGKyQ0VKcNVbZTXJnC37q0eJ9+FkA3jATJUi2bQ2u0tVoaf+j5Bg
 IE5PVJ3PKyX/TW0o+gE6KjkECeHMCHPN4NfE84iU8wNK3yWZC8NesnYHt
 2lyD1zweYh42S2UwlGaIEnQHxkTfAkhmpqy+KfsBmIugpPixT2mYdvgnE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E5sn8wYC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/4] igb: narrow scope of
 vfs_lock in SR-IOV cleanup
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBXYW5kZXIg
TGFpcnNvbiBDb3N0YQ0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDQsIDIwMjQgMTI6NDIg
UE0NCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBB
bmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxk
YXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29t
PjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJl
bmlAcmVkaGF0LmNvbT47IFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRy
b25peC5kZT47IENsYXJrDQo+IFdpbGxpYW1zIDxjbHJrd2xsbXNAa2VybmVsLm9yZz47IFN0ZXZl
biBSb3N0ZWR0IDxyb3N0ZWR0QGdvb2RtaXMub3JnPjsgQXVrZQ0KPiBLb2sgPGF1a2UtamFuLmgu
a29rQGludGVsLmNvbT47IEplZmYgR2FyemlrIDxqZ2FyemlrQHJlZGhhdC5jb20+OyBtb2RlcmF0
ZWQNCj4gbGlzdDpJTlRFTCBFVEhFUk5FVCBEUklWRVJTIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMu
b3N1b3NsLm9yZz47IG9wZW4NCj4gbGlzdDpORVRXT1JLSU5HIERSSVZFUlMgPG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc+OyBvcGVuIGxpc3QgPGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
Pjsgb3BlbiBsaXN0OlJlYWwtdGltZSBMaW51eA0KPiAoUFJFRU1QVF9SVCk6S2V5d29yZDpQUkVF
TVBUX1JUIDxsaW51eC1ydC1kZXZlbEBsaXN0cy5saW51eC5kZXY+DQo+IENjOiBXYW5kZXIgTGFp
cnNvbiBDb3N0YSA8d2FuZGVyQHJlZGhhdC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1s
YW5dIFtQQVRDSCBpd2wtbmV0IDEvNF0gaWdiOiBuYXJyb3cgc2NvcGUgb2YgdmZzX2xvY2sgaW4g
U1ItDQo+IElPViBjbGVhbnVwDQo+IA0KPiBUaGUgYWRhcHRlci0+dmZzX2xvY2sgY3VycmVudGx5
IHByb3RlY3RzIGNyaXRpY2FsIHNlY3Rpb25zIHNoYXJlZCBiZXR3ZWVuDQo+IGlnYl9kaXNhYmxl
X3NyaW92KCkgYW5kIGlnYl9tc2dfdGFzaygpLiBTaW5jZSBpZ2JfbXNnX3Rhc2soKSDigJQgd2hp
Y2ggaXMgaW52b2tlZA0KPiBzb2xlbHkgYnkgdGhlIGlnYl9tc2l4X290aGVyKCkgSVNS4oCUb25s
eSBwcm9jZWVkcyB3aGVuDQo+IGFkYXB0ZXItPnZmc19hbGxvY2F0ZWRfY291bnQgPiAwLCB3ZSBj
YW4gcmVkdWNlIHRoZSBsb2NrIHNjb3BlIGZ1cnRoZXIuDQo+IA0KPiBCeSBtb3ZpbmcgdGhlIGFz
c2lnbm1lbnQgYWRhcHRlci0+dmZzX2FsbG9jYXRlZF9jb3VudCA9IDAgdG8gdGhlIHN0YXJ0IG9m
IHRoZQ0KPiBjbGVhbnVwIGNvZGUgaW4gaWdiX2Rpc2FibGVfc3Jpb3YoKSwgd2UgY2FuIHJlc3Ry
aWN0IHRoZSBzcGlubG9jayBwcm90ZWN0aW9uIHNvbGVseQ0KPiB0byB0aGlzIGFzc2lnbm1lbnQu
IFRoaXMgY2hhbmdlIHJlbW92ZXMga2ZyZWUoKSBjYWxscyBmcm9tIHdpdGhpbiB0aGUgbG9ja2Vk
DQo+IHNlY3Rpb24sIHNpbXBsaWZ5aW5nIGxvY2sgbWFuYWdlbWVudC4NCj4gDQo+IE9uY2Uga2Zy
ZWUoKSBpcyBvdXRzaWRlIHRoZSB2ZnNfbG9jayBzY29wZSwgaXQgYmVjb21lcyBwb3NzaWJsZSB0
byBzYWZlbHkgY29udmVydA0KPiB2ZnNfbG9jayB0byBhIHJhd19zcGluX2xvY2suDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBXYW5kZXIgTGFpcnNvbiBDb3N0YSA8d2FuZGVyQHJlZGhhdC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgfCA0ICsr
LS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWlu
LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiBpbmRl
eCAwODU3ODk4MGI2NTE4Li40Y2EyNTY2MGU4NzZlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPiBAQCAtMzcwOCwxMiArMzcwOCwxMiBAQCBzdGF0
aWMgaW50IGlnYl9kaXNhYmxlX3NyaW92KHN0cnVjdCBwY2lfZGV2ICpwZGV2LA0KDQpUZXN0ZWQt
Ynk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQoNCg==
