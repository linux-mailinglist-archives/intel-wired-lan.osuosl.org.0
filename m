Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C20B37235
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 20:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 935AD80BB4;
	Tue, 26 Aug 2025 18:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FEkeWtoPb4o2; Tue, 26 Aug 2025 18:24:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D53F780BB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756232643;
	bh=6Ozv/0Xd70AcXlqwlfrfwA2O+a3Rf47lEskje41emwA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aRUhGhwnYDYvJaU0ylKhMMqUQL5p1/3jxYNYaC49GAqIdGg5FRObAFXC3uUOuIEqh
	 AfsfrN1ApRT/7441QqErMEoAT2j/l6BozPrxRp0SQGQvN96k0AbVM/rWui/o2j7BZC
	 Qm8v+QFXP6/68b3x5P1dpirzDiT5xegS+jbAdXqI9gGqcWUbQ+YzPksrQU15yrjDut
	 Vb24RZ5uFoeBIfOJCFlHP97mAqXMDfLLcajBLOElAUkQYki4Zj7y28+NouaWbcCuh6
	 3+9EwAe0UFehZ54QQJsjlD7O6tkDirOMfw46jkH227wgn+tHLpOkw93bQ0Le6Q6k8j
	 dBWtY/Sm1I/qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D53F780BB5;
	Tue, 26 Aug 2025 18:24:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EA2BBCD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 18:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF78E60693
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 18:24:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4nogDfvBm6fL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 18:24:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 050D560616
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 050D560616
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 050D560616
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 18:24:00 +0000 (UTC)
X-CSE-ConnectionGUID: a5FqromXTaOgzwl59oblQw==
X-CSE-MsgGUID: Sy5WzarjQxa2AQodyDsvKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="57680597"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; 
 d="asc'?scan'208";a="57680597"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:23:59 -0700
X-CSE-ConnectionGUID: RqZliL2zT2u6VDx7pFa7MA==
X-CSE-MsgGUID: VwjSCzHmSz+rc4gseTmhdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; 
 d="asc'?scan'208";a="174902019"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:23:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:23:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 11:23:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.84)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:23:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UrzGXshWvTUoJyVRHrzS+udF9GiYz6Egd1KpITIcT2GJjQQuI2v3Xh3AOgEhDZ5DuJx0JAOE36mKexzlMPeqyiUFXT/a8pvz30N46+wZl6GsjNJzOxLgfMd2i7871/oCnVrbIK0UqnQRYEC+jsD5fVj67XL1ZK4Xo+pc2vNS7lJexpPviKTJhcZC4AxN1f8DIF8GEdDxu+zvvcDtEKZ4neau9f9zlmlUTnSLtOPsUuNeWcxqFzR9bASgggxPNAF009EqZnuiYGD27M7FORGJ46YTKZk9bulNzSupzbfJDROX8WPHIW6dJ0Zw8jeIhv2EEdFSYx08c5R6ov4kmy8mog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Ozv/0Xd70AcXlqwlfrfwA2O+a3Rf47lEskje41emwA=;
 b=iF52n7YkNH5p/F74j0yqE0syjT0PiWMc/nTzcu/2Sie6XqpRX6czSb0xGvseDQubjUvy2x1xFpJS3gB21fYXh8LIiqTHVdCej6ou9LqbUrqs8fqJ5xl9494CvTKXu+nVY0R69aHVDPpZF2uSLJ5GNSMYPjcs861+f0p+Muk05cIT5XSjdS/vTjAtCfRMzmJsS9pcNIkf5R6QnctF9Q9C2whz5TbzqpXTHqAgikx2Rh70vf+e+8/aflW7iaVJQO0d+75cpmFIKh4vGrvGaPDzX9Rcv8vgamkxG/QCBjRQ/lFGzwxuu7MsCbct03GaaKLJJjKGgcdA37GzTZxMqoiyyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS4PPFC77662F02.namprd11.prod.outlook.com (2603:10b6:f:fc02::4c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.13; Tue, 26 Aug
 2025 18:23:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 18:23:56 +0000
Message-ID: <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
Date: Tue, 26 Aug 2025 11:23:55 -0700
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250826125912.q0OhVCZJ@linutronix.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8Vxe8Nm10V3qNdSj0f8msAM5"
X-ClientProxiedBy: MW3PR06CA0005.namprd06.prod.outlook.com
 (2603:10b6:303:2a::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS4PPFC77662F02:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bef4a41-093c-4053-022f-08dde4cdb7fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VHo5TDJKQ3FjNDZZYjdDTVZjblNVaVBvN3lvSGdrUzNSQ2JMSE4wSU5GaFlr?=
 =?utf-8?B?NGdnSXJqR3pzR1JmT1FYSEFod0IyNUdHd1FsdE9HTnhNdkFmOEl4TTFsazhN?=
 =?utf-8?B?Q2FaWkxzeVdaSVowQVB4QkFhSmhidWNwTWJMd3NyanBhU0dlMGQ3bWVFL1hl?=
 =?utf-8?B?OEovZ3Z5UjNmUnFLZG1XTm9Wd3d5blphL0p1QklhTlJQN003a0ZCVlVFVW9D?=
 =?utf-8?B?eUZYMG5LdGxPL0ZudytjazhOSURsY2lVbDFoZ0xXdWtLb1VTczZhY2ZWcGdu?=
 =?utf-8?B?UnpBK1JWMWlLWGpkZHJ5VHJFN3B2R245N2NCY21KZmEwZTFscXBmVTZSazEv?=
 =?utf-8?B?Y1NRL0JpNlBnUmp0aDBoaEhGN0pGdjIvd2V3UUp4b0t0VWUyd1dHSnRTWTB4?=
 =?utf-8?B?dnNkZjkrZ0x3RWgxSTlUeUZDcjVVV0tyMzIrMEdGNnBqSlFhUlEzZERLMXBG?=
 =?utf-8?B?c3hoQkdtVDZrVmV6MGJtZlFJRkJxVDV1YmNFbzZka0owdHRsUDVrMWZURFAr?=
 =?utf-8?B?TnpoOSt5T216MnpEVEo2YU9lODlqNzFYWTB2OFBlZjUwbytpaTIrb2lIOVJr?=
 =?utf-8?B?clZiVHdocko2Ti9nSTkyNzRTL3I3RWlOb2VEckVqampnbndDZWlpaXkvT0w5?=
 =?utf-8?B?aTNYOXNEeUptMmV1NFdENi9Pc29rNkVmTHdoekhMWkk0a2dvdWFaVGd5eXll?=
 =?utf-8?B?S1FnTS8yZ1l3bTFCcFc5cEg1SytOOFZ2OHhHSWYzcUFMK0tIOW9lRDk0Q09a?=
 =?utf-8?B?aGlmaW92NkZOcG5SRFNlOVR0SEFJTXFGYVlnb09oUU8wck9la0JUWXB6SXJB?=
 =?utf-8?B?TTlNa051Wm42SFFHKyt6Qm1UMnNubklNUDZxVmpiZGluMkZhb2ozcThXQmFC?=
 =?utf-8?B?cHNJNnZZeWI3bDV0cUdrRXIxQ2Z1SFpxU3RYL1dsZGJhN1ZHSVpWc2kwZGp6?=
 =?utf-8?B?blp5c0R3T3BKZEx2ck0wT292dlVjWEIzUzYyc0ZjUUVWbmxaV29SUlFFMTJE?=
 =?utf-8?B?VTc3cWI1WEQ4cWwxdW1xM1F5Y0ZBQTBGbjIzK2VLRVdlVmRmdC9TemxyMktL?=
 =?utf-8?B?Nkc3eHh4eWVCckQzSlpGbzR5cTBDQ1haNVd1UmhrN3YvUWtETjRqb1EwTC8y?=
 =?utf-8?B?R2QrMlh3R05ZMUhzYXo0ZHJPZXRZRGV3M1NWQTdHSXp2UFVRVU1lMVN1N1M1?=
 =?utf-8?B?b2M2eUROYys2cnVmWnpPbFVTV3hlTk5WSExZbTh1Sm1vakF0N2J3WWVhSnVV?=
 =?utf-8?B?c1p1U2dYSm53TlZZKzhWNkQvMHVhTUZObjFSMUJsSGQwcmhOalZsTCtiSExS?=
 =?utf-8?B?V0EvWFRZcHh0WUI5QWs3am5RaTRlQUVXcnRhZDl5UzRiZzRPRE10aEdhOVV0?=
 =?utf-8?B?SzRVVVlCaEpzNFkvZDBTaXBvOE1tSFoxTUpmQ2FET2IxTFVLS3FORGdHOEMw?=
 =?utf-8?B?djd6eXNKQ3hQeFp4MTROck45bzFFcW5CL24rVnY4ZkxUMUQxU210UkZCMXo1?=
 =?utf-8?B?aGxLdEpWWUdHRDVRNEVZajk2YlorL05aTG1XU2FyT3kxZlRnZmNDcHV4aVRu?=
 =?utf-8?B?S21VdnJEMkZhUS9odmJWQVVSZExrYVJsN0l5bDk5bHBFWW5lcTU4Sng2YVpo?=
 =?utf-8?B?TzZaZFM0QVlRYmtJTXh3OTIxNlUvWXBHRTc1NjRaYnlhWVhidE91NEt5Rmo5?=
 =?utf-8?B?Ty91QjhnRU83ZWFsbkpiejd1NVlJeUtpMjhwQUwxTXFjM1MyNGl2QllOK2hh?=
 =?utf-8?B?Y3VESlRjaWgxcEg0b2RLeHFjUjYrOTdOQ0JVQTV1OTdVVE5OTVZ2WG1rZGJs?=
 =?utf-8?B?Z0doSmVab1o0L0xhYzhMb3VWZTc0SXhUeEVwakFEVWlIajZaOElIdGdQakky?=
 =?utf-8?B?cnM5cEk1c2pvZmVtUjAxRmtIODdDM3lLczcraDlCakVGUmFmdkNjRi9NcTlo?=
 =?utf-8?Q?ZdfSZSKzQgY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjVicjBlRVh5L1hKOENVcFRRZmduQ09sLzJ5eWg3OHNkWldLZkxyNlFkRTFR?=
 =?utf-8?B?aUJWc2JjL2FjM3hHUWJucm9HNUFDZHNQL0lRZE9HTGdIejlzejM4emhwMUVu?=
 =?utf-8?B?Q01wdTVBUDJqRjlQNVQxYWlpZkFuTkNYdlBKSW9LenVQK2ZOOGFhaEt3OExX?=
 =?utf-8?B?Z0VWa2JlZlFvQlkzOHM1MUU1aitEdFduQW1KbmNKSC9LSHVyY21FaFFaaDFB?=
 =?utf-8?B?MUtNemhRbmRmelorTXNyczhLTGxMYldmblpwSHkyb2VnL0xGTTdRWGkwclhO?=
 =?utf-8?B?cU1IMWJwU21Bc2JHVVYyUmRRdzd3TzZXNnByYy84NXB0ZlZiZkdzdjNEdnlZ?=
 =?utf-8?B?NXJPOVo5S2JXY3FKN29rRVcrNHd2MnB1a0k2VzVrdDZ3dmh1YUZqV3Noa0hB?=
 =?utf-8?B?REdGeWpXS0VUTHRnRXp4QjNlczRHdWQ0dC9wNlcxYjRCa1NhbmxONlFsWXdi?=
 =?utf-8?B?bnlqaXZlajdGakpuNFd1dnUzSG5IUTgxOWxIandRRldPSWhMdks3eEtUQ2JU?=
 =?utf-8?B?Y0JnNFR5bURtZTFjV0NxS3pjS1FaZStxYkdkN3R4MFk0UGVqYW9DeWFxWG05?=
 =?utf-8?B?K3pUNlNpbFNSRUt5a3Exa2RHeGM2dEZleGZWazdnSXBzbk5IWnY0K09oWVho?=
 =?utf-8?B?SUZGdWRTc3hFTCt6VnRwalY2UXRMMVRDYk1mcDBoMUszVktWZDhwZ0NDLzFa?=
 =?utf-8?B?eXVTN1NzTWVOaFY3NHNTUXZYVlNyVWxqb0h2UDYyY2JYc3ZINEtnZURMSXZo?=
 =?utf-8?B?S2RXbUlaOEhBeU9PNUdBZ1FRV1pHU2I0RHVvUkZnNGppTmltK1lRSDlMS1Bv?=
 =?utf-8?B?UFVtQVBTYXdIME1wSU1CQWZ1bWo4Z3BLM0Y4b3ljWTI4Q1ljQmFtVStialds?=
 =?utf-8?B?eEVyT05nT2JFU2daQXVxZy9mY1h1SWg0enJXVkhWUFBhODM4MVhiQmJrdGRh?=
 =?utf-8?B?ZkptUjl4YUZ1YzRadzNVREN2QmlJQVFhZjBXQ1ZtQ3hNejZJNWJvOGpYYVJU?=
 =?utf-8?B?NUpyNU9LRHVqUUErOFBJS2JQNE13TFNUazRLcTlOVGhqckZmTjJuZ0VqZjd6?=
 =?utf-8?B?TUZQV0g1QVdYOUVNaXZMb2pMMkhwbGU4NDZQVnhkT1NIQmpyeVlLTWQybVVi?=
 =?utf-8?B?VnFad1hnc0RXS2FkWFJZNG9yVEowRzdYV2hZZkMvUUpvWkV2NnVTK3FRcjc2?=
 =?utf-8?B?K2o1ZUxINTNTcytPN3R5WEd3SCtOTVp0MGVyVGR6NVZlNnRpT1JGbkJvdklM?=
 =?utf-8?B?clk5SFMvZXBsRW1XbER3d2xaYXNmUXJ4RzlBdXRnaUJXcUcrNTRSUDI0eVYr?=
 =?utf-8?B?Zm5zaUZPZ25ZN3ErRnhyaVl5eFlHa2xJdHU1QlFyNDRScmpON2hFU3FIQ2hB?=
 =?utf-8?B?VEY3WkFMbHNjY2w3QVJpWCtkaU1SNWhpR01GMDgzSWZIS3doTFdkN3htS1l6?=
 =?utf-8?B?RkF5REFFNW1MdVprZHY4VzNFeEl4K2R2S0U0YkY2UllJUldxQmErb21Edmdr?=
 =?utf-8?B?SUhCanp4aGtCalA4WW5zUDhyR2ZFREEvbE9HV1FUb1doeGkxenM0eGpPWkQ2?=
 =?utf-8?B?Q0hDMGZVaksxNXc3T0gxc0tzSGhwU2JsTkhyM2VzQnpOREpSWGVBbGFvUVdj?=
 =?utf-8?B?cm1tZWZmTnR3dkhCVHgwc2JOSnR1OFRJZDZPMVdsMHZKajN4NkFXdkVaamJ5?=
 =?utf-8?B?STVSS2h1aXREMDB1eTk3L2hneFJuK3UwNEtZYUowci9kYXNLZ2NWU1BJVXAz?=
 =?utf-8?B?c3o1bGlTRU12Q0hWMmpDdk1jZVpUbzQ3UkFnWkR1cEhDaUVUbjU2VzN3VnVJ?=
 =?utf-8?B?aDAybHY4YVRhM2JxTEFuNUZNeHJwS3UyTk9JR05NOG9OWERrTWFZL3lhbXBG?=
 =?utf-8?B?Z1NNSlJ2S3Yvbk51NE05OUJtSDIrMnVsbVQ2THNNdW9mRG8vcllOUkpqeVJ3?=
 =?utf-8?B?Um8rRlBDVklMNTM2UHJ6OUVWMnF3TVYxWFhNay82UWg1M1RaeDB6dUEzaG94?=
 =?utf-8?B?dGlBM2R4RnNlMVJ1SGdqRjBkYmlWMFY2d3phdjBtVlBDSjVXb2hXOWtDU2FI?=
 =?utf-8?B?T0dEZHVYZXk2YkhVcWt5dkhmSk5JUDRrWWNzRW9oOGhhbnZUWE8zYVh5aEhi?=
 =?utf-8?B?RE5LaEJicC9LRjNhNUhabGVwMjNvTVdTd2t6YlFMenhGQzJIeVkwQlppbnc5?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bef4a41-093c-4053-022f-08dde4cdb7fd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 18:23:56.4503 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ZTYzAhrKrJ1Od7p9GuSSlFH/19c0wo4Togi8EHaeRDkmbCeB9yBMWNMtQnFVMkLZQgGdAzEIWPKjrxuxCQT1EfPHoJH1iFGlyEc0GedW9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFC77662F02
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756232641; x=1787768641;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=rmYQKt8W90JX2YiqEgzkvJkYTegukrDXv+5QRAM4lUo=;
 b=dXPXKAJq/PkS52WHkhUIlEFh7vCFlc4m3gfJwK+oz/ln+JJDl7VD+DB7
 aoXL2wOzVShw7qQH0+fmuijJmFKq7nkQBhaO1SveKPkLuRLz1u2K51Cmz
 4LMr5bdiJVdaIzpf8Sdi+nHZr+Uzq3KsLzq4X/R5o7xwkXzpgtfsK9Y60
 8LztXJJZtjv4meRqPlaeXWyFOEt7onQBsXFTyDWM7nrxnnW7OIGo//im4
 a8OkZed9cn6bVN9ML04Dj/H/m6fUbcAn8tYsRXsKVr+q3CXFMTdpzJbsg
 xqC9zOQgEIIH3z/la27zWNJ0xEBruhAjyTMNdSqnR3/kdCIyOSxxs3SKK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dXPXKAJq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--------------8Vxe8Nm10V3qNdSj0f8msAM5
Content-Type: multipart/mixed; boundary="------------XFhp8kAKCz8QDz6uuIiFbFhX";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Miroslav Lichvar <mlichvar@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
Subject: Re: [PATCH iwl-next v2] igb: Convert Tx timestamping to PTP aux
 worker
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
In-Reply-To: <20250826125912.q0OhVCZJ@linutronix.de>

--------------XFhp8kAKCz8QDz6uuIiFbFhX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/26/2025 5:59 AM, Sebastian Andrzej Siewior wrote:
> On 2025-08-25 16:28:38 [-0700], Jacob Keller wrote:
>> Ya, I don't think we fully understand either. Miroslav said he tested =
on
>> I350 which is a different MAC from the I210, so it could be something
>> there. Theoretically we could handle just I210 directly in the interru=
pt
>> and leave the other variants to the kworker.. but I don't know how muc=
h
>> benefit we get from that. The data sheet for the I350 appears to have
>> more or less the same logic for Tx timestamps. It is significantly
>> different for Rx timestamps though.
>=20
> From logical point of view it makes sense to retrieve the HW timestamp
> immediately when it becomes available and feed it to the stack. I can't=

> imagine how delaying it to yet another thread improves the situation.
> The benchmark is about > 1k packets/ second while in reality you have
> less than 20 packets a second. With multiple applications you usually
> need a "second timestamp register" or you may lose packets.
>=20
> Delaying it to the AUX worker makes sense for hardware which can't fire=

> an interrupt and polling is the only option left. This is sane in this
> case but I don't like this solution as some kind compromise for
> everyone. Simply because it adds overhead and requires additional
> configuration.
>=20

I agree. Its just frustrating that doing so appears to cause a
regression in at least one test setup on hardware which uses this method.=


>>> Also I couldn't really see a performance degradation with ntpperf. In=
 my
>>> tests the IRQ variant reached an equal or higher rate. But sometimes =
I
>>> get 'Could not send requests at rate X'. No idea what that means.
>>>
>>> Anyway, this patch is basically a compromise. It works for Miroslav a=
nd
>>> my use case.
>>>
>>>> This is also what the igc does and the performance improved
>>>> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handlin=
g")
>>>>
>>
>> igc supports several hardware variations which are all a lot similar t=
o
>> i210 than i350 is to i210 in igb. I could see this working fine for i2=
10
>> if it works fine in igb.. I honestly am at a loss currently why i350 i=
s
>> much worse.
>>
>>>> and here it causes the opposite?
>>>
>>> As said above, I'm out of ideas here.
>>>
>>
>> Same. It may be one of those things where the effort to dig up precise=
ly
>> what has gone wrong is so large that it becomes not feasible relative =
to
>> the gain :(
>=20
> Could we please use the direct retrieval/ submission for HW which
> supports it and fallback to the AUX worker (instead of the kworker) for=

> HW which does not have an interrupt for it?
>=20

I have no objection. Perhaps we could assume the high end of the ntpperf
benchmark is not reflective of normal use case? We *are* limited to only
one timestamp register, which the igb driver does protect by bitlock.

>>> Thanks,
>>> Kurt
>=20
> Sebastian


--------------XFhp8kAKCz8QDz6uuIiFbFhX--

--------------8Vxe8Nm10V3qNdSj0f8msAM5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaK37uwUDAAAAAAAKCRBqll0+bw8o6Mms
APsHaXZeqHhaGRZpl6JkEzTlUO3ptBIrdljEheP3LQp6OgD/TnD6aO9o7xC19F/354kposgJwv7V
nLDavWY3VxHPNAA=
=5e4f
-----END PGP SIGNATURE-----

--------------8Vxe8Nm10V3qNdSj0f8msAM5--
