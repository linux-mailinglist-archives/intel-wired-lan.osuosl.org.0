Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE246F4830
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 May 2023 18:19:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC15B415BA;
	Tue,  2 May 2023 16:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC15B415BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683044372;
	bh=robOwB8//WnIFgIfD5pI5pj6ViLAHkE+G/RoKut4t2I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AnBC9aNqykLUuGCKGaG7S7N2RuAqRVGhG7f6KSAfsTrztlfXJuJWxA0asmOIlx15D
	 78A0RrHVQWtq9QdoNghz3e4ArlV6BRP6nzQe5WTGRsEOhVnnXYAVNW06LhMz5DZeLD
	 0hhoYqTtDoyLohCtfMK27MGkGmurDQ06Z4yU5vQ23Xkc6Q6jQkX0GitC8sxBqzz0j9
	 tzAASd/C2bLDf2gY8t6xwgmupBpNWcy8dgzBFOtw9JrB0qOuBXIJ5XHfbmycLOm6Zt
	 yK5jR9NP2A64VSTB8ZOu+dT09GNGMV9y9ArXex7k795E5S0d+8foZUzI8h8wHuqx4K
	 xNivpwM0+gqbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCIwBoMVqMFj; Tue,  2 May 2023 16:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEA49409FC;
	Tue,  2 May 2023 16:19:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEA49409FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A75AD1BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 16:19:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BCDA60B2F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 16:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BCDA60B2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZKhs0N-MZ3T for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 May 2023 16:19:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63D8460C33
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63D8460C33
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 16:19:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332800329"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="332800329"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="696246224"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="696246224"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 02 May 2023 09:19:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 2 May 2023 09:19:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 2 May 2023 09:19:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 2 May 2023 09:19:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DN+bk/vk29R+Z5xqMrbOCm0gajHONJy+EwBr8a3v+B29ZX5tpZVEcykwO/PG+xg8Oim5970947IzfpcKZ0a10wCcSnrjPVz3vTbZmfkdpoI/PrVqtTRu0LvX/VwyAwAcnSv0m1SZJulN5he1qdD/b3ulPrrEh/o9vRBTBtGieYZXFLqIrrlX1vuB/3ZS2uF0XlVUuQfBQJazz8/9XVACSC+6yyPyqRJy9K12Q1Zsw1zuiHp6a5fooM+hMfIPB+Jwx53/3lsR47MxoG+KDxTv+/02M1Y4iXWK+Evi2RAOEth92Am+63rH8VsWyByHF1BQbi1FaHBZLHdVHorBD+rOmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0qfE/w7lDvpwVlSuKq8aUur7YTXdD5EXXt2T/iyYGks=;
 b=Mh0roGaBkLxtcLDaRpBsRu0LbTAdV3EtS2sNUgjmtOFfIy/tR4Hw/ewt6vlFiRHf1/wvs+ZyVux/c5NUfzSPRD3xXIgKgOmsPTEugOP4zSHXsA0BH6mO23jDawIxOamxJVtmiPrb8PLRRPoo8E4lx5r+qQQa2b8KVr7eAABDE+O+6/+mzhCizEz8Br25MoLZVZGfBZpBJoITRH96exjbXsJRatUoZnArwNDIPo9wOtG3ZBYJz97UBRT2VUInkJ+Hxaw8JUli8jICjWgbOwElcPK/85j3tXAUAW5HRFzKEedjutDNgV640qptqbcyzRdvugRmtNcqtfu+zhEbGNzUWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM8PR11MB5589.namprd11.prod.outlook.com (2603:10b6:8:26::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Tue, 2 May 2023 16:19:18 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::5194:555b:c468:f14f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::5194:555b:c468:f14f%7]) with mapi id 15.20.6340.030; Tue, 2 May 2023
 16:19:18 +0000
From: "Zaki, Ahmed" <ahmed.zaki@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2] iavf: remove mask from
 iavf_irq_enable_queues()
Thread-Index: AQHZfQrjbb1FoOYk6EWeBjRdySp4ja9HKOjA
Date: Tue, 2 May 2023 16:19:18 +0000
Message-ID: <SN7PR11MB742025D255B60E06F8FDA48A9D6F9@SN7PR11MB7420.namprd11.prod.outlook.com>
References: <20230502152908.701880-1-ahmed.zaki@intel.com>
In-Reply-To: <20230502152908.701880-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7420:EE_|DM8PR11MB5589:EE_
x-ms-office365-filtering-correlation-id: e58970a0-3fec-428b-28b4-08db4b28fade
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QVE7jbH5mZMQYYBxHb9NQXF6zFM11X+B+L8J92U7A8O0ktZKSoa+oVBdLDczMdlqj+ds5Keh0F4coZTh9NI3N2zS0cins9k2UpzGxHNTGrQIS2upSKXvDvwu1kr1iwXbih760BTbwlFU8CSURk4AqmoFe3+vM+uXSrCI3xgnoqIZymwVs2U6WalzvNvPUPxsNtZBUOEZPgh2+KVeR6PCAuNGjvGjgp31ySMVQL1FnPYRAJqVxuxVm9ESc5UFb7ptVrnmpwHp7wl2ookpB+EOG6PpS4jfjV8XcXY1fss7/9mfvDdxWqt7sRxejBIgd5MNO63SvpuFdA2IrQdMqp8JD3lKcyEuQbX5+VOilp1thUnEXkO0yGyRy9ASuEeG6JXKnhWJbmdi8T/vcBe1EU6R0iLDLC7ZbTtVQJcYtHiB1iQph6Akhz1GyKdbBHFVzfOCe/wXpEMUhxzqDyPhaUZamV7lBJOE806UYTEDFB1Kn4OkF4rm1o/8soahTolbxHz7HpTRrEHxA4biqBVh6qPnqwSaz/Wmxg7OzoLhllvlgooAEFxhawzh99Cq54PEjKvz3k+zKPYJBnUHpMHZT6l8CuJEQoxw/HuPxXcWTMTEvnU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199021)(38070700005)(2906002)(82960400001)(122000001)(478600001)(71200400001)(33656002)(52536014)(966005)(38100700002)(7696005)(5660300002)(66556008)(55016003)(107886003)(8936002)(8676002)(83380400001)(64756008)(76116006)(66446008)(66476007)(186003)(6916009)(6506007)(9686003)(86362001)(66946007)(4326008)(26005)(53546011)(41300700001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sz56AIW36GfH18lojqJ0kQVXZ1kN3UtFpf+SRZLek1wQ/XcK2F82w66uJABs?=
 =?us-ascii?Q?DF62OwqTbIHy/INzeXQb6iouvbqbm4rI0iRnaLWFUEbZS0792P1mOv5GILaJ?=
 =?us-ascii?Q?2RtfOwvdU89HenunTv1sJnS2A341143fwWkYUfbyJNkKcMA0HQKsGNNpEFp4?=
 =?us-ascii?Q?KpZX+fN7dTvn7zCERLGZD3gaW1BnRByBCEARkm368NH87KD1m/cVuhTDZqG+?=
 =?us-ascii?Q?x9cLRaNVUxYe1HsnKeHKXZEdRkVmUN6OVIraDEmc1c7Q5VXtA2UlcdlrZL53?=
 =?us-ascii?Q?YMB8mi2NxFudmf1yxp5J+IGdz4jv1WuV8LdDr+4FhSy3lxVbXeyfM/2ENVV5?=
 =?us-ascii?Q?sPO7ArDR4QHDio8FcPT0f0EbHuHFXfj8yonmV2shNvKUOlOM2yRMGM3dcHl9?=
 =?us-ascii?Q?zddT/y4QChBQj3X6tf6OTCT2GmjLVj5dI2sZq7E8ad2DNHB/OmmwgWy0KbNP?=
 =?us-ascii?Q?S3u0X0848aApdp0l8x1Q4b5SRxsG2AiD0Mdoy6Z7mVEGZ7v7+1XNdXhHkI4U?=
 =?us-ascii?Q?IV6cjPrCgdBjkRK8b0aDYTVDzKfovB3U+kRqyU/IPMlWuzL+ahaY2qGAK1wt?=
 =?us-ascii?Q?kjfCKOQPhrgj/1k8SP/CGKcLw161hVDjgSvgpZb3dSGxZt0/+UsnszRkewuU?=
 =?us-ascii?Q?7F4QqQuYl0xvYXIkkbdk6gElnHNlbR3JNcloWDOn70zQj3Qxznerb/kfiL3h?=
 =?us-ascii?Q?c3DIYrwd4AJLKp7IgGm5c3qqAjIxzRsZBB404kxXo6Bp4Yv45UpgEECUo3Os?=
 =?us-ascii?Q?JAWyiKaWm+lyv0WWoR8bju+sCc1o07+FfeBn7bn7kOHitXbjNBvmeGhZRfbT?=
 =?us-ascii?Q?6Fi7NEI9DIgPc1+mbYYL3GMrCuXTNNbK+HYxLNtk/DPG3t2h+LXSgfXARUW5?=
 =?us-ascii?Q?kK8RoznC0Pm66rPJkDQ1T9+xTDRuss7m5Jmkvr6O8SnGzNVnvYjMrk135CIN?=
 =?us-ascii?Q?owq6ISDT0AAzoxy6ODuM0ZEdHbFDZ1CPAkZ2YFTJNRqQeUc9k2QO8TcRZPin?=
 =?us-ascii?Q?wufkp1MfaiKLYL0GzaKSdSLLLeWamzOQ5ytCgzVkzAJ49qNzdJr9saPK0mTE?=
 =?us-ascii?Q?VGiBi63PiUjLrDMFyJs4MbsRNk4twz2CNCqURQsZWl7YBUUm94XQ0PGCmk51?=
 =?us-ascii?Q?GYCmnNlavXJYX6yZWK/4AoYY5l/1STvW5NdjhwEbp4dA5TxzKLMqJ2NwotxR?=
 =?us-ascii?Q?6BFDzDpPRLGaUo9bYVBeRNwH4FcrluRd7Racyk6f2TKqVtbeAgTfdnjuOopX?=
 =?us-ascii?Q?L5SDT80Wx/LD8bJ++h94Cqg+i9vDQ8ydgg9o93U0CQFxbm0KlqrW0gFGzFOt?=
 =?us-ascii?Q?xaHl1G9qhsEkl//qj+VDNaTCFxsqkZ4oL0nI02+atfCYwfL9J5jKi58bygHW?=
 =?us-ascii?Q?3S4bkK2VWqojiiqpK6S1QK7tWXdQl26kqxCKTEcREpgJOf2yRhDjbWOp3Mlu?=
 =?us-ascii?Q?qyfulC0rb1eK0h+EyvoREk/cLTZFvwYhEtbwsCeptrRS2qxFF2eRPfHIgZ/q?=
 =?us-ascii?Q?6PduHf9S9v0rANmnsYFb7pcbZgeJvUFp2x643TMOE5SQ+UBV5hFKW5fydzQt?=
 =?us-ascii?Q?jTTpPc3ZpPtQsmBwhQWKjVOzRfdTPgFh3U6aOUEi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e58970a0-3fec-428b-28b4-08db4b28fade
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2023 16:19:18.2459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: doyQ5gdD9F9/dJkXXTsw9cF7uIPwBeLkuVaFar60pau7ouZ4eIzQ50rSyGRANLXZsFtKeHw1w1JNA1LXu+6kMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683044362; x=1714580362;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4LDfZpKLwmeXd/ZWyZqAbfoTonJ2wv8WZap1YwiPhPE=;
 b=jfK4S5744kBUttwthWozNlV4j5LoNuoLrodXfHjFjAE+KAlssUit4OUc
 m+/q+4DbCD/ajLCQn8Ij6mJZce0ShTyDTqvqMPgRGfY1xeH8JS/JtA5Pd
 B3m5gCvmkYjEqBI6mF+tsauJhfWW5XR/oFdb67NlyVD0CG3l/Gm4e4Qml
 c/O/9Ns8pQJ48ilD/BM9saSqSj4qBYkd6YX+nG4QBfKTGbCS5uVIiV16+
 xOLwzTE+t9OE+EJ1dVSkiy5paP7BzZvf5Iejmjpc6z4y6D9OwM+pD3kli
 rgwtGViGV2czgRm462XEJUvxpAF7lfmPIdV8Trc07knFaI8957rD6+Zs5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jfK4S574
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: remove mask from
 iavf_irq_enable_queues()
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

Sorry, I accidentally sent this as v2. It is v1.

Ahmed

-----Original Message-----
From: Zaki, Ahmed <ahmed.zaki@intel.com> 
Sent: Tuesday, May 2, 2023 9:29 AM
To: intel-wired-lan@lists.osuosl.org
Cc: Zaki, Ahmed <ahmed.zaki@intel.com>
Subject: [PATCH net-next v2] iavf: remove mask from iavf_irq_enable_queues()

Enable more than 32 IRQs by removing the u32 bit mask in iavf_irq_enable_queues(). There is no need for the mask as there are no callers that select individual IRQs through the bitmask. Also, if the PF allocates more than 32 IRQs, this mask will prevent us from using all of them.

The comment in iavf_register.h is modified to show that the maximum number allowed for the IRQ index is 63 as per the iAVF standard 1.0 [1].

link: [1] https://www.intel.com/content/dam/www/public/us/en/documents/product-specifications/ethernet-adaptive-virtual-function-hardware-spec.pdf
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
v2: modify comment in iavf_register.h and clarify commit message
---
 drivers/net/ethernet/intel/iavf/iavf.h          |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 15 ++++++---------
 drivers/net/ethernet/intel/iavf/iavf_register.h |  2 +-
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9abaff1f2aff..39d0fe76a38f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -525,7 +525,7 @@ void iavf_set_ethtool_ops(struct net_device *netdev);  void iavf_update_stats(struct iavf_adapter *adapter);  void iavf_reset_interrupt_capability(struct iavf_adapter *adapter);  int iavf_init_interrupt_scheme(struct iavf_adapter *adapter); -void iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask);
+void iavf_irq_enable_queues(struct iavf_adapter *adapter);
 void iavf_free_all_tx_resources(struct iavf_adapter *adapter);  void iavf_free_all_rx_resources(struct iavf_adapter *adapter);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1ad0fe7f6dda..e18d7cacf99c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -359,21 +359,18 @@ static void iavf_irq_disable(struct iavf_adapter *adapter)  }
 
 /**
- * iavf_irq_enable_queues - Enable interrupt for specified queues
+ * iavf_irq_enable_queues - Enable interrupt for all queues
  * @adapter: board private structure
- * @mask: bitmap of queues to enable
  **/
-void iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask)
+void iavf_irq_enable_queues(struct iavf_adapter *adapter)
 {
 	struct iavf_hw *hw = &adapter->hw;
 	int i;
 
 	for (i = 1; i < adapter->num_msix_vectors; i++) {
-		if (mask & BIT(i - 1)) {
-			wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
-			     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
-			     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
-		}
+		wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
+		     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
+		     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
 	}
 }
 
@@ -387,7 +384,7 @@ void iavf_irq_enable(struct iavf_adapter *adapter, bool flush)
 	struct iavf_hw *hw = &adapter->hw;
 
 	iavf_misc_irq_enable(adapter);
-	iavf_irq_enable_queues(adapter, ~0);
+	iavf_irq_enable_queues(adapter);
 
 	if (flush)
 		iavf_flush(hw);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_register.h b/drivers/net/ethernet/intel/iavf/iavf_register.h
index bf793332fc9d..a19e88898a0b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_register.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_register.h
@@ -40,7 +40,7 @@
 #define IAVF_VFINT_DYN_CTL01_INTENA_MASK IAVF_MASK(0x1, IAVF_VFINT_DYN_CTL01_INTENA_SHIFT)
 #define IAVF_VFINT_DYN_CTL01_ITR_INDX_SHIFT 3  #define IAVF_VFINT_DYN_CTL01_ITR_INDX_MASK IAVF_MASK(0x3, IAVF_VFINT_DYN_CTL01_ITR_INDX_SHIFT)
-#define IAVF_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /* _i=0...15 */ /* Reset: VFR */
+#define IAVF_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /* 
+_i=0...63 */ /* Reset: VFR */
 #define IAVF_VFINT_DYN_CTLN1_INTENA_SHIFT 0  #define IAVF_VFINT_DYN_CTLN1_INTENA_MASK IAVF_MASK(0x1, IAVF_VFINT_DYN_CTLN1_INTENA_SHIFT)
 #define IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_SHIFT 2
--
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
