Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMiwEDA4jGkejgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 09:05:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B3D122060
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 09:05:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F22CD41146;
	Wed, 11 Feb 2026 08:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8w9ZR74o5VBI; Wed, 11 Feb 2026 08:05:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 502D841159
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770797101;
	bh=lZCPe5YYGI5IkSlvF7Z7gMK7FLqXJgMXP7LdUiC6eGA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xrQJwzQT1SSHj3bS6eABUOTkWlQsadj+lUttYy93NWBdxYb+qDWsJMxHWwKDMtjuv
	 q6pT5MeQQq7K0jmjd93V7vf2G5SkfHm7D7HcqeWvuE+glZH5zE7qdbhjlclFE1IiFD
	 2rD5dXXOC0ltdYVUHBAf/cGzfOAz9zKIw09m+AgERGycmNt/JeTSN7vg0uTyJ/PULp
	 WNlO5/esQFGh5qm+8qYsrwyLpEIbVJ1apqp/Rb0ACQkt0J7lTSJcWNpqTw8Jf2tdHA
	 dbo6D347UWpkdj3fNqrPTbxaPQe+bL4Sf1gGU6i07g6gQ2oSzAHi0TOi4ijGvCYio7
	 Cdws5rfAFuJ8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 502D841159;
	Wed, 11 Feb 2026 08:05:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E43723D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BD8C406BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:04:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBxsIGtD_3oP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 08:04:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 28A47405FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28A47405FD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28A47405FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 08:04:57 +0000 (UTC)
X-CSE-ConnectionGUID: qSpqkvKJR4uuMvtQjsNojQ==
X-CSE-MsgGUID: RLYoqro/Q0qajUwqPXsB9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="59505153"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="59505153"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 00:04:56 -0800
X-CSE-ConnectionGUID: pBEfzH9JS/CvFvyZGW8e6A==
X-CSE-MsgGUID: ai/DLSo/QUe+EB9D4dTO8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211499187"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 00:04:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 00:04:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 00:04:55 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 00:04:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kofpmwGRjZvckCnqfCTXebhUrzJ/cba1zTbKFWA9Tjt9/KIyvjMprPhXk8lR7k6DSlnf4xaZVkuPTWhcUfjiWOAaez3fYq9kCZ0W3GwRS3W9GFO55O/HVJOS0SW8mFWM37i3U+gjraZa9CRoCDmlv1pItTDyGpgrszVSNL2h7fL4fOSfrpljlcaWbwTGbrDgGxp0Hn9XEWschLF8WNISKLuNELv8ywFe/uutrRKT3k/ACEuizwltmbVJL0GJVLSPzNwh1RUpzjQycC9M8gCpYQXYj3SleRKiT7mrU2BM6V8NJwqjvPiX3vc4NDbJdiQWotNpREB1T7/mZWpWdynD9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZCPe5YYGI5IkSlvF7Z7gMK7FLqXJgMXP7LdUiC6eGA=;
 b=D3kkvTwJ9Dh98gkC2QBt/aSkZe/qYzXX3XWDM81uSrpdUInm505nKzLD5oXZygXnMLed1oJszdo+s1dd4QNYh4dnaDAuZ2Oa+0It9Von3/W5IQOriWbFhg/X1HK/wYFybeWBqmwh70HfV93PLsd3OseWDJfNrXi9ovlyIazpr8UwUKFKM3A+Em46d5SaqlGrcx19bmBHNVU4juzgCpCiw6PeBOFxPp6cuTFY75ibTcIIjmJq+IUYUEEpO7gM1NyY9xsHf/3POPm3NW8faSm9DXpV4207l7E1Jerg+XjWnuWN3Xgp8TFSJFr5xKXtbIjbN9GI08BWMNCxT3H8BHtUPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6833.namprd11.prod.outlook.com (2603:10b6:510:1ec::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 08:04:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 08:04:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, Donald Hunter
 <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song
 Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, "KP Singh"
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
CC: Jakub Sitnicki <jakub@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH bpf-next 2/5] net: veth: Add
 xmo_rx_checksum callback to veth driver
Thread-Index: AQHcmrHa/F7R3tAr6EGrrEsivRH9bLV9JLqQ
Date: Wed, 11 Feb 2026 08:04:50 +0000
Message-ID: <IA3PR11MB8986DFE4F3C0D804F50B0A56E563A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org>
 <20260210-bpf-xdp-meta-rxcksum-v1-2-e5d55caa0541@kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-2-e5d55caa0541@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6833:EE_
x-ms-office365-filtering-correlation-id: 6399fff5-e634-45f6-b5d7-08de69443b53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?NzlRaFV6TUpzTklZZW5iMDZKSkFLQkJLT2ZQS2Y4M01id0Y1aUZ2c1g4K3Br?=
 =?utf-8?B?NllKZjFST2UwZUo3UFNCWEpJaVpKMGg5cEZYMDZ1S1lFS04zemZSQWlSR251?=
 =?utf-8?B?VDV2TkNzOVJad1lPa1dsVld6NXhlS0VrblRMTkF2WXR4WXFDbHhaZlRUOWNv?=
 =?utf-8?B?WjhFTlRIOUdiUHF3c1h0Q2RhRkdHWDZJeXVyamdWZVdacm5uMWpSNmoyV3Zn?=
 =?utf-8?B?T1RESGVGZmF2U0sxbU1VYmpHd1VxcVJoQUhUbm5aZ1dhOEdTallzSnFjY0tD?=
 =?utf-8?B?WldWN29oeDZJQWlJYWc4WFBzQ2I0ZzVwbVl5THhlTzlBdWtmNWppaGxiTkVm?=
 =?utf-8?B?WURwQ3B2SEVKVkJiMHRFYm9uMkQweGcxTXRpcUhGb3ZUVGJxZGRiR1hCcEhN?=
 =?utf-8?B?R281Z25RQk5TQWM3NkszMEVITmFLNDd5Vm0vclpWelI5N1duak85dUlrZmZz?=
 =?utf-8?B?N2N3eHp1M29kY2NRTkVBY05OTjdpMml1UXJYTTZpcGFvNWdnaU50TVpJZ3JY?=
 =?utf-8?B?UytrREkrZUNNRHE3MVBxcy9DeUc3VFd3NHhWZFliVGQ3UURIUFlDMFRBR1Fo?=
 =?utf-8?B?QlB3OGtvV09Kb3dkaE9ab3g5K2J2blhtcXN4L0VaQUo2Sjc1R3pBeUdoVjA2?=
 =?utf-8?B?SmRaUmxQYnpNcGhFcWh4UzBpVCtHRHM0VVFHbTVFeVV5WWk0aGUxMDNSckNP?=
 =?utf-8?B?SzhHd3p0TllpYVNzbmFNWmluNnNjQXYzYjUwbEdMMWFtYzdKSzdKWTBnOGNV?=
 =?utf-8?B?SUpOUXhnMTlrRzg0bUptclRkZ0N4SWNVNDRteE0xczZoNENTMDdDM3hyOU1u?=
 =?utf-8?B?OTVSNlh1bkRTQklVTVB0MUJIc3FUTTBoQnc4bTVLWHI3a0l6ZlJmSG45cTA0?=
 =?utf-8?B?ZHpBQnFBSzhNSGNIR3A5NWYrVHhaaWY2Nlp5ek10STAxSkxQOUtiL1VTZjUz?=
 =?utf-8?B?QmVqelIybHlmaFdUaDBBVFZwenBZWU12VmRDWlRVL2JHQVRXaTgvQzRDdFo4?=
 =?utf-8?B?STIwQU40T0M0Mk5VUzZPbzFmNXp1UmMwOXRRNjF5b2EzOXNkNS9wNHZsOGRJ?=
 =?utf-8?B?SkFlekNXZ01aUnp4alE2bGJEeGlhVlhod0gyY0Q5M1RBc25QRzlvK0pyQWdL?=
 =?utf-8?B?QldQSGl3RC9hOHNhOFJYaWk3RDNhNkZGTXVBb1QxbHRiRjVOWVNpaXkvbkZo?=
 =?utf-8?B?eFBPdnBqUVQ0aUc2TkFuRCt0Wk9SZlJJUCtXSy9odEY4Z3NhcC9hMDhqVkxs?=
 =?utf-8?B?NEszNExVNmVvazlRc3IrSnFSRCtWdWJFQ1NnK0tzMVdxUUhmS212MU9mMUU3?=
 =?utf-8?B?RDNmRDcrVFFKbVlpK0V1NTBuZjN0QUFzUmhNWWF6bEZWZkFoUjE3dVpKT0lp?=
 =?utf-8?B?dVhhdmhRanBqL1Nxc3dRSHd3bzBmVlQxMzhxbHcwZEVGWHBJUWtkVnp4SVdt?=
 =?utf-8?B?bzk4VC8wN0pGbStUUlBhUVJQaklteW9wWU5ZRzNSejZQL0Y4cHhjYWN4UlFq?=
 =?utf-8?B?ZmZZcmFOaGVQeDk4cFRjVHBSek9Hc1BOeGdxbEpBQjB2RitKQnJsaktYZ1NW?=
 =?utf-8?B?d3hQTUI3aHVxWmkxOCtDVEN5aXRyaktNUnB3bzRybjBJMGV0Yk5IRko1OUpS?=
 =?utf-8?B?aGVmODJMSGo0QW9IMzBuejEwN1NSUWUzMGU3eTM3dmxObUlocHQ4L2c5OGc5?=
 =?utf-8?B?MFVUR3Rta2s4TC9XRk5tQzl4R1N3eWxIZWJNYzhXUUFLZ2lBMXI4Q0RnTTVG?=
 =?utf-8?B?eXhqYjUvRy9jcUlhQWNKMC95OFczbnVpQnNGWlFleTBpRjg1Z1BEWnhXREVo?=
 =?utf-8?B?aStxRmNWQUFXdUlnZ3RyZzlKYzQxZGR4cEZicVVyR3dtRm5IQWQzMHhHYkEr?=
 =?utf-8?B?dWFMVGNJdlI1dWFtSUc4Q1IvWVU0Zk9FTGIzdVF2d1lQbGQ3a2ZZUnZPbW5i?=
 =?utf-8?B?QnZOV2s3bXE2YmhuYXdEdU1UTVJQbjV4S2U2YlhsdnhPdjQ1NzJOWEd0MWRJ?=
 =?utf-8?B?ZG9rYXBjZ3JCcHlTY1B6aU1GaWJPd2RodWVaQ2VQU3kxVWNWYitCME1iVWNt?=
 =?utf-8?B?eGt4N3k0ckZCTVg0bDBNQWM3TFJTVkxjZVI3RE5PSHZia1pSRi9YMjM4MTI1?=
 =?utf-8?B?dkkzdlRSakpWcXRqY3FENkxnOXlnOXQ5c1pVcTg0ZWdWUlJ0QTRWWktGVUJw?=
 =?utf-8?Q?sNDwlt0aCKy0QO3/Jq99exCLYOxDg+cUJO0AYtUC1iAl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckViR2Q3QS8vWkdRTS8yM2ExNGVxenFReHFHaGxSakMwcmNmNFVZZ0dNL1Z6?=
 =?utf-8?B?dFMvUEQ3TUlrVkVoTEVSRmFGaXZQaTUwSmdDaVVHZDJyaW83NzZuVytvSW9l?=
 =?utf-8?B?by9uMWgrdUJodERJN09FUzF1dkMweWRjYlp3UmZXUFVNSjNlVTI4d3loMHpx?=
 =?utf-8?B?eHFxd09WL3NidDlmKysvNStCUmp2RmFJQlQ0WDU5Q0M5a2ZwN3BaWnRJOU1L?=
 =?utf-8?B?NklYNFZDVm9GdjMxVVBEUTNjQU83OGRHdjkwV29Cck9IQVhoR1hqK0JmaDVN?=
 =?utf-8?B?UGdIUmZ0WUYyaTJBQmtGQkVJVFk3MUVzcVFVYU5hYTl0OGhmOFlKZjNhYVZI?=
 =?utf-8?B?Ump1RlBxR3lqSUNBZGdBWmFqZGQwZ3NDS1BDMmQ2aVViTld6OGozVkdKMHNq?=
 =?utf-8?B?WXoyL21QUElEbEdYckxKeTlaVEYweDNOeFl0U292UDR5cWYzN0svWjFmV2RS?=
 =?utf-8?B?SmJYbzNaaDd4S0hiWTY2RURzSzM2YkM4WS9KbU1IeERFTm5hVFBxeXB2K2VT?=
 =?utf-8?B?VEVSbWozelVRbHRFOTZMOUtLSlFMYUtKN2p1S0t4Z1JMOXlCdmRGVmpDVmYy?=
 =?utf-8?B?WitUNWpyUUVnV1EwOEN2aEdjRjh5Y1RZQXpvZ0JLTzlGMVhUSzR6VVZuRkdY?=
 =?utf-8?B?dzQvVjJadnBRQ3FqSEQvU3JUUXVONlpNYWpFM01kRkQwdlE2WWg0azFCa3dw?=
 =?utf-8?B?NHZrN3dXYXplMXVZWkd2Um5Ud1FYSVloNE4wa1N0cVU0TGlUMHE0Tm9GRE90?=
 =?utf-8?B?RDlKUFh3T2hsalJFNU1JMlZnYVZma2xEMEFZVmhxMGwrU25EbnJGd3VFbHpm?=
 =?utf-8?B?eityRjhTb1IvRGFyeVNURFpGQ3J4RytrbXpIUnhzcVpFeDFwVXZvTm1GRGRz?=
 =?utf-8?B?YW9mQ2oxUURWbFA2QmJTQmlWdTNDSWh0d0pENWxoMVgyNS95UG14OWtBa3Fv?=
 =?utf-8?B?eHhJN3YxSDVzdmlDNmx1ODVqRWVjdUhyL2JJZ2VMdzQ3UHliUGt1ZEJ1bHlT?=
 =?utf-8?B?dWtsU2RYdzBTdU1WWjhacWdpeEU3RmswZDBsOWVCd0pqWGZ2ZGlVakxEYkV3?=
 =?utf-8?B?SmxqUTF2dXFVaENWV1RIRTZ5ZU13UHpYMEpMK1Vlb2xlUnhkWmNtaUZnVTlv?=
 =?utf-8?B?ZFFIUmlUaE5YZWhXMzQ1UzQ0OGtVckVhYUNLS2s3YlEvVXZucXBzVDh4TElw?=
 =?utf-8?B?eXZ2azVrOVl3N3k1SEpQcmppTHdEY0VUaHN0QjhyYmZUZjBoN2Z5bS9kbmtO?=
 =?utf-8?B?R2hBOUIrSjArcnE5MUhHdFA0RUZOUXBKSVFCcDZhdXk1ZkE3cWJmNjlyYThr?=
 =?utf-8?B?eUNnWkh5K1dGYm9qZDI1M2JVOFNDSEFacW9qU2tZU0J4ZHBGVDE2NjE4YmFF?=
 =?utf-8?B?L29rUWlQT0ZhUGNSZTBWQks5UVFSS3V2WGg2UnN3K2ZxVXBSQXlDNlZjTDhC?=
 =?utf-8?B?QlJKVXFQc2FVdnFJd2ZJTUpiZ3Y2NUR4Sjd4TmxKbmVMa2RRMW1UcUdZdXc3?=
 =?utf-8?B?Yi8vanhrUXdlbnRxYUlWb2Q5STRWZVNBTDJZaHp4bmk3aFMrWlpPRUo4c2JO?=
 =?utf-8?B?aklWNjByMXlmdFk4RCt4UjlXUnFQaHZYYkEySUFvTzc3cXIvNFFDeU82WXp1?=
 =?utf-8?B?TzYxL25aNTZjemg3Z1RJcTRjcUkzVmZreEh0eFJqNllDRFU5ZGp5Y3NGd3FR?=
 =?utf-8?B?RzNmU2Jrd3RtcjFnN1ZibUhuRURyOFRJcDVTTWVZdzZYdGhPcFFia3BVc1VY?=
 =?utf-8?B?N3phODdnQys1akVKZllnRFNSNzNrM3plWmYwdG50cTNQa1FKcEpkTGhhRVB5?=
 =?utf-8?B?bGxrOGQrdElMY0VhMVJjNnFrSjlYUWMyYkpqdGlnVjhZK3Q0b2ZZQ0RnSFhh?=
 =?utf-8?B?eDBTM2diN0lzVVVGWkx5STIwUWhsUDYwSllkRHQ2b0lad21lREpWYlRWYkpB?=
 =?utf-8?B?NGhvTUtaY1VCTEVwNUV0SWF4dDJWWlIxQ2RmenIvRnBqZ21QMkhVaW1YQ0pm?=
 =?utf-8?B?OWlTc3JvV295SFgzbXBXNERlMVdNRjl1ME85Tml3TW5sQ1hWWlhwV21NT0NL?=
 =?utf-8?B?TDZlUWFWUTQrQWErSS9XcGdrd1pEbGdkOCtWWlgzK1Z3NDhxZ082bmNtUElU?=
 =?utf-8?B?cG5tTmh6aVdpVjVKZW1sMXJ1MFRhbUdRVkwxalZiMjg2RHl5Zlc0UXpzdlRy?=
 =?utf-8?B?STF0b2YyRHRTbFJSeDl5VmZMenB3V1ZXdXJxcjNLT3VkTkRicm1vaHZvVUxa?=
 =?utf-8?B?RU1XZC9Zd3hKS2gxUXBTcm9xc1ZoSFBJQWVMUzNXRnRzQnp5ejl5S1NYdURY?=
 =?utf-8?B?dWNwR25BUXNUOFlaTFVwTDV1WjNuUXQ0dHdyS1d2aG1IZVh2VTRUd29MOFJK?=
 =?utf-8?Q?sAUeDYhFXdo0D9Tc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6399fff5-e634-45f6-b5d7-08de69443b53
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2026 08:04:50.6849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AFudyNowd3cuM6A9tzRsUnmIFiEPOHy1gWCGKQC41Nr3QEjnv42jWvGZtXCd9fyxBABFc004WN0vnqlmxmvxcnvLPyOkU7tvoODkR8l0/nQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6833
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770797098; x=1802333098;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lZCPe5YYGI5IkSlvF7Z7gMK7FLqXJgMXP7LdUiC6eGA=;
 b=V8iZ7J6zQFyqej59tg0wyvmCSlZZT+TxQQSGByGGDccPVDNySgYGCFTt
 LzIKZ/q9vWZTzJWMVwDSIoGtlQmyDFhQ8xejGP6Uv9U4VJpJyK4lfsxq2
 r4ndq+Qd2bbPq8jAof2BeOQ2VJATSjgo0WUN667v4zXTuHQQT9p4Qihar
 uKpEHf25jVqlDg3ekf9rmHlK2inyeHFjc8lFC47ALffYjxJB18+qxbD35
 jsh+aBIDBq4oJ5iRb+Li2Q29YXEy/551LearyOCax7rBN8TNpnXhIY2By
 jdvOkuVTkRQTGhAPBj9+oUaNGA/HlMIiMJvjN0XulhAJLy3x/BkSvI6DF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V8iZ7J6z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/5] net: veth: Add
 xmo_rx_checksum callback to veth driver
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 55B3D122060
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTG9y
ZW56byBCaWFuY29uaQ0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAxMCwgMjAyNiA2OjIyIFBN
DQo+IFRvOiBEb25hbGQgSHVudGVyIDxkb25hbGQuaHVudGVyQGdtYWlsLmNvbT47IEpha3ViIEtp
Y2luc2tpDQo+IDxrdWJhQGtlcm5lbC5vcmc+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVt
bG9mdC5uZXQ+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBQYW9sbyBB
YmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4NCj4gPGhvcm1zQGtlcm5lbC5v
cmc+OyBBbGV4ZWkgU3Rhcm92b2l0b3YgPGFzdEBrZXJuZWwub3JnPjsgRGFuaWVsDQo+IEJvcmtt
YW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD47IEplc3BlciBEYW5nYWFyZCBCcm91ZXINCj4gPGhh
d2tAa2VybmVsLm9yZz47IEpvaG4gRmFzdGFiZW5kIDxqb2huLmZhc3RhYmVuZEBnbWFpbC5jb20+
Ow0KPiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBmb21pY2hldi5tZT47IEFuZHJldyBMdW5uDQo+
IDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3Lmtp
dHN6ZWxAaW50ZWwuY29tPjsgTG9iYWtpbiwgQWxla3NhbmRlcg0KPiA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IEFuZHJpaSBOYWtyeWlrbyA8YW5kcmlpQGtlcm5lbC5vcmc+Ow0KPiBN
YXJ0aW4gS2FGYWkgTGF1IDxtYXJ0aW4ubGF1QGxpbnV4LmRldj47IEVkdWFyZCBaaW5nZXJtYW4N
Cj4gPGVkZHl6ODdAZ21haWwuY29tPjsgU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz47IFlvbmdo
b25nIFNvbmcNCj4gPHlvbmdob25nLnNvbmdAbGludXguZGV2PjsgS1AgU2luZ2ggPGtwc2luZ2hA
a2VybmVsLm9yZz47IEhhbyBMdW8NCj4gPGhhb2x1b0Bnb29nbGUuY29tPjsgSmlyaSBPbHNhIDxq
b2xzYUBrZXJuZWwub3JnPjsgU2h1YWggS2hhbg0KPiA8c2h1YWhAa2VybmVsLm9yZz47IEZpamFs
a293c2tpLCBNYWNpZWogPG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+DQo+IENjOiBKYWt1
YiBTaXRuaWNraSA8amFrdWJAY2xvdWRmbGFyZS5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
Ow0KPiBicGZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbGludXgtDQo+IGtzZWxmdGVzdEB2Z2VyLmtlcm5lbC5vcmc7IExvcmVuem8gQmlhbmNvbmkg
PGxvcmVuem9Aa2VybmVsLm9yZz4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENI
IGJwZi1uZXh0IDIvNV0gbmV0OiB2ZXRoOiBBZGQNCj4geG1vX3J4X2NoZWNrc3VtIGNhbGxiYWNr
IHRvIHZldGggZHJpdmVyDQo+IA0KPiBJbXBsZW1lbnQgeG1vX3J4X2NoZWNrc3VtIGNhbGxiYWNr
IGluIHZldGggZHJpdmVyIHRvIHJlcG9ydCBSWA0KPiBjaGVja3N1bSByZXN1bHQgdG8gdGhlIGVC
UEYgcHJvZ3JhbSBib3VuZGVkIHRvIHRoZSB2ZXRoIGRldmljZS4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IExvcmVuem8gQmlhbmNvbmkgPGxvcmVuem9Aa2VybmVsLm9yZz4NCj4gLS0tDQo+ICBkcml2
ZXJzL25ldC92ZXRoLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIwIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC92ZXRo
LmMgYi9kcml2ZXJzL25ldC92ZXRoLmMgaW5kZXgNCj4gMTRlNmYyYTJmYjc3ODMzMzRkOGY2YWZk
NTRlNjU4Y2Y5YTBlNmYzZC4uMzhiNzBhZDYyZGI3ZTkyY2NjYzZjNmM5ZWQxZg0KPiA1NTczZDhi
YWY0OGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L3ZldGguYw0KPiArKysgYi9kcml2ZXJz
L25ldC92ZXRoLmMNCj4gQEAgLTE2OTMsNiArMTY5MywyNSBAQCBzdGF0aWMgaW50IHZldGhfeGRw
X3J4X3ZsYW5fdGFnKGNvbnN0IHN0cnVjdA0KPiB4ZHBfbWQgKmN0eCwgX19iZTE2ICp2bGFuX3By
b3RvLA0KPiAgCXJldHVybiBlcnI7DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCB2ZXRoX3hkcF9y
eF9jaGVja3N1bShjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsDQo+ICsJCQkJZW51bSB4ZHBfY2hl
Y2tzdW0gKmlwX3N1bW1lZCwNCj4gKwkJCQl1MzIgKmNrc3VtX21ldGEpDQo+ICt7DQo+ICsJY29u
c3Qgc3RydWN0IHZldGhfeGRwX2J1ZmYgKl9jdHggPSAodm9pZCAqKWN0eDsNCj4gKwljb25zdCBz
dHJ1Y3Qgc2tfYnVmZiAqc2tiID0gX2N0eC0+c2tiOw0KPiArDQo+ICsJaWYgKCFza2IpDQo+ICsJ
CXJldHVybiAtRU5PREFUQTsNCj4gKw0KPiArCS8qIEZvciBsb2NhbGx5IGdlbmVyYXRlZCBwYWNr
ZXRzIGlwX3N1bW1lZCBpcyBzZXQgdG8NCj4gKwkgKiBDSEVDS1NVTV9QQVJUSUFMLg0KPiArCSAq
Lw0KPiArCSppcF9zdW1tZWQgPSBza2ItPmlwX3N1bW1lZDsNCj4gKwkqY2tzdW1fbWV0YSA9IDA7
DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBu
ZXRfZGV2aWNlX29wcyB2ZXRoX25ldGRldl9vcHMgPSB7DQo+ICAJLm5kb19pbml0ICAgICAgICAg
ICAgPSB2ZXRoX2Rldl9pbml0LA0KPiAgCS5uZG9fb3BlbiAgICAgICAgICAgID0gdmV0aF9vcGVu
LA0KPiBAQCAtMTcxOCw2ICsxNzM3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB4ZHBfbWV0YWRh
dGFfb3BzDQo+IHZldGhfeGRwX21ldGFkYXRhX29wcyA9IHsNCj4gIAkueG1vX3J4X3RpbWVzdGFt
cAkJPSB2ZXRoX3hkcF9yeF90aW1lc3RhbXAsDQo+ICAJLnhtb19yeF9oYXNoCQkJPSB2ZXRoX3hk
cF9yeF9oYXNoLA0KPiAgCS54bW9fcnhfdmxhbl90YWcJCT0gdmV0aF94ZHBfcnhfdmxhbl90YWcs
DQo+ICsJLnhtb19yeF9jaGVja3N1bQkJPSB2ZXRoX3hkcF9yeF9jaGVja3N1bSwNCj4gIH07DQo+
IA0KPiAgI2RlZmluZSBWRVRIX0ZFQVRVUkVTIChORVRJRl9GX1NHIHwgTkVUSUZfRl9GUkFHTElT
VCB8DQo+IE5FVElGX0ZfSFdfQ1NVTSB8IFwNCj4gDQo+IC0tDQo+IDIuNTMuMA0KDQpSZXZpZXdl
ZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+
DQo=
