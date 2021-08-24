Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C6B3F629A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 18:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0322E6068B;
	Tue, 24 Aug 2021 16:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMvp7o6nout1; Tue, 24 Aug 2021 16:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96287606F6;
	Tue, 24 Aug 2021 16:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 945E21BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8140E4034B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Su6tDV0zd1NO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 16:20:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88AF64025A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 16:20:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="302929707"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="302929707"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 09:20:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="515514730"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2021 09:20:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 09:20:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 24 Aug 2021 09:20:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 24 Aug 2021 09:20:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 24 Aug 2021 09:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+A3M6yHoy1jcppoc4g5h9V05H7LvKu6a6DgoeLn85qV38Cd2NSe8Hqee61yYWjIuxNdrSCHZBhaXRaFkVBqJu9Q/aIOuKPHZtRE/JzPfd6sZPPDBWoovKGJ/ZAlmoUQNM9u4LpilZMVL166CX19Yx5V4HA9XunKzpf1i8g1uJOTfX8aT54UL58Xez2Yb8cYhHxXbiIn4HsUCByo6BAA8bBNFzV6v3jWo5/756M9VIUAAUEn77TeBWzKQCR714Ge1PCUEM3z7Yf2hZ/+Lkb6rAKt7Q/LMNAEVFaPVSCMkdRtzkEfvC9lv17eutkuj5xtRhrlYDPkTRWMYx7CKebhyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HGLiN6cGUM16XDlGVDQuJgd4x9GOZv8i3nSxIVoQw+g=;
 b=kPjp/VJ207bA9RJ4EOVU74LvNSWcmwMc2PdINJisnoKF7egwy6qqJs95pl7bMiceE3JKk00H38XiO5HH4CEwXgOe7X+hqGSypF2HWEOSbvCLsoZn3voHP20b6pyQsp34A1/F//zOaqFEp3iBIK/Hzq95eVzg/lOMpygirw2uFtWR4jVPXNEzU8uyeWaMMiuUcbrP6IXFOD6iSV2VA2B8xLjII0sXj4+wQuh6FPPBOydLrhUqLMRYwKXad5ZUTgxk3U2XQtbDyVYLeOlH3cFoBFuO4May28Av1JnbZUWMIop7Ul/JEeIS/CO2j3Izm5bSLQKo8Ff72lMVn0VU1OxUFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HGLiN6cGUM16XDlGVDQuJgd4x9GOZv8i3nSxIVoQw+g=;
 b=y9hkq6qJZ6TxrhTa+oNHlXhyqsFZvdLZsDeAgBbKmif6KLqgDaOkcGeHxGnlGboRpRR5HcyeQoLM5CX1JvaVUc0Vycl6RW9UoAbv2jwSNTVn2EzIsnSNhlQeGVA5ENFz4vWhGeHHVvh2xhSkrmmfM8ks3O6UFkRDhyib7AWEbe0=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5119.namprd11.prod.outlook.com (2603:10b6:a03:2d6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Tue, 24 Aug
 2021 16:20:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4436.024; Tue, 24 Aug 2021
 16:20:21 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Only lock to update netdev
 dev_addr
Thread-Index: AQHXlSin8q+Q35JuW0Gc/kaqc1EmsquC3Skw
Date: Tue, 24 Aug 2021 16:20:21 +0000
Message-ID: <BYAPR11MB336709F0D28FA51DB4A9EA81FCC59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210819183015.38988-1-brett.creeley@intel.com>
In-Reply-To: <20210819183015.38988-1-brett.creeley@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67f36bf3-9bdd-48c7-7972-08d9671b1200
x-ms-traffictypediagnostic: SJ0PR11MB5119:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB511917421212825427B4524BFCC59@SJ0PR11MB5119.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M+TEq1X5ND2g3AqGeb78mSy122KU38cpSbvDdnT6DEuodwFkCvIkb6ov3C0jXcmwSDNFlM3u4FzURfoIwtUVIaMGMmjDeXDkLztBQwP8fIe98AIewAZtE92spHU8NPoK1xo7iDc0ypvZ6XLT91TXq7Doo8bn933m7rDwKlcWvp7+WE6rd0Z+WIYXRCHJLd3Ueijl/bo/JqV6492ePoWwu+rYMEV6Zo1FrwywdKrnxWw2K5JMSGST++8R/KcIec+yJ0amlRcFhky9ear6OBcX5HpBXohXVFRf2x1nVURfzFA06uLLzMSX7/lL2bxfUSkFjnscUmNtRN88qoMP+esJVa5kGzT/y6T8iCi85fnHJpOeQZ4uOt4VB6Af+vMxJLHC29aGKidBSgzwsuvKofoIMt4wnV+Xd5pMCOuxu0p205MoD9QOVGvkhi8FfaJ8xENJUSDIWk9RcfMdG7ozfD0FV6hVhtIQ5dxQgGUw3itL+o0Xp3l0Gjigs7pPwPHWnhqmowmQ4p8YFHb0lkanqnb0fw319KMNHEx2WO4TUaCXwGpzFBLwnJn/9NHl5w6xsRxJz7SezsoiD2IFDENryRPyw+RBjR3cTUfRg0JNcq3boEli/K8YgolPn6ZIaQB4Vv40rwuQbC64Hu+f8YENYI7VY1EIrjV1XhLvIGcZZcsEom1yEl8gPOkTU69ZlV8rKCA5MsELeoNoR7uBewSekGm4qA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(186003)(66476007)(66946007)(64756008)(66556008)(478600001)(76116006)(66446008)(316002)(15650500001)(26005)(8676002)(86362001)(110136005)(38100700002)(52536014)(55016002)(71200400001)(122000001)(8936002)(9686003)(7696005)(33656002)(83380400001)(53546011)(38070700005)(5660300002)(2906002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H8qGTvMPdGOrjLPIx8kf6LdmO+ypQoYqj3/Gl4218Ae9NVbZNNQWUWQdFXaC?=
 =?us-ascii?Q?AA5WJ0rpqfEOQWQ6Cu6dm5VzBgkWPXh726bwqLIU6O8Apa14xnx6ckdn3kmm?=
 =?us-ascii?Q?ViOnDiLMk1v1YZL44K6gzqGRU4Hs94TxR8MqQIZTxw1LXXY+Jiv2ksbZJnVu?=
 =?us-ascii?Q?ol6UNt1lUqJ1346aKW8bziV5InbWMKiWd9Ki60LtNOVddpIeU7+py0pO9PKM?=
 =?us-ascii?Q?f7x/q5kH2KClwCgqJafNv1sqdIWBOQQWgYjS6lG+1fqDFYsDFGfq13lmwXqj?=
 =?us-ascii?Q?6c3pPwtecpc4CXnPF65uGWr9Auzo3VKzcYtelJMjObBMBCxn7xABvbSgKP1k?=
 =?us-ascii?Q?oflOZxs7ndmcjlL6l9MikyAW/STiJ0Ue01CanfTt36kEXiFiO1H7CFBzep7k?=
 =?us-ascii?Q?tbJ338mHcNmOOTz6rpCE4Ephd4OitdGHGO2NJAKd7JfpsGqAhYycqYsZ43PH?=
 =?us-ascii?Q?bqTSIGlPuHaqbjsQFDZoEOakXE95BcgbXucemKFNxBesAatN/1hJIgLCNTrB?=
 =?us-ascii?Q?WgY7otJLg3kx2ElARop/3DHeMuLiwGsTd4EuMutaPcPGgtr5tHyTXSshDO3h?=
 =?us-ascii?Q?r9Q15fpPlLxCJ6ASjroPlKyO3eQ6AspZjSAeG+/hks7KfxuJ3UrHWN1U5ctO?=
 =?us-ascii?Q?D994H8IDG/SlDnQWZLvA0D4Iu+KtxXTiDklMU8VG5wFZIanuYsZW3Zfx6RWI?=
 =?us-ascii?Q?Zv2Ahoa9siyjYbzenkrguQG/3tvgCvpl3q7sWF7JapxiMIvyixKWjlb1Qpab?=
 =?us-ascii?Q?KITOETHd63MYstc45DHW6Bn0771oGktVP18OsEbqvPEyQaID2sff1r6gM+9p?=
 =?us-ascii?Q?THrDVIsn811S1WTGNEtDAY9ykssoc2iyUrqg6E/jThaFXkGje/a17TPKF734?=
 =?us-ascii?Q?UwRbE1QXGw3Xo3nYooRUFtcx3cXODXCBvuANdh5oJKvNrhLKDxGM66yJVVF3?=
 =?us-ascii?Q?TgjyHSVdDAmVFba96jjHLuK5HDwM0r6x3YROAoRypp0Puye3pCr4YMgi2yNc?=
 =?us-ascii?Q?ucWTcg+/ySVA8e7oS3QnO7h6lG7N1mySi2aijnCyQacyIuSlg5WCnxNe2KO/?=
 =?us-ascii?Q?7a/G1BxOmO6XXnBY/b26XchE1M0NWmnaifN7qsEFwuoRHL/44t6/3TL/J1Cl?=
 =?us-ascii?Q?eQKMpq9iO74BWHyIecxKC2rBYhaJgvwkXOz8yoErFXAsjkYgw+lHWjXgo9bW?=
 =?us-ascii?Q?3Ci0Y0YVLXZFiRfTSCJ2bK4naoY4gHB/h1OUZkwbocehqHA9c3w+SGirY2MT?=
 =?us-ascii?Q?qNs+sIJi2qV7n/HNmDar+L+BekF61UNe4Pgc4clYD9Exa04lUolU+HBioggE?=
 =?us-ascii?Q?j09ccAVrTEuZMwbwKUM3L1p2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67f36bf3-9bdd-48c7-7972-08d9671b1200
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2021 16:20:21.2285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s6y3Os1vYr3ifSGHbkucXuO4I7FH5r/JAzgKCa6Dpx7q2MbDwlLnT+6l07x+5m8SFLrXEn+zHpnX+XM4XYKa3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Only lock to update netdev
 dev_addr
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brett Creeley
> Sent: Friday, August 20, 2021 12:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: Only lock to update netdev
> dev_addr
> 
> commit 3ba7f53f8bf1 ("ice: don't remove netdev->dev_addr from uc sync
> list") introduced calls to netif_addr_lock_bh() and
> netif_addr_unlock_bh() in the driver's ndo_set_mac() callback. This is fine
> since the driver is updated the netdev's dev_addr, but since this is a spinlock,
> the driver cannot sleep when the lock is held.
> Unfortunately the functions to add/delete MAC filters depend on a mutex.
> This was causing a trace with the lock debug kernel config options enabled
> when changing the mac address via iproute.
> 
> [  203.273059] BUG: sleeping function called from invalid context at
> kernel/locking/mutex.c:281 [  203.273065] in_atomic(): 1, irqs_disabled(): 0,
> non_block: 0, pid: 6698, name: ip [  203.273068] Preemption disabled at:
> [  203.273068] [<ffffffffc04aaeab>] ice_set_mac_address+0x8b/0x1c0 [ice]
> [  203.273097] CPU: 31 PID: 6698 Comm: ip Tainted: G S      W I       5.14.0-
> rc4_next-queue_dev-queue-13aug-01094-gaba1e4adb54e #2
> [  203.273100] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS
> SE5C620.86B.02.01.0010.010620200716 01/06/2020 [  203.273102] Call Trace:
> [  203.273107]  dump_stack_lvl+0x33/0x42 [  203.273113]  ?
> ice_set_mac_address+0x8b/0x1c0 [ice] [  203.273124]
> ___might_sleep.cold.150+0xda/0xea [  203.273131]  mutex_lock+0x1c/0x40 [
> 203.273136]  ice_remove_mac+0xe3/0x180 [ice] [  203.273155]  ?
> ice_fltr_add_mac_list+0x20/0x20 [ice] [  203.273175]
> ice_fltr_prepare_mac+0x43/0xa0 [ice] [  203.273194]
> ice_set_mac_address+0xab/0x1c0 [ice] [  203.273206]
> dev_set_mac_address+0xb8/0x120 [  203.273210]
> dev_set_mac_address_user+0x2c/0x50
> [  203.273212]  do_setlink+0x1dd/0x10e0
> [  203.273217]  ? __nla_validate_parse+0x12d/0x1a0 [  203.273221]
> __rtnl_newlink+0x530/0x910 [  203.273224]  ?
> __kmalloc_node_track_caller+0x17f/0x380
> [  203.273230]  ? preempt_count_add+0x68/0xa0 [  203.273236]  ?
> _raw_spin_lock_irqsave+0x1f/0x30 [  203.273241]  ?
> kmem_cache_alloc_trace+0x4d/0x440 [  203.273244]
> rtnl_newlink+0x43/0x60 [  203.273245]  rtnetlink_rcv_msg+0x13a/0x380 [
> 203.273248]  ? rtnl_calcit.isra.40+0x130/0x130 [  203.273250]
> netlink_rcv_skb+0x4e/0x100 [  203.273256]  netlink_unicast+0x1a2/0x280 [
> 203.273258]  netlink_sendmsg+0x242/0x490 [  203.273260]
> sock_sendmsg+0x58/0x60 [  203.273263]  ____sys_sendmsg+0x1ef/0x260 [
> 203.273265]  ? copy_msghdr_from_user+0x5c/0x90 [  203.273268]  ?
> ____sys_recvmsg+0xe6/0x170 [  203.273270]  ___sys_sendmsg+0x7c/0xc0 [
> 203.273272]  ? copy_msghdr_from_user+0x5c/0x90 [  203.273274]  ?
> ___sys_recvmsg+0x89/0xc0 [  203.273276]  ? __netlink_sendskb+0x50/0x50 [
> 203.273278]  ? mod_objcg_state+0xee/0x310 [  203.273282]  ?
> __dentry_kill+0x114/0x170 [  203.273286]  ? get_max_files+0x10/0x10 [
> 203.273288]  __sys_sendmsg+0x57/0xa0 [  203.273290]
> do_syscall_64+0x37/0x80 [  203.273295]
> entry_SYSCALL_64_after_hwframe+0x44/0xae
> [  203.273296] RIP: 0033:0x7f8edf96e278
> [  203.273298] Code: 89 02 48 c7 c0 ff ff ff ff eb b5 0f 1f 80 00 00 00 00 f3 0f 1e
> fa 48 8d 05 25 63 2c 00 8b 00 85 c0 75 17 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff
> 77 58 c3 0f 1f 80 00 00 00 00 41 54 41 89 d4 55 [  203.273300] RSP:
> 002b:00007ffcb8bdac08 EFLAGS: 00000246 ORIG_RAX: 000000000000002e [
> 203.273303] RAX: ffffffffffffffda RBX: 000000006115e0ae RCX:
> 00007f8edf96e278 [  203.273304] RDX: 0000000000000000 RSI:
> 00007ffcb8bdac70 RDI: 0000000000000003 [  203.273305] RBP:
> 0000000000000000 R08: 0000000000000001 R09: 00007ffcb8bda5b0 [
> 203.273306] R10: 0000000000000000 R11: 0000000000000246 R12:
> 0000000000000001 [  203.273306] R13: 0000555e10092020 R14:
> 0000000000000000 R15: 0000000000000005
> 
> Fix this by only locking when changing the netdev->dev_addr. Also, make
> sure to restore the old netdev->dev_addr on any failures.
> 
> Fixes: 3ba7f53f8bf1 ("ice-linux: don't remove netdev->dev_addr from uc
> sync list")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
