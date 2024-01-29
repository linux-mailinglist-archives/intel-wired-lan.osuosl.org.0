Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9891983FD6D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 06:06:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 251B260BA8;
	Mon, 29 Jan 2024 05:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 251B260BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706504786;
	bh=4A47QxsIEhWCdheUFe6kI3rXuvBsULfWHYd7sYx2IEk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7D+LN10qKielr9hayVkJjn3xMWD2NWji72CXPsq1FMN81jr25KYBdIxARID9eVkLp
	 NZlUqIB3D7ChaZCieKnQsLRgSvgdJpbzjKBGnNaygoAfjQYiywqMIkop/fxRrPoFu7
	 4S876JDT4KfY9cWwWQGztS/BaY/d1dyFqToXerjF+oUQfNjm3qrmiErZ131JPysdfq
	 KCbcwtR+iRg7aytF++o9nAXbKGnSyy387xNHz6ROPKi587l4Sn/XGATio12lDSDT7o
	 gM/p3WseRIQC5lcCZM7C1wbkQ8p5Q/Lc6h+PaDlrbV2gmou229AubgUIUkZJebYXIK
	 /FD03+iGr1P5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9TrMwQCCRlq; Mon, 29 Jan 2024 05:06:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 265E660B2E;
	Mon, 29 Jan 2024 05:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 265E660B2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4322C1BF593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 05:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12A00410A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 05:06:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12A00410A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXobyoqxkdoJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 05:06:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E4E6410A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 05:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E4E6410A0
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="2740967"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; 
   d="scan'208";a="2740967"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2024 21:06:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="906967680"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; d="scan'208";a="906967680"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jan 2024 21:06:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 21:06:16 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 21:06:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 28 Jan 2024 21:06:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 28 Jan 2024 21:06:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GezWRJJLQT1++xC/NDTdPQDUGPVqK164Ztm9xCT7NR9xi4lFEB6N2UGJZ5cGwD/QWTdq3eFwv9Nwey9NQJ2buxp2yEqABk/0wVhlCtnEjiLezvHAeVb36tiUUM6ds4eRtSmsutyGl3HMV0zEyHf3wBkRiHrkSPm5UogVeJN/y/3tac9lJcjtf92eXbIuBIZ1hLWTFfGDbGuCvqWZ2U8pdo2aqr7SdHIAaqF+NSiNskqr/Z1chFjwFgL58cSj6dbJKhAyS4rqb5/AlwJayv+Jm44sElUgeAKW71yUjzdJgxt3lHAbPzGk1mfI7L+6pF7YQDyMFjdbBbmqmX9dCCPs7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4A47QxsIEhWCdheUFe6kI3rXuvBsULfWHYd7sYx2IEk=;
 b=cU/vmroCYplq136Pi/ImCuv2thsbiIJejsk7UcbMa52xYR7MD6DI2T7jRegEh0gHb/fxDCKxbJiJPoVbwy5b9abOTY6LkqlcfZvhcvH5FtV5GHicwn+YCbylSXBD2nzu9nyQ+fvudE5ZQDEVlgmKZooVh2mh5I3XuLcwEOszIthofxQuGVLrgco0gO7/hEYmoc8Q03h63yh7od1rCCLxOJmh5tNDeL+uGo8cCKTgKTRK1vJGh3UPtOMc9/P7t6mxaXyJCNktvJuA/75XoDI8+PAe633fOTE7X4RXnbHN8AOJYf/QBdYgXGQqc29+b6yQ+5FfEVRqUkF860NGQvu4bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ2PR11MB8371.namprd11.prod.outlook.com (2603:10b6:a03:543::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 05:06:14 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7228.027; Mon, 29 Jan 2024
 05:06:14 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "Rustad,
 Mark D" <mark.d.rustad@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 ixgbe_read_iosf_sb_reg_x550()
Thread-Index: AQHaS8bQSo7t9TWYS0+rImRNEw+cIbDwSeEw
Date: Mon, 29 Jan 2024 05:06:14 +0000
Message-ID: <CYYPR11MB8429F18F95110C7268FE7975BD7E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <d39bbffb8817499cc2ae636cdef3b9c1eba59618.1705771534.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <d39bbffb8817499cc2ae636cdef3b9c1eba59618.1705771534.git.christophe.jaillet@wanadoo.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ2PR11MB8371:EE_
x-ms-office365-filtering-correlation-id: dc741737-ea5b-4a59-bc73-08dc2088049c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D6+3lDOP+SZ5FCnrc3pAd0UlWh0fGlJcok6+cKs45sOthSD+ixNmhGRQuU4hpMA0391OmWrW/4G2Orxpa2Yarjif9Xnr7JyEDn9GCDGL4HrNUsJ+OOjr84PwW7ZuycqZ0LdyGSyPoUmFgsKBVZ/Nbia6gcpNSNUVf0t3yh/hHR0IV1qw43VCMGF4J6Ri4P16NKiVhlPatBgG4n1enG+kLipzXUYsnNdl/2VpQ0H9kP+kwWNiqxVunmIFI+o6HyGiQP1W3dWB21LC9yJKCjQagZnOCDETV3hurbRSr5a5YPWnD0cpfTDf5IS4BSGph00e20Gwp0qOVM1X+EH6cu1tfRItHs5jOOp3CmmogoXviUQcX8gqwLwNd8AonzmoL3D4CMTVOzDEu1l4RaQed1UKruyQOG7OzCPQ4cdOoV0iuUlYOlY7iXbL20sIFRunzWvXhTtJUafmlZmkHNuIOnQLkFkQ0xu5hILP3wCu3RAJuOvkJhqLXRzCrVGSoU2ZkoJ7ExNBgNKQnt5W8KuwHSOrOCq8n1US0zZ/AAnlzOqDa05EZqSUChoUj9ISjqxScrGAHEeY/HjdWApM2CsjQ/6Y3lC9UvEow773aBBNN8pQSpViIY7U1paecxnkjkN+9k7M
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(396003)(376002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(66446008)(52536014)(8936002)(8676002)(4326008)(33656002)(2906002)(5660300002)(86362001)(110136005)(66556008)(76116006)(66946007)(66476007)(316002)(54906003)(6636002)(38070700009)(64756008)(38100700002)(122000001)(82960400001)(53546011)(7696005)(6506007)(9686003)(478600001)(83380400001)(71200400001)(26005)(41300700001)(921011)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1dmHVfuerZijWtk+mvHG2sb+E+KHGRPg/I2jA1Ob/7KxmZ800E4UVZpoJCKL?=
 =?us-ascii?Q?SKHSwkHkXwxrzRCaXdIW08xeejz5/0b7IeKmwqUDTR7Zj5c8mOXoiyhmam43?=
 =?us-ascii?Q?3JcOj0z5XBuj3HYUAR0f+kDcIOVtIBrk7Alsnh96tolg8cu5xqJSJ8JStXsa?=
 =?us-ascii?Q?XFesVwiUexdssb6gmAskMZ4UpOCislBk197gZtXpsBKMYRNPukyH49N9l+7W?=
 =?us-ascii?Q?LRtXAL7+ulfo2ig5DdjIVz9+fVua4aHZKKEuLOHLBQeCHoq4f5UmUUu3RuL1?=
 =?us-ascii?Q?CXZFT3EbqXAIv5e4YcegIeWlKFv0rEP2pQo3PRP+5g2gXmw3dychfVd61A9G?=
 =?us-ascii?Q?Z3hlV9dGDUKE0MxssqR6Gt1d15QrGpfKV7EVxtO0GAZffxzi74EBLCZAAAhI?=
 =?us-ascii?Q?KHFkbemQmIgwQSp7ButVc8pf+JAzssl+iH7YmiSFtuA+WoOizQJOCR1aVjsP?=
 =?us-ascii?Q?7J6JfFV3TrocaVGC00K9e17EZP+P4rmRPhi6EZg4v6V5fEhkahb/1bPPVxWl?=
 =?us-ascii?Q?xbNgrWKE2SY1PgsvF2BqHCcc9wQ/cu9yLP1R0LAnkImH4WUAgNq54jy6YzVn?=
 =?us-ascii?Q?GPHMpiFnGR3hqLDNnhB98QgxWqyHqUjyggq+gSEkSAKw8SmQ6pWiiB3aKQa1?=
 =?us-ascii?Q?KT/VatjuUsUBs2Dp8ewz3DsmzWRq6dRMVIePoQw/VkNQ5x6ZLdcZqeGOqHJF?=
 =?us-ascii?Q?3GnHvGcwmaAqvJmy4kh2JDVE4eVUG3qiq0Vlvs0erI9uFMmFNzajwjL/ax7p?=
 =?us-ascii?Q?Bdl887E9qqHv4Z4vhD5OBuXd0LR/BZVdrN8bVGYihfYTyfYIC8/2/vAZAm/M?=
 =?us-ascii?Q?ID918deqo7bW+wPaw+vrSKzF9NZkBLGlJXTv1ONXynrqVAg9XonVdTsDY+Kf?=
 =?us-ascii?Q?aNzIx7Z3JWQ9gELAbZjSVITzPj9f4cKbjz6s9YYLctSPZHqdWQCaeV7Knkq1?=
 =?us-ascii?Q?mlEMxsHe6VMWFY62cR/HIOzznn7mdMplQLTepQc7/2onpZqT9ybT47uAd33w?=
 =?us-ascii?Q?FXTwUB2EyPPEbQ8zBIwdWPCmjtQu6SDGYIuHDwAqv5jGCtWRP/MIC27gorg1?=
 =?us-ascii?Q?Q7uPs5raX+K2XFzswLtpA4CtRxOXtGu2hK5Yrr+KMLrwVt4OHkAGVpx7Lyix?=
 =?us-ascii?Q?0o30PMsYRXSgG9bi3zS9H6KATwduoeTRgQtJeR5pcvYFA3YBSVEiZf7KclVM?=
 =?us-ascii?Q?VSyy/qJDuBd96ES7Wua2ZIiB+GpBJ+XK4r8UxqBXGuDOB5pZMUhoZl/bHg5q?=
 =?us-ascii?Q?KIerUI2iYwWLUb7A15gjzcaTDX4YZMuNB1/9JgMg/o33Kxba9YLEva4TgS6j?=
 =?us-ascii?Q?2gGPFH2CX6bY+efmt4WDFLxIV3AfoIX8EoBdHD8AP9VNJ2yIucMgJe0SxTpi?=
 =?us-ascii?Q?TjRnKpNJI0MAOBijdQJcTfZDxs4hc124726X0dmvHbWSwOmji4i/BaCXsWJ/?=
 =?us-ascii?Q?ojpXd9h0I5NSF0T5Vp8yMagzvMomrMipYpOQCVcMQLcoLoRfHTzUS2V2Yjtf?=
 =?us-ascii?Q?ja8dt/lbBJ4m8YAx6XgyFaqnjKyPAIY60YE75fMpfihnwJ0v9K/ayVnCCYk0?=
 =?us-ascii?Q?De92CP/zdSmkiImMFZ4Fo6sVmwgs6hB5Wu864FbFeuONMJW6kTUXh3lSRmqE?=
 =?us-ascii?Q?LQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc741737-ea5b-4a59-bc73-08dc2088049c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 05:06:14.4334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VaSKofGOCKI064snmA5KJMhOok5R1uP8cKAcNYjvrpd1OUVVyznvXUsV0ZixKeahzLsU4HRpEygXkFvH0BB8o9W3iE58OpkHS9IxJzWKrBGBDLyj/AdK3EfVofpvM/cu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8371
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706504780; x=1738040780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uMffuci8wgBY05Infchs8EghH7njWqFLtfc8uJEEk3k=;
 b=kCT7/StcdSMtfwHh1DNSNJfHgMzouA0WN0mlywBpIN1oW7qhoNeZy3sl
 AZEMpHVOn9ag35XIR2y0mqo0h2C3R8Ak8nD1UJV/2ZX5oyQc7IoLPZxRr
 SPp4c57SO/m+SIIhYvY8Waf873VdRtcmNV1S2Yw2noT61rqDH21X5DKwC
 V7EcCWtTCQH46zLgggnFB7JcuUqXEpZQNVfvDL0eYDFCztaziuzjQ+t3M
 1KNf+LDGj1PV849Uoi92Gi/FnJdGqvLUoTJD2vrtIx4zp9bNBZdsjusJ0
 uBYj2RcuouCmYtzwXq7WiKfptrRX8tK3hOpuTgpHKTTB10DW2iA3NlMPB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kCT7/Stc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 ixgbe_read_iosf_sb_reg_x550()
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of C=
hristophe JAILLET
> Sent: Saturday, January 20, 2024 10:56 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Duma=
zet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <p=
abeni@redhat.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Rustad, Mark=
 D <mark.d.rustad@intel.com>
> Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>; intel-wired-lan@l=
ists.osuosl.org; kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.=
org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in i=
xgbe_read_iosf_sb_reg_x550()
>
> All error handling paths, except this one, go to 'out' where
> release_swfw_sync() is called.
> This call balances the acquire_swfw_sync() call done at the beginning of
> the function.
>
> Branch to the error handling path in order to correctly release some
> resources in case of error.
>
> Fixes: ae14a1d8e104 ("ixgbe: Fix IOSF SB access issues")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> This patch is speculative, review with care.
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

