Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF0A86EEAD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C2E341FB4;
	Sat,  2 Mar 2024 04:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nBdSr5DvE-8s; Sat,  2 Mar 2024 04:46:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5159541F3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354807;
	bh=+ShmMMu1tERgZjeq8mE+p1OXUVi/IpEzE1t7mNK5FHQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wJ8h80ORWd0zKgF6KH0r+c60UhJ2ugj83JPVzaV5l7otXdpUFcVOsMzA6ekLxPNbM
	 bTrqf8JGiaJcSKhNuR7+Lc1eqjJsKgGjL+KvgOA2AH2z7NS4xKfdfBsKTNIp2jmJ0w
	 9SGbRiblb84oCdrFC531SWFXlg5n/jq/1OGT+Ebd9iSe6mm2g9dvNpHyhqLLXj03Ft
	 XINTKfPfbBwTxVAYOiJDcDnaHfw2rFNyKAz85xZvQNzDgje1ClQpu8rdF0tiko6mN6
	 cZ7v9HvoWUCHEaIAdUtpRKWWx3T6wHo+/1PUtJR4RNDpsdMmhmE9bgFhlrNlsDPoVc
	 X/FxUwvn3Xzbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5159541F3C;
	Sat,  2 Mar 2024 04:46:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83BC21BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C6766105E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YS8OPpcKfW4m for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:46:45 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 02 Mar 2024 04:46:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C47316100C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C47316100C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C47316100C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:46:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3772766"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="3772766"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:39:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="8463089"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:39:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:39:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:39:36 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:39:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fcxYLfFOW8QWaSuVF7smEB0p5ALOgSFbtIzbo4NsxRWPJa8hLYx7iqGFKhiPAuw9qgT5KvSQplQXzH+Q6Ye7d0FRjIosRvGO+FrEpma4+eEbmSD8vA3A+rMm0gcsICgJN15qNPly/7blhkW/En3tcp9NHTLDrTLlQ+LBDCJ0tN12zeng8LhsynsxtztIs9tRqjI55GSl3JCi4p5QoP3K0o54LHW4rDKcWxdKf3Rl1e9Adg6noUE2DxA69hCenDQzMUxVIneiTnP0RsUmEPzLR9wKNLbaNazLBfvCxHjLGw8rWOWEvPa9QUDJ1DYLl1rYIaOy0hXgpvANV/wb/WV+xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ShmMMu1tERgZjeq8mE+p1OXUVi/IpEzE1t7mNK5FHQ=;
 b=NdJcmM3/q8QMGzLaM6zLh0HhqD4lGvUs+aYoUDhC33oG4RqhhtxBWGmOAgKa9kjBovnjFTc4Cf40BvcnqgTf/hqukRmOFxIvvxQ7BMgYxE/kEG7R4uSnIF4lMaSggYVt7ByCZcauX96+1ASFHzr1BJioLHfjGhq7Wq3W3aLOUsoRzFHFFYicHNKUE4VgGabKBzZofdeiQYaDCMbzwNqP8rUgrr+iRk2RQPRZjOIsMdVxXqsTeRKUXFX4RdFafNsCSLteVS8R5BlkVw7j2TNJ7vte7mPzcGx/EQMACJRWRMaVdv67SmQwowPAmE1a4yWLT9bj2FYeB4A8bCp9t1h2yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:39:34 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:39:34 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 09/11 iwl-next] idpf: prevent deinit uninitialized
 virtchnl core
Thread-Index: AQHaZcJMgFIYdtKlBkO6hWC1VzCMp7Ej66ng
Date: Sat, 2 Mar 2024 04:39:34 +0000
Message-ID: <MW4PR11MB5911E30B620780C6E36B1302BA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-10-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-10-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: c1cef4b3-8297-41f7-3ef1-08dc3a72c288
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xn8501h2EuVfltEgDMejYy7JZ2zQDxoPc689VAK3LyxxyDNxn3E9+WIeHUcKo9/YPmhnxwrvZXNUMe3DhW8NE4PLJCNvT0x7ac1CnBE6tdMFETw+Ri0RkzdVCdcWxOdj22VWCKdxUNH3j5uOdsig99BTckWwO1691p7vZaABjvotz3Z5q6AjG15tXe9aCdQkWCJ1Q7VxJtEOkFHImobfo5CT5rXmUeiCCct4zZ4ja8Jf14evOIN2XNii8oC1o9kWh7plpqcoQlZ2ULawsD9NXp0tsrwjGaAC3dBOXfYbFIhEOlmWK4dT2wksQ4GU3wnBn1an3ohwmkQ8vdKncyWpRNtie47ZyrMNx5zJvjUZ+6o5TANRL9NMZs90V86f2RpSO8A4GreYLlFgYSZ8kq7u5nINNa53e8ifCvqfj4DjQratSljpYG9UkK1WLBzatGC1GLFATMh/tjb8aAd5xFONlOFybMXvB1E3QPt2WvP6cObr1XYb+Coh4XWGPqH0uXe1k4JH43lU9rCmo+qzjZWCjhwacD7sx7cBwe7KL7gd2dM8v9gZYH3lX+Dpwz9lEB2Yd0LLWytpp+f7A0wqXTXp+ejzO/xttYygNeRkc250vgsxRULP8vPJk+m2bIzPBlJnMKImRHIi621Ze3HF1E/Ofz1U/A5sigYkJPMXCBRqY3H7xerzwMVyEoQD26HlvHpj+NGwF1Gr4OjnpuDV1ZRcOf+k9KYUXW44puzP/ADzWQ4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KvyEEt1O0ijSJLl923DNFGCe9WQZCAPlmoam4e+gHnu9XX166SSxdm/qk9UJ?=
 =?us-ascii?Q?cHUSdXQQ/b+zpcLfh3A9Zu5NYure5LEZyVOVsqkm5LlRv2B1B7sGa9wUWCEV?=
 =?us-ascii?Q?wjvfc2SUefSDVvSmWyRHN7muAHukfeeugJzoSMmwEuHswjN1xaSDYIICMwq9?=
 =?us-ascii?Q?iJ7jLt19jACNRX+KENImiZic0+z+uAA2zxu1yBLwgDu//3zKAgGeTN63U4Am?=
 =?us-ascii?Q?d+YrHU4KL1kQdU39BgEI5GqlxGEu6oCZFSnK2dzV5WGk2bEDtFg/wm9r9GBq?=
 =?us-ascii?Q?7aAEodg4CZqypvl9BS+EXzvX/A0ICYoUS+4DaNdrru1DTPLxabIdaughQDDj?=
 =?us-ascii?Q?homdMszSPkqG0LUVwU8ZK9OuHGiE2I0x5mzpYc94q+WL3tJA2qpxIbPm0gPA?=
 =?us-ascii?Q?Ay4ji4NRMxpWTxAumjGjLVVL+9Z/ECYnkLlqB6aq3ajn0HVpv8PFU2m+QzKi?=
 =?us-ascii?Q?0oIqoWYK5hgLIQp+P9bj422VdwfEENkA30LTsc6cX3CNc9maN4Njp/jgVDr2?=
 =?us-ascii?Q?POHlFeV+LEr2puR009nTR4bYuBXfYZqQbS2yyp0UqIEoa5g/kgIvaqJ1Zpxb?=
 =?us-ascii?Q?f33n8d4qh5rxgIiorJKs0oQ3tMj17oKyz1rNdlv6C83qzQLbT2UC3z0povcb?=
 =?us-ascii?Q?cugfXJ3FVd8l//edjnfVABf+BprRenpysYn2vRD7ETlfTEouql0tBn88dK5R?=
 =?us-ascii?Q?tYPEtTD7Hqp0+bp8xbM7uiIfPe0GWW1Z0m9Or7rzs7G9He5Q10qsdTHXmD6J?=
 =?us-ascii?Q?gUJI0pujTOktibhZ2V5NuCM7oDKjmNuwPov/k0fjqKNvuwyutGVq1kb6mFz8?=
 =?us-ascii?Q?TuK/zrB2GpRrINcm2kCld4zfecoFkcH64LWJdeSF1aWLB01FFe4KvtdfvFmV?=
 =?us-ascii?Q?rAxfZjuF4TUrdj70q0XgKJ2cIP6ueyBQOMDTUS8xA/VIH62DSVBH6gA440LO?=
 =?us-ascii?Q?TdArDfTVhwXpV2cXaDVE/oLx/2Bochv4bTLoTohlrfcfd8/jpglbabz5CMPQ?=
 =?us-ascii?Q?FzyrJTErFzs7gCwfbIYAu+Cv9ZFhDWkCQ9/SQYP52AVX7OJxsniF0qT5qVzB?=
 =?us-ascii?Q?PU9uydT8NoLWXgFQMfv7d994MXjrIdTakUGGQ+49h5f+6tpaC8K+5pMfw7gv?=
 =?us-ascii?Q?47xokDS9hDWdES8Feeiou/HGl3hdkE3JoglsE3Lm42lviPsJGKoNJeRZyGx8?=
 =?us-ascii?Q?qhzh2SDY74ByOsRs+/4CQOTyaaVzUpyzIQ/qben5SC90SrPXKwWx7NVjak9s?=
 =?us-ascii?Q?ggWhYpOhxX7PDCZVCqxhqWepUDg/8CrOeolk9M9uW+lxOF5dN3mJTxkk8+k+?=
 =?us-ascii?Q?D/Mrhtxlfy0w0LWfOR8U+s62bUpNDH8oyvjY7DRyCdCF53S/IJlbPcVB1sxT?=
 =?us-ascii?Q?qeOvtEhE3oUwJc5AsI6x/daWb9780BkzahsVs33W3UOiVMT1EwjK8LRZor3z?=
 =?us-ascii?Q?rt7q3rO9sLNo5ILcJPG8WJM/3Gd42FrHGN547PcNn7p2+wIU7TplJ7rTx7G6?=
 =?us-ascii?Q?VHDK55gVCrg3xpXSudKGji1a8K01O/bgXEULGVZiaUMz07blJk850StzAie/?=
 =?us-ascii?Q?krPIZmSkNdwHv8RQfVQeCZ+mwLdBxHVaOMKGZpkPdP+k+6YX5uW0CXSg9J2k?=
 =?us-ascii?Q?Aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1cef4b3-8297-41f7-3ef1-08dc3a72c288
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:39:34.3564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B8nNrTcyLtrs90YYdRfiWn8ydKPVHP/4NR53rb/zQQS2d/PTyBvFVcFkJW8Rcpl/8QHvZNdGmv2QVYztNyolYswBONs2yfTTrpflCGMwL5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354805; x=1740890805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hePmnKuLvhW1fyFYgEMGAwyVfJTGcIWYTVtd/V5FBTo=;
 b=cNgqsSTH+8KUilVmryvWGVmuCfISxT+O6YLoDAkn5MGnI5BEJ4j5p/K1
 0cW/pi3NWEmreeESgVs2p3VYHp8CRT5VBzxNGiefm2SO8ca3EJMoRrEmk
 sxhGzscSvu9mPBP7lEbTPtpY29CSuMEEWYGa4k9qpeqq9gC/9PiHYP98G
 CWB5wdTEeEliJcVNF0sb9kibe1RXA+CJKg+pCRavjgtnRj/gUC6lVcScA
 KtmTzxluFv2uc627tZmnHg5BnhqGM/fnF2i2iLcpl8wcwp2TWavnrHsev
 1mM+Jo3KZTSiK4Zqtox1XMKaKGLsIEnlb0WMS7O/HL54ID2qQvM+XKBF2
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cNgqsSTH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 09/11 iwl-next] idpf: prevent
 deinit uninitialized virtchnl core
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [PATCH v6 09/11 iwl-next] idpf: prevent deinit uninitialized vir=
tchnl
> core
>=20
> In idpf_remove we need to tear down the virtchnl core with
> idpf_vc_core_deinit so we can free up resources and leave things in a
> good state. However, in the case where we failed to establish VC
> communications we may not have ever actually successfully initialized
> the virtchnl core.
>=20
> This fixes it by setting a bit once we successfully init the virtchnl
> core.  Then, in deinit, we'll check for it before going on further,
> otherwise we just return. Also clear the bit at the end of deinit so we
> know it's gone now.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h          |  2 ++
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 10 ++++++++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
