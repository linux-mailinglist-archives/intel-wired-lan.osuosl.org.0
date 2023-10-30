Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6467DB491
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 08:47:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A5988551A;
	Mon, 30 Oct 2023 07:46:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A5988551A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698652019;
	bh=XJmXBx/fCxsA8w4rxRKjrfYwJYyqiBVG3UwYoimhhVc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=acIjD8Jsx+awostI2I+XOcmBQ80M0nxMdqmQVbmvl8RvLG3cNBAiqXNU2wxFq6G7Y
	 jYkBX/c8WIrl4gdBfr+nOFGbpSn1EvFObS26+I7gdB44Ys09j6P4PpuLzzNOiagd/h
	 FTRMT2IdIZRDjOppk56sa5zbj3GeuKHSH/yF6eBx2YOPMkTVtLpqGND8iC4K+fF9vn
	 82b5k92ojVO/IotjXkXSxpPFOkvrkiuZWWxQ9ztn/fGlkG0iOXJJ055VBy5GKWyT25
	 oWukB/EhR3GXYP4FPsd5tYWg0JWduWEwZ+CdvfZcGcc0MF7+wSQ0ntytm18jfQl42J
	 hcQxXWFCYmX8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bvqBI4hlrDfQ; Mon, 30 Oct 2023 07:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 572BE8546D;
	Mon, 30 Oct 2023 07:46:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 572BE8546D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B66A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E30A670AD6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E30A670AD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2h5rzgcD-cH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 07:46:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 419D17080D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 07:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 419D17080D
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="474263064"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="474263064"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 00:46:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="1389098"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 00:46:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 00:46:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 00:46:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 00:46:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRvq3x+5vL8rB8jzQkYD9JM0kR3Zp4TMvmAbWLcOg3Rs7BuE/VamDiRTyOghuG9WdQqdt3BzYcEAhQvQ+kJZrgUhLBFZR9bsX2dU9frMIpqIiWXP1A9UkSzT7wf07WKgkgHxbPwyG+pv4bTbgCj8yox7hxUgPuNjzwKOKZsQo+d5QrIMoJ3x5IqBYKxSzzb/WPyL/7MQhU8weYMF4Rh/MGZwad2TlyAuR+xMNLWwPNO9u8tbykgO3Bgod7aevNvcVIHa+S/6Sp0e8OrA/GoOTG+Pl5zWG1bOiVugAC/QUFHK5R0QM3MmXW38TmjA22Ap/wVapPV0VM1urilg5S6icQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WqMgL5GzpWD6mURS3Bn3CZgqbxVZVohDgHwpYEyA13U=;
 b=iXXeh2EJowjuQSgUPbVgPt4g4QR3o5pY7p+yF9oxI5bWcXZGamr2b8c9MnhZw33RyZtevVV9BxnVMJOxx2Qh0+9MqRNxzQNDfc72aU4W2lGpxT4C6PgHZP+OotFqwfb5qV6zPYIeEj9zihbTMMaRwrWs6WK5Q35ZVbx1o16r72x1SLZgCbAYKvfUJ0XWIfHXMOMw5nGuSRPWLC4OspRf0KTm5HiL5YDbsa5WiMJtFUbPOWvVuz3NHiseCzaglirvHxgmYjrPz4t5JPukL1LpR/+orNvrMm7XdsZbE0sV+SprQYWRFJcE+UnGJTCggjcJIeWLx8slWU+1FwckmCgqlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.27; Mon, 30 Oct
 2023 07:46:49 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d5af:4ec3:b590:6cc%4]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 07:46:49 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF-VF direction
 matching in drop rule in switchdev
Thread-Index: AQHaB1JautlsyDNGYE6yaGgxHxVUW7Bh+8SQ
Date: Mon, 30 Oct 2023 07:46:48 +0000
Message-ID: <PH0PR11MB5013F399AFD55F21D31E660796A1A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231025144724.234304-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20231025144724.234304-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SN7PR11MB7510:EE_
x-ms-office365-filtering-correlation-id: 7ab0cc0e-db44-4b75-d50c-08dbd91c5fa0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yci00PinNysW8i2fYe485seLnCjNo8HchU1nebqNBMGR8nAJzqKHWaMU56XcSP+LBjc9WQn7bq3VAm2qTjccr5Mi7AkDaMSBQaNC2lAWOwpmvEJIv9h7io9mKouHsfJR9O/WI4J8uXGMLPhGd7o8I8mtZBRfGktcRX0MJD5Z+lg+D+ztC0BSeWdc+puOYQb5ay++F/nlUKq7DtJNNYvgcKThFJW2T6B0mvOI2RqMPrIp8ACQXKMJiIznKDkkZjFtY7Bso3ZubL/Z3eYuXUPpUmSMbeXpmP/5XDPQ5edg7NMMKizeNkV8y45y/UZv73/zxZYrI0G5T++mCjGRPus5gdXmpHEYKcnKIA15z+A7KBbBRF96872fmfbyroRTQqD2e3c+akiEBDn7RW8zV09qDzuGp7eVeQVolAJlppnqqlouS49v101lbajOFoaCKpFq9pBbYl3XxB+5d21r3N+SxyPdRN0FY9rEA7TYZWZ6DyKV/XJDIizWv55S2Q7LXYtRkC6b7slo6iBB6tN/p0rlHD9af9AYxjQzLwjRIOJRkymJ8lt/oR8+O8f5TE5vXMs58N0s3cFQ/pUGfF9cIbk10EZlV09NBTp5VlXpJzsKq3FAoWRv1nO+tgwESUZAO74a
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(39860400002)(136003)(366004)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(55016003)(66556008)(54906003)(66476007)(66446008)(64756008)(122000001)(82960400001)(316002)(38100700002)(71200400001)(7696005)(53546011)(9686003)(478600001)(110136005)(83380400001)(76116006)(66946007)(6506007)(26005)(5660300002)(41300700001)(2906002)(4744005)(8676002)(8936002)(4326008)(86362001)(33656002)(52536014)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OsoZWOJ+J6vfcxpOM0VQmIpMeoyyoIeDPIfNgKGWUO71bTewGcMvevho2glq?=
 =?us-ascii?Q?3UZh2EcHh0OLxOtBg53C/oi1twKDbibey36H+Bt9fgyEw2rhDUJfl4qdaKX+?=
 =?us-ascii?Q?gGM5TwBJce8N0yGAmiErIxNO5lfxDEesLbtaiBioZXPQNjs/iqEaOtp75Qk1?=
 =?us-ascii?Q?eRqCepn8blOiDr7GaQ9yf29rlyYDVPz0TGlU3nKT4EsdhAl5TevZ6R7nSmjQ?=
 =?us-ascii?Q?AhojmECX/NU/Ys1NmUGGej7HhCy9TMvjPdTye7TT8l0g+KyI09wJ8SPkQ6Kq?=
 =?us-ascii?Q?SIX84G9Hz/fEYAspnVulvQtfKdOyPfxw0f8ZGNtoGgDuXMjWtMYGr9vtXNxR?=
 =?us-ascii?Q?mgjGbI3JCrxnt4d8S2PPZh++TUOHnBqxc850Kul7xLZ3ZBJleBEFiJKNb2rL?=
 =?us-ascii?Q?nZ+WSM2mz/kDr/kki7QSdWN5KoAB5x+M5FXt5pXWIeisKLp8ofI0O1xrwvId?=
 =?us-ascii?Q?YkSxTq63UvJkzaU1arIcVaGesfSWpj9Q/L/Ot3FpMMWsz6MQPDCViqO7pcut?=
 =?us-ascii?Q?1Q1BaU/mZgfxnOKU8nEzBCAj8PS4ddYuC3feOkRzOgZoY8cuMuiGxuKGyGHk?=
 =?us-ascii?Q?oyK0F/eyFOao9HAjb9Ydj2CXwF0Xoji9j7Uv9hHhvESJwTOVoeM9iyA7BcRe?=
 =?us-ascii?Q?aBDUgQmYAZiY/SDZqPYBBhqoEbk9WpLrUZQa5KOQvy/8/tLaW7i5SQJ95m62?=
 =?us-ascii?Q?inUkqjdM/yf8DhpQL9Gt6oefcRdKX8UzQMaM2sKPnkFkkYzyKyUa5dyVl69i?=
 =?us-ascii?Q?zjaO2iNQz6eZm5dWMQ48z/pjn1KZf2ctB3wpIvLMD7yYVmfNaZBLv1qZa3gK?=
 =?us-ascii?Q?soKEFx9YzdT8mhIwslb6nh44e7OscKR71rINeQJ2R83K/PcWvNJtDuQWHWVZ?=
 =?us-ascii?Q?8aw3+r4ID3KJEqAqsokiXdXhyEBbCtAzJBuu9U3U1AmrxZ/zRelr8qzS3dW7?=
 =?us-ascii?Q?JWvTVrup/M99+weajjVbYYwOt2buI9tjBN85yYO4AzUgFGhyol88ZT87dRbR?=
 =?us-ascii?Q?y6tVh3LTcZuUhSco9q6xwaOMzpJg0odVg84vUirvCdiJnY8UJhYWaTlLHPLx?=
 =?us-ascii?Q?sb54kqTRT6CI31awnXhK+G0AL+TTWSLTRtEIAdYHz20oh2T1gNZEaGfVR/hq?=
 =?us-ascii?Q?1GjhAnnUMovhWyYJnzq6F+3QIoEXuKc25baRwl8juLitEujj6S3NcIgLgdw2?=
 =?us-ascii?Q?g0T5XCFfJkD+zfMzJAaIW/4nV1f/xVM1As4ocICbcWF15Mbig20Xz05LN0BI?=
 =?us-ascii?Q?wwEUG7bjz5Tan+Ozx8A5TypFmtSMDKx38EuwsGXxgT9bHXIrJ6Ffj+f2MQ9O?=
 =?us-ascii?Q?+IQt/HWGRXx507fZc3sNSAsByt4UELuvl2nl2G0mc2e9xYEAxTe/iTDDsLMN?=
 =?us-ascii?Q?I0BwL3xWE201moi3EvqrtFdo8MnMGWCweW4f+vsTovUIJBIXMNp9DcdMefom?=
 =?us-ascii?Q?LjOtDkbXHYlMl9MEg5bIRfN1TULWM61I70F55ebTAfXeE1v1l4WXQ7zwLKFZ?=
 =?us-ascii?Q?nwaPGhXwYcFM23sAozb7o9s/ao3ff2wym9jgqGIkkrzAfaeFy2vVzmQv3lkG?=
 =?us-ascii?Q?hInQz5436y3Sg+vTMC4JUx1KuovdXQ/RRSofM1K0JvP2czBNiVKA8hDdv0+l?=
 =?us-ascii?Q?6g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ab0cc0e-db44-4b75-d50c-08dbd91c5fa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 07:46:48.9530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lsojqoggcUAduswUdxjUXAdATJrxmtECf3qRWz2lDFW1M7AINQKiJwTOguKOh3mWKhjVQR2IDu5TkG5Zmq5/5lXPl6m5YuR8+uox0Fah/3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698652012; x=1730188012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TDksR4q0Azf5t0tnFmDRtjKnHz4j5LYSGlJXWfMw8aw=;
 b=L1VHrkEz6VLc/HW+lRJgvPWKJmtOyL+30Kv5TQXurPSfd7N5UXRpb9nd
 MxPRIbW/1/LQoAGI9ST4wJ1P7N19G93Aqj/kWGKhiZQm/iJ3xPf/OHfbF
 BxYVF4f6M13ZDiwhyioGywsY/WSCaHptU2wBoIc3seDMVVXQZrH6+9CtR
 ZOUGbBB2R7L3G1UXb1cXfEVyQh+u8ucjraWX3f9RXjCkAQE9QrKVKiNu5
 VkjKOR/yggxZ6QcoOoFU1rV/hkVhqEF13pzf/Yf+YF3c5WeKfCq5bY0+X
 KfHVoCyLT7jphvZ9D7vQlkEH39VvivTxX+nkuS1urahUuJM/FetSbM7gn
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L1VHrkEz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF-VF direction
 matching in drop rule in switchdev
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Wednesday, October 25, 2023 8:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF-VF direction matching in
> drop rule in switchdev
> 
> When adding a drop rule on a VF, rule direction is not being set, which
> results in it always being set to ingress (ICE_ESWITCH_FLTR_INGRESS equals
> 0). Because of this, drop rules added on port representors don't match any
> packets.
> 
> To fix it, set rule direction in drop action to egress when netdev is a port
> representor, otherwise set it to ingress.
> 
> Fixes: 0960a27bd479 ("ice: Add direction metadata")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 24 ++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
