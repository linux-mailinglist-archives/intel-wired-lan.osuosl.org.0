Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E291B4131C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 05:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B44761CC9;
	Wed,  3 Sep 2025 03:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UGxHw17J5_mS; Wed,  3 Sep 2025 03:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09F8961CCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756871443;
	bh=w+LfILCVVH9Xnfn8T3xwsBodW/eS5lJz4Wgxl6UFYhU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DEEfA6WmV7k5nUfyQev6FkVZsXpVjruiEhtVVGk6HStwEnL8qPpEyTC9xiJczYzL5
	 bm7CupIUx2j00iSzCQHJZv8dnNClvIN1gu+TZnoe08cXhmryOWkhZEoFYg8pI5yOyF
	 1ipnR3iZDozvSQtFr1nKaDGi9WnIqABdDwYPAaptwl/g9OPq9UtmyWfJKrS9uEUe34
	 cqCSZVDdZVl7WZmYbLwrEOI6X0z5ZYb3ptB/JfqxJxjlwaTY1OixTITEtQZjnI1k/h
	 zUbwHI/T5zcTl8slyUyp0kp6pjXyoPPCqkkbH/i8q63kBdrodxUmZKwD0YiqMmRK0H
	 YW7OWdbQ+upDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09F8961CCA;
	Wed,  3 Sep 2025 03:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 33D5510E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A17741DDD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:50:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ROP-MCx9MOYv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 03:50:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 337D041367
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 337D041367
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 337D041367
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 03:50:40 +0000 (UTC)
X-CSE-ConnectionGUID: wnlZTsRNQVOsjCYeo6NEjQ==
X-CSE-MsgGUID: UUlY7rOfSuWSYX4Wcu1VdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="59111345"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="59111345"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 20:50:40 -0700
X-CSE-ConnectionGUID: vJBUO0UnRLqdY8IyIEzsDA==
X-CSE-MsgGUID: YMGGc+VwTn2ZQvnjKKPi+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="195108770"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 20:50:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 20:50:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 20:50:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 20:50:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WWx8Od6dkhgkO8/iQqj9rxS+yYruOOFInxevok8PTFad7PnlDrWN3TS/YunadUjDffLi9+iBDyumsda9FVXdq2Gm2yJMWe+VjxRbhlwnJglX8JW0gSWUMxIWMoAQ2zAxgIJYgt8K5hwHWi2RIGubs0MacAPb3OCK+V5gaiXaCW3fTfL2gyyPyqOda4xg9cjYWOb1v43O277niAKoTGKQkg9on+G/hTNZKCMBNnymDdEK7OA2SAqqa/FxcNx0xFoovAznIt7uU8f9bOMg6FyH+nF/dLO3QmEHt9HtymBLjCkMQOiSPwa6J+GssYS25UjToEtpHbqfC0Ww0IoWUgUWpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w+LfILCVVH9Xnfn8T3xwsBodW/eS5lJz4Wgxl6UFYhU=;
 b=Z4d2ZGy2Hi/MXJfE1VVx3+P5RaeDu5vTMFtnu9eICISOFMpoHf/nBneCqTRMUseG6H3oKsTKbgXB7w1MfeYLVxT/1dnSrVT4dhJTXuKgn9LknLMN1sdLuYqqDBHbpp7jfWhds7PuDtdIVzmYhrGyBIn++rxnxVmtKcmwrxFHHT+ohm3PxgSrQOCQy5IBRfdT/qgD/aSHtZM8gxjpQm34LUmmE805vHJ51X9dlWyUvwenrmYn7zy2X7dzTV+NbpoR5gHyPvoyTUtbxANMnmfpH91lI+rVhRc2qSW7ZlAbZiM3sDwPV2Hb3VOux1ruPDG4jh9yzCbJmSnabRmsNNCmsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV3PR11MB8579.namprd11.prod.outlook.com (2603:10b6:408:1b6::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 03:50:35 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Wed, 3 Sep 2025
 03:50:35 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Tianyu Xu <xtydtc@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Tianyu Xu <tianyxu@cisco.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Joe Damato <joe@dama.to>
Thread-Topic: [Intel-wired-lan] [PATCH v2] igb: Fix NULL pointer dereference
 in ethtool loopback test
Thread-Index: AQHcC4qc8S4LCV3m9kieciGx7WJ1C7SA8zcg
Date: Wed, 3 Sep 2025 03:50:35 +0000
Message-ID: <IA1PR11MB62417A30F7E247B971E917958B01A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812131056.93963-1-tianyxu@cisco.com>
In-Reply-To: <20250812131056.93963-1-tianyxu@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV3PR11MB8579:EE_
x-ms-office365-filtering-correlation-id: 01599082-9f84-47ce-1716-08ddea9d09f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?z+8WI3KTqu4hKdQdQj10wR/kv7lLkS2zQZxZWZTZ5y2oyjB0cEk9Vbl91nu5?=
 =?us-ascii?Q?oGY0PUe99UDblKRx6tJRbmTHar28G03L7jOCQxUCPZ6zsA7f/zAHHza0/Xl+?=
 =?us-ascii?Q?WS0UFxdO/rzQWZcwE5Y6wfHdxw8hc16t9+YsAJ5fEUU5zg4wYlKF9JWLg5pY?=
 =?us-ascii?Q?syrjM5RWUTtiQKP/eCYFm2mc7Hj+989+rcL7TMp4ciNgcp7VMihJLMfjer2R?=
 =?us-ascii?Q?14phMI58Ydj/pDZG7sFyds8lrvyy4x+5QYJrprUppFayKPuv5XJ90Cv+p34r?=
 =?us-ascii?Q?nrlVjCIG0V4oNxR4FXxveu26NjrGDO+UNa7Iyenestx12PFc+8XPiWlAhwuU?=
 =?us-ascii?Q?w20X397+7kjpYpZefvnpo7a+/PG+R2asQiZFGzvz5yoERfXmtD2Un9r8/fKr?=
 =?us-ascii?Q?g6n8j4fKdIHncxZ7VC5O8ssvBBgmW6maL0R7ec7Zduz/YHnQO5jTkf+u5POp?=
 =?us-ascii?Q?ZmhZ4dmjXcBeZpJumTxA6R8lcaRk6+hJPwpoRPngH3/wl+kMAu/SJ8iQjys0?=
 =?us-ascii?Q?vR+PXRq+aTJ7GILZqPknTkT4uYM/lBy8Z1cph/YhaE++znRYWe6IvfCKQjdq?=
 =?us-ascii?Q?JxjbD/CJGKCwvO6mzffh67z9MN6HsD5EsEVdnpDcV1pbThD6AFLRltwh2wS1?=
 =?us-ascii?Q?HV9+tyZesm1bkcHS7N4QsKluOka8v/rfDyc/kxW3vGYkTqN4Y2PAwkjJOMkc?=
 =?us-ascii?Q?h+HtDae/HM6cQzOCS5CIyIOtzHQwa1wOgTqFf9TaCF+MxozQs0YpMQFJRTiP?=
 =?us-ascii?Q?DRUAHkkgGkjKQRO/bD389yc1h2pi/VlcM/4xw+6nfaGh+rwuEt5JyyhC5mvR?=
 =?us-ascii?Q?T57zcCtg1bEKtQP6o+aQSPJZA19GIbh6S0KvOogTYE4x3OXX3dwZrAg/nukd?=
 =?us-ascii?Q?sKnWz3w8Ud5hGmfsqITV0hmUtxS6VQxnKPbVumX/A8jBQBcpC2WmgliLvGEh?=
 =?us-ascii?Q?gjqlojw1e35Z+6ee6JrhM1mJwjx2yIyc5BrzN4MzSTSiTAT6WVoof2A9NsWH?=
 =?us-ascii?Q?MLib7lrpTYH2QMlY6hLjwDZLGtpbbNI6qkjXAo/Mi7yGR95ExNh/7ampzj54?=
 =?us-ascii?Q?CtLtC6VLCbGY5zhB4tAHl0ve4Y1n+RfSx1/GWrAnuiIccZlpRWh9s9nnR/dc?=
 =?us-ascii?Q?ZQUjIhKudzcKZH8zqGdsueOpGP68JV1SNK+dKicNgJMpq47h1cY54lCwQ+kp?=
 =?us-ascii?Q?4xtmmLWxyjBeAnXXM/n9M6fmxRBxtvwzoQWPoIngcqNvdaJ4Oo0C/8fFZiSj?=
 =?us-ascii?Q?WC14PVMLDHSKfxU3rRGiSKS1VOIYmwSVa6ysf7UlBJGr5DM5cr3AOXehvhuA?=
 =?us-ascii?Q?fJ94ocZfoC3FGVq65U5++XDMbNyZcLyh+CMeoAtyrr2Asx/M0wdBWOw66RGD?=
 =?us-ascii?Q?EcSziIZ8gUsE83pimrhNCrJCQ+wWlsUU4I5pYnPQ5l5o5XjwmlHKSOMBwPPl?=
 =?us-ascii?Q?kLgBiaXF45jDgdWfm9UZbEsZtoYF8DRAFvLXO/JAkFPOSqzAeY7FCA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xpUAcY80OIbbR6CmB9SHkT5qURng6H+LoExTJQS8UUJJzEOXBnkJh3yLb7L+?=
 =?us-ascii?Q?LNbhrEjcZhzTIVJEbaLyQiodPYgoPFy9gamh7cGIoxVY3IMZ5FXrYgDbiDBV?=
 =?us-ascii?Q?1/92aDPAleg4Trxg7qml1ntf0svklAF7fvUgzmoJ90tVQfvpxtvC4RU9Lnli?=
 =?us-ascii?Q?yZVNn4/C1yB5WsMpjjpewim/23LU3Vi7THlNW4my+a+puqS5tCSYuiHKZbRR?=
 =?us-ascii?Q?P1PGXu998q/iMmQZqVlLtdZnaT6AfLlbtCK3eyI+EAJpfvgfSIIVLXmHmq8K?=
 =?us-ascii?Q?zwJ53OFSlBMUb+NNpIwA+v67nBCJ5t/FSYwZ0Fyb8hxZG+I7jGkkLP19Ucsi?=
 =?us-ascii?Q?irHMSWIYpr4U7oPuFs/HcpYie5YiveOsX473k1s5A0iRe0uZJChP6sbOM09U?=
 =?us-ascii?Q?18GO0DDv9ODBf1Uvx5oSBFx1EghMQuPUWVeHpmDaGashtrPOzX57naBcSSlX?=
 =?us-ascii?Q?2DQehaICrC5i2COCmmwhf1BBaCADU6Dx6JDODDrf2Z9WE42ydlwW0uWwxMVx?=
 =?us-ascii?Q?qgq6kiXLrfpVdbyT1l2wg3+Fpb/j19tptGMicwmiD54WdvMpTELFhltOqBBx?=
 =?us-ascii?Q?JHM5D2kC+OIUqoDFdKVTBjTIhlqIewpbik8agFg6zg8ZjEEJvQWnSzg+bXAa?=
 =?us-ascii?Q?uSndxS4w4VA9bXYycG0z0Y4Hdx4Bfa+pH6jhao1TGx6LzuftGCxj+iqzTvBW?=
 =?us-ascii?Q?17rdpr35a3xd4o6JhpQM45oP7rRSiZwW90zHUARlTzL6cOf54hNpCN8feWVH?=
 =?us-ascii?Q?RqGKSF4Tg1iv7xKLdcgkqbsw4tCXFJTLoOHS0KYDB8x5I8L9wztUaKiHGquC?=
 =?us-ascii?Q?1MFtetEpzQe5WDyHc7TaWgbdXAlQBhsLJlCHVe/CPf4x3N7AvqZ/DJRIij4Q?=
 =?us-ascii?Q?tw1N1bfAFxL2UanyTF17/ZUUjhDZrNQtCG5S1vqZYj/Uh2Mp51iZJYwPD+LS?=
 =?us-ascii?Q?aB4yUU5+jqTzfVR6YiSCD9OfQfaR5x3g3QJhQPfy8jByLHZxOcBKM7vxF7Yl?=
 =?us-ascii?Q?KkNidGcotAgwxgFtduWRGad2naiDAjOw8RMeVMU8Uw0xdFVhYTxc8brr9kGY?=
 =?us-ascii?Q?+GAELY0huhsp01vgb/9OWIhTRl71CcvuAMwr6/9geIm3dd5hpb6TScJ1DNmu?=
 =?us-ascii?Q?95vlMnL7L1vVoIgiB+0y0V7OQ9X8YtdridRtLbn8zqYF1dbXjTnpdxHp3EKW?=
 =?us-ascii?Q?uV89XW5UozFvF0Fa9XTeoGQuj+2Hg7GEqfHAf9sIIUkHcXsttbwU0kaSoZiD?=
 =?us-ascii?Q?gTrJkGWGVxsBOYrzUi2l0iTgmhCq1bmXqqg+y31epYlWctj/y8FZDls71EOt?=
 =?us-ascii?Q?lwALLuGdY0KCiOvF/KOu2Z5iTcuMWI77LUGm/V8wZGmgKyGHXP/ZEfPT5RgG?=
 =?us-ascii?Q?H/Ep/KIcRSLXfxavp4soz21DTtdc+L2pXP1muifzqqp7FiZgtF9BnHmTrLgC?=
 =?us-ascii?Q?dnUoNjp5tK+NT/fpaHl+CR768ikQO9Q2AT8vwCSWg0Z/buYxqUKxi4zuYWxN?=
 =?us-ascii?Q?GasiX3O775DE2aFq0l1jTGwGHPkvqPDNlUwrciFbhkac43bKOgo7mnpZSFwy?=
 =?us-ascii?Q?nuuSd+pYb7GcFkoEBH26VOQZ+htLYpx1LuR8XmME?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01599082-9f84-47ce-1716-08ddea9d09f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 03:50:35.4163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kmP0Dn58XEwr7dIRlck1anLptZeOVVXwfMk7apDyTB3Dbtm2iyfz1UUNNYEngJ834dR5RBe5Oj3VF8UooYMYMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8579
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756871441; x=1788407441;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w+LfILCVVH9Xnfn8T3xwsBodW/eS5lJz4Wgxl6UFYhU=;
 b=IFetC7FtQDa34GhGm0Ca36Djq/VOa6mWBMNXSq7u/lo6OyBUujlxPmH5
 GpSdM9Ca0uB689HNWmN05hehIT6531WTA/gWOoKGky1K1+sMn7eV3MmlW
 SCMfKLZImvW2JWdhoGwnq443LkgZrrccn7GvRY/bhkxh2R7tO/Xo1uB9s
 y9vAvh1G6sy14VnMj0H+0hwSMGHGgnJk/3yTgTb6o1eezJRGXJi0T8tqu
 1KlPNyFUDCNa012uQ8VQt+uIrceHdlKZwSwZQBskofGHCif8pzNw8Lisl
 swymITm6aV5F6EWecTa1yGSIGZseyjQyv8I3cqU5RQk3/ueGOi1yiz2FP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IFetC7Ft
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix NULL pointer dereference
 in ethtool loopback test
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
ianyu Xu
> Sent: 12 August 2025 18:41
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel.org; =
intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger=
.kernel.org; Tianyu Xu <tianyxu@cisco.com>; Loktionov, Aleksandr <aleksandr=
.loktionov@intel.com>; Joe Damato <joe@dama.to>
> Subject: [Intel-wired-lan] [PATCH v2] igb: Fix NULL pointer dereference i=
n ethtool loopback test
>
> The igb driver currently causes a NULL pointer dereference when executing=
 the ethtool loopback test. This occurs because there is no associated q_ve=
ctor for the test ring when it is set up, as interrupts are typically not a=
dded to the test rings.
>
> Since commit 5ef44b3cb43b removed the napi_id assignment in __xdp_rxq_inf=
o_reg(), there is no longer a need to pass a napi_id to it.
> Therefore, simply use 0 as the last parameter.
>
> Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Joe Damato <joe@dama.to>
> Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
> ---
> Thanks to Aleksandr and Joe for your feedback. I have added the Fixes tag=
 and formatted the lines to 75 characters based on your comments.
>
> drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
