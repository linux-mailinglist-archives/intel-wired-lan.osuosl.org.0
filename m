Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 696BBD1256D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 12:38:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 278EE6165A;
	Mon, 12 Jan 2026 11:38:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O9V0FHZ-xK8y; Mon, 12 Jan 2026 11:38:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E8526178B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768217920;
	bh=FR5XYcx7hsKzA4Auf9JuBY7orImEZVpBAtpWMXG81HA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XQvSC/RLPY+yeNNzM9uoMsRA8qHDHMfQXaOM1hQjBjgjfKChPv+jWF0Dk1zkNdhYA
	 EEGLZtqqt+7O3UG06oca1wqNhrhMR+2FJyKQdyBriyU1+mdWhFDr913FjCVwpPNhOS
	 BZFiZbxF+ASd54tMldKV0lwXTVKbEViL8+KVtLqCZ+5KZ81ibgD12Tjs5dO1PxXUgd
	 t13ma7JQrV4uTQnbNRBu9a+VJVFS+tOthcPjvDZHUDJ7MdVRRJ/J9n8gr9Qz94Q2UM
	 AeqbInkxO9n7eF1pLzxYKQ3MG1okD2Zk0lhJWPxJCf5NIqSbJvYKi6aPf/oBOgSTf+
	 /ITMNdfZbSZoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E8526178B;
	Mon, 12 Jan 2026 11:38:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 87AFA18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79E7041DA0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:38:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ya7rx8c3N4zJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 11:38:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8FDF741CE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FDF741CE8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8FDF741CE8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:38:37 +0000 (UTC)
X-CSE-ConnectionGUID: kVbkFDaQQoqRffM+FhHxpQ==
X-CSE-MsgGUID: ITKk03pPQl++vlHdTILC1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="69566112"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="69566112"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 03:38:37 -0800
X-CSE-ConnectionGUID: jSl0THf7T8ixH5Iu961p6A==
X-CSE-MsgGUID: gvXG7XFlS4GN2Ter4py0og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="204482944"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 03:38:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 03:38:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 03:38:36 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 03:38:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uWfsr353ICVzaCDx8uNIQRoqRM5zCSls9lwg/VpheOIZM7A+yDhy1yS6rNpmsHur0jRtK8lPTN6yIUFyNdaU1PIoYuddQZ5VQkZLW49JCVoh/sHmKhmKR8xb7mwubcO8ula9KGLR9AmBaG1LJzZzLlIf2wZWCJK1k486XWnkFCPRx6Ho/fxj5F5Ubnk2eBG+QD2hHaxdxFJ5COWc9Vi19UqaX//NKaA5/sd8ALmkronMC9802RRsgNvewP6uBcYJxkAEqXmWpclJ7Sm0dwX/2f2IiiLV59u1+2Ofdwu/9zgQUiias60dPiqQdUTIu2JQF2UC+ES6tpp1lO2z1JbHIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FR5XYcx7hsKzA4Auf9JuBY7orImEZVpBAtpWMXG81HA=;
 b=fZPFxTn3k4n5+smNssuD7SI+9AjD9GbVNeXHZiwvAHB9G5fD0slLRZ881CpVMLQlCdF8++J0pscyc2Ftdga7OTBBHoe+itNcTsm/39GuuVP4sgmpFl0dTusK3PFgTaasdHkm6ZUnTBEKl2A3X85qr8SVlMhBU6+Efb46PmlzkoU07omL0VmllSEhp1tTq292DqUW9kffQpwiKJKbvOSPUKDF/jQA3GItfq21gBEmPlg4EhFbcFcCEyJlZCOjufb376A+ld6SjN4kHcE6N0MC6IC8UalRJhFnIhPZyoOlzxR24xSAODdBl8xgmGwLs7tEevjblf+SBVpfezJxxaRD1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB7504.namprd11.prod.outlook.com (2603:10b6:a03:4c5::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 11:38:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 11:38:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Behera, Vivek"
 <vivek.behera@siemens.com>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v4] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcczpE7ED8Fxq2C067nUBZ51fjmbVJE4MAgAV1paA=
Date: Mon, 12 Jan 2026 11:38:34 +0000
Message-ID: <IA3PR11MB89868F776CD75A6A2D88A11DE581A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251222115747.230521-1-vivek.behera@siemens.com>
 <aWBIgOaRG50IuJsU@boxer>
In-Reply-To: <aWBIgOaRG50IuJsU@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB7504:EE_
x-ms-office365-filtering-correlation-id: 0b96b469-2819-4a6a-94de-08de51cf1e45
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?XbB3WpUh898pc+1ASwwsLwLjzf9adbMLUHQCJ/ZGe4BQdJ/FZcQiqlYCJtPr?=
 =?us-ascii?Q?UHrZ7dbTMwZqYTSkSJdVgo22QK8zd9kRt/xqxgT4hWTLPF2Ql8ARXmRofk4c?=
 =?us-ascii?Q?jUmmoiwkyCvODkVkDtImOV5dzMIZj+hPsA6NBWWVnnGavJArNxFcgM7GD//Y?=
 =?us-ascii?Q?eco2Dv/ZKMmOhJ/EX88aHcy1UsuPTHQe+vV8DhgYu6bgsVOsWWyqOCetwj4w?=
 =?us-ascii?Q?CP9hIaslFyTrvzrJGSy/eHjYPr++k4IOU+hnlXKlcZCZ4BgygPG3flVKQNGg?=
 =?us-ascii?Q?u8qASgupZXMAwVVvesLvbVtBcUzjOXtgHG+W3mc1qKO8b/dGmwMW+HgnN+TQ?=
 =?us-ascii?Q?BXta87Hh+Usl2d1om9WwLYRuTJwDd/pumASIb8VD2uUF2l+XNEM/WvL2ZIYG?=
 =?us-ascii?Q?SS1MkqolVam53K6s7q3ChdtkR6kfN/VlBrMSU0oFsQWSSocrcPxJ6pD+Jpgz?=
 =?us-ascii?Q?HogTAgdnLTq0r/JJr1yPOtEmK7blydd4uQgWIntxJBhMU7EeQGxgYyYNwP/+?=
 =?us-ascii?Q?n/ple1SPKTcLiWkCs0nd3DT/E6t97/QGRtd+yXF3sVtzdm26Gfo3mFLxU4Ar?=
 =?us-ascii?Q?ClY13bymroQD2kajdGr/6s59/6jRI//euPxYADMwxYvc/qQVII2PObHdS9uT?=
 =?us-ascii?Q?A2glyc6zWLB/hmqEjE5qGZdfaInfvm94BRDPjnD8jdb08V831hgBCGa3Tlnf?=
 =?us-ascii?Q?/i0KU2FMSO1RcQ1Y3o3OxWUupnzTOxeF2hkacdxoWSw5voBEEbiqe6dSQGrf?=
 =?us-ascii?Q?VFcPKBmvgYQVk8KySYvu6uFrA3DaL3pwI1AQz//UMhQpTkriP45xhAMXGDOu?=
 =?us-ascii?Q?U0nwFWEfkwK/QWh0dn7ewoSeQHb2B+dq8f2isKbztZbhdQkGkxTAAqQxmKHw?=
 =?us-ascii?Q?Ml8BgrcdO4TNgkFLQctnfIrg6DGoQjTp0xAbsqmt3u9iIs/4x8B5HlmYoppC?=
 =?us-ascii?Q?ooIKPQlm6zIz+W3iDAIt/9jujN7AEGX42RtRcrZi/gDvODOQZqxKzXN9JSvI?=
 =?us-ascii?Q?EY14BiyWaaYFXOkSD6SVrAhpsC2f0zIK1oYzSnmqnVe0xLTMEDOOqkuow/ca?=
 =?us-ascii?Q?+Mwrnb6d1ut8r5Dyqn8t0UX5l3OW6qJxEb6HQM18m2kb5Uuop6Ja60OK6yrw?=
 =?us-ascii?Q?Wmc2kuJXi8RaPpSBbgtBy97WywuOU9SDTZtzIk21A9Bz+8i4bKS0lmiWYzCy?=
 =?us-ascii?Q?OsZkkjtHYAYZ043Qm0SjscV2Yp68FFDq7YWju7aHyQCzJzkO8p8tjWydmaUE?=
 =?us-ascii?Q?Trma9tktIQRzxCeGaPP0CEzTRzwSsMnwxNGQeXUSVjbxI5iGo9QLOZJq1f/C?=
 =?us-ascii?Q?5MALibtHd7DNJF++uZectYZ7yLSGUTFnxVVuKPBIovfoOrvBRT3wFb4hCLNS?=
 =?us-ascii?Q?qb2LZ3he5ZQBMoVdpVDGPz3y2pHPv0B0vUh+vA/b8Cfh4rV2pHxt5atrVIc/?=
 =?us-ascii?Q?eTKWjL53lV8e3QJT/3JyKi+XKzbSPfcBIYDJ5/ILRluN8HQfBTAP5NmsxBip?=
 =?us-ascii?Q?a5Et0QTZ83W06b2NDXBl0b4n9BxzyoXY5JkLEv4c8s+6JDcvy1kvXdgJ9g?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cIUiblHGYLxIe7N1nIz2vIQNRfp5+Aw7gLECKaNaus0nrv9Mc5UcnK97sw80?=
 =?us-ascii?Q?VE5f0rHSCYiAQI3iAjUPDu1e9PecBj2vV/aELGCCT9h9Rl5pNZU1UHXMQ7My?=
 =?us-ascii?Q?e6K3ngi4Rgwh6c94qz04GUtUDhE3bISUhtanDPC8fcmy8cGDrsmQdX00Q235?=
 =?us-ascii?Q?cDSk6qhK7krS+Tn9c+xo25cIrox+p//xvtqS9EEWENGf2ysAIFxoETLe4bV3?=
 =?us-ascii?Q?ur7SuytObdhJig6eu9lHnrKTSMzv0v9rY971JdwNMSHcZpW6hMMk9mx+9JkH?=
 =?us-ascii?Q?84++9Zo7ZGXdI01EstOxLMLowNJv5gCwAG1B7TfPHRjddyxqoIoLS7WsgT29?=
 =?us-ascii?Q?vO/aEK6ik3QY8AdOhz/UumwBLzYmwq6eUS7JJ/YAVNYFl8R8d7kRZLxSubZJ?=
 =?us-ascii?Q?jayki9YwlK+EXZf3s9eXGy+o1QO/D67qIAYwazgf8Bi94EMkXM/S9KJFjH/8?=
 =?us-ascii?Q?XE0Bu2NVZyamnuV0rwAg1F3c+3WHYu80ecdtgLgHnp6gcKkUtkFpneiAtihh?=
 =?us-ascii?Q?ZJpuOemoLZn4vFHZDK9Xl/hcntu6ILpZcyYSp/Ztckd5yqulPlniVocMri1v?=
 =?us-ascii?Q?OifRQDCuB1KN0j9sgqVEejddlZOfPDfb8lOsQBWLcQmJ/0qDyADg4ngMqoja?=
 =?us-ascii?Q?D9kcG6Sd7eG0oCM6GX7md4c+oKuIPImUCMg620fGHmM/IXq83TrkqzJopgM6?=
 =?us-ascii?Q?O1pwE/8GbRIaNiCyxFgFZb4CZ1QANUoLCJxxT+KTsS7sWjVYj8LFdOPTtjOf?=
 =?us-ascii?Q?7gVSWE1MXIxiVrcPwAUiiZozqzJ6voj0drMt2M9O0KAbzltqnPms102PAk2J?=
 =?us-ascii?Q?V0M7XMHzl904bQOJO3Z0FPz2nYsy7p84pqFLAYKgifi/vxWZ/Lpq9BLLBk0m?=
 =?us-ascii?Q?ixUU/fqAIcfb964br4RgtOAPseZoDBuTKFK+oqo6jL7OyOk2JW9l9W8lBdLI?=
 =?us-ascii?Q?cDjQNkvQ+XXTvg60EcXMB9zJ9343baCuXXeFOg6jjOAz556Ca4/Wn9YCR1W0?=
 =?us-ascii?Q?SaQeIfXf2WJQQ7TQ6k93S++eOj0/V3kGgdgvhmimXS7u5MCsZFT8aryp66nn?=
 =?us-ascii?Q?zYeau41zVQnRHhKL0dzwEe3plTULsZbRkU1c2um0fZYAa7aZPOcSqg8Q4nEt?=
 =?us-ascii?Q?+Kh+xxiPvvcFSbKJmdci8J/fIKHHdFj9dvbOSVWG32yU12mObiQJtAsoQHQS?=
 =?us-ascii?Q?iBbE0n8m/r9K8vLhWGYPvuT0aVrDYTw1qTOMqrgkbim1xch1otDlihGYrPf3?=
 =?us-ascii?Q?SLqWSISgeVRcjwepjHE7FUAKhv1aT0FqJSUB//nFSeAqbkdDfA48IrLQL8/i?=
 =?us-ascii?Q?uLOh+Y1EdSFh21eIj1n51njL8GYzsyz5ZrJmDYRX59y/l0kItMMwBMrDbRAs?=
 =?us-ascii?Q?T2o0RQ9o7R7Ve8ViodRKeRVQr0tcUV/+np1IplOiiT3tYVlHEOSgFOP1Lflu?=
 =?us-ascii?Q?HaVO3DWfJlZm++Gg7d2xzcN1WcfnA8MXMR3ZyQAnIlCpnPaHSS1JVPyapyjy?=
 =?us-ascii?Q?DFF5LbOPGchd1BtZKv/XkKmjTSyDFwbZmuwPZ+FHygKC8sIJw8dPKcOoN7V7?=
 =?us-ascii?Q?V6WAv4GA/nJF4P8myL/gOaYQe9qusHc/SXM0nLMh2r64V7HOO+AYDXPkYJB3?=
 =?us-ascii?Q?OFPGWeXOILf66ZyoC+m+00JykLabHwigjs+0sSSVqbeXwiFzF8b9S1GA8dF2?=
 =?us-ascii?Q?z80LJaBcgodP8brzw0ryK1O/vjAr7/UhftAx+aQKyUC7etVutBCsTJC5izwm?=
 =?us-ascii?Q?CME//mFcDQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b96b469-2819-4a6a-94de-08de51cf1e45
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2026 11:38:34.0785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AWr0hyYSMUBbZXF8t9MRU4Izl2el77S7OLnh5nBOkIEbdWqyMFbsij8EVqaies5WNX3y+PMG0PH7Kz6hgEChsaSDM0XgK78Bxv8S0/ko8q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768217918; x=1799753918;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p891vxalbdoQQJaZAXMVkZaQd/GmDktwYbAnNZyjXvE=;
 b=Xa2x3Y4BuLhkficVTkXhZ5vSwQ016c3H9ECe9xP6hzyD0btFIdmJdgea
 TEdJVRCy3EEb3o3Z5yc/nqNX/wLg6RzdYMQ/pMADBgPUg0ZSRYk47XJJj
 ypDq2zaxJPZRt+SruKpetGRSvfaDFNy6Dsn7r6NVI5lWrE3WYilZQM4wz
 qbimSdjRjnuorflisjOI2g8eV6pwUL7Zwcm9MeL6zkhrVdPyiKLIYotLL
 ZLfm3dsrT2wq8uKqhH/gnTg0Pz1SomTk1qY10RlWibuu8GzKblCvJPUFM
 1Q8FYhI8KMAM2drYcX0bgn1mliqvohQJodW17vkZ8cyTnaF5mSgR4pIvq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xa2x3Y4B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
> From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Sent: Friday, January 9, 2026 1:15 AM
> To: Behera, Vivek <vivek.behera@siemens.com>
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de; intel-wired-lan@lists.osuosl.org
> Subject: Re: [PATCH iwl-net v4] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> On Mon, Dec 22, 2025 at 12:57:47PM +0100, Vivek Behera wrote:
> > The current implementation in the igb_xsk_wakeup expects the Rx and
> Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with
> 2
> > active cpu cores or when the number of queues is reduced to 2 or
> less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
> >  0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
> >  1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
> >  2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
> >  3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0
> >  4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx,
> tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1:
> > https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-
> vivek.
> > behera@siemens.com/
> > v2:
> > https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-
> vivek.
> > behera@siemens.com/
> > v3:
> > https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-
> vivek.
> > behera@siemens.com/
> >
> > changelog:
> > v1
> > - Inital description of the Bug and fixes made in the patch
> >
> > v1 -> v2
> > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > configuration
> > - Review suggestions by Aleksander: Modified sequence to complete
> all
> >   error checks for rx and tx before updating napi states and
> > triggering irqs
> > - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> > use case)
> > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> >
> > v2 -> v3
> > - Included applicable feedback and suggestions from igc patch
> > - Fixed logic in updating eics value when  both TX and RX need
> wakeup
> >
> > v3 -> v4
> > - Added comments to explain trigerring of both TX and RX with active
> > queue pairs
> > - Fixed check of xsk pools in if statement
> > ---
> >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 90
> +++++++++++++++++--
> >  2 files changed, 83 insertions(+), 8 deletions(-)
> >

...

> > +	} else {
> > +		/* Invalid Flags */
> > +		return -EINVAL;
> > +	}
>=20
> This is too complicated IMHO. Wouldn't something like this work:
> - if wakeup rx, pick napi from rx ring's q_vector
>   * napi_if_scheduled_mark_missed() logic that exists in
> igc_xsk_wakeup()
>=20
> repeat for tx; if IGB_FLAG_QUEUE_PAIRS then the branch of second
> napi_if_scheduled_mark_missed() call would not be executed as we had
> previously marked the missed bit in napi state;
>=20

I agree, it's too complicated.

...

> > --
> > 2.34.1
> >
