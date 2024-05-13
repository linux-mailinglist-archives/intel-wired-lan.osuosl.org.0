Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5DA8C48F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 23:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A6DA41578;
	Mon, 13 May 2024 21:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evYA6e3gn4gs; Mon, 13 May 2024 21:40:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5526E4159D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715636436;
	bh=UCBKzewFXH8OmOZN+WpGNz35yvTAbUe24CaKhC8I7xA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ieBjrX4eMPQRxA/BOqJnwUq+eNtbHtNPty3i29zx/7ma/Rk1w8X/Yp2xumsKC4jRy
	 0SK/opprtMeHVJv1Yauxgov67zLpOoTXDPD+70JNWiXUkf6RbRpMbk9SXQ9/cFJepV
	 4xlG+iS09AOqS4E0SdRyZ11XPDHYOoznmnKdhr8S9M6XowiX8+Q/dIh23C2yfpfLEm
	 koc4q1H9qtunlWe/lIBZx9DvPw8CBRbZW3wNmHRKhl/L+zhDopKN6NEpXJZ0EE76lG
	 okoZK8L2nBhBLcilh6ctgUlDtHcexDcU0jS2HSJr16uRuU3kcHhGPDYWzKj+2jisq2
	 xBkmoyLhwtfLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5526E4159D;
	Mon, 13 May 2024 21:40:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC60A1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C33EF40B19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:40:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ZJs3lE0wJJo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 21:40:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D034409C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D034409C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D034409C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:40:32 +0000 (UTC)
X-CSE-ConnectionGUID: sg4DR7QDQw2CFMRYSXk1rw==
X-CSE-MsgGUID: nkmlwaJQT/KIpr/xTLCP4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11467129"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11467129"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 14:40:32 -0700
X-CSE-ConnectionGUID: KaAtyFerQn+diFm52qK/+w==
X-CSE-MsgGUID: 2mEeJLqlQeabSVZQP0c9EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35211246"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 May 2024 14:40:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 13 May 2024 14:40:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 13 May 2024 14:40:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 13 May 2024 14:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mixob7YcQXsoA7iSeLF/e1Dm0jXwNf0Djy/E9UMZ33iFfBNQ3ZWogdvj3ycNrmkRnAeksaxkEVrRIoA35DJaZxxUhh2C4zmqWzL27Z4jTyfLKglEF7rRhqeobjiULrLo6NNAKN6pHiilhz+b2Eau0GkSVtFulAJfs+UierY0c0gq456x2V073Cz7x4hiB6mwzPFKBm4OFyo4DqvKowxqvytk2CMUG9N6cF2y5TxcygIs1+GbhOBWiT7c1TdeXqkf6rDvC5Cck5iHnAPDJLs0wYCAxKwajtyY1jH5YQJxVefAHxd4ju/L6rJbmtzvFGR0vWWiEfSNT2S1p4gIcr2UGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UCBKzewFXH8OmOZN+WpGNz35yvTAbUe24CaKhC8I7xA=;
 b=Y9R+eunoPNGBB/1PIuHo2UIMq/smmJbGvh2wyy9gppoE9hc2oBzEtMSQ3aIrs9GprjNbUWzoIzP14snb6Flv3X2kVSBccWu5t8Fi4PPlf5ga9zrOyZuvp5CZTdqP0lg93WxlRzMmmlnXpWxDFcOIp4a1bB97CJlDcqAB4VYq1IzqSwHxdC+muC/GodHURbUq7UwkOm4gR0+H80EviXMJJuBaCG0HSDe+Z90YQGIrRpAAkuAeyVI6fip58lPnebE7dHMcG/2fDronme/ay9lF7dV7I3WdiANhMmKfE827CBqzE1NQv08oHL78McjOeAPsNFwAR7e1MEjEoY5xlAFYvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BN9PR11MB5324.namprd11.prod.outlook.com (2603:10b6:408:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 21:40:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 21:40:28 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Jiri Pirko
 <jiri@resnulli.us>
Thread-Topic: [iwl-next v2 03/15] ice: add basic devlink subfunctions support
Thread-Index: AQHapRAlprxQA5hzQ06GaZalHUQZ9LGVAH+AgAALIgCAAKXzkA==
Date: Mon, 13 May 2024 21:40:28 +0000
Message-ID: <CO1PR11MB5089141F2033C021639AF8BFD6E22@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
 <ZkHztwMeJFU73WQm@nanopsycho.orion> <ZkH9DurNJ/OFDvT/@mev-dev>
In-Reply-To: <ZkH9DurNJ/OFDvT/@mev-dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|BN9PR11MB5324:EE_
x-ms-office365-filtering-correlation-id: 6d3ae5cb-c3d0-4b2e-b7c9-08dc73954e7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?PcwCrA32tYbJ4j4bQ9YvTRoYGC9OmahF+QXe+6MIYsmRDiNazhyUisTx55fj?=
 =?us-ascii?Q?QdhNVTANAsU8QSK2TuiOetVCkFVDmyMhSIfOG8phOMSoCaW8UejxwJCnT5Rp?=
 =?us-ascii?Q?g2Ml1lQKVTey4zSPjcv/WhsBu7x8P2X5aKsVaMD1+nNLSw2BL0HRju2APxyH?=
 =?us-ascii?Q?TjUViqZ6ORULBCxlIkr7A8hIhmukmbVO/6v0GNyJ/uLxSmBSlgBKXqu41GgD?=
 =?us-ascii?Q?VNxr0Qk2S3Rbdj+hlvNWr/Dy7w0QdCPapxVF3k612GLdUZ0XIQzi8/SxsDCR?=
 =?us-ascii?Q?1IqWFd0BD1289dDjRyAgZGcSitI9d9N0YOir0jAHljhtnu5DbV4f16IBi3P2?=
 =?us-ascii?Q?86nNV8DeLUhJ9ja54d22nuojSnxnZQTdOkZ3RTjJPYufE0EsIN7v67UCq4pR?=
 =?us-ascii?Q?9mkOXA9FV2dGiw0OhbaWjUbAPM8byysv0PWzzXzU71lUE0/ZSHIdLLq3wSRn?=
 =?us-ascii?Q?nhQfYSgS4g1KfBZiaBb7ODGrhQQIy9UF+gY7S8w97pfyl2TZaC0JfeeTJrIv?=
 =?us-ascii?Q?OS7k8clR8m21xuimIhd2hI5xz6cUo/r48r7b7MLXFPUUhmsHDAMm6h2K2EX5?=
 =?us-ascii?Q?wyuUeEnC3RSGcefrgr81T6a8d5Kt7CYF/zUpJO0zdrR/4LZiIKEypxV3L3Nw?=
 =?us-ascii?Q?fobrxDqqoAzxDbJ/EQ8Gm1oyesLL+j529l5jD2VM6n/ukBx/8BaTJDnBgBPi?=
 =?us-ascii?Q?D+y+Ie6ny1a/pfkzzN3Lzla/LNXTeWdYAaBn6azbIfN2tQ5Ky/OT0nb94Q5e?=
 =?us-ascii?Q?B4p8Ex348zfW0N5HGVrzhABjEXrNocgCyIDgq+r/VgF9vV7MWKz5V8YY2RaK?=
 =?us-ascii?Q?q4b44NJny35Px1WEhLLvcjXk/+mwJyzRlJz/EdZzIAq+E0gaTkXC/8znTwjY?=
 =?us-ascii?Q?K+mu5EEKPpzsHpLcAawKgpFlkBYe024uhXaQO4Em8Q3oPY7W4vvRDm5k16ak?=
 =?us-ascii?Q?eIMv9N/jeZc6jt9gjdbIgnIxXA8s2sEJgyQ2xV4qh9pIv4t+FofRiHCkKB44?=
 =?us-ascii?Q?ueqZ1C2OqNm88la0C0Br9gtMqbJWqMpH/uk7D09sS/3lJl8AvobOTPR/7aIN?=
 =?us-ascii?Q?RofnPevs/zhQDjsvD9CW5GS9yRjGSnsAxL32ln5HCRZR8pejJ2tKLekmcLbr?=
 =?us-ascii?Q?ab70a6x+4Lf5hiDwqIbbrJEWHUQA5MucQ9ImnXXa0xoAXgRxKu4l7LetANjC?=
 =?us-ascii?Q?gIVywZqtKtSoAi57SFeBk4lxz9Xfn5H/d23UShTF161lIkl/K8/eA+dW2txu?=
 =?us-ascii?Q?pImPDcJkHX1OGrTsY5GazTO9mr9R7hQ3fxASx7YR6xZYKmPBZsF7yU35ocA3?=
 =?us-ascii?Q?qvSTEqdE2WV6pgEEQKPNnEfg57aJsqSZYDsxE2/B/+3Wpw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SbT6bExxIZugjChzGmKSZNQFlMb2xgWzkhvDANs8LiMBVOMVJNNDROkA+VHS?=
 =?us-ascii?Q?SPhcu0AamrJQrgDZMMGOFL5qMpHkkij/HtRmIARDKLEC3lzByZ+/DMPJ7qvi?=
 =?us-ascii?Q?NMCy61NyfP0hKSoCUgaXbcl+qM28+mIW3d8UxoxieXUILkyhvN6FtaNJxcvh?=
 =?us-ascii?Q?7okGHOMNowqWnUc+R11dl73TS3mMRre/JSaNcQk12je5WpQZKHanYpwoRRr/?=
 =?us-ascii?Q?hJvdswnCcPKbPTJ6qvB3XuBKN8T1pURk6xveMT+tdlQacMfvFsCHen0SOoyR?=
 =?us-ascii?Q?ovnkvCxdnNzBdwBnRZ5tK+JyIrPQYJKNMLYgEpjJNZPr8XzeK6EvD8ZiZ39q?=
 =?us-ascii?Q?JPVmewZQXNWdTl1EBMC8OJFnj7jHIX17JnmnQ/AhByYAKRnoDThmA7ykSi60?=
 =?us-ascii?Q?i5k8wehoIuKE+AQuXMuGbBfuDneHMKoWINB1HsfkNvDiBln4B9WkHiN1hdLY?=
 =?us-ascii?Q?4l5voCcIhTETPYcW9G6D0VWBERKtzjGk21keyCmASYYaUTsr4p+eOsfbVypv?=
 =?us-ascii?Q?2BTh8Ei7rRa98OhkJgxbA+nS2faiUgQJziQj2J7BcEUrbNDKGNWgWWnFQOMT?=
 =?us-ascii?Q?w+SOqrTgZMNjYAnX2LPQwy9CcbStabGNI536ZtQz/2G+92Co/rMcrzg5tJw+?=
 =?us-ascii?Q?P7Ac925dFFowj1GrDKipiRSitfNjuipfxdQBcQBVqAoZVLDNLdjotEH4tmYa?=
 =?us-ascii?Q?IN9vFNvNBczIjnKj0kWFdyrqWEed/TqOj/7iKaGrvIL1LM38nwUp3fvgdnXU?=
 =?us-ascii?Q?70yEi3AIuGS97Aa2pUQGw0vBcBUxIxFE/ihrCGA6SlLpsh/JUCyRv1fX4cDw?=
 =?us-ascii?Q?Pk3HhjcNDwkCyuWi3LllG/G7BID44tZYziBA/Qg9E0yWkEzQjPJObdmYkPIu?=
 =?us-ascii?Q?QAfc6cFCAx8/QC8oSyZQaqNbPpHobFtFU1JOzdl94EXWUrogwkwixeYIt2zq?=
 =?us-ascii?Q?vX8oKuZ5QM51TkjCMfLRlgeGU2kT1GRAxMdncweLHgFDhl5vVxFv9I/PD5WA?=
 =?us-ascii?Q?W6Wj5R07u7wXQEi9AvaHE5geZwjMSPHylQL0YeQMRLyLtyhnMbwAh4VS5u7e?=
 =?us-ascii?Q?zCRAm4CunvTDmx1RjDlN0kV3556xEIPFIfz+qq+3LHqHHdkjNoZdI/L7X8gX?=
 =?us-ascii?Q?H8Jai/G1/yIAJqnZtaRzXoYxd75aZRCvuyB4e/NQDpi6+9ealRSWGdrsT/VS?=
 =?us-ascii?Q?P5pCoSHUmkQI6Ins3MV69wxFC4HmSIPvKqa9DzO8eOHoSoN8xbM/5pFqkp3G?=
 =?us-ascii?Q?DEnU8ttzeHLw8HDZt5wAw9dhPkq1fxb2ZsmXFi49wk/tybanZQsqgTzSvOQV?=
 =?us-ascii?Q?Pd4QQ4aTypPxVEa5ayaYdWmkdHP6ZYb53/i2vtasCyqErKayrsjJf1zXO/04?=
 =?us-ascii?Q?Ftgj7Q+OTGnDTHG/4M16Wao2ciZ4pWgS+w8lg3NvATImpA1NAA+tCez626aC?=
 =?us-ascii?Q?f5VXv2G8sSxhq0WRzsXgwZWDse01WM1DlzkCgK2U28dAKG2xvW4AnaAPj2YK?=
 =?us-ascii?Q?MMbE7zO+Djgn8dMXTfB5xsmMXif/ycSnUtHIzFoGHgQFE0ay7WDe6Whp8ZUb?=
 =?us-ascii?Q?7L8q6/kvOM02INshVDSHiks4DdQH7ns9yIEt2cIl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d3ae5cb-c3d0-4b2e-b7c9-08dc73954e7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 21:40:28.3867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8tZPF2eqJSKkxhy08XLoz4IVcIR0p9vpx9PBq1GOMFLoGR1zKyrbYtbf9BGyBoX3ytvWvTYTHAZHJwykYXXdzALQQNMBLZQ1zYOE7UgZiYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5324
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715636433; x=1747172433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ARa7MtcXbtSJZ/qONH/aNx51Hx2/xBYBj4PVWJfrq44=;
 b=W3VmYgS9U3SU+0YZaGXza86rhPcFG7TPZIly2pg/dTqIDPJ0dRCs4Axb
 ZfVxkxLYhpSQrJq1Sah83hbBaPLhThxjES+fr1t1N5kBk2G9BVckh6+p0
 cx0hBLMHWnoCx1aas0P4Dy/Y6BImo5RY8xwtLIH8qlf3FqSSqxIWUCzwO
 GpPKmmHuSOysJDTfDulWarOTj2GbC5/OVj3c7ARVZdMhZ4nN0rUjgKrNz
 HknB3HCr+MLmy3KeDsyw763VRqmm6xVAiDsCqmqu2HgxJkwUZRIJ5uJyE
 4I/H/aAIZ/PP//Lmt+9IasS7YZ4vGLYE5Dhdx6An8Ub/5WTG4yMVHIT6m
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W3VmYgS9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 03/15] ice: add basic devlink
 subfunctions support
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
Cc: "shayd@nvidia.com" <shayd@nvidia.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Monday, May 13, 2024 4:44 AM
> To: Jiri Pirko <jiri@resnulli.us>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Keller, Jac=
ob E
> <jacob.e.keller@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>;
> Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; pio.raczynski@gmail.com; jiri@nvidia.com;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; shayd@nvidia.com
> Subject: Re: [iwl-next v2 03/15] ice: add basic devlink subfunctions supp=
ort
>=20
> On Mon, May 13, 2024 at 01:04:23PM +0200, Jiri Pirko wrote:
> > Mon, May 13, 2024 at 10:37:23AM CEST, michal.swiatkowski@linux.intel.co=
m
> wrote:
> >
> > [...]
> >
> >
> >
> > >+int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port)
> > >+{
> > >+	struct devlink_port_attrs attrs =3D {};
> > >+	struct devlink_port *devlink_port;
> > >+	struct devlink *devlink;
> > >+	struct ice_vsi *vsi;
> > >+	struct device *dev;
> > >+	struct ice_pf *pf;
> > >+	int err;
> > >+
> > >+	vsi =3D dyn_port->vsi;
> > >+	pf =3D dyn_port->pf;
> > >+	dev =3D ice_pf_to_dev(pf);
> > >+
> > >+	devlink_port =3D &dyn_port->devlink_port;
> > >+
> > >+	attrs.flavour =3D DEVLINK_PORT_FLAVOUR_PCI_SF;
> > >+	attrs.pci_sf.pf =3D pf->hw.bus.func;
> > >+	attrs.pci_sf.sf =3D dyn_port->sfnum;
> > >+
> > >+	devlink_port_attrs_set(devlink_port, &attrs);
> > >+	devlink =3D priv_to_devlink(pf);
> > >+
> > >+	err =3D devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
> > >+					  &ice_devlink_port_sf_ops);
> > >+	if (err) {
> > >+		dev_err(dev, "Failed to create devlink port for Subfunction %d",
> > >+			vsi->idx);
> >
> > Either use extack or avoid this error message entirely. Could you pleas=
e
> > double you don't write dmesg error messages in case you have extack
> > available in the rest of this patchset?
> >
> >
>=20
> Sure, I can avoid, as this is called from port representor creeation
> function. I don't want to pass extack there (code is generic for VF and
> SF, and VF call doesn't have extack).

You can also pass an extack of NULL for flows which lack the extack, since =
all the extack functions are NULL-safe. Of course this does mean that you w=
ould end up with no error message logged in the VF case...

>=20
> We have this pattern in few place in code (using dev_err even extack can
> be passed). Is it recommended to pass extact to all functions
> which probably want to write some message in case of error (assuming the
> call context has the extack)?
>=20


Generally, yes. Extended ACK messages return and get logged on the command =
line of the application that issued the netlink message. This is significan=
tly more visible than a log message from the driver.
