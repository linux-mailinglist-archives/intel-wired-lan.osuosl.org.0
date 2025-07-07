Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9035AFBE0E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 00:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F4A041998;
	Mon,  7 Jul 2025 22:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3mMQUhHG06Bt; Mon,  7 Jul 2025 22:03:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEBE541994
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751925821;
	bh=ZVb90L+9iaIhfGnQHkQ5qrwD/JuP3mzjg11x4bi9YUM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XJdAD3QzxjAUbZlJeX4OlGG7X9Fa3MPirCGIkhMuDkdXJH/63/EYO0aG7Lnjti4s7
	 WhTL8GLH7Q9YPRTxn0RdYzjelGZXD+zSIktWj9f+ucdH5l05HOnVcJ+tTgWGhZlff7
	 nBZeTkQlG3c5xmJvrvhPCdPe+nhxXZ7CAto9p0SdGm/OgV6Vc5thSZKerBQf1q+blk
	 VEywv/mjVWN3u/p+tEwJ4sznK0NDt7aHaLqMcEPQMKxfT/nnMhOFBHqgch5VdzvsUH
	 8+di7KaGDrCwum/gP5Q3LczeEUSK8W6LkcivE6TROtLcBUMGdujuQTZg73iJwJ/wBw
	 urLK8ZE2lQnvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEBE541994;
	Mon,  7 Jul 2025 22:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EEB9C15F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4C7E40443
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qmfEysu7yhMX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 22:03:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29970400F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29970400F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29970400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:03:38 +0000 (UTC)
X-CSE-ConnectionGUID: tN85cVjiSBGsus5OfFZbnA==
X-CSE-MsgGUID: +ik0alb6Rtqru6SGYOqQYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="57958308"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="57958308"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:03:38 -0700
X-CSE-ConnectionGUID: tlaWX3BnRPazkvoZHIhH/Q==
X-CSE-MsgGUID: BTPPbO2xS62po/C0bxPpvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="160972777"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:03:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:03:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 15:03:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gsN8sABArzq3rbywyrH2WgS1KKTE2uuFVxHdNi9nK6FbDnOuk1cfRsy73t6swqEfyMIQl4JBUUuyvAC9RVlZOXauw+792wVBBOHVyV8Zco5LFUsWyzj+wQJtClRXwYPOs454KcxBMl0hSvYehXsz6m/y/Q9RvYkVrib73WC55oF6vgxW/4dYzwZiv7QszY3DqPkEoyW4gAWCQEo3zGpF42CpXYJkR9lN84fV0wN/aZzJ+a6rZMMSyh7K0MWHsED/jW45wNQ2vFluDDVQGidS5be3jTjpbaSGEyYk4LhW+8JLffGd66WUYhm+KIHOgLG2hvO8vPHXUeAQrI5mataBHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVb90L+9iaIhfGnQHkQ5qrwD/JuP3mzjg11x4bi9YUM=;
 b=qZOI3O6kydcUVoD/YeLRoBDymqsFiVibgN1OnbWnNUg7p9imiBgtQSyLrPpi3Ptf9Sluk1PtTb1O6KBLlfgQRFbakBEDeqI0gigUOwXXsoKOvoneTGlWFepIamR5mU+QJkduguHWRLOWFCFWFvuLCDc38MZgard18dPRXB/jLB9LNVniwprXzd/kzpww5z6yDnHEvXDd9jOLOqBpcLs/fr5yeHnOr0rVJAqetgCTAUoAL8nBjXwRJfWXwjXCcXSwPU3yOvLqbHb9l/NM/Galry2SFD/oSQWb7NDYOVviZ1FK/8OUu783Ac9xqiovO5lUTfFwA2XN4aRfi8aX1cML9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB6767.namprd11.prod.outlook.com (2603:10b6:a03:47e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 22:03:34 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 22:03:34 +0000
Message-ID: <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
Date: Mon, 7 Jul 2025 15:03:33 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fVEh9sSXlA8SzroNF1GMjCWe"
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB6767:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f94f45c-2fc7-44fc-3ee1-08ddbda21e1c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S080OXZiQ09PL0ZzZlVZWlBaa3N1eUJEL0hVMnFzOThzS0xFOE8vSFZoNkNM?=
 =?utf-8?B?REhGd3NEU2VsNkdFdVEyaFFnd0FPNHMzc0daSzF3bVRDdVZYaTF6SWxnNWZF?=
 =?utf-8?B?UzFPakZUU3g2QUJiNlcrS1NLc1Fmb1dONVhXS1NPUDhKQTJhbnliL1dSTyto?=
 =?utf-8?B?bW1hd293V2pJSnh3a2FaZC9KWWJ0azhMUUNxM24vanNIR0t1M1I4TFNDdmZh?=
 =?utf-8?B?ME9kZmhxZVNXb3VYaCs4cFpnYVlqL25wTkErL2sxenlDY1E5Ry9XajdlR0tI?=
 =?utf-8?B?dkRrZnNFOVByVGltQmVDZEhKNTRVbE1hZExUU1R6cWZzVEU4RTIwSmZTVkI5?=
 =?utf-8?B?RmtESFg4VUptNlBrd3RLUzNNbWdVRHcyeVZ3NytQQ1pJb0tTK20yMUoySWVm?=
 =?utf-8?B?WE9IcDJaaVhRRUVIYUFSU0V6TFp0cGVaeEVqeWp0QU16RVhXTG9Da0VrVmdk?=
 =?utf-8?B?M1EvTHJYaml2UlJSaHZ3c1lsT3o0cXh1MEtMblZCcWZ3QlZwRzFmVzRsSkZS?=
 =?utf-8?B?eFRvd3czbnQwL0t4QSt6RkMvQmpsWDN4ZkxVbmxtdHUreUdFZWNQM3oyVXhQ?=
 =?utf-8?B?NVZkaGRoUlNDTlBkUFlkU3F4Y09CTW9VdmpEcWFoL0RadUx0MUdXNWpGa0xR?=
 =?utf-8?B?bmJUWW1hY1RuMmtOcWo1WEdaTWhtYnZVZDRiZFNSY3JPbHM2SjlsbVdob0xr?=
 =?utf-8?B?VldPdE4xdXkvMU9HR2NzbDBQTWtTZ3U0NTRuWU5mR0tVWW43VERzK3FYMFNS?=
 =?utf-8?B?dXpmMWF4T3NrTHJ0VjZ0aUg1UzArVUk1VjhxcXQyWEFYZGEwME1rdXV3MU9T?=
 =?utf-8?B?TnFPdlorVW9nZmt4R1UxdFRYNU5PbG8zcnpwZ0tId1lRZmdSazF4NnZPNito?=
 =?utf-8?B?bUV0eDQ1VVU3dFBJNTJHRHNndUVVbDB1NlQ2VmM3NjBkRFZUNFZyRUVlWEtG?=
 =?utf-8?B?TWswVmhQaGE0VFNnYW1GZFExMWRGWFJDUHVjQ2JtdE51cUU1Q1JJYkE4Nmpu?=
 =?utf-8?B?ZDRydHljRXE3TnBkSTNUaVQ5elo1cmVJN3B2RzJrNWxvUDhiUmZQNnVhYzM5?=
 =?utf-8?B?K0dlM1VQZ0dFNzNCelduZ3lnaHZtT243TTF0L1MyY3hDK1ZLY2ZXY1JQaHhC?=
 =?utf-8?B?cnpTTEx6bk83dG9UWDlMcDRBSVduSDE5WFl5aWx6cFk3UzNodDQrTnZnNElZ?=
 =?utf-8?B?cmpWRkY1S25VNXFYMzRZVGNPOWxWbWR4bmxuQ3p4d3M0cU9Ca09JMURKaWRj?=
 =?utf-8?B?dWF6dzR5MHNIVnlvNzFXbWsvTFVSR0EzcjdjaUExdlErRWpKUThuajZ3M1Ry?=
 =?utf-8?B?V204d0gzMEF6dWtreGhmVSsvSEtaYUZFNlF2R1lvcE1zYU5jVy9ETUpUUENu?=
 =?utf-8?B?U2lZaXE1YUo0NW9DU0Uyc1VyYTNnbmxnQ1hXaW50SWJiZlAyQktvV1h6ZmRn?=
 =?utf-8?B?c2dtZk1idmJNSCtaUlFYNW5EZ0lKWmN4RXV5QlhvUzgzS2l5OHNLU3hTcHU1?=
 =?utf-8?B?cEZIaVc3Ny8rZG9VOVpCeFMxeHlRMzRVQkNQVVZRMERiUm5Kdi9LYXJudHl3?=
 =?utf-8?B?ci9RaEVWUkgwZmFWYkhoYVdxdTVlME14WGdibUVCSGU5NU5RcmNwdnljN3pF?=
 =?utf-8?B?MXU0Mml6Y1dnU2ZIdVp1Sk8zYkxuZTVNbFR6S3RRVFA0YXd3ZG51M2ZMSVBs?=
 =?utf-8?B?L2s1aXh5d3U4aEcxTjRSV0M2dG1kS3RzN2dHSDNGOU8vczYzR0x2NVFJN2ZO?=
 =?utf-8?B?c0ErcVlzRTNpRWZUNXJRZEo2UUJZY0ZYbUNZZXc4akRaaitnOWNaRE1hZktj?=
 =?utf-8?B?SXYybEorcXVFSHJGaWlIYXpqMzMySDNVTHVCMGZMVERuckdqVUp5M1pLSVlp?=
 =?utf-8?B?N08rMk9yd1grTldWOForejJJMHp2N3U5QWMzbVhrSkFsOENRRElWTlpiZnQz?=
 =?utf-8?Q?b3j5uLsFIG8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmNOeXhLalB1M0JRVFV4VjZhRURyS1lmRHFrMGxXOVpYRzFqbFp0NGRPbnRy?=
 =?utf-8?B?MGVPaGJvMnlVdjRCdXZvdUNWWjlsTUpmZXg2ZlRPaFlhb0dhK2VLZlBvWnVh?=
 =?utf-8?B?KzVHY0EvblJucStUcUQ2Vzl0ZHYxTWFGL0N4YlpYdkJTOWFoaGowbU9KVUZa?=
 =?utf-8?B?TFhsNzB2SE8wQmtuM0Q4bCtEUDFkUHdaMC9xNGx6YWtUUWc3SEVhSXc3Ykp6?=
 =?utf-8?B?UzBQOGlucFZ3OGF0eFNTaExXMUh4cldRQnE5czZ2MTYvbXMvUkoydFdqSXFP?=
 =?utf-8?B?T2NkR2xJMWlSSzV4K2xqVTBuZjZlMkJoMTlHRit5VWZxcmJHWDVLMFd1anlK?=
 =?utf-8?B?MlNGZGNrWERIQkZGek1Yait6K3pjeThhcmFnTEJjU1B1Q0FTcmc5Tk51NzJq?=
 =?utf-8?B?WHUxMFJMdVI5em5TYVpYeXBPZHFMVEt1WjcyOVFRSFpxN0RwQk50RnJOcUcv?=
 =?utf-8?B?QmRlZnZzWmYvYStmRFFqelVTYnRCc0o3UFNsOUFvTGFRVDFLc0F3OTBUSXp3?=
 =?utf-8?B?M3ZWak83ZlpNcGtYeXJtMjR5T3Fyd0Y2ZE1xOU10eDkzcDB5S3dOUEswQVFu?=
 =?utf-8?B?Rkh4c0g4VnlvdE9HdFRhazJEQUhHVldNWUJYUHZ5b2o2aGIrcHRSRFdsKzIx?=
 =?utf-8?B?UFFtTkpkSHI1b01Ob0ZISXN2SE9YdDBrVGp2MnNYdmo0WldqMGFndGVESTJH?=
 =?utf-8?B?N1l6NXVHM0IwK0hnWGV1ekN0eHFSYmJQZnNRYmNSVzd4WWhSdUQrZEdPaFlP?=
 =?utf-8?B?QXI2TGR1ZnVxeGxNZ2t5KzViUFZTV25LMEFhWVdXQ1JIWS9VZ2I4MFpiaUtS?=
 =?utf-8?B?QTZYSlJieWVCMWNSbFlXMFJpWVpjYU9xTlczS3NqanIrUVVicUw5Z2JaRnF5?=
 =?utf-8?B?WmRFbFg4VzZHbHZYZ1N1dXBUSDlzenBFOWdJVEJUUS80ekF0clZzYWxCNHFR?=
 =?utf-8?B?ZkR3OU1iNVVrTmN6YWEyWGtFVGthWkVoN1ovWTV2MEEwVmRBcHRra1d2YzQ5?=
 =?utf-8?B?NjRvSUVUQ1ZHd3hHOSt3REtVNTYxWko4alFEcTBiREZUNk9TOWtuSUcvaVNz?=
 =?utf-8?B?Vld5VVhZNTg4M3lDTVM2NC9TdzlVNzhZTm1LeUhtUHovRTFzK2s5Q2FjeVBm?=
 =?utf-8?B?U0NKaWNKaFdZbmQ4dWowREpzMUlNSS9BRmlDcy9reG1jQTN2clR1US9nMmND?=
 =?utf-8?B?bVpMeGwvT0htVGdYVWo0S1ZRRDY0SGtiaEhyQThUdDFuUHpiek90ZEZhMkZi?=
 =?utf-8?B?YTVjdi9RTy9nT0ZXSEJxWVZYM1grNC9EYlpjdnh4RnZhN1VoK0d4aHUwbU9n?=
 =?utf-8?B?MHp3QWl4ZDV0em45R3NhdVN1c3NPeEFCcllCNEtzeWpNOFlzbFI0Zkx4VlNy?=
 =?utf-8?B?UWlOMHMzdm1qMUtKQkVTTGxRUThWRzVaQWUxYTlhQ3Z0VzJPckc4blBqN0V4?=
 =?utf-8?B?RDFpdlFVck5vVlMvS3c2Sk55WDBhQy9BU3BHMXZXMUF0QkRCOTRRUDdSQkc0?=
 =?utf-8?B?VDhKMFFIa1M5aHRQOHJTUGR6OEpLTzU3dmdsejd6NUppbTZHK2l2aDlocE9I?=
 =?utf-8?B?T3NqWUhZQldCOEU0d1Nua213UVF1VzZRa0lJak93WE1NRHRFbERKMG90aHBu?=
 =?utf-8?B?MjhWTkovMWEwV29sQkVXRVlGNGdGVjFnZ1pTSjdHK3FUQ2RjTnR1OFZwSUJL?=
 =?utf-8?B?b2wyVkxZb1NNU0ZhRllUQlRZL1VHbVFpNXlwMVpVck1wdDZhSUNhNWpoMlEw?=
 =?utf-8?B?cGtWWnpTMC9SQkppU3E0SE1qc3FMWHpKc0JoS3p4WXZDWmdZdGZ1WTQ3ZzhL?=
 =?utf-8?B?TG5qdTRUVWhXMUhDMENhM3NNTXcrMTFmV3U2SzVScFdjQjN1VW1OVlVseVhX?=
 =?utf-8?B?NVNId0NaeWEvTmNRNmwwRFNlMFVDWU9OZEh4TFZWaUZTV1FlMXNLM05BNkxz?=
 =?utf-8?B?THNnZ29vZ2ZkSlBsSXpDcWdPMllFSVMyVzJGS0VqRGt4R0J1cWNETDlLWHRz?=
 =?utf-8?B?WUtCQTIyZEdhenB3eDduOGRabXVIaTB2UkllOXRPdnFzNHBITnZ0TDNOT3JI?=
 =?utf-8?B?aGNqYTU5V1dVc3A2bXZvQUc2QnZwVTgvMjJwbTFjaHZEZW11d21mMDAydDV3?=
 =?utf-8?B?c2FjQ3RzQzZ2MGRaNjNuSVNLdVBidXJ1b01oWkI3cVdKMTUzQktxUjhwQnNl?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f94f45c-2fc7-44fc-3ee1-08ddbda21e1c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 22:03:34.6179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R89QKhTndB9C8BUAaymcx50DCxGq+8AMB0EIdBI33la45aPXxfWaIg/OJ7lZXuzO/A1T901hhPaBemPahY3wamtVBZiZgzJH0KWgQrAHQ88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6767
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751925819; x=1783461819;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=HM1jpZ9dSdRVbg2DzyinCVnbp0n/vo8eON8+AUoo9qs=;
 b=jtI14bKGPrR5vMCPMWQsaHL6jFNpeVpL1V7S4ieS4+XgJzl3B09f/cQ7
 GbwtfdQcraY1wsvYERktsfMAvuPUNqsGiQ7/IViTRbWFSVuGkU4xY7u3a
 QFkhdv1E+nOk9jYPkVSyUZBHLMh/skEl7DQk5XFTBffAgnXT8cTB2acy4
 OGqGcmY5hOxPqRmJgqZlKbmeS46qHhcvlxsKCk3noHowllDkboowNj1m5
 ouXCUYCAhZxlsglu1fbG5eus8yvfntANhwrCGuUkNEyZJAyVVWTGSmHj7
 Cb6rkJiUAqN0Agu0QqqKl8ooB2gJpGmyV/1FprSC50JrDEP03Mleyg813
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jtI14bKG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------fVEh9sSXlA8SzroNF1GMjCWe
Content-Type: multipart/mixed; boundary="------------p99OgUGsBD6THN16hTgbyKMz";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <ee05284e-3ab1-482f-a727-981b9fd4e9ee@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
 <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
In-Reply-To: <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>

--------------p99OgUGsBD6THN16hTgbyKMz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/7/2025 11:32 AM, Jacob Keller wrote:
>=20
>=20
> On 7/3/2025 9:16 AM, Jacob Keller wrote:
>> On 7/2/2025 11:46 PM, Jaroslav Pulchart wrote:
>>>> think iperf doesn't do that, which might be part of whats causing th=
is
>>>> issue. I'm going to try to see if I can generate such fragmentation =
to
>>>> confirm. Is your MTU kept at the default ethernet size?
>>>
>>> Our MTU size is set to 9000 everywhere.
>>>
>>
>> Ok. I am re-trying with MTU 9000 and using some traffic generated by w=
rk
>> now. I do see much larger memory use (~2GB) when using MTU 9000, so th=
at
>> tracks with what your system shows. Currently its fluctuating between
>> 1.9 and 2G. I'll leave this going for a couple of days while on vacati=
on
>> and see if anything pops up.
>>
>> Thanks,
>> Jake
>=20
> Good news! After several days of running a wrk and iperf3 workload with=

> 9k MTU, I see a significant increase in the memory usage from the page
> allocations:
>=20
>    7.3G   953314 drivers/net/ethernet/intel/ice/ice_txrx.c:682 [ice]
> func:ice_alloc_mapped_page
>=20
> ~5GB extra.
>=20
> At least I can reproduce this now. Its unclear how long it took since I=

> was out on vacation from Wednesday through until now.
>=20
> I do have a singular hypothesis regarding the way we're currently
> tracking the page count, (just based on differences between ice and
> i40e). I'm going to attempt to align with i40e and re-run the test.
> Hopefully I'll have some more information in a day or two.

Bad news: my hypothesis was incorrect.

Good news: I can immediately see the problem if I set MTU to 9K and
start an iperf3 session and just watch the count of allocations from
ice_alloc_mapped_pages(). It goes up consistently, so I can quickly tell
if a change is helping.

I ported the stats from i40e for tracking the page allocations, and I
can see that we're allocating new pages despite not actually performing
releases.

I don't yet have a good understanding of what causes this, and the logic
in ice is pretty hard to track...

I'm going to try the page pool patches myself to see if this test bed
triggers the same problems. Unfortunately I think I need someone else
with more experience with the hotpath code to help figure out whats
going wrong here...

--------------p99OgUGsBD6THN16hTgbyKMz--

--------------fVEh9sSXlA8SzroNF1GMjCWe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGxENQUDAAAAAAAKCRBqll0+bw8o6B+9
AP4kjXwSt2BBG6RHZKy67HqBuAmi4Xh+2tvO6x3Jfrwm9wD9EXUCpXdYMuOa9xhgvTMrcgmhVvKg
Yg3lEA9U+eY9nw4=
=vouo
-----END PGP SIGNATURE-----

--------------fVEh9sSXlA8SzroNF1GMjCWe--
