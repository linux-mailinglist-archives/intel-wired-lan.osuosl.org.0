Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE956D98DF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Apr 2023 16:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89B38614E9;
	Thu,  6 Apr 2023 14:03:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B38614E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680789834;
	bh=YTmJrXT/35MBRqLPgrx+20PooqP9u4KB03jcXgGrGTA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kSJa5xPxiYa6w8cWw5693SJYpHj0SlUh77A+u1PpsMUw+VNt4YS1G2TsjJPj0L5zp
	 FRSEsttg14gb12Saku9TAneev6Zvjr6iqUoB67x7kjKXmJPIk5+MzNUoD1CLj8voR/
	 kHZAnEi6m40BrWctkdM3y7O5G08SZBDHtRwup0boAPW2uYVY8e6hPcuOQKJ+RxpYuF
	 jl85D5wpf+cii8vATGzxBldOXVtNfiaq3B49/HhDXr8Gm8MKmscFuAUWAOZhntyyfP
	 RhoRo/VeqzfH3FgV5plq8vVI06mTc9fYQnmCBejydP2SakqQXQq4/qKeGY/lLykM82
	 Ygl1V03xD5SSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jsIoz3ZY2pCa; Thu,  6 Apr 2023 14:03:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52A37614E3;
	Thu,  6 Apr 2023 14:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52A37614E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 950BA1C2D62
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 14:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 683C360AF0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 14:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 683C360AF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMLv4p0p5UJR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Apr 2023 14:03:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A78160A79
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A78160A79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 14:03:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="341472817"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="341472817"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:03:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="1016883224"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="1016883224"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 06 Apr 2023 07:03:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 07:03:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 07:03:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 07:03:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 07:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4Mtu6dzFOGtMS5GR2yLBevukjyFyy8KtlZGGlWiOrq1vRyzfwrx/NPe93aezUFBHC73NB3YaUvwe0inWuFsZ8gNrv9CggxnxJu4HspDXCGkSi8u87N2/JXP644aig0ACml2w5qsES/GIQwB0NYENPestG+YvPQPWQHv+4Lc4kcHOWNcHPfGcbOtSAvqnxHlER0m1t7OaxOTO73DMHYJAaRUGSDNF2XBieH5xC3rLVfhkzyrt/oawXhyH0IT7d7SgVuAproXNnsreu1KaXnTehtI35XpSAlq3L08eWme7JGlVLLtDeCvusRObogI4GruOlVCN8270E2X3YFEAgUdxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SNzoGXzsfYJs7jyOUh4n4HoFWb1qFhzyyDZtyL/yi5U=;
 b=IkFeo3YRpvtdYe5q1/Ir5d5y4dZKDvG+dPGhXQXMsERZX4YfGtz9ASLlPdun8399GnmkRz57+OCB2ZKe1sQk1zcKdZwgnHrp72BWQy2YHNuVazqltS7XnwvMEpVhmTWeFKyOhquRjtD6Nt9F0UqEBp7sQcxmTJvpALFvtBlhqqEVzIHVqJXBkIUntEkD13HI8USWgVZSsbUIueZI6onAGsfvYTPJ92yKspOGtOaGHZs93wE4cK4N5Llwok6w/wx4lKnthXxMaPZe2iKHkoh1vWIUmmIjR6Ci2ZdyJUXG9j7RPw8TVRmcJb/cf19F5+LCJhucJF7TkB1N0nZSXAA1AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 14:03:29 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::23b7:fc97:db91:43f9]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::23b7:fc97:db91:43f9%5]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 14:03:29 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v7] i40e: Fix crash when rebuild
 fails in i40e_xdp_setup
Thread-Index: AQHZY8dB2hJUsRc61EyfnuQo+3WWwq8eVozQ
Date: Thu, 6 Apr 2023 14:03:28 +0000
Message-ID: <CO1PR11MB5140E02F75DDFD17134C757DE2919@CO1PR11MB5140.namprd11.prod.outlook.com>
References: <20230331115025.1027444-1-kamil.maziarz@intel.com>
In-Reply-To: <20230331115025.1027444-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5140:EE_|SN7PR11MB7041:EE_
x-ms-office365-filtering-correlation-id: 1e2e42b0-d386-44a8-0147-08db36a7b2b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wyzCkhBNlYFUkl2T/Ikb7z1o2DOo0YEIkhzrc2WjpFvcrVJJOA+5aR31NEMcX7DoWfuPGFwy9acKGxoRUM95ToiNLLoT090r4FvsV1/xdq1p0eCji67I+biOZe7jtQZVP7dRc8ApmB1P09c2PpRM1B8fFY+07tvKdDnEBpIoRfQ4i8fZfMtSQF2DR8g4iRzbgQpJNLd+lGeIfFqfK8Sa62EdQgHZW1+4bzlw3s272aHTZZ6mfefd4GIcf+prkDHn6eT5BZH9nUTC8/oyaCSh26+4osYouFiK6yd+wT27KIoEJrG17MLtWv4swzbJr5YGfVSEApOYRUUAqSKnmuwV8DJtDZHst8mGGvRdQktMsiNAtR8ymq4LN2HTAe0Uve9ggGHNhuaKYMeuWcV3Fz/LK5ZqdsqdofOtNabjAl1J5jgVlsK4nKuatsPFXcEwSDjcMGBFXJV5cIl06AZev9MealtJY4e+xz3toNpqna0zVIYFb34zc3Ia1sNSGNAGy6vB8/ixtGGBlFiBRMTKiag2BKYDdxT30/MWsVGhrsKj5NpYQGqpyg9Lp+JP2dn377hBkunUeGupULllCZLM0tmTnpqIzBWqD2GvN02B+8E0sJUXQGOHw65eSPE4V9IgEHg5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(39860400002)(136003)(366004)(451199021)(38100700002)(5660300002)(122000001)(83380400001)(54906003)(316002)(53546011)(55016003)(71200400001)(86362001)(478600001)(26005)(9686003)(33656002)(107886003)(6506007)(186003)(7696005)(38070700005)(66446008)(8936002)(66556008)(66476007)(82960400001)(110136005)(41300700001)(8676002)(52536014)(4326008)(64756008)(66946007)(76116006)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mIqwByquFy0VDsNgOlnTJddTdbOmclWqc9Cq3Q6AR4j+k5RPfwnjZs+bHubs?=
 =?us-ascii?Q?0DifItNoFXb1XYMHq2PjmlGrA4Nvfrbx+lRubQTxsMAsMM4GkiJN5gmgpKZG?=
 =?us-ascii?Q?z38fwk5GZvR0ET71rKlrd5DokvmCKhiYFXUdW8brb8qqWB5i8o3Nz0rlKLQN?=
 =?us-ascii?Q?SIjmz1hruR8xj6Cq3eqzMlYNgExDFX2FqciXS8zQY4eDjfQDB/x/fMmP3yHb?=
 =?us-ascii?Q?fEqpSjxpEhBq1bfDfp/JiVLlDV+necOLfMEYWJugxSnWs97gBJPRZvXL5Gv5?=
 =?us-ascii?Q?caS3STrJa7WFzos919P0n0H5vgdRhcAuIcsKcNiIDfrl4kJeT0g2klH1dO/q?=
 =?us-ascii?Q?CUaLKSqf9MGDlxlbhYesJzJr4gRwS5pLeZrgLIhc94BVjjDa/z7OjumBO4Df?=
 =?us-ascii?Q?1J7akkgkZTrzzjEKC1RCKk80GHoJ5mMzTvrp2C4OMHZDi0RMSuxHokkP7x9w?=
 =?us-ascii?Q?KW3JgwdAvenNxvi/SVZwNxaIfmmv6pP4753UI9oQWOMADOtGA7pv+9TayyqF?=
 =?us-ascii?Q?aDhj2ZjrNshn58bR7K/eE9RzMSyECthz9aLzFbSg2BTWS4xnlPc0TQbnhDon?=
 =?us-ascii?Q?kiboNYKjYSyFUfP4Xb3t+GZ0QTS0XN3oMQtM/X7vuLWFSb9lCE/VjbbMII1B?=
 =?us-ascii?Q?r7E0QKRciWceBrpnk488dC7xI5gYyXLsvSbJGPQItZc8tcU/1Akn2gA9E9HQ?=
 =?us-ascii?Q?ZAO/qHL13hhYEhRle4hJAI56S8XL1mmJxnFvEh8UCGTJG0YFqsDLhdBoryaB?=
 =?us-ascii?Q?H9Mq8g926H5tDfV7EIqmxkamrA2ZUbSRc5iwDb2s/tM8FSTPLg4kXeZ38Ftj?=
 =?us-ascii?Q?mneSWE8KMo/vCJqgzSozq3UFmf6koqvDXRMYc4NpFYYuOjvzp4ZbWLElawP2?=
 =?us-ascii?Q?EYjtbmn9737VPjALg0OCHb2Hga6w4S+3zrB3R2Qnk/vdEFGwdmajoo9Bv4T/?=
 =?us-ascii?Q?EH0vHCfa40FqGHdF1jXD+D8ekVH1V7l3VEHreU2ldxdhzech+4bpBubZzQap?=
 =?us-ascii?Q?bygZhNBUifC3MEbhRZKQaH46qolKwPrcQktNC79abaHfMnPglY/tWwh6ACLN?=
 =?us-ascii?Q?ghbfvsj1IyAzm0sldixVV94/ii4tp5wgJYPHVpodemJzX8KP413j4AHpmdqK?=
 =?us-ascii?Q?bg23suockLn0AUK61iYvAxN1UOE8hNGks0TtDJ/GEX11lpHNCcP212TiJrbq?=
 =?us-ascii?Q?wxUlUXj43sMVuJbchibjAMiaukutfxMl2+gCB44l55wIOQzkISYGip9Eo/Dm?=
 =?us-ascii?Q?1OBcH/joNt0UHW1V2pJ+CVUmmRPIzcFjhQaxW+RnzR0hGPYOFZB7eusglsjB?=
 =?us-ascii?Q?NXNFlkqNX8vksCcOF81L9M1zhs9rTHWh/X66Hdn90/RxaODeQWldjMMqjEqG?=
 =?us-ascii?Q?1ojJsDAY4Ii47zi12GOlLjlkOAvkERilnhUxLl7yqyADLmbrVO/bOPlbxMZB?=
 =?us-ascii?Q?DD9yyc4fIVAG9C0/lwpurlAHfVinyRQQx41i5VrvIuFXIJ7V0a9TRBJDuzg5?=
 =?us-ascii?Q?MuJuti0sVYMwBbxewMSKl7KNXq5NShU6olD4TCuHLjKTGcBH2DTC0STY4dqt?=
 =?us-ascii?Q?eXSs9TPD5v/q8MSjkBxg0+7vltjE30JE4uS55ov/to6oPEK/jesR0Dph84OH?=
 =?us-ascii?Q?2A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e2e42b0-d386-44a8-0147-08db36a7b2b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2023 14:03:28.8416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PGcaIfGFG9F4YtSNpMDXFYQ3rY/Bu8dovPH0buwZAIYD92YaNOec2htscWSBd1U7KRJDxrBCUhCiP7IyxX0oy6VxP0UhSiAZ40Uoy7/rJNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7041
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680789826; x=1712325826;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uyq/dA7VrVoKWSsjAW0VTL+rrkzqyZaS4dut5QoVV5A=;
 b=ddhgJsuqB9S3TtuKkH2CVsS+MEtWuV2v5yFUD70n8lMzkKnibPwdy4An
 VV33watOhpl4oxJ8UhdRSW+scxueGeXBpdd9k8TLPSFwmMMuWxpiOBmLf
 riR53vIKR+L0DixbGecy3Xrur+JGafCh8IJC6f5JCqSOJpmRC/Cka0WY4
 87l/D6HcTvJj1ZkwxSJ3t+fxe8N3wG/I15G6M9x3s8219U2C9BzSf1XPn
 AruTc6E0N09GXasT3eK8ilztIln1cugjm5y3O2S6fqYWOVmbgbn6Urwaf
 MDehFBE5r9MbXkIBVYk38VLiCR8T8zkSerFnubYEdnxTWQU7BA8cJutmV
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ddhgJsuq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v7] i40e: Fix crash when rebuild
 fails in i40e_xdp_setup
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>, "Staikov, Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kamil
> Maziarz
> Sent: Friday, March 31, 2023 5:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maziarz, Kamil <kamil.maziarz@intel.com>; Sylwester Dziedziuch
> <sylwesterx.dziedziuch@intel.com>; Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v7] i40e: Fix crash when rebuild fails in
> i40e_xdp_setup
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When attaching XDP program on i40e driver there was a reset and rebuild of the
> interface to reconfigure the queues for XDP operation.
> If one of the steps of rebuild failed then the interface was left in incorrect state that
> could lead to a crash. If rebuild failed while getting capabilities from HW such
> crash occurs:
> 
> capability discovery failed, err I40E_ERR_ADMIN_QUEUE_TIMEOUT aq_err OK
> BUG: unable to handle kernel NULL pointer dereference at 0000000000000000 Call
> Trace:
> ? i40e_reconfig_rss_queues+0x120/0x120 [i40e]
>   dev_xdp_install+0x70/0x100
>   dev_xdp_attach+0x1d7/0x530
>   dev_change_xdp_fd+0x1f4/0x230
>   do_setlink+0x45f/0xf30
>   ? irq_work_interrupt+0xa/0x20
>   ? __nla_validate_parse+0x12d/0x1a0
>   rtnl_setlink+0xb5/0x120
>   rtnetlink_rcv_msg+0x2b1/0x360
>   ? sock_has_perm+0x80/0xa0
>   ? rtnl_calcit.isra.42+0x120/0x120
>   netlink_rcv_skb+0x4c/0x120
>   netlink_unicast+0x196/0x230
>   netlink_sendmsg+0x204/0x3d0
>   sock_sendmsg+0x4c/0x50
>   __sys_sendto+0xee/0x160
>   ? handle_mm_fault+0xc1/0x1e0
>   ? syscall_trace_enter+0x1fb/0x2c0
>   ? __sys_setsockopt+0xd6/0x1d0
>   __x64_sys_sendto+0x24/0x30
>   do_syscall_64+0x5b/0x1a0
>   entry_SYSCALL_64_after_hwframe+0x65/0xca
>   RIP: 0033:0x7f3535d99781
> 
> Fix this by removing reset and rebuild from i40e_xdp_setup and replace it by
> interface down, reconfigure queues and interface up. This way if any step fails the
> interface will remain in a correct state.
> 
> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
> v2: don't reinitialize rings while hotswapping program
> ---
> v3: error code 'ret' set to -EIO
> ---
> v4: fixed the subject
> ---
> v5: fixed bpf prog assign logic and added xdp_feature flags from another patch
> ---
> v6: added change notes between versions of the patch and changed author to
> proper one
> ---
> v7: squashed two if statements into one, changed return ret; to return 0;, fixed tx/rx
> resources unroll
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 158 +++++++++++++++-----
>  1 file changed, 117 insertions(+), 41 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
