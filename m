Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A474957380D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jul 2022 15:54:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEBF760E91;
	Wed, 13 Jul 2022 13:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEBF760E91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657720488;
	bh=aNY1JDluP2Xja5vPY1pBHdGS6UrBDWbP5vCQBNWesa4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PmJvTmqzXDNV4rYNzbgWKD6QDOzJIW5wVSNqn7eG2T3Z6YjV7Nqn2CnPjGZIUrd+p
	 hzjAEHJ011FsoufGTVDoFYloFezxdHpBEDuyOiaTG8rUx4GYuXD8xk2WenVt68AyH1
	 TyIjRpr9IwTlWahSorbsLP3xLa+oppS36VDFXilTWFcngdDLxHpPL3l0+3oHNPK23t
	 7AOgiPXJerUefdj/X4XYwNNjE6G6tTv7q2ZxXBlGbUzr64s6ptt0clYYNebyugm2j4
	 Nll7wu8BT8jGYo72EvHwDok9/zGbJ0N5auKp7QOOMdS7G+VP8q2pwd8f16iBrwQ3d0
	 /fh9lxolo5snQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5d5ZecE4yJMS; Wed, 13 Jul 2022 13:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D95260EAF;
	Wed, 13 Jul 2022 13:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D95260EAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 204451BF376
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jul 2022 13:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF9A441B44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jul 2022 13:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF9A441B44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-kJccyEmbzR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Jul 2022 13:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EF4841B3E
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EF4841B3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jul 2022 13:54:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="268250672"
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="268250672"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 06:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="653389063"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2022 06:54:39 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Jul 2022 06:54:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Jul 2022 06:54:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Jul 2022 06:54:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Jul 2022 06:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l864NbV1P2w2i4ySgw0jkvo4Yd6+6GzEFqIwrWFMzlzy1xnQAp3/+k1rEZzv0AO3EYJEJ8GUrgASXEPJpsAoO1yCEUgF55PmdMCtB7fkQ2NsrgojAk/SwQ1gVfUYs2kISRawIOSYbOra9r48GgbHI2ZFGiQRAymM05wfpQB0SWjuFsxOr19csYA1cXx0F6Xwn/qiFJMvFEZlgyJejQoTah0l/9RrTenQ6XHKViDcP0Zphw+D7fpuGQPm01IsYA+HlsOK1Bg2r+PTV5P7rzUYy4TZiSyCY6ef32jZHfJrUZCRZ2rrIRnYmbD5Lx9u+0E/DdEBQqFoqqI5MkiPHS4npQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yCK/Evl9CIradIzSICifmrGRBkkoXzEVY5J391B1x5M=;
 b=YgSWK80yY/hSk/oI3PoQ2y3Aim2NpTA8nbBIspaLg0Dum8e/CNd0LLzfvWYdO1r2xqLkYpDpOCZLhdqWRY4AbIwASfh3tQtI/Mrwu+I4az2naopoyrRL28G5JZMoDt3cNmWOtFcY6GuO4Wom/7zDlnORalgYIT2Te3iP1Qd4kU529x+QsCQwr5CjBIO4d2nPb/+b+pzN8SzzjbDEEAu5EMT7uN3f3uug6p320vjXtVM3LTB1Sp7jqfG1ISHOegXpVQo5XbeEAMRrHkv+lB/xYyTev3KSgAVJCY/ORUSpg7Uk0fKW5GOk8ytPIm5KrnkpE7IcdqYA3VtWKFG2XldSMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.25; Wed, 13 Jul 2022 13:54:35 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c%3]) with mapi id 15.20.5417.026; Wed, 13 Jul 2022
 13:54:35 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Guillaume Nault <gnault@redhat.com>
Thread-Topic: [RFC PATCH net-next v4 1/4] flow_dissector: Add PPPoE dissectors
Thread-Index: AQHYksXA2PqqPPPZHUuJSl7+xdE+Xa101dMAgAQb8zCAAg//AIAA9U2AgABe3+A=
Date: Wed, 13 Jul 2022 13:54:35 +0000
Message-ID: <MW4PR11MB57763D9CD8EA3F31DB7E3E19FD899@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-2-marcin.szycik@linux.intel.com>
 <20220708190528.GB3166@debian.home>
 <MW4PR11MB57767AD317D175D260362539FD879@MW4PR11MB5776.namprd11.prod.outlook.com>
 <20220712172018.GA3794@localhost.localdomain>
 <MW4PR11MB577640BD1BAC97D3BB27A339FD899@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB577640BD1BAC97D3BB27A339FD899@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0ae34bbd-a53b-456b-235d-08da64d738a3
x-ms-traffictypediagnostic: DM5PR11MB2043:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yJKLT0D+khCbUhrMsaeUpOh2Qg1XIva9ArHeb8xBMiIm6JXIpQ+XJM3zl5/n1tQtPBHBLB2AlZPGdUg+g3EdQHOM4sU/17jTLi0RIsGkLS/8YP7Eo/nHfhehRggsvGcla3WqHw0OEHn1w5lh2QipcBWQDb4i1vBH8hiQY7PRczf7tXPHMiJCwPqYgW/8KnekGeDI2Pstg94htIp2yTy2J3hzVYdfuCAYeOE2N5E/E8dE2fWBWsJ8/M659d4hqz6C2TkIi/zrHQZl1HJkdBMI2S/A65WZz3GHecoQYi2ncoMIBQgEmfmDY56WTfw6h3vmEpJyscyC6HVv8jl5xNnmgwgueyVrKsvN5aI3uX3+gdee60BKqX7GfqQ/jhBXh5GWS/XmewH9/kqSoZ0McuWc4S7ZIQo9OJqM2IRpETDNxoLHzstqj3Erb7jlG0GlWEJZ+9SQivOZBc2ieGweW6zloYcoMEUOG/4BuKkM30PMXjbjcQR1bZefphsXxzwckoPvyi5ew+cDldTw0Udrw4eVD5cpOLljuwEiOhKwgtCtjGY+rOdyw6/kiAM8do6wcfcizyrbIXMS6nmXRK1+GCn3JW+mrm1Kd815zZ9hI/D19UKXqXoTXbd5lYI8+4/Xq9GbEmLkGVtIq+GN4FH+OccQsG9ewYbDXbaqDv8umjxxjZlb3L/M/0gr4N1yeSRxwZTBHa9Z/Qk+uz6/PXsfpdNi9yQc5Sv+6qXiwzHfYYpYHyfnoAc5j7zsUmXmktd+aVkjHwD1gcElkKlyJIcAd6M3Xsy+YIEJnn5+l0tAi9aL20jFHb3Y4ZajbMgBlqaHYuHw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(366004)(136003)(346002)(66946007)(9686003)(2940100002)(316002)(5660300002)(66556008)(38070700005)(2906002)(26005)(64756008)(8676002)(478600001)(66446008)(53546011)(82960400001)(83380400001)(66476007)(86362001)(76116006)(122000001)(186003)(7416002)(55016003)(7696005)(52536014)(8936002)(71200400001)(54906003)(33656002)(41300700001)(6916009)(38100700002)(6506007)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?rF+FZUwOWbG5COduNRssKk8qKyVVG3HWqtFAZgvYR3v10UndsusRk4h1Ua?=
 =?iso-8859-2?Q?1izqarLjSlP7NJ83QHOP8KAqqth4BPyY54PSHcD3NoCrgoTStm7YQ3JFiE?=
 =?iso-8859-2?Q?SLfa2Zu4A9QmmYU0FtLqSw2lDyClITgP0uc8nc6DU8pDS3VcGrjWkXZJCC?=
 =?iso-8859-2?Q?0iEEWBtBDx2B7/Y7+QubhJuk50w+6K1+yBF4EXZTy4qiCKzUL3Yy68L0nc?=
 =?iso-8859-2?Q?aGL+d/qcyCX/BgYcnmNMbH7AEegFNymuIESjYv+lran8Kavne4UiMTQr4j?=
 =?iso-8859-2?Q?Vy3JJrK0BZjufofE/vTraHhABPWDvC5WNRzkA1BKKoDxZqbAhM95Z102mC?=
 =?iso-8859-2?Q?NCMiDqAt56cYP6PmkcMRuv53jUSVAVXu26NjBDyGiyhubQyujyPMeiBJnD?=
 =?iso-8859-2?Q?D7irXy8XQd19a8CGzGS/IsM5HW0fkqen5oEHwyCfaUEsGs7XKukHJS3sSI?=
 =?iso-8859-2?Q?5UcRAPogShkWgIAbXfrbtyAHCHQiblBzTEsDfC6h92yfYwzvGRAJuuVPVN?=
 =?iso-8859-2?Q?clCEVjffTL2GlU/kGSaRyci2LWg913he3xt7D+jIH0yLBuxIHgkXqhJBb6?=
 =?iso-8859-2?Q?A9atGOAb4vv44GPClLXNUq4/gHmJN9ixjPIkjFTxNdHFwJryei4N76JXs6?=
 =?iso-8859-2?Q?BF7gf5CsXTDug+bYHkRqAacKOr+//zIq89pJX6bgU8V4P/cp89RrZ04LpX?=
 =?iso-8859-2?Q?EPpjxU8E8Og0adPJFM93L4u1SKmXbaQSSx4Hp6hvogNcCW+WO/pAMuwx45?=
 =?iso-8859-2?Q?4u104FELX6mRf2G1pb7eSSgtGu6jhKOKoJGIQVRMHSvnd5brhv2kpXJO3t?=
 =?iso-8859-2?Q?2lphyIURLem/YW8LiGmyl7Y2d9hktcQ7GnRqP08dWUmPB/Es/mpd81key2?=
 =?iso-8859-2?Q?b5LSEYKzsSbtPegt0DE7c+VLZ9pAODQgCVOPH1+9iqwvJwA0Dk7F8/GpBH?=
 =?iso-8859-2?Q?ml1h8W+6Izzl9J5MFuiIrNj5zPEPwkoi7FM4GojHS54pCJsSM643yPKtUK?=
 =?iso-8859-2?Q?vm37G9Yue5BP9DU7PgYlAnoq1MupKuxAbnQe2Uy0lOHohSfKsTSV4Wh3fI?=
 =?iso-8859-2?Q?Nn4zyGj8Ad3wO92f2W8SnjNoJAn7C4o38J44VuCuNlsi3X0KAXzyg60bpP?=
 =?iso-8859-2?Q?u6dJZYJbDvUjgX6V9Ix8dpo5/rvxv4czEocie8LI48AkvzytoQtkqWyW+6?=
 =?iso-8859-2?Q?sz6eQpr7OXA9VaiMmitUvA87cqk05MUHLX3BC2Sc/H/Oym/56H0pap//1Z?=
 =?iso-8859-2?Q?mWNVyeibDkjaCdliDeX5HQdMnTkR1b3eGN8xKxvWyk6q4H3OMornLc96tf?=
 =?iso-8859-2?Q?+BgTNGfx9KqBahcMFzZHu/ELWjb0gb3QT1PIozShaXgToDfts9F6+a+Fv7?=
 =?iso-8859-2?Q?NwD2/+vCwMDFKGx//pKLhyiw8dlg9yycfYgQllXQdS4o4ov37UwLPsPzE1?=
 =?iso-8859-2?Q?a9ovbYNxcgqWPUel2JGNEksJPCcC7GYdMJk7johAigD+v75MyPsJHoIOJH?=
 =?iso-8859-2?Q?zb6LmsahWoD5WsQ3/vdlU0yyKGB9XEv3L1JBv2VlrhANtuRh7VB1vMjZlF?=
 =?iso-8859-2?Q?iNRhVopBfRLrNw7keqGb49hxGkkO59T/SIQyj0g/ejpxVUEGvE0Z0WxR5J?=
 =?iso-8859-2?Q?H8vDKyQ+zlVEVz7l/HiAFEgHyim+peqsHuidA44hhvzMSGoeiKWIsS9w?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae34bbd-a53b-456b-235d-08da64d738a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2022 13:54:35.6995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wT3zlXGJF93mo60fnpuwkk/ARwnbVjWy/QNOQstd1/7hUk0e9FsmPvocHixJcE2qGr5ySkLE3QmzoselZ9d2ZAJ0mQdUmgnoGZTSaC/CK9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657720480; x=1689256480;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sWiWoWPMQH/7OZgVDdvgleHV4PlUaU2Rdqfneza948g=;
 b=GIbXkvhCcm0HYtshl+LDp7QmxaJQhu+031D3zwjDxtY1EpkrBvmdS6Fm
 y7z6P4JQdWFF8K9lm2EghwoS3z+e/i0ReY7Ps78z45/AOhmU4T6esr2wV
 XimkwxzxBcNs+aim80RMdSqg0paaB2sITMoydKHMiAxPD8FX3EJ0mCy23
 jeZLDv/zb9ctHyF9lYWHZnm1ewLuQVbiS8uEtX6JVWLNlShJWUXpQovQC
 BOQBQY/PCcub/1wYZ3dZHedcpMZ0nX2sHJsfVMZoqHuLXh1PGlgzRqxKW
 otCg23ZQwt3XrIz8TVJFtUyik5n0T+Oo7NOhnoqLqTIRdoebenih9TRW2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GIbXkvhC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v4 1/4] flow_dissector:
 Add PPPoE dissectors
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "paulus@samba.org" <paulus@samba.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "mostrows@earthlink.net" <mostrows@earthlink.net>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Drewek, Wojciech
> Sent: =B6roda, 13 lipca 2022 09:59
> To: Guillaume Nault <gnault@redhat.com>
> Cc: Marcin Szycik <marcin.szycik@linux.intel.com>; netdev@vger.kernel.org=
; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> davem@davemloft.net; xiyou.wangcong@gmail.com; Brandeburg, Jesse <jesse.b=
randeburg@intel.com>; gustavoars@kernel.org;
> baowen.zheng@corigine.com; boris.sukholitko@broadcom.com; edumazet@google=
.com; kuba@kernel.org; jhs@mojatatu.com;
> jiri@resnulli.us; kurt@linutronix.de; pablo@netfilter.org; pabeni@redhat.=
com; paulb@nvidia.com; simon.horman@corigine.com;
> komachi.yoshiki@gmail.com; zhangkaiheb@126.com; intel-wired-lan@lists.osu=
osl.org; michal.swiatkowski@linux.intel.com; Lobakin,
> Alexandr <alexandr.lobakin@intel.com>; mostrows@earthlink.net; paulus@sam=
ba.org
> Subject: RE: [RFC PATCH net-next v4 1/4] flow_dissector: Add PPPoE dissec=
tors
> =

> =

> =

> > -----Original Message-----
> > From: Guillaume Nault <gnault@redhat.com>
> > Sent: wtorek, 12 lipca 2022 19:20
> > To: Drewek, Wojciech <wojciech.drewek@intel.com>
> > Cc: Marcin Szycik <marcin.szycik@linux.intel.com>; netdev@vger.kernel.o=
rg; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> > davem@davemloft.net; xiyou.wangcong@gmail.com; Brandeburg, Jesse <jesse=
.brandeburg@intel.com>; gustavoars@kernel.org;
> > baowen.zheng@corigine.com; boris.sukholitko@broadcom.com; edumazet@goog=
le.com; kuba@kernel.org; jhs@mojatatu.com;
> > jiri@resnulli.us; kurt@linutronix.de; pablo@netfilter.org; pabeni@redha=
t.com; paulb@nvidia.com; simon.horman@corigine.com;
> > komachi.yoshiki@gmail.com; zhangkaiheb@126.com; intel-wired-lan@lists.o=
suosl.org; michal.swiatkowski@linux.intel.com; Lobakin,
> > Alexandr <alexandr.lobakin@intel.com>; mostrows@earthlink.net; paulus@s=
amba.org
> > Subject: Re: [RFC PATCH net-next v4 1/4] flow_dissector: Add PPPoE diss=
ectors
> >
> > On Mon, Jul 11, 2022 at 10:23:50AM +0000, Drewek, Wojciech wrote:
> > > > > diff --git a/include/net/flow_dissector.h b/include/net/flow_diss=
ector.h
> > > > > index a4c6057c7097..af0d429b9a26 100644
> > > > > --- a/include/net/flow_dissector.h
> > > > > +++ b/include/net/flow_dissector.h
> > > > > @@ -261,6 +261,18 @@ struct flow_dissector_key_num_of_vlans {
> > > > >  	u8 num_of_vlans;
> > > > >  };
> > > > >
> > > > > +/**
> > > > > + * struct flow_dissector_key_pppoe:
> > > > > + * @session_id: pppoe session id
> > > > > + * @ppp_proto: ppp protocol
> > > > > + * @type: pppoe eth type
> > > > > + */
> > > > > +struct flow_dissector_key_pppoe {
> > > > > +	__be16 session_id;
> > > > > +	__be16 ppp_proto;
> > > > > +	__be16 type;
> > > >
> > > > I don't understand the need for the new 'type' field.
> > >
> > > Let's say user want to add below filter with just protocol field:
> > > tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses action drop
> > >
> > > cls_flower would set basic.n_proto to ETH_P_PPP_SES, then PPPoE packet
> > > arrives with ppp_proto =3D PPP_IP, which means that in  __skb_flow_di=
ssect basic.n_proto is going to
> > > be set to ETH_P_IP. We have a mismatch here cls_flower set basic.n_pr=
oto to ETH_P_PPP_SES and
> > > flow_dissector set it to ETH_P_IP. That's why in such example basic.n=
_proto has to be set to 0 (it works the same
> > > with vlans) and key_pppoe::type has to be used. In other words basic.=
n_proto can't be used for storing
> > > ETH_P_PPP_SES because it will store encapsulated protocol.
> > >
> > > We could also use it to match on ETH_P_PPP_DISC.
> >
> > Thanks for the explanation. That makes sense.
> >
> > > > > @@ -1214,26 +1250,60 @@ bool __skb_flow_dissect(const struct net =
*net,
> > > > >  			struct pppoe_hdr hdr;
> > > > >  			__be16 proto;
> > > > >  		} *hdr, _hdr;
> > > > > +		__be16 ppp_proto;
> > > > > +
> > > > >  		hdr =3D __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, h=
len, &_hdr);
> > > > >  		if (!hdr) {
> > > > >  			fdret =3D FLOW_DISSECT_RET_OUT_BAD;
> > > > >  			break;
> > > > >  		}
> > > > >
> > > > > -		nhoff +=3D PPPOE_SES_HLEN;
> > > > > -		switch (hdr->proto) {
> > > > > -		case htons(PPP_IP):
> > > > > +		if (!is_pppoe_ses_hdr_valid(hdr->hdr)) {
> > > > > +			fdret =3D FLOW_DISSECT_RET_OUT_BAD;
> > > > > +			break;
> > > > > +		}
> > > > > +
> > > > > +		/* least significant bit of the first byte
> > > > > +		 * indicates if protocol field was compressed
> > > > > +		 */
> > > > > +		if (hdr->proto & 1) {
> > > > > +			ppp_proto =3D hdr->proto << 8;
> > > >
> > > > This is little endian specific code. We can't make such assumptions.
> > >
> > > Both ppp_proto and hdr->prot are stored in __be16 so left shift by 8 =
bits
> > > should always be ok, am I right?
> >
> > Sorry, I don't understand. How could the test and the bit shift
> > operation give the correct result on a big endian machine?
> >
> > Let's say we handle an IPv4 packet and the PPP protocol field isn't
> > compressed. That is, protocol is 0x0021.
> > On a big endian machine 'hdr->proto & 1' is true and the bit shift sets
> > ppp_proto to 0x2100, while the code should have left the original value
> > untouched.
> >
> =

> Ok, I see now, we'll fix it in the next version.

I think this should work with both LE and BE arch, what do you think Guilla=
ume?
We don't want to spam so much with next versions so maybe it is better
to ask earlier.

	u16 ppp_proto;

	ppp_proto =3D ntohs(hdr->proto);
	if (ppp_proto & 256) {
		ppp_proto =3D htons(ppp_proto >> 8);
		nhoff +=3D PPPOE_SES_HLEN - 1;
	} else {
		ppp_proto =3D htons(ppp_proto);
		nhoff +=3D PPPOE_SES_HLEN;
	}

> =

> > > Should I use cpu_to_be16 on both 1 and 8. Is that what you mean?
> >
> > I can't see how cpu_to_be16() could help here. I was thinking of simply
> > using ntohs(hdr->proto).

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
