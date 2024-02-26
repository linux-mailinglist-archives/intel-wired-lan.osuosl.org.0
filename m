Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10685866ED0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 10:40:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EFF8409F9;
	Mon, 26 Feb 2024 09:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvBJirprSyCy; Mon, 26 Feb 2024 09:40:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37FD8409C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708940411;
	bh=i3joN8LB3Dz+jCz1p9GKRJ8egYhWXcFhqqXARjSN7Qc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L6R79ylx0UNpoKqUohtXJV5SBhOTE5WNmC6VWE0yXOpWFaVM0hsEeimCW6AWWq7hp
	 GZEsi4BwCCVEGYqXTp8O9JUyK7JXem3jaPoEMQDBTPMjWsXa8FODm8pbWOlz/IpdCO
	 W1Uy+q/E17OylcWyys+MZmMX1uHaPohMEHyQEYmgaiAKwAUe8WrrJOsqonuRw1XyyL
	 LCdLymDBQxwnhPH8SFArfu7ewJLz0Y5Wv+FRvjoIwcGOM4wWP0SyCEZ4rfnzoN9Mfn
	 VMvMcFJIw+XXs4hshdFSEw8mHJVNBsJpJKMN0/rcPhaIrntaXzt1OQF07pczRJtYOa
	 /lBwq1XTWz58A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37FD8409C4;
	Mon, 26 Feb 2024 09:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 035801BF3BC
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E25E9404E5
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 09:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BuFtDdQ51MPk for <intel-wired-lan@osuosl.org>;
 Mon, 26 Feb 2024 09:40:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8D7BC402E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D7BC402E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D7BC402E0
 for <intel-wired-lan@osuosl.org>; Mon, 26 Feb 2024 09:40:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="13765947"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="13765947"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 01:40:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="7131444"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 01:40:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 01:40:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 01:40:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 01:40:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 01:40:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G7ogsMy+tSYztp8o5+V6t5ECS2R4KhIGiluJ7CzDfnCEqihH+8TodYDCZ3rPXFBydv9DMV9e4HQ68SEXR6nU/uRYOwjJjhmrJO1mUwUSGIRx9AawWwBUGiiFnvqdP7PpFRrqJbEgXb6TVU6rGOD0K5ZK4giO2tZJlIIACfag1dpxxoCYmPDIVaQr3qrjSsyTLgmYeXTTTS0dYrD7QBWVlx1W5eg5K2JyL+pcL9cUpFy/IhU99JP2asLmmZU1B+uWQgC5Vppx6dOwuD+2rqCslVKwhEQQ9c4EpTS8jkGrDH14bRhDqqZ9G/G0pw0m0KF0zjSCmGg+tF07cz/hxtZZmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i3joN8LB3Dz+jCz1p9GKRJ8egYhWXcFhqqXARjSN7Qc=;
 b=c8smHrhjU1WwgyhBcd5HZSz/6RcTbd977xQAoQYTvhZt+zmb25fisRvmeyU0xVwLNbsnD5OB4yN0cnQN2SUsHR8TVmgzKiPuRENlbIdKcQQq/tLsnFjaI69xVOm+MsJU0PLG1/phWwYqcDMnaKtykNj6ELYDHzxEMKheXOejXSK71eBSjsaX5vGYY64MeTRvOS+rRp9oCjuEgmbs1d4KLNQJ6YDFFIp9suo+oRfNXCOh4CObHilnK4isZXrDUYSVvA8xzm7olaJuQ46LyLoXtRp8Z3jByWDhc4+idmYqf9EeeF2lnGu4zjB5b0eV01ZlUXr2rJcQXk0hYuLqJdaiIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by PH7PR11MB5942.namprd11.prod.outlook.com (2603:10b6:510:13e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Mon, 26 Feb
 2024 09:40:03 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7339.019; Mon, 26 Feb 2024
 09:40:03 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kaminski, Pawel" <pawel.kaminski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add support for
 devlink loopback param.
Thread-Index: AQHaJLKlUkqkrO7JlUOXtMBEGNxpcbCVR3kAgAe3GYCAf+dcEA==
Date: Mon, 26 Feb 2024 09:40:03 +0000
Message-ID: <SJ0PR11MB58659DE151F3BC99A3B55C1B8F5A2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20231201235949.62728-1-pawel.kaminski@intel.com>
 <20231201183704.382f5964@kernel.org>
 <340900d4-b30a-4387-9ce2-1971e8d8024c@intel.com>
In-Reply-To: <340900d4-b30a-4387-9ce2-1971e8d8024c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|PH7PR11MB5942:EE_
x-ms-office365-filtering-correlation-id: bac3765a-d96f-4b14-eed8-08dc36aee883
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B62kR4dyPvigzf9cDQpsHXJhj3eiN8WatdFK8xRWjs8ouE5ioyqrQWgOAxBb9uAB13TrY8Cl3j4YxLv0UykOB7yzHHFFQjfbYg3NhtiE85aU7Na5X0B03nkRU8HnvOs/Bq3i2WiAYxTL+N9UMsWQEc/bthBeHLCQh+lXHS63herv22gs1aff0lmDMkr6ChvCctcOT8nZjwSEflhLNn1re84BY9CKWjzVYVvYYWrsvokPHKfS4l8hhuxcAGUW476vEI62L7GlRtnrn6OnPUhPCcKov+qnot50U0Ei4NvtKu29Ern6u3tqY/oeRHCDhvee+CUit7xAX/KHj5/Hkyw8iiunGTsSuuRiVrvufY1xr19hHSEsTCWpiPytIXxUwohXHqpO7BJ+FmZNz+Rud5yjiI7Lxew8+zInb5sxGzItX6/j6Tw4wII6sQ+XD8B2F2V5oJ574NgKzK1yGb8NrLbDcMm9NBBLAn7OcXTA1N1k/4G8vS4SO2N/cdLY/MpPadVVk6+UL976PUPN27Qj3IQmWnQyvJxIHTVShMLRD0oUxOZVBWKnsD1NranZmXOZIfE7VT80EqQ7kQxmIhblMSleAHtfubSQlBaaW9mo6c7lupvhQ/ABcDgNdECr7ZIjf56tlEjEhEcHoZ8IBSRiI3SmaY+w6+m/P2xtp3ZazCGzzMOvveTod/fyUTfFsVQeLSYl7hD815exfmAzFep0yRTjfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IVDCpR2t0xPP9CDxTQODc0HBSqdUfHmoOWdXf8DIiyjfowwxLNXUuQ6rMJa8?=
 =?us-ascii?Q?uwAyDLcGqd3GaeqALFeahcd89pNDTAzH6T71wh548p5EnlleWcCYcJlbEp5U?=
 =?us-ascii?Q?qOROiGvpD0o3Obr8ZjsuxE52LYxOu/JTIdQq1pTletHpx2egq3dJM3bM+it8?=
 =?us-ascii?Q?p6066Xj6/ZGMLUuw3oNjgKl6g34/XGMdRsGlwYmKBArhVf936C/BXn/sGd86?=
 =?us-ascii?Q?JxPlMh99t56EjeHuaNVzmkz9xrb1t/3y2Sj9C4g1BHPpSDCUUXo/8e1EuKq+?=
 =?us-ascii?Q?bt/ANM+9LtSmedcxtQhflaZZGzWpEd0IoRZZmywQTfjoMurSkpYvJwyJweuJ?=
 =?us-ascii?Q?y2yfbuW3sAV81llfDq9/dML6T57HiSeeuuK4UzX9OQ4D2vMOV3B8AGMtPLUH?=
 =?us-ascii?Q?k9CSA2kEawANFcIuFZf42Y+PBVzmiQ1NiwANGYHkWTxzEGVFpuGoJATyKNAh?=
 =?us-ascii?Q?QIOa0YmCYUgLFOGiXxdsJf9m+3CFCKsxUEFvtNzeGZqEEOTzbaIGkXW+zF68?=
 =?us-ascii?Q?d7OY0boRmIYcbwfrXMfIqKqQcblO48G+CM3MmDi2kbqR7LDJhZnCCoGEYcq8?=
 =?us-ascii?Q?EmvJPiksvLEvhhlGaLgJHuW653CQq3Q+A8u3VVHwczu7J4Rwg6EMrk6fU1PC?=
 =?us-ascii?Q?bTUAKOKvKDPPmLQn3GwkK1Z1j44kjQhUwN2rk67LxpiaEmOatEeGhoinSsBY?=
 =?us-ascii?Q?MhAzFVUxf3nO68G2SaRE9lUGg0KrAwVjXjB2ZsNkn06AHE74Cgo8HHFZ9Hpz?=
 =?us-ascii?Q?YPx3/aNCmMkMOo4Snz7wr+hbdeTw4k8FEaqntC9TP0wH3VlnqDzlUqEDuTQ/?=
 =?us-ascii?Q?GJn4NuHhJrt74vqLFVI/i7g/cXcwhG/DlxDF/xTjkYSF6KYF14AMfe+T91Mr?=
 =?us-ascii?Q?1Bk1unAqqsmlS5v7of9+4iz+C53m3B5htFpPXZWdBoi+gTKKgWC9Avz9ihCf?=
 =?us-ascii?Q?Qck3eGfzAPC9GKS2IxzvJQ4vjsHwwql/vehImNiB3Zr2XI8jZF3BP1hVKJnG?=
 =?us-ascii?Q?+AIc8u5fbEB9pFP5woJOvZQY84rTUEXv2hJEgdx4luHxp8H+cOqsPBVpNlEF?=
 =?us-ascii?Q?Z7NOGOGlxvRRywXL/CrMSNLNjXGavkzcmqbguVwYkqt3VXcFZfyjELA5x1aK?=
 =?us-ascii?Q?h1qlT62IN7PHSeAjB+/Z+rnVzaCq6Zqi4h6kDQWdADixrzCiia7EPR9Onqfj?=
 =?us-ascii?Q?kTOmLUrlHSF0Z2aPixgdX+oEQTelcDwqvZRU6ElpZFKpge73P7AKTEf26SPf?=
 =?us-ascii?Q?gPzR0qIxVG0Kj5owOlQqjx4gfhXGXLo/WzWp8g1J8yTvt104jk/YzYPTB7TV?=
 =?us-ascii?Q?DkOlkU5l9dEACEtm/Ow17y3XCirboPVqdp59ugIjnXQytOcs+9Pc1UH2x/8F?=
 =?us-ascii?Q?DKqXNGbT23++s4++pjJbqFaVgYZNaOVtRkycgIn7KCOfN7bkU7lm4aHr0fRa?=
 =?us-ascii?Q?Rearwiym7PadiOuNx6DnHTk+kMOGk6YR/6rOHkvmRPjAeck8GRfGVgwnruka?=
 =?us-ascii?Q?w1DDwqpl4+FNWjZiCZzKrLxknsZoqcp0bffPdbQy19W985BG8WtmQ9oa6h+z?=
 =?us-ascii?Q?wgkyAe4OKciMoP8zoOmwCk7rFkc+M72gctKXkNYc4c0ZuLPf6/PLZWAyxxxm?=
 =?us-ascii?Q?7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bac3765a-d96f-4b14-eed8-08dc36aee883
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 09:40:03.2473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wv4uSOXg4BTD4Cd3OV4haPWyPTsDLzuU5xWn6AU5OG7LseAWXqlek13LBRSQZjUTV0LBmbViX2SKf5DtfHaJlueWeigLFibhM2aZWcADouo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5942
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708940407; x=1740476407;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DuHRdKoabxsiRR5zEIuumur50fKFJEUA2RYHNCRJgbs=;
 b=MCnZkOuAmO4efo+HV59noP6G0Wu/V1lhD+8k4StEkqL3m0EfjzptvztK
 M0pYU/TzRQ4UKS6nE23kf1a1hC0MWRuAtBCBd/m4/GzN4CsNU3aAP1HlE
 ZzywkIsZ4ZgFrck2BmL2XN1Ftg3fZoAJS6V+1t8lO2EoNYOjybDMnIynU
 YwAEx/Q9tbkow142Y/0Lr8NLX9+1lmqat7OX2eURauosv4gAt6i+bsqjX
 UD9PK6Hb+GSUUGnF/qc/horw9p43WYZ1wXwVjCCOgqgmmwyYNQ3v/7SFy
 W3wza47sirqoZrMvvQrshg2uiEb3krD3jHyH/t5THXQMtFkd8tMWtBxQh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MCnZkOuA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add support for
 devlink loopback param.
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Wilczynski, 
 Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kaminski, Pawel
> Sent: Thursday, December 7, 2023 1:26 AM
> To: Jakub Kicinski <kuba@kernel.org>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; intel-wired-
> lan@osuosl.org; Wilczynski, Michal <michal.wilczynski@intel.com>;
> netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add support for d=
evlink
> loopback param.
>=20
> On 2023-12-01 20:37, Jakub Kicinski wrote:
> > On Fri,  1 Dec 2023 15:59:49 -0800 Pawel Kaminski wrote:
> >> Add support for devlink loopback param. Supported values are
> >> "enabled", "disabled" and "prioritized". Default configuration is set =
to
> "enabled.
> >>
> >> By default loopback traffic BW is locked to PF configured BW.
> >
> > First off - hairpin-bandwidth or some such would be a much better name.
> > Second - you must explain every devlink param in Documentation/
> >
> > Also admission ctrl vs prioritizing sounds like different knobs.
>=20
> While at certain abstraction level I agree, in my opinion it is not worth=
 here to
> divide this to separate knobs, since underlying logic (FW) doesn't follow=
 that
> anyways. It is driver specific and extremely unlikely to change in the fu=
ture.
> Hopefully next gen card will not need this knob at all.
>=20
> >> HW is
> >> capable of higher speeds on loopback traffic. Loopback param set to
> >> "prioritized" enables HW BW prioritization for VF to VF traffic,
> >> effectively increasing BW between VFs. Applicable to 8x10G and 4x25G
> >> cards.
> >
> > Not very clear what this means...
> > So the VFs are Tx bandwidth limited to link speed.
> > How does the device know it can admit extra traffic?
> > Presumably this doesn't affect rates set by devlink rate?
>=20
> I will rewrite the description and explanation in v2 and include document=
ation
> change.
>=20
> Thank you,
> PK
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


