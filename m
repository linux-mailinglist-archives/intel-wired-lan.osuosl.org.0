Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iD21NFrRGWoFzQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:48:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF4D606D16
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8C1960D9E;
	Fri, 29 May 2026 17:48:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fD-3DkOuZfm6; Fri, 29 May 2026 17:48:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3157F60E1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076888;
	bh=6rUtK7O3uwuH9lUqs0VwbOumysyKBpkCvggbQiS/+0A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0b6Xdi+OurT0jjLif0yiOBUrqCUa6oqjPTjmVyDQXnXCfKafk1jyRiluwFNMW6aLe
	 33Lgb7dLmVZ9aCeKjcUTw6fYaTXLYf4m64N67WI78Slg42M8vTCGgz+dufbIzeuu/s
	 dvRRMYUqv5VzddZqhG8QoZyj8XDjVOlZ2u0mDvUZSQaRaa8u1SCO3mzwIygbr6fQh8
	 yT/jC/15K69f4qCch98jyVtlXQlH1mWjIgC+7GWfEwrkXsIBCXEWBUA95uUGagMyce
	 cE3/Jh+9Q0i5MvroOoNm+27u4tCDsFENPMKdsfW4W2JsYNxvTYOXJFiiPpobVHYSIG
	 H63wH2VgCHxCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3157F60E1E;
	Fri, 29 May 2026 17:48:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 49308F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 293CF4203B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:48:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Bztp2N338-A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:48:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34DF242074
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34DF242074
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34DF242074
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:48:05 +0000 (UTC)
X-CSE-ConnectionGUID: tI64YUKQQ1+FYVa6yhn4/Q==
X-CSE-MsgGUID: fuE8rk7rT12B8n/2beMS1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="83511248"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="83511248"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:48:04 -0700
X-CSE-ConnectionGUID: YqJHYXuQQWCIoE2lEBalZg==
X-CSE-MsgGUID: 78dB7Xu3TvGjRDa0qTZ8SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247199451"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:48:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:48:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:48:02 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:48:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NbBLSp5oCcR4p4X+yD9Fk0kd0KP422TP7jZSTCGof8T4LYlKjk52DFOP8/EaD3rmhmF7ZFlNj8+xtnHDo4EznpSeq1gdcOvZhihQKSdLCyxkVR+/1/CxJ/iX5XlRfs3zCmjcWMhCBit7kfyyyy9Qe/816NTueP1iVPCFL5eX/p1467GN+tkO3lxLXBnYxX/LkmxDcWwBv9rkW2yqw9FwBxqG0lCXb2SJ3t0h3waWDaGWxqApi5ltbBmRuesfUDuqseyg2IkrEBsXMv0AJ9ME6Nugv5hG5aCthN98QLqaOu3UkTgvp1vnGGmLpvSuUq3EkJUQKtdx+OOdbdLs609mFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6rUtK7O3uwuH9lUqs0VwbOumysyKBpkCvggbQiS/+0A=;
 b=mlwhDupbd+Ug1EmO/Lh5XCziNnWT6yoozz72I9XWcxO1GV/yU6gx89He+eE5nls9okrDaM/jWECQQyQy+iWuvBjz4JbsXzWW6f8AsZXQIJOCOX8LGbdPIj0T5DsyuQEezmb4VSovg22TPlWdLfAPh8r25zPg6iiE9sq6EbkZwShmrqm9zqbLY00AZgPUaucQLvmfHM/BSSrw2tyCJti0UyFEtlFd2/kqpMO65OsXv5/JUFXN50cMX+RK5cuLIPMpXAWrQT6N+mxC9bjA6HJoSWWHvbN4o2Yip8fqgZGwmuJ3EDuTPYx5Fk2GwuzyEaamU0Rdhh1TaAQCjV0dxsCU6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SAWPR11MB9760.namprd11.prod.outlook.com (2603:10b6:806:4c9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Fri, 29 May
 2026 17:47:54 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:47:54 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 09/10] ice: re-introduce
 ice_dealloc_flow_entry() helper
Thread-Index: AQHc6SCANTSAwMqbCEmVbCFZLEnGbrYlVCzw
Date: Fri, 29 May 2026 17:47:53 +0000
Message-ID: <LV1PR11MB87901B9554E1D3870CDAFC1590162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-10-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-10-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SAWPR11MB9760:EE_
x-ms-office365-filtering-correlation-id: f9150b84-4fdd-49bd-a8c9-08debdaa6930
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|4143699003|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: uMtycReWG6SNgh65AmnKaBAfnlIBy9G0CkBwP7JV09S+ncV7Ygk7A3Hmtf0WG4CqsfAP1UBYngOI34OfWNOMgOvELR8MSKGMDRcTXTZJSvl6/zXjY0tSP31vWlhsd39VacJYyvQcMVvcFVqxV37hAKWX2KzCHigG7mxrJyK3XoyC2vLknNwKKm6wNw4D89tcG9thcjeP96saOAhShsQBpcedTI9NqqGspVG5nK/6bB1BseRtobmqBd0jWgjfEEFfHVW8NmGFz619nPtWwhUTyu+Iu/5jWV5DUe2e/rBzG4a+2QYU6qNZla5qO3ybvKaHUMc9Vu8SvoIbsnl0XDahoD24Cxy/EUWB5rhngc7jN2MiMIYTkY1CXZLdGdG3CVx94IQBCigChjU9ZMboZ/VQsSeq97ba7BEBXn392ryjjLjsE3u+Khl09OBOspwf+ZQzwz88z3LGVOQWLG1QvbrEh30xTRcJ6jzlJrCadpup6ripka6/L5HHnS7LrkgwzMOhF8Rb4F3JY/FFC8si1Y+AnSk2XNTfSOqH/FClc9iDVOALv+/Q7u/LVZ6ocBlwzy+LvdQAbW9hkOLnbPtOvS58bUn3VwuPYqK/KVz0ZvhSOAoBxAKhX7iaV6XufYyB7NrDlqmPnLWxe3wVw2d3tagdvVf4lwQ+bZeLmXIEeSyWIB2C0NZTQuGfpfAWUT/zoNF9Wc0bUGz2mWIis44xUgn6XQ6mm5TgdJwTHTAao2wVBbZxwrukDccPB6vEUMjIR5JZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tW3KjPb55htiqN9xGSKJC584gVC+pK3X0OstEpxge9sN3ETl9l8eF3OwSBOG?=
 =?us-ascii?Q?NNeMWKDo+mYFj55gs3npk72/XqD4fAIzHEFG4joQ5ihr4GtAYBc9OSERGB8I?=
 =?us-ascii?Q?2PfOIge+w1znIJ1DccKGDMEB6fOefF8KWbE7duDd2F/IYuXh58qfD1MbsBEt?=
 =?us-ascii?Q?I9OOLeFSVZNEjGafGpDaS+zvThtUTA0J6rZQqvBqLdiNpxPs1HlfQcaWp2dG?=
 =?us-ascii?Q?sCWX0zJ/SFac5npPb7EVh5tma1R06YDdgi557UDY27Zaiz9pq1DLonl0zO6g?=
 =?us-ascii?Q?EJaFOPxDw/zZZ6ORmO2h2/mQkpuzX0UqdghxI5ZMSF6x+m9pF81a4mXJbxxN?=
 =?us-ascii?Q?bjYuA+foa6nN1y6gG+jdoQgBcr3jwDt79LxR133fqRwqtCofpTIK9I0Usnwy?=
 =?us-ascii?Q?gvAFkQQs+30qS9cRKlpV8e+15uWuJE5kV4M2Q42Wj0z/BpxXkDNG6oDksuVo?=
 =?us-ascii?Q?AEISsr6ClACB9bc7XmXDNKrBhtrNLrFT2bo8E1tHPlRYMOIzWFPcpORo5jUc?=
 =?us-ascii?Q?EgsrpriMQnN04aNgEw0kIMoL8y2ZYqhOeMuUBvrTu8dgsN/Zzts4ak/nWHX/?=
 =?us-ascii?Q?VO1FmT5fbicyWjSH7ZFtx6llGAtHo5dlNsc4mg6/WuhlM5CkwN4Yqi3V+HGu?=
 =?us-ascii?Q?mausTbjDlNWnTDjpVdPxjwQQ9khPgxzsA0NLcQjgvvHDygWTxsQCKS07/nN3?=
 =?us-ascii?Q?4Dk7dSho2Josaol5ISLe1X4tJMbVRGo+hmyk8ITX1mjRvgnsp8lP40yuUq+y?=
 =?us-ascii?Q?I/KVM53noapNTftZVcQg0YvBZlAr9Uu/2X+ux0DuVbwxYEqGVBNcy+OtprbN?=
 =?us-ascii?Q?+JW+eRO9IlUFbvwalUybGrqjveLf+5jBy5OnKkDwwC1u4gPM4kZkST+NReae?=
 =?us-ascii?Q?ynfsFyIAsxPD+GcTqnWwEu5zBwUK9nNz1249STv6kwg/503Q9wwDtMqOTzVo?=
 =?us-ascii?Q?3ZnRNft8XQ+mlXqSR8YGWFBQy1UyzxkK0eGNefdSkpdrT5NkxN1A2TFnvGqF?=
 =?us-ascii?Q?7MfyQPcdNj372G2k8FubrmNjGsSVr5YIVvc0rDgXyAsjEkR1mYlHPG8aWUb5?=
 =?us-ascii?Q?575brq3n7guj7hxYHZ/Tvhp/rdtSHVjwtBYoNserc7NecqpXCKdvpVNg8/ou?=
 =?us-ascii?Q?yNieKKdP7jnlugji9Wwu2ryc7DEwLZVw6/2WmrHduPjNjVuVjttscMXPVHJS?=
 =?us-ascii?Q?XE1is2M1x0j14e1FuepjX312rD7XJjUuJB/i53tVT/gp0J0IoLJBmnTixar8?=
 =?us-ascii?Q?GgW4zsGdqTWKKxgjolEQwVFGsPvSVjPhDB4f9ywQqTRpadNmLegiaRjMHW92?=
 =?us-ascii?Q?0+PbK24oye/V87+FbwNCM0FR98z39C4vuHFuL78CJhqgPzNOy4rrfF8ooSGJ?=
 =?us-ascii?Q?Yc0GYvbu0nLQeZgNU98huQek93vM6ZEH+EbYMlBM7LpztQjNQDKSQRtU9Fyu?=
 =?us-ascii?Q?wJ2RYeQ2M5lR/PRv0S9PUuiGkcMrLWbToMlz7e0T2w/5/8W8yPs+e2YWXvi/?=
 =?us-ascii?Q?Kbf77Al/OqXyIt5/XiyMndKqzZd9RwvBuRVAW9sxEycPd1n81XYD3MVkFaAp?=
 =?us-ascii?Q?arzkSYhtLE3p2PfPbTWoDRKah8sVEcsaLf3KWfbv21oxWigYatlP1jo7QY5t?=
 =?us-ascii?Q?zVKmA6GEMQcgGF27zhvff+rB+tsSBq452qEiz+7+wKtpjhMgpPuKA/sTvO0u?=
 =?us-ascii?Q?4KtmJ6VZxv3eHYSNnopjmi0I1AuTGZQnTf35BoDdlfYt9xJc5R+XQoENgc3Q?=
 =?us-ascii?Q?c1F4Uugp/Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WFgGbwr+HBrWzf7Ska5OrAwgJmPyjFBVRzzGpQxvqRXJJnXoNxVg0S2wAr4xsbHqjioQB1o21EX8BHvEHictPjafc3UhoQYvP+pqOtSMEjM2qdzeU6mollQ7g0ZeiwzTuQGFM+wOIt5OaUW5kPuJEGEu0QiHis4gJe2VVSjTFckJx4gW1UYtfQMGEmB02yuCdDfHXqnejWM0/jUMP6vGX98iMVt6kfBML55z+UbCGh/vezwcNfY7M6WWf3ipk8SSenQK2bYHnhQOpO0OdWzWjrx6c9UImfTjV6qyfSM9Cd+66gfPLxVIAERJkkiFWCBzoEWGdqCaOf06YAfc1YzA5Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9150b84-4fdd-49bd-a8c9-08debdaa6930
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:47:53.9670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c+/eRr7IOrmPs4B9ChQ0BHODbKQnquzpdVbrVx+OHoLEWSuoy9QZIWbpTSjXXOCMIqrvoR9SfQCwSa4Z+FUq7U5vJZmWowKJpBQ2KAPdAKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076885; x=1811612885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6LnOC8Kv3kkT9fhPJgpkrnuOqMbr+OLoUFSTz3ZpM5w=;
 b=Y3KEknpsUuIuqPt9Dwqnvvo/XYwbAWE4lrUQMBawbLa6iosQLHiK75aa
 H5X3lRKsxIXc6uPqK+Y7VTqPbtiWYra6Z+fwqZ8aF7c5CXC9S6fa2mSjZ
 WNiurIz4Tx+qk93Bl83DcENYHq9iF3tWYui6dRrR1+wjsAY3Xc76JN2R5
 MLdSlBMRPp+2ObZUZNJ3ge8RftRcY+s7pF9V4YM8LkhqEKvLtRsURbAyv
 2Zi87De9Sdi1I3WHq8l8/7DmeOSg7GwBLrikqhlqlUT0e90qI1VepDafL
 sLhLJbg6YaX9BieVd9enKt1T4tTlNJ5eSN9b5AUvJbbugLBGtvrsvTjOx
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y3KEknps
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 09/10] ice: re-introduce
 ice_dealloc_flow_entry() helper
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 2DF4D606D16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Loktionov,=20
> Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw <przemysla=
w.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 09/10] ice: re-introduce ic=
e_dealloc_flow_entry() helper
>=20
> It was removed in commit ad667d626825 ("ice: remove null checks before
> devm_kfree() calls"). Now it's useful again.
>=20
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v3:
> * ice_flow_acl_add_scen_entry_sync(), ice_flow_add_entry(): call
>   ice_flow_acl_free_act_cntr() in unroll
> v2:
> * Add this patch
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 61 +++++++++++++++--------
>  1 file changed, 39 insertions(+), 22 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
