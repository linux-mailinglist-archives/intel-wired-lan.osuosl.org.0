Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLTuOYQ1k2mV2gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 16:19:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D5114564D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 16:19:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E490F60B6E;
	Mon, 16 Feb 2026 15:19:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3fhhwxoZd_lU; Mon, 16 Feb 2026 15:19:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E84960B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771255170;
	bh=G/6by+MpMwcB4YkiRK/DcEfZ82YlGsnEA/PhC9bmnBs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jy3oHRNKHLY7NW39X/ZHoyrKluMRjZtv1uD9RPqTbbBn91FyJqZcuJlyt5xslcG6D
	 TH7tCfilBeT8+VwihmEPRQRPjzDpsnRelxOyHbtsnbeWejPbDpB4KFCTC+jpcAmTwV
	 Ql87Ecnghh+9dJHxwIpGUjvjnFcA2+qqjNedVFqCluPMjcWB+cBLp3g/neietrgHQz
	 SeRK1NYIMAspvlQmzGWBRPZ3HQGj+Qv8VPtUyC+hqj2HzT6s4gE2kb38kEURrmLb7C
	 f1Hk+7nDrxdub2bOOg7S5zn6YwWldIKAfQ/2NtAEQOW45bdQEssCVJQR5D+JFrc+Vn
	 EclYIkiUA88tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E84960B70;
	Mon, 16 Feb 2026 15:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A453E270
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 15:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85A8E60837
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 15:19:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AWwC5Qfd8eFm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 15:19:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E8FD607C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E8FD607C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E8FD607C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 15:19:26 +0000 (UTC)
X-CSE-ConnectionGUID: DAT4Myf6QEiyMdpfT497bA==
X-CSE-MsgGUID: ItMAlA91R6yXkdxw5gF3ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="72244391"
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="72244391"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 07:19:25 -0800
X-CSE-ConnectionGUID: eJmIfSmeRtuAxzftRxIxgA==
X-CSE-MsgGUID: qqfs31bpRm+U5++ilzL7Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,294,1763452800"; d="scan'208";a="218168600"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 07:19:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 07:19:24 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 07:19:24 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.2) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 07:19:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n/q+GGHYpNkcJEh+NoY/LFE0kyPSGDNo+JDSZEDQ0cIsOYW0l32Ejk0XiHOzH8frx9A8YAY138IlV4d4bnOEbhvr5JbVYvh+gR3VS7hIAxE1ltLDwc0ZsVnIIuv+fZ/OgQuNXG3RHEpj8AUIjNbryXoWLQx28zqmp27tDaqM8fu0kqX8rKF8WiMlvHSO4Kp42eBiU5mw3DSVIaJ9V+Cz2N8SbrnjSVUV0ZIDzJDTsSHtZPipZJEOzp/zGqKMuOJelb/FvgTfD+BQSt8l3xUjBiKQpDfRHXaXJmH5JOKYxlaKxjrbuGK0RXQYT3tao8V7oNxKiLfIEs7yYTk+LfWsng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G/6by+MpMwcB4YkiRK/DcEfZ82YlGsnEA/PhC9bmnBs=;
 b=e6/+no9bK67xyH03xbw0JBHAKWFye2/3uRPXXEfQxunAc2EqdNWm5+AcCWlpjLDbhP6cv2oRDbQafT5+rNSAd1K8iRMwFb9OnT8qDBUBGvf0mrk+Yz+1oG/k2BKwtqcdiDX1cnexnm8QBeXR2j4K0RQkph5e3WPM5tIQ/Asm4IswxIXvx4K6ABEwZK6y+FkpDpFA14pzvxWw8tW6lh1fIYXyVz1L4VyUykK5yBdAiyIj8nylVpRB5pSWSQHmDuB0nn0FKNPcxG7pmaawuAqDMD3dgUSwoOJ3jmweEs6hlD1I00cmcmWB7alM5BqW8oXz3RrqYDHNsTsYIQJNz6v6RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH3PR11MB8465.namprd11.prod.outlook.com (2603:10b6:610:1bc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 15:19:20 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 15:19:20 +0000
Message-ID: <60a57ae1-72e7-4848-9cfc-0fab1d92fdab@intel.com>
Date: Mon, 16 Feb 2026 16:17:03 +0100
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
References: <20260212183328.1883148-2-larysa.zaremba@intel.com>
 <20260212183328.1883148-9-larysa.zaremba@intel.com>
 <5b7b1746-54e7-4281-a008-aa3496610ccc@intel.com>
 <de0cc1e0-63d3-486f-a7a3-f1957a4116f0@intel.com>
 <aZMjSSiZ5cvwi_Ig@soc-5CG4396X81.clients.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <aZMjSSiZ5cvwi_Ig@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0173.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::27) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH3PR11MB8465:EE_
X-MS-Office365-Filtering-Correlation-Id: d842f7a9-8e9a-4a04-9c99-08de6d6ec207
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVBjbDhKc1pERFVCc2dBM1dzWjArcVgyUkpmYlZqUWxSUVN6SHgwR0VTNVph?=
 =?utf-8?B?NHltc05zWEozM0ljWk0vWk1RcytuMGRrNXZncVNWRUpXL3UrNWRVN2tuUmhh?=
 =?utf-8?B?S2NQaTFFSU5xcXBXakd3Wjhtb2llN3V3VU5jeFJWZkxsWUxXbnc1cXUwNDE1?=
 =?utf-8?B?b2R6d2NNM01lVzlvNjhNbS9PdmN6aXNtbmhDM1hydmlPd3c3YUpyRGhLUlpO?=
 =?utf-8?B?UHNhNWNlTnd0VU9QL2crNTFRK1l3Y2lXUldSYm0yNXk1YU56Qk50b0J5L0RL?=
 =?utf-8?B?NHk2MCtCMnBkT2VJVHZPVkxCVVJybnRCSmhIKzJnRVBqUzBINjhvYkpKVlMr?=
 =?utf-8?B?VlM3aHRPTnNqY0pUcXZMbDd5NVBTRE03Z0lsU205THdaVGM4S3lxaFlMRXRW?=
 =?utf-8?B?M0l0ZEx1MVF6R1J5VmxvSktRK2hYRm9kN001Y2oyblJScmJGNWIrb3JYTnBF?=
 =?utf-8?B?djg2YTBGZ0tMZERrTVorMUFCb3BnY2RPYmxsVDlzbW5hSCtpL1BOYmhCKzc1?=
 =?utf-8?B?MTM3bE5RSGVXSWp2SThaUjJENWYxK3dzckhvN0k3dCs0V1RUNll6Z00zN2Zn?=
 =?utf-8?B?N3VjeGg1YjdiRm9UWGJlSHZPbS9aTmJqTzVpUG5XSk9nMnZGaFE3OStYOXJl?=
 =?utf-8?B?KzlNZXA5eWlPc2daWUpvWDU5VDBiZlhqZW1OTnJOQkx3TllieWI4Sk91YThP?=
 =?utf-8?B?QXZralJxM0p5VDNqZWpIL1VDYmtrOUNPSEk1bmxHcUNEWmo2NlB0OHFKWmFn?=
 =?utf-8?B?dkJCNmVjSEdOVWVmUEdLenh5K1dlNUdZL1RxZS9WblVRZVIxNHY1MWowSVJF?=
 =?utf-8?B?emJsWGJoV254cm1DNWpDS2JPd2cvM0hBREZWMEZWZWJqM0gxTWR3S0R2TEtN?=
 =?utf-8?B?dko2bk1Xa3J5a1BiR3ZwdDBEUU9WTndkanRCc3VGMkFNcGs0cjUxM1NqQy9w?=
 =?utf-8?B?VFVsOHJlbVpFYXhkcUthY3BXTE1aT0VXbWNBZUYrcEFWaVgza1hQMldKa2JQ?=
 =?utf-8?B?eXpoYmU1QmdKajB5Q1NpdVF2aXFFNU5CVlBzZk4vQkJSTGgwWUZVUzE4ZmQ1?=
 =?utf-8?B?VHpDZjFVdnpGU2RUM09IMjBiV3hidXFZVkE5b3ZXNWV3Uk5wQ01VV1JRQjB1?=
 =?utf-8?B?QllXQ3AvRHBQbjQyUzlLV0oycEdWRlRHL2x0T0ZpLzBwSGVCWXFoRVhBVlh4?=
 =?utf-8?B?QUpmSlJXbXNWTUhFSGJLYlBweXV0Z2FEVm5Xc0Y4UzFhSjlyNkZZN1I5SjdW?=
 =?utf-8?B?M1NPcFNHcjNLcE81cnhZWjA5c09OWTBrRnJqaXl2djNnaENZV09UVjRoeW42?=
 =?utf-8?B?Y0ZzaTMyM0hhcUxidS92ZVZNZkVkVHBDTWJlZmw4Y1pJTXZSNTByNm5aWnlO?=
 =?utf-8?B?MUdNb0JLVlFqbkVEUnhnQkEvMERzUmlUNzhScHFPMGpnbkdXQTA1eWZoVkxv?=
 =?utf-8?B?K04vMmh2K2hQQ2pRN2h2S0h2Tm44OWs0NmM4REdDQXh5ZHdaVW4rZCt5Vmsv?=
 =?utf-8?B?aU5WQmZJZkNVeUVMS3ZUcWtpQmtCK3VGSTgrZVpXWHRKWWszSlQwMzhlZWQw?=
 =?utf-8?B?N2F1ZGwyTXhETlJPRzNGYUFYem44RUtldUFzZG9aNmIzM25Eelo3K2pYOHRn?=
 =?utf-8?B?TDAwNlNOcWMreWxLZkhDbHFEUWsrVStpY0hJUG9hODMwNzN0RUFRQnp4dmwy?=
 =?utf-8?B?dnBRWlhtZWk2OTJxa0lPdTVCN0RLV3RuMjkrNEYvVys3S3ZDd0VVU3Z3VzNx?=
 =?utf-8?B?R2JZTVZ6RVhjdzhmNnVXb2g0K3FkSTJ0SkZLYWt5SWZTL0IwekxDSnUxczc3?=
 =?utf-8?B?bTBjS29YaWduVXRzYjdQNGZPTkJrbklqd0NjTDlOZm1TOXp4Z3N0VFpIZWpE?=
 =?utf-8?B?bEpYQ21GbGtMYU9oWnBIeGRUNUhkeXc4TnRvYnFmOENUbHJDT01IRC8rVTFz?=
 =?utf-8?B?ZFFUOVB1amEvYU5mZ05TVHhSTFJ4OEdWQkxKRlRBWmcvbnlCS20wajBsMERL?=
 =?utf-8?B?ZDZkZzhydWJsVTVWbXArb0tUK2VRdHFSWEoreG1ReVd0Wk92bjlBUDc5ZFRa?=
 =?utf-8?B?UEljdG55TnkveGV0NHFkeUZObW9PcmFDNUhZTE5XTGxxZVJFcitkUmFDckx6?=
 =?utf-8?Q?hMBs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aG5oTDRPK2wyMzM5ZXlleUlOeCtvMnV1eDAvdDViYWhUUmhyY1N3OENpRGRY?=
 =?utf-8?B?SFZqVjI3dWZXVi8zd1BmR0dvdnhyQWZUYnZCRExOKzNZQm9lMVkrWndldVZ0?=
 =?utf-8?B?NlVEUjF1YTBjZ3hrOE1tUXpzYkVsNEF6anpRZnJ1TDhZM3ZFUHBJOHBQME0y?=
 =?utf-8?B?djdkUlV1bXoxSVhCV3prVlhMeWR2czkzZmlBVWNKVm9SOC95Y0xDUWhxNmxr?=
 =?utf-8?B?OTR4V1F0Tm9NUFNQVzhKckFhWTc0STZhVVorUTNNNzhxY3lhYks0M0JTYVV6?=
 =?utf-8?B?KzFUYUV6dW96c2dXeGNwdFZBQUZPa1dmVHlLcWhDZW5pUXdPYldWdzBkQkNw?=
 =?utf-8?B?dStxMlBWYjdBdVZleWMvTVQ3UmF5ZExQb1FlcGdnWHFOQVdPOTBtNm95VVYw?=
 =?utf-8?B?ZVJURjhqUE9ETkVKMldoMVQvcGFFNC9PMndpQzVFak00NThReXByaUhBWFBs?=
 =?utf-8?B?K1h5bjN5VEZEOXJUcTFrNzdLTUJDWWY5YVE4WjJjb0JucVE0OGhUWHN3Mmhz?=
 =?utf-8?B?ZFV2c2NpODRDTjhlbFRFNDNDaUpoVkdUQlpiQ2RUZFAxZ3lFWDAyWlZVa3Zv?=
 =?utf-8?B?MWxMelZiOFp3SDRwdlhsd01ZOWtNOGJQR0l3TEFjd3gvUzI4YUJncGZZay9R?=
 =?utf-8?B?bUM1UmhUbTNoMGI3V09MK080dEpGYWMzNFUwV3NFL3dISTJ1V21yL1hKZjdH?=
 =?utf-8?B?Vk1rOWRUZWZOeEtIQ2tCbFlrNEtGYXcrU1lINXBuTUFjSzdybk03d0dhaERS?=
 =?utf-8?B?ME1lWGtGbXBDU1Z0eXgyMFN0a3UyNDdxS0k5ZkxVMG1kSk54eGpUYjVLMmVU?=
 =?utf-8?B?cUJOM0MwekZONy9VQ0pJeEtGeVNtZy9pTldzclF3NU1RaisrZkR1RG5YK2VF?=
 =?utf-8?B?aEtHbmhoRUZYWDFKY3gwOVIvTGdDQWl3WWJGVk1iSDg3clM0dnJhWW8rdzBX?=
 =?utf-8?B?UE9sSGxxT0RRbDUxdFFoUjdpRks4VEt0Ujh6SGxyWVdQS3dyNmNQTEVPUk5n?=
 =?utf-8?B?SUcramp6bHhxUTlINWsrSGFiclNTU21GT0VRSUpHeENJNGVNeXA5dXh0ZE9H?=
 =?utf-8?B?eWlrNnVubmg3QWRQamlyakVMYU9JZWIzL2pzakNUcmdXTHZuQ1ZwZFVlOU5U?=
 =?utf-8?B?OEtkbFgxL3lmaUlKdjdSWjUxQXp1VUdHRytWMFdYNFJWOGRNK0Y3SS9zMlY3?=
 =?utf-8?B?TTdlc3BWVDZUMmdIU2RzSTUwN0JYaEFmS29Ma2NxTXRLaEwrYmpoZ2s1Y1Q0?=
 =?utf-8?B?MXN3OTB1TVJSN3VLajZQSGpxVHViclhPTjRRTFhxa0J4NjgrN3c0a0wxa2Vo?=
 =?utf-8?B?QjhKRXZQWnB0VjNYcG1kOFAweThXU0Z4RXhVTzlOTFJnUjBTdUNHWW9SbS9L?=
 =?utf-8?B?TFlSOTBKQVQ3MndXenNrek54VEk4WlhKOEZmUXpZK1IyNjR2NDN2Ui81WlUy?=
 =?utf-8?B?MVpYWngzYTJYbEZkUEw2S0lQWlFyTGhUN0JUZVk4ZXlxNTJ4dEZ1SlVmYWgr?=
 =?utf-8?B?ajVCQmIxZGxCYUhCS0k1SStUaTlaRDI0U1JSNUwwODkvUjQzS0VQNzBOWW1D?=
 =?utf-8?B?eGpROWVZRU5QaTM2VHk2cnhFa29OWnorMUp5QTAzS0JIQTZONm4zazRPTllm?=
 =?utf-8?B?YUZoNGd3S2dLOEdmcUFnRGdsdFRIS2t6VEU3UWFMYnlnODNnbjgySDNxaFJh?=
 =?utf-8?B?c0tpM05xUGxwbjVwTmM0Z3BXcG1XY1R1MnVlTEI2alUwSm1KeEVwalRFL2F2?=
 =?utf-8?B?VE1EV1FxbjZjQ2FROHM0Q0ZVUEloZUV3Y0h0enl5cEJMcHhPRFNHMVJuVG8w?=
 =?utf-8?B?dmRseXE0ZldTVGkxUCtmdFdXbjBnQ3dXMmZLanpqMkZDZjVqSTkwVHpodUoz?=
 =?utf-8?B?N09kMFlZWW1VbmxOdnZlV1JaNTRtRC92SFFCMklsMHJMQXkzcjFWMVFhcHhw?=
 =?utf-8?B?bUdFRG5oemxoRmNLRnNaNVJWb1RiUm9JQ0hkNTZscFlGeFJHVkdoQVFlT0N5?=
 =?utf-8?B?NUhSc3liOHpFd3VNUXVUYlFHRDVEUG9lNzBqMCsvSndoUDRXUkdtUWJ3bWZv?=
 =?utf-8?B?NGNQL1RQb2kxTHNjZ0g0RXRzekVid1c0TW56dlJtd1M0eHptR0UyNytNS2I1?=
 =?utf-8?B?Z0N4QU8xV0VRUEVCY3VHK1Y3ay9HSUh0b3lmU3FHY0FtYkphcjZFdW5wd1VG?=
 =?utf-8?B?ajFCNHdYb0xTbThzcVRTY0hBUklqUVZmUVRidzludityNFBZTzFOQXJkaUFQ?=
 =?utf-8?B?YVVJRHVhSGVkNGhGZVdqaDMyL2dVZkRuM00zK2VKNkp1aVVLR2o3MDBvNEQ5?=
 =?utf-8?B?VCszUHNjaTBDNkpybmQ0TDRObkFrSUNXSDFqcXQrN0piMlBmUDhML3JjWGZp?=
 =?utf-8?Q?x0wYINY/m4NDD7yA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d842f7a9-8e9a-4a04-9c99-08de6d6ec207
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 15:19:20.6001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nfYCkG/4TLSoSbfwLWnw1DASc9/e0r2hpqSlI14uUo08LzE4czK+MkA5NYIC+Uwm5r9in6FGkAACuNx33O6WgOWofKK3VYgAXbAzOWH0bPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8465
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771255166; x=1802791166;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UMaRkRkN7zKJB1p+GGkdXvnXLAJ7Esde1mrJHLNq3aE=;
 b=DGhXesiV7cPTy9xW1fOfwj9V25U2o/PSAkwnRsAFUU2MFfSr3o7PWOeF
 7FVZhfJGi685bYfCcGc4AI6KkqeoyzEkgcu8PAYMeac6VIk9sEhTEGSvY
 xIPft7+ajiC4JCayqQX7Tl7hJ3pw4xb2lejYWUbdGlVTudH8re5FVR7j+
 x7R6oDYqUFZqoXLoA00nlW4ds1oeHjiq7CYrSNa7eriV3lZBPDqVekKJm
 fY5vFrkaBZw91Wax6Kk11uFGL9Wqd2SwyEHNsnYmGkCEWjGcAf2BQo4qm
 uPTHkBRc4dkcwLOf0As8GCOB6ep1Vqs1DLWSGzq+6yKIz0Iube+NAVfW4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DGhXesiV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v2 7/9] idpf: use truesize as XDP
 RxQ info frag_size
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 47D5114564D
X-Rspamd-Action: no action

From: Zaremba, Larysa <larysa.zaremba@intel.com>
Date: Mon, 16 Feb 2026 15:01:45 +0100

> On Mon, Feb 16, 2026 at 11:48:27AM +0100, Alexander Lobakin wrote:
>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Date: Mon, 16 Feb 2026 11:46:05 +0100
>>
>>> From: Zaremba, Larysa <larysa.zaremba@intel.com>
>>> Date: Thu, 12 Feb 2026 19:33:22 +0100
>>>
>>>> The only user of frag_size field in XDP RxQ info is
>>>> bpf_xdp_frags_increase_tail(). It clearly expects whole buffer size instead
>>>> of DMA write size. Different assumptions in idpf driver configuration lead
>>>> to negative tailroom.
>>>>
>>>> To make it worse, buffer sizes are not actually uniform in idpf when
>>>> splitq is enabled, as there are several buffer queues, so rxq->rx_buf_size
>>>> is meaningless in this case.
>>>>
>>>> Use rxq->truesize as a frag_size for singleq and truesize of the first bufq
>>>> in AF_XDP ZC, as there is only one. Disable growinf tail for regular
>>>> splitq.
>>>>
>>>> Fixes: ac8a861f632e ("idpf: prepare structures to support XDP")
>>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>>> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>>>> ---
>>>>  drivers/net/ethernet/intel/idpf/xdp.c | 8 +++++++-
>>>>  drivers/net/ethernet/intel/idpf/xsk.c | 1 +
>>>>  2 files changed, 8 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
>>>> index 958d16f87424..a152c9a26976 100644
>>>> --- a/drivers/net/ethernet/intel/idpf/xdp.c
>>>> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
>>>> @@ -46,11 +46,17 @@ static int __idpf_xdp_rxq_info_init(struct idpf_rx_queue *rxq, void *arg)
>>>>  {
>>>>  	const struct idpf_vport *vport = rxq->q_vector->vport;
>>>>  	bool split = idpf_is_queue_model_split(vport->rxq_model);
>>>> +	u32 frag_size = 0;
>>>>  	int err;
>>>>  
>>>> +	if (idpf_queue_has(XSK, rxq) && split)
>>>> +		frag_size = rxq->bufq_sets[0].bufq.truesize;
>>>> +	else if (!split)
>>>> +		frag_size = rxq->truesize;
>>>
>>> XDP and XSk are supported only in mode splitq mode, so you can remove
>>> the second condition and change the first one to just `has(XSK)`.
>>>
> 
> But the function itself handles singleq case. I do not see why frag_size should 
> be treated differently.

singleq will still be handled and will always receive 0 here as in case
when XSk is not enabled.

> 
> Not that I am against of removing this logic, it would look more neat without 
> these conditions.
> 
>>>> +
>>>>  	err = __xdp_rxq_info_reg(&rxq->xdp_rxq, vport->netdev, rxq->idx,
>>>>  				 rxq->q_vector->napi.napi_id,
>>>> -				 rxq->rx_buf_size);
>>>> +				 frag_size);
>>>>  	if (err)
>>>>  		return err;
>>>>  
>>>> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
>>>> index fd2cc43ab43c..febe1073b9b4 100644
>>>> --- a/drivers/net/ethernet/intel/idpf/xsk.c
>>>> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
>>>> @@ -401,6 +401,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
>>>>  	bufq->pending = fq.pending;
>>>>  	bufq->thresh = fq.thresh;
>>>>  	bufq->rx_buf_size = fq.buf_len;
>>>> +	bufq->truesize = xsk_pool_get_rx_frag_step(fq.pool);
>>
>> Better to do that in libeth_xdp rather than here?
>>
> 
> Smth like that?
> 
> diff --git a/drivers/net/ethernet/intel/idpf/xsk.c b/drivers/net/ethernet/intel/idpf/xsk.c
> index febe1073b9b4..de87455b92d7 100644
> --- a/drivers/net/ethernet/intel/idpf/xsk.c
> +++ b/drivers/net/ethernet/intel/idpf/xsk.c
> @@ -401,7 +401,7 @@ int idpf_xskfq_init(struct idpf_buf_queue *bufq)
>         bufq->pending = fq.pending;
>         bufq->thresh = fq.thresh;
>         bufq->rx_buf_size = fq.buf_len;
> -       bufq->truesize = xsk_pool_get_rx_frag_step(fq.pool);
> +       bufq->truesize = fq.chunk_align;
> 
>         if (!idpf_xskfq_refill(bufq))
>                 netdev_err(bufq->pool->netdev,
> diff --git a/drivers/net/ethernet/intel/libeth/xsk.c b/drivers/net/ethernet/intel/libeth/xsk.c
> index 846e902e31b6..5b298558ecfd 100644
> --- a/drivers/net/ethernet/intel/libeth/xsk.c
> +++ b/drivers/net/ethernet/intel/libeth/xsk.c
> @@ -167,6 +167,7 @@ int libeth_xskfq_create(struct libeth_xskfq *fq)
>         fq->pending = fq->count;
>         fq->thresh = libeth_xdp_queue_threshold(fq->count);
>         fq->buf_len = xsk_pool_get_rx_frame_size(fq->pool);
> +       fq->chunk_align = xsk_pool_get_rx_frag_step(fq->pool);
> 
>         return 0;
>  }
> diff --git a/include/net/libeth/xsk.h b/include/net/libeth/xsk.h
> index 481a7b28e6f2..a3ea90d30d17 100644
> --- a/include/net/libeth/xsk.h
> +++ b/include/net/libeth/xsk.h
> @@ -598,6 +598,7 @@ __libeth_xsk_run_pass(struct libeth_xdp_buff *xdp,
>   * @thresh: threshold below which the queue is refilled
>   * @buf_len: HW-writeable length per each buffer
>   * @nid: ID of the closest NUMA node with memory
> + * @chunk_align: step between consecutive buffers, 0 if none exists
>   */
>  struct libeth_xskfq {
>         struct_group_tagged(libeth_xskfq_fp, fp,
> @@ -615,6 +616,8 @@ struct libeth_xskfq {
> 
>         u32                     buf_len;
>         int                     nid;
> +
> +       u32                     chunk_align;
>  };
> 
>  int libeth_xskfq_create(struct libeth_xskfq *fq);

Ah, I forgot that for XSkFQ we have a separate structure...

I'd do it like that:

	u32 buf_len;
	u32 truesize; // new field

	int nid;
};

Maybe it's not really truesize, but it will be more straightforward and
clear to the users what it means and which field they should assign the
value to.
truesize/chunk_align is related closely to buf_len, so I'd group them
together in the struct, while nid is a different story, so it might stay
separated by a newline.

> 
> 
>>>>  
>>>>  	if (!idpf_xskfq_refill(bufq))
>>>>  		netdev_err(bufq->pool->netdev,
Thanks,
Olek
