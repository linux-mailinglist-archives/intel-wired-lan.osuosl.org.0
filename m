Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB77C777C4A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 17:37:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B47A83F8E;
	Thu, 10 Aug 2023 15:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B47A83F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691681838;
	bh=VVxWVh3hoTjfY6PNd+ZVkElny8UOlXkA0C2Blm6AiUA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oMH9hnbjmbNMX9U+ZYlcOtC8+76IT9KrkEm8rDyJJTtXGA9VpTTPvtTZ8UVHWRxs2
	 TBU9YYCN7kz2x7J4OuOSGbKQx7iuCIKeSy7OASOpg5M7tSoi/MQXHCUpsKujRsyVz9
	 oe5sG6qqHIYUE3DS/4tjTHztmWAGt5EAopgKBmjcdBclwMsNaSt/bjFii+jvzPHUH7
	 AcViGgkDsp2ZsvPKjeGuSUMXQdYcQ34GLrVIDKnEHLkUgdE0a2hDfgg5JvWYyPplyQ
	 De/PBAZiDRmkgYyQaRkJ8YlxuVh4/Jydqtnuai+6ZEt12J76k7Y0fjHydAVjrovdfh
	 gcw3M0q0aa73Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id af4Unz2N02nS; Thu, 10 Aug 2023 15:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAA7783F8A;
	Thu, 10 Aug 2023 15:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAA7783F8A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CF3F1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 15:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E79DD61224
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 15:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E79DD61224
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYCfuvPVH95X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 15:37:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF10860F46
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 15:37:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF10860F46
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="351755007"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="351755007"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 08:36:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="767329171"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="767329171"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2023 08:36:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 08:36:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 08:36:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 08:36:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 08:36:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRnPyM+I/yaN/lOkM2t3nxzHMhMDZLh58o48DbV/wOkx221A2JWiFeKmlmRKOngUI0lJbojOTqpSIQU+KNC8Cilm8RBwjiSszIMj0IrDENJK1LbukqFnhYvjLwTg1h6rrwS5Sari9Wi8mb9Nk/6E6p0rm6Z7mfSHgIPmribJRMnCt2ULhgi631XvYHBPn24JdCj7Zy88SYM8/bZvFFfv7LUEO/Z1+IEa1Kg+qRXLk+DyL4kTfhZ+6EdK/jOEIP2/JSGUnXM2MXIeZzpFW/YFWw5qYylz07bRS3QR02JDIN6kMKQwQxeW13wzYui0nXQrmunR1JADQy+3r6ksvbuMWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0IeHyOQw8bq0wnDoCeDIQ/LfKuPfC+p0P7fmtCg2vU=;
 b=EEIQIqp2OQ+kudq3dHiB68ct4nKRqjK8VRPIkRMIn9oaTBH1Pk74DOfH8hJqPVsoX2qbLADKboCf2Nz8QjGJ2BPikUKdmST9Z6gHSU7kIRxztEIttP/WXu5l0+VZYIbBMScigqM34JhB9ZEu2ZnvKmxRF8mCsfwOwg+vJSYF8uM/rLQxKfTweP2JjHHiWTIXvGHYh0AXrbxHeOG1lr4DhH9eD76HRvj+tI4JWu52Ec/qm2swFE8GTcgG1IzPrp1x0/2/9rYn7GaoaXnF3mu++VVxuCZqgaprJMvgklB70ZhD93SBczMSGALLN5VAyRuLJDiVHG36woEisk3GF6Lkqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by IA1PR11MB6465.namprd11.prod.outlook.com (2603:10b6:208:3a7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 15:36:35 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2a21:609b:312:5cac%6]) with mapi id 15.20.6652.028; Thu, 10 Aug 2023
 15:36:35 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: fix FDIR rule fields
 masks validation
Thread-Index: AQHZyT5BnlrKlPrJUk6zSNRmbFb2Rq/jrk/Q
Date: Thu, 10 Aug 2023 15:36:35 +0000
Message-ID: <BL0PR11MB35215865D431B19CD10D409C8F13A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230807144604.1014049-1-piotrx.gardocki@intel.com>
In-Reply-To: <20230807144604.1014049-1-piotrx.gardocki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|IA1PR11MB6465:EE_
x-ms-office365-filtering-correlation-id: a6d76842-a658-47f2-fb04-08db99b7948d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iiqQrq/fzDWnHC0LX/Re765CiViqn24D7UxtDcES+csmqg5zTn/FLbmWJN5GwuxH9TFFH2kmg6eqUf7UyO56TWCnqhM4hv/wKtrI3VYv87QUFcJKvVJiCollgOF2TE+sfC0EVKHLL27p4WR83d9UAzGaCPzafqHTtXdipG9O/Mq5zRFLKd2CmOROjG2njqoKMeCVo47/BWNvSeaCSF2bPbMtEXT/ZYC1WmvxLtbwZVFzWocFuoDCn0pF+hRouIDTWtnOknDHyhUntHVLWN5/71TGvGk+kVaWrLFadRqdJXn9sUNPaKw2FJU2oBWpCObDmHDtiGlInNST4ngkoVR0v3WNLhS1wFfEUfwt+HZ3oWJeNahwphMZgazrdR3v8ptxu0gqeU3c1ARrpUuwKgrXri3fPNWefZ9p77jvmEMICVWre1w9bhTnkJ7knS5ElIexeTwSXhrosMYDyuiK7NXSNPEojfkt2XllcdADDRyu5cgNwTNa4OSaArkaRQ1WD5J39hLTYS8yiiD88FN4VQqe/KEakPy0rZBQqpIkLh7xCwk4aX6hdv1UCT9dIni/Y8upLaBLiQ8AGSsy0V/3tv0HvI+LZ8/aPwqnFja4kr+62TC6VYQlhLIThYBGklsdgc7i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(366004)(136003)(376002)(396003)(451199021)(1800799006)(186006)(26005)(6506007)(8936002)(8676002)(53546011)(41300700001)(52536014)(33656002)(66574015)(83380400001)(2906002)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(55016003)(5660300002)(7696005)(9686003)(66446008)(64756008)(66556008)(66476007)(66946007)(76116006)(478600001)(71200400001)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?idNGTjiuYUQ/StrOAVC4vmytVmPGaRaz9Q/kr/1ve6V8VJMA372/KiwrEt?=
 =?iso-8859-2?Q?tWYsglfQRS/TVRknvs6qjmKDvtuKxZIXa/3V4CErxIa2XpSiRi/6HdQeu4?=
 =?iso-8859-2?Q?GWGrDpSDzdx8FVE2139R7JewhYnIVD7GW0S7O1f+xH3bV/dWK5nqUqJz8c?=
 =?iso-8859-2?Q?kCqfG09a7KxSuLgBTE3RsZHBW6d8WNJZz+qQ6tyzCC1URLUHB+Ye08hvEM?=
 =?iso-8859-2?Q?c6uqKzML41UXWHFjx0S4I3lMyExGkTWKKHTEg/QGF/nZ5j3DDTngdxeXn3?=
 =?iso-8859-2?Q?p2Q77r6uIsyTDgWOr/K8uZC0G0GjSeSa9mGrmwenJpkj3an9XYdxWWKHw6?=
 =?iso-8859-2?Q?iVcHNAGwxIDfyNIKtnlzeasxc4YWeLPEWLD7X+heKfjOtBw2EnZL2Ceygm?=
 =?iso-8859-2?Q?IXnM3UUPPzPaPLcZSDCbQTe8kK6cohTtJVOuEfYLhxqLfwrJbQUfKyK3s4?=
 =?iso-8859-2?Q?7cc3pwIf961rP0JPFqNvwwr6nYUD9LhprHgs0fSv3llt5gEtq5Shenj70G?=
 =?iso-8859-2?Q?2t0bdsW4F3gL8iElOEX/f8JTsoCrXXIuY06fC8ogItvWDNM7e0zjzu4GuJ?=
 =?iso-8859-2?Q?4xs/JcZv49Gy72UYMfDAAwtfiG25YqjmmgV7D0p88bs7+aZVcfxc96YBsI?=
 =?iso-8859-2?Q?ZISrcVAMqDA+GyBprjibKMkZGA56PxcAGG96x68IO4GsXrdv4pNamYJbWa?=
 =?iso-8859-2?Q?cFAxO5N+3RAcOogMLaqM6zKeZWwRntYUDxQOa/ICZxFSl82vol63zOZ21C?=
 =?iso-8859-2?Q?G6eD+DQWTU4QXcHnD+NGFArNIHIRyecvVK7X5n17D14lobqOlRwJuV6zdU?=
 =?iso-8859-2?Q?Oly/sCkULTAk+h9KhP4KqN2W2BWZ0sXmPY7tEa9eQa9TMnaZlF16NhXk+m?=
 =?iso-8859-2?Q?E5ih0sn87MYyLwDINI5HatTAFp6O2i+5GOwgqui6MJV9WchgGWPbC2XAVg?=
 =?iso-8859-2?Q?UkHBHKU9wjvgpGEA7i+pRsAQVhzckFTSLGRoR/0YAdjB7BRMO3brNs8Xms?=
 =?iso-8859-2?Q?OomxqAiS8UPvcjwLCh7Cc0HaI/zpKhKbw74kRLhKq3ImgUNjYy2m6YvKZ4?=
 =?iso-8859-2?Q?EiawKwzsDFASz1UJ9dHbYbM4nrEpmzJ2Bn4rRIcqBIzEZiBrleXIcOFsVP?=
 =?iso-8859-2?Q?ipIPBngOJDxyu/BjAnTxBb3Dbwqt55BvdPM1UdFNNE/E7sRfJ6QyyPT7dz?=
 =?iso-8859-2?Q?j/dpvfiNNeQY3L4wBL9ifRrCoD9UU+cQvG9QMrukPSdP1VDuEdQh085J5Q?=
 =?iso-8859-2?Q?LjL5DG2xuP6exStd/8CMFSknoXHIvtBVfaoI8SGpqjHV5mZ1tu9kHtAea9?=
 =?iso-8859-2?Q?uP6nUmK09PV0b8RSlkG7cJ2n65cw2y5v8yf18GySP+JdUEbRi2hhE0dPqU?=
 =?iso-8859-2?Q?OqAYAyXxnviU4vGv7Rgi0dksk5snhdjSBupP02U+SzCgzKQn+Rb7I1sUkv?=
 =?iso-8859-2?Q?b1NPcTLS+MbEZ2QZHyFlKrt3o/PVeYUn5G8OIk5W+HnJoh08Dy8Lpr+Y2W?=
 =?iso-8859-2?Q?fUBynYK/sBVwbQhYROx1C3NOgIn9nJ3ke83Sa985wPMtB8sXTMQmghWus6?=
 =?iso-8859-2?Q?fLjS2mOXNlXYeZffJ+OHEPd9xhwMHOf1tlCLNcFGbVIA7QsXaJNwjEdyVY?=
 =?iso-8859-2?Q?+a7xU8WyNrrdwkvHDf2jV7wmd0nHERBseCNWIwANsp3lh/gKaidPmpnA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6d76842-a658-47f2-fb04-08db99b7948d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2023 15:36:35.2996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r22itg9LOm+nLmWQ8sj+/jh6cagecgT/bCdXlPRfVEQFMBf6xATmg0CWLalIxddxiS/p+UhiHrmvoxBWpz6yaGw65Zy+GuLqmy8UClnc7wE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6465
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691681827; x=1723217827;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G6hXuTy7Zd9Y5/HOZEMqplcffbQZXvOawRhzpdH4lY0=;
 b=WPmguAoCGUGobsBACnHr1Iy+qCl8+5qrNXN7T9+vp2qafNjRkrsLKh5W
 OGurfTU0WR8hSQQpwTcyVIHq6tgjiWQPx/e4YplX6PDJsr8kFjT8rTs52
 u/a+Ghonx49IuzxGuyKE9XAmUfK9uMJ52iMQRTzIpdH6W8L8w95oczj+N
 WDfg5WJP4S7DBJTRxqBWQpAhzHklduJkXFjhTREVr0MS42NZzQ/WQ6oBy
 VihtI+CttMoTToMEIi/GFG6LxGWZXUhwMx55R7QF6yykr35S+m+SCBHv6
 n62ntxCTb05ap4inJsLKSwvrAp/pLjyo+iEBrtpvRNQPE5CeDwO8IqM2p
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WPmguAoC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix FDIR rule fields
 masks validation
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
> Piotr Gardocki
> Sent: poniedzia=B3ek, 7 sierpnia 2023 16:46
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: fix FDIR rule fields mas=
ks
> validation
> =

> Return an error if a field's mask is neither full nor empty. When a mask =
is only
> partial the field is not being used for rule programming but it gives a w=
rong
> impression it is used. Fix by returning an error on any partial mask to m=
ake it
> clear they are not supported.
> The ip_ver assignment is moved earlier in code to allow using it in
> iavf_validate_fdir_fltr_masks.
> =

> Fixes: 527691bf0682 ("iavf: Support IPv4 Flow Director filters")
> Fixes: e90cbc257a6f ("iavf: Support IPv6 Flow Director filters")
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 10 +++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 77 ++++++++++++++++++-
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  2 +
>  3 files changed, 85 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 460ca561819a..a34303ad057d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
