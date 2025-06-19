Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09414AE0ADB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 17:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CF5E80B1C;
	Thu, 19 Jun 2025 15:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xxXTvnrJviUU; Thu, 19 Jun 2025 15:49:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0C8C809E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750348169;
	bh=KhZSuJCEL5V8NZ2BiWXWtFeapylUs9beB+M2zBBb4yc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6TiWqnqiVgl1ODj+goLWZooxQklWYg6VFX7P4o+DNwouMC8qLbUQhM+2fq0usKwTE
	 DFeE3W7DMT6D76flP4SFXqjCCqAB/rhLu3mxXVsi823j6S3J/jMpw8fmAU2kj+FvJm
	 nBN/iYM/BNVcHs1FtdrMXZjMXsTEfvk1wVUUGvsniHKJ+PVxuEJqiPI+HKiBPR6ewC
	 /fYHD/TsIHId36PKm/Fd4t5hgaTm7HZJb/1d5y7iv8QoUqzLbWo7IifOejo8xs6EUC
	 oeg282V+4JLj1HDtaa/g4NGy10DvljjOUrpa2wrU+eakradNnVccZkEIu0TUAUM+lr
	 v4/TepCW7sizQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0C8C809E8;
	Thu, 19 Jun 2025 15:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B982516B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 15:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F96E60833
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 15:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOr-JkMwPKE0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 15:49:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.44;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A66A660744
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A66A660744
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2044.outbound.protection.outlook.com [40.107.101.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A66A660744
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 15:49:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SWHwQu6Z/h3rHIeuVz+YZTtlg0F9HnBPIimvnwD+rojMP2Bb+dV57ppAEDhhH5MH77vOGz30fGn7vUaKGZ67bet95MZsZ1BRr0VAoYcO53XNHB6X8kk1O7FnpRY7LVtK+uPz07aKcDmNBFUh02Kga7XQ0bHAofAdvIZMQ7+LxIxLSzIjp5jqrxhkp+jmHgvyJBkzcjjKsDy5YuLyIv8BBsXLudruNEs6uRhtJfCaUShbtUPradnzGgJ4OmVftcxSROAHrBK77TL+er73HVMj4h7ov6Xx64Kzi1uHBSMxNtd0gv7hdlNlWaq1SeQi6uFwzT0RfVZ1S8c3F2YEoSw79Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KhZSuJCEL5V8NZ2BiWXWtFeapylUs9beB+M2zBBb4yc=;
 b=jyxf/seTodJ3Fn9pdGT6+Ol65/duoJi+baS6ojizsy64WjQx8rYHZoeWSATs1lNiQuw6l3BqYLhE1z3esobao+yZPhklDaoQBTeBZrTtjJ4Oj1mbZDqD571zqGUx05AZxlO+ay0vmI03iuj+rHsQ6XxSd27oJDeMbWrWNI3dHjzu/pQaACRkb9Tzkh9GSUHwejeYuA5txzdTJxOWhsHbuIc0rRBMLlZbzJ6VV7KLotgSLQZ4TPwxcrl+VCBBbLb8DHTwrI7lApTpY3ZPSC4nVW+L8g6V1RwWYt4pmLLHsiHE+om8Ok7jve52iLeBAA2FJ4r1tH94JQ6IWK+2xsdcFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB7356.namprd12.prod.outlook.com (2603:10b6:510:20f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.21; Thu, 19 Jun
 2025 15:49:25 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.8835.023; Thu, 19 Jun 2025
 15:49:24 +0000
Message-ID: <5b77d33a-5668-42bc-802d-d2c5d95c1e7e@amd.com>
Date: Thu, 19 Jun 2025 08:49:17 -0700
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Shinas Rasheed <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, Sasha Neftin <sasha.neftin@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Jacob Keller
 <jacob.e.keller@intel.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250619153738.2788568-1-yoong.siang.song@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20250619153738.2788568-1-yoong.siang.song@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR03CA0095.namprd03.prod.outlook.com
 (2603:10b6:208:32a::10) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB7356:EE_
X-MS-Office365-Filtering-Correlation-Id: 00fd3dd6-9073-439a-ef34-08ddaf48dd7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alU1MmNKTmNHUlUyWVRwa0V0blpwMFc2WHRwZlMrU2VueTFJTGU0NDR3R2JX?=
 =?utf-8?B?azRiTUl1c1ZubCtqY3NvZUNCUTBRRFVOVmNKa04rb2tMMDNKQ0RBQi91QThu?=
 =?utf-8?B?bHgyNWROb0pLN3VCeWRYRm1WLzFBbzFybEFoRmR6YWlrZE5mRVN6STRkTXZl?=
 =?utf-8?B?cHVmVXZwcmpQcEZQQ0k2WklQL0d5YTFJZzlCUkJOY1FKdmk5MlZqaVZvVnln?=
 =?utf-8?B?djJNOUprYm14MlIvMTdJUzVDNHNwc25hWHZnS3pqV1ZyWUYwUlNHditIQjl4?=
 =?utf-8?B?NGljeGEwdGJMRllSRkU3YWI0RFdIYzZsempoNFQyUFNpS0RRc0JEMWlic3h1?=
 =?utf-8?B?SzI1bWF4YzRmeWhXRDRVaGJzaFR2Y3JQT2RaVHVtZnZaeGZmbkpFSWxxbStU?=
 =?utf-8?B?elBZQ29EcjRrYkR6emorUTZKT0tWS0JyaVlJdXJIQnZYSmY1bVJxNkhRZ0F0?=
 =?utf-8?B?NDI4R1doZ3FlNkE1U0hGQmVudGtjaFBCdlVrYWdpeTA3MThOMmZqdlZTMnhH?=
 =?utf-8?B?cWhBMFd0V21YUWRSaTV2cFQwT3l4ZjNHMW5zcFF4d08veHA4RFJLbUNyZmxh?=
 =?utf-8?B?Sm9NWFZqZEhMbzdia04xbUlzR0ZuMEFmU05aM2NlUGU4cU1XVzh5VXZvWkdP?=
 =?utf-8?B?ZkltditNZ0FvemM5MkZobGVCS1Z6UlMzWEhzUWxpK2I1NUFWQVZDR0F0Qlg0?=
 =?utf-8?B?anBHNmpuK0RXOUJMcWFFN0xUL2krcG5pa2lBaHhHZTVpSEJuVzl1Q0RKNHJM?=
 =?utf-8?B?S1lYcTFKY2tLdi9CUndkS25DQ2o4cURIRTc0eDFzZEd3KzNoVDE0SWlsN0lJ?=
 =?utf-8?B?eTh6SC85M1ErV3RDZ09NekNkTjJWNGUxQ0twd1cyUHVOWTQ1ZmQyKzRWUTZj?=
 =?utf-8?B?SlI3c0c5OTNwS1o4d2FqMENMZ1BJUEhCYjRhL1p2c25KOXduYi9yeS9HRkkx?=
 =?utf-8?B?KzRTemtOVUpEcy9hOHczVm5oRHJZOWR0VjZRY2F0amVjQWFmODJPeFU0K0NB?=
 =?utf-8?B?OXFNdHdSejZPaWtiNWtMY0FpVElrV0VRVUJMS2NiU25zeDdJQS95VE1SYi9r?=
 =?utf-8?B?SGlsQUY2YTN0QzBJeE1JOEp3U3Q3MHVDWFNzVWIxeDZVQVVOcE01S1pCWXRh?=
 =?utf-8?B?WUFEU1JhVXZWaFZ2ZTgvdWtCQXBFWXUvd1BPbHdpc1VuSEJkVTRzN1l6a092?=
 =?utf-8?B?RStBZUo3d1B4cTJITVVXbkh2RDNpa3lrNjhZVUE4WUJvZzB0eWxEWWU1bzli?=
 =?utf-8?B?aUhQYWw4ZDVWem1maDJHamN4OGpZVCs5UnRGbmxYRmxlVlBZcklldU54STFE?=
 =?utf-8?B?cmo4WEdmUjFKK0cyejJtaVN0VzFaRUV6UTVlc2JLOU9pcUdlOHhLY2Q1cGo5?=
 =?utf-8?B?MHlvdmpvSjdnRm40cVYybHlUT2hSRzN5KzRGQzV4TThndXhWcU9GR01MYjJm?=
 =?utf-8?B?MUM1SEJtMDlLaHRjK1pKakR4L0J4dk81Yzg4aSt1RWNOUlhrb3lQdWE1ZTA2?=
 =?utf-8?B?ajEyb3A1NkI1YVRHdHhmd2FBUVRCSDZMaFVoN2VwcmphRWxyWHhlWElKVzVo?=
 =?utf-8?B?UnFsNjZpbTNjNUlQeVl3WUUyL1RiOElvc3BiZjdxckFrWi9BMzdLb0Ztdklo?=
 =?utf-8?B?T3VLK2dVY0FTdDNzRWlpU2tKWVNCUDJVY3dlREs2bkNzSFBoQ1N4MGJqNTZI?=
 =?utf-8?B?REhLdGVTNUZmVXBkNUlROXVTUUFIaHRMMVkvRnhWR1ZqVGtrK29SdGJsaFpp?=
 =?utf-8?B?MkU2QlpTdG5RNUpKb0R1Q0IyVHgwSm5FUG96b3FMTlgzQ2ZZdmg5Q0ZrMUhK?=
 =?utf-8?B?RFJPZS9BNFh4eHl3M3RTUnZVS0JOQy9VSk1EYjNDVENLU1VCN2ZRdytycGps?=
 =?utf-8?B?UlYvNnVTQU8ycUdLR0tjUU9hZGZydTlBUDMxaWtzcW1RNnNKaS9KRm1nY0c3?=
 =?utf-8?B?MG5BZlp3dXFzQXZvc0dMYUlPZW0wU09CVnBBUy9RV2FPS2w2SmVOZS9FSTV0?=
 =?utf-8?B?MkxWRmVDaElRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTRFT0FzVjNFL3BqVitrK1ptVlRJYk9zcG9WcUhxTlBFT2pLeU1xQ1A3aVk2?=
 =?utf-8?B?c1hoMlRvVGRHdTFaTTFUemhrWUtNUkt4SEQ2dGl3aXlUYmoxeVJ1L2plNWt4?=
 =?utf-8?B?d3djc2s3YTlEazNNWDNVNkp6UjJQNmxaeDFjVENDNXRZQm9vOEsyL2MvUWFL?=
 =?utf-8?B?Vno4RmtOY0tET3VwRWhIMEJkeDBTUWpETUphTC9iOEtNTlhBRWhNbTFTcTl5?=
 =?utf-8?B?KzZlbStWb01nS1JabmJXMGE0NDRLTE9KRGZXeVJRQWczckJUaDYrRlVXSytH?=
 =?utf-8?B?cTlmaHUxcFM0cFQ3M05SekkweWFES1RaTjg3Vlp0a3dLRlovWk5hZWhnOUNp?=
 =?utf-8?B?K2FJN2hRbDE5WjVNZTRqYUtvOGZyNlhrR1BxcWREZENMdTZ2Y1E1anpqOS9F?=
 =?utf-8?B?UEx3RTBnVktWbkpIVTJlM3IzVTJRU0dDT2tlUzRzS250VmhCSWtqaDJ2U3Zj?=
 =?utf-8?B?RUZndkREbG9GUTBzb281Rk4wOFBmZGtYWXVQdnJBa2VBY1F3aHBmTHhiTGFL?=
 =?utf-8?B?ekRlZW1sdGQzNlR0c1ZnRC9DQjQ5U1d4ZGtsd1VZa1FhYjFZaWV3ZjlVOHI4?=
 =?utf-8?B?dE41d0ptdTZIT3cvOWVxYnBqRmxITXlKa0JFUndpRmxqUnFBWE1WL3RXMUZC?=
 =?utf-8?B?M3B0bjAxRGl0cysxVzVjdExITTdJdk5iTm5RZjRKUVNKb0VEeElCVVNtdVlm?=
 =?utf-8?B?cC8vV2FHWjBIRzZySzEreU9RaVhQT3JZUHJjQ3FaZEVLc0huODBscDMwSGFa?=
 =?utf-8?B?U3k0YkNPSmIvYmNtdE5lODNOaGgvZ1Y4bnpuc2lkWWNWazRKZ2RPTStxWFpy?=
 =?utf-8?B?ZXNuanVXODUwU21lMzlXSnVVSWZPd3Y4R0ZVajE5TEVGRCt1bWp6cjVFZ2lB?=
 =?utf-8?B?dzBBNThqazJNRWl5M2J6ckFKV0xEZEovSElmWlMzTGU1bFl0MW96SGhYQ3lv?=
 =?utf-8?B?MTk5L2lXMFRUaVdTRGNrb3pFVC9NMnRJcjVUejBOUnRvUmZGcXd2eTA4V1JH?=
 =?utf-8?B?d3lSV2ZzWW1BeVJHc1p0c2gzdkNGNWoveC9FOWtCeVlUODRjRlpiOWFWZEYw?=
 =?utf-8?B?bS9NMGJVTlYrUm5Mc29vV1hKOGYyRldaOUlSVU9DR3h5SjFVcWhYbTVuRFlE?=
 =?utf-8?B?UzRvbFU2dzkyTFk0WnBhNVNpL3ZVNG04YjhEVXFGYWRVTmkySE5yWWlOcHE2?=
 =?utf-8?B?M0tCaVRkVUZML2JNMWtZSTFQS0JlOG9UZmF0Skc5Qk5ZdmhEa0ZjWkxIRGE2?=
 =?utf-8?B?QURWVmt2ZzJGQ2c2Snk4ZVZkVWRTT0FMeDFZQWRoMXdoWHBXeE81OWZ4N0M3?=
 =?utf-8?B?WUlxMlk1dDFWQ0I1dTlHK0x2WHpkMk9Fd0lIOFp0TVljVFdkVzhrVUdITFZS?=
 =?utf-8?B?WEtnOWRCUUhlRjUybEZ0Mis0K3p3eGo5a3N2QUVCNjdWY1g0cEtOOUM3cVN3?=
 =?utf-8?B?RjZ0NFNzekt0b2h2K3N1dXJXdjk4dmhiNFlPTGZQcG8yY0o0M0VYUUpwcFZS?=
 =?utf-8?B?eDR1UVo4RWVXbXBnYTFJSzcrN1hqUXdlU3dwOW9oR2o5NmFiTURXNXdRSU9E?=
 =?utf-8?B?eHR4dWU1dS8weERraUJjZ0RuMU9SbDZ5WXdkT2htMGdVQ1FsRVdZNDJGZEtV?=
 =?utf-8?B?VXJCYlFocjk2U2N6TWlzbzZYWnBKMVFCT1UzTXhVdWFwbUdBejQvM2daNlgr?=
 =?utf-8?B?LzFkY1NsSFNteHlPV3V0d1JtQzRvTFdXcjAwY2VmYU41eUkwbzlGWHllNmZz?=
 =?utf-8?B?VkJXTXltTU4vSnFQS0paRDVLNkxSOVluMW01Ymx5Zkw1L1lIeFBOT2R5ZDli?=
 =?utf-8?B?ZDFjVGd2Q1E5dHdVSUdwc29OQjJNSkdwL0JMYVNLUHBkcjRHMUg4UTZDOVpn?=
 =?utf-8?B?QnIvZGthUS9aZllZVTg4R3hYZjJJTUx3THkyejZnSDFGQ0MrSElwbzd0ejlD?=
 =?utf-8?B?Wk9IMW1nNk55aWoyaklXbk56MG9BUFBtQlVPaHRmamw3eTNNRHFZazdIOG5v?=
 =?utf-8?B?UmZISGdkdDZqVkozNWEvSTY2Sk5hdnVCaVNaMUZUNVVCNGtwNFEzempBTVJk?=
 =?utf-8?B?dndiVGdZcFdEME9zeENibUJEZ3BselpXYXpOYklCM0VXM3dWZWtZcXRKNE5L?=
 =?utf-8?Q?vR1E+5KHF0DTGRmxJRN1ZqEWI?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00fd3dd6-9073-439a-ef34-08ddaf48dd7a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 15:49:24.6690 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZahCakuqFJaZLNpvBEgDsejLRhe90O8ey7luah8tQFAdO94K9ZZBTLjGntCv4aoXY5jJ7m/Pkyiy45imYG4r2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7356
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KhZSuJCEL5V8NZ2BiWXWtFeapylUs9beB+M2zBBb4yc=;
 b=fwUOlOg98EkRRksbkroZMuPH8eCAzsinUrtRedPxDC+wpYw4EuuB44Gwp1CMtPim8Zisd5Lb97wUBdNv6JvzxDtEYWVFJTqGl/MOEaq8igkxuyf9qzlnQXmuTqWn0AK6Cc8DDVAZG8eNq1mdh8baqvjtKcoGgp8Bpr5UKzxWlBY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=fwUOlOg9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v2 1/1] igc: Add wildcard rule support to ethtool NFC using Default
 Queue
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

On 6/19/2025 8:37 AM, Song Yoong Siang wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Introduce support for a lowest priority wildcard (catch-all) rule in
> ethtool's Network Flow Classification (NFC) for the igc driver. The
> wildcard rule directs all unmatched network traffic, including traffic not
> captured by Receive Side Scaling (RSS), to a specified queue. This
> functionality utilizes the Default Queue feature available in I225/I226
> hardware.
> 
> The implementation has been validated on Intel ADL-S systems with two
> back-to-back connected I226 network interfaces.
> 
> Testing Procedure:
> 1. On the Device Under Test (DUT), verify the initial statistic:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 0
>          rx_queue_1_packets: 0
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 0
> 
> 2. From the Link Partner, send 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 3. On the DUT, verify the packet reception on Queue 0:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 10
>          rx_queue_1_packets: 0
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 0
> 
> 4. On the DUT, add a wildcard rule to route all packets to Queue 3:
>     $ sudo ethtool -N enp1s0 flow-type ether queue 3
> 
> 5. From the Link Partner, send another 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 6. Now, packets are routed to Queue 3 by the wildcard (Default Queue) rule:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 10
>          rx_queue_1_packets: 0
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 10
> 
> 7. On the DUT, add a EtherType rule to route ARP packet to Queue 1:
>     $ sudo ethtool -N enp1s0 flow-type ether proto 0x0806 queue 1
> 
> 8. From the Link Partner, send another 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 9. Now, packets are routed to Queue 1 by the EtherType rule because it is
>     higher priority than the wildcard (Default Queue) rule:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 10
>          rx_queue_1_packets: 10
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 10
> 
> 10. On the DUT, delete all the NFC rules:
>      $ sudo ethtool -N enp1s0 delete 63
>      $ sudo ethtool -N enp1s0 delete 64
> 
> 11. From the Link Partner, send another 10 ARP packets:
>      $ arping -c 10 -I enp170s0 169.254.1.2
> 
> 12. Now, packets are routed to Queue 0 because the value of Default Queue
>      is reset back to 0:
>      $ ethtool -S enp1s0 | grep rx_q.*packets
>           rx_queue_0_packets: 20
>           rx_queue_1_packets: 10
>           rx_queue_2_packets: 0
>           rx_queue_3_packets: 10
> 
> Co-developed-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
> V2:
>    - use Ethtool wildcard rule instead of extra uAPI (Jakub Kicinski & Jacob Keller)
>    - combine MRQC register definitions into a single location (Kurt Kanzenbach)
>    - use FIELD_PREP (Kurt Kanzenbach)
>    - use RCT rule (Wojciech Drewek)
>    - no need brackets for single line code (Wojciech Drewek)
>    - use imperative mood in commit message (Marcin Szycik)
>    - ensure igc_ prefix in function name (Marcin Szycik)
> 
> V1: https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20240730012212.775814-1-yoong.siang.song@intel.com/
> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 15 ++++++-------
>   drivers/net/ethernet/intel/igc/igc_defines.h |  4 ++++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++++++++
>   drivers/net/ethernet/intel/igc/igc_main.c    | 22 ++++++++++++++++++++
>   4 files changed, 52 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 1525ae25fd3e..c580ecc954be 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -406,10 +406,6 @@ extern char igc_driver_name[];
>   #define IGC_FLAG_RSS_FIELD_IPV4_UDP    BIT(6)
>   #define IGC_FLAG_RSS_FIELD_IPV6_UDP    BIT(7)
> 
> -#define IGC_MRQC_ENABLE_RSS_MQ         0x00000002
> -#define IGC_MRQC_RSS_FIELD_IPV4_UDP    0x00400000
> -#define IGC_MRQC_RSS_FIELD_IPV6_UDP    0x00800000
> -

Small nit, but moving these fields seems like a separate patch since 
moving them isn't part of the wildcard rule changes.

Thanks,

Brett

>   /* RX-desc Write-Back format RSS Type's */
>   enum igc_rss_type_num {
>          IGC_RSS_TYPE_NO_HASH            = 0,
> @@ -635,6 +631,7 @@ enum igc_filter_match_flags {
>          IGC_FILTER_FLAG_DST_MAC_ADDR =  BIT(3),
>          IGC_FILTER_FLAG_USER_DATA =     BIT(4),
>          IGC_FILTER_FLAG_VLAN_ETYPE =    BIT(5),
> +       IGC_FILTER_FLAG_DEFAULT_QUEUE = BIT(6),
>   };
> 

<snip>

