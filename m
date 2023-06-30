Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64D743E9B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 17:21:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1320640BF0;
	Fri, 30 Jun 2023 15:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1320640BF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688138462;
	bh=PmpYuUoFTUb0UqEHrxVb2Yb0nqnkw9CuOC/z2c6uFAU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sTN1I/6HjXPSBNObZ8gE7LKv5qCsLf3KJnWISutMjAlrHolo0/nG4n+HW5LB/Gesp
	 TKaqYXr7huaGkSPr/8eDJTOaY0ThoO3QqTtBVEEItgIKvW31B2+Rhh+imJURn2sqcP
	 y+Has79q1Ghl91YaScfIoLQNX7u3gflmAHryLNZeGnwBi+mMW1rHNYfkDs8TToWZgQ
	 MU7SW/K5HHJnyLRVLP/OUMn5V3hbBMQNGlWcBrTAy6a7N4Ju3vW/OqcQCNB5O63d7s
	 8MWO9GsxLbeCPVfklmAwHe3p9iWMBYiMIYXKb0WwC43YSwmO3tVM+fbP0dB3dk1hte
	 BG74enqmS8erQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lk2lUPvh6AmS; Fri, 30 Jun 2023 15:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3E32403AA;
	Fri, 30 Jun 2023 15:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3E32403AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1046F1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 15:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9BFF41FEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 15:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9BFF41FEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44yuL7uhyE_w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 15:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC95341FE8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC95341FE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 15:20:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342001794"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="342001794"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:20:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="807806639"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="807806639"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Jun 2023 08:20:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 30 Jun 2023 08:20:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 30 Jun 2023 08:20:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 30 Jun 2023 08:20:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PLpvg3lOrQDerjsytkucZGy1ajY9ZVmcimknQIx46Qrt4xgY6RL/6FCvRS4rfpcZnyGqxkY9bSMCzUzjhM4SbAwIqW5Lirofv6WsVJjOmWsymOOFixa5YecpWMwerO5tT+eOBVSHTzjQbzWfXBPTTubOH0Zn9E90MoUrAvB5+IxyiFl+kRrm6FRRQfXhBMNsIlWZC631HEsaQ7qeZGIHUvAZU6V63OqjRndI/fm9xRSnVd5C+ArcMgP8GoolB5j+95s2FAL2QgPiElVdrdw+LtpXviP6TTjFJVKE6dMp7LDEHbh04KgmqiqQJGut9T2qUQwUcff+8iYsJGzh613HqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SRfoZjRtorQDvFRf+brpF9xLePGqJl5/wfZaxPfwLRY=;
 b=PxDhKTyQqEqgtsHzkzEhw30VoTvbQzURMlnLFoS2dHMA8Ba6RKZBfyZTVTil1BD4atrIWstjNkrB/gPdDfO65v66WUWJ/NYJyWMZ99lLmd6JHB1nWDPiqFNhjy1bcz3pftw2szkoRReiFschkZAxToW2kStOKlmhp3Gbx71dlj1TBi9G7D1twCiDWD5QQyvCksXdeX57Hogkdxs6i45iXJ7wUJW+X1oUVJXHGty2R57BdKmbq0L6Al5PXAO9OkqtvP550PRVP1Z6fUTwHg8R1cDja3zGlWk/mREPO1eizF/R6sr0R5WlGjK1IRRL4cb2nILo3BoWUdGcAGeItdPAsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Fri, 30 Jun
 2023 15:20:48 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::af4a:78c1:317f:e717]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::af4a:78c1:317f:e717%4]) with mapi id 15.20.6544.019; Fri, 30 Jun 2023
 15:20:48 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware v3] ice: add
 LAG-supporting DDP package
Thread-Index: AQHZqO9CrlTXzoBOFEqT2yQgQlhAba+jeiXw
Date: Fri, 30 Jun 2023 15:20:48 +0000
Message-ID: <BL0PR11MB31229908275170722CFFBA05BD2AA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230627120124.93971-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230627120124.93971-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB6836:EE_
x-ms-office365-filtering-correlation-id: 798e5239-a871-4a8e-2347-08db797d952e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XKnoxmPM2Ib5zjmVF8FeukZQXAqpfdsHCG3+ZL+frTEgFsalfxnRd0PYXjDjsm648qJeM5QNLOa7eCcHRcLgUk4A78T9IsApvOUZvVoioLV6strdcNDX11iWorlyRdQB6UfqjWPH9DO1UZJUIAhgFlnLU6EfaD/foG9OeelbNMhKT+O43uuV2FZ6oiB1YwGtJw9CdZfhdDFCwhSzfqqrdLBRnIpv3Aj1Bb2tnEZMqBZLxtfYQdAwxrFNdH94f2Ah+J62ZdCt/YMA5OLeH1DbBfLlgZ8Cs7FXqyfEzNlZ8WzQVwhhNVS9i6+9HOTGxE+5EdrRR067rtv+BDg3xFdeEIJHYOd+JLIUBfj9LY3W5YSL1ZTlVtKI6H0eVM0zOEC/MTZZ3bmlK0bC+17Hz24czZPp2w1vhTo4Qb/boWn4qiLyNIpOy8sBxxqjBIXRFhXg28S5PlQzOuIUxEZv7xqIEt0uvuVkDDIsj18VtE1Ctx51X0S/KehTPT7H8+GyVsClZljWPDq3FT0+1eZ/qbVqCHfpgB1sa6wqQ3DF3Z56xzq9IAA08zN8JZshcUn6NoA6XFTyM7ieFtj/ONW8l9YiBnGYJCeK6KOTFDlQdkC95uUtusn6mLiNvsDHyJiSuK61
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(136003)(366004)(376002)(451199021)(53546011)(122000001)(66946007)(33656002)(5660300002)(86362001)(41300700001)(4326008)(38100700002)(66476007)(8936002)(64756008)(66446008)(8676002)(316002)(38070700005)(66556008)(55016003)(76116006)(82960400001)(110136005)(107886003)(478600001)(52536014)(9686003)(71200400001)(186003)(2906002)(4744005)(6506007)(7696005)(54906003)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CwkWiqblc4sAn+MnaqLVuOjKIffL6hS7TfuN6AcPVlg+eZg1S42dwdJdhfin?=
 =?us-ascii?Q?lEPkfaC0feqKY+djAbc2XniqROUkK8vfU1LhbJNOocPyAxK5i5dVm3qoGZVb?=
 =?us-ascii?Q?+xduy1N378VNN9bavKGKqgK2sHGzL0iTMWXS8l1Q8UNLzFgY1HZqVZJJJ6yj?=
 =?us-ascii?Q?5B8h2J/EaS5Ia791YXBwr1aiHgafUtUXTXp9FssLMUzzU1QPqIpp2ThPdNX9?=
 =?us-ascii?Q?qCOegFbSc+LtZmPxfs+y3ZF4tBXDIk2cuAB+PK7vCtO29dPUnARhvCPH98ds?=
 =?us-ascii?Q?nJy4NB9bFcH2xL5DnUW2O32R4c4L6Z5qlJK3Tq5Jwa8o8zRr+TqLfnjvAgk5?=
 =?us-ascii?Q?4V6abGkYG3tocuKPLpsllnX24fbx2T0Mz/5NkWR/eU6wlcj7vyEuJdd6iGN5?=
 =?us-ascii?Q?/LAOdkZmgVEkAmDANikMrCwSvHZb1xrTjV+zU0QbD/9ci6Ufdzyamdc9Na0C?=
 =?us-ascii?Q?fZRuzovjAiLAdzRsz0QjqKKUAa0zHRwk690jfDlwoD/3PWPpU779SaJZ+018?=
 =?us-ascii?Q?IBLRP18VPSc/zMaHLH4AjFqaIwRM/urZZOJMMQRO9Y2JD+/MtOS59cIR9BYZ?=
 =?us-ascii?Q?gizcsKXU4BQ9sQdUo5d2GT/NSRQIduAfmXn4G6LTqRLUid5Jig+1UU3gwqQL?=
 =?us-ascii?Q?453XxQzSzbnhA1q8328j77sH2KdJX+dDFv0DhguU3xhy+SMJYcS6AqRwhLtZ?=
 =?us-ascii?Q?iXME2lFirrepw8dCGb4P+TetudQGQXzuNyA4bBj3IHfWJlMJixhhrlOSU1Kk?=
 =?us-ascii?Q?gWmQcQD5JhQB+MhAtZn8RPwqYRHW0ouqkNMW5Mj45ITR4RuHqNRtY0Uwy0+7?=
 =?us-ascii?Q?JsEeuxUbIYyRnCge9klmU93tEkgPZDlG4NZodfsT9gz0XCF0KIK7grx2UdFs?=
 =?us-ascii?Q?pqAzpOK6iFq0YgQR8bRaDbyCXFVrWp1/epaYsBY6nJnPoBJ2OSESAm9jXI/5?=
 =?us-ascii?Q?Al0aBAV43WEdQ+gNEkEy1vO9GD877Q/evCgn81d7S6DuAyS43r42TVaqTEwP?=
 =?us-ascii?Q?W6rjfhvlq28ZEIsPNTJLNGtpQZXOXYFvLsVTqDN6Qsi1e/LcaqRV8bZadCII?=
 =?us-ascii?Q?YbCsOS0SQVGJaek6rg8/4JIM8UTbDO9lsCmyuXFD0XBx40PFWSKQmtNwpe+v?=
 =?us-ascii?Q?F/Vlr4EGLQP4Llzddpo0sXe/lUy2q94ayAELHPALimmx8Q7Sb2kKdWW72DgM?=
 =?us-ascii?Q?pgFMXPibyohHWvANVS36wZAr6DKLZgmGsZRF//XIM+6fqe8d+yghZ3nGMw+8?=
 =?us-ascii?Q?GamhU7/KNVlRGBxYzr/2p7Tbe60//ubq0LpC3X45/msH5zpArKx6Q7ADJgcE?=
 =?us-ascii?Q?5hFjcC5WTr0UtVnUasPcTr6yptaOFhAJ2AI05cfFzIlvBEk2Eh6ct21TuYhi?=
 =?us-ascii?Q?15USaUzL1XJiOMzPMRXCSeCpvuH2SIXJSNsjMUqQdzUKDNi+uz8aJTtnKJ8v?=
 =?us-ascii?Q?CVE6W4lsIibX4RlzHqaP3Zgjx384A3WMIYqW7cEE29PPiHTinpsj+3k134vu?=
 =?us-ascii?Q?QLUhLbpn4DpkqwScD69q6ZZV9rVb26nbZxonBveCs7yU6IvWfiMRqlVTqs5T?=
 =?us-ascii?Q?xb+rn724I73X8U5eoTplRVRctMoMUgyyPzBqVts6ermOQhQCyxlDbbJ2j9E8?=
 =?us-ascii?Q?pw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 798e5239-a871-4a8e-2347-08db797d952e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2023 15:20:48.3702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J3mk69x8wQVVdIHMMC//VICnv5aMknX4aTewSr70Ax/F0LT5H1Csf7oMxBSttc6h40GOVgLoc5RERnXZSpGpI+AClc/uJ52doJ8/Uxs09Sb1m25ikL0SBgWyDsQE0utx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688138454; x=1719674454;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f6wzDjvIll4m/wRN9vmoXL2CbY3ZU65FJv3QKAhhQZY=;
 b=Ky6DAnW+Jj/wWZgkWA5XnDxoxOQBqbRy1aPS+8UOAL07PM2jcelhBxRn
 LJ6BEJoPzdDSRCz1s+O6pl/ViB+ChN0ZHq7XwGglzvu865ULJJORbJj59
 ABSCBcNO5V+XlNK+Y3eoohZYhkPRyjh5po/D+s5CEZ5YN5MLYA4WXBu0M
 wWNSWrajfwXU3AaLgDHiz6LO1cMpCLQSfgovgkSH56vudiJuobUfnwpqe
 RTIPqffgipNr0rIue4BfqHuuyoJwYLV2JnGH/hBhwt9+vgN8TtAGujWQX
 AZpUIpGwUVcbdafT7HZ8yy1Erh9LkYy+JzRaAOIXsPAhw6BS4y089F8bZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ky6DAnW+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v3] ice: add
 LAG-supporting DDP package
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Limaye, Priya" <priya.limaye@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Tuesday, June 27, 2023 5:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Limaye, Priya <priya.limaye@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware v3] ice: add LAG-supporting DDP package
>
> Add the ddp-lag package, to be loaded by ice driver
in Link Aggregation (LAG) use case.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
> --
> v3: use proper license, "ice" instead of "ice.enhanced"
>    sorry for such short time before repost (:/)
> v2: rebase
> ---
> WHENCE                                |   1 +
> intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg | Bin 0 -> 692776 bytes
> 2 files changed, 1 insertion(+)
> create mode 100644 intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
