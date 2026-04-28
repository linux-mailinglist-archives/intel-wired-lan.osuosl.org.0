Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHhQHfmH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:12:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C01EF482534
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:12:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E886C40FE7;
	Tue, 28 Apr 2026 10:12:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f9AA92KOGaXv; Tue, 28 Apr 2026 10:12:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41A5640E7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777371126;
	bh=ZCjF35fTvCr0+ngDqnLGJp0mHqNIv+2jq3/1MwOHp0E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iqWwmK+tp5kgpozml9ma/bPUB3EP2yUHR12UfnadjCblxxgyPCx/9/LM4LKCsh2JA
	 5l/jr9K0i1qnzqzt+TcXgZXrcxQ679bu/FFzd39eszc5ZBGWbL+WwIUIaYwKc92MkG
	 dTQVeGtA1UptETBanWHyOx39i0DxzaVVqSmx2At4imwlaDkP+VAbmTXa/fy+AzGkjv
	 Yrri+VZ9b/PU4NiGGeTYNQW5OTXqk8EwH9Yp5HBb4Ha4W98VZ+Jh4ez6vNKewefYKl
	 Z9YRQOYstAsNkvwHq9Zz1+QvNluCg9To7HhjNMj2t8S2dU2UgylddywYK/9i7NZzr0
	 3zpd0CsJt7uQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41A5640E7C;
	Tue, 28 Apr 2026 10:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AEA01231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94A52406BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vRYANXyQN34C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:12:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF08A406B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF08A406B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF08A406B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:12:03 +0000 (UTC)
X-CSE-ConnectionGUID: Vd8Ep5C+R5iQdh7P+Udg9A==
X-CSE-MsgGUID: yXXx+lk8QiCkD/RtDDwFhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82127580"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82127580"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:12:03 -0700
X-CSE-ConnectionGUID: nO6MBwgeRgakDvmw+T/xTg==
X-CSE-MsgGUID: QPNK1FdaSumm8CsHf+b5WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="238253724"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:12:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:12:01 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 03:12:01 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.24)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:12:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GJpOXS9rHmYSe6t1mWP1SA7qkdSDbPGDhJY05Dmys8070cHlDiUY41LMEG6WJ1be2ydI8Wdgx2E/JyLLQwNC3AeVtuaLvrTZnZ+w6WFnxWaugur4sg9klj/x6eBkMeMwts7dU2lXxMgOuwjHo32f9KnDnM0xeDfDnZyQYz9CWry7RwhudSYJJV5NbfmzluTZbnBCFeYS0Y3V5r0lNjgDKfIqGggj3x13azhMayP7t/y89T5zwok3w7mCM7vGgNw7D9gFjQzqrrGQyGy9ZvgshJFuoXKaK87eb4eSxwD6kMEDAUVmn5OVHvVHZRYqn5eodUNC8+LtSEXQHGExuCkyDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCjF35fTvCr0+ngDqnLGJp0mHqNIv+2jq3/1MwOHp0E=;
 b=hHB6TFHxS91A8/Vi4/L/28Fny9bq1OqZ8PJw4dfavHMLtJociqVriKrgawgbfkOyku94hLGh5r7JRW5x/kNrzWcAhKhqx4J6tuGCuPqH45Zp8HndP2rIUrRv+P8ngXaIm361+Tm8Brb8ulBCNfPy5taaMAqn7b1JiaXISFdq4oVPkyvl4d+FHO4sjI3SHNMDkdxqWqztff6gp8M37fGfs68uGGNh0Bk22LGeRQARa0KHrZmddbjSBSaI9kYent6sYllRLfl64S6pS85UZMJlupc97tXuLgrUaz9EB4zNdM3/bGgrMrr/C7/UKTkwfVSYRmP6TqW53lhlk6oeWRJyzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Tue, 28 Apr
 2026 10:11:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 10:11:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "R, Bharath"
 <bharath.r@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 11/14] ixd: add basic
 driver framework for Intel(R) Control Plane Function
Thread-Index: AQHc1ujrk6dTeeltFUKKiUuQrWXf47X0QPfQ
Date: Tue, 28 Apr 2026 10:11:53 +0000
Message-ID: <IA3PR11MB8986276B7D0D349D406EBF11E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-12-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-12-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: a8b587e7-b17e-44ee-b765-08dea50e9271
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: i4nPewB6YD/F1e5X3AujuZQ4MQD+FCa/ZlSWVHq9W18QCYzZ7Dw58SoThhoD6q/Md88Fl71U95z9OBaTiZLESrzY30EnA4m0QwwwMfC29KlUd6saTG379BxvUKrj1i8mB0HsdSuYUJXwcpgSiQpL+DwGEN7habQjcNEsZ3VhiTzMHw0yPQZMwYLvn1FOkLD3h2qLFPITDBI+dilF1bm/tKujfEm5aJbEVJOyg1dE0BKQif/nGicWvQLHjdVhFIaPOBmM4CMD05qdv0J7zdu6Vdua23FOx5zgOkEtBYLmwHuWek59YKkcv3ScvsWfj/qlVN+AYQhT7Ums0DwzRfdpMuWG1gAOuOwC2QBuUiX46mmzhPXIW8clQir8TRnruuUJiLTfVDm4zy/TfCI39jiHUu+FAn9oUo/ZVBU/JHtkpI+FcxYR63ch1CNOMZtbFAyil25KtgTQbQMtqxUTqMFjZ5L74Vw3h7RpuyZ/7Jfx2kAUTNAmYsrSuLuj1MLHcLWjEjn1IduAdRa5TuAz8l+T0cptbv/9aH23ez2O3snOxZ9FqbQTsOHRldboUJ4yUdGpm4yuXCRUr7V44fTTQXvNvDzPyzr9AtSX55sGpdWaEdOWCyGg7+D0zwUxQTtGjOrzV47hyvi05Yimw7l9ZtDmjmhV1/9x65mqD1or1UOxvrAShe8y6LP4P5aFUCEA+dLVgCxZwp8VNqN7oZlgJJ2YFmXHH+q0qLCok+B9GpNxSnL/SbjRWPsoICaygAZ+4FtiSZCYE8n0P82r4PnqfwjWJetl3tToIU7Dq2cWMThCHcY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e3qrQt02o8zGw5LxYwHl9odkzz3nEXQiR7MPbcbrtro9smrP+bRsVNKLMdaM?=
 =?us-ascii?Q?dx9UvBv6QgsW4BALR9o3h3gUvhEkokktPR7mAx4eKlJ1VuvfkZaj0qWnABRV?=
 =?us-ascii?Q?LXcBmWsW5hita0y/6Rc/ZIjXYHhb50QKJe1TqO81KXBoOkZXspIn906D+J61?=
 =?us-ascii?Q?YlhzNr4d7QZx5TYp3JMSHekyma20e1mgVXJvrKuauKaCwS/1hU3WjZvxlkd5?=
 =?us-ascii?Q?VEh+7arHZsr7KgMEqLSymYVMh3VnIKRFViZ0WYNJCK8noN9in1CbegY7Z6fl?=
 =?us-ascii?Q?Dcb5vWEjx4/34XlB5IJ62Ihkeh+UeVSjCUJgks0AfhMaBzIYWmXsXa9nccey?=
 =?us-ascii?Q?ZKDq4vQ4QQfwAYDi1ofu90K+4zd/sRNR6ydZ4JgTJm53H6NNc8+BdJoj5jie?=
 =?us-ascii?Q?QuIKjRH18+HoQKEyt8Zb4jJXHxnT5hhua5CnIajHsnIy8WtuV6wK8YVTNH8g?=
 =?us-ascii?Q?Xe+GZGqiJ1W1n4LJ4dRnxKpkbVZ+VjGJA/1B8VXmc2Jf5jh+8XjUc0tiju84?=
 =?us-ascii?Q?Yjy2Zll2tJHH+0Ct+iSUq77yRyq8LLBtfrCXrdF5uxQDs19BFxwxfB9j0fId?=
 =?us-ascii?Q?/u8STfmV3Onj7OH49ZCGP3kKVxbfbKfPs5NxtXe9LMU6IxPMQOmtXTBqdGNb?=
 =?us-ascii?Q?J87KuCmuuDo0YUY8S9VcYEmrdk/nYuBK0iU3Oaz+SQVkO/0cA3hMFYDlYdWp?=
 =?us-ascii?Q?rPdKfoi+LS7nBgwQHLHms9naJ65mlwezS6Ko4ahA/BnTyy8xN9NoMxbk81ch?=
 =?us-ascii?Q?KobZQPMgftf6AbPZ+FXgD7hjarBH2s6yHdwP70B5TmhRILAT67yHjZ9pZxBf?=
 =?us-ascii?Q?l2RfbZK16AqzbdN5NelcLbYhTz8+7h1iY1Nn995nrXF/uufOfntuBbHJrf6X?=
 =?us-ascii?Q?Zoljep754OyC27f3VKachpEXpjdqp/BVpk/e8zIR/JH1eH235YZZEYKL/MkS?=
 =?us-ascii?Q?RILTf9+uRcez/+BgQ2gUoAmKbFDP7FZ9sFvT2vxCK5CKRvB+gocGlWF5IV3r?=
 =?us-ascii?Q?yDfwSwY6TQXaxJgew4TuoVtydPH1ScKnvW77ZcOv0haMPrtcjs4kVRMtkpyX?=
 =?us-ascii?Q?nSmTNj3DwMiLhuA/rHMZxGi32reQ3IbSu1L3embwkzlIcTOcyWknC8zDZueT?=
 =?us-ascii?Q?OP7MAGwZZJmjJknvzWrJ7c/LzfSYg3VYiYG2QoFGU8CIAe+nSe+OJlfSsCzx?=
 =?us-ascii?Q?txDL1Zx5ZJ9VSX5SggbWfqO9ob9k3EPf/nbEYEiUnmIImWFpjfD9zeJ3lubp?=
 =?us-ascii?Q?GNRF6sjJnFICmlqzzoeVCN5jfzyGyljS8e0Rop0h/VpNDtt7EziuHnENcy1z?=
 =?us-ascii?Q?/DQ7pG/mP+e4ya76OkPml1vPgN2Tql/G1Hz7s4dy1aLTRKULq0llREKZVB3n?=
 =?us-ascii?Q?OWZssZYtcaTGFnd7w9XIzLq4FaVZWCajHU0Y/9CqkFu3Gq5CnzCbi2CDRU7+?=
 =?us-ascii?Q?Q7lfhWXu66GPTPohT80xSWjZYdIneZfIM3xR5rOQZTBR2xmsMLBOj0TggKcy?=
 =?us-ascii?Q?v5j4wx0Jh9SAzdZZfyeukm8SwF3dRSUxOcs183KwPZRMbK3SvlMwS2morD2c?=
 =?us-ascii?Q?Lb9ygWph++C5OcogAAsyfwHq9o6QASkTW1rF5KY1JrEWqNMT08tPHiX56l8G?=
 =?us-ascii?Q?GqRPfkGtR44aw21k1c2buOek0KdzuotRGUrObNsL/F3NIH0yppVSeg9muOVi?=
 =?us-ascii?Q?73RCkLtWuTA1kPXO9z/X6D53ANNn7R0CaZWthJPWBkl4SC8/IEGpszT26FZ2?=
 =?us-ascii?Q?JFP0NFvURIOiai+kSQ4XYPLbYGhG84s=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: i2QPujTAEpqxN0IIbFO+j1sOQmsLuej7J+k1RnXuzqYYjkzEWRSwk8ocAFWEZGi3vudphZWYYa/KBX5Wl6GG3IuuQ98GVDcKWvNAa/zaPLo6hMWceXKVEQNnaMm+QWT5+BzBW+7f1tbHiBZ0gbr49uLyC4eVGnh9cU2xpC5AcuQHwp1ZZ2MeZdfgGrYtpE7b7akTbMxlM9NG7dR64GMbf5KQiM4s9qIYpkvPM3lFWEFGm0GxcFlIX4MruXk8k+gPax5m+6L3IphJHk+DtA2w9mwlGvy8g6aaHEk40QLovMK6zA6TSQvIbDOpdHhAro20EsO4TfiexMFzDwUq+v+6RQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b587e7-b17e-44ee-b765-08dea50e9271
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 10:11:53.8210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FrBlHBOPOi6X4ocVnmYBB8ZVpjfoM956Bul+8oR4N8CNVdEnO3lVQgbzF0mUNvQoM3w6E4c0idJzHKQ7j4YugYX8l8dxmnmkdJNkTSiiwNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777371123; x=1808907123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1B2nesTaO1xrU9WvN3JCdFxXGMYzMYMGw/jW9YcBXwY=;
 b=QFzulzQnaNaGV0/NwqXMtKH0k6wEFUOyXoiOqEDFeoN7PyTqHLYlqi92
 PLTrAPNWrvZn8rUuyDj8TeQh6DHATsNLI6GnjNnCBMWzKmJXTorPM2zKX
 hbAKignN0KY74ETgXrgv+xmc9oFSLyFiSM3DweUBHWUob0u8zgD/AQHXV
 yw0PER/K6gyCBwf+MCZAzKeVJNTrX8yZYIanTfz5AF9BqS81Vq2Z5PWU/
 XprppCyqEWHbiHct0rfxzJknvMlJNni47iqahNHHJlFGZS+pCWd1x/y/K
 6u/xOtprPo6YDXVCpp8RJ403SUsie6nUvPX0vpJnEcQ0T8PsYpBrO7tCZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QFzulzQn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 11/14] ixd: add basic
 driver framework for Intel(R) Control Plane Function
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
X-Rspamd-Queue-Id: C01EF482534
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bharath.r@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.945];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; R, Bharath
> <bharath.r@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 11/14] ixd: add basic
> driver framework for Intel(R) Control Plane Function
>=20
> Add module register and probe functionality. Add the required support
> to register IXD PCI driver, as well as probe and remove call backs.
> Enable the PCI device and request the kernel to reserve the memory
> resources that will be used by the driver. Finally map the BAR0
> address space.
>=20
> For now, use devm_alloc() to allocate adapter, as it requires the
> least amount of code. In a later commit, it will be replaced with a
> devlink alternative.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <Bharath.r@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../device_drivers/ethernet/index.rst         |   1 +
>  .../device_drivers/ethernet/intel/ixd.rst     |  39 ++++++
>  drivers/net/ethernet/intel/Kconfig            |   2 +
>  drivers/net/ethernet/intel/Makefile           |   1 +
>  drivers/net/ethernet/intel/ixd/Kconfig        |  13 ++
>  drivers/net/ethernet/intel/ixd/Makefile       |   8 ++
>  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++++
>  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  28 +++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c     | 112
> ++++++++++++++++++
>  9 files changed, 232 insertions(+)
>  create mode 100644
> Documentation/networking/device_drivers/ethernet/intel/ixd.rst
>  create mode 100644 drivers/net/ethernet/intel/ixd/Kconfig
>  create mode 100644 drivers/net/ethernet/intel/ixd/Makefile
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd.h
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_main.c
>=20
> diff --git
> a/Documentation/networking/device_drivers/ethernet/index.rst
> b/Documentation/networking/device_drivers/ethernet/index.rst
> index 5f3f06111911..5b6846f387f8 100644
> --- a/Documentation/networking/device_drivers/ethernet/index.rst
> +++ b/Documentation/networking/device_drivers/ethernet/index.rst
> @@ -38,6 +38,7 @@ Contents:
>     intel/igbvf
>     intel/ixgbe
>     intel/ixgbevf

...

> +module_pci_driver(ixd_driver);
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
