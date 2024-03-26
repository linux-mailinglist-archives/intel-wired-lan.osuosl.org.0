Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5F388C600
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:55:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41C054059B;
	Tue, 26 Mar 2024 14:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlHK09hIZrYp; Tue, 26 Mar 2024 14:55:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1FD74061D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711464943;
	bh=AFiGdtVpYvGkYQpcQdwjuZS8tPo6pz+PizLTBxbITEc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z+JU8qNcNxMXZFC40SeR70xfjqF9YRVHkjJskKjOdwmH2Fnn3lw5BSdPKqfQTSZTY
	 ICtDqiS4x4Jz+XVUixRvzr6zeL3InPL1Ms8lgeDQo3xtYwocyhVRzE68ZXrzzh5oaB
	 juG1U96XEOUvva60A1r//GKRvLGToHHaPNG4Ba5JZ6/XCItI/IwiI+mr3x2YZH8GWr
	 zQt0MA/u3IVR6+6VgMKtu5wJ2+zR93pSIUNY8CB82v2HjSMqvqZ1dZHYaUd7vDUnMi
	 aMzG4iZbe0u67mug8F5ZOpBrDxqZJBnGpzKiiE2RTsha4B+Ob5kL0o7yLStrnYroO9
	 BaU4WnQKPtf/A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1FD74061D;
	Tue, 26 Mar 2024 14:55:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 679D71BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51E5E40589
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:55:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CuUIKtskNT1V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:55:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A195640562
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A195640562
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A195640562
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:55:38 +0000 (UTC)
X-CSE-ConnectionGUID: 3yVz4LF4TqGHEGY0LATEwg==
X-CSE-MsgGUID: bvk4O7pXSeqzW/ULO+rQ2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="17064665"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="17064665"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 07:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20705240"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 07:55:38 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 07:55:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 07:55:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 07:55:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOKaAMvS/XuYUhAhzzX7SNF9y8xpSTuxdZBkA1sWBto4RPHdoXkcHZ1YGwZctloR55QzC2we6AZwZkCM1bFVLaUHxJNpGRSapZZoHG/ypw5a972CS6qpEYfHIVhiROaDflwVnVddEKFlxoUR77Rxe7w4ItCKIpLAFAR8A0piZMgj0cyzsk/T3v4rwLDRAID9fg4+NLzH7zSAdv0ZqInB+op5h4OhKUCevUJXwjZo/VNUlBn2kUHScI3SD+kigl6njCPohshukbbXBI9OwnIG8YlwB8iKefNqVUNhMMsi0NBfEYWnqH+RFvk37rNX1hOpqGZKhYihqEUkKCVHvTitXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AFiGdtVpYvGkYQpcQdwjuZS8tPo6pz+PizLTBxbITEc=;
 b=fYaXBmYAyFI01mpxbHA9b66s5+o5nto5bfilGuQE2L8KzzDxsBZNgOpcb0CqomEyUBKCC/mPgqWaLOpkL77aHnWmvf4xHWhnid9Pk6jvOW4jIeNQn9mVZ6xsOeUsz2GWXkfmpM1alExp7V39ajhCjHiT6eTJCcvOw0+9/S9At9tS/MmJRNuqhZDd75fuk6Io5Q8e8xkz1MMIhcZSyVn9sku/x8SWRcXc/HoaPf1iDjPC3wceHjM8HlesZR8qJUWTFF8U9wTfilm6i9424NSJWI/D4MKOrJTQ8Ln/kJdtqQVMrn1dXyC9Pxyu5v+N5kXwVommekaBIWiAarPD/nOGuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by SA1PR11MB8475.namprd11.prod.outlook.com (2603:10b6:806:3a3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Tue, 26 Mar
 2024 14:55:33 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::9445:5793:b0b7:711a]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::9445:5793:b0b7:711a%7]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 14:55:33 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Bezdeka, Florian"
 <florian.bezdeka@siemens.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@google.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [xdp-hints] Re: [PATCH iwl-next,v4 1/1] igc: Add Tx hardware
 timestamp request for AF_XDP zero-copy packet
Thread-Index: AQHaf1vDcRX66gQlB0+gJtjiHFgRbLFJ/peAgAAUiKA=
Date: Tue, 26 Mar 2024 14:55:33 +0000
Message-ID: <PH0PR11MB583028B2023E1E809B45B51DD8352@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
 <d2623ac0f1cb07a23976416cdcf9eee1986747b0.camel@siemens.com>
 <87h6gtb0p0.fsf@kurt.kurt.home>
In-Reply-To: <87h6gtb0p0.fsf@kurt.kurt.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|SA1PR11MB8475:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mFVgk/6+3g4sIDRq/Eh0X5zPto+0ldenQi3e8iawaUyf/AVw0oOeDmlS0kXIuVVvBWMWM/W+b0QZfFF23IIHgK7MbslP6NU6oIXAAsUNDz74P6AH9q6LJCN/aannqfQn0WHTEB4Rc2qoBIUjSpNIlv1PbHIS5Su9EOdK1n/BCor9ZRkLiJ2CSiX0x6Rsbw26pnPB4qkzmDruH/6ZQZIVd3SDZLWEfWkD39PFDKMzCXDh9ME0aS6ENBwbROFh1H/4BMJ7rEJlp/SFOyo9O7Lfuooi58Dfw8qg/+2fJVnr25tjc9cDq+w6NWyUhh6hOz9FOgTI6dSK2OyWtiQDBcz6bvDyahClCrkpUGluBFO25XtV9kpiMK6DFYFC1fuxrrZ9f1iDeOVOYy9kR64MzfHoD/o16T69z9LT4COD7SU+f0Sp1T+N9DK6oQYrzTMidfXVwybBBChGnNonGhxw8P+nNSSfmGHmhJdPFhrRzdjdXQ49nLtAQDeeSLrWrc+GKXkbW4O7BOK0zjAxzazlX9DRUK60WjVGgZpcioYgtS4rQatuzcIk3yYsRlcTHO/CD0ylO34YiYoBScyEc1qEEg0AZzXqGF2HmmHn2gYWFUoZjBNw8M0+e+h6hjcrQDBxD4o/lXLVgwwvg1ZRPX9nlOfBlg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(7416005)(921011); DIR:OUT; SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?og/6LcLMwYMQGxTSXlch13FqdWAhQD7qFlu5OgdW8pyfz32UV6EprUZ3a6IR?=
 =?us-ascii?Q?FM8uqCyCj9F4Kbmr6uYr40S6ViLJIwt8GSpkHwInUhP/WKFkbE1c/CRqTdc6?=
 =?us-ascii?Q?Fnlx+vIMb+dWS2CXd+k4zOh6DHGbopzutSf7qoJOv+bpcpT0ek55C007bV+n?=
 =?us-ascii?Q?blrPwD5QCAwafIhu9OR7cvMVfLTGJVGBk4CxKMdJc0FMZG2UwECGvkItXF5k?=
 =?us-ascii?Q?UvI6BbZbu5dhBQADUjjorYzEpFZEmipEodivSc9pe8x8OhZQYKreSL6pMB7D?=
 =?us-ascii?Q?6DEfh6Gzd74FgUUNuVXqHhKCeCHepn3eMQQGHHFUBw5cUGc9fv0xJdBJd2lU?=
 =?us-ascii?Q?iVkw4axHXXKBDplm+D9pRs/NevfohkqUPlWIFh4KcdJtGrBV0zrjfEXhWl0j?=
 =?us-ascii?Q?+zxH7C27t+92YbgJgBORFLiZ2rma8xXmeU5l++1gMvhJDJtQip4UVTAVUPGa?=
 =?us-ascii?Q?n/rNk5CV7em3/PfgySvfwfbOm0GU68DJN3L4q2nNrCse9D+soU0nJ4upc4oE?=
 =?us-ascii?Q?9GmNrVd2etLwcE7gBpzVbeJfhuoh4y4JToYtqoPR1ZNX7uKnKWp1Jezy/fX3?=
 =?us-ascii?Q?TgALBWfAeDGFrn+Ik23eordwjOHhUnUFBOcod1qgb5OqEfpEiBIHWqMoB9OO?=
 =?us-ascii?Q?9N7WFarsl/RbPK/SV0M4UJYKBVKiyzss1V0X90XSqVyOuLYn8ACoGoL8twcn?=
 =?us-ascii?Q?LjxqMiQsQRdIO7xemTb92zI1AI4glj6agidsxpz4d1VaoPcJ5FN5JivtxE2C?=
 =?us-ascii?Q?GOluqh+iAzjMrGMhQZ6Z1hwhw9ptT1y+iNjwzNIs6HUPLUVVUVhpfjexfDHG?=
 =?us-ascii?Q?C2APDQf6AJ8jIwSL/3vKemEbrrBxTxSzixucpQ08iZ45mC2BbXpM+nt+Q/7T?=
 =?us-ascii?Q?+I8jIh7FItR3HFhiDW06Ahpp7oZ8yoxkOSjTrnUcZYQVO2nX7tzFpwaOmhaA?=
 =?us-ascii?Q?94M5J0I140HFqcRfDLwJeL6dTa4zWHN8X0QafYPdznJG4zJcYu4jqAr2l7O0?=
 =?us-ascii?Q?pQp16BuTWMhwfuoAqKVYdKIY/a22PFxaZOKUzvBFhzKkrd5zJCsCeie96hkK?=
 =?us-ascii?Q?avTa0vU5vTcM3WqzMIEKpNgSOo1QIc4XFTA96rTO6ab8kxyRe7qkO+XXyWnq?=
 =?us-ascii?Q?5Bx7M9hgGMQjiGVYh07yfWDuJmGLpSkoQFrqX9c9kyfEnXfRbHe0OYgeqqXA?=
 =?us-ascii?Q?zErUktcPFnCWAhQAG34FaAHelMeX1KiapTKN1aMqwy2fTgDENepa7KdwL9IL?=
 =?us-ascii?Q?O3uBF49D9+lGDndJXH1PeGg7NCeAWL0Q3yMY9N5jF2PajxVzlaPs0zwApQ/j?=
 =?us-ascii?Q?JLZaGfp+CrYade3PcuSTvF97Sba8cM/aKP0LL3xF2PPpO0Fs/3UeAE0Wyr7m?=
 =?us-ascii?Q?YFxI7KmcMP0aYTIF843idE/YPhcnc4JLAuOyjxRl5HpIrABrijoRUySdJEnW?=
 =?us-ascii?Q?u0Shlie8Vpg2sLroZ+A/iarwEKaZm2Ni+Zf43jr8LauFlVhFYP4jgkh4SYzC?=
 =?us-ascii?Q?gVXQ5F18kErGbhCoiyo1zjJxJLZo7aWUkIgw3j9PI7gZLR/furKi1glmqmAx?=
 =?us-ascii?Q?DlYeMU6kQjmCwBgMnAwB5kaoeACj38jkpcG6le5uta3WeO2jDZJTq99vybrn?=
 =?us-ascii?Q?+g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1c5213e-82e4-4a90-856e-08dc4da4c9d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 14:55:33.5628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UkAxq41FP9fx4KtprjHbZYgUcSmqFkfZ1ZVRPlksHAcHzapw9GJ9P5xlZwJklv/OBSKVnEo9ioFrcR0iDwYI3WreRT8XSR3bcJjQqO2RfAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8475
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711464939; x=1743000939;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AFiGdtVpYvGkYQpcQdwjuZS8tPo6pz+PizLTBxbITEc=;
 b=gC/ApS5asi+bsnuQCJBL5Xmrjinam5hjCas8A2u9icJ2Et+h+byz1j5f
 fgAEoLy1bdOYi+GNNkpDmkbh/d6w6/mvczH+1mgpwrWQsDQG4cqBVRZyr
 B1ur4bQVnNqoQemnoL4Tks16W8XBPSa0rFnBa7do8+yuHHkcfXapnBrWQ
 ap472ypnQ5a8mYfPgZABs7TiV6vKgEUr0zKX6UPjiKca/59IlHOKTkxL6
 zLv0U/lAU5GubgDDiiWPod3HUMOgMPjo8RJ8P6Z/pqjIJEmn/v29voSGA
 w0J2flKER/oUFsd+ziAIF5+ax1K29QD7JpOMe2yQu5vEU2ePZ1614lHiz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gC/ApS5a
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH iwl-next,
 v4 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tuesday, March 26, 2024 9:08 PM, Kurt Kanzenbach <kurt@linutronix.de> wr=
ote:
>Hi Florian,
>
>On Tue Mar 26 2024, Florian Bezdeka wrote:
>> On Mon, 2024-03-25 at 10:09 +0800, Song Yoong Siang wrote:
>>> This patch adds support to per-packet Tx hardware timestamp request to
>>> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
>>> user needs to enable Tx HW timestamp capability via igc_ioctl() with
>>> SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
>>>
>>> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer =
0
>>> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
>>> four sets of timestamping registers. *skb and *xsk_tx_buffer pointers
>>> are used to indicate whether the timestamping register is already occup=
ied.
>>
>> Let me make sure that I fully understand that: In my own words:
>>
>> With that applied I'm able to get the point in time from the device
>> when a specific frame made it to the wire. I have to enable that
>> functionality using the mentioned ioctl() call first, and then check
>> the meta area (located in the umem right before the frame payload)
>> while consuming the completion queue/ring. Correct?

Hi Florian,

Yes, you are right. But before you pass the frame to driver, make sure
you request Tx metadata hardware timestamp feature by setting
XDP_TXMD_FLAGS_TIMESTAMP flag.
You can refer to tools/testing/selftests/bpf/xdp_hw_metadata.c
on how to do it.=20

>>
>> If so, we now have a feedback channel for meta information for/from TX.
>> Are there any plans - or would it be possible - to support Earliest
>> TxTime First (NET_SCHED_ETF) QDisc based on that channel? In the past
>> we had the problem that we we're missing a feedback channel to
>> communicate back invalid lunch times.
>
>Just asking: How would that work? AFAIK XDP bypasses the Qdisc
>layer. Currently invalid Launch Times are accounted in the ETF Qdisc
>itself. Does that mean every driver has to take care of it?
>
>Thanks,
>Kurt

Florian & Kurt,

Yes, me and Stanislav are trying to add Earliest TxTime First / Launch Time=
 to the framework.
Please refer to [1] for the patchset. The metadata framework will just pass=
 the
Launch time value to driver, and driver need to handle the rest.
In the patchset, I am enabling it on stmmac driver only, but we need more d=
rivers
to check whether the design is feasible for different drivers, cause each d=
river is
having their own limitation on launch time. Therefore, after this tx hwts p=
atch accepted,
I will try to enable launch time on igc driver, and submit new version.=20

Kurt is right that current metadata framework is lacking a way to feedback =
whether
the launch time is invalid or not. Maybe we can try to enable launch time w=
ithout feedback,
then discuss about the status report design.

[1] https://patchwork.kernel.org/project/netdevbpf/cover/20231203165129.174=
0512-1-yoong.siang.song@intel.com/

Thanks & Regards
Siang
