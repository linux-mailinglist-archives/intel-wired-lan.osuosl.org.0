Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMs3GZnIumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:45:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8D02BE834
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:45:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DF2E40CE6;
	Wed, 18 Mar 2026 15:45:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5xsHUgvdmHPY; Wed, 18 Mar 2026 15:45:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7316940CD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848726;
	bh=0wScH301BOXmOBexlR6DRpeMcP1py2MnEY53ZtTPcLo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pNnV7cDUJQ4SNdJ7m3R+NiljwKCIYKjuBJKaAxkwAPomTH+pCDyJMoso2PwweWNh/
	 QThYIb91tw+i17FQ/RGsnPimI87CwDq1/y3x/w0SUSVDM/jDr/0pM0aYiS7WNj9Llv
	 /a6xSm0qHg0FCDoWU4uiw7St4WUbJW3W/Q7KUl0r1u5focIfbUE5y9cnbWiipnnPV8
	 u/yGVL6uTOv3BvMVz7kAs4Yh2UfwqeqnkwIalGqHEcINjUmrQDqeOhvqxRHG0o5Nit
	 LL++PZmm5hiHCYFGvCMygB53yUPEJTq+JEXOdHidjno9qwd3r0IYCDh47G4ZO0BFsu
	 eBTbm7o/1PUYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7316940CD5;
	Wed, 18 Mar 2026 15:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BF2411BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A56088276E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NUnD4kmpSCKz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:45:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91BD0826DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91BD0826DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91BD0826DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:45:23 +0000 (UTC)
X-CSE-ConnectionGUID: MhYsoM7YStC28H0nLv3uEA==
X-CSE-MsgGUID: 43n1dzFyRhOXGoKTXOmH8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75087833"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="75087833"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:45:23 -0700
X-CSE-ConnectionGUID: KR6Nmqy/TTSaO/GCTZ8iAg==
X-CSE-MsgGUID: xeiQOOzNTte6H/f5BUA6Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="220100365"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:45:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:45:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:45:21 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:45:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SncRrMdsEIEDG4wrivUqXtZZ61X2ZXT+fin3Riqs2TL3D9Cuw2T9xWCvstYp0m5iyxrx0vrrgA0H6UjM3e1acn6R3YWyHdlYRkNsXBBuM1klw9Rf1rwdMm+oIxYSh/DDSfaVGLGVTgLZ7DOXiCEH9Gq9NLWOfLbb45SBaUTQOj0pP7BqaGBO7KHhhHj9eQEn+xE17txA7lS3rHY6wQzd7CpLnDcoT5J8Qpm9vDmJU614Ng1oF6+jO/Bn4rkv68sHay/bm9wuFHm/rrmDoqZFKaoGUbOvY8kCzbGL/PxDAzmc9swQ6CE4q7dAWWLZBEewaPy9vtjnC2QvmQrcIy7FSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wScH301BOXmOBexlR6DRpeMcP1py2MnEY53ZtTPcLo=;
 b=Vm3F+gKUiC5yDKfYYEeuL+km4X7ny4lmRKjsSOV2Hzgg1/tzFB5S5PzY+/0Gmdjg/3p7IeU6d6qKapvEB67kcp+h2ydz8DVaPvCKnbZ1W3FvHHXyzQ9sJyaJUTSzT0t1BBNnD4Jb9pQ4CCpKjKHUUSywQfSx3EKo2SbK89Kh4S+cKBN5Qsq/yUNgtP7+AAQA0v9dk7bKh5jho5ZmdFKjoOmJ97JX+xM887I9D0/EQSOQy8g0PD89MLt9OoFNp7WqEMzsrNgYeB68neYLzwn4HV4bicZNT9q+bXOQeGAOjUPnZbYY0c8PP/UOh9afvZERo4qYxFLkKbGXuRYXxgunzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Wed, 18 Mar
 2026 15:45:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:45:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Stanislav Fomichev <sdf@fomichev.me>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "michael.chan@broadcom.com"
 <michael.chan@broadcom.com>, "pavan.chebbi@broadcom.com"
 <pavan.chebbi@broadcom.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "mbloch@nvidia.com"
 <mbloch@nvidia.com>, "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>, "dtatulea@nvidia.com"
 <dtatulea@nvidia.com>, "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "willemb@google.com"
 <willemb@google.com>, "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "linux-kselftest@vger.kernel.org"
 <linux-kselftest@vger.kernel.org>, "leon@kernel.org" <leon@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 07/13] bnxt: convert to
 ndo_set_rx_mode_async
Thread-Index: AQHctuhvPNcqv/OQiUKaydYzFZubBbW0boUw
Date: Wed, 18 Mar 2026 15:45:11 +0000
Message-ID: <IA3PR11MB8986E552C5622363BF487289E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-8-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-8-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6455:EE_
x-ms-office365-filtering-correlation-id: f22f703d-a186-4030-9493-08de85055763
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|38070700021|7053199007|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: KLV2vuhZBolFv7MxIpkghB/jR4N8Lgncw6vDuBwSUfyqXe7AGsYaqN7LA1pnfwKlNe+PP3WMdg+91I4OMF0gykixfBRdwjeTwJXgc1ZK4qxyGovB9v6onqVFrWSCK2yYGsZhGpiGZotr0POTJez4PbRrX4X0vznaN8WDUio3jZ3KfbTYNb80HrUjSMT19ZDgbHXHX4FabrVFNoOwwaiLSbB1NsL3r02PlDDbQauKdbU+Kzg6hdSZtVsRVqx44ti/UvcJ7NdEgZWyINnQp9J6OGx9kNIb7cgeql/nG+zkIYW5sBAxFyhCejK3VbG4F4l0DplPiDGfRa1KRJFEc5aJrc35L1TO4LUAkbHu1xX1w3cG6NxRmUOuE1Dp9rPoCBKyBi+OC11A7G3jSU7PT79eTjbxOkjhaqo4NVxlNW/V1y4XC9dLcq+cecRBfkFOV3KA9IkjKQbcZiWJOGkjC/erqTK+Hll2cEICZV61Trp/Ax77EVwixe0g8Ejs72S4OYroR+lnw7hnNifLH8XNGD2vms9O6wqT8WGQVaJr/foDHXB6/WztogqT6oeomf1V0vbFt0zipdw9zpqgZ+vBS6vCVjRCR1vRoSW/vssFlTjerq5X8PWS4D/aLAzNkGH/AE2y7NKwgBOdvzFzlNY49BFLJRG14OnJB7kHrPNJnTPtOI7janEWky98FGHjJ9A0dXvHGV10Vp5U0AhcBGgpXKKkwBJLu64bTZjiewokBCIabMc1GcBuoqhXti+2XQOHpsZJ2aYrLabUQpk1YxBHr6zY3kEKUT4n4tTKhKHM7r2AudY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(38070700021)(7053199007)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?umRmWnzSyD25Wnj3WqXj9nJlvwtJTGwGlOITMDmoqZkpHynX4aPtwNkZdWV1?=
 =?us-ascii?Q?leYaOyHy4gPpmVZu9eCKVbm5ZcNUJ4g/1UCtYzwKDbBug/hJMQ9EsA1gnTDv?=
 =?us-ascii?Q?p5D+mpLgk7ggRP1Rlvqnp6vj4kkSONY1bm7Vgm6xIMaDGREGkStnECM0xH9J?=
 =?us-ascii?Q?lI0Utl5Pct8PQUiKiJePt14xpH/sxMfIcx280qYbpPAq55OCnknjmqyTJSbA?=
 =?us-ascii?Q?agmextdy1FK9Jg9cC4Z6Bo9xSM2N+uDBz5nQ0tWa8iiN+pvql+Obe0ViUTxn?=
 =?us-ascii?Q?7Ol0UGIEkxPIVHdIaG5/by/cf8pZpSrfrSF0HaiIgSdCVh1dJoXutPvXEh1d?=
 =?us-ascii?Q?qxZ8Gp6ZVTX9xJRwjZe8lgwYiouRhqxDMgNeX4rdd4dPD+cBsgkjK8kx7ZSo?=
 =?us-ascii?Q?FnaEYXZbmxoyss0mtZE0qj3MLHoj/tDxXERewm/NenUEKQw/73O0fcOf/01Z?=
 =?us-ascii?Q?LkgTBu1psDd+s2QBrEmG0uPEZwIHhDvQePTdw7/EF7gfIqmf07aWGFU0N8md?=
 =?us-ascii?Q?o2t9X7c90nfYgjpW+GBJ3nhtWT9KSk8W/lqfBNXhhRg9gmY/d+piYQwlMI0n?=
 =?us-ascii?Q?jjBquQkrFx6kMYV4PaqiYdubrhed4VWL+v2hPgWcAtA0UbZkWu15SujCW1KX?=
 =?us-ascii?Q?geixYJkh7yVxGxdtK1CKCLTUHt/zeQu8n4OwoI7Nse9EhI8AW0bO8b8Clksz?=
 =?us-ascii?Q?QZcRNfBLUMExrWcTR/DkVQtaPAPAuGaC4Zg4m19DcMTxbwgy2rJ07iPczQst?=
 =?us-ascii?Q?G+J/8lamdywvbaYtBEMFnAr+/kkQtE95WJDKctqjNC9tqgP2qtGvPvJ1o+sJ?=
 =?us-ascii?Q?TSr3tfW5E8ldPFOwJb3gMg1HaxGwik+P9aGp+3RbOum6GaSWFaokyyaFpVVj?=
 =?us-ascii?Q?Zer2NMSmz0FpuWMXcRil7VAjIR15pk+U0+GxuJr4WrPmeIlnsPDA34qn4cHb?=
 =?us-ascii?Q?lJrlphzD9I6RHw6AEXEoAoqH6phWYyGevniG5KbUPS6kGUihI7Z9n6QgB98m?=
 =?us-ascii?Q?3WQWtcJCO2bU+cPUtI2R+FaBjOYXkVkfM99KD+HXUQenPq9yfOQuGRJyU97f?=
 =?us-ascii?Q?oHY2lSRtI9JiYz/+KHqvuv56JJNAib1nrGNI5onQBELfsVoKH3b/Wj0DEG5h?=
 =?us-ascii?Q?8bVSRCMXRPY5v79DhXdnFPSoFEOhhCCJ4+iIAFJznYIYX8wVW1pyb9Y1FBD8?=
 =?us-ascii?Q?w5QID94hL4MVYOKLk0NSl+t9RR4AwKeeJJqcvOoZwAZVwTQoANrjZed7XP0E?=
 =?us-ascii?Q?fNre+/fI0G838mz94nmXWbpZp0V8e3t9HpnlU05MH+ayF6sMfgDXRC4+Rnns?=
 =?us-ascii?Q?XHuCw09RCDmc+pDRhFHBtVLYHc9sIVUj3JQwA8t9BJTuifz8Z/nbsXVHFXvY?=
 =?us-ascii?Q?LD60i8bqYuWPyZq9A8FVC4wBUl9NuPIPeH/UVlfnMaLRFL+sFBdqt+rH/Tdv?=
 =?us-ascii?Q?3vUo9/ODyCzJd6imLxtcWZyxgWu1LRETpm0Wm278AcVvJ68NS/W0C0SpOYwR?=
 =?us-ascii?Q?SxHf4bfumsnvGGGd7k7mPe94WfbXOaK6fnfIQzUOGFEGhLirBqetX7Yyt1Q7?=
 =?us-ascii?Q?EceycjFybdoMxcEnx+oUxSFMb3NyuqEnkOWpcouL3MqDDMpIryJICLyTQ/JH?=
 =?us-ascii?Q?4YZ0VUAzqU3IL1av5rBIGinuGUJeor/bj7fJk5jcr+ieIChrcgptLJ7Iz/oZ?=
 =?us-ascii?Q?YVVclB4IuFOWHcfJEGBNft5TPMmQWgB3EtiFqlcCdkhKJsdzdkz7EIK8w0OU?=
 =?us-ascii?Q?SNCrSZuFT4jr4IYsBzNxsCZ7HhY37G8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cWdj6L7RTs2RrLPY60Qr8dlgOaa4lD/HIXriL+9HJuzv97psKn1OrarlnAAE2YdfYr2/NwBDoduor/FdoUcPj7sQIQX/P94dEm2RwTfOqNBoAMvhE6OLxG61X2q4zLem2CmOUvAFLNsL4+TJyKLHmNs3o83plfc34EP+GJuhx9cwW/AV8ZWKcwDuAZRspHJetk6jKa+NnkCC1allTn94X8Sun3CxEWjEVOrAkVCwFUGvhbySeNDGOunSSqSvOeFF4RTzZI8vtYx8VDTHL7WgzmTzDX/mD5Mes9MN7Nrkuf+aiN10MvC5a4brngO+dFmZOoUiA2UKiAJlnne/vLSZDw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f22f703d-a186-4030-9493-08de85055763
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:45:12.0049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uivWxIiiuwR96jPK/fBRyTrn3XFUpFVhvsEvH733sELEUrZi4NJxyKrQyA20yZqdk0aGPyP6Afz2zj12PjGEAmpu3s7DvtKgDt/F5lsqxXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6455
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848724; x=1805384724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HmdfTJ8OPf7zCF+ZVqTe8RCbT3kd44EQuxnEOZ7TWMc=;
 b=E3ZOeKQANRcfzpGKkKaQ1K4BLeIxRt5vqA1T5mXe7KQJcmCB6+iqj8ox
 kE6rSpoqmHA8CZeQaxYR819T/2o3nRU6j6C/w/M75Xvas1NNe907fk7z7
 9eioF6vMwr2a773a8VmxP2I9BlWUxB1Ubsabs22Z0KONfxwKs4NRwD2Ee
 NvYYfNGzKjJjiotTUJhAcO7FoSpPAt6leXARzVBwmOYL3IRR2P8I7UBPF
 zlJdRQYKM3HMgtR4lwysfsX1Rug+dW4Q2VT/gg6QT/YdtPYA0SwihY7KI
 Ct/9m0GB0H2VacMJT9vWNNpGVIsnuXkDwHT/vBmt+l1FKE0d4gvTpUYPg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E3ZOeKQA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 07/13] bnxt: convert to
 ndo_set_rx_mode_async
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: AA8D02BE834
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Stanislav Fomichev
> Sent: Wednesday, March 18, 2026 4:03 PM
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> skhawaja@google.com; bestswngs@gmail.com; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> rdma@vger.kernel.org; linux-wireless@vger.kernel.org; linux-
> kselftest@vger.kernel.org; leon@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 07/13] bnxt: convert to
> ndo_set_rx_mode_async
>=20
> Convert bnxt from ndo_set_rx_mode to ndo_set_rx_mode_async.
> bnxt_set_rx_mode, bnxt_mc_list_updated and bnxt_uc_list_updated now
> take explicit uc/mc list parameters and iterate with
> netdev_hw_addr_list_for_each instead of netdev_for_each_{uc,mc}_addr.
>=20
> The bnxt_cfg_rx_mode internal caller passes the real lists under
> netif_addr_lock_bh.
>=20
> BNXT_RX_MASK_SP_EVENT is still used here, next patch converts to the
> direct call.
>=20
> Cc: Michael Chan <michael.chan@broadcom.com>
> Cc: Pavan Chebbi <pavan.chebbi@broadcom.com>
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c | 31 +++++++++++++---------
> -
>  1 file changed, 17 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> index c982aac714d1..225217b32e4b 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> @@ -11040,7 +11040,8 @@ static int bnxt_setup_nitroa0_vnic(struct bnxt
> *bp)  }
>=20
>  static int bnxt_cfg_rx_mode(struct bnxt *); -static bool
> bnxt_mc_list_updated(struct bnxt *, u32 *);

...

>  	.ndo_eth_ioctl		=3D bnxt_ioctl,
>  	.ndo_validate_addr	=3D eth_validate_addr,
>  	.ndo_set_mac_address	=3D bnxt_change_mac_addr,
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
