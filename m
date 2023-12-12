Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC6980EDD3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 14:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C10141724;
	Tue, 12 Dec 2023 13:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C10141724
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702388528;
	bh=/xAxZ4MQkm7dKWlRRRJiCVSWBnZyKqTdS6KwHjL9ow4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VBy4Y+dUW1oqTTKahf4zixvDTyDEXXSm5E5uBn7BLTTFIfVYpJTxsrx14qUgPNXrn
	 g2pKttP1ss+FR8TDCeOwn4YohKRgmnTqp1IL77KRWreWw4UDsfSm6WjkPwguibXQL7
	 8AYcBgyO4XmyUkSLbtYeURHXKPTpr/LUJjFRjBpAfahSg44QkGGes5+ZUxxKiFMa4y
	 A+RuT3wec6DTbJSwBZJ6y5lnDwS6DsPh81m8OqYnXUIL4Iul/efLpOSA4t6sCxH+A5
	 SeyzCgTSOT572/kSx6UWp2U9W2T3kZlweCvEM4a3bwXWoC1x9yhY00je9m7mikxSAr
	 n37xtGLERfAyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJVXzvpbuedy; Tue, 12 Dec 2023 13:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51E094151A;
	Tue, 12 Dec 2023 13:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51E094151A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ADB371BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 13:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A44261509
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 13:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A44261509
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNTaFIbZMkYt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 13:42:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2500D614FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 13:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2500D614FE
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="481004934"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="481004934"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 05:40:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="723241053"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="723241053"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 05:39:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 05:39:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 05:39:56 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 05:39:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1dzIArtlu7xE5BA2CrgpAbvEpIcoT4TS4GMa1zR7W0WwoAR5yvEb/vb9LotZPLsxa4CQ3GPt18mPvbZA9k0cUX3JyVXTLf6oAT7jcVQrB/uZiZZhwkHmWYF7SSkv9KV4THdpzXp5hMhvLTjgo60kt3hemnidHdp/FJG/LfTodmq7EP+x4kxeuD1eIeLf4D3hizVLMID4vIc+gS+4aa1GRv18dfh6DY9HBxKVdwZg9qv/HQagUwn39fPRHwbyCnXkvLqHaIBdXZh66S/hMsxBgIKp7T+CfVFo53MSfSGETtOzfLRYtxfswpieZB1GnZAS2zTRuevoIAsMM1IatKdKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xXzjyOyUF65EeUC1seLiuFv6r+KBfhzscvIRyNh6mc0=;
 b=oZPH8yRb+Q8UnahBqtknM4VnXQMvfjwsVwPKxrdiP/kP1/KTHHB0YOaUZxlzaDj8QTQUZ+Hj2sxHSa4iyUY7tBU4DiDvJrY7J6fti62tQoRcAitV34vKbQK8MnjGtrfCqn0uI9VUnXcrw/z9UFY4puuEKK/vc+GOxh1pHp/8+WtH/tg7665ToW7CEIglwUt5os4b9kWEUUTCs20m+ojLUDE+PhHs9yymDaM0KDwCW2bvP7/6h27TM8r89po/EJg0P0CGUwfNgKM1YcHc+3+Kj/qjBcMx5glNroWVyCs0GQtBbSukvxFVGSWoyv0aRV8G5lsNpX0SBpBE9xcZNSLISQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS7PR11MB6174.namprd11.prod.outlook.com (2603:10b6:8:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Tue, 12 Dec
 2023 13:39:52 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7091.022; Tue, 12 Dec 2023
 13:39:51 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "ovidiu.panait@windriver.com" <ovidiu.panait@windriver.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: report link state
 for VF devices
Thread-Index: AQHaKdO5VfYvaOBzOUOTxw618pMDBLCfXfMAgAZPqDA=
Date: Tue, 12 Dec 2023 13:39:51 +0000
Message-ID: <BL0PR11MB352135B3F667EB7F21DCAB2C8F8EA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231208120057.2199983-1-ovidiu.panait@windriver.com>
 <1c2f515b-cfc9-066a-d1bc-12a5339040ab@intel.com>
In-Reply-To: <1c2f515b-cfc9-066a-d1bc-12a5339040ab@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS7PR11MB6174:EE_
x-ms-office365-filtering-correlation-id: 14743c40-7f93-4789-c3c0-08dbfb17d131
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bnm8GGVZ12Vt5YakoqbvRjMHc3U8LxCPpKzDA9/mvU46mNXyypv3oMvbmWpAx8+ldhYquvKEe9f5RfHrbrvp1k2YRkCSG7SP3Fiaixg9kjZZ1otDV/W4ilAiNB8TUYx8xzk/oNdYRhycw2q0Q76wi1iv+++Kg4PPi0NDyqTbsZZI4HH5Lh5itiSFihO79z36euiWg4sKt16SFLwJWBGxBk0DMd5+K6n1fXsJtwbSlFCo0v+SPvVRBTRdnmdhiZ6p6ipAmppD0bamyyLyRL7M0+kIa69MBoRnWWCtZSMdtN2EBFoygJOxErKWGuxB0tct8GtVH6UAYDlj/PFjxf5XB8HvLkYX+9aGFrInWehkVOR6nyMfXISBlTaJEW1NPGb6C2NTzSaSg8QkocnLL6gEdaPEdpJSl5oGRQyeQ2EstpEIlhhkCY4B2YdAow9ZHQMJSCo5mBIiLHNJFPxQ6khPVetWi4mF3V49LL/j+KbNRQC5wXe2T9Q2KaiG/94zboOjALGYgl1p+sGdSBRpy4w+dGCVXFRqZRMX5Mv/KxTysRMvDFXm/iOecbV9OBsyFKDRSve+2EH4dmTTHbOnNXdERWXrPgbKUJYpFum1wxoVBUPKaoP5dgNP5MMfQDofXmb7ypAm5fU3HhuFCUhYb+HCSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(376002)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(2906002)(41300700001)(316002)(66476007)(54906003)(66556008)(66446008)(64756008)(66946007)(76116006)(110136005)(5660300002)(52536014)(4326008)(8936002)(8676002)(86362001)(71200400001)(53546011)(9686003)(7696005)(33656002)(6506007)(83380400001)(107886003)(26005)(82960400001)(55016003)(966005)(478600001)(38070700009)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T9nZ97l53znsjMNeXBLWzx4x6QyWWGJAUPoQ0/GMm3hwcCcKhs3BRIhArSoq?=
 =?us-ascii?Q?59xNE/LryjJ/U0c/q0Izd7lPveiAr7Nc6cYDRI3RXrRuNE2jN/vbAbWEgojV?=
 =?us-ascii?Q?DMP3flZEX32PB1heqFiXQVkgG9u5NU/+Ot5oP2iMWzyoWETJt3/8nXkbEvSH?=
 =?us-ascii?Q?rE9NcCoH/E3Wxohjr+K1UCUmfpMVMw9S4FlT+ftosn2mQtU55AQWmxWAxVz7?=
 =?us-ascii?Q?D5kPlv5AX9dxXFDKkmPC/dJUh+qJSY5Vi6Q3cxdrVbvkuWmhmRQvOoMpb0zN?=
 =?us-ascii?Q?Fs158EH9yIMj79IcyE0T9AwGTfWT4GtmZWIHAsoKBHxrK7HPDqbtwlIyjwbn?=
 =?us-ascii?Q?V1e5a2adPc0flyLUoInpmn/9UrxABqFVBRi3cLe/EsF1pbxxNk5LzNFPxGhn?=
 =?us-ascii?Q?HpKudKxqNppnHOoAvNGZP+thSZJjHmxRnNm8Y+RTgKReYb5icYJiGH0YdE0X?=
 =?us-ascii?Q?1Wpd6dMKB1D92cEAjAWZJ5u76zMLyijNQzSkzOiXrAAYskK7Jy2I9O0tln+E?=
 =?us-ascii?Q?a83T/v+mCbbaj/J6ue83LYRJIP5ri2D5XIt7nRir4jipQ7GjIplP4snj46k0?=
 =?us-ascii?Q?nY03319y//BR6qlkAxUG1GV8N/emWqomHswSfHRPLMuX4ZIPm7kSDHXC34jX?=
 =?us-ascii?Q?lzcm/MDb4dvZ2YGeHBLEGmNC5oamq3c/3h4+3SNKGpozE2W7R4Drw9OihkBx?=
 =?us-ascii?Q?LV8Zom5PlgTlOHlSvd3ptta2WtG4QCcZRqmL4T4OI7JSI1VyZueGUKLGk2sv?=
 =?us-ascii?Q?Ulw/wPm9GmaDlKiv8wGH3KQy6935hmZ/cxDYTEl7MFx+Bme193bjjJ2ZsNIu?=
 =?us-ascii?Q?nfuljGCNJMAW7P9LPxcBHfMiqFCCt2OmJYHRQYodQM3BO8RJ7xRC6JWQjPVq?=
 =?us-ascii?Q?iAjoCns+URq0ecpZMQkB6KH6ykoKb5tjenfn+Sb+T5lvFTDUdo3COdk7gCt5?=
 =?us-ascii?Q?MEAdiNKmJnKyFGkexqWax3Wa7ia+mDr5y/qTgV1tt/zbmozKKIn3ZN/OGM8h?=
 =?us-ascii?Q?l8sAbAUTE1imso/W/cJFvazx5GqNSRB+jPcmqh3tQy3M2xcpWNoIfep828Pp?=
 =?us-ascii?Q?njUk47OlbNYF3k+acfgFa7VvPJQFxDL8tq4o+q5HlMx7Ns/VWNzoRjaFwwT7?=
 =?us-ascii?Q?/FT4aAITcjVzNQ+NpQJyyfx1MryxByqTSNrt4on+pd+xhkpBWQXM1DgdzIPF?=
 =?us-ascii?Q?vMLrVYnhRx306t+bHNvjccITmv38s4RQmjFsOvQazS5vqcJNfjqZ9/ghnmOY?=
 =?us-ascii?Q?ldr6T4mT6BZgDlwv2SInyFan1gSRsZhV/XwTvZyBYCorsEx+3WqXPJ4qsjKE?=
 =?us-ascii?Q?Nro0uSoVr1neH8kDR+jIa0T/vXcWEZFIkjm5q8UIaaQ7M1eCOctFonQMueJh?=
 =?us-ascii?Q?979g44fm2sZ9ynHmwqfUZgkIteJooXgrHsfFDKWnEGWf+JQ+40I3vjUbS9ua?=
 =?us-ascii?Q?k5XpbitMYQBa78d66WUEox0Q/wjps9EnEH9A3jJvZ405QIqXzX64YjGjAx+z?=
 =?us-ascii?Q?Tr1Fvu8+D+acJqfdX/2zEC+a6xDhKdJEdCYRB9MbzHzjolF1xb3NLLrqBcu8?=
 =?us-ascii?Q?pjMD/EsXuK+BJhGkwtK1dV+o931TJ+Pp7+7uA7KNq9sleV7GFYtjwxlWwDxl?=
 =?us-ascii?Q?ug=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14743c40-7f93-4789-c3c0-08dbfb17d131
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2023 13:39:51.5083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SaNeJJ2qgi5Ae3aQV8SLoEKNY3/E2AeM9fplEcZxDNX4chqupVC0ZlqlcTeQmLEZTwBsF4XotOSznfsJIOsNpmEQJdCBlVDJz3ALwfIKuP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6174
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702388521; x=1733924521;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YTRfwSl6SyYWTdAEdWxfVzDdTJn6qa2MsxN1pzPE+jM=;
 b=fZ4+gADMw3lQKn8Lk7pyAcyG0a7BE5q0/c+8XKdHVYU7zmEgAMr2uBeW
 fspn7JudE8ecj5wpxxDl7YyxUK2d4HW80NyS/hE4aBEmuaxcweO8BSmaU
 E2sBNpO4u3iyG09+/SZ6jcyNfeGODvsaLW+vPjjP5aAkWdNNjg8Goa3NJ
 ALyLOtWwNGxA5RzWulAZpUoWs+RufHxBKtSbTqtJRi4q/JF0XqbhqByQP
 hM822vVqlf1JLW1tKGO56d26maXpGBhEQTZ9AFnm+tGXhJQKIj/jAjeed
 U3P5t4CEn+A0Vz1XrolX4ILiHmTo8d0jcew+cctgoOt++kxO4RbLk+fQy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fZ4+gADM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: report link state
 for VF devices
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Przemek Kitszel
> Sent: Friday, December 8, 2023 2:17 PM
> To: ovidiu.panait@windriver.com; intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: report link state for VF
> devices
> 
> [offlist]
> 
> On 12/8/23 13:00, ovidiu.panait@windriver.com wrote:
> > From: Ovidiu Panait <ovidiu.panait@windriver.com>
> 
> Thank you for your contribution :)
> 
> in the future, try to keep 24h before next version of a posting, and CC netdev
> ML
> 
> no need for new action on this patch though
> 
> Przemek
> 
> >
> > The link state of VF devices can be controlled via "ip link set", but
> > the current state (auto/disabled) is not reported by "ip link show".
> >
> > Update ixgbe_ndo_get_vf_config() to make this info available to userspace.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
> > ---
> > v2 changes:
> > - remove Fixes: tag and add Reviewed-by: tag from Przemek
> >
> > v1:
> > https://lore.kernel.org/intel-wired-lan/a2ac9348-8bd9-c9ec-59cf-38f24b
> > 8a304d@intel.com/T/
> >
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > index 9cfdfa8a4355..21b18d2f0d55 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> > @@ -1849,5 +1849,6 @@ int ixgbe_ndo_get_vf_config(struct net_device
> *netdev,
> >   	ivi->spoofchk = adapter->vfinfo[vf].spoofchk_enabled;
> >   	ivi->rss_query_en = adapter->vfinfo[vf].rss_query_enabled;
> >   	ivi->trusted = adapter->vfinfo[vf].trusted;
> > +	ivi->linkstate = adapter->vfinfo[vf].link_state;
> >   	return 0;
> >   }
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
