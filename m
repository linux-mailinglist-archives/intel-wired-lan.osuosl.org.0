Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FBC7D765D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 23:07:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7112640567;
	Wed, 25 Oct 2023 21:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7112640567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698268045;
	bh=fZqRbiMe85wIexPA9dPyMehn+D/sv37jvYpD54idT70=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rU7G508TgV/GGEKIjBKBMC+Yyyouj7ETOkfb+BC0wmjz9RBeAkWWYShctDw7dZ8/i
	 a401Ntjk2MrLLFcBZCo+WrvaEQ9rr41FCCx2XQ+CF9YadFgs7BeHOc/7ucTqUdnUjC
	 dY23k7/iR+PB6MYCJYRh7AdjH0h87uns1+oLtw6eQg5kWgmdOWe2Ig8/JSxI9oy2dL
	 rnmgaq4HEilHQ7FkxazlkBkbLVQBqvRdK9zuyuG9KXOw5mNzvTA7EV+jXIqukbvggZ
	 2q4SIIcmwbHXdnRlDEymFjo4pZmCLM45zEScxrWxB8yIhX3EAqE7vNI6VrTZcqtuN4
	 7rfX18TLRgDPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mH5kwUN_-wXN; Wed, 25 Oct 2023 21:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A51740540;
	Wed, 25 Oct 2023 21:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A51740540
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B04781BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 850A0418B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:07:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 850A0418B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5COeHtCd44M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 21:07:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6EFA1418B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 21:07:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EFA1418B0
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="367613051"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="367613051"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 14:07:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="824776517"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="824776517"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 14:07:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 14:07:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 14:07:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 14:07:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bk+s5uM5zNsDlp2SDTyDaHYa3OSOoNYYo58nqZIK75661l6n42h6wGMO45GiQ6ODXEJXgDx5xReDlZDyH8dQwxg8RRoiiAjWF7tEonovG/RtGqUooqNHZh2PX0TIvlKGmoMvDSy4zNz2Cqm8ZM6/nOce0fE2IK7ecGHNihUHDU2L5SkXnKPtvREA6jqb1mcZEfanwXhE9WiLaIekjaaYUGpmuz6dkDyZvdDyeD99g1veuqg1FF0HmO/iuygRM9gfv7KSwBgodcnAi5iOsPtsOzFipAk3GmMwX3VCd3D5XLF7cIKN2pJSXN72Dubdqlp8A4mQ1BTXeQC+9xvpKcUnLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e43MvYfpwj81Da4Wt8k7UovDzniTJkS9EQxupiAD6fY=;
 b=Q2NPU8Rx9TWdRaXiBECnfXM0KCqReZiVN6t5EJ1oRXkeX+heMDycbhJ9AAl4Qic0fhc2mwczfajud/z/F2R1/pyHVibHArHSpKTJmOURQo7G/JXkF7p//prwr+ygEpaiTNapLKJpEWXCgsa6iMNSqBTffg55MxrWciVc/ewxajFwN8vAMHiM5iBDNqlU96mGuYpLaDE9dMyJhZJ/pm1NOcGLVuD1ZwUCAbCjyjF9J/Rh2X2vkkEnqckTK8wLIYEOHmtou1nWrKX19qU177PjoW5VAfX3JYYFS/YUypLAIUPskQOgAgcOtyu94+Drt6jNBNv/2b+AcD5deJutdEj4+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4218.namprd11.prod.outlook.com (2603:10b6:5:201::15)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 21:07:09 +0000
Received: from DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93]) by DM6PR11MB4218.namprd11.prod.outlook.com
 ([fe80::1c69:1b8b:5fd7:2e93%3]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 21:07:09 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 5/6] ice: Remove redundant
 zeroing of the fields.
Thread-Index: AQHaAhpqxajGCJUWak6z3N4spGgWBLBbCgRg
Date: Wed, 25 Oct 2023 21:07:09 +0000
Message-ID: <DM6PR11MB42181D85661E95AD51136CB482DEA@DM6PR11MB4218.namprd11.prod.outlook.com>
References: <20231018231643.2356-1-paul.greenwalt@intel.com>
 <20231018231643.2356-6-paul.greenwalt@intel.com>
In-Reply-To: <20231018231643.2356-6-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4218:EE_|BL1PR11MB5256:EE_
x-ms-office365-filtering-correlation-id: 5460341c-a99e-49a1-829f-08dbd59e5a3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NLnRMeRNKil3XqmywEXxFsf2AYpNIbQZIaxLvRQ9Oq41/TPYzvt7VgaZvOTnJ3PqYk62nnkpuww70gwYYcPv5pfgIqLtsXeN9fIXZ06nV5POBhhd0/xtkMWh2UNPkP17g+XmlCTw6NtuUX5XvVTHAXSToemT80E5GlfGNLxI9EJAjepiuS06vgJ0s6RTc9u2A6l1s+M+iPNBr4PO50GbvcMlTJ88Esri8SysJgykg2ihxxtXJCxFhH9J9KhtT3XIDaqzTIA7ZMMuoUPsqxg+WphKvvSoT/QwQ4i985s+h/gdUKrlxcSSL1Bd8QJIlr5dciWMs5t8ETgVuu4RbEGm2Wl0wdGskjMoNTGSIW7yYPiixK0S0mRR4RAZCyTLnSVui6j8ysut6qKmynE3kTpnxle+qb5TqiJDQzrNcHWJpsBUTj91z3rRS4d37KXYzNZHnQNoJuBfyLcQkCH1wU3Hb+gkhkeX3NnfsAOGp7T8VYNLET+p0dfPLD9z8PBFJHYBTRqELrHGl5EiyRTYXIcPvyFVqd8QIFPNVRVwZ/ltUdDP1dmCJviUdLinp3lDcJjjt5mIbn5+wdx21aHbkD13XTiz+3ypjUINJstkdBogZDY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4218.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38070700009)(4744005)(2906002)(53546011)(55016003)(478600001)(5660300002)(38100700002)(4326008)(8936002)(8676002)(41300700001)(66446008)(52536014)(66476007)(33656002)(66946007)(6506007)(86362001)(54906003)(71200400001)(110136005)(26005)(7696005)(9686003)(66556008)(76116006)(82960400001)(122000001)(64756008)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lY6mWVZDj4VlBh7Jfx90+hxjO9JBfmaUFarD4TkQHPk8sVcrb8DuHBlsLlR3?=
 =?us-ascii?Q?/H4i2RNELlktzGJv64jWQAV+dOX9VMl+wPD/zSbm9XQU8xTnwtiqiqQ5y1v1?=
 =?us-ascii?Q?+ismVVip5YJ0XeRfIkxW2DaUBPoMjfNfCnrO3CRdxClzD60MBl71kwbDYr/7?=
 =?us-ascii?Q?xqriHJ4kYnOkNfIOExwxJv+LXOjFca382OauXOMKuKNYpAn20IBqgaSQxua4?=
 =?us-ascii?Q?PTN80ZFcsxqB1kpSOIEqHX0sG4UAHDdJDvM8vK9fBi+ypqTHNf7lBzCHdfaV?=
 =?us-ascii?Q?F4JBNLn0EWFseipfbXubWe7rnn/O4rL252JvLgcJeMFbNcaGEnzDYAA28FAW?=
 =?us-ascii?Q?n6qqdvu23q5MSABqaVBjgs0yVG1vByr9Z+E6Ndgvep3GWhnUiNX1abYD43ib?=
 =?us-ascii?Q?w5N3cjRCMI+A8M8j6Y4THwDH+qHsKQgl40v8YqHFERHW46Ok6WXT5FkuxMTa?=
 =?us-ascii?Q?EDv5/xcGXLoCCvQfmrTsRqzEzVhVWCccoIdFHbAZggijuDXozyaYKTGnpPZ8?=
 =?us-ascii?Q?UAUxPKO2mZD9+Fw2xP8Gupsk+6B39FhzZYmiIqi2/H3P1AOE1an8Qnj403BS?=
 =?us-ascii?Q?l6NzCcVFtc+u+UrhkrWwbu7rF5fT6zkxV6ceu1au6XRhjutCnLhgGFnb9CRO?=
 =?us-ascii?Q?tGdfKhWqo8kiOXxtaAcrNpJK69ZzpFpPFc7vgDT/gPIM7L2PXP4EP4q8WmrL?=
 =?us-ascii?Q?cfBbJnntao9tlJUIgqG6jUKpCJDrK22r6zL8gTlfsqBxuWBB90rcmWzOCcXT?=
 =?us-ascii?Q?LaiYXEjvYUJk9bMFE7k9KSILJRTKlJCPjVcEUzNzfj3sq15VnU4ySIOItMFz?=
 =?us-ascii?Q?dE1OxCxFNAlF4uDoPE4784s2Tzun2fGd9D8voevMnbtBWtVYIDH3YRzPZPUr?=
 =?us-ascii?Q?hZSL8loEV4rIKWxZtmZHyGH/A7J4LUbWbut7O7NyfrOgB5x61Jr+Xq0G3m/M?=
 =?us-ascii?Q?367rDETUxHZ5N8DlJ6VLDBbHiaJakY68ODT973f0ib17vLKFJxkhSgisFk8v?=
 =?us-ascii?Q?1AqRKp8Rc4IFrpMl0r6aWKLAkWBPxjGMjj1pNATUTU87Cx8ZCcu5FjJrZZBw?=
 =?us-ascii?Q?eNd+mf8BoGdWcoHyCdMMukzq6gqN9P6vdmjS4rbLMiySXXFKQ8ac2OLygwmt?=
 =?us-ascii?Q?NOOKE2NK1ruoT4C6DrebDYVdY7lCtHxAMLseeS9fXcoH1tPuH37V26b0N9Ue?=
 =?us-ascii?Q?74DIx+Zuk72uUOoL9bSaQWufaPlQ602nqAvsSsyXvYq/UR8g+wAbgJOtjRaI?=
 =?us-ascii?Q?BqRfqeTPaJA1JgTSA/H2orRT81+vziJwr85aEEdxefhPRxpK7/992Luhk1Az?=
 =?us-ascii?Q?v4zsiuvND6rp9KUO49fn0KDLHHdR0HbJFRjGuNlgpPMm7K+Am7zwwLeQDT7L?=
 =?us-ascii?Q?IQaShAeIB5VxWY0FG4Uscumx6DuuQBEqz7YFT4o1Hzl8cC85QaEpExwisnyV?=
 =?us-ascii?Q?ltp9WD/FPA3KAD9X4S0L4ciPL5toNYlMR2+b+7Mpo1db4Oc4oBiZJD/X7Zv8?=
 =?us-ascii?Q?2n7Eo9VrraPnML4SLxnArU96odM8BQo8LlIaEhPpGXI2TrsuAEBQexb3YJ29?=
 =?us-ascii?Q?smwXk0p7umUx1vDIZi6A+bpaXitFieBD+f96IvR/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4218.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5460341c-a99e-49a1-829f-08dbd59e5a3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 21:07:09.7949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ovc7N/HfjGmiU2nHTl0yHMUK2TPHemTw4AO/XwHShXCLWyELZPfnfwLRBh/EzBvRINXDbuW+DlZFAlTVqZPI2wX1ywbJFukpAiqhNtgKtyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698268036; x=1729804036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i/0eGwpw/FmgwFTVPcsdfHE0MYw9eklLEU0GPo/KOpc=;
 b=HvsRzfaRZiz6+LwNLFnrIbkl+RmknsNBFzZuUUyBL+Ds6vz98peJLo/1
 koenaPsqDTixFDnA2ZlRb7AIvYHGibKC2iUswerplX7x7PnPhKktesRlH
 HkDTS7NLJrptDLeh/6sUI1j5qhaRAIn+2prWa/ACp1RYTo74uMwzcdp2p
 f5q4E9TrJB9QQmGEzwJeX5q5Kb4aW80mjxOuILXr3HW60jtvq/ZKVJBgk
 zbhwuC2Y3sOyuaWhovnsbFch3w7R87JLPsWqTjcLG41elFZUFM1Lvn2Dt
 LKobCz5FHZ4tms/Aua1zFTWDWI5h9KPBLH85KF1ifw5DwRc68dDeEqbo6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HvsRzfaR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 5/6] ice: Remove redundant
 zeroing of the fields.
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul
> Greenwalt
> Sent: Wednesday, October 18, 2023 4:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; Greenwalt, Paul <paul.greenwalt@intel.com>;
> netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Chmielewski, Pawel <pawel.chmielewski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 5/6] ice: Remove redundant zeroing
> of the fields.
> 
> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> 
> Remove zeroing of the fields, as all the fields are in fact initialized with zeros
> automatically
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 54 +++++++++++------------
>  1 file changed, 27 insertions(+), 27 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
