Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D0iIFeFlGlBFQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 16:12:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D31B614D773
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 16:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EDE440016;
	Tue, 17 Feb 2026 15:12:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Mslh4nnukRr; Tue, 17 Feb 2026 15:12:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7E4D41200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771341140;
	bh=2tfXrJEQQ+k3ZV+zurJfyPooz7R2eajBuFmjHmUZlKo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EPbLwckaX7snTNqmbd3C/3yscNLobqupXCe7SItZQzhoyzprra7bO/ECia2R1/o79
	 n31LUvosBs2m99lvpaM9qJrQho9JJRoQN43dEZuGjXjlcLU60tm3vcw0kS4Lxbk4vj
	 XlxK6Oc/+xZnNhUFHVwjoCWpEl1z07tYNE1U+cE4ytmPIEm97AvsQIbQ7KP157VYWf
	 2ZvW18drIhZDP+tNg29lfDPhdAqylm/e1xYeL8Nw8lrhgpG8AGq4nQgVbEoCXQQWE9
	 jKSbapD3s/PqT+WLZ8UD+4Ijix3ls8kizPM/FAZaOzGOyCWErZywLmogTUH3oHhi4G
	 Sc/9zvzgD7FfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7E4D41200;
	Tue, 17 Feb 2026 15:12:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 43B021EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31DFA610D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VnC8YrjdsBKi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 15:12:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5CD59610D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CD59610D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CD59610D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 15:12:18 +0000 (UTC)
X-CSE-ConnectionGUID: gpAM/sKDSACNA0aO/CE34g==
X-CSE-MsgGUID: KHJsqSMOSKOTWaWDw7zc0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="71432904"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="71432904"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 07:12:17 -0800
X-CSE-ConnectionGUID: nj9ufwIqR46iEp5mH1qutg==
X-CSE-MsgGUID: w9mtP2SYTiu7XFGKyL+C4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="212630612"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 07:12:17 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 07:12:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 07:12:16 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 07:12:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MjceAwS9bkwB4EnkzJzg/rLBFV19a7mKEJkwX+2o2QqluLFnHz4xzyRwYJ7lm+4ehgp1Gm6UH1wqIEOY8aDKGRs/boH9kYmtMtScvPQgIrvkrvofoihWO4uftl27uG1qpjtbUB7SkfiMTHcOz2WyoI2P71QdmMb283lhFwdiSe4d9sBZqs9Cme5UICS/dhrcyn5Ia2PAm2qoIVFtjaiN9hO29mdsljASOwKNaJH8whVLI784e/R90x65kGgsVV4SoQW2+HuduRKK60ZgAMDvL1b6VL95mtpIFvnNCthyDlO718hbCrlymLCVg3liOxqdwsa4VshoJ4jIqO1rCclQVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2tfXrJEQQ+k3ZV+zurJfyPooz7R2eajBuFmjHmUZlKo=;
 b=sGTWWqd+L7wVFPxiyMYNtbx2EWhyiVHpVqsNpTZ7nOhbxfEZk4ZeAdmlu8xDseUlOQ+/gpLNiGnLyH0A1DVuuY/PPn3dGaq3ky1Cfu+Wp/kqEmnrfmPh6wRIFBymQfdfhawz142kzEkxLHrQu3ly1Xzv9gQtT2hH47qsLqYcYV/IIAYCm/vuePpqlZ0n/z41M9kveGZ5msjZ8TpXrTlsWUJNy8cKps5d5Z7x69AKxZbJDNglzsAxmmTbVa4ddknDxJ38y2s4b4j4YnnVO2qYXz/Lsv9zGX8SmvWYpZtZZwXdzXG1RxuMfE3//f5Ay9bu6ZIRNq0jiUu31AaCgDtDvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6371.namprd11.prod.outlook.com (2603:10b6:208:3ad::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 15:12:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Tue, 17 Feb 2026
 15:12:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
CC: Claudiu Manoil <claudiu.manoil@nxp.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau
 <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song Liu
 <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP Singh
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Simon Horman <horms@kernel.org>, Shuah Khan
 <shuah@kernel.org>, "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Bastien Curutchet
 (eBPF Foundation)" <bastien.curutchet@bootlin.com>, "Vyavahare, Tushar"
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?iso-8859-1?Q?Ricardo_B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>, "Dragos
 Tatulea" <dtatulea@nvidia.com>
Thread-Topic: [PATCH bpf v3 5/9] i40e: fix registering XDP RxQ info
Thread-Index: AQHcoBUBZkrOnisbxUyGI7El3HxaHrWG/1Lw
Date: Tue, 17 Feb 2026 15:12:12 +0000
Message-ID: <IA3PR11MB89861DD40E38E3232AD0BD33E56DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-6-larysa.zaremba@intel.com>
In-Reply-To: <20260217132450.1936200-6-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6371:EE_
x-ms-office365-filtering-correlation-id: df6b516e-ae09-427a-ab57-08de6e36ed50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?tiqMO3iDHEqV6AuwlIZB3XG+WOII8jyIr91MX9+waxgj7DJlHcUpdEgCpR?=
 =?iso-8859-1?Q?OA0YIMzXbaENvD9daLZlOatelAqrWagy2gbBYVS5qms19wjIRGzuO9k5UX?=
 =?iso-8859-1?Q?IJ16OQXhsrrSDB6Sd/e8xlH1eVTs0JSE+z4/yvz92jJlvgUBFfplm4sQwf?=
 =?iso-8859-1?Q?Q6PIGbPLls3Xtirxan2fBiOKTi4K0hmOf8bAY3Cvdv0u4LosNtiaCuSR9w?=
 =?iso-8859-1?Q?AytHY91Yv4l23/2f/DR781vprNxM+sqHMXOnzHoG6erfInMloxrLzeLtvj?=
 =?iso-8859-1?Q?LkaJuNhd492tz9JwYZhOsXLiJXJslw+NNDBAShzAqbYOpmhy2Zypm5xrcU?=
 =?iso-8859-1?Q?axHN8r4YbD6yGnoj6JbZPep97XU2JFFyf3mbRI0EFG5BQs1Xux1u9nL4jZ?=
 =?iso-8859-1?Q?GpNSZhgy+C4FYTn2nxhf0PglEbffuNcg+KNTfpnObxU0xwAANUTBrEbMDs?=
 =?iso-8859-1?Q?SJ5ziq0K/boLJgZCP5AVgjSyjgkNv81MA1ixP0lZbDxSCiSIGE4tMaknJI?=
 =?iso-8859-1?Q?WNifCfbnJp6y7JhAvbOy6vmJLZpOnNN4G0RV4RsKInPC/QXKt2cY+9CISB?=
 =?iso-8859-1?Q?eoR3kSIzcKd+duxiAjs8g2WTGXIOmG3R9O4oLLPJBhMXNq3h5Q5PveCtNG?=
 =?iso-8859-1?Q?xWo9P3CRTKV6RC38jYtYgLfWfU8c+37k32n/tBl/3Ar7rnjnk7TgCIiYKK?=
 =?iso-8859-1?Q?1gV3UO6UXN357FJIRkmRre8jGZkuq8MVfwgWW09irSvfeF8YC/tNMNvqwU?=
 =?iso-8859-1?Q?RmWYWslkfI6nMqo0ONeWlONp1ZhnG7H5Ux5/PjUww2EqMJmkex/RlS35PM?=
 =?iso-8859-1?Q?dkTo01JjBRCO4csJuYId5VA8DizURV/7ibTSln7Wmqm2zZ++1w2u5FdcI7?=
 =?iso-8859-1?Q?UXeb6pleB3BoCuHk0M/msGLLnWmXD3NW060ZQmyjTrQEn53sjkFMn3ov70?=
 =?iso-8859-1?Q?29+h4mMv4hHfwHPQihHr6PqqMIFEi/88Usr321XD/36kyx0+ALa+12ov4I?=
 =?iso-8859-1?Q?7m/CL3A5P/j0jIKbOZR/Ts7TjzmOuHe0yj6mm01Q+lsA9RdzEpgj/aSBQw?=
 =?iso-8859-1?Q?x8sB2ki0vRTyoNCm6uEMRNu3Ubcb3I8txIUzv/22iXj6rb0nU9V1qWvA6j?=
 =?iso-8859-1?Q?FXGZIKUbjs5xb2Ojisn/mvCSnzSCNUIsuClOV+kX69c2xJuuhE1MGy+N/P?=
 =?iso-8859-1?Q?MbzrEsIude9qySgzs/P45Sb+WV73k2hx3qQldxTDnhU7DT4qd3zvYqLTNC?=
 =?iso-8859-1?Q?d4PL+IPRyZZ0MBvBHh3vjXMGOyt/i+Kl3bX3d9YphWNY82iWWcIX0HXYcJ?=
 =?iso-8859-1?Q?g6SvfXzXumMofdVrWtsLjiEjrJ45YjDbRFCVzmtcvHPktjWyJuOLrR2RAE?=
 =?iso-8859-1?Q?Blzzo7yZDGgQaUWd58vVSGlWUnqyncYFE+j9UuLWei0JQZ0auFKV/Q2IuQ?=
 =?iso-8859-1?Q?ZYEGzKFauyH7Crlh271v4eIb4g0LK+N14oB5fu/JDzN8TD21/aKQD8NGTo?=
 =?iso-8859-1?Q?5o0TysaeFmgok8V4ip0sDIjkcGD6+pizL13KO5JaWnurUiGIt7KvZ/7XBn?=
 =?iso-8859-1?Q?a+Gi6VEcVRzw9j5d3/wen/kUWOgzC5vprdEEhOwsrc974Pv1mtFTPoQHZU?=
 =?iso-8859-1?Q?wyv7BJNl9vw2kbGVWGrF5L+PGtUWafuxZJzRNbBBnV1umQWexL09i4TrUT?=
 =?iso-8859-1?Q?Y6c2VGUy94A0ongaIME=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?A/LbIhUmj06ji+RJmpadaalOIqHav3s8BgYYNMlqocEbQAo5/tU6TqB3cu?=
 =?iso-8859-1?Q?3mPeB/exG9dvostChu2a8i9JjXnXhCWGTTdJODHNcAWfO6L5iywXOxkLXo?=
 =?iso-8859-1?Q?VbLqYGJUIkc2d94O15nNTqsjXyWRCI3kpAk2sBPpwCMlK7lIj4LrHu6p0l?=
 =?iso-8859-1?Q?f6KVmGheJl9o7rwYa7aAMFfYltWrSQAEkcahAWKazGubGddvDaC2AtRvtk?=
 =?iso-8859-1?Q?4vW0BGtMsXrHSPyU2QW8/ztN4Pg6w8gbi72vA8XI/py/ZpKT0aY/7ud8WU?=
 =?iso-8859-1?Q?uTOJgFkb/w9bjQmZCqrXNJCWPDnMcLgrozAcUEZpr2i8VfzBpMVqQktZ29?=
 =?iso-8859-1?Q?DENXKRqTCgjp0k7VJB/BIoU1FGF6KTSaYHt2jrGCb/rfIeF3o6R0O6c8kn?=
 =?iso-8859-1?Q?h9CRtd9Sf0rKfoDKTPyBXVgmpz8X+gOCq29VVoARgQmSZniu2wB2Ym93BW?=
 =?iso-8859-1?Q?6XMk8AzqOOhj8/PPLJZZR+zFWwKvSPPKh3mtHyzLJrQ8KcRK2bSpJ1CEwI?=
 =?iso-8859-1?Q?9Y8hya4vvvDA2zxI3dDgBGsCFhdBaMOzDLY3SUn8SRk/xHoi88/jefOaC5?=
 =?iso-8859-1?Q?xTKdjz8vnOaybRIT+f80xZ2Xr6oaLs/oKx7aI/cB0dhBspfhw+d4uhMhL0?=
 =?iso-8859-1?Q?78mJpiVW/6wwuQQUZdjpiybbCpaenjnuVZOsI6dXNWiwB0+Y1E89FN6bPE?=
 =?iso-8859-1?Q?akcR2m5H5/W6olASmCgrD+QS0avR2E3NTMNL2q136yuf3/gIUCC/yhkctd?=
 =?iso-8859-1?Q?tiLuqft0nqdIEkj0xc2CzQmUeJNWGLCAk8ylHGAKHNoNL7707u7AY1BhTC?=
 =?iso-8859-1?Q?uCA+smvwvEKPcVLOljeSyKhdK+YCeVTCi5Yl9e5ILuSaM5r2rJQw/PKXB9?=
 =?iso-8859-1?Q?8CxDVykgXKT//FpkzgWNO2bB8pd7WmU60kEgjzEqCxIAjFvssn6soippiT?=
 =?iso-8859-1?Q?CaXKKU/clSGmLMFdp5z+jPD3ojfPdx3Nbyg+d5d150AlpZa5kSZY2JCy11?=
 =?iso-8859-1?Q?zjvglrQJf57/im4KcCc0MRZ4j9IFisn5XQDHu+NsZpYkL6YHr7JKhwdWUj?=
 =?iso-8859-1?Q?aWwbqQfBqmQmQuy4crV3e71yPjeLWwtM/uTdcMS2tuBP9R+b9aspmLHrYu?=
 =?iso-8859-1?Q?MrqM8CtbtqvY5dj+CcWL9mzXZKNxX4dxgnL5GMN6rYu1uOodWdXzCNS/AL?=
 =?iso-8859-1?Q?lel3gibSgvTwHsgpwkAuhOS/Ir3tij9OghN2NwgcYEpxKZ9Be/yGUwhiUI?=
 =?iso-8859-1?Q?ORpJ69jbq0Y/xKg1RNUBBHzkW+yZ1SA+7qHkxaqbkdifaN/h8gQbwb9TnT?=
 =?iso-8859-1?Q?NWw6M9Dy3B4frXMz8/D7vBqlORA95MYsrnVhZU6bGbeoTezSfQBVgJzAc9?=
 =?iso-8859-1?Q?R0fNmKqzrGKrJ1sFguGIsTYafnJbiKQ6+nR/7KDt7qfVkx8Gn0pNrhp63e?=
 =?iso-8859-1?Q?W5H/v8AudhIIGpBmgZfNlcT22VrTonMoO1Yq80q6gjp57qElf0abG+sxj/?=
 =?iso-8859-1?Q?/HgJPAolJ0/x1xtFof1dRNSYXTqkJEg2biqmkfkbsPxoh5yNPhVf/m7wl8?=
 =?iso-8859-1?Q?Ld394dA1wSxs7cPqHmfot0kpGa4ixb2YiVw2Vfl19vNSNaJrjTjh7mozEg?=
 =?iso-8859-1?Q?sKKAhw7SZ/M76FXHmFakFmyl0dlguGOGl0vVKiDAUe3Pc3zaaLXoE3i6az?=
 =?iso-8859-1?Q?jAM3N6HXg+tPG0/nwQMzpCNxTt1us14aE8oqmRTTwE8bH1DEr/kBZ17nuC?=
 =?iso-8859-1?Q?KOiPWHUZj5pgTl6DPwzdHkgduwFVWaR3J5I0hmiY2NvgqweIryFbV2VZO+?=
 =?iso-8859-1?Q?8fCWkVE2yFl/5VZY7+0jI79JSl6EMy4=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df6b516e-ae09-427a-ab57-08de6e36ed50
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2026 15:12:12.1520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QCjBIE4jvKIsEYU4hqyCj+g8RwAO0uCc02Suxmh+dpj0z6k7UBfff6YE5F5I74qFMSngkNGPWfvJXFwULOGCPd0TsGkSAMaRpJ4hvLGImBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6371
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771341138; x=1802877138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cawa8usoFMBrgpZcyNOfNG28VR5lusy8/8cVvH6hyl4=;
 b=ODtcBemJiM/u5pIUQ+4kr42o4Q9GZ4KikxxIsDczKEtHLedOzxs/i25m
 FlE6Gns5wcqJXv5ZmoPfoDsGsyMYOaC1awCrb+9jc4thlWvZhVhgwrNkM
 wD1FpvnXC3HYr/vmWtatkM0lrEUlXQgqe85p99VRDfbkNvyR9GzwSjQNa
 TsfzjOndVBOE0QkNEFXQpDR9tVVSmpt5swYrOsEHyNE4FfdehUYGOqfqj
 bUevmiRmsmw5vXWsNujE3aDSOQDoJ3WhZObtag1z2zUpa+WkmaVUhft/F
 8EYHdX9WkHZTv8w48N6BHh3fukTZ/Hv7lkRS+FX/u6dAbazXQuQ4GAmmL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ODtcBemJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 5/9] i40e: fix registering XDP
 RxQ info
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:dtatulea@nvidia.co
 m,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: D31B614D773
X-Rspamd-Action: no action



> -----Original Message-----
> From: Zaremba, Larysa <larysa.zaremba@intel.com>
> Sent: Tuesday, February 17, 2026 2:25 PM
> To: bpf@vger.kernel.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Claudiu Manoil
> <claudiu.manoil@nxp.com>; Vladimir Oltean <vladimir.oltean@nxp.com>;
> Wei Fang <wei.fang@nxp.com>; Clark Wang <xiaoning.wang@nxp.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Alexei Starovoitov <ast@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>;
> Stanislav Fomichev <sdf@fomichev.me>; Andrii Nakryiko
> <andrii@kernel.org>; Martin KaFai Lau <martin.lau@linux.dev>; Eduard
> Zingerman <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong
> Song <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Simon Horman
> <horms@kernel.org>; Shuah Khan <shuah@kernel.org>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Bastien Curutchet (eBPF Foundation)
> <bastien.curutchet@bootlin.com>; Vyavahare, Tushar
> <tushar.vyavahare@intel.com>; Jason Xing <kernelxing@tencent.com>;
> Ricardo B. Marli=E8re <rbm@suse.com>; Eelco Chaudron
> <echaudro@redhat.com>; Lorenzo Bianconi <lorenzo@kernel.org>; Toke
> Hoiland-Jorgensen <toke@redhat.com>; imx@lists.linux.dev;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-kselftest@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Dragos Tatulea
> <dtatulea@nvidia.com>
> Subject: [PATCH bpf v3 5/9] i40e: fix registering XDP RxQ info
>=20
> Current way of handling XDP RxQ info in i40e has following problems:
> * when xsk_buff_pool is detached, memory model is not unregistered
> before
>   registering a new one, this leads to a dangling xsk_buff_pool in the
>   memory model table
> * frag_size is not updated when xsk_buff_pool is detached or when MTU
> is
>   changed, this leads to growing tail always failing for multi-buffer
>   packets.
>=20
> Couple XDP RxQ info registering with buffer allocations and
> unregistering with cleaning the ring.
>=20
> Fixes: a045d2f2d03d ("i40e: set xdp_rxq_info::frag_size")
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 34 ++++++++++++--------
> -  drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 +--
>  2 files changed, 22 insertions(+), 17 deletions(-)
>=20

...

> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
