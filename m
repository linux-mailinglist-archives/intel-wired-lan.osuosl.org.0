Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMHHJBMn72lE8AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:06:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E0646F8C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:06:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BB0842F51;
	Mon, 27 Apr 2026 09:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dzFutZJaYyfC; Mon, 27 Apr 2026 09:06:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E40DF42F0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777280784;
	bh=byZ7tzQM9sWhQ4bE7QlH5fzbG4pVvVYX0EkGne8GoNk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OP0aJm0o8HPgVJOZzChxhzUZwGtz5snsPv+Y48X1ncbXHSsQfa/10Oc30sHfWEKrz
	 RiFpSUq8P6afqJsiPNBomKqBOOwvXejV79BfR944YeAtBO2omHGgj0asO1V1LBIEwO
	 1vOBQPmq8aeFGj0iOYFiywHasDkPrTbB/eZGbxL3WLdFF0dUajnlexr8fQwAdMyAmU
	 B0rUrQIeyqMEDy52mqFiF5RUfv9+F5KYlmDwyRcPRZH04Z7dJ0iZLTajqTdR3qdpxE
	 D/IU3XrnEgUTMeAxQBXj/MliW6sP49YllAsx0JlfeFo4og6qIFjQPom3bBybPAaATe
	 mFc19D0+XQQwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E40DF42F0B;
	Mon, 27 Apr 2026 09:06:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C08D2DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE65F42F03
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:06:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aeZYRuLF-6Wn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 09:06:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFB1642E29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFB1642E29
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFB1642E29
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:06:21 +0000 (UTC)
X-CSE-ConnectionGUID: LzWXSYaSRsCAtaD4EBwB1g==
X-CSE-MsgGUID: t56a1FSqTXmePxIrDK4cTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="65696645"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="65696645"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:06:21 -0700
X-CSE-ConnectionGUID: ZrqsEDBcQtaHtrYjmerTTA==
X-CSE-MsgGUID: kWZjgJMnTSKxgM/rzkcFGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="232595115"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:06:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:06:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 02:06:20 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:06:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NJrVMQQr0IE/SIzRswnDkONGhq/CGG5o+xaeodazdfdryILHO8OWHTcYBrmW64oNQm9DQTkcKwXlmgcpc6gVWFzIhVuHsj/VhM6qebWMgDq8SC4Jw9fBQ0u+akO8vUQMTdtcsHKx4m2BiNgGYHnLCHl1rK6/HFcZC8h66L9Voq92x4w79QEzRHjnQ9MEwb6z0AG9LVPqwGcoImLFs38UNHVulEKComAePlTrHPoulEUkeDPyzrxLPJypGvAE1FUTqfpriXyor3Pu66VOl+UFTq3VCM5OvjIEwQRhFNxqjkZJwwYx/efunpgNb8bPHjz+qGfaVWt42sBXsC6lAp/ZBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=byZ7tzQM9sWhQ4bE7QlH5fzbG4pVvVYX0EkGne8GoNk=;
 b=Wwg3nLxc+Cgsjnhri1FR/B2vqVHhlBeZEw8LfGiQismBuDMmirhAsxYj/+jOw+Qc1bB0JUhtCS/RhFxYA8g5ssDurkI6Hln862Z0ECYb23q/ZEOmSwfwSy/iLQ326bBE3Q041szcBAi3jKKIOeENlwpvt23y4aZ8uzbo6FeXyAXDc3+5yhZeW9x0LjePj0+UsK70WMqNXwchT3/cuNef+HU2ha8ml3ESGu6iiEz4o8L2mI8Zbj8RG3IvUPmMpZMYjvXbehDM/+QCRqgCS/TuB49J+YsYP9UBLSrLsgk5e35hbL5A/9WB38Ti7C3VrC9uhXjSBT2+jeqFXROgMC99Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BY1PR11MB8056.namprd11.prod.outlook.com (2603:10b6:a03:533::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 09:06:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 09:06:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] libie: log more info when
 virtchnl fails
Thread-Index: AQHc1FW6ygtdlQdZr02TgRqYjcAZyrXyoTRw
Date: Mon, 27 Apr 2026 09:06:17 +0000
Message-ID: <IA3PR11MB8986566C5F04D57DEC8DE45AE5362@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260425014842.1036981-1-boolli@google.com>
In-Reply-To: <20260425014842.1036981-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BY1PR11MB8056:EE_
x-ms-office365-filtering-correlation-id: b6ee3d5f-a43f-4a22-a15d-08dea43c3dab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: ppt/VV86p3GD40DV/cViNDuldo5rTwjoHJclNOHjNBf81Vsh28zFWEsYuOp45DZoyzVvyVUxTGuziAYPUxM3AHxUHJGCVXz89h89VF+ly8mTyVdjpreK0RRrkCIysOuN7fiQC85vFScj0y0fJq54/OkfI//uiXLEfId2ZdhlEJ3WVfxrW+olavVJTS0ZlrRypVmf2gwKkXTBAzFSY/fRqUwNcTdBcjOVntHjSVzQBMvn0T4e6LPZaqSyAOiKJEZflbrYPLy1swRTsQcVObZy9RSOaWl4S9LjC97RAuxtq4J9bYkgL+uLzDvhssjA/dR0mqW5dfV6adw+gnBrpRmT6dOIJ69yp38I21F2RzpYbQQQWt2aOjUfEVWC7vuGE7sgzByZ/tobruB2fBBCFG/T2lTsBnoOAgA7BldI92GEuf2IKXd4GqS7FHqZzBXvtDhuOve78MzBsyleoHVYN5ALzvdk3pV/RiC43E28dB8sMJS0bf3MwfIh7VkxR4lEmS1waQNrsGy9l3YvPzd0HHYbsuiWnL+mgdHhz5RcUMhsCllSKSWD+BitjIVFkYw1jV7XUIs9IXeGyH2LlD1hOjY2i8SkOKNUBH5UoApV8e3ybjFGXeKpd7l7QAxj3eT+qxhKhqPdQaaH7m2a25VjBWV9Fb5sv6RwNFYja1AAE++zAERMHi8B6kLYGzoMAvn/DJ4O5GRuXrlMK0kopejJKMbWiiWr+jhCqnlBfQym3BkVKeOj0Gk2y6s4+d95PEFIcDtg7YPFUGas39g4/alIpPilGUKukrT4hcy8PeiOzHOsY0s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3QweDduc1FINXdMTWdVZjVCQ0JHa2hVYWhQM3VzbnlnTDg4cjhwN3gvcEJp?=
 =?utf-8?B?Ym1JMWJucmpMbDd3SkRaemtBY3B6T01ISG1ndE5EcXVyV1k0VThnK3ZDRGpK?=
 =?utf-8?B?VjZDWDV4OWNKOEM4NlBCejJSWEdWM2NETlhjV1I3RFZROFF2NDBpcFY2clEz?=
 =?utf-8?B?YUVCVmFiTFBkMElwbmVSeUM0bmN1bUt3TE8wNGFvTTVpZE8wYmdMaW1sV1ZB?=
 =?utf-8?B?SWd5dTE1TEFhSUVtbDRvRllBeUpYUWVKcU13V3h6L2xsTG5NUlFDZFZXV2VJ?=
 =?utf-8?B?YkRrL0VQOTh2Q3VDWDNoUU0yUDVwNTdTM3Zab2NQVW11MDVTandlalZiK2sz?=
 =?utf-8?B?YXh6ZHFvU2p5UFNYWHRpQjFLMHpMSzRobnFHS1hDYzJEUDZGK2M4ZFNLczFF?=
 =?utf-8?B?a2JINU9PSzR4VW5zcEQ4Z2c5SmNDT3ZZZm5JaUdwT3JKbGpyblZjb1dISTd5?=
 =?utf-8?B?MFJoYlRDMHVna0Y0VFBiWllnaURJa0VFN25RRDRMWUpNVmVCSlhUVnBMZVpl?=
 =?utf-8?B?Z1pDUHNFa2pZUThsejBiV1FkdDdkUk9WQlE4TmF5T2JvT0VORTN0Sldqdno0?=
 =?utf-8?B?elh0T0ErYVJYbjM5ZHQ4ZGljNEgxclJHRTlHMlJHQ085eWlpV0JuNm80Y0g4?=
 =?utf-8?B?TExqWXhsY2o5N2V2TTQxRUZEVFBNYVY3akU5TnZXeWZFN3FXUnJaVytTSllD?=
 =?utf-8?B?MzFEVzFXUlp5YU9HZFN5UnFkdkJzZGRFSnRUY1dXQWIyN0ZvNkNNTzZaN0Vr?=
 =?utf-8?B?Nk9ueVpLWVZXOHp4eVpuazgzYWRFTWpGYzFma2ZBN3ZGUXFTZ2RqL0JEUE5k?=
 =?utf-8?B?M3BKWlRlelo5cWFFNWI5a3YyMURseCtzb3doZ3dWQUgzdDV2eVBYZ3I3U3h5?=
 =?utf-8?B?MGVuMXZiVkowVkJ3ZGxZdVNuRzhiT0dkWGJjcllDMktSOVhpZ2htUGNJU2ZM?=
 =?utf-8?B?WGd6ZGlGZzA1VWhRYkg2Wmtjb1I2Kzc3R2llYXNoQ2JqeXhqVlh4NjUvT2Jw?=
 =?utf-8?B?RlRkZXowQnVwZ3JnK2xHeEp1VXhkVGR1VXNJalNNei9RTUd6NGo5aU5FZTE0?=
 =?utf-8?B?bERiMzZyN0x1T3ZlUkhxUFBRM01xMnl4UnBPUTdZT2xTek1nMEZKdGVOQmFk?=
 =?utf-8?B?cE1lbk9vTFBRelZncGZ5R0VpT0xGRW5ib1RlUmdyRmEzeHhONHpnVlVFaVpv?=
 =?utf-8?B?bkdqc21BdlQ5ZEtDNmh2RFI1VTVnMXY5dldjdDFOK2hBd1dPZnhYTjFwSzNz?=
 =?utf-8?B?eXFPMkdZeVd4TlQ0c1hjOWljVlBmREwzMHhjSjVkdnE1QW13UFAvRCtsWkRz?=
 =?utf-8?B?YzJNUjlVVEJ4SElpbnlMWDIxL2xWUzM0S2JGbDZHMHZpUlVZNUMzNjBrWEty?=
 =?utf-8?B?VGFiU2J3OGFzMjhhZkpOd1BWNGxBMmE3MkFlVXF0bkdKbWdDSCtvNGNCcHJy?=
 =?utf-8?B?T2xLNStYTFp3UGJkR1VNNll1UTNrTkR5a3lYSTkxaEdxcUpkVTBPNGlNTkxX?=
 =?utf-8?B?ckdDanUxQmk0ZlAxdWN2c3dNK3k2TG04dXdyU1ByK2RoTktZdnUzanh0cmpO?=
 =?utf-8?B?cnRKblVSQXBHTmswYlB3UmdCSFZKd0RhWU9rWlpRdDMyNG1VSFJmVDRGNUs2?=
 =?utf-8?B?Z0VvYk9DandxTWVUQUxYMmNGbndkOHdNWlc5UkxUN1FYYW5GdUNJRWF2SXRS?=
 =?utf-8?B?Y0tjK1hzaXhlM1ZhcEJvbFNMbFo4MXBpaWlaeWhwcWZwVVN5dkpnV1VNdU8y?=
 =?utf-8?B?N0F5VEIyLzFGckhxQlJNMkhadnBabVcrbzNzcXhiaTNLa0M5VnR0U29xOEdX?=
 =?utf-8?B?UHFKRTZVek1leUtyLzhkVE5rWW1WdU12YlI5cTJTSUVGU0d1T3RZZTlZOWg1?=
 =?utf-8?B?aTRML1I4ZVpSN2RGMDhKanBSK2traVVrRUZDNzlFQ2xSeEpCRk9jK1VRWm0x?=
 =?utf-8?B?NXM2cHo0bUxocWtTK1NQMkd3b0hmWHJwMVpqZVpNdXNzVCtPMHlldWtCc3F3?=
 =?utf-8?B?bnREYWdMZ3psU0xxU25qZHNrZDRQUHJiVHkvUkpXbXVycE9XOEpDY3pIS1Zs?=
 =?utf-8?B?U3hQSzFCTUZRdWpjSUR3REdhSVhWdGk4SnlkU0FrbCtpdmh0eHRmYU54dFBx?=
 =?utf-8?B?UnY5a1RPRU5nNW13a1ErelVqNVJoSzBmNHphazBvczQyczk0dXdPbG9qakU1?=
 =?utf-8?B?blAvS3M3YWxIL1lIU1UwRTFIOFJnNHBia0RjSHlJUWNCSXg0KytWeGFkSnVW?=
 =?utf-8?B?bVA5dVM5eDQxYUt2dEpDdzB5N1IzQ0pBK20rOVJSZVBTTER3am5mVXlDRVFa?=
 =?utf-8?B?MUpDVTJja1JFUXNvZnhBdkRnNSt5d0ZsRTJoVUF3eXAzSmF3Tko1bHVyTjVZ?=
 =?utf-8?Q?/6IJELQiDa2/0h2M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VEcru9ZvjhTvJF18FjQq9kguxA+HZWRsXKoRg+SFvZKhVFjrIz2KzCkwG6alDig2wA/9RoPPjG3yCs40ttlyXomeb4dUI/JyoL5SrCUSEyq7XjFVHKKdivQXkjSF1CBJbllAzwQTNAijqTJiTrMPa2IUG6NDxN5WvlYg3zq0N1BUcztLqzDv9Y9zPUM9vdBuaJ683hElXqvBqvrjQHpTBfhW7ITm/2aFdq4/WXIswWRKcokp5H2LFHP9o6mrGT/fICUHPyiimVjCcVbWUUNlAe66n710au9zDJY8OrVJUbUCSzsyD/hDOF+IMgbtNqoR0KYc+h9RbCr6QPa5WRXFkg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ee3d5f-a43f-4a22-a15d-08dea43c3dab
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 09:06:17.2372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ErACu4PHLsIdv0V6xIhEX1oiN4Dp6iyJ5ikDI2ERdzEA9a2TAUqbhLEYM+eE1OhZPbGNIto22WUEAX/GJP5N2n0JS2BQlvj93QGZCUTUULY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777280781; x=1808816781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=byZ7tzQM9sWhQ4bE7QlH5fzbG4pVvVYX0EkGne8GoNk=;
 b=ZJfk/FSzC3GjIBaK24RFPijHwwFmOvzDeFclMPzWEvZ6koBxBewuqB7p
 Vtoe67sk3CdJRoRvsqK3dhEo1QEeruKYqDYSXEhiHaAn/IBuprJKNqplb
 +NipniystFadx11Q+hOKYWHQar8M4MxxHHk/fSMqd2kuvdhkrJXNK4xwm
 qyyucnhScpaf1VrFZnLNDvv7LsO7//xx4G4YFPEUP/ZxFkKgoBA2J6l5v
 RmXA8FDEgc70VJ5WzP14k7jwUG3gqJ062GWaTX3oEhTYhkRfHSe9lmo20
 Pw9Lw8ujTxnZg1JmId7z0J3LN3ZRumYX/zIffF3Ak/RM02mrrIw8Lb7Q6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZJfk/FSz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: D5E0646F8C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBTYXR1cmRheSwgQXByaWwgMjUsIDIwMjYg
Mzo0OSBBTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IERhdmlkIFMuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEpha3ViIEtpY2lu
c2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5j
b20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4gRGVjb3Rp
Z255IDxkZWNvdEBnb29nbGUuY29tPjsgU2luZ2hhaSwgQW5qYWxpDQo+IDxhbmphbGkuc2luZ2hh
aUBpbnRlbC5jb20+OyBTYW11ZHJhbGEsIFNyaWRoYXINCj4gPHNyaWRoYXIuc2FtdWRyYWxhQGlu
dGVsLmNvbT47IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47IExpDQo+IExpIDxi
b29sbGlAZ29vZ2xlLmNvbT47IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2Ml0g
bGliaWU6IGxvZyBtb3JlIGluZm8NCj4gd2hlbiB2aXJ0Y2hubCBmYWlscw0KPiANCj4gVmlydGNo
bmwgZmFpbHVyZXMgY2FuIGJlIGhhcmQgdG8gZGVidWcgd2l0aG91dCBsb2dzLiBMb2dnaW5nIHRo
ZQ0KPiBkZXRhaWxzIG9mIHZpcnRjaG5sIHRyYW5zYWN0aW9ucyBjYW4gYmUgdXNlZnVsIGZvciBk
ZWJ1Z2dpbmcgdmlydGNobmwtDQo+IHJlbGF0ZWQgaXNzdWVzLg0KPiANCj4gVGVzdGVkOiBCdWls
dCBhbmQgYm9vdGVkIG9uIGEgdGVzdCBtYWNoaW5lLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTGkg
TGkgPGJvb2xsaUBnb29nbGUuY29tPg0KPiAtLS0NCj4gdjI6DQo+ICAtIFVzZSBkZXZfd2Fybl9y
YXRlbGltaXRlZCBpbnN0ZWFkIG9mIGRldl9ub3RpY2VfcmF0ZWxpbWl0ZWQgYmFzZWQgb24NCj4g
ICAgcmV2aWV3ZXIgZmVlZGJhY2suDQo+IA0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
bGliaWUvY29udHJvbHEuYyB8IDE1ICsrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9saWJpZS9jb250cm9scS5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
bGliaWUvY29udHJvbHEuYw0KPiBpbmRleCBlYmMwNTM1NWUzOWQuLmJmMjAwZmVhMWUxMiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvbGliaWUvY29udHJvbHEuYw0K
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9saWJpZS9jb250cm9scS5jDQo+IEBA
IC03NjIsNiArNzYyLDE2IEBAIGxpYmllX2N0bHFfeG5fcHJvY2Vzc19yZWN2KHN0cnVjdA0KPiBs
aWJpZV9jdGxxX3huX3JlY3ZfcGFyYW1zICpwYXJhbXMsDQo+ICAJc3RhdHVzID0gY3RscV9tc2ct
PmNobmxfcmV0dmFsID8gLUVGQVVMVCA6IDA7DQo+IA0KPiAgCXhuID0gJnhubS0+cmluZ1t4bl9p
bmRleF07DQo+ICsNCj4gKwlpZiAoY3RscV9tc2ctPmNobmxfcmV0dmFsKSB7DQo+ICsJCWRldl9l
cnJfcmF0ZWxpbWl0ZWQoDQo+ICsJCQlwYXJhbXMtPmN0bHEtPmRldiwNCj4gKwkJCSJOb24temVy
byB2aXJ0Y2hubCByZXQgdmFsIChtc2cgb3A6ICV1LCByZXQgdmFsOg0KPiAldSwgbXNnX2Nvb2tp
ZTogJXUsIGRhdGFfbGVuOiAldSk7IHhuIG9wOiAldSwgaWQ6ICV1LCBjb29raWU6ICV1XG4iLA0K
PiArCQkJY3RscV9tc2ctPmNobmxfb3Bjb2RlLCBjdGxxX21zZy0+Y2hubF9yZXR2YWwsDQo+ICsJ
CQltc2dfY29va2llLCBjdGxxX21zZy0+ZGF0YV9sZW4sIHhuLQ0KPiA+dmlydGNobmxfb3Bjb2Rl
LA0KPiArCQkJeG4tPmluZGV4LCB4bi0+Y29va2llKTsNCkRhbmdlcm91cyEgWW91IGFkZCB4biBs
b2dnaW5nIGJlZm9yZSBpdCdzIGZpZWxkcyB2YWxpZGF0aW9uLg0KDQoNCj4gKwl9DQo+ICsNCj4g
IAlpZiAoY3RscV9tc2ctPmNobmxfb3Bjb2RlICE9IHhuLT52aXJ0Y2hubF9vcGNvZGUgfHwNCj4g
IAkgICAgbXNnX2Nvb2tpZSAhPSB4bi0+Y29va2llKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IEBA
IC0xMDExLDYgKzEwMjEsMTEgQEAgaW50IGxpYmllX2N0bHFfeG5fc2VuZChzdHJ1Y3QNCj4gbGli
aWVfY3RscV94bl9zZW5kX3BhcmFtcyAqcGFyYW1zKQ0KPiAgCQlwYXJhbXMtPnJlY3ZfbWVtID0g
eG4tPnJlY3ZfbWVtOw0KPiAgCQlicmVhazsNCj4gIAlkZWZhdWx0Og0KPiArCQlkZXZfd2Fybl9y
YXRlbGltaXRlZCgNCj4gKwkJCXBhcmFtcy0+Y3RscS0+ZGV2LA0KPiArCQkJIlRyYW5zYWN0aW9u
IGZhaWxlZCAob3AgJXUsIHhuIHN0YXRlOiAlZCwgaWQ6ICV1LA0KPiBjb29raWU6ICV1LCBzaXpl
OiAlenUpXG4iLA0KPiArCQkJcGFyYW1zLT5jaG5sX29wY29kZSwgeG4tPnN0YXRlLCB4bi0+aW5k
ZXgsIHhuLQ0KPiA+Y29va2llLA0KPiArCQkJeG4tPnJlY3ZfbWVtLmlvdl9sZW4pOw0KPiAgCQly
ZXQgPSAtRUJBRE1TRzsNCj4gIAkJYnJlYWs7DQo+ICAJfQ0KPiAtLQ0KPiAyLjU0LjAucmMyLjU0
NC5nYzdhZTJkNWJiOC1nb29nDQoNCg==
