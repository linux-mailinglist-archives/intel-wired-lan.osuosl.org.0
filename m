Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F35894A6D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 06:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03C4360643;
	Tue,  2 Apr 2024 04:25:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OlQIHs1NxSLl; Tue,  2 Apr 2024 04:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CBAF60A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712031957;
	bh=wNsGl2DgGjH88WYkkMHMJCbMM/pQzV1Zi/JbHbzb7MQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ifjgp5/o2AVDRKtfqtvuExsxIrnqbXbdyD73MNHCkoJPkuWEq9hiDmZ3VDrzFEoQ8
	 14F8hecf6vRSCKYrAbsQyGl/3ec+yvGXF4aNLcP+sNDd+xxZEUbW4NP00xxB6n2glp
	 8B6ufHr+aMf6S/r58/E7MAbVmvTRTCtcBgood+MLpzITYT2XR5RWCb8VCAjjUEiQZs
	 U38wZowGlGCpkf/WxE+UHJ2Nswl7IKqWo0HjsL7U8d4tNiJ3B6BUQZM7ZQUHAOa9Bu
	 NX802MXSlbO1dVqFXeKxHvo0M5aCx+9nI5oPzAODxMuAtsPLBOlSFNrAAJZBpfIvzW
	 y6v458VZWMvgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CBAF60A43;
	Tue,  2 Apr 2024 04:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BAE91BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 04:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1436681EB3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 04:25:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TLT485Wbn-DO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 04:25:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E273D81C81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E273D81C81
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E273D81C81
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 04:25:54 +0000 (UTC)
X-CSE-ConnectionGUID: ZljvwnJxSn2c8UES2scYPQ==
X-CSE-MsgGUID: PgI6p6RHSH6K46e3ODz7Xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="29659218"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="29659218"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 21:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="41095209"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 21:25:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 21:25:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 21:25:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 21:25:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dL125AtsTbbJXU8qhYiSZtCYSFuvlTXnqi4Fcp6RK++HgrrYKFX/7XWkjaRQ47pgB8Ncbtd64QR93P58MJ4tajuRi9dzvIl0riN1tqOtM8+7G/VlQdOx8dBKq4t4CH/wyNh4SBKiB4z6uNmvJDTsKzc5KYxQC/WczYoyyRgoQ7AHPrKjlgt8E+azUChxWMLUiBHd/ObR3Lie0AKimLooykLq/KI4Z1f9JIPj0IUjtGmIQtonK13Pj92Kk2sDEOcFWS8c67OoTfy2bNar0VoXNDFnIkPDRUPW+GnOBfLhYmmrUIGvloYlSwgSPu4WV3CaGGDC9EUkSUZoKwI9sACbXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wNsGl2DgGjH88WYkkMHMJCbMM/pQzV1Zi/JbHbzb7MQ=;
 b=cWjhapABVgNRx850iDR/ItQdmqOHwtzDMfGGcQOdfJ5AQzyw2AgJrChSsc3ZaiHJRNM1e2rT7ISvaxFHD5gKhjNdiIjy3lUMWGeYcI8Qzo58oZeQduknUlPcSEtM/rj28Opo9ULH+mVGG40GxL9600uuNJIQtEX9LzN0mm9iy9PQdkxcu/01QCrAZFNtyjD/bU3h/k7f1SdAxRy2aW5PbgEv96KA0oeKg6KL+dRw2xqvGFJ20Oe0qhOVPsPzEUb74x59chx4CLSCHsTzvs4b7dWQbRtuz3on09ZtGkZ7bZR+LPmFXdTsLR9OUSOg5leIEHhx7oP0gKtJtnz49dFlLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 by PH7PR11MB8455.namprd11.prod.outlook.com (2603:10b6:510:30d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Tue, 2 Apr
 2024 04:25:44 +0000
Received: from IA0PR11MB8419.namprd11.prod.outlook.com
 ([fe80::f1cb:2c2f:e082:c0d]) by IA0PR11MB8419.namprd11.prod.outlook.com
 ([fe80::f1cb:2c2f:e082:c0d%4]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 04:25:44 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 5/7] i40e: Consolidate
 checks whether given VSI is main
Thread-Index: AQHagBzQmYRIg+7VaEiEYHXhf3NNArFUaxLQ
Date: Tue, 2 Apr 2024 04:25:44 +0000
Message-ID: <IA0PR11MB84191C97688B67FB04B11BF8BD3E2@IA0PR11MB8419.namprd11.prod.outlook.com>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-6-ivecera@redhat.com>
In-Reply-To: <20240327075733.8967-6-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8419:EE_|PH7PR11MB8455:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HeJaiR06tPlmOI0zpt+ahWsGHDweI1Cx3zyitAPz/a14DMWZpDDNbIWmntxX+GPAOlLHdf8Sm7g87kq3nUAEmw2EHQ3qL9accm/ty6Esvtl721tFXvryqsC7orrgibHDhKnU6ahnSj2EHSpD4wrhn9xnzEvnRP6NNR/v4DFJ93hGfeWPW2pbbJhV1cGP/OcMM1zdWvhG9zPXKWJ52+jsvNee/tBsF+HeSGRZa59Flhl/+3GXAHPa3VIeFb4jo+jNIMQohdjXauv2I3KTzCz4XW5pAjteW1HbyfoQ5QiTJHHM34EZzdQToT3shFZm4KzHq54SVYSyRiCo/JOma9UUCtO3vcCpMEniOAdL3RkJycxnKelq37xOOxNR3miwy5jIBJB+hSpIOULdIMAx3ql9/SAgzXzddo4fLKyvdhtQHKGK/fM9fAGTydAa+0ZEukwuKRgCccjLEGtb9AOXVVHIwgghPKsM2/qjyNMUhtGO51eySUxAOeZng+4zU06uXZIhgHX2X48LxI9jNhTDC9M2kvUKiXpmI2RJoe6C0zXZVEWdiU0J7BUcvf+EcQBKCgpzCqNoGNH8voN0ieB8aMnGO13FFY88wd9szNGKV93el5QJjVdjaTRoD4iTxSs7pzBmAE2euQ46+NaXJLOCMZrzqA9nUkYf+4P3dEKreqNOneE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9MfQjtg51T8KhkZIHANit+jm34iLMh/Ba0HPz8jfUrRXDHdDz7NQUUPUezFZ?=
 =?us-ascii?Q?63ln4w8hAGpgJUhnX53HM+8QtBJF6g9ED3VZ0JoZoqp/mb6Lgvq59PpOpVl5?=
 =?us-ascii?Q?TbUpiHRtcyrgS6dt1wcVGbqbCnY9VgNR4bfKyeDen4skcaw3PBLHHSxNW/bQ?=
 =?us-ascii?Q?Ke4Nkwc4VU3pOh5dvMmFqNmA2GkrG6xxeIdEGSkieKffNG1pjOrclxFjMsJs?=
 =?us-ascii?Q?w0JlrqhxNgaTQ5WocH338DMgc8oSo6SNwlroSRNPRmj31QFvUwdlDEWA8vTq?=
 =?us-ascii?Q?Cg7Cgehep5Y0I3mU3q25OdKiV/3abWqhYmpuCN1fE65k+DGuoBn/XnbTwyRq?=
 =?us-ascii?Q?eHi1BVF8UyILCjkSNfp/OcVcInVmszV0SueuL6S74ASLlepeGUby0kGujCph?=
 =?us-ascii?Q?4JVAqB+kmhTJjI7ZxQ9SkdFa9f9ctzR6F+ShCrdXhdGswQGdHG/wFYx/Lh++?=
 =?us-ascii?Q?5/OjxivtXmBRuZiw18nJHX7CTQN5qhvgzjRGdKULQtCPjJZdSq7JL2McCNi9?=
 =?us-ascii?Q?ucTo0Tl80fXd93QrU7JEHX5R1wsKQWNXE2YGygTAmuLAJPKKkj3KVuC60VD3?=
 =?us-ascii?Q?Vv8Cay2qKth7EDf7PGr208JMfmuLQ17WpWaRFVBcWEMzFG7HW8CX9eVROpY4?=
 =?us-ascii?Q?pYnebo/68Jk+w++0nn5JPdGqQ3aoiXt4UMZKrvj5MvTCaRrYpJlOcVWQwMqJ?=
 =?us-ascii?Q?kmbiQlTBi7GT4Yi2AAfZ430H2uHyZP3/yFaFq+iCrTsGw+4MX2Q5rBHMMUOn?=
 =?us-ascii?Q?M8O3fqV/V4zQxETuWzlveMASKypa+ABpRfz7igP0VwMEqG9gElxU6Co87PTf?=
 =?us-ascii?Q?TO5DyheL0UACBxqjjjWqASpiLoFjLBdpKvK/ESqE9QeVakGkgYkWfU2csuM1?=
 =?us-ascii?Q?IerEmTq9GM0qq4gvz0YDMdc3IZWVv5QZgX2VkoAEnBQTquOadxPkzBG6rw0U?=
 =?us-ascii?Q?tlXjLKiZbFqFyapmX6DsI8ZUXVlRKEiap7DydadVSwQclGIJLmFG8QjGsqrW?=
 =?us-ascii?Q?0RtU5gor9Sg1bn6fD6BqxqLbmGe4gg9+mslhEz0mJchADUVExec0GZJ+Hwlw?=
 =?us-ascii?Q?4QYSFnOZT9uLfiv4BZa2jH0RoX+cV4huzZIglh+fWU4yZilrjyGn1nG5DIqZ?=
 =?us-ascii?Q?E1PRwsZY7t4PZrPJ7cT0UcgTezJLg8vBW97kt+E9U1Qa0UFkq9KCxxREDQzt?=
 =?us-ascii?Q?oS8QDUwJ++bOfFbmHePTsGKUcBS4RR7JQcCV0Un3OxC1846s/dIPFtd3BHZw?=
 =?us-ascii?Q?SoUmBOGNcT3Uxocph/CN9ihwzIOd6FPNwr7y9OCSFbAR1Y0D4KPoy2jhiE9/?=
 =?us-ascii?Q?lEmxoYjHmdLkIP8aT48hcD7lICPvMyapiY4bIUkNQUoaYzNYWL8gQZ49xG3B?=
 =?us-ascii?Q?HzM6zYSvJgDge1SiDeNDdFMx5Qd1jvJmft6SZkoAcQu0+De85KtS15qptTYS?=
 =?us-ascii?Q?NLhLosy5TdBMWlSiW9ff9x0AACuWRrMDT/q4iNAjgM9I4uOkDPx3bOlDNF9B?=
 =?us-ascii?Q?XKtiv+fAF1xaexSocThzzkq25MRerHEMfKdA6iVa+HMCM2KemYoc60ogk9ja?=
 =?us-ascii?Q?R1Y+B4QS/PcsN15bF9NUM4b5IwbtQmm9iOlmC/F/N9Xw+BJVhUtDyQ65KSoR?=
 =?us-ascii?Q?Vg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8419.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65dea7ef-e296-476b-e245-08dc52ccf682
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 04:25:44.1724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 57vHtwn+tq67QT31SulgyDQ6T0Px6JwweNvvRKLmcowQnT+HMbvCupTaHqNPsULHuRfs8Jdl/1F3l7G2mhioXl+0ua7PvJsRuMPAIoH15zkG9f55LZ0JkU1eUjYYUdF8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8455
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712031955; x=1743567955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ikpTorUiOHrO9KvYbO9PWpJgp5SCJmVsw7r+FMwV1qY=;
 b=HOOUnybZR+c114Oa6iKRUpJMZdrthONS+wPmicgfkTZ1PQ/HZqCivJbE
 siB0AMC5WdEA7hov/y/M0C/u172t5HfqI/yu0jXwMlkEnSTEaADz9d1eo
 nRLnVmK6KNiLXZVjxs23LWwNY5WpGHrGQ9JDEJ78kCd9jt3YqZ3SGt2Vc
 vslCx5GM/OI4fOZVdWDLmdjiRjwutC6pQI4Qx4kJzKlSx9MWU2jy8Llvi
 1lj7L3/91Uco7VEsSuK/PZlKQD9Gyvf5WrTeEZKsfN9c060clDab9oBCb
 Y9Gaa+Dljq9bV/uYCIJqi2MR3z8/uyXMXWuBJFlUhKNREcv70bsUgaU/S
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HOOUnybZ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/7] i40e: Consolidate
 checks whether given VSI is main
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of I=
van Vecera
> Sent: Wednesday, March 27, 2024 1:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Loktionov, Alek=
sandr <aleksandr.loktionov@intel.com>; edumazet@google.com; Nguyen, Anthony=
 L <anthony.l.nguyen@intel.com>; kuba@kernel.org; pabeni@redhat.com; davem@=
davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/7] i40e: Consolidate chec=
ks whether given VSI is main
>
> In the driver code there are 3 types of checks whether given VSI is main =
or not:
> 1. vsi->type =3D=3D/!=3D I40E_VSI_MAIN
> 2. vsi =3D=3D/!=3D pf->vsi[pf->lan_vsi]
> 3. vsi->seid =3D=3D/!=3D pf->vsi[pf->lan_vsi]->seid
>
> All of them are equivalent and can be consolidated. Convert cases
> 2 and 3 to case 1.
>
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |  2 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 12 ++++++------
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 19 +++++++++----------
>  3 files changed, 16 insertions(+), 17 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

