Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E48B174D3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 18:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B85C429C4;
	Thu, 31 Jul 2025 16:18:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aXsy6VtgapNV; Thu, 31 Jul 2025 16:18:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 743C8429BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753978738;
	bh=8nxinIOdBW/qM6PSEDaM8l64cRnG3zLo9mf0thgq/w0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q1auoLy1wasB4XExY4cIbRuodYvXFGZPsS+3lHubwOyjhImqbT4ZyykICyqzoFzPm
	 m2ddHsmIzQGmqLCYLBMlTSLx11h/fpzBnqyoMZwUSGhDVuULc6iH9dloed2oGKGZV7
	 O4E2r+3wIFFW3oBhC81RrmpNz6HSaRYFy1P6NDV96tIc+jCLPwrmS+n2U148C4j4JH
	 4nwGpTbHmPmA69zar24U9ynAw6jxjXXTFuCHz6NBJI3PNseL92LEnHjV51ryJZrPk6
	 V7+eMfcf/78z+mfdle1vqYLWwn29g5t5fPbGa52BDfHdGLDpBiU9okatkB1NV3VdZT
	 bQkST9eK/KTeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 743C8429BF;
	Thu, 31 Jul 2025 16:18:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DF1FE160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 16:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C56D860C22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 16:18:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKbLVdlLoxsK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 16:18:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 23FAE60BD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23FAE60BD3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 23FAE60BD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 16:18:56 +0000 (UTC)
X-CSE-ConnectionGUID: 8yCV/MCzQ1a0lVz4gHm5kA==
X-CSE-MsgGUID: zFEd9ERYSn2PB+cE7lEy1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56240619"
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; 
 d="asc'?scan'208";a="56240619"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 09:18:05 -0700
X-CSE-ConnectionGUID: 0ffHUUDPS7u5AdoVBH9CwA==
X-CSE-MsgGUID: 06JQ2tMzSYi+9lqySfyGrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; 
 d="asc'?scan'208";a="163755583"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 09:17:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 09:17:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 09:17:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.44)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 09:17:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w8ffFgfY0WYgk+Q6yvsaeLxChU+MGT4BV1/VyLzjCw+DXuNi7VgGKShBIxSUbPm/ChfB1baMlheuIEawNb+1QH7Y6SUNxwoD98sQZ0cSbcJzCFP8lrTBRDcx0ctYdqPF08cR9bOoQeZMqZAnwMbfv2Vq8jSuyQkRGTommSjh/Z5h95+8qtuBEeUXRH7mLnTfEHUWQXCb1AQfhQTyEAPIE5Qv50o7Di/xK7sOu+jYMdooAxQ8Bwjh1XcMWA85eA5LteDmMNND8/iF05bAKA+KTujanyRX6rwi52E9avEHM1J7Z1662CWi4bWwfJeEVDZNstd1RRs9Az+eLShEgRQHBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8nxinIOdBW/qM6PSEDaM8l64cRnG3zLo9mf0thgq/w0=;
 b=ey7xRvXSkkhfpVbLMJinHeAiCt7XiJvQQJwXRZxgk95GrOusJm8qNDHpEipwSk4n92i5U0OUGhICcEffMxTusHFmUt2h8V6P4d4TRyzlAqXHX8TqRjMgedrgOWSw8/91ltva3jiKbZh4FhGVk7awJf/a26yExaJqNmCycp7bjfdo+wkxjGo1Zn40IUoP+2ykPOkiJFnrYHCSilE5ipTRvTMgWbigDUS7QLmsjKm0f/7tTciq9ZCjs2Ess68mbGYb/cAadrPvJ5OJADzI73g+oc6mZRcAdDRKf0ARRl52OreLfnuFApt8j0eGe+OUhcPCybFF6NV7bkC1orfqaP3WVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6649.namprd11.prod.outlook.com (2603:10b6:510:1a7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.23; Thu, 31 Jul
 2025 16:17:54 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8989.010; Thu, 31 Jul 2025
 16:17:54 +0000
Message-ID: <2f53087a-3c71-4844-a5e7-9d01dae0d6e9@intel.com>
Date: Thu, 31 Jul 2025 09:17:51 -0700
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <aleksander.lobakin@intel.com>, <larysa.zaremba@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-3-michal.kubiak@intel.com>
 <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
 <aIuSPt5BGOM-d9Kd@localhost.localdomain>
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
In-Reply-To: <aIuSPt5BGOM-d9Kd@localhost.localdomain>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KE7l5orKiKtIuwhumvGzhwZt"
X-ClientProxiedBy: MW3PR06CA0011.namprd06.prod.outlook.com
 (2603:10b6:303:2a::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6649:EE_
X-MS-Office365-Filtering-Correlation-Id: 5357486b-7d97-462f-4c2c-08ddd04dcd19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmMybUhUc2pXTk5ZVys0Ny9lUEszazYvY2l1TDZQV21mVnBTSFhUUW5LdFBV?=
 =?utf-8?B?dm8xbC9UclY0RlNMUllMaFJIOEo0azhHWWdERWo0QUZ6MllEM1VTb0MvVUZJ?=
 =?utf-8?B?b3FmRnpkMXlKa3JHNkhhcjhOdFNwbzl2RzFGdDdOQjVaTmdwZkJDNmV3QzN0?=
 =?utf-8?B?TVV4SnZLTnpVK1gvMUdCTlUrU0VTYk9yZ045TTVqYTE3bS9uMWFNMzdlSDVZ?=
 =?utf-8?B?dDdmTzRzbk5NbHlVaWJRK0hhOFp0OEZybXlZUjQwUzJydzIwSWk2bXo5T2FP?=
 =?utf-8?B?bEVkcjhoSzUvU0hFdGRpQzJlSDZsdlBhMDN4clZQNlRqQkUrcHpvWEZvSnd5?=
 =?utf-8?B?eHJFVU9US2xLNU04djh0b3RnejQ4QVNYSmtYRUFtajc2OHpkY05ZMFVqQm55?=
 =?utf-8?B?TWNkQ0gwSjBPeTJKbjJDbkgxUVBWWXl1OXdxWjExOWJ3NE9GYzFCU0FUOHNx?=
 =?utf-8?B?NXdBbjZsK0VvVU5obnYrY2ZyMHIrcHZEa3NZbTMxNy9UVVhkdUdpMzByZnR2?=
 =?utf-8?B?aWk4bUpGNzcvaG1WYXpKdDhKenRPTXhSeGt4M0F6ZEQ3VlFObXQxRGtjdE9Q?=
 =?utf-8?B?eHFiLzBDYjI1aHFnVk1BdGUyWWZWM0RLV1VlNnUxSTRuTXhQRFY1MFBoZWll?=
 =?utf-8?B?eTJVWENRSnE1YnMvWlhJb09YVEZYRTkxNFlOamYyaDF4MlJQanQybkhkWm1k?=
 =?utf-8?B?MzJrM3lwWGhGMW9HWHRZVXZIL1VUOUtHNks4ZzM3OHEyY2tYZjNiT28raGhp?=
 =?utf-8?B?a0Q2SGNrSTRHc3FCSjB0TklaYUJJbHoxR0o0Q3RKbWtUMVFHMytpSGpDZVFX?=
 =?utf-8?B?VmhUUURrcHFFcTEzR1o1OERJYXh2ZUtRdnkxNllicHh2NEt0OGl1Tlhwc2Qr?=
 =?utf-8?B?MkVyZXQyNFlqQ0Y2dlJ6NjZwdi9hR2pwT0hIS21TSE1HZitaN0xFeFRqOElm?=
 =?utf-8?B?cndJM2pXT0lBK1BpSEFNZ3NaK2FwR3p5bldGbFg1WTR4c05FNUdFRktqUTEy?=
 =?utf-8?B?Y0VoSDZxWnp5aURMZXBsT00yWVU1c1h0OUI4WitxVnZOSWtGYmdtbzltNm1R?=
 =?utf-8?B?a25KT0JsWm12SGZYTzQvUDhYbGM3c2phUTU4dG5MbkJQUld0Y3J5QTNQSUtM?=
 =?utf-8?B?eFNtRS9kSUF5aFdxM3krM1E0T0J4Sm0rVlpxeVZEWXlzQXJ6cXhKNlJaRHJ2?=
 =?utf-8?B?OWwyaVVSMWJCNjhrYmNHM0pzOGpvaUkrcVR6QTEwSU9sdHpBcGQ5S05PMkVO?=
 =?utf-8?B?dTRUQjlHTTJaQVhqd29HTUlYU3NCQ0llelkvdXVUS2VNMkZXeDZxV3dwMG8x?=
 =?utf-8?B?TTRTZUZ2RGFsNTJjUWZnZjVCazN3UEtocjk4bEVCMFRCRGtvQW5VQlVTeUNw?=
 =?utf-8?B?Sks5RDJ0R0tlTStXWWw1UFlxTHZ5N055R3RLa2twQlU4VkVHZUltck4yS0Rn?=
 =?utf-8?B?SGdLZitoamxnbzNzNG5vU0xIN1FoZjhWUU5jaE0vRjlORDdGQUo2RWZqUHRV?=
 =?utf-8?B?TUFPdUpxdDA0YXA5eVlScTg0TGdsU29OY0JyWm9oTE5qdFZwakw4UVRHT3dP?=
 =?utf-8?B?ZmozNk5GYVRBbDdJN3h4cFFqZDl4ejVMa3FLYnFuTW0wRjBNdzQxcGhNbkp5?=
 =?utf-8?B?K3JvZXduTm01cTJiK0RBb2RwNzhKMVFYa0xjMnU1VWlFNzJ6OWcrblYxSmVp?=
 =?utf-8?B?VkxVSTI1cFpuK3dwRWp5eDF5U0M3clZqdEROM1dCMDR0WlJjSzNnbjk4M2pj?=
 =?utf-8?B?bS9uL1I2OFZacVJoQ3Q5aTdIN0dTZ01CaWhJV1pBc3M4cWtSOFNyd2JHbXhS?=
 =?utf-8?B?djRPZ0Z1S1JoQ2ZDTXpZN3BwcHRzeVAxSlI2bzdiVnlOdHU3TFlGLzQ1bTFN?=
 =?utf-8?B?ODl1TStyV2N4YzZtOTB1OVlmemlJNkhEMFBEekF4WnN6TzdGR29Qay94VXBl?=
 =?utf-8?Q?FSNGQbpN+kY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y25kUFBqUDF5aGZNUGk2Nzk1aExwMzQxQ3M0bmdrTXc4MTZiVlNJNmlCWkM1?=
 =?utf-8?B?STBSUWpjRUxwSDBIYUFJK3EzWHo1ZnpPSkNtT3EzN1QvdktxWFI5OTBJYVVG?=
 =?utf-8?B?R0VLMEl0Slp2SDlzNXY0ekFoSVh3aVVEUnRXVUhLOVVSc1FhUzBEMW5QbnVp?=
 =?utf-8?B?THUzR1ViYTQ1RG9Ua3JCWWRxZjc3M2xpemZHRnBKeEhxV2grMzVFYzZJSkpR?=
 =?utf-8?B?N2NxVzd3U2NYWnVhVEJGZnR0WnRMR0VnR2xTSmdNZlRqZ1hFMGhTY3I1aG5w?=
 =?utf-8?B?d284ZkhqSEtSVG9uYjAyVTE4RGw4Zmc2dHIzQXZXMWNNcHQvNm9XOFVJTmVx?=
 =?utf-8?B?WjBzL2QxalBER0R2dm5VUCtuRzJlS2VqUm5RQmFURHpqVVlZdHphWFJRbXNJ?=
 =?utf-8?B?SUIwZ2Vwd1BkR0h0VTlKbHBTZ0ZmN3BPZk5aK1dGNU5YOUZlakk1WTdFRllP?=
 =?utf-8?B?ZVQ0ZVZFMFYrdmpwRlhacUFvZDB5S2NRL1VkNTBvU1VqUmhVY1dHMDdJdGFO?=
 =?utf-8?B?VmJSRXVDcDdGVyttV3ZiTVNtN3JVRHIreDJSamVsbTdMOVJ3ZFp3UWVLQmpY?=
 =?utf-8?B?NDIzTWFMa0xZcFlLUW50U0JpTzNlNTBFSG9wQmpZN2dUVEM3dVhrU2pDY25J?=
 =?utf-8?B?c0hraFJITEJ2WFhBWHE4UUlzQmhWOTBXb2pYeDIzVVlpMnpqN0o2WWs4VG8y?=
 =?utf-8?B?SHpVb0NDU2RJWGtUNjh0bCtBSmpJa05vTjBoVUo3MzQveXRTd2hPcTdEbWJa?=
 =?utf-8?B?NEV3UVcwRGRYQXpHdFlCbHhqMDM0dElKV1VxVlNNVGg5aWJrN2s4MjJpMkZK?=
 =?utf-8?B?NFl1cElJSW5yYmpnSkJPemVIU3BJbm9GNnlNdVJkOElUV01TMVBwUk5SUjBU?=
 =?utf-8?B?ejBTOFo2bXBjMzhwUlEyTGdKMy9uUW5QL1RUejhkeERUK2h1R3o4aDltTUQ4?=
 =?utf-8?B?R25rMEEyR2lsMVFsTTNyRUdqdDl1ZnNUK2NOVm5RdVY1MnlXZjQ1V2tsc2JI?=
 =?utf-8?B?eWJ3M1ZpS2psSG1XWHZtMjZsNWJvU1NvODJra0srSnVtY0poOGxhVTJLVEp4?=
 =?utf-8?B?a2hkV1hOa1VmamRmK09vQWw4RFZwUk9zYUUvQW9LajNWQXhBSjh3Q01JUVZr?=
 =?utf-8?B?Qi8xMjFHZ01tYlFQUVE3RXZNNEdndmY1ZWl5enNVRVYxcHFtc1ZPWG9sS215?=
 =?utf-8?B?ajJ1MThXSklHSjJ6NWRmVzNmTGFHT3F3bUZNUEpXeHlnbjB4SFd0Nlc2OFNE?=
 =?utf-8?B?OVlPYkRzc3NKTFBOMlRjVXU0c3JOZUVrV3BMalAybkFRR3Z5WEFsRE9SZUV5?=
 =?utf-8?B?NGZsS2hyeDgzSVdBTFE0WGlOdmsrS2dPcURwOVFsdmV5VkJIK2ErMmhvTEVv?=
 =?utf-8?B?SiszVk1ycW42enFCT1YrRDdvekN0cG0zOFU0d2x3OXFZOTJLSnloTEUzQ1dm?=
 =?utf-8?B?ZTVsczhua0FsZzQ2WmV3RUNtT2Nydng3WS82cDl3NHBMaHVOZ3NqQ2tJZ2xF?=
 =?utf-8?B?YVhjN0JkRzdUSmgyNC9Fc3RxWWw4VjlCU1ZpYVEzcll2cjI3RjZoZ3gyWkIr?=
 =?utf-8?B?SUNMR0kvZEdmSzdJZXkzeG1DRFZzNW81VWNXZXdtMUc5TFRXMUNCNUNIdDRa?=
 =?utf-8?B?cDhaVXRqaURoYkhQWktqK3JkS1VFK0dML3E2TDZSZjNvMHNLT3BIdm9QblZp?=
 =?utf-8?B?SFVQOXErWHY3Tys5enE4cFNHeXcyWWdLR0hZVC81RmsrSFBWdjVVelZJd1Mv?=
 =?utf-8?B?SERTMFVUVDNBQWdFemUyZFpoTVBSb01kRXhjVWY4NldCNUg0TG93VzVNakJF?=
 =?utf-8?B?azJ2cDYwWG5LbEx4RFJZT0EzaFZKaU1kNGRaQUxWbUFrdlZXbCsxemNNUmEy?=
 =?utf-8?B?TFlhQzk3Ylk5emdSdnNrN1V6OFJRNEcxMkdyVkNGNDVpMW9QTHRDeE1iRFY1?=
 =?utf-8?B?M1diWHhKdlYrd0I0YTVVY1lLTThkcUxhcjJxSHlWVEVsMmdUMzJCbVlVdGFS?=
 =?utf-8?B?aFZyMXR1bDE5UE9JdzlJdWR2dElsTFUwVGYzWnFzeExPS2xOWDAzaEgxVGF5?=
 =?utf-8?B?MDFNWldEMU5wS3BWakFML1F5VGxQb2tUR3YzRENSNUYwU1l6MUdMVXpjNGVn?=
 =?utf-8?B?LzJCK1RLcmkvTWhFZ1BmTzUxTlN2ZmRnNndjNTU1ckFXcS9WV1pheXNHZENT?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5357486b-7d97-462f-4c2c-08ddd04dcd19
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 16:17:54.0980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S3HT9v9m5czAW3ilNAIXIV9uiRAT9VV4EKrxOir7rmo/0o/1Vc6MyXzmjGo4vsp+4baC6LKjde3dMyDILn1Ijpyt0EKAZX0yPuA8LG1/5gY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6649
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753978736; x=1785514736;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=72vg1yQBH2LbVlq+Z6kf7WgjrPzAUmpt8OLbMeufVCo=;
 b=MBTSY2+lNHWSvwHhnA+3W8ValVUjscEL7HA12LLTp/eXE8tUvsvAjw8q
 GPOOt16mo7dbZe30xcmSHzFpF3qSLBedhYuhxYh2o5QcdTkQIMbBTc/s/
 IJ5K5PFqDI79hE7EL/pAq/HY7mZ6576vn1TX2pLozkqxAJvEzLA/3r2yK
 fNys64tgc547DvW35svJXlIxWoTsotgMjXO+bXvcB4mRSt1tXwQd5bY5a
 2lOWHWZxJSMETcXIsCqCnjVJrdw18nt0xdDWh1ofyaKvycOZgmJU0jXQY
 qNMOlUuCt+pVi+Vvqu/dLRjGkwv7/1rtqkrMNDLkCvUiQuk69m+J16y0q
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MBTSY2+l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: drop page splitting
 and recycling
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

--------------KE7l5orKiKtIuwhumvGzhwZt
Content-Type: multipart/mixed; boundary="------------alzTnY3ZSDkkikj0Ci2Zc0qC";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com
Message-ID: <2f53087a-3c71-4844-a5e7-9d01dae0d6e9@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] ice: drop page splitting
 and recycling
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-3-michal.kubiak@intel.com>
 <83ce2cf3-7942-444f-82c2-9489733c56a7@intel.com>
 <aIuSPt5BGOM-d9Kd@localhost.localdomain>
In-Reply-To: <aIuSPt5BGOM-d9Kd@localhost.localdomain>

--------------alzTnY3ZSDkkikj0Ci2Zc0qC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/31/2025 8:56 AM, Michal Kubiak wrote:
> On Mon, Jul 07, 2025 at 03:48:36PM -0700, Jacob Keller wrote:
>>
>>
>> On 7/4/2025 9:18 AM, Michal Kubiak wrote:
>>> @@ -1100,14 +994,10 @@ static void ice_put_rx_mbuf(struct ice_rx_ring=
 *rx_ring, struct xdp_buff *xdp,
>>>  	for (i =3D 0; i < post_xdp_frags; i++) {
>>>  		buf =3D &rx_ring->rx_buf[idx];
>>> =20
>>> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
>>> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
>>> +		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
>>>  			*xdp_xmit |=3D verdict;
>>> -		} else if (verdict & ICE_XDP_CONSUMED) {
>>> +		else if (verdict & ICE_XDP_CONSUMED)
>>>  			buf->pagecnt_bias++;
>>
>> Why do we still keep pagecnt_bias++ here?
>=20
> My mistake. You're right - as I checked, we never use pagecnt_bias afte=
r
> applying this patch.
> I will remove pagecnt_bias completely in v2.
>=20
> Thanks,
> Michal
>=20

I think Olek was also aware of this, but please make sure the v2 has
fixed the errors with 9K MTU as well :D

--------------alzTnY3ZSDkkikj0Ci2Zc0qC--

--------------KE7l5orKiKtIuwhumvGzhwZt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaIuXLwUDAAAAAAAKCRBqll0+bw8o6EZT
AP9/7PRGfhdefuGocF5XAxmSierYepGPxTamBtDLHgEyFAEA756Hbz3DbzOYjrvFkbrSSpcjxjbQ
kg4CD8d3x38k3Q4=
=Yq/w
-----END PGP SIGNATURE-----

--------------KE7l5orKiKtIuwhumvGzhwZt--
