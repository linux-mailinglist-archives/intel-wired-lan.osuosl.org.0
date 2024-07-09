Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131A892B11C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 09:32:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B166740E8A;
	Tue,  9 Jul 2024 07:32:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 83-IrKEyfQVB; Tue,  9 Jul 2024 07:32:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B071140E73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720510322;
	bh=bJh6ksMptKr7tJIz2YTAzsTnIIjjE90ys546ytKpeKs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U3gEB+Dg7ZAwySTiUQWqz9tbKZYd1UXr2hy3zt47iJlUj7zz27F/FK9axJhHGoBYU
	 vMQh2l+2SV54dE+VTYOAiRUjGc8mCUSJiqOQ0GN7zFC4Q4SVIJg2qqBxQpACc42YgF
	 S6cLXrM5IQ/6qd2aBGLNOe+ZSW4573BVwHta+I5fNec04c1gJMb5JJLMDlUD+Hz9DA
	 JIvRIs8AV0F7cJMt9ruT5sQEMCRrXPhWFW+ouviMJHZ+T1iAkZkohepr9M9hXp2hqW
	 Ysi/9NOqJ8SGjqmu8DY0cBGGdk/cMUxdfOzBgqqTkBTfEZakieEItXotREaO5tLSQH
	 bV81Bw664PtNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B071140E73;
	Tue,  9 Jul 2024 07:32:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B5B91BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 249AB81326
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oXH6yF3RXAEg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 07:31:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 56039812FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56039812FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56039812FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:31:59 +0000 (UTC)
X-CSE-ConnectionGUID: ifPR1bz0RymBRJFQsiZkvw==
X-CSE-MsgGUID: lujOfjdUTFWpQcNEWAaucQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21510837"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="21510837"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 00:31:58 -0700
X-CSE-ConnectionGUID: /0jUswQpTO+8qOy4ASA+9Q==
X-CSE-MsgGUID: rD+h1MReRbuC30ldCjjsPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="52365588"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 00:31:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:31:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 00:31:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 00:31:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6zcrr+lOcOXdMbt9Kjx26tAD0OnamnMzYNy6ZCS2DsazlE7jV7Kow/JcX6bWG0Dy+tOucllDV+99W2xL27/p+cmw6uRC/0ZNy7mzhRibDiHUOcA4vUtLvl3BaRqcfGz1ui9BHlbNsg9+ZSIXOYCl7B/EJMDJ3PEzs44RFtZKLFtKNnTuwlPBx55T4TR6zIPvjmdx8HPEiZqEnNGDAWRtnsFJAnFndXq2cNPeCPT09+j4ljPVd6wgjonvnuRgJL6XgncLvSdAQ8cRJmVTpI8XpE8e7TQux38A0Otor9qxe+F/sEtXuPvOaV4ga7MRTePsUykBZG0xsRELr0vHA0qcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJh6ksMptKr7tJIz2YTAzsTnIIjjE90ys546ytKpeKs=;
 b=ni0unt+9gAPl5LmUuBYAWZkH63IDJRpNaflHo8CuN9MbFZsPaK7om4s/e1Es8MQcYybXAKKOvcftLAe5Zh6BxTVrh2l5GI9vfdAZ+54eZFQmtaiG1g8U42OZBEhQIXPvDJvS/MoMsKzLABdXnzqFgsYErGoIESBoc7bhydk249zY3mNZpYi6TjYhFWvtu70faY6uEBa98Z33DKgpieQBKCfh4UNPdqgDyDg8DlB9Jnbsnw1FxwqXK6P8wMEm76f9fwL5UulaKdyHj79IoLWBf0PxspA16asBXnhvBhyyNVcaMcTR6eOqZROyESLpMNPR7lnRUQKFVEepZEo0yurU0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Tue, 9 Jul
 2024 07:31:55 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 07:31:55 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/7] ice: Simplify bitmap
 setting in adding recipe
Thread-Index: AQHayKIW6i5ppErfikKKGgjTTCPFg7HuEs6w
Date: Tue, 9 Jul 2024 07:31:54 +0000
Message-ID: <PH0PR11MB501355F02B1F8D232DE913FC96DB2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
 <20240627145547.32621-4-marcin.szycik@linux.intel.com>
In-Reply-To: <20240627145547.32621-4-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7108:EE_
x-ms-office365-filtering-correlation-id: b492624f-4b66-4157-f481-08dc9fe93542
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?cYZTKrjLWkHaKF+gebbew6SpQQkkAwcZvKl/5PkWYpqwAzy0wW+8I9R1q6qg?=
 =?us-ascii?Q?5c1s7+DC43xbLVNaT2VcrG7leyIdFim3pzb81quuWfUNODoyL9l0OuPfSGM2?=
 =?us-ascii?Q?3qqV9SvrQUFtslusFmf/5O72IBwetNJpbHINzh0K+P4SUsX/EIXemyA78uar?=
 =?us-ascii?Q?Eb0D355vMmidIhTONLVyCeX+P3y8UT5AQkPdOhqFcNdvlHZJUMMqMRZ6/6Ao?=
 =?us-ascii?Q?ba7H8LRxXeZbK7/3uDunGE5wRqX5i1B7IZJGGc71fssAJhDYpudZzerXJuL0?=
 =?us-ascii?Q?fB7WkdHVTGiVTj2iUAk9F7T6DRVOuhnuso8iunadIqbtg8Y/028VmlLZU922?=
 =?us-ascii?Q?/jLHm43zPCcWr50eq08+pUaEyl2pyLHkzbZjaGF4LxkZz6oAQSpsqLnCWNFg?=
 =?us-ascii?Q?aK8yPrIJaKpWVglYn9/R7azAFEu92B4NpGIsl3fcegzvvuUQ/LluhNb5y2HX?=
 =?us-ascii?Q?dtqCtc1pAQTor5DWFqyLv7ucMIqJ8TER9CfI3ZAF1OOfB52Zca5TO4H1k0FK?=
 =?us-ascii?Q?XRuvFr3P89S7tDf1M9qgfnE+ZfrqMNB1sJZ/LVsYUC/M4ETURMn6zs/IUVHJ?=
 =?us-ascii?Q?KQwVXZoe6WK3Cu3Aloxq9FFywhfTU+zC1appoKhzlhidPff8IDDqtJTFnpvv?=
 =?us-ascii?Q?49Ic1R7gcjNx5/enyJzkisFpKaWtb4y7keihNdqRCJQzFqUrDCcHRaLmQcn7?=
 =?us-ascii?Q?Fx2OvDjXnlP1v53BuH8IShNHuO7KhVJbOVeSwBNh7LkWg2xt8lI3NLZ0iTcp?=
 =?us-ascii?Q?hQT0DTotQ6/ZeddLduBtuTDUBSLkF1Hk83eKwc7t/By/nq0kRHmAQGt5uAid?=
 =?us-ascii?Q?of73PIWlTvy/UgMIWKaaRNWyIQe6gau1t34u9N4DeYAq2RWY4/9+EV9x0dHS?=
 =?us-ascii?Q?JTS/pf41+3Wr9+vmIjqvAOkkf6xTBvyEFynJFurM4Skt2Rv64yDz5jpAwCDe?=
 =?us-ascii?Q?g+gMwcFx+rtChwB8OKdE/dRzlZ7u7KiZIhl6rEiNv4++LEDDNxnOD+n6pZGF?=
 =?us-ascii?Q?8XAO0gq7t4uFy1ucRd3hboEi8/T8qdJ/ICyH4FHhzCNpINXdCANO3Syz+7tX?=
 =?us-ascii?Q?y9UdSUDxHxB35S/Z1bQGNIb7V6lDTILEb2cltLzE6hDlnFdPWuVoF/hlfqwW?=
 =?us-ascii?Q?Fnv/M7q5zijPDZMPmqE1TeoWiGXC7aSFoGKregOkHvgOKrr8ZTnRJLHYQwZW?=
 =?us-ascii?Q?Dtfj/IjAtjfEobtLk3vOJWJArx4mpoOoSGhC+ddd+1m04yfL7SFXTtY9Tn9U?=
 =?us-ascii?Q?9PvZP7x9I00pjHVAdbPTQYJs36MuAKywrHiXMrp609oH5Xbm83Y2zAiZst6n?=
 =?us-ascii?Q?wLgiRhLA0r8lM/+Z5jbXe81diZ4J0M/CeC4QJX8dH4J+YIknuSHhGIM3U3cA?=
 =?us-ascii?Q?OI77P4N2sjJXNrGrolIvWzpX2rd1DC49laE6hqHpPGm9ewFuQQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?otBv3610LkJXmdsxYiOLizCkE+3ahOVbuNlJUs7R9uW6LYinu1RQqAiMKpRc?=
 =?us-ascii?Q?sotASQqgTxyqI7/gGFFMxjomw4Ch3w09Cxnj6zgBuP+DSAUVLX4SLYi7dwwK?=
 =?us-ascii?Q?leFDN44Z30rPvwbJ7o7w9tEp4m/KG3OLX4zffl+vq9KGtArae4OalzRl9l6E?=
 =?us-ascii?Q?9h193Jfw0TEQh7YfSrqElPa1nNMWMfUH2f5kBgIrHqhr88nWdQWLq5L5YFJj?=
 =?us-ascii?Q?xeDPx4lVJw2mopg+ROEwVGpqfq+9WCCGSx1zBPfhlUVgYApeJm8yCvgX0r2I?=
 =?us-ascii?Q?OjoCzRznpqCdGhBEt4t3qpBXySolSFCc2hdL5h8Mx0WkFGOcaMGfJOdgb2zm?=
 =?us-ascii?Q?FvITEy2c0NdgoZIEheZI+hSsEdW2lEPWVF0dmRnfK/2YNMupEVIUMKr5EHWg?=
 =?us-ascii?Q?mB1EMYmNmVZHH7nfXZ75MajyKif2OUIJK6Rk81SNJIMFB8sOXTsD+KRzLk4J?=
 =?us-ascii?Q?2eTBnyw9aYeg/CqsaTg+yUlRQvlgQy16nsibYtgzjNt1Ri4Oy9oD0XnuiWD4?=
 =?us-ascii?Q?JcbZSo1BDWbNuugX8TOb0u0DoRBo8hSqAlP9Ku+qDtgDdGTejnrmqY+VEAzX?=
 =?us-ascii?Q?dazPBWM4JdCQpXadtsLlCtFyJW7H81bCzeKv69r57rIIHgn17h4uWOipIuXw?=
 =?us-ascii?Q?VER9nTi5u9WUN8e27SDH9fzr/o21GgVXbkEURvRCR8p9hKefvD2cQkfJH6xT?=
 =?us-ascii?Q?MN21iaGRHp9shoYi9roBSDpbOCE62d7Fy2xh9TEp9HNqB6ok/FxQQLFKCjsG?=
 =?us-ascii?Q?UUsGSJheri0Zvigm9PD0tYP00iMdEUn5GQWHxFT5oJBYCc3Wyzj73fGAYgzo?=
 =?us-ascii?Q?izIdikPMB4avxl6JlYZT3lx5xuFtdBpCefBP8Exk4nrs8bmozdIB+P6d575w?=
 =?us-ascii?Q?jXojEWebUuP84nfSnNdF45b82yt7ArZ0A4lxOj3GNxX1gxyjwpVhZfyuZXkM?=
 =?us-ascii?Q?EzU7XF57V3J8s0at+jOF+VHwg0eYmA+ivhI5SaBxyleFFUnfY5QZqY0flV6X?=
 =?us-ascii?Q?5zHPLB371XoKJkub1RbpTLm8hWwEHfhJ85W2p/tUVNt/hrbISiUdv/AAwdMl?=
 =?us-ascii?Q?aUZixePwVVeslUz+CYuqGeJiMjWl0BRmDKjg1mPdEpXKHr5BYYTO4+PKZ0Pr?=
 =?us-ascii?Q?eugm/p5zWQEQJBENt72fsfEAZ7/4ovmDF7fKzJ5eygWQB/jKD6IO55uzlJ2W?=
 =?us-ascii?Q?q307pzmfUBKh8xvgSjDCq+pEBlOzxO4slqe05F8QPe9kmf31DnwjHrx/WKif?=
 =?us-ascii?Q?y6LlYvXWeEHPQoR4ndElq60ackJwVjbAb3yTB7jN9GgfvPjY/pMsMMdeB68L?=
 =?us-ascii?Q?Ss0qUnWXmX9YhaDg5sl0gijwDrkD+7wW8kUmGlvew9GM4RURMqdxQd9ANHb0?=
 =?us-ascii?Q?kq15vHQiWdFRqMQWe68ZI/xk/y9koQEraE+nXb1nq5Qrf+E3wC/2U6IaXhaI?=
 =?us-ascii?Q?hNEiTKeltd0LLG/9+XlWTrKA/AfLtptn0NugRKrjLXtvgWtqm199tim202Di?=
 =?us-ascii?Q?okSVvq/M+xFYDMFNqU1pZWGqd1ZSBwsySore5KA8JXfzrgNWQo8/1jOrLtAM?=
 =?us-ascii?Q?I6FVaQxT3dZQxyuXTrKJfGpVdaSxgzJpqpcvCrY2x9QHaa3B8q8fsz7ndVtv?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b492624f-4b66-4157-f481-08dc9fe93542
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 07:31:54.9265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQkVI4gJFl5WCnHROtp9rcFC89qWFufo9DdSv6/Y7baDXjV4dEPKa5HQS2E6qAz/ej+YaEIuJZ2Ypve/pz9Q8J0uFyDP9RgUN9d6J3IvDEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720510319; x=1752046319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e/A5x55o/ICj5HBHNwINPPPezaMN4db95iyQ2u4LwaY=;
 b=eS95LpLKf0PNNra7yJLAXZlQ3hhx76SoOQaoLgXbY77BolVYb0J1PEmv
 Pu30aMD6+FrrXMIfir0kQiFjMaEpBgOviH53dcM7bIjpO3YlSemm30OjP
 qTHU9nLM2Uml+JyVg7/vI8wzXGDLCbiRgfTN5kE95u95gHPCKfGoUbojH
 pZoe8gEOdx3hA6/o60ZNFV5OHaRZo4/DNwyG4NXhk/NQTPw2ftHsNEMW0
 lpfm03DGEWG8TDrg3RyqmYRtRJcMIkT00sNAuisZFmp63RIiM7C9inthU
 9LJrXhJt1SHBtZTa0tsDCyvcFlN4PQB2ONeuPaYWEW/LEQ9MBZRGyG3aF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eS95LpLK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/7] ice: Simplify bitmap
 setting in adding recipe
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
Cc: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, June 27, 2024 8:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; michal.swiatkowski@linux.intel.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/7] ice: Simplify bitmap s=
etting
> in adding recipe
>=20
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Remove unnecessary size checks when copying bitmaps in
> ice_add_sw_recipe() and replace them with compile time assert. Check if t=
he
> bitmaps are equal size, as they are copied both ways.
>=20
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2: Replace sizeof(((struct s*)0)->f with sizeof_field() (thanks Alex!)
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 24 ++++++++-------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
