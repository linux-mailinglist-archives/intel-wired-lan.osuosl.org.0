Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A4FC0C124
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 08:17:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 780B041396;
	Mon, 27 Oct 2025 07:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aNJ21s47J3Xa; Mon, 27 Oct 2025 07:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA2A84139B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761549418;
	bh=XPKYJPP/jrUdTbSRlWL8L/xdCXW28CvsfihntN1vwoE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ijW50gwUFGbCH2cSC0l44/oxGckK3oTC8v/WdCZpqrvQyTPwDT+lMOFiLXmFIn7Yf
	 AVZRZZFmewz2jU5vgKZ3ZnENk2MvlHhKukOm4R5oIUSdN/jcQ+CcHwlyEKo7mh+56q
	 8SyoZxDSjtPjF3jK+R7M7PLigNINpz0iXcAjqlGGmqWTC2RgqyJJVnvZv/TBILPFf/
	 N9WiKrfNsw3dnbcxZIGlvoHqXODn/x4L1mgIxyr8U/pMpPSKbmDL2bYU7J/YDYJjek
	 Xskxc7J0bMfvzedZQ1/VDKvH6PI8NlAcoynAeH5tmXQayJoyPaHL4LlfFzxh3Kph/H
	 vNaLo/7ykeIhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA2A84139B;
	Mon, 27 Oct 2025 07:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EB33B15F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0CCD41394
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id frCh2bLC7oAE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 07:16:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 208D84138E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 208D84138E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 208D84138E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:16:56 +0000 (UTC)
X-CSE-ConnectionGUID: jrA9m9KkR7+EAqPLVOt18g==
X-CSE-MsgGUID: F+7Fz4/RTP+K2O/qSKG6Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73910781"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="73910781"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:16:56 -0700
X-CSE-ConnectionGUID: QwM0BBF+QmCh7ZpMHcM3Qg==
X-CSE-MsgGUID: CIkErF0zTgaLxaOwnnvVUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184870877"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:16:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:16:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 00:16:55 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.51) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:16:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OATNrmkNtiux5ljYYMCjAvA0UvmE6b8F7YJ64I02XdvMWJ2WoGSGUP++7PoG2TUpghEeJzkQ8oBXZ2exQhxFZBf+Q3LCBKFYYWN/7i7jEDdIpqwAvRpb1fbGKYal4Bo+RPwQqQ4xpz+USP3B9HZ5dDnWXzTipT4fGWc2z7FdGA1iXlPZttqZGmGTQDaP+/fIzJH8W51NcW97QNRQE9NRy5PIeSpP/AnfC35ZX9ANy05GLABF+FFyANRrHvhVnFxn3lzfmSAnk5a0uYTjITknOwkIjT+XCtuNOAxTLw3tS8ifGulYM3FZU649s7Z18VcK0j3rl+FntIQvcSGcuwRyPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPKYJPP/jrUdTbSRlWL8L/xdCXW28CvsfihntN1vwoE=;
 b=xfhniwZb6iktPuh10TNFKjo0dJL7aIWRqgnoXTS8ZULNR4D7vT9eSK8WOQ8UbyDSRKMmyGBlZdlzxu+I3a/zxjCTmrrLRIVNPe9+HTkToUxVZk10KpyHiXjcczQO9afEsHDx3Dxy8ywY5vZcv3rn+uTM47FEB0Dw2dtLeJvaS9LdTJJqbmQsgRe1aUFUFkJ5VMutcIrJ/awGnM0WqsPYmTRE0pXRD6VY172XLi3NFeOhFzHt9BSX8Cxx6v5jawJMaJdtbSa4v+p0Mf+qpSQX4xA95O5U2UAyFeInLm9NDxnMhFy1ZAMIAbZo5lmgE0c/Qidr7KAnIU1y80VMWNPVEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 07:16:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 07:16:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igc: allow configuring
 RSS key via ethtool set_rxfh
Thread-Index: AQHcRcCENfOahKjzXUaCnEspWqDVLrTVl8OA
Date: Mon, 27 Oct 2025 07:16:52 +0000
Message-ID: <IA3PR11MB8986F36CD0CB9F5167822EDDE5FCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-4-enjuk@amazon.com>
In-Reply-To: <20251025150136.47618-4-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6533:EE_
x-ms-office365-filtering-correlation-id: f5adb3da-b30e-4033-3145-08de1528cdbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?pzcTdHttPNiZqRisZUVA/+36wF8dLQP5kWTg7KsPleZyCHvtKnqSS/bXN1TL?=
 =?us-ascii?Q?NuVBPrIIXA0/wqAgA2leiKkF9Ojlm7KJ7iYKI2VeoUXLevJCpNUYU4ueUtmz?=
 =?us-ascii?Q?Q0/EScIygNRwNgPPuqNnUSpTEYBwITWp7fjnbd7Xb84weBPtZb87zQshyjNe?=
 =?us-ascii?Q?klzwRsO/TGxJCNmRuYWM2IKpne28qJUM+27rj9mJzoAoQdb0Ts1vxrdbQ5qr?=
 =?us-ascii?Q?EmIsCZhudkfMJX97C+ysAWQQDYOICAZ5s49ghXANIeIW1F0ZAvVPNALeZCnC?=
 =?us-ascii?Q?zxYApyU2HwS/bfTBQJLu/TITp/3aJuV+UmJWwiRcfsxIF56mwM2Cf5jxUMf9?=
 =?us-ascii?Q?/7Q/nkvCdnokTmicZlunkPEunQpAXPo0JXuBu0cruG9Nuo3yIp+HBSqDXoBS?=
 =?us-ascii?Q?pcxbT9T80f1L24lq+bfUEhTKrPKmp5NhxYHnj8AMCAknPQ7Tb5uVsLR2TYrs?=
 =?us-ascii?Q?ls+hocIy5/9aqXFocHaimSqOo8hkbaLOZ71qH1qqChKE2osLtZGdc2cNOZ4W?=
 =?us-ascii?Q?rufxI3rn4LkPNalOtfjeRPnEaWrRLBfwM5AXNBe8B5WTV35Au4gSQsYSNIgy?=
 =?us-ascii?Q?V4kdXCf3JCaqTAewhgRsgG7ZzKsHgTaDapLpgbuuTP3lr30JyQ3L4/M0wMu+?=
 =?us-ascii?Q?IMt5V/XFRuvDBxZqr7GPTwLD+ZJM3Gtz8NUIqmPMwasOUnD/gx4bP2SiQ/FG?=
 =?us-ascii?Q?qWlKGH9yxXb5t/25DyNuDtr5vN1QoEe4hj+G5EYxJdcziS+RBuB4RejIWrKF?=
 =?us-ascii?Q?G4w8TjBX3WSiYR+zP40JOLLTaLI06rsjRKnuZnhbdwS4PmMp8GQ17UCqosc+?=
 =?us-ascii?Q?21rr1pJzyWbh3XiiXt2JvYDiY9hzwp6k/HStOZTef7P4g6uFM8RmdqewSX71?=
 =?us-ascii?Q?bA71qrHaixsLNBBGHq1uTHkhalwWvrzkKr+/YqbwLSLN/N6zqzH2uzmY8yDU?=
 =?us-ascii?Q?ZO1we2TWF5yWZ+206zwlRHyySKeCXyySo+aXnAmDZVF+4yi/8OsJttqlgtnc?=
 =?us-ascii?Q?fkc1A/C6/hlZHgYFsIySOT0BgM50ywawJ+tsuH2rzDLdD5vNS66MII4v6ega?=
 =?us-ascii?Q?DWzDIo/0EjPcsTiJzTVmffCSnqPqAMiyuoN881OA7jWF2aJPFNU6GUFj3bUz?=
 =?us-ascii?Q?a0DLAgbQw1ZSXEopaCxeLbFNgS3V4ykrZrTG1oPWR31sA4RJqM3la4r2k0Vc?=
 =?us-ascii?Q?cDEQpCwjHEYbxuT6N0Y2vTsWbeVXyHJBJl4IoRYLxGevZQEXhQfkmNNsWOlO?=
 =?us-ascii?Q?IDr6iXoeqHjNGqViluq/y7Wo1wWivMD/FIRJOhNR5jwrRCUsk+RlG9BzFm6i?=
 =?us-ascii?Q?UHHej0+dYeRWhli1xA5duOawztdiS1bD3UegBAXfZ2S0rWQrn7z7KKeDF/T+?=
 =?us-ascii?Q?usuCMWUDkh8UkP9KtulRvdmBbfK2ynMOI3vfD+dnDfxaUXurhDf3s7aY2eno?=
 =?us-ascii?Q?1d9w6kxK6tLQfbFnGXAksBVh+uwXr5bMeKZSelD/hgdI5zxCs12WyIMYkGcb?=
 =?us-ascii?Q?1+XtCR5BvkXJXwXCfmugg2ptUI38zSV4xW3O?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ni2qxAWOjEVziM2iSA6ZqDbtdpcWPta5pEz0ChD5ojV/w+VuoWRd1sYOiGuG?=
 =?us-ascii?Q?gtgJRxYbT9F9HBOQftw2oWY3uBfZnUwNvvnQDGvl6I0kyqmI4y6PSVTbOk/o?=
 =?us-ascii?Q?+L4EK4rMLKP8j+ZkZM8ajowaLXFn26gJFIcmy7QRyWT9h/GwYqpFXjyjz9yJ?=
 =?us-ascii?Q?wJKKooQfYFBwo/3CEkGYnCHjB158bXexl1I2IO932Sri1M9x6uMYyhPRHj0d?=
 =?us-ascii?Q?t9HThhTPtz6cljYyzQzN15X5cFjaao471hlkEFRZd9tlK6LVHziahhevK9XO?=
 =?us-ascii?Q?wpN9b5WbdA/mGinYYsIVQAmqedrhef4m+H5BphsNoy438XcYtObiYGfEC5eu?=
 =?us-ascii?Q?2k3Od47ABgFHdznL8XPWktkklnTinHhOBnA6Z7EmqVTpgLj/Nlr8C2sjPDM0?=
 =?us-ascii?Q?7oSOLvyRx4icG4MxXHq0RqW+JD91MCSUGTUvgqKOZBkhg/z8lyKuac6+g/J/?=
 =?us-ascii?Q?jQJy2je8yPvzmViepwIFJJqiNTeZIcne+tus9omYGPxmCjpxkhqikikO2GCm?=
 =?us-ascii?Q?A3QKXDnJWeqy8qW7giaLJkvROGkM+/ZM9xr6ZjV5uyH6dccIYVGID0Aq+0Cl?=
 =?us-ascii?Q?VaJbiMa19kmq1JICjCrJt1qijGWQnRYoD1Wb7CFqav0zg58p6RWACd0+hdHQ?=
 =?us-ascii?Q?NSoVkOLAWFVHIjsL11kerO+s/kt57CTgp8Z8wI861hthUwJKbjlikfKptPDY?=
 =?us-ascii?Q?+iSlrFqH5ouiRXuq45IBH+Le1Ntl7BbPM3aWuR3Z168mLZLR2FkSP8fIftcJ?=
 =?us-ascii?Q?724tnJQuuFP4eEu2ggzEBm5MRKuiHHyIxJA0wcHd2paq3FEW3xP4QmSmBNUs?=
 =?us-ascii?Q?5FlrXbh/2FUneM5Ylz+7VptKK0uyR1qrNcdjxkCw3Xb9xiByebNX9AmHiR/i?=
 =?us-ascii?Q?nql6cc7mJ6jJxc/TnpPeNrZScS+b6YkrMoXsNUPM4C4SeHaheIWEIlGc/4d3?=
 =?us-ascii?Q?vhw2cO9Ptq7f4juxop/c9eVj0+WAZRvEAvyvNY7qxhMyv8s8tUpHyfQ87zms?=
 =?us-ascii?Q?LIbwaQmmUaj21EOlF7ssMenRaZVMPk3lQVNPMazY0PMmPvZSjj4DhnFFIlFi?=
 =?us-ascii?Q?zXelY0D158BU6desLhvm7ajYy8jeMEXRvZFrs+ZvAfBh2EdG7IGVtfqAZK4D?=
 =?us-ascii?Q?VOyE5FB7MecRM7r4DLgJqiMNFR9AOgXXqEdjjMDX0EkgdmNAw3Ueuc9y4oIG?=
 =?us-ascii?Q?K6fUdl+Nb7R796e4W3VAhn8ODA+J+R7ebNiNm1loJwv/iHvNBSTz1olnDU13?=
 =?us-ascii?Q?CCfDxumB3QAU8C63XOxXV9TAeDR5njpyfetG6MOiVyucfe2BVPBv0897dYPY?=
 =?us-ascii?Q?dupi9vSVv1/uftQeZydSZVxD5I/bkD8HSvAPejfl+IeAfyYlbBQgnIWplzg4?=
 =?us-ascii?Q?zWYCVcDC4F4F0HhN8B0yizPeuU5knb+Ow7hK7QAF0+xVdbduTgmn+++/TQ/Z?=
 =?us-ascii?Q?otOyn3cYuxyEHQf0CRURwOx5aOgwmWUAKaRb/UFbLtHHVHCctSyb6woZUqLB?=
 =?us-ascii?Q?VxxHrOZXam4WdYb5eQfwfWdr6B2rSDID+6YbOMWjlh0P5zJvmhensD4YKxl4?=
 =?us-ascii?Q?EaljOg6Bp3s9N+BbNBTo3f46My8V5WV5cPoSPiJw7C/ZdPHLl81sE5hdpAYA?=
 =?us-ascii?Q?Fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5adb3da-b30e-4033-3145-08de1528cdbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 07:16:52.7614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iackDqjO7amQSe2x5j4WWpQrQC5LyLvCXinSAXtVZmemXna0fs/VKkLHhSFUxZ06+rY6HBxfjspMvEbAhUhIubU9hkHq+JmkpkvWMh7txow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761549417; x=1793085417;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ILbJ2kIgzmDRnQfCK7TAtIpIO7l7KbDjEdDEj+rDJFg=;
 b=OakGgGApAcQUb4ZENYrJrVdK+IIEeqEvClTvslPcSUzN1ZpzM9bteCl8
 mxuHDdeatm2qlVzYFTobOjjq0TpnpeTfIO/ljrEbcajCsQbilT7QPj4tE
 0JEbpRXGv5Uc+sDV+mVLT+UlPYc7dIsMoWfgPz/aQyrdkqIxBoroZgKFO
 ZOQvGk1GcOCyKDgClPreWXmb4CZFgBdZPbhvMUqG1KZClzsTt9/QyrKwJ
 nqwNpwK+4Bphcs/dchUKFEyc5fIQ1jirheWkUJbqwjpUacMwN7fdTcbsj
 r5cTKB757kBYs4qktok8QrNW0FjyNXerhBH9g5KCQ48PXIGxNMq+zHnis
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OakGgGAp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igc: allow
 configuring RSS key via ethtool set_rxfh
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Saturday, October 25, 2025 5:02 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igc: allow
> configuring RSS key via ethtool set_rxfh
>=20
> Change igc_ethtool_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> RSSRK registers accordingly.
>=20
> This can be tested using `ethtool -X <dev> hkey <key>`.
>=20
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  1 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 31 ++++++++++++-------
> -
>  drivers/net/ethernet/intel/igc/igc_main.c    |  3 +-
>  3 files changed, 21 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index dd159397d191..c894a5a99fc0 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -304,6 +304,7 @@ struct igc_adapter {
>=20
>  	u8 rss_indir_tbl[IGC_RETA_SIZE];
>  	u8 rss_key[IGC_RSS_KEY_SIZE];
> +	bool has_user_rss_key;
>=20
>  	unsigned long link_check_timeout;
>  	struct igc_info ei;
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 0482e590bc5a..64eac1ccb3ff 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1527,24 +1527,29 @@ static int igc_ethtool_set_rxfh(struct
> net_device *netdev,
>  	int i;
>=20
>  	/* We do not allow change in unsupported parameters */
> -	if (rxfh->key ||
> -	    (rxfh->hfunc !=3D ETH_RSS_HASH_NO_CHANGE &&
> -	     rxfh->hfunc !=3D ETH_RSS_HASH_TOP))
> +	if (rxfh->hfunc !=3D ETH_RSS_HASH_NO_CHANGE &&
> +	    rxfh->hfunc !=3D ETH_RSS_HASH_TOP)
>  		return -EOPNOTSUPP;
> -	if (!rxfh->indir)
> -		return 0;
>=20
> -	num_queues =3D adapter->rss_queues;
> +	if (rxfh->indir) {
> +		num_queues =3D adapter->rss_queues;
>=20
> -	/* Verify user input. */
> -	for (i =3D 0; i < IGC_RETA_SIZE; i++)
> -		if (rxfh->indir[i] >=3D num_queues)
> -			return -EINVAL;
> +		/* Verify user input. */
> +		for (i =3D 0; i < IGC_RETA_SIZE; i++)
> +			if (rxfh->indir[i] >=3D num_queues)
> +				return -EINVAL;
>=20
> -	for (i =3D 0; i < IGC_RETA_SIZE; i++)
> -		adapter->rss_indir_tbl[i] =3D rxfh->indir[i];
> +		for (i =3D 0; i < IGC_RETA_SIZE; i++)
> +			adapter->rss_indir_tbl[i] =3D rxfh->indir[i];
>=20
> -	igc_write_rss_indir_tbl(adapter);
> +		igc_write_rss_indir_tbl(adapter);
> +	}
> +
> +	if (rxfh->key) {
> +		adapter->has_user_rss_key =3D true;
> +		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter-
> >rss_key));
> +		igc_write_rss_key(adapter);
> +	}
>=20
>  	return 0;
>  }
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 1f0a601cbcef..e977661bed2f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -779,7 +779,8 @@ static void igc_setup_mrqc(struct igc_adapter
> *adapter)
>  	u32 j, num_rx_queues;
>  	u32 mrqc, rxcsum;
>=20
> -	netdev_rss_key_fill(adapter->rss_key, sizeof(adapter-
> >rss_key));
> +	if (!adapter->has_user_rss_key)
> +		netdev_rss_key_fill(adapter->rss_key, sizeof(adapter-
> >rss_key));
>  	igc_write_rss_key(adapter);
>=20
>  	num_rx_queues =3D adapter->rss_queues;
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
