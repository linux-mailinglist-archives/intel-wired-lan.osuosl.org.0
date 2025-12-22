Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BA6CD564C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Dec 2025 10:50:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99440406BC;
	Mon, 22 Dec 2025 09:50:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cE-Ub8oTCu0V; Mon, 22 Dec 2025 09:50:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 799DC406E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766397018;
	bh=s1EsmqjzDPi5KzjYG7mjT79AcLvGjBvwhqgYloRJWJQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tCHuGZsT5f58hLzu2hXCAwa64zH9yNsnqKBacFTjodigxrFqJkKo5mgMmhDG1N9qn
	 mgT+XTPsofNJ3mWOaI3QjVnjEwXItDszaHd2KEhn2utm5uKboU+DezVitTtlw/l1uq
	 ntt8O6ZUD/LgHD1rFTo9CsfDJeT2PqG7v63QzdnfuI0ybVg/KIZC+xmXgD6VzON3ZA
	 WUlzZ/8KAPTvsplQmQJ1BRx61phleO0t4Yqu1GnYKArhGY+XzYME72hEt2/aCiS0by
	 A4sj+D4rJmvm56kqdiuzfe0bMATr+QK3bEa67GsFGz7L8OhrQSbmLFITIH+mpO2WS8
	 VxN46wEvjjAlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 799DC406E2;
	Mon, 22 Dec 2025 09:50:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 39141119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 09:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A69981445
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 09:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LmJ7gN1eeyQt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 09:50:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C746281432
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C746281432
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C746281432
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 09:50:15 +0000 (UTC)
X-CSE-ConnectionGUID: o35Y0IaIT9qeKbLtGe+c6Q==
X-CSE-MsgGUID: KLwUcZW1TByllAln/B2ZUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="93723605"
X-IronPort-AV: E=Sophos;i="6.21,167,1763452800"; d="scan'208";a="93723605"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 01:50:13 -0800
X-CSE-ConnectionGUID: NqBA9d1rQaWRCLrfYTi8FQ==
X-CSE-MsgGUID: Rpd0Ds3vQgiiZtoZzkYQqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,167,1763452800"; d="scan'208";a="230503284"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 01:50:13 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 01:50:12 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 01:50:12 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 01:50:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j8v0y+e7kJdecULpwUxYNIRQ0iQQh9o6ySqwIV0A/J4DLU6uo1G8E+ymh9KOLvX1iGQyf++6JnK+Bt9NKxh93RNXhq1B9jKISDvkj4lULxODjwQeRxpraxUR5lQCCGEvklGm0nNVSMXGU4ZO6xf3VVGR+oAArpiB+c6OXL65ZvUm34ilCcA0Ag0xzNatmYpjLjT3Q82t6Z0tOUYc5iyVGVKd7ZCyQk9NdXKy7tOPKIzswqH2+GqlghxBSFF4/UcnS2R+eYSNuBbj5APrwLzrN/We3hOeYAwiU3fzO1fFeW5EmgWK724Qlycn4F9izJfYipo27EY8Peh3Lj1xX3YVDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1EsmqjzDPi5KzjYG7mjT79AcLvGjBvwhqgYloRJWJQ=;
 b=siyd28nOw6SusuQRMM+ZR/wx2kvONUybRXc1yMp1daJx/c9eaWKSWUE313b4g/L00fnz6jxGH/7iKvv5pCSjm9J+cMwj+cBybcLsIIiHrXpZlJ7lGVF+dPdljc3X/YnDgsiJv58XERYmyNkV2ZcFXjUPsKmTr5jB+Z3bntKqkVG427Z+fj9LmfpUywFcWhluoW4n5QvAWw3lJtbJtucSG7t3tK0B1RLK0mOCCIRYxSKJ8JV1TttIgwXoORdWE2DAkoViOblwH4IFTsQygeJiMDQdzsW0si5QsT+w8zDzSn9R8c0WoieezHqgDbJpuPSY2AAqqXmIbu+3Ru2knRqJXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPFE70B31BEF.namprd11.prod.outlook.com (2603:10b6:f:fc02::5a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 09:50:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 09:50:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHccabXYSYHWdB3g0WFKTGsNOU9QbUtRcXwgAAOmYCAABjHYA==
Date: Mon, 22 Dec 2025 09:50:09 +0000
Message-ID: <IA3PR11MB89865509D618FEA7EDC11DF5E5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251220114936.140473-1-vivek.behera@siemens.com>
 <IA3PR11MB898607BDEF754C95744048ACE5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB539248A2C18B9B9EF54957038FB4A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB539248A2C18B9B9EF54957038FB4A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2b211175-bfbe-4042-b434-b753fd4a9186;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-22T08:01:59Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPFE70B31BEF:EE_
x-ms-office365-filtering-correlation-id: 22bf3c02-170e-46e7-624e-08de413f7ead
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?slUXrgdYRO191zzcah1WAJ1DQyqJE7MPg+LvMDlva2RuGyRqXkgfPfFQcB?=
 =?iso-8859-1?Q?LZOYY6xR0GRX40BVOhfRu/Tx+X5/XClybOQEnIGehA4athqeOwRDUbkzwg?=
 =?iso-8859-1?Q?aVLdKVuwwe2mNjq0vmzNxr5cgIM5+qJjCUY3vXMlOgVRxdjXOdmJnn7tmX?=
 =?iso-8859-1?Q?1Uh4C6FDj/35mw6zrakI/rNH9HeeNjzwvfzBwH7V0qcdONEI2EyPOJ+nM9?=
 =?iso-8859-1?Q?dmipqPxN5YNOAEZxnVLw18F4iqYrWlLuYFb+JD7Ha5EbBl/Oj2lex6guFS?=
 =?iso-8859-1?Q?GefFsCBkmo3AHDaYi0xCN2OkLU7aFBizCPSn8YLyxaZeWBwAETOe2hGEzL?=
 =?iso-8859-1?Q?GMQ4KZeWoqnNll2PkJFu8+/7TN/aytd2RA+9Lnb6Is2FW9uQZcmYMiIyCQ?=
 =?iso-8859-1?Q?gn6EpEaWa+RoXUJvj1YRcif73pY471bVD65BHkNLif90j9dCvfjTBQYgRN?=
 =?iso-8859-1?Q?1uYrdfXCU+W8dev1dsTUiu0MepMdkBf/8psHkrwI9KVriMtOPrv7eUN/wv?=
 =?iso-8859-1?Q?nWfoLp/GHtmNzRHJTkZyxgUERc+k07zUfw3qUzwecluOOiNM0DRIu9deQ8?=
 =?iso-8859-1?Q?w48l011PhFf8znF6grjawJ3vBJO9QGbQoyKvSHskod0yBxlfkXuv5qm8z7?=
 =?iso-8859-1?Q?r0Lky0IA2/9EjGb/+h+olCvyQucDCG7+2fHRWe5dz5VZk4rGpGrbOpbCNV?=
 =?iso-8859-1?Q?tP9UXrPfDPPBNDkL9xefF2EGIboqS+BrYaeKWvZh0M+IZAFxxk47mvJJlM?=
 =?iso-8859-1?Q?nZP3rJHV66HYRRO0XR7387cRaqDOVm/omfMB8HWEhYRgfBUwZS04cmElwX?=
 =?iso-8859-1?Q?YhXQgWxpGMgjGa9sMNWIP042ejyE1cZ6jh5a2yPofPRBHNMaYH6QlTJtgE?=
 =?iso-8859-1?Q?m2WZbufJi3jm9+h+kbngrUxlz0xEfWPatjydgDq2t6Vp9p/aHr3RdRcNbK?=
 =?iso-8859-1?Q?LaAb5ChzxqDY/WeIebSkirc7o3osB0WxboEwsE62P3lxgw3Qhh94hZMKMO?=
 =?iso-8859-1?Q?GUQbnFt/LkrxGq9H8lBv9R3t9wcJotO32D5ogbSpgSb5GHPSIEPzVTsAV3?=
 =?iso-8859-1?Q?t9Gw0bDbBmMW2MUXrDIrQtclP/NpwzcCvmn4RWwzGWKV0PhA7FGp5zMXnb?=
 =?iso-8859-1?Q?kmB1MJtwTx9Axkw9ThjOv9yaIja7xWqEcG34B0HoeMzhQ0mT2pYrDzWzs/?=
 =?iso-8859-1?Q?8YQ61iZ7DhCJWIwxmnxaD0TLbtq8LWue9UtBhKY934qr/nK4PoDe/XMG3R?=
 =?iso-8859-1?Q?Sp5K/WpzZcS3TqzF0eW0gez1wuPH9gk7duzOteD2mciOvt23VWgJhP5uO7?=
 =?iso-8859-1?Q?/c03PZBcFc1T64r2teyUUEsMNQp6mzlMkcBovsz6UhWzNcbj9sx3wP7ZG1?=
 =?iso-8859-1?Q?wsxec3IcrsNXfWkNljxYuKyFOQTrTsNRe/UT3VLYak7/GEIhoVolWHNoMf?=
 =?iso-8859-1?Q?ZWJ5+KeKpHiT2k4hoCkQLKMLMD/MNJiJPdZiEXh1E1F8wUPjQjsIXYJ7Ox?=
 =?iso-8859-1?Q?6LgcxVBTMVZledLZS+gZof/2X0wtDU6Z/fRhOSmeLtxP8p6W5qBPbIimw6?=
 =?iso-8859-1?Q?HBzHtq1wRyjT6h7sHAmgXoVilUBdX026YBzEY/7Tx8XOQ6EHFQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?D28jQ5Q+izW69Qpv32tzcUdqPCbeWOPwdIxMrJ0dxoGZbAfADqZCzKWZwm?=
 =?iso-8859-1?Q?xnKVktRSLoWhv7LH3T6rjrx9vWFZuFtvVh95IL6gj6LcMU+v5m7Kc3jnIq?=
 =?iso-8859-1?Q?j3ljag8H3aAWxLoZDsj6LaN6lTjVDSJFZCRE1/wEhDRN1k128L/Vya+Rq7?=
 =?iso-8859-1?Q?1UmmSBajFU56yoFM2ldPl5gG0htD9A1NNu3HbYU8ryIG1AFNF2zynya9yA?=
 =?iso-8859-1?Q?Xt+YKSS+wLhuFzS0DKMy13YFf728W2KjKBCyWXybAXkWoZbbbJSDaL3GDI?=
 =?iso-8859-1?Q?UB4aaPGbuDKYw4qwXiAFFlOSSaJsr/1L41RC9ipSAhZZZyWJwsiXSqNdPe?=
 =?iso-8859-1?Q?hOEErxE4NDsfUk+JTH10E0XNxFACT+qfZmCVxOqN2z3MXdYvXcXNbJTgXg?=
 =?iso-8859-1?Q?to4ngrl9CepdvT4IeEpZf0TOINEdO3UrPWtc9WTpQPjvQf72AIFt8X4ECO?=
 =?iso-8859-1?Q?UPrfePyG93XtKcDotbpbRh0pebLbipRtA6uJr5+wX6dfPpVj4wZCaBpEqu?=
 =?iso-8859-1?Q?Rvqr17L1UDtQ2fFCCLkdm9UIxXGAqY3Mn8BtYyiXh3Q8D+LVTWEkNl70of?=
 =?iso-8859-1?Q?at6z63T0pF2sup/iaYu//ieL5K9G/nvLxN0cCrsrNZBg/LDSDycun0g8T4?=
 =?iso-8859-1?Q?ybdEmVU9JssU5lnlkKvvaKWEJN19+YL0hagETviWsk9KAAULwCh2hWdCmr?=
 =?iso-8859-1?Q?85vME88F6ylD5deMFpULNDSYCweMWXrtbeoCqTXlDswJCuIpFuwdM7Ew3a?=
 =?iso-8859-1?Q?t55dLrZGU69FhpJZ60eQKh9TvUTJblP7TkcXKXiUfzx0qPEx/pUklUTlsw?=
 =?iso-8859-1?Q?wWjBMLhIWhuk9jQ+1Hoi64Mv8rV5homRDtgoWcOG5TbnTdbrQ/twyCbUsY?=
 =?iso-8859-1?Q?wqXDIt/AenWIBDrJXndF8zqBetIYFfNx9/ziizW+ojdsNencbJ/Bzrvr9X?=
 =?iso-8859-1?Q?EhdECNwztncHxb+gEruaKI051DfnP9SBhRpH7/nelfGKcrDPo66j5U99fe?=
 =?iso-8859-1?Q?Tpu7kZIrNJ4lVHKsV9XuWM6SYjCyU4vTi76zKyy5C2vDeauu9rtHIOuC2o?=
 =?iso-8859-1?Q?yboazdEyK0n+2TtVjD6eKeSJxykt1hHLWPGArKva/S9BqfHPurRUAKNZjc?=
 =?iso-8859-1?Q?w4b7ieBtq4VnBAnI5nKPt41pZfhh9GZd6e+8oImZmDVN3/B3uQxRXnhag8?=
 =?iso-8859-1?Q?3zharI6MiqC7i9NiQ/TwPO/OyfY6nCTb/WFtjWNGM3GbjQfKQ1cSKHj+Xe?=
 =?iso-8859-1?Q?LdhTSKOE0+53ByuLsTlrGUNOQZkYHVjF4VkTT7joKi8pK8ntNRX6ZNJkje?=
 =?iso-8859-1?Q?kNLX4aqNnEZlCtJAP5MVw9QeVpGnmZIfffeSE5d6E+HCneadCYP8x0CyiL?=
 =?iso-8859-1?Q?oRDSuoSVxTvNXEwc/99YQMv268rYz9uEbs39kRkMM+JU0qptVf9h83loJZ?=
 =?iso-8859-1?Q?O/PQIrzMmZwCz1GUns0rR1xv8wGMmMho7i4RBDHl/jIxp97r80TYbzVy5g?=
 =?iso-8859-1?Q?0Q9sOG9sBmK04u1DlTYfGM/xbsYcOV5QUpmSObrTsmPxFvzJvSkb3vxBKE?=
 =?iso-8859-1?Q?I3xukbvttATZaNuwz5ftrGkqOdefIRLxKfJryIb6JwEs5kNCB2fs71DJVE?=
 =?iso-8859-1?Q?8p30FC7N84eqMnhtKPLrCZXZySOlzpcCWqR6yBNkioE/QpOwHS2zZuzXuU?=
 =?iso-8859-1?Q?M8mBkoGa2+B9ke8MVV3JQI/pNphskzem2KfGse8LPgCXGt0rqkMiV0ulKh?=
 =?iso-8859-1?Q?PRgEsuD86L8CGCrZbURhogLf2D8sWHe/KKDGnRRzdXt9NbmMRYkxldqHPm?=
 =?iso-8859-1?Q?bhihUsq+QysamHNprXBzZOgY/R9J8OU=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22bf3c02-170e-46e7-624e-08de413f7ead
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2025 09:50:09.7110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YO4qZvqAj287yq/WOOn8f1qpUow+iNUkxwjJqa43rgGbxeGNJ2cm47eTFCnZ1yAR5Z13zixFOS1bdRi03usMVQlc5wCuBHR5Qk1fT0HccyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE70B31BEF
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766397016; x=1797933016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BIthbfePES8odJ/Umw6en27byeilNF1JuurlyNyntUI=;
 b=Bca9rtRkvQ8HpJW+idHBWYAeWeqD1577CFuXiOnmaqy75XEaN7mberbS
 AOhGPCaklc7Up8LW5t9b+3Qu2RSoFdqRBHY4WVM7Pp3YxFUIi7n4jHxKr
 PgQXKo9J/HSAn6IxH4RphhtIIUybNCcf8kPUF99MfQZqaKlcmaUVj4MzN
 tydOVLsqxrsI7BDbpVzyqGyovkfQ9PVJJ9Kwv/eOR53l1JllZJreei7PK
 5o5M+wdYeSPEEh7Ue5/WrOUIx8R2ogzGgdORtEdS9Nik1WaGRw9FV1dmW
 ghnxGo0WUWOWeO121xB8GeH3Wm8VgWASoKyZLCic5A8quzsKLmmPmKH+g
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bca9rtRk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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



> -----Original Message-----
> From: Behera, VIVEK <vivek.behera@siemens.com>
> Sent: Monday, December 22, 2025 9:21 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: AW: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
>=20
>=20
> > -----Urspr=FCngliche Nachricht-----
> > Von: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Gesendet: Montag, 22. Dezember 2025 08:31
> > An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> > Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC
> > PRC1) <vivek.behera@siemens.com>
> > Betreff: RE: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> >
> >
> > > -----Original Message-----
> > > From: Vivek Behera <vivek.behera@siemens.com>
> > > Sent: Saturday, December 20, 2025 12:50 PM
> > > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > > kurt@linutronix.de
> > > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > > <vivek.behera@siemens.com>
> > > Subject: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> > > igb_xsk_wakeup
> > >
> > > The current implementation in the igb_xsk_wakeup expects the Rx
> and
> > > Tx queues to share the same irq. This would lead to triggering of
> > > incorrect irq in split irq configuration.
> > > This patch addresses this issue which could impact environments
> with
> > > 2 active cpu cores or when the number of queues is reduced to 2 or
> > > less
> > >
> > > cat /proc/interrupts | grep eno2
> > >  167:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0
> > >  0-edge      eno2
> > >  168:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0
> > >  1-edge      eno2-rx-0
> > >  169:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0
> > >  2-edge      eno2-rx-1
> > >  170:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0
> > >  3-edge      eno2-tx-0
> > >  171:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0
> > >  4-edge      eno2-tx-1
> > >
> > > Furthermore it uses the flags input argument to trigger either rx,
> > > tx or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > > documentation
> > >
> > > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> > > helpers")
> > > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > >
> > > ---
> > > v1:
> > >
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flo
> > > re
> > > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-
> &data=3D05%7C0
> > > 2%
> > >
> >
> 7Cvivek.behera%40siemens.com%7C164e180ed5e443da63c408de412c1b1f%7C38a
> > e
> > >
> > 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639019854838314101%7CUnknow
> > n%7C
> > >
> > TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> > zMi
> > >
> > IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D95%2FeVnmg9
> > JiwCd
> > > oGd3sd441VWbvXi%2FBYFTtbW9ddXfA%3D&reserved=3D0
> > > vivek.behera@siemens.com/
> > > v2:
> > >
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flo
> > > re
> > > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-
> &data=3D05%7C0
> > > 2%
> > >
> >
> 7Cvivek.behera%40siemens.com%7C164e180ed5e443da63c408de412c1b1f%7C38a
> > e
> > >
> > 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639019854838342225%7CUnknow
> > n%7C
> > >
> > TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> > zMi
> > >
> > IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DniEnO3XufusM
> > bVGs
> > > l6QO0mj3yWC1Zr3dl5azIYRqs24%3D&reserved=3D0
> > > vivek.behera@siemens.com/
> > >
> > > changelog:
> > > v1
> > > - Inital description of the Bug and fixes made in the patch
> > >
> > > v1 -> v2
> > > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > > configuration
> > > - Review by Aleksander: Modified sequence to complete all error
> > > checks for rx and tx
> > >   before updating napi states and triggering irqs
> > > - Corrected trigger of TX and RX interrupts over E1000_ICS (non
> msix
> > > use case)
> > > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> > >
> > > v2 -> v3
> > > - Included applicable feedback and suggestions from igc patch
> > > - Fixed logic in updating eics value when  both TX and RX need
> > > wakeup
> > > ---
> > >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> > >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 88
> +++++++++++++++++-
> > > -
> > >  2 files changed, 81 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > index fa028928482f..9357564a2d58 100644
> > > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > @@ -443,6 +443,7 @@
> > >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status
> Change
> > > */
> > >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> > > threshold */
> > >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> > > Aserted */
> > > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> > > written back */
> > >
> > >  /* Extended Interrupt Cause Set */
> > >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > index 30ce5fbb5b77..3dbc2573b47a 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > > qid, u32 flags)
> > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > >  	struct e1000_hw *hw =3D &adapter->hw;
> > >  	struct igb_ring *ring;
> > > +	struct igb_q_vector *q_vector;
> > >  	u32 eics =3D 0;
> > >
> > >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,14 +537,80
> @@
> > > int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > >
> > >  	if (!igb_xdp_is_enabled(adapter))
> > >  		return -EINVAL;
> > > -
> > > -	if (qid >=3D adapter->num_tx_queues)
> > > +	/* Check if queue_id is valid. Tx and Rx queue numbers are
> > > always same */
> > > +	if (qid >=3D adapter->num_rx_queues)
> > >  		return -EINVAL;
> > >
> > > -	ring =3D adapter->tx_ring[qid];
> > > -
> > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > -		return -ENETDOWN;
> > > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > > +		/* If both TX and RX need to be woken up check if queue
> > > pairs are active */
> > > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > > +			/* Extract ring params from Rx */
> > > +			ring =3D adapter->rx_ring[qid];
> > > +		} else {
> > > +			/* Two irqs for Rx AND Tx need to be triggered */
> > > +			struct napi_struct *rx_napi;
> > > +			struct napi_struct *tx_napi;
> > > +			bool trigger_irq_tx =3D false;
> > > +			bool trigger_irq_rx =3D false;
> > > +			u32 eics_tx =3D 0;
> > > +			u32 eics_rx =3D 0;
> > > +			/* IRQ trigger preparation for Rx */
> > > +			ring =3D adapter->rx_ring[qid];
> > > +			if (!ring->xsk_pool)
> > > +				return -ENXIO;
> > When IGB_FLAG_QUEUE_PAIRS is set, the code sets ring =3D
> > adapter->rx_ring[qid] and then falls through to the common path (if
> (!READ_ONCE(ring->xsk_pool))).
> > However, the common path only handles a single NAPI and single IRQ
> trigger.
> > In queue-pair mode, RX and TX share the same q_vector/IRQ, so
> > triggering only one direction might not fully satisfy the
> > XDP_WAKEUP_RX | XDP_WAKEUP_TX contract.
> > The logic appears incomplete for the queue-pair case when both flags
> are set.
>=20
> Okay. According to my understanding when the queue pairs are activated
> one q_vector is used for the rx and tx. And this napi instance is
> saved in the common q_vector. Below is the example of napi threads
> with queue pairs enabled for the 4 rx-tx queue pairs ps aux | grep
> eno2
> root         561  0.0  0.0      0     0 ?        S    07:44   0:00
> [irq/162-eno2]
> root         565  0.0  0.0      0     0 ?        S    07:44   0:00
> [irq/163-eno2-TxRx-0]
> root         566  0.0  0.0      0     0 ?        S    07:44   0:00
> [irq/164-eno2-TxRx-1]
> root         567  0.0  0.0      0     0 ?        S    07:44   0:00
> [irq/165-eno2-TxRx-2]
> root         568  0.0  0.0      0     0 ?        S    07:44   0:00
> [irq/166-eno2-TxRx-3]
> root        1247  0.0  0.0      0     0 ?        S    09:08   0:00
> [napi/eno2-8197]
> root        1248  0.0  0.0      0     0 ?        S    09:08   0:00
> [napi/eno2-8196]
> root        1249  0.0  0.0      0     0 ?        S    09:08   0:00
> [napi/eno2-8195]
> root        1250  0.0  0.0      0     0 ?        S    09:08   0:00
> [napi/eno2-8194]
>=20
> So in my understanding a single q_vector and a single napi is all that
> is needed to trigger both the rx and tx. Essentially with the queue
> pairs enabled irrespective of the flags we will end up triggering a
> single interrupt for the associated queue pair and have the common
> napi to deal with.
>=20
> Is this not correct?
You are right.
The /proc/interrupts output confirms this with the eno2-TxRx-N naming patte=
rn showing combined IRQ handling.
Perhaps adding a comment in the code would make this clearer?
/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
 * so a single IRQ trigger will wake both RX and TX processing
 */

With the best regards
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> >
> > > +			q_vector =3D ring->q_vector;
> > > +			rx_napi  =3D &q_vector->napi;
> > > +			/* Extend the BIT mask for eics */
> > > +			eics_rx =3D ring->q_vector->eims_value;
> > > +
> > > +			/* IRQ trigger preparation for Tx */
> > > +			ring =3D adapter->tx_ring[qid];
> > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > > >flags))
> > > +				return -ENETDOWN;
> > > +
> > > +			if (!ring->xsk_pool)
> > Shouldn't it be: !READ_ONCE(ring->xsk_pool))  ?
> Yes. indeed
> >
> > > +				return -ENXIO;
> > > +			q_vector =3D ring->q_vector;
> >
> > ...
> >
> > > --
> > > 2.34.1

