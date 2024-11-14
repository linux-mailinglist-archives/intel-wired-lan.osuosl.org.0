Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 436619C9161
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 19:06:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86DC5403A8;
	Thu, 14 Nov 2024 18:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BVizKONpZwEB; Thu, 14 Nov 2024 18:06:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76A5B404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731607607;
	bh=pJkoh08ZVyOhguFwCw1zxP/kKD/3xY6teANxAYtjhDk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FofRFGB0VXdBRZpZxkzIAH6gZ6tS+PxEhcPnVR7srWj5XLCEFJPOKA3N6kk2b4do2
	 Tkcs11IqZGSU8VxYvS8EQZPGMS0u+LylcUe3XUQARTS0XV9/avyMR8O1Ir4Xd743FO
	 aFKOtkcCmmPgJtBuTzYgJu9uVbEYaAHrxmBlPSRoDrvsz2HwiBoj9UEpWju0IRQtEu
	 k9AvbZ4LVMKFogZ/Nylw6yZtjlelTOOXAvqEpWSKpgA+GZt/aEvhigo0zTN8StCNPk
	 n0ENlpaM7Ls91LWupMcA5qZN2Av44mulfprRdI4RDwKmJDORbsMN6UMvxMfzUSukZf
	 Qd+C0AgS0JoGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76A5B404EB;
	Thu, 14 Nov 2024 18:06:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A079ABF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 18:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FE7C840DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 18:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vxv169honmtx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 18:06:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 881E68408F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 881E68408F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 881E68408F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 18:06:44 +0000 (UTC)
X-CSE-ConnectionGUID: DEYtcSEBR12ZPCewrCyJlg==
X-CSE-MsgGUID: HVR/VcITQO6D69xDoiaXdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="34435094"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="34435094"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 10:06:39 -0800
X-CSE-ConnectionGUID: vm3A22PaRDi4dCfgOz/gGQ==
X-CSE-MsgGUID: rcoQ1159QISMwA5qDM6bxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="111591400"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 10:06:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 10:06:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 10:06:33 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 10:06:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xn0DTLGnJ1qm6jsgo6jBeSZYkHewldQmDxwwFL9L16sgbaSnwM+Hw1hIaT8SYA1gjHX2mLoPNbnzzGAjwHj7zhsJf4AJ+E+tEmCJi4aSTyxZC5RzIjUV5TbxCjxsJD0/+a10hV8Ly6pUvr4azYGCfxrLZ1qa2T0v7m/ZNrXWmhTiWHJf5rx8FVoNqhYJaVXOavaXVYQuj6RI56awS5ZBT0pps3LtAGSU01yd9b7HhAH0hV+7tGZ0mWXFYizIGWaGykR2ZOuseIw/pd/hp0G+dT6wr3TlaklCFmYeVHvOPdFVzIZH4mNGfHWilkX8smD9TrbKxSOmB38yY3KOlnVGGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pJkoh08ZVyOhguFwCw1zxP/kKD/3xY6teANxAYtjhDk=;
 b=NT5MyssBB/Fqd+MPZVXkWwt6n5UcddmmYaS2xUoa+azdAFSxzZWd+52EuvpdEcqTcdxHoQW/Z9nQagF9atEGR32dGeQ0/9eD7XS8M2PcaT9nOuTS9cethxaIVQrS0mJ2tnEe7t4BINN0U1TwcHaZVia9rGMKZnoQaD4I9YWDmxm/21vgD+oinfHrTF/yL8fbp8PbkNBCYQTqeW4p9e+20DBiNQK0Y2jFP5carZCLKYBwLTRC93DCiJBTbOl2i8tarQ8nZoqFxyw97IF3iErzrQQjkCsibS/ndggqXrRuRDLadSX66VSRNvPyCq7un7z5EKXKweX2WRh6gtqND/JM6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by SN7PR11MB6727.namprd11.prod.outlook.com (2603:10b6:806:265::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Thu, 14 Nov
 2024 18:06:21 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73%7]) with mapi id 15.20.8158.017; Thu, 14 Nov 2024
 18:06:21 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "jbrandeb@kernel.org" <jbrandeb@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Thread-Topic: [PATCH net v1] ice: do not reserve resources for RDMA when
 disabled
Thread-Index: AQHbNiheW2jXC+EQOEikvp/7aLqJQrK3EdHg
Date: Thu, 14 Nov 2024 18:06:21 +0000
Message-ID: <IA1PR11MB619459AFADE5BB3A515C0577DD5B2@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20241114000105.703740-1-jbrandeb@kernel.org>
In-Reply-To: <20241114000105.703740-1-jbrandeb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|SN7PR11MB6727:EE_
x-ms-office365-filtering-correlation-id: 58b8d78d-e02b-4eea-a55c-08dd04d70b6f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zZQKbDNQfotJxDHLRFW4rADdAOHiRvBaLspJXRzBseGPwkiJvVpQOVPSgHSM?=
 =?us-ascii?Q?gO166hIbWbpFVMKFJWmhMkK8gUfPA2EimXYEGG0KYfkVt42Ryz6VwHkT+2lg?=
 =?us-ascii?Q?pKXltg+0IkI4S7Vnbxr+6rM1xZFV7En/zZC66iWSw2jmmfI+M7ykHQ2q7/L0?=
 =?us-ascii?Q?OURJKmjV4w8HVzl8SHWWvDMUTj4MBD3vbpGTl1izF1XTFZO7p5++kkUKzUWo?=
 =?us-ascii?Q?Y7qliDzYyJkT7HIgvJoikVAwSxuXLHSh36gE0+yDt1xyr5robklyPqyLSHI/?=
 =?us-ascii?Q?EkZB6gFN7w7qTeZUEyfkb7xM+QZsTVV6gFAAxhzJhrvGdYMlD3bhfUWl0CZ4?=
 =?us-ascii?Q?LeU35LTTIMWlVCc0NWZlcEpOKtu7tb3G3j99dk0MuQTIPmeu0k7NB1271EhC?=
 =?us-ascii?Q?PU91y3HH2aaZQxK0nHGvahRHoAk129nQLoXiIT64c4HDQ/II7ajikb3BXkOH?=
 =?us-ascii?Q?N4HoN+AWon6nMTB3oqytfby1deY2mKBCnxlq9xWd3p0YZda3v5E+aQvRZkWK?=
 =?us-ascii?Q?WVBNKJEVES+AMnPgGYFUU9FKRXl6BULdMn3HMRnuEJpeVE/yEno1gFWbs16k?=
 =?us-ascii?Q?D3D66C6PgjgMFGxigVs0eQu5quNHnpNgabFn90qwzyFKhE+GCfxN1lnLcZK3?=
 =?us-ascii?Q?MHDMCeAQ+jBKVP4X31JBY2CZHXmRix+5jmvHBj2VGHq/TdXNU5+sHg2hdMXy?=
 =?us-ascii?Q?dMrwiJlnnRbjhTg2uTqdCnh3d5tA2JE+YP4Cmgt5RODYIQUPnoLaS4RNuz/J?=
 =?us-ascii?Q?7LHQCo38y5yKaKFrfcEFHn+ECzRZ7rR6kX7NsT3kkBBGBEvHuNpgEAoLycjX?=
 =?us-ascii?Q?nmAg6H8A0YSP9Z0BrKpUugr4HYKaAdidSR2swCZcq20NKf0NXoLVohufdvoY?=
 =?us-ascii?Q?3kzl5o/GuqqrMQZT515FCj6L2lpT9DXerlvmg/XukOaxAzapQXD6UujdF7io?=
 =?us-ascii?Q?QFx24JeX4eFwS0QGVaVHYQUlCuXJZRDKaQpENN+4kftxpBYgAI41IFV/gmm/?=
 =?us-ascii?Q?Sqxo7bHU7U/4txMznte/KY72DdupOfVEfYFaL7kH74kc0qo4KYdt4usCSXaK?=
 =?us-ascii?Q?kNZmAbuCcbMkdGQ+M103Qu+8Earm0z6JoqR0LWJVi/bymJDRFv77nskDAmKx?=
 =?us-ascii?Q?L/g/SInvYSlvOUYSLbKrE70B2ZTiMiHHFpSq1A+2Y1E3IeAMPwZ4ptDTxL0e?=
 =?us-ascii?Q?0vRSixyUUHLmeDDt6J+Xg44+oeHWraQXpkzwS3ruyET/M53rDuOjXWqvAi0N?=
 =?us-ascii?Q?WHQF9p1Yz51EFCg//+Q4fnCoSmy3ZVEeqXPKYJZhdv670VknE3z+iSHhxHHs?=
 =?us-ascii?Q?yXyADdaYzCXRklX/9mOaomXRpoEVshYm7H0ZeMDeE3XDB/rRRKD5Xq5Io90U?=
 =?us-ascii?Q?XO05dFs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cczfy2SEbmoItOZ4tHHEq4gkv4trjoKhIJIPs8z+EBoP/LZmF/FIG3GJ5FSA?=
 =?us-ascii?Q?uO//52Qr9i64yYV3BLx+wAd5rHmuEtLPphtbTCARlL6xADotb+5BsFlyXrkx?=
 =?us-ascii?Q?Fsm2iFpRmx0o9LQM/+mnBNHOUmX0jKcaKrTeXYhvw0F1iB0lVUZHYLAypPxd?=
 =?us-ascii?Q?/HbOshQ8lhJkd1BuRS7T841HGuzdh4ZFsXmOnRW4GJ2YKE9QEzQulU62iVto?=
 =?us-ascii?Q?zCN8GF8VdHAMvpbOaBGxuYAiRGQYZqJX0k0tAwb7N0BJjMVhO/l+gQXp9TMT?=
 =?us-ascii?Q?jR2EoJ3XwiWnkIs3WQU/pzUaatozGtSTZboN0o60WeeMjrYc7pOvENhyVkVv?=
 =?us-ascii?Q?7eCxBXSGIf4Ky6KqR0H0V/CGK0Cc1ZS1+lEKSUHjabFFCRho8qW/7D8PIing?=
 =?us-ascii?Q?sg6fFytif2pgKTlbXvYOU++xzwCwnjk75ZW7jk561r0rjDaEtN7zFqQWoQcO?=
 =?us-ascii?Q?HJKSlyDuJtkw05iu71pgw0bh6fNuTS7HguVFbVUIeS5TwTzm3zNtYkCALg7o?=
 =?us-ascii?Q?7Xdnu3t8Q8HuJ6JCs/um4AN7+ZSvnxzD9MByzydYfEToG+QdTgowGr6dZCEv?=
 =?us-ascii?Q?sDqQM6uG1RKQsYOqbNQYyEh9k+eLTFkReP4HBNaswgMu9yI5LklxaVo7pq/p?=
 =?us-ascii?Q?PzrEEqyML2sF9a/pHJjSAOHqljK4fhxdNy9j9AblKiEMRf9c3qMnXIT0LMc6?=
 =?us-ascii?Q?WgRLk3JO3NFfw6/OSKok0gq/OXxM5Rt+zepV5O4GCVwTL8MKtw+eelW5FCcT?=
 =?us-ascii?Q?cOAHvkY5pcnUW2/mg48yAW97oInC1K6iDteyPpG5i5Hcry4nqxKhEqFjzxkJ?=
 =?us-ascii?Q?Mqq+Um2YOSCeQ2B0X+SO3XO4WLnoJewmErNoGBtejrlOsnJz75tAFzNTQqUa?=
 =?us-ascii?Q?gFKlD5kjXsZJqaYkmu4iQRouP+QG2NUNHNRpkIvpUjD+bk2AZ4cfVwF+cQZ8?=
 =?us-ascii?Q?8XUGkpshA1c06At3XTr0HDnvLBVJ0HdujQtJwJL0ch2a4eCDIe0dabQV3+GB?=
 =?us-ascii?Q?XP1dXocMILYtbQMmVUTS4VRlYT74/Yhk5iicSpD6kLwHxMsB3Tul74ws4p8i?=
 =?us-ascii?Q?Y2tc1XcBvqRXa/dxY9/kaI3EauLpvjcuI/5VqtyaOE9+l/Moi7vaDN2sVWTb?=
 =?us-ascii?Q?mgKvC0e7Q6Kjw4GGjdqEc3mfI3sIJe3qx6OdGWGEBfwMhSlfvqkLMCT7gQ24?=
 =?us-ascii?Q?j00w6wPhv12i1qzy68V25/Z/idoI3AG5DxVzQrQqOL13/SNegtpq7RjEPZZX?=
 =?us-ascii?Q?wRndrofq9cc2OYhHn5jotVXF4a5NUMTfpHhZjWlp4h9gR1bodCaGi6HhBKDh?=
 =?us-ascii?Q?0Ny1kcdoWFVNdBRS4iddFFJiObkTQV62c71QjJCxF+G5DP9eBIKjGHObUUEA?=
 =?us-ascii?Q?5cXGkxlZP0zXdKr6ziEv0X0Ox+hxnesROE1umqeYgj3gIQqIpGNxt5BKXeqZ?=
 =?us-ascii?Q?bV23Le0XEIwWjLhl06pe4peJjhBuERSOxSVRQSS8EK1oKbPz+0aLnklfOjFZ?=
 =?us-ascii?Q?FxV3zjRlv/bE3aHDgw0NH6aSE30tSoGQ2RJUbOQUpHn4rLrz4s48PKciWVwv?=
 =?us-ascii?Q?bnC1Opr0lrirBV+qpOoc2wxUjCXkUWB5UsEQCuQz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58b8d78d-e02b-4eea-a55c-08dd04d70b6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 18:06:21.2051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ljkGXCptVzpqSsWnorVdsH6p0U9GZHAvbhTc/PV4Te7KHygukN+qFOyr1WWMOqBsjCLFVgPkge9p+Z+0zcd51aZuTrDlNImh0ArRlFkafWU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6727
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731607605; x=1763143605;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fTy3dCJwgd1yc+mUU+BZJx817l60Q5veRkqGeTfFQSM=;
 b=GmW8W5ue288Qcg/o1Hb61THz132LaWmFLO6KLTxn0qfGxrgzoTUSTahJ
 D9EueYYGWSkoXPpbyzUnhySL3jd65zX6CSFrov+CkD8pmAHzIG8dW1Q58
 k8v4Xrslqor25OYWdIUB8hmJXWFCwt9lyAfRABEr19JIyLmUgYS5hawk8
 n8GB08KmqBMVdnt+EReK2H9qpxc7AWfeajcrP64HRNVoFC60wWlqcwdxG
 QpcI7lm1c/qi/AKov+ageUZPG2+N8JiCtqGwJ2x22x5d45iLdsX11Cunv
 Myz9npHttGlXhftUD9QLi/zGqn8QlgL5CGK5dMhjZhhCEGBzj5RUfIcER
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GmW8W5ue
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: do not reserve resources
 for RDMA when disabled
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
> From: jbrandeb@kernel.org <jbrandeb@kernel.org>
> Sent: Wednesday, November 13, 2024 4:01 PM
> To: netdev@vger.kernel.org
> Cc: Brandeburg, Jesse <jbrandeburg@cloudflare.com>; Jesse Brandeburg
> <jbrandeb@kernel.org>; intel-wired-lan@lists.osuosl.org; Ertman, David M
> <david.m.ertman@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>
> Subject: [PATCH net v1] ice: do not reserve resources for RDMA when
> disabled
>=20
> From: Jesse Brandeburg <jbrandeb@kernel.org>
>=20
> If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
> built-in, then don't let the driver reserve resources for RDMA.
>=20
> Do this by avoiding enabling the capability when scanning hardware
> capabilities.
>=20
> Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> CC: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Jesse Brandeburg <jbrandeb@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 009716a12a26..70be07ad2c10 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2174,7 +2174,8 @@ ice_parse_common_caps(struct ice_hw *hw, struct
> ice_hw_common_caps *caps,
>  			  caps->nvm_unified_update);
>  		break;
>  	case ICE_AQC_CAPS_RDMA:
> -		caps->rdma =3D (number =3D=3D 1);
> +		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))
> +			caps->rdma =3D (number =3D=3D 1);
>  		ice_debug(hw, ICE_DBG_INIT, "%s: rdma =3D %d\n", prefix,

The HW caps struct should always accurately reflect the capabilities of the=
 HW being probed.  Since this
is a kernel configuration (i.e. software) consideration, the more appropria=
te approach would be to control
the PF flag "ICE_FLAG_RDMA_ENA" based on the kernel CONFIG setting.

Thanks,
DaveE=20
