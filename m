Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD134C693C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 13:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B5306086F;
	Tue, 18 Nov 2025 12:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xk5QukOX9lKt; Tue, 18 Nov 2025 12:01:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B605C60E79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763467308;
	bh=b9zZuEUioYjUnYTOPx4Wsg0NeFRy8PC1Y7wliniYXN4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ACAbu4Zg0a8iAKs50SioshOTPaJaTXchKR+FUV5c7IkxwDlefRFSPqRZFVIS8YPzV
	 x8IGuAEixA5bifCHAGyAdL1Kehk2y7F230+ZTgcACizmL16xs++T5CE4TO4ukDkmCa
	 NWPvtwYwj1OPSi3PGmhbYCtiJUDUSL4OXCwZ0ei77idTLFQcyAARbxciNF7DhfUNpp
	 mfV7b8lhSwl1/IBJNRkJmgAB7eCIXx+67YvnmFMjr6HziHQ8DG0/hU8YTr5f/Zhc0Z
	 lCZefTVgXiJUQzaq0kKeYdY5IMIR0BhsuMZdeUSOsKJS9gDEr7g0F/LCHLca8ltrtD
	 VOq982N7nQd7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B605C60E79;
	Tue, 18 Nov 2025 12:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15B4C1BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 12:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F05B16086F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 12:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WnA2eZKZEvWO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 12:01:46 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05A416084E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05A416084E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05A416084E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 12:01:25 +0000 (UTC)
X-CSE-ConnectionGUID: Dik9SxnJSyGZ33HxjNJ46Q==
X-CSE-MsgGUID: PmMxSM0oQWO9Dq4RAbeqvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="88136569"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="88136569"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 04:01:25 -0800
X-CSE-ConnectionGUID: 1/XJ1fpzSFuy7cJPl9yCeQ==
X-CSE-MsgGUID: 209flxJ3TYy3WAxv3fmu/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190541576"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 04:01:24 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 04:01:24 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 04:01:24 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.4) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 04:01:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ydQ/boy+MIZTNLjotmQ38Ump5nPMtYVZ0skidvBDR+6FFt1g/MepsrG1IBQhORTww7OMiVoBDDNs2CFJD7oiqMnHPlI00vmd5FEdGd0N9020sL7SKRk8AFF5Xdp2S8YUipX9fMwFoRy86wetE13yLuHtZ+/GtTbwwwF65JVCMFFlxvB3mhLpmK0qV79cVyh7umhqAhCvhLXITbGB+0GiNCZNpp/gmdAds4OWrn9q5SyoOuyhbjRtPt+u2vKFWEJDbYnEZKu/rqHSIteWwS5rk9vYy+F+vk7hsRXVeGn3tAFGDoyguDpNNdNBJP/txbZ1ZfrKIvAbxi2aUpLZV5l6Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b9zZuEUioYjUnYTOPx4Wsg0NeFRy8PC1Y7wliniYXN4=;
 b=ffH4gNznyIlrKx38QW50wni1cLDxgu23uI+vhDp7kJlnEojputaOMNW2Isr//CMueWmk5Px2wlSI2sDSJEvCMHtNEsiYUqUudCGT0JT0IoqePJJDeoyoWpUAQXqkZcXNKE/BmtjJefAxZJ3qJdFCE+WT5qSRw2XXFA4XNGk5SZR8cWcCbIcMkCu1niOQYZwkwmPDXTPAJ7fXqxo3neODvdV67WIjd+T0uHQKKBpcDRTyjT0yATDlttYLgIP4Gm5eCHvySvUDARQNscnCkUA6KSD8DZ5KjhwZipBrX9IXWSjN+wE51FH298QJRKIg09DjeNXUS0OZF5Mv/bDEy5NQGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.20; Tue, 18 Nov
 2025 12:01:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 12:01:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next] idpf: use desc_ring when
 checking completion queue DMA allocation
Thread-Index: AQHcWHqbo/VcTRV+XE2Nj1k/POonIbT4VFPw
Date: Tue, 18 Nov 2025 12:01:21 +0000
Message-ID: <IA3PR11MB8986EEE2D634224EB5D0E25FE5D6A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251118105942.3163598-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20251118105942.3163598-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ1PR11MB6155:EE_
x-ms-office365-filtering-correlation-id: a78c78b0-6f7e-43c8-9bdb-08de269a3073
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Nz62paPGhIggJDKDRbzPbXdTLuRq28G91JEiGHHOhRLc6XsYmcCxDOBWompT?=
 =?us-ascii?Q?XY2UdbPwubFwCknBvF8v4nhJ2MKMWy8+ap02Pj+8tboA0joGl1kiFJgmabUj?=
 =?us-ascii?Q?ArepfOwFzO7EfJSfvbw4Z3P92jmG6MeJoE60VlYxQDty1lURFStwitVKZDex?=
 =?us-ascii?Q?ruvzI8+zMA7VzFG/Q7zxV/F8TNCVeysxzvU+Ijw9h52Vu8UH+/4gOzfESYSY?=
 =?us-ascii?Q?wH4MUkedPdN483QKK75sYpdi1j8SkTxLYidYS3T9E76pNk5JhUXkC831/UHJ?=
 =?us-ascii?Q?DcNnyW2UsdrCIokNhXQiWGn3vLQiTrIibDrx0wRH0mAmGzXLokpWPASy3ZLM?=
 =?us-ascii?Q?5OwttM6mC1utgRb4VZAALCUSpZLWQIwjpkbZyYOA79w0K6mvmaJNshmO1fSs?=
 =?us-ascii?Q?7Wtdg/CYpD3Swj8CyyNzzRCo8Z8ohSQF0V4Njd+MCPhfE91a177cjXCXs0nH?=
 =?us-ascii?Q?mPzt0Kgv7Iu4BEyOCXHfw/EVVIhn47YHOuT/EJTp7b3LBca4cqYr/GXiuc/K?=
 =?us-ascii?Q?UwtIDiLjYA1oFJMEtQ72gc+yszRZqfNxCQYFwHMTjExa1+Ums8bMlW3j43OM?=
 =?us-ascii?Q?ptRKh2pqn/9/athVtl5V8RYFcAkgINEeIl0cYvFbeEhaWK9X+C3Ktk9ns37E?=
 =?us-ascii?Q?uP56oJxCIZ0+7cu04aYReicOJj3DRQgpTRtCB17F1HyQ6RINln6q88/xpkgx?=
 =?us-ascii?Q?Uu0YxnSmpe/YyndiX/ZScbmL9Rzr3bgGMlgtATc6B+NPnFg/0ZA1TNXCgOx1?=
 =?us-ascii?Q?VcI/lUvbE4cVLA+UMZJNaYdPA1goO59ZHdFWtmfsc2jT7SpKtSeXYslFuwrq?=
 =?us-ascii?Q?qJnHtlGVBT6uVOMZrrQCWkzIyiRaxOt1Expw+fJHmiiJ5lW+JwN2/pcuIfB7?=
 =?us-ascii?Q?IddnP0JGQ6o6za65NlCMxakR/YyLsHavqIsLcwSYoBwdFnUi1HdSfyFklKnG?=
 =?us-ascii?Q?Xw0nwALftIjxzx3IT13TBA40ME2XLv+CQp6fNwYAQQa9e1kJvTM1TTUkBtDG?=
 =?us-ascii?Q?53U29x+evNS6mhx0sJQxNcbSAwF6gi6HI28hCJfm6Dye9lzrGRW1ofrGJhJl?=
 =?us-ascii?Q?/BGfltqb131syRl5FnkrfOnkqWwPwv+RhCOshBeorbO3UAQfaLwt7n8aMJZa?=
 =?us-ascii?Q?5HM2dhN0KV6048gAXA/fpBaBslPkDWQwZysygd0IFzyfdhstYLWFzxmAXUtz?=
 =?us-ascii?Q?pmBUXYSeRCqIVehHkDZUYTJnk7S+z6EmBo33e9PDQcBL7C5sDvd+svNRPxBd?=
 =?us-ascii?Q?X9rk72i7Jcl9w5U4gs8+OWLCbGgjL6Pi7Oc8pt8bNOZ4sDWhK5Ox78ghfCR1?=
 =?us-ascii?Q?FdICUU6HgXUzF9RbapPBd4VweHQvNRLJUH63leggG/fkMi0l3Cq10e0AXolk?=
 =?us-ascii?Q?0jpUqg6xfV1qhQCZ/JdmvaPAvol7tMgpIHmWLFSvbYLjJAxzX8aMQN3BvfmL?=
 =?us-ascii?Q?mRu005DvEGCUUSKC+AcaO5D488fRD5x06khlzlDeQ4JKWeJ42yoMcatvMKjs?=
 =?us-ascii?Q?dQNIv0zePHba5mXSmvnvYBcBtgbNaBvPkDDro2wlm/jq6O99Eor6lHoiOg?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pJ6t1UfrwR2UHm4uSgJsJj6O4fkP/w7KVxxnh31sZ5KBq8MKUr8kbtelSLDt?=
 =?us-ascii?Q?X6feR2raWhJM5X2NhAZAtiGDTWI30lEorfRniYorQPofJpk0iRrngjv7v2HW?=
 =?us-ascii?Q?0jZUJ769GLbBeWC3Kt15hgpFuXhPC4+mD5Iualz5B03ZUvRRWI5dn/LfiRcQ?=
 =?us-ascii?Q?P4pRILfbyUNYXQzeQA+AIALSXmr2nc965kWGiwc+YYvmsqkuY3Zf7yIjUwc6?=
 =?us-ascii?Q?v0Obor8wqpgJBaeU6kRdjDKzfv3ax4pH5lvOg3tHgxdgi8wieK/BnTERdW37?=
 =?us-ascii?Q?Jq/sIHBiYfvaHJOCWlnqtxBkQSP695uxiZIRS0mssu5Zaog9SpaSIIv8+TSt?=
 =?us-ascii?Q?Q0mC9aRibYe1RcHo5iiFRHoXEv6d3ChFNWE9ZAmX8oBplO0+j9xCSqCZCa1a?=
 =?us-ascii?Q?oKBnqMTuYQhdQml8VXvohVdXE7tIXdcBZgTnpZFARHTo/6+QqRSH1UKxT4ND?=
 =?us-ascii?Q?1L0HxgLkLfnz9oHJVWd+b9NnXwzAv3+YwKu1vzGx4apxrpuZT5uTSI2z2rR3?=
 =?us-ascii?Q?Jklbbh541Zq98/vmSTo28BWs+qvZOCsTHt+X/BTqMc8P0KESzoVl+2ElDigB?=
 =?us-ascii?Q?pirE8XrrYyRjbxeRx5zvTDTHkx5W6kLhC8pCviYJKt5vFeIPeB4uhB3j37EV?=
 =?us-ascii?Q?IbPm6mTXMhiDkKdc+5dKwvtCTxHV9GYV5o07dachbtxgvG5i/f0fF867KkQk?=
 =?us-ascii?Q?nmYdxbpK9c6h8pT7eRAuHYYPMbIc/NNueACpDtKydvhQjIt/seQrQIIIqnET?=
 =?us-ascii?Q?4rTQhL1qKstqmnUw31yjhNAMctC2wlTAP5dThITTdvKxF6HZ/crFAbiP1zIq?=
 =?us-ascii?Q?13WZ0s1gS61wLcRMp7WXlECgehRlG3rOzvR9Nuz5D56Z7pB8SHFLcK8j6Q2s?=
 =?us-ascii?Q?oO3Z0+WyoaQZeLjjhPspthhBt1k8+1cnxC2pyxJlbtksbqBhHnCCL1/8dv4M?=
 =?us-ascii?Q?V1d0rbay9jatFMWLPxO/PkYsjdSMfGQncql7fkWu85hOQu4Kfdr8TmA6q3cb?=
 =?us-ascii?Q?u8whua7T7teSRla/JsyhhjN1xYn7IZ7u8NJEzXGGcHQ/xawp2O+XSHqQGqV1?=
 =?us-ascii?Q?vDovsJGkQa8j73dBJCgsOLvqOtalhDNZdf6aPJGiCDSmHnXxnJr0s08x4kjg?=
 =?us-ascii?Q?Jnfm8ZDudTFvHb4clTf9vT7ngMtrJUwW+vkdUvzmRvwHMDiSlVX8YOrpwTUM?=
 =?us-ascii?Q?hrF4EbOB78SyTrohGicVUd7BBah+S1jp27I4056GafqXbdoXdVbNIrFIyytO?=
 =?us-ascii?Q?WQceB7m2e8cI+5oyPNhuI2TKF15hiGF1n2teut0NlXoAniZJVNQd2gzLYOvS?=
 =?us-ascii?Q?dycNViDWyCrmnD1OQl84Y4y2tOOw9AJ9DBzVA7hIS+oqkGtTUas3ayT29tb/?=
 =?us-ascii?Q?mkR4z+HYhSUqvXgcpyLlPQecg8xwaIcqHh6VP3nocyeemjXvM0SssggMUFCJ?=
 =?us-ascii?Q?mLc7pYJGt80L+GmGjMpMCxunVDffi4PlFgINZ6u7SMZbjh94GbhzatZdrfD6?=
 =?us-ascii?Q?3zTWJn6m/Cfky40QnJNaYzaUtAzsKVojKNrpTYC/4zNxESowKVnBmUErl3Rt?=
 =?us-ascii?Q?fBpTSfiuTSvx73mK3UtOgm7P78Mq6UG5VBs/6jrecU3gn9KUosjYqy5j3Hen?=
 =?us-ascii?Q?rg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a78c78b0-6f7e-43c8-9bdb-08de269a3073
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 12:01:21.2472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KR6eoCaPCcrYKf4dLY4JegG+STHgwkoK2xcgsWn03huUYqRy+YDuct3X24zXiaOftWzUv1miOC0xfTRs5rS3bFSj4e3G3AJPC+vxpcUK6Sg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763467306; x=1795003306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2gAHeLrSUMBpv6Az3NmtXWb6KgJmsP21Dk2DC9hHKus=;
 b=Zt9w/PRJJeRLaL020p/Pkko2yNEGtcK7Uj1kYDJJ3WB196NQ5ybu1qye
 ds20gzgwaO+/an012NC65hb7YvfVCjvH3rFZS0COJAstjpWta2PtOsNOl
 s93E0fDImR+h6kbR16Qht44j8mCC7kXfupIFQ9PWR1VugzoWCKcOAR06M
 PTLoyTz7yMpsatNU04poxzAqLTFwy24CvaXStTSGFsbxfP3bvKjVaS3Zg
 O+UsrvmGR+RenoBgm4MDQbkR1OWUbOaiAITQtsrdSq9fGa6vtcktiz1ZT
 SjaFwfOjKiWANUheh9DcUgkZbsYVIUIWZJijDNJHlRz+8xhS+j63HoepV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zt9w/PRJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] idpf: use desc_ring when
 checking completion queue DMA allocation
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Alok Tiwari
> Sent: Tuesday, November 18, 2025 11:55 AM
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH v2 net-next] idpf: use desc_ring
> when checking completion queue DMA allocation
>=20
> idpf_compl_queue uses a union for comp, comp_4b, and desc_ring. The
> release path should check complq->desc_ring to determine whether the
> DMA descriptor ring is allocated. The current check against comp is
> not incorrect, but it appears to be leftover code from a previous
> commit.
>=20
Double negation sounds not good.
The current check against comp is not incorrect, but it appears to be lefto=
ver code...
                 ^^^^^^^^^^^^^
Suggestion: s/not incorrect/redundant/ (or "leftover"), to improve clarity.

> Switching the check to desc_ring improves readability and more
> directly reflects the intended meaning, since desc_ring is the field
> representing the allocated DMA-backed descriptor ring.
>=20
I'd recommend adding "No functional change." Line.

Everything else looks good.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
> v1 -> v2
> modify commit message and target to net-next
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 828f7c444d30..1e7ae6f969ac 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -134,7 +134,7 @@ static void idpf_compl_desc_rel(struct
> idpf_compl_queue *complq)  {
>  	idpf_xsk_clear_queue(complq,
> VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION);
>=20
> -	if (!complq->comp)
> +	if (!complq->desc_ring)
>  		return;
>=20
>  	dma_free_coherent(complq->netdev->dev.parent, complq->size,
> --
> 2.50.1

