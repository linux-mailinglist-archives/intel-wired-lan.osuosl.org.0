Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED80350DE12
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 12:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3734F401C4;
	Mon, 25 Apr 2022 10:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9lIEDD4NSWG; Mon, 25 Apr 2022 10:40:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4BE64028D;
	Mon, 25 Apr 2022 10:40:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF4FA1BF282
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 10:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC42881361
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 10:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xmvwEdQP6iqS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 10:40:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 197C68135B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 10:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650883231; x=1682419231;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2YHMHnaP3wPXemhVV2FU+NOPTbK/bDbA0lP5ItC31Vg=;
 b=X5j3QDeVUom2//fCYWFgaAhqp7+iiHEK0AIk93XOx6sYj5w2eyyi8vKq
 DgXMHh7JIJk6w52fIoP1aUB5IGPgWNtqpM4H/0bYDcUZS7Iri2j4mWkDe
 Wlk87EUuviPxuJ2P1KzzKPGYICMyCcBcyP2ahbk3f4rUWhoVdfZlV8+Q9
 qVDeEnDoutGHDm/euEQxgyJTV6lqfrT+44iYjISieMlBe0h6R6XZDiacG
 BFh9xZygQik1tSSZmLJaSMlR1rFa9uz36QlXEtysB8fvC27+/MeNG7ryO
 jF0jXpFVSbCoj6SYustUeCSSzFynPxvQLiKG/M0Rvw+H8iSjwgSgAfE9b Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264062985"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264062985"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 03:40:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="532050242"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 25 Apr 2022 03:40:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 25 Apr 2022 03:40:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 25 Apr 2022 03:40:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Apr 2022 03:40:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NIZ+d+Ssk9ehyXg+yoP2JNlpUNTKnmxD+ZVxRzhJ/UBifGDnmAsxPCXQFk2XE443cT/ROXitC6i6xD+4x1wDwEymsHo1vz7t8sn+opTsVVz/O8NAC+Wkfawg/D8yVbIrUQKY0yeWjp41lh6SSG6PatWgUe4alATofruEYX57q8VV0W+aen0GL+2M5ED7U3dGsxvfK3rggl7LNbqTj2JHhR1UG6Mfdtyiuqn8xHySZ+cLjgNxkR+VT2op0nFvXm4MFo7zV0TuAeHI5DvImbRWMqQhz6Gtu2WGli3zK6UtSAPAKCe5JJyFVeoqdokw4OhmHxgEbJ5OJv+7V8bcNgtgYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2YHMHnaP3wPXemhVV2FU+NOPTbK/bDbA0lP5ItC31Vg=;
 b=SoWctZQxPER73BwFD9Icgwis0CHlCPMKGV/y44D4RzsYCdrH3voxdTMLSTbDXfgVmPnEG4xzJGHKUE6Z5E8j5UnWQ6LQw85/rq4SLA+9XRJi3sJZP1w2vHC4nlXc2sn9pwfBZdgFY+OZbaMP3HorinsCDj6euyN2+Xs5LrjC2IWig1FvyE6wBJJ7XnA+9CrMF7C745UVKYrEe884oxUdkFM+2fykweD0CdVjrkEgpw8Twhsfi2MiZRGEzM6NqX8ZkrzbnBNVxyXBOGs6+hDLajklaTPpAZYrXNVpsdUsG68NzVQy+wDu0pFl6Zz20ev5ep6b3S0ipzNc7O/27CZTKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by DM6PR11MB3033.namprd11.prod.outlook.com (2603:10b6:5:68::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Mon, 25 Apr
 2022 10:40:27 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%4]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 10:40:27 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: return ENOSPC when
 exceeding ICE_MAX_CHAIN_WORDS
Thread-Index: AQHYVKX7NaUdVuC+nUiV+IoCt/v78a0AeECg
Date: Mon, 25 Apr 2022 10:40:27 +0000
Message-ID: <MW3PR11MB455413EBF8BCAB080BED1E399CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220420105541.275957-1-wojciech.drewek@intel.com>
In-Reply-To: <20220420105541.275957-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe1bbff0-6e4d-4e50-5e2e-08da26a8031a
x-ms-traffictypediagnostic: DM6PR11MB3033:EE_
x-microsoft-antispam-prvs: <DM6PR11MB30339248E1278C628636283F9CF89@DM6PR11MB3033.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SHuOdelrCTJd/hUJ3u/kB/akG+tPgbpQo8JX78yITSF8e+77GskSNnl4I7nBYK9CHRfG0o3SMBiSFbHQX/MHvDxh0kXlfnpnDb3qGkjaJQfSNv0CmyZz/U+JCa/sMRzuVEZXI4UMU+B/X4yOXCjZFYqcsEKhxrWfehwcB91NMoTIycw/yRrOei41M5xTC2FvZkkiMEbL1LUoNd3ckkozhCzjtEwoYY/OKC7RxPeRdbFoQcWvyALSnwWhgcPgLGqBEuSyT5nUGdOLyArz7/4HO5OfPiVskeqwTx8xJPSxTn+6O9JLZ2pKnze2zL4Hxi0zQuqpwEsszRjWWaF2YXjHCXrrZoP84mZD2V7bdQvnU7rRSuih+H+uOkS49ZTQsR/0nIIboJHKT61spqCAXGI6ewkktsAjqMKw29eyVKupHJsqNgMqx7GzTk1DPphGU7XQvKOMCniRM00khcEqcTieDXgwluo65YCqNauKALo9MXGV5Pczh5vYfH0CzEOA1Hnb5uUF07uDqrhMNz9eVpvDTqHK8XNT7xryFsHa1ux3YHhhZICWjecLlM9TCI02Bv0463yAF+e9l+lS0L58pWdBa/1l3hkp2W1/Eyvd1GczCjXM4YWPkCfvl2zAeejBkdbsXZRq5eUWLoh4quOaiBFBjMzQiMXbakNt1aqJ54013P7BZIRedi0OkL56ynVICVmH2GzgzP2sVE+ps/OiCbbPXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(316002)(66946007)(4744005)(110136005)(7696005)(71200400001)(86362001)(33656002)(508600001)(6506007)(9686003)(8936002)(52536014)(5660300002)(55016003)(38100700002)(38070700005)(66446008)(66476007)(66556008)(122000001)(82960400001)(64756008)(2906002)(186003)(26005)(8676002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K/DDyjPf4KXX2CaDgtVMW4IAe4YoJ1XiN1GhmW/i1/a0xmKxMm4QVZoMCEB6?=
 =?us-ascii?Q?QwdJye2q4Uxq21LldNyOt0iv7u6CiyRmExNZeREp50+kPpkqAqjH2ImZ/R/Y?=
 =?us-ascii?Q?QEsthLZOJoWOc2xNEE57c2/Tu+rOVmUIx5/L7nO0Jlm5RK3u82Pc3feXMOJ9?=
 =?us-ascii?Q?IpY//Y7ZUVTbR8CYI/OT3Ff4lxBynla9ShelpX++puWgdOC2glfpTeqFnu09?=
 =?us-ascii?Q?IFXuPnYeUCaZrBpUEhGDRibSjKpXwj0zi2fJI3vNjbGq4KLev7KW2p4v6zdR?=
 =?us-ascii?Q?rtD8jZsZOMFbR8PjiuHRBwpidJLQReGKgnyepsmUb8yJqkZ0nQJYfMjBEayG?=
 =?us-ascii?Q?GY5k3wYAOqy2QO7OXUWabUWyPXPsWC7tjD5rGnbXgGfEloxsvx4nyf6sJlXa?=
 =?us-ascii?Q?sD7WLTfspbBgQaXpi8J23ugbA1trpuL3k+/Oa1jigHObI9a4ghA9+m3b5MHP?=
 =?us-ascii?Q?ZSGW12sO2lLb6s5tN2+M3KH6jKSccTpwFfvhF3ImCOwhqydgQ857+9QGLqpi?=
 =?us-ascii?Q?hA+AawZcLHE7NDidvAEbPiXNENTuDnEiKhWKbyRqY6rRYMfrB88jQqCj2kZZ?=
 =?us-ascii?Q?9ARvobKtQ+W3SsdRk+uBf0f4blFRO++PI/MthSvA13La0mZ+nLRn9n8SHD/d?=
 =?us-ascii?Q?MUmZCqItcRS/FH+oOHCSgxTyrzkU/xMbONHSMD6NBkMsadTc0tAEUXlfL9mH?=
 =?us-ascii?Q?QGejpuhnk3GC8TVICl5Ajg/WO6zxwa8a09X72/C8TYQJ/kQE29k3mlLFOmtR?=
 =?us-ascii?Q?Vv8qFzmPChwwqH2fp9a7RcDLxmOL/bSQNRYBdvwk64YXthV/Ta0aehp2RSHR?=
 =?us-ascii?Q?0Z/cGSbcCC8FjXuDzEAW+AWbSjt6PJ11rDhuJP6mXO5J8qXaWo63am/mUn88?=
 =?us-ascii?Q?RduaXF6jbLYNfo/10S9cU/BJborAQrgXHf3YJIEu/zKjhH3VveY1AyXw4ZbB?=
 =?us-ascii?Q?yNr3fnV0TAm7va1hnMhJvkOuqWSyhEpAKa84aAqfXWhf6TGRWHUo+cWckM0w?=
 =?us-ascii?Q?CYhhqf0Lr6P5j14GoX88KCyizKo5wC/3Yvs/7VmG4BN38J9eyZVFk/AJusLk?=
 =?us-ascii?Q?Os4qZck+Qmgd7WrXm3jRPCj3OlOsjx3iYh6Wir3ojNHoKTN0O8PmE9zrIImG?=
 =?us-ascii?Q?j0NtJyfkNRMkh3KqxFltnVknvc8E8ayvFp2GPooXZ8gsHrOQTe/2uxtwSn+K?=
 =?us-ascii?Q?sulSoR3IClBkSglrxZc+a5Jc6RjlJXf4OhaeDIOc/Bxx4Hb0GX1l5DGb8ea8?=
 =?us-ascii?Q?L4+VXhXL3cOlgFnU2iX2v2TX4fssESGRA1bs4//7Uf19enrzUZOOadUedyUq?=
 =?us-ascii?Q?m6ucG0xZ1hc9IeFBUOGRlTUydXELQM/S2fbY1Ed940TLTZ+28eJZW7qJlfA+?=
 =?us-ascii?Q?6tpbbPYfPVTCC7gYWQpU61D6RAdpf/esEWHlonVYdJ1p0fpJA1czKsHc7tuf?=
 =?us-ascii?Q?FyQAPbJUwhayJdYERYCAjbaSZK8y/Bzmsd4WlyZkv20Hn/2yfd0uOn8InSLi?=
 =?us-ascii?Q?6DY8EqStQK49tJ6R2EIqT1JrX6IKknWsOR2XHgRg8Udx2X5V8QVAwU0JsGc2?=
 =?us-ascii?Q?q9lEoCcZnlLujYv1o9Nlv1FNwcStLrryEOEBb8tijzxFccx8JNbEHr3zXbpV?=
 =?us-ascii?Q?jZoWvxJzCp2wbNNMzhqt03AmHEsPewEsMeuYrR4SFbNrAuHvOX0LPda/acsr?=
 =?us-ascii?Q?jfeGrQf1P7fgldww+kibxp5O5L7VMLFHA6vBR7AWlyf1KE2zUOelaP9uW1bT?=
 =?us-ascii?Q?vZpSloXxk+SGoSYjI5N5dwrskUSDRAY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe1bbff0-6e4d-4e50-5e2e-08da26a8031a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2022 10:40:27.4454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wkuBF4ELDrNZFIDwRAJeICYA+BNyr4yYzNHYeDLIgXC2QTRCp69MGUHmK3pBYeQ5Ekj8oqBridJW5Tl5sytB5srXUfHkBIkNdMT5p1NuZ7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: return ENOSPC when
 exceeding ICE_MAX_CHAIN_WORDS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Wednesday, April 20, 2022 4:26 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2] ice: return ENOSPC when
>exceeding ICE_MAX_CHAIN_WORDS
>
>When number of words exceeds ICE_MAX_CHAIN_WORDS, -ENOSPC should
>be returned not -EINVAL. Do not overwrite this error code in
>ice_add_tc_flower_adv_fltr.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Suggested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>
>---
>v2: change title as Paul suggested
>---
> drivers/net/ethernet/intel/ice/ice_switch.c | 5 ++++-
>drivers/net/ethernet/intel/ice/ice_tc_lib.c | 1 -
> 2 files changed, 4 insertions(+), 2 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
