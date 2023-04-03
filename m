Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9826D4190
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 12:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DEAF60586;
	Mon,  3 Apr 2023 10:08:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DEAF60586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680516504;
	bh=Q4XlCj8qqUJOlPPZ/nMIdILACwjvYLfauoF3l3k2s/U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nm/xVJZQSyE9Ng+Lo7ObaT/wzaTEHczEkgn1JKP98E9eAIff7dWPwCLTo5lBqdrSD
	 sNHc4j7iXgR/zEmFx2kLd7/Vd6GPCBSQ4ddjcYJURdQ9r6Z+v3GhE9e4hE48+JcVFc
	 118v6QiXk8uRqaY5z8H+cp40NiQ0THdhgHaZWC9ZEteLrjNfLWCSLvTdKzbj71T+rV
	 SmeBSzLfkxR13v/n5sCl6M6JdNLl3qxm5XOi49bD/Dv08AZ9/t3bRWrYFepkFEjLb0
	 xoUjBmzBBTEVcRfrhilKyk54fhh8vmfbwN+qLRwtWK67oy5grSwrSevxLIP7DB++9q
	 NR3WOJ6dWaAFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yaZCi9pO3BcY; Mon,  3 Apr 2023 10:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FD09607DE;
	Mon,  3 Apr 2023 10:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FD09607DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E94F1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 10:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C4044062A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 10:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C4044062A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWjXtyvRT3tZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 10:08:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FCF54061F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FCF54061F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 10:08:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="339352449"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="339352449"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="931958568"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="931958568"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 03 Apr 2023 03:08:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:08:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:08:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 03:08:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 03:08:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQgrmrewvqviqNABfo6kXy+6ysAwkyHMwtIzvfDk+3bAiBYBVYixFKR2ZNwKMK5PVq7Hu7/J5HqGslWRpb5Aa1QORdzfkDO7uRslj0u7KDJYmp6AQDNPb/WVYf/s1+39e/knsBDGOia2t7b9JvpSWtHtYHfRG71lib4lF1aSUtmYCo7B8MYF9wyAtHs+vTfpUkCpiZm3rGlyWLhUmPOROAPbNOkCMKnoc4TwQgPZ6+j9m0JJpRNWejGwRm6BC0sdgIr7uDkkJZ0p2EYQzoHcJthQwxfDNvqyR3hW/T1ErLNkvw4ByVwsj03vvwvmoK+xmWfLNnrpkQBIiI1OQUj3lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7XtTL4OFrJMXGEBL9eBwdpgkrqoOkvs6AnZdpjrNio4=;
 b=MVvvf8BJA3QYK+xAQXyd9jMOJQAt6taVEq8H28LijTWkD7ZghyugJfy0TVjrE8fWagE/xvQWdCW+uehPEmskxqFxHwiU3RiDxfj0RheYMl5NsVzH67Lwjf3hOkrpFeCd0j/eIXYn7ZL66B0Jk21iCE90upqiKjSPWF0FFw3UsBvf6TFAwfcrp2oqW24sgkkantwyjUz55dXDS5atPFkGE6Pp65aAPzIVp98hppaxShRHYZ+PprOKKDcit7gXYIcHddk+UFuDvcvvrGMxfZfu0x6mfwu8eQMhdUmX9xBpN9u3LnkajAj4KFecV1peg81oJ4K+uGO/HTBtp18Umt0T1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ1PR11MB6130.namprd11.prod.outlook.com (2603:10b6:a03:45f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Mon, 3 Apr
 2023 10:08:14 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 10:08:13 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/2] iavf: refactor VLAN filter
 states
Thread-Index: AQHZX/d2SYD170Z+J0aFVqsBXVP9fK8ZaEtw
Date: Mon, 3 Apr 2023 10:08:13 +0000
Message-ID: <BL0PR11MB3521E1AD1F8F3E022FCC6F2A8F929@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230326152636.2168751-1-ahmed.zaki@intel.com>
 <20230326152636.2168751-2-ahmed.zaki@intel.com>
In-Reply-To: <20230326152636.2168751-2-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ1PR11MB6130:EE_
x-ms-office365-filtering-correlation-id: bb4dc562-09ef-4ba9-c794-08db342b55e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +niHs6iot7cxet/33zAiz9RhFQhCY7F0d/TTt36wutL9uh0F9htpMcH5HSHjt/7sw3X1abHe5etVFFfG/nKlwQTFsxQ5ICKwBLf8Qm3uOmXSYQkNYzzUEPyJdQcdAnfHsEj3IgErol5P8le+b/HmDALQR22j92TnH13/gHVIXelLhC+FqeYnXFWbXhneLid07tA1LXHgX40mkBzSAlIYQmzsIpiXtxcyuKmWnJyrWSDbp3eFk5ikcUkFWv287nV5Czszubc4yE7WyEcWC8jX30PNdEjlYJ62Te+mFcDUZ05KRgdjY+FhNC4dXWsBM7PiSzjd2PnGH0Rx6ae5rzWd1bh38iqoyMwsGm6gDez6zGWfFURgtLii5p1oqXhERV63c0MXtADPGOJMA3VUrNZDUhDKGmpjDGOuoYrGWFW3XnZXzvHTpWnUeNH+1chmQCon05bB3gHjedR+RtJAZWLe5KBF/KzPs1RTv+Ikkx9eZmTQ1i3k4Lw1abHlZhHwdF4fl6HQpejfaqOUGHnGM6EFRhwqC7ABTSL8NC+LqwWuwJ85fViBOTPOYAkXsTrPW9jDcydPkmGwOlr4EiH0XHewBZf+nMOIDRxoz1MozdrbjNYfy3KoWcz2Jo+tsm/x65ci
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(366004)(136003)(39860400002)(451199021)(83380400001)(186003)(7696005)(71200400001)(478600001)(316002)(110136005)(53546011)(6506007)(26005)(9686003)(2906002)(5660300002)(52536014)(33656002)(82960400001)(122000001)(38100700002)(66946007)(64756008)(66446008)(41300700001)(66476007)(66556008)(76116006)(86362001)(8936002)(8676002)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lj2TLlkdmgiwcaRztYv3nFedZ98FkHk97n7FnuJNDiDGmJgh3ZA8bATYixB9?=
 =?us-ascii?Q?sUXUvsdZbhO5TS0fmeIjpPi3+2P8d+RQBu3vT68+/2Gm8B8O/NCe0vkdXDy7?=
 =?us-ascii?Q?HHWIBPakbPp3+j58gKZsx6q9QpWH3rkQ/II1RQ3w1sWq6UKpJkzSH4BuBF5W?=
 =?us-ascii?Q?/0hakKG0d/+AQiZuwLniYqgQuXvO11q1wADpkklEKEtAGHwStEAdR96LsZHc?=
 =?us-ascii?Q?uevhsBDT9yVPSYYWsA5ASSRPnJa6WtlZk/R2eRyTyVot0Un2l4A00ctQHH85?=
 =?us-ascii?Q?rZ/cjd1GzQ9iSA4kb7RO8eihZ4YSLUi9boWCLIrJvfsf9O7tlOHS/d0XMV7h?=
 =?us-ascii?Q?rPSxB4XefPUja0TV+7r0B6Tf8v7JoybRNAN0WO5oNMFGaMflcwC0mzXFduYR?=
 =?us-ascii?Q?wSM+zfc7oq38rSt/7c/TIusS0Dd/f84hHNiORyBvQknfdEwsjS/dJQhUOVsn?=
 =?us-ascii?Q?f3EoFmqO1ZF4++OU2mLPOE9JhlDfyVnhMMOMyUYgSo43oLnL+f1AGGkSr672?=
 =?us-ascii?Q?pG1/TODUVKtRJxE2JB32ihAydzd+3DcluGwNw4it1hjqmj1JQCcUfCM/Jj5w?=
 =?us-ascii?Q?OUE7yiR936FYH5B3AI8aBta43vEiEdlK1sOLb+NoyQq80kegQYgI+xTSr33z?=
 =?us-ascii?Q?XnjFmg+o/LfMHwM8SN6m6YlD9KucN5Kp9fAKH0/++sDvZtX81wha9VfXDC7r?=
 =?us-ascii?Q?teNVLRiIu+8OrxYlyUjT+fsPtNVrkJgXZTN+X6Jo95riZMlJpbcjZUlYckG1?=
 =?us-ascii?Q?HapxcUrYkfvaGUR6AdKMaC/nWA3jyf2SnRb+WzNT2JA+4udfeHos995+zUsJ?=
 =?us-ascii?Q?yWjEaUWzO2zIKaemo/SYx8nYAVtna901+wNw+wz+k435WFc9MiUCuE5GD+ZU?=
 =?us-ascii?Q?CfBL2JEHVyOs0GNTjnUgmCW+SBB8s68vaimnvhPsC05Bm6QoFcHxla6em3ZH?=
 =?us-ascii?Q?0R675h2nlvKNlID3bUF4Cw3uf0IwgdVjVbIkB/FamMyscOIXLEEZV1zICGL4?=
 =?us-ascii?Q?Pizg0fx6c+nwx9ytgoYdii6AcIB8TiFhBDNDCDM3UHb/9ZpsM/PuZk0ihuJt?=
 =?us-ascii?Q?ZuKVoGx9UjUsXGy/phKeeheyHXD7oBopIdPvft+bSAaMJfk+zzlDV5fNV/7p?=
 =?us-ascii?Q?n9+jiQjaPkCkc8AEJlOosAkgvswy1KL1t/wCWRvjfFpUDCa4XJ2kEy3p5lkO?=
 =?us-ascii?Q?OS9y/GTPQtBZ1PwKkpO/yFx5XfNHGlV4hKafLngudxLcKBqUz6LQMYo78WFA?=
 =?us-ascii?Q?9e0BPy0O+jyU9Q3ykl9amA0JwkXbEx51z2v2wa6XUwje0Nstpbg1YNvgENlZ?=
 =?us-ascii?Q?ilFLMT2BKvU/FcUOJIqhZqBiwD2YUzymFShKyl4l5YHrSW/nxvfz/x2qGCDa?=
 =?us-ascii?Q?odQds9YLNpGFkvBEVHmbNyJh/iMHUD2sTjRpixHQNU7C/M/FkSDN/6nNBiOC?=
 =?us-ascii?Q?yyR93M1oB1wXWe4qiU03ATiH2N8XsT8ue3ZEqOiX0Y6bsMuazZDmLXkxIrcc?=
 =?us-ascii?Q?NBCqbZecEd6Co5xhh0c+0JPznOyP+9u6kAmBLBxsqu77aATKJtFLiuKf6lqE?=
 =?us-ascii?Q?cMP887y3lIWW/palFY4r/Oalzlw0JhtS1tUCdNPHV2iSQoEiTFkyZZq638u7?=
 =?us-ascii?Q?7Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb4dc562-09ef-4ba9-c794-08db342b55e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 10:08:13.1886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xxaKDFpf/4hj9xaFGBScyn9+ElGdcqdQZLojQch3Ir3DzFtYNB4wASi0oWCidlJQvko0hZmr/UAJiWOqlCfsPe5HzU/sg5LbCcS6q3EkhsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6130
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680516497; x=1712052497;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GWNpkpU+eTDohyRkK/rA/xZmrdal8oxs0NzKtDh54dA=;
 b=NQRU12BsmNt2OxMhv5vqnHJd7yR2KAmaroHQo7c/hL0FxC6dnGzytqsb
 52tSw9cKE8zvIVfiVP0C/ib6xIGC6VolABPsHlsm7doKbyhkIBbC0Bsoo
 WrV0qlxxNlEFZcIdyGnHZuKe1uVZFq2QCqMivgtDr7InQ9V31LgyoTvpb
 dFLceFfSfXH6jSp+PblpmgzGN0E1M0JVgN7NcEEAKS2jXWZu95C4PG4Bw
 C9rH9k/l4spxpHUOFtpPVJ289f9dp8fBb89xwHAOQS5vetYrn4v/2E4yf
 PSwD1+uFU2OcAPisBLPu+9iC0yfTWTK4GgG/2uUofqI0/iuZ7UlzRAJeu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NQRU12Bs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] iavf: refactor VLAN filter
 states
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: niedziela, 26 marca 2023 17:27
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 1/2] iavf: refactor VLAN filter states
> 
> The VLAN filter states are currently being saved as individual bits.
> This is error prone as multiple bits might be mistakenly set.
> 
> Fix by replacing the bits with a single state enum. Also, add an "ACTIVE" state
> for filters that are accepted by the PF.
> 
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 15 +++++----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 ++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 31 +++++++++----------
>  3 files changed, 28 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 2cdce251472c..00262f721761 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -157,15 +157,18 @@ struct iavf_vlan {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
