Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJ/OKaSkAWpKhAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:43:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 010F350B2C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FF488116B;
	Mon, 11 May 2026 09:42:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7RTR4Bi0Vlj1; Mon, 11 May 2026 09:42:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C97D08116E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778492577;
	bh=uPI+gd9RUUEZP8k6okc++/S8CDnjTLHHBPXZEMvZ/is=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0q6OFdV4ioWg3s5+hxHtBCJXvl6WN4gfFeeycF0pYq0Jm80omBKIHA97gq9rHLkYA
	 7mqlHJV990MWNG5bVqDBGWCPvVujEEpMxNVDxDag0+TOtkJgzNVtWPQzgPG1ICKV/b
	 ZtLe7gdfEvYDCRRbmtCMZLzJ8/jkMzu+N2zWI779l3SwAxG2Rk/S0wwudMd+HuWSP1
	 ZxRS157mJiPH79QLXFAK+W58nVRbcGu+87CnUxvvEgx5Zc04zYFNsTismLfHWxGbn0
	 qDB6FXU4CWoJGeCUN1e/JvSWd9QYl6kegYDPKPTGCZ0ymDOwgkXuzaAtilbP0bhCE8
	 tsulagNI3GC+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C97D08116E;
	Mon, 11 May 2026 09:42:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E5E21223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D769281169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:42:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6pfn2nx77nXy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:42:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B623581167
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B623581167
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B623581167
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:42:54 +0000 (UTC)
X-CSE-ConnectionGUID: pCzkfPj+S3iP43i90DVb1Q==
X-CSE-MsgGUID: 8RanTzTIQu+s2lu3xHZ0bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="79236896"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="79236896"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:42:54 -0700
X-CSE-ConnectionGUID: qNsm/EhSTwOzCipQHtFajw==
X-CSE-MsgGUID: VzrVK65MSVeN8wvT4ZFeWA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:42:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:42:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 02:42:53 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.21) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:42:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qv+yae4ITZuiS1aBsPnGAybBr5C5W5CYrMpOIDKyvDeUL3gvTmBnU7KHsWmIFbiVOuD0So8DjFjZoXKD+XZrKz+I+Pt3nPgm8RMV2+VKSRI2L2RSrOmkQDUpGrxQDDQetqaBkmoNt03EqgzT3d7WdYyW1iCW99+dzZ+HovOO3PvGWjanqPRpqAI3HgCqt58XwRZRgwrdWmQEzy2FuF0CdZFFw7qElZk8NiKzxo3I+4X3nkuajVsHbfUMMoZfSM/AGmHJQWXyWzRKP0p30kd5Gm7LbQ8ebqCP7KvuL3ZOskchvzbmyHz43sh61dwjI1ecFl+mmqnmAY7vPJ8z6/MS6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPI+gd9RUUEZP8k6okc++/S8CDnjTLHHBPXZEMvZ/is=;
 b=K8AfoZh5n7H84/bZDZGFRIrNkuXYWqyRdReQkHNwUo3i8vQeHr9SJ+30YWMlJTkEobrIyfv2VDuxZ757UvgQItfDPshBMpi8dHlN6Bjdz3MPF12k3bfkWANW2VGzEYzHO+MFArOjyG88URGgE0zqtJ2jJozjA4WnJ4X6+YkRDcFmc9Pcac92OrJ0ayoBkdTZZWFLqpsISknX/VOe9mlIbFUe5F3eHOqRLVWeauAomJo8iWaAzeNwAzhLjvQ2bYhF7GFRmOA42dkt0rUYfGazpO/Dbqp/4oaP2FluG57Uiqd/+4U9fujZl7cwiPy+R4Hju5r6oIx7TZLsUicgjtnBLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by SJ5PPF0FD67B0BC.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::80f) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 09:42:51 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::62a:1a7c:6360:a580]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::62a:1a7c:6360:a580%8]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 09:42:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [PATCH iwl-net] ice: suppress DPLL errors during reset recovery
Thread-Index: AQHc4SFJjM4+nx8QSECXpAxkQ1KxnbYIkr7g
Date: Mon, 11 May 2026 09:42:50 +0000
Message-ID: <DS4PPF7551E6552897778E87A1F3649C8E8E5382@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20260511083841.1078696-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260511083841.1078696-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|SJ5PPF0FD67B0BC:EE_
x-ms-office365-filtering-correlation-id: 47302eb2-99e4-4035-5834-08deaf41aaea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: cge2e7rYX9uoEMs4UofJpbRYUpCFImOEzmn5ob6ayXy+TNOTSX+uRTWz+dH/Ki55ai8Jg35DsztJ38g7wqB7y+jtoGC1vSgJuYvm6H8wGO9DBs4qzXR7Pr+FYCrrbnlFr0io3f/S6c8g55JviLhV8k49nxh9S2geKL+eArHAlTA1EgY5XjdYR2UtuDxL6+8jzITx9fas0ZkkeZ0MwNKz2n1R3KvD+09r053RCdMA1jlB/EowEjzoV8JjCSjb086V4CbAdy5J7175XK2bMypvl3BJxJnwe4VQsZuqJdkQhQnOKcqxjmTFpG+zvWOFk+I8MwMu4KwpTDJ51VA81MnSDmUyC/dHp8rSV21/VrwrtYfhepnSXj9cNjyLCSk+He6r8DXozA4Fo8LAwAyEcPrh3jp0L7j9AcrLxuEuq4wgFFRfrKekcYS3OJQrsXSFpsmIqzabQS5vIfLPzo+G/V897lEcNlRdPZweyZMp64YKCGFGT3JRLNFhsvgfuG8m+BbyFUFSDgKPzHvuO9v+p6zrjwZd8xGJWcJi5fBXdlNRW4O1MDdQgCu6nOBcxW0Ywy6l5qOGWQ2gqJspF4IdWuRgB11tFBV3SY3JlmuZUgK7aj+ZC06YkJL3C8ONCQJPdxbWjy1cJ8PO9CQnYsUOdGkdo1n308raguxJRXNapzItTVGq1LoWL+DHgTVahYAUooxlnyNadg8X/HEK0cD+ey4zT/kxBV3qOLtyhu/7c3NSIPtFrFJ6xYTJhp7T0jkzqkym
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E1JUP8Lmp3b/Bqg7jCoxBV0sSZlhb/tORZPYp8/uj9kUNFkNN/OpAjlgK1+/?=
 =?us-ascii?Q?zKpHcVRVRzrnMqDxlffbHer6r177BRgphnvimzTpUmI8oAxSMGkTYP+HDAV9?=
 =?us-ascii?Q?ZHDktWa6XU5C6if3PCpDxwMx/K80hB2cQdu58NoksxB5ZfCzyBKV0ZjhIZBs?=
 =?us-ascii?Q?ZGpLlIjrJSj7G9NzOSBWZ+OYZt14Y0IgwWPe7qBw+ZKAJS0D7Nh5YE8fpmKw?=
 =?us-ascii?Q?DRqMoAoQXDNxoumTr9e8FuK7D/khH94mQBUS11aiQRvL9iJ7b7KMWE9B5zHB?=
 =?us-ascii?Q?utgmAjnK+qxaYl4R0PbMBeQjcAf/Fz0wEc8X9faIoUp+LX7z/i4weVVpwrMs?=
 =?us-ascii?Q?lDraet5WEV/bM+vxv5vjVn7/B6SF6ei9t2KS01A5bQQbtASzXlgB1ryH3n2g?=
 =?us-ascii?Q?5c8HiSPzm0NeVBkw7SP/J+EwCrrZQTg2LNzopl4VRG00FRT3yZqin1IsVj61?=
 =?us-ascii?Q?Mv6ugzt9hSoDN+2LPckDYy+56G0U2png+4UF0WabLFVmzvyaUClq0q8D3B7f?=
 =?us-ascii?Q?3hvp3sDY+kdlJtUlCcwZ/jM8eAWq+KYZTjH0CKB6WfK3p5Wm3ktEbjb+/UMq?=
 =?us-ascii?Q?EBhklfkscwhWyVaXXQmxNDXWeVD6uG3W5JSGZvcVMQsY1Zy3l+JKeqqTNajV?=
 =?us-ascii?Q?BfEAFg03m9Wz95LGmRWSVJ6fIjpw4YFBjvi8NLWbifqk8IHT/0Ivi9aVwBz6?=
 =?us-ascii?Q?9+e2FFc3gKzmF5USt5eEJxxNThSnQeHM2Uk4Mo32rcBBNdXapqLsP0s4Q++D?=
 =?us-ascii?Q?8aTLFhQG1rYE6V0Q6TG/NFxsDFfW6zZYKfrrv2nmff3TFbhllwhxyeJgUbAm?=
 =?us-ascii?Q?gnSJfErGCgMlbegtCZrRyMDp6yl1AAsYbkBisY78Uo6RQotmCG6hE/lf6yyw?=
 =?us-ascii?Q?ILpS+i27QvpqsVB+oEb6VJgKUMd1sAiLobaEgL5WLkjq3B+wvMtLpehStRMX?=
 =?us-ascii?Q?+NNAQMJLcZdn1lC1/MsyV8gxvAI480jak9RvRGB2CtsiKTlH6KxhVayZP1d3?=
 =?us-ascii?Q?yxBjbk25spmntBfXg7QrgVY0yQUU7v+0dVxFTinruq3ONe6aohZ3ra96ETP+?=
 =?us-ascii?Q?9EjOhdtsIpszVLNPGvwgX3M74/Fr4p58GFLw+/lR533AOvslRoyyOZgqh/Hk?=
 =?us-ascii?Q?Bxj/WgaBOGTdePgcfXwHRpWDWZkEbxxGkQXtivvIJ/m8hKR73MYLgpTMu9ze?=
 =?us-ascii?Q?XItMy6NUq1VQbgrq0Ii4hjWiH1sVsRURqR+E9u5Zt3JoR+5fNj5xfXpF1Znz?=
 =?us-ascii?Q?rip1sdEN4phuJ5zomHFU3NQnTMtl77Nq7jU3BY+wCG0WSJ2UalWP1Ysz7kcd?=
 =?us-ascii?Q?TPTUE/Tk0IwVzmc4cM+UiBnuabf6t6c1qfoMNt9QfK82QX1ibA50CCaEcx4l?=
 =?us-ascii?Q?yqj8Xv6x8SJ0v/KNmvI/txGF7QATBsW36fh0NG+NaK+GcJOjpa8Ai0OoHuEJ?=
 =?us-ascii?Q?2TYDbFywt6vdVmgvsaJl2m+jWzRmDH4HIdHDM1q3xct6zrTONBIYiSpdr5Kf?=
 =?us-ascii?Q?BSzVa8FQ0HN24Vac4phPnmruMUKa8FOoJwNyGz8RDUqBUesbVfKPJD8V9P1v?=
 =?us-ascii?Q?555awYzwh79MrdpBD9JbUnvfHmk5njsRvCkeh8OdPcojr8amlocJ5iPdj9cU?=
 =?us-ascii?Q?rdYd0NiVLwy6jv6jckmQNRSE2hTafi+enHHKU6PWN0VMIMxge40xfnxnaUuZ?=
 =?us-ascii?Q?2XTmZIdSH2U/P8jc2rHV8aFZEZ5nNEYCwuNxmazQ1G52Uli1hFG2RZHnjpJS?=
 =?us-ascii?Q?gDMQ0HoGYyJazIy2RhdIwQoc9YXJ35I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Eaj0l94WywwPglvQKf7Xy0CwJNewaapzoI4x+KSYlSou6HuIIlBLoXpmOKkXNvQtD9XYsjZnehqW8QbpqCxc6P27WI3dxGYnr/C3OPYLlwUfI5huXX+IQ3LzU4QoLGd9YOlKStkCzMRcLvO3PWsjC4qZEB9dBdd2XHY4xKP96ZCnw/cmxjFteia/99MU2FhOXxqsU9SaoWYrApHi/zNS9z/6p4mcXMJaSdj0I+/pX6wG1R5nCGSMoid9LC60F0jDOA1TP4iiWj/ccWmF20dC+px16ioVZsfoitiZ+hnqU9JAKh5q2/bayG1wtyjDoHjfFSZt8WEoTOkXJ+vMkFf8yQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47302eb2-99e4-4035-5834-08deaf41aaea
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 09:42:50.8187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lnW0/nAtJnUgicFkeH6Sc/D4/lE2J/ZTNGFnWHGLAXPFFqCe7gwkFz9CRVzgiUibQnpeHzb0w7vkX2u4AyDbNkGsBjBe19qjurcydpBMHe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0FD67B0BC
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778492575; x=1810028575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SVRQna7z1zk0iNIbBoxzuT2Lp/HH906jIOOSFSkMJlE=;
 b=oDdpWXB1gaAd1Zgm5Lqdks8AuI9ImzCSB94drLePL2ITWm0aHFbXHHtW
 46VKbM6LG+j4O6aW3dh07h2PV3DLn1ZVoe8IkK3t72rMOMqppkSabXXq/
 hibedwQ/g5p5iiOh4Ll7m4hykZ7Z3Y5Ne+4t/2thalH+Jd2hgEYisX9+L
 MwzIFaEvT9JYk6iERStk2kQZP/bmSHZDlOxseFIzl98N1Ntc/HpAzlYGT
 xZ9k1Q33IC0bAIlkUsiZAHl7cwOaOQJ0HDZAkGFgJXFWnahPg40I5bj+0
 U5pXGRCCe9dmEPx3SJIXSkdwax5kMukIC5py3hgyZaTYN7nEiVe6zVuAg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oDdpWXB1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: suppress DPLL errors
 during reset recovery
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
X-Rspamd-Queue-Id: 010F350B2C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,DS4PPF7551E6552.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> Sent: Monday, May 11, 2026 10:38 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>
> Subject: [PATCH iwl-net] ice: suppress DPLL errors during reset
> recovery
>=20
> During reset recovery, the admin queue returns EBUSY which is expected
> behavior. However, the DPLL subsystem was logging these as errors and
> incrementing the error counter, potentially leading to unnecessary
> warnings and even disabling the DPLL periodic worker if the threshold
> was reached.
>=20
> Suppress error logging and error counter increments when the admin
> queue returns EBUSY, as this is expected during reset recovery and not
> a real failure condition.
>=20
> test case:
> - ethtool --reset eth3 irq-shared dma-shared filter-shared offload-
> shared mac-shared phy-shared ram-shared
> - observe if dmesg EBUSY errors are gone
>=20
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 0704e92ab043..78b8836b534b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -784,7 +784,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf,
> struct ice_dpll_pin *pin,
>  				   ret,
>  				   libie_aq_str(pf-
> >hw.adminq.sq_last_status),
>  				   pin_type_name[pin_type], pin->idx);
> -	else
> +	else if (pf->hw.adminq.sq_last_status !=3D LIBIE_AQ_RC_EBUSY)
>  		dev_err_ratelimited(ice_pf_to_dev(pf),
>  				    "err:%d %s failed to update %s
> pin:%u\n",
>  				    ret,
> @@ -2883,10 +2883,12 @@ ice_dpll_update_state(struct ice_pf *pf,
> struct ice_dpll *d, bool init)
>  		d->dpll_idx, d->prev_input_idx, d->input_idx,
>  		d->dpll_state, d->prev_dpll_state, d->mode);
>  	if (ret) {
> -		dev_err(ice_pf_to_dev(pf),
> -			"update dpll=3D%d state failed, ret=3D%d %s\n",
> -			d->dpll_idx, ret,
> -			libie_aq_str(pf->hw.adminq.sq_last_status));
> +		/* EBUSY is expected during reset recovery, don't log
> error */
> +		if (pf->hw.adminq.sq_last_status !=3D LIBIE_AQ_RC_EBUSY)
> +			dev_err(ice_pf_to_dev(pf),
> +				"update dpll=3D%d state failed, ret=3D%d %s\n",
> +				d->dpll_idx, ret,
> +				libie_aq_str(pf-
> >hw.adminq.sq_last_status));
>  		return ret;
>  	}
>  	if (init) {
> @@ -2955,7 +2957,9 @@ static void ice_dpll_periodic_work(struct
> kthread_work *work)
>  	    d->periodic_counter % dp->phase_offset_monitor_period =3D=3D 0)
>  		ret =3D ice_dpll_pps_update_phase_offsets(pf,
> &phase_offset_ntf);
>  	if (ret) {
> -		d->cgu_state_acq_err_num++;
> +		/* EBUSY is expected during reset recovery */
> +		if (pf->hw.adminq.sq_last_status !=3D LIBIE_AQ_RC_EBUSY)
> +			d->cgu_state_acq_err_num++;
>  		/* stop rescheduling this worker */
>  		if (d->cgu_state_acq_err_num >
>  		    ICE_CGU_STATE_ACQ_ERR_THRESHOLD) {
>=20
> base-commit: 80b47e88f7ead00b0795e9f2833f1d0cafe11d90
> prerequisite-patch-id: 45f595ded339d5f7feea2ea7ff196db3c08e3503
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

