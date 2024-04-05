Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB43E899A68
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 12:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8640A82234;
	Fri,  5 Apr 2024 10:13:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k2SQ6-RvQJxV; Fri,  5 Apr 2024 10:13:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C955A821A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712311983;
	bh=P6uUsXi51xFsOqwmsjuMmI/ClFQ/VhReqjCzFbbWccE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IT7E6RFwBRwEqtuDLy7XmxS6hqwD01n5cO7eAS5iPYKkB5T/SXRhfva+godmkNFM6
	 oyhio7hYaBvJUDYKdUpOpASr/o7B9o7eHe7AMtjrZxsUaZRyfxjBF9Mf7l6U8kxjOz
	 JTqsrqMJPwbow+g0g66p4EYfNrHT7AyDXp0XUQKyNEVaVawivC6z7SYk4TYZTOezCh
	 NIbwEfBclT91QWknIvzQ/Sq74/fbcHNR8EzakLMelH3a57TNS8ELN8boezowQcd665
	 1rbFn1wP4xpqawY02QYwYb+5jy+jsI650685RYsN8j+kzmrt4ulzF1RXkua8iCqMT5
	 HXJJdvys7WawA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C955A821A1;
	Fri,  5 Apr 2024 10:13:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 412AA1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C45282222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VhNsjn-_lK3M for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 10:13:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B0BBA821A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0BBA821A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0BBA821A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 10:13:00 +0000 (UTC)
X-CSE-ConnectionGUID: PGKeog7xTsqbbZeQXob/kQ==
X-CSE-MsgGUID: LtwHdJrrRJ6w/WL6KgLkTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7793040"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7793040"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 03:13:00 -0700
X-CSE-ConnectionGUID: 1WAbX4sBSLi5ddOrQO2FGw==
X-CSE-MsgGUID: vpLXmEx4RY+7xxaXcb4swQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19114214"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 03:12:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 03:12:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 03:12:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 03:12:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXdVTC1IH9qSlYIlyyQXEdjYBGROGqr91bv4ZBHcsCQSNDwrh782jC+MPpeHuCYhSao80Pi/T5lO+CEPofJSf8ivMzo6mWJMGnl8fSf0JhvtrcrmSPVQ9K+W7OCbkBlwkxVqA1EAzLRgB5XYLA0fu31qpTw9d80bsm3y2BkcZ++wuPmg10uDLPeOqSgGydVmFfxqilCDmDw3n+Zu6WX2zdk/aoX3Z1ibDVHrk3hxyNIkNyFUUZI+/5STqYGES625dmz3oayhs8Vx4jAHY3jnm57XEqiWYoXxGfKjfrTYxFV5tPc6LQBEz9EvB7sZNANmGdrHt7Tr0uWprBs/iRN8Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P6uUsXi51xFsOqwmsjuMmI/ClFQ/VhReqjCzFbbWccE=;
 b=HH7z4fPBgCCsZ44Q36P0bMZuyHDA7rD5pccPBuyunof98GQRVNZCWLNATM7NOZxaFqbNrNODRoiO9GSQFD0s7IWBqLYmMscqHejALeEI6udIDQZcloE3NOEsL8dPB5mHdrPfbVLT7CHAYc5SQXtJRbl+m2lQeXqb94GQnDsUypSk9T7pIfxyGtdGYj2IGFSmvcoBFcUf0PwseWLz+kEkq1GmIDBLSFbT/ziVgbl3WseWNbBQBUh1mEjmCfhtxfwvSy5v9yxvBQfx+pcdOP5Je4UELXMwTVJurIwsRdtFrJy3RYxmihQPLPpJbWyjp59yW2AKFypvV5Oz7og4zdqgjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN2PR11MB4646.namprd11.prod.outlook.com (2603:10b6:208:264::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.10; Fri, 5 Apr
 2024 10:12:52 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 10:12:52 +0000
Message-ID: <569849e6-0bf5-485c-b22e-cbf05ddaa2b5@intel.com>
Date: Fri, 5 Apr 2024 12:12:46 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-5-aleksander.lobakin@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240404154402.3581254-5-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0058.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN2PR11MB4646:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CyDEO1rrYFH1s0gqvM+blN9I65Z1oz+WZz9uU9D/eOo4XLFGx2aKwqdeIjHYpH/CVJ1kIWyFYiT+52FCml6Dc6CEBL7YBS3ZyCyLgYGQFXR9k6EfaM7e8GgD9+zpVzie4aDnWx7RRXhNqlyEoR12SezIipem/HaaqwN0yuwbkxshp8wCCtTkqKDjbVX/LYP4SusGGRRG4x1zTxUo0t7nFXtHqs/QHQC2ZbrRSjeEXF7sWM+2v37RNocGaCT5v1FlSFUEt16UAzGs/Vr3REexWwp3sxLqchoEIkNcotxlVyArA/s6TpLh46TWh3wjI4gYun+Z0VH1XLSTt8ElKtAhDepIQGa35vwJ49sC0BkzVkgfhuVWfarxZOsJaJRQAWzFSzhoXwAiRienm/hUz6m/JIHqPI5FP/tdQoXr1WBD9ZfI76mx6TFe8YpCidCp33IHZuELoV+dgCG7ldYylkXIUgh7Y/5lBm30hMy3+9VE/JyUYuIF/U31DIDsVs3l3wjxFSk0QY1Koeks5iEyybdON48nk0QP4NQDG0DXXfOU0k2xOv1nmrRfUgNazN3m7dcj2thtGYtYF1wAlph9RbErmqWGnKCpRDDehkZQgB99TuIr/U47FH7uc0wBRmpK5su9y934SHdJPAahj1dVJbOvmg4/O86qlIrPFCusuyJsCyk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(7416005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFE1QkNDZGMzSkZkUDZqM2kyTWVZTVZ0NVZ5ZXFTNzVYZEI5cFNBcU8zeGJI?=
 =?utf-8?B?VmVvc3pyQkJVUlVQczJjNXFQRHpXc1pqNERISC9FenNHLy84RTc1cjM5Y0hJ?=
 =?utf-8?B?ZEx6ZEFjWVFKMVg5cXpFQ3p6WGdkaTFEVjFzekJmM2FzODRFYldieDBoUUVq?=
 =?utf-8?B?VE8yMFdrellYd0VCbHYxYnhHSkxLRXFGVEowdXdZYmtPbU9lUmR0REFuck5h?=
 =?utf-8?B?MEVGbDIza1kyUEVXZ1I3VjJFZDdQTkYxZmpvUC9RbEx1aldxbzgzV1l2VStF?=
 =?utf-8?B?NE9QeTdMK1Z6dzAzeEQybFA5WlRDNnBFNHp0d1MvbytScnk0dC9HdC8wNjhz?=
 =?utf-8?B?dURnN25ZVW9EdExHeWczTFhsUEc3VXhyV1NpNjVSMG81bS9ydGxkR1I1OThw?=
 =?utf-8?B?eVRhaC9NbGZEcTg3UkpIM3E3NExFVHhHeGp4dFVraEhLam5HVnVvY1FUSWpC?=
 =?utf-8?B?YTI0Q3FEV2NtN3E4b2VSUVJmZEtveXBxRjJmcmpMbkgzL3lNaEc2aElUajJ3?=
 =?utf-8?B?TTUzc0dmYXRlQ2VkaTIzcDFwMXZETXhzQ1F6VmlEZ01JNEFsZHZvZVphWFN1?=
 =?utf-8?B?SlFHTS9oOEhKdEs2L1oyRWlpVjB4d2c1Snd1c0xQRFdyNmV6VDE0aDlweSsw?=
 =?utf-8?B?OStJOWpkUzMyTEZ6RWZWdmtlVDlpdWtndFhSc3R4aU9IRVZGMEd3WHJPZ0g3?=
 =?utf-8?B?U0JNM1Y0NHFpdUtPeFNjK042SGt2dlkwRDhYa2liR05FbEJGMWh3S3B1QVFZ?=
 =?utf-8?B?WFF4WlVLUThpc0dHOWV0K25FVGFKaWk0TVRwaU1xRkRpUHFvRS9yaWQycUNT?=
 =?utf-8?B?eXI0YW5XYjJJSnpyUFNGeEs1NEpKUi9RTDVxOVhDZllNVHRWZmdWSG8vZVlj?=
 =?utf-8?B?MTk3YzF5Y0t5MnpaKzNnM1VCMGhYamJJQ0ZIWnFUeUpRclNQUzFkZzJwOElr?=
 =?utf-8?B?Y1d0b1A0T2tuZGJseFRjTGRZR01yVXMrSktrZUVlQUZUZTV0L3FNOHh0VDI4?=
 =?utf-8?B?aEErK3JOdWc4akxNVGVteHFDUVlTSkxPalpCaFdnWElkVnp1d05aZlJFRjVa?=
 =?utf-8?B?TEFRMkVFUzdGSkRhZVJHYjFiM2h3RUgrS3NyT3pmbWxnWld0amMvWld4ZmhT?=
 =?utf-8?B?blpHcUxUYlFIOFNDOVJQb2Z5dHBmTGlnUVV0Wkcyek9KbHB0UjZldjEvNHJp?=
 =?utf-8?B?VE5MNXlBZDFjZElCOXZaUjJUcS9VNVorelRqU2FaUDE4UEMxNi9ScWt4dDVx?=
 =?utf-8?B?Mm1WRnA4VUUxeFI2K3VucS9USkpSWGxxWHNkNHZrSEdWb3BSbFJPQ29xem95?=
 =?utf-8?B?UXRPOVNKY1puZ0gzRmwwdXJ0dTd1alR5RlBzQXJDdmM3bWdOUTVsZGlzRmQ2?=
 =?utf-8?B?THduTFM4QVpBdGliWVFwQjBoT1ZBdmpKQnRtOTlXM2srK3VWbU5GTDRycDVF?=
 =?utf-8?B?YlRaTE1qQXl3VnlBME4zU0ZCVXBvUVFlQ1pqQVkxWnNqaVFVTVNTTjU3U0tm?=
 =?utf-8?B?WmtHcURBZFFPK2F0eCtramc4WVFNTG1Mc29oZUxNVWwwMXlJZitsUnh4bXJq?=
 =?utf-8?B?ZGppb0xzSVpSczZ0aEhjNlFnVFlYQUdwajM2Y1libytvWWNyaFZpRVdaQlhK?=
 =?utf-8?B?UlQxSGNvS09zM1BOazdES3FaaVk1L3hDK1l0dzMwemtYS1RrdU5kTmNjWC90?=
 =?utf-8?B?OHo5Y0syazB5UG1TZkd0RmkwQXlpbEhNWUQ5QU5vWG9LK3FpVUlwb2lqUFFq?=
 =?utf-8?B?ZXNBTTZiYlQvMjNqTFVtMXJTM1JVc0xwb1hDbXVNUWN1VWVzelRBOEUreG1q?=
 =?utf-8?B?WEJwVGhuYlR3K0RsOTJ5azYwQ0xWbzFDYWwxb3F2RmM4UE9DLytlVHl2dUlr?=
 =?utf-8?B?VzBUaXBjLzE4RG9WeUhwVGtNaU9ZK1ZMbGswSllRQU5IL0V2ZG1ZcG91WS9W?=
 =?utf-8?B?ZFc2d1pqeURMOW1OQ2lvNU5ValR4N0ZzN0RUbWdGUEorSWtGVXVYeUZVb3dP?=
 =?utf-8?B?R3F6UnFBVjR2UU9vZkxaKzZsS1l0OHBCVjRBUWRQUjBRSldDbUc0cThaK0di?=
 =?utf-8?B?MDdna0w5bEZSL211YS9xMHI2aEhOOUlkdHR4alFsQmROcnQ1VVBGaUdMVmF6?=
 =?utf-8?B?MVVUQVh3MGJaMnZWZjhPTi9Kc0dXcld4SVBxNXV5aUJ4bkJSR0lHaTZWRmxk?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96ca8373-bb2b-4ba8-8f03-08dc5558f416
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 10:12:52.1634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kkMraC9CyJXnzTm/BBtt67uwFXAr4zjmcbBItljvtG3Av0nRu5v8a3H/TB6gt2fBQ6m4xgNQTH9l2hmkdANhaeU7suWz4RTpF+g+rN/UiIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4646
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712311981; x=1743847981;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4ufEReBR6f+0jvz75erO6pV8TUFaU42WCIfMRwt/d58=;
 b=BNCJdKY363mZ35YMUHL5+ou4kKylkGejXw9Dgk5y+Nqjkr5ewkRD+Pri
 tBFCxmEKTiY2ocFoNm+yIbcxjZG0uGcmON8N+XfwCzhj0mFsNJ1v3+J7+
 zfd/HwreGYhsdIBGjGQw3T9nLacU6+BhU7C2ktjGk2qwRJVavcB0xVfAB
 RwW5URhyORnc9m43vL7romJZ0eV0CQfj+xRlgb9w29HNtZvqVnxU8lv/l
 Y5l2AsrPJHNAXTgF0ZLfFs4EHqM0POiA+T8+mmbmFetyx8gr0FyAkGIjf
 IHd6tWsgMEpS8mg/z63uv7jHpgPGchMSmU/f6DWbE6OhQbQqsMvSgFGDE
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BNCJdKY3
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/9] slab: introduce
 kvmalloc_array_node() and kvcalloc_node()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Yunsheng Lin <linyunsheng@huawei.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/4/24 17:43, Alexander Lobakin wrote:
> Add NUMA-aware counterparts for kvmalloc_array() and kvcalloc() to be
> able to flexibly allocate arrays for a particular node.
> Rewrite kvmalloc_array() to kvmalloc_array_node(NUMA_NO_NODE) call.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   include/linux/slab.h | 17 +++++++++++++++--
>   1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index e53cbfa18325..d1d1fa5e7983 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -774,14 +774,27 @@ static inline __alloc_size(1) void *kvzalloc(size_t size, gfp_t flags)
>   	return kvmalloc(size, flags | __GFP_ZERO);
>   }
>   
> -static inline __alloc_size(1, 2) void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
> +static inline __alloc_size(1, 2) void *
> +kvmalloc_array_node(size_t n, size_t size, gfp_t flags, int node)
>   {
>   	size_t bytes;
>   
>   	if (unlikely(check_mul_overflow(n, size, &bytes)))
>   		return NULL;
>   
> -	return kvmalloc(bytes, flags);
> +	return kvmalloc_node(bytes, flags, node);
> +}
> +
> +static inline __alloc_size(1, 2) void *
> +kvmalloc_array(size_t n, size_t size, gfp_t flags)
> +{
> +	return kvmalloc_array_node(n, size, flags, NUMA_NO_NODE);
> +}
> +
> +static inline __alloc_size(1, 2) void *
> +kvcalloc_node(size_t n, size_t size, gfp_t flags, int node)
> +{
> +	return kvmalloc_array_node(n, size, flags | __GFP_ZERO, node);
>   }
>   
>   static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t flags)

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
