Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B17BB631B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Oct 2025 09:45:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 234DE8183D;
	Fri,  3 Oct 2025 07:45:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mkh-7sa6IlAT; Fri,  3 Oct 2025 07:45:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63E3881D47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759477526;
	bh=UYNz+pjm0YbPGhu//fNrqyCPmPt9q57JR4HNjsXTTxk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NjWxhDRcxJy3BCKnX6DTIBNl3CFXYOIZQnoCehMPN9eGKwvvmNnqRZD6VyWTwFSMs
	 pOMadgWm+tivxV7/TayihJYdrQzPjMxweyQQrvScWa0/yZKgBtQ0gTT9bXbsczovdA
	 uHoSzIyQPjXLvQtRZQL3sGLyjP2XLl0H/QX16mevaDfIayd4ZcXjbyHvdfb0DPgfYO
	 HtuNiCvhnupSw8332gGCdhBQbsNfg3x1F/J3bxlp5zcjZRINfeKkXlI2SdqehToUEz
	 abVbL1yHrOzGnbCJZnGDehuCp1A0vzuroSymrPSvRdEOEUttVqKsDb1XM4bu/ClQlC
	 R0YC08UUAZOHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63E3881D47;
	Fri,  3 Oct 2025 07:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 914FB91C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 07:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F71840C79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 07:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTpBl-6hhzwS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Oct 2025 07:45:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 294F340C6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 294F340C6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 294F340C6A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Oct 2025 07:45:22 +0000 (UTC)
X-CSE-ConnectionGUID: YCDiN/9JTCysp0V36c+GDw==
X-CSE-MsgGUID: tkxaBC4BTc69qll+wJt4aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="65400362"
X-IronPort-AV: E=Sophos;i="6.18,311,1751266800"; d="scan'208";a="65400362"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 00:45:22 -0700
X-CSE-ConnectionGUID: 5FtaobfPTTq9TPUgTYuZZg==
X-CSE-MsgGUID: Mwqi92gGQx6yyDn9KNOAcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,311,1751266800"; d="scan'208";a="179177434"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 00:45:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 00:45:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 3 Oct 2025 00:45:20 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 00:45:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yrbcg0HjakMe8ZrXgnZrnGR5GSTP33iBmTVkeuwudA7G4CE+XQJBHI4QbWZ3ISUkSQekJr0Wf9AYRFi7SmvYs1yWOsFddu2p16hXvvag+avn1toIzv3ncHWMdgQccwZLbD5AZMd5rw/cqULMeXiO+7zl4gBnWfX9mREyK6MAS9vJut5kgOyOQisNki6IJsOXJybsQrZ0b0hFsyIBjti0+hrrp0WFhQ/CVtXU76j6gvyO7vx0SdeZnsBcp4HwbpCFMBS7eG8mb8wxjvllmVshrtGd/UN8nln6KfPe2RTnxV5FXXAJ8VhD6NHWnwVbeRuIci9Ft3mbonV94+g9gSXCUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UYNz+pjm0YbPGhu//fNrqyCPmPt9q57JR4HNjsXTTxk=;
 b=YgNIU4v416Mka0t/EBsgr1MGNvDe2CGg/IE/yjqWMYW89jO0f/OAI8Ia44fkgSqPY9hEDlVo110xe1M4DTErBvNapJord3OyPCC1RzEUyW/jGpV7UoF0Yjkw59XuLNqhqDLrpKjQSFa1Tw1KvZTxQ6JcdZHXJDEgAN+wXMMPGWUVoBoHJi7rBCyXgTs8lsKMYO64rn3NHQs3c4lDvwjKf2nMtOfefyJEOdB2VznKuZlp5hJyLXRPlGo0StaKsBkwXa3wkEgRAvt+1ayqk4QioB6+OfxClBFEFtmLQTSzF18pz0WZZbcc3WydN6y19zJbF56oKpiyVSb/9pw1VG5Wvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.16; Fri, 3 Oct
 2025 07:45:13 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.015; Fri, 3 Oct 2025
 07:45:13 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix lane number
 calculation
Thread-Index: AQHbhEUesIeJOamj/Eew2Wbh/N+X7bSxad5Q
Date: Fri, 3 Oct 2025 07:45:13 +0000
Message-ID: <IA1PR11MB624194E104B1C5E71F747FBC8BE4A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250221093949.2436728-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250221093949.2436728-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV2PR11MB6022:EE_
x-ms-office365-filtering-correlation-id: 0edea5fe-0f51-4cf9-0ba7-08de0250c978
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?TgxZD2/XZYe73WFb9Y+eSl6gLk64PVDAHjSdVEB2sm+4AGHbQKSZSjdJT3x4?=
 =?us-ascii?Q?lfew9gELi7kRHObN8gfioUg2CDdZAdHnwpbEcPgevc6YN3iZ3zboewZNN13y?=
 =?us-ascii?Q?zbYjg3aUuHs0FYRp08qKQYXzArQrgrhJMBE4oRsjsbi+5CWIY9cH/1Ci0UUq?=
 =?us-ascii?Q?UDE/0nk4fdtW9RGjWgYpGFJbC5goY+bJCBrYdibSb0jOMh7/u49dupm9z9vp?=
 =?us-ascii?Q?0zB73JpsLGNK2scWHAlds+2wyTs8asEUEm5ES87O7zpTFpV7F9Tu7CZOZD32?=
 =?us-ascii?Q?vUyq4+AzdDlA/TAOZdZli1iGAspFmqW99vCpukoJTXITYOVzVX7G4GjOFZow?=
 =?us-ascii?Q?2iR4CjqXMFFqmnWu3PiRPi4FDmyxBul3L8ldAtboHv04g3G9GHGZr/el+yXr?=
 =?us-ascii?Q?u4iV72fokLCiwqw7I0hAx9qAmtdoVyZT7ciQNd+rX8OHEbmx/ZB+vbAPkHWY?=
 =?us-ascii?Q?YvmYovbahT1NPc14037neKP8kSaKlICvoIGPmxviMUCD9l6Zbl7avF2LxYn4?=
 =?us-ascii?Q?VYDUhy8S3+9T/M9jkVwOZgPxkM4oIV16xOJ+cVYyaJRpFmH3u2gpLiTGdVul?=
 =?us-ascii?Q?tg5ICF2lIuNlZBgImBxWRTorhd4LBFsixt5crlHXRjxzmpDccr64m4sqyoxc?=
 =?us-ascii?Q?gUiOLLlYISPdRKEnA1dGW+VDsIoVxasS2jJb1IV+HS0DF0OaOJHfUlXA9Yaf?=
 =?us-ascii?Q?AA54ym3A8dFHJSrnsbm1gco/P8JPYKCIwZCi+UGTem1ewR4/ZaELA0RkuvH0?=
 =?us-ascii?Q?ReIk3HaS4k9BkDn9LKxgpNdmJ2auxwZELeL6AXsjh2/NNpjE8kZD+28CZf9Q?=
 =?us-ascii?Q?GllfhnO13PQov7dN6tcENmkVaIvv6T0Aydy2TVxKiBSYL6ZIVjybEDOmV58L?=
 =?us-ascii?Q?2HIVALaSKDjIuUxW66v5V2GyU3ia3lGFlnNe7t7CgsdfWHrKTbGqxSoUwONK?=
 =?us-ascii?Q?Fvb5wVi9o5h6ICTYbAX87P+NWS1Ow9GoQPKvu/edH8TV0XBMsUfcyM8S3qKl?=
 =?us-ascii?Q?tjviCr+FKes/UlcDMUZNFebDdefBHouDgGFxwfpKsDXfj1S5q0d+9Fj9hlbl?=
 =?us-ascii?Q?P1OT8zYoUKHZswppEPD1qJUnu8XPhDtcKI9BIAgO4P561hED9iNtkNdOCFT/?=
 =?us-ascii?Q?gwiyRwc2JIUsOmqI9GZZOt7uyuSt6BTbHLOvpFyYJwwia79/rCtDjGnY3ifB?=
 =?us-ascii?Q?8AMdPF5G1FW0aKBlPqlrx/lQVh0QGKtYyzdiYFV4xQDtFYbzCnp0d3JZANLS?=
 =?us-ascii?Q?W8EyFlWzOtL5m3E+PVHl14/sV32hpktRCrKeH6Xp6WbkCZ54x5N9zRFEOmcj?=
 =?us-ascii?Q?sNWf8eMVa5M4Ke0II0w03L6pRUmRZPGuNAj+Xd4eLO7jrFGF0yjqpHJ4r2cV?=
 =?us-ascii?Q?tbITM6qydH/AO46tzsIckSsKqC5WWteW4+UHKhlpEwUi/0m3M1nEuoqnM6W8?=
 =?us-ascii?Q?K57D2ALO81rB7fegRFtvo0i6adeyuEkZ0I9UsRITE7YfkFeradGp8u1tElgy?=
 =?us-ascii?Q?NeSPSI2tT1p9urUhmTWT0/++lG/gFz/A55kD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qbA02oAbV49beKDBxTByMHevKkgJvCyeUIUZQ/FqAkSPzQeIm0XMkHfSzifa?=
 =?us-ascii?Q?Vzi+tYjK61WHYUKWgPN3bFn3U66QsB8sn5dkUTau6zFlzDMdW+d6+BjfaNyU?=
 =?us-ascii?Q?4UrqzeyYPFbRQVycmwkcwCKqjWuk4Vqu7jKNbdY7COyaDiMFsmDndendi2aG?=
 =?us-ascii?Q?fc4DXdvvcHu845jwiRiMMB1DigCTf2/DTQvziA1BMUdX7piiM8XdoKEJwlJF?=
 =?us-ascii?Q?eSIhuQj7iK6rFkAiiBV6p54FFhsjQPvGGGLkIUuWAv0fr5VEPVil2OZ8Ug7p?=
 =?us-ascii?Q?Ebutv2nGfXx02jPW7BFLppifcnVwLwp9S/ErA1TxwUkB2g8M47IJqp5HmzcF?=
 =?us-ascii?Q?8cmT/ukkfbEr7jL8dCEPJx6SSxYAtTbNR8JSxFi6OY/0FjPox3G0cQTjJrA6?=
 =?us-ascii?Q?tpnRYAMLAdcKa9YEpnMyRq668/m1Xrnk7iWrEjtjrTRMXAZJAjFHvSDzSiKv?=
 =?us-ascii?Q?iehA4Yng/tTG+Yj1dmuXlMJ9GgG7WwDbHMqAdSgiANY6Wfs5vR9hBbQTO9IP?=
 =?us-ascii?Q?Lo3BDHvYJYXQYZc7OC4ZDmvMfYEwqYvVFZ5nVBoCXP53tEvsfAOMW7fvpUfN?=
 =?us-ascii?Q?OnpvrOl88t3UAVI1UaE3CyLDKGTVk7OLBcCnJTwJBvf82IVP5fP93bMsfPS0?=
 =?us-ascii?Q?xuoOA9Gr1DuKGyz5dLUAoPnSVevIZgglQL4993Mh3ucdVwkLdj0n0H0GtAue?=
 =?us-ascii?Q?/eaZiI0RN6y9RQLHfXZulz8JzIXiDQDCAqonQqMsToLbLMpX0mVAwwunHzZz?=
 =?us-ascii?Q?T1Z9Wlk5uXKwwb/pR/2uxI6JPeyXPM2Re7aQWF2f8O0r4OhPo2ZqtfunKnEo?=
 =?us-ascii?Q?XADsUmKrRy5tluXZJlZEhwa0EgFog8C1XeG/cN3nlKTf2QyLehdgqRK2FAyl?=
 =?us-ascii?Q?m3DNyf8milPf5rhhyX0KKivUXLaP7aAsaIF7uwYb5I9c/uynvJ+OYWvc6DsZ?=
 =?us-ascii?Q?HrWFE8OTcOBCTxxftGoktbPhjKrRHV3EiyEWd54rB9xnuro2NJw5VbVpCcGn?=
 =?us-ascii?Q?OFqncLXkigYWPtTxL7+1y8vf9BYGX6weNWlqtrwA+HYfB1WmZH2yKycK9l0K?=
 =?us-ascii?Q?sIGzaFYYSZ5LwMbu1IqzQDjNMXwmmX/vO7NEIHJI9OExbRW9eJ5ftG7js0XZ?=
 =?us-ascii?Q?ghH5W81vWKJuNLIqYRrEkyVGylcYytgmharKyvM5BkLzMJFoYngbSt1howY6?=
 =?us-ascii?Q?1HHN/8hZGOCyX16DZkzqc4zRwrv5W3vxP7dKJ0LAyIni0Ec9kfWlSKG8SI2f?=
 =?us-ascii?Q?tJ19LUfeb2UdJlfHuXCyuHnUgcUE+1K7TJ6B26vVZO10q8MoLT/7BQ1gJctK?=
 =?us-ascii?Q?JXqTEZ/maZC1EeZdYatea+RiVE/64oNQ2kiim/cter19Q+IFOLwM1/ABiDVy?=
 =?us-ascii?Q?H3qWAxMwVLQZmBZqqsMNdpRh6/pDTakpaLXVRwKssw+wFGsi+eSyu1fyMd4U?=
 =?us-ascii?Q?3TYLVuLFnSbV+NXbaSwk2KsC89Xx5mchlgQ8L7DmwotY5f7bT9jEW2ld1OsU?=
 =?us-ascii?Q?oAXixUNoCgdWZa95RYyjSJf2pyho0FG0jtCnAI898S0f8U6IrPMlJaR5hDBq?=
 =?us-ascii?Q?5umLt+Asf63LBMcGxAD9B1oc7BjaJnqvDo3dhxOD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0edea5fe-0f51-4cf9-0ba7-08de0250c978
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2025 07:45:13.3687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DcuIJ1YkWbeZ1ITgf6wUsDHJdCqLWGCvcrWE2jGkH7vAaKDqxDWZa2s04m2TZCt+A/VMYeWgh9Ej3ZnJMQMBNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759477524; x=1791013524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UYNz+pjm0YbPGhu//fNrqyCPmPt9q57JR4HNjsXTTxk=;
 b=cNYFTMpV7FsE+++5UcvBGzqTssiFO/E720v2WLuxQwxqPmXQJBjHd0lT
 3MKvMc2EFs9XKxvLW65h1PMDV0Dz0a2JDMKxW/hvQfdSh8hsrONKMvCHu
 kVXIhG4smdB0LZA+30G7ZszT3Srk181kD9fQgc7BWZSDL3zFxvTaDpIzF
 a6SKRaBIhuG9NeeAtwx9rurFyO6MJZ6B/vhc7WIVgtGCEktOASQ2Qozmz
 Siz5T9i458a1oB0we/xVkYbOl5a7zxne8breKY2Pu7x6uqoX/FdJbz+9s
 28sW+jyfq8xom6KUac0K2ntPYY7daAVn3dWMI5r1H0yxFEp32aRLf/lWu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cNYFTMpV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix lane number
 calculation
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 21 February 2025 15:10
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Olech, Milena <milena.olech@intel.com>; Kitszel, Przemyslaw <przemyslaw.=
kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix lane number calcul=
ation
>
> E82X adapters do not have sequential IDs, lane number is PF ID.
>
> Add check for ICE_MAC_GENERIC and skip checking port options.
>
> Also, adjust logical port number for specific E825 device with external P=
HY support (PCI device id 0x579F). For this particular device, with 2x25G (=
PHY0) and 2x10G (PHY1) port configuration, modification of pf_id -> lane_nu=
mber mapping is required. PF IDs on the 2nd PHY start from 4 in such scenar=
io. Otherwise, the lane number cannot be determined correctly, leading to P=
TP init errors during PF initialization.
>
> Fixes: 258f5f9058159 ("ice: Add correct PHY lane assignment")
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_common.c | 9 +++++++++
> 1 file changed, 9 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
