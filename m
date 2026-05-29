Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCjkLDHRGWoFzQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:47:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE70606CC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BDF983BA3;
	Fri, 29 May 2026 17:47:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id osTj-aVcV7Il; Fri, 29 May 2026 17:47:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 031F083B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076847;
	bh=4WE3ss24wGZw4bhI0xPnWVch7SvnJVyHjWI7vDrllI4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1l6u7bZfNKshej/xmNc9JJPZ8jNwI1o5ubQvplkKtuiTp621w41s4QcK6ZMU35lYc
	 vkt1GVgWqyeNwe/rhWGbeBIEIu72ccrGAzbf47/00iKpgmzgZLvctsu9EeSsb3gpUz
	 k+N4GDFaEFaYsCv/+9qiuBN3ynWjcwzjfr6UN+vXYwV6TeHZBJqiEcBu/SLmj9MAF5
	 jhBf/wqk/02eHxD4RkqpnV4M5rqV+ogTRxcq2NfntsvTR3z9TkkEu13TaLl+Dxk0VL
	 ihY84Ri+MQVFXTu/VJiFZ4eQ1hvG7zgPuVSbyJl8QqcreR8q/PvNh3z/lOKg9vooLq
	 j8U/uA9G02/TA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 031F083B93;
	Fri, 29 May 2026 17:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D737372
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DF4341F60
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:47:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PjhtITfLG3aX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:47:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F8D941F44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F8D941F44
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F8D941F44
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:47:24 +0000 (UTC)
X-CSE-ConnectionGUID: 9Z3MK0csQxe/kUZpv+93LA==
X-CSE-MsgGUID: eaPh4HcpRRC5zzq4Tg/JFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98509097"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98509097"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:47:24 -0700
X-CSE-ConnectionGUID: kEuvSjuIQAqi8pRDtOYuOw==
X-CSE-MsgGUID: FKhgEvypR7uNvoz5vCAwlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240368564"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:47:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:47:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:47:23 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.64) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:47:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=roFvaMbncZXY7iINb4RYUx45Njl59/eflS0dPEPCFcmRC5EbuGANO5Tv3ykbT5E59u7lgcw+5ohsLd+kPvaoQ2BSiSlXzMlsHdk1TwuVfgVIyxZh07UNgEjj3hu79SNW9C3roBo/d4B7pOoPYc+Hca2pzz5AeMO4G/aOVemrvlyJG+AdK7Qq4Q+LOmYkSTy0HQSgOUrTG1nRkUs1sow45XBPEQxTcwQkH4t3RYwtgs09KwWXA3d9QEGE0kxk9PhMVQBIEIbNWtz6PJE+0EAZo+HnQ7K9KFHNVcbz004jMHglaY9c5YKLS7aYolLn+eigRvydl1F3z60E57AIjAqTnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4WE3ss24wGZw4bhI0xPnWVch7SvnJVyHjWI7vDrllI4=;
 b=uu/AkaACMCpQAroJJlrPJH/oKmT+kdI44cAJHT9bJJQmKNywFTU1XnNTvnZC7b0O5ofMtS9oVNxofWZPlz5Ky/W7Pssd26Q3V2sdGPVj7BoErWhU6SrkhAAyOS+yJ+5ubYOTVa0uEGGW0XR6MRdK/YuyrPJbgzLWfFvCFxYLKUEJng2fsMF03RaLnbgpz9bEcvbbgn/Cy+imMNci4H7KsDCUO3PJ7Dfb0TD0KQwcmifwgHhjjW5KF8RqSVSoVNKMWcW0m6LNkxIDl4hAnpKbFivR+hfoufn6uUWqbblMSiE4KD1/Gs/ijqWhZf/sJz13fnN+EDY13uLQrYcEi8JpBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SAWPR11MB9760.namprd11.prod.outlook.com (2603:10b6:806:4c9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Fri, 29 May
 2026 17:47:16 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:47:15 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Cao, Chinh T"
 <chinh.t.cao@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 08/10] ice: program ACL
 entry
Thread-Index: AQHc6SCFzey70GP3V0mxsyx1zlYbsrYlU94Q
Date: Fri, 29 May 2026 17:47:15 +0000
Message-ID: <LV1PR11MB87903388960AFEC6E008543C90162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-9-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-9-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SAWPR11MB9760:EE_
x-ms-office365-filtering-correlation-id: e05f07ca-4054-4a09-234b-08debdaa5281
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|4143699003|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: SsfOzTplLtg62sp2EbIUIfTnCQIqp4T5lCj1KdnknPnP/B+EpXlMJU2Qd1zrPWMHJoh4pPjgVlnwNLV0RaydzEEydmgOJG+5LaXBbCbDsqg0Vyf6G6HoOhmLg2EF7iKmYQxxU8HzBd3vAL7IVb5AwmjuKSCrB7E4C+APGkZ+MhUhiN8hvkAUlbD9WZDcIF89oywmQcB0FQnIGyqNOYaehZUyWDojNmsG69ctdMhOqgkzxBp7umN3pgI2lB1ipy88Xny7PO6jGSxSBXBdhAwBgH3G1nKNDJm84daYJjmH6G/6B/EyIJANUA2yet1kMGAs0fbDOCahoeI6uak9IjDtUo3SpP16SgdFF07JHAdBpqG/C4M54uAjEsZul9d5oMj6GbjH7SKyGpdU4aeg2ErlZb5VdNnEIAV7qhIAUhSbKhRHpR11CYiYOL29TmEOiG83QrWPBV7hY1GfS4NDyEYyav2t96+BuFwfLMh2F3xzkoTBO8wDLlaC/2K16z36o7QPeDjj3Fj/ZfIXl++LS+oaYWhiuvCL/TbPBWpneDC/PmvCFEfdKbq4BDFwdswYc9rb12QEqT7M5lvLQfr3B77M5spKvqv6iXb/sZVEWKrJRRiZWVsh4H/3Jjos6tyKK4kPFi78MkSr9kmiu5//k8W0t3UyNJLC8T3JxYUkgNatCTS9qnNgIoSYRl+VAECSeH3wf4jA8P+S3fbBVO0eV/+YPiPy4AOPiK40TXEWHmJfSqAS/YIgl4NctKcgEQhqt97E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VXOqA8tDpmn2MFgVMD1ZryRZ+LycNju1tnd5zd2BpuRUWzX4BoB96PGFblmO?=
 =?us-ascii?Q?2ylmKLtKLDgHAOIz6Z0rc5HBxgFdFK8GwGP1qtv6q5Qpn1n/bvDGO8G0I8iP?=
 =?us-ascii?Q?BhewM/TQHbWGsxrbyqp3B0HQlwFMFnTjsMAf7L2bM1yfJgcfPOBN4HVSUwCI?=
 =?us-ascii?Q?mc168AX9oNRqjL8oEkE4VcYeP074qDnxhSjwlGGrpoCyDlh/hA0P6yVOZMqb?=
 =?us-ascii?Q?k6vKkW3J76E7cEbL+jE3b/DncwpwwpCX6xou7fkrBkRaXYnAGImorfe3Obt5?=
 =?us-ascii?Q?dyJVcxn+F9we3n5vfTK4KHwFQazKnX3TtnHKW2pDv+nmnDb3gA2LjL3/+LKO?=
 =?us-ascii?Q?kEjaNVq6GqqyW2jfuLsnEGWCFnGrkWQ+dxJZbQ38Ig4yHTiDu2Sv2072sysE?=
 =?us-ascii?Q?MdGyFFztwTy4oL7lb5yx+h/rNLLJW/UgkygejKHp3FSDs3x1S04E9d3jiS3g?=
 =?us-ascii?Q?0FCZ8iNabSXLArHw0xvRX6apfGavX83h66dKt6brb591eBYgWOtBKJmYnza9?=
 =?us-ascii?Q?4RaeRj852KBrCWD5A/UNSOaZ1WvFZA98QSZGRha7jimxorhEBlPqqVD2hzi2?=
 =?us-ascii?Q?tKKoud3hQzfQEy2GKCAUWaGCVOFk26G5rZFk2QAnALJjMKdZjSG/C/BxN4AY?=
 =?us-ascii?Q?aorfdTDs3etVzH7sTC5necCqph5LovCNgyEQoGtM5svv0gJuv3mnfcOoAPsz?=
 =?us-ascii?Q?XepFAZ66bp8g8HK0kJXCi6h0auScUUmKGgT/sAwLcongKxjMvpagl3LW5KuD?=
 =?us-ascii?Q?xgVkN6LcILB6MeCi2WwTu7+ulBW42ITzxYKtUSLoELb9EOW/W1gl5NxsVdUl?=
 =?us-ascii?Q?6DmWDki+RC0ekr2g7BH2kS+FnKqd0WuVzyi6xC+w8GZuJgUfsBaBa6mRGBkC?=
 =?us-ascii?Q?dFUprORGH5RSJrqNbSncWvRRwrQUAa6tE/vie4zncukleee0o/QYpN0CCzjf?=
 =?us-ascii?Q?EyfPe6YCj/38JNZpZWZ/+wuD0jGpwjX3+ILhT+xy3g9jiyqW+Z0c3eHehfxn?=
 =?us-ascii?Q?oiPwUWsHKuR5qz/Dw44JCF0DX6yhybiRV/iFXx+GWW/gGq4mq0NxretzotRq?=
 =?us-ascii?Q?LigT17KeOP4n1VMhKKwA80jBJTiGcS/cFRRy2rNrtVAhVg45Ktn7nKJAxG29?=
 =?us-ascii?Q?E/fz2EPuNmi5r1YeMk3MfqatEh4Nm/pXXQZ/oS6/CGal6VGsnSfkcu2UXwJi?=
 =?us-ascii?Q?B2spaj9koufg5Lv1ol4wdt+JaI2i0YH2zWAkq/usInlkTjxAzHFQAunCb20y?=
 =?us-ascii?Q?FsFGu8rKLqf2ffjaMaEyE6RpjMjNTZihFfB7/LxfM19DwHtH4cyiE19ddVmw?=
 =?us-ascii?Q?ps+ymC2gnb2QToyQqTsh+8FLoyQ83s4CSPN1d2GpGFSLUfH6nZLvgDzc79rZ?=
 =?us-ascii?Q?ratRQX7DOYhygXobSjnwGPa9ECmvp6Xp2MsiLbciiWnoF2q4OekN0iWmoMGC?=
 =?us-ascii?Q?NHDwdhLMEzHSUZxbRx1YAqjYgXFhZBjpGnhGmJ3EWy/vDqSE8vFyWlQv9Reb?=
 =?us-ascii?Q?uymrdeO2wYvZ+Oh4sOkVEXlUGsQhe+VbioT/rCKrBxL0YEeIJNUjB1+DUAJb?=
 =?us-ascii?Q?sJkDTTuhwYbi6csNYWjNrYoe/udB9jndk1G0yKZAp9R2rDOoW5qlC3hzF75v?=
 =?us-ascii?Q?oadEL6UN8tx7ted46zrsHpdhcNcCPU33yqUADgW5KgPFvOSSuveqkTPeHag8?=
 =?us-ascii?Q?YH/JhdFSbSI3IxE1c5wAljcyW7sN4Rx6Cz3aJzgqgCnZWnmpjyZ+PC3QqdtL?=
 =?us-ascii?Q?9IwpUJoKBg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aFPNaPhogihM6ObUC3hKa7ieskw07ZoSLrrXzem1xY5nvj4fENR9mz+Obh/Nf/1Jc4mbSVzcTz7XETnGonAmP7MaDeW90x90niY5vBC4CLpoJTfSUO5VlOzNwcH5N91Me7Hn8xxrjh5vrlAEJHd4R17mT3NJbNHRND+Hsbqgyfqy1hdd1pkwX8f0uK/+R1ZHS2LxWOyXlCuMBK7JW94vqxTTgaKvG6vXIi7mjK5R6uteY+eoDaZmAE3xBXQKMmA05Ef5XoTOng/qas1odPsD8Rk77MwZbW+HZMpw0zk26csG5AuLM2DCuId+vUmKPxRclB20lCAJr6KvviUqI83yXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e05f07ca-4054-4a09-234b-08debdaa5281
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:47:15.9192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sAWvkx72Vt/kyYYjOwurWyMkAkwXiTqQ782FCb5XeRzcEQawWkAPdv5EdCGKC5FCylbuzvw14oRdVonbgyphJmnFta+LZSTL6in2RCtRdq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076844; x=1811612844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IO9Qj90Oy/2xrn5U+XtVjatTDSneaC3NYbX8TZjxVsk=;
 b=dJmpvTbjVZ6UghAJtTXAqgo2NWhKQ5P1RF9/pEQRVV/ebsrWDasTprx9
 uabxVwk9U2tSZTTDQYnuh2C6q8vQDSfYDqFlblhZuu1e8SQ/IB6RQXt0b
 1G2dhgbgN6fCiaUM6vn4IVHgGTguz1FG0BTdV+VqHhLMoyYQARAqu1JlS
 fVDT1hXZIzr1wWt5c+Xpnzl2Huyw5mHaqqrejkh0eL5XZWfsgxKCHtG9M
 s4O/88GcWROXIWefZfTYgHyMEK0mDGz8zry6TStt3kykPC8CxwtAWbJEi
 fg9o7thxbonaLCV/NFaSrV8QJUdhY+uCS+VFUx196UUiPF34/nM8OYw2u
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dJmpvTbj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 08/10] ice: program ACL
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:chinh.t.cao@intel.com,m:anthony.l.nguyen@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 0BE70606CC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Cao, Chinh=20
> T <chinh.t.cao@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 08/10] ice: program ACL ent=
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
> v4:
> * Remove last side effects of using struct ice_fd_hw_prof for ACL
> v3:
> * Cleanup comments in ice_acl_add_entry(),
>   ice_flow_acl_find_scen_entry_cond()
> * ice_acl_rem_entry(): clear entry from entry bitmap only if programming
>   succceeded
> * ice_acl_rem_entry(): catch ice_acl_scen_free_entry_idx() status
> * ice_acl_add_rule_ethtool(): add fdir_fltr_lock around
>   ice_ntuple_update_list_entry() call
> * ice_acl_add_rule_ethtool(): catch ice_ntuple_update_list_entry()
>   status, add unroll
> * ice_flow_acl_find_scen_entry_cond(): remove inner loop when checking
>   if actions match. Previously it was effectively checking if actions
>   match *and* are all the same. Note: ACL will always use 1 action in
>   current software implementation, but it can be extended in the future.
> * ice_flow_acl_add_scen_entry_sync(): set exist->acts_cnt =3D 0 on alloc
>   fail
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
>  drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 252 +++++++++++  drivers=
/net/ethernet/intel/ice/ice_acl_main.c |  12 +
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  48 ++-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 390 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  10 +-
>  10 files changed, 786 insertions(+), 7 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
