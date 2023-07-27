Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C219765331
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 14:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B68861334;
	Thu, 27 Jul 2023 12:06:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B68861334
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690459565;
	bh=z4XpT/ru4YE4KjsjMDULXlOnbtiQQTAj53wo79+KKSA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L4u16RoziUQuOyeNJKJ46hOVDZsmG4mmoSHnI0Ziv6hrhYXgCYNjBWWk+n/7GoS5Z
	 dzldpzBsJ5gNviIlrOAGGfAXcHdBfuHthhvPYaRgjYww7ZtnyPLDOp6zQ24y3asJRe
	 /NaJ7Knwm6lzRQkmx8o2YKLwT1TS13XCtf2Ydd05TKvYXmo9OSGT0PYBj1JKenNAjr
	 I8xDh9GwS058swINILcSt4mKoRPDqFVmkKRua6awPVT4y3oZjKFTRLi354+IvtGmuH
	 lOClKhrGVp1j1/ez+ERO3d4u8sWH0k/tK6+QE8uKHgqT1OONvVRznTs/HcnOLE1vwZ
	 Qwt/LkBL9qoCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAhKklw9Xap6; Thu, 27 Jul 2023 12:06:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2061660A5C;
	Thu, 27 Jul 2023 12:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2061660A5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CFC21BF47F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 12:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FB954177E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 12:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FB954177E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m92FshPNLlEo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 12:05:58 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF35540928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 12:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF35540928
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="347903579"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="347903579"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="756612664"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="756612664"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 27 Jul 2023 05:05:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 05:05:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 05:05:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 05:05:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jye21A0hixNTpHL8I/6n6fSLpohk4cMXZVJ/E99RedztAlTGQCDh2F8HqWH7QhmeEN9mffBNyMorDRkOVVUPH5z/Rwf5uscx0ocZ3kpf3baUMsmbAadueRA/6O8KfwTRDhy4RlJnv/L4HepCTdJJRLwEy8J11XKgE523p0jAfrFZ5zQ3aGJ5gA7yhGGrdYeEiHpgHrHBlfrwZb26V6T0clBV8U8nPBGTKu9GkTZyJgFO8CjE29YUXyl3j/qRwn3ZaP/eKbhf6Z9zSvFbMdq5trwKWorsbnda62JDkKpurldyrL2rS99EJ9H4JRZshHz4aqiT46TNg1RXCzbFgxlJ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=421tCmvb1X8++8biKPzSIwT0Rc1q+F23tb+74EvFMC8=;
 b=RYDGP8aVdCrawfo/CkltPNGypAHHkD44z/K1+S/0guVQdzIpeJ5dG13oysWsRnbFoeiMjpUmibZkpKIcQta9DJPSxFYDrRuDNWw5Iysz2LhfuFeXRNL/jJW3QdO4aJKEWCgH9t3pCT2ekcx+mQFJD26I/clOw7mlLv8Z3ZdI6SlqBk6qlHlP7LOUM8GvNWk5jVFj7c+SJMqgR6+9YsoRpBtZINK/gyjlyZxhrxubuaq65FarCPdZPH/IUVAPmGs6v+V5LyIE9vMSH2NSKkco6WD9gPCyWKHlt7lIPZl3If3CMNzPMDATb2arJB9Gno0Fa1H4IPEvteSYcvcOJifmnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 by LV8PR11MB8560.namprd11.prod.outlook.com (2603:10b6:408:1e7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 12:05:28 +0000
Received: from CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a]) by CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a%4]) with mapi id 15.20.6588.031; Thu, 27 Jul 2023
 12:05:27 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 3/3] ice: PTP: add clock domain number to
 auxiliary interface
Thread-Index: AQHZu+pF10N/lwiR/kSoLXYZ6fqyUq/KybeAgAAArICAAsCKwA==
Date: Thu, 27 Jul 2023 12:05:27 +0000
Message-ID: <CH3PR11MB8414C12EF9C502F2A48C30DBE301A@CH3PR11MB8414.namprd11.prod.outlook.com>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-4-michal.michalik@intel.com>
 <f70e62c6-da51-4bad-1e6e-cc7a9df274ed@intel.com>
 <83306d75-8baa-9fcf-6ae3-3837c2f041c2@intel.com>
In-Reply-To: <83306d75-8baa-9fcf-6ae3-3837c2f041c2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8414:EE_|LV8PR11MB8560:EE_
x-ms-office365-filtering-correlation-id: f9b85622-2c4d-4a2a-98e8-08db8e99c3e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I5L4yfBHyMM5+tBgdGZfwvN0uqfGn3ODP6veT1NZiX0mrxHnHOqp3dP7gVAuYyQuQkugEXvf+JU42KyA1sP2ddpCRhBcraXeiNZnWYGhFiyfN68IpXbh1G00xPjU+Ii6XBIR0ryqTAk31edStngWEQ1+Tx3FMb/Ko9k52WTK1nP2tGUnF4D3HQZgfjNWKu12a6HBytvZ7qeQjV9Wx74yfRU+lF9lX0GN5p/Ariv78mg8KVKuKEfRC03cpbA0Y8tV84AZJjSZJi3yI2PQ6/i1sjnfxiOqyTl1LsYt27a9JFyObmHfWX03w2QSO/BuacCvO5rYD7vY8S11c6qznhCECY9Y93t5GgWafmqO+YFkX2uqurjmF8aQMWnIA0jwi/2fDTGvL+3Ib24JjlyBbQl2Z2hrgyh02/rkaNvb9Nycz1mOv3IOuQjTP8rIAGeriXkcWkAcyPPNQ3vJ8RuMu/dUxHJjiDne1psUnmANPYWFzwsFaROvRAMLYAkMTjYd4BCWX3sJnKrCKUjdMRSr6FMiRph2oGO5KwVQrswTfUxucFzjpXFUgYUSNP5CeEeglOryNZfk1qd/KEqvGiP+Phk4bIVQkAcQvJt0DHFEmjhWQXY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8414.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199021)(107886003)(38070700005)(86362001)(122000001)(33656002)(55016003)(2906002)(110136005)(478600001)(54906003)(38100700002)(82960400001)(186003)(26005)(53546011)(6506007)(71200400001)(41300700001)(52536014)(5660300002)(7696005)(966005)(9686003)(316002)(66946007)(8676002)(66446008)(64756008)(66556008)(83380400001)(4326008)(76116006)(66476007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3N1d1QreitEeUdmbGw5b2VuSldBSmpmKytEb2UvbitvM2JRaW5tSXU0S2Fa?=
 =?utf-8?B?ZjdNQlI5MkFKK2VZbURMRW13eGRIeVBRRU5ObUJRTFRoVENmb0FTL0RXOGtZ?=
 =?utf-8?B?TlZoNllxUm5VVGdjTlBhS1ByZ2pkVE91YmthZE9CZkMrSjZIVDVkMzVlM0k1?=
 =?utf-8?B?OHV1SEhnMDhwSU9LOVVObFB6Vkh0RVFRWU0yejI4dE0wRE91UWVjTGV5NU5l?=
 =?utf-8?B?L0JaaUtRMnFTRDlJdUEyamFlM09CUCtqK3loeUxlbkMyelViZ29uWEUwRVlE?=
 =?utf-8?B?c0xWSm9xOHAvc0F2ckg1WE0raEhjTHdRQkN4eHFkUGE1Qi9NbC9TdktMcloy?=
 =?utf-8?B?T3ZZY2pYb0ROYUFOc0RzWnFsc0J2Y1dXb1NKTjRQdEVJb1owZHZhcDhuTHov?=
 =?utf-8?B?cjJ6RTNqVmFKdW8wQko4eGdLOVRhQW1uRGNJWXNNUDMxMXova0ZJK2U3SFZm?=
 =?utf-8?B?dlliUWszQzZOUHlWSnVwdVR6TXNXa2FqWWV0WXdLM3Q5Q0NwbFhpOGkxeUJU?=
 =?utf-8?B?UVlZMmlPQWI1OVJMekhYR2VrNHZmeTdNZm8yL25ZSG0wa3d6a2tiQWswMjI0?=
 =?utf-8?B?c1pXWEpZZHRyMjlkekhxV1M5ZmoxNTNNZlpvdHRSN0wwbXN1NDluNytkR3pB?=
 =?utf-8?B?T0M3RHRxc1AwVU9xNXhET2tIdTUzS1V1TTMwMXRzWkJLcXFqT3Q5dVRzb2FD?=
 =?utf-8?B?K1M3ZXBIY2ZPVHdOK2laUGVGbHJndyt0a08zQjAxZHRMWjdYWEwrT3IwaDJJ?=
 =?utf-8?B?WWV0cGY4azgxK3JNTG1iQ1VXWmQ5OEJ1cVMzN0p4Lzd2VzkxMFlhcHpJSU92?=
 =?utf-8?B?REhTK1RGVkVtZXRCL1VDQlh5d2k0L3VUa0xhQ3pOTmtMN25jWG1tRDFtWGMv?=
 =?utf-8?B?dXVYZVVySFNZRHZ0WXM3a1Jud3J2MmJKcGdqY0wyR01yTmIrZUloM0lDdHIw?=
 =?utf-8?B?STZVY0lkS0ovRGdsWHBWZSszRm1yTjVjdEZsdWdKY1QxV1FDQnRwMERySUZ4?=
 =?utf-8?B?M0dhblYvLzM0SThGOTdDdUVFaG9Ramk0Y1lDNlNxMzVGUDV1d3dZb3lyQU9I?=
 =?utf-8?B?K2JxcFh6djJQMjVFZ3BISnBPMDJ4aFo3MmpKeFdzNkVaSExaVHE2cnY2eXpW?=
 =?utf-8?B?Vys5cGlPRlNQSGZFNElMNllJSjd4aG5pdnF1OFdHNTUwSnZFbXNXRmwvRk1a?=
 =?utf-8?B?K3BvQXhxeXJmRzlTaytzdmxraUE0V05wZnJuNTVHQWM5T2V1NzNYQzVrZ0JQ?=
 =?utf-8?B?akwzQS8xdlpPcE1GNmdHRFdNbGdjZkk2UmhEYkNhQ2tFcjNNalZkR0pHM3B5?=
 =?utf-8?B?Q3BFSzcxRFd3ZjhQV0p5Wm90QUVEODdRcFJ0ak9ReEI5NTlmdGFBZlFqQWl1?=
 =?utf-8?B?dlcyVkVzUkhzQnh2WDJZUkwzcXdLSk9USk9wOTNydWJINXZibnIvNDJjOHJK?=
 =?utf-8?B?ZzNMeDZkbGZ3bVl2aXhGbDhVMURzZlNqMVF4QTg4dnUwbE0xT0ovVm96QW15?=
 =?utf-8?B?NkZSUmZhYTkveVVtcHE3VnFObmtKSXlCT1R2WXJKc016ZjZiMzU0MWJuOXNa?=
 =?utf-8?B?TUF1NXZTbzk4cVIxc25Zc0RGNnJoeUVNc051dDhhbUZ5NFVnMHJOcmlidnZK?=
 =?utf-8?B?TVBXa0FzbVhFK0tOeCt3VjdLOTZkZC82cEpRWWs0WWNhb0d4Zi9zYkZQYlcv?=
 =?utf-8?B?QnVKK3VWWnNBSTl1NXdseFBCTkNyRFkxMFEyQWcvdFQyZXVlVkVuekIxRlFM?=
 =?utf-8?B?TmhJalRSc2hnT3JtWHM3Q1VUYVhZVldkWVZlZ0hyOVQyNitDYkZTMys3MU9s?=
 =?utf-8?B?RlU2cW5iRGtPOCtmOEhyVSt5Nkx1RG5lQXowZ3VKalM2SnFhMEd1Mk1zNzhx?=
 =?utf-8?B?ZTljdXI5ZmRkQVZlL0hTVklkRHpxam40dE9Tc3NYTnYva282WTZNNlkzeDlR?=
 =?utf-8?B?VEZtSUhjblZ4bFlGR2lqSDdQRWZOWHFkUDZSdWN1UkFzSUdTVUxOcmdiOTdh?=
 =?utf-8?B?RmJaOTdTTFpXV25KN1pFOVlYUG1DUzZ2akxPU3VYdW1qd3lPN2s5RW1ZeWto?=
 =?utf-8?B?MmU3bEZlelIxUXF3Um5DdWJtOG0wMGZ3OGVNNjQyVnUxek05bHBUOHM0d1Vx?=
 =?utf-8?Q?3MPEDZrvFwIXf+2M4KWoulAM+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8414.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b85622-2c4d-4a2a-98e8-08db8e99c3e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2023 12:05:27.0297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xi9kHbnD4lhIbHepPk7UxrBpKfaAPukO8ubXptW5XffRstWwoCkRRNtvxKZjgYbM6kbEHCZwqrPrMgFFfZk2MTaavDgwNEW6MsR7QWXxBtI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690459557; x=1721995557;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=421tCmvb1X8++8biKPzSIwT0Rc1q+F23tb+74EvFMC8=;
 b=U9uwSe8tjzV4jE69MTyh+x6DB2FWf1kPMpGUXj+5jmlaDuTHHOyUMkfl
 Q1ZgQfzUKV/iaKf81xEN8FfO2if/pI/jtYfnNtugfTsIKPfZYxx72Mv0d
 N+e7FULewXX6+nYgu4QJQlh0e55bQtIbYLeBAa/6OUU1VJyt6lHMmyYjM
 BpyotLzyM40TFyQpibavqQ2F9V2YMgf+lp2JHoZBsJjrQ5yIx/hY5TcSn
 EzInUZl+klp/NKVCffWvmUXbze6dvmaFwQ9lRhuM4SxLLF8B8BABaB4Kd
 rD53PCaBuZKZX9IOMp67XetNE3OlpGXBLpKZvtTYOyu0QY6uoI2mBQPMu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U9uwSe8t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25 July 2023 7:55 PM CEST, Keller, Jacob E wrote:
> 
> 
> 
> On 7/25/2023 10:52 AM, Tony Nguyen wrote:
>> 
>> 
>> On 7/21/2023 8:44 AM, Michal Michalik wrote:
>>> The PHC clock id used to be moved between PFs using FW admin queue
>>> shared parameters - move the implementation to auxiliary bus.
>>>
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Closes: https://lore.kernel.org/oe-kbuild-all/202307202358.6Djg24Ou-lkp@intel.com/
>> 
>> These aren't needed (or wanted) on new revisions
>> 
>> 'not just a new version of the same patch/commit'
>> 

Thanks, I misunderstand the idea behind it. I will remove it.

>>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>>> ---
>>> v1 -> v2:
>>> * fixed the "static declaration of 'ice_ptp_clock_index' follows non-static
>>>    declaration"
>>> * removed no longer required 'ice_aqc_driver_params' params
>>>
>>>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
>>>   drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
>>>   drivers/net/ethernet/intel/ice/ice_ptp.c        | 163 ++++--------------------
>>>   drivers/net/ethernet/intel/ice/ice_ptp.h        |  11 +-
>>>   4 files changed, 34 insertions(+), 147 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> index 8b1d2c4..0baa410 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>>> @@ -2068,11 +2068,6 @@ struct ice_aqc_driver_shared_params {
>>>   };
>>>   
>>>   enum ice_aqc_driver_params {
>>> -	/* OS clock index for PTP timer Domain 0 */
>>> -	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 = 0,
>>> -	/* OS clock index for PTP timer Domain 1 */
>>> -	ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1,
>>> -
>>>   	/* Add new parameters above */
>>>   	ICE_AQC_DRIVER_PARAM_MAX = 16,
>>>   };
>> 
>> Is this enum needed at all anymore?
> 
> It should just be removed now I think.

Ok - I will remove it fully.

Thanks,
M^2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
