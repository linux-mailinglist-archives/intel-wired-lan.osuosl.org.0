Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA03757502E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 15:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFDDB61544;
	Thu, 14 Jul 2022 13:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFDDB61544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657807149;
	bh=ZTL+forG6bLp95YGKg900odrNFJ69G1Zp+irCVw+mtQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5fBdlLWYR/7IZScW3UrVpRWOonxVF3JdoHq0Y+8wESezsuZxZqf+n/hU6Rudpf7QY
	 DbS1W9nen4a5/WmhPIRE3CxWp0FTmEBofBvD04iamGy3CQUUgzbB6VntgbEqhBUdyr
	 Ve0GeC5TorYjqDiS7FE7xRkorpsQKbhtaLOwnDTYJN9TabKNZVrbmznfRR+Ln94AeF
	 l1Hcfz2OQ4iwZrSRCs4AYf1SkixeD31pFaLQP6A239B/bLbwT5c6+HvujXVzAFourr
	 uaeavfVm4BXOcP9ozv60unBC+n9q7Wn/mP2y+jsoVNVDtm1PnLUvurRvHNdNhf0qWb
	 2tZPevkxDlsIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pLalX4jOhtdl; Thu, 14 Jul 2022 13:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94F6B61599;
	Thu, 14 Jul 2022 13:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94F6B61599
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F45D1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 13:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB7C661497
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 13:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB7C661497
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAJh4_eMGvTS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 13:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAB5D6104A
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CAB5D6104A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 13:59:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="284273715"
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="284273715"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 06:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="772632567"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 14 Jul 2022 06:59:02 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 06:59:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 06:59:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 06:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RoK8BsSdErjqt5s2ax8SXQy1mkvpdqfw2zAB55La+7QWCxh6Cv5iCMTXxXN1NiVUjxr26F1qBnEFYOe/CqBYgUuxGIE1d7Z/7fU9wNDDM5MbCzIyrODibtW8Zbo9vggSwawrVfZhB2devLV6ELmJ2e0/85O4odXZsd+/IL0grLFyjYVlkHv/pTP/I26rA4QKZIqOkw/I33DtzNjwkaM5/Xcai6G9M12KRsNa6s+nf1IqsojuRbbbdvwGnj8bmFsqCEifi9pMNOr5+T/CgoRbKax8TSIcuLOXFn00jn8wDn74mrq7DhUc9QwoJCWPyuclFED8PI+76iONZySs9QKL9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tiPEiIq/CgpA2zvqrDGgw0m+Lx+MPqyM47sTs9H1cCQ=;
 b=Z3WRkKf+nHjGEeMuget0tG0i5aveL86awdagUd3DTJgAfMjxc7DIGbkGx1rn/PnOyi+Drb3qiBcUfZd0V813XFZCaf7rsrXix+sGrFsQprO2Wz3Qyiv4HgEjlBnSuIgKkeF405XiJEwSeC9kJRk47WVhg6QG0FvWBVHkBQ27ltj5+IN0Lij9Tl1WHNXRczyJAVeu52xbM9jvklKxApNBlaCLsptzIqSp8WtpC90sx5skXG2TS1Ctr2q+3dQPOIx7Cb2VpchsLPSmtmWWVEbQZpPN2ye2bSwLvr+gR97TjXn8eUtb+LJtmFfQ/eVA9MbKmUUZ+JyRmLLv/j4Ui37d4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 SN6PR11MB2781.namprd11.prod.outlook.com (2603:10b6:805:62::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.14; Thu, 14 Jul 2022 13:58:55 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::6409:f5a4:6b18:de42]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::6409:f5a4:6b18:de42%7]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 13:58:55 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net v2] ice: Fix VSIs unable to share unicast MAC
Thread-Index: AQHYl4kjhb6wyxH4k0qAoQGjdIpFCa195IhQ
Date: Thu, 14 Jul 2022 13:58:55 +0000
Message-ID: <DM6PR11MB273185726406B817D5BEF691F0889@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220714135107.46473-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220714135107.46473-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2953b26-d8f5-439d-745a-08da65a0fdf7
x-ms-traffictypediagnostic: SN6PR11MB2781:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cSTrSb76BtA1rMxPgCq884OmutIB2hCQSoxPC2Ds4SYDj/217vgCz7Iq9ZxfeuE4WAV3zlJdhWUF3jQSjLXTWxHc5Eeku/5GQpi7W6ZYVvcXKkg8Em5r3bN/69TuxFpTX3seyghmdLysLjp2mZEsHO3uJTyorRwLBjMn6+i8bLoxlDeLUxLqhKErgbAUOW625FgGGCDJXf5SUY15LV/8IsBwvo7QqknEnQfJx931U6JSxVWQ5wtAeSM3KHlXnojWz/AeWYPoCXZPqmcaOYIvRX5BKeOQv63G1reql2pFqvCOhNAVtFlcXap2ug0NMDkpcex6wAF0Qi0TN2PAxTTFcUqEkJUIqAf953fC+nwDwWeg5YBzRAQe0kbbeD/ulA96L+Ab1owG9nfz8cVOHTH6b9WJcOJzNOdQQSY4BMyUoYixzmQ/ub7/E6wLPSJrRIjhWZhtcpxtU/SyF9G1gh7eaf/ORSLAVIAxUm1nlTzSESNrbPO4wITujpuMiKsueCYWnFnERRMjxGQeb01w82aXHoQUPlElquq/hRhw9HTycXl+0B+mIbZdk+rls5akz+5C8hw7lPfaK2vbnpemvhbe8PQ/Do83/YbqbMJKoYELJQUQtZ0LJ6PX1WHXUGtmDVjTD1fZao59g+WWSIOBAqvvRiDpStKxvsoFVZdBm5Oi+USXe8wJu4x+hRS8FVf8ZLGfHpUa0mwkb4Y2jl+9roBxa6F45OpR2RXNeWa+Uz48QC8wgD0uMEWdApBkWrKGy6Jpll4fE/uBbcoR0Ly0hP9ZQGm6+FeHx16j2eAKyZ/MrZJm9Z5zAGH19uTnMuI542mv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(396003)(39860400002)(376002)(366004)(8936002)(5660300002)(8676002)(4326008)(52536014)(55016003)(2906002)(66446008)(122000001)(83380400001)(86362001)(38070700005)(33656002)(38100700002)(82960400001)(64756008)(71200400001)(478600001)(66476007)(66556008)(66946007)(76116006)(6916009)(54906003)(316002)(186003)(107886003)(6506007)(7696005)(41300700001)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b+g1+ESfhfX5SQKiujD5F2XRgkIhL2Nr709oW+OTsG6Rw/lpQjzLFBlzuInO?=
 =?us-ascii?Q?tWcSpziU1k+FmnrcJSFdz1pPNmjMjbT1EEV8RV6MfM6ZxuN/wbpM4i24Sqrz?=
 =?us-ascii?Q?GBgr9KT5pW3XmmqrlqPJeNVXV1omwnRiyeLBJmRnlI98zeAjrH9MWWsTbpXm?=
 =?us-ascii?Q?RqxOtikBlkCA/OdzDxWir2bZjzHAoLzeAF7H+cVMIRNhsCXe/ZkVc7ujgbyb?=
 =?us-ascii?Q?qSfMg7swBVBMqO6VfUZRDlETj6delyPt/HoTyiJIs9ZorNZLpvNE49LKd3pp?=
 =?us-ascii?Q?S4PayULPxunxcbeDpOk1wgrzxtgr7uKYWfGR4cBRA5t38QPG5Ja9YsJi+N5I?=
 =?us-ascii?Q?B9Vqhtrua8q+D/sc0CVrcqMbxqfXShTP9hbogachqk/wpvw76oBswu8cNpju?=
 =?us-ascii?Q?SEkGfMdAfMdmgv3IVKt+GNznZ7HdrsEBWn94MSgSm1WFK4tTbfwHMLzaOXIf?=
 =?us-ascii?Q?lyOB1qBmlWKlB4O6vDiHsGqMzx2Ir6NKjFrl2BUGjtQqd7bbrJKmnb97Gk5D?=
 =?us-ascii?Q?BsUDRdkWqaaHciZ58X1biGjsbYvYCfU6JoiDRBkVIWdezgbRcFzz+WzzO8Mo?=
 =?us-ascii?Q?c+NBbdSUBWY/JOoDOu0TH6vGZlliMKKKbOkq2bHH18lS7Kk9AekTy7gUkE33?=
 =?us-ascii?Q?b0XlNIXz07JdQx+tYRvGA11HPebLQDTdWNM2JJN722R7ImJxr4fE2I6CgDB0?=
 =?us-ascii?Q?dpG3TsRZA022zq++mde3w3MU05+qd3KlL9deA0E9S+YmrsH+NhTuCSUfs9W0?=
 =?us-ascii?Q?5MrWLwKVgIH/3MJQU+UrSvIfI4b02K8UegGlUcXfwGZ8mDUNnbvX/Gd1jC5r?=
 =?us-ascii?Q?ei78TzK0gYm2EYIj489lTGhKmGIdBCdUEVT3vz7FWZsFMqdUdrEHGlRH+a36?=
 =?us-ascii?Q?w3bVg8gssRHXIJANPbzHLfq4B84jJJNcZgEnQ+9oC5YgFDF2/KrkfnRtfgWE?=
 =?us-ascii?Q?4WWwATBHzRSCnHcKWRBIQN9DhOS1/8xgMWUZouxqd7+ooOPpiz+XveRgQRD4?=
 =?us-ascii?Q?NtmUlqPP7M6D1wvhHGo1vLZ6YBr0U50S4N1hxFeMfb+0UCez1OABsYKJGh/C?=
 =?us-ascii?Q?iZzH1TlbZYpLL7m38TqHsRDivZe+XO6a6uE3gsyz6Q0TbbaW8TKmOVqOBfBC?=
 =?us-ascii?Q?Wu+mdE8pkJmYkiRevjmkvsgKkhWwX7qLLdRs3yfDzoQrZxjYFthTj7NP1C1e?=
 =?us-ascii?Q?x+XkMG/Zf9GRFRxzZyOs+RQIMCRkZYMfR15Pxd4/DEMkEcER616s5pXlnlEp?=
 =?us-ascii?Q?o23Ee8lZYnYWOChOTjrIIEB4Watl+VBmk4g5psCuSIKlJ/URPxIDzxNMFktV?=
 =?us-ascii?Q?rhsbSnq/IyMebj7dnwQnV6idJRCnNBbff0OgwPoeYA4c1MBowWLIjS6L+6iJ?=
 =?us-ascii?Q?s65oZxcPKmpnRLq6BhfE9RHRk51xg0keoge5tSJYtZK/95dzVPJMt7ECHsYA?=
 =?us-ascii?Q?WJy81c4NetqwdtViCK8JKUEU0xdjzaNqC2WGdeJTRGcMXrcu/tLK4OLPARJQ?=
 =?us-ascii?Q?DK1BOVrKaoUNGMbwJl2vR1MEXY4342Cerccr3olUCJHhz7rCNd56r8YoBi6Q?=
 =?us-ascii?Q?gybFziXbhXs2k1FzlfxI8mx8AE7oZoC5gbDKSSR9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2953b26-d8f5-439d-745a-08da65a0fdf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2022 13:58:55.5903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KVDU8dYPPnafPewCTszJ6tQZkb920Rn3lyBzi8EXm4FD5M5kxBV/5bwV7P+xFCFLmlauie5q3zTQLCVzm+G6D5Afh6gmZzkSMvsbYLNo4eI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657807142; x=1689343142;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1TBq7nah8nfXy/fMTuTWMUGeEXt376WHX/kmrYEtUik=;
 b=H4nP4NZhkCxVzzjZb9waPnaSUSN30aL1HDg52MaS3/2O6wqs0g1yvzbf
 AR/d/mg8awGSYNKjoHZpbNIt1qHitM2NNAAv7EA9GkCdQ1G+EL5ePTy94
 GMmzW4B2LAXAdhHAvi9IL6PnSWY1dI3SJfX3wwuPGHUYfn/tv9XTCI2OK
 KlpooaoqkvdZms7/CYKK7hHOtP2ol5DZ+XlSXBgk/nzMX8Z6aRSN2A4i8
 kV9X92pk7tHtT3J42nTuHOt9SGNKGESojoeR8SYhJKOEnaJcd5rdiMdgG
 Pi1r3q4h36TUcZLVPW9WsPymr6yQyqqwIVQNjyVtemH9qeR0031roysqp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H4nP4NZh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix VSIs unable to share
 unicast MAC
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
Cc: "Dziedziuch,
 SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jagielski, Jedrzej <jedrzej.jagielski@intel.com> 
>Sent: czwartek, 14 lipca 2022 15:51
>
>From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>
>The driver currently does not allow two VSIs in the same PF domain
>to have the same unicast MAC address. This is incorrect in the sense
>that a policy decision is being made in the driver when it must be
>left to the user. This approach was causing issues when rebooting
>the system with VFs spawned not being able to change their MAC addresses.
>Such errors were present in dmesg:
>
>[ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
>exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1
>
>Fix that by removing this restriction. Doing this also allows
>use to remove some additional code that's checking if a unicast MAC
>filter already exists.
>
>Rename ucast_shared to umac_shared, as "umac" is a more widely
>
>Also add a helper function to set this flag. This helper is
>expected to be called by core drivers.
>
>Fixes: 47ebc7b02485 ("ice: Check if unicast MAC exists before setting VF MAC")
>Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
>Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>---
>v2: amend the commit msg
>---
> drivers/net/ethernet/intel/ice/ice_common.c | 11 ++++++
> drivers/net/ethernet/intel/ice/ice_common.h |  1 +
> drivers/net/ethernet/intel/ice/ice_main.c   |  2 ++
> drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 ---------------------
> drivers/net/ethernet/intel/ice/ice_switch.c |  8 ++---
> drivers/net/ethernet/intel/ice/ice_type.h   |  3 +-
> 6 files changed, 20 insertions(+), 45 deletions(-)
>
Mateusz is currently OoO I'm his cover and as the patch has to be resend 
ASAP, I'm doing it
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
