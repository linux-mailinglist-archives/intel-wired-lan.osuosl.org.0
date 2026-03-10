Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AvFMNzLr2nWcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:44:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 159DC2468F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:44:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5C8C614CD;
	Tue, 10 Mar 2026 07:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B5tGcetj1Y33; Tue, 10 Mar 2026 07:44:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7EEA61501
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773128663;
	bh=J+FV0BsV1KvqIK+a7A7T7SYiW7uKEp4bkrJ+2NE9fBw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q3lHKGbM3NWPRvuvCCljuaCLKPwGEqmUqSq5mKG1zp+y2OtpzbV5yN0oPJbde9TMU
	 SVCd14D2Oivf8R76o6J6WWPuVwrOPGh8fdWgcbjAz3JXEnu9dAAeVJYS/pgBQaZLsK
	 hV+5ned4AewvBAf9znXe//CX2Pi58LaH6iiS+3pfzH0QfUyYerIvex1ssl9P4ghKNb
	 cx8kAT6EoNOOm9uYGGiv6jS4Eg464bZrM72LNWQA+N8mLp0OX2Yqq2icLCmxJ1UXYv
	 fnkdr4Dcsd2r/eIR5g9SN1B0nPZ5ou6b5nm7/tvSo1FjdxG97ANT6g8Xopi7+qHzOS
	 LxeifzNMIdjaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7EEA61501;
	Tue, 10 Mar 2026 07:44:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 591E335C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4ADE9842C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:44:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id as1aC6sRQnFl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 07:44:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65A60842BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65A60842BC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65A60842BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:44:21 +0000 (UTC)
X-CSE-ConnectionGUID: Swlt7vQgTCuJcKvY4Ez7sA==
X-CSE-MsgGUID: XpNqVpyVRzS3Z2E5L56tyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="78044004"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="78044004"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:44:20 -0700
X-CSE-ConnectionGUID: 3oCsnzYdTp+sF8Ge/pWhUw==
X-CSE-MsgGUID: hT1mQrlATV+A6HbcU+K6Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="218017349"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:44:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:44:14 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 00:44:14 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:44:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G556tbvROK/Cl5wzKmeD5Y5haVygWq+c2SXBnb3lwE4I9w45UEZSBlmcsHMuXb025alhWEUtqCFHX9iHhdwcUR6jvNgH2zAD0IZhoB0Jj3QzLFuaOS4YCDn9wFQF6cE6LO0ho1skeX5FQBxYH8BWJ0m6tupJ5iv8FlCCwmGZiD4FaIK48roRNn294fe5xeqGEb0Y/kGcHBzLHs3uDo2lGpvJgHfCwYyZa3+uFXZbUpmX94emOF/qRFvmToRacPyBA0dpCI/73HS3LyeHpOrR1XMaLk6UfhbJXSiCFv4FuzWASg0Al3EKPbH186LJ0fsAdpcVYwt1SQbiIC0SW+Lwxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+FV0BsV1KvqIK+a7A7T7SYiW7uKEp4bkrJ+2NE9fBw=;
 b=F1vMN3Rl5ubB3dUUPMhRWK/Xae6i/xYh8KYG8c0OGJx/fjxqyGtTlCMUc1rifht+KY9W2YGk2qxvoEZnL6MXDiQc8w/U5x8RpfTIUq+tEOTRUhoCd+L2fiaH9lmK9qrZniW9DmspqGRg874hycSOCKU0K1+wpk7U4QpUID7XNBrIcuhGiPGgXSEMnfgiEU/sc8DY52Zc6FZynSrR9JpuA/jnqJTv+I+WHI0oHQTAf8fEWSdJgyZ/NFWsn6CRPu6kEGMzP5YTevrPeDnxjybgo+fUEBNA+L//0GkAQ7ovHnUuV3MI2Atr82ux+cgCFMoxZsObWnnbkCu1BxzNzWmnJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB6938.namprd11.prod.outlook.com (2603:10b6:930:5a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 07:44:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 07:44:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: enable build_skb
 on the non-XDP small-frame RX path
Thread-Index: AQHcrmBIrluTPj9hFUCvwnCkNEN1QbWnZoJQ
Date: Tue, 10 Mar 2026 07:44:11 +0000
Message-ID: <IA3PR11MB898643FED5DCC14C0B208BF9E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260307182808.155027-1-kohei@enjuk.jp>
 <20260307182808.155027-3-kohei@enjuk.jp>
In-Reply-To: <20260307182808.155027-3-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB6938:EE_
x-ms-office365-filtering-correlation-id: 07f19f1b-a085-4339-16e5-08de7e78d1d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: ltNF0WILIRIV3IHxRzKrqtJZQB9XdRosSwbGDFCuNFJEjSizVUfM/g67jnxkH8bgIrDE8KZ9gjc8FTEOaOtAI6L9W5JQ/CYiodqKr4OZhcFLDz0vlmiVkChw8y/SBgsOVuH/Dtxlvvwd6toFZR9/wTtzo7Sy3XRivQe/HnIvRPVaXIHVlwZZbcpGkpk043xGTa4VqUgeDdX3o4u+Oo0lq4MYpRMvbGvj9v1FNmogv1yX5hvzWgh3cibnzxuEX6eF9Yn7kyWJw8DCDOPHhUfsNdCJq7hltyxY6eEG7WUhmlVCK1SCaDm6ptyA/7/JlUsPpTwwXKcXGA16JlDY9nehXZyOzvlvCuz43r4cD2vWDTU/2QBKHMra/SdzHUS2esFDePjAPYV4NAHuUHfHXcK83Pnzpeqq1Thdtw8JiZOPTzpQo6cpkTrki+vLj9cWwxikGT/oRm01RyQFO8p/3MWQwOlANrUISUJ+MgqtS9lrRDAoa7GjxOkgYifwGkZsJ4WbeWvMLpskFXi15gIvnyN/fZPPEslHUrcOTanuymaWK8IVAwTZrJ3yNkPrgdvL1CkBXosoNuo4a/X5Q4vaBG36fm8uIJ9AJzzzAf9EKUqgBql38WvGdQ62NpkaqPBPF0dIh5J3UrVtyU9VcmrYe3z/CaCGnb+kdFiwFyiPJvNqhoxRCvIcU2hNs/oMqvbtswu6nUzf+LtRByqFvVVTZF5Ln7YqTwE1uL2O+/LDEIg3Hsl2tmZJCMalEPSxcWezZVoOPvVddLEaUKaLm5kiIsAK4G48SKWmqjR/an2jEYXWXdU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?umvC9Nd+SoUGI/7wQETspl2k37oF9Yh7GU9AuglXj5CBMqq+864jbMJnPhph?=
 =?us-ascii?Q?Lm6TcTbbT8xIRsy46U5WTodB4leWIf0IPQ9OTkakb47hiv3hyMznryp5hoiJ?=
 =?us-ascii?Q?PDu+EDi5kmc8wEspTIUgKAzwwyVm36Plmn8pj+kPCR53i51Br+DGwZSx81Ql?=
 =?us-ascii?Q?aWRRgsBtqoDmELkCWNFfeEDIi7AiAmV09k1q/dXzRaJQQKV83RR3/D75LXsd?=
 =?us-ascii?Q?ToX8Ypo5nN5oiJEJCdrFyGRbkLEPP2klbIVll/z+2P9zEfmKs67I1b6NK6uj?=
 =?us-ascii?Q?jF1/almIKK1wMmYEpK5qsU2jMcmti+3hOvXDFWW7E0VmZ/IRjj8rGK2sOyzK?=
 =?us-ascii?Q?C9uIA1VpEsYO9PhUpEMrv2zOXl18ZRrdiSKZvwndNIzGQaViOCh+8QGNFlsz?=
 =?us-ascii?Q?wCIuXtndG/EXnQxZRzP2SJusERwGBdf5A4gfP6WC+onoWqRiGHJqLIlfk/Os?=
 =?us-ascii?Q?c+mZEcQJnyCDsN8Rxs6pET8qlSbGhZ5xPhhZHaNtsRToWZD0WahIDDXZVbPZ?=
 =?us-ascii?Q?p0mCbk4PFzGm7yJ3cpP6EIlnce1iXwPuh8F4q01a5aMkE4T6c0+KAXeho1bD?=
 =?us-ascii?Q?QWABDmZmtTHeyPDufBkgTjZCtwWPw8bOMjyF3wd7mrnEHlWDRbK0hXAwYM3v?=
 =?us-ascii?Q?nwgb0GtS6Sbze6STYftgxkJ8Pgd7CD0uV2oI7V4Ky5P73JV0Il3u+W/cAzEK?=
 =?us-ascii?Q?PWhn/3O+2vbLdnyivv1vEdSN1/nKiDrvmlf30DO+cTTL8cQeGgrgKTJ81pMX?=
 =?us-ascii?Q?X4ZRr3s0A3zrAxa6Td1YDqdUEyf19P2B/ThUmzWaUcx49rop3PwStLc8ACE9?=
 =?us-ascii?Q?Ed+bVNIlGQ/+w7CH1Ny7TbZ9SmoInasXAZVyE63eKEarY/dYXOcOHDHrQurB?=
 =?us-ascii?Q?nZFG8L4g8O1I42SxEUsbc46f1x83a2KvTYz9zRHkkFF2kldJ4UHzLU92R/eH?=
 =?us-ascii?Q?9tdCm8IYMCRNqH2+dzBoTTQ5w09zPpOXyqaTmbtiGyuf2y0qukRbn0wNX9N2?=
 =?us-ascii?Q?vxogFxTYXp1oJwRydShlyjNIwDBVfuTc5JQAhMphO2OO2Xdcv86rWLmtzo7i?=
 =?us-ascii?Q?dClynN00VFc3zjrfcjAq9lxBUWmLx4ycJD7Oxdqja3lmurQfGWSkWrbUmKjX?=
 =?us-ascii?Q?ujZA2hhCegr2nt6uVwJezhrhLIswexZ7Ed0g3RmY0YURF+NU0aGuvnZRI6Cw?=
 =?us-ascii?Q?ceDsYy9prn6cBcub/D1HGuQS7NHwC4zErbjm+oNsOIzxSv911m2jo+XqOUNo?=
 =?us-ascii?Q?B3RZnILL53f9lXQl8GnBOuIWdPQ9THUILa5s8TLlXzZRwMRCDR/KlPKe509U?=
 =?us-ascii?Q?dFviVHwK5dAbVWI9S8/XdYPvwqXgl1ThVKDFjgJLMEI6+TJmLVR6aPLoXIp5?=
 =?us-ascii?Q?uWERiEMoOCz4699DQMyPreQr4ePDQ8IzGca3O+kfEftUmZDBKNyR+Q3rmBst?=
 =?us-ascii?Q?ZJeS9eCX0qNy5HU+tk7BvtkgJMKKdDNU0CY5D1NH7Lw1y12pxr9X727rQuTj?=
 =?us-ascii?Q?cl4vwRxb1W6BFj/z7f3GYwRpVztZnCCazLZnCxej7yDh6DT4Z2IVHrEGbOwX?=
 =?us-ascii?Q?BNW4jqahnxGuk1yGJE/itFxcBJli/A3Wsl8HDNg/kMCJB9Fmd23no3KP0XLs?=
 =?us-ascii?Q?Ue7z0wiH55010VMovx5t5uwWJeVznULCxZSK9Iopl9UCjvj4NWgOTJIw4wr8?=
 =?us-ascii?Q?rS4XsbKJW9I5NmK5yKXvC1PDUqP4QJhy4gOyOsbRVdsq5UpnvDSMuvZtyHg+?=
 =?us-ascii?Q?/DxI7qWJgn30spcjmPdHzpl4779xXt8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oGuL8Wl9ssWVPY/4CvdRFuROt5bSzNIeHrt5wgvcHVUGXJEPJmQVa1nP1mtKuBhheqJKzwd0Mvsu9uNe5lIm19nrRrMQ1F18JXtjssBpjpUh/qHrmtPB8459DcrcB0GxsoYLazuOgtqlbioOJNDg3VtcqqCIt8Qbg6bg6OdG6c9CafBoEmdaLuNdJRYy73eoplptb8Akbx+5dJhkc0Ck1h9h2klEImU9P5jFpiLppfRRNW+mLijhbXkaBmRrO9k79niLDB6GHJZULGCOxX5lG3yY3CHlwKMxkWi1hD9/vx7gYg8c0ifFKQXfYRJdi2MPo2MlA4UeC7q0rU8q0UToVw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f19f1b-a085-4339-16e5-08de7e78d1d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 07:44:11.4575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ZeHxGJlexNF2HR0xWjAQt+Jus2ryGt50pENbjEFuqzAjQJdcm+gMmMclpsOMZS0n9eZBfnYr57P3IxUG+WP7pmGZ61GZhqZd2/oLQ0otsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6938
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773128662; x=1804664662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NI+ZsLlyAp0vCsHTBjSSfX7x42wLafVICoVl5LoKmpA=;
 b=KzFB5GYxNrezdvtUMGxHXebPWEGW3fLooRav3jQrWKS5KaIni24y6Q2p
 wcXuTZ74YBPCM7e+ej2xeeTkxwmWyDW7mjGH/pslRr2UCR2lIjOtv8KyR
 uEqAmi7Ot+Z31RW2NxN+Ez7sxtSpTETFjrmXSBhbXW41WlrsO4W83S6iD
 dtRxyZJiL2zlM9RV5lKHfEDW+B6LoPZI7yW+7wFRFuNv0Ux9zheNE5db2
 SN7ytCcURAOPWyx7lvCGpxLXyz5O9Lo4PkQYRBtdB/kjIdiSvL0mNuPXP
 PwvIRvyjSkj9tABItg/OKKOw4FZkqj0l/KdOPltLZSITOA+fXNRNtJgda
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KzFB5GYx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: enable build_skb
 on the non-XDP small-frame RX path
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
X-Rspamd-Queue-Id: 159DC2468F8
X-Rspamd-Server: lfdr
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
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,davemloft.net:email,lunn.ch:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Saturday, March 7, 2026 7:28 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: enable
> build_skb on the non-XDP small-frame RX path
>=20
> igc implements igc_build_skb(), but it is currently unused because the
> IGC_RING_FLAG_RX_BUILD_SKB_ENABLED bit is never set. Enable the
> build_skb path when XDP is not active and the configured maximum frame
> size fits within IGC_MAX_FRAME_BUILD_SKB.
>=20
> In a single-queue small-packet (64-byte) RX microbenchmark on my
> setup, enabling build_skb improved the receive rate from about 3.11
> Mpps to about 3.30 Mpps, while reducing missed packets from about 484
> kpps to about 300 kpps.
>=20
> Keep the XDP path unchanged for now, since it uses a different RX
> buffer layout based on XDP_PACKET_HEADROOM, and enabling it there
> would need separate validation and buffer layout adjustments.
>=20
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      | 4 ++++
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 ++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index e66799507f81..acbd2c237667 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -734,6 +734,10 @@ enum igc_ring_flags_t {
>=20
>  #define ring_uses_build_skb(ring) \
>  	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
> +#define set_ring_uses_build_skb(ring) \
> +	set_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
> #define
> +clear_ring_uses_build_skb(ring) \
> +	clear_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
>=20
>  static inline unsigned int igc_rx_bufsz(struct igc_ring *ring)  {
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 3a4c1ebe4faa..1f3ed1e4db1b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -474,6 +474,7 @@ static void igc_clean_rx_ring(struct igc_ring
> *ring)
>  		igc_clean_rx_ring_page_shared(ring);
>=20
>  	clear_ring_uses_large_buffer(ring);
> +	clear_ring_uses_build_skb(ring);
>=20
>  	ring->next_to_alloc =3D 0;
>  	ring->next_to_clean =3D 0;
> @@ -654,6 +655,9 @@ static void igc_configure_rx_ring(struct
> igc_adapter *adapter,
>=20
>  	if (igc_xdp_is_enabled(adapter))
>  		set_ring_uses_large_buffer(ring);
> +	else if (!(adapter->flags & IGC_FLAG_RX_LEGACY) &&
> +		 adapter->max_frame_size <=3D IGC_MAX_FRAME_BUILD_SKB)
> +		set_ring_uses_build_skb(ring);
>=20
>  	/* disable the queue */
>  	wr32(IGC_RXDCTL(reg_idx), 0);
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
