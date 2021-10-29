Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5525343FC66
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 14:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A2D540109;
	Fri, 29 Oct 2021 12:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sx9T4TedrBIu; Fri, 29 Oct 2021 12:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ECD4400C4;
	Fri, 29 Oct 2021 12:35:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8955D1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 12:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78C866060F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 12:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2_qjkFJROUt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 12:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B85B7605FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 12:35:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="294116995"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="294116995"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 05:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="665815904"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 29 Oct 2021 05:35:26 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 05:35:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 05:35:25 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 05:35:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TT3RwlJyVZ2vZQB7iAzq6sf0T2DaCZ5Snk3ZDDYDYht0KYZ4n6oI+MUN4wbuAlvcYOdVjji2odlhsps+5ueRIi6rQCVvjlT5Nn/QhYlHUtdjiEhPW7sOqGw17J1bYbHt2sT9OdgfB9o5pwkX6RLCykML6RpNnEwnech/F6iZuGYH2Cczr30+O+HLxw6EeEIG4l2olKqeKrUgfPOs0O7czC+wMCQJSjae3mcaF7tgO/T0DYjUxSLY435a6EWWWgJtWj/ql612G+hwGDMgXuoKMomDejzwR/L6m4eZ1wYWTStLCniZVBPtkHuqd9L64KseAq+suASmK/kNfiwpCzLtOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOZrdiULfflOX1lvzy57bHU/KWW7J3ivLodJVkSoiio=;
 b=Yw27G9MwXy8tXUUvZH9JmnUcXM/30NWP4ZdkG2fWO/18J5FPaib3cRRr+/K/N6Qz+Shl9c8t4vhF8lNMqZDR/lDIq0ZM8Lx5JoltiVtO4OHCYMEtOZhK0p2vmETCsHvNLtZPuHqvmwhLvX4QIiTW234cLouvvjyGeE1gW3CHJXAkvzqeMZOzYYP/ssEKakdX1j77okOgSFEJMrYNPT1UgUJUZBwu0PumlJoPKCOXBnmQQHp8P0rC83Oka6G/TXyf7sssDV4ZJlSSo1xE4a1C1U3qxX0TPLltAsQc84CjsWiZ5JgGPzxMSELKw3n6C0wxpy8Q9zjXiQ2jOFIcEXcGpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yOZrdiULfflOX1lvzy57bHU/KWW7J3ivLodJVkSoiio=;
 b=olvwPx65Wdd9PfcPJmP1+g7gWWF6bUW5Zu3Nenw7GWJac2tGBFvw9wDA4hpPnOUFWZTJkVQB4htqPrXpp2sAB99tWluWyY6huY5WYvbe2EvFwYVMfq4Z5UogG1+TlOdNFUS6aXg6+J+7wDm5eqUclk+MdufUXHAoiRQXrdLgNig=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 12:35:19 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4649.017; Fri, 29 Oct 2021
 12:35:19 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Clear synchronized addrs
 when adding VFs in switchdev mode
Thread-Index: AQHXyoFLs3JnoLuYN0mW93zo/53YDavp7cFA
Date: Fri, 29 Oct 2021 12:35:19 +0000
Message-ID: <MW3PR11MB4554D097B4DEB20C0A47604B9C879@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211026154628.15787-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20211026154628.15787-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08a8b9d8-b8d6-45b9-872c-08d99ad89185
x-ms-traffictypediagnostic: MW3PR11MB4620:
x-microsoft-antispam-prvs: <MW3PR11MB4620C0163A300B4EABF8C07D9C879@MW3PR11MB4620.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: btoyM4us7idJTpGcOKW8/RNDNNqaQ8fnphCl1fN1+F5KSNmnD3bX9WOQo5biEVVqEjunES6DJqFc2b7QyEN9LuP23DvJd3T98A4GEUMo0XzvS1PLGaC/RGbHXvcO2BYf5OxtP70GmiMIfg3KTv/IXn4v5UcvZLD8gHVaqw6BtkQk8ODauxCv2Sixs102hgb5Q0TSS1Rj8qCue+xstZuOzWs6nddOE+Xk2f05ivdoED0Ejlw3IoIDs7ZvnMubGV3G8h4KxjytnrkMflfk2440n6HOviuC1KQDNYCe/ClxRD9frUWroo41XRTk99ACwYGH21IoGBxTUq/jej8aqV7Ncc7JebVmjahtpDOXtEH5JtMYou8qUR6cguEgm3keGoJF2WUlP2HF0r5P1WCMN27cUUYkvfCEoQ/ALoshDZGojBOvldkedQ/9iX10Q5GfwG3MbBhJrqsuqSu20GUoYXkzCX92PNAg32OBpTon6iunuLsgEqdp+z/tBoZj9ov8DZPNoJW36RX9MBCyB1JjkAzSgUAsK/iSHJdclsXXaoP20suxajfJUNtT9paJKZC8PI1LrOv4wPxaCUp3zV5IZ5/hKexfskJ4bI06UbTVpzS7LMpBGb8yFnQ3QzxLfqD3QTQp6XZVKZtHTIwvRShWxQ7VeFjzTN36ZjZtDlEHnz3fwUmHu362CyPpqnxoFdx0MqoZEYl2zn67c/5BwWsxAIyGPQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(8936002)(8676002)(38070700005)(6506007)(66946007)(76116006)(110136005)(2906002)(33656002)(71200400001)(5660300002)(86362001)(186003)(26005)(52536014)(7696005)(55016002)(64756008)(38100700002)(66476007)(82960400001)(122000001)(9686003)(83380400001)(66556008)(508600001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JoaFWniZwWuUK/tN32KbQlbY/yDZe5bUsPDJyvuGt7ZmdP/vQAG2Woxtb4yL?=
 =?us-ascii?Q?XsmFcoANw0E4srfPufjRI8U/z3sKAAzHooRAoY2WnObi99vNjbR1dqBsvTSY?=
 =?us-ascii?Q?NEPayEeO8iQBJfKUglmDfaHVRADPFFhzPPCPwUQ3h7ZCaRI8l9/0eJ8Q5Kl0?=
 =?us-ascii?Q?9YiXmxaBWq/Rd3OZeQzT5LhtoHDik+nVhaR4GAJ+/51P7/6IZ3pB9+jf6oFG?=
 =?us-ascii?Q?YcZSaa1Y7rF489bJuTieAfp6PrR+0DDIiSAKeI5Eo6jPBrmzIn12/wyltnRk?=
 =?us-ascii?Q?YeivayxawI3qj17+3EEy6i43l0pJGxF/BYg1oTisqSa5q8phij7Lk/BmAIvG?=
 =?us-ascii?Q?PckJ7Rf29aIt7UCNwZGcm3zN6bzmlTPHdLaCjfeFNMZH9qPnClhacQjHD1Ac?=
 =?us-ascii?Q?iVwzAtbo+DTEVakNpGLGKtczcDRxdp7KVcmOpnkQJdNE33cxo2qjeb0cIZmt?=
 =?us-ascii?Q?mMNX9/E8nL3qaTvq4HqleP3hxs5DKW2HrrqxkYkISuCvOWBHJNWOnTnHuYH+?=
 =?us-ascii?Q?v8DD7OSWjU/En08yU2UXvPu+dU9SeaMAVQX9r2jCwajK88T2lLWeFdi+bMYC?=
 =?us-ascii?Q?v5hcZGR69LQXRi4rBNPQmdkvN1XTTa3DxFi3yTSqW6hT5A1BpXY3ouuxC2dV?=
 =?us-ascii?Q?6q4oJjBiHEZsyKihqAFADRLH3EXmuvZFTqvxp7sZeD1Zk3ty2iHTfRrWA8Ed?=
 =?us-ascii?Q?XphgnvKmRsZKDI8plPgD2rgeKjd8K8hPtWmIQ2dBKMWQGEzQc6FgOqprgBmO?=
 =?us-ascii?Q?zHFz73somlEb206KQP29Cx4eD4XD2an3oxf+jAyqNjLteEC7sE/tKfsTQB33?=
 =?us-ascii?Q?MZAbJMY18PU7g7/VxbJPVq/uep0rcWHWZyB7xAQNBwU830AuEsjJFtFeYoXw?=
 =?us-ascii?Q?JK+CJqM9Fmg2fmGVVodREU09QjELs456womPvvXIBa+JM2RPuG378qIGu8p7?=
 =?us-ascii?Q?4tkHAm9XznvBGUtqFdrq7CgK5cPAPtM0ATV9Cx9MYq61k/ClSPpMRlgTVoL+?=
 =?us-ascii?Q?RzbWumhn4OeCUo5AVa7lANH4HhVjfr1KkEr+WcamT99RbuGQ3Oqt6ELXK+q3?=
 =?us-ascii?Q?zKsJUdU/jo2qn3GSx80fZnf5XzgtxsghfyLS9RNHOp3rCSRjE/nacFKC+ANt?=
 =?us-ascii?Q?4y5gfU3ulVZLXJwf+3C/A7XnmMBbO8e6abnZZlT5NCXH8Ezs5OqcBVCIxw4C?=
 =?us-ascii?Q?2P9g8+Rj89Yf19y6AY3KtoJAyB2o6VkAd8oTCf2ftNTbxLR9Judxz44AsPz+?=
 =?us-ascii?Q?LoBuWgBmj4a0pJowA8Xav2B3aTBomAbC0n6CLyGByz8iBnSQ2LJA+XGnRRUt?=
 =?us-ascii?Q?xvM0sbAxM8mCkH6VTIEdhH7oNhw1gWGJ65w0CRkcoQNKpJPVHytZGpR75lE7?=
 =?us-ascii?Q?qDbqKSi3ZLoEgq7uM3g/lJL0gyNO21WCqEImsifsTCsD1EdkEkwejyuuqHMH?=
 =?us-ascii?Q?Kxm5pqWhdZ/dBpwI6XQDxnhXtEEH8XeLqJf1NZTYw7CYWbHssxBaineoZayO?=
 =?us-ascii?Q?J2x3E8wtxB01nhDbJpX6BSqWeoui1joelGc/Cq7AYsU9nI3gsiNJW8u/5nUF?=
 =?us-ascii?Q?VAbXjDpg8HTgRcXeTjpI85Q9FN0q/N6T8PdK2MtQh7UQDzFicCOQEBSMh74/?=
 =?us-ascii?Q?OPN1hC5Xmxg6j742rbqKV90hvTDQplEcyQZwvkzs7NqB2Va1KjXCbN50L4Oa?=
 =?us-ascii?Q?kkFJ3g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08a8b9d8-b8d6-45b9-872c-08d99ad89185
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 12:35:19.4248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cXbTqnE/V5MHSCWAS5wNCauZRUiN4g+wCUIWZkIrrgGmelIpQ2bcHRkxFchg80uCFWvR6PJGraAXQg/Nam9uZEpk2RXwY2x2+R1dthJvQj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4620
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Clear synchronized
 addrs when adding VFs in switchdev mode
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
>Marcin Szycik
>Sent: Tuesday, October 26, 2021 9:16 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Clear synchronized addrs when
>adding VFs in switchdev mode
>
>When spawning VFs in switchdev mode, internal filter list of vsi is cleared,
>which includes MAC rules. However MAC entries stay on netdev's multicast
>list, which causes error message when bringing link up after spawning VFs
>("Failed to delete MAC filters"). __dev_mc_sync() is called and tries to unsync
>addresses that were already removed internally when adding VFs.
>
>This can be reproduced with:
>1) Load ice driver
>2) Change PF to switchdev mode
>3) Bring PF link up
>4) Bring PF link down
>5) Create a VF on PF
>6) Bring PF link up
>
>Added clearing of netdev's multicast (and also unicast) list when spawning VFs
>in switchdev mode, so the state of internal rule list and netdev's MAC list is
>consistent.
>
>Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 ++++++
> 1 file changed, 6 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
