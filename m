Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 177D67E67F3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:27:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94AD5612EB;
	Thu,  9 Nov 2023 10:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94AD5612EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525624;
	bh=akQaLn6mwm3FonQkOfB9KE1bRL06IFr3Gv/QsxGkub4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I/o3Nv6pCwv58tnDLzdL9Pk3e0itePDsXgr0rE6BTFMcQt8jATdC0olRA9ZsvwFm2
	 VPTDddM/g+0GZE5MHB3f02ZHQlaaUg6J0UWSlloj8+2W9bIXGx3a8vm+uCjVFmlrfn
	 MmZ0HyLGuQOIN0GTmEwXrqDQHHToeeuQe5CBHH/UI408T2CkZNb4YdBe8sZ5xL1QBG
	 izNO1FbdkUtESYabsMg/Z5qwD9GtVZw2NK9GJFfcM5MLTIoMTke3a0BU95ZiNdsgLu
	 IWWEROziB9zSjKuo1koVuf23L/BbjdCapqxAb1kTUVtLYZ4WfP/evu3p8+C9liHQDR
	 SRYTo5h76t0cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HuOY_h2dNVIU; Thu,  9 Nov 2023 10:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56CC561266;
	Thu,  9 Nov 2023 10:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56CC561266
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9BDC1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BC9F140136
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC9F140136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQFAiQGLWqGQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:26:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A40C400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A40C400EA
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="421056482"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="421056482"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:26:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="763361711"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="763361711"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:26:56 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:26:56 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:26:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:26:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:26:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CMNosNtJGVqDyC/tRYLVu+9C0czbCew3bjnJKeCXICfdnBsOrkIofqF3/1j3PzNfVax7fKpEsvUimhOw0Qcm1TT/Gr2rOX6Sf3ZGlxTxK7FumX6Tk8rbPcPvO0cAfz8yzFdSZA0B5KyBlSoI7O7iUIa6ONE/AE2TIV/k5AY1c6rMIR8WIyKS7vN0rxTWkVU1Jc3yGCd30Wp5kQuIg0NGBdIv/dQ8cMBaqgASJJo74e0JCG4CIqq24awTQrHUvU42ALNH+6kMdIIVwVLgqospwC4ODsXFOuv/+wTb9Fok6EuPbG518p491bU12D/XKtR96JIOR/Yv8knealXDWAs7WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tuWOshUyQPtaC1Cwf53TfHq87FSZwlEGj2WUZDty6RA=;
 b=cp+hgM4zN5ZlKGn7kAYcCVr7uJUy6M1hGKTznirUGhGbErKuPn65SM80e104beDFWA6XqXzvHnaFkYsxS0UzaALgZ4e2wtxiz+pXmHW/fKnU8kKQZivieplQMvG69T6OAwSr4jxQekMP5SWh1Z/01UNAblZ39KOQft5PkKXskdiiTf6VhhFOGCpTnHetuT7btMxetQd16mpiJFNsXYRFKnM/ufnsUIbZVzlwCfj2FljbS5u+ZYk2Jz+yUgCbWygfYQchWcYMyT2x0wxxiRl2bG/mnM0MebzBLCoHOycxQalT/uTSBo9aqN19aC4wyqBico+SmxFLJcdxWqMBPEWuxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:26:52 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:26:52 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 11/15] ice: set Tx topology
 every time new repr is added
Thread-Index: AQHaBm5LB+oskL8RD0OJh4TXN6rb6rBx4YYw
Date: Thu, 9 Nov 2023 10:26:52 +0000
Message-ID: <PH0PR11MB501322F379C1D2011A5BB0BE96AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-12-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-12-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: 8c4db425-52f1-4949-527b-08dbe10e6409
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pgaC7X7oyfVc+x356ROK3RUF/wex5BXHcLjyeIPSyV96+v7nSwruM7aIQ3HTLHz5UyLhIzbYZ5oboE3VpfHYyAAZNpTXHxbax+nuqRvNBlaWdHoi+kFE6mqykWV9m2xvVUECLJUbq+GPXW8M2jRLkaas1luRaQEzby6OpEgngHKvssEOqyRI0cB8euvOrRpvOX0Eh7teuCqrheM1ibJsBJsmqtusUgq+ihHAY39ON4h/aKLjJ83pZfpzKs16M4ypSpr2lf7fLpAGhjEaALHkBDo+xZo13aDKl8kI/eSUXMq9R0t2mvbnXcEdwhPCDOmh3hygaamjM7lSVw2Ozo+N1Q5luwkO2P6I+gX3KLaqzPuGJw1wTnSTipebeY/P6ZRbl1pRo8hxPi0rvwkZ3sDFUAZe4M6q80rFafCD3Y++m/WPgP6FOpmjk/UeC9NBOo3cjPW7k3UnJfQKBAwSTc/upeOkjD4H872MViwHJDTvS+IQ7/npEE05svoFYf2dVGr0WHUH51gekdX4BYDTci20BQhfF9rDBSZ476EhcYV7NDXme0FFnzZouAG3SUcvAvCc/EqOSZi4bO21Ou+ivxyPtHd1mYxnBXaMv2XdJZB6YUOxa3ppV3v+8MpT0Iecztu8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38070700009)(33656002)(55016003)(83380400001)(316002)(64756008)(54906003)(8676002)(110136005)(52536014)(8936002)(66946007)(66446008)(66556008)(26005)(5660300002)(4326008)(66476007)(2906002)(478600001)(9686003)(41300700001)(71200400001)(6506007)(7696005)(53546011)(76116006)(122000001)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GkyXXQingTp5NjBlLXoKGwQcZ7RMTEkBeWtXZAOVjjBLN6xeqQfrJw/63juo?=
 =?us-ascii?Q?KkKZjMYF6OTtRastu20tVtpV0UcedOQV5OeKha5gHswYRm06J153vaMm1adk?=
 =?us-ascii?Q?6NCZi2W/rs6HIjCZiF/ODmkdTTk71KGB+ay3cxCMt9ZYpa+tlZ3LwvZF5elh?=
 =?us-ascii?Q?boM6mauDerwcVU3fs7exAG0/XYmpTeaNQAs55A1ppYLuwyQk7eAixnnbWucG?=
 =?us-ascii?Q?/hvWGSLVEThIwhX9vZs2RixERubYWWo9KVNtscTDFxlC+8ysF+mTRQtcCuG0?=
 =?us-ascii?Q?MnQ6Vn6MncVDWhyEkV+HrJoAgtus8MIAADZ/NVE9AmZMxQTCLJSMV1+Q6s/r?=
 =?us-ascii?Q?X2i+N2u0etrDGQv3WyB5H+eoy3m8LEM6m0j9gNHztnvzq/acnqYnGPZ3WNPS?=
 =?us-ascii?Q?lrvabDaZJl7AadR9W7QT17o9V+bgP1hLiuCxD4Wj5H9h+4u9O/RljTDhkLRx?=
 =?us-ascii?Q?i2PPdztyjoKD/4ojwk0MlZTfKDWzE+yTeo3X0YXz14Yb9P1isttItlHL1ogO?=
 =?us-ascii?Q?I9NPIx42RpJXVSRx1ROfc/nidp5Sx71ErOYf6Mu/pRLDHngsoVj33UlbiLMr?=
 =?us-ascii?Q?ZMuJYf/6+ud2LIaK/lDj/JNHTfzAumexwyGOSqRPZvAYf04gN6YrFGT65Dir?=
 =?us-ascii?Q?ErtpddaxYeBhlFjs8GBzyvYpT5F8btK37bjZcauXiM3ompzn57wCbpHoeIqt?=
 =?us-ascii?Q?oZmi827mX98zgDk7FWPoTapq/Oflc69Og/xYgBAmNIHHVCZIXRsHBGz9a2UG?=
 =?us-ascii?Q?ahHj3kzuZzFgx12qhCYvv8cmByE0tw3GERaq3H6whgq0++ogwhAmR5zbMtQ0?=
 =?us-ascii?Q?RyTjKU4FohFbTh9vkUlH7IucEnEICSv8pjAs2BWMW7lIRckNh/HUjH0Xvjpx?=
 =?us-ascii?Q?tutDy5DFWw0HN8SpceqVhVxAf5U+ef1aaCPqc/iKuYlvFxP9W/Q7ryIuUDo7?=
 =?us-ascii?Q?FQMcnsL+8IbFNLOuq4X/A7ixH97LKJvX0xfA7B3ujLpdwK8EUmst0ADwsFS5?=
 =?us-ascii?Q?QbodSaQHUAVJEOIo0FuvRHqzo6y4dPWiYT86PAIdllb0kxWWFVU0tIHcfaxm?=
 =?us-ascii?Q?36YZbmWVMJhMDS6O9E4uumjqrE6Zvopjj2Co+0+Igty1hNaqpLoO5rA4WtBr?=
 =?us-ascii?Q?vAOFE3RZt66t+6fpc3nI/yTf+JFVTBrPpUU0cGrrTihMNWar8M/ah9q9/6UU?=
 =?us-ascii?Q?AS5y0DjXaAc2mJ8jrB80DRHZu4V5KKA2Q1fvJB9lijSzwvnpC4d9ERtLXeoE?=
 =?us-ascii?Q?bzv3fdoWCD903iSCMwnoGYfFdxvZI4OopFQ6/W3eEUD23GXHW7nlRFLvyJui?=
 =?us-ascii?Q?XSbTFPlUwdimNNN2Iffvj4wR4+YRAipywnh9y25FnnZq/j8rEsae46bTSdrx?=
 =?us-ascii?Q?jGb6WzWLpnuySuS+i3KPXG24mH4Z9REPA49dlxXxH2A06zjRihj8QXVSIlgf?=
 =?us-ascii?Q?11DQv8qeNMDfk8jWlsrCOTghg4U2/jpRWSAW312gb+VMkSHJg/wziV3bEsuQ?=
 =?us-ascii?Q?916pGcx1t+FFlAc+maw1BTlSzvXjEYXWQVXXpeg2xraRofW3gD86GJ5JNoCb?=
 =?us-ascii?Q?ghMofiBjWhGKmXEBWiySgt1c08VVcfDW4+0roo/tpv4zniqqd4hA1AwalDNI?=
 =?us-ascii?Q?Kw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4db425-52f1-4949-527b-08dbe10e6409
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:26:52.7083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9jfc5XIVk54bwpyggMXo2wiuZ1+439tOoE/4S629hFP4LAd1Ix1BacUHvHf4b5yjIIbQCyLoqx9Dv3VlnvY3Vm0gNEgLBgpL2lY9GJU/xLo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525617; x=1731061617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zq1j/sKnYq70NZeSfLQeAveZKvxu9CYwLbghaEIAfII=;
 b=bWozCa0x9Lvrd4oCGHi7id3FcEvy5p7hwosEOEd2WAA0vcPjESB29eJf
 4BfH1p2L4Jqxro7liksY1s5PrBDyVzBryikZM6T25Un7rmrgkFwyhoey2
 WYwN49yupCkQjGK01WTNIKBAVTFFnb7N3Em4JBWwB91b2PN4Ml6OsKUnN
 KorVdmA4t/acs+ZB5e5PtkG7laGEEonHQQqbt5hRGbQxGcGH8za9r7LA5
 KrT00EJOzvIC4avmXEy/9JCCvA/3e20F186gqN991RF0BathnHgLkBnRZ
 XeVLG/jMieAEGwGYTDxtR2Y62K4ywJp4p7rkKRjkrOvxypS9b52Yfs1zJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bWozCa0x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 11/15] ice: set Tx
 topology every time new repr is added
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 11/15] ice: set Tx topology every
> time new repr is added
> 
> It is needed to track correct Tx topology. Update it every time new
> representor is created or remove node in case of removing corresponding
> representor.
> 
> Still clear all node when removing switchdev mode as part of Tx topology
> isn't related only to representors. Also clear ::rate_note value to prevent
> skipping this node next time Tx topology is created.
> 
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 29 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_devlink.h |  1 +
> drivers/net/ethernet/intel/ice/ice_eswitch.c |  9 ++++++
>  drivers/net/ethernet/intel/ice/ice_repr.c    | 27 +++++++++++++-----
>  4 files changed, 59 insertions(+), 7 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
