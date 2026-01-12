Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 485A6D1353C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:54:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC6A1428EC;
	Mon, 12 Jan 2026 14:54:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GWLq_NEmqPmo; Mon, 12 Jan 2026 14:54:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2456428F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768229645;
	bh=fE5wcMJUKHS7K1TKOFNv8iUYqu25pPPrUJd2tV4lUJ4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WSZd9rImsg9i5DWcgHhEadTomyXaQjm8yArLxG3Kqyrsf9ztTq97iB4CEGVZp9qNU
	 O3HWDHOYL3povOMhCp69rPGTB/IeOIkZp/DswdfRUUBjSSgfMl+7ZeoBbGPv/9NO0j
	 0UqIjbJnZdTKpkAkmyrhvcSv477Wvxm9xduv8h6sKnAZF+9rMyGnI4aiM/Q8TcwIoL
	 z08QrjMzc+4gZ+cmozOG29jXsA7cFlwxr7YFDxYBC2I9VwppvpNtmRKkFLn01Hlk63
	 FqJFjjmT2Br/JrpFRG/i8EuP0icehnz6xKiLt98iqiLaLl1jShk6uGkFERzACKpi1F
	 IMe5ruXE8gUxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2456428F5;
	Mon, 12 Jan 2026 14:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 906A518D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6CD5E6F5D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:54:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E62_BxUi0jhv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:54:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 50A646F5D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50A646F5D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50A646F5D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:54:03 +0000 (UTC)
X-CSE-ConnectionGUID: aO8XKQYNS8a6lE9ZmAAKLw==
X-CSE-MsgGUID: SU+pFtfkRdy2goRSn1Imuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69554086"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="69554086"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:54:03 -0800
X-CSE-ConnectionGUID: mA0j3tXNT96rIjNT3n+qTw==
X-CSE-MsgGUID: x20iSe/IQxWlvqBEMVngbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="209184787"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:54:03 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 06:54:01 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 06:54:01 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.48) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 06:54:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=utxjiLQm5R3a2wiXRSjJyrKRh8ZcSRCDD01ue+hYQLHCzK2shTyaouONqRm8NxXXDVYZ6g2KeXv6RbBgqZAvPKxQARex8Hi17nqHCD0cYAbK4vZfsETA1V7euke0kbZSKu3JOCpqQ0j5ziqetr+dIFmJld2s7bhwgp+T2a4O9Fdk+5VV4hKaUdJCCfz6gFfsNofXUgob0nTM9PZQXRGzct5uzL+Un91K6KcAxDNNWnKvvMXnAuWoMc9ijxOn4UowxQeBPwNVlJU+QGLpNQR4S96ORYGypB5d1V+jWBC/N/rwnvHc/+x3RqwqDR3zvP0Xf3GDrXw1vPgMKoh+48KoDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fE5wcMJUKHS7K1TKOFNv8iUYqu25pPPrUJd2tV4lUJ4=;
 b=G9HcZ+Bv6Q1yjBc2eSYig7P4WHyZ/i01OZKnfbXk4v923diTdzBDeD0Yl4R2qOqh6EZ6DhR8tbBLz2QNsBefAYb5fDh+XPIPZEzGG6rMPgDuGnjO1rG68pxgmHNuXSZp/2CN63oMh3V9T56TvFszCWZPcE09qVFjE0x0igaUmJE7Tfhbgp0vcfQ5LDrU3BjTELbNw7EXjaxCbKu0Oqx4P9WUa6Y6FYIjCVgqdA2DZeg5xwz6hG0rAP+Ya+YcQviCM/Jhb7PppCsKGQ7DvupCm2YjcyQcMxoa7+ZlHjIJzMxJGBCYOf6+XxKvNuYQT6uZ5SyzjlSJGpR7eU7II3KHPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 14:53:58 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 14:53:58 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
Thread-Index: AQHcg8SufsOr34OrN0WPMD92SbfPcrVOm/jQ
Date: Mon, 12 Jan 2026 14:53:57 +0000
Message-ID: <PH7PR11MB59837734EA694328F53A8AFFF381A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
In-Reply-To: <20260112130349.1737901-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|MW4PR11MB7080:EE_
x-ms-office365-filtering-correlation-id: fc3db6f2-cefa-4df5-0edb-08de51ea6a38
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NnQHDZR7ZJB/EdEYeJaVLIQvOKNEMRvpbZH+aOknhMLQSxE8nTya+krfOREz?=
 =?us-ascii?Q?C+pmDj5g/CSC8RarOTHsiuK4PzXybYiBM3s5sxhLeSImvxCQJ3UTq0gnF9uY?=
 =?us-ascii?Q?0sG+yw6mF0ZVSmT1jiW8pn4UwwPyhbV9wnf7R/9YyU6jqltm6XNhYDaec16a?=
 =?us-ascii?Q?jQXYAY69qSlV8jCJfEz9ZC3MqBDwkNfoQwKgSYvGPsCfNzilEv2rsmI4+YUW?=
 =?us-ascii?Q?iC9SL2QsatxM3vsMY9IyF/+hAYfw4yV7Hwvua/9mV3TvoaijYnllNedvXpab?=
 =?us-ascii?Q?cBcATUcuOyiTNnJT5FS4PWD+Az0vjlLa1r1DUjugm404ourQRBi8u1wj1dc6?=
 =?us-ascii?Q?NHJFIC/aGIJAbSfB9Y9/5a2vaGo1wk9/5V4D5sxJWpy0daFI3d47CFNYL8PT?=
 =?us-ascii?Q?o49woKDbpmXPlJKr4V+1fxP6onbFnKuBz/2aIDAf56A6CHID0jvq1S8ySVfm?=
 =?us-ascii?Q?G4GmfNcX0WxnEtI2MF1ZXbynWte1zAnRT0GWJicC/w0rb8LYc3Wv4B45+mRn?=
 =?us-ascii?Q?7wNPXoGmGxEBuH5bY3t7DdXU+9KJztal4YXZwjZ4jOfkdmOkgOFmgcGSvI5U?=
 =?us-ascii?Q?BEMCwTTLTvEh2tO/I1qupcF1RMGm1cHJ/pXvWcXv8K7mViVQVlrhK47tHiAg?=
 =?us-ascii?Q?G3LXcz1EJFy1RJaxQeHG6jJ69JcxCsT7gh88tGdwX1SoSTFCc88DOWXr1fwX?=
 =?us-ascii?Q?fJTeA3kVrXNnLrJQIzl9fs/6FqrUUqfqvcmBHId6l1g5MPpF3YcmU3u+uKLo?=
 =?us-ascii?Q?IbF1RMXQcIfBmNFhylGqoV/DgDexI+C6PUTDnURRnlHs++3OW/i+eyAX4REC?=
 =?us-ascii?Q?SUPxA2+SmQ4l9EeYHaAkJRN2aySh2xuiWdQN1dx1Z7jzD6Y+wFED2ETpHM9g?=
 =?us-ascii?Q?/jWnx6Ht1qUu3r1PWuB24G6BlMwUMbqx32OzfDMGcWND3PffM+erxeoRn43x?=
 =?us-ascii?Q?zIyiXQz/C2kaR6wCXodLc/4XYpTbgYvuDzb8bXG0OmgRRA6l+V6mWpi/qMWs?=
 =?us-ascii?Q?sl1g731DYdzJsljWVpiTWGfCTu+Z7O/PZJ0gmYOvdeg+iQqMPVXKcTi6PdC6?=
 =?us-ascii?Q?lwGxlPuE1nVZBI94xz/J0+DaHON79YAXtKH6Yrl4RODTJXsGlT21rvJMVWJz?=
 =?us-ascii?Q?UUZdVouFj2IDBiPrlpBTpZtwNfK81oFBxBA43T7kIjrD2GAa5xNT9+gKLJAh?=
 =?us-ascii?Q?5ddIpO30NuJRKorYfkWhtdbf2V0D/kHVno6tZiTnGQ5MUIr9oiVCj/GDIsKG?=
 =?us-ascii?Q?BMqnyh8p8uId2FHcRVvWKb0Huz+xzXDoi0S+x7tRhj0bvvzGPOrLZtM1hs5Y?=
 =?us-ascii?Q?0enuuOpgRtRuDGm996gWhq49d8g8K9Nd4mWJEXMh9MnK7oLYSmHxY0QbvvHX?=
 =?us-ascii?Q?va1QXvLumBrGNvIU/Jtu4VjQFI+9XzyNt2KeHdriaII+7ZcyNL2+9c0Z/Qvf?=
 =?us-ascii?Q?jCHkM2XKXXf7nGvwWvm1m3X8KzyAoNZtNrUi50o7dEcnao4vexHXDy1cgyOQ?=
 =?us-ascii?Q?U3IDwjTZH0eBC8kIl+34HlpYzgkdVuN+e6VhIRxM0Kd2OcLByTXGoZcE4QKa?=
 =?us-ascii?Q?KZxvxglkBUXWh9jOH5Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kua+JyyWkLjdys95eCOyNgzA0MSVbemJbnXJtAr9eACgQvCY9vFPLo4JzmPB?=
 =?us-ascii?Q?MvN7A4A4Z/+Kxfkd1GYbYUIXGs8sTcXHtZ78XSOGgVkgSh3EEadNXMxIJIfG?=
 =?us-ascii?Q?Pf7nEYBvYCK+msfqKrzR45ZW54veFRiTGVDupH233FCVvCPWKEE2QX8GbMSC?=
 =?us-ascii?Q?HRLWMD8za2duNxEYDm9xUOBmsbx/h0KHFd64r2e1lO+b3pJA76C3CWWObTmi?=
 =?us-ascii?Q?DClzld8Q4tchp2kPlidA00NXUdanL86xF/yFnoKG16j64R4TneSe/Q09VQ3g?=
 =?us-ascii?Q?pttmkrPLb6XUMqzuIfqHM0AgzCNdjNsWJUkYfWG+mLcKj5Ox4kzf9PY4notT?=
 =?us-ascii?Q?x5YCaCLNT3RPJdeUQOIzu094xVI/J+T4k8bgbvmDI9msP+SLfq2J47uEMDYT?=
 =?us-ascii?Q?23DAa6skIpMhQ51MhTMRGYJ2MgTc9wsJy4c5fzR6iDqCgb1AKyHHv3StTAMc?=
 =?us-ascii?Q?ATo9ntEz/Dm7cgqmv57Y8Fgj6BYrI0t6+WFf2HD64axq5tv7GfRDQ+sLZuGs?=
 =?us-ascii?Q?YCmVTpLCpQFuv4RcmbhV6Ho4gNimRA/YKzJ01MmpVCYL5bK+6a/7hJwhm7se?=
 =?us-ascii?Q?Y1OB2swYl8RCp2FwwnGw47yXUR6St8D/+yXKWVqqgL0IcAHK4inua6tqrF5I?=
 =?us-ascii?Q?wYiz0V42g//RqNtcw5ag05uGtzBbab3ryb8CBCV9IdojZNn5Q8PPe53iTo2o?=
 =?us-ascii?Q?3Gd60nAhHJhQCSt9GYPgF4nPXX38Ytf7vSSR3otG6HHabPFwGqkQfRzCwG0J?=
 =?us-ascii?Q?9DrU2ML0fCJRCOGhe0rp1ZCkgeV2WpIqwaPyn5kuLd3Lv93EIUFL+1M3KtD+?=
 =?us-ascii?Q?07Kx+Q78qfzlJXZcRNIpCKQl7Cm5TL/VMeVh2kugAebjHK0zGJ0oY4+K7cLD?=
 =?us-ascii?Q?FLw4bCIqPV/hPJMQSZedBgOHXiUNYqse+Y8LvcB9NVkAicabnL1dpPiH0Bpb?=
 =?us-ascii?Q?lwJ8COA5e67X37IsW5li31ALvLsHrXaHkcGvagy9kiomee+iEh74107JHBwU?=
 =?us-ascii?Q?xviAZzgQ5+w1j+0/ikXMMW8pWeqWqGAdWvZ/2E3+3Zv/xxlE2WZT/mImT1mp?=
 =?us-ascii?Q?FZAwf+Ic7X04IOPTLefQUOYk8+lLbwsojFASp3kpOh87x5pOeyPDmEw+CjXS?=
 =?us-ascii?Q?U78baOuV08qS2ByCeVVrmOZtphQo0+SmNFJTj8A6oAaky2icG010wxNC5JpZ?=
 =?us-ascii?Q?ExyVHbfi9GBKMn2Wk81s9BAbpc9JvvdnXsUt1mg91FoCkIxf/7308IiiXALw?=
 =?us-ascii?Q?ZmoF2JZWHsSKwwcn63H/29+CBurLym/9PPp6pWzz5LM9eeruaIDw3bqBA2lB?=
 =?us-ascii?Q?65zn4PmN+mWmIQOoy/qgH8i+sYzAEqXR2WkkMbujKYzXhKQWCsE+D1n3QpSg?=
 =?us-ascii?Q?QlSO3Dgp2V1W33uDU/oWHoSHlQOSXGvpT0NDsTeDTweMX2C1FQktJwd0NyTV?=
 =?us-ascii?Q?mCA14JXRbZ5LGnVgz7Gy9AXmyWL4Ml3G3I62+BOUis2Brf96cc3YeJIQNhYo?=
 =?us-ascii?Q?NAWe+qcd4OV2sjJrYSTK2r8hf4DK/fznPNyShCAgzcwifekMV9wEIulUiHCh?=
 =?us-ascii?Q?0YFKkY100oV8+iOLXLDLSfzuE4fFOh/tBREYlWUPFFw7dmBbwuqLukLyDJBr?=
 =?us-ascii?Q?zDKWOtuva7z2VAA1PPhy2pGMPfxywbEo7Oworr6VwNn0k6ofi2wM2+cV+XyS?=
 =?us-ascii?Q?tnsOXMmLBLHU/INncFz9h6vMAMgOwHNgo0HVmQ8b/ZsnzzPFPgCtvaRzcPeC?=
 =?us-ascii?Q?hCUwYy7nxw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc3db6f2-cefa-4df5-0edb-08de51ea6a38
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2026 14:53:57.8399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B0STSsGthN2YTbqIS5pQVk0yunBCRp7gM4aj1tUrEp2GkV+IrAT+1B/ak8+cYP2f5hUErK3CrzQPMsJBk4F8G9cDFNOlfO5ytGjJdSLNFU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768229643; x=1799765643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bqGaH8fkOmpKoAKWAEvTfKBAswZGr4UhU/0xg1d1I0k=;
 b=ZkG484teFQXEfC0HoKkqt58r6Mmlz8OKPhOX3sDy53LXfqcYaGG8YGXE
 woF6HgY/Z/lB1wlxEitQ53kYNpfK9+bI/pyV6bxtvtng9jR/yYkzdNPic
 WwzdXBycl/MH2oUa/HRGNx/3DOGWSIAphg/t4mH/lbOJYz03ggw0WrH9z
 tfrhbdkygO/nUy2GQ3y+WKO7IJC3uMYlF0fieG317X5gW2nmI8TA6lnWW
 q6SmAp9F8q2do6dKwtMP2cGUeBI5U5cuBogv8ZpjmrLloGaJVubF2UYXr
 gM8WSFPG75sAPuwymUigJx4HAA6OgUEM+mHyjlIwaMeg5/BL9ufE72kVH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZkG484te
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vi=
vek Behera via Intel-wired-lan
>Sent: Monday, January 12, 2026 2:04 PM
>To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E =
<jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;=
 Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej <m=
aciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com; kurt@linutron=
ix.de
>Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek <vivek.behera@siemens.=
com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of incorrec=
t irq in igb_xsk_wakeup
>
>The current implementation in the igb_xsk_wakeup expects the Rx and Tx que=
ues to share the same irq. This would lead to triggering of incorrect irq i=
n split irq configuration.
>This patch addresses this issue which could impact environments with 2 act=
ive cpu cores or when the number of queues is reduced to 2 or less
>
>cat /proc/interrupts | grep eno2
> 167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> 0-edge      eno2
> 168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> 1-edge      eno2-rx-0
> 169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> 2-edge      eno2-rx-1
> 170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> 3-edge      eno2-tx-0
> 171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> 4-edge      eno2-tx-1
>
>Furthermore it uses the flags input argument to trigger either rx, tx or b=
oth rx and tx irqs as specified in the ndo_xsk_wakeup api documentation
>
>Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
>Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>---
>v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.=
behera@siemens.com/
>v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.=
behera@siemens.com/
>v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.=
behera@siemens.com/
>v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.=
behera@siemens.com/
>
>changelog:
>v1
>- Inital description of the Bug and fixes made in the patch
>
>v1 -> v2
>- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configura=
tion
>- Review suggestions by Aleksander: Modified sequence to complete all
>  error checks for rx and tx before updating napi states and triggering ir=
qs
>- Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use c=
ase)
>- Added define for Tx interrupt trigger bit mask for E1000_ICS
>
>v2 -> v3
>- Included applicable feedback and suggestions from igc patch
>- Fixed logic in updating eics value when  both TX and RX need wakeup
>
>v3 -> v4
>- Added comments to explain trigerring of both TX and RX with active queue=
 pairs
>- Fixed check of xsk pools in if statement
>
>v4 -> v5
>- Introduced a simplified logic for sequential check for RX and TX
>---
> .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
> 2 files changed, 61 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/=
ethernet/intel/igb/e1000_defines.h
>index fa028928482f..9357564a2d58 100644
>--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
>+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
>@@ -443,6 +443,7 @@
> #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
> #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. threshold=
 */
> #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted *=
/
>+#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written back =
*/
>=20
> /* Extended Interrupt Cause Set */
> /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git a/driver=
s/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk=
.c
>index 30ce5fbb5b77..6e51b5b6f131 100644
>--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
>+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
>@@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u=
32 flags)
> 	struct igb_adapter *adapter =3D netdev_priv(dev);
> 	struct e1000_hw *hw =3D &adapter->hw;
> 	struct igb_ring *ring;
>+	struct igb_q_vector *q_vector;
>+	struct napi_struct *rx_napi;
>+	struct napi_struct *tx_napi;
Please merge into a single line

>+	bool trigger_irq_tx =3D false;
>+	bool trigger_irq_rx =3D false;
Please merge into a single line

>+	u32 eics_tx =3D 0;
>+	u32 eics_rx =3D 0;
> 	u32 eics =3D 0;
Please merge into a single line

>=20
> 	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@ int igb=
_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>=20
> 	if (!igb_xdp_is_enabled(adapter))
> 		return -EINVAL;
>-
>-	if (qid >=3D adapter->num_tx_queues)
>+	/* Check if queue_id is valid. Tx and Rx queue numbers are always same *=
/
>+	if (qid >=3D adapter->num_rx_queues)
> 		return -EINVAL;
>-
>-	ring =3D adapter->tx_ring[qid];
>-
>-	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
>-		return -ENETDOWN;
>-
>-	if (!READ_ONCE(ring->xsk_pool))
>+	/* Check if flags are valid */
>+	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> 		return -EINVAL;
>-
>-	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
>-		/* Cause software interrupt */
>+	if (flags & XDP_WAKEUP_RX) {
>+		/* IRQ trigger preparation for Rx */
>+		ring =3D adapter->rx_ring[qid];
>+		if (!READ_ONCE(ring->xsk_pool))
>+			return -ENXIO;
>+		q_vector =3D ring->q_vector;
>+		rx_napi =3D &q_vector->napi;
>+		/* Extend the BIT mask for eics */
>+		eics_rx =3D ring->q_vector->eims_value;
>+		trigger_irq_rx =3D true;
>+	}
>+	if (flags & XDP_WAKEUP_TX) {
>+		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
>+		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
>+		 * so a single IRQ trigger will wake both RX and TX processing
>+		 */
>+		} else {
>+			/* IRQ trigger preparation for Tx */
>+			ring =3D adapter->tx_ring[qid];
>+			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
>+				return -ENETDOWN;
>+
>+			if (!READ_ONCE(ring->xsk_pool))
>+				return -ENXIO;
>+			q_vector =3D ring->q_vector;
>+			tx_napi =3D &q_vector->napi;
>+			/* Extend the BIT mask for eics */
>+			eics_tx =3D ring->q_vector->eims_value;
>+			trigger_irq_tx =3D true;
>+		}
>+	}
>+	/* All error checks are finished. Check and update napi states for rx an=
d tx */
>+	if (trigger_irq_rx) {
>+		if (!napi_if_scheduled_mark_missed(rx_napi))
>+			eics |=3D eics_rx;
>+	}
Please refactor as "if (cond1 && cond2)"

>+	if (trigger_irq_tx) {
>+		if (!napi_if_scheduled_mark_missed(tx_napi))
>+			eics |=3D eics_tx;
>+	}
Please refactor as "if (cond1 && cond2)"
Piotr

[...]
