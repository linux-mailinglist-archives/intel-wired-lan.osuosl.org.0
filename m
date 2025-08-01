Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4555AB1822D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 15:12:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A9C384850;
	Fri,  1 Aug 2025 13:12:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUipEXxoC4ma; Fri,  1 Aug 2025 13:12:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60A258484C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754053932;
	bh=Wb47HiOyFCM6ZHqTOJzXQq658l2SGgPzMdkjLkjpias=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GQ3PW+AbIOZJFKi19gXplQltlOREHz6IqM5IchfPKfRb+YCeF6oTub9GIMBPmLzzR
	 L3zZ2MID5pw7Lbvm26rQcjbLJxyNS04i8H4jsVgKqG5UgosyjfPOzvog54KLjeQJZl
	 TtxfXNjlDfmmz7+uojHfjfH0+r49EAIOAqzergjR2IUz9plbt55J96wfhduqxAB7fG
	 SixWIn1aIu84AFj69MwJTvAFixi7NrDF80kAE09MLlX5OOvSxouRZMchKy1D7U1M5L
	 zkmFe2+NMSTl68wYytgD2cqwHG5/fs8oMXXZqpASaEjRA5l/qcOKyoI8kuTPc2PN59
	 AQw4hPDVKX7YA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60A258484C;
	Fri,  1 Aug 2025 13:12:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E288160
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E4C18484A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:12:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wLaMk18BMmj0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 13:12:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9FF0D84517
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FF0D84517
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FF0D84517
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:12:09 +0000 (UTC)
X-CSE-ConnectionGUID: QKvHL90JTBCBgidxUpaVYA==
X-CSE-MsgGUID: I6hY4Ck+QfS++rQo6RbChw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56479441"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56479441"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:12:09 -0700
X-CSE-ConnectionGUID: v1Xp6SzbRR2LeBoKj+XxAw==
X-CSE-MsgGUID: ca01tfpJSy6exaMMzrb1Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="167824640"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:12:08 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 06:12:07 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 06:12:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.88)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 06:12:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QupRNabw2SAadzflWnNlw3gC3Cjn0OFswb1vdlsCq2FvSeimqwzDcwj5v/0fbdAyFSsf+Cy483ZryU58mmYwBoDGAJKREzEJGBDEYP2M0jZThH7mlSYWU4vFzpjUYrCKos+WYksaubpVboGXAYFVK0F+HfucybVum5hUwLIsmJnEJfp8waDNtrQMGCfcnEkpqKBePKRE1iYgn1B/gynnhTJTvijZcQdK44/HGZDXvaWi4vfB1f56bVfwyOiaD6lr8UrHtxQbYyZI2MCOycipq3Gi6heEwJ5cNpBX/fZHG6s4qOCS99aUx+CaVRfcOqxHhexpmEc0F78ggZ9K+paXzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wb47HiOyFCM6ZHqTOJzXQq658l2SGgPzMdkjLkjpias=;
 b=WegMFPCws72uouXIH6OiFbAtMms3SbsnfqjwsfQTmcKbgsflrDHOo/M33+oW8ylHXNjZBB2A0scWIpM2YstHvXnhwMpeC8743MvIV3Pkicp6I8sqHyO5Dnt0u8+1xHMXvR3S13i6QTDyl9H6uVOwfNDhTQjhN5AQxkN+5WxuWsZhMlRXrqF41Q0rnLwXLPuPTLtlyi2Qm+jzmVMHsBwcGTKUMDrnZtaJ8YArud87N+D5TyInyRLgBC7ZB/otvBMnOs6ikn7dsvZfJ+hWDjb/FQyZPZ8APDdnkDNDPm1vPiiuS5okpmlMEyNuaD5hK2uXgTesnoCbsE5FtZ1bFaFocA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA0PR11MB7157.namprd11.prod.outlook.com (2603:10b6:806:24b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 13:12:02 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 13:12:02 +0000
Message-ID: <9538e649-0e9c-45b7-a06f-d4e8250635a6@intel.com>
Date: Fri, 1 Aug 2025 15:11:38 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, <bpf@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
 <20250731133557.GB8494@horms.kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250731133557.GB8494@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0038.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA0PR11MB7157:EE_
X-MS-Office365-Filtering-Correlation-Id: 02879933-d1fd-4897-e59a-08ddd0fd0141
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0VCMTFwdVErV1pzcEJaZTBSU1pCTTAyZXBTUTJsK1JRREZPanFBZnphSUJE?=
 =?utf-8?B?dFkxNGdlMDNHZng5VXByemNqUlNpL2tMQ0R1dWswMVUwalVvclpHOExIc2Vr?=
 =?utf-8?B?R1ZsSXd0aHoxV3FoMk0zcE5LdWxBM0hxanY0MXJ0aS9SL1pyRi90SGx3R2RZ?=
 =?utf-8?B?MExYNUNEYi9peUY0ZkE1YzM1cHRxRTBvR1o5dkJHOTVOMzBHWkhFWUJKRHZH?=
 =?utf-8?B?aHlWeUliTkVEaTNUekhDdzRFclFiTGc0MGJDdlZkT3lZNWh6TU1LbWF1LzVh?=
 =?utf-8?B?eEhIVUx3c1hsaFNxZDlReTRUelFNYTNlVGU3Tnh4L2pnN0Z1eHdyWU1LUFNU?=
 =?utf-8?B?VGR2NW41SHRYYkhKZkJ0WXFRcmZvemlVTWI2Kyt0VWJsVVNPWG5wdmZPSHBR?=
 =?utf-8?B?azZtZ2puU2pKd25BT0hUckdMZmFML3dLQStLQitzRS9uekI2N3FnQmF3MWE2?=
 =?utf-8?B?VHJ1YjU1MHNwMnh2ckZmdUV6eFJ2N1VSdFhsT3FrRlVLWjNCNndmRkFoTzQ3?=
 =?utf-8?B?NGJhdmJwWGMwS25DV2lIaTkvMjNRcW1xNHdKcmY0VTVtd0ZmMWV6SFZXTDdl?=
 =?utf-8?B?cnMxZVpOMXBzeDVzcEs3c3p3U1NRM1BZQThDL3JVbiszbmRmbXY5REtGT3hF?=
 =?utf-8?B?dHpwcGhuK0U3STlka0NEeUlzOWJ4cFo4YVNucHkwZWxtb2FVYVBycEJ6alJ6?=
 =?utf-8?B?QVlHWElBaUNPOGJKT3FadU9rd3RKNGFUNzU3OEtCMUhsRXVnV1d4QVBma0ti?=
 =?utf-8?B?QWtOV09hS0xjc3ZRaTFiRitVaTh2NVB4OW9CaTJsSTl2T01yMzNuMld4RVM4?=
 =?utf-8?B?R0RMT0hDSmtLaml5RXo1b3lRSlBBYkNBVDViTTBvUEYwSUZwUzA1Y2ZLTDNz?=
 =?utf-8?B?UTBvRlVVbFBaL1U5NlUvREFDMHB5Y0VwbDdvdllFSnF0RUo2M2p5UFVicERK?=
 =?utf-8?B?OXV0N1orUVp4WU1PeGJVK1RnVURpbC9HUnJLVnVGSU01dVdRa0x1aHVhR1BW?=
 =?utf-8?B?V2FLZWU3dnV5NG9VRkM2Tld2d24wMXBvd3RndC94aGJYZTFEdjl6cEJ2enlO?=
 =?utf-8?B?bU9aM3IzM293YnU0b0NuM3d3b1FJcDhkd2o0aU9KTnNLRk9UTUthU3Y1V28w?=
 =?utf-8?B?MUg4c0dYWXhPM2FLU0d4STlabytYRGJMS1JVT0JxZzlXb3BoNmpvWm1FQ3Mv?=
 =?utf-8?B?RzZEU1EzcVRXa2F3QWkxNUZkSTlPbzhiTS9RZVpIRk0xNEE0c2tjR1VsWnpl?=
 =?utf-8?B?NGdFZEllVXhKNnVFSTBkWVp3Y01QTWVYVXBEejk4QnZVU1J5ejRid3lGNEIv?=
 =?utf-8?B?NGxBa1dNbFUrYkpWSVBxd1FkT2FGUytzZXVad0M3b0k0YlRUOHlTL2pPNWtY?=
 =?utf-8?B?YUswMlh5Rk5qd0VDbm8zM1IySm1SRHEwQ3BXTFBuMFN5ekpLWk5RNkVvNUZI?=
 =?utf-8?B?TGY4UjM5N1VOZTdnWm1JN2FacUhEOU1hbEg3dGc5MnQrQUh1QzJ1ei9wUVpm?=
 =?utf-8?B?OHpFT2J3UEw0VDgyL0tGdis3S2o1UllhbVdQTTAwU0hjbTk2cmR1ejBhNTRh?=
 =?utf-8?B?N05heFpsRjdLTk1RbUdweU1CekJCbkVkbnBaSlF5Uzc2RkZrd1ljQzcxbE1F?=
 =?utf-8?B?ZnF1aXVuc2o4NGtMS1doOHUwSjlCWmRrSysrQ0E4TGNaOGtxRjQzVWgxcUlw?=
 =?utf-8?B?TnpLS0Z5b3VoWU1iL2FDaUh3OVdFTXhCMklsWWhFbXUwTWVrbm1jMWhjNzQ5?=
 =?utf-8?B?R0E1TFdYR05MZStueStlcEFJUzhybFBHd2FYSmV5K3RGTnF1THRsNFErbjJB?=
 =?utf-8?B?c2gwOXNway9IdHlSM0FBc0JtTTVjUGYycFRBUEk1eHJzRjdzeHkyeDJEd05U?=
 =?utf-8?B?Qnh6TGlEdEo4WDZDZTFMalY0R1BKQVRtUksvb0ZZZ1RJNS9RVlRralQ5YWN5?=
 =?utf-8?Q?nytCZCBLdT0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2MyQVh1aXdpSDQxYU1mbEF3WmZONklKWmk1ekhMR3dVa0NLNnpCUDZUb28y?=
 =?utf-8?B?SFFtQTZqNFEwZ3hON0VmeG1zMVF2aWtucXU0Y0E5NEdlRXRuZklLd3pMOThO?=
 =?utf-8?B?eW0zSERBakNKbkVjZ3gwZXZ2N3gyNU1IZjRDdURoVDFHNHcyWEJydTRyUDZj?=
 =?utf-8?B?bEt4ZE5QM3JDMk5aeWg3SmxIMHl1SS9FMkR0bDVIZTA5a3pNQ1NMNnRyL2lx?=
 =?utf-8?B?bnRNbW52elFZOHA0T09ZVXRYRjFIb2RkeXlaQ0hNWUtBQncxSjFvbHBxKzha?=
 =?utf-8?B?K2pacnYyWmpjdDFWcXZRZ3U0aWRJcnY2S1VCL3ZoL0MvSzV4NVJrUHlQTXNz?=
 =?utf-8?B?RFdjMGRRMU9rY0NNUHpXejRKTDlHcXRQTmNCNmRKVzE3WktZQnJwbnpoSnBU?=
 =?utf-8?B?RSsvRitsRXRyT1VXakZJanJDY0tiTUdtUS9xaFN2blJEVGxxV1cyWFMvaHFF?=
 =?utf-8?B?Vm13TFJsekNQd3o4bkF6NHZvalJMNUNJUjh0R3FKV0VHUG1nTG5HaWpjVVo5?=
 =?utf-8?B?UUFUajBWUDJkM01TTnA1SEJpdXNDZW9BVW16RUxKT29xMTlJSTFqZkdqQUVp?=
 =?utf-8?B?eFlMSERON3NwQWR6N1dZV1pDa2FWWGE3TjJSVEFvZVBtVXA4OVA2Y2o3NXg4?=
 =?utf-8?B?a3pmaWNIRzd6UVpzOWxlOGpkWm1FbmxqSExQc2FLM0FjTXpkOWhmMGRzY1ZD?=
 =?utf-8?B?enpya1YvaDFFaFlGUm5zclNOV1JkODRLTUJMSENDTlA4QzJLaTgvUFZteTBk?=
 =?utf-8?B?Y3ArRU1jSFNpZlRnb1FkRytGN3lMUXVCVHh3d09Cd05tQVJ6M0NoUzN6MmVV?=
 =?utf-8?B?VGs3aVVHZUprRUdabkc1V0YxYU1pUTQ1cm9PdGZMREpJcVE2alRhWnJxcGlE?=
 =?utf-8?B?T09CTi9wd0M4UVQyZEdUV1VrWmlBQlFXenpPSmIwbXg3cFRMOHFORVQ5YSsy?=
 =?utf-8?B?b0tkUUF0OC9ZRlNHU2xtd3RWekJ2Nm41MWxtQ2Z0SUNRdEwrR1JxcUVHR2xF?=
 =?utf-8?B?VHRNcGpvYUJJZXoweDNBOHB3SFF4Tk9WRXh6aHd2ZFpERXFqbTAyZ0VheTh4?=
 =?utf-8?B?RTFvTVdyWWYzc2JOTWIyK0U2RFk2a2IrR3Q3b3k3TzBHZzFwMlQrMWZOcUtZ?=
 =?utf-8?B?N2w5MzBkdkh6QjRhY1IzUDluM0k2NkN4dFhDZi94UlJKdGtrQjZ2ME1yQ1ln?=
 =?utf-8?B?Uk1xbEhzUkcwa2x0aEFEbWtlc1JtUFdnWFNLdHdsbk5ITHJhK1hrNWVVQmtz?=
 =?utf-8?B?T1BzTE5vVlR1VUx0UHU3eU5xOXNLVHZpcDRZWWNLZjJiMkQ2WGI0cjhaOUhF?=
 =?utf-8?B?TURkUk9LbFdkNnNkRlJ2bEhVU0tncW40Yi9BQmFYMDI4YmpqNkpLN3BnKzRi?=
 =?utf-8?B?dlJVMlRaYlVadTYwVWR6VzNQTzBlWFZIV1RvdWJDTkl3VGJFYkRnREVuajIw?=
 =?utf-8?B?Q2Y0MDBnV3p5WUNLNnRoYUoxaGY4NS81ZHI1YWYyNnJodTQyNkcxSHJBanZM?=
 =?utf-8?B?a0NhQlJlUE9XekJ0cWc4cFo2aVJhOERCNXpYejdmTmlkWm1vUWErUTEvSEJH?=
 =?utf-8?B?TzB1NHV5NUs3Qi91bURmL0JPUW1LNUorcjRTVEJSMVF6dlI4N2JHa1Z1eXZp?=
 =?utf-8?B?ZGJUZ0RaNUtZN0lrODB0MGhVR2ZMbTkvZVJzeGVjd0VMRkVTYVNZSHNLOTBr?=
 =?utf-8?B?RmNEdkdqNmZmQ0xXVnhnZ252MkcycE9sam1rODhxRVhVNDFTMjNKS3I4SzA1?=
 =?utf-8?B?REV1L3BYWVBWNDh5Rm41M0RnTEN3NHNMYUdYeTlCQ1dFUEJ4bWhWZE1ydFNj?=
 =?utf-8?B?T1QyRXNiQkJNMDVhMEEzT1lyKy9oZTVXSkVuaEtXYzFNWmZzK1FLWXVveG43?=
 =?utf-8?B?U1Vickxsb093VUs2UkNJZncrWEFia28yMnJqMDBBbnNETEUyRXRISmNiWmZS?=
 =?utf-8?B?cmJMTkJtQU5yQUxwWHJQRlJvdnAzaTVKTGZrQzV6Tmg4eEhDOTM0VFEyNHly?=
 =?utf-8?B?eUgxY3lXTUF1TjFRblNxcnA5cDR2Zk9iL09LTTB0U3dCUXdpbWtsQTltUmYy?=
 =?utf-8?B?U281Q1BZZzJnaExERmRNWER6ZnZ0RU0vbVI0bjh1Y0dPbnp2TW4vbmUvQ2Nl?=
 =?utf-8?B?ckJkL2pJaTNKZUEyUHMyL29LQnpNVUwwYWFUUEhPZUFVMmlRdnc1bko4UmlC?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02879933-d1fd-4897-e59a-08ddd0fd0141
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 13:12:02.6169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s5dEMn7Y+5ZXoMCDh99kgiQsTVZwFOG7s6F01AGUZFI11O2e+jp49r+J6UXs4P4KVx5RMA5cO0mQz7o7RuYCZpBbwFkXBRoyrSUXEaRSjXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7157
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754053930; x=1785589930;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kJ0ml9ZhTWZ2+Y4N4ZRxr+drgCJu8pUNsfbJuoPYtew=;
 b=Ijd72Qw4XB3GOq+nv1IcKmjtAUsJ6b4vQBaC+e+/AxJfWiwIMUMvWL6k
 muewZZweKXAZFrK077md9bv9tVoSkMmGxTccwV+DDQDToYX+VGfb8ZHdC
 MjW79jtRqQi7+86BTE/nWjWTFv6TkL/IigykQelHKYYQtb1kiuKJDcATK
 QXe6A2jscVp2uAPAWVimpM7VrVPSnQ0BZqd71JOXx0WjDw/W1RRjHnClv
 352/Uds4/O/l61EPuEHXTN7gC5xVdRpDkG0isAf73thdoxkgxcE25aCuY
 3MHymSmM7uo97rtWqaE1BLwqqQ8/jdQ3kezzbBiOW8SYGl9tNuANeW/mF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ijd72Qw4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
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

From: Simon Horman <horms@kernel.org>
Date: Thu, 31 Jul 2025 14:35:57 +0100

> On Wed, Jul 30, 2025 at 06:07:15PM +0200, Alexander Lobakin wrote:
>> Use libeth XDP infra to support running XDP program on Rx polling.
>> This includes all of the possible verdicts/actions.
>> XDP Tx queues are cleaned only in "lazy" mode when there are less than
>> 1/4 free descriptors left on the ring. libeth helper macros to define
>> driver-specific XDP functions make sure the compiler could uninline
>> them when needed.
>> Use __LIBETH_WORD_ACCESS to parse descriptors more efficiently when
>> applicable. It really gives some good boosts and code size reduction
>> on x86_64.
>>
>> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
>> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> 
> ...
> 
>> @@ -3127,14 +3125,12 @@ static bool idpf_rx_process_skb_fields(struct sk_buff *skb,
>>  	return !__idpf_rx_process_skb_fields(rxq, skb, xdp->desc);
>>  }
>>  
>> -static void
>> -idpf_xdp_run_pass(struct libeth_xdp_buff *xdp, struct napi_struct *napi,
>> -		  struct libeth_rq_napi_stats *ss,
>> -		  const struct virtchnl2_rx_flex_desc_adv_nic_3 *desc)
>> -{
>> -	libeth_xdp_run_pass(xdp, NULL, napi, ss, desc, NULL,
>> -			    idpf_rx_process_skb_fields);
>> -}
>> +LIBETH_XDP_DEFINE_START();
>> +LIBETH_XDP_DEFINE_RUN(static idpf_xdp_run_pass, idpf_xdp_run_prog,
>> +		      idpf_xdp_tx_flush_bulk, idpf_rx_process_skb_fields);
>> +LIBETH_XDP_DEFINE_FINALIZE(static idpf_xdp_finalize_rx, idpf_xdp_tx_flush_bulk,
>> +			   idpf_xdp_tx_finalize);
>> +LIBETH_XDP_DEFINE_END();
>>  
>>  /**
>>   * idpf_rx_hsplit_wa - handle header buffer overflows and split errors
>> @@ -3222,7 +3218,10 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>>  	struct libeth_rq_napi_stats rs = { };
>>  	u16 ntc = rxq->next_to_clean;
>>  	LIBETH_XDP_ONSTACK_BUFF(xdp);
>> +	LIBETH_XDP_ONSTACK_BULK(bq);
>>  
>> +	libeth_xdp_tx_init_bulk(&bq, rxq->xdp_prog, rxq->xdp_rxq.dev,
>> +				rxq->xdpsqs, rxq->num_xdp_txq);
>>  	libeth_xdp_init_buff(xdp, &rxq->xdp, &rxq->xdp_rxq);
>>  
>>  	/* Process Rx packets bounded by budget */
>> @@ -3318,11 +3317,13 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
>>  		if (!idpf_rx_splitq_is_eop(rx_desc) || unlikely(!xdp->data))
>>  			continue;
>>  
>> -		idpf_xdp_run_pass(xdp, rxq->napi, &rs, rx_desc);
>> +		idpf_xdp_run_pass(xdp, &bq, rxq->napi, &rs, rx_desc);
>>  	}
>>  
>>  	rxq->next_to_clean = ntc;
>> +
>>  	libeth_xdp_save_buff(&rxq->xdp, xdp);
>> +	idpf_xdp_finalize_rx(&bq);
> 
> This will call __libeth_xdp_finalize_rx(), which calls rcu_read_unlock().
> But there doesn't seem to be a corresponding call to rcu_read_lock()
> 
> Flagged by Sparse.

It's false-positive, rcu_read_lock() is called in tx_init_bulk().

> 
>>  
>>  	u64_stats_update_begin(&rxq->stats_sync);
>>  	u64_stats_add(&rxq->q_stats.packets, rs.packets);

Thanks,
Olek
