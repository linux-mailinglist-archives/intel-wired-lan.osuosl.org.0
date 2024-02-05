Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA7784A16D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 18:55:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 861DA4048E;
	Mon,  5 Feb 2024 17:55:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 861DA4048E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707155714;
	bh=fzeTW8k7f0C5iccIbVuOt9o4lz8GzQruVFF5N8xqzr8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eohFilR1Pfpz25oXijpTEN8ssK8F7KTakp++4Za0Yz9z+lGk4uiybUtZDn1IXpSMd
	 ugypgYoH42PtVQvDqbRgPrz7ZU6vshcSh3vdqQhtDU4rczEAxVelqId5JuCaFPZjdm
	 OsHkyRonMjmcoAwpkDGGRq/lPY0l09D/Ji6pGNckhfzTgOUkYQI9h5bZn2YdRpOUaP
	 dTnVEiuPsP+lZX0aO9Nabt4C4x9tCUccq8r7YRONevsAAnB8kQ/vZyL7iQN1Q+mnrD
	 HR9ZT8wTIRWoqHnhBNh6BNhSRhkpWoscdbCGmjVmwpZ4zZU84zGrSesbo5IGRm4Ylg
	 AoUWMxwh+UGIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GuxbxjuGCLt; Mon,  5 Feb 2024 17:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 395D640162;
	Mon,  5 Feb 2024 17:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 395D640162
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2FB91BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 17:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C22CA81DE6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 17:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C22CA81DE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0Z4gby2Q4MW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 17:55:07 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 05 Feb 2024 17:55:07 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AA7D81DE5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AA7D81DE5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 17:55:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="721059"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="721059"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 09:47:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="825795"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 09:47:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 09:47:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 09:47:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 09:47:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 09:47:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFetlGf2PU/fkLTB1xIRjqfMakXPZsr6SLvkMUvQKW/OGUtGikrnjHW8M5O3KjXD/ZjSG/Fdn8k3ZEeOLa+QjPfWJKEdp1EDAC58fyDjVc1VCx0izeYUOSiswYHI7wCP/k+6yteibVcDUmk/Lb2X8xjljh+T3pTfTOa6ENq+E0Cz+84O8vYMDAE41QP9ztLzD84MiiKK4poJOQSuI+jTinsFW8lyltyIMrrzFKhi7sYuITj9d91NSPUqVArm/Uz8CUTBR6U7ik6P5B7Itnbp9kJssNpL5lZjxANs2RYdPFQvILZApn2q7b+bqimdlZ35vsACDJ+NCG1JWFRphmAOVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fzeTW8k7f0C5iccIbVuOt9o4lz8GzQruVFF5N8xqzr8=;
 b=E7gBoCD6inXLg2DCzFh5tluw9T7PDK5Rx8OrHVHsnAlbt1AbF/sIL4unU90lmzgILnXwrsOk1voW4WBi/4qI6vnk44odWHCgrsTpTS8TgIwo+Kjv1938Nd83T1p/+Z6L5UUJZt/x8XQ72scjmSmLjavGvSUIHfziXR+Kaf648vaOdM20Ch4684SEIrSZwHFOvLW7LJwJB3OCHuEjNdpKdFmWCraEMDx2voovN72tdaaz0Boufr+KahwO9V/qHiWSJx8Z35pp3WxsgEHlfapMgU52nsMWMibr4bzWCDHcRREedO+rtUcIRZhsW8wSu24Ov6QXcchJkCqOUvrRa5Zl/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB6859.namprd11.prod.outlook.com (2603:10b6:510:1ef::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 17:47:53 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7249.035; Mon, 5 Feb 2024
 17:47:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ixgbe: Rearrange args
 to fix reverse Christmas tree
Thread-Index: AQHaVDa8om6x4EgqV0qf8m/NUipv57D8DhJQ
Date: Mon, 5 Feb 2024 17:47:53 +0000
Message-ID: <CYYPR11MB842995E48E57419575B033E4BD472@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240131110419.29161-1-jedrzej.jagielski@intel.com>
 <20240131110419.29161-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20240131110419.29161-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB6859:EE_
x-ms-office365-filtering-correlation-id: 9c17ddab-fee8-41ee-bde4-08dc26729457
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RTficuyqVPnvKcPRXffskLYMUkCWxgvRJxxep7cNwCssLqW66HNHxelYfk5nNltxvLyFOgpU0gbi0pFg/8k4MxW8yp5l1yPJaWbPnVGfiueiLmB++ENM+lgoeNM4qyLTvPGleTZw6f/we/aY0WDJYHhik1hJLvmQuMXia+KbW0WnT0j9o3kGOsUC1D7QC+auoUp3A/J/UA+14HOT5rtji4dB+wcJ1NzhWAE8Me667Q30HlaznljToPsGa1809WU7V6vV+UOLwJcll63pWw+8vkWb6wNTlZE0u9f5MCIDL6shrFobM3jyXsbmt6NQZgGAzdq8pNey6ObJNouoH58nbnGWGTOKgyJEPu/1IOdqoASZHau8NnFEvFMAIktIDluE5k3F3aF0Zicp/eqyFwop6PCyUhMOkO703uZdGch/peTrn7S4tA44JBLcfCTJMkYol56TylgdmE1sJlaTWKYj/rzH29hh5lGXXxf+KkgR1oTq+k7bdQ5WBFD0ektCe2f4pzH6YO7n+/jGr+xmNmlitpFpUPYiyerZh8ZGR7fCroiasYqIGzzCXyqR5X6WPZpZMmu2TgRO886PspMloeP4klniSwqc3w7rVky1W0KqCItboTieLWr8RnGlzlyQ0BIG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(376002)(346002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(83380400001)(4326008)(8936002)(38100700002)(122000001)(52536014)(8676002)(478600001)(66556008)(54906003)(66476007)(64756008)(76116006)(66446008)(110136005)(82960400001)(316002)(66946007)(2906002)(5660300002)(71200400001)(26005)(107886003)(6506007)(7696005)(9686003)(53546011)(38070700009)(41300700001)(86362001)(33656002)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yp/XZp9xjZMXbQc1VJhhnvWnP+y62TYdPpZcHJasnjsOBm/GZKQXbTp7zvIP?=
 =?us-ascii?Q?MZuV6WJSPMwybO8qic3msOWWWsqbqWm2enM8eDNDJM1yhFa3wC2WfOewkyJ/?=
 =?us-ascii?Q?v1WYOnwQ8speZRfjqEwQl+jWKWgpFZNedC7a9MPBMSYmqYlz1A/Cayw/llp+?=
 =?us-ascii?Q?GiEM29uZ8DUn8wI1HZ08H3x3wMd/fBehMVxbVz/aleLkrwMydBYCpxRiC6yb?=
 =?us-ascii?Q?gvhh9Zy1AQEK6j0wBIEqep5b4TmfyNNFdFz3/RyGoSgiJR3N08mzCTYGNmni?=
 =?us-ascii?Q?gQkAx9dcMsknWXrUTE2Yw7dkmIb/iKC9kCzT9xJHYk1NhRBPWG1QQd+QSrVk?=
 =?us-ascii?Q?ad76zSY3dETL+Voca78lOe071lzgqxUm1l6yDlih3jZsDTmfFHM7VXwvLCJx?=
 =?us-ascii?Q?ngZKY/rjBD2n+X9I40Ovw1hthkolvMpblzvTDXpH5+iZI9MBkhYvRp1M/7ny?=
 =?us-ascii?Q?UuxnwjEhwL8OxZ5n9QP4izz08Zb0Z5Zd+wo3Gns1/CZRHA2yAmHXpx9+yM1H?=
 =?us-ascii?Q?2NeItwg5paXf8Wb1heKVnONqbEUMH5OKz9EhAQZIFk4+YjuUO9g0gzRkxlWY?=
 =?us-ascii?Q?+K5aOfyVsRJYVqedUFBlTbwnvWWwYeMCUPm8oOQjpPDktiLhVuDEJXYR86YX?=
 =?us-ascii?Q?wmbbruF+1EBdIlJE4FK9V2UghksA8dfDICTRjgXcktDemmHwWjj0jbtyqA9o?=
 =?us-ascii?Q?CPBK1KeOc9r2e84Wr7+JVPvUT+BweFkkvFnmVTB5RMgO3wXAeTGE2z9EUAMS?=
 =?us-ascii?Q?MRLP6fdK2uD7qjkT5UvNsdOSJCv8Hf8H9Tq18qvz8AmWiqHud4Ru44hF1VYX?=
 =?us-ascii?Q?IckXBtTdyraUnCwd0n/fbmT/VwOpKqlPV2ihIcEON8/zx2pjhEs25UoJYnel?=
 =?us-ascii?Q?ZZSiWBc5MJX1izfeoxbqZqtPPV/O6OQRmZVK46QrZAiEb/bq2xkR1m4t9mIJ?=
 =?us-ascii?Q?PnuDn7uTQ65DozQ/4HHblS+D561Vused81oFtJ/nhmEsO9far8p0lfmUe2cL?=
 =?us-ascii?Q?Gx3tSS0IQbhG9FhiRpuxqk1zGgwTz9GUvV1xZJm1+XoKZYrsZQrW9DLvPTWm?=
 =?us-ascii?Q?Vu4acVEN3OWB+WYGdW69jMScxIZvMFUJJmGRuMovPoLe2w9wrM2xcHFEytP9?=
 =?us-ascii?Q?gQxXQ90YLZgK3V0BSipjJvBKROPif/E2M9QVEuDslZzQL1n160wAdJLmaHZW?=
 =?us-ascii?Q?+KwbtxqieRu2Fk9wF3iYPcsM8G59yqLpHxxdf94kBdJ1FUbperkVyvfI1nuR?=
 =?us-ascii?Q?YaGGgQAIRNt1KgURL2TLIkcZtJNrxLDIeNdBaYfsr0XlTzsO4gmsIbn8Iytn?=
 =?us-ascii?Q?4CnG9Qosnt8V9Iw/xvLwimovjoYbojnLWIFYDceCfWOldBviPbELTgRJUhMh?=
 =?us-ascii?Q?mZWIZ28A6CmTwtPqK9FwuvAeY77wThnS0BJGibx4zyHyMSJjHi2r84xh8n8L?=
 =?us-ascii?Q?mpeQnuen8UwfBylEZXqHAiqszuYd0aQiPDLRC1Cwlo7Fw5GhOdCgVaV1GqNc?=
 =?us-ascii?Q?Bx2WknM85hQCDVdI+M4x/OXv8z3MTB+zWdO9mdwNXFNyYm/EmgCeB0VrPCc/?=
 =?us-ascii?Q?lzPDnZozTf9FYzh+k2Xv92VLHspdsH7tEG/WT0QCUc3HceQh78elMLhEvH9q?=
 =?us-ascii?Q?fA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c17ddab-fee8-41ee-bde4-08dc26729457
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 17:47:53.6344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e/FlOX9GdaoxKxMqDQtBZND4ckn6YbUl/GnpZSPG0HF+QjYkwAggG00usigZSXoRA4IMSuDIVQ79zJdO9Nb1tHhCPUSSYIAQvf1eHK9OZDZM+GtRwujTn7lVRqw19FTm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6859
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707155707; x=1738691707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wxLr33d/4MM3gkRKHCB8WXsW93kLBLbh/jVwDKkkRek=;
 b=GFGZ3F/LmEU7gYwerrqtW5XXITRnsYMk/ysskAFCMle/RejhaM3nPt4r
 7fLXrx2lc91fEmjjz3HfbI2eEPwCNHG9HPDWbW8uLDS6ChPH1pvNSuKSg
 p1U1n8avUGCF4B/4zXFwAaPpYThVQofG8hIiXApHe5fjWlAp86gXE8q5J
 CtLiPM++Sp7kZbtdiRz/VTqo1gE0Crv4k7XUP3S2A6QaV1A1NEPBPw0Sd
 4TOT2sakqDDRVHyUmKG87mW/ubkJ9mTsa+RvIag6satlrmJv+HZNIXoOh
 VdyRx/9M6lfNxnVteZo+s5k2tFEMhbAlGdE8vHZikGZO8sHFzDjFyRAaw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GFGZ3F/L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ixgbe: Rearrange args
 to fix reverse Christmas tree
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: Wednesday, January 31, 2024 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Simon Horman <horms@=
kernel.org>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ixgbe: Rearrange args =
to fix reverse Christmas tree
>
> Clean up the code touched during type conversion by the previous patch
> of the series.
>
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_82598.c    | 14 ++--
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    | 41 ++++++------
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 66 +++++++++----------
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 54 +++++++--------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c | 12 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 50 +++++++-------
>  7 files changed, 120 insertions(+), 119 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

