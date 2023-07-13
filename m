Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E21752E03
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 01:38:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4945781DFD;
	Thu, 13 Jul 2023 23:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4945781DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689291536;
	bh=MGZetR2kLineYBqPPmTHUPbHwAmVDaDeuKH9a4kYBls=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gYiyQBlsITPKpyy916mQOSJJTJUeJag9h35oyT8scI9zHefMdYEe4SEvMkh5ufbBX
	 6VCzON+QFYzTG6ylIVkSVNE4uJTCGRNg5NoqS+D0UoHcAVmc5dNJox/90V+TN/lVP+
	 TH/TOR/kP7esmVxSBHcao4xDPT0T+LSoEBsSQPM/ayweuebY2+OeRGcmpiREczWfIR
	 zYXei2YhRMJThqIm34ITp430QR9VR/BRlCkYDutio4TNeMhpJcYGr2E9O/0NsvrEXY
	 Rm6HTL7IOJTR+6GmXKZBvffUw8xb709cqHMZusg8JB48nSjVW+JWzVJCOwfRcW5z08
	 zEdwYFYnKH7DQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EEv8alZ6TKmv; Thu, 13 Jul 2023 23:38:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 142D481B25;
	Thu, 13 Jul 2023 23:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 142D481B25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 354511BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 23:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C5994047C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 23:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C5994047C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cwqp0AXyk6wD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 23:38:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E05754016D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E05754016D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 23:38:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345661007"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="345661007"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 16:38:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="699448885"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="699448885"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2023 16:38:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 16:38:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 16:38:36 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 16:38:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZt1S5oef8UiU26S2wDkb6DMty05j2epC02S6NnWIHu0kbJj7wspZZoczzTEAn2tZxR4AQdDyeHABcJTNjnexPQ4M4ImJUaD+baNs9QIb0Hj3UoJReF9FciCtF+osRuDyedQq09iz/Uzrpt4MEHeswzSwxeqM/o5gJgng4pHjRkQ3Ir7FLo/2AhXaeV0FvMdC+QPfKSkmBGs9ddXe+/oDul/wQyKtmjyCH9qaKdX4vaL9RxuErpAv7EPdnVxsrOl5oEy0v0kxQeIaayJNS8cwy96qhWwuBaCCSAESbgLjkcl0ILEAk6NRxpW/UkJP7F2EpkW4maIHjKM6SXgO3odGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bq+OuGiNUS3CnBfTa+x0i6UJrgRUyWbAaQh0UiCa4NI=;
 b=SVEz60cuQPWmNVS6lR4Kc/DtMdshPIoNCgpOQfC5KeJI5C+/mI46N3DszImZnRS2qXzkNqQ7Wpa617bBzE95UBY6jlbjP2VEN6eHwB9PPOlT65RcF8kgRGKZRBdRJE3OTSs1+zW1aJYpIDBqEXcy+5gAUooFgzePTYssG5q6R5X40OpeVPwmNwMZLOzFAl0eNrcATOeOwXIt/FaDLjUSVGxDWNm5wZiFdZcIKnD0eY1DS9FKAwXM37p40JU0AfRW2Ppje/c6mi1SdqB8qVJ/HIrz58rE3SSh6VYSwr+l1yxdIw1Lc9N2UuQf13XzBPVIXXuk5u1cLHc+P8KaqrtxpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ1PR11MB6226.namprd11.prod.outlook.com (2603:10b6:a03:45b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.22; Thu, 13 Jul
 2023 23:38:33 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::d166:2444:2f40:e0b6]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::d166:2444:2f40:e0b6%4]) with mapi id 15.20.6565.028; Thu, 13 Jul 2023
 23:38:33 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Ma, Aaron" <aaron.ma@canonical.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jeff Garzik <jgarzik@redhat.com>, Auke Kok
 <auke-jan.h.kok@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] igb: fix hang issue of AER
 error during resume
Thread-Index: AQHZmOOokxjOvODuMEq7FIpYqOTT2K+4k6ww
Date: Thu, 13 Jul 2023 23:38:33 +0000
Message-ID: <CO1PR11MB5028DD73CD9601FEA281FC0DA037A@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230526163001.67626-1-aaron.ma@canonical.com>
 <20230607015646.558534-1-aaron.ma@canonical.com>
In-Reply-To: <20230607015646.558534-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ1PR11MB6226:EE_
x-ms-office365-filtering-correlation-id: c094633e-309a-4bbf-aadc-08db83fa45c4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pavSv80tDw55nvFzuKbeFFa6jPKDc9MD0mqs1h9Im/8tMx6pk78zQc09b/ZFsDknCkNLjf9+CzWxhPHg3vN/0DTM2YpGyDHaMkzmwMsyVH7InfdPMJgHWXbiAMp7qz5+/DzeBiAaKwebmnQBPr3leiL7JthmNbLf8nx0PylXmwjYwtFzpC012AxpSViydjp1nIaKK1SCoc7M7W40kclV3Cqya9nVVDBT10h0sEWdeAIZ53EDyDMIx6taXYoHDaoWdEpcVmwcHP9D4Lp0Vf0pinzsf+FUUDZxuwVx48aoYzzi6vhOhto1SDtQu0Ufe5/S1Sfy7j7Dg+ha5XxpyNBsJGsiWSgL6FRh5TKo8wbo6ClVtZIQQA/DeKtLvaj3v+JQkNfNXSSAR8Uh5sIRgS5+v6ALSoHXbU1WlqEt+9BzE27jVZjzuQbJe9BKIghvcdY7cB2VUwWoyQHURLLPIioOmW+T6XiP9YYb2NY/K7r6a6qWSVKXZasDcYX5Zavqp3c5nOOXKzdaq1x2+1KzhXJV7OtI1ZeGEAC5rPOHmNPQjNZLS1xMZcgUFjouOb66fWfNaAnRzdW5R4xeBCEjyO5DXugNp6CLqjn0Lz74fLrn7yDmhCbljDqmR7tW+TGHctn2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(39860400002)(366004)(346002)(451199021)(8676002)(41300700001)(8936002)(55016003)(110136005)(7696005)(2906002)(316002)(52536014)(5660300002)(71200400001)(66476007)(66946007)(66556008)(76116006)(64756008)(66446008)(33656002)(9686003)(82960400001)(966005)(478600001)(86362001)(186003)(38070700005)(122000001)(921005)(38100700002)(83380400001)(53546011)(26005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mFZP+7SIjqkudHFyPYabC4CYAKQxyNqR4gmXXGNqe8d6numrlWBtTzpCfl8m?=
 =?us-ascii?Q?9xrFT5C21QXDs8DFClDR5Gggg4Ty1FDMz6F42VGVjQZ9t2gJwfZWQRApKAmh?=
 =?us-ascii?Q?f3NudDr4MZlwd8BlYh5a5ze8G5cXh9tmC7J37QBcBCGInwxbKiEYQ+K0eaRW?=
 =?us-ascii?Q?03RzaR4/sMDa3cy4XpqqGn6sg/LmKwAyV1yUMf91y2WqswzENMyZiQsAFhPf?=
 =?us-ascii?Q?ooPq8Y8RqBnANDotc5nDcGo4vRvMv4D7WLuPU1pSEG19C3UWEePjutbJOCGu?=
 =?us-ascii?Q?tG3QeuG/oWXmu5bOmxo65ufu/mxSRMuO1WIAM5N7OuNRgY9D2uvOALck4W1Z?=
 =?us-ascii?Q?5UlFJO279h6OIJYSD5KnkFVjmSVFlOoOui3F0RV7DJ69LfQY0nzV9JRqsiXG?=
 =?us-ascii?Q?cTnjyIwJjNjJy+z7nnfIGFiyN18VVTRy10I0d17ANRKGwt3kwOluYVJOr+66?=
 =?us-ascii?Q?bkj2sEHNhMYJW30n+eZxZ5cgeCNeoofjSWi5RFEuC0eqQohmEkChx7sp63P3?=
 =?us-ascii?Q?a0z6WW0rCm9w5BOEt/3PSmimDhq7X+Wbb8nKKL6YVdMIXgqPGP/r9bGmIthA?=
 =?us-ascii?Q?dxB2Gg2nuywg2iqP84rMDsR8Zy9zJb9iHHjLv2MoT+mtRkuA6cffvvbRRTNb?=
 =?us-ascii?Q?KzgGtln2abyh9J978xSK9WbpyOF5mbLq1T1pyzxz3dcHKgfcuK9DhLt+6H7Z?=
 =?us-ascii?Q?9dyLzHbHpM3uXclmL/PNOzy5wc0D/0xIzx7Kk9qX4x17BcY82m+o4EhqLGhf?=
 =?us-ascii?Q?Ms02WfpvPOVvej5MQFkIRroCXQuw4jVHnBhMeEgns6abRKRHq01ruCQ4/Bsp?=
 =?us-ascii?Q?PGDoSTKZXRuW+ev8LBMVV5z3zWHIng29rmu0blmB7U/WELCE66lJBJ/eL/94?=
 =?us-ascii?Q?Gm7tLdigljHNrEr+XtGKSZqqLMHaDzdT+rYfrG52McAiaFj/Aim8hn0dmvVe?=
 =?us-ascii?Q?ON/K10/KaLdhuge7hHkLpTzGgO/2n/Cj72I02f6A7FmQVJv9O6UwqLwveFTk?=
 =?us-ascii?Q?6IxSkz8Rls4GQBqisZX1eR1mIAocEmtRncyUJObc5mG/YonBKUrZVzrpaR3d?=
 =?us-ascii?Q?ZOQp9PgacUVBJVM7P9Nr2zy/LETDlpnzVUDSqqT9rNKLD714sc2gvxUsLmu7?=
 =?us-ascii?Q?mw58jD54+K+plCSz6lzcuo5Nie0/nWa0OWQzomRl34HnHvRL+bFf92PXBg8h?=
 =?us-ascii?Q?0OQ4xCGWixXZYZvEEJ8/IP3VYN3wr7VVT4ALZAEjKtvPjyxjQLtHrCYC00Zb?=
 =?us-ascii?Q?7DW96loiWHy6DTLJN5frdGv812LLfeVeuYpCdDf5aLElPBAGzeqRDW1POkqM?=
 =?us-ascii?Q?xfuG9ufQfg8R8p+wheNBAelgVNJKBHGlP/3qTvh1CQQ6CRZhYAJi1VsfEHBM?=
 =?us-ascii?Q?HN/pFrn6lNXZzjlNx+4mJLjKXhS8F4fIS/bK5h92QFK9cKkdXs/a/eRr2idh?=
 =?us-ascii?Q?yjVHpf+TggJxVrkvN3n/jaT8utIwIHNSDpwYIbKGHzxg2XHAVI8X7oXBMZnE?=
 =?us-ascii?Q?QgP/oL0tiaTQrvTtGhGu96fBBwwLa+mNm/2YNhVMJOIH1t0bS3tL3XTLw0kF?=
 =?us-ascii?Q?FvRcPBeQ2GJVqtDmU/E0CKlJF9wBuUMySrQN5uODwxbiPsRmU0ti0d+XS4Oj?=
 =?us-ascii?Q?kg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c094633e-309a-4bbf-aadc-08db83fa45c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 23:38:33.8458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ml87HlC/LErCyv1XeWrO9qArbl+SQuJiFzzjw+1ZwC9zv8e5ZEUCgxy/j7Lc2wHT8bBaMKuls0vC8Pi6dWL5Fi1VX+acAaaL5dryUs5zTQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689291528; x=1720827528;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LPp44NDWEpqZiucKtKHsWJi0KIS3OeymkPkpzDsPPo8=;
 b=D169Vxz6cFVI6pFrnapQ3LOd6SQJPXD741BrQ5nDJRDs9sGPGiSqjwt9
 lI05ROqQznp5HiJpw9Sjy0KnDZHoa4n0xwEfEyQBJ92QAzVzZqs43hUWU
 egw7tiQrMYLTCA2KMRrHGqyVlx9EQquFTgh2Cjhl2FDYyokB4rio0p3Pn
 Z8IurOXDtZvkNI9sR37+NeUgrIxj6vT3YsnWo0Qiimd8cKZNUqjWgme/A
 UX3g3hTiOd5zRXrvlggEKZqNxwsHCnqRilvffUcR4ljRCb7iEFeEfDV0W
 z3NfYhkcCDtqD1JQba6QU/TC+ikxJ1jE51oAwPQtQF9H+G3EGeck8a+Tv
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D169Vxz6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: fix hang issue of AER
 error during resume
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Aaron Ma
> Sent: Tuesday, June 6, 2023 6:57 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Jeff Garzik <jgarzik@redhat.com>; Auke Kok <auke-jan.h.kok@intel.com>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net v2] igb: fix hang issue of AER error during resume
>
> PCIe AER error_detected caused a race issue with igb_resume.
> Protect error_detected when igb is in down state.
>
> Error logs:
> kernel: igb 0000:02:00.0: disabling already-disabled device
> kernel: WARNING: CPU: 0 PID: 277 at drivers/pci/pci.c:2248 pci_disable_device+0xc4/0xf0
> kernel: RIP: 0010:pci_disable_device+0xc4/0xf0
> kernel: Call Trace:
> kernel:  <TASK>
> kernel:  igb_io_error_detected+0x3e/0x60
> kernel:  report_error_detected+0xd6/0x1c0
> kernel:  ? __pfx_report_normal_detected+0x10/0x10
> kernel:  report_normal_detected+0x16/0x30
> kernel:  pci_walk_bus+0x74/0xa0
> kernel:  pcie_do_recovery+0xb9/0x340
> kernel:  ? __pfx_aer_root_reset+0x10/0x10
> kernel:  aer_process_err_devices+0x168/0x220
> kernel:  aer_isr+0x1b5/0x1e0
> kernel:  ? __pfx_irq_thread_fn+0x10/0x10
> kernel:  irq_thread_fn+0x21/0x70
> kernel:  irq_thread+0xf8/0x1c0
> kernel:  ? __pfx_irq_thread_dtor+0x10/0x10
> kernel:  ? __pfx_irq_thread+0x10/0x10
> kernel:  kthread+0xef/0x120
> kernel:  ? __pfx_kthread+0x10/0x10
> kernel:  ret_from_fork+0x29/0x50
> kernel:  </TASK>
> kernel: ---[ end trace 0000000000000000 ]---
>
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=217446
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> V1->V2: Add target tree tag net and Fixes tag.
>
>  drivers/net/ethernet/intel/igb/igb_main.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
