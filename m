Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D144B4843A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 08:32:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3D1661489;
	Mon,  8 Sep 2025 06:32:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id il5bs9KgDCvw; Mon,  8 Sep 2025 06:32:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1B0E6148F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757313142;
	bh=p7EkIyIyV8ehjeH13/YoBB84rMYqzJmUDmJJPfFxaCg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WuudkPepgKvFQj8AXrpLjrIsPHeK8CxB0U1t1XpC9pHlTSoCZMhDc7p92jD0+qBn7
	 OCfJ+KE0oGae1DzGLv8z7zadX/vP/Kn20aRgTuhvysuZxmBTTnKhNR4Ed4cq+MobR3
	 pB8CGpyiFrMilM1M732ChYhePIfbJaF+GIx/7JPeEOb0srs3agG8T/1n0j5p2M9I9C
	 jPc3uu+O58m1l5OHRQPXwMzA7zKpTecmwVvh7WNwU4G56tEvY5y3K070abK3Dcsv4E
	 og+qxqPtTbT5jAwphdDwjPBFa1HqcEfj2jgVt6o7E1pDiGDKerxhzSpwB8voq+A1+w
	 26au4JNOZY5vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1B0E6148F;
	Mon,  8 Sep 2025 06:32:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CEAF31D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 06:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0A6942375
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 06:32:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aUr9vk2_WTiG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 06:32:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6AEB840F75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AEB840F75
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AEB840F75
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 06:32:19 +0000 (UTC)
X-CSE-ConnectionGUID: l7tv4MuuTuS044vx2YbflQ==
X-CSE-MsgGUID: yMtt/WysQmyHsbKVuCgccQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="85005577"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="85005577"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 23:32:19 -0700
X-CSE-ConnectionGUID: QmkLwYHDTXORNIIX/x1hNA==
X-CSE-MsgGUID: aMyPBmcqT0m9kVW8ozOiww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="177053337"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 23:32:18 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 23:32:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 7 Sep 2025 23:32:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.66) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 23:32:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hOK0CLPOJiGPS6vJFBA3Ap1OhCFE0NepKI4BjQZcNqEIz9z/vUWOQqx6+pCGMkU/KpeBfUnuRfClu4FjWKyqGBycNqItJ4o6PQa9sLb6RRhSQMFOR1BKXEHVGSN3fOLw1z4Ngr9dWSq9Od859RxJa2UDwoNurM1/xeZx7Usf0BIYvldG5y5Fnem6Q5sWXWk9L5EksuZYEBWrZuD9cCEWQrmwlKZ5EmUZtrQZ+ee/sBhsbH0dy2FIk/n525fVQ6MFHkD6NKdq5Yqa5r8y1gZNAUs3Lf68hMqj67eBIeTOyldCti7vYyHjKLySwsW5qaEFkoN9eKTtWB5TWspHPsTaEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p7EkIyIyV8ehjeH13/YoBB84rMYqzJmUDmJJPfFxaCg=;
 b=BjSP29NWWGlWXLeH2GWXIxUdopFFXSMV1RiROu226z9CT7vzOetgcfHVEzcatBgCh4/kTuKZYRYd3zaaqaqGB6kpRabwadA13j5R/d/VIfEtRVpVh8tvrR/PuI47XnKAUrdfnuIMGSv2Dl8eDtB1x66pyIhA9EeWZsGzBYnV+OAmKRKDoqt4M/Fiad1VedTXRTtnFvL555sJ5kw7r9ZT7t6DG0Zo5rjdLZqFBDgBQ3hsQsYu01wmjl++Jf3l5LheUutTvbKqQAZWT9DkeXJTJG21M2fsIFOunR237OcjK4r+lF1BpmxgkVeyfgPq23QUK2zW/XOLazI3nVNc9/YcTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 06:32:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 06:32:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev when
 igc_led_setup() fails in igc_probe()
Thread-Index: AQHcHvKI78xYAQ7GEU+pmfOF4lxp6bSI1fuA
Date: Mon, 8 Sep 2025 06:32:14 +0000
Message-ID: <IA3PR11MB8986101AE87F5B04E5FA8B4CE50CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250906055239.29396-1-enjuk@amazon.com>
In-Reply-To: <20250906055239.29396-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6774:EE_
x-ms-office365-filtering-correlation-id: e84f53ed-1699-4dba-47e3-08ddeea1731d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Z3AMyVOmtjHo5dbYJEFmFZrqaCbKITHnAHPUaqsDBC1j1xwD7MqSr8/V5co6?=
 =?us-ascii?Q?GXKJJfGMYnsycw0tjdxoj/Am62b2+7Va+/1mWI6xhsyVsEPwx2IqpxduERN9?=
 =?us-ascii?Q?gNAzUt0O0rZX9xCGVDo0VdljCxHy5qLiKwmdMkFQf5TAOBKJZctkVjn5kM3n?=
 =?us-ascii?Q?mBDHJJOuZuABBxF5VXjFeBFT+zMCptYBTrcTJBnPeaHBCEjgdRmXM/VhGIvc?=
 =?us-ascii?Q?kjD9iEh+SEvJ2m7hIpcEJvvp2a653FJPIQtYGPyf1bsWBIeiApf0nxLp6GwI?=
 =?us-ascii?Q?Av3KXHY4ltP7fZoGx4JjDwUsLnl7nOxAQRpVLCn5Cqejqki5hJhNUxoE2Q/7?=
 =?us-ascii?Q?eLG83TtD8ObxkSn/7GUm1iG8MTaaQfJdSOhtFy/QnWJzUBYzhsErIQ9qeEIj?=
 =?us-ascii?Q?6WGj2sEh2QAmjrgDgLdWx7/pCkXzb8Y5x6SY1RHsW2uWiNkzVfr66FLbwUNN?=
 =?us-ascii?Q?GcBjQcJxz0uAb7TUTRppEfhIvi6RJlnN9Al/vOh49d3+9zmW6KNbCXY07VnT?=
 =?us-ascii?Q?la+hPBYGG1GRo6yUdOjsextaRsygb8UtHHIOaem4fMESboWjCdrvi70EFv7N?=
 =?us-ascii?Q?NejbReUywM1Uxs8QF6URDC5/rknDg9N74u0UFWhQ/FJ7EseeL/fPjnDcAJUY?=
 =?us-ascii?Q?m8l0cYwmhjiKvUVYRg1EQVAqM9TBWVG/JQpSj2yBoZ/X6kDQISf+9yU/fk5R?=
 =?us-ascii?Q?T+c0cwb+px/yKbnZNsZf0nnxk1oSO7MIGqsoZBmfy8oAAOnFEjqwoEYRXlyT?=
 =?us-ascii?Q?ue2wzSAZ2FXz0sceS3WB+p3H91hX0OBYhPoZBMvenPglyiND2ZLGXA8n0Z1Z?=
 =?us-ascii?Q?Go5GnvW5oC/vu2Z7fM+PylRjIs8wIZ+H+jIu3i+AbFtEE9Qq2NagSmFcCNYj?=
 =?us-ascii?Q?iQ8/DNlSwNxIHXBTeKassJkbcHTW6CVLFRAMxg0NpPZbV8cV9TRexLY2CVao?=
 =?us-ascii?Q?ZvNE7wG8lLpmFH/M2OdrvMPlljhS5XudSi3CQlIii7bu/Ca3SOkkbAvrOMW4?=
 =?us-ascii?Q?WWZ2XgGajjWmwSPUtjK+BRr24kmwGc4QNmYyvMv+PC2JbItvXsgfsRbsxQhp?=
 =?us-ascii?Q?FsL6EOxU2beJlCD2t2sf+IgBDCo0x2XomGKGhkWuwMSvz8+FaEM60NyF9D4Z?=
 =?us-ascii?Q?7BPjuh2mUmENZ7KouHd/TJ2MaaneD6MRMegU+m54tWJ8UPZDF9GAfmQEpFLz?=
 =?us-ascii?Q?d0Hnb0GVGN/f71dhwvtdvuBdstpe3wpdQnGMdQMgDIc3J5l0Dh8msaYxal4G?=
 =?us-ascii?Q?A2j6ArV24fl636Mk1PfkipkhF3+pizi3PUZqgnhF2rt3tk3DvIw5I2miDPk0?=
 =?us-ascii?Q?vWSxa3/Vua6+Yfvxz/KX8lcj4D26d4QTI8CXm3Vr1DHI5mer8f/GAZZzbBa4?=
 =?us-ascii?Q?dIYXb55mJDnOuq5L4L3+JvgPJISFxcN8VBH9DpGxFuvS9XfdZGdrKO7DS5Rv?=
 =?us-ascii?Q?10KxCC9K1+/Ryk36YljEsFYaVbpgxPr08iYYT5iw8UhC8MTkknMRSg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9SOKxRpBVuAcEonSTIe59qvwgYmCV1GJd0dugt3MCaAMnZG1VCz4fuqPsF1o?=
 =?us-ascii?Q?vDOJPVOFvv8UKQXyR6RQ0H6gXXXroqwFOGzYEuiU0V0oJIRAwP85HPuCVB1/?=
 =?us-ascii?Q?e60RtyWZxfbW96MKnu9X/w9zmEj7e7x0JON5W73dxLnhTKQfDG8Ud+2QAN7D?=
 =?us-ascii?Q?2KzQgJDkQAoEzOZAb41qzEU9opTyZDWi1m+6a5nFJzJktP8avr/1FVNkW5V1?=
 =?us-ascii?Q?5EPW9q0/VvuLarFRKCEraNRNdrkB34WQxTacZQ2wN1W/om0AqPuuqi3Qz0EH?=
 =?us-ascii?Q?tM9BOhv1iMYuhUGqu+5YHQ0bVsm8j+946oryaDf7wKL8NDdohFA8go8s3vg5?=
 =?us-ascii?Q?J9jGeHRUIcnuDIH2/5OHH58InAi6ZHTNiGT7qdz/fb4XeI6ZG5UtKFDeyb9X?=
 =?us-ascii?Q?jBtb4Fpi/aG/loyuKLPyLNmmr7YSVcKXofAtyVhz8XHCR6EWZq/UB2R5fwha?=
 =?us-ascii?Q?BdliDcbDZja/kCPPQHkz7FsWWxi8xTK+ioHr7IcTy9ZwufSw44Pe68TiooVn?=
 =?us-ascii?Q?MutBGDhSWVy2Sef49RyLIN2osjn/WSbHkj+rm01liG1z4KQJUr8NSLHJURUN?=
 =?us-ascii?Q?fjCXswpqMCL90OP5kl9TirKoYsA5IKS5yYu2u7tw2eDpaowtc89tNoy2fYxi?=
 =?us-ascii?Q?5koB5rRft/4JE3Nhk8Vq1SZMZGTSl3hPINAKnhI7+H04uxNIVsxigcX7Gp0m?=
 =?us-ascii?Q?a9xcOEoJYSl+eERAPUGljbsSHuSZhIj6+tohdnuN5w3IT9fxF/r485VJrDLY?=
 =?us-ascii?Q?55YcOFTprq6E+GoH6jpTUu1UIh1ZuCpJBIXiF5XdpezsSgyifsuLK/w042tv?=
 =?us-ascii?Q?p3zcSIpmWLElYslb/XclDKp9O5ifeQGHpo9ZyiV39hjeQLAlNdlTnYzFSkYA?=
 =?us-ascii?Q?g25O4/pHjX1lRgFfX0LnQ4+4U3dM7qJsq6X2Bz/m4w5IlzpwfY8JtA7Ig/Z4?=
 =?us-ascii?Q?ozHjygSBuNMs4l3gorA5GGTrpNDud9KbhPdLNYuBCrZkbWAPF0BS7iFafXmK?=
 =?us-ascii?Q?IDVnpf72iYh3ML46EEVr5bMl15pjFzvJriziO54k0RzW/g1DCSOTUYomJZ9L?=
 =?us-ascii?Q?aRWxdFGfPowTB1fkEprXBIxotjSv5sTVbXMkH9sjMTTA+LdpFrBpYX2m7AG/?=
 =?us-ascii?Q?BJMkr6RTV5TCKkb3eYP/VeQh0ji9wcCJEvP1EJxq1tOFr6hWPn0mq4VLQVEb?=
 =?us-ascii?Q?eAJTb8m9SJiEg+YwzcGMPrBdpdNh0zOicxH7X75d8h2KeBhOXqwaY34MxYLL?=
 =?us-ascii?Q?wnWaRiL+eTZHpbm8feo0G6gzJokgEC1Aevl49j/Cvs/ZeCc1Fwk/QfI27hTR?=
 =?us-ascii?Q?gnVYN6k0cOBVkYTK0myi91K2pecn4hF6Ghk3TYjo+0dWMgIMBILr2hJbeKHS?=
 =?us-ascii?Q?k59HOlNdXUsVL6qAizLZzZYeu2qYhsJLyR5eB7qrpa9jnOvWi9R/oxjE7TKU?=
 =?us-ascii?Q?MvrdskhL8vQF3QagtqAlLovai2JBiQWZOV/gAMspBU3bsDm3qPe3Pxm9hERY?=
 =?us-ascii?Q?rtkgBm6mscjKkQDoKrq1zl3JJ4yzCvzDLI30iJiVAnN0g1mF1sEBTm+F8TmQ?=
 =?us-ascii?Q?tbLnnefyaWkgHCLDSsZq+gWi7c24k6T5LlFyK7fy38fzNZDA5ywcxB2Go5aI?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e84f53ed-1699-4dba-47e3-08ddeea1731d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 06:32:14.4711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ujQ9wwUPM/R2T7j4dExRASEg/aggBA3s8FU2pUtBMFGUVRJQ5w3tipIY9IoNuRKm1BtmrsepTGsOom16qRuP/kUWzC/Xgvg0w9TnPEUMyPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757313139; x=1788849139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CF6WqsI5WZ3AB7WkK0s0pbspvw9tqPstq1RmyKU6yxU=;
 b=BnMgGQJKlFDiFDqTNVUnfTG+NgS3BxndR/HPguO4nCy0tXZKwi2MTGKY
 L+pUYG9tiGMiyR7zhIWWGfSgjT4iYHxDEgMfjODJLwdrW06/rbRRQPgel
 VZaYKE1R22FkdvQ0Yuqaqex1IeDvvF38BxSmczgZn6ZxNamEyO6FVa85U
 HgDLU6bZtD8xQHJvTc3SQrSKbsG/7RKQA9Sdv9WVkEFXLaWZ7WmlI7idP
 F7/buI8Fr6Ibn9Q2T0Y9rlBArVntX2EnPVz0ZwULNE0PPz4CVBtiZsKp3
 PDSNRd8FHifZzMe9tjRn5XJiKk/6YQIRfaz6+1HGuDJGli2UBI4nbZxC2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BnMgGQJK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev
 when igc_led_setup() fails in igc_probe()
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
> Of Kohei Enju
> Sent: Saturday, September 6, 2025 7:52 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Kurt Kanzenbach <kurt@linutronix.de>;
> kohei.enju@gmail.com; Kohei Enju <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev
> when igc_led_setup() fails in igc_probe()
>=20
> Currently igc_probe() doesn't unregister netdev when igc_led_setup()
> fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]
>=20
> This behavior can be tested using fault-injection framework. I used
> the failslab feature to test the issue. [2]
>=20
> Call unregister_netdev() when igc_led_setup() fails to avoid the
> kernel panic.
>=20
> [1]
>  kernel BUG at net/core/dev.c:12047!
>  Oops: invalid opcode: 0000 [#1] SMP NOPTI
>  CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-
> enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)  Hardware name:
> QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2
> 04/01/2014
>  RIP: 0010:free_netdev+0x278/0x2b0
>  [...]
>  Call Trace:
>   <TASK>
>   igc_probe+0x370/0x910
>   local_pci_probe+0x3a/0x80
>   pci_device_probe+0xd1/0x200
>  [...]
>=20
> [2]
>  #!/bin/bash -ex
>=20
>  FAILSLAB_PATH=3D/sys/kernel/debug/failslab/
>  DEVICE=3D0000:00:05.0
>  START_ADDR=3D$(grep " igc_led_setup" /proc/kallsyms \
>          | awk '{printf("0x%s", $1)}')
>  END_ADDR=3D$(printf "0x%x" $((START_ADDR + 0x100)))
>=20
>  echo $START_ADDR > $FAILSLAB_PATH/require-start  echo $END_ADDR >
> $FAILSLAB_PATH/require-end  echo 1 > $FAILSLAB_PATH/times  echo 100 >
> $FAILSLAB_PATH/probability  echo N > $FAILSLAB_PATH/ignore-gfp-wait
>=20
>  echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>=20
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index e79b14d50b24..95c415d0917d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7336,11 +7336,13 @@ static int igc_probe(struct pci_dev *pdev,
>  	if (IS_ENABLED(CONFIG_IGC_LEDS)) {
>  		err =3D igc_led_setup(adapter);
>  		if (err)
> -			goto err_register;
> +			goto err_led_setup;
>  	}
>=20
>  	return 0;
>=20
> +err_led_setup:
> +	unregister_netdev(netdev);
>  err_register:
>  	igc_release_hw_control(adapter);
>  	igc_ptp_stop(adapter);
> --
> 2.48.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
