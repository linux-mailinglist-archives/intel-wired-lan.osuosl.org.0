Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E3363EDE0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 11:33:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC3B081276;
	Thu,  1 Dec 2022 10:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC3B081276
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669890815;
	bh=e+t5w6owY2TKF3xCDW+pItdXldrDbnGkWn9/RnGkR4k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EDlVLwzxyRL24bSz9fQMyrJxjM7jEkpmSjSI8Y0G4aFFs116Q3f0ndD9h6DAH8iMk
	 ZYIHuD+JuTSFE0Ujo3beHTLlLmTowQ3447IKwkO5Cvyxo+jsEcvy/yXa+2ny3a45pF
	 plEXdAfRP66842SvweJLDZ9JeqktxfuMjGyNYmiZCCClUIwWu+p/j9nc84ionbVaWG
	 OKQfO/BFKWdp8Vuqa+kXXIiyxrrgfPlnKxkUV+w/cu69ECgi43ZpWKvb/V2OrOnGho
	 pl8Js66nQc+wlaUekA3wspYkeIj6omA0ZFKxJ8fJ8hmlT0Se5FEPTNANifekvGCg19
	 C/EA+C7LLA+gQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YBq6fsdjIOYr; Thu,  1 Dec 2022 10:33:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A18DB80FAD;
	Thu,  1 Dec 2022 10:33:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A18DB80FAD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC6EB1BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDBB760591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDBB760591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TYPngpxYKJCD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 10:33:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD13760590
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD13760590
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 10:33:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="314347051"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="314347051"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 02:33:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="644594002"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="644594002"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2022 02:33:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 02:33:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 02:33:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 02:33:24 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 02:33:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D7/jNM/+aLPq2Sl6EJFDOhG3fi0M1V9ZPVz+jbTPUP9/SP+ABrZTsmijzEGp1sCoKDpjKEugIwwtvd7qIXoPYjJbs06e6XoN+h0PUvScGvxH39Chai+7VPCzf9iQuj0pmWRdshS13njNP9VhfaDpxG0Cu9tts0t0wCDPDqdWNGg/U3W0HwXK36wZ6DSDIxAZpAx+RE+nYeMT3lrvbPkTwSnf43lbtNU6mVR2Aiafox1sp3NI7UgIGq4LG1FUyDV+6eDY5RT02ypHIQqUjuWfxvfahjhrwWDptnxFdWq7BaWkQmiWDsDkRG5vDwCneP4TUMRXVxoGg0kJph3VP6DqQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90LYibM8Xq4Mgv4jpzhzwRUxGCYbyiufCFf2DDUwggA=;
 b=Mz0d4h4Q5PbKyfAiPkSkB4T5/BMiUYQLvP9Hz3mbMtU6LrSbd+I0uSBbTKa+oWpMFjozTNTQe5rdN+sbiAYzApzrNE3FA00VhdGrRytqqC7WDZZz5ymA6p0U0dTy0OKITp8CN8wH2wNssVnV7RArhrng7DvimidYNKrlJ0WP5U8PycVPYCUoch3w3o1a4YopXlyGpXO4gQqgpmt9xL6lqkmln5eJ/0zi8+B+6ZrrECoFbneQm+GJzLWeMFR88wNOBk2x2JW5JmhFjiHLpqemWD3Z9gJ6y1pL1jaJDJtUh7rmYll2hsfveJ0mq7Kl3XeW84NqCAENDIeor1u5SevZaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH7PR11MB5817.namprd11.prod.outlook.com (2603:10b6:510:13a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 10:33:22 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 10:33:22 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next v11] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY+aeUKKMIqcgyOEisf+8caBjSK65Y7Stw
Date: Thu, 1 Dec 2022 10:33:22 +0000
Message-ID: <BYAPR11MB33671D058258D36382B7D427FC149@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221116103515.15208-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20221116103515.15208-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH7PR11MB5817:EE_
x-ms-office365-filtering-correlation-id: 8a897143-68a8-40f2-978a-08dad3877879
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P6WVu+YPvvypjqhJDAJ/8KWW9KZCEQeEStcDlb1WSVfZjPbjM7OMbBg9kWkElGKVAhf8RxM5Xu49D0EEOYeaGaUUcTX8cY5jFQE8VUpAYhibbLU8PfAXZeHctCp2JI6mxwpgZmh5lHHbZRmNQJEw/+9kPSdcnD4jj3uk0tcHW+KCszUyzygPetuoIemikKzXEoqah1rFIy0CCc1WTZTY7EP5TWSNhodQZtDCD02wsa9iwj81ru5YXnB47WkrzoUjjD56z0j2RmEC7GmOmOJRtDJPWgdeRIA3/9dBlh/rDL5cGgERe8qRcUzujM2vCDCNtJMNoMBKhPBqOfOnoMcGKT/qTEPjA8TxmaM8sHXL60FfECVTcpZYsOPGOUau1wmqYmsFCFGY/K0NLo6uJ+H4QWPvFzkzWBe/kKUISv6TtHOzgK5khRgDe4Icj6CoG+evEG/GQBPfvWXA2xUz4arTixS/1BCq6qoj4uVrdvmyW3ZL2OMOB3E0MSSlohAuWbX6irSGU+ttcvb0rjJ+N00PjmLL6ARVgjSWxekmk74nvieA1TUwGAXHMjYV1QKCbo9Hy67ElDg4HUIAyqC9KN+59zwGC6YyoINR59gUYb9PQTQUoP9/hqvZ2ZoF4QsIPPQEQnAwtYyyT35UuymIzAnbNWmwTXV9Wt5Uadn1Qpy1Wh6uDPydR/euhJ2B381OxHE5qi9RRCh0AZgcvNijnPXQvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(39860400002)(136003)(346002)(451199015)(2906002)(33656002)(53546011)(6506007)(9686003)(316002)(76116006)(64756008)(107886003)(66556008)(26005)(110136005)(7696005)(66946007)(55016003)(478600001)(66446008)(71200400001)(41300700001)(38070700005)(8676002)(83380400001)(66476007)(4326008)(186003)(52536014)(8936002)(5660300002)(122000001)(38100700002)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nw7JgMthgPsEkqnM0jSowOia1TF+PQdKBgAJcu09raUOVKiGJD1qt/UaS425?=
 =?us-ascii?Q?t3wKsQ4GUGp/FWtdkHxsNHHPkzq+EWtXp5Uno6hCjEm5RJNCuGKgCAS4t3hl?=
 =?us-ascii?Q?3iSCmu6wGErF2ydgqQ26aig/CxmZuoAeoAbhy1gs5kGylJOX9ESjd1Rpvzzv?=
 =?us-ascii?Q?U/RVVNF9kMYmzeLDmPPCVzAYv9hrgvLJspqm5mB6lAYgjJV9vhfg6McrqrsP?=
 =?us-ascii?Q?Bhf3ohd5Vcwhrrho5/X6BMcbIJdYC1K+TyI4BrjJpPXWW0VJTRrvv+IrRq9u?=
 =?us-ascii?Q?SZV/zhu9yjNc38Y9Io6Nx7xl04VZnt9N8NQdzgH0tju+z3lUXTVsUvKziIME?=
 =?us-ascii?Q?Qhr0Xai65rXhwlmCSZ46wc9ATaIkmapcXHsXOFoSUxvRk1HVC7kcA7gPPxZb?=
 =?us-ascii?Q?xI0A7EpGXe+IbJFLQkMXTrkwVOPRksVGfjjqmZYyKgjfthRs3M7Hrf7hkxM6?=
 =?us-ascii?Q?yoq8Cj7pTntOxgYh0qPgF8yTqT55Kqk5d6fn28QtcD054Ev/U+2iE3/M82lP?=
 =?us-ascii?Q?pZbpWlOOfW68oXoPW2fRppeP1KjHg/LglndIPB0cW2myzE3RX5judMC54219?=
 =?us-ascii?Q?/4eQV9jIGEyAs04QaDp8ok8Gyuektzy/2ISwQ12jXM40UHh2M7eHEmu/zFBk?=
 =?us-ascii?Q?d19FKE/Is6OCh/rnMjD2NQn/+w7ZpSdq/iB1D1BxT2k4nlhvheXyqFN327HA?=
 =?us-ascii?Q?KgmN7f1Aw12c6rQDQFBsbC1T+E1DQaiQzrvmEBkzHiTsigCvmiBfg8ig8L0h?=
 =?us-ascii?Q?xv0CrH/P1f8xXPqj9itqMehYRrLeGwp7XaMT1gR/i2QOcQw4u+Ow8vyrAIsi?=
 =?us-ascii?Q?7CFnQos2sVSPKUBxNMdMSMshWQJ/gSi1SRhqPmvrWQ9b63RFtALfgtxtclXG?=
 =?us-ascii?Q?7CBayLspfkCFx05SIcwAK4OwlTu1jZaCCW20MA7Vnb8iRTIshSSjxIQON4RY?=
 =?us-ascii?Q?RCI/kkOk0S4sNiLhw+N8MTr1tCMBufPZLnpMxT4SVbpGIt5sNpeGThk+h4bP?=
 =?us-ascii?Q?08plRiGYpJdNxSZUTOG0ypjw9a8be93icYMq6IFbUoL63MVRHBMbCwS8QAlA?=
 =?us-ascii?Q?gmYuJcEPuIPW4e0dVWD71Aixj5OUbg19X1GpyIXEXRY/0RfO10KedA6CYBLO?=
 =?us-ascii?Q?83sEUo6AxfuAf+yUDEPQRaqHDroSKwNRXaK56cUvGwKPuAyA5lbVuVJ6/EJf?=
 =?us-ascii?Q?FrWQq1EI15KP3eI8cYxypwzPzzpVf0iHzPKMR0Qjfyg7ji3glHGvoeHloHTS?=
 =?us-ascii?Q?xh8ZtUHdLxngvu9QjkJ3n43nncF2grIhq6awFWNVmmghdp1IAl3saWx8hI5y?=
 =?us-ascii?Q?/StZwa6ItKfoqr8VtIRMki4BcdDVdfvk+h8SiW6M73OSgDDND4z3roTK+tbZ?=
 =?us-ascii?Q?GTBTvWw1dKVt8SPZ9bJfDqiP+6PNiRRhJkiWSeQ63iLYeIFsBHV/jojPv6ET?=
 =?us-ascii?Q?wBXL4AVQKNwYXDQRodxiKl/nYU4c+uQOWz59ENzX4gZ2kmt5QW/MxYEC2n+9?=
 =?us-ascii?Q?PlYQ+b2ffL0vvWpwMHrgUrItXk3Tv9WZ+CMZXqiyKFBE9CSwd32TpMCu+qBn?=
 =?us-ascii?Q?1L9YSoGxU9h4urg2Rrx0VYxqp3stlQKFHXXuvJXL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a897143-68a8-40f2-978a-08dad3877879
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 10:33:22.1001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iz/byWnGnCI/an18E9qe2cxxWLWgsoow8uTGHDY9/eOb7y7oUReSG1jGltcu+8zu7dEv4Y0CAIju6jMFAqYJ1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5817
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669890808; x=1701426808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SxeyLLLgOPOhyunODxmTiU6w9ENSLeX82xUgJNoPEiw=;
 b=IoTyKg/OshPWEB0OG2dBN3QsyKYselTyzMhBJr6/ddDL/qYs4/ucaCwr
 9q/L01IwkExn2X6O2bW0uR11ej6WyPP7YcUSoGcTUTt9LD4v91aYV89BG
 4iHPP3Z8v21+CZDXsdsTZvU8smBd/EPwAC/lYdk4iWLQqWWkstcS3Zx4W
 bqz0tPizwKRF5qtNuNhkeQfZuCcklQciaX5pZQw/wjXSlcA1ZMtlENBcV
 Ewc8X/dYWdG1fw6McbYulygyuJYjpOqdpIjgBd1MzzjdjZvu884LO2XBG
 q2PS1WMgF4XAYcxglxbC49/lr3n1gEiRzxGzUl6nzgR/3SzJ/QUsC6H1P
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IoTyKg/O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v11] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Wednesday, November 16, 2022 4:05 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH next v11] ice: use GNSS subsystem instead
> of TTY
> 
> Previously support for GNSS was implemented as a TTY driver, it allowed to
> access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> 
> Use generic GNSS subsystem API instead of implementing own TTY driver.
> The receiver is accessible on /dev/gnss<id>. In case of multiple receivers in
> the OS, correct device can be found by enumerating either:
> - /sys/class/net/<eth port>/device/gnss/
> - /sys/class/gnss/gnss<id>/device/
> 
> User expecting onboard GNSS receiver support is required to enable
> CONFIG_GNSS=y/m in kernel config.
> 
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v11:
> - use CONFIG_ICE_GNSS with IS_ENABLED macro instead of CONFIG_GNSS
> 
> v10:
> - use CONFIG_ICE_GNSS in Makefile instead of CONFIG_GNSS
> 
> v9:
> - fix GNSS ifeq(..) in Makefile, add ICE_GNSS in Kconfig
> - remove IS_REACHABLE macro
> - fix 'TTY' from trace indicating GNSS was initialized or failure
> 
> v8:
> - fix example path to gnss device in commit message
> 
> v7:
> - add blank lines around 'GNSS module' paragraph in ice.rst
> - mark '/dev/gnss<id>' as a code in ice.rst
> 
> v6:
> - enable support for CONFIG_GNSS=m
> - improve commit message
> 
> v5:
> - fix "ifeq" in Makefile (wrong usage of string)
> - fix description in "#endif" to IS_BUILDIN
> 
> v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set
> 
> v3:
> - remove unnecessary #include,
> - change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel subsystem
>   is not enabled, we also won't enable it in our ice driver.
> 
> v2: fix sparse check warning, remove fixes tags, fix commit title
> 
> .../device_drivers/ethernet/intel/ice.rst     |  16 +-
>  drivers/net/ethernet/intel/Kconfig            |   3 +
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 375 +++++++-----------
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>  6 files changed, 158 insertions(+), 262 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
