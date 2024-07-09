Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9733592B111
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 09:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00ABE40E8A;
	Tue,  9 Jul 2024 07:30:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FENCaVq-x8F5; Tue,  9 Jul 2024 07:30:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F219440E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720510220;
	bh=BwuTzpDPqglHh+u3ZLVV/fAAjG5d+oTNZXoTuiea35s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4VzWZZlEuyOMqCKBrk+l1KOxHSRLS3Izlcm8beXgxLI0tgTPcyo2yt+tc9NcFh6zS
	 EowhYMAbrFlocsnMBcJjFx/ACKRANi4xBmWSQxY499JRMBcO2xqKOlfBRaq0u/uGxS
	 y/MjWoyEuqs/m84W7G/hztVSX+q9f4jHKy1cIWO8aC4Nqqw9cDPpnTSyi8zyxy/mBJ
	 J2lVnBQX+6t/7WFD3QNhjEF/Zz/iFSfeZ8cu9zA0batsjlxEIEzov4NXZPEiBdG5Gl
	 wi1jBaflVHA8oM1AjzoRZbmhsWu8XJxBCeyJxh+udKQwtQilRdQOLMwJ48x8P+XbEC
	 LUNp3SZkR4nHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F219440E7B;
	Tue,  9 Jul 2024 07:30:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D22BD1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB99C60ECE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W8tAWu7jR9k4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 07:30:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 20EBA60EC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20EBA60EC0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 20EBA60EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:30:16 +0000 (UTC)
X-CSE-ConnectionGUID: +TTYEY/ATuqqbLv6542pEA==
X-CSE-MsgGUID: Ml+brLa2Q+qKib3reEfkLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17377921"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="17377921"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 00:30:16 -0700
X-CSE-ConnectionGUID: RLcHy8pXRUK80d0guBpodA==
X-CSE-MsgGUID: 0SoSYX7pTTq4QalyG1HC6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="52563004"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 00:30:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:30:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:30:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 00:30:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 00:30:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kkmKNrScGOlT/HVf77U7y7hGOriPL8QSDeYwgBAn300pwZ0bYWQZvPNJMo0wdKm6WAvWUNy7KZjjtrvwbTEo9mZz4dxqDIu1ieEU0WHdVypCpM5oHk3qDGxEozQo4hTlQG78+4J5Yqpfp/ieEdLZxLdbspcZZgxxIOwmwKRzguEWpcoS3V+DYsg/Tg1eOvWwe0BErAKpwdgh7T9Bj/A3vgzwAYo6NAs0KJv6FvG+fx5x9jkSQ/y+LiMZ6pUnU3o3KW7VMu00Q0MfekWCV8O+y1B93Zf37OvGJ6t+cGdUqXAPBXVCBcEq0YxPyBIzr80xWuVbKPJJFf4hQXcuAyd3pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwuTzpDPqglHh+u3ZLVV/fAAjG5d+oTNZXoTuiea35s=;
 b=LCglUsa6YmjvMGtgJo4cgMy1nI7sI4wFRKMP8lPo8fkPbVIhOl7zsG9fadBorgILnfeDBciGZQCvKLcMMzH5Bak6Kj5bPPuEJ0Rxrghow1XlHaAeHzaVQJehDF15SugeDgpQ4GngbUONDf0vdaj58W7ff5dHif3CzKjl215NjYcR1LuLIxs5zHWA9hd0/qyn7NeEnqNP6dSwmUwVxvAAQxQSL6fc37G7JqFimPHvtGKni2Q0San3BskY9IHhayMKqnyl/aSYA98qdS6cRao3JAw3A2VWWewkmyR1B8XQYzCnx0c/+2jBK2fiE9UgvlKrSzjXBUbtOBasOfJNsaTwfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7108.namprd11.prod.outlook.com (2603:10b6:930:50::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Tue, 9 Jul
 2024 07:30:07 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%5]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 07:30:07 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/7] ice: Remove unused
 struct ice_prot_lkup_ext members
Thread-Index: AQHayKIR2PTagDJcmkW/tDkFBT0BTLHuEj3Q
Date: Tue, 9 Jul 2024 07:30:07 +0000
Message-ID: <PH0PR11MB5013DB7615F77CE1374C5BDA96DB2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240627145547.32621-1-marcin.szycik@linux.intel.com>
 <20240627145547.32621-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20240627145547.32621-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7108:EE_
x-ms-office365-filtering-correlation-id: e03a6b30-f78b-44a9-c2ee-08dc9fe8f503
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?07d3GHorkliNzW+ESgqOGnSEXQRXQ2Syz9qz76JoNiCBP2XIz/sHiXiktCvW?=
 =?us-ascii?Q?cjzpKmQ+RDz0PoANcjd0PiK2kgCqwKlUeMGtlCfaYmb1JVi+Lx01/uD5l+hc?=
 =?us-ascii?Q?RQ1H9wJBGQj+w3g9msxMIRy16csNU00kqv6cY0AbxfjmDbgTF8VjmaUbdhUD?=
 =?us-ascii?Q?7aKkO8kC9LjLM/Y5SVrNn6reSlNd7OCpigFx6pL7XgUy3zp+bId8nb9t+xen?=
 =?us-ascii?Q?srHhVbbdbQgP8OBRXaGsi+R+k+R9UcS3wEJ5V/ZaESPKDOccTzDyv2pY94z8?=
 =?us-ascii?Q?xOuKCCn6ncOHoJq7jViJSshP0cuGu8NiMrivF5bz6zsRDTdHIpIt5j3Z5kFf?=
 =?us-ascii?Q?2t+1cLdDAUr/sdw0lRwxwyXQH0UaobgDU9kmSLo4GtGUl/Cct85LOpS4NQeO?=
 =?us-ascii?Q?wJhJeShYX5JWU7uHixF0bmCEJfOn67mhdzh2B8QYU84JBktNM+6F4POALCh3?=
 =?us-ascii?Q?AehkoyvKTTHt452EbWErPrdXkoEbravARm/7WmzaRSZwLA+j85DYxG7zt67d?=
 =?us-ascii?Q?nyaBHgGaiK6G8KV7K+LJp8Hb0cPmVVEytV0e8DEmH7eWA2/kZ4k+Ga1ZG6Ez?=
 =?us-ascii?Q?b1kYdDzUeGk8C3Rsa5DbbfgGanG1op0mXUyDrvrQyLbFo7dZbuYcEQF/tnqa?=
 =?us-ascii?Q?udpYpL4ex+17pYwqhLZrOk2psE7LolvXpwq+54LsXzA+RjbFsOPvLL2zpg5t?=
 =?us-ascii?Q?ClwEFWvSps4NUMnc7KSZHm6F2/ri/Aya+2ZpPThw5rTmkowqXYrv+Brnr5cj?=
 =?us-ascii?Q?6xUUJFBfdFXlY7r466c9Nu+89SiaNFHNjqfPrdZO9DQlLXnKFtJvOquxNvoG?=
 =?us-ascii?Q?GE+FrfyylcTSt0v2N1dLZmTb+o3/8wweoGE89cDZ7vnwuBRpaP9FGDFkd53Z?=
 =?us-ascii?Q?7ZwamCbnt77/MuliB8eHsqyRacV1KpM0CC/UihbtjQgfVCK6cbVlny/e/zx9?=
 =?us-ascii?Q?qZDYbivEThvYto/ipB3zUKw+sQ/0kuZIChB2nLfVnxDZesyVCPgTB49xTdNy?=
 =?us-ascii?Q?evmv426Mj0pQuqfCSaZ80/c1DIahkv1UUU1ga67PZ7ypxRd4Aoxp399XbN+h?=
 =?us-ascii?Q?bBrdYijpb7U1jCfSvcH7zwsbeAPK9wGCXvsBuW/fuUFd1eYTHEmaCP1RqeCV?=
 =?us-ascii?Q?aL8Xi82HxV245prev+Ks+Wc0z18GQZZdV8h3Txu7F8LSFjuqrp3ZMrv49XXv?=
 =?us-ascii?Q?JvJBqvV10DcSip/mF6sYaoRI1dS8SiuwZvcxvqgDObvi3b8eQOykbnbJY03h?=
 =?us-ascii?Q?DYtAwEB7tsSW+S62sQbkg/Vkor0jZRGOVJCM2i2ySIYqZMwoUcKmcrDMw3ZO?=
 =?us-ascii?Q?cAgNQEGFQ98cRovSNn0F/Ppov4cBvob2uzIJ3VeJ3eOdpuC7L4RXxg4lg/mx?=
 =?us-ascii?Q?VtuBl/WLLIaVOwwV0+ObHj9DHPOAT/HWMAKiY6ZDrhQ4bg3O3A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1zpNq3XHR1ymuRMsdz6NC4sFd0o+V00Rq0dy0wap7k54HX1nuFjIyG2F02Tc?=
 =?us-ascii?Q?h3MU90kihMBBMPZc8Ta9WApS31+fbf2CGJimGbb5Ty5a1J47e1DQqNC/1aZh?=
 =?us-ascii?Q?AjuCCt/tqbNapyABDRgC009mnKRrZxl/LQmSFa2/fPF55NjLpT6B5fzwKtPA?=
 =?us-ascii?Q?yTU1cc8jr5aKjbUBByVGQnNauikHg7XdyU3WEcGhWMAIFraDCPWJZbmbUSBs?=
 =?us-ascii?Q?PuAMALFR7a8z7CWjRTkypKycW7bQqxONrygFYx+zylFNctEG99pYgOY4FKQr?=
 =?us-ascii?Q?NyRWv1pxU2hcOKxFcRZnKAcJogQOuPXu05swt6VgY7ZeeccOj4j8JPAxmjN+?=
 =?us-ascii?Q?87AEknIrrA0Q909mYcqq/XAmfxeyAVjlztYz7Hbr5q6loOLrIZCGo9eub+nb?=
 =?us-ascii?Q?jltRb6ltMo/OVHRe7S4MGjOySMmWNKNoZ0Cb2ZJ1d16aNH8cPbketoNuczAs?=
 =?us-ascii?Q?d7uizsxDmJdnIJlmcab4PsGGscQ0cBLA4Fzcy1qQw+8H3cLURcbSPH5KjhEY?=
 =?us-ascii?Q?mvtE08ovaIwARBIDHXo2cYGBuzc7lDzUx1WfUwg3tmCpKAP0DInMKdyfcvhI?=
 =?us-ascii?Q?yuPcIJfDOZmncuZa1QSA6dYtt5y8YF5zzyqRmrEVE+lEiX0kGgJTiSjF8gme?=
 =?us-ascii?Q?4yBcC/SjkjIO2vn91/IpV6qWNezHjMT4j6pjY9KcQjzVBm5lILq8BXJEbLrE?=
 =?us-ascii?Q?XeDJwjefNtQ0HtNI2EuBt6PDfY+kiTy1WM1v1CTcJG4iY6CTzY/j+ZoinaGm?=
 =?us-ascii?Q?ZMrBQPfMe8JNZp+RbMHFZvJA6Lomn3CwUz6NDG8mSXK5UoHrr+XFws/w4A2N?=
 =?us-ascii?Q?4T6id4D5jxjE/otRgGQX6VPd8gVnvTD2w7UCBhvvvqw36m+uBmQFBZPDnz7D?=
 =?us-ascii?Q?1NaxrIiMFb5ZyuybtT3S9AWplgk6Dk9rXxGkDqQ4Pzm9EFJ5dVVZzTC2F3ot?=
 =?us-ascii?Q?EkGGUHcIX+d5iJhWmbnwOd9agBvwSiVsKJskQUzVaFxUtWSDtzO4L1QUwT3F?=
 =?us-ascii?Q?GwPhO2GI2Ynf/M5ubcfmm7W7scky9Glcv1I3O6jXjEy88ESPd3hDa6j7ZB4l?=
 =?us-ascii?Q?uzDAVGPxhs5HAorJaq5YjTb1TPKjVR1psoJ1aGPb3z69CIWVde5KkGI/ri7j?=
 =?us-ascii?Q?9Iwt7LQA3mK/RYSypo1+8Fye0jJGbulHefjnWYoe81+DtGYGAUgldIZJV75P?=
 =?us-ascii?Q?Dk0POAcgcrp3VjRP8ZS4O6JaDcwY+GRMeuKAqn7d0OCmvz0laukoLHxchGFo?=
 =?us-ascii?Q?TjuHgMis7e2pPu/rrsQFnx/4fOFZ94zl1ZtAc7YFepdrJWfZHt/i4onWqhwi?=
 =?us-ascii?Q?czJWRikiCF7iiz9dSkSXZWScL8HNMKew1B/HVOtFM6TlqXi/2YNkHu7sWti8?=
 =?us-ascii?Q?ql5q1ezY9XPHqANLoP4vmPnLmUEyUawX+AuVkRzO/drfi03ykHwT3+PNfdgB?=
 =?us-ascii?Q?BgvlWOkCvhZe9/yl/bVYRBJQq7K9zqxETB6N/p880P1/ezROVZsUzHvTajxr?=
 =?us-ascii?Q?mq+zO1OH+iaLjYgvdJOPBu4AOr9mxlk0tsULRbFduJ0cFQgDgLQnORFPr1VR?=
 =?us-ascii?Q?N9pwAmWaB9ES5EUVzzTriUmuEkZ5sBC0U+XW/iOftVGuPPaS820EqxIQly4h?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e03a6b30-f78b-44a9-c2ee-08dc9fe8f503
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 07:30:07.1492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NXT8u36yqGPeTIy4QaLOUp7Jtuwka0wsRYebIOT8ihVhfyEWa2RJrv3MLqzAasOogPIA8xH4ujk0Krg1mcanUwls5q6WIODEXTgR/E00L/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7108
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720510217; x=1752046217;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PukbviLl/2Z5hQ+V3TMb8OuGMBFL9MqCP1RP86D3xio=;
 b=LTB+CdXF25mlnI8ny2nOEUI51RMACxUoWUvqiTohRse3Gv5bxJazu2Mt
 Ty4v3O+QUVD7OMhoQaO6r0ONrbyXXl9zu3OrnEWtRfh1fpEdKOaLTUbGQ
 Lpn/aeT02fHNknsNk9h2iLtN2Gbt/zcqrIgl1Efz/XQ6brn0KvZwoW4ZN
 bZJAKhdmVF+BU8ALVoVjPmZyvgJBmKWzHgOmmydbkSCaxQML54b8Q1uKJ
 vFA6Ax4KZHwgCAsw4r2d1Tkl79k7zZOQYKvnXgV+C00eZy4YLvd38gBkR
 iZkHD8WxmRC3oS/yvkaMRlNuxGisqdAbXQsYRqQZ4OZAdrtKhRUHtA8pq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LTB+CdXF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/7] ice: Remove unused
 struct ice_prot_lkup_ext members
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
Cc: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Thursday, June 27, 2024 8:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; michal.swiatkowski@linux.intel.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/7] ice: Remove unused str=
uct
> ice_prot_lkup_ext members
>=20
> Remove field_off as it's never used.
>=20
> Remove done bitmap, as its value is only checked and never assigned.
> Reusing sub-recipes while creating new root recipes is currently not
> supported in the driver.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  .../ethernet/intel/ice/ice_protocol_type.h    |  4 --
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 44 ++++++++-----------
>  2 files changed, 19 insertions(+), 29 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
