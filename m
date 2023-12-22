Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C13C81C581
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Dec 2023 08:30:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A943261607;
	Fri, 22 Dec 2023 07:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A943261607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703230218;
	bh=+3fCWviJKIE8r1lb0FE6E7O4Y8iSaR4tb8C+NlV1jMU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LUtCpdh1lQX9MT0X8Mv+HwuZKsSDjbtI6KaYslVOrXXxbagrJmQT+70rB+dzRAMdW
	 Lp9U/4tI/JJlPTdpi8SUVd1Dayeq12BaKkytTboQWCxR5hG+c+EsYz2FctQ0nBV6sL
	 qa/0o66pqbz/Wv6IM+7v6JJUUDBNfLiqVcn04hbxSVcO6158nHdkYCGDZLXe9d7iSU
	 j/icpTMcqVvaM2FQvuDHy/u+QFzkq14agYMqaxdL95iGZM3uDTfkklZeLHx1+5R6Ab
	 D0gntbCF2mMWEvtf622PWH4tRR3y4uU07wdeVJhllD9U1VlXApO//UmN4zDDLu7i88
	 HAPlDVAPnh1og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KMTIiekV_P-a; Fri, 22 Dec 2023 07:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F35F60FA7;
	Fri, 22 Dec 2023 07:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F35F60FA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 654DA1BF330
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 07:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2EAD983E18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 07:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EAD983E18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0eWeI1RQvXIG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Dec 2023 07:30:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B08F481EC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Dec 2023 07:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B08F481EC3
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="2924206"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; 
   d="scan'208";a="2924206"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 23:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="842867048"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="842867048"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 23:30:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 23:30:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 23:30:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 23:30:00 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 23:30:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y1vfJnSH1G/to6XDKAlWqJ+qYudfC71XmC9miLqCYWXIHWuCFi8fcW0SSeu15LwHki9l2+0Nivcu3yEs8uMKgsAEVs249GW7tcoCAR047db9Z+JMU7+xTqC4caTNkBJFKVYnlN2v6dSLId/hzu3SxD9io2xosaw5MJLQFefh+Gpg0vRGbGv8M3J+qjGIwPbesCxj+4ORNZkM1nwRpqmyLdaMdCTNojmwWgNJzLb7O1eke080lL3sOMaEhP8TN+MRW/0n/IeDVKokqBwcD2gn6Rv4WQUmKhXP1NnCNXCWIoahLgTcdEM5TWgQU482MHrNfaJoiB62ahce9BILVQj+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z5Oj6P2uMaLSNuwjMC+WTGyXGQPahvhMU9qEDxk//D0=;
 b=F/rkPcn31KUmGR4fjNqY/U15N0aelVXKbHBRCApr4QT6uCz040XEIkZgpyYIelJg0a4aCu4cUdS4GptFLZdOdPGXPVG3Xdv52ZipHc+35ZsiNhjglR5RQYRVxCVMOycTqzmFRk3mK6VSIDW5BkC5EH5UoY2uXNb4DMS43SL4gz23qBoG+uwrn8MFOvhl2X3Y0exb8bYK5RMLGOKym+80vjv3D14eSFIvkwshBiO/sWhLGNDe9lKIVLMGi1sMbEWyR3eKbV3S2Q0hFslR/OyCiOJbvTQ6uLEK4zoQVRwLVCWEtfPGpTU55PLYXuCKVP4KIWbVr9tBTjFx4WVSETEwFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB4583.namprd11.prod.outlook.com (2603:10b6:208:26a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Fri, 22 Dec
 2023 07:29:58 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a6ff:804a:56fd:90c8]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a6ff:804a:56fd:90c8%4]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 07:29:58 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input
 checks to prevent config with invalid values
Thread-Index: AQHaNKilCH8HssBM0k2/rOIRw+E2eA==
Date: Fri, 22 Dec 2023 07:29:57 +0000
Message-ID: <MN2PR11MB3614883EC3EF45BEB0B3CC2B8E94A@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20231129102311.2780151-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20231129102311.2780151-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|MN2PR11MB4583:EE_
x-ms-office365-filtering-correlation-id: 9ad73bae-d7af-48cd-18ed-08dc02bfcc93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jMCGML/QQL3dGPqhJxArhJSH9LyW1scITrOL/jo1I2h6kEyNQciC0BotTNaV0Jj+Kx07uMUYjp9vvAqi05hOdKuIizHvJ2zMfiBwWFDxWuSABozPOcxKmxQAQsgvO7ns2m2xrxsaDDAG8LhNGMcwCBBDywR6P/+yh7+g/uipJogTL/FVLpOhjSmAHCrQLYkiYxTEuPOcrdUpXvSCrHBhLfVQbby5UVnnqRuv4g/50HDb4+I3dgE04XJuWYnV0ot1/XaM0u6rWtanpNfDExYT1EjGKzfRlLS0SAIYfK7vPHJ2wNJxYvOrNynbe5g+wo6HnRPCP4S9WU8pgg8BDOgYk318w23RypFToOpQs8nxI/yE0DYAwCnKEk2v39Q4PCzfQFrP4bJpPMinjanVi0VjibKhToygnwCgRIleIUsjNiPMphki9ikWxFBG94YZZIHSIImNPww333jEjdsHbf8NHJ7O8CHXph83nTqt9yFdzzsUN9lMQZv1L1BVplLvezgLDMERB8PyU9VyRHtP7dAUSrVGHfM27RpNh8hZY8Gb8NQiaX9UN1ohlxiLXke8Wb9gYshh901PcfhbjooDAX/jBWn3BVKsTZWuGD+R59kRv3bE5i+z63DsgJevGo4WYIVx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(39860400002)(396003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(8676002)(8936002)(64756008)(6916009)(5660300002)(76116006)(66946007)(66446008)(66556008)(66476007)(316002)(83380400001)(26005)(7696005)(55016003)(52536014)(122000001)(38100700002)(478600001)(41300700001)(33656002)(86362001)(4744005)(38070700009)(2906002)(82960400001)(6506007)(53546011)(9686003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7kRDXozQOGbzypc4CN9FnFh0mjdLaqIcPYSaUSrzHnRFxMlFKJQlhkgPwYJ1?=
 =?us-ascii?Q?BCjCZwJxljVtSUq5f7wIbCaszOVztuWqP2uqfoBYCvI3FWTMlIZbBV/7F5LP?=
 =?us-ascii?Q?f4OnoVD4cBWUc/ty8YQA+0bMeFf/ok9py4fa8Hvu98XtF3JwbUzn0vSxvq8B?=
 =?us-ascii?Q?tqX9IX5wZpUWu4u8VchH2ZdS6xYbWcA+VSRkgQzAH+vIT9Uj9khnXo0BdKvo?=
 =?us-ascii?Q?j6BF0IJQfg84cyXUIfKC2vwawJqLZ9AL3uvyE/rGSe4RcrLy6U9bEe0qI5Hn?=
 =?us-ascii?Q?PrErIq6GVSZtVz/e6kI2qB3PkUUZDoj31qTZAOQwV0FNwEUK7XZezqMHhQ6F?=
 =?us-ascii?Q?R4uU8dwH0mvBzCDGEbbaZ7EZ26qSTsbZkzA0JDpdHLy6eCL9bfOIPnv7WPmK?=
 =?us-ascii?Q?9cQvN8N70PIRAxz0JXJwIvwic5F7YHf+5UngpQwxkyokmhE/WBulF/OqnKFl?=
 =?us-ascii?Q?8nmo+7OXB29zzeVjEbirBM7wqlpv2CghIrXPCzIBG1BrqAAcZM++Fnz9feWz?=
 =?us-ascii?Q?WWkfD3V5ms4oShGv/M6zgEnobidKBhK6XIiq8mrOsJa28BLGnC1c2bjJ6YjV?=
 =?us-ascii?Q?73V461yR+QRtHMb2MixKL4hfh7cORkkRsS+Vjbm2QnTxddvvvHiXeUoUQEFk?=
 =?us-ascii?Q?+FJtuv3E5QvX/Bb52V/de1KXxxIEYCodx4GefqkPlkZvxQlV4b8jQYUYA3Qa?=
 =?us-ascii?Q?2ZTC9XENbL5WW29me427y79guu6/VxSCwvmcxUde6yHQ+Jv0seE5HGvbGTcl?=
 =?us-ascii?Q?r779I1XA3HsuXXSBLCvqdSzbzj9DvSaU40pxVYPf+vN8mbONC94BDogtIGsu?=
 =?us-ascii?Q?rH73AGWpgGWGEMz2Wh9SNLKoT/pCDLELvKh1w9Qrrn7nX+m2WhTzsUdL8cGO?=
 =?us-ascii?Q?eQNY9uqY8tarT3c0ZOnDE9jwRdYkhyppQcNDUQRPZeklOA7122Ep1NVej+GS?=
 =?us-ascii?Q?0Jd6RMhel0kHzLmwt+/Z7ycCj8dLQ7pblspscET74PG6Vca8v6Pw1Uoag7ke?=
 =?us-ascii?Q?c9OhzgARXKy4BQ7C1j9u+UPeFoiCssxfTOyOOJPY22KFa9HGjwbPi1d/eVX4?=
 =?us-ascii?Q?G/LLCDoO0N5xmKcEpO1AgztxYM7FGFW1zaOMHdUk4Q/59bh+b1ewS5QduIUI?=
 =?us-ascii?Q?UygNTQSUYr2PXAaw7ytSUFMCr2ZiaFle9CVp5INmUrWMCpJsm3HPoWB6eCk4?=
 =?us-ascii?Q?RWzB5jYpfD+ZG6Xo4y/U6UJR0ZwXbdfxVr650UEsAITXyzUgDKF1UlpnaEIc?=
 =?us-ascii?Q?4X1MJ/1GtFut8ym01nF2lVikF6SyJB1Nl8urhomPD8UunPzQgvBvME80O9HX?=
 =?us-ascii?Q?pKsD7M+mkjrAlsPdVdk6UBEKfeCf2LkdQ6OgsdDqoMNXPQEbhqVZna2VfAFY?=
 =?us-ascii?Q?ApcPWVZx+bsrOwAKb+SZwNod9x1ORkqOW7HmabMV49B8hD2DoEHLJY2fHMVF?=
 =?us-ascii?Q?eG1+pBcAJUZ75C+rfrcZYRCp5h0H2vM3ISPJxxB3f10CZJ4x/R9e/uASzDqE?=
 =?us-ascii?Q?FNyzcbEYlpVyDUQleSh/S/4eB+g8fwmWJeqmpUnndPOI5yC3+Uh7L3uogg2D?=
 =?us-ascii?Q?Ai5z21CP3Dh/dDYCQOsW3/l4HaiKSSr36jRs2G6txfWzTqbdsbGOrjcr8gqd?=
 =?us-ascii?Q?sg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ad73bae-d7af-48cd-18ed-08dc02bfcc93
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 07:29:57.3746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKIVKrhs1iUsAVpD0jNbdhqSI2m1Yh9OC/es1m+E/4PO3xCGLujwsJoeGsMgeJom3L5NbJzmaI5TzqyyMxCRIAae9fu5A86skgWtVVm2800=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4583
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703230210; x=1734766210;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+dU6Oqdtv9Z6gCFS7H4tDV55K6DGl6qiB4DL1bMimcw=;
 b=ZkSOXnSjszSudixWVdJXIN2XomNKDBQg2gH5MoejcztANKUuPH5hbHVB
 6X/vyVpgYs92pIchIr2Pkzc1Vs9UYD7h/53xuvyPr6tm0L8OcpWbeYMAE
 zvM9749CsHNjOcZLoyNYjR6nGWWBMUhNuTjKdBWggeyfkKCeueb20cuLE
 v7awlN3xRhQVKub3prDuUQ2SaCkYZiMvJoM7mqV89BIUe3X8RNkyD8u0y
 Yagz6zfGNKr4bYMJV0k9iqiZtff/0VbnPwECH2xTTG1DnNK9zlzF96u11
 c41h7UugbvBlME1mwtFu+5yxtgizfqtfx/PNHmZdDb+IbMEsU3BVxzp9s
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZkSOXnSj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input
 checks to prevent config with invalid values
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
> Loktionov, Aleksandr
> Sent: Wednesday, November 29, 2023 3:53 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Staikov, Andrii <andrii.staikov@intel.com>;
> Mogilappagari, Sudheer <sudheer.mogilappagari@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e:Fix filter input checks to
> prevent config with invalid values
> 
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Prevent VF from configuring filters with unsupported actions or use REDIRECT
> action with invalid tc number. Current checks could cause out of bounds
> access on PF side.
> 
> Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2 add 'Fixes:' tag into commit message
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
