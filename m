Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AF45A0E12
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Aug 2022 12:42:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19D0640C31;
	Thu, 25 Aug 2022 10:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19D0640C31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661424122;
	bh=7YGwUKU6eslgmINe04l/OcVrtAMjPGcyAe2Hcmh/WAo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5GoiA5o045GC201y0uqBH6N79y42BKvAioT/meV8p4HOuYcINRCkEUxGVtJSIXX63
	 z+wX+eNJTh/oZxNMlVt6xImvoRv6FbKDL3D4JidCi3jS8vMn8pKTZQA2uj5I3U2pgo
	 TY8cAqU/uZ7W9ShMt052NNvPaeszSkhXp6on3m0W02RzkrEQoWlOyBE02RGdTDv5sf
	 SoeeLP+MZc2Y5Nl4/KDIKbxnwc8Yv5199IaXC/UVxbFhoaFtl1PER8bgEBjAyJdJwK
	 eAZFYqR39FmTSGizMiG/WixEpXDZNs1qBwngAAVRvnVrqJxMkRGfyTjA96GGovowiE
	 0tOsLbPvj+WUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1bE2elLX0vwC; Thu, 25 Aug 2022 10:42:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D73C340C34;
	Thu, 25 Aug 2022 10:42:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D73C340C34
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 918721BF28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 10:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AB2040C34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 10:41:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AB2040C34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5779BWkFF69T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Aug 2022 10:41:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F17A40C31
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F17A40C31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Aug 2022 10:41:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="358176175"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="358176175"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 03:41:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="713440484"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2022 03:41:53 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 03:41:52 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 03:41:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 03:41:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 03:41:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QzFFAvm5kW7WjajTMgMAFj9x0UXFbaubGFLZ/SRfK4JrvbL0BSu/17EX3P+BIkFdejmHU2ESrByggmEdiFBziXbWzNVinxqQqP2h8aIfhy7D457iUfb9uXKfaIrK7/OrFYWzXxSfnVxNyCDm7jKJ+L6Xi/Cbu6DXD5Wc3W7Qjw94WXNNk1eK8rWY8pZepuOS9Z9BB0ot31jow8DuPqnp8bGFU8LudR1OhRTT5R9u88udvtOIMHeXqvE6IeTqH20DCpiN36chQJ4rBx/e3q2RaRNpH+GhvT5WZbVOgNa+w6UhKhpUOHCKOY/r007yO3dzT3XduHWIOmOlUekoH1vCCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YryAQP48U/f0LAGQpbMl/T11JeCq45YknVq/oGukdjI=;
 b=cJUIayfzD6xttQJJ1uRvjIe4MXtH5sv6ZmArR6aWMGePDeGLD4nxohUFczZxegqdFMWJJ1ZxSKzbmbKzLClMTiE0rhfyKBZihW1/+zpiKpJBp6rrBh4F+GlZf6N2WCVmAP4yd14XEOTRZaS0E0MUKt3MbL7IM3zlPm4EHJBmFXq1v4crmtROxMcv0tBvA37nM04ffJ+ig/EbN45DhW+b8Es4J3zZ5Cncr3m72bOAtM4hnOITjkGmUeA5hksyZAzsP3BO1R9J3O23mfS9N2xzvvBvZJgQYN/as9JKWibKaofRaK3qbqEz2fg6kXIxBDZz395+wv5LUdx0RsSCkWMBwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY4PR1101MB2293.namprd11.prod.outlook.com (2603:10b6:910:22::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Thu, 25 Aug
 2022 10:41:27 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.024; Thu, 25 Aug 2022
 10:41:27 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] i40e: add description and
 modify interrupts configuration procedure
Thread-Index: AQHYtsp8S9605o/oMUOxscgk0ck9qa2/cL4w
Date: Thu, 25 Aug 2022 10:41:27 +0000
Message-ID: <BYAPR11MB3367F1DDE47A6AC1A043AF9FFC729@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220823082803.1683-1-andrii.staikov@intel.com>
In-Reply-To: <20220823082803.1683-1-andrii.staikov@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fee8948a-a16d-444b-e600-08da86865d64
x-ms-traffictypediagnostic: CY4PR1101MB2293:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: INe/V5qG0eBEnzObEfXuNvymoA8aXhCM7FHVs5Uxv66NEm5NovTPJdz/vXSFiaW7eNE64dK0fjsa6ZxA/ja+taoAgP2fXW/5kf4NHHHZPG96BmyLDSA/Ri5aRacO7Op6bRRkHXvPebNavL5Awmx4APNPCNrIMKsZ/wW9iAx+gpJM/FaSYmnJAOFCIxbYWHLAEOfTtzsi5ntR0hXuMoojkDdy+rZVmgYinXGen7Ucok5Uiaygv9mmGaWMYRRMbTASl1ZRRn5a/FNAzcAGVWUCZxyajl1nCiHeqqlKJKoKTQIGQxBNAs5QZlPMvvBaivVOx5OQbeT/cjQ9Z6sGFgSQLrT8HaO6a2GLaCcq2YTa0pNmtaB9US+Cb7dfnKUSIxl9HIandlhLReGegV1ALNzhYJXC9P1tWOHZIDwoyMlQimV94U/+LJY0KG0pSoDU2ZBwovqur3mCFhi25Ge89FDHUAqlt8cVqSrSolbhzOPqd7a9XBkCcZh4gLDhTJT/fGT/dlQkmOVa4PstHqf5MX9Ug5RwBJrelWO8LWT3YPKnmttneE4cuQ7wYacJJcV70sycsLQMdxS34AuKoQyoqFCBq9e1OsKpgf1+WTNkRXTvFPRC56Fl8Pmd9m+RtFf5j4KrMRbEqETUn/sY1X6/WTjH4ZQ+mvJt2D5k7CIEYm3JCs9DTfUhCNiZv2vjVje7oU9uE0XbJjpslqFqWYb9P0PHs7WJTUkW7j58DwnFzPu7Ju7vh7nKUZSof6MsRGN5kmHmHrMCxZdVl/3wQfO+b/St8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(396003)(346002)(376002)(33656002)(71200400001)(82960400001)(86362001)(55016003)(38070700005)(83380400001)(38100700002)(478600001)(8676002)(66446008)(64756008)(122000001)(66556008)(66476007)(4326008)(76116006)(66946007)(2906002)(52536014)(8936002)(54906003)(316002)(41300700001)(9686003)(26005)(110136005)(186003)(7696005)(107886003)(6506007)(5660300002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I7MV+cTRAx/eLYDb3vg61uwK8Iy3lmvBppWG6Y+tZS7oHCwoxzJtPtByOvJf?=
 =?us-ascii?Q?3iJlAbC/TfUuTIq8y5OAJ6j/phvoe9v4BsX+KddiblGs9dueXhsHQn0qbSpZ?=
 =?us-ascii?Q?zlBOF8HMUhmAFU9dc4wZzwQzSOc8HHWZoK4UUS1zccFsLuOSA7zSs8TVbGfn?=
 =?us-ascii?Q?9YsjolYx7Opel39l2qPiNF2OLGIysTwxkD95iXCu+B/YdzjhkU9jLqexusV3?=
 =?us-ascii?Q?pKI/EhvEI35QQzml23uP5fiBBTHKC1BUxsy9RvkXLcQp/zaJi2e70x31XP1a?=
 =?us-ascii?Q?nyZPGcmKGUju9W9BpAOuhiHVcU1kHl5qLfjhugrGWCPAZc6cxnCIGY++STIL?=
 =?us-ascii?Q?AL+PxEFdC1ycPgdDs/Sm9n9140+6okPS80ilEDDNOUnuPaI/Z+oW/wG+Zdoi?=
 =?us-ascii?Q?UkRMUGC7t3cWoHfBdUS6OGCS1WR1YtGpGd8hvlBz8ANO75k4UH1cTYIrfYzm?=
 =?us-ascii?Q?1pdEZNjLgJi8j6sP9nrnuvItsq054/YtJ0BcKxmfYVkU77Jw7HskVwpKrXyq?=
 =?us-ascii?Q?1HzT+1fZCA8rK7ArZNV0K2MGIl3B+xAlzwXjiH4M9yE/+SMh6ZYQFwwVaZbA?=
 =?us-ascii?Q?Fpj8g51QHBblY1efu/Fe+IOht9YjBD8+GpD6S4DtgesdtFnWCW/Pa3uYZpTY?=
 =?us-ascii?Q?k252hs2wfW8CcbAgailqMaQ2oG3/ZGXX94/1Wxj/xLl1NMeAJg3faazj7/Cp?=
 =?us-ascii?Q?RmB43yIPTCA+SPxM0JURpbw0H/NXVmLMkerFhV47i7WhD0MXtp8mUaaOqOx7?=
 =?us-ascii?Q?ttN2/HBxqPwfBveBKZ3/3H4SKMoAK3oQ+Dn/u9BSFkEgIcebUrKiE53gWmLJ?=
 =?us-ascii?Q?vj+DpxvJby2Pa5VS1QWnElSaEoeC1zZ437deGEIma2S39bN7gHbtb0dnMwBj?=
 =?us-ascii?Q?qewX2juhpxcL8Ur7l3g+M6sR9rZt09dJncdQ9DoiPjoN50LHXL8GjyT9JEdS?=
 =?us-ascii?Q?RluasAPUNk+hRiSpqpQvlKkBJGZdCosQ605LKkfjtCNUnkVTjpiJDc5ZGBCE?=
 =?us-ascii?Q?tONgIAEXCnE9EALufNEUOHxnndQDxm/3t/5Eyv/pJJLZH0qldFfcRtzVKgPf?=
 =?us-ascii?Q?DntG7WE+h3nKIGPMapjlwIwaFrCHNNlAmD7SYUup+dohbx4SGabQas3HoaZc?=
 =?us-ascii?Q?q+3Fp0en4CAltpJqwP1bE7eU3RDs4w9UCDEUZ0O0HzJRmmD8Y43QsDkehArP?=
 =?us-ascii?Q?jIwyzijfColZIQJXSKMfIte73FiHqG4KTtroxAubGOG6Rhyk66FtZFJzjI2Q?=
 =?us-ascii?Q?8Gupa+T4PZ6uKljzPQpsHr8TQMFOtyO9nnBYLqwPe7CQaM5zgfp1JB2TeYZa?=
 =?us-ascii?Q?ox8CBuPs1RsTx3cY2EVr042HT65ddKDTDmh3HSNwr96SZjMgyMl7xoqXFdYv?=
 =?us-ascii?Q?tGBKNjWhC54to5qV+LIyJTf6HlDBfLZQwLizWlMtgckkPd5RzFUFX8tnG/oF?=
 =?us-ascii?Q?my+bK6iAEz4TrT0P24CPzDFDQ/1CZ5WR/d5hcgmgfCvz7AkK8r+SXildINUX?=
 =?us-ascii?Q?847Q+JHzXK8TWJ13VqXfLgaAAfmtzKPIhgkbVaJN/B9DBExkGZf/lfDcWdYl?=
 =?us-ascii?Q?fLzFYKf1sQQ/X5Umio/lynizXq0lqE8tauvVfrGb?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fee8948a-a16d-444b-e600-08da86865d64
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2022 10:41:27.6354 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aJ3kqGjuWS9JuLPe59uMygYtWmpvRPRHtNu3VoPRxjRH/bLRZvuDsova424yMoNltSYE6Hhd1xBPDOblIVnAEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661424114; x=1692960114;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A841p10scp/i1ROksNGXzFAAevOH+3vS+UoRtNqHk4E=;
 b=WYYukT5xoClmVmWiwohyQEQcecjoSU3GIIzGZ6pkLCZwIsBbEtwrkrxV
 sa6DLjYsh5EqCF13U1NZqa5xpzOY+feRKoCCgAIq0t9dF+reDCRB7qo/5
 rtg3YT6Nhyq/0TFo43Nb8dM+APx0kF46n9wV9dQm6+MUPVldQlf+bITV/
 w1UX5Bo1vg1cSa2gj7BAo32eS7P32sDT9XqA6WT60OQGJ1a4PmpZev4Kf
 /myZYatJwkUyz/LMFYHqYCxY/9vkC/zUWsFuF29Y/BvbDvGdn9WSm6FdC
 mNybFfkT5QwNkvb0MOvpnFw7llFLvTScbMRF6dALwglGREFI/dFcRZRjK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WYYukT5x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: add description and
 modify interrupts configuration procedure
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andrii Staikov
> Sent: Tuesday, August 23, 2022 1:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gawin, JaroslawX <jaroslawx.gawin@intel.com>; Staikov, Andrii
> <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] i40e: add description and
> modify interrupts configuration procedure
> 
> From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> 
> Add description for values written into registers QINT_XXXX and small
> cosmetic changes for MSI/LEGACY interrupts configuration in the same way
> as for MSI-X.
> Descriptions confirm the code is written correctly and make the code clear.
> Small cosmetic changes for MSI/LEGACY interrupts make code clear in the
> same manner as for MSI-X interrupts.
> 
> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
> v3: Reverted changes related for has_xdp variable in
> i40e_vsi_configure_msix() function. In i40e_configure_msi_and_legacy()
> function changed conditional statement to use i40e_enabled_xdp_vsi() over
> nextqp variable.
> ---
> v2: Removed has_xdp variable and replaced it's ussing with
> i40e_enabled_xdp_vsi() function.
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      | 14 +++++++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 34 ++++++++-------------
>  2 files changed, 27 insertions(+), 21 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
