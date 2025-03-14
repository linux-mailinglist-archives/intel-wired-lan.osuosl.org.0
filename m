Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67445A61C75
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 21:24:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9146061AD8;
	Fri, 14 Mar 2025 20:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gv3pIwiumcte; Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6BD0612A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741983880;
	bh=d/lkDiSkHiIBRe4sDoYVy4tWJO/TrEV8XhQfV1JLgYc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7thgbQvJIW1yrj3kdZi6yNdbtwSWLskQ4jDCwNnS6S4C13xkMZxXM28kExXg8NMmg
	 pL9LuG3JtCK5fuf/DjT8otgPe3o1XnGP8lBc2UsnlOsmXx1NvK1mFJPWc2AYkNJ7cD
	 MfWKaLib4D/tGjGwmGQKdyZQcRmovK+GWyp22boIllfDqISFTSkjOvb5+p1//kgrAr
	 l8ix+gaFNGdXsVmfu1CEMw6iCt+aXmaKB3QprAUlEM201EPIeVhvp0uCbOP1SxOYP2
	 qDAqqLVoDy7SuXEfiKgyt8gDo5M2uG71oXaew4V6t2UzB5w+xxyjagKv4C4ZlNDjSB
	 fcQzeA1o+8znw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6BD0612A9;
	Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D2693C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2D0161AD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n-FrFA5nRfvp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 20:24:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0549761AD1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0549761AD1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0549761AD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:36 +0000 (UTC)
X-CSE-ConnectionGUID: etnJHDSaTRe3UAiiDQt1NQ==
X-CSE-MsgGUID: Tb+oCgl8SAaBhafgTC+Hew==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="54147691"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="54147691"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:36 -0700
X-CSE-ConnectionGUID: O0N0YcZbT9iMTE7etP9oEQ==
X-CSE-MsgGUID: mnz2SLC0S+ycvcC68+ot2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126577728"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 13:24:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 13:24:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wpea1GOorb669GSf56dSpyFqingdIyHfqivLTcv71eU3d0gTnyRES0dAmAQM3Rf7tPOTYWdwYl1aO4WGtXY5LVaK9FF2n4cLL8rGhDYoL8kBt18nnd8I+xfQLP3FXJ8oY9mlIw33B2MRJNZhfskK001aSHM/PqINzGK/5YrVuBPoknwj3t5mQE0czZzdQMtY3Gkn/p/qD+DPy8eNraQt2seIfA0GxPDagI3j5kY1NYd+NAa6/d8PHqLjocq3cUMgP+59X6yj0NjxNqUg/mzeWv7Nt0pDvnlWZsVvOCOd/pumLmjDjIrVz8KTWmr1nEe4JhHb8F53S351zbyro4/DKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/lkDiSkHiIBRe4sDoYVy4tWJO/TrEV8XhQfV1JLgYc=;
 b=Cjk3zM7M/1oHk9DhuNf4yYRlsOOoh8QSrdJkum1U4pyejUDaLOhueX00xL1XXFCuvb26wdbx896xxksdZvvW0ED7NdsYHHYNk/78F6ulM21HuHZdqG7EDbfM+7wS78s8ZDHrJ7HEeVQ+TJdw134GeHV0RaphAolh4S4vREIunRJhU8xNSsiifp37rdPXUgxiTsD5R5MMgYZYYtgTBQPlyXDDVfjbHr2udXnonXyI3xxrcVoCn2/faZb9FfeHT8fLmO0vVCo997l84UkmphMZfbFz8xSZCxGUOqp8sJ4Z2+RCwKFRJbjUkbTVlJbZsdefN+ZDnb5l1Dmq+56+z09Z0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7922.namprd11.prod.outlook.com (2603:10b6:930:7b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 20:24:03 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 20:24:01 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next 01/10] idpf: add initial
 PTP support
Thread-Index: AQHblELJEJRcXdgr5E6GiEFYCWUAgLNzB7pw
Date: Fri, 14 Mar 2025 20:24:01 +0000
Message-ID: <SJ1PR11MB629781F721E785AA01C419B99BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
 <20250313180417.2348593-2-milena.olech@intel.com>
In-Reply-To: <20250313180417.2348593-2-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7922:EE_
x-ms-office365-filtering-correlation-id: f19507b5-2802-4ac0-322a-08dd6336289d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fOxF25u5gPw2cw9c42hhSChL879HeitOPdsUeE1C78sjQfXgpbtcNmDPFmgG?=
 =?us-ascii?Q?5PbXkdpZfQuvzvO2vSM6CIrjSnf+I8Q3ixaNgYrXCTZgC9rfMSgAxUQHJJjj?=
 =?us-ascii?Q?DvcWBY2lBpd+CrwfVK+gLIqjiEYCu3HC5rcmsD0pHz/Oja3waAWtAbFs/AxQ?=
 =?us-ascii?Q?/0nuAILofYMwYDGMdU+Xehtls0RVtuSnePYP0AybELYgSuahTqyPtgmCYb1S?=
 =?us-ascii?Q?ZC28d4VJEfl5c0b4w8dBaXgb53han/iXTYZGu8iKn/xJOE39wAXOAzKn7D/H?=
 =?us-ascii?Q?v6fLMtXvXPmafFuzeZ1itwO97aVaLK7+cJr7KADIrlOhT3JPd1m6eQvFCzM8?=
 =?us-ascii?Q?65TShXe2ULTuYS+z5OxnBrEuuruyeskNeBs4ljEWkYKjpHrdGl9bxDm5Uw7u?=
 =?us-ascii?Q?brq9H2TUvyj+o5vZKyx3TOScjd+IiMIQzlV0FOk5qz0pNmZq60DiXwG4uaad?=
 =?us-ascii?Q?DbbAXtBEW+0yDEhYGvxGuvxKd4Jd45OkQvXGHZsZSqg+1oZqfB7SLI8h3932?=
 =?us-ascii?Q?BL7n2Si6xi/QJroNDZyGCRlRh0724G64mH746/Sxhb0zqzuxT77h05HwfJ3x?=
 =?us-ascii?Q?IfwWf6L/D+EH49in4ZuzCp8asBxRy94+fW+0d/oObRS08MGaGybx+u0MvJy+?=
 =?us-ascii?Q?u2TPl/nJkkSXjjK7PBoa8WSjTBZe43HAq+twebbJTK5+oHAEQzEHU+EX0JgJ?=
 =?us-ascii?Q?12128DwYqU20hVhPo8mHQhGN982Mfj5/bGgBP3khp3xDyXW3O6vnjzlkiQzM?=
 =?us-ascii?Q?nmC8Bqn76zVsoAHGf5WoeOjKGDzfZOAWKYtzgpzdliLeSnXAFEWtuvgDqPiI?=
 =?us-ascii?Q?7kpb7s55blfORxoEA8n1/QvQDsD4EJeSX5Rot5edkYnRCJ9+eggCNKg7X9DW?=
 =?us-ascii?Q?nZC8CoTMhfdpHaV2rJsYuo9Yio8G8tK+/hpcVolOaYFRtf7dHUNj0Tx/TD0V?=
 =?us-ascii?Q?gdXT1K1GGxNCz7V6HhXTU3bCuaiFHiXEOGjddIyd22hoV/2gOGPRiZIXP33h?=
 =?us-ascii?Q?R+Y3na+egXunK7QLFVqrq4solICnbl4I0w1jKwGRHSlcw4SV7YtNg6z1+DGP?=
 =?us-ascii?Q?vLmf+8Ohid8gomVxmbrV1lCy4UShDwF71A2wkZgthXZfAbqNq/vPOA3LiLFS?=
 =?us-ascii?Q?2VZospWky7fgTmrwvAKc4VOHKc2l7YE25aNTBe1XhmWqzs4ZAUsGYMaBza/y?=
 =?us-ascii?Q?JDa+rGGH5BottIEqbuBWrKyqaM2/Wg9V2QAwTblhg6XXKtZi8I7l2GRAbMb4?=
 =?us-ascii?Q?WJmg0xYalSTpZzUUs7pVgUDtapHLgagowEYks9H7vpERUQjolq3XQzBrP3Zy?=
 =?us-ascii?Q?vyuDHnwSTo4oQc8vFfX9iHLm4QeX44055E79NciO4alCEAa0PBhONo0SuLsV?=
 =?us-ascii?Q?UILMKleTglG/cgzvnZhwKmwCv2FBq0UfNfgMomv3XUSIxHuark9eh9E8BODR?=
 =?us-ascii?Q?gCQ2UFFYo4jLSNw+DOynEIcs5fSnQtF1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fCfQ2VZDJczjDm5cmy8I6yHk5S7Ghx2i0xxXKaeJMK2KjQ50eGjLG8b1ylpi?=
 =?us-ascii?Q?yJdsXxueEzp/cxjtmKXwbBu4F+eCfe3kisMeRJowLMf7DZo10pvZSnGBDrYw?=
 =?us-ascii?Q?0niRYC6ezgv4ycksHaMnd5IMFd2QXrdwZSR2dQHYJ7pNfCfJIyhtVTJdece/?=
 =?us-ascii?Q?xEUaaX3b3W5jt/lhmI20o+U44yYQpZsmrwlj6/VcsF6X49nNRSBBUM4mjySR?=
 =?us-ascii?Q?Uvh9qBH1BSZWGiHTNZ7cHnAGFsBhQpWFiXQay9UXr5BPV0lW+cq2qbwAs3/T?=
 =?us-ascii?Q?oWk3Ap0zLPIRoJnRoushHTkSvjhP4y2laEG2J+a1ToAoHTxjuaSluyhbyXZB?=
 =?us-ascii?Q?a3Tnbhpda89RsmpJrpbTvn6UP6WuHMPWuH2ImDISokWH8kPoGLsVZspZT4Jt?=
 =?us-ascii?Q?ouey7gj5g9iUvc7tuwZtStGBU1avX7HmzIUfiAZnq6hNK0nNBeHMiFTQZGLL?=
 =?us-ascii?Q?mcaao9zRdsS/1Xazu0htoXiR9KusiuGT/wVglbqJY66ywyjyOnXqKRwT8rgt?=
 =?us-ascii?Q?kR1/zgPi9CGymNZYx5amO+56JvKqB33ufDT1pPVXx271BuVNVWuFdiSiaQjb?=
 =?us-ascii?Q?GkPFxfsvymQaCW83n6nFmZoetwGJrazq1Rp1CPu98qQoKOtiCCPs1mk+qiDZ?=
 =?us-ascii?Q?SxyZeQGla6r1GT3ddufftN1zXTmZVL84aSPLCLd6Jl/bT0RKoGR37GCNrl9Z?=
 =?us-ascii?Q?XlnVCFg369nPLEiT4dBC+IDIuLyTonZud4R6AD3z4XrSfBoJG74DkYPdlq//?=
 =?us-ascii?Q?2D+SWOSEX1JFo3ZV7TFTtRfcQ3N8jk8qaJTtgw9a7u00F7jdM7jUHS4Dajl3?=
 =?us-ascii?Q?7f1sICchgzhhUOK2TwKJvvISdvvq6TCkHJA2Y/2SaO5guiR+4u3XGD5FflcZ?=
 =?us-ascii?Q?JYJxIzQ0fgk2r9H9fJUx58j1rjZls7iWbZVawo/0fLf7XTogHbikuOkjJ558?=
 =?us-ascii?Q?P6GL2hl2Ej+8EaCeAIxJtEhs7vEr/LMc8BRj3TKLnRQPWsNt7pwOC4TdbhKf?=
 =?us-ascii?Q?Oli4oLQ1pSkTgQ21dXizPl+p6gkdoUNp7STiN+re7W0bikOsMNEa3lXr3i8F?=
 =?us-ascii?Q?10iRoQL56q+Rrt+1GY7HAPrrBqVosIbnNY/bjerhFxXwXqDi+2poNoaoT7cZ?=
 =?us-ascii?Q?selJ6HxOd5Evfko0qujv5h3IpxWX7Trl8vW4qGb7Rkxrtz/VZcSCEfnT+CbP?=
 =?us-ascii?Q?tK8035dGSRvzD9htUrjc/axjs2PMn3/KWxmibkUBY941puCRECdFiK2yGbJx?=
 =?us-ascii?Q?busU7RmfAGFz6ODXqWyyveIDy23hNScBI1g1+hUutqzcirZx+FbqCIH9DuLd?=
 =?us-ascii?Q?DepqCiZD4XM1Vsm0434nFwmgWiBMX0gsx5uAD9I9QsHHPbGEbMETwO28yh0b?=
 =?us-ascii?Q?1QnhBbTal7IMZHL+ljLgAu9XlhaE7hULkzyG0TkUfQY0Ny9CfmAoOLoi8qEz?=
 =?us-ascii?Q?yjYPZ70OpCZ8oE4co2V6VC7ehVGWHH1mze+R0WpRtF1EIZte+Jn8e91SLMYM?=
 =?us-ascii?Q?1emHYtXnTO6//E2lDRVSDAE4K/fOMpq7dyGd8/cOR7nJENjvpRMynVTq3rFD?=
 =?us-ascii?Q?+5o40qHKOeYgb1+JzqK+c7LKmJnu9Nz2KvkEVhky?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f19507b5-2802-4ac0-322a-08dd6336289d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 20:24:01.6708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wGnLeSHrwtONMIz8OFa1whhkpqzTEKyuS+igleL+vYpqBGjavbKaWzO5LXEjLCiXsVIohDKtL1VWKhz8OnodQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7922
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741983877; x=1773519877;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d/lkDiSkHiIBRe4sDoYVy4tWJO/TrEV8XhQfV1JLgYc=;
 b=PYXrMQV/HjrzOzgZ/elXmWiUeK2nwFIjiVFVJ81k1Tk5TgnUg8JoWKqn
 0vLHN6paamr5TqIMqZynn/BtsTyGuyf2Jr8lUy5T3Blv+jjduoQFORHzt
 gax70M9NwOUuyl+YTrs+PWnO4OmToek+GDr5gWafkGdxDFwM/EVOZNWx8
 GJ/a/5SaD83qvLSlx2qdGOcUOqpAtMzFk5mP/vDZBfeFHoueWnnVYs7hr
 vuagJVnVF/rFY8lbKnV1RoVmTRl/nOlyNTt3IMqLF+0fk45npw8UkEp4P
 WWwIFuMWjPFihqrptAevBFukwxJdqGQdHDvQZQFYnT5qD4825OlePmrkO
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PYXrMQV/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next 01/10] idpf: add initial
 PTP support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Milena Olech
> Sent: Thursday, March 13, 2025 11:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>; Willem de Bruijn <willemb@google.com>;
> Mina Almasry <almasrymina@google.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next 01/10] idpf: add initial PT=
P
> support
>=20
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during th=
e
> capabilities recognition. Initial PTP support includes PTP initialization=
 and
> registration of the clock.
>=20
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Tested-by: Mina Almasry <almasrymina@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> --
> 2.31.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
