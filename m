Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7595385FF63
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 18:30:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9408606D6;
	Thu, 22 Feb 2024 17:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugNFxxcoBzhQ; Thu, 22 Feb 2024 17:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C76A60877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708623019;
	bh=USoMX3P5l4g0lvea3YShJC6bUGlrNaNYP3CrvbCMZGI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XzkxKF4RxUJ0jecWBktDLLzr13SAM02Nxkk3ZwfGO3C0s4scOFB2sbrkyj6lopCuO
	 fPEaqFi94U7L7Po97UvOynTigciGnF1b15Nv60gkVMFRlNFc5kCrL+DVGNPg3/ltya
	 dEcvr4QYUN42rgJqmGrshNbu/9hvddsyouug549fHacVR1Ofi/1LwIcpjx2IXk9c3n
	 d6Un1a3o/HvvQSMKmFh+2HHwny3jZILMaxx7ftxj76XscChvexcYFqV7TVXlMddF8Z
	 364KLcMV0wHlWkZ+r73afcWXP63yuHqtRzeaNCFJeH7XindAq8VN30gNx4irB+aUAZ
	 aYFdfj4enuJtg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C76A60877;
	Thu, 22 Feb 2024 17:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39B711BF40D
 for <intel-wired-lan@osuosl.org>; Thu, 22 Feb 2024 17:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24F138133B
 for <intel-wired-lan@osuosl.org>; Thu, 22 Feb 2024 17:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K16O3EmcuMEP for <intel-wired-lan@osuosl.org>;
 Thu, 22 Feb 2024 17:30:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DBF2A81300
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBF2A81300
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBF2A81300
 for <intel-wired-lan@osuosl.org>; Thu, 22 Feb 2024 17:30:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6686412"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6686412"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 09:30:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="43029137"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 09:30:14 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 09:30:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 09:30:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 09:30:12 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 09:30:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAIzdPoWHATGHxoVsejsslhcJWb+vswDGe0crJM1gPIR9Gf+pdnQqC6FQWR5Qx0CwdEiv/6p7MOwPwxZLF+rPqdlVrORSFUWXBGFmcoZSNBoAhi0JehAAXXdVcSbve6PsKyOf7LE3MKsXthe/SkgJ5HU/uORm60HZs8hWLhRSHWWhm3MVEAbWCDuO+PSE/ic3hhsYJVFa0du3O83RJsEn5oF3xWZfUdGsAqwc+SLvvFnSWFOMm1aaA9csZcv0WSrRCPgN0HzoZMK5atbpvMDyaVJcBvD5fQpNK49fkal1n/TU2bJo2nvztnssHibIPncmtcwmUEeBindLIq8NCAUkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USoMX3P5l4g0lvea3YShJC6bUGlrNaNYP3CrvbCMZGI=;
 b=dNKE4tYStLQ5mnQwtwuIWthDiZFzfGmo9cwv+ZXtHFXYU2WFpKf2cg/cefsexQ2STGSLWGu5Slei+ICte3LMHoogvGwp/yVEYkbB59Bm6jS4ZpqpcAtArs1Qa5LS3HfwruDJimegargIczl82WaKpuWymvI/TyHacDy4DzDrrVwcrNjxSTlyA57NeihIpjdVT5hW+pmO9UM8Lgbm4wRoKpcOH/s2cLMClF4+ZRUbU8xUmovnye/A4QjbvQZaw945wU7I11iYX/e3tswM/ulnSHp6YvNUC5R/lphRaDBrAtpOzYRrePVjLfUjYDWOOIw/5ZTTJjGu98K1axPQSxCohg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by DS0PR11MB8070.namprd11.prod.outlook.com (2603:10b6:8:12d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 17:30:10 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::24ac:802:1c95:df01]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::24ac:802:1c95:df01%5]) with mapi id 15.20.7316.018; Thu, 22 Feb 2024
 17:30:09 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: Martin Kulas <kulas@mpia.de>, Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
Thread-Index: AQHaYR2vBjmQRQ/FfUe9XU3VPLqd+rETPB2AgANmg8w=
Date: Thu, 22 Feb 2024 17:30:09 +0000
Message-ID: <MW4PR11MB58006701601BD1A1863C83CF86562@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
 <cc999834-3068-42ab-a3e7-f83115d7d901@molgen.mpg.de>
 <ZdSmcQ1HI8cOSJhj@argosmk.mpia-hd.mpg.de>
In-Reply-To: <ZdSmcQ1HI8cOSJhj@argosmk.mpia-hd.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|DS0PR11MB8070:EE_
x-ms-office365-filtering-correlation-id: 496cb421-88fc-480f-a78b-08dc33cbeb58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JN9LGp+iqO0ATh8GR/oZJ4WIoByezHMMqUMwc/uvgOe/7hsA3boBUnxE/AvQd9WGHgGfD486RJ//SOkaAK0WoteV4rjPeJTnh76vH/utinoi2Q65MpcukQYlp+iltdYm+w4e6P9rIFQAdBde0n9KV431gFuOckOqtCD5RrjeuefPkcuWkCorSLkfyHLfYQ4Q/5HbbSnOThZfkK97bIl7olMR/g6nvc6x3rZFOojXwlnhqq7WT9UzL0YM+wgJO72WSzz57RUaHeowjPiAFHgbYKN4U24qRL542JdJHONG+6xr0u9qibS5VQ1u8xJtF0J1DzIj8tJjcqc+gra9fC/kWgnDByoIh7nH6TS3o3Y3+lm4bV2QtvNEv1gnxBaHBVReddz34SGV+Dv+o1hbOXkLWs6B7yM+ZQMU5EID7JtxcJunw1RCGoWxnh8q06e12W4uCHzo7olNaErP/fdBxDpWUGGrRVXWmcDlOEgI0d6hDBzbKWNE2ukWrt90ho16XCSL8p4TogoLUggEZZhJJi0+ENd9f2BaVc1xXOw+uDZC1+Djg9L2aXNHLXarcHlVTOvVmSAKATEQIhWopCuEZTpQIlrucJ+d0QCbMvy18vSuZc8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?q1WaAc637k7WNpPKE2jXJ83aK6yQt/f/RkcJ7cdW7My7j2mQvvibkB986z?=
 =?iso-8859-2?Q?7qS2SudlZEssEPUsEjo8XfEEy5jdfhlq6RimrwaxSN87OP3ZAe4m3UPwMe?=
 =?iso-8859-2?Q?xa9wSTbzaVPiR8HFQp0COhHkd0Jm38KeJaAtvVtksCPVhq0QzpfCullczu?=
 =?iso-8859-2?Q?3Z5oKjKXR//9Nmwk4irdWm3sz9iovscm79xPHKakwJRFKrQwr+elMxHd8S?=
 =?iso-8859-2?Q?QVGVdkZcrc589uraaQEWFQHdC0RcvFo/RS3Rcb6JXnmrgUJwBg08uYxprb?=
 =?iso-8859-2?Q?Nt/rLRtrQ3irxEEH+ZGSgSA+kFv1WK/potm2W7RbLpsroKM+unppnz1FRz?=
 =?iso-8859-2?Q?iEpkXcskPwrJkTHPWpNtUdUsusE+pnS1rMmkZXboRPTVK7O4Y7ZVFNq8C6?=
 =?iso-8859-2?Q?hYVdWsgc9YuQsKcX3P9aEOYs3vHiWXwsHuUnsAiWky9DKZgXgsr/eMoAOK?=
 =?iso-8859-2?Q?tfwr4kL1cis8KVpM/hn/QSMg+2IDTuxZJ2KuX3ZNITCiL22r3ZFXg+t8rz?=
 =?iso-8859-2?Q?hXqymVdATgL0MG7I5tdhf+4cDWBX0iCaESf9RnDl8YiOkvLckDNRUPuq7B?=
 =?iso-8859-2?Q?cfz6FM0ZyWpImQUYqJPSv8dKyV69xM3G19uWcdiefOq+uA6wWEMCWvcqzA?=
 =?iso-8859-2?Q?ZaziDcLHQNRPYIu6YJ6PZJqWeA1Tkm4PNFMWNdBYfj4j8910xmbpTg3o81?=
 =?iso-8859-2?Q?MNup1pvCsTQTXePxU88/ELK7K1aEFZI+wMOBJYEMOe3YU+t5n6tC7iFrbA?=
 =?iso-8859-2?Q?PFzhceW/7hxvA9IKHpAhfKqrHp+KiTRl4bQ1fD1XUmiyp1tRiGji/Ds3Zk?=
 =?iso-8859-2?Q?UgJojX/sGuBazRnxL5gnzIugN7XvEBSYfdiIY0cDulzRxcH9IhvLTbL6Ze?=
 =?iso-8859-2?Q?398p4ehEm1e2B2z4R8KXI6ZETJiKN4FqLLPhVA75tiWFGsv0ozQY6zLohr?=
 =?iso-8859-2?Q?USmox+orojGtIWJ2Dq99DfNVxEiDKPuYn6SuwlFA8wbJRhEfjP8crsg7RX?=
 =?iso-8859-2?Q?ixNPHbr1zfn5yI9eILP+0NhpqOI+ZEiVn9LGmki8AuEccf+kAjtGMicNwB?=
 =?iso-8859-2?Q?94TLW9bJat+wID/zT5SABHAkgwbXTgC4gO1fKMHPI3t+IgJXKp4OswB0p0?=
 =?iso-8859-2?Q?MrYEQewp67C09BVOJ4TGqzd3HW9Be5JLECFrDiLTnDqH+6eWUtuP7/mWHW?=
 =?iso-8859-2?Q?s4gpRgD8XRtqk+9N9Q4hXTkeTp6PLEB2DFgGH8KFRXvkHj5FQAHn+UHwmL?=
 =?iso-8859-2?Q?aQdGZhenqH4r1jXb9zifEvFt8I0aESUypFlnjd2MIOwtJlBH/qd9Qs2OyL?=
 =?iso-8859-2?Q?XfRbwPrhmcd28670RHwLNHaQLchLAjNYr0iAyide9T3wZYvPriDBr1GA1N?=
 =?iso-8859-2?Q?5sMmj9gqEqYAX43EGgmTyLDfgIoZrV3XSTAe4778oYmdtMm1lRpvWYxdKU?=
 =?iso-8859-2?Q?jcM1r99la6UjMbY9Pre14+wHs04tQB0hq9Egi7cCDCkeRFZpGxCSrGn2hF?=
 =?iso-8859-2?Q?0DKpp1MdSCls2EelRXDw9gBA+OZ/iqnq/qCID+/XIanXm/1u29w9yd3miK?=
 =?iso-8859-2?Q?QGIztDJ3PCCXKOCsZpVi06q35FXA0uEXab6zI5ngEdDvWocRLLQOp1x57Q?=
 =?iso-8859-2?Q?5T6kdNoIOum/a6gbsk40Xb93wBsFyGtlGw?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 496cb421-88fc-480f-a78b-08dc33cbeb58
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 17:30:09.9536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IQuLS+Hzt64DZGNCVHMUJB4+b/500iuORAfaTMy6ZsZY/1oyMScqa+1oBZreXjDAac2zz7IGoKhBofA7DIUua+6kPvloel3WgeeDzfbkGI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8070
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708623017; x=1740159017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=USoMX3P5l4g0lvea3YShJC6bUGlrNaNYP3CrvbCMZGI=;
 b=Dr1fWYtn3ppZcB3aRodZ8cjdmABPT+YWTzouN6xVS3KX72htuvmrbNvn
 wL0Y4KdWPudYBZ4Mm8y9jGc1jxe7d+AuWebbDWv7HXZxBASq1BwNGxF2M
 xVkPwQoVtNWaHc0FkzvCMdAL9RAwm5xNhVYCokK1yIrY7/YjkOn+4d4Tg
 648ghVf8BpKhGhDmPPKeSW0p7PjUb5SueKmqIN4FxDIpzlBfjdtqY9ys7
 iYB2IvrPwT5l6stI+oWZ7S7tdiEvbFWKJ+pk5w84JRB9eVQz4UdLNMJ+r
 2PNVj1PJca2uRXr/RXHE2F4Bv6SwaOYhiNhPZNS6ZkyOS7msgpqEg3yNC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dr1fWYtn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Martin,=0A=
=0A=
On Tue, Feb 20, 2024 at 2:17PM +0100, Martin Kulas wrote:=0A=
[...]=0A=
> > > =0A=
> > > When searching for a solution about this high latency TX timestamp re=
ad,=0A=
> > > I found the following thread from 2022:=0A=
> > > =0A=
> > > https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2022080214=
5757.273270-1-karol.kolacinski@intel.com/#2963591=0A=
> > > =0A=
> > > Is this patch already in the current Linux Kernel 6.7.4 or is it pend=
ing?=0A=
> > =0A=
> > In the metadata on the patchwork page it says *Accepted*, and it seems =
to be=0A=
> > commit 1229b33973c7 (ice: Add low latency Tx timestamp read) added to L=
inux=0A=
> > 6.1-rc1, so it should be in Linux 6.1.=0A=
> > =0A=
> > Please build the Linux kernel from this commit to rule out any regressi=
on.=0A=
> > (If that commit actually should support such low times that you require=
. The=0A=
> > commit message says something about 20 ms before.)=0A=
> =0A=
> After having applied that commit,=A0 the TX timestamp read latency stays=
=0A=
> unacceptable high (in the range of about 700 microseconds), i.e. no=0A=
> regression.=0A=
=0A=
This improvement utilises 'low latency read', where the driver writes=0A=
a timestamp request to a specific register, FW has to poll this=0A=
register every 0.6 ms and then the driver receives a second interrupt,=0A=
so that it can read the timestamp from this register.=0A=
Unfortunately, polling every 0.6 ms is the best we could do.=0A=
=0A=
[...]=0A=
> With an other NIC that supports hardware TX timestamping (Intel X550),=0A=
> the TX timestamp read latency is much smaller than on Intel E810-XXVDA2,=
=0A=
> i.e. 7 microseconds.=A0 I am puzzled that an older Intel network card =0A=
> provides the hardware TX timestamp about 100 times faster than =0A=
> an new Intel network card.=A0 =0A=
=0A=
Intel X550 had a direct PHY register access.=0A=
Intel E810 does not have this possibility due to HW design. Only FW can=0A=
access PHY registers directly.=0A=
Before low latency Tx timestamp patch, the driver used AdminQ message=0A=
to get the timestamp, but it was far too slow and inconsistent.=0A=
=0A=
[...]=0A=
=0A=
Kind regards,=0A=
Karol=
