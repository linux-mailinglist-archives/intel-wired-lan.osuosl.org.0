Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCtjDTrdu2lXpQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 12:25:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4332CA425
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 12:25:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FBE28413A;
	Thu, 19 Mar 2026 11:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n_SWg0hLOTDt; Thu, 19 Mar 2026 11:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9175384185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773919541;
	bh=luqWgyG76aQiHnRwaRtpVNC3OH870n6BnkKU3NQHbJ0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sr//bI099KE6rdYrxJGPC+ueNej/yzvIOHYq3SUn1N1txd6dBJk4DM1+Y5KHe0MPR
	 l91SRxlhLaLTHNo+8M7ZfEYosXuakIaECNMZQr5eTwuANxwoJ9NN8mhOFMHFcupln9
	 nsD4SfhsyvsjFQ4xdiEws5riJrZI25XaFD4P3MlIozIQqNYriORykZ3Kr1UYBdRUL9
	 Bh7Iap94f5tA0y2FCfqWno69rUdkhNTT3kpoNFXE56rx/0vSyGhpTN00Vcbi7SrpYW
	 +3VnvQfZAik9QsVx7jTYWyIgcYKTP06xBe4U3cCNtTXDTKnSQWd3CV+27wz1QplzTv
	 a760C7ypQ5lkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9175384185;
	Thu, 19 Mar 2026 11:25:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F5C51BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4098140FC2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FzRQjC_zWU99 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 11:25:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 43FAB40F2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43FAB40F2A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43FAB40F2A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:25:38 +0000 (UTC)
X-CSE-ConnectionGUID: Je/4b1xFRo+FaBJU4HjAPw==
X-CSE-MsgGUID: I/yKePf+SMGzaPAnrbzxTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75063984"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="75063984"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:25:37 -0700
X-CSE-ConnectionGUID: lhsvv4yCRdSjgH644ZNepg==
X-CSE-MsgGUID: irc28kr8TY6ikvHh716DbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="223154773"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:25:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 04:25:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 04:25:36 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 04:25:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hIFJygoQGUrj+JvswhTfZ703Mb1CoQMk2+R6x3z+vTj158ekPGwWvAHduXfOtVHcWzWYEJVlZQM/ZzVK2dA2dWn7JGN5U2YTtEFrA3rF8C4NLYdr8GgwkA1HpkrDNIy287Bf8bNPhdF7g6rON3qMSQRSe0VIqlDhDmyQ5tcrRHz15CSHUA18Fb2MGLOJ7JJwpIwcW0mor0cWZ6vE7V2nUP/oxgYuBYzFdUxsKTV0kO5yI8ZM8n0QSFxiXOim5ZEL84cundSVRJQAfMu2e+PCnX+cRwIdcjk/f9gStoBUzMCIa/yc/9+BmBO0zdmYBFCkH2jwd9+w728AquaRm4Jr5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=luqWgyG76aQiHnRwaRtpVNC3OH870n6BnkKU3NQHbJ0=;
 b=yOEChCsqgVFCY6rzqM7VKNypl2FSSClGFhVmY1n5nmnJr1H7NKm0UXkxhLOKpd8r3ZORCIZUc6AYRev83RKCVTpj/qRAr7dx01ZZGkxlQZMZjopfWHSrjF+q3x7gkvmsb5BD0NOl4EJOi8FJLPewnt7i45oug4zHOdXhEH4iNrZjiHjo4Q2m3KqGL52AayBUOKzEitTGha5Ut9Nvex5t8IqL1w7H2TCLbd+HdSWQW5Jk8CbkEHqtebTs6HhAXThk7+oouiEmt0s0MdZldjAap5cNpOnbOtsnGHesjAkJStNqhLjz53sUrnefDFa+NqBuw1aHy9kI3EsLPxuOcjCTeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF69AE895C5.namprd11.prod.outlook.com (2603:10b6:f:fc02::2b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Thu, 19 Mar
 2026 11:25:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Thu, 19 Mar 2026
 11:25:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
Thread-Index: AQHct5HD3iAIZ8PKxUCcdRRqwlpCX7W1twbQ
Date: Thu, 19 Mar 2026 11:25:31 +0000
Message-ID: <IA3PR11MB89861E11FCDD0469A860604AE54FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319111659.551039-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260319111659.551039-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF69AE895C5:EE_
x-ms-office365-filtering-correlation-id: 5f7d264f-6f73-4579-fdf4-08de85aa3b1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|7053199007|18002099003|38070700021;
x-microsoft-antispam-message-info: Gll+Q6ntkgf3z2Uazq/emnx1RoMqNOSiIdfLCobLGfyQHLw+6y58kyc3Uk5UMGyTByCx5uKj9lgmmQeJ5/F23ZaAWE3aFSRIvyZlLeARa/UIZN86Lo9/yUzAr2oTXuU7RJzP7Qr+d1ES01DIuni389eAk3wbi7HnM/pLLUGLNEfcg2bWVyw0XHV4J1gvI3Alh94XWZ+MgxGIYM0Fc/qg3ECs5CvMu1N9r7O+T7yvXJZiJzSf6UJIa+Bfa3YqsLlsL5QHQgQJhG+m3LfF8/qg+Z2Anj2jf8b88VktUs9nPLS8eeeO709ije2SevRPXZxH4wF/IG8pafvTyJwTeUn8/CLa9KXbfpdUMEmJr+W8fmlgZcY+tfVAv28y4bUSNTOw7QcES4IOJCnYKjZcH0pybBcQ1RjVINaWt+WX2fspuNadyEUMph4Sl4XUjV/ILQagXBd4/dK8r4BFpTdE3AL4ZfXHOobSomVglpMSFwtnOZJK+nF+xoAN0yDdT8EFUnCobLsQ+sgwJsdp7sZSriOvnWY1BN/AGBaeat6yXjBVSPnhGZ1bc6+Uu2QM4V/nz92Ma1JiGpG/YwqDuRGVY4i2Xel7GyTCULrPYX6DsWCznBuETliu87UN/ar5kEslQdS6yYFARPNnXqxOOiq1rff1JS000D7o1/zbf64wYpM2MH/FAxiHUzgcuPc4c+ds096dLJMHFOzycW4vlD3lH6gxxrsa+9Q637ki59KiMCaH0w7u//vM5h4iUZ4fxKsRZkcvxfy/KdVG2yIPVJUEF2Um9Cqvv1QxSRUoTF+lpGZRE1g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(7053199007)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6fYSRHtREdYs3/7Qnjv+nbgwzMQiFXtKLBgJVfKHBpi0WqSAUI1VOddOd/97?=
 =?us-ascii?Q?sjq6KRqsfIaQ69bWd+ld4LqgqocPzVxgtCwpAQvMlNxDT9SJxquUXckElpqz?=
 =?us-ascii?Q?ziKKPbw7mMP+BIbaHUUH1Jc2p9Q8jTNC/JiDYsdw7wMYEeRPLmj24ZCe+eYE?=
 =?us-ascii?Q?c4WNLB3YyJAZIPnzcFOM+a8C+HpBDQENvBne2t4l2m3wfBhVFdo3jEwmFQwv?=
 =?us-ascii?Q?qKKM6Y3nuYww4TpuXGBP5rPnGmBxBWKMbeXtEpyJP/4p/muua7j4S4FUB3Ee?=
 =?us-ascii?Q?rUZ+BKZbFYUixeKMF8NAEYrQJsr0FhP1NxBe87YzUlREmc/iepT5bxwdDwuj?=
 =?us-ascii?Q?3OL5HzTeAUKLSh3PGdrXJwtwzm5+wOgxKID3PLCAXaehgSVcEMJw7SpK1NFd?=
 =?us-ascii?Q?gtgl7hoQxvOP/RWtnJZTSVO/BxMVSBNvVuI+FXJtjQ2aoVH5QCL5p6gXv270?=
 =?us-ascii?Q?DAbEPLkZ387QAoDqf/jwzZghdULKfcbD+i3UU+ZhpLBr34lN2VQxJaoQ6pgo?=
 =?us-ascii?Q?PfKKB/RCKUg/7CZgXa2FJxHfo2h1zb9ftNzssQWepi3bZj3qWmcvJMWZUXt4?=
 =?us-ascii?Q?tCE+8dJ5C6dxqEzoSXL/IzdgauP4Z5x42lPoP7TKEpm+bzvNDDLIxWGjjQl1?=
 =?us-ascii?Q?6J+Q/sQogtKHHKdWNsV7VWiD5OZI4T1JF0nKVAriNOnD0bsS2G5rSPf7T64R?=
 =?us-ascii?Q?EtQ1AZHbz5AtesPg99icbU0uCndZ/QwiesvzeTLQbb8aDyhaCMO6RtDGXABW?=
 =?us-ascii?Q?TUDpBoYi5kA+culVc0c3NxbYqHbWZnDr3yTeXDAtIl/I88lC6yRRlWhE5CNO?=
 =?us-ascii?Q?XL2ivcNquFFKGcAK0LreOd76cuN9YBr1RYkIYyL1GcTdmy+K1gIa3K4WRGQD?=
 =?us-ascii?Q?BOcck17UVS1MGjOwz62FMAcsMdlY9B3g1mjfncu4YZ/lqVcAeiqK6keS/Gx3?=
 =?us-ascii?Q?dei7g77Bs6OrhoRSRzQntaxLCRGY3y3Oq/NCk1hNW7/XAEgSVySFQ8aLOWlT?=
 =?us-ascii?Q?QtYZtXIq8Zm8GmjT8PBUId/Ni6wjC/LzCRX/dOI7byIahCV4qeoF0t3BBQBS?=
 =?us-ascii?Q?yLTE1ZDHJYDjCFmqxUMaq3+g2CTKGGcIpAi8EpEm80Jo6W95ZXK7Sts5s5r3?=
 =?us-ascii?Q?LlnkJ3wukf+iF4uPCkMk2JxxKKZdbdCdBXSCKI76aZvk58Rz47DdZj35kG5L?=
 =?us-ascii?Q?ahwvVh6CE7YnidihI8j3ih8nEl8aRvOg9+uM2ASZEs4utxViU2RpTnD+gJCA?=
 =?us-ascii?Q?1fAPzN008yHBJAvvT5Xa0YsqXKEs6xZpmvrDNuyjetvdWtX6xkCbTSRwh/bB?=
 =?us-ascii?Q?fjD6rL50gDqg9OjWVyccb0zAkXXcIEWMIo28lLy577g+HjmgF1iCuYHGuEg3?=
 =?us-ascii?Q?9cAWtvyiGMFmCP9rUu2j/liIwl9WvOzoqPLQTgf4E0kOu74uaY2l+yEmR7lr?=
 =?us-ascii?Q?YoAOdPTedwjaf61FEuvDFGQqyWz8aPAXDNXpXGb3D0gwHVxcggKwjcgdWKpi?=
 =?us-ascii?Q?TFICuOTIAz3osvlNFjufUV7eiJDRT5FutzKTwioFca4A8hj83kbiwQH0fFv6?=
 =?us-ascii?Q?QxvtHl87WPjXp9g/J2MIHbZ5XKmSCcwH9XHX4MQgVO2Qv0b3l+IVnCf+fDih?=
 =?us-ascii?Q?6YAZIbyxLYrUheAgv3rKqekOxiB9QCSe/IBOJoaE7ULg2bj/ey2CnxV58vXd?=
 =?us-ascii?Q?bb4Yhw0oMs6eJeTGTmIOCLNfudtuz0hamKYAOhEaT+uSSQ/0nf+qlFTv2/hP?=
 =?us-ascii?Q?fEyjGjd6hP1pIgSoEUMMlVm7endOdeI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f7d264f-6f73-4579-fdf4-08de85aa3b1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 11:25:31.5371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PV8tf1OjQe2/UKpcZ02Xdj+ioXyOX1HuGnxullenO4BzL/UTrclt89z7t5JHQB7MN/RY5/iJHjY+o5URRsHd0nEnaaz8/e+yAg3J2b7DFTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF69AE895C5
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773919538; x=1805455538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t0Bjub2PVoAg5Dr/gJ0EklBcv6lq5FbMsdmBQECvsGE=;
 b=GazSfv4864NiWLUrS4Iouhjh2U+4QgBQIwXnPdwmvGDScFLWgmgKfuWU
 GNF8/TrdFsFGQFEVlGyA/GCwkoOSUnFF/EeddlzE8H997mh4+mEn/MvWJ
 8T3UVlyAbRuzDMlHYvwqNbFog98qQUp3G1grrkW6NXzl3+Lw7Z+5gpm6M
 NI/AH3zkNmPX7naCNmiPEw18HXW2+vDbxrh6AEn85NoRjE7HvlSsphLVT
 aC2UBpNVeVjKE7xbgF643DCYgpyi0aHMicpWtuciTrrj6qX21GPhPgPr5
 OrdGGevQjCUor7abHh4RXrCGs852E6+MZxVO8yRJCM8JWGRCgh2mpclHS
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GazSfv48
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
 support for sideband queue operations
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,msg.data:url]
X-Rspamd-Queue-Id: 1B4332CA425
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemyslaw Korba
> Sent: Thursday, March 19, 2026 12:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write
> support for sideband queue operations
>=20
> On E830, PTP time adjustment commands sent via SBQ don't generate
> completion responses, causing the driver to timeout waiting and return
> -EIO, when trying:
>=20
> phc_ctl eth8 get adj 2 get
> dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5
>=20
> Add support for posted mode not to wait for completion response.
>=20
> Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> - change "postpone" to "posted"
> - init struct with {} instead of {0}
> v1:
> https://lore.kernel.org/intel-wired-lan/20260310110700.345904-1-
> przemyslaw.korba@intel.com/
>=20
>  drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
> drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
>  3 files changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 8866902efb91..c89c6ca1281b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
> ice_sbq_msg_input *in, u16 flags)  {
>  	struct ice_sbq_cmd_desc desc =3D {0};
>  	struct ice_sbq_msg_req msg =3D {0};
> +	struct ice_sq_cd cd =3D {};
>  	u16 msg_len;
>  	int status;
>=20
> @@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct
> ice_sbq_msg_input *in, u16 flags)
>  		 */
>  		msg_len -=3D sizeof(msg.data);
>=20
> +	if (in->opcode =3D=3D ice_sbq_msg_wr)
> +		cd.posted =3D 1;
> +
>  	desc.flags =3D cpu_to_le16(flags);
>  	desc.opcode =3D cpu_to_le16(ice_sbq_opc_neigh_dev_req);
>  	desc.param0.cmd_len =3D cpu_to_le16(msg_len);
> -	status =3D ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
> +	status =3D ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
> +
>  	if (!status && !in->opcode)
>  		in->data =3D le32_to_cpu
>  			(((struct ice_sbq_msg_cmpl *)&msg)->data); diff -
> -git a/drivers/net/ethernet/intel/ice/ice_controlq.c
> b/drivers/net/ethernet/intel/ice/ice_controlq.c
> index dcb837cadd18..a6008dc77fa4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
> @@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct
> ice_ctl_q_info *cq,
>  	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
>  	ice_flush(hw);
>=20
> +	/* If the message is posted, don't wait for completion. */
> +	if (cd && cd->posted)
> +		goto sq_send_command_error;
> +
>  	/* Wait for the command to complete. If it finishes within the
>  	 * timeout, copy the descriptor back to temp.
>  	 */
> diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h
> b/drivers/net/ethernet/intel/ice/ice_controlq.h
> index 788040dd662e..c50d6fcbacba 100644
> --- a/drivers/net/ethernet/intel/ice/ice_controlq.h
> +++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
> @@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
>  /* sq transaction details */
>  struct ice_sq_cd {
>  	struct libie_aq_desc *wb_desc;
> +	u8 posted : 1;
>  };
>=20
>  /* rq event information */
>=20
> base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

