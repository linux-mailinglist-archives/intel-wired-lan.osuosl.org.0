Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69146AD4500
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 23:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D136420F8;
	Tue, 10 Jun 2025 21:51:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4kAR-tk4TRGu; Tue, 10 Jun 2025 21:51:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63A6C42115
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749592274;
	bh=dLzGaFhXm9uc0xTg4mukQI/e23OxqTVnIsMM14iSfRs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=itqtqh8Z3RfsaLVxsGJxOZ6hQl3kTDXQG0bgetmFJ6fSQoqWlHjIsWihICr02eSB2
	 2e05fXCcAV2Mt63YW9h0c+vJ+rKJSA3kPt9z8UzKUL4tiEJztOKayw9eB0z7HFNXnV
	 lnbFEA6JbtKFdkQDXSqWH2ib1i/21EXVoewPtPw80Yf83FdLsXximvXlzdy8hE5uN6
	 1AYPmdPJXdH1fpA2RO4Tc9H6RaDydtrgo8888dcMo48nGsq1Ancaq/PFx27M4RdTne
	 I42ELHJ7h+p3MZ4q7s16srV/eX+VyuAnC6JzeznKz/aEK2kYJPHetPCI259ozEgjoB
	 ctdhmWV5/qFcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63A6C42115;
	Tue, 10 Jun 2025 21:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FA3D1F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8662983DEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t84bFPk36hJR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 21:51:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C41E283DFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C41E283DFA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C41E283DFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 21:51:11 +0000 (UTC)
X-CSE-ConnectionGUID: tZVGteObTqSbS6xqmAEp1w==
X-CSE-MsgGUID: NVh3E40YRZ+DjNbqKK0Xqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="69282586"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="69282586"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:11 -0700
X-CSE-ConnectionGUID: 7fjvTvfYS92CAXNtN2HF+Q==
X-CSE-MsgGUID: unVEy08eTem1yPjqaV5ShA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="147903452"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:51:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:51:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:51:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.86)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 14:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n3C1XtlZOGHZimn1MbDIHPzlIQJ03tMghYG9Pm4xVaCL/wYjsvnGNoJSuV5VJe5qeLQLIUnZvpk/gkwj8i6sPIR7sRvhmt2z20RlgZSYM0Y6i4r2p1wRZwU61XbvhkuY+AzjvnToNyRSMMeXtNy2KES8wXCJ0p7kR4gVYlSupwK52lvXERLJyzk291JmYkm5jb3FYNNkMk3fsZhsVUdSxA8+xivCZtGgBeN971r8+t6BfCPBWnfZfltjrNy2zM8bGLOb78xFNcThrLYZom8PQ1/rOjCAD6PshN7OQumGP/mnsLr7DHeFCh7QQqp3N1p0cvWLnivjr6HJmxVaZcxMoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dLzGaFhXm9uc0xTg4mukQI/e23OxqTVnIsMM14iSfRs=;
 b=FKmCxlULaJR1p9aDdfRxTcQo9s5AxTdZUkCAahjIN3q6dSn1tbOd5RZw0jHCVwugL4GG0DTwtcKJlHXCtRhLz8pP1oyHWVaQ/1YZhR2rWWM6pubDA4LVevB/IksmSG6JGCaOxYAZ7PYXvXlzEVne1DWYlOKmffntV4MRSTvmxKl6GzJhYqXJgbxnXNjidb4coNXeFvLpIQU3/tMEnxFA2w0Wt9ATDPlS7zd531Gu6iOnrL9U9bBm2WS+lNTdnbY1yVLRj0CUJo91uWmjCpANO9tQNxkSlJjJve9tabFPJSUObYRWx1k4O7y7QdGq/h2pdGpZRGlauAS5X3msS5KPbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.29; Tue, 10 Jun
 2025 21:51:08 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 21:51:08 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nikolova, Tatyana E"
 <tatyana.e.nikolova@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Michael Ellerman
 <mpe@ellerman.id.au>, "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 09/15] idpf: refactor idpf
 to use libie control queues
Thread-Index: AQHbxnVidaYXCFU2a0a+dQuihAvfZLP9FW/g
Date: Tue, 10 Jun 2025 21:51:07 +0000
Message-ID: <SJ1PR11MB62978A457788658845C59ADB9B6AA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250516145814.5422-1-larysa.zaremba@intel.com>
 <20250516145814.5422-10-larysa.zaremba@intel.com>
In-Reply-To: <20250516145814.5422-10-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: 3cf45d77-96a9-46e6-753f-08dda868e809
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jFRbB4NUPBHGZgBu1kTgmdCMK9N7jUTBpRTFfQKFy6DtaPgfAznIG6o6Me7N?=
 =?us-ascii?Q?b/DTpuNkcCQps+rS1+LMA/ESpwJcGr/WrB59vpe6P9SESUXGRdgddLY5Gba6?=
 =?us-ascii?Q?FhHW4ISzqASEtkp3t8/vgNV9+OeiO/E0hAcfDgN2qmBSnVqQUrVDSffNWSAk?=
 =?us-ascii?Q?hARPKSHPhU4Jwt4FakMiPQNKyIV/KmKQeE9k85fkCO4gEL34GNyq9/JvJefx?=
 =?us-ascii?Q?qXwWYvkhVIjI4q7xxmKkCsANhSDpmOP4nRIhJRXqrshqzRT08BfN4ovlH/oU?=
 =?us-ascii?Q?d2I8B4YX5BcQa57zjWen6wzEQcXXBvNwZg41oet+ftP6DAQ00E+7cj/zWiJN?=
 =?us-ascii?Q?p6wv86sBduFVy1R5EK1w4LxZ+vhIW9zxefQNsQU2Ck2CkIMTClcWudf1OyuB?=
 =?us-ascii?Q?6bmZod9GVaNsJPz+to/WeSjF6Dq83qwdPCxJSZRaAy0C6abSMR51GNBwGAVF?=
 =?us-ascii?Q?aJrUbKlYEndByfprTCQSFdQ7DKdoJcezdpGmrBvSlM5VaXla2ETjk2w5NUzt?=
 =?us-ascii?Q?Bgql2+LpxTRENz+45xL1xXUlQsirSCwc6rO06XFdONpanfqjmAvwOTLae8Ye?=
 =?us-ascii?Q?7YuVG6Zw3F2JdHhoDHHhzDwMw6mHA+9I0WURzAv2kAEuaWtBBK+f5kPNA+lj?=
 =?us-ascii?Q?+h5qs02nF92IHnU1k+a8yMnkAabyGnU2SMv1QcW5mf9k1uspmkyVf1/uQMai?=
 =?us-ascii?Q?Vm7BFio+96CtteiS1jholklhBAQqk+/YtK1BVphU7vv74T8/sF2ebhz0iAI9?=
 =?us-ascii?Q?zpkZR/Snz7XdrlLxjo6OsRKki1uqrfCi0sciXLhbzm71GTxsqu0W8/ST4e1e?=
 =?us-ascii?Q?IeairYmI0mSQhdpY0iHwuzZeAsUg8JPHb7sXG1b78dyQ6Yb4K2/vkc+U7TT/?=
 =?us-ascii?Q?zKyl8SOKm8Dm4wFNENaSa9NveYsJvbqX0fYeeYvhC3soYbcFwzvAaPw2H0rO?=
 =?us-ascii?Q?MLj7iEk43WNgUPnDmYmcCkBP56Id6KHhyRyj4+WfRFc6qKAtl5LYurTC6xxD?=
 =?us-ascii?Q?wQdPMHjFTmInX8+NZVlALykBf+N6kysapmg/mIYzzpR/EGEqieetY+pHzeGL?=
 =?us-ascii?Q?wjUNt2deHaJ+ib52nt6+cXqka9cTvujFg6kzwT0K3LEf6mIZXYND2NjXB8CM?=
 =?us-ascii?Q?JS4Ys+3FuzCWL7RmC2Ayfu1vpSla8jQiJjGUZFvra9PsR947I5v3Sd8FqBJV?=
 =?us-ascii?Q?zjJxlpxuWpSiE2veS1KwQwwdpQjOC/kDO/B/Wwbe48q7y9NkljjceZRc97kh?=
 =?us-ascii?Q?VInNeWei4/kLg1QCyilwRphHqbhKL6eNTSxs/JyUKwN9Dc8ztubVZBdRLKc6?=
 =?us-ascii?Q?CJz3FuO0rJaYBlH10B2kXVzrT2TpZ12DvwhgscAb71jqsNnN+VFvWJDxlCue?=
 =?us-ascii?Q?VfSHzvpNiJ7jSn62ovQcC2qE1YDTxMkypod8l667cHmis62cM66d61DaD9SZ?=
 =?us-ascii?Q?W9IEvIwi9B4Y0LkTcqod8fP76+UTxdtIITerzvIllYGO0PHMF2zixA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L/ziDds5pdMDtYX/IzqUiSmDcfLy+yEZcfTFXwnRHnH6mfAsDic2IwJ9sCGN?=
 =?us-ascii?Q?9ELvzlA3Za/FZNSoyCnwrr7zARLOhZqj4YFuU8ZnRGwwO6GTLH3tngQ6MSqe?=
 =?us-ascii?Q?GNeYkn8c8RgxvaZDIsJRqQhCIdZhkFVAvYZN2PH83dt9Gd0h4O8uF5T9SwZg?=
 =?us-ascii?Q?ptoGqTjcTEub4+3x5lkvMhrYp5dwZvoVasQzkaCEJRYQRNG745j8s1Nj9Gi2?=
 =?us-ascii?Q?k3ncUYkI6PFhOu+l61cAbd32b5ZrUkd7Aa85qqM0bXcSUJzuZlTGUREXYYKW?=
 =?us-ascii?Q?fiLZEyZ4UK/bbhe4u9UGJ189n5BeATwrn0f9K1RUwLRqXcIbB3eZJnwERU/3?=
 =?us-ascii?Q?dj76eon0nontTf6ikK2D1JIYiG+xCXOhjzpjcti15121H0qapbcW1eGaCjNt?=
 =?us-ascii?Q?5gwZ1MvaqClxoxitp3AckA+Fh5q1MfsJ6yIEop3eLqfRAquRtbFdeE611YqN?=
 =?us-ascii?Q?6X+UV5Xnu+EdZ/Knt+12VAmlyUgmiePF8Omr9LkEIGzfDEUgGEOdVMXl57sZ?=
 =?us-ascii?Q?snX/hV/Oz3hM/xdH09OZ41D5Ak+N/PvfhuNa1+ukZaVaz4pBHSV/QWy/KE4P?=
 =?us-ascii?Q?NDe40ut49jgueQZSvXx6YU4PbC+S39Vc+duHZYsgTamWSXDZbaQqBPoCe6up?=
 =?us-ascii?Q?DsB54/hYBjlXi5HiaekMUYxcacpAXtvsaRBDXOIFVdw1KvZCZ2MDYTJVefFW?=
 =?us-ascii?Q?Vt+pfU/00ywO0pc79szpSSQAqnhXUW29Gn8LtH9Wy+lNwFjB3CoKDowy5eq1?=
 =?us-ascii?Q?KEMZC2g+dQLUExeXgrtl9QFpI+invIWbvUOTJTIT0hGzj2kcGV761p4kDg/U?=
 =?us-ascii?Q?xNjSu9I08HSx0MfZVEkfmKaPdRHESU0p7CWt8ppf42KwNoNdJKUlY1K2S0tJ?=
 =?us-ascii?Q?1hgJuns4J2B5s2851B6WMdjOHc8GOx3YNmeSmwSTJI1aNA4nfxHUyu5SFSzi?=
 =?us-ascii?Q?iFqqUcjJ1qGCacmaTFOZw6s+T3AZnelZJgBprTluXPulzZLR573oZdX9znig?=
 =?us-ascii?Q?g8mOEqgx4uD9RvrHCs/aOzvZGYfftOavfJus56fyhbiWPY8Z9ej+5beY1ikH?=
 =?us-ascii?Q?9HOlJ23lOnjT3AAmqIgvZR1gdcstlZE/Q4aTv7drXAI6OBiYcg+JGalE3jCh?=
 =?us-ascii?Q?jybDVTz2SNZXK66Rg7nKcTna3DB3TxxFhD056HJyzvxLEW8Y9ipdRVqhOLQU?=
 =?us-ascii?Q?xFruZPSTZSfrA8lqCADpq5FFfMontK/alyKy/f2rFg5DKh+PKMXol8XLf9it?=
 =?us-ascii?Q?xx8fBW7ncCbOuBXxgbVFHW7/HKns3Y93ruDYW897iAVLLgUgHLmUwFbPOSPO?=
 =?us-ascii?Q?yFQF0GbCLvAByhTackcKEkpuvP5xhQgE/+hPIE9Q4Gnq5Nm/l9C8HUqK3fML?=
 =?us-ascii?Q?SXcjPuj2PTP7DoJqLbWHIJa7jh/Hks5o+dfwMznyBSnTta6pY8lcS4eUAP9r?=
 =?us-ascii?Q?QlODNd2VRCARu060OFB26ykpRd433m30aInQDGVmBnULyO7Y4r9RdmJGSO7R?=
 =?us-ascii?Q?ncfnwWfYXxofXWi44reCZkBnqTqIfOmQr8AkXlzgG4Io5MZSyiugzEjNutp4?=
 =?us-ascii?Q?IT7Y7D1TakXkgVHjEGxawXjwhNDOa+PI8U67euUM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf45d77-96a9-46e6-753f-08dda868e809
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:51:07.9209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jBH/lXNvxPxcFo/wM/Lz/jLhv7YNM7zOZmS+MJNNHcyRhE2Y3zGPd0Q+UtYHWcbH9lgA0fVT/6oHmDB9dtfFXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749592271; x=1781128271;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dLzGaFhXm9uc0xTg4mukQI/e23OxqTVnIsMM14iSfRs=;
 b=Vm9km6KV8MmJiHYAQyC1fYnDTKxW2/rMDxcefR/55LJmYokBqAuaLvGb
 OJAhZM5X2kC8N9Qcd0kb8yrmlG7ilTP89vTjYcUTPFqXag8n5ZEHnAKmK
 U7GDUhawSGVRswCLZknrHcZEEM5R2/zqdsuWCI/H8dvqvfYvHcUHQO0fA
 W3t0gWzUSbQ7heE7ePMAqfm2U9h9B2DWt0PCtubqi9C9UchRg9d8kmFm9
 ZTuarXluh4+X7DY3FG7lOnYKIdw0nPd/QcaH572YU2i696ZnGr+f1XD9W
 9yx02wnd6vqcMKWFmFCi1riI8eyvodHni6DSHm31RHtQqYz4TwiZgRlFx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vm9km6KV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 09/15] idpf: refactor idpf
 to use libie control queues
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Friday, May 16, 2025 7:58 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Jiri Pirko <jiri@resnulli.us>; Nikolova, =
Tatyana
> E <tatyana.e.nikolova@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Michael Ellerman
> <mpe@ellerman.id.au>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> Lee Trager <lee@trager.us>; Madhavan Srinivasan <maddy@linux.ibm.com>;
> Zaremba, Larysa <larysa.zaremba@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Polchlopek,
> Mateusz <mateusz.polchlopek@intel.com>; Zaki, Ahmed
> <ahmed.zaki@intel.com>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>=
;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Olech, Milena <milena.olech@intel.com>; Linga,
> Pavan Kumar <pavan.kumar.linga@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 09/15] idpf: refactor idpf =
to use
> libie control queues
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Support to initialize and configure controlqs, and manage their
> transactions was introduced in libie. As part of it, most of the existing
> controlq structures are renamed and modified. Use those APIs in idpf and
> make all the necessary changes.
>=20
> Previously for the send and receive virtchnl messages, there used to be a
> memcpy involved in controlq code to copy the buffer info passed by the se=
nd
> function into the controlq specific buffers. There was no restriction to
> use automatic memory in that case. The new implementation in libie remove=
d
> copying of the send buffer info and introduced DMA mapping of the send
> buffer itself. To accommodate it, use dynamic memory for the larger send
> buffers. For smaller ones (<=3D 128 bytes) libie still can copy them into=
 the
> pre-allocated message memory.
>=20
> In case of receive, idpf receives a page pool buffer allocated by the lib=
ie
> and care should be taken to release it after use in the idpf.
>=20
> The changes are fairly trivial and localized, with a notable exception
> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> under the latter name. This has some additional consequences that are
> addressed in the following patches.
>=20
> This refactoring introduces roughly additional 40KB of module storage use=
d
> for systems that only run idpf, so idpf + libie_cp + libie_pci takes abou=
t
> 7% more storage than just idpf before refactoring.
>=20
> We now pre-allocate small TX buffers, so that does increase the memory
> usage, but reduces the need to allocate. This results in additional 256 *
> 128B of memory permanently used, increasing the worst-case memory usage
> by
> 32KB but our ctlq RX buffers need to be of size 4096B anyway (not changed
> by the patchset), so this is hardly noticeable.
>=20
> As for the timings, the fact that we are mostly limited by the HW respons=
e
> time which is far from instant, is not changed by this refactor.
>=20
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> 2.47.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
