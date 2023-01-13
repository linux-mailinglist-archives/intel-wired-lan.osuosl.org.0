Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 177FE6694F1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 12:01:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 497888212A;
	Fri, 13 Jan 2023 11:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 497888212A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673607665;
	bh=GFG+b/p74eaf0vh887/tkyszSUjwXnQo/LcBeEUzhVY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L6DPIKHN6aCkP/tdeW5DutC/H5VVuhdvHD5m5hGfo5v4EzRkDGMUsDNBVsyAyYRP4
	 C4LJtnVprafrBU1KTcNHjq0qIx8vMcL2EoEQWOOo4ev8jHqx6LxVf4rFRaEV5W7jre
	 bxndLEfgxKZUX8WBQ6YW4AXWKrpq/RPs8r/Xlh/G1QwSaeJLKfK3s26Hk+aXEIUeR0
	 WPAwynFA7ZXj/DxsDEnPbAAV+zxMsehrA7LeBjOXdh5Qq0zYwbaryjqmCpRDxhRGjA
	 +L96rbpFlngr+X2kIuUyRHETov5I8VGL/Q8NTYhrZlHpLQHTZiZbsEXCSLcikYmZDT
	 e9CpN+kzt0S/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZO0psGb45lwA; Fri, 13 Jan 2023 11:01:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4942C8209A;
	Fri, 13 Jan 2023 11:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4942C8209A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA6B81BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 11:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B09A08207F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 11:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B09A08207F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8TC7cQHlxcVc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 11:00:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3B88817A9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3B88817A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 11:00:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="311822027"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="311822027"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 03:00:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="660176804"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="660176804"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jan 2023 03:00:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 03:00:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 03:00:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 03:00:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmZH8LjKvJM99f1A1wbEVgHK57xqNJx6RagkYqSwZLr3EE9ywmZf1kCWFBt0SM5A0VIRJEnRNQTtybfuLwoqdiM7Rha6yHG9ezDVxjQfajS51JxVEnCyysv3aFU9l06DnpYPdVhH8qwuuLvDtTKp/FMB6yJlqya2+JSAK6emTr//d9/LyqOPj78QX5f6tNYasEot++O7UKac6cT1Sw9vURqQM+nkTvNb+ucHwXM/vx4o4WS7qnTQqukoHDZ8uGzXWth13F6EapnrQZFuP7KoaxFAKm+IXuDtrkd9HfCDc3hQ++Wkl6pdIQFUAoixE4XUkb7Mxl4A63wLgSuLIY1O4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sLeBgGc/DqyAItsH4TLfkOqgPzg5r3pecApGcHw4CLE=;
 b=S8GFmdsa0bDpLGMJtVsKKV/dJ5bnqOm+yAvIW3HqQgRE/0dNnCX0kU0PkRPpRQy0nyYrIco5+qfEhLAzg0GiLX0nOwd153Lop0FMNUftR/NUwk2mW/BY/XBovXHwHGBi+S4ImoBL5esqOHJIi2+d1VEhmwwPgimmvt4O/OuwWg85N9JgLWKyUsxIi27kvKj6kv1fQIx3MgtD6ZnbYPa1wsgMBqP3NoxmXd+C9j7D7Xdu1v7YzjF9tImWB8+FRlZZai5Pee/ihn7FPnLudp+wCyGAHsrN64T/ZJ0y9TaZvHhUQPLqvKeAGuchlISSKaZxf0XdsUISM7RCreyP2RgesA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 11:00:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5986.019; Fri, 13 Jan 2023
 11:00:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Change
 ice_vsi_realloc_stat_arrays() to void
Thread-Index: AQHZITzOAl0yyHI9oEi1g88ohGO+zq6cOfsQ
Date: Fri, 13 Jan 2023 11:00:52 +0000
Message-ID: <BYAPR11MB3367BC516AF9A23F471DAC8FFCC29@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230105193311.79528-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20230105193311.79528-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB7080:EE_
x-ms-office365-filtering-correlation-id: 05cfc92f-1241-4230-94b2-08daf5556fd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1MU2T3+067uS2sZQmOZsc9Fim5u2lf/FmRMkwpyGaIjZ6dEZo0IYGIAKnmiU1HpZJWE15tYyg+dgdfQZzJPe+k1V0FZqvfCa2HGumZeBMLR3NVFhPJ/QBD0mh62CoHLqHiWK0kGbgxAmV0hS6dP7L1qCpKL9am6pZywge0u+VQntS4tYhvVsH89nxv29hTKoZrSSE6E3iIi31fX9lYctAlw+onpX/b+eKSkuiBSkEWF9PyD5y7NPLMNgcBnz4bEUNglPYSfCnEv6zi3/V/GAOw9ughwU9lGxJzDI/nHOaoi+Zi/AYaqISsaTVV4V8eC1RQYKCt7LmbqRsoDOqzkz+2WeHg9LZRyncxCvIaCzwWta2543bmGzqARD/26jFHldjDNn0Z4cg5XK/DQSKGmW9JaXp4ZAAAW26qBFbEhb9Gyk7sVBSEMafxAjOvfu2mIgZ81f/OsmRUGhIr4M29MN6nM3AOBqkOMy3iP/rjjZIzqKrg1EUE7ONEkklBkOr/CFdOCKHS9TAsvI4A9Qv3oHBIAkWBzIEptP29lfXS06ACnKoL98Q2dr2m4jE1O0f+1UdDOW4yY536wyhIi2i7znrr03GoxJ6sNLEwW3pA60WdmLBEOmEXfAL1nthSareESB5x0QI0dKHkD1DUH34l5Ix9zzDbBIfNSB3/UGgf4nI31D4QP01Rp3H/AR24AIu1fn99ykyhenBND+oakvKcSqWw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(39860400002)(396003)(366004)(451199015)(52536014)(83380400001)(8936002)(6506007)(41300700001)(107886003)(7696005)(53546011)(71200400001)(33656002)(66556008)(66476007)(8676002)(76116006)(6636002)(64756008)(66446008)(4326008)(66946007)(110136005)(86362001)(316002)(186003)(9686003)(26005)(82960400001)(38070700005)(478600001)(4744005)(5660300002)(38100700002)(122000001)(2906002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yl8xfakb6SLnpwie0AWNcMSMX9uuWL3XShUQIVzV0oLdzw7Ajovw4YX8THcf?=
 =?us-ascii?Q?EnBv6V6nkEb0BPFc6dQLlthNx7DX5WhXN5nlC0ybhBQE6RhEwkcLURIftoKr?=
 =?us-ascii?Q?fnSyfSaje4kj3nrhrywMr/mAwkB+UZyFpKCWmxUxMshv8EbemjbRjU4TKGz+?=
 =?us-ascii?Q?/3Dd2FAcVS1tfT0VqKjWqymko96MSbPJXJguU3GM72PTmn1BW/YQUx785mXW?=
 =?us-ascii?Q?W4jDysJztQpD4zx/JTHqpT0mEntrkuKtnxqhxJrMbLypcYx4ubdaD1XOTZ1d?=
 =?us-ascii?Q?vEYo+SOYwBtlXpbmJFsOgYFNwA5tHwmfxyXh55uHvzGxC147eL/Th8S5JP46?=
 =?us-ascii?Q?VC2+6DxhSOri3inLsBnLOLxTFP6bnRkHdXvtVmDnuMy1ItQjFjwntSCU7tVr?=
 =?us-ascii?Q?M3O8shBm8wOiz2x4Dl5od7vx5qBi0o/Ac0w0DrlED8sJw4f7ien3KTSkeNv5?=
 =?us-ascii?Q?q949zLS/93x7qpodvPWyLn2LfOm7m6k0AK9hRVlkKNDYiRFgG2XV7YMhdu5x?=
 =?us-ascii?Q?FPCat8MgCMoAE5c/W82DftrcpXTO4JUQV55fviMZamjHU+DCiud9lOuveYW0?=
 =?us-ascii?Q?7BwK6+uQV/p4od6hn/DRNB9WlTGF1c4Z8+Pkgp234c4VxBktlgrxtskSicn2?=
 =?us-ascii?Q?A/V/E/7OUb6l5lViupMRCE0xR0l+UJqvLv3vRbyvtFJ7O4qj4NOuX3y1Kkob?=
 =?us-ascii?Q?nw4MEN7OWobXdWD3lmJyYZ6fiQDnkpeT5DdLHovYIPSPRqh5T6KPBLLO0M03?=
 =?us-ascii?Q?XeSpzw4H+i9PW2vn2Ii0fditm7fVF/0UjUqw35LC/6tnIuYauGA3ux8OSJWb?=
 =?us-ascii?Q?+gMNRXTyOD5+UFs/AmXqgxYEfGU5Y4kr2gmxUeA/e7iZIxlrX08fdAYL70Gc?=
 =?us-ascii?Q?OcIdZBDjaKydvCfhZ33SyP/ENfarBxcNhq+kpMEXX/967dqpimHZ9WjunQHa?=
 =?us-ascii?Q?093J0bw5mX3LnU9GQU0PRQ+VUgy1w9apKF42sDj38Lo2izi/UEnpDsewuD3O?=
 =?us-ascii?Q?TlQH7v7qhPmiOYFCIZiQO5/iZ8iSTazs8Qvytj02THu9Tzu9B/8X5hNlRroj?=
 =?us-ascii?Q?aCbTZB3FZ4JV5EDvo55RHE9hvbbpLBaQdt4iwXGhsw9zxSeWCFAkxbWZAJZp?=
 =?us-ascii?Q?aDYe1WzfCsCCiwBNAN8GI61rsGEgHnB2QfBw8fh9Spx6D2ZZtFpPnmVSEoze?=
 =?us-ascii?Q?La45AdMAObVDNdWll3T959IM8awPnV1772lCJezIlp2v92SWbEPQZeqU9cMv?=
 =?us-ascii?Q?3tTAT6nbtFpMvAcFKXYAljvIiGb0K02XJD0rAdZbMLJkj7E92TUQEtZJ+MjE?=
 =?us-ascii?Q?EYrlFhhjid9ThUFOpunW4NnGZKXK0COlbxtD3bS9VZIIiaRDxEm3jZJ8qTSJ?=
 =?us-ascii?Q?t9PtCspEmQxKTg0dTzcq9GC6xidVd3PyV1gUpvi1WbsHcbMWg0KIxCCzbdNz?=
 =?us-ascii?Q?yg2ZoQET8DxYUJ6KN009bPH9MQs5RFgLvDfqGdKckCOtX2/L1FQ+XttVdpEV?=
 =?us-ascii?Q?uwCqSrupC3Uo3Zj0fYSbnQVFC+Z7wWAlJo0QB5dzjhnxew+aFc0D98mu+wtf?=
 =?us-ascii?Q?2rp6BaCYz35Q6+qwegVXiUXcaTR+5NUpIeIGVhHZ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05cfc92f-1241-4230-94b2-08daf5556fd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 11:00:52.3458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4J1nqZ/duTOFNfd0t7l9xZ6YPie9EGrQYkbmI66ruo45dwRq8tyZ00HH8PA4BEVu3hpvU+RIvr1NRGnawzaDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673607657; x=1705143657;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eWakAyoLa9SWOfUanVY9OfHuifLb3yyvkqgohd7vOGE=;
 b=dfqkrjlWaZq7ZoPLvFxM17f35Xu/U45ufqbjHQi4Tdd3BzI/ZstyB851
 2fcMGvV7pLvXznutHZ7IQmDOnNZBWXTks/+5oo5xkW8zee8tY7wJw/d5b
 Ieqd5c4FHtthdjhEnpq1aV3WZn39sLGW2rfPgiazm+52PeVubdjGSf9Wx
 2VVJdR8cT9DfRMKVvy8cTGvU5juTuVSeR0Wck4VUycS5SkJ3JNcwWImSb
 QIkMMx0kMG2+YYH0XkebRGdg5uijzYXkl+tAzZybVSUFYtPvCtE+8BQt9
 ffhXT7FRi/uWoeWeG+pGNSJPyJmVANpFXADq5E7srd7Xo9S2EOnGsbEso
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dfqkrjlW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Change
 ice_vsi_realloc_stat_arrays() to void
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, January 6, 2023 1:03 AM
> To: intel-wired-lan@lists.osuosl.org; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Change
> ice_vsi_realloc_stat_arrays() to void
> 
> smatch reports:
> 
> smatch warnings:
> drivers/net/ethernet/intel/ice/ice_lib.c:3612 ice_vsi_rebuild() warn: missing
> error code 'ret'
> 
> If an error is encountered for ice_vsi_realloc_stat_arrays(), ret is not
> assigned an error value so the goto error path would return success. The
> function, however, only returns 0 so an error will never be reported; due to
> this, change the function to return void.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
