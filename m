Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL04Omo3e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:33:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 529CCAEC31
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED8AF60870;
	Thu, 29 Jan 2026 10:33:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V7PZq8mmZo8d; Thu, 29 Jan 2026 10:33:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5667360872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682792;
	bh=IHDoqFc8hAsl+4DZOrUqDijI61XK/pynyvRdtJwFgbo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BTFXsRE/6fYVJWJ+8JZxqsNjYpcQob+jGr5Wu7Vj844/sf9vY3BYYTw1eYf5+Mad8
	 GfehL6PsglMvVrskzeXxtYGt5yLBZU8Z2JfmhjSDyTU8c00rFrIby/SKRNts3g4nXr
	 o1FR7JgN5BhLEVL+iox+skfHgxflEkelAKVkSGRDXZfHPcYrRHUK06mgAVKGfejtfR
	 lXw/V+2RkEalziTYwCRCrNJUEY62lDZJim3raoFSTo0WVoiw/vfvowaICI6Uq1io6d
	 LXZuVWfD1aYQ0+tv8DZwkHkZjVSp+Bz6fG+Nmm0bV5Avm8lgRV0VbA0Wgl9OwlUOwj
	 OkZKrEgi5QwsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5667360872;
	Thu, 29 Jan 2026 10:33:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CA408118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA7346086F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1pWlCazYSzhI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:33:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A81360866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A81360866
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A81360866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:33:09 +0000 (UTC)
X-CSE-ConnectionGUID: cwgjYq2ES82YW0fcvUgF5Q==
X-CSE-MsgGUID: /GhY+s6bSxqMJClphGV1PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70890834"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70890834"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:33:10 -0800
X-CSE-ConnectionGUID: 84Q9IJlpTJSp7TBIJPKUQQ==
X-CSE-MsgGUID: p6F7OI3gQMi2PtOJtb1e1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239274916"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:33:09 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:33:02 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:33:02 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:32:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I/vindhAXF+fieEjbnfI8ZqPEE0TPKJfi+CeI51huLus4H0r0jzEB3oBgAbGct6LPhtvbviNV8RieeZ31aQt+eI40dTi9aEPKS2gix7L+egYfdJ/0zUXa0O/10nY3alyMUgJC/mXpP0T7SbSu09geHa77klW+Xm80P4YpfgTVSgHqatniZlLf0eeL8/gfz9dk4dnngyYI9gNB1Ax3BcwePeMpFOX4yTXfCzQPcgOyPdXj3JUfN0+SbCStrPDdGffhrHdNgCZdkoyX/C8Tr9ef3P968CXc+cJfPzbwzlhmVEmCD7BKYrIP7Kx2k/g3Bvmx/s1LfHwP94S4mFWsnyB6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHDoqFc8hAsl+4DZOrUqDijI61XK/pynyvRdtJwFgbo=;
 b=kHGpmLo+DOotHvIRdFa2LrPIWBEOBp31ymxJZu8SxJLaH37it+CN1tmo3VZq93Qyw18+5FpsjtzW3b3z18iNCIG4MzIl4WTzip3VSHbRaDyvtuzPF1rsHCfR2iOgqHDl2M4znzrdBwjxlYnrTr2JbyMj5r/Zj/U1H6nTRU+201T3YIDcaxJ2kgwofgs1E2FdvPdwCAT3N3a7sacejX+XXvwsh94cOmPFEJoDuwzT/4XyqtlFp8iN6BEKB/gQXfeh/tiweTC8UYiIPz0npyxfEeXMy4vlejErf6QFIrKF2cyekmaRDeKhec8NZpZAO8LG20xrtRXpP8I5bXtULbvI7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:32:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:32:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 18/30] docs: kdoc_re: Change
 NestedMath args replacement to \0
Thread-Index: AQHckPaPcpCo4Z+gxU6We/y3BFrksrVo8zaQ
Date: Thu, 29 Jan 2026 10:32:36 +0000
Message-ID: <IA3PR11MB89861576F966DA66BC9165F5E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <04552ce2ac1a426e74bf7353e1ba1586e2af4f36.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <04552ce2ac1a426e74bf7353e1ba1586e2af4f36.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: 33027705-2365-4044-0f54-08de5f21b865
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?aHFOVFQ4VXRxbTZWQ0hwV09tZzhuWW1nS2toZEJIV292cFRWYXJyQnNJYm5F?=
 =?utf-8?B?bFo0cW9XTDRveURtN1BhSXZUd0ZKUzJhS0Fib0VmNXhKTFVHMXhLZHpsOUcr?=
 =?utf-8?B?MzNkVGxCeDVVRFZySW56VDJqenZGUVgvWGdlM2dhT1c2ZW1iMW11amxQS3RL?=
 =?utf-8?B?Zk9TWjVQSTc2b3JiMHlzelFXYkNCYi9Hb01UV0MrazYyNW94VURyVVZWZk8r?=
 =?utf-8?B?NjQ1eGdQaEl3R0YweHFTTXlQRW9mNG90S0lwcTUwTWRhQWdoY2xwQmxWQWxY?=
 =?utf-8?B?OXMwQzlweHRNYzlYUCtpaElDNllJdW9oNXZPQTE1YUlNQWFlVmtvVTdvOGdh?=
 =?utf-8?B?ZkZEMEpvcWthK3VKTTBOb0ZDWFlKeEZMdldsUnhPdC85VnkvSlNFZS9BWHkx?=
 =?utf-8?B?cEVGTTQ3UDg1T3ZDNGlWZWJUREh2eVZzY1MrS0RMd09ENE9RRFRFa3RiMHVl?=
 =?utf-8?B?MnNMU2NYNnJnSktKck9hemx1NTYvVXBkbnNTNnZLVk0rL3pBRVM5WU1tazFn?=
 =?utf-8?B?K3FPWit5RzB0MWZaMWRNTjVKRHRwQkpwb1RYQ2ZkQXViMzZYSDVaNGVrMm5l?=
 =?utf-8?B?TEh6M3NkNEVtS1Y2S2xUYmNMaDVYSC9IaEozS0h3cE9mbFZybTM3V0N0a3lC?=
 =?utf-8?B?ZjBCWUlLVWdHd1BwUUxueG82bW1UMytjZlp0WjRNNUhicVJLaVE5Y1lQb3JS?=
 =?utf-8?B?ODc0REViRE1BNXB1b0EzL1hqdkdYdmNrY2RjV1Vuc3dKRGJSeWM2am91dlgx?=
 =?utf-8?B?eVhIUEs0WndMa3BSbUxuaHNmV2VXVFAvSUN0ZzFkWG5QbTRCK1hWVDhUb0Iy?=
 =?utf-8?B?VEtSZVZjcGRFZDk1a1dKMzJuZUpVVWdWY25MT0ZiSWJGT3JTKzN3REVjZFZP?=
 =?utf-8?B?K2JsWm5zdEplNGZZaDF6VjJOYVV4dENLL0NiOUhjUHovMjJ3SmZxNFV6bnhI?=
 =?utf-8?B?akp2aDFwaTZiNUFJWHFvckhBOEltcFFOeEVNM2tORWNaRGM2SitaRTJWOW9v?=
 =?utf-8?B?WkFVZnBEcWZtNzRjR2kxMHdxYUFISUx1bWFhVnNHNHcrYVBBakQzQXdLa01u?=
 =?utf-8?B?QUxBSXJIOTlwMHVzZzAwejdFN3NpcXhCVWVTSldTWDJQNis0b1ZteGlWWXQx?=
 =?utf-8?B?RVdqbHRKN1NoV0pYMkxpTVBrSVRraGpneWNmN2ptd1ZiSjNxRW1hS0xsUDl6?=
 =?utf-8?B?R1EyRHFPc2ZkVytqSFhGVzhtSlc1TTdqWXYxQU4rMFF3bzZ4eHJyY3VTbmw2?=
 =?utf-8?B?SHQ1V2cxSTZhK3A1ekxJY2NZV0xaODBTaUdpaFNkYXRLQnRqejBMSWp3WWsz?=
 =?utf-8?B?WkZHc216OCtlRjdLek1tVisxMkxqWmk2YXV5UnRKSldRYThwZ0NVdGsvV0pz?=
 =?utf-8?B?ZlhtYnRvbHE2ZGUraFZpeDRkYmgzYkZVcnByWjNGa0ozVVppWGU3bVpzTjBM?=
 =?utf-8?B?T3kwczR5eDl0TVJPV09Oa3NTUTI1NGV2aDE4SGlkNmN6dHQ1R0xMZExXM3ho?=
 =?utf-8?B?Wm9WbnpXeHg4MWxtZFJPNmpzQ1RIcW9KNHEyZ1VZdGkvOWZQd29ZTzYwTldO?=
 =?utf-8?B?OEFybjN5WkU3MjhFZVdYRFBkOXl4cWlKMDY3eTlaSjhIV1RkYk5ibEJGWmFw?=
 =?utf-8?B?OS91V29kc2k2QkVsTjBTLzFCVStmYjJjNm9MN0xheUhVTm42TWpVMk5KZWp0?=
 =?utf-8?B?d3V1Q1B5Znc4b0xxMjI4cG4zcW9SN2JuUkxmUnZZOXZ0QldvaHhhUW1BTk54?=
 =?utf-8?B?b1VxWkxWb2xmWHJZM25oa29WeHhLbzdQWm1FWXpHdDFMRHQwZlhlWWw1cUdj?=
 =?utf-8?B?V3U3dXFFbE9HaWEvalZ3OExTVzJKaGFDcHRMSzVUd083TFZXMExpZUVTaE1W?=
 =?utf-8?B?V2oydDVMbzFsbXR5K1U0NzRTM3hPeTl2SnBNWURHYW1lcDAvZEJKTjk1a2xi?=
 =?utf-8?B?VlhieGdwQzZHR3dKalFORVhDU083Tll2RHc1RHhMRjRvVHhyZ0JhZ2xmUm1U?=
 =?utf-8?B?SDhCTFRMYi9xaGFKU2pMNFZFQUZGdk1maFdJZ1hmVTNXQkgrQktOVFozemNx?=
 =?utf-8?B?dDNGTGdGR1FWQ05sZVdING9ub3JYNlBKWnZGa0taYWZxejNDZGc4NXMxYmlJ?=
 =?utf-8?B?MlBqdEJvd0dsNVdxY0xnSVR6ZEhDMjdsQnRZb0twbWZSTjVLUWJ6dU9ENDBX?=
 =?utf-8?Q?KS0M7LI7fRQ9no+tPx/OA2A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekdqd3BtbnNCUW42WFp2TlUzdmhxZnlIbzlzSHdVTFVQa1k4L2QvbkkwZXBF?=
 =?utf-8?B?MFhFQTdaOXd5QzFiaDY5ZHhtbGFqQ0NNYUQxMVF6WGhXWXVZVHJzNVlGTG5z?=
 =?utf-8?B?RXBHcjQreEtTOVhVMmVMWWhCbmVIdWI1NDIzUFBsNll1NG1wSnJjTWx4NEtB?=
 =?utf-8?B?Y3lGUWNyRTJ2RUk2RzltcU1obWRtMGxKOS9sRmI0V1RXQ0VvR3IxTHI2Zm5m?=
 =?utf-8?B?NzYxaUs0VUwxMzlXWVZ6V0ZBS205dGJLSlBOVXJscUNMVlp3QVVZTmdIM1dZ?=
 =?utf-8?B?VWRid3FUQU94T2l4Ulk5OElUKzJsczVnZ0NKVEVnZkZrMjZ2ZUExR0dtcVJT?=
 =?utf-8?B?NXAxaHpQd05DOHBLSnRVY0NlUmtza01zRUFTY3RiWndDd0NybjVQYzJFV2to?=
 =?utf-8?B?Q3A1a01tRENhTHYzeUo3MG1yMEVxR3ZDeUY5T2tFeDViTHdrK2dULzhvWUEv?=
 =?utf-8?B?VDZyaVFsV0laSDJVZWJ2Tk9JcDl2VXpuSDhEaVI4RDEyTWNwdTlQSjZVeTdp?=
 =?utf-8?B?YUE0N1A4YzJZMlhINC9sUTBad055Q1hQd3QwOFV5RzJzUDAvaHhNTFFWSGtP?=
 =?utf-8?B?ZmJCMXY2N2VkVSt4WlV5U2dQZ2YrUDZreEhnbUVKR0UrZWdYTHlXWXRWb3FE?=
 =?utf-8?B?a01rK0tEZ1F3MFBLM3kvY0Z3dkF3dzVtVWNaM1l6U3pjczd1a3Rva0ZSQlpz?=
 =?utf-8?B?VTMwdk1JT292TzVJWEhPNUt4eGtMczNORWRSSzVjRzZZRis3cDF2WXF2TWZT?=
 =?utf-8?B?SE9tcmMwMGJ6azJDWWhmK0cwY3NlZWI2S3VSREUwS2NvTE04NmVaVEhpcldq?=
 =?utf-8?B?VVM1VS93Si9aTHBhV0dwRjZVZU5MVndKV1NJQ01VTVg1Sk00ODIvcTBibkJE?=
 =?utf-8?B?NGQ1WEhFTDc5V3pyQzQ5bmdOT3JycjhWWlZyQkloVk9yOE0vT3NhM3JTZnJO?=
 =?utf-8?B?NlNsUWxzY2hJYTNLVWZabDk5Ty8xUllpZEc0Y1QvcTZQc2JJMURMYXo2S2Rl?=
 =?utf-8?B?MGJ6YjFsYlN4QVRXTFkwK1c1Y2hOeFczKzFLQmtzV1FUb2JXaFlwbm5td01x?=
 =?utf-8?B?blpKYU5mV0hRcHBYRk8wNnVIT0w0YUVTdWlBejRUbEdIN1NWTjJWUlI5eG5y?=
 =?utf-8?B?L09TLytLZzJrTm0vRm5jYWZzcFpXQVl4emdjUWMxL2UyaFErb2Z4VXVtSUp6?=
 =?utf-8?B?d2g5MXF0Yi9aWFNxdUsrT2tya2xrQ2lxSUI3TEEwaHJRNFJrbktpMG9mb0Vj?=
 =?utf-8?B?UUw0SmJEazBhd1BnOFZYKzVaZ0xHNmdQM1kvVjFHdHErUDdOTFcvTlNJOVVH?=
 =?utf-8?B?UlNWNTdTY0hlRFdUQkRJcER2YzNLRHk3MFh0N3BjemVpcEh0Q1BuUFV6Um9I?=
 =?utf-8?B?eGFTeTUrTHNkS0ZnR3FBLzJSK29ER0pFY1dINkY3K1dJQjRoeVVGNkxVdi93?=
 =?utf-8?B?OWY5T0N0TTFsK0VDVkpqY1M0KzhSNjNmc3E0TDAydSt6VWgvQWk1WU9rb3Nv?=
 =?utf-8?B?ZmRkcHA1Y0t5YVZZbWtsSGc2aWRPb09LOW1PbmF6VVQ2OUZDeGxyWW94NHJa?=
 =?utf-8?B?cyt5a3JjcUgrYjVpamk1NUNEVHRJZkxNbTNPYlhGb3J6Wm54OG9zUHk1MzU3?=
 =?utf-8?B?d3FCcXFqc0JBQUczbHQ5d1JXaldjQUNNNzM2Q2RxWlJ3OUx0QVA4dkFUV01r?=
 =?utf-8?B?VVR5ZkIrUi9Pai9MNkxQM09JR00xYXBVMHVwYlNRKzBUQ0NOLzQ5S243TDE4?=
 =?utf-8?B?anU0a0drbmljb1J2YjZCcHBFeUIrTUx2d3M3U3laWmlOaTlKVit4RVptcTg3?=
 =?utf-8?B?eXVjZlFZSDhPc3ZFMVlwakVxTDVQK0tGTjlDTGtOOVYrVVlQeU9KK3VYVzRW?=
 =?utf-8?B?NCtzc1ZBVDBsRW1HMUtJRTBXTzU4L1k2YVZ5U0dOMW9wR1NId0hucHEwUGRL?=
 =?utf-8?B?UEJnQjlGR0t5S1BobkhVTlo1WUhlQnl1VFdMWEdLd1kycU1oUEtKOHBjaUZp?=
 =?utf-8?B?d2M3NThwQnpRQmhFbXU1dWRmUmZ3dzByMFBndXBydWhhb3l3VjU2dy80K1F1?=
 =?utf-8?B?cG9EeHQ5U0txUVZQYkZiaXpoQWFESUVrMzJCSnEzREtpWkZRaXlldFBSK1Uz?=
 =?utf-8?B?Yk5WTjA2U0lvaTZ3TmFDSlVPckVWazVXMVllOE9RT3BIV3NFanRVSmUxSTcy?=
 =?utf-8?B?WE1LTThpc1BYeGkzcjdWYnlDMGxzblMwVVpxSFdORDBuQ3ViVHRZNU42ZEQ4?=
 =?utf-8?B?TS9VN1E2RlFVZG40dmZKZm44cFdtTkJ3RUVjT2hqQldXZy9YK2xwQ2dEbUFl?=
 =?utf-8?B?VjVZRlhMbHpkbWczN21FbFp2YUY2THJNcnV4RmZSZnJjZ1M5U3dxaklOblFN?=
 =?utf-8?Q?xszEbRoukbbfbhr0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33027705-2365-4044-0f54-08de5f21b865
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:32:36.5345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ylnKPduf6T+jqIofrd+8LwcK+UcrZTZP2QcEK7VqN0MRDlH3GQcSQRSaDHOJ2Yi60v7TaUCHQ1R/uOeO0DpJ4ht2csBA6E8tmZF0Twtx3Jw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682790; x=1801218790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IHDoqFc8hAsl+4DZOrUqDijI61XK/pynyvRdtJwFgbo=;
 b=EVrYE1UT27tQOe3Hj+t+6EpuZgpvvSYrrrp/T4ekt1TbDbAFDqQuS1of
 PykPMtRdKQ8BykDKlCx0n9zAbzAXhe5NycmHLcF7C7/kGbKXi3d7HXUcd
 4Ix9mbSn2t7xwgTTTzTG53jQE9NaUKocOzsIXKwIRz1DoMUM0qogtIPmJ
 EkP7eHpnEW78zQS003CESmJiN6m4mH3rJHHp+IoWZaiUvIZMs1c89hStW
 kMy9BW9JdWmhCaNWRlT+htE6Vr4GqFxQtr39uVeqmctiluy38L91yTgPW
 B6LhW1PIUrfCSufDBqrxf4EBz9Xag8mApQ504Im3yjmDPrNSdmwEnF9vp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EVrYE1UT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 18/30] docs: kdoc_re: Change
 NestedMath args replacement to \0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lwn.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,infradead.org:email,intel.com:email]
X-Rspamd-Queue-Id: 529CCAEC31
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDE4LzMwXSBkb2NzOiBrZG9jX3Jl
OiBDaGFuZ2UNCj4gTmVzdGVkTWF0aCBhcmdzIHJlcGxhY2VtZW50IHRvIFwwDQo+IA0KPiBGdXR1
cmUgcGF0Y2hlcyB3aWxsIGFsbG93IHBhcnNpbmcgZWFjaCBhcmd1bWVudCBpbnN0ZWFkIG9mIHRo
ZSBob2xlDQo+IHNldC4gUHJlcGFyZSBmb3IgaXQgYnkgY2hhbmdpbmcgdGhlIHJlcGxhY2UgYWxs
IGFyZ3MgZnJvbQ0KPiBcMSB0byBcMC4NCj4gDQo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlA
a2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIu
cHkgfCAyICstDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weSAgICAgfCA5ICsr
KysrLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2Vy
LnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGluZGV4IGRi
MTQwMzYzMTA0YS4uNGQ1MmEwMGFjZmFkIDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9u
L2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2Nf
cGFyc2VyLnB5DQo+IEBAIC0xNjAsNyArMTYwLDcgQEAgc3RydWN0X3hmb3JtcyA9IFsNCj4gICMg
aXMgYWxsb3dlZC4NCj4gICMNCj4gIHN0cnVjdF9uZXN0ZWRfcHJlZml4ZXMgPSBbDQo+IC0gICAg
KHJlLmNvbXBpbGUocidcYlNUUlVDVF9HUk9VUFwoJyksIHInXDEnKSwNCj4gKyAgICAocmUuY29t
cGlsZShyJ1xiU1RSVUNUX0dST1VQXCgnKSwgcidcMCcpLA0KPiAgXQ0KPiANCj4gICMNCj4gZGlm
ZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IGIvdG9vbHMvbGli
L3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4gaW5kZXggN2I3ZGRjNTBhYzM2Li44OTMzZTFhNjI3
NzYgMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+ICsr
KyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IEBAIC0yODksOCArMjg5LDkg
QEAgY2xhc3MgTmVzdGVkTWF0Y2g6DQo+ICAgICAgICAgIEl0IG1hdGNoZXMgYSByZWdleCB0aGF0
IGl0IGlzIGZvbGxvd2VkIGJ5IGEgZGVsaW1pdGVyLA0KPiAgICAgICAgICByZXBsYWNpbmcgb2Nj
dXJyZW5jZXMgb25seSBpZiBhbGwgZGVsaW1pdGVycyBhcmUgcGFpcmVkLg0KPiANCj4gLSAgICAg
ICAgaWYgcidcMScgaXMgdXNlZCwgaXQgd29ya3MganVzdCBsaWtlIHJlOiBpdCBwbGFjZXMgdGhl
cmUgdGhlDQo+IC0gICAgICAgIG1hdGNoZWQgcGFpcmVkIGRhdGEgd2l0aCB0aGUgZGVsaW1pdGVy
IHN0cmlwcGVkLg0KPiArICAgICAgICBpZiByJ1wwJyBpcyB1c2VkLCBpdCB3b3JrcyBvbiBhIHNp
bWlsYXIgd2F5IG9mIHVzaW5nDQo+IHJlLmdyb3VwKDApOg0KPiArICAgICAgICBpdCBwbGFjZXMg
dGhlIGVudGlyZSBhcmdzIG9mIHRoZSBtYXRjaGVkIHBhaXJlZCBkYXRhLCB3aXRoDQo+IHRoZQ0K
PiArICAgICAgICBkZWxpbWl0ZXIgc3RyaXBwZWQuDQo+IA0KPiAgICAgICAgICBJZiBjb3VudCBp
cyBkaWZmZXJlbnQgdGhhbiB6ZXJvLCBpdCB3aWxsIHJlcGxhY2UgYXQgbW9zdA0KPiBjb3VudA0K
PiAgICAgICAgICBpdGVtcy4NCj4gQEAgLTMwNiw5ICszMDcsOSBAQCBjbGFzcyBOZXN0ZWRNYXRj
aDoNCj4gICAgICAgICAgICAgICMgVmFsdWUsIGlnbm9yaW5nIHN0YXJ0L2VuZCBkZWxpbWl0ZXJz
DQo+ICAgICAgICAgICAgICB2YWx1ZSA9IGxpbmVbZW5kOnBvcyAtIDFdDQo+IA0KPiAtICAgICAg
ICAgICAgIyByZXBsYWNlcyBcMSBhdCB0aGUgc3ViIHN0cmluZywgaWYgXDEgaXMgdXNlZCB0aGVy
ZQ0KPiArICAgICAgICAgICAgIyByZXBsYWNlcyBcMCBhdCB0aGUgc3ViIHN0cmluZywgaWYgXDAg
aXMgdXNlZCB0aGVyZQ0KPiAgICAgICAgICAgICAgbmV3X3N1YiA9IHN1Yg0KPiAtICAgICAgICAg
ICAgbmV3X3N1YiA9IG5ld19zdWIucmVwbGFjZShyJ1wxJywgdmFsdWUpDQo+ICsgICAgICAgICAg
ICBuZXdfc3ViID0gbmV3X3N1Yi5yZXBsYWNlKHInXDAnLCB2YWx1ZSkNCj4gDQo+ICAgICAgICAg
ICAgICBvdXQgKz0gbmV3X3N1Yg0KPiANCj4gLS0NCj4gMi41Mi4wDQoNClJldmlld2VkLWJ5OiBB
bGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
