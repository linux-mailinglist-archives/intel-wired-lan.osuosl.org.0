Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E490186EEA1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:38:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94D7241FB5;
	Sat,  2 Mar 2024 04:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F8KSLC7UC3bk; Sat,  2 Mar 2024 04:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC707418F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354324;
	bh=j5o5yp2Z9HtKjULTTQ/l2BlPiyjD9iV7Y+aaUM7C4hU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F6prCBxf9+UP9PKWlt7d/cbHDJE4dE+aQas+v4PmG3De7tRjADoxg5eG8T0zU7MQ2
	 Iguy5JRzY+oihlt6r5MSlp/3/6E1TfNsd+wZ4WtTfx4w+2KwmQmyvAy0Tf/4HVGlfP
	 WqKVZKc8Z3yYcOBlvTq95mA0sDyhP1cRm6tTGaDGK696b02SRFl+FOjAr8q2Xl8JEM
	 LIBYDNWABMtBg8J0y980qQE8dK2uTwstUG960t3+UjqzfBkyUiVVmNlouYpKUB8Avy
	 MdsmjtT9XRIRQG/Eqtwa0sl+yGA/M/341F4IaQ97B6bIBzROf9zTkXnj8cc9zq8l69
	 f/foz2Ocq4v/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC707418F1;
	Sat,  2 Mar 2024 04:38:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F14B11BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE69A83C14
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PmMLw5_17bDI for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:38:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 12DAD83C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12DAD83C12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12DAD83C12
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:38:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3834299"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="3834299"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:38:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="8343225"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:38:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:38:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:38:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:38:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:38:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e317Kvm7khtFwcvh4hSXCjJML8PvlsW4qW3omevx/entrSzRy4p0dKfS+9GADZrkNihpODtpm09/kysUXN3phAwfrq4zCVDLnhGnqon0JwiFAlNSNOIZ+YUQGPkdggAdh/4o3ZDi19bqnbycM6fxVLf7yGP2Q5amM75mq8jUmA7uxvqSc2c4cKRZ11tK1syLoEyulnqqeSgC+odopSWhvRYpsbhrOSzJvfOfNqrtWuCKpBHtE69js7AgLn13ekQBZHVZxiPAQza3Vut05mtwc39Kiit5ijOgE0Civ8TaZeUFlWuQ4KIN2momveiZutQEue1Bpn9kL7XA0kBebwNyyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5o5yp2Z9HtKjULTTQ/l2BlPiyjD9iV7Y+aaUM7C4hU=;
 b=n1VzpK5zbz1zCmVdwevXs/+ASXXGkK1dkO5Y5cYcH4GvI9DGjWR9OzpErkteb1kK38Ohv+btpyWxtU0udahJlyL7iSklrXv3Lgyv576NxSkgZvzEyWhHsvwP6PE5TogumTxkmSmLQvUFyCIDzVziz/Rr5ku+Qoj2kqXV4i+YsMXNI7/P+o4fHYucD7WjaFenWu0A/30/X8a4yjqjeicWCULr58OtRw1wl2D82D79Ca6t5Bax9J7ZHjUKNfsuY3rmMmsCSGMBiQ6nQ7ZDOQfCFIzII/wEfkz6Vw42+NY0hzvGcj576/yAsqnr3eWU8wiHx05xrQh7a66lIiENgC7Nog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:38:36 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:38:35 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 07/11 iwl-next] idpf: refactor idpf_recv_mb_msg
Thread-Index: AQHaZcIxmkJryppC1EGmrhrTFjlYqrEj61hQ
Date: Sat, 2 Mar 2024 04:38:35 +0000
Message-ID: <MW4PR11MB5911A7DE62B47EF848A692CBBA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-8-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-8-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: 2e84d23f-2a0d-4844-2a11-08dc3a729fa0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 98rX+qyxNZ4Ggm5PZr5kE+DRjqtl5NA96Qcnxjs6h+yT7LwB0XoaniyBAxZzUky001vUaymY9BOdGlTlokqSEUux+yXwema7tJ+kP0vdn6xQiTVSPOU8TMxcYfayJPR7+FZfauzCzxM8tmpd30MG2KBq0RVhy0u3SHM8jerFmBIYfgEQRoMMnzWMNWhosJWM7P7qv3djS+Wyw6LlGtUjC9xIN/F0kBXhB3DHdmun7d/0h7jATcl3CMFhUGpk8kzEXbFCSc8bUe+CwsQ9Z84pNnBOGWqEZg2mjrph2+kt/Xv7Apz0IPwGP5bdFrGjV6wIAiKH7QuWPHyUsbrtPP8Pra/OKDoq2sqhNsUNRt6NTCojrjqyUYvXFCoG2jXE7v54EVjbAvh7tf1/lEBmHBiIq46cGVSy4rv5VeGMbno/ZvShrBvhD81wrj4b2Kw5eytMuwYsS/v6FH4I3Vrz5jqL+X5f6ZQkFJnUqE/0y5eT8oD7F079gBWObPj+Dy8lTa7JJtfifEX1/CG7tGnM3aSQZH/HbfVfEIYm5Oj5Lihs3RmhdbjwqckUHHKCijtQX/VhWVqVohQa8n/1H/EIaxawuhM/3IAl98fgL7rueWUZ4O7sbV8Git3ZsuRRj9egefq9XDT/mGIlQAhzbsTCVxb4N1O7x1idiQRzBTacQyrSPIEvlBlxxNB4Ikbq93p/q9tbpOWiGmJdpzO3+6qtHYZI0mMF1tYbLQ4UytoByjW47oo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?knyu2bmKXQt6CUiPbxRkvwGrRJaerxkUirTP8MEt5B2UF2W0YtwAjg5Ap6ew?=
 =?us-ascii?Q?/yTNhKFxjvA5yaFBX3fijl85wB3Xc9vr3JtJ5lLVvwm1luckvqEQjsNm1DU5?=
 =?us-ascii?Q?8Ml5Ik9AfqD/VHOfeIZJ+hzR+J/im8R4vQenElmrKbULicEXifsp0hrvNwRj?=
 =?us-ascii?Q?0W1zFiPT0imvl+/T2zxBliFlr2fYHAHsymFWucz3PxNnxts3hbCzDh1eSq8I?=
 =?us-ascii?Q?PqrzpOIG5Qzs/B53PJP7cQNls36B1tlOzZ6EndRbzWuYx063+n1ei2qU9LuS?=
 =?us-ascii?Q?/J+wLpl739oY5NeTPWYEK7IDMZy7Us6FAkOdRRsBLEYjsAbIwesysqP1nwR7?=
 =?us-ascii?Q?M87MqSUDWroC7M8r869ESa2cnEkRC0d3CeO7jlzuCQAfwu69sWpNModdBcWy?=
 =?us-ascii?Q?ymgB5Pg0o6Nly4mltTbjTVlcdTXlKWklBFCXbbK/gAlIQ8L9RCfYUi9mBiIo?=
 =?us-ascii?Q?/kc11tcnc2Sllm6Bwp/OGWxRRdrnpN09bobLA0DLdqBTY4Udhv0wnxda5IvR?=
 =?us-ascii?Q?WS4L/1SsmC2aDQ/xnqrrQAsRUDt/HY32DmfW9ysdGGvugX1ItycE7t5P7kOh?=
 =?us-ascii?Q?vA4KedMEXpWytRcpw6O8rg/8ywX5meMiWKuLZSL6GGT68riltolb+6ip3qDi?=
 =?us-ascii?Q?Sh6GIQWmPLGGs1r6mHrZ+DRGUZo7TKA00j86a4nALfQR8880FoHhqzJnCy6u?=
 =?us-ascii?Q?cW7GLmoRJttt2aoLwLgxPnCFYMsufCAqIT+bXFvlfT311BMEYuco8gKpPlCD?=
 =?us-ascii?Q?/ib+cIrurKzlXMn0g9ACSuIHS+mHRibY917P4t8d74ElXoMDHTzYnPkTXeG2?=
 =?us-ascii?Q?A9gzW9hsxdxLMQY6w8Pv6zl6Oo/e0sii41IPALiqUyVBNBTr5QDGozSr04fj?=
 =?us-ascii?Q?kX5M5v11fMzbhysWFcelqikKDqwkJ/ioKPORvlKWi20SQDalyb8ZJIn53KVS?=
 =?us-ascii?Q?y4dC2Ozm0aFdTSXtVizhBLU6mOvuYU5zbhpEz22PvAKb26V8rbCIq2ER3Xlo?=
 =?us-ascii?Q?5fkvXjy4/mMBJpEG4+Yxw8mXPJpwE92Sm/nsbHWQ2KZQpmw73zv+obQM46Lc?=
 =?us-ascii?Q?OMUOy5kDcw8+OfHcLoywvfr2KjVLxCCCO/1EphhDS4jKrPjAngsISW/08Zkp?=
 =?us-ascii?Q?4+gjstVJ8uifwxmePzUOlrE9IZ9B9UMlwK2QD4h26nx4/vbS9L3NSlh5uEJc?=
 =?us-ascii?Q?wVhi7VG8emJV/jBiLbpLtVuovssj3rcd1aqKwOyeZV+pwkFj1UBlpESArg9D?=
 =?us-ascii?Q?nUOoa7wOgRYutmvy7USqEHdDkdI85vM8aeLWOXRXtF0qAaMrpajyVbTn+fho?=
 =?us-ascii?Q?5HQN1G8lZ8nhtkzn+fYijioDgR4wpj6Vb6eGq399eTcbwA3v+ExuP7Sd7V7Z?=
 =?us-ascii?Q?+jDHhFNZy/I4OUPpKW6lVpodLJuIv7/E/qt/TrgVka+Hc5BBtmKZw8Vb86ne?=
 =?us-ascii?Q?QF4y4J8GMoIqybXB5L9wKR2BMMImOMaFSn5dgdUJpBt0Dhx6+y1iu/ktQt4d?=
 =?us-ascii?Q?lhQq5qneK6/Sffj1Hxh23UkjX/QJyhfljMnhLsN0e84c4BzQlzzhiagMVJfR?=
 =?us-ascii?Q?ztt7N+x9KTU2PqgtaO345LlQ/ZsHYsdbzvw0iYEIbm1GSwtdyiTDdu6SBBlL?=
 =?us-ascii?Q?ow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e84d23f-2a0d-4844-2a11-08dc3a729fa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:38:35.8157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YLc5vI5+YtJtYyhYZzDNnU1qtpZEK5QOg8FXgTUy0g0SxCUyrW4+cm2bQojXRpi35Uu+S6DHIFAhgfS8HfEi6GPycga5vS5L87ZOWGM5RF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354322; x=1740890322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KwRwH8q/e2V5khtDEXL2xzgUXC77ntw1QgBTS8IjNYk=;
 b=a6g+JuBSwRZbcCfrDrUYUWeP+1hJCx031phizs2NuU7J2aLzbwGgigc9
 NqYJ1psjLoPbKppkxPSWCMtPvle0368F3fWPPpl+/kFQ+GWfmE+diar3I
 tYJSQLlne5ELMsnUf2TU3//zqUz7oUWMAurg7QVp1bFGrzUQfL2GGHkfK
 oV8Yn9kj1s8PLGP69SGQYhqLXUI8pE7ydbq72PeFUbKssFQ6yT1340UlY
 I5cLi4SWLfi5VSbQFTB3SxSI2+/8CR/uXOGx36zgK8h3Y8OresvaUnM+T
 +m0Y1Hr+qf+sS8UHkWWLTOIffWEDkXNcstutv1lTvt/tia44nkgq3JjcV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a6g+JuBS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 07/11 iwl-next] idpf: refactor
 idpf_recv_mb_msg
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [PATCH v6 07/11 iwl-next] idpf: refactor idpf_recv_mb_msg
>=20
> Now that all the messages are using the transaction API, we can rework
> idpf_recv_mb_msg quite a lot to simplify it. Due to this, we remove
> idpf_find_vport as no longer used and alter idpf_recv_event_msg
> slightly.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   2 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 254 +++---------------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   3 +-
>  3 files changed, 37 insertions(+), 222 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 96c0b6d38799..4c6c7b9db762 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
