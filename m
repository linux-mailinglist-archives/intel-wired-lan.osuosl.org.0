Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DE6B2101B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 17:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2986D41575;
	Mon, 11 Aug 2025 15:45:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Knkyr6eLy9xq; Mon, 11 Aug 2025 15:45:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8355C41570
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754927155;
	bh=XpELhWee72CFV9pRKbao317uWyRBv/2+EopU9Jp0zg8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PMcIm2t8UW65Z9wEkwd8GAfqWCP2/OZpJWI0s2F3vof+kMN+vrUqKc+Rmy38AraQ1
	 RrQKJsYf/78hnPNHKy1KBihvrzj50K8VcQuV8RDNIUuPkUSHlr/jYDMfv0XwUwGeV3
	 G0CJSyjFocDLJbk6VwmJSz2Pemn97G1OyQkBw+xzbujPjMn5hNkhZCMBbdR2AQeR/G
	 wZ04RR/eP3jdmHkb9jT+ZszlrEecaGMvhwhVXTwHOMBrFUI4aaPaXuOA1ULbNS8TKH
	 pqgpZLqKScszbMWOvL/OqfYNP7uiyeY//musgurGJ++n7X5Py+0dGYkuCvvm0zuZYu
	 /dQHuQB72no2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8355C41570;
	Mon, 11 Aug 2025 15:45:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1328B154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDA33414CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yMuNxYiLMHuw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 15:45:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E55941537
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E55941537
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E55941537
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:45:51 +0000 (UTC)
X-CSE-ConnectionGUID: u6FbYY/rS2uVQ7hr8ymZfw==
X-CSE-MsgGUID: H4rE0+ViS2O/SER/3roZEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="57104204"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="57104204"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:45:52 -0700
X-CSE-ConnectionGUID: POdZ98p8Ts+y0D4YwSbNsg==
X-CSE-MsgGUID: Se3grF3gTbO3g2r+DXktmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="166739111"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:45:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 08:45:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 08:45:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.85)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 08:45:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EWl0Fk/tvmw5MSA6W9MOEk6wD54Em4r58pzG39CnxZo9cL1hbei16DNnjom1/wmqnb2qLCa1f9NWCD09ksdTZyWYGbI36PbCgO6+BPPliGsTucnA3UDZu2/pynLXN15N6eDs0VKwpmMVzNoO5bULblvzswnOkaSAA0QfnC/7gwUBKhLIUV/YxJyoWLqf7FpqKBe/F8NQra8lWQUvOigEaESJY/FnEW4lJ1lHfq0+GCOZ9UPTuvos4yvv8xnUp144SSiOE8CDK4RWe+7sX7H1DfT5gZAlCKpIfEvDKjXo4P/ph3NGVoQfuQrQA3seWCX+wV/td9A+ivUUmMcq8Sy/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XpELhWee72CFV9pRKbao317uWyRBv/2+EopU9Jp0zg8=;
 b=LRdX+6YrEnL5ClOZ5GNahhbyVU2PY3IkxUROvoSkyB6EVecq8Cw6/QVvKz77eJUfvem5UengMheMWNtwTsFnqlv42qB/i4WsYQakDRHH6B/Wb3aTQ7B9Mrndm1cfik4oaefIByg7C4tb04/Wn8XfNoX1zTC6W2NW9EcaRSCO5qd8hQydCoeHMnCIsVeDCJNIiAwxzPL3tywd1Ig+MKhs0nxC1o/xQVKM+kZY4JCNAyE8OapRVH4Qux+lBDTFG2tm4W7Y4cudAoO538KrEaQHBM/DzSUNe5pX8VxedaR98uijDqWFhU2dHHSwEpbl6f0542sApZ/mJwQlx8hjVT6lDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7816.namprd11.prod.outlook.com (2603:10b6:208:407::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 15:45:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 15:45:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Tianyu Xu <xtydtc@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "kuba@kernel.org"
 <kuba@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tianyxu@cisco.com" <tianyxu@cisco.com>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Fix NULL pointer dereference in
 ethtool loopback test
Thread-Index: AQHcCtJXiByfwOnySUWG1kw6jiApY7RdlxvA
Date: Mon, 11 Aug 2025 15:45:48 +0000
Message-ID: <IA3PR11MB8986B7279E3687E153559CC9E528A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250811114153.25460-1-tianyxu@cisco.com>
In-Reply-To: <20250811114153.25460-1-tianyxu@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7816:EE_
x-ms-office365-filtering-correlation-id: cc566298-0b72-4085-6dba-08ddd8ee24ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hW0mOUCjneZDc5L9H7br2k7fVeyq9JTmuvbyXx+jxeauRx9KDQAhYt4mpdUX?=
 =?us-ascii?Q?X8L+SR0MYCgjuQXEORW4Ayxnx4VymZZlr8Acdw1uIUYF3tqHd5lIEbX26Myo?=
 =?us-ascii?Q?WqETk1VguKR3TBP9t0lRAdUUFqGNyGo0/PV+8AGj1qxY3xtuq1QKjbSx10VB?=
 =?us-ascii?Q?tod8b29js8ifZG/70Pye3ouuk3iX207d1YQ/0LeAXn95Iv98wACyTPNmP2mC?=
 =?us-ascii?Q?WpkIZeSBicOTNmyQzyBQ6sKKS5NP/tkpjjFS9eOatKs6xEbofXcngKenzE7C?=
 =?us-ascii?Q?F0ghO/SJf6EW1mWDcLmmIIZVL1XqZABGFb+8gStLFPno6cXzWRw2ucbmDWcs?=
 =?us-ascii?Q?1nNq5kjrWDIiXobtCjD49997PAZ70s45XurZ/KDMMzciWl2m3ekMwR+22SRJ?=
 =?us-ascii?Q?pwhLG15iQE+lecsTo86VOfTunJmoO1iNcYd9CyuvveEUAy28Cx8vYZFIjGjq?=
 =?us-ascii?Q?Jr3yZLgurskp5tnSJ3ZuCSo3tniS8yD/X8HugkJRroAWIKFUc+B0ErAf09U+?=
 =?us-ascii?Q?f69ZkRMNvf1gc9cscXhL22ORavY1LK7tqB/xtK0p+XCB5ByN5lsW0kllVIYB?=
 =?us-ascii?Q?MYeSXStDhMK0xa0tF+bhVd8XfB+tmGi3AbMe6tSiTPlGgTQfBPdq691w/ACT?=
 =?us-ascii?Q?Upg989yjMQjynrk2B30X2m513WaX9DVilcIU+YmOJIG/IWKNcPguJjfXvPNB?=
 =?us-ascii?Q?Ag7eHOv/p9fxwXJqi/z6u8e//Q7Z6MpbMJar0Fi03aRANMHTZPOel5Xsqg//?=
 =?us-ascii?Q?ictMg+ixOIKrplBTp0NRRX2EaF46kuCe6VCWohsAY7dqIYq9xTiU7CByvq5x?=
 =?us-ascii?Q?vEDD1r7DyUIXgJh/esbrrnAABDPIm0kDK681aoj4EL6Cq+tBWxkGSXy4McXQ?=
 =?us-ascii?Q?DDwNd2+y60rSft+mIcUSy5n+fINoyoqkk41GVZwYfT1Lwm1XDi8da4NaNFfD?=
 =?us-ascii?Q?AvnZnpJRXtiXupfcUJlW8wuvkQU9R9sfp1azya2vQy24bdPDhI7kuzJhVHAF?=
 =?us-ascii?Q?KOu6FBIPqx+lGwOhl8oGFQMWL8A+mDiGPdLrMMn1nVPz2IUR86+1xd6WKQlw?=
 =?us-ascii?Q?8C01oKVZDzyBHeDBWxOlAOhFVfunyUSyzm8mrqRrnlMYLP/09EpEjPIoiA6e?=
 =?us-ascii?Q?q4ChUn73yLQIQmx6BXQNQ/VWLoJo14yJ152mg9fG1OjNDjrTCe8PW8RRN+FK?=
 =?us-ascii?Q?xTFpaPzZZsZ69XsXzhhy2rlaYlDlZWAM+1T6yY/qsknjq1lew2HtcbNZtj7D?=
 =?us-ascii?Q?zLkgek27YXrQEa+bFzF6R01RJFeIkzE+My79SGAch6GQGb9Z2ixLg+QaeYMe?=
 =?us-ascii?Q?DzPCby1hkvBIgq9MWCItRrAc9gr9tW1Q8JRl07vmvWucclp0aY+kcvoQO8RQ?=
 =?us-ascii?Q?CcnmBkt3he8gYfPgr8p+bJZmNuF4N3DBfedFvy2ipbj53T0l5eytL8LDXf1+?=
 =?us-ascii?Q?wBuNL4wYs/lJTPZr0I48rr4wwRgskV4uH9JDRy27PFMVjXKy7l/kcQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3XDOHW3eWLmAeUjXrXy9kZqyMLXNDAUOEezC1LjBfl0e94RWXc0F2GoAzHGX?=
 =?us-ascii?Q?L+at1l2LJobbVVm3PKr79klNYev+eRVrL0C5ZUaBq6sSsLS0mXRK2/JeQZ6E?=
 =?us-ascii?Q?WbLl3QgMJdPJ7rGTeygO9DE07t0kIgD1mtw7Nz76vc/4vdq41/nTQ4n1l4xN?=
 =?us-ascii?Q?Zv2/KtceTQPYYpGYbTPiebaiNCq/3eb/nZEkI/YPWYrkggBa3U3+kz9xBS/8?=
 =?us-ascii?Q?u1yKggVFED8+ZJURSnTFQAbx5zGWTN+jHEpsyyT66X1hCkry0G4UwIUQlOtY?=
 =?us-ascii?Q?0+GlWzs7Oez1Wx8EfuxqF8s6ICVM5syfI/q00RwavcRd1YoWdUsZ7oBeL2mn?=
 =?us-ascii?Q?xCBDv6rTguatvs8Zyu54YIQHR39w5ACCq96qyZZlhEelZ23TueKdQcZ/MCKC?=
 =?us-ascii?Q?hgIkNwZVfiEYi1Hd8P8E1bAmLJb0C0XpRMok4tOW/hZyII3I0/BF9PUTTI+4?=
 =?us-ascii?Q?/pNHZKU+uMkJJ3HY7lbvrleu+65h7QCXkFmBJSCDHyCsMCAwCTZ5n3d8wWk9?=
 =?us-ascii?Q?6/lFeqUAnnKV8nnevVLfuNiEDIuI4dPYQrTXgS77l6lm6kgdZRuc2g+fi/dh?=
 =?us-ascii?Q?GWio2BEaT1i4AnwKiUmwpjFj1KrjJm8B1HdBim0M7DRnNHVYFinW4z/dfMHZ?=
 =?us-ascii?Q?uNRZSgjb6/e464GY1nzSuwp5ZeLkauQa09pKqGwbmpvIdGacyD1rgjHhJDuZ?=
 =?us-ascii?Q?iRMK1nfpgSoUFjBA5pUGFbyqJ+r7yFRZVjuITrSAhAYPD3IqNIE9wnyQ40DY?=
 =?us-ascii?Q?97Cbj9Wv5yg6Sl9OwzGbPgsmtV5TIc8kvecQi/lpi8gUhluHdkwh04MhqkuH?=
 =?us-ascii?Q?b/HngnHk32sKfwMZBoXOe6yFS65QFriAhQOyuDiRkTRijfQcPHzF/Xq8Kpyi?=
 =?us-ascii?Q?ZALMXQetz8MfxzXRP4XgW1fK9wxbl/tkzLt2WTlpYxFwMJ2HigWmlVprDgAf?=
 =?us-ascii?Q?QfPH5RKqesGDnOHjTjDkUN69zdvUPjTD2e5t4r7N1+K4PyDvbOhKqe/BYSm/?=
 =?us-ascii?Q?8DPjPnIA4AP+3eIqFPl8S5259KjehuWF1DQvygS3UX+bosnVifuAHxj6nzmr?=
 =?us-ascii?Q?cKFWrZ+4jInkT1fSXrttGSd1iCFLyuAzq7cKNVnpLk7TRqZ7F0tHfQHiz/aX?=
 =?us-ascii?Q?29bS70sX7xOwspq38kMQyHY5ogzGGt07WTQwX5jxTlq72T5xOVgh5Eh178iB?=
 =?us-ascii?Q?p+CU9fFyMI7tEx9owM8kjCha1SMJr4xlE40h3YddP/Yn5Q4Seu2E6ZW0fJ1G?=
 =?us-ascii?Q?HAXCkPmR5hsF8K6ROiTA4X0w+FSrjstn0F3YW6dKK2wzYJiHritVvqNRUOYI?=
 =?us-ascii?Q?+ZlIBnnS/kK3kG3Kf0TKNhHZkHISMfcLkANLJo7bI2rF7iK9tA3pbEfNJFIm?=
 =?us-ascii?Q?i/CIfzvrpD0m/bIZjyb5V+szL2NHl/vmZGiu5CeRJcbYX4k0ckSeDWdw0Jin?=
 =?us-ascii?Q?gFjXWdVspN7vMGSz6AKlXtef8nubCZ4/iqwwB+NgNE1ul67QXJPisdWtMVX5?=
 =?us-ascii?Q?4bidaw6o5DbYCJCnb8Ua/GFDx3MtxuKp8fjfPerXJgvJySf+4JyWdvrozJ0R?=
 =?us-ascii?Q?nkuYKoFW2ywt535WWnE19TjD+jARN/MZWQBQrumuHp74jAUdgz0Zb4mj9hhC?=
 =?us-ascii?Q?sA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc566298-0b72-4085-6dba-08ddd8ee24ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 15:45:48.5503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t38ep88abcr75If776rIRDgqFLWzQmER8l/Hm9XrUR7zQEBC80svIWWsxI49mBiP/Y0+PeH7pMs9Lp1Xhdb+a2Px37WR5nQHQC2XQNatQj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7816
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754927152; x=1786463152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/ribY2zYorGzaH81Pm/m9ygrclOZUzj8SvjNmkkZlr4=;
 b=KZaoKpJw5Zr1j58rBZS26b/LU/3bMjNsW/j8SMQMqiS/Kb8CmrVjW3gs
 jIsFGb9a5cQou/4vvKUxf1Rufq1b+317QD1ybowXbJoQDvp0kec2e+hxK
 OzU438xiZwPPGDcPYRbcFkb7rodGSz4hLhEkj575PYPVzoe6UoC7IVe+m
 JQtFqQPPWyMQ7K4gus4IwuyinmPFjrqs1mwLwTGc+FNccQsk+fuKqn5N1
 M3AkcPTCpx1s4YRxm5KfGehWqlXZgY6gqE753NJEUMxrgTRNL71nKvdXW
 VpVglmMO8ndqmSXn+9Tyxn012Q84TtMKsOx0FHGh5x3T7ciYSLaEjfBol
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KZaoKpJw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix NULL pointer dereference in
 ethtool loopback test
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
> Of Tianyu Xu
> Sent: Monday, August 11, 2025 1:42 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; kuba@kernel.org; sdf@fomichev.me; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; tianyxu@cisco.com
> Subject: [Intel-wired-lan] [PATCH] igb: Fix NULL pointer dereference
> in ethtool loopback test
>=20
> The igb driver currently causes a NULL pointer dereference
> when executing the ethtool loopback test. This occurs because
> there is no associated q_vector for the test ring when it is
> set up, as interrupts are typically not added to the test rings.
>=20
> Since commit 5ef44b3cb43b removed the napi_id assignment in
> __xdp_rxq_info_reg(), there is no longer a need to pass a napi_id.
> Therefore, simply use 0 as the final parameter.
>=20
Good day,  Tianyu Xu,

Thanks for the patch. I've reviewed the commit message and have a few minor=
 suggestions to align it with kernel style guidelines:

Can you consider wrapping body lines at 75 characters for better readabilit=
y?
If applicable, please include Fixes: tag in the commit message. This helps =
maintainers and automated tools track regressions and understand the contex=
t of the fix. Other than that, the change itself looks good and clearly imp=
roves the accuracy of statistics reporting.

Best regards,
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index a9a7a94ae..453deb6d1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4453,8 +4453,7 @@ int igb_setup_rx_resources(struct igb_ring
> *rx_ring)
>  	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
>  		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>  	res =3D xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -			       rx_ring->queue_index,
> -			       rx_ring->q_vector->napi.napi_id);
> +			       rx_ring->queue_index, 0);
>  	if (res < 0) {
>  		dev_err(dev, "Failed to register xdp_rxq index %u\n",
>  			rx_ring->queue_index);
> --
> 2.39.5 (Apple Git-154)

