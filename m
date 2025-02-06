Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42245A2AC0E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 16:04:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA28784079;
	Thu,  6 Feb 2025 15:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VJyOnRJiE9Xu; Thu,  6 Feb 2025 15:04:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2DCF8407F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738854265;
	bh=YTtSVK0+vPoN//qdkuO94h4horigWqVPU0eUgn/OJXI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XbCVHkCP/lWXtgmujuhIQUSvnSYRLrQmOTTtUcm+qEmiGdY8qIyQU9uk2M6ekdtqh
	 yd6zdeQYlIuUmbgktIiQ6IXiHVrtLEEE/swYycH4FQ75HJ4RcxzttvFr1DT3Y4jvSa
	 jVUykHNcrmwHbbfsX582wadc2bjPhsBFtbXAMClJqKfUocnrfeZkXdFfiBkKII1D7l
	 xA4977wYOIsUsvZZv/YULUMfpW9rlasWc3SRfdSUf+be/DGkwr9KsiC5+vTdLv88UB
	 2SxWM6ypZU8oWu0yNo++Irs021eE+8nw4csQGVHgAayGUT5ZE6dOD/wwzlF0UQiIbA
	 DB2pPcr5dOFtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2DCF8407F;
	Thu,  6 Feb 2025 15:04:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7B75E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 15:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D848B84079
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 15:04:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xta-8c7QV9lH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 15:04:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.70;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 973B28402F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 973B28402F
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013070.outbound.protection.outlook.com
 [40.107.162.70])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 973B28402F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 15:04:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OGyskRDpqffktCFKRReimNwXYO7jx47DBTcqhZwYeOcAnNzW5SHKuLiy4NgoItLZvFwHMLtRuFLJEFPcJGrJSbtJqxW636TDi8T7Y6BBczkpWTrkJjsiF0+cFZ5x5W1twQnnch9s6qiJMIIsJl2quOt4vs1+DZAN87KycUvS2wYGAu/Olu0YYxXMFYtfiqiCRQWRtrpuAgyjglP7Gn74eHSfGtRY4jXHJG6oD7x4+MfhkcSWpeL1fj8d6bGLaUlQHlSJTYYDJRNitoMJoFx9WoBxmwM+dXqhybYRp37mJbXSSlNKVz4JTJhWE+a/B0iyocbk7w0UoWhFsiORxpvKqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTtSVK0+vPoN//qdkuO94h4horigWqVPU0eUgn/OJXI=;
 b=cevzlPkVVXKbRcPGz6xTreFW1Qik09JodRICrth3S+f4NFxGSe8yWqqSPIv8xAvY1SnsEAN7QhIt5Ny92rIESKZclTy+oukBkstjbiwZBRdOsy/FfieYXiitRDAfT87FkbmzniDOLah0ZQfXavfsU9s9GCyE77YNgEm4nkCLVWR/9uw7J2Sk00bRhLh2YUL6k2/mm/jd6Px7+G1JUdQVmri9YeUkFN9/vBCBsXR1WrbZkxKKbJiWf+1UXPkPObfjy/JOa6Bsyr4E71GcdR5w7dzq8ZMwKhso1tkBxqPIPB6z+thCnxZtADbt7DIiPgJvWlPmqb1G/6rLwL6hb+0VZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DB9PR04MB9673.eurprd04.prod.outlook.com (2603:10a6:10:305::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Thu, 6 Feb
 2025 15:04:14 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8422.012; Thu, 6 Feb 2025
 15:04:14 +0000
Date: Thu, 6 Feb 2025 17:04:10 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Furong Xu <0x1207@gmail.com>, Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Petr Tesarik <petr@tesarici.cz>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250206150410.u4rehwxnnuhtcfxr@skbuf>
References: <20250205100524.1138523-1-faizal.abdul.rahim@linux.intel.com>
 <20250205100524.1138523-6-faizal.abdul.rahim@linux.intel.com>
 <20250205171234.cuscjpzdyc34ofbn@skbuf>
 <6bf3f4b2-efee-41fe-97b3-cb53eca4dfed@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6bf3f4b2-efee-41fe-97b3-cb53eca4dfed@linux.intel.com>
X-ClientProxiedBy: VI1PR08CA0210.eurprd08.prod.outlook.com
 (2603:10a6:802:15::19) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DB9PR04MB9673:EE_
X-MS-Office365-Filtering-Correlation-Id: af6a6446-1f62-4308-9b83-08dd46bf8510
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXlLaDl3YS9CcEpnV2ZKb0JWWlkxUE9TdDR2bGJ0VVd3N1B5UVY1U1dkZDlw?=
 =?utf-8?B?ZnVQdnZGcWZWeTUybEVLZndXOW1DaXg4TjZ0R3pkZ2Jhbmt0b2d4VHJiK3h2?=
 =?utf-8?B?eGxzS1VtNHUwY0hiRlRNeUVuWXQrWi8wRlNxaVlaWjFlbm0rZ2svdlRzMUto?=
 =?utf-8?B?QTNDM05OQ3pZZGxET3Zwa25RSFQwbjZUNDlWbFFpMS9MVU03NVlDUnNzaHcw?=
 =?utf-8?B?a29tc1NBZEUyOXl0NnBYWXgrQ0x2TXE0c1V0TVF4MU12d3R2MmczSGFRaDV1?=
 =?utf-8?B?UWEweEtIaE1QNEVjVnlZS3lWTFVsTzdhbjlqWkNFU0p0WUluVGlRZ01IVmJj?=
 =?utf-8?B?NE5pdVZTM1B6R1ZQL3UxazJGQVBLTW5GS1R6ZW11SDJaM3pQVHlQQ1Zpb2FC?=
 =?utf-8?B?OW1VcnI0YTZ3eGRUblNER0pOV2hxS3pGMG9BMVRxcE55QXJibVFQZjVoK3Vi?=
 =?utf-8?B?TnBYWldMUDVqSHhtZmkrYUZZcWZTSHdwckZiM2tDZlVBcTNoM0ZYRVU4M0dV?=
 =?utf-8?B?NmhzVFdKTEpyY2gveTZEenR1QW5iNEZRaWxuQ2wwN2JqSk1NNVR0Q0JIc2RV?=
 =?utf-8?B?Um1GbkhqTE9MS0ZQSk93ZktCcVhOT3RBdmNEdGhmVFRCbHVTUlp3ODR6RzR1?=
 =?utf-8?B?L2NmWkcxVU15RSsvUWVSZ2lIV2I0TWlKVDNIZm5MN05raXN3YjJjSjBnM2xv?=
 =?utf-8?B?WU0vZFFIRytSOEVueFJmSVV4KzJrMHArZHR4VEs1aWVKNEU2ZWJGMndNdzYy?=
 =?utf-8?B?M2lhL2tVU0E4NzJqVk55cWN4YXJDbWtCUXBES3NPTHdzQzNvSkVzK1MxczEz?=
 =?utf-8?B?Q3dxNVY0SkdVeW1xMUxvNFdZZjcwODduM20yK2xFT1pQMExKWEtrZW1zaUZB?=
 =?utf-8?B?UVpCby84UGI1bkJ5T25HT3JiWk9YcnBwSG9rdTR2L0VWOVpQOWZMR2dUMUYy?=
 =?utf-8?B?QWpCbGVOS3ZXOUdybndVTElad0g1L2haLytKZ3NKb1h3OVVMTFNlL0JMWEpQ?=
 =?utf-8?B?b0NFUHkrT0VLUkRSanNUVjVhNjkwYzgrM255VC9YMmhFa1BIQjVsc2dCOXhq?=
 =?utf-8?B?NzRhMTR5RjQvWnJYSlFJYTY3NUVZWHZFNGx3L0FhdG1VenpRcEFudGt6emRZ?=
 =?utf-8?B?Q1ExSk9Ha21WQkgvcUV4czZTREdRR1VzYXlKUnZBUDNKcGQyUWhBL2pMb3Nm?=
 =?utf-8?B?WldwWlYzT1NDWWJmR1BaWWFWSW4wZ0RmTHllWWNTUncyOWZSaXcyajhtZTNH?=
 =?utf-8?B?aGxPRnQ3RkF4MHFzMWUweHRCZTNDRXhJSUZnVCtGNGtjSmtROEpldWFteGNx?=
 =?utf-8?B?d2dIZHR6RGNDT2hzb2lQNUVoQllvcDFnWDgzTkNZWld4ZXk2VEdXaEFhb2Vv?=
 =?utf-8?B?QmlDTlkxUjR6OEswVnJ4Z3lBWVEwZHZ3eXBweGJ0NW9kYndSMlZaWFR6cVA2?=
 =?utf-8?B?djh0VWNvNjdGT09QVURJZE5mOVFsWFRhMEx5NVovUFE2ZHR0NzcwSEF1QVNq?=
 =?utf-8?B?aFVyTS9jMGlFN1ZEZ2hXRWFqaXR2N3BSYUk2S0Z3YUZLdVFhK1lYc1pmOFNv?=
 =?utf-8?B?TmJ0Y2s2RkJvb004ZzlSRGFoSkpjd3FWSUp5Z2NZYTZEOTdUOU43YzkxYjlh?=
 =?utf-8?B?WDNremFvYTBQdnEwUW5XdW5aakg2d0lKNVpjSTUxM25lSzZnL0x2a2VwL3c4?=
 =?utf-8?B?U2tHcnRzMmhMaGpzK0lBMkRMWjVNTDdpQ3hxaG90T0JmZWg3TEVhM2MrNWdD?=
 =?utf-8?B?RFk0WVFpMEVrancydThQNXhwRjV0d1VHSnNZRlUyKzZQUnhjakg2bEtnS094?=
 =?utf-8?B?L0J0VjNjeG1HWlN0TmZpQVhlSTFiYnQxUXJOTkIrc2tTWWg1S0NvSDNLaG9T?=
 =?utf-8?Q?YdBapmsTbouZx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1pobGN0M0RvMzVtSUJxRGF6N2EwYUs1MkZISWx5S3Z2TUlTRlFUSEx0YlR0?=
 =?utf-8?B?Zi9SZDUwY0d4WHRkbEdkTkxMd1pVeGZLY1p2eTdrQWNvYnhkY0FId3MrZnhV?=
 =?utf-8?B?NExCUUxsTkcwYkhlZEZBK0J2UXZVK2JhV3dSNDRBVEZXbm1rcWtaMWlMMkxy?=
 =?utf-8?B?ODc3cmNRSGJJM0VlVmdCcEhDbTN4UERBTnpFdzZhWWljS1lLNDhtdnJ5b0Zv?=
 =?utf-8?B?WThPSUNyc2k0c0VHZStEWDJPSElQanhVR1pab2V2MjlWYVhHeXhBZHJLVVBT?=
 =?utf-8?B?YVdmTmtNQWJJUzFRYzN1SXhlaUFxK1pjcWlITk5XMHVRc3duZEpKZUYzL05u?=
 =?utf-8?B?aXNlM2ZpZjdVenRIdHhYN09NOUNneDJKTEVSWHJRaU5oSCsvbkV6VThSUVVV?=
 =?utf-8?B?MG1zanNadWswVVNlYVgzT21QQ2RER1cxRXVkazRHb0VldERnYjJiVUdCcGZh?=
 =?utf-8?B?RjdUNGRVdml5WmdWVit2VlYrUXNqZ0Z3UWtoWWUrVGxUV2ZXMzJaTG1NMm1v?=
 =?utf-8?B?YWNWQ3h1Vi9kSVZPdDBhYjgxTXlHRmpRbmVMVjU0bEJaZ1lUN0pMT2dseHM4?=
 =?utf-8?B?SEZ3TDBOckU1NjJwOHVvSzJpOFZwekxVUHl4aS9Kd1FuRTBGbkFsdjEzRnZp?=
 =?utf-8?B?aU83RzU5MXVyZ2QvWXVMU3FkcXphclNoM0xPQkZYbkE3c082QmN2aTlUUUNq?=
 =?utf-8?B?YUcvM2NuWHIzY01VNVVRMy9oT2Z4N0szRmdSejZOR2h0ODMzTmNzV3ZDbUlj?=
 =?utf-8?B?YkdIUWFZb2JSdXlEVTFiSjBDMlpxY2x3YkVEb0RwTHlKOFEzSGpBbzB2VXcx?=
 =?utf-8?B?SURRUUZyL0JMVXdQWDZ0SmNHR0JiZVg3Z1RCMGhaRUpIN3ZOL2pGUGdMSXZo?=
 =?utf-8?B?L2d3MXI2bnFJbVIzR3NDcHlDNU9VZ1pabEU5bEIxOXp6ckd2QjJCNXVaRDRY?=
 =?utf-8?B?M1YxejJhSG4yWHNuOE4vT3BhRWwxVFQ0R1JldXlleDFlRkVkVXdUd3prM2dF?=
 =?utf-8?B?TksyelMyZ0pIejU5bVpaaEYxWnFldTc4a3JqM3F5Q21DTXB4RXlRcUhmWWZV?=
 =?utf-8?B?alc5R2VPMVBvK3MvYzR1WG53TDZGZmorcDBVelN6RjhObHJNOGpNVW44SWF5?=
 =?utf-8?B?RWJyZ0Qwb0xiYlVIK0NSTUkxSWpCT1BFM1pURGs3VzM3WFlLK1Avc0pEaTQ4?=
 =?utf-8?B?b1Z2YmkwWXlPaXBuVjZrTnVpSHRhUkRMTmJmdmdLbVBvQTYyRnFoNHRVWS80?=
 =?utf-8?B?YzdCT1gzaE4xNEl6TTV4cTNnUkVobE5tc0ZyTkZDenhBczJNM0Y1L1JQSzUy?=
 =?utf-8?B?enJSOXpJSFh3d2hMWjBCL092TnlGRnJCUWJvTXRxK3JsbkVxMXJ4N3AyeDBH?=
 =?utf-8?B?M0hNSEg0bnkxYnB5RG5UMnJjWkJDV2U1QVM2ZlNNUzJ0d3d2RzRueFdzUWR2?=
 =?utf-8?B?ODBZN2pkTFo3bXBVVU5XcndFUkRjUzdvRFVzUURqczU1TDBBbk1oQWROak1i?=
 =?utf-8?B?dWdCOVRCU2pKTTF3Y2JLOXhlN25vOG1CZERJSURESi80ODU0MVZzM3VXU3dI?=
 =?utf-8?B?ZDdtSUlObzF0MGNsTExyc09GTjZxRWM4WnFKTU5obkIzSVFhd1k1MFY2RnNC?=
 =?utf-8?B?RGp3VWY0UTR5MVFhcjh0dmF4a3BzaWRsQlBxREpDdWY1cVNjYWYweGhxZTMy?=
 =?utf-8?B?S1pRWW11RTVxeTdHTDh2Zml2QjY4MmNFM2JIYXpERG8zMERpTGlHOUQ1UzlT?=
 =?utf-8?B?TFp1cEFtM0xCa3c3OTFzLzNnb0tDYnQ4VDdnYmhBYTVwQW94ekJieE5BM0Fx?=
 =?utf-8?B?QVZ3OXBCNnYyZU0yOU1rVDM2d2pQN21TUXVObWtiM0d4SEhWZnFOTWVhb05j?=
 =?utf-8?B?WExuNnNKc1ZmZGtLU1hhMnF6WkZGM3hyeDBDbytuaHZQTGFndEtsZDBaWHgz?=
 =?utf-8?B?dW5zcmtLWlFTc0ZPejMrWnA4bWdTQkUxZzMwSy9id05yZThpTXpBK1dxK3lE?=
 =?utf-8?B?OEFzNkxhSzQrenpFZmtYelNXSkdmS0U3a2Q0SktuVS9kdlROVGU2YkZEazUx?=
 =?utf-8?B?anM2SUh2NTZ3N1dUeE1rNnFFaTRtYWkvQldrNUdONk1WaXNDOFUvaWNzMmNv?=
 =?utf-8?B?Sk1OQkkwemJSTUVDc0hIeW5BYVZ6YWpSZGI3eUZVRGZXaU41djJjaC9OamFN?=
 =?utf-8?B?emc9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af6a6446-1f62-4308-9b83-08dd46bf8510
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 15:04:14.3352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TD/bPElEacaXgMx3G4hLgcyAPeOicOJuFxj/kzn5SoNalmR1IZQRN28kyqyFSWK6YoyWvhLW3oGXvq3Exixr9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9673
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTtSVK0+vPoN//qdkuO94h4horigWqVPU0eUgn/OJXI=;
 b=aXfMfU+97sXQcY3IkpfHVYJX4Ri4C2xUXKGDf+GATQr2Q0LSqtyedQ5N3KIytsePSVtilMvFQU6R76mNkttyUMvLDMgCIrMW6S57N1kZKkWYlYRhmphq6Y6RY6wDOp1ei/BIvv1FJ2hovLmqU8uwHImrrbnA/7lLj8ei1rlupRkopRkpw2hJyQrAnhcg+CkHps0iYBOwUwSf1k7j3Nfrz5MayhCx2PB/Ytq3vJM2p0bAzPA04E+hMXt4Ozlgo3VhT0alOmoLfHIym6BuDUqaMEhnSD3hcCKVsmp1SXsDFMp1FWVpYXJ98E15kkAhumc9vDygdlw+yD8rJwCPIfz1hA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=aXfMfU+9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/9] igc: Add support for
 frame preemption verification
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

On Thu, Feb 06, 2025 at 10:40:11PM +0800, Abdul Rahim, Faizal wrote:
> 
> Hi Vladimir,
> 
> Thanks for the quick review, appreciate your help.
> 
> On 6/2/2025 1:12 am, Vladimir Oltean wrote:
> > On Wed, Feb 05, 2025 at 05:05:20AM -0500, Faizal Rahim wrote:
> > > This patch implements the "ethtool --set-mm" callback to trigger the
> > > frame preemption verification handshake.
> > > 
> > > Uses the MAC Merge Software Verification (mmsv) mechanism in ethtool
> > > to perform the verification handshake for igc.
> > > The structure fpe.mmsv is set by mmsv in ethtool and should remain
> > > read-only for the driver.
> > > 
> > > igc does not use two mmsv callbacks:
> > > a) configure_tx()
> > >     - igc lacks registers to configure FPE in the transmit direction.
> > 
> > Yes, maybe, but it's still important to handle this. It tells you when
> > the preemptible traffic classes should be sent as preemptible on the wire
> > (i.e. when the verification is either disabled, or it succeeded).
> > 
> > There is a selftest called manual_failed_verification() which supposedly
> > tests this exact condition: if verification fails, then packets sent to
> > TC0 are supposed to bump the eMAC's TX counters, even though TC0 is
> > configured as preemptible. Otherwise stated: even if the tc program says
> > that a certain traffic class is preemptible, you don't want to actually
> > send preemptible packets if you haven't verified the link partner can
> > handle them, since it will likely drop them on RX otherwise.
> 
> Even though fpe in tx direction isn't set in igc, it still checks
> ethtool_mmsv_is_tx_active() before setting a queue as preemptible.
> 
> This is done in :
> igc_tsn_enable_offload(struct igc_adapter *adapter) {
> {
> 	....
> 	if (ethtool_mmsv_is_tx_active(&adapter->fpe.mmsv) &&
>             ring->preemptible)
> 	    txqctl |= IGC_TXQCTL_PREEMPTIBLE;
> 
> 
> Wouldn't this handle the situation mentioned ?
> Sorry if I miss something here.

And what if tx_active becomes true after you had already configured the
queues with tc (and the above check caused IGC_TXQCTL_PREEMPTIBLE to not
be set)? Shouldn't you set IGC_TXQCTL_PREEMPTIBLE now? Isn't
ethtool_mmsv_configure_tx() exactly the function that notifies you of
changes to tx_active, and hence, aren't you interested in setting up a
callback for it?

Or is igc_tsn_reset() -> igc_tsn_enable_offload() called through some
other path, after verification succeeds, that I'm not seeing? I don't
think so. Maybe coincidentally, but not guaranteed.

> I briefly checked the driver code and the i226 SW User Manual.
> 
> The code calls igc_reset_task() → igc_reset() → igc_reinit_locked() →
> igc_down() → igc_reset() → igc_power_down_phy_copper_base().
> 
> I suspect igc_power_down_phy_copper_base() contributes to the link loss, but
> there are likely other factors as well.
> 
> The SW User Manual states that a software reset (CTRL.DEV_RST) affects
> several components, including "Port Configuration Autoload from NVM, Data
> Path, On-die Memories, MAC, PCS, Auto Negotiation and other Port-related
> Logic, Function Queue Enable, Function Interrupt and Statistics registers,
> Wake-up Management Registers, and Memory Configuration Registers."
> 
> Given this, right now, I’m unsure about the feasibility of making this
> change, though I see the benefits mentioned.
> Validating this would require significant exploration—i.e., investigating
> the code, running experiments, reviewing commit history, confirming hardware
> expectations from the SW manual, and consulting other hardware SMEs.
> 
> Resetting the adapter is a common mechanism in igc that relies on shared
> functions, which can be triggered in various scenarios. Modifying this
> behavior (if feasible) could introduce some risks and would likely require
> additional testing across those scenarios. Focusing on this right now might
> delay the current series, which is primarily aimed at enabling Qbu on
> i225/6.
> 
> Would it be alright if I explore this separately from this Qbu series?

Ok - as I said, it's not as if I couldn't eventually tolerate the workaround
you chose. We'd be putting a dependency of this feature on some unrelated
thing with a high degree of uncertainty. For example, I asked if this is
fiber or a twisted pair PHY, because while for the copper PHY the issue
might be more tractable (clause 28 autoneg on the media side is completely
independent of what the host side NIC is doing - it may reset, it may do
whatever - unless the MAC provides a clock that is important for PHY
operation), I do wonder if anything at all could be done to avoid the
link partner seeing a link loss over fiber, because there, the connection
is direct PCS-to-PCS. If you have to reset, you have to reset, and then
pick up the pieces, I understand.

It's good you're committing to look into this in more depth, though.
