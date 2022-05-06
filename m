Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1BE51DD7C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 May 2022 18:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E24A60D5D;
	Fri,  6 May 2022 16:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1VmJ2iwpAUHf; Fri,  6 May 2022 16:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5312560D57;
	Fri,  6 May 2022 16:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4518C1BF860
 for <intel-wired-lan@osuosl.org>; Fri,  6 May 2022 16:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3089C60D57
 for <intel-wired-lan@osuosl.org>; Fri,  6 May 2022 16:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRnpsIzAPPIC for <intel-wired-lan@osuosl.org>;
 Fri,  6 May 2022 16:21:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63C8E60D56
 for <intel-wired-lan@osuosl.org>; Fri,  6 May 2022 16:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651854082; x=1683390082;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qbs5hOs2eCP7ze86wYl8qq8YnlNE3yBl6jZ4P8OnUHg=;
 b=aODcmo9ggT/vd44n/FVqtOheJoiXtZNPk2yVH2tW5ijkGJ9Pf8esgqMy
 8XLYj4H7jAvDLZ248CAHkUQZGjKi45biKAV61MlkhcT9hIonKJ5Rn80VE
 B4c0NCu9ygwU4HGIuiRI5H1XIKgTXbr4BW9bLmtC6jO4EpTpvUkPgEjHa
 B085qelv/vriGuumFOGprKI9uVzD6lb88OOLL8pgZfI8+l198JDrQXMJO
 /It20IY9rP5u3PuGrjK9x4+ju3EEiCyg0PsHiyYml6UXAEBEA7KPgAG7X
 XQ8BdrwDcTUsqGkSSy/YazZ46TlR2eRsgcNsOpY/MF/7vVwrJNUTgEfUl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="293719485"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="293719485"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 09:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="569157311"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 06 May 2022 09:21:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 09:21:20 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 09:21:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 6 May 2022 09:21:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 6 May 2022 09:21:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Okqpk2uQzZGMumU45kgAalay9Iec+nL6MtyuEtJT+jeFwSVlA/hd8p1rGZiJM+anV1WI4Fu5eL58eEcQv/SQ69hWckUx2PmW/lppbg5aWuDddo9F4VNH2ORfHIpp8/zgCJAOIhEOrDaXRM4qplzi9rwvCQ71wsc7yOVqRFOA5RRyGTqkUrQcLhWVj9tba0uQ5vEnq3NFHnCztHEYSDaRJSyx8Zbyh4z+GAjvkYQ7brenN5ECBO9E/KgYGKjUehIWYPfSFaF5XFVlnpHnNHDyZqSkz9wNMkQZp9CtoqekLfcotM4teUxKMKKOgEQ/yON4tKYQKF4GF9Z8P4Z5NHNYNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F9Al2q4aHWsO2kcd08JLIwQmKz0oHrvzBd0bqq/hjgw=;
 b=cSKZR68kG9my2raDkkP+hjkXZ1WmFAPODKdaDqYMeqDRmGToCKBoDAw9TIdw4fhsKLKKdvzlb4s1WCkXVwUY7rmcGrxWKUgphuRNhbxeQ0771WVWFxi9JSbW7topoSyUBdZxZuAHtpkYwK9z0S8EQ+/+f9nbJ3IxJcRyKveFkIMVZhdAXS0m1h+4Uww+FO7tRzha/ebRxMeMo+PtgXoswh2NsVDgMaEnpSJTWy5lLeqUaAOJStzPiFeRutZjnl4ypCvfTnSOrPvBHs+MaTFaATZDowHjstelO/vbepvHfl1Q8626pqZ5eNNKOZxUWq3VHry88Bpb6pGkHSSVf5dcMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by BL1PR11MB5430.namprd11.prod.outlook.com (2603:10b6:208:31e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.18; Fri, 6 May
 2022 16:21:19 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::9d20:3519:2566:2637]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::9d20:3519:2566:2637%7]) with mapi id 15.20.5206.025; Fri, 6 May 2022
 16:21:19 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Expose RSS
 indirection tables for queue groups via ethtool
Thread-Index: AQHYXwlY09QSYkk7bUOURKk3ylEL1a0SDCIg
Date: Fri, 6 May 2022 16:21:19 +0000
Message-ID: <MN2PR11MB361456918E18D6D4DCEDCB5A8EC59@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220503161339.2287738-1-sudheer.mogilappagari@intel.com>
In-Reply-To: <20220503161339.2287738-1-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4954a1e2-4ffc-497b-138c-08da2f7c7407
x-ms-traffictypediagnostic: BL1PR11MB5430:EE_
x-microsoft-antispam-prvs: <BL1PR11MB5430812F8D2882C04491A6AB8EC59@BL1PR11MB5430.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sAGQJQxD6PoAvv/GI6LHXCt4XZ5Lpemeye6wMSM/V6GGMSanPOZZ+yiMZfxlWDcrBUouAnZjB/hljLV1lLaN7w9YnYopPxdH3M9BxMreRSLs/QidpwaIk30LE/cBAs372vnf5wHzs4jdwbhtCNSxoOnzmoGkSEtF8DIUdsmmIv2EhrQ4GrCBJfk8ZCTIeJHjj1Ruk8tEsMqOkfApsXLmqtebz//IZYaZZEqhfaoXEOesL2MSDMponLgcAKYQFLUAK9PWNBKLflSx4zZ5SAUqhDSrjjNuWz2UCX/sTXEuDOIGK/LoBRNRsaoyg6bl2VExE0pmiWJOI92abBAy7IYXn7aXmuYcuyt3VJor2XPSSDIFfwh3o5S/GuZdx/PMxwYnXTNjWqUYugNVvlvrCCoRpw+Y23ct/rFvZCaUoJDg59dNphEk7qNPiUV3eXYXZzYq99KkTSfrNSzt5jWOzsAPylvOyASf4zD+rbDZXmzfPyDrYuxYObPDcRI8aM/iAXT8fB9I3sYIrWvJc4dUluakH8CwPSTdq+FuFYt/AqB93uFgO0qOT4soPZuq9J55QBb6T7OwWXWVNR9EG1xHtRzbLb/VwdWPRjeSYeOf9cWxovAUSEaaUbwzHhsMLt0tGtPapRWorz6Hv7Da6zJOIhsjiyoWTInbmSLyhYDmqKkyn3hO/jP4+n35tjSBe9X4KOXTP9eLDO0E0DUiw8LL9muXIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(53546011)(38070700005)(7696005)(38100700002)(55016003)(52536014)(5660300002)(316002)(83380400001)(8936002)(508600001)(86362001)(26005)(9686003)(186003)(71200400001)(2906002)(33656002)(6916009)(122000001)(82960400001)(66556008)(66476007)(66446008)(64756008)(66946007)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DmfF2L5rhVtghOs3rcf0/QZ0c+MFPwCtxjLLqsyAKT15hrtgIPuoMDeIr9vK?=
 =?us-ascii?Q?prbBhT8DA734tQJMdNuaFHXMDyWUG6ZFO76g++5KeCXBcPs9evX3B7y2oDq7?=
 =?us-ascii?Q?ShMzs7FR2W5/B74hmXOzvtIIsBhVUE4WU8Dy34oSf6IplU3/6SE8WEztSXTz?=
 =?us-ascii?Q?ZEfswC8sop+289uiV4eFd2XNQ+36gaCtxsrLcFFKehKOJI4pTqPeqldXCf/U?=
 =?us-ascii?Q?YyeAPLAP3tOuHBPKchiH43K/WlvQdxDWqxXVgVQ2kBNmzhhpN7vRUmuhUace?=
 =?us-ascii?Q?Bg8ENwxueeR3iMMkNfjuofByJP6FOy7G8UFxtErtC65n0lgpXTVWJPiuakCP?=
 =?us-ascii?Q?AcmE0TNlG13/GosCKdNbLAHjoz0xNfKghPcnrc4aKLUEL2F15hIPnQo9jDUi?=
 =?us-ascii?Q?d0lrfTUsD8eFD4tPyBIMriG8NyMRhWy5XfbyobS8rWwg22CRqb7zaCJFDzOc?=
 =?us-ascii?Q?3Q0fIvY0IScXYtDmyh8bWHxiujn3TEtf25z36IPLB6zEYprSMnl/UT9mzbPf?=
 =?us-ascii?Q?6fOsn3MxEtAU99sAm+uKwlsbZ1buFoAOZEtQB5gkeM32zl9/A12VuKFnahFi?=
 =?us-ascii?Q?Sgr6/BzlFUO7FKNUWk2IOu8OfIHvKOqcYSZRvU9ZhEgScNYGYPE306zDC9c5?=
 =?us-ascii?Q?VU8CEMWXhb5W22rTkEXJLWf/u7zGjC6LMVDluzsx2seAHYnpJE3xmXwQy/pf?=
 =?us-ascii?Q?QuCQ9+79rWZ9T83fVpnyMBFK1dq1AbXWY7edWiSSADB2IMYWStExZd4WhCo5?=
 =?us-ascii?Q?j3zlJIKMwwhM0wm/sinn0ZOndJqp6OPx6kxguoZgemNRX8K1Zwm2smDtWj2F?=
 =?us-ascii?Q?A+p0dQU9hxFMppQcdeFNNbHBU7KfuPpkoQcZMiooUMY8F9Mol46kMeaqLWxY?=
 =?us-ascii?Q?2mDr0F8s3P2GyjkR/b2EiTwTqmmQC8Jn3VUMrkCXAB4pp/6dZHVx3EJMimB3?=
 =?us-ascii?Q?MNDGd+mAGwJWpuL+OqOMxk/YVkepWHIJgnMxZS5XqI6rfZPOPKZshHIAiOU+?=
 =?us-ascii?Q?bnhYRPyEPsB708WfcbWuo2cdRRHrAaiepAIqmtS46C9Xxo/4GeQQNNfg2Eua?=
 =?us-ascii?Q?GlOoZZIvfjEoL76ldwoNRJkl76+1F2LTD2b4XfumV8HgMACs0aHjm4GkxSIY?=
 =?us-ascii?Q?2NGUK1DXxyur8YTmKKaEEsabtKPqtkGhMWvBjlvBvzpdcoZt09njyefPqw3g?=
 =?us-ascii?Q?/lMYH0HRrDbxuhfnrIcSiq4J5UJU2OJ9+ztfiQiwBVXBEqv9wPfa83rhxE7t?=
 =?us-ascii?Q?qgNoM1j3Xos571UsdLZpow2CRnb5Z4uQzneRRRx+wal0AaisFuqyWxlxFCFi?=
 =?us-ascii?Q?8Gf1+aSYU317FBDkEEnRYsLnr7lgfTbhq8NQBgPXopBNNWTqgalThmQNHTox?=
 =?us-ascii?Q?pV1uR7jsZGhgtySSmbrVw1QQR0GcWMh3v/FgWNf3dTf11Gjpwsa0hon1MlAD?=
 =?us-ascii?Q?sg3IfphXABmnXzAOiAPfOAds+/ezTwKQD6raYHI6sVFskv5c8XSaYLHjXY+4?=
 =?us-ascii?Q?RqaT/gTWRSWVGXTmdRnHSQSDWhrNo7r+BSvCCW0gl2VS8pOSxHocT+5iscZw?=
 =?us-ascii?Q?2+oLqID+FKZER5tHoYRvyxjAtyMTlOn13Jxw+9g4sikRl3kR0OwRUWMP4gB9?=
 =?us-ascii?Q?mRzyZ9dEcEb+fAgiAP2wLyNOtMjo++nLTRt9sNeJ5GMOD0HMYnxmc46/Wbya?=
 =?us-ascii?Q?ViZSvNGGtuVn6VFTe/GAdLs2JxJg1HOYixO/a1fiJLKtzspfmtNUdhuilFJm?=
 =?us-ascii?Q?NkweiGK9EcSx72FDEpqaZM3af7xPcjg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4954a1e2-4ffc-497b-138c-08da2f7c7407
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2022 16:21:19.4948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xV2SBzNpDoUAsOPTfHQKwRWEWEDXBD0l8gKDCHZsub5EG6ZS4YTtiQ8gH2Q7lRP1C1FhR9Fia714z6PdUpzBmDzF9WIeqHorN/mKboiXOUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5430
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Expose RSS
 indirection tables for queue groups via ethtool
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
> Sudheer Mogilappagari
> Sent: Tuesday, May 3, 2022 9:44 PM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Expose RSS indirection
> tables for queue groups via ethtool
> 
> From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> 
> When ADQ queue groups (TCs) are created via tc mqprio command, RSS
> contexts and associated RSS indirection tables are configured automatically
> per TC based on the queue ranges specified for each traffic class.
> 
> For ex:
> tc qdisc add dev enp175s0f0 root mqprio num_tc 3 map 0 1 2 \
> 	queues 2@0 8@2 4@10 hw 1 mode channel
> 
> will create 3 queue groups (TC 0-2) with queue ranges 2, 8 and 4 in 3 queue
> groups. Each queue group is associated with its own RSS context and RSS
> indirection table.
> 
> Add support to expose RSS indirection tables for all ADQ queue groups using
> ethtool RSS contexts interface.
> 	ethtool -x enp175s0f0 context <tc-num>
> 
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
> v2:
> -Updated commit message based on Paul's review comments.
> 
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 69 +++++++++++++++-----
>  1 file changed, 51 insertions(+), 18 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
