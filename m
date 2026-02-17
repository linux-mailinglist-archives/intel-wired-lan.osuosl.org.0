Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Pq/GYSVlGneFgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 17:21:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE34014E109
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 17:21:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC79E83F5E;
	Tue, 17 Feb 2026 16:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wv--P7iS8NWO; Tue, 17 Feb 2026 16:21:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DE0C83F55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771345279;
	bh=AqDprMxTyn8r3b/jg4DYvOSG4kSRMpq5NkvqiqDGYs8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PV+tBbfVMAiYLdkUYiFHtjk7AtyYiYuZAkmZoGIdzCmeOjs6sUWI0u0c8IUdpaZX5
	 sx6ycI/4bxktJi6SudF5cjTHMe38o1OAOndEw5faluLY+roiU5QekGeeHqiXYp5pce
	 GLF+4L0v2jLiS+0q/cYsrXwV6TxYrkNc6dmMA9Nlh59WOb3NgeD9lf9S0L+XRY2b50
	 Z0uOgA3yZXRYvrm0jNV0oWFB/7EDxR44aBBb91UxnMky6Mt+qk8h3Gg2mMl8qlB5Pu
	 qjFKfu6sHehXv73VIk9FJm+ecCAa2WQeYz3BXeXiAaTXSd1Q5L1vxApnlL60LKkcMQ
	 NVGk+R2k49c3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DE0C83F55;
	Tue, 17 Feb 2026 16:21:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 51280206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 16:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA1A483F4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 16:21:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ltSpeQpKL-sB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 16:21:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B6F7A83F4D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6F7A83F4D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B6F7A83F4D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 16:21:15 +0000 (UTC)
X-CSE-ConnectionGUID: 1LDmaTlVS0GGRuBUB9NXww==
X-CSE-MsgGUID: XBZubRjKRwOjxAB0FSDfJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72407590"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="72407590"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 08:21:15 -0800
X-CSE-ConnectionGUID: AKYTvGbnR0i7/K31mPj+dA==
X-CSE-MsgGUID: Ld5Z6Bv1SJOsV/oZIkrZQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="213765198"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 08:21:14 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 08:21:13 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 08:21:13 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 08:21:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8Whkia9i7gXkBRP9Vyh6tjc/vsDrHCHxinTYrl03xNyPEQ+PhrNzMy6PyS1hPBY3nunZ6+KUTKuFdh3k0I+1mkEAaMigAjJqRCmUSuHcVZltgpRSruDzRomrJCwVWoCDDwEIvLndosxMmtyZJTE0ISTMXqiZ7YYT2fG+sw++zz2V3YBuOLfJYCOQGTctlwITu9Msa/P1KEhh6R7903qXI6KpEzTYrTdE60vVUdKi3H1hRFKp0+x+YFQEgYKFUl0pThkII24YAD0BpEW0ekqyws5pv+iv9FjnyPqAoQ4o4HbxxLCU/3RLiOKhO4xyisdGKfZOFZg94V89gx8am8yaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqDprMxTyn8r3b/jg4DYvOSG4kSRMpq5NkvqiqDGYs8=;
 b=jkTifV6qPjiHrc73M32ZUDUflpFcVn8cc7MRoy7XuNtL4T4rgwA2ArXLArFaDV/D0Sy0m0gbF0tB97MZFXGrJVcZzjikcDlTVIae/lks8sEIAmiAd5HJC1jBDOka6FPZ6xf43jNg0AZ/Kx0Oqd8lgn5hFIb4vvAuHrprYwgKdRHYr1yc4uPD6uw2gEl+rBC6Wfp+naCCQ6iGQYcz1l9P/DDlA1Uwun2IWS2yJbEUxcXG7kIBzpO7128qr+2MxpOQmAnyI4M+0n9rgXM7a1r/iCGPhJoDAoJke3+DdkFS7x4zFN8iSlCa1xsIAnbUHONQUrmulZwm5omPvG3oQa65Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB5861.namprd11.prod.outlook.com (2603:10b6:510:133::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Tue, 17 Feb
 2026 16:21:08 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 16:21:08 +0000
Message-ID: <6c1c575b-9f47-446c-ba91-8491c1211670@intel.com>
Date: Tue, 17 Feb 2026 17:19:07 +0100
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?Q?Ricardo_B=2E_Marli=C3=A8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-8-larysa.zaremba@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20260217132450.1936200-8-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB5861:EE_
X-MS-Office365-Filtering-Correlation-Id: e37919ab-73ce-44ec-9797-08de6e408e09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGszazdqMlk0ZmNkQUt2STFKRklXbnRNKzE2eFV3eVVlTjBPOStXVnlnQksr?=
 =?utf-8?B?bFBCNmNPN3U5Qm9rZ1dIOVFnQ0hFSWp0dklTbHd2eCtBbjBWcDl3d1UzekZG?=
 =?utf-8?B?RDNQTEI0NkNzU3RGQytVZGlCT2JNZ3BndnNra25oKzh3MkZxaXZoZ3JkYmlk?=
 =?utf-8?B?dVA3aXlhWWVMSE9kQlRUU0NoVkpVNGtDcC8rbGxrV2J4MExseStuMVlvbTVr?=
 =?utf-8?B?a3ZscWdtdHZLRUJpaFFLc1lzdlFwYlR1SkYybURWaEltTllFQU5uT2NGSEgy?=
 =?utf-8?B?bXBzWXJrS1ZPZk9FTXE3ZWcyUUtVb2I2MzM0cVByUk93eXVWcUtjdWFFTVpU?=
 =?utf-8?B?K3M1TEN1elVYY3lISWh1MTh6djBqcG9FS0lWTXRxWER2M04rUTBQSUZTMVFk?=
 =?utf-8?B?c3NJVFlFOTkwZ2dzVmZRck54aWdpZG91WDhpa3IvVW1HNEZ2bnZweVNwT0tH?=
 =?utf-8?B?TnNuZDZmOTRkMmpPeFlLTlhTRGZpdnpJYit4WmVqSk5UN3g0UUdmalFNcUht?=
 =?utf-8?B?bUJOYkZMOHZzTE1TTmZianNhN3J6OWlIL2FQOFR2T1VlV3RUK3lKd0R1ZFFE?=
 =?utf-8?B?N3pHeFRtbzlybDBJb2wxc2FYMTdncUZBei9lQkV2SXY2Qmc0dVluN0ZETDZG?=
 =?utf-8?B?c2l1YkhiUzBkaFE2QVRLWDhHT29VQThoN3V6Z0pWOVdtYjhOaVdQQk1xbzUz?=
 =?utf-8?B?a2RETlhudEVuZi92aGFqcHFLVHEzNU9CSHhTNk8rcGJIY3FScHIzaGgzOFJW?=
 =?utf-8?B?TVhGam9yRmkvaCtuY2liTXAwd2o0N01qVFRxdCtMR3BNUjhhYlBvY2FZUE4r?=
 =?utf-8?B?djZoT1hpYUIwVXFydXBySmdlSWd5MmlVVlpqeDByRGVPR1cyT1pkQ2pEcTFJ?=
 =?utf-8?B?MC9vWkdpSENtQ0hCaS9zaFErbFZETHpXMDlJazdzQzRFNHdYYkU5aUdoSUh6?=
 =?utf-8?B?T1lHWGcxaENRVDhnREFFMm8wK0NyblkzeHNnWXRjbDJaSlhselNJV085emMw?=
 =?utf-8?B?WGZQT3YzTHkvNmE2TXhqbXlSemZpa2FhSlpKczhkVzFlQjU4SDh6UGlXbldM?=
 =?utf-8?B?cmo1cGJUaGFoRENOckxwY0V2bExrL293Mi9WY05DUm10WGxRZFRSUm0zd3FO?=
 =?utf-8?B?YWlLenVhb01WRE1TVktkaWw0S1BFNmladVQ3b2FZZFhjc0Vsd2pQMG9uTGZh?=
 =?utf-8?B?cHluS0NTbnFiRVppYlE3ekJKb0poVHQ5WDBGUHBaVUsyQThMVGZFQXVkcmxv?=
 =?utf-8?B?ZjBmc3BSdmJkU3hNMWxyaVV4a2kvTnFMN09aQURGV09PYUttU1lvQU5aRTNP?=
 =?utf-8?B?OWgzRVBzdTI5VllUeFVpbEx2OU9BR1BIZ1BGTG82WEdocERpRVBVck5Sczd0?=
 =?utf-8?B?WTRkbUZqdGh1TlpoUjE0RTdNeGZrL3ZrZlBCV0gzYXVZZ2svU3lFTW93NStO?=
 =?utf-8?B?Y3VmZER0V2oyR0NWZDBqVzJhMzZ3b0lHVUh5UG5mbTBNYTVPOTIvdi9WdmVl?=
 =?utf-8?B?d0lHNVlkLy9YenNoKzl5S01uQ2lBejZFbEhDVnBmWWx4WlYwbFVYck54SS91?=
 =?utf-8?B?a0FLL09xeTBIcGk4WTl2VXp2UjUrV2xQQ2dpd0l6MVJ6VCtQMnR3am83MHdY?=
 =?utf-8?B?V2cyeEZPTkwxbVI3ZkRkZk1xUUhDRFlMT3g2NmFPZWZFeW82eS9kTWFhakRH?=
 =?utf-8?B?SFFBY25McllRU281c3AxbVQ5dzZiclV6MTYzcC9FZkNEQmIrR1Y2cTVLZkVy?=
 =?utf-8?B?QVBxMUhKRERwczdFNHRaMENoNWtLVzBPZ2U5V2NMaGYrTnYxOUN1Y28rNXpL?=
 =?utf-8?B?d0V5Vm5meHFEampmQ0E4SmhIL3QxeElBbmV5MzdhSDdhVTNiYlVtSlI4Yk56?=
 =?utf-8?B?anN6M01kd0tIQlVwL2lhNzFFS25Db05FQ0pXcExZeDVKdFVJMDNaY1RlUVdw?=
 =?utf-8?B?VHkrR0U1Vi9LNkswY0h5WlN6NUphMHBkSUdubExzZ1ovSHhsMCtEaHFFbjBN?=
 =?utf-8?B?SEJXRm9nVysxQnRQMjgzYWJQMUVTQ3pZTlpyV1hmdytmOWlMTTBqN1R2OGFz?=
 =?utf-8?B?OWIzTEFDbUY5OHgxaWxabHNueTlnY3Zvd0xheFk5cHpyN05GUEZjZ2p1ektH?=
 =?utf-8?Q?7t5Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlRKOVMwSU1QSWVrL3VtelRVcmZBZ1FvRXc2M2E5Z1BZQXpLaHpvUHMyR1Rs?=
 =?utf-8?B?NE5mTXVSdUl2eUF0RFJmTHZpRWN2cG1HdXJxTVUyS2Fyc3pxdHY2SUU1RWFx?=
 =?utf-8?B?cGNsRW5jL2FHcjFQQy85TVlFUjREeFBHT3QybWczS0xDOVZOZGpLYzVGN0Na?=
 =?utf-8?B?dThJMUJtK3l2UUpmcnlSZWx1R0lBYUFLeXE0UlVsRk41OW5MUlhpbjZGOGxr?=
 =?utf-8?B?ZzVmZnZKSFhmVk9kMVIrWGN3czAzZHlWTUFGWW1VVEcxZHp4L3dicDRLNmhZ?=
 =?utf-8?B?VzVJeExVRi9DL1lGMTdkVS9OYWJ6aC80R1RFQk1SN3JhZWtnQmh4VUF0VGM1?=
 =?utf-8?B?b0JudE1Uc1pNbGluV2pxWFlxZzJncjNscEpDRkptSU9wblBBRlF3MS9nZG93?=
 =?utf-8?B?UnhpVml1OGlYa1hTRlNkcjRzUDFmdUhyTm9UVEZMZUUvYjN4WTRXbTFIZE5j?=
 =?utf-8?B?cXFZOWZwSVM3WXhYa0NYTW53RGNhb0dkeXA3WFc3OTd3N2FqdldnM241dys2?=
 =?utf-8?B?TUZqVnJUTmZyNmNEcEpseSswY1A5Z1VHSEhhUDNPdHcvYklTR2l2NVBSUFJJ?=
 =?utf-8?B?cnRBN2dWZ2RqVzQ1ZWtpMWk1NHNDQXNCNlVCRlNsNVUyRFBmVVZ5TzQwbWVt?=
 =?utf-8?B?amttSlEwM25lVTdlZHlScDZyM09oRzRGOEpkUTVQOGlvUk9yWWJIRW1ya21x?=
 =?utf-8?B?S2U0QjFrcnpQZytnYSs5NnVBRzExT1Zab3h1ZEcvaFh1ejRTanFxamlzQ2lB?=
 =?utf-8?B?VTZPUlJ4Q1dGNW9jU2RySDJpZzM1ZVlqTVE0WHgzc0RndTUwQUpPZnVoQzRK?=
 =?utf-8?B?dkI4aTB1cUtWQmFkVWNNVEtZKy85c003NFQwZXZXL2tQOFJXcWJ5ZmFhMFdN?=
 =?utf-8?B?RzhNS014MTR5OTVJeEQ2L0o3aHNXa2hpK09BNE5rZVU0TUdoeTkvakJiNEV4?=
 =?utf-8?B?d215RlBkNGVuRDY3aTVoQktjb2tOdDU0ZGYxbExUbmlDa2tFQ1lROVNuMXN0?=
 =?utf-8?B?S1ZzS2wrMUdTRkpMai8weHBZaHozUldlMWhjcDNwdnlDV1laWFV1SExKMk1j?=
 =?utf-8?B?OHkweG1TckFTYXFzRFg4UEFIdS9QVWxlNkpMRlh5MUNEZ28xVElJVkdWckd1?=
 =?utf-8?B?bzhBSTRqZVF4OVdqTVhaSk8ybVNKalQzcWE2VzlnTmRWcURYdFMzZWNtUVkz?=
 =?utf-8?B?bkMyTjdldjNGb1JqTW4xU29vTFh4QWFGdGpRVGVQMUo5UzR2cjFzSldaRFVs?=
 =?utf-8?B?V0c5NVJmYmVZN2FTaHM4MDlNNUZnM3BkemxsQWk3VEVKbmJ1NHdFbDk2MzBj?=
 =?utf-8?B?RUxoOUZxaDFQZ0JvV0JReWd1bzVYdWhuV2xnZWJlVjZrbmFKL21aY1VrUE05?=
 =?utf-8?B?bk1tUk1ab1UxSUUxNlRnTVNZTmdnT1AvREJTa3hMaXFTNUVmZ3JUM1ZtK1pW?=
 =?utf-8?B?cDJIZkpOZ2dubHVVN3ZuQXlMWDBqcm9jRnduTDRhdlRaMElKN3gya1c4RkFt?=
 =?utf-8?B?UHppdkFaZzlQSjgwaGNmUVAxbGlPSk9WMkxTKzUvN2twQzBsa2pOUUFRMWlt?=
 =?utf-8?B?TzhvQUswK280ekoxaDFWOWhtbEUydVlUZlNyNyttTWhQK2N3bWpnMjdpYmtD?=
 =?utf-8?B?WkFLaFF2Y3FCSUlBNUdweGlyeDRYQ1NkeVpET3VXQzl2V0JSTURXN0hwOENN?=
 =?utf-8?B?NXVCY0V2KzM3cHV3Q01JZXNBSzBqdUIxU3p6NlptU0pheG9FQTNWaEltOGM3?=
 =?utf-8?B?U3ZKRnRKMTZVNjNCdEw0dmJMK1piazZEZ2pSTkFteVozZkNUNWFjVGZJR3Yx?=
 =?utf-8?B?bjdURmdTRlpZSjJnSkZsSjRhc0J5a0k4ZkROejFOYlRMYUI1NCtMT2ZrWUhE?=
 =?utf-8?B?NFo1S3N1K3poRFNjazBtMlR5aGZOY2tQT3pGRktRcUozMGFOQ2dhZ0VUOE95?=
 =?utf-8?B?TWMyQzZ6L2dQR3FsNlBFajNnTjBkanFJcHVhZHNRd1FiR3NNakx5SEthOUll?=
 =?utf-8?B?bUdnV2krdmFQZm5yWXV3ZTRXdlMvTDJtdzl3bUU0VWl4WGdXT0VZSVF2SjNF?=
 =?utf-8?B?MlhiUVhGU1pvVDRSYWllMW56UGI5cFpoVTB0emMxdEUrZ0dOaG5WL3JROGta?=
 =?utf-8?B?bHo5OEdTUVo5dnRscVM2QUFzLzZ0enpZZDNZVWxubEVWVlhTbmd2Mmtwa1U3?=
 =?utf-8?B?UG9ySGllM2JkU0RYVFR1ZnRBSEhON1ZJbi9OUTZ0THJvTExld0duYzFoYWRv?=
 =?utf-8?B?eTI4WDhFblBiK0xJMXFMbGt1QWtDUEd3dTRwZjVtenVMT0Ewd1ZTSi9UNVcr?=
 =?utf-8?B?VFJ0VmlEUG9xRVhLOTdzYjlrMUMzYXZkdGREZDN5V0pTVEgxV3kweFkwQW82?=
 =?utf-8?Q?zwq+F6RrOUXAXLHM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e37919ab-73ce-44ec-9797-08de6e408e09
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 16:21:08.1963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AXZVvLQ1YCK7gRZn1aKLPkGbEKZWDIlPnIUWs2cLuv6PBQyszzbmb3lp+XRUVFJQJZD9afs3Q54QeJVWiQWhSwkDA4gw4BLPamLtUQIqZbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5861
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771345276; x=1802881276;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jqd1ICiMlTAPo4mQPbXtfkfQuSuIl6ZZERtzswnd1WI=;
 b=khcsaFj7CJOeroTPj37UfhFt1ywwanq10m1DXX1XNJpJXlpMfGKcz91J
 No6nOH5nPlpeEreQpA+9tpvsHmuO9pJFkEiOlYNmEXiw7ibGj1yhA5d45
 KpL8zyNYrOr29C/mJiSXd2M+LtlrZPH+hQ2TQe8aKFetugO29SGQp948v
 +QJIcKD+dU2/o1yvQF9Ew48H/Pxh7Su/Y6WYRzipqUpWkGgqhNcIyrL5h
 Wa/FV73UJIt/ALfH8EIgCw0Eyl7MTYumAvdThyJ1EAVd0p39q3ux1Ixp6
 0shdn4s2F322viaalUv/zxi7Gr+8UwwNHTfpc1TCsyPcetSM74HG662dA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=khcsaFj7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 7/9] libeth,
 idpf: use truesize as XDP RxQ info frag_size
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvidia.c
 om,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: DE34014E109
X-Rspamd-Action: no action

From: Zaremba, Larysa <larysa.zaremba@intel.com>
Date: Tue, 17 Feb 2026 14:24:45 +0100

> The only user of frag_size field in XDP RxQ info is
> bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size instead
> of DMA write size. Different assumptions in idpf driver configuration lead
> to negative tailroom.
> 
> To make it worse, buffer sizes are not actually uniform in idpf when
> splitq is enabled, as there are several buffer queues, so rxq->rx_buf_size
> is meaningless in this case.
> 
> Use truesize of the first bufq in AF_XDP ZC, as there is only one. Disable
> growinf tail for regular splitq.
> 
> Fixes: ac8a861f632e ("idpf: prepare structures to support XDP")
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks for handling this!

Olek
