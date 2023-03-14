Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD69F6B98D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 16:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EAA940AF4;
	Tue, 14 Mar 2023 15:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EAA940AF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678807182;
	bh=VX6K4GdqdjqPxdV0Y6QA8QvIjtLDJH+JwvXQFdm4AkM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6ZpG8BXphulbTpghPT9Qp9fO3En8jJaJc5ftaTguPgoEhCyDTd0kYS2TzH8bCAKgD
	 FW6/Du5LfqEoD8W0oRHCkTTDVdJl5hlk/yR9q02aAwirNgq+vR/Ooc0xDjweNl68Mr
	 MybghwC8H+S1PP2ilfV3CwLnYLpVlYXuv1vLkYmTrp0T9zsBFkfEzlwuxv6JVA4vrN
	 7P70YqwIB3JRGSDCAo8QiXrjEH6VN553W1bvrStcZFNwdnGv7hYJ0y8dkY2JJbtP2r
	 C29tvlHUm+lJU6cEF4jU+NS3GZf9mHnLD/hK4cPFVcaePjYRQU9pHUZqlL7Qic/Yjl
	 Z5d2ZrDjQspRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zuRLYcgg1HKN; Tue, 14 Mar 2023 15:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3950E4049A;
	Tue, 14 Mar 2023 15:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3950E4049A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1A501BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 15:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6ADD4049A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 15:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6ADD4049A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R5f2d6nL9qiG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 15:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D36A0403E9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D36A0403E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 15:19:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="338995531"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="338995531"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:19:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="743350797"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="743350797"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 14 Mar 2023 08:19:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 08:19:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 08:19:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 08:19:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZY/K904gZ0sl16pvZOYSZ7yo8whd3bjYtYlRdkHdUGASvFzW+s6umYSKeJRGeYCZOIog3qjT5JhJloyNcZq2yvk24STOuS/7A6mfjq2UfXKsABamcy47h4Z9M6LSZok4ytqR6LK+NBZ8bQ90Uzm9svBoyCdG+SDGdpzRWwcdf2ucO0gKoQ/EDwbN3JmWg0SMGjo/2LXlHN7ZfaqoecWK6+E+g1bAs0eNtyDEEgh+VJhBuOv86dnTPZKUMHTmyZuhvpPoJEEH1g8hhWfknamnhcWeY7VvA/LOySt38GNk/I0oRbXgfGx2VntH/FRbK2vgfxDBQGh5f93M4OtfxV2qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OYnB3JwvtNhH9CPxui51lOXa5phTsXG2NooAt90GJms=;
 b=ioir4AyjbNuNdUyiER1xa6AR2jZaILGdzQXgG72MueoRM1ufpXZiNr9B4Iw3hVhpRHDOk3a27eHF3vycPrfhGgY6SOX2LQ7k6BMLjcgrWIfZylpr5iY8Gnakb0xquUV0V0mpwWC/jdan0txQtr131mIK3ciH+GGT4qdcOTqzdO/Z6X4Nmw8ECauIEUU2mKky8wGCB8Cjo0KhMOMPAkk0+uBGa6o4G/JlVu6+xLzroy+qDMM3EfAugcZRApimEWR8EWGBRoz60Dqm2RnzcNP8bZQFnRG4hhSIsoPOqRPyDw8clVeqyEKBXZr6btMimH5M/4ap9kfPH66ZWj4fr+OODQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 15:19:31 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 15:19:31 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND net v1 1/2] iavf: fix inverted
 Rx hash condition leading to disabled hash
Thread-Index: AQHZTDWTFiAVD8OdN0GSv5AXQjrZlq76eCbQ
Date: Tue, 14 Mar 2023 15:19:30 +0000
Message-ID: <BL0PR11MB35216394891D88E6040CC1E38FBE9@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230301115908.47995-1-aleksander.lobakin@intel.com>
 <20230301115908.47995-2-aleksander.lobakin@intel.com>
In-Reply-To: <20230301115908.47995-2-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ1PR11MB6276:EE_
x-ms-office365-filtering-correlation-id: b4875ac7-09b9-423a-a307-08db249f8270
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aztZhtNKdEZGEgXOd/tBc37rsiRtuabJPmtJ+qmWvqv5V5krQWlUYF58aOZ2HUcEmMaz64RI5EoMWsadggpouvh3v3sfkwhMbU+lJJq0D31auoRVHmD+e9t7Hl/Rfs31GeqYrhkzJtdJ6O3hPOixLb9r9g1GcSqC0FPOyo3grJG3Et9ZjXfnS+4ecqaCGnL9XsmOW5OUbDsU/RVpW1R90mKVY90qWuUhWr6hUzf0qG9IcLT2Ovqm6pBf9au7tXOBCZzdi6Hhsa8wxLiMsC0P0uvN3jTlQ3YYOC0rhJk6osDSnlOl3+WyF6CqdIkxg3J6kMQgedga6U7klftMnd5zC8OFU9NOSNyMMynWQHSrxL0/alFGDQZv4GMxrmlKLaiFXtS3QlRkc1UmW30nQjlkX2W8FpjUooabwxI12eMnDfN1sFtcQwyJ7GQXT/MiyaRQPemVgrVGEev0Y/amB8s8iMXfbM6PbQU+nU5RDGKvvdnVZwE8Ro/5pcmDQi6RSAmusr8rFQmP5QHi5UcCWLKN5Rtq/XVFUKq/4MooCQVvRaMyHF0J5MhapVB2m8jA3TVc8vP3yBnKXZxFJaKB/iPKdJlehCDGeyZPQTmTmPsdka94cUoSyPIPGNkXxURgI+aO/S97uIjL22oqWTqXuz6eENxNN6iTCuN9pzBQW+E03n89Uuo7nEJI+syqwxKFWeVHT+yvyoJAgbv3qaTBjSQ7/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199018)(6506007)(82960400001)(2906002)(186003)(9686003)(26005)(53546011)(83380400001)(478600001)(71200400001)(7696005)(316002)(8676002)(66556008)(64756008)(66476007)(6916009)(66446008)(41300700001)(52536014)(8936002)(66946007)(76116006)(38070700005)(122000001)(5660300002)(55016003)(86362001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?4De+RzLeaWp7ArCXXatmKbHhhAnPn3GBObQFAaI2eLY6qRXYGCEv/Yq9PJ?=
 =?iso-8859-2?Q?MZOcA1dWKcyPpoM1NJltTRYuC17f4yYa4WpT/y5ILHZCvOaBRAKyVbyb6c?=
 =?iso-8859-2?Q?KqjgL0LTLq7sfeyrpTJATUMgL7/uxfae7NchEKnEeVscDXqC8/z1QO/PK6?=
 =?iso-8859-2?Q?PJRdO1TN+T4PO2khr8Tcnjc31JOFddlS9tCI9fk6zUi2XTmhhA3npMJTGB?=
 =?iso-8859-2?Q?003iBnYjlcfRMotpVMra5meAp0Dxm7Jf7OHItiBCbgJ08C2kyeKRWVC5n9?=
 =?iso-8859-2?Q?fuMYPN9H4aRKKEovlnF3sqnd11SzbMa1LzCjSwFr/rJwKfYIvjaLy3xkmb?=
 =?iso-8859-2?Q?va1G/8F6FxJ/BvakJDyVoCEBnzyYbnjECQWtmFRd9T1WW+BN3JsLZmng0W?=
 =?iso-8859-2?Q?RmJAb2whINLv7Q4ipn1VKSzufM/2JRIfW/vnBhePa9QCVJc1P5C/XudQfD?=
 =?iso-8859-2?Q?l0aBaxip3yWaayfBzDV8iOgaz6HEfyKUS3IdZKPqALEHczNyu+0uFfK6BE?=
 =?iso-8859-2?Q?QPtq4IFtZRK057qVzBJpx/M9q17Kmslwg41PNlp95NOT/9VdSCygqXwkzf?=
 =?iso-8859-2?Q?+oSHvPZXIQGmq2odNtJDL94o74mX64kTKYCKIZkiNdzjq/mAo9+F4ZcGxq?=
 =?iso-8859-2?Q?SLkzYGBflcjhIvsXMP12jhXOtG3Jeuc7TFbv/cSib0PxvKe6it1nqAUMNj?=
 =?iso-8859-2?Q?GAm3Hb9AnSwJWNrvlkgM19uGc+f7W3zn+7GCfpc9XMdzfjYc810VBeOVPb?=
 =?iso-8859-2?Q?1DE2Sz6qAnEMw6ZxS0GIYB2mAT6glaKtakSJIfWxnuTYCwb75QBJZBrmWv?=
 =?iso-8859-2?Q?hQUg6eP2x1C0CyCkxzHRXnYqeB69y8QUHuN4Zmrs4vmpl5spunbtmrVIBF?=
 =?iso-8859-2?Q?hYFg9F01nKqpIdh9XcQmRjr65EiGDJ/O87l9Zb8Pc/4+MH0uEstH37beg+?=
 =?iso-8859-2?Q?KcEgB7s2qknXJIvcqxOe9oTQ0DrdKcWr8ykAYKImcsrXKAXAcyukWZPR5G?=
 =?iso-8859-2?Q?EMdMIyg/gud6yIf2xVUbCvuKt4J/VPMihXqNOQVvZS9a7mLebkct+4o9Gp?=
 =?iso-8859-2?Q?AqyU/0QOXy7XMPb6wbii95G9yCPyswfQysr3piIS9adVoYMvcWZQHq4Ajj?=
 =?iso-8859-2?Q?nytwNbt4G9tVUFGftuO4zjhgjGC0420F/yin70lWRZFLZbQd76ysRjPSo5?=
 =?iso-8859-2?Q?KsNWVNxWgF2wNlNLylb4B9C3JLzIuYz5Ogz6XGpMJKwpytee++wZNwLrTU?=
 =?iso-8859-2?Q?++JLsylTAMoOs5vucUeVOiGXUCT126yCurpKdLT6noWFtbze6UYVmY0xsc?=
 =?iso-8859-2?Q?ayOZvWJ35drcve1tBrqFZYEpf5mlGx/QlFo8IPy4h2AQ80AuLuVE8dr+4Q?=
 =?iso-8859-2?Q?KQfpikAWanLceweUnc7nVuflA1H7DWeNmlTsBjA6WJXRJSb3Dzhia9AEUo?=
 =?iso-8859-2?Q?DNHpaDPYM2iPAUhDfvpB7G2LmMSdu2nnzfpXK1gxvC3BJ9Wb/mX9VI8A4q?=
 =?iso-8859-2?Q?cRix8IgmpmnxKrycTrFQw+QJR8G3BYUR8FZ0imf/pXvXJ99D1/nsEZD0QH?=
 =?iso-8859-2?Q?iVfVQ+/Mlc6m+e79GsKxNtae3G7OylyvkIF20J3lWcWPLqARX1VpIlsVoB?=
 =?iso-8859-2?Q?safvPnogySohjesSrutqp02KnU5rCsTeacgCyYc6kfTDME/b1TCtPOig?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4875ac7-09b9-423a-a307-08db249f8270
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 15:19:30.9564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5BKQI+alAT/RJYsjE2CUM/BMGd+O1ezV4R3Akaow1cYolBgl4PahWzJNG0bqWXpfihqlziUp6cONHiAHsIuP7YgTehD2BB+LxKokYD/e/z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678807175; x=1710343175;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qKQ7lkwRSIiRB5IVSk6vrqIql5uLLWU8TjrktNx20wA=;
 b=i24XoM9jQ7jFahXmJNyHv7d9pHRPSMW08J6tf8bCS5JzMmPDhn9urBA7
 NGrwa1wmcJsDE7zUEUpep5Bb+rVvzCrXsnb+Q8o6DGU0RkxR9n4xk9bVl
 43LOFDk/lJfAurtrv8Mie3mgKvY8WPka6D/CyuNGBenULHoZvaPzEVZic
 X0KCJTeWQ13Vzf0mcDPf3rFT+ieHeobGLYtTo7mfqx109IzhByT1uuAIZ
 WIJKtmo43uBd4UQwavOLmAZgL3UBsBleJxN0KVk5W/cTtYUCK04hsWnqk
 CFbT7XE97VpfuI1J03kx4DgJJjedd6gumbxWjPNhqKUW4OZy7eidi0J7J
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i24XoM9j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND net v1 1/2] iavf: fix inverted
 Rx hash condition leading to disabled hash
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: =B6roda, 1 marca 2023 12:59
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; netdev@vger.kernel.org;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-
> kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Kubiak,
> Michal <michal.kubiak@intel.com>; intel-wired-lan@lists.osuosl.org; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH RESEND net v1 1/2] iavf: fix inverted Rx
> hash condition leading to disabled hash
> =

> Condition, which checks whether the netdev has hashing enabled is
> inverted. Basically, the tagged commit effectively disabled passing flow =
hash
> from descriptor to skb, unless user *disables* it via Ethtool.
> Commit a876c3ba59a6 ("i40e/i40evf: properly report Rx packet hash") fixed
> this problem, but only for i40e.
> Invert the condition now in iavf and unblock passing hash to skbs again.
> =

> Fixes: 857942fd1aa1 ("i40e: Fix Rx hash reported to the stack by our driv=
er")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 18b6a702a1d6..e989feda133c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
