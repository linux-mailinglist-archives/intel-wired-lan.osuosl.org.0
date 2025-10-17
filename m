Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCB5BE6E0D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 09:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF0DE8123C;
	Fri, 17 Oct 2025 07:06:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PLKUm_NrcOji; Fri, 17 Oct 2025 07:06:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24D6C81236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760684806;
	bh=bXk3FDySRKWLaf4lbtb40pzzTmel/mvwhxP+iu7VeAw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E5g17AF7JeWqe0KvGBzIjD7yc+wVm0jv8eMSD1HK/j0HuyrFcrjt1eqLoTh83iXVc
	 y9EvgXs4vrfQ9cBqjUkS6I6HVqdF9RDnW8zDppT/qFhpzT5AEXwXAUg0CctFS2Ulax
	 o9hfAZAb23KfDgPBX4hjwtipJx0IU4FNprFx39/kg4fYOOviUY5J4qV18HT+k/lijF
	 5rG2DQ0BLVxC7tXKYnv6kDtI1h1yl6WVDmQQmQq5ux30AdhlMRYsEpEl1PyVHTpbqi
	 //I2Bl9Tm22qRN3/4B+uXVHnK2TveXkDa09hlAz4TPiSY7q+8TNuwszr7FkJlxLSOb
	 Yfsre2zDE3y8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24D6C81236;
	Fri, 17 Oct 2025 07:06:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F34201EB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 07:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E392440A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 07:06:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L_LXQkgoF5DT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Oct 2025 07:06:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 48F6B40A75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48F6B40A75
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 48F6B40A75
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 07:06:42 +0000 (UTC)
X-CSE-ConnectionGUID: uHSEhoYcQ4qERlUyPXDArw==
X-CSE-MsgGUID: zzFO1sWKTleO7vWkcMDsWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="80522145"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="80522145"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 00:06:39 -0700
X-CSE-ConnectionGUID: /FBqNOUxRTqjHHhv2wYM9g==
X-CSE-MsgGUID: 6HJq4dnFSeKap2pi9+2Ljw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182652806"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 00:06:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 00:06:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 00:06:38 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 00:06:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qy+I9o+0DjA9iT/J0PKMqy9aMliJERA9QVAsDM1rkSZj6vLty1Poy2GsEgQ6N0G3VR4Q5DUuua1JyeWuQFkFJHl0ywWUrPDl7ur3ZrC0xSu869tA27v3Ctc7hip7gDE2KNRbZRp6/bB4w5oRVr6Y54WgabHIapMz3L3fB17H0nZ0E31Z7aFk5F40umfidF88r29/0xvfwPCoCYUvNUyYYmSLu6rrfAFVUWaM4VPnUpE4CEC7/XFRkRbky1+cZoqIH23k3mtNsI/I+rMf4A5di7XTLefcuCqfy6n4m2fi3YkxeWZFky/A0+jhYahrRoJ5lcgVc7pOREjiGCe/QNgwiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bXk3FDySRKWLaf4lbtb40pzzTmel/mvwhxP+iu7VeAw=;
 b=y9bhPoxccBvv9cgK2s3/OQrdbfova8pkgQ1ieL/4czOA3YvXUXZMtRR3nC+Am7EVuuo6vUoamJw95zdlaR9AWOjMDpd3Kw0kVA5XvrlWlYGaIM/yJrB9+oNNuzhvHpicfCpYZPA8IB2KzdGhD7Ys87itxq9BUAcfJTQF0zn7x47NJpuGdVNwfg5cezIINsDp61LHw8SoQwGQ+nqlpK6k/m5kqlRuNukIiRjVpA38cCVLFUvKybTVpJ45jx/m3q4l939xxTKcVOuDLAa6A7wCUmdfi/BhLoELTshNWLdkT9amFHeUK9a9kKR4h/49BUr5KpXcJf6taH0cy5ZKX2ifcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 07:06:36 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9228.012; Fri, 17 Oct 2025
 07:06:36 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix destination CGU
 for dual complex E825
Thread-Index: AQHcMVYlRF6ERzFrEECf3GUceInOCrTF6QJA
Date: Fri, 17 Oct 2025 07:06:36 +0000
Message-ID: <IA1PR11MB6241614E3A5F34358696F99F8BF6A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250929152905.2947520-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250929152905.2947520-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB4840:EE_
x-ms-office365-filtering-correlation-id: 75a903ea-5cab-4eeb-35a8-08de0d4bb620
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sAIi08XnBwX0uCaUuPdctMr/MNFa04upU9KKbZs18GZpNmdetjaJTfst0mbV?=
 =?us-ascii?Q?FdCGu9F9wVEJAa/NEdOa+QSdP7AaSO6+2eBwhCfW8KQrl12nXT46gjrDT3aG?=
 =?us-ascii?Q?3j66q6n/pFvYxVuiJ5kGAdvH1GLhLydsBDcP+8PeCra5/y0hAY1H+Pl14YDC?=
 =?us-ascii?Q?/EYEaAh1PzSk7XWdZyPh3GATQg3UK8KCdaIj3w5PbufYmkbvDcRxfXZNv9AL?=
 =?us-ascii?Q?mt6D9ssd353T6Lz5OD1JFteS/qkMOYePdo/1cK3ac3dwkvNPDNLQLHdUAaqM?=
 =?us-ascii?Q?66E0FxS5sLxaaXzGI+981jDnMivmsXHTmsAA1BceG5ntPfwdJTCdKVjZNLDQ?=
 =?us-ascii?Q?faBLxdvwB8wpbwOtoRi23ImGki9SiuVoa//KqwcNpuiWhbexwv6QDgpT/M3D?=
 =?us-ascii?Q?wdLQkXl6bFuZVrPLfxfMcmXIJonLG9IfHPj9iyE0YuukYvEXa5qxMu7W9gXj?=
 =?us-ascii?Q?dfyh9FYzvAuS70MpR6hgxw3+2he1C3nIww+WoZtzN/us/7o4siEk6Uzlfmak?=
 =?us-ascii?Q?9LjNMhA8B2czZj/smKB0x5mPHYkS4GvzuFv+Ii4EJZhXtzrVFi9dIgzioI4v?=
 =?us-ascii?Q?kDBROtQMJZA60foB5sHGMHVnWGZok0QhHnFSXiUOOxpS9inIBbcwrdpVrLyp?=
 =?us-ascii?Q?EQ56yirlqYKwx1rmKfMy8ibK9yGkvAblz+HXCuTpbBppiR40S37nroxKH8kb?=
 =?us-ascii?Q?RZZfMEbel+ACEDmjWnI1zJxlwYfn64XkB/sWGUClWxCjLg69l/ZtO7J7Munr?=
 =?us-ascii?Q?AD+N3QiBd1SzJtu8kxo9W9SaO76EL2Lkiq12zBjQathPQi97K2Nq7Dy508wJ?=
 =?us-ascii?Q?sqQ98xLKqxI5IyylnM8r1+VvjhIWP76t0njakmXkiZrVqde4Odhl41B3lEl6?=
 =?us-ascii?Q?b3iw+rh5bzRPhPp6b5NCDLfsqqF4/6BROpyAsnhWZYtblOZujs7GqesctbDJ?=
 =?us-ascii?Q?MlC8utPfFU2s5GuO/rBtj2S6nt/H41t7VEXPVbX51MWwB0bf2dtl0wdwgOGY?=
 =?us-ascii?Q?HcNd8UOkODeNTzhs6+7b0P2f3ZFM1vt/zuHdW7q+LVOnLtVpt9CHQH1P/UB/?=
 =?us-ascii?Q?b3271zkhxIKHwncGK9C7AIsyidwn6z4HsqWufyciVA2ELr9sp1vtvU5EUw4o?=
 =?us-ascii?Q?6O6AKvO5jpXpdlayzczuUaY9H5V+mIE9Dj9fIdP4fbhzipVHslVMHNcZExdU?=
 =?us-ascii?Q?THld2L6EkoAI9xgf99uuD6RIY55pqfM7FCjQb4adxWJCUieFX2ncEjbT4qid?=
 =?us-ascii?Q?b0xXwxkd+7w20QsJK+Fzg0SCSQuQGNXmGFs5ofyQxEPSOpwL1So/SCZ1AKTE?=
 =?us-ascii?Q?zizN5kr8THzm9MnocuI0g+jFd7h2wRyY9ZHOPWjZPfnyUUZs96s5I0FvZptu?=
 =?us-ascii?Q?CDDjwVO71FzGflvepYb80nSgZHurLuApfzu2QzZ9LXLsZ0QPpS+neNPQlvvE?=
 =?us-ascii?Q?Oqu7pgeZVZ8rvk1UFSYtXkAmNLIC5asZk9z85a63O7uzS84U2Mc+Xg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OkYcFgeOL2N6fi8zkJQ5eiZUOHDZ6Kg7BaICj8M3miFVGEJ3FGXmoZILRThM?=
 =?us-ascii?Q?fWohqkVBodD1HtgRwTUVCBhkUscKwOLnzfM5/ng7nFx7IKqqihVARq/xKeWj?=
 =?us-ascii?Q?GKmXVxM4ZshonDQhRdJlKsx6CkLUwfAyT3/uD1RQP3P7nCv3/21WKOk928F8?=
 =?us-ascii?Q?YYF/MeBGFxQTqX/RYQIpfi3bzsg13cOM0w9yd1HtgKDme4HQT+iVJ90hDYf3?=
 =?us-ascii?Q?RfsSQeTL2Yn9Hz6NqUoI850Gl7Y++v7tDBwT+0c0QPFpt8IVf5jgNp0cbPYt?=
 =?us-ascii?Q?GksJNgxZb+nYzDgGZgBSa1f7qj5IWzmvk/otDc8GbpC5l1DfMkALHy3FSJPe?=
 =?us-ascii?Q?9iNwaP1irnnEdsjAogoFO1qey0/a2Kp5zjKIgYT4z9ll6umL+20skVDXmCW1?=
 =?us-ascii?Q?WsJSlpvAI/ZTwWNDDIG6TRy2Xof8xgYc5euy/5nBCk5+/I0q3wE/DNl46wtJ?=
 =?us-ascii?Q?Q4lvpXS/qOua1yfMfnKkMkCHBEKLOy7kN3N3Z77sAlrX8Z5+7Q+q6K/RNOdD?=
 =?us-ascii?Q?YTLD9L6v2rwvRn+MmrJIO/AKtaGkPav+9/KBuezMiVQ3Rz/6GC+VPe14B9EJ?=
 =?us-ascii?Q?OJOBm5U6bQyAwFlhvhTChRzkjlfzJY2fKjgukgECFmH/N3bhu/8iln/gLE4m?=
 =?us-ascii?Q?2Yf+tb4wQBNNVBqM3FxPmJ40XQVU6XPkV7nk3Fl5frKx3LBTVpmW/4W3iO34?=
 =?us-ascii?Q?UyZzs5Tg4oBdt4txkG/KFHLDvsWIE6CgT9iKYbdA0EyNYcyjCAGaROi6235B?=
 =?us-ascii?Q?MnxmuTZsd8FeWtL9HZINjrUbGumaF/CRT+5PHY2QIjHyljTXKLn9Qn/mok1l?=
 =?us-ascii?Q?eQQ0XaGgnaUI3cqs+oIojaaTlvTL61VwJMKOd0vIYLFlDvtCWf+J8hQc6meA?=
 =?us-ascii?Q?hcjAVZq/ac5HsawBZyrAWKYJVIjX4heMqv4/4LewymVQ7U6wzNYFGHGdE2ql?=
 =?us-ascii?Q?sV9KmZVWVeeIweLPI9gs9bavdCvs6MO0Q1khi/VhxUuBVIA9S2NFMeN9AXY+?=
 =?us-ascii?Q?UdUIg7gy8rsudgqvfcMv4VpmChUqAt3MScM/n/imvydGBxZInDLVR0qiIlXR?=
 =?us-ascii?Q?VQdQDoTFmLmsRp9Gw93Gg2iHxSzcP7r6jsZKBJA7DoGOS4Uu+TeGXhM8Zc6y?=
 =?us-ascii?Q?4D5G38QtCVPmeoq/St9rfkDnaSoZwY/SjxmicPQy8PDXAz4747C6L+Eb/2zC?=
 =?us-ascii?Q?dj/pNo4mCaQ0cOOVGHH1jSQhuI+PtEysstcw+oVsqHMKKMjn2HDPPCCo4L5+?=
 =?us-ascii?Q?V1DvtiVqVR5iPyGbyWxws0FCZinzFsoWB9UUfoWwI01Bt1eRZqt8kICpZOpF?=
 =?us-ascii?Q?4zX5kxRJ57Z2omKIcWmfqKkltwi1jAK1kFkcDs2zR4U+UaehlehgPYjVpZTy?=
 =?us-ascii?Q?B6FqPsbU7j6DislnHPmHVWaeeagQzfNF8LHNbSPvWUGtTlDTG8ODKDltF/Qi?=
 =?us-ascii?Q?RBintLaR9rpgUaKw7akozkNytdnUDFemKBA8v1W9CKDsVWtdsH09SJra0XYp?=
 =?us-ascii?Q?a/Mx7JYlJL0Y8iMhVRlAeyKdc85act4Z4vyWte6sy5e0T8kWMtxB4JoH0q/Y?=
 =?us-ascii?Q?BuzYy4BlMi15odI/kbzjDn1p4WHxfpEzpwPZTt3O9hLNlrq81ct288qzZ9uM?=
 =?us-ascii?Q?Y3bZbb8K5ABj7SYQ0spuR1q81AwKlHx5NBhWccIsNELR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a903ea-5cab-4eeb-35a8-08de0d4bb620
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 07:06:36.1854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AZtKMj2KUzhMdK3tNRxsN1H1CpnQuDEwCzm48dEHlqEI+aU1GQBvyx7ypElGLVvREivw1HAfXsjRMCXqLS4UUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760684803; x=1792220803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cxwzVnXI9bFSzAcQVlhGf8NYWf5Mnu1KsvhFyFUzvuY=;
 b=mJG4ItmfMuRPNZTOY741ugWL+CeBOSprfrUZ55D/0dk47Zurexz/lSDe
 uRoo54H2RogujVDfuF/s++7FPFsi8TKSngNp+kJrdzzQdNgJDklf+Zbxo
 aNSIJY1JPUCf8+CcKfPZO0VCL+0VS17AO1WbyRc9M7R6OzB8j/rltZMzA
 euQdgsYdkCRHnroz9da9mzu+NcVwG8+x3rRI1p3B0mPvz5I+xsyM5Gbxb
 BHFxBiSceybYvzmSNCx5RnHdFx1UyZ+wkW8SrcUoto8kIAhsIWPmL+cE9
 t43eVE15Fd3choSJOrQfCadM7uqsRLEoU2uVFdPQ6kWiqTWElBFcI9lCf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mJG4Itmf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix destination CGU
 for dual complex E825
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 29 September 2025 20:59
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-net] ice: fix destination CGU fo=
r dual complex E825
>
> On dual complex E825, only complex 0 has functional CGU (Clock Generation=
 Unit), powering all the PHYs.
> SBQ (Side Band Queue) destination device 'cgu' in current implementation =
points to CGU on current complex and, in order to access primary CGU from t=
he secondary complex, the driver should use 'cgu_peer' as a destination dev=
ice in read/write CGU registers operations.
>
> Define new 'cgu_peer' (15) as RDA (Remote Device Access) client over SB-I=
OSF interface and use it as device target when accessing CGU from secondary=
 complex.
>
> This problem has been identified when working on recovery clock enablemen=
t [1]. In existing implementation for E825 devices, only PF0, which is cloc=
k owner, is involved in CGU configuration, thus the problem was not exposed=
 to the user.
>
> [1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2025090515=
0947.871566-1-grzegorz.nitka@intel.com/
>
> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 device=
s")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <Arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2:
> - rebased
> - fixed code style coomments (skipped redundant 'else', improved
>  'Return'
>  description in function doc-string)
> ---
> drivers/net/ethernet/intel/ice/ice_common.c  | 26 ++++++++++++++++++--  d=
rivers/net/ethernet/intel/ice/ice_sbq_cmd.h |  1 +
> 2 files changed, 25 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
