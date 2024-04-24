Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690768B0B74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 15:49:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 661BF408AF;
	Wed, 24 Apr 2024 13:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UIM1lvE3yV4z; Wed, 24 Apr 2024 13:49:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A79E44158A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713966561;
	bh=u6w52Enuw9zGOJukG3AJXmcnaf/8JzH/KIqQKVJjhKk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qwi0kHIOf/JudJnEGba7GQduHH+062hphLhEMQghkpsDhyx4U/cozeDI+flFYumUi
	 ivSmTWaAxyOQYa19rc8eetKtj8FXiTr2AH3Lyjk82FKD5eKFzHq9I3CwCoiIp+jGwu
	 ght+7ysqY3rWf7JRt0lUsMBzpx3rvaaKxRKQRkl19ByHpR3OxaX8POdCgC19TRNQR0
	 2XgD9kTA4ty4QfjA38BwtfU+VHN2EjA5GWL01e8KH2lMhpaG7cPvblbwSwdzUtofuf
	 /iiVhffgOFn2jRbKR4/s8vKGFfbzhiqylgr2oOiBnv7XAB3zy3/z2i876wOTdIwxSv
	 6VBRz4ey5jcfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A79E44158A;
	Wed, 24 Apr 2024 13:49:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A03E1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82B1C60812
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 64UtgvpD_Ig8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 13:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6D980607D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D980607D9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D980607D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 13:49:18 +0000 (UTC)
X-CSE-ConnectionGUID: u2l4ZhnjT/OSr8Fkj8L86Q==
X-CSE-MsgGUID: 2t+j1aAZQAyzOLEmteqKnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="21006352"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="21006352"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 06:49:17 -0700
X-CSE-ConnectionGUID: rZdLJ89TQVGT5F23X7A31w==
X-CSE-MsgGUID: xWybRwlpRqqB6E6QvDn41Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24684120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 06:49:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 06:49:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 06:49:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 06:49:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 06:49:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqmSvw68knPiJ1cq95+DJ+mcxAWBh1VXDv7Dl5cs8DtmE/jXeShDC1DG+jHlFpnWpZSsTrqLi7LzEeaDn2kqascgTpIroYVuY9SQlCaHjlV7Uz/5+qZIe/HFJ5oaI5K0Cln+pZkzIsPVpu7I3EK2Rw3zGbSjW2iosMuSFc/xT9mfGVRs5PsZXjVksDmUNmnTzPiPTgkBeEMjRh8CcwRgeFBVmzBwS07CaeMMuUihKc7vs0dcu4vyxGiz2F5CyAKRpibFX8EeprxECmH79nQu8Flzsy6XK1kJr3ju6Nuu1CwNuxF9SAtWY8bEhEPkUJi0518WrqPLjJ4r3I4lBZuCbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6w52Enuw9zGOJukG3AJXmcnaf/8JzH/KIqQKVJjhKk=;
 b=Q9ocb5n+A5yylV4I5pHgw6HGgQPPWUqdisAB1nybV8+8HJliKtZBU5gBHk9hwjQvMmKw8beK5WdN74Mw9Ju0j0tSWIjYyia/jDV2xyKFmYkg+X1d9OI17h6JCuLjrFK4aymIpmQZqBCqOsyN3Q4y+QYC6whN66pikweo6VWIzChoShJUvJEDjCmQgus0qqU9WK7TUXpvuDSmXOADbMQjQI8BeM0LcKzNlMllzwjybp63G7loGkHao9SYjvyPsLvSZGTe/V3MbJcYmLEUSBQINltBBSjn/6agu1lhDNnlEtLH5TNEHnrCsEdo7c6qrFhvhdAuosrTJwxv53n3tP75yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by MW6PR11MB8390.namprd11.prod.outlook.com (2603:10b6:303:240::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Wed, 24 Apr
 2024 13:49:09 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 13:49:09 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH iwl-next v4 5/5] ixgbe: Enable link management in E610
 device
Thread-Index: AQHalLOSpXfOeOrsqkSNKJU83qkmi7F0WJIAgAMaM1A=
Date: Wed, 24 Apr 2024 13:49:09 +0000
Message-ID: <DM6PR11MB46105E83E5597982F1EF02C9F3102@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240422130611.2544-1-piotr.kwapulinski@intel.com>
 <20240422130611.2544-6-piotr.kwapulinski@intel.com>
 <ZiZzdAX-qI-7wCMC@nanopsycho>
In-Reply-To: <ZiZzdAX-qI-7wCMC@nanopsycho>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|MW6PR11MB8390:EE_
x-ms-office365-filtering-correlation-id: afa87eac-1865-4fbe-c0e9-08dc64655121
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?IVosMZVyJIIzfyzp+hMEsNSrbegDp/q62310mEB1Wn8Y4v+zzfYdfSgVJ7cp?=
 =?us-ascii?Q?73Z8LkSjjmPwjD0f8D1YD09OHzlDnQk7gxOysuPpGs6wRDR2+VigLfcPFQkq?=
 =?us-ascii?Q?+fBRJWeKymmaXjduOERLsosflkdmSx6GI77l2n6oXKhntLdvoa8hVVRGx5sw?=
 =?us-ascii?Q?aHaots8hehr0v4e8EFqQJ4hZxTpUJvQ20K/Sk5ogPsGu23RUDB2SXWv2LC26?=
 =?us-ascii?Q?IyJ6mf9rF9Yy0jRVtiuFKUY0NvIxb4NudE9KwcQYZApBuwnmFlPYy2cz2qWK?=
 =?us-ascii?Q?R+B28EmQ9ie7jVZaIWJW/PxHgotVAhaokReoDTzYjVaRY5xRds3JTYFKNK7O?=
 =?us-ascii?Q?BNGJZx8pQgv7mMv4IXENHbTwC6Zl8oKTcMeSNRBCYDUK2nIDtFONYCwqEtu0?=
 =?us-ascii?Q?hd8UYqJXDzsa+v7Cu7bP4v1ZwI8Mdqe2uIHipOCiPNdfYtjLgWQaA4QYVDCV?=
 =?us-ascii?Q?K/fb6+ZQLm4Bf+DKSY0iNPzT6qgTGisCOF01HAAizJMEuREyBlDBhtrfK2B5?=
 =?us-ascii?Q?+slcWOfszQ/z18xhdd5RK05Zh7Cx78/3eWamku91BJ8liHAprwKQ6yZfoq+5?=
 =?us-ascii?Q?LVmYVoJ5KKUIZVZ4A/CvsE5r4H58Om+YjZUpt/6Ol905zdINyG1AI7CS7rUT?=
 =?us-ascii?Q?9SMdjCyzmjhAnYCG6oSAVt8cA24AYEa/szX8JjKHqJ0dtoDA9zNcfdt+7BGP?=
 =?us-ascii?Q?MKt6BDoweStSqZMxjK2zq5bppg2vMhtLu4MFWFYvlgNSM9aiq6t8swQwpVAc?=
 =?us-ascii?Q?fQZ8JMVfZVNUeKGQU1UKCc+aJPb4ZpQp++kBuHfNushulOQoTULe8XLRjGYt?=
 =?us-ascii?Q?+XhB05Kt7XlxxL6OC3//EqNsCzRAJptIFhKMSvlS0RwJaBYfqBObPeEGCTRj?=
 =?us-ascii?Q?owFugbyKd3ib07mGUuQBurzDGh4iR6zLKTnC41ta8XHyOic7K262xphU+SNr?=
 =?us-ascii?Q?bXHFnSd+BoQp0g5ch3XGygxIIXuaLKT3iUrtfDBtxhjm3Z+5WAaHbbDE3uO2?=
 =?us-ascii?Q?+1k8eZWqKGyAV5i8RI3ma6eirNQDiP74QYxSLlkmtDlB0E2844m9HLkSSCIg?=
 =?us-ascii?Q?TgDDa5tiEtOyR5xPuB5iKTdMdTxWyRZkQckVwZu24PyyF9ejFOcKKUWSKiy6?=
 =?us-ascii?Q?UAJy5hE2ZJkvBY0u0ha+dVrJHL4XmlX5wxTx+BBeMVTGOhKUrDJl3/XGk3ri?=
 =?us-ascii?Q?wTiQi2x9RWWztLnS0l2UZQvYh2VPlzOCUR2GGRAS39LOXKWDiNJGKV1jKVBh?=
 =?us-ascii?Q?PadUvimQLBl4CgA6wycy8jUWUeDyt/LUmtnUQS9znjc9cJUP3sArPgskawf+?=
 =?us-ascii?Q?+UmfI3GNKv0cpBiNZgxJ1Xxlxg7x3jdSSc8sxeALqjBFeA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bcLkby1+qSzav2T1UVqBee45+L7mPYqeng9Oqhe0+fuoZ7qNQ2Ap91F4h7FH?=
 =?us-ascii?Q?3PlACwot2LgU5r8plt1Vb6VvR4i9selIhnESOS0wuo1FeWmnFZRkOU7DLXqE?=
 =?us-ascii?Q?ijNQ5Mpp4bEI9uxEw9Lm82frQw64dOO2WraTWLNl6ggbR9RSs9TRbEppFk9v?=
 =?us-ascii?Q?RCokiE9fDkg3D3y3vY2gY8W3JaupT11VvzQ+fHlCoKEeXD1V2USvcXeXxHNo?=
 =?us-ascii?Q?7hEjg8ac06ep3K5vOA/4GQspAqUeoJe9SnnkHBdUlm68siWjIE6oj62JUMnC?=
 =?us-ascii?Q?NOCS5obBQ8CK2+SwhjjSnMSljtRVtncm6Bt8mRKPhr5u2CGTaZodkZflnFaZ?=
 =?us-ascii?Q?IMANHmMg7zE5egUjuu6/eb3LkzLnN6q3defQ8Y+Axk+W/aAA3d3HFi8L28Rr?=
 =?us-ascii?Q?/ZPk1qoy/GjNEcQF9rEa6bwXNiGQsikTjq0OBmbv8Xbr9Mgsl6SiQd/YD0QQ?=
 =?us-ascii?Q?C+7yQuoRTNl0+TH5DrU4lxH8eIyBhlOTKaAA+8RaYV7BjQu/wXo231fX6ABF?=
 =?us-ascii?Q?CPWUnFNrNkzXHIhm7cXWHe22/BIaK2ux9b1cnxBJlKcQSNzVJ0VepSpby+j/?=
 =?us-ascii?Q?zDBLWyKmWtKQNRzBfglHcilNmxIQkmbsPaH/XHjVzt0ePQ6VQxs7cDVn827/?=
 =?us-ascii?Q?F3vJC4MbBZwDJ6b2GN7hsMVaEMDmCo6020m7xse2fLRYV8vJnr2Xviw9l40w?=
 =?us-ascii?Q?t+IczaiczjFeKmme/yO+6FMICd7dTNahLLD0YlIiswX9xeUFeCQy7lU/hV3H?=
 =?us-ascii?Q?7KwGZeT0Nb3myI9fbwPax3BazxqAEJHfKJaUf3+NXIHg8lvGd9O0PpdVrpCR?=
 =?us-ascii?Q?hwxJj+kzF6rwYm6PwQg5wiwvXUncv/2LvIQ7L3Wn9l842GOxbUp1NRGTcI9i?=
 =?us-ascii?Q?uBhS/WAFYXdo1kv3ZDDxD4vnoG1Uw2uKtGpajtm4uq8iXCBJngkJBN1f4AhT?=
 =?us-ascii?Q?cbt4kt97VZaMR4oQRZmccJ2xUk6MkPXuGCbBDTl3uDSBq8GPqsGpTACDl+7z?=
 =?us-ascii?Q?kf6XIcl2DHPNEEbWdTMHctLLFllzd798G7sIp1Ky9nGLKSHFFNKQ6SgiDyGz?=
 =?us-ascii?Q?RDX0/gDOwiALgcU9wg5T1rNLb/hzm4dtneRaRnxpwSTfy4k6J+2gMtsBimjf?=
 =?us-ascii?Q?aZzzdd8q7xdmIPwh5wMfvB9XGUVMdisxMdQkMxddhWCDsZpTMj4YQiHW4/C1?=
 =?us-ascii?Q?KEj7joH9roqH3oXhgQngWqnVygLsxVCyJZIrThvwpWD3WI0A29rRZhn0cVtS?=
 =?us-ascii?Q?6qf1EvhOuIQ2pDhMkdtsz85WqQUxUIbEB7PH1icNv5pT7NKDrrWAW8VMlp4L?=
 =?us-ascii?Q?oLPdAn4G7tAhgRjb1YVXW6WCrqXBHlZypLTNP1nfJIWJlexc15sVJCSvCJWQ?=
 =?us-ascii?Q?UkJgKCc/xp0Po/VzZYv1WjRNrL6oKArZpWqG3tvnjWd/UAM8thkgyFYE4pdB?=
 =?us-ascii?Q?UzBJBbuJcnI1SsUbvc4fO7t4Qlv6dYc0hL0z66Fs67zfX1LjmpL8pctoieOw?=
 =?us-ascii?Q?uPKRkx1CR5oB7WwtDxa6XUBQm+Z99cR7pupYiAJY2GzYXmrWlfzrCGnbK2j/?=
 =?us-ascii?Q?KgNbvd+5Pa9+6QFNFcdryWsG2Sni1ikRgMZ1FFCB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afa87eac-1865-4fbe-c0e9-08dc64655121
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 13:49:09.4839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H+UDrg0Mp3uGZ1EqzA14bD03+3QTo1z5QSm/r2IQ+vCkmaHx3SXLqI1QYuHh7F6yUoE0h4BCbPytdotW3Lg35lNmmOu2DrfWNlvKzccGN6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8390
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713966558; x=1745502558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u6w52Enuw9zGOJukG3AJXmcnaf/8JzH/KIqQKVJjhKk=;
 b=MTJ0XTjk3W32dzXB1EGspRw64QjjwJeqir5/AlcswR3kGLDNX1AtlCfA
 +azR/g+9aP9ZEYRmMwQ6v/NkJTHdTLUWWANgHoQmGkCyCyQS/vaxWfSoK
 fe3lu/7TP86aiKeC55TO/HKTH/zp0rP7JMGksaWUqw+H41e1/3QcJDwSP
 X0vynbUy8QLwITciAwpfIIyPIkmQuPUS522Yopqw3/t44hp2st9+5wb+c
 A7r/UbblVY3OGOJ3MCMejoNvtpVSM11uYNLPH7360CQ/uBy466a0i/0E4
 FDi7epnapVhozd60LxQt6rga2iWg+JCAyPGBpxmUmxjQTdjcjkXUQ8PUe
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MTJ0XTjk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ixgbe: Enable link
 management in E610 device
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Wyborny,
 Carolyn" <carolyn.wyborny@intel.com>, "Glaza, Jan" <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>>-----Original Message-----
>>From: Jiri Pirko <jiri@resnulli.us>=20
>>Sent: Monday, April 22, 2024 4:26 PM
>>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; horms@kerne=
l.org; Wyborny, Carolyn <carolyn.wyborny@intel.com>; Jagielski, Jedrzej <je=
drzej.jagielski@intel.com>; Glaza, Jan <jan.glaza@intel.com>
>>Subject: Re: [PATCH iwl-next v4 5/5] ixgbe: Enable link management in E61=
0 device
>>
>>Mon, Apr 22, 2024 at 03:06:11PM CEST, piotr.kwapulinski@intel.com wrote:
>>
>>[...]
>>
>>
>>>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h=20
>>>b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>>index 559b443..ea6df1e 100644
>>>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>>@@ -1,5 +1,5 @@
>>> /* SPDX-License-Identifier: GPL-2.0 */
>>>-/* Copyright(c) 1999 - 2018 Intel Corporation. */
>>>+/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>>=20
>>> #ifndef _IXGBE_H_
>>> #define _IXGBE_H_
>>>@@ -20,6 +20,7 @@
>>> #include "ixgbe_type.h"
>>> #include "ixgbe_common.h"
>>> #include "ixgbe_dcb.h"
>>>+#include "ixgbe_e610.h"
>>> #if IS_ENABLED(CONFIG_FCOE)
>>> #define IXGBE_FCOE
>>> #include "ixgbe_fcoe.h"
>>>@@ -28,7 +29,6 @@
>>> #include <linux/dca.h>
>>> #endif
>>> #include "ixgbe_ipsec.h"
>>>-
>>
>>Leftover hunk?
>Will do
I think it's better eventually to remove this blank line. What do you think=
 ?
Thanks
Piotr
