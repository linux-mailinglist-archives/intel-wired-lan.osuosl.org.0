Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32385746AE0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 09:42:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39AAC60D68;
	Tue,  4 Jul 2023 07:42:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39AAC60D68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688456542;
	bh=IBDYJ5YfE37OfOMoR4nr1aPiZpCzMNjionjHSU45FiE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fN6FJ0wtCS769dceyM/PA8NYoRu+a2MPizu8Nvmv+kuYTsx/xyFX05Ywehkx1dAKU
	 XQYfFFyaDFLyP2t1hwe0kvgyZ0ESFjaoEipooBVwf4Zs3yHOfAhnlT4uLzrqlbsY1E
	 aemdydoxlQooL7gmk60vv4yCLbkiLc8YF0Vxg5CDTAuhug5cZOF9P6ZCFi+0/3TdHs
	 MWYE1Qbr68uLqtPWYAToQWHB0h8Q6xVzl+lsS4sHCVKvr4k98NDag59T0fGH3+2jCN
	 4bTvZ221RGAC3VRfS1qVkWJ9Jeb/o2w8zNMaApZDoA8Y75J/AJrB4ITJ750gL6uGXA
	 ePRBNp0ISHFKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TsMMsBYQX3bY; Tue,  4 Jul 2023 07:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0ADB2608A6;
	Tue,  4 Jul 2023 07:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0ADB2608A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1764B1BF331
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 07:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0A4C409FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 07:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0A4C409FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBZHzRVNiirf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 07:42:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D4C408DF
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8D4C408DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 07:42:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="365628382"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="365628382"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 00:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="788776605"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="788776605"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jul 2023 00:38:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 00:38:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 00:38:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 00:38:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kwl0kPHeLn9CBXoUuP48mj1Kml8ZwrCkKIBVKVBAAD5uN9uAhpTp05GVwmczy/dNptz72jq/kTQ5eHhjEXX8+zFbUWrSE5WKi3D5nv9LSZgIcDH7NumrRhtJ9/oh6LHtnPIukAIpA1o3ks1Xdx7Tp0cEkrhvRK/UXrvxX2PpQ8TjHHTanWBZIhu7w7fZMNZRkSxQpAewf3elXai8b5P0UA19xIhWs8gDmwpSEJnVRcERZfqKadLAU3R71KLLO0j/32F41ZZOA4HmLUz+M0pYw8fyw2+pRFpYOaOcz4v5GzQ4seGJqe615dVzLG/P9y4sjffTIMm5OKYLqJNl/bLgEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4+UfRli2ZO1qL5gmc5FQuYNh8ln+RWptMcgFNnkaow=;
 b=dIE6QPBBheFxsqi9QLFCgNB1b2axUyWHVM7kLecF6LUrUS7UCRvLwJDqd80AwAZgBYDBV7p8argp+0e28GhSsSxik9MRb3bhmI5AGluM3tWEXLgYqsuRY4dNrmE4PpXirR0ZCR/0HNyEnJz0kr1HGSQz8k8Ajmg4W6aa2z6GZGe+diDdX/grrTrW87DH5+wsXTuZfgaP4Sc8zf9V8o7DwNhwE122mzkVRpdkx1yHJo93io5l57oqyO7o7L6buLHOEYPX+/4rcmwlHAq3cpeDoPBzaQlVCo4vPGypp2vNIjrzA8zanZThMxGA/eujoP7NnZwgHInt5CnJnF7wUEd15Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 07:38:23 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::4f05:6b0b:dbc8:abbb]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::4f05:6b0b:dbc8:abbb%7]) with mapi id 15.20.6565.016; Tue, 4 Jul 2023
 07:38:23 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
Thread-Index: AQHZpCB1ah9A4W1eO0m2o54BmDbDWa+VU4CAgAqUbYCAAErfAIAH3+UAgAE5aYA=
Date: Tue, 4 Jul 2023 07:38:22 +0000
Message-ID: <BN9PR11MB5276AC6CC905A57A370AE48E8C2EA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com> <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
 <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|PH7PR11MB6053:EE_
x-ms-office365-filtering-correlation-id: cfab5335-d6bb-498a-2191-08db7c61a54d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5BxeoHmcWEc4dZuxnbh5J6518+r8udKNhzAPCS/2n8dMf1Fq+PJ7SnHFm6JKXA2WcbkiotM3n6fAXC5rTVbgxt6n+e2EWqJqq/0h+6CEs0W0D2ZjdCEuUX/uY5siNAYbbhFvuA8O09dfRccH//k6HlLBvaoNkSmIekex3eZCE9YySI8bhMWyS+8Ze9twlEKFDasAOfYLTs3kO08400u4jTYA07k++vuGir821tzlr+s8mcToxC04haIIdoi75161ZhU1Q4IbXQ9ZfXBWUEonh9IwR9g4Okd0+GiJRi9kpaLEjwkFwfnCEbrHnMZ1bTGFBcllpWpzUgdpmi3XOHcx7OaCD/W5s0wvVSrLYPGb+q2Pxr2AuwJse7Ev6ZJMhGSOOdThG9ZwKJjf6+A2vuXLEqLRxXYxD10JGNDrwULesKczBECNUn2/tIZH9oiyxfK3DaZwldo38lJd0wzlDbDBMhNgS1X8rFV0wpdOuM7Lq2m+XaF4OeCFMRnHUwbgXPVkxlMFQvs9Knzsa3hwLf+9W+J4+4dFjt4b0Oy/RTOFtOHxWdaxYOVtKW23272W9P4v0jJ96wMv3lgNtz7+KThB1VdG4MUiD0CnRkYkLDIVtw/aggFzWk/kgU9aszEeCDmy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199021)(38070700005)(2906002)(41300700001)(8936002)(8676002)(52536014)(33656002)(55016003)(5660300002)(86362001)(186003)(478600001)(26005)(6506007)(9686003)(71200400001)(82960400001)(76116006)(7696005)(122000001)(316002)(66556008)(4326008)(64756008)(66446008)(66946007)(38100700002)(54906003)(66476007)(110136005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bNEpZpsJSY1KkzohDkzYvyuWlJy4r7aFrYEcoBQCFy7FA4KumdYCSbffFg3q?=
 =?us-ascii?Q?dEAT5Y90tM4I4ONSChHY8REXNpV0IBabKtElzVK+LDRHbUY6CVizZHi/w3hg?=
 =?us-ascii?Q?f82lzm99K/PRSyad+uyjW8IZe3BXkU0099mPyG+SbNmvNIhv0Lg3GrGGM0gA?=
 =?us-ascii?Q?U8tui/rrL4Zbq3hbt+u2nWc+/wsTsFqMYmsrd62mdaunz/FVPVZUH8B07Csa?=
 =?us-ascii?Q?6EXMPLkV+DkkW00JA5MegmdiaehZ5LUN0dDkEgC233XrwmMUxq9LA3IgQt0W?=
 =?us-ascii?Q?k6bMgssSquvqACDlB/UkPJYm2Bmg6qS+g9DSWfNhzzMV2nWZqJ1RMp/z1v+W?=
 =?us-ascii?Q?D8DvlJUfd0FUnIraCxGk9YtDQzuMzEAM+eHJRPZ9aGXXc0RTYsaPEabBTDZy?=
 =?us-ascii?Q?hdMdQRx0zxUPd5QxZuUM6CbwxyzSVGoSM1Zw/uaz7ux7yr0EdrxGwQi5UKag?=
 =?us-ascii?Q?yhNKAzCTMA3Rb35H9/tkUVHsTDs/+9MEDslAmfAKwXqnH55XAWWw4b5dFjfo?=
 =?us-ascii?Q?cxZL9M62Hh6rWdVF3G+XRd/yG1StqSkKZM9uAw9GmSpUfQD3aZ3kOCCKGenM?=
 =?us-ascii?Q?AsVhZU97jkv9NmeDc+OGYhXxbAMVuFHVRVvxHNLKS3pmPt7yUnBTuqt/SYgO?=
 =?us-ascii?Q?Xx7R+eyewJkFibzVFw9K9JKtJCco55pmcJWvEFOZlVQXMZHfnTEYWx2ZN93w?=
 =?us-ascii?Q?UOzY6qfs71pIUj2AXpk91N2YrG/mG7VbEr4C6itLlGzr9FuS/109vGRw64PT?=
 =?us-ascii?Q?4K+ENFp3C1k3mNTvKJAJ2VZDxQeT5frdh+fvMJFOXEnlWuynRoDh3AizgYyB?=
 =?us-ascii?Q?/A4/fDW/khmHUflWH1d9XMO3+bJQksKLbm9ScOmscBNRlmWGd3ITT7oDnbQb?=
 =?us-ascii?Q?yQGNw62o8HXJUQI3L9YJBm/a6T0uys4fQNYgJSYDi4xvL9Al68lOqB/kwbIv?=
 =?us-ascii?Q?pmjcrat+5xqpY3G10Iz5OHx1BVpOkI4sIIqTs+hVl4DytkVPXagLmp73gJrE?=
 =?us-ascii?Q?FhUNMdcwEtUtgKr8i4cTb6VpGQ5oykyKNlrW+aG4V3bX1/JUYgHFQSqaETFY?=
 =?us-ascii?Q?Hbb6J4liRE23ss3h1BJjQQZp2zawQuSZ4v/7tNvLMqbwCfIgLtnVccLcNN1b?=
 =?us-ascii?Q?vPAH5ckBe1IxDRoMG/kfZVo/tsEW081D1KkFT7iguskMejrZq4hRbj4d0NEF?=
 =?us-ascii?Q?nDSnD4TdAzYsYYPec3+Z3iMCcLqGbl6k+k1ynART/hVHd4GqRc0R3PlfOm2t?=
 =?us-ascii?Q?/9EIiws+vdAVmly2iMoGCTTrI88AVKf91HJL5mqfHGsANmAZCzteqzmO7iIU?=
 =?us-ascii?Q?rucKKBdLOI630qpszpyisbsaM/nLrUKmsYu2pOu5ZwjqC228ZPce/R3xemNE?=
 =?us-ascii?Q?VMpV04j6Girrg/9sBrUFEbPyh9jakUFXX7fHQIldQVL/N+uOish9PfFfRiFH?=
 =?us-ascii?Q?TmrRgQHP+VOQqRqkAd3DPyxN7SZ75Yt6F4PZv4+jmA5aeM2FbIbFzJOPJ9/G?=
 =?us-ascii?Q?CVZJcgpFMuuFMYxu4l9GFPiM4OKZT1z6J8pfETwcQuhe/byO4BGdBLa2TADR?=
 =?us-ascii?Q?EFUa2ahId+JTfmyauNMEjKtVtBnUdqTfO9Kb66YJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfab5335-d6bb-498a-2191-08db7c61a54d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2023 07:38:22.9790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0+udu5hXajiDdRscM62j8iv8ayhWaakhHw0vb2tesvDOLecPJVV2wjVPsRckuyBOEXeDyEiDi8zWtFBGnlNStQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688456534; x=1719992534;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q4+UfRli2ZO1qL5gmc5FQuYNh8ln+RWptMcgFNnkaow=;
 b=VjnLFvQpW2vdXBIsimE0ZWNutwpVS37WcUB5H1h55YswWXb1TSDzn88l
 4j+Dt7O5X+jQHuz+TxYQR0b2NQ3I1Eqhy61aodoJsIgimeE2TidO6xUjd
 I64lrItUY4/1ZCyg5HYYFmxvfaXbUzGltzZrUuD4wcmGyNDXp3EbFMj4E
 Ss3rjDrLlTIm+6gaWUAw/FtKZPYmXE1DKG3AfLLHOFUylRfeSM2xfbOcE
 Yg05iapbYCTBMfJ/J7FHmaFW2ZkgVemfzJHJKxGQSnPR5M0k7tLFm9G9V
 dytU08KF6CVqAgnElnm7UgQ0wEnHvvkiczXHnjCrVc0NOlkpyvF+q1+eJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VjnLFvQp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Peter Xu <peterx@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Liu, Yi L <yi.l.liu@intel.com>
> Sent: Monday, July 3, 2023 8:54 PM
> 
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Wednesday, June 28, 2023 8:39 PM
> >
> > On Wed, Jun 28, 2023 at 08:11:07AM +0000, Liu, Yi L wrote:
> >
> > > > You can't call VFIO functions from a netdev driver. All this code
> > > > needs to be moved into the varient driver.
> > > >
> > > > This design seems pretty wild to me, it doesn't seem too robust
> > > > against a hostile VM - eg these DMAs can all fail under guest control,
> > > > and then what?
> > > >
> > > > We also don't have any guarentees defined for the VFIO protocol about
> > > > what state the vIOMMU will be in prior to reaching RUNNING.
> > >
> > > For QEMU, vIOMMU is supposed to be restored prior to devices per
> > > the below patch. But indeed, there is no guarantee that all VMMs
> > > will do the same as QEMU does.
> >
> > That doesn't seem consistent with how the kernel interface is defined
> > to work, I wonder why it was done?
> 
> Add Peter.
> 
> >
> > Since it is 2017, I suppose it has to do with internal qemu devices?
> 
> Do you mean the devices emulated by QEMU?
> 

This sounds counter-intuitive even for emulated devices. vIOMMU is
involved only when the device wants to access guest memory. But
by definition the RESUMING path should just restore the device to
the point where it is stopped. Why would such restore create a
dependency on vIOMMU state?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
