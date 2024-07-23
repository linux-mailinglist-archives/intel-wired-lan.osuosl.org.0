Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1411D939C2D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FEBB80DA3;
	Tue, 23 Jul 2024 08:02:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Up-BKK9KQSr; Tue, 23 Jul 2024 08:02:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AFB480CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721770;
	bh=t9x+ydGBR1uA7Ohcpll/f8WWf5HXwvza0T4XOOOiUNQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JNGS6lKyCg1ruwtw1zniGHSSjlVwa/aJ3NWywB7bEhrYPfc6repblFMiOpWbflvmm
	 LS89ylyaSgBmygzmVX/sDgXkD0lDhLXHrkr6xkZQ/5i0as+ntxBMlGvTkRSep8oJxY
	 6CsoB+1ktdipHawAifuFHbR4V+8uSgUkFIkjl2PNZpZC2+8M29/fYlng7bqUqG/t6a
	 7E04psjXxA4X5o4M6wW+nHuV1eEZfYgNhz8A7rBudyyjFiFAG0lFUS2ae71T0Bf/7t
	 61Ll+NGf7cd0uq+AkgP5zzNLSHnN/ea9fgdUsxlZmgLjB66XRSa5HXxa/mso1sLJeM
	 MctYnqSsaxeOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AFB480CDC;
	Tue, 23 Jul 2024 08:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4E121BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD63440233
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:02:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5NGsYZ-bD9iu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:02:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9825840226
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9825840226
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9825840226
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:02:47 +0000 (UTC)
X-CSE-ConnectionGUID: vN7CUVnqQryEPrpGcxe8Zw==
X-CSE-MsgGUID: LzaFx8Y5R/W/xvrcLDm8Vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23091466"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="23091466"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:02:46 -0700
X-CSE-ConnectionGUID: +8vVGbGOTryLlxRzSQoDyA==
X-CSE-MsgGUID: yJHp+rMFQyCTwB/avCt9dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52044976"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:02:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:02:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:02:46 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:02:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xtJuPg9Pk5VEscl1f7y1wuQGcpyCW5O685aXxhkGlRTmhN6vT39uisRRSQmyc7cX+GMVDqnbQ02eM5owqIB/3MFUYEsynbJokRzTICRcyOxpOB/1Pbjo2+y42mRcvc+Lf2atRhBpjj2g4EICMI67J9ixEFtr7BDix8IX0uNrLqMmVaque13pySMQ2hjQox2MFt4ryU2uIonChHCNAnSSmmBgpV/MSYd7X5ydH0JO8B4EInPYUeF724Cma06/43TZ5F8LZ7+360fbsigTGUfWr65+fiw8mxZYwNDkZ2X1QbKM2MKqZSwvqBaF+EpP8DRmtZR/xT6RJQD/k+R7mnJd+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9x+ydGBR1uA7Ohcpll/f8WWf5HXwvza0T4XOOOiUNQ=;
 b=phGBoDWivAgbBBD7YKcMjcitCmyb+arjwEjEvkfwZkWghCLmCD9thrExQrSI0T2TDQ031BhzH3U4B0B/hwaoDaIB4vmnObzfjAm8PY8JvsnCUj7EtILSDEk2aG4yIoWpPg3nkKMZnzu+OODnrHV/o1GyoPBNteq2Z8ZJqaSDXk+l8jEUTmWp12qkPDQbhRhKYyUNOdTpc5aIrGQ/PsxAnKQ5+HnqWMrpm5vqDWQ4QNQiTSooZ95z92XEmISagUWkuaMJMLG8M/CmnFC3MzPwBzwcPgP7A6GjDv8BlrzUtdBHCAOJKLTDPeXx7yKX09GuGw+EXrxMyhBGdVmEJJ0XJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 08:02:42 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:02:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 08/13] ice: add API for
 parser profile initialization
Thread-Index: AQHasGgKze8WdkQnBE2zOtGsvvIOjLIETHbg
Date: Tue, 23 Jul 2024 08:02:42 +0000
Message-ID: <SJ0PR11MB5865A3C6CE298079F6D522908FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-9-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-9-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: cb3d20ca-0060-4a7f-410e-08dcaaedd432
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?UZ+vpv55S37Qeo7bwRFWw0mgSTElbHMZyRz8/Tu/AJJfgfYq4vH4/yeTuxik?=
 =?us-ascii?Q?o3taIXzi3AVgS2+NXugvFngB7OWfavdjX5ftG/8JEhiMg9AYZ3i2SKnrOozY?=
 =?us-ascii?Q?+8WAZTLYSH4GC+vwQOEPamEQFB5lhlhioqnQ9HczEW5QWJAjlWe1u04IEUc+?=
 =?us-ascii?Q?DvaUuk552S03iNzGtIXmcbBymyujqp3Q2DGrvU6Ix9SCI7ux/zdvyW5OWaoX?=
 =?us-ascii?Q?812OZYFgXrTHqa/od1Rqn7Pc7asng63Prj2OSfndnisx/rSUc4UuPv+wEroN?=
 =?us-ascii?Q?T6mycnOQv7a5qbASXgPFJBTqlND0FtUOD7Oqe6yp7i3hwPCvbkS8/jNUohWw?=
 =?us-ascii?Q?ILhmrIC6+qbp3vpgZEMgclAcVVjwd1dTS3i0IBfA8qldzD6as8V6wDT7e1bq?=
 =?us-ascii?Q?DF6XqTM8W4rY5B9FeJakiCWW0h7VI6CY1RNSbTnL4dwJklOEeJZl9SY3lP3n?=
 =?us-ascii?Q?Byet/gOlZ9qqu1BTkM3YIzGsKiOFD8gC3WUtN/D/63sIg/bAM3wxGWvjLIOc?=
 =?us-ascii?Q?104sDKlJAtwhaQ0kxtAdGpgEPn35Ebwmujf8bEpY4j5hcl+JetWqK3nNxE3W?=
 =?us-ascii?Q?jymjlCxoHVn+fpDk3eRhaw9SLbGhrGl/FemdwvlbJrcPwvHV+tS+cTzutI/G?=
 =?us-ascii?Q?xb2fHb58KNP3ATxJ5+/wXyHEiI90KZSwZhDVmxdpnF9zqUxLFlqMN8D8+nrI?=
 =?us-ascii?Q?zxgkT41tXUiO4JyVyYfvQIhEBfOnOmPklIxB1ZW+trERDv5dgisevGPGIh4s?=
 =?us-ascii?Q?cM/VwIQf2EXquv9z0N7jpRQymerHyMkD9vC47kJmPwCK8lGbenvbmo26bxx3?=
 =?us-ascii?Q?guvVlG7twFy/PPa23ZR5/CGlE85XquMlnEIx8zaj0pFuv8ucHOUaQgNIf3AB?=
 =?us-ascii?Q?hGGnj2oTTidDlyL8sLq3eMS/HTpd+aVV0lQ808X35Cg3APcSRR8VR7IH8qnq?=
 =?us-ascii?Q?vAwKGKgnbSIPEXxoJVnVcEloDSznfxjPzJ6TS5mcWBiCDr9ap0PtWiJ3b5tE?=
 =?us-ascii?Q?E8hr9zBo/U5HMutKZAqJ1bH8wFkKihVLZvq2NmMjF83Rib5J5uYYQ8KgVZur?=
 =?us-ascii?Q?7wxvEPmlURJIKkHUuQUOC34IDPpHNTjMN8hwTV9hRmOFEdQ3lh3FCLm1dRyF?=
 =?us-ascii?Q?blpgQ2r0jSY4fqTE/Yj3mGP4lNLsrF68fQ3P0pWUAFPItgekIqTdoRoF2QcE?=
 =?us-ascii?Q?9u9JE5tzJhGKt8HDk3sFrPyfJk5qmPULzcHFxzHpNiRY+iKiliU7eioJiZaM?=
 =?us-ascii?Q?/SDn0jLvbs9IUv1ZgUokDfdi9E7JuVc79rsiF6ktSMIa9n/XPLEfj5NF5N2k?=
 =?us-ascii?Q?wQHVAmfBThMaR3JpDutwZYmtywL831LtkGZfP1od7+8QGTYBCftDZ/UBfSsF?=
 =?us-ascii?Q?grF7bz/WjJcUfXSbG7R8p5sUwOmV/YusmZhxGFl3MUQS1GFFGA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NBaPx+PmwN4e/EAXq03WcyLWQ/JNXMBcMnPXn+G+ZU8cNzYfvCFE8xAB/bQi?=
 =?us-ascii?Q?Ql1uAkNoLp39i4isoCoBTOcXfZWIiJVJtMPHrNkq1AuZcggnlHJQAPJZUAvt?=
 =?us-ascii?Q?TBpz7FY1uc0TEnjda8m6IfvVW6/6UV/pgFghaWBM/BC19RAtWTYHRSZyqnP7?=
 =?us-ascii?Q?J55Myg1WmckmmUAMzpzb51z0Y2r28vs/un+pffnapEq2SQ+kW9H3hMGQ9Z4t?=
 =?us-ascii?Q?NIZ6fCesbwL/htl6/XLmDFzk9hk+81+hOPW/fSSaNPzFp8XZw/HgLrFlA3yo?=
 =?us-ascii?Q?PxSQHoehrFynbZ5Ur/ZjL3HJq9D7O7L2ly6TJwYP9XDxn6J+B0Rj6ZGXgwH1?=
 =?us-ascii?Q?PKHMFRa3hRL3CNT+GLvkiTFvye/xEpF4aj0mR70gwR9S8ptHD61BsP0HN96+?=
 =?us-ascii?Q?VL5jxW+ATDc62QVbaebhaAIFJxZBsjo6FLBHcwvFhBvQpt7UnwMhyHJq4b9B?=
 =?us-ascii?Q?gvF+svEAqOaEdIOzzsEWiZF618tm/LLh9h3D5MZ+58QJISkmnJw+1Qp+bU1y?=
 =?us-ascii?Q?sajnInj8DHfztwXCqk5eW9NK0fB3WAIY1C9Lfflt7aYvUsn8ssYqR+fPeKmV?=
 =?us-ascii?Q?ep4I4f/pfdHU5O8P9c3/e26HZBR1CPVCiagis9S+c4n1MWB7NhGhX/kUbdKs?=
 =?us-ascii?Q?PNrNDO4k+bxn/1s8f6lgC6qegbvO7MWPXzZh3cbv8vomMDgLSGJOCZ+iaXfC?=
 =?us-ascii?Q?WxGVLqr1G61IsvH75xUKdh5qqmhq75snW7p0xF0Dkff6cdFie5d9myvSWKjF?=
 =?us-ascii?Q?Y+yFi2UwnbaIqYGKijLO16SxtLu8ZsqjmnpbT7X5VoXQCKcYE5XH3yXnW5bG?=
 =?us-ascii?Q?uLOdbmL/5KR6amQrX+UNKHbxze9i7Bhfas28f7g7kQDdreTDh9sCYDmdj5LE?=
 =?us-ascii?Q?mGw6PSLDUVRlcW0n8FA3dBNQXNomu6NE+HO0SW5rPDbDW0uYANnep0LurE0m?=
 =?us-ascii?Q?9CJHlYV8fc6UchujtLrUnpEf/00jRYm2gw4SRFtT0SUkfyuy6yYK953ajFxm?=
 =?us-ascii?Q?FQIpqljcVguVvMRlwBAiE+mqLt+IFDmeJz6l64Xh1pIQdMVywYXbQynDGn8Z?=
 =?us-ascii?Q?HkYsywSoJd2pNO9KZga1Tp7qN/ZtzjUCQ5kadkG9bW/IvQ3BdG+Y4ztB4hRi?=
 =?us-ascii?Q?swnxq2aoeZfB/ElUVoMvJIgMQsNjVfrgvc6GNHEo1VdI3Vb76hi6ws97eCbN?=
 =?us-ascii?Q?FkMpxz4BStmrHd+dUdwHdrTt5uDQZ3lRGVrpU8UJ4AtMhG6ZP2ThhjiZLL8p?=
 =?us-ascii?Q?1FyZtiY+w+T1gWu9PCZy7UzCWoeCcBM/lmod5gJBFlfUYvXeLb9EGwACZJsU?=
 =?us-ascii?Q?y7doQP83EJjgHt/VIFGtnFuzvpN33h0rB/onjjg6x6fCtjOeLHVQ6+7K9OGp?=
 =?us-ascii?Q?cRzW26K6A2LQpl3nyqbI6f7t/KI9FqHFfN8d2Apo4Dy56TL/PJ66FRawHCc+?=
 =?us-ascii?Q?Y2kNjMJ4lwHy/UtICkek56HxVKXhkYuVXp6rcYbx5v5qVya9U4PU1ZFNu4sy?=
 =?us-ascii?Q?Q84L4rKLW+FcxYNae3OW0SfGTk/UL6smZOIg4RJ5ddPesNvO7AtQFUYs5sj0?=
 =?us-ascii?Q?bp0QLuctgv4U39bQjlx3aWzPUjSIqvMv9jyrFjE20RctnesHuKW9cNpFbPT9?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb3d20ca-0060-4a7f-410e-08dcaaedd432
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:02:42.3677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JkfDSauh2lWfQ3ouTcYFRsMqGJq7RZbbXZ10rhQhuJfvjvfSIkOacN5L7djx2NV5Atb99Qqx+pgIWaMpKOQn5T8o4tAjlw9ARElZNESljl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721767; x=1753257767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TBeQx3ZiAMS1NHEgM+8AZktw9qRyISdfvlDosTx/a8g=;
 b=lekUgfEA/Pbs15ZsJnodx9cwdEb17/b9QahjhOrAuZU5FlOArQD7lHPy
 8bpi/ErEMHnW7bdR8zd/7iq6YZhx5tvvr0cooN7rNLTWGCVyF/GDX4/6l
 1Oja9YdWKywSWbv92ettARav2Eg1DeUWm/QbHJG/Srctc+uXDnGF7Al+U
 gkhDzbuMylcJvQGNDr1L//6+w3QbBAuHP9UUjdIhHTQkBhunbdjBKF/Ja
 Ld5hUCzrN96JGtUOFY4FyuYXQZgQ4QMkMdyyaTIkpz+J+yLtSKlU0ua8c
 m/ZPpNU2OAQ+nCPddkdzFTkhJPyhQAXfE81Fv/4G1Y1JQneXuZMgtEPuU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lekUgfEA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/13] ice: add API for
 parser profile initialization
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Monday, May 27, 2024 8:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 Guo,
> Junfeng <junfeng.guo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/13] ice: add API for par=
ser
> profile initialization
>=20
> From: Junfeng Guo <junfeng.guo@intel.com>
>=20
> Add API ice_parser_profile_init() to init a parser profile based on a par=
ser result
> and a mask buffer. The ice_parser_profile struct is used by the low level=
 FXP
> engine to create HW profile/field vectors.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_parser.c | 125 +++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_parser.h |  26 ++++
>  2 files changed, 149 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> index 6a0d5f720af0..270806efb8b4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -2213,9 +2213,9 @@ static int ice_tunnel_port_set(struct ice_parser *p=
sr,


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


