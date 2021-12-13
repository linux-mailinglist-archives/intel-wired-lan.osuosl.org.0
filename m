Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC88C4732EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 18:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58A7380A9A;
	Mon, 13 Dec 2021 17:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7AmB43fhyA8q; Mon, 13 Dec 2021 17:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6223480A73;
	Mon, 13 Dec 2021 17:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25F4B1BF3C4
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 17:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21A88400BA
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 17:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="Hz42n9ov";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="q1ZMQKTI"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CM1hEh2EnzWP for <intel-wired-lan@osuosl.org>;
 Mon, 13 Dec 2021 17:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82BEF400B2
 for <intel-wired-lan@osuosl.org>; Mon, 13 Dec 2021 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639416620; x=1670952620;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kc0jFM/KeNocDzJ9sjCfvduZ9AuGpZ9HaGyO4hPT+Hk=;
 b=Hz42n9ovUUbhkNh9wbaSUMry8FZciQbBsH1hPrQq7kuUSZl4ZOCe6TjH
 VH0ElN8qpFbvTbgrje0VUmLMPDuQKJwfk3OtJN894qL7bTQqsHbiuVOV8
 Gnwpo9l2YhywOmLexGg/y/y/27LhXGd9UUIq5thZ9JzDiQS8mDwlCr3sE
 7+w4maz3BPOhEOPZBiJpuBczUfT2moX4h0BowTLR/S87iEEuDDBbR/Nok
 vnG6O1KVDutuTO8QmoqAp+kfoVdxURbgypXtsiFqFz7zZMjIYXER3lWzX
 RovIj5irI62oa4s2Mi1ZWIsW5Frqygcv+Q3AAPNg89ABI9LHtYoLmNut/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="218796302"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="218796302"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 09:29:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="504988657"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2021 09:29:32 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 09:29:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 09:29:31 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 09:29:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f35RT0Gp391Rs+Uzeidp5iD+TtlowNxMCWpCqnfVS5KYXax6xFoU/mCMtugCrcxZXa5xzX78kyCre90FMvl9wnXU0YOS9C1mVZ69W7Q6ZcLqc1laazOmqu9L8JJnPIZDFkJO83NJnW9HQF9rJcvW8CWhR1mThRu1TJRamIwftAGwVi/VZ2GUKIXmwUW3a+FKHzOEdyH8/jqxJUjDPDc43YyGl75ZhxHHtBA/52zS99o6aYb6e6EoGt+OE1mGp0k8tZrAuWcQdg2uFYaryTiAffRXo6cS/IcJ5mwVC8X05Y6N2Izp9/CWtValTR7KLzJ7gmNx+l4S1mKIk4/3oU/+RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kc0jFM/KeNocDzJ9sjCfvduZ9AuGpZ9HaGyO4hPT+Hk=;
 b=fpflrf8n6VNJXYsscJHLzCzI3/7I9G7Ys8rJ4g0E+H/dQqdNNpmwUjLF/d4X4BluX22xuh75sOI6RdvUxSxqe6+Ob7DJ/kLIQi+HY8o7O3HiGxu6RejlzxmtfFNLQJGpOxqiEswDELRqR6qEwCq/4lHdyxRuyEuQgFCznIah0A9CTuH3N8mQj0qyzTTAM/zkfnMHstMoknE7BeP8hJh9RM0CaIcvjPAVL2mxoJnzvmO9J2jJCcsh1TSxoKek1iURsJaON6lDsOIhJOlbZfb+tfMSrTNd74KObHBt1MzynVGvL4Mz3Nd5Cg8XTvWC+rIXwFd9iNkW84QqyTMlKCJZTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kc0jFM/KeNocDzJ9sjCfvduZ9AuGpZ9HaGyO4hPT+Hk=;
 b=q1ZMQKTII9UwovuM/ylEyBttjocuZuOMr1sK0k5joSQ28j/3yFGbfWPTgGViWrKpMJSI2zHzjWGYHMpqJIVK4OIfoVb6X/dOi18jcB8XPFbaFUQPWcuJYgq+pBs5wFouNRSHlbrdumEKx72++2P/kKlyWtP73Kkf1iGvFcGEZyU=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5565.namprd11.prod.outlook.com (2603:10b6:5:39a::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.21; Mon, 13 Dec 2021 17:29:30 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Mon, 13 Dec 2021
 17:29:30 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Ken Cox <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
Thread-Index: AQHX7B1/xtqYus/GnU+A+sAHN+delqwtKy1AgAOKeJA=
Date: Mon, 13 Dec 2021 17:29:30 +0000
Message-ID: <DM8PR11MB5621A410EE44BE8ADE03B6E3AB749@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-2-jkc@redhat.com>
 <DM8PR11MB5621F5E938993A63D2424389AB729@DM8PR11MB5621.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5621F5E938993A63D2424389AB729@DM8PR11MB5621.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb791efc-5bd0-4fdb-c106-08d9be5e1f19
x-ms-traffictypediagnostic: DM4PR11MB5565:EE_
x-microsoft-antispam-prvs: <DM4PR11MB556588583DD077D0DB9FA54FAB749@DM4PR11MB5565.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dmzKB5F6Wpi2NwvWi3YpZpAYI0fhE1cBW+EuDm4s1xJjuZXaq6raDGOknUASJLxa1OtMItogC5nfcQbKX+z8KZwK0cVf4VJ9BVI3jzOTknEgoMuTF7GMjxC2LtXfOV5QNyHVIqA+GQH4G+uDXz4ySe1O7xqqSMB0TH2nyFtxnpCxDuTD4PBlxKBKeWTvG+2ddtUYFZF6cFs6GlOEyXultWzpo/wKqO36nSwBBboRZKqrJCSrOf+hSM6i87DzNh/21q47A2NphWL5jCLZkmy2gbMW9MTo2WQMkAjx9/YPI1s/dVtHQ2l0wUlkTfg6yTsAoRtjpBQL0MQokbEL1/NPMcmo5+DHE26atPb1KXYgVsYHIw3BONrXO3BimtH9nAkXyW0XiYwtOo6YWjNTDaV+6FMcUvjmkmqUNvVeEIpaJ3Qu5ONQ1OaEd6GfkkBdNqSLjV8cgXnGTRizyKTDAiE8wxoBfNSecaAiEo/ty95f6pe9GXbxQvij1zOTnmfXkFNchPzpPVQGtCNq61/mNDWlNOnn7+AAtQL2R/jApfWhA+IUtuVMsdTw/UZEeDKMsRi25eRkvJuRigRoH2Ai7ogGKxawZTgJtc0umtLfYnNnewwtmp6Ws/vhHwUZ66rhhHVqkEXK24DWc9QgTkatPY2WgdyWqol8dODMarRezi1dkpeqRNalYnJpAL7/IkL79J14tDAhwhTnBvzgoOvwh/LlQA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(66946007)(26005)(8676002)(6506007)(508600001)(186003)(316002)(5660300002)(66446008)(7696005)(110136005)(66476007)(9686003)(66556008)(38100700002)(2906002)(8936002)(64756008)(71200400001)(52536014)(82960400001)(558084003)(86362001)(33656002)(4270600006)(38070700005)(76116006)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b8+NahzgsJE3X9crdE2zCaUx9hb7BEaRGDvTiCgq3XCysUnkxuPfAY75EiXX?=
 =?us-ascii?Q?sOkFvozQnkMNnUvA7Xe08kBVZ1iz3Z3sx3piTiWl+ri1NUh8tSI2Yepvp8wJ?=
 =?us-ascii?Q?p4ILGaKMvsg/Y/KAKw9NoEVkHlfEi12cZUA74+CI9mNPRNpGkhr0XL2ycaZv?=
 =?us-ascii?Q?yQYTDQTjS+usET5ZiEJT5PFCUjCuPC0Wb2LFQXQDWmQfWj58QvjY+52tXhjG?=
 =?us-ascii?Q?wsV5rdHjUFEmnO2HedtlpeSFb3lIqXaufbhxQoMvLKf0fdZlf6wbYu8eam9z?=
 =?us-ascii?Q?mWSTQoUM1JNnNX+SM9sEUuR7Q2gQUZGT+sDulell0/SWxlABOjTokaxWSYeZ?=
 =?us-ascii?Q?iyDipry4TUsXIy0rZM2n67/xsqHIQTmCy7OuDrUqU2YaQMx69FnPOqR/XLDZ?=
 =?us-ascii?Q?SHPTr1JkqZhxqc/sFJazXCH8nodfiB1Nupsop2xAoQxOpLJxoY1YPepkgiov?=
 =?us-ascii?Q?ycvl/ByKhx4XFEHe/IwobQVmRTVLVkWHAExN8ekMSTYnOMq3HmrJbsAiNeXt?=
 =?us-ascii?Q?9UR5dahQN5T6jVKNyzuXuGJXLaypZCzNFPNQP0KbB4BPXWHwHPvtsnU2RtGA?=
 =?us-ascii?Q?0es2eui+Qm2JXOw7rl2IRWpmuu1O5+FiWHtZ4WPFpgJL9rJ+TmiTlD3mJfqF?=
 =?us-ascii?Q?Z22hvtr3ChElMZnfs5Fn8TtMrcV/JRZuQZ0zS6G/NB0tMzVlA6dkEQh2s5t6?=
 =?us-ascii?Q?k+VnxT59vD2/1A0ADvGaZbjgZvL6e38GcGdQjWjVq79+vc86OT64wWDRTxYE?=
 =?us-ascii?Q?1tCUJ7ML1X5oTBgqPNQqEavTVyyou2vyf4InKC7TIop5dg6HusNHqaPZa5xb?=
 =?us-ascii?Q?6D5SAqaf4Vxxm7rd0kYEjvAvGUyQwEe/eHVXYR8NxGU1g9vuQkerLVQV2faR?=
 =?us-ascii?Q?XhTf19O7XUbWg0CRUvuNbCO8gMkKL1/Ixw7O9g+Dm71jG2aO3VUVYiIqgEfL?=
 =?us-ascii?Q?wS9J93MsJowYo92BtXJOPoiitQ+89UzR7RCuxAXQU5+Z+EspUD1ktHQr5Dzz?=
 =?us-ascii?Q?q4kO7P6Z2kz9a/Ujb2hK5sJJEBRvRQ9VyQ/u/0ceJwZL/J7qsLye/JTNC8Yi?=
 =?us-ascii?Q?KvfCEfvR5OTT58h21heDijz6i4kzoJtr4PqwrM5mVsMTrICBTYp09T5fdQ+Q?=
 =?us-ascii?Q?I4WF+HN5cCyjt4oEpZOtr12fO+eIOmkIYV4GTYGFVl8bRtbAbgZXZkP7xahc?=
 =?us-ascii?Q?Lls6KA671XVn0oqerPK34BOgqq0EHhvXnDaGG7qESTThAYLkzKUGSJAAIQSA?=
 =?us-ascii?Q?tRbVVzWkf7RtIt79Gd2VqeD/9Z8yBFi7rrqoKcY59LH2ujqHf0aOBKh+el1O?=
 =?us-ascii?Q?8+FspAd4VjX7H+QyaK+TZNkl30V+cLThkp7nr+U84NMk/ecCdfSp1x3OFbsZ?=
 =?us-ascii?Q?kmQjHttnIiQtX1TCk2Frv+ryNbNeVDe2EOLJAxiA5JdtAxmbrScFhN3nHwr5?=
 =?us-ascii?Q?lGD2a5B/brEe6oDun6nXTqrP9KM/D7imFd6PxfBIO3bYvvewMSKv7uQuFsq/?=
 =?us-ascii?Q?2JyFf9d0BVYjxyl519Pkj6ybtJZX2IFaHbFaCg7h2O1e8PyddTF56/eW4MJf?=
 =?us-ascii?Q?noRs1CLhz5ZFDw/nGVYKyzzSwTNQxp51Jp7gGJhVgs265T2UMHgFvjxVXdGl?=
 =?us-ascii?Q?2LFGcxaizkQCAJ4Y4QATUEaQS1y1J2ueZUDTRad5fsScIqj1MZKjDfPNuxvg?=
 =?us-ascii?Q?u1agYQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb791efc-5bd0-4fdb-c106-08d9be5e1f19
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 17:29:30.5997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vpZqYBRWpWAbhPWhLZw4W/iEPB2r4IenT0k+zMJeQK3nQmuutK9lX5KvNSrvZSJ1KcMa6Wpxa5d1pAJEpKZRsqDiwoKIbHODMUaT7b+SKFw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
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


I'm sorry, this was not sent to me, it is still untested
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
