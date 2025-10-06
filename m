Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0ADBBE444
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 16:01:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C87806132B;
	Mon,  6 Oct 2025 14:01:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1LoYZ7SFGkd; Mon,  6 Oct 2025 14:01:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924A661312
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759759316;
	bh=fX8G7Kx3F8+lc0nkdK++seeT5RZQpTjOpAfGI0tkgCk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pw27aHo1dd3icez6kKA3I4/kRUCLW1vKOZDGCP7tEw1ZhngYJR6B7bpjqD0nM+ZMB
	 jsvnfq9TMCaxVKFCUPryxDCh1NjWX0TZsbNdKfvBacUab8TtlBsH+BSIik3pKFXeqs
	 Me/DWQ8HDaEDrNgI8yFlXOv3en/wHGnyQznmWNO4N2pewk/p9UeGJ7tcnIXkwck/vc
	 LDh+2hiubXyGyJHntcgFryQpvVRM0x493qKTPHh+Srn3vM2XKeku7KF37GaDRrqC20
	 Hx+TfulxBFQXSx8kluVHNq9jYLb8V58hOl8TdbxdmU57vzYjW+Wl1WSMLab2k208mx
	 MuBL8SM+xsmIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924A661312;
	Mon,  6 Oct 2025 14:01:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A70B226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49BC5417E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:01:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aUgyfjUGdLH5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 14:01:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A30DF417D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A30DF417D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A30DF417D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 14:01:53 +0000 (UTC)
X-CSE-ConnectionGUID: lZpDvUqyTEu5ITHvAWWOBg==
X-CSE-MsgGUID: gqRNrSCIQDGfJdAqHOtONQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73285712"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="73285712"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:01:53 -0700
X-CSE-ConnectionGUID: mwbB+mjMSbyYij/TDiHLoQ==
X-CSE-MsgGUID: bNqJDwPdQJyYSAx9+7JF6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179702690"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 07:01:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 07:01:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 07:01:52 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.15)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 07:01:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gWR36lUtfz4BUj9hbQLwhcK5o+ClZCT+NA7b9nZdxWdlZiHGA3ELJtWtY6WkmgOvxsLUdOxHbs9th1BYpVqCv0noahgOxLg5lwrXhmKunDhNIakq2NyIGSxSCivZfQe6i4xF0O3koz+L/Sb3qzD91DTxgcTAeO1ddOoSYNtkZijC4IZDUK0C+mQ/nHUpZg4RA66b+Z9BhOXcYNTTY4/v3zfmP3tQBdVZgmlm5xd3tOGTPjL0JoCwQXVsFqK8xOKI4b4kpxDYDZyWksvfdxTlngyX+OHWDL6jP0rksKDYzxzMq2uYFYrdl39uWdks2nlR++z/SbyAgj78bvKjbs74Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fX8G7Kx3F8+lc0nkdK++seeT5RZQpTjOpAfGI0tkgCk=;
 b=LiAqv6rKJ08Dk486Tu3eUm2jaGZrwN/ZSi3kenn2/U8Nd4dD++2YfYhLFdjw4RP0uyDGIXAvOWh7p4ekXrZ+oK4SK618uMfpLCm1WZLRIlMWlIr5j0Uh3Dwe5pqeSYo1jGAW81oNh4HPwxwoJGC304ib8VoA+xvJsolyRCdyxuKlXPBnWFgZ4QMD1Gc8kbDB9quId880Vj5pHM1ETYQGf8FgbMgu429NMPqhFO8Hzfx2Cp8LTazoyC/pvNUVqx6ac3D6OJYdhvV+nMDXoLZ7Nmr1rwrGAvrnzhtyHHHSt6qSB5RoXD+uu6JIYG7bzdf3djuA8fxaaBfckZxNU8CJQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB7007.namprd11.prod.outlook.com (2603:10b6:303:22c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Mon, 6 Oct
 2025 14:01:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Mon, 6 Oct 2025
 14:01:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jgarzik@redhat.com>, Sasha Neftin
 <sasha.neftin@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 2/3] igc: use EOPNOTSUPP
 instead of ENOTSUPP in igc_ethtool_get_sset_count()
Thread-Index: AQHcNr4x/9llrBxr00WSc6lbdBtNnbS1JfZg
Date: Mon, 6 Oct 2025 14:01:42 +0000
Message-ID: <IA3PR11MB89860D809860D6EF2EA0F105E5E3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251006123741.43462-1-enjuk@amazon.com>
 <20251006123741.43462-3-enjuk@amazon.com>
In-Reply-To: <20251006123741.43462-3-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB7007:EE_
x-ms-office365-filtering-correlation-id: de4ef8fa-99ad-4467-d1b6-08de04e0e12e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?82fFxZB3ZFqwiKilB+eKkEhpUKEvVpq+5gFlHXo1tflwOWmTqePsQqjOaYZ9?=
 =?us-ascii?Q?RQQOvk7HOmfytwkYKnt5TwLPeaR26oDNO1wbLpu9ddyz87FcU+9ZINjtGxPP?=
 =?us-ascii?Q?MCBFxu4W94muEOsrGNU0v54XLf3znsIr7rmGZi78C2HzIw7Xgule1wDBWp7f?=
 =?us-ascii?Q?ECoyh2CEIIN9Dfyjb8NRFLatWs3SYWmXwDh1XkmDPynvOdyQMKrTssjp6Jzz?=
 =?us-ascii?Q?fHbsutVpiY2VrFbN/bd8D58kWh6prmN3ryxIAtxwWoBL/D3QY2wjuHEhjPBb?=
 =?us-ascii?Q?ePQuRfd4JmJiz9iMhMG9vlPdnaex+umEzQeltwZDW3mgBS3wBVcmHYAWjYlL?=
 =?us-ascii?Q?c5P40Fz2vLF+fC8QsKsUasnHpiEmoTWWUsRalNxVK9UOJb2Q12DFlpbawyNq?=
 =?us-ascii?Q?nSSc4xJANesUKZCoZhe/jqOhhMgdOesssPaiWy4VUKGogjl38l08kPnXSPi5?=
 =?us-ascii?Q?uMIlt9SMQ7JpIhbbz9EJxeV7vilaCtC3BVLFL8hv6Guh6j1gV3l2UaSbph1H?=
 =?us-ascii?Q?QJ0gPqILV43EIb5DjO5wJ4+6UUw33QTrGDSwM1hMpoT7yxVWsWsBQH3JzHQr?=
 =?us-ascii?Q?M6RmXMLPX588PU5j1uOSRvxrE8P+1vUdHZSri4dvgTa4+GnSCa1xzvWIaDuP?=
 =?us-ascii?Q?W1QeWxjtXI63vVWFv2L1FrRh1phVtA/jdMjOpgzA7uyB9Q5dCWroIs54SXYb?=
 =?us-ascii?Q?qknSo1+YUFDafLix3Q12dycLES4PeY2yrFqVBr3WnZh4NJzqTJhPwR6nOmQ+?=
 =?us-ascii?Q?smT47KISU0Cf8X+Jl39ksVBkVudES4Rr2VrOiBVyikvRv/ywXJ3UdpyGtxk3?=
 =?us-ascii?Q?UMJFLAkmSzegZdOoxyOpriW53ifVFYbgL6GWFDV3t/kJfg9wpLOpklUTrTw4?=
 =?us-ascii?Q?rc2tAsQnTbx8Kvpj9H8HHoELC9gUgzf3arfRJVGs39+xhkpCICi3SwSPBwtB?=
 =?us-ascii?Q?j5LxilZaT4JZiQVigrADHbjMC+tTQgN+a/ZKtTQnRJkws6zJHivz0jHA5WRo?=
 =?us-ascii?Q?RGFuHn6MFWq1bxp1CjV+tS24BLfn7PAcp4XXCI8ipQY2t1JDE+yiDEC6BPf5?=
 =?us-ascii?Q?3YhGcYIUQus9bgC2h3Sqqqz4sLerPQVetBB84nNcwlFIOJX3fv+GMEbkrbld?=
 =?us-ascii?Q?bE9UChjC+cBJ8aVbzXkUF8+KJEcaSbGVjTustWG11iM5xbhKB0x8Nj07Ei2J?=
 =?us-ascii?Q?UaLAdwm+DIxT9GceW87OIBcjgLPWEpyyrz3HJl+SVJvqnnGlkcmCaL5udkfr?=
 =?us-ascii?Q?OUwpY+ukkxxNPY2UFHxloOxh8XRlrTA5WnTdd0j2lHIoVlTwCmvJ9ZhdtTfi?=
 =?us-ascii?Q?G6PZUBQTEAa2ExggKo4WoUIuYX1N55VtV4L+U+NBNvuPtR1IlnZQb9QQROPw?=
 =?us-ascii?Q?taSWayu/eK7RdBZPN7k35/oYMMqsnfIBP3Duz+qkuuRMqcByyynAcAVFgw36?=
 =?us-ascii?Q?MDNKLw0HFoGVwpdTYrHXoTQqf++b/x2EVxFm0rSbU2q4cF9IJLkpGRZLvPzQ?=
 =?us-ascii?Q?6GgclMDiUytF7yMTtGJq517m1lYLjQ7jMoBp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6IoW3lvXMqJxt2TSkgS7i+GQO1DZ5sb+nVT7j9prEKTsTxFodStL9zkG6HNo?=
 =?us-ascii?Q?2A9HGYEPfZCCDK+4oS7AwkcLjxXbzJGrr4ao/KhB5Wd/w/FmL5RTx/WhCBGX?=
 =?us-ascii?Q?FBOT/GDeCOLnQij0e+xnwBHODnBqdEn86h9KZD7/Xmz76FYs8r6Cmer9JQ2w?=
 =?us-ascii?Q?lp7ryO7YQ3en76aGid7yvJOS0dMvlJbx/IsS5OhjmD/OHLeIf7zb30B7//4P?=
 =?us-ascii?Q?or9ETMSYlOwlruPKt6X2csQHDPF9Wlx8C5J7tQtW6wrqfWBmDezib1n0KCfF?=
 =?us-ascii?Q?1xIX869pb1yj9YYSCp0Qnd9VRSB05rqgYnKIS33TUbWKjQhZXok6XkCgODUG?=
 =?us-ascii?Q?7jb8eltMGn/5gON2ttG4SO5ZU/mo1+WAcsxeH3VHZ/Vm4wL6eE8vvLDnNPBQ?=
 =?us-ascii?Q?LR/8wueY/9o6agCE5cgOZDAggdyVRjS6qfry2yBZW0d8+wcJr/9rLszERZYr?=
 =?us-ascii?Q?7qQvCyoM6bQcGeJGXa4E+UhUzXuN8z4o7Q/GenAGvaFb8VC+KkyaPnSfNmIK?=
 =?us-ascii?Q?NXqPHOoJAIFSChT05+9LwGdIwu3iI1WBRqwSmjj9TUYPzqsz3+3KOU4ssZPp?=
 =?us-ascii?Q?ZYw1vwqN/Axq8bIDfNJy2mowkhukkjus562UIj3h0BgiLMglkBVgPailNzgu?=
 =?us-ascii?Q?Re35cajRznDGaj2PfwYixBJGzMWho1E7NbaPmZgstNexIfXbCQciAawkH6aA?=
 =?us-ascii?Q?drLBM8V/dbCsqT0XdfIrxazww4j7yR8JIUZVX46+iAwz9F7I9WZ/AyLgjyQz?=
 =?us-ascii?Q?2+Eldfdw4fawEAkpcQRx4LNFmrzQpOrWHgmCXc54EV3GIx5lFbuBAmtNj4W+?=
 =?us-ascii?Q?7YSwNY1oy/CKEmZAkPFATTKKM0AXt0xE9ZaJXIRyR/Ike/GHwkGF7ziAj+u/?=
 =?us-ascii?Q?/CIX81FXzNfZjq6Iubrym7m9isfIKpWr2g2/0RCSPoZnXofFVEeo99hse9j5?=
 =?us-ascii?Q?OEK/jjI0du5YGet7Q1ZR7ckV4VTqrcEqcvuxkM3HCAfBAFxi8xZ26++4pRqm?=
 =?us-ascii?Q?iyXz2wVQ3y09UDB2+8GGiCl3V322SQHDZUu75522D6Fi2eTOZWd14WCRF3kz?=
 =?us-ascii?Q?b5DQJ7RafLSdHTyTlhjYByuUQ3GsRCZ7jnhjK912AkmutfR0c4DbVI0TD8c9?=
 =?us-ascii?Q?eDePPKFqrgEEsc/9kScD4QFYD6YI16ABVRo23YJ5hS2kyqouAUHObLS4RwLi?=
 =?us-ascii?Q?GsGRILFnVM4D6Vn8tsXElfLwLIsKXoW+mB4aO+tEz/7zuvUCJXzjb6qwGCp5?=
 =?us-ascii?Q?p9bZ/07dn6Hc6YZa4e3Gf2gz8e2tHpQunyfM5zbOcRMFZJ6n5EfLoQ604qX4?=
 =?us-ascii?Q?6JDyOIXtTm6QhP27AHjI4QjuU+KmVcnf//S4VdOiDTv7QfIGzW/e+i0M4oEO?=
 =?us-ascii?Q?f0o9CpiDEvy7I4PzeTOfsWbuqXxZxLJMO2e8I6KBu+1hGqJbupeu7kPDfMeL?=
 =?us-ascii?Q?K1fPX0El5oYN3D0qoR/8pMOCCrMmG8eB0Nsl+4frm4p2XNIagsRluS7U1WLX?=
 =?us-ascii?Q?QTRyPA/XbGVwmGYJ0dc/V0Nqo0LeU6rbvBc+plZW/Trtp6qvV3UyOxmlqtBc?=
 =?us-ascii?Q?Mh0rbVzdpcBeJ0kzXkMgzCx4M9E/GBlo2gwxzsKe5sXOONfMctyLp0YzM0/I?=
 =?us-ascii?Q?0Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de4ef8fa-99ad-4467-d1b6-08de04e0e12e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2025 14:01:43.0040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zi0fsTQAFFnaaMCK3sVjW/Xg63GwrluTOVjHl5lpEZRtE5/DbEc5XlINEP5HSgvS7z54LV1gn3cD7c2FaUiI0zfrwMkR+IHuNUI33NQmmHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7007
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759759313; x=1791295313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VKwx0NWJReszMTTV6M8YxzM6kVCVrJYznXtbCUpn3SE=;
 b=YmqYx/HNqvPzTGKjJCC/xaCPskpGHtz7WwBZvRwRVaQQmaGPmxunuMF9
 5MpLoWBCE224hL5vRZ8OV17vDB4BIIk5zL6kLXngin9Qtj2zmH2Rd1M7M
 8+gqHx6ZMwskoa68//yGTbMZXCrfKPzberEAD732whueuxBzJXrCplPZ6
 2Es9V+vXczMatddWqPiyvrv9E1QIMAOc7ihtqddDF2c1noxsBTlGJWTAv
 bvB5Y6pkOgBIzbdHZF9k9YLIkn/gI691LHwQQu8pYaLUM0X2GVLwEr7D9
 mPqLLyGbP5UP2AK6YJZoq/MLzNMcusD4pCbqvdqvJCWkEFk1X0F6w2KC4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YmqYx/HN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/3] igc: use EOPNOTSUPP
 instead of ENOTSUPP in igc_ethtool_get_sset_count()
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
> Of Kohei Enju
> Sent: Monday, October 6, 2025 2:35 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; Jeff
> Garzik <jgarzik@redhat.com>; Sasha Neftin <sasha.neftin@intel.com>;
> Richard Cochran <richardcochran@gmail.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/3] igc: use EOPNOTSUPP
> instead of ENOTSUPP in igc_ethtool_get_sset_count()
>=20
> igc_ethtool_get_sset_count() returns -ENOTSUPP when a given stringset
> is not supported, causing userland programs to get "Unknown error
> 524".
>=20
> Since EOPNOTSUPP should be used when error is propagated to userland,
> return -EOPNOTSUPP instead of -ENOTSUPP.
>=20
> Fixes: 36b9fea60961 ("igc: Add support for statistics")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index ca93629b1d3a..bb783042d1af 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -810,7 +810,7 @@ static int igc_ethtool_get_sset_count(struct
> net_device *netdev, int sset)
>  	case ETH_SS_PRIV_FLAGS:
>  		return IGC_PRIV_FLAGS_STR_LEN;
>  	default:
> -		return -ENOTSUPP;
> +		return -EOPNOTSUPP;
>  	}
>  }
>=20
> --
> 2.48.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
