Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AocAYuL+2mWcQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:42:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 486A44DF77E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDA4060ECB;
	Wed,  6 May 2026 18:42:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZC6er4L8JySx; Wed,  6 May 2026 18:42:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE84F60ED3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778092935;
	bh=mjkR/8aL15aX6O6j0emsqOsfHA8iR8oNWUv9/qzrTy0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1N4cntwP0iTVA+pcgdaikw8uv7Hzl01NMg7GLcA65VGAoyjAc6PExzykDrd8mKVeS
	 U3SDZIrR8MvA5jK/92vyZQSM3nv9hmoBqxajkOL1Td0qLp3rD591+AyosxDfIlL/JD
	 cKlvYfQ3ZJyuPUx/wIKKXFR4rAfWatjC2J+R5XpvjOySZiAGU4gS3tWm35PB3voqJs
	 ceS0cfQo778noV2JAk0y6YAYpIa/zEWs0UsqjGMMnUcSQlATaXmxGvoNGZr6YZslu7
	 ri5Z0Xvwl+Ur+VMqlgT4Q7lgXTOp/f7kK/Z1+rZnzAC7/hL68pwcnsLn9XXuPudJSH
	 yWD//q7sAjE7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE84F60ED3;
	Wed,  6 May 2026 18:42:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F7E5280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8108B82BBA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:42:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qsa2sBVysm33 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 18:42:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 736ED82BF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 736ED82BF4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 736ED82BF4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:42:13 +0000 (UTC)
X-CSE-ConnectionGUID: PNSLskRGQ+2FXfCdwx4j0A==
X-CSE-MsgGUID: 4cpdVEvpSwKOvpgqovpCcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78062121"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78062121"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:42:13 -0700
X-CSE-ConnectionGUID: rDdFN3cvQ4yOOB5SOFYawg==
X-CSE-MsgGUID: a+2H+uxATX6lK7XoOMHNsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="233568238"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:42:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:42:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 11:42:12 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:42:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aMaD3umiY7Xy543TdCdrgOc6HmOKAITT+/Cln+WEBPbnFwiVJDpCKwBrzNc0Qfbu4Fsylo8EFXKFv7Do+FBu1rBeBZyP8FrW1pJaP2f3LQtJn6+kTvGW3E1PWDoFU+UhpDAq7B3l0APvY664ZLs6CwwXxtT6tnms2/gPBC7txotEcj7uZbC4m+unWo708N8CZiUAfSgLRXLFRauta61qQ9IIPvENfUZSTTqhXXP+nz6M9ZADqy3G8RVI9y3aa/ahvBxZooqMg2FB7UboBQTwEYNxZ4Q1OkxTRW0SZiaH87X3qem62vnfJVAv7Kxw/zNqA02HcavTtpSk9dJyWRljGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mjkR/8aL15aX6O6j0emsqOsfHA8iR8oNWUv9/qzrTy0=;
 b=DVdMDbGpmAMmT1R+FsJVPHCXK//Qe6JJPA3KOKJLjMSzfQC70o1Ti1cHac3R2PZcZ/siwHHt+8j7R5RkXL3ox3aEbVZqKIpCCUXdlFMyG7sgrPjxTO+ZnoyclzKLKt8dUp4vVLJN/k74AabeMDMLQoemp5l/E5EUWPxoO/2wblY7mx/tn/9bzYbtSb5ichn8MKV49sNuGgDC66aPSDOuOnPLHExhkpjct7KzJlhZR30mcToUqXJ+9ju7Z7gh0g0qeMWbWd96aqC69CIKPtQHP8NXfmB8g3/YUow1AqSM5WTy/T34JX5+nNIBnT9ELUJ3Zm064NYieL4HqAfkT3vszg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 18:42:10 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 18:42:10 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Cao, Chinh T"
 <chinh.t.cao@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 08/10] ice: program ACL
 entry
Thread-Index: AQHcyCD9d2QkARw/WUKkDaMYkPQdy7YBf6Hg
Date: Wed, 6 May 2026 18:42:10 +0000
Message-ID: <LV1PR11MB8790DB9244BA263E72D5ED94903F2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-9-marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-9-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|MN2PR11MB4677:EE_
x-ms-office365-filtering-correlation-id: 1026ad06-263d-4161-1c46-08deab9f2e8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: iKjKKveE9yoaX6CRgHDiM2Q7uLBu7nmvU5zyIUHpePL9tRJVljLuPN/DhE6xkINZbAm3+tcwqtt1lIL55i33eMxkCWpMo3W2dNcDgaz4wlkJe/1kOKjJRwTc2uq+QTvwVDEnLD3DKyaXbVfNWSE8JHCn/vXXU4ew0CBCtpD0+18ioqzavx6bpxc7A4vtSRPScFgo707DMR3bF7TX2R5ZHhl+GtjVfCXPIPLiAZP3wUk5f01xH4FqoKh1EmXAoQysd1WhE0udYJtZY4HKYMNi+2omZjqyJqmGJegC4x8/8GCEH71X9WlMoDAFZi+BTzZLyeSd+4OGMZ96pN5K8ZONRf/J7QLAZGY9Zt5RQHSn8PjJyhtLSqHy+fqiMK3emeyW5e2jiIypFQvVnDW+sMJCwLtvmwepyM6GCkdmZbvqtix5v/cTrUqrEi3HNW1FBD+NpG4wQfryQ0gvK1uf5PawdGt91Pitc4zFRM0jhFz37EEL+jXnhCPxW6ZOolXHrk90jE/sZMVk6Opcunj3AUbWG992sNDfZK7m5VNSOjuzN+L07DMPYkaBg1BZFZ1i8s0OcN/X4Paefm7YeM9cqj9e2PZaLL1toIL8zdsg0Rd9t5mcyzfdTkpsleoGKLAHqK6H7R5jtkt9x0LpvpI9U0Tnll7o8rU05+6SFQT9Ry9cAjcf+WRX4eT8XHRArTOQJf2uT8edgLtO6bOSk87GsynjsxpkkgA2RTxrE4/1WZVZ720wNl8bH/RoxVK1hb6yNMbQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yRZg1HWY7KZNrJSsr2DAvIyvX1uNdcFmk37/+4mCXJUmFTm7FWzpN67ypjYG?=
 =?us-ascii?Q?RinYTyTSrec+k20MBHu6NVzUbQUgDwUf/aX731u/9JJQ5Da2TuxGGcOcnQXK?=
 =?us-ascii?Q?F1CaGlaFCXNWfKGGzQcyUzS9U3qW99kkOEjh+Nasko9Pdd3b9Jr5q8RazA3h?=
 =?us-ascii?Q?DAApikOE1s4hqS6eBFo3vuWXdgezjW214GT2pXhWfqAj0oFJuWi/0Bc8wpqu?=
 =?us-ascii?Q?Ah0kDT2Exq3o6Q29BQkHhYsMyVvOGYPdWFnhN8HJBUFUt349Q5td0/rsAwLR?=
 =?us-ascii?Q?IhsZ1T+eLbl1PHs0lm3WSxIDOrq+0TSOVuj1HhoNHpa/ZIDUpNCF1Lmd7IYF?=
 =?us-ascii?Q?2KJf9SnKAR1CTTbn7n0gQqRmRYBldtkUyMqf3fDbB+FHdVUcsWQX50zRaWtM?=
 =?us-ascii?Q?vbzRdeTvBXx91oC0UVRe70MNmafKaY37eQHTCZhC/+jenOOE0u8I2Ck4FB1f?=
 =?us-ascii?Q?9S01zqJgCzv675BXXuRSjJ/Dy4AvqCgpWexHZmlFlS/pM0wv9uB2nsCyHIc5?=
 =?us-ascii?Q?JcRVyu59lYn6PENGcl34o2dOQ1NdbOBW0E+kTTZHTzMH55AJiizAxH/Zk86G?=
 =?us-ascii?Q?MsxtGR+ezBFV3KkY/9ohtpKrzl4fjfR6Ypq2VfO+vS5ryjXCz14Zntr0+MoE?=
 =?us-ascii?Q?80vvSLJNnJQOjRjLQ+4Ji8fOBxLB3vz4D52EJrkQnMkg4ZmAkV5tHVneSIlO?=
 =?us-ascii?Q?q2GDkOtMnr6+7l/DLZue+QhY1U3Z4fTUWYImwehrNHMVMJlxCBuGXRktvWZ1?=
 =?us-ascii?Q?5yidKYqEZggiNs2+G3Z3QFWmrxyZw+crlzsAE64Jtuc9GPLbMvMsiXxOiH+3?=
 =?us-ascii?Q?0hCEOrttqqwgZYzVKzagugm3mHkD/uubsJRH4O4/XHs+r9pdBvjBHFpqNgEP?=
 =?us-ascii?Q?rFB+boq4pZL/9f/A5tkTkAplTbbX5SRrivZgrFpAOdxSizyI4MtiQzrQvGKh?=
 =?us-ascii?Q?FQYG4XuZNb30jSN9y/HyibIiLmPwH9Vu0+D37GHPh3y3NQXzIXEQ5hjnuoTw?=
 =?us-ascii?Q?6ATQMt+QG27EuNzM1RN8WHzHN6p2wmao5FYu2SeOzuMBNfGYX9BW/v1Od+t0?=
 =?us-ascii?Q?/7lPuW1fasoP/EmMF+N9UWXTypTIQF/JIM2jAnL934slv97T0qkVpjria76y?=
 =?us-ascii?Q?rfUnrFFk0qh2CPEDicBguYPl7kVG4ut2y433QnMh3AEYiGS+8QEh1eMDB/nM?=
 =?us-ascii?Q?nY3lmxZjjaLXihIgUBp5EJMHwrG23jm9Yz1SZvGPS1vQuBqtgix/h6PG1JrE?=
 =?us-ascii?Q?8j6MmSepJUNMVvkGkmlP0qRvXdW1bFlSSAbfl4Sw9q1fg8OEku9nm1uraG5i?=
 =?us-ascii?Q?CBr2sTqpZdR/heAkoS45CfdnpyQItqrNmhy9DIFU2FjGuHd/+hARlXVs6YS4?=
 =?us-ascii?Q?zihcKISWfozDHhOXxYQnR4VvTZ8gMq6ktQRMlnmbd+MtZmADKoS1lnyGwIz5?=
 =?us-ascii?Q?Le0JaAVTi/c2pQB5lv+xEqpvfA5AZVbdeuDWXD2c9IgWkZ/JgRfsBC6wddk1?=
 =?us-ascii?Q?7a2G8QhTWnAVHBwCGG4dQBS92qYYFCOWxFWw5WpPNDjqu3GUv+IemHYLrrm8?=
 =?us-ascii?Q?iDxH6wbgHxFmfWjcCz97HFa1kJnCedCN7ePSa8/FgxeDGhqDoSnOeMdksiB3?=
 =?us-ascii?Q?vQeg7h/zY6yzCDTXlQqbVuxTEoaBc5/g/2GTMysRy1SketynrMjOiTB/w6Ql?=
 =?us-ascii?Q?HttrdRwA4hwPXNYaVibblbgGm9c+HvEqyRR8uf6kWor8vgfuyJgduPHtuXEZ?=
 =?us-ascii?Q?RJmg91XkFg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iXEPsu6CISgXfsmNjrILiziyNHVoYVgTAXwU4ltYU8t0+WztmO/I8otufF9hkdKsnUjgqsYJDRYQeNVLdUv0NIRS3PSbmV7pazRRzrnLh+FDAyD77c14ZK6F3XsRcy6QC24gsSN6ZYoyiEPoBJL+oNilkjZ2mOP4NwsNfmHXQgJUKZIM8wa7kRAgZPRclt0/+Ki6eG8rRvhaaYuBskgCGw4Xef93Zye7pZ4OsPT9Tk36XWUvGC6b/ly5ir9fegS7f+U+kbKfktFW7q9Ng7SC6nVcFI2OkhtpXMhIuG02EZsQ012Bv4j9jXHUpP9KGsTjcAo9ERmpgZ671KfkKZ1z4g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1026ad06-263d-4161-1c46-08deab9f2e8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 18:42:10.1003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ll4imGkWo9ubOKaVlvslKNkXM57Gamy5u2gefhjWt92BXLGF9xx5GqjL9UlmhapsTmD25UXjYwFBDxms6PlFRUf68bRlhDPkEoGhv47MKlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778092933; x=1809628933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Unv+Ubu3NaK4N00Abug7JLRl3c7OPB14+HaXRe9lg6M=;
 b=gPZg0SIqg+nFNnkGJ0XrDezcOPieccJXMfuLulcGRWuXtewZnOGycYBX
 oJWMVW+zr9zAaOPunUk6b463PUXj9KfhoMOS2GjTnIuIQVuayC7TyptbE
 1/GJbID2lwkPi85v6EPhw6q8g06aBbUUZdPHw28lOUiA0g585dp/l5l9d
 6Gv7y1dGinR99AgXBjKABIvLZOs0187UkOKjkGlReo7XlNPMyXxC8xla2
 84E6SC9lnoADpNYkbtkv+IdVCrGmb5h3dQwAYyM488wYSaGZ7yMtvlYM4
 kRFxmVkqnhL9aMqyyk1s62Oyv/0nwWY5y95MO2GAb2QAZUQxN+Rr9EtvR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gPZg0SIq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/10] ice: program ACL
 entry
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
X-Rspamd-Queue-Id: 486A44DF77E
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:email];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:chinh.t.cao@intel.com,m:anthony.l.nguyen@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.378];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Spam: Yes

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, April 9, 2026 5:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Cao,=20
> Chinh T <chinh.t.cao@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@inte=
l.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/10] ice: program ACL ent=
ry
>=20
> From: Real Valiquette <real.valiquette@intel.com>
>=20
> Complete the filter programming process; set the flow entry and action in=
to the scenario and write it to hardware. Configure the VSI for ACL filters=
.
>=20
> Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Real Valiquette <real.valiquette@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2:
> * Use plain alloc instead of devm_ for ice_flow_entry::acts
> * Use FIELD_PREP_CONST() for ICE_ACL_RX_*_MISS_CNTR
> * Fix wrong struct ice_acl_act_entry alloc count in
>   ice_flow_acl_add_scen_entry_sync() - was e->entry_sz, which is an
>   unrelated value
> * Only set acts_cnt after successful allocation in
>   ice_flow_acl_add_scen_entry_sync()
> * Return -EINVAL instead of -ENOSPC on wrong index in
>   ice_acl_scen_free_entry_idx()
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  drivers/net/ethernet/intel/ice/ice_acl.h      |  21 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.c      |  53 ++-
>  drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 251 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_acl_main.c |   4 +
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  48 ++-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 395 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
>  10 files changed, 782 insertions(+), 7 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
