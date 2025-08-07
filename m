Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 854FAB1DFE3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 02:01:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31E0C404A1;
	Fri,  8 Aug 2025 00:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FJNZDOVeWmXp; Fri,  8 Aug 2025 00:01:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D93D404A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754611270;
	bh=KP0seFt8oayjJLYpjoETc0W5FJcJUK5myC71v9YS2Tc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s0s0JOrnTI/3oIfKGIbxauaUe7g04eEpGGt09fSIY7bGBj1HcCzcJIqLzafVNVrbR
	 IXB3rt9Z9RVbwNmFtiJf9/HP6RLe4shRwfzU8AMMTovgJKQyAmP3BmiwvW5J8ZruWL
	 JebVI7OHzArBG0G2g5gcxcaS1Tw+U+r2MO656iSYi0D/BXYMEf7kVAYxTxpCfFOmgM
	 rux9vwN2WioZfKzA/UM+6D3LJcoS6OIiUBXxc4zlXNViicjW8UAcnvrZz5I2/br1Qp
	 2dGuVh3+v1VJfm74K9Xcj4EuXDyPksNWm9FnNbXES+0Q5Y+ZBQHEllKicz9m85tgV5
	 k0Tz53Fp+W4qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D93D404A5;
	Fri,  8 Aug 2025 00:01:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 074FE31
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 00:01:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 048EB6085D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 00:01:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIFF_n2MM1q4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 00:01:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5921A607FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5921A607FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5921A607FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 00:01:08 +0000 (UTC)
X-CSE-ConnectionGUID: fCeiFDpWTI+AZHwaRoTtog==
X-CSE-MsgGUID: jSK5UcqaSTSreOUagikMVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56163461"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; 
 d="asc'?scan'208";a="56163461"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:54:01 -0700
X-CSE-ConnectionGUID: blgzsFdTQbK8ykSIAtOwQQ==
X-CSE-MsgGUID: ZFzufKfQR+Gdz5oCRSXfhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; 
 d="asc'?scan'208";a="170444854"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:54:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:54:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:54:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.88)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JD0POgqbS6eqlwXDP7owiRh20IXMnabBU+TikMqRqdFz5quawR1OU0Wk8oR15tqVTlCxK7+DXttUXTouVK07nhGtcmEnO1zsOsApj5kFS1Mdvuv89KKtNNc6ECBi07PmWOWjMaL7qRAhBqo2n0Nj2PxUyXvYGgB03LAGrwUDkYEKucmtREoI6iJJmPsow9nnlYFjQ3ms6FsKkymo4NiqLy1uMPZSsI5mEv6//P97X/LSZAPabsBitUGskWqnX69/bnt0/e3hKtikaExVBut7GScrwtdCjmKnhmQfMrnOA7XuAz1X8dAKbxxsqoeAN3d57CHVVkhXzM5TRs5fJ4GmbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KP0seFt8oayjJLYpjoETc0W5FJcJUK5myC71v9YS2Tc=;
 b=ls6W6NCJRDx2NaG8nrTzQThT31/ZVCIba+eeFGOPB70bs5rQRh9LEK7ulcF90kdQp31D3M8VqKx6oyiHBPSHK+JO+xHtsEUpwJs3Fl0rDgWJqiDK2wF/dm4VA/1bkGrn+qe3NXqmzKOwpdBpiY6bvvPydbO3XkD0KF2/ntftbzgG5GZSuis4/rFZRPzBdoHJINe5LIr36VabIsxQCcd4q2NO5g6jcI6+/TJ5w4r3FGfsh8yAgetZRmmpf7lCNIzm0JYWXVH9a/09I5zZHTSO81TeUn6Iiijb0qeHpWEaQrEC2/p3+CuWkso5ABnEo6WK3DGJKb3fRPvQ8yBiB7h3aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:53:57 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 23:53:57 +0000
Message-ID: <9b908d81-103b-4eba-b515-fe6975e9a479@intel.com>
Date: Thu, 7 Aug 2025 16:53:55 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
 <7961b079-fb26-4541-b7d3-63bddd484e2a@molgen.mpg.de>
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
In-Reply-To: <7961b079-fb26-4541-b7d3-63bddd484e2a@molgen.mpg.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mders8zg9th1fkLpmShHz0Dn"
X-ClientProxiedBy: MW4PR03CA0134.namprd03.prod.outlook.com
 (2603:10b6:303:8c::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB5988:EE_
X-MS-Office365-Filtering-Correlation-Id: 93a9a0a6-e6d9-48b0-be4c-08ddd60dabe6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGkwd1RlOEVDVlFWUjUxcE9sQ3lXOXp2RzVPRnp0TFduRkhUUkdtK2dvY2hj?=
 =?utf-8?B?WGZUeXU1T21DM0R3eTA2UFZ4WnRCVWRTR1FiQVlJY3R2ZkVSVjhlSWxtUEl1?=
 =?utf-8?B?RnljMkNiMGVOTmpxdlpkRXZvUzdQUmkyRmNPSGR5UVZ3Rnp4c0NxaDZVZUMr?=
 =?utf-8?B?OERVVmJrRW9ndnE3QmtpUVhZdWsyYkFBN0VZanNxT1lvS05xa1dtYjVIV0hS?=
 =?utf-8?B?ekJEbVNKbmxQNGNnUHpPWUdqaENVQzFuTkV2WWZwWWNpb01nREhhSkIyTlE1?=
 =?utf-8?B?WGhGWUY4RHBSNnF4NjVDKzd5eEFEMElyVm1IeW1XczRVSW83c0w2alR6OGp4?=
 =?utf-8?B?TS9TVlBwVTNxRjQrVDZUUENzREtJbisvdVBJbGsyZ1V0U0dVbkJhUzBBQUxI?=
 =?utf-8?B?TXRrbkNuZnBGTnBEYVJLRkpoTXlBQzdrVEg4d2xESjNLK0ZYNTVSQUJaQlcr?=
 =?utf-8?B?TFZFcUZwOGlDMXdqR2pPd1pqTzBsRXZQZjhaeFdyUXlYdHYzbzFvZjMxdGVy?=
 =?utf-8?B?OW9VaXpwRStRUmZCRkJhcFovUVVnSFFYdExQamp6R0dvcmxmUnJ2YndBR2dy?=
 =?utf-8?B?WUtwSlpBdVV2dWJaeXh3UzNFYmN0S3d0VGZLM3NoZWsraG9WNUpwTjcwb2Zp?=
 =?utf-8?B?UXQ0T2lxTnRvU1ZYbkFuY0hveXZWcTBKKy9VYkszb3AwLzZLejJ0bXpVL1NQ?=
 =?utf-8?B?TVliQVFqcHJMUzZtT09PbkRCaTNhZ0dXNVE5R0JCd2plUnhZS3dLZXhGdHU0?=
 =?utf-8?B?MlcxdXYzUHE3dzd6Q2F1c1Rrd1Q3S0hNbFBQYmYzSXdpWEJTSTJLWEYvY2hV?=
 =?utf-8?B?MkN2YlJFQVFENTMzalJJdHYvdEtYd0pmVGRiYWFyc3JlVytUUEQrMHFEQ0lJ?=
 =?utf-8?B?WCt1YUlKa091RExIY2dpOEUwZHZPRldPS1ZvTFI4V3NKNUh6VzJLRFAvL2o1?=
 =?utf-8?B?UFJkdVpYblE3VFJ5TFVYVjVvbDkxVHl3TGtkdjc5QVU4aXZoTEt6M2tkWlZ6?=
 =?utf-8?B?Q09rRnc0empvUHdvZGFzZS9YdXZOMHFuTlRDMDhSM1BjVVR4Nmg0SDFwRWY0?=
 =?utf-8?B?U1hiMlJZRzErVktSa21NVEt0ZW1MVW55TGgyOVk0N3M4NXE1OWdoZEhFbGpv?=
 =?utf-8?B?bCtoZVZHVWowNmZVN0EyOGNuMC9LSmlxUXpXTWc1VGkzc1NUak5jblRBTHZp?=
 =?utf-8?B?bGNMSjZwVUtUZ0pPdmp0U1hQdjIrNVBEQVcyTlhjN2dtVW5uR1M5UERUelVm?=
 =?utf-8?B?Uzh3NnM2QXYxM2NYakF2ZkFrbW5rUkVyWkpYNlMxV044OHhncThPWklubHFn?=
 =?utf-8?B?OEE2NGpzRERvd1M3a01XT1h0cUdVeXBzVmVTT3FPTDlBMUJaVWV5dWk5TllT?=
 =?utf-8?B?eW44N0t5WmVLTDhEeTNOTkdnNmZLbXk1VzZWU1IrY25Hc2wzRzRpT2pCcFJI?=
 =?utf-8?B?Ykl1TVFBYWV6Ykg5TFVVdzg0NmtTTFp3UmpMcVlSS3F4UGc5bis2Q2Z2V1Y2?=
 =?utf-8?B?S25mZHdock8rUWpoV3hZQkhldk11WmFZMjNvMjlqTndmcmM0amxrcVBleVdR?=
 =?utf-8?B?MnYrRHR6ODhVVnVlblAvS2dWUW5hci9QdVdkY2pmSzVjUktZWkFNOWpOZGxF?=
 =?utf-8?B?cFEvWEFSZGw4MzVUZFFhQmVrNG5Ia0pNbS8rWFQ5WUxtWUVzSHFvNkowQnlZ?=
 =?utf-8?B?NHVMV3RwM1g5dW52d0E4ZnpBbFI3SEVjUDhLQmJmeUR1WHRUeHlaWFFoNXlz?=
 =?utf-8?B?aVdDRElwa0Fqc2RkMlBxRkxYK0dzc0U1NzNOTGdTM2FnNkpMRFBxZVJXWm5J?=
 =?utf-8?B?YjZhc3Y2YkdMZjVuQUp4UlhDSSttYU5hTnUyT2MzZ213ZGU3TFVtcmdZRml1?=
 =?utf-8?B?TTV2cTJtK0UyQ2N5TzBZUjdMMkRtZzRLeEVhc0t6b3BGbEZRd3p3bFpNZGdK?=
 =?utf-8?Q?WlFfkDMtsrU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3lZemFqT2UyRTB6Yy9nazAvMGk0TnBmSEpqZG1DUjNhbElSYUJ3NkdJN21F?=
 =?utf-8?B?c21VUHZwL3dqVU84YUY5eno2amU5MTRWOXRsMTE3MGpuK2Q4dVRoMzBlUmwy?=
 =?utf-8?B?VVREQjc0T1Y3ZlpTRWpTUmIySHhIYVdENWFmUWJDRUoyUWpFWXVZK2pzbU9n?=
 =?utf-8?B?S1FoOGt5TGNqWDVLa3lKSi9rMGwzZXorUzlOUlJVeTUrLzVCWWsyajVZVy9E?=
 =?utf-8?B?ZGNCczBwWXBaTEFldEZ5RG1Vdm1Xbmtnc2Y0MHQydFdVczJUNm9RWStGaktD?=
 =?utf-8?B?bGdBdlhXOHk0d2pROGJkeis0dy85ZnNKamFmVG8wNmZqbUZTdVdDenI3aTlQ?=
 =?utf-8?B?d2YrT3pNQzdhcmgxUFR6Y2NtV3dqWWxYNStnY01MNE1MMUNxQlNTbHNNaDU5?=
 =?utf-8?B?enUyTWRJUTI5MGVsV3VQUlkyTU0rbW5nbzVIUlVJdWFPUERzZFduZWJhNHpE?=
 =?utf-8?B?Z1k0YnhJV1VJVkV2NEtIUktSTnBGa2dlZTRPNi9qOXF5SVlsTjlZek9CZFVM?=
 =?utf-8?B?ME56T1FtOG9VVkdyTUsvRDNIcEE0KzhDYVhZR3FqUlBlUFNTNVFsaVBEcjNH?=
 =?utf-8?B?N1Y1dXFMQ2xnWnZNOVlxNlBQVFdzVHlEUHRyaW16dFYvQ05VNUZhaFBwWXRF?=
 =?utf-8?B?aDV2M0thUW90UVBYMlp3Ti8wK1htVXhacjNONktmdzg0bU5tM1cyRFVzMDhp?=
 =?utf-8?B?d043Wnc0eU9Wc0F1T055ZFFsSVE2UDdueW0vMzNiR283UWpkWENtUnlLQUNZ?=
 =?utf-8?B?czVoTHpZUS9QaEk4em5aR1M3bzF6bzJySHErN2F3VUJxUzVaZnZGRnlWWEgx?=
 =?utf-8?B?SHYxWGxCRmhyOThRK01OSEZLOGFycm1lakY3RmpzZk5XK1kyZnBVSHdDeGhG?=
 =?utf-8?B?NjRDUFRWcWNrNCtHY29QMG42aDZQbFJoa3hjMTAyRFZhb1BkNWdUU3JHck1G?=
 =?utf-8?B?dEJsSXk0Y0J5dDBUbGFpYjNKSFdGZGx2UEFBTXZZbmVWUnNXNVFmZlI2Z2px?=
 =?utf-8?B?dlduRWhoN0lWTm1VRmFKY3hwUXJLRDIvcnVXV1JxOHBWN2tudGFIclNXM3Jq?=
 =?utf-8?B?Zk5ic1RoNjV1cC9PTEVNZ1pSTWxkYnNBam4xNCtMU04yZE5xTzBzS0prLzZM?=
 =?utf-8?B?SVkvdUQ2b3ZqTkFqWW44dFNaai9rczNRVXAzL1lGL1dqS0o1ZXFOMjBTTitX?=
 =?utf-8?B?YTBKRlBWS3haRXBSUWoxUTNyYmhrTUVsVWhZWHN0RWZRTEZ4WVpSeHdzVENU?=
 =?utf-8?B?TEp2RjQ5UFRaMkRWTXZrU0dKVTQrZFg1OGJZbkwwZTgyTjlMUm9ITGRCMUc4?=
 =?utf-8?B?cmoyNzN6cnJoa2NoY3JWbGwrNDUwUmhPNUl6cC9FcW1oY0o4KzNRRHpGWjhU?=
 =?utf-8?B?VElETXB1b2dyMG9VT3N3NFdBKzBRUVp6YVBweFlJVjF2RCtURDFyckY5SHJI?=
 =?utf-8?B?djFVWCt2MzlVa1BvTkVrUlZJS1VCL1k5cjZZMTdZZHpENzNqdjB2L1U2YkI4?=
 =?utf-8?B?REhPcjNXbzZqMlpoZjh4b0hZVFdpajhRcmg1Y1R4R3pHc3hzQ1JWQUw5TXcx?=
 =?utf-8?B?RmNnVUpyY0QvUlRRcnl1aU1PaFdDcms2UUh3Y1ladjJnc3NnL0RsTXJUSVF5?=
 =?utf-8?B?Qlk1cEErdU9OWkZDM2NsR3BPTzNMUWhGMUI4Qlg3MFRGeEhwUEg4SG4wZHR4?=
 =?utf-8?B?MWt6WjJ3S3d4dkxwQmhmZG03S3NYS2puS0dlZzFDMzZsaDd4N1NtOHllczRk?=
 =?utf-8?B?TUc3WGIxWTl0RE5PRTNraGlROFNuUzdPdzNxZi9vbGdYYzFBeHorczgzWlI5?=
 =?utf-8?B?RGlnd3pxaFFDbENoLzdHNGdDaEZyeEplYWFVYmRwRTlyQ2czMVBjNVBRRjRu?=
 =?utf-8?B?WjcrSnlNRkprcUVYUHIvKytWVGZhRyt1ZVR5ZW16aFY1S0daalF2VjE2L252?=
 =?utf-8?B?V1lkN3pDSE9PVjZiend3VElLZkk2UWptUHZLMU1xbWVnZkxEQmVFdHp0OENO?=
 =?utf-8?B?Y2h5LzB6L2l6cVh3bTExdHFlT29IRERNRGFPOFFnYkdScnBJMnlSajY1bkEz?=
 =?utf-8?B?UmdoQmlPUTh4bS9jOFprVklCNnFkVVIvbWd5Y3lkUVJnKzdvV3d1aUttSnMz?=
 =?utf-8?B?ai8rcGVyMC94ODB5aG9tVzdndEFqZndHUTdLblRDcHNZaXRUWUN1ZTdrWWh0?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a9a0a6-e6d9-48b0-be4c-08ddd60dabe6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:53:57.4031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vjujneuq39z1T1zJC9SBign8UT6P/OjuUOjdNSlTfFZgu7orVCb225Y6sBnlbvqRTuFpcDuhjUpJLVrISDreFCPYSFKbJ02yrmug0X0iNxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754611268; x=1786147268;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=KP0seFt8oayjJLYpjoETc0W5FJcJUK5myC71v9YS2Tc=;
 b=iXEGjH2qMEGHFAYAUOX8FPdxDmJ+s0tryh50QQNgVBtnSyndIaDLGF5R
 GzSKaIKjv2CIEMbqolRnYJgg2vDJdE4vWNlG5jVHTxO619u6C32/nMPkF
 m2H2m97kyRYp86qykQym2vCG1ODFqT3LTjHm4n8HTpUQqhPGL5PcUE7GM
 /DU3sfc00NLUlX6OgGUzoJPAXn1oBiuEkbn5Gplu9Q8PmlE7qzVV0+WIf
 kzkrw7fGtf2HTdfzHBccKAke6Y4jfThqXlHqfkVtE7bZmlY0EfV7w2L5H
 VQtroOdPYNUVlHr8JZIze1oHTna0bnraW070fWiErrLNL9Z6lQB5md0ea
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iXEGjH2q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix NULL access of
 tx->in_use in ice_ll_ts_intr
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

--------------mders8zg9th1fkLpmShHz0Dn
Content-Type: multipart/mixed; boundary="------------vQ05fk0Oe9JyNJLvVHkcx3Ji";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Message-ID: <9b908d81-103b-4eba-b515-fe6975e9a479@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix NULL access of
 tx->in_use in ice_ll_ts_intr
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
 <7961b079-fb26-4541-b7d3-63bddd484e2a@molgen.mpg.de>
In-Reply-To: <7961b079-fb26-4541-b7d3-63bddd484e2a@molgen.mpg.de>

--------------vQ05fk0Oe9JyNJLvVHkcx3Ji
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/7/2025 2:32 PM, Paul Menzel wrote:
> Dear Jacob,
>=20
>=20
> Thank you for the patch.
>=20
> Am 07.08.25 um 19:35 schrieb Jacob Keller:
>> Recent versions of the E810 firmware have support for an extra interru=
pt to
>> handle report of the "low latency" Tx timestamps coming from the
>> specialized low latency firmware interface. Instead of polling the
>> registers, software can wait until the low latency interrupt is fired.=

>>
>> This logic makes use of the Tx timestamp tracking structure, ice_ptp_t=
x, as
>> it uses the same "ready" bitmap to track which Tx timestamps.
>=20
> Is the last part =E2=80=9Cto track which Tx timestamps=E2=80=9D complet=
e?
>=20
Ah, yes, I think complete is the right word to end this sentence. Will
fix if there is a need for a re-roll.

Thanks,
Jake

--------------vQ05fk0Oe9JyNJLvVHkcx3Ji--

--------------mders8zg9th1fkLpmShHz0Dn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaJU8kwUDAAAAAAAKCRBqll0+bw8o6Kx3
AP9LKVOSIv3wHyayDGyhe6jaPH2H5a/fHJ8Hyc63dfSVtQD+I7Yo0s9kCKryHv+7aYycaG0O2JzK
F3WpJ5BbqX764Qk=
=2aAC
-----END PGP SIGNATURE-----

--------------mders8zg9th1fkLpmShHz0Dn--
