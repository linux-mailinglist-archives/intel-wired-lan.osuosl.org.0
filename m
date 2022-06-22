Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD7C554263
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 07:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 894F740C62;
	Wed, 22 Jun 2022 05:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 894F740C62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655877123;
	bh=ysRw4ciQlx4lYwCXRirKDD3AdfJ7nZf1vWCzVzZNUNo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MMMgsfdMKMG1gZCuoOQwQ9RsZ39P1tOcO4LVVplNfAscmSOGFL6sNimVi3yt1ef2S
	 EudMmmZSYdbsOg662xip982sR+X4fornddulYJ5MvhvHBhrCT+Frvj4c0PE3a4LtRP
	 TpRDSksfoz25l/J6TmCNgrd0lT5ObDdvA0gRZEFJau2wLA62oeafzSCtxDRRFf4+wv
	 emTQMQ2orVAEFCJ+s5qi28Yh4vlQ9VWcWByOJL2zGzNr2SDbS313ptyEE++yMJfaOO
	 yHgGN81HbVhpozkYKzbidFhDJmldoWcSkRVuYqEZlLCuFAvGTATupgE9O4S5F+wnCm
	 wRhuRg/4iV8kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQWFjk0nQw1H; Wed, 22 Jun 2022 05:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44DAF40C5F;
	Wed, 22 Jun 2022 05:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44DAF40C5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E74BF1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 05:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDFB984655
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 05:51:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDFB984655
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x3i46Qfh5nqx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 05:51:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F25A8464C
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F25A8464C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 05:51:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="260750896"
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="260750896"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 22:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="764744114"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 21 Jun 2022 22:51:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 22:51:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 22:51:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 22:51:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eK/EiNSeT9RVvCoqEz54pvYvPd+HvVFfszNskyHPUHCHHJXq0QbowTlLCBL9WTsILlcdsvReV/HFBMJ73hNOZd/NV9n7Oel7mW02w5soNSXh4FZK296mur8AiqWH/S1j47K+ywpyNBsFt6SqhUG1XsCr8rpNXBHf2YxXa2T0opa0oXbb3NRv58cyy16ht8+n/gMODZCM06VtwWv8Fg43WQlJXC8vGoIaB9+bsH8lEqaTvM3GoYgYSkJHUGaLp34as4/jKx8K1KaRB8KZdl/NcqMhQoB3rO3ns702/k3BwUz8osAlIILozl+LF/RYZ/39Sh7VYBQM4zqvwKHTDQNJAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3wCE5lGx4WhrMEbjly1hJSRhg+FKSykjyzoxnFlsXmM=;
 b=RSIWuaF5CYw2qMwthjvhyqlqqnGsfJb3rm18gIwTbBCOBfAQYhqzzc12YzIJ5Qkua4N7sugFf2L90mbzdJ1k91ddN7XSlMFoJwzc2KmFb0tDST+K5nQnONaXxtMgOkYvGgUfyC5H5eKYWK98n4jtCKaxM96xegtvlqW9hGrReKZAA8XDq5MFEgqyAbaP+JuzB+HprAFdVuP1M+ykQAhXiJGLiH3Ka5OShKRT7WKkD9TFGESobWHohkOjfRMQlvOAIIvtf8FgRcrEcSzdRAsqD+o7ZMNI5hf4zocoT02JCtTpyYi+jdxnYZyO/Q7ne683eWOCrbgeC81IW4Hl+JaBqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DS0PR11MB6421.namprd11.prod.outlook.com (2603:10b6:8:c7::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.18; Wed, 22 Jun 2022 05:51:39 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087%4]) with mapi id 15.20.5353.022; Wed, 22 Jun 2022
 05:51:39 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ixgbe: Add locking to prevent
 panic when setting sriov_numvfs to zero
Thread-Index: AQHYgMHAJLSl+dGWEUGvi7XrmatNgq1a9qsw
Date: Wed, 22 Jun 2022 05:51:39 +0000
Message-ID: <DM8PR11MB562138362DF3D68DBFD54EB4ABB29@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220615140723.43210-1-piotrx.skajewski@intel.com>
In-Reply-To: <20220615140723.43210-1-piotrx.skajewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65ac0b83-c279-45de-d3ac-08da541346d6
x-ms-traffictypediagnostic: DS0PR11MB6421:EE_
x-microsoft-antispam-prvs: <DS0PR11MB64210BC2852F4E7E77B7DC9BABB29@DS0PR11MB6421.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lPkuEETf12PBlKiKxauDUJcVRKWdcRLJ995bD4Hd2nkNlGFEA+/JOz/UwjiO8aN8bDflEO8y+Qe9NgAj9WcDbV8DTQWSAsAsWRB/+W2NXCPDfcMNvHJIDDh3ITvjpEkFQvMx6pwcf4YZYO1Dmb3/YoM/LqL2O8JBTBCUNUy/P0fPwxs1sMFiyMsM7ZVDbsonw+2lfU8pmqBiW0rpn4c9H+xQzotVcXQCylu5L+ZHSKmDNwgO/xHveQ/gaMnptwGe8ma2Nsq24z3x37rGQLRRlQ31d/rEsX2KZIluyS9DV2vBi9WFIMpsRHDjcDM1e2z5cIiDZdzN6xgaw+SPG2FHTBWgb7K43PxUr0r1GIhH4KejqQayz98Y5Ax2XVkzLdTSAHDjpMsjjPOQKa56HXajE+b7JcKiYxpvXehSvZXrZ3xb9hUb753ffGS3vFL+B/1jkN+TaotJCCXfzZ2vcXFNspVgWnIWt/0Q6v1Z239HZN9/W4ovxyWODKEuPJiNFIv7lsEZb3IhGuOJg7wtLi9MEDH/gRlzO+FwNf4cEIdr9eTsIi6AP/Qqev+PiJAQcNCjUUjLWWYRrm+8xCMe3cb+YcwgbZimZbWYEVIL/GaiO3ZqWAqLEWg9v+c41FsCvoE+KhbAjRP3fn7yw+skArLrIx6rdjndA0NJ8MzxbiN69uYhgz6jMZDdJBs+QjVAlElS01zSBYqmn+A2q0NRUEwkoxfNSnmQX9hEqDtrtptYPyAki2VIZ/nHJdj+SSZlFUzT/Rh2df7yPT3GiDxy6tdWxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(366004)(346002)(396003)(8936002)(71200400001)(316002)(5660300002)(38070700005)(107886003)(33656002)(9686003)(86362001)(186003)(122000001)(2906002)(52536014)(66446008)(6506007)(38100700002)(82960400001)(53546011)(64756008)(66476007)(41300700001)(8676002)(26005)(110136005)(76116006)(66946007)(83380400001)(4326008)(7696005)(66556008)(478600001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ynqRw0JxzFb93vgBXSi21pHEDa5tp0E90+gBZJuiDKe5ksUi5yKaTJq6Aqiy?=
 =?us-ascii?Q?WHVQsmSv34SP/ZjiS1dDTJAOxmAkTSg5+isQ4cA6DE0K3b6i/j9eZidj5W2t?=
 =?us-ascii?Q?r7+WZLactbVQzq0jFVVsdOupiJJHg3CGxYFonyxtknyAgimqH/VCOMUz4tD9?=
 =?us-ascii?Q?OcFv7Zzdm2yvwsIXd7GfH46SuqURksHiYkPY5+E5S7/0VD07hDMiPiClm8cL?=
 =?us-ascii?Q?9ASIFi0DgwvDidk6hDVPdVZSnAqXgiGj6YFTMgE8q/YhVgw8VkDEKiBGc2WH?=
 =?us-ascii?Q?gLr8pWWUsdFWT+S4s06cH6aa8ghAQ+YIsaKC2dTTwJ+ZTV91cLwjnSkY82sy?=
 =?us-ascii?Q?NRT3czI8Xe4/2HQgZ1KEO6S7eiZpKmvpKzHThrF0HJb27NuKBcUHXlIlZHdi?=
 =?us-ascii?Q?8pueFt9E/5OqSUySb6nn2FzfWN6DkEpGbczCa/wrxXm22/fuLEIdEeSdD475?=
 =?us-ascii?Q?Z8/idkpXCobVKXoIUx9Qz0R2Fiil7KTCF/JqjRF2svuL1tU364qN9zrIggNP?=
 =?us-ascii?Q?XSaI6OutF2oNmgGdszP5G44x0j5g0W3nMVV/Lx5Ys5bX1ETnsdA/ztly3jTP?=
 =?us-ascii?Q?Bagub0QUWfbHCSKDKFxgIdXag/rDdE+l4qcYmYNGzN/XDUGEx8TmRkWxyG+x?=
 =?us-ascii?Q?ZN814fDxy4Lai7cUCczFYDD7j9FrnlgLbq7qFLOQhkX8w3FJaprT/i9v24L8?=
 =?us-ascii?Q?aoBmMmmuXgjbqf0rD6Xc4cvChN2ebNGbam44blv4f2AZF5WoudBhXWRFnBoo?=
 =?us-ascii?Q?7Bsiv6+ALD1k6zyFUWVgnps8kxRt+9Sz+WX+rJIopVwJUGnEmMGeRAQQf11r?=
 =?us-ascii?Q?l5hk+2RiZYmNYo7xbhupMkZnbNCds0IZ088tdBB+LQsa3omXZm9Oww5wm/Du?=
 =?us-ascii?Q?pI2gt0jJ23np/7rfNJBtMGtzzZ/OyCbWagpLT3x9g8tgcGI1c6EJmkZpSwwq?=
 =?us-ascii?Q?ghHwY46enwWS0uPb09owSx7+dsD7pQV5nzLmU2YQ1Gw7EdwQ+aBlc/3/9p3p?=
 =?us-ascii?Q?CLEV+pSPZ1UBCzzOmHR2nslBpEf6GeILBGS2F3/OgeU74TV38fXOjR8uRky4?=
 =?us-ascii?Q?syV9aOynNwlSU1Zui4mP8IvXbrnf6U2EP25dF51zA9O95YqY2vaJsy5DAbpy?=
 =?us-ascii?Q?ferNHNe/2ZrJ0TIuP1qstYqsbw+0ACC13g1gfq7OMnBx+tJ0aoexkCVGUiAr?=
 =?us-ascii?Q?GgExbpksKCjMH2U2Sogu2dcNoaxYhHmYXL3t38q6aLhIsjwgxoPQD+doF8tV?=
 =?us-ascii?Q?AtOJsP67lbJzseCaRaHUgJ+p0h51MpOo6fkSx+qt6iKVl1p719ypnrWZOzan?=
 =?us-ascii?Q?UytzI9TydSvEw6fdxWKzT4FINU7/ZNjlxZB/F1ecbDfUwrjqUxnbfKSeNkNq?=
 =?us-ascii?Q?XnqL4PbMbCPVy8TwNBoJQeWKNnn0PEOTsQVWS8cqzdOa4jHlMjNEZizh7VwF?=
 =?us-ascii?Q?SQXEigoobrc2BtTgcMg3kRkkeJgwWl+OqYkEwZFYq0GHbAySfwXiWtAMUrnx?=
 =?us-ascii?Q?3Oq3T4NF/nMo9shxFNpXuN1pmnWCZBriIcGEWYI7m+e1SEPpgVKvCZRGT0VE?=
 =?us-ascii?Q?0eZ5CVNUhfBOeplvtU6H/cfdLqYUQmNKQCel49yjZ6VeeJ8cXU4iJKPMZ7vW?=
 =?us-ascii?Q?NNPwONCc2SdjRYUUPKUF7ovzmnMwxT6MbPWV7Rf8otaSgaWvm515VuvwfGKB?=
 =?us-ascii?Q?IlB+BkVUU2xL167FRceHfeOzP0gWVH6Kvmt5vhdL3xciEtXoAf9IiTm/nJNA?=
 =?us-ascii?Q?08GSfkFnwTdXNCcdvfAildClzeQ/Src=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65ac0b83-c279-45de-d3ac-08da541346d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 05:51:39.5161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZKQ8eoHPajuRxg9VhSBI+O2RNM4dlHZymXZxzLJuUanvoYv16n90ZyEsIoQOk4G989fY5bkmSuEdI+4/HUegcy9FRKoTWlWLHMq2w3BhH8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6421
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655877115; x=1687413115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oKfpW7Og34mf5mYY8NlFvKGDudwzN6Ad9H1LrShMgk4=;
 b=f8tWvLCwAtRh2hgaBi/YM/BcXkX2re1tHSGAqjDA2nV/PZ1R5XR5qvo6
 F8Kap+TSu6w6loQWGBosbfbQAmiPThUu59FjG7u5SlOtEZqXrRFrwrXKD
 rX3gR5qvDA42E1ZQnHCnSVt3VrHI5gf/nFFnOnrBmLgHgw0sRjl1OEau8
 SHjC3hij3e6Kv6J9rViVx/nbPpIM6yQrSW0XEYGh1eOzXNdtioQqQFphA
 r3jwJkkAUH1MSpR7PZ7wd5owXeobjL+/5rUsg99tidvzXh/vt+f/N7khC
 /sCqH8mkDPeFODuu20SQSzOwSve9uvK55wAPzJKxVOyAjrIX6BsNwkHoS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f8tWvLCw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ixgbe: Add locking to prevent
 panic when setting sriov_numvfs to zero
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Skajewski
> Sent: Wednesday, June 15, 2022 4:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Skajewski, PiotrX <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] ixgbe: Add locking to prevent panic
> when setting sriov_numvfs to zero
> 
> It is possible to disable VFs while the PF driver is processing requests from
> the VF driver.  This can result in a panic.
> 
> BUG: unable to handle kernel paging request at 000000000000106c PGD 0 P4D
> 0
> Oops: 0000 [#1] SMP NOPTI
> CPU: 8 PID: 0 Comm: swapper/8 Kdump: loaded Tainted: G I      --------- -
> Hardware name: Dell Inc. PowerEdge R740/06WXJT, BIOS 2.8.2 08/27/2020
> RIP: 0010:ixgbe_msg_task+0x4c8/0x1690 [ixgbe]
> Code: 00 00 48 8d 04 40 48 c1 e0 05 89 7c 24 24 89 fd 48 89 44 24 10 83 ff
> 01 0f 84 b8 04 00 00 4c 8b 64 24 10 4d 03 a5 48 22 00 00 <41> 80 7c 24 4c
> 00 0f 84 8a 03 00 00 0f b7 c7 83 f8 08 0f 84 8f 0a
> RSP: 0018:ffffb337869f8df8 EFLAGS: 00010002
> RAX: 0000000000001020 RBX: 0000000000000000 RCX: 000000000000002b
> RDX: 0000000000000002 RSI: 0000000000000008 RDI: 0000000000000006
> RBP: 0000000000000006 R08: 0000000000000002 R09: 0000000000029780
> R10: 00006957d8f42832 R11: 0000000000000000 R12: 0000000000001020
> R13: ffff8a00e8978ac0 R14: 000000000000002b R15: ffff8a00e8979c80
> FS:  0000000000000000(0000) GS:ffff8a07dfd00000(0000)
> knlGS:00000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000000106c CR3: 0000000063e10004 CR4: 00000000007726e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> PKRU: 55555554
> Call Trace:
>  <IRQ>
>  ? ttwu_do_wakeup+0x19/0x140
>  ? try_to_wake_up+0x1cd/0x550
>  ? ixgbevf_update_xcast_mode+0x71/0xc0 [ixgbevf]
>  ixgbe_msix_other+0x17e/0x310 [ixgbe]
>  __handle_irq_event_percpu+0x40/0x180
>  handle_irq_event_percpu+0x30/0x80
>  handle_irq_event+0x36/0x53
>  handle_edge_irq+0x82/0x190
>  handle_irq+0x1c/0x30
>  do_IRQ+0x49/0xd0
>  common_interrupt+0xf/0xf
> 
> This can be eventually be reproduced with the following script:
> 
> while :
> do
>     echo 63 > /sys/class/net/<devname>/device/sriov_numvfs
>     sleep 1
>     echo 0 > /sys/class/net/<devname>/device/sriov_numvfs
>     sleep 1
> done
> 
> Add lock when disabling SR-IOV to prevent process VF mailbox
> communication.
> 
> Fixes: d773d1310625 ("ixgbe: Fix memory leak when SR-IOV VFs are direct
> assigned")
> Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> ---
> changes in v2:
>     - replace type spin_lock_bh to spin_lock changes in v3:
>     - replace type spin_lock to spin_lock_irqsave
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  3 ++
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 30 ++++++++++++-------
>  3 files changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 921a4d977d65..8813b4dd6872 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -779,6 +779,7 @@ struct ixgbe_adapter {  #ifdef CONFIG_IXGBE_IPSEC
>  	struct ixgbe_ipsec *ipsec;

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
