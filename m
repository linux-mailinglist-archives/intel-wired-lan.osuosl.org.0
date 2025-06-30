Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 677ABAEE9C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 23:56:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 116B884A19;
	Mon, 30 Jun 2025 21:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KOIj5_ckYfjB; Mon, 30 Jun 2025 21:56:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9E7584A10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751320599;
	bh=XqC/uc2EV6Ax2UrmYWB7VNqi/n9u30Fi+OSH74jbbbw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mPxeNJFpzKRHsXarKFTFSSzYwJjwNDLdTXX4srR9GLZJPFRj2nYivWhYHaqpWKM+X
	 k4RzB19aE0L3parRpsR0i3FJM9s7FsAKnkxjcSol6DYFZ9kPVWVbzeA+/m+vSkeTG3
	 X00z3RrSfMcwCOWa2WcWlI3zVtggB47BwSweUUUJDemGF5/5pxDj5bTLooJoHTSkGY
	 ztrVmRRgL783GuL+VEo8JXGP6mI7uSJzizvRJWNC0EJ3eTJ4z55QfHC8y8VfwF3JXo
	 pAem0lwqI3U5L00tPQQbyINMkx58MDcIOc2IDZRIXxVmnTs8+UQsj7fkeynLcqOtU/
	 TGlLU7Og9HuwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9E7584A10;
	Mon, 30 Jun 2025 21:56:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CF34DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 21:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1288A41C4A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 21:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mDLTCQ4xkxNY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 21:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 44B7341C3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44B7341C3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44B7341C3A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 21:56:36 +0000 (UTC)
X-CSE-ConnectionGUID: Hw5ImjGeT72xLudFi05i8A==
X-CSE-MsgGUID: 7QL1SOtcTZKYdZIMOUwv0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="53496939"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="53496939"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 14:56:33 -0700
X-CSE-ConnectionGUID: 6FyavCcbTOWLGMR5C7GuVA==
X-CSE-MsgGUID: LXGzDsyARp+fSWJidcbmVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="157975521"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 14:56:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 14:56:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 14:56:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.81)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 14:56:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wRYkg9LylyB2g2Ka8dFNUsQpVULN0YQmxVLDK1eClf9tEuDX0CPdnUJyHZHHS21Xereeg+vI4knx+fDIl/6IEU4JbjeF+cxg3O3GtQtOktEyB4n1qBZYn+j0hhA5bPBZisgADTni0tPav8h48eRGrmFfk43HQ0gURh7JU5Ag1DEdAzbLsBNTpE63iSd1GC3+LAxMLkeMMlHmDdO5zo252nb1f6ymfWss6mFM6kXxbYbUI20QixYE3QPoRS8hiorWp4Womgniy8g7Ur5sGJZHwXcvPjolcZ8DJtiUjXIf+MdAA9XTjlrboaXnD3/1swqSUkvbIxll/CG/5KRJWy3pLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XqC/uc2EV6Ax2UrmYWB7VNqi/n9u30Fi+OSH74jbbbw=;
 b=Q/3k0qKqFNzJ2FkNtGkGe86euZi+8y7DBdDtpG+tHarPGv+kOgbwIeJ+nyRi+OSsscwriGNea2Q8rvU2mQ4wro3Qwy3qgVD4Qw5Q/3dcGtsP790Th3dnCwv8S8WIyFvewU2EMTnPcOnmiGHjLHUUqcjTOmbA5XhfpV3q7osNrG5pdXTW+SdIy20y14hpqY8fPnqrwWhtkH2miN8utiV8nlFckatMPMLG9Nm4Q/YH6rfdpwV8hbS+C3ewQNOLwFJ9ZdwJDo2B35q3PnbpkddWzezx7MjRCqpwNWZPH3kmxgwbqvPnqCf4OScCfjANIejwo9Syes0Gp6yUFVPGeVrb2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB8855.namprd11.prod.outlook.com (2603:10b6:8:257::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.18; Mon, 30 Jun
 2025 21:56:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 21:56:29 +0000
Message-ID: <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
Date: Mon, 30 Jun 2025 14:56:28 -0700
User-Agent: Mozilla Thunderbird
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
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
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
In-Reply-To: <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KgV0tLoEWYetbnaRlj0Fszyh"
X-ClientProxiedBy: MW4PR04CA0279.namprd04.prod.outlook.com
 (2603:10b6:303:89::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB8855:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fdd4919-8117-4f85-500b-08ddb820f7ee
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c1BsMWViQVNFeXY0cDAxSE43WFRzRTAxcWN4QnkwNS9JRVgzUmp4U0xLNTdh?=
 =?utf-8?B?SFRvd3JucFNOdXdxT05QOU1lM012NEowQjRqS3FVcmRVK1Q3bld5Vm9yeU02?=
 =?utf-8?B?UW9maG5ZVVdLL0xDOUY1STNwVTBXVXZYTG1rdGtnZ2RqV3NqU2N1SDM0R0Y5?=
 =?utf-8?B?cVlZOEJLbnJBV2RISC9PT2FPd2FyV3dubCtLazJ3amFaUDV4blR1SVA5ZVg5?=
 =?utf-8?B?ZEpMdnlkeE5qQ2VIR1FITGxLaEMyMWdiSnEzakpPdXlJUUN2a3hmNTN5azlK?=
 =?utf-8?B?L0RzcWhWM0RRNlFGWlNVY1lKbElKRFNqWUJ0MElBTkV2clNIREwzaXcwNEFC?=
 =?utf-8?B?L1FwSEw5Mm1OYmJXMDQxRko1UVZtVExpYXNPRlZpSDArT2hTWm40a1NtbWJX?=
 =?utf-8?B?NENXck4wUkdPdHdKSm9iVCt0SEVVSTg3TFk1SW9Yd1o0bzhvYlhKNzE1cGxv?=
 =?utf-8?B?NlNDemNLRnRXNmE5Wmt5TW94ZnlCZFR1SHM0U3VJdlBlN29JNEVhait6MDFV?=
 =?utf-8?B?ZEd2WmdHQVdEMWQ5Ym14eldYZ00vUjZxaTNnZ3FZZ1lFRmRCRFRyNFkwWDhx?=
 =?utf-8?B?OU9pYXIxQkJRazVEV3FndVlpakl1Mjltby8vYjBNeDgyYjJCY3d5MXJzTktw?=
 =?utf-8?B?aGxnbHlFRmIxQVRnejJtOUJIbnFIYTR2cWFQZTNYbUM5MnBRdG83aE9ibG1x?=
 =?utf-8?B?UWFKNWpNMkNtOXIyU0Y3Z3Vvb29aUEJ3aTRMV0t1RFVJMVFEUmtJMG1waHkv?=
 =?utf-8?B?QlNwNzIxYXRXQjJ0T2huSXI3S25uYTFjTHJFaVFxdDJwR1VDN0xBNDNhTUZJ?=
 =?utf-8?B?YmhQeGJWbmo4YmFRTVY1c1pwanFtVWtQWWdwajk5TVdxazA2U2VTYXFUajRh?=
 =?utf-8?B?T2hmTm9hNCtZRUR6clFDSUZkdThCNjlrbTZuMERlL2J3bHRwSDB1WVB6RmhD?=
 =?utf-8?B?VmJnYms4V1cyNkVoU3ZmK0puQXRBUjZwRE5sYy9BczN0aHQ5MGdIRXg4QzA3?=
 =?utf-8?B?dnBtYXJWRkFGVlplektxOHltQlcrOWxGWVNPamd5VkFLdzhUQ3g0aG5ESGpW?=
 =?utf-8?B?TzJoOTdGTWpTT29NZHFicjcwRUc4K2VuZHA1NkhHUHREelBWYllVSWZFaXNR?=
 =?utf-8?B?dkI5SmRIUjRyVEVzWXkxZjcwNkVzUURNVkxxQzVXZ3NDaDZSbVZxQ1JBcTYz?=
 =?utf-8?B?ckRGNms3YU5GUWt3dzhUdHdTaGpJRWJSa0FOb0VYV29hZTBodEdTSlFJc3Bp?=
 =?utf-8?B?dEhwTisrNk43eEowUVZWTUJKdHhvYkZrU0NjaDFMYmFKYmxwRlU0SDBJclVO?=
 =?utf-8?B?Z2RVSzhmRlBHbkVQcytIdVNzZE1uL1R1eTFiUWlVckx2ckFuanRoNk1FeTV0?=
 =?utf-8?B?RWZsK05tVnpZdHlVT1c4M1pvWnhGQjFJK1laUThzb1o4UDRDSnAxUGkvWjdF?=
 =?utf-8?B?UnZjcmdCaC9vV3JLdmRjdDdpQ0tNaThoZEFqVmJhZzRDN2s1azN2NUVnOGl5?=
 =?utf-8?B?Z2FrMkp2ZGNkbURoUndXc0lTaTU2QXdZNlVLZjZ4SUR2RFliK1BSV1g3Q1hh?=
 =?utf-8?B?M1d4cm1EbXJJWXdadGpYVUN2aC80WjRFay9NMVJOY2hUZ0VOcjZyTEhUNUYv?=
 =?utf-8?B?M2NCalRaREtBdWJZaW5yTjN1S1ZUenUyQy9mT3hKUU8xdzdCelR0dGszRWlr?=
 =?utf-8?B?U05CSllURHVmSjdERXVqdENWL3dDYi9DS1ZlNHVITCsvVU9PWXl5ZXBTQkI5?=
 =?utf-8?B?SW1qRlFtbjFrQnRsWHJ0YjdPM05vSlZMb2Nwam9wNG5lQVpKN1pJSUY4NE42?=
 =?utf-8?B?bDFBdm95d2R5eUNXQ2oxZkFPUm9oOTRKMllGT2V3Y2VTaXIrY2M3bUNrbkZ5?=
 =?utf-8?B?RTFQUkM5d0EzTXRJWk51MGZROXhGQkhZY1pXWnhjWEtBS2k3RjJDUkw0bDhy?=
 =?utf-8?Q?5HrBAPN4/IM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elBVaXgyUm45OHZUeGRmTHhCRDZWWjVwVCtFMUxZK2lFRUNsbmRGR3kxNW5Q?=
 =?utf-8?B?alRtVTl3amNNdDVmTllEdWNqSDJOTmpLV2d1TXdvY2RXVFYya2FZUDRmM2du?=
 =?utf-8?B?TWdyZDlHandiTUF4RnQ3STN2aGxnT2pyOENja0FHcWxQYytYMlB0M040d21J?=
 =?utf-8?B?Vy8vQnpuM3JpWklPMFRCbjZoK0lYeFpxc25nT1duMlREOUEzc2d5SGl5czZ0?=
 =?utf-8?B?L2d6cTlWemtPaU96OFFMdGNiUVAxZ2FuOTA0bmkxOE91dkFFZi9JMUE3WFBz?=
 =?utf-8?B?Sk5GNks0dG5YS2VPY3R3ZzFNdlVESWo5MUlYemFGSVcxMFZ3aktKSkcwRjEv?=
 =?utf-8?B?UGpWd2UvdXdDWEh2bWl4ZGgrRldPc3BSWkRjZUgvRjhEZFZPYnF6L0hEbUxD?=
 =?utf-8?B?dWM3STRFSEpEQlpCTWMzSUlKajVjT0ZLdlFlUFErbVpRTUZQMmM4QXUvU3dr?=
 =?utf-8?B?TDJBQTg1QVA1OTJpTmlpdDg4WEFlRU52bHNySk5NLzZFRUxLNW8yZng0NFFy?=
 =?utf-8?B?djEvY2owdi91dzdrckQwNk8vb2g5RjZ2S0hPaEQwWXZoR2p1SS9kUDRQUkNN?=
 =?utf-8?B?K2xKY0cxcGJDK1gwZk8xTUZFZExrMnFYU3BrOWZWVzgvT0JxcXBWV0dONzd0?=
 =?utf-8?B?enJPUTVZa015WithZS8wM2NpaHU0dUN5eG85MUw1SXJsSGxVc1BaUTIweFps?=
 =?utf-8?B?VWpCZkF5d1lZMjJBYUZ1RTBFQ0VyK0trZEpHWTF5cXBoakhDNk1XUHhyazJm?=
 =?utf-8?B?VnY1RXd3MUNaSUFWQzByem4zSTBqR2tSWU5lK1doanlLd3JNZHFlWWhwY0dp?=
 =?utf-8?B?SzZrczRaUzdiTXNDVy9uZzJRVElrYm5ieFRSOGgzOE9WUFVia0Z1Vyt0eno5?=
 =?utf-8?B?ZXlwTml4Q0NVbmVRRHVSWllIWmVxSy9tNlJ2dzlCWmxQK0t0eWRVVzJTeEoz?=
 =?utf-8?B?T0JrSWpWSmhmQmJUR2VTZ090dkNVZDdOVm5mVGNTUFJWSDgvbktkVlovYnRR?=
 =?utf-8?B?TTdvblRCdXdjaXJNdFJzL1hwTFZNT2N0K1JZQkMweWwzZDlxbmZUL1hMU1BQ?=
 =?utf-8?B?RFUyaGxnWjJLem1SZTRmOUJSam5yZ2QyTGorand4K2EzUUFHa0c0dnNZYXll?=
 =?utf-8?B?aXFuZFZHeXZNTGE4LzdTZVpUM3p6VFhqMU1IK2N4TTh2eTc4Nm5Cd1orRGx1?=
 =?utf-8?B?V0xuTlRLWG1tUFFOWVlmeC8ySDJITnZ1cVkvQlpZblEzeEVIQ3Jmc1JMRWZ2?=
 =?utf-8?B?WTVOZUsyMzQrRFQ1QitvNHRGMGZkRkV5STdmbFFLYllhSmpkMjZHLzBXMlJB?=
 =?utf-8?B?bW82bndza2pFYS9XKytpWXgwV3BiVXZSbUsyOWJMTzZFVjVXdVprNVlUaWFr?=
 =?utf-8?B?M2cwaVdqRmppM1BMZ2JrRUZDOEFvWTlldThqb282OUFkdi8wd2RSU2xkK2Iv?=
 =?utf-8?B?V3MxQjV6NWIwaktwdjdncFRqU3o0bmFYS1dOK3A3TUxlTFlycnMyZ0RmNWdu?=
 =?utf-8?B?MVlRbVF6Wmw3YUlHdmh3Y1Z4NFlodmt2N0RTZUVPbE0xTlZWY2ZrVXY2c1dy?=
 =?utf-8?B?Y0Z4WkNFVHdUV1JJaWFmZXFlb1QwcHc0RFUzS1JPWHNNRG5xK09PMnBaQmk5?=
 =?utf-8?B?VVNIb3BHY0Q5dC9rMHZsZnNQOXpWM2IxOFNlM1ZvSXZBcHAvNGNwbm9WTGpR?=
 =?utf-8?B?aE1iWGozNmVoQnJPMkMrd3JXUXRwUkFNNDdjQUNHekNLNmpMSDRYY3dGSkR6?=
 =?utf-8?B?UmVQTmZmWFhXdWJXL21rSEM1VjZYL05ZbW9BLys4TkNsbHEwbUFMSTJkS0hK?=
 =?utf-8?B?YW5HMTk5dDV2S0xBQlorVnl2SVYxZkd5VjFVVE85RjVGOC85d2FyaC9hSEVS?=
 =?utf-8?B?RkdyUVRTK3JkVDBVL2cxUm9UVlB4bTk4aHZpK29PN3ZXQ2lsYjBxbWJjaXMz?=
 =?utf-8?B?cjI4TzVNb1o0T3p0ckpQRzFrdzI4TlVVMHJqUmVDcjVvenV0Yk5mTlZYK3p5?=
 =?utf-8?B?L1ZIVHZTSzRUNHZEa1pxMGJjcnk5Mno0YWdFbU05QnNKUmtvdDcyR0I5N2Fy?=
 =?utf-8?B?aHhtcFdCNHBLSmVCL01SSklMaEdLZFErd2VtNXdCbkkwZGIvZEN0RzByOHhs?=
 =?utf-8?B?Umg4b1BlMWh4YjJZMkg4bTY3WmhzU0s0MldETkxJMVFjU2F0b2xmL1VKWTli?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fdd4919-8117-4f85-500b-08ddb820f7ee
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 21:56:29.6789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e68gP9PTSI+2m4MxwjPKCu2S/jKeH4vr5FCDQIUNJcmjxYhAPsmGiuznZL65k+VXs7dU9Yp+hzPar3p55lS+U7ZgojRBu1W3tya5+IouDrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8855
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751320596; x=1782856596;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=vfISDOfldatq7IvJjHni0MvU4gDW+tqkf34Q5UfNZ2A=;
 b=byYsqb7oe6rgONS5188TE2wlCScp0Rvb5YAstQmZ98j1mkoLMf/uAitT
 vwwbLViDP63yzOmvUuYv3mXZ/Aca14FTRYc+kvd4RsJMQjjGRu5qeg6EQ
 YAKe9ll1MyMdpSqAQ7VSfVBtEq5A04rfIJDW3KYNTGuboKZFc9XgZibxL
 6tnAL6P9syBrTqL5hWfboVBrXz3x6Uw4h6mp7+74i6XnfB9seLwPfo72A
 +Z0HIzMrY2u65i0N7nfqd5+l320NtAr1X0DaHacg1QWPLFs5eCSJAmmaJ
 MXdEUJ1PWl6E19Iuwc/6oU1sgBydmv6jNVJLq5Tua4EWZ30jk5Crs+W2d
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=byYsqb7o
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

--------------KgV0tLoEWYetbnaRlj0Fszyh
Content-Type: multipart/mixed; boundary="------------nBVFj47ln7ShQi0rIzjQm5nl";
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
Message-ID: <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
In-Reply-To: <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>

--------------nBVFj47ln7ShQi0rIzjQm5nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 1:01 PM, Jaroslav Pulchart wrote:
>>
>>
>>
>> On 6/30/2025 10:24 AM, Jaroslav Pulchart wrote:
>>>>
>>>>
>>>>
>>>> On 6/30/2025 12:35 AM, Jaroslav Pulchart wrote:
>>>>>>
>>>>>>>
>>>>>>> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
>>>>>>>> Great, please send me a link to the related patch set. I can app=
ly them in
>>>>>>>> our kernel build and try them ASAP!
>>>>>>>
>>>>>>> Sorry if I'm repeating the question - have you tried
>>>>>>> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent ker=
nels
>>>>>>> is low enough to use it for production workloads.
>>>>>>
>>>>>> I try it now, the fresh booted server:
>>>>>>
>>>>>> # sort -g /proc/allocinfo| tail -n 15
>>>>>>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
>>>>>>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>>>>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_al=
loc_pages
>>>>>>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
>>>>>>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_=
inode
>>>>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mm=
ap_alloc_page
>>>>>>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
>>>>>>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
>>>>>>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio=

>>>>>>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
>>>>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>>>>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_fo=
lio_pmd
>>>>>>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
>>>>>>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:68=
1
>>>>>> [ice] func:ice_alloc_mapped_page
>>>>>>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
>>>>>>
>>>>>
>>>>> The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
>>>>> func:ice_alloc_mapped_page" is just growing...
>>>>>
>>>>> # uptime ; sort -g /proc/allocinfo| tail -n 15
>>>>>  09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.8=
1
>>>>>
>>>>> # sort -g /proc/allocinfo| tail -n 15
>>>>>     85216896   443838 fs/dcache.c:1681 func:__d_alloc
>>>>>    106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
>>>>>    116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_i=
node
>>>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mma=
p_alloc_page
>>>>>    143556608     6894 mm/slub.c:2452 func:alloc_slab_page
>>>>>    186793984    45604 mm/memory.c:1056 func:folio_prealloc
>>>>>    362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>>>    598237184    51309 mm/slub.c:2450 func:alloc_slab_page
>>>>>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_fol=
io_pmd
>>>>>    929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
>>>>>   1034657792   252602 mm/memory.c:1054 func:folio_prealloc
>>>>>   1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
>>>>>   1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
>>>>>   2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681=

>>>>> [ice] func:ice_alloc_mapped_page
>>>>>
>>>> ice_alloc_mapped_page is the function used to allocate the pages for=
 the
>>>> Rx ring buffers.
>>>>
>>>> There were a number of fixes for the hot path from Maciej which migh=
t be
>>>> related. Although those fixes were primarily for XDP they do impact =
the
>>>> regular hot path as well.
>>>>
>>>> These were fixes on top of work he did which landed in v6.13, so it
>>>> seems plausible they might be related. In particular one which menti=
ons
>>>> a missing buffer put:
>>>>
>>>> 743bbd93cf29 ("ice: put Rx buffers after being done with current fra=
me")
>>>>
>>>> It says the following:
>>>>>     While at it, address an error path of ice_add_xdp_frag() - we w=
ere
>>>>>     missing buffer putting from day 1 there.
>>>>>
>>>>
>>>> It seems to me the issue must be somehow related to the buffer clean=
up
>>>> logic for the Rx ring, since thats the only thing allocated by
>>>> ice_alloc_mapped_page.
>>>>
>>>> It might be something fixed with the work Maciej did.. but it seems =
very
>>>> weird that 492a044508ad ("ice: Add support for persistent NAPI confi=
g")
>>>> would affect that logic at all....
>>>
>>> I believe there were/are at least two separate issues. Regarding
>>> commit 492a044508ad (=E2=80=9Cice: Add support for persistent NAPI co=
nfig=E2=80=9D):
>>> * On 6.13.y and 6.14.y kernels, this change prevented us from lowerin=
g
>>> the driver=E2=80=99s initial, large memory allocation immediately aft=
er server
>>> power-up. A few hours (max few days) later, this inevitably led to an=

>>> out-of-memory condition.
>>> * Reverting the commit in those series only delayed the OOM, it
>>> allowed the queue size (and thus memory footprint) to shrink on boot
>>> just as it did in 6.12.y but didn=E2=80=99t eliminate the underlying =
'leak'.
>>> * In 6.15.y, however, that revert isn=E2=80=99t required (and isn=E2=80=
=99t even
>>> applicable). The after boot allocation can once again be tuned down
>>> without patching. Still, we observe the same increase in memory use
>>> over time, as shown in the 'allocmap' output.
>>> Thus, commit 492a044508ad led us down a false trail, or at the very
>>> least hastened the inevitable OOM.
>>
>> That seems reasonable. I'm still surprised the specific commit leads t=
o
>> any large increase in memory, since it should only be a few bytes per
>> NAPI. But there may be some related driver-specific issues.
>=20
> Actually, the large base allocation has existed for quite some time,
> the mentioned commit didn=E2=80=99t suddenly grow our memory usage, it =
only
> prevented us from shrinking it via "ethtool -L <iface> combined
> <small-number>"
> after boot. In other words, we=E2=80=99re still stuck with the same big=

> allocation, we just can=E2=80=99t tune it down (till reverting the comm=
it)
>=20
>>
>> Either way, we clearly need to isolate how we're leaking memory in the=

>> hot path. I think it might be related to the fixes from Maciej which a=
re
>> pretty recent so might not be in 6.13 or 6.14
>=20
> I=E2=80=99m fine with the fix for the mainline (now 6.15.y), the 6.13.y=
 and
> 6.14.y are already EOL. Could you please tell me which 6.15.y stable
> release first incorporates that patch? Is it included in current
> 6.15.5, or will it arrive in a later point release?

Unfortunately it looks like the fix I mentioned has landed in 6.14, so
its not a fix for your issue (since you mentioned 6.14 has failed
testing in your system)

$ git describe --first-parent --contains --match=3Dv* --exclude=3D*rc*
743bbd93cf29f653fae0e1416a31f03231689911
v6.14~251^2~15^2~2

I don't see any other relevant changes since v6.14. I can try to see if
I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
systems here.

--------------nBVFj47ln7ShQi0rIzjQm5nl--

--------------KgV0tLoEWYetbnaRlj0Fszyh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGMIDAUDAAAAAAAKCRBqll0+bw8o6JWx
AP9iqsAQObToC4iWgJn1mgAVW9pNDJE/xK7N8JIfwNP6YAD9FSKNtBfhOmoh8Qev4GBAilp1Suve
nw98srEL+OIkGQg=
=/xI4
-----END PGP SIGNATURE-----

--------------KgV0tLoEWYetbnaRlj0Fszyh--
