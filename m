Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A1ACA655E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 08:12:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56CEE40A02;
	Fri,  5 Dec 2025 07:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wzByDO9cZKy3; Fri,  5 Dec 2025 07:12:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A67AA40A03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764918775;
	bh=bx314Rxsg+oDDubAa7/KLwu5wX/0PGi/+meV76OzjoY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y0ONHRCfw2nq9hVOdoYjLPeeE3BUoOGQFHN6skP0XRYDvyofG+NsoRlaZLJs+lCss
	 na/JLTW4ZWw82Wb3QQZM9yPuBuOnpfZHlpp0CsnzFksOsQvurbLd+OPtG8gHGq7g94
	 UAu3i2pTnRlm+016KzMLkdMRAeqrDkkToxc3DIyx6M2OdV+m3ql0dhBjVdvHJmb48x
	 UDxUar69GhxmMaNPmOlxTq9aORqpLcXO/+HXd0N1SgRW+rQ1EJXqfzIp29Eu3SCfUU
	 4egAiOEhdil77IskTF63fsgwKfwvCDm7SAR3rl0OS90MtjwmvPEdVkJ2ZLDZhc47HI
	 7UYq9bvIe0HmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A67AA40A03;
	Fri,  5 Dec 2025 07:12:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AB78D1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9231C848F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:12:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Uh1NhxvH2iI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 07:12:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC3FD848BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC3FD848BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC3FD848BE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:12:53 +0000 (UTC)
X-CSE-ConnectionGUID: Ms3p/LFNRqmHME9hzCZ83Q==
X-CSE-MsgGUID: YV0/YcuJTVCGbiFJdZ0QJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66911209"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="66911209"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 23:12:53 -0800
X-CSE-ConnectionGUID: N8do5AGHTKaDQYWFBrNp9Q==
X-CSE-MsgGUID: 9r9YUuKVREOSe+JP1dKG6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="195317031"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 23:12:52 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 23:12:51 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 23:12:51 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 23:12:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x9L+0kRbxMn69jFzPElM/ic1tyyZgpZgm6DJypGbOOw6nkbqgSOLaw46XMKPG9TUX/L2R4vy0gicLVFUNM2CsQavZD7xwRfjRv83Mc0IT4vrs573zVfObRhphb1M50nWssVnhzlyYXEEG7o0yib7V7k40rm2bO6Oe8CR6oSOiIIi0L1X3YUT6t9/l7dGosQDxti7j2uvjJ9EXirvpuplbhNMo5vBmYN//Hg2Q/U74eX7CleVGJhybdo9il4xWIFRuV25tUPEfNH/5kcO7gzR6QY676G5ocvhU6CCphPYDgEdkEi5YJzdpV6IjB2hcVjZpvVxyZTryjMWcaTbYAaByQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bx314Rxsg+oDDubAa7/KLwu5wX/0PGi/+meV76OzjoY=;
 b=IzV2njMqAQfXFSGZevNK/GqZF2FofPKIVlFkDfmlBtyXY6zqJ5cQ3EaK9Rhj0KqhHYOVp/k2T/DQDP+AK4IZMkBdFEcQ7fkEjF38dWbf4BmGTI4A310bhUqwUG1l+9DRDUmxVUCWq202WsI4MXfsDPofHG/5kid7T66O0WF4YidTls+UKkbsfskNS4ya58szWODUTl56HgchSt35UNHajD6CkNCaW8ztfyj6eJME7l+IKCbfVjLeYORDuY2QomCZXmbm0YDIsCUAjwQkW/kuQj7fTGVSo86ONdn2X6H87ISuumDs8X3xx11YCpK0cVFUMg10hCx3ONBkqEtphv19pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9208.namprd11.prod.outlook.com (2603:10b6:208:57c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.11; Fri, 5 Dec
 2025 07:12:42 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 07:12:42 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Aaron, Ma" <aaron.ma@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] ice: Fix NULL pointer dereference
 in ice_vsi_set_napi_queues
Thread-Index: AQHcZZEB+Q4u3sE4H0e3BVkVM6zPC7USoaUg
Date: Fri, 5 Dec 2025 07:12:42 +0000
Message-ID: <IA3PR11MB8986E3F5CD6666035875A112E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251205023757.1541228-1-aaron.ma@canonical.com>
In-Reply-To: <20251205023757.1541228-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9208:EE_
x-ms-office365-filtering-correlation-id: f2345eb6-1974-42f1-52ee-08de33cdaeab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DjwTH3i+hJgYjw/YiOHUPyvyLYC3k+Bk6+eWkxFIqVaA5gTLUGxUPY8W7YJS?=
 =?us-ascii?Q?BK0q60c2mGrtNeaUOg54ns9Z+Gh2QOP5R6O2rfJIIpLo/la4MHCr9k0mjSS0?=
 =?us-ascii?Q?QC+mTSEWL73lWnAGwnEBp/NytB6cvQKpqaZmVaYTJUEUW/Pw/cSgnBVgeQW6?=
 =?us-ascii?Q?DHBqTPshU4A6K95cnPtIMC5GlWOiDaxS4z+Pbgy0TsJZGvKymMarZNYDREq9?=
 =?us-ascii?Q?W/caetem/HeXoKCvL4LUPfGuOPlJYzE7p9eViGEYalE/dIRElU85jIcXKImb?=
 =?us-ascii?Q?bhFmi9jVkPV82QFgPb3hvEMDQMPC+fO2qagP08D9uH1QNKVHYOpkuQDk3UEd?=
 =?us-ascii?Q?tbgGtbwb7pCR5Oy5+j05EqrFByD+4yhkDtm04nm7WP8++nEKpkLMS+88OJaY?=
 =?us-ascii?Q?taANaAkhTKYi/OCT2M4h214uUjhyW001o74iXrx/9X3qVNk1Wu63c7ZGlMRu?=
 =?us-ascii?Q?i0ACwB3YYZaOveO1Bx9B06U7egsOfoUfc/jutnlvYN0S6D3Ih/ns1dQAc+83?=
 =?us-ascii?Q?rVEB7hPwRIAtCiaUcvRogBoool01tY4GkV8NcQbDAJH09GIcIKZ4OLboaPdU?=
 =?us-ascii?Q?RTQ6MGAn2E1Gt7G6NYVG1FBU6cC3p4Ks78NPw8qsbj5qAgOX7oNtN8HZXY0R?=
 =?us-ascii?Q?lsGTCgG7ofd/Foudb+UCWX/jpucvAXUHjj1yJcoCYTCRx4aMGAiUtJsklksu?=
 =?us-ascii?Q?5XPio9NhlLNluk6DMNmJCdECSYklwiU//uPLO/Jcvago0cif6DhcKDrfmNm7?=
 =?us-ascii?Q?mHozPs9yosfiXNW8d6BMw4+2ktpvruB9obbjFR7e0OymjHLoC/z/P9Oqx+i/?=
 =?us-ascii?Q?gr2+anwuXScfUVy4eIyNYrXW33x7viMk/f/RuEphjjpQ4p3+5T0XIxU0xrBg?=
 =?us-ascii?Q?IbhPh+wyxcwq0j613MeaYnriYu26IsNl5AweJ/Ha3KUWaslEHuWBeKa2V1dh?=
 =?us-ascii?Q?T6sI2SDfADpnKvYqYH+2a8gkSx/lx9dBk8QVTgFrK0un9R0KgJbTs2BrtohX?=
 =?us-ascii?Q?lvz4XVv8MnpVwcqvfC+lt9NlSFSFbyoQD04tmgDDhaWZcJaqCGv2b69shcDH?=
 =?us-ascii?Q?XuYWkIGeUertRSbAVpOKngwE7Um6VXHL7NBIqC/1yoZm35vCbcD0vjOzaBOP?=
 =?us-ascii?Q?aZK990lebO44XNS/HVJxn31YbiLirjoay5UzR65kXmoE0lOxZbxCcNx0mQM8?=
 =?us-ascii?Q?GVksV4irqNZrGVXJS4IbDmNlMurh03aMPPZmDkXb0YXuCPDpNHQRKabt9W9d?=
 =?us-ascii?Q?0GL3HImJWxUZVGQotIklkvRrWZNx3uPnFVsMSQXQa2wZOXXsp8nI1iWiY6DD?=
 =?us-ascii?Q?ZDHV694FIKP2pQfHIhA8nug6PwPtLAnCZzyKrcv8oOIEgv5MlY0ocdp/f5gD?=
 =?us-ascii?Q?wM/0XET6mVHbFN8oSAYJHXvmQsJFj+NyjzGRcBb/tUVmrlHrcPLVPBlZqXkx?=
 =?us-ascii?Q?LsycccfXhmybQt1unIBE+/VYKKgikawUmA76UvXTAqvWOv9yLhKQDJHnlL7t?=
 =?us-ascii?Q?yvmHQLILafAY+Kso+L9FIHwBU2NIeSXSMatul8a3b4J1lE+bUoZx8tdl7Q?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jW6O+D+Ml+CklpVqA0RTSV51KV3w0gCrrQ95WilhMVzCFRJ6K93wYcydrC4w?=
 =?us-ascii?Q?Hxe2N9JgbDjeNP0usPrPhCw4DCSHc0R2rNRRZCfstg/mVHWBbDDjjsOvME5t?=
 =?us-ascii?Q?Xtr+5lEW69yXdJ2Y7RHp2uOQcSZLx2KGJ77xbMEFNdg8cGVkbuiTzpsfaqdW?=
 =?us-ascii?Q?h5BOC+JMWlVUtpaHjNR+l+KAmgnfvY22iBlU5M0BecY3rEzKZ6VbV6Oo5Xyz?=
 =?us-ascii?Q?eHAoJpn94B3N/FE8swMJ7ZlZOoBjMex3ApRDK0b1kBBQPFMnE9eX7B+JwPS7?=
 =?us-ascii?Q?DvfEZ1WpoiSVS+hQkPzd2gKoc0htj5XKAB3QLsOM4uwSYNtowpPWSHzcR/Ox?=
 =?us-ascii?Q?eDrYn3jp8JVqST8PDDCfNIjZoVcXapZ+ZuNZ0Aavgchj5vr5axcmr+SMrME2?=
 =?us-ascii?Q?eNfkGfjR2kq0JVLBXXNRcQs+Zjr9uwEMsXNVYsEBNgErAQmU54b04vrhIkDN?=
 =?us-ascii?Q?E8UXczu3ikpUvEwys1eDKuDe2kkN/oiX+SaYO5otZ2MR4YerQxqHxo2miHIq?=
 =?us-ascii?Q?snWT4l4kJ54dcJGBAa/wfJDxyvELRS7OUGTx0VsbJdDIdzkrMpJwT7B3xGDu?=
 =?us-ascii?Q?SCf+ORuA1Ygp107iajj2byWXBbFUWv4/cYDaGtVllbqrZsQHwDQoLlKJZSQP?=
 =?us-ascii?Q?4FPU8gERxO/6sNZZYSg55u03q4lQoPXCOi1EzFxwGZlf7Na1M2eJ7ScNh09T?=
 =?us-ascii?Q?0dPnBC4H5YT4ztxWUWYhl1pH/bqJgcr5110CTFSpl6jKodAfU5WYmb71HLEq?=
 =?us-ascii?Q?VwIylZbmcVV7Na/80E7HaL+FqLq1U6HXPwUz3sy1n01Mh5Hy/QISjYQA9jZt?=
 =?us-ascii?Q?AWCMzRL17tX1XplthRgcYQQDltIAeXpWXspmDC+tq/xNVfNdp1weY9e9xpnr?=
 =?us-ascii?Q?wNbf6IwKGCE0JyBolWqAWQAgHMIiK2ZKaGmiWeEXxx9tb5XR76fLaTRcMcBd?=
 =?us-ascii?Q?jyYpeKkh/mUAhbuoQNH6cRCfB9dl+7qbruL8stwFZiiyLKRaebQO/OPnJzj5?=
 =?us-ascii?Q?CAPY3zj3ehQkDmZXY3xGhjKY/so5PG4GrzeQpt3BgFtLQwacE8STCXrHJeTY?=
 =?us-ascii?Q?pVwU5L+C5sz9H7LBj7QRs9RoG1KXJfLcmr/HXUYlbRIX0+IUQ7BWnQ2mJDbr?=
 =?us-ascii?Q?FjQ9e4G7dA18b0JkxhGBha0NIq3vIt6cFejSt31N0jEsZRyX9fZ/Ag8V68kw?=
 =?us-ascii?Q?zzQWkxaAuaX2R4A9IIJijuo0tGyfe5q8F75EQt22Cc+kP1HHBsTsWK32vteP?=
 =?us-ascii?Q?E0sZFZ12Wo3Oa9SpJWqzNWlqi/T2Bfj4WUono1ah40RxRW+fuOv8y1uuFEaB?=
 =?us-ascii?Q?W4mb8DUq8EVm/kf39yFXsIsBNzaKGLAPed24M9Ypde+hPC8D12k/3ku9xfR2?=
 =?us-ascii?Q?kLv0Z6D76h8+aGnThLeHb3FvXWhsX3ZUErC+AqnhgFikB1l1SvuONwWRxgtM?=
 =?us-ascii?Q?4lRD6loDLCx/ZplUtVlO3PrTkzMQBrcKyRxNx8kuRDUMIKUcGpflm0m4ifZI?=
 =?us-ascii?Q?VlWSeyRfFx8Gkg3XBIoFMisjvYOJLHQ54qmSfm9nQ3zKcd1Fc+azIU3wwDY6?=
 =?us-ascii?Q?Ydm3ItMZXJ8RDeHS4lmF2lcySY9MSQhi0CrEYsVs752B5b4xTjflwdACXLLp?=
 =?us-ascii?Q?Gw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2345eb6-1974-42f1-52ee-08de33cdaeab
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 07:12:42.4904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 75jl1ihb0P180NHj/Ep4JNBh9oWnVQZh0HCfkzY0Y3Rh0i1aVqumR5rLQASsfZceqlNbmmVHso03fJ+zBv12L1aFYRfVt8YltEPNTOXI84k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9208
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764918774; x=1796454774;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LS5QHWWQC6gTsA736FAsPwz+irgA6T61SZRPNGiAPyo=;
 b=I6OYEmX+kEDZS8BF+VRNKBve74ZMLVKbafusFBU+jtmHBQM5nc6Ab+sV
 ETEWbwbw3zi6Wl8eX6eNKlcPoo9cAlLfbSfCrPaUMe6WHqCSymlRL6tje
 iXSwUvwaT+PB8984+85Fz8TvKYQZo8RBd5Pa29/M+jMSNIAx/jffMLmLx
 kDo45yLyHFdYflMBmeRYQtc5ejvMJ2q81YczirOFhtOmzS3Df1p+2/T0D
 IavNkl/UF1FMJjKqV7MWL+dqG2JJDEhPe5b7p2/KSiSbjw7NkZQC29h1+
 kmsgqlmiSNF7K+jEb8G71Trf5LqKtTgnxCHzPxo4tKEtHGQ6hMBbSSlhI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I6OYEmX+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] ice: Fix NULL pointer dereference
 in ice_vsi_set_napi_queues
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Aaron Ma
> Sent: Friday, December 5, 2025 3:38 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH 1/2] ice: Fix NULL pointer
> dereference in ice_vsi_set_napi_queues
>=20
> Add NULL pointer checks in ice_vsi_set_napi_queues() to prevent
> crashes during resume from suspend when rings[q_idx]->q_vector is
> NULL.
>=20
> <1>[  231.443607] BUG: kernel NULL pointer dereference, address:
> 0000000000000040 <1>[  231.444052] #PF: supervisor read access in
> kernel mode <1>[  231.444484] #PF: error_code(0x0000) - not-present
> page <6>[  231.444913] PGD 0 P4D 0 <4>[  231.445342] Oops: Oops: 0000
> [#1] SMP NOPTI <4>[  231.446635] RIP:
> 0010:netif_queue_set_napi+0xa/0x170
> <4>[  231.447067] Code: 31 f6 31 ff c3 cc cc cc cc 0f 1f 80 00 00 00
> 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 48
> 85 c9 74 0b <48> 83 79 30 00 0f 84 39 01 00 00 55 41 89 d1 49 89 f8 89
> f2 48 89 <4>[  231.447513] RSP: 0018:ffffcc780fc078c0 EFLAGS: 00010202
> <4>[  231.447961] RAX: ffff8b848ca30400 RBX: ffff8b848caf2028 RCX:
> 0000000000000010 <4>[  231.448443] RDX: 0000000000000000 RSI:
> 0000000000000000 RDI: ffff8b848dbd4000 <4>[  231.448896] RBP:
> ffffcc780fc078e8 R08: 0000000000000000 R09: 0000000000000000 <4>[
> 231.449345] R10: 0000000000000000 R11: 0000000000000000 R12:
> 0000000000000001 <4>[  231.449817] R13: ffff8b848dbd4000 R14:
> ffff8b84833390c8 R15: 0000000000000000 <4>[  231.450265] FS:
> 00007c7b29e9d740(0000) GS:ffff8b8c068e2000(0000)
> knlGS:0000000000000000 <4>[  231.450715] CS:  0010 DS: 0000 ES: 0000
> CR0: 0000000080050033 <4>[  231.451179] CR2: 0000000000000040 CR3:
> 000000030626f004 CR4: 0000000000f72ef0 <4>[  231.451629] PKRU:
> 55555554 <4>[  231.452076] Call Trace:
> <4>[  231.452549]  <TASK>
> <4>[  231.452996]  ? ice_vsi_set_napi_queues+0x4d/0x110 [ice] <4>[
> 231.453482]  ice_resume+0xfd/0x220 [ice] <4>[  231.453977]  ?
> __pfx_pci_pm_resume+0x10/0x10 <4>[  231.454425]
> pci_pm_resume+0x8c/0x140 <4>[  231.454872]  ?
> __pfx_pci_pm_resume+0x10/0x10 <4>[  231.455347]
> dpm_run_callback+0x5f/0x160 <4>[  231.455796]  ?
> dpm_wait_for_superior+0x107/0x170 <4>[  231.456244]
> device_resume+0x177/0x270 <4>[  231.456708]  dpm_resume+0x209/0x2f0
> <4>[  231.457151]  dpm_resume_end+0x15/0x30 <4>[  231.457596]
> suspend_devices_and_enter+0x1da/0x2b0
> <4>[  231.458054]  enter_state+0x10e/0x570
>=20
> Add defensive checks for both the ring pointer and its q_vector before
> dereferencing, allowing the system to resume successfully even when
> q_vectors are unmapped.
>=20

Please add minimal test system details alongside the call trace:
  - Adapter model (E810/E822... PF/VF? SR-IOV state)
  - Kernel version (and whether net-next or stable backport)
  - Repro steps (S3 sequence, timing, if NAPI ops are called during resume)
It helps validate the fix for NAPI queue-to-IRQ mapping on various platform=
s.

> Fixes: 2a5dc090b92cf ("ice: move netif_queue_set_napi to rtnl-
> protected sections")
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 15621707fbf81..9d1178bde4495 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2779,11 +2779,13 @@ void ice_vsi_set_napi_queues(struct ice_vsi
> *vsi)
>=20
>  	ASSERT_RTNL();
>  	ice_for_each_rxq(vsi, q_idx)
> -		netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_RX,
> +		if (vsi->rx_rings[q_idx] && vsi->rx_rings[q_idx]-
> >q_vector)
> +			netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_RX,
>  				     &vsi->rx_rings[q_idx]->q_vector-
> >napi);
>=20
>  	ice_for_each_txq(vsi, q_idx)
> -		netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_TX,
> +		if (vsi->tx_rings[q_idx] && vsi->tx_rings[q_idx]-
> >q_vector)
> +			netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_TX,
>  				     &vsi->tx_rings[q_idx]->q_vector-
> >napi);
>  	/* Also set the interrupt number for the NAPI */
>  	ice_for_each_q_vector(vsi, v_idx) {
> --
> 2.43.0

