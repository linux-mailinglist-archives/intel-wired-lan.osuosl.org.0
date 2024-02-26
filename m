Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E101866EB9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 10:38:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D633A40A08;
	Mon, 26 Feb 2024 09:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K1iykOfmQaRJ; Mon, 26 Feb 2024 09:38:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5F62409C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708940294;
	bh=bc0Uc7NWIHPcv9r8soPwH1kPphvUVd1FsWA2c0WOk0Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9JsKKAiiCNEONt7+leUR+jF30NCoMMQ1tPfk/7BCO4bRASbnjbVo+svFClrr+Fziz
	 a/+7OKXG2Ti3mNuXk5BmQdNqALsAnIRBbMcoP7TmyHtXIndThQPOS5K4U0xL6E1y2u
	 KwgEDr7wZWDODjzTiLBN4cudTLV6gULoUF48WnBbiGTzubGfb6I6mNS5qLAQRCVHCF
	 uwJdp6k0ZW3S12MGPvn7/m5z7udW91hLvSVREi8de0zXJTRtcLyd8aKAnSlcwbnI7U
	 a6EVv69HiGwgNQ+6om3uRIOt+g53fcU9yt6NwgYeHUPJOQ/mPWDtAnPZeccG9bjTx1
	 Rv/2L2ky5MxaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5F62409C4;
	Mon, 26 Feb 2024 09:38:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03EC41BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 09:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2FC74072E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 09:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cn1EJavuvg6X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 09:38:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54474405E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54474405E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54474405E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 09:38:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="14649551"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="14649551"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 01:38:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6537216"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 01:38:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 01:38:07 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 01:38:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 01:38:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SnRQOcuaQFuXxZQTTk1K2WuiOJrO4s5J5Qqh7NgnhECjQHsFLG7YWzJ5175zFC6kcq3HHdyLwLnmXY7EOMhTx6xn5PB3qaMk5j4FWWgCq039fSVlVNqt0fVj93/cZhxc9smtA5LAPWc3+cyTRc7Ccv+dsF86wNuPMrY1aOsE2GCfvLYBGhGAhztBuo/niYAl6Z3xgGU/wtHxhtan81EbDvRyocgHHgk0gwaCz6rjApRehYMNtfYZeKVMG0SI9Zi8h8Qg68lqBZf2vFl/E5fcF1ZROfDaZjsKGBvpnZIGgCqoTDduUAMbxXRWWKk8btjfogsiVbEky23Nui/JOiXjaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bc0Uc7NWIHPcv9r8soPwH1kPphvUVd1FsWA2c0WOk0Q=;
 b=bo83Zngcez9eRbdiWjFY6SWmKEWOEKpYO8mliMFmk3oBZOc1QiT9nMNVaFQyPX+h6tyrasbc36dmmp/jQ78ruADUVk7eLoB0b3LtYml6A4KuUg8SUq9d+wdMHl9fZiHM8AZ9CZRp8M7OE3zNy3HsBmf/MqAty4ykGsejgFyxkJf9oLOfCGwg/NOwt7A+L+BqQoK7+0l/e5XNfJMm4cQCG3HTHf4gML2zMY8hzy4RRbo6Q7q48TTjjhDgH7aNSUa7LdnQbMjGFXQr/2A9iBqvg0/jVvo3uGm//vZqE9PUK+DjFdDiMLoBSKRgCBN2uWimkaBeyzsxoSlNgH0uXi9t4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB5942.namprd11.prod.outlook.com (2603:10b6:510:13e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Mon, 26 Feb
 2024 09:38:05 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7339.019; Mon, 26 Feb 2024
 09:38:05 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 02/10] ice: Add driver
 support for firmware changes for LAG
Thread-Index: AQHZiRNBJvlbzuvcREC7mGK4OkLw5q9fcbwAgb6qzOA=
Date: Mon, 26 Feb 2024 09:38:05 +0000
Message-ID: <SJ0PR11MB5865FEA2D007BA6B65E6C23B8F5A2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20230517230028.321350-3-david.m.ertman@intel.com>
 <202305181101.gCbJ4JDT-lkp@intel.com>
In-Reply-To: <202305181101.gCbJ4JDT-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB5942:EE_
x-ms-office365-filtering-correlation-id: 9a84bb8a-70a1-4def-5d9e-08dc36aea222
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mAu56BlcXrMclA0+KXCYyySlAfwxViBvQeBjJaHyuNg53WQJ+agl6VKUqgQdBcftboH9N95x7tHspmTlZ1gIf/XwHRj3xvr3c5A01LlPt6HA6HDq68xhfJSYB25pGjeczptmI432tW2QrEdFk3vsvKilOgsMw+k8WGuqIh63/yTgz7zhz6NTl7qTLrKp8HMdxTlFXfy2ZRUFuXLYMBaAkKNvjuGqvihUlOAgpcroooxjRKHZGhu1Waz5ze/t+z3RPqc/s4ApF1YZzN8WIJKojvUhgefvaUZTcnmIoBX2fLVFCx1OMUM9rqKUfRhvUOA5BkXwx49DK1zavE4lXv1/7ecBgKhS/JKufAxPaTVsU1YHDlmLCm0WjFRDfPRdqyTorOOEetFCUQP+xOiuTt4qBfTb5+FGkN2FKdvVvJvKp0H25B66/gAFRDlTNk2RLx1986A+jS0ulkcqiz+2Ag605KuzgFb1K/5TBdVKP7y0pHQKAgpHwfaheFIbETr2vMGzbBs5e3Os+Fb/kGdzk2GpUbNJRMjDYOgi0wrankWY80OBexTftodr9zbN2FFRWgF/hZ1uLzL7TVz801YvxEzXXCcV4lJc7DhaoAp2hoImmVnDWKkyl1iiy0pCP5Wv8cSMndGoW7eQf82AIGroNMvYcECBGtOb8FCa+UgurkYOA4zNizm5wcHoChNDrvdOVALFeTons+Lwc9N9i7yJRYp+zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3XYal746YCyrSJjMSEbvrE7AHPFaqkftXzhrkTG1uW59k8+/+eq98fj4HBsH?=
 =?us-ascii?Q?FkPx+5akLAOKxBtoSshrCfa8qxDKbOFqEyUtzhKtt4eFeWFupSn/sZTqXgcH?=
 =?us-ascii?Q?bTr7tb5Za2PkHe0KZBM/UdZZ2fdLsSJy98SQE6xcbHIK5OlVGSPahATu6/J7?=
 =?us-ascii?Q?KmlvlFzpRnKlvqHLu7UJsPNIHHymJSgtl8Q/Sqlxr+5GWl/KTp0P6lgeeRqV?=
 =?us-ascii?Q?uKySHbtfs/Y2xirNoh7fafaA1Yshvynp395heaajmqwKo6K+Ye+rN6KKIR0u?=
 =?us-ascii?Q?sh+fFalVsle/rMaZo6RcavJ1ZWow3oA6Rz5LEZiLB55mV7M6G/UiqUJGhkQY?=
 =?us-ascii?Q?0LRwifAt8iWTDFAxPjzKiKbX1JPq56H0MlmAhqY2P9lO5fomd8814clqlgeK?=
 =?us-ascii?Q?U5LsDTgsIKdkXXf9JF3/BuXZ1hkeyykcODyKx5JMzmj21ObrbR3DXCZcdrKc?=
 =?us-ascii?Q?pkrHz2EllNt6i0VRk7RmBfn+CKDnEksLJb/ztZHV0Mn5B35G8yG9mj3tJjdX?=
 =?us-ascii?Q?AXZ3uwu1NbSSbG4QEOHst62w1IflRFypBm1CqZFCBPRL104lyAVVtZcDjG84?=
 =?us-ascii?Q?QyNdetjd5SvdTp7jn6UuNs7gN85ABuP3la/PJq7C+zLSUwd2UWWcvr2G8E7s?=
 =?us-ascii?Q?MBIeGaMp9M38FjFhMqo/ZOcRGTlCPE4CTs2PSv2I8ViAf/AQDfCBKEPzlm3R?=
 =?us-ascii?Q?G8DHzcQnFf3gobCg1m0j+WF0UQl6THIUaHMSt+HKbk37ctFDNFgZKpK2xetH?=
 =?us-ascii?Q?d+kRmNaMysXnMqgflJ6ynpagoYsE0VRjY0+hL3OGf2oAr8ebZ7vebJNJgs6T?=
 =?us-ascii?Q?N/9jOS0CcSKMC1CJOAYE983C2BCmdn+MzyndB3vEGDVVU5YfHbDoojXhFQf/?=
 =?us-ascii?Q?um97nDXBEGWAeXoSVvZnC2YgTWswt+yuHghNh2Ru3ehMIANXBKt/JCr+VnXa?=
 =?us-ascii?Q?j0c63fJuLm7J2OtgXYMKuQ9lYepO/dL7UfYgoNZ9/Dk/1s4OSsA+M1sGnHD4?=
 =?us-ascii?Q?BOrd0Jv1gOi+fHAY5vf25t5EeE1zMC+yIl9j4v5/NxvgPsxi9XVCXG0j6fSu?=
 =?us-ascii?Q?/eUeObU2pZdaLZsI5zPEfYsg6GvWIcZdT4K82+wAwSn5LwSVQNE0ir7BYgE1?=
 =?us-ascii?Q?6KTThEIx9GLOJa3JgW7P+OZVVnFLiBBxJQnvbJkLPfPUdAzl2Vr77s8DQEdT?=
 =?us-ascii?Q?WLP82P5ZqFzHLYMN10SbK47kR2H7gKk6xCwopYcXwZzZBoP7++Jvi95P2Ngl?=
 =?us-ascii?Q?6zcpbut1u7+Fr3oRhyrkrXHkFyYCRxTBiWgZTWiNcL9SlIfn/aSWm66OBB/M?=
 =?us-ascii?Q?FJ8A1z1arQKRR/MeaO3sgMXvSXpDZ05utObvdNJ42Zly/DLbE5WzTJRSBt+n?=
 =?us-ascii?Q?VixpP9Q9fdXsvLHYyN4uOfsxDXLtY9BN2+Tn/MHp/eWnb63Qwft1phQIP2kn?=
 =?us-ascii?Q?1RFDeORyTMk0eOtgdvBqR8O4aEjAaMPR/HMhfDv3cnziGZep5rbw9jSzzbkr?=
 =?us-ascii?Q?yR8cn556Zc881UAstQue1C+IT0CAA47OKd7ybQMrFq6waiynhIO6PKEfLYxI?=
 =?us-ascii?Q?erSqH4QB5+0O6VzlE97ObowXV+Mwi1wvsZZxo7jQBqDYwjJXNbGhRvHS3C0a?=
 =?us-ascii?Q?VQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a84bb8a-70a1-4def-5d9e-08dc36aea222
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 09:38:05.1665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Z+a7surLRCq8vFlk6WRFve6a8lDpsLp0BWvTk6FUmFWao8Ww/+np3Xpb+gFHXQ+wHBEDS1+VDmqhC13l2Ykk7vK17pKkwUxvXmnVO2kwbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5942
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708940290; x=1740476290;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kzEZcrrK/GUj72ygoWb2YH583GE04ex1xcdRO4H9jaA=;
 b=SGa0hgt4Ab3AgB4yJLZGl7usQ1FU13hewPHjug8HvhgQYLkMbPEBmwTK
 Y4ScuBET/VxxJg3ONeEqc08iLcHAXvLDD/fbJhrMVC5aub4CaU/IG8vly
 izBT/lxZ6y9e0sXyhddNR1ZHuLPoRorekVBy/VqpYM22p+uFhyBJvXHV4
 xYXIEDoVrAlyAgxMeyoK32Do1/rBmqoTfr+k8T8QAmzNPB65TBCwkZV9S
 VllD6EIOWIOXhi5+AQxRz7iLlEf1cN82WY0RCbp+jqWFyllYtLqWvJ80Z
 ypreGciJLTgqY9l/za63PR0if1oOm9wK1hFb65hsWocA80lG930vcdimG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SGa0hgt4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 02/10] ice: Add driver
 support for firmware changes for LAG
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
Cc: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "oe-kbuild-all@lists.linux.dev" <oe-kbuild-all@lists.linux.dev>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> kernel test robot
> Sent: Thursday, May 18, 2023 6:34 AM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: llvm@lists.linux.dev; oe-kbuild-all@lists.linux.dev
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 02/10] ice: Add driver
> support for firmware changes for LAG
>=20
> Hi Dave,
>=20
> kernel test robot noticed the following build warnings:
>=20
> [auto build test WARNING on tnguy-next-queue/dev-queue]
>=20
> url:    https://github.com/intel-lab-lkp/linux/commits/Dave-Ertman/ice-
> Correctly-initialize-queue-context-values/20230518-070823
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.=
git
> dev-queue
> patch link:    https://lore.kernel.org/r/20230517230028.321350-3-
> david.m.ertman%40intel.com
> patch subject: [Intel-wired-lan] [PATCH iwl-next v6 02/10] ice: Add drive=
r
> support for firmware changes for LAG
> config: i386-randconfig-a013
> compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project
> f28c006a5895fc0e329fe15fead81e37457cb1d1)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/intel-lab-
> lkp/linux/commit/f417c72c01f3210959baa45e51dd59cc7be16688
>         git remote add linux-review https://github.com/intel-lab-lkp/linu=
x
>         git fetch --no-tags linux-review Dave-Ertman/ice-Correctly-initia=
lize-
> queue-context-values/20230518-070823
>         git checkout f417c72c01f3210959baa45e51dd59cc7be16688
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
> W=3D1 O=3Dbuild_dir ARCH=3Di386 olddefconfig
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
> W=3D1 O=3Dbuild_dir ARCH=3Di386 SHELL=3D/bin/bash drivers/net/ethernet/in=
tel/ice/
>=20
> If you fix the issue, kindly add following tag where applicable
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202305181101.gCbJ4JDT-
> lkp@intel.com/
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/net/ethernet/intel/ice/ice_common.c:2255:31: warning: use of
> logical '&&' with constant operand [-Wconstant-logical-operand]
>                    caps->sriov_lag =3D !!(number && ICE_AQC_BIT_SRIOV_LAG=
);
>                                                ^  ~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/intel/ice/ice_common.c:2255:31: note: use '&' for=
 a
> bitwise operation
>                    caps->sriov_lag =3D !!(number && ICE_AQC_BIT_SRIOV_LAG=
);
>                                                ^~
>                                                &
>    drivers/net/ethernet/intel/ice/ice_common.c:2255:31: note: remove
> constant to silence this warning
>                    caps->sriov_lag =3D !!(number && ICE_AQC_BIT_SRIOV_LAG=
);
>                                               ~^~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
>=20
>=20
> vim +2255 drivers/net/ethernet/intel/ice/ice_common.c
>=20
>   2132
>   2133	/**
>   2134	 * ice_parse_common_caps - parse common device/function
> capabilities
>   2135	 * @hw: pointer to the HW struct
>   2136	 * @caps: pointer to common capabilities structure
>   2137	 * @elem: the capability element to parse
>   2138	 * @prefix: message prefix for tracing capabilities
>   2139	 *
>   2140	 * Given a capability element, extract relevant details into the c=
ommon
>   2141	 * capability structure.
>   2142	 *
>   2143	 * Returns: true if the capability matches one of the common capab=
ility
> ids,
>   2144	 * false otherwise.
>   2145	 */
>   2146	static bool
>   2147	ice_parse_common_caps(struct ice_hw *hw, struct
> ice_hw_common_caps *caps,
>   2148			      struct ice_aqc_list_caps_elem *elem, const char
> *prefix)
>   2149	{
>   2150		u32 logical_id =3D le32_to_cpu(elem->logical_id);
>   2151		u32 phys_id =3D le32_to_cpu(elem->phys_id);
>   2152		u32 number =3D le32_to_cpu(elem->number);
>   2153		u16 cap =3D le16_to_cpu(elem->cap);
>   2154		bool found =3D true;
>   2155
>   2156		switch (cap) {
>   2157		case ICE_AQC_CAPS_VALID_FUNCTIONS:
>   2158			caps->valid_functions =3D number;
>   2159			ice_debug(hw, ICE_DBG_INIT, "%s: valid_functions
> (bitmap) =3D %d\n", prefix,
>   2160				  caps->valid_functions);
>   2161			break;
>   2162		case ICE_AQC_CAPS_SRIOV:
>   2163			caps->sr_iov_1_1 =3D (number =3D=3D 1);
>   2164			ice_debug(hw, ICE_DBG_INIT, "%s: sr_iov_1_1 =3D
> %d\n", prefix,
>   2165				  caps->sr_iov_1_1);
>   2166			break;
>   2167		case ICE_AQC_CAPS_DCB:
>   2168			caps->dcb =3D (number =3D=3D 1);
>   2169			caps->active_tc_bitmap =3D logical_id;
>   2170			caps->maxtc =3D phys_id;
>   2171			ice_debug(hw, ICE_DBG_INIT, "%s: dcb =3D %d\n",
> prefix, caps->dcb);
>   2172			ice_debug(hw, ICE_DBG_INIT, "%s: active_tc_bitmap =3D
> %d\n", prefix,
>   2173				  caps->active_tc_bitmap);
>   2174			ice_debug(hw, ICE_DBG_INIT, "%s: maxtc =3D %d\n",
> prefix, caps->maxtc);
>   2175			break;
>   2176		case ICE_AQC_CAPS_RSS:
>   2177			caps->rss_table_size =3D number;
>   2178			caps->rss_table_entry_width =3D logical_id;
>   2179			ice_debug(hw, ICE_DBG_INIT, "%s: rss_table_size =3D
> %d\n", prefix,
>   2180				  caps->rss_table_size);
>   2181			ice_debug(hw, ICE_DBG_INIT, "%s:
> rss_table_entry_width =3D %d\n", prefix,
>   2182				  caps->rss_table_entry_width);
>   2183			break;
>   2184		case ICE_AQC_CAPS_RXQS:
>   2185			caps->num_rxq =3D number;
>   2186			caps->rxq_first_id =3D phys_id;
>   2187			ice_debug(hw, ICE_DBG_INIT, "%s: num_rxq =3D %d\n",
> prefix,
>   2188				  caps->num_rxq);
>   2189			ice_debug(hw, ICE_DBG_INIT, "%s: rxq_first_id =3D
> %d\n", prefix,
>   2190				  caps->rxq_first_id);
>   2191			break;
>   2192		case ICE_AQC_CAPS_TXQS:
>   2193			caps->num_txq =3D number;
>   2194			caps->txq_first_id =3D phys_id;
>   2195			ice_debug(hw, ICE_DBG_INIT, "%s: num_txq =3D %d\n",
> prefix,
>   2196				  caps->num_txq);
>   2197			ice_debug(hw, ICE_DBG_INIT, "%s: txq_first_id =3D
> %d\n", prefix,
>   2198				  caps->txq_first_id);
>   2199			break;
>   2200		case ICE_AQC_CAPS_MSIX:
>   2201			caps->num_msix_vectors =3D number;
>   2202			caps->msix_vector_first_id =3D phys_id;
>   2203			ice_debug(hw, ICE_DBG_INIT, "%s: num_msix_vectors
> =3D %d\n", prefix,
>   2204				  caps->num_msix_vectors);
>   2205			ice_debug(hw, ICE_DBG_INIT, "%s:
> msix_vector_first_id =3D %d\n", prefix,
>   2206				  caps->msix_vector_first_id);
>   2207			break;
>   2208		case ICE_AQC_CAPS_PENDING_NVM_VER:
>   2209			caps->nvm_update_pending_nvm =3D true;
>   2210			ice_debug(hw, ICE_DBG_INIT, "%s:
> update_pending_nvm\n", prefix);
>   2211			break;
>   2212		case ICE_AQC_CAPS_PENDING_OROM_VER:
>   2213			caps->nvm_update_pending_orom =3D true;
>   2214			ice_debug(hw, ICE_DBG_INIT, "%s:
> update_pending_orom\n", prefix);
>   2215			break;
>   2216		case ICE_AQC_CAPS_PENDING_NET_VER:
>   2217			caps->nvm_update_pending_netlist =3D true;
>   2218			ice_debug(hw, ICE_DBG_INIT, "%s:
> update_pending_netlist\n", prefix);
>   2219			break;
>   2220		case ICE_AQC_CAPS_NVM_MGMT:
>   2221			caps->nvm_unified_update =3D
>   2222				(number &
> ICE_NVM_MGMT_UNIFIED_UPD_SUPPORT) ?
>   2223				true : false;
>   2224			ice_debug(hw, ICE_DBG_INIT, "%s:
> nvm_unified_update =3D %d\n", prefix,
>   2225				  caps->nvm_unified_update);
>   2226			break;
>   2227		case ICE_AQC_CAPS_RDMA:
>   2228			caps->rdma =3D (number =3D=3D 1);
>   2229			ice_debug(hw, ICE_DBG_INIT, "%s: rdma =3D %d\n",
> prefix, caps->rdma);
>   2230			break;
>   2231		case ICE_AQC_CAPS_MAX_MTU:
>   2232			caps->max_mtu =3D number;
>   2233			ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu =3D %d\n",
>   2234				  prefix, caps->max_mtu);
>   2235			break;
>   2236		case ICE_AQC_CAPS_PCIE_RESET_AVOIDANCE:
>   2237			caps->pcie_reset_avoidance =3D (number > 0);
>   2238			ice_debug(hw, ICE_DBG_INIT,
>   2239				  "%s: pcie_reset_avoidance =3D %d\n", prefix,
>   2240				  caps->pcie_reset_avoidance);
>   2241			break;
>   2242		case ICE_AQC_CAPS_POST_UPDATE_RESET_RESTRICT:
>   2243			caps->reset_restrict_support =3D (number =3D=3D 1);
>   2244			ice_debug(hw, ICE_DBG_INIT,
>   2245				  "%s: reset_restrict_support =3D %d\n", prefix,
>   2246				  caps->reset_restrict_support);
>   2247			break;
>   2248		case ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE:
>   2249			caps->tx_sched_topo_comp_mode_en =3D (number =3D=3D
> 1);
>   2250			break;
>   2251		case ICE_AQC_CAPS_FW_LAG_SUPPORT:
>   2252			caps->roce_lag =3D !!(number &&
> ICE_AQC_BIT_ROCEV2_LAG);
>   2253			ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag =3D %d\n",
>   2254				  prefix, caps->roce_lag);
> > 2255			caps->sriov_lag =3D !!(number &&
> ICE_AQC_BIT_SRIOV_LAG);
>   2256			ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag =3D %d\n",
>   2257				  prefix, caps->sriov_lag);
>   2258			break;
>   2259		default:
>   2260			/* Not one of the recognized common capabilities */
>   2261			found =3D false;
>   2262		}
>   2263
>   2264		return found;
>   2265	}
>   2266
>=20
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


