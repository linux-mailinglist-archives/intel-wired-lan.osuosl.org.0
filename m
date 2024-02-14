Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EED5855355
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 20:41:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CC2082512;
	Wed, 14 Feb 2024 19:41:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDuawLwVf1Ly; Wed, 14 Feb 2024 19:41:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0501C824EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707939679;
	bh=D1xin84ZVgA8Sppi5QR2gNQCpuBF4RzchEcFI+3iYwc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PNPYhVfPzKymvQkQ+/QbB9ySuBxXZPJEIjKRr8BaSAh4I1zaf6or5CTEF3D0yGRu4
	 yF539FGoDnyIv+8u3sOH9+5bXwVQFRUtMCyXjVMwMWp0D/bQSCsRyg11Dl9B6lWb7u
	 wKIQi5Xi5xzpIgkR3WPDl6p4bRUCzIa5BQoj94Xm/ShCdG+6+GLdKIsY2qh/dIVvd0
	 5gzArqQRkbMmJzoK3E26+jBrMKLw8xjIaLg9ZAptaxwi4XX73t7oy0RFnv7alHtqZa
	 AsUoEMDQCAke9h2LByeIP1SNZXvnovRXAghHLwrWyyG3B/iheK6FP0HDQFgkbBRO2D
	 94sdV+prd47IA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0501C824EE;
	Wed, 14 Feb 2024 19:41:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA9B61BF296
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 19:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E36F360819
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 19:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIyDGKmFNT-j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 19:41:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA7C560816
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA7C560816
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA7C560816
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 19:41:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1877026"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="1877026"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 11:41:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="34103555"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 11:41:15 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 11:41:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 11:41:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 11:41:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/Lu2giwXdr1fUZg7CtLcAfR4H7p6PDfh/6plxou/k7YM/LciP5Zu6Acp+5sO4svB2FFax2+IJj8H5PYahi9eJt9e8KD+dSgbgdvZkw6lMrNMXXpFuk4Lh2hl6/J7EanJ26ebBi8d6UOguoRymNFbhAnKQCThEXFyFaR5gLYDl6gtPhjkKfsHKLZAWclQJZo8pnP7gp3gV3/wbYYYE6FjAtLaNIQiJsv+Hc5/wkgjIpV2VZ9Fc038AsBBoxVwx6NOD8z+3JvJn2/qX19DrGSKt4A7KRq1+kPvi16WhweY56Rx/rk/aVzrFZ1zQnOOxq39yXU2We9+XiuOpm+OP55Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D1xin84ZVgA8Sppi5QR2gNQCpuBF4RzchEcFI+3iYwc=;
 b=e1cEJBjAsyOXuhomhpB2Zm5stKCsDXQIbbSqP8INd3RTNimQ17DuAVmi8Mdn02Z+cnP9ZzTFmlRMDV1Qv7TRAP2+cPcIFVpCOJ17h/G3uVy0funtGAFIksSHRKrK8xBVJDK3XYGVlXZ4X0jz2RWtjePXsfZL3LoyXFKlxjOnTVne3UNeMC9fZgiuVAmkMjR9aKlnTG0E+JdZ6G4Zt1pgawIBipAg5quujiNpmtvr4ttHUVKUumCbDWs5vpE3FDa841s8tyXNsiHcvwvkImVQYxNCMRCgkc0LnmoPyCepDFxDnW8FV5k2hmCJRNLSziVW7ILpV6bj86zgEnMO4bWJDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB6182.namprd11.prod.outlook.com (2603:10b6:208:3c6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Wed, 14 Feb
 2024 19:41:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 19:41:11 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [iwl-next v1 07/15] ice: add auxiliary device sfnum attribute
Thread-Index: AQHaXmKUfZDRhKb8okGjE1aORRDlabEIIxgAgAAHHICAACQDAIABOVaAgAC222A=
Date: Wed, 14 Feb 2024 19:41:11 +0000
Message-ID: <CO1PR11MB5089D91A3610E600ACEC8AF6D64E2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
 <ZcsvYt4-f_MHT3QC@nanopsycho> <Zcs8LsRrbOfUdIL7@mev-dev>
 <ZctSpPamhrlF4ILg@nanopsycho> <ZctYm9CVJzV+uxip@mev-dev>
 <6b62fe60-b1e2-49e0-b374-775ef42d07dd@intel.com>
 <Zcx9qWyr4IXn8rXa@nanopsycho>
In-Reply-To: <Zcx9qWyr4IXn8rXa@nanopsycho>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|MN0PR11MB6182:EE_
x-ms-office365-filtering-correlation-id: b8097f27-90cb-4c21-7f70-08dc2d94e5d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: li/GCc87OJeig9EaZDj4KSok6xHULc7rUwGJgyK0MHqcfZB98/aDOYdbIZa3uTdfV8abAoAhXuWhbVDyH2ojOFivoIUGOz3mdZDxu1FNKsCok/OHXulTeMmXqxrctCA0XsuJa8BnS5V/1rrOUmqcvrdwh5SviPdVc+Raisuxhz4lbOtOOISJJD+0MSlwFINfgARTay57FLv17fSSlWMCY9apkaD0CyzNpadf9ijE6xv3urNFMAy9SbtosjStLTKGVDPtsFmDXqPo8txlIHAosdtYPAWpTML1Bpnhku/ngl27NxE4lmkzP2g4ePqukA3kHKht6pgTiH5hs0sq7OIv7m1aRdORfPvz5hV7WUPZddwdDIHJB0NPW3unjb6Swe4Ii+61a2EaJ4+iZRVoib9MCK0iIetKli0M7frlL8txBForYg+JD0WTNUBocHbvkuGWL51R9pMJxkkL25W7VX36/ML+NsFDlI6pftSTVsF9GmPCEb4JGI7ZsjXnmIsDHts49VbisiK+YTttNNyzWjIwi6BNS1NaTwO4DWrr7zc3pBrGoHq9No1dHLj+j8CTsYfE2tySSGPqnZtrayrSoa1+WbBHUAOrb8SWWnOssZ4/AFo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(39860400002)(346002)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(82960400001)(86362001)(83380400001)(38100700002)(71200400001)(478600001)(76116006)(54906003)(316002)(7696005)(6506007)(6916009)(33656002)(9686003)(53546011)(26005)(122000001)(38070700009)(2906002)(55016003)(66946007)(8676002)(4326008)(66446008)(52536014)(5660300002)(64756008)(66556008)(66476007)(8936002)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EJWi8xVeOpTmsQXOtlkOZldNjuBcnu4ZJ8+IxIxGG0H5+03xYagnpj8lckpE?=
 =?us-ascii?Q?GxgAkFmYslOpDM+WmB2f9PtPN3BxhS7d4yGUpAll3OGL8GQrnrBbzzgkQOe8?=
 =?us-ascii?Q?nJMW26DRgeOCu0lfb7TH59naK03NcTcPAKd01fxp7s7N6FLPCRDbxKFQeUL+?=
 =?us-ascii?Q?9GlY1qDy4XVxqB1ifGPzkNhFlDipVnKn7Q6BFWaqJQy0ya8yS4mK0sKKDRkL?=
 =?us-ascii?Q?1v3Skl6VOJNBMX+SdGnjQHZBvp73q2hUqAUu8mxmFesqmv+NP2Db/m352VHb?=
 =?us-ascii?Q?O1yivMoNuOPmsHtmKhBWxbnDe47D1o71kWG/JbA9lB8uouwJe9tvIDgrOtEq?=
 =?us-ascii?Q?9SIQtmUAHwsdt+s4a0LnkQeEerKafa8ztcAXuL6kDpEb+MjtBkCo3vEGTfuf?=
 =?us-ascii?Q?aRDOzn6liGvtS/HVac8wQeK3iKtGY+3fA50AiomPml/wi+EpiSRGL7k6MGZ7?=
 =?us-ascii?Q?KeKi2ClYNUIMeidTsrGQ2fr1FVkc3Q2adL/xugQvju4CO+KUjxkdPF0dayrQ?=
 =?us-ascii?Q?w5oc9wy4WdzPXpqw5EhdmM8hQbirdhIXDvHPlOMO7Mwf+2/BRAxz1JV7QMBE?=
 =?us-ascii?Q?Opw2zMV5+79kJBu/TNao3aPJxsUwxrKNlXdRBfdW6a5+KANSC/fcER7qZy4q?=
 =?us-ascii?Q?Snyz4jeXVZrOFr13W5FN1Irf2jqnGGz91X4C/KvefUMWcHKMNdiOB3S9oQGz?=
 =?us-ascii?Q?kgIi31zT3BCf6EQlBSGa7SQUeZTA0TqzTkB14+382Y3z17hpusluEviSLZrb?=
 =?us-ascii?Q?+a2hcNwEhDHc1AaQ63ZvcfvH/4T34Of/7K5CW1+1ne2tUwmndsU01196b50E?=
 =?us-ascii?Q?KfFutSgLIo8ClpFEYGLR8NaKvTsn31rg/vIRehdQm4jNliK3Z+Aiz5QHzyFj?=
 =?us-ascii?Q?c5EBCPjIms65PRofsZYV3/rSFwL/y/RPMhOxcvmqH8fjr/6rty8N/0Ymwd73?=
 =?us-ascii?Q?gdsuqkvt2nhwr4AA9hdvJdfzptfZ1hlt8uNt9Sp8UD72wAQtRNivf6WgQrXT?=
 =?us-ascii?Q?hIT0zYH9HQT6yvyhGtnIoVRSt3qSiBUFOGjzmMP+Oiz9MoZ+TZ3W1qAoY17b?=
 =?us-ascii?Q?t7PB7rmgWAOLUEJUdCSlpQXBRl9c19LV6iDc6VMnwLWoj6ohZVbnZcr1qRRt?=
 =?us-ascii?Q?vDNlg7A6/A2bWbtOiZVoaVNoihB8x6EtQXZt5VYzaxvVGW4gAsn6w8aIuB4E?=
 =?us-ascii?Q?mfiSt/Aa60B9uFo+E5ci1/6ixDDd8RaY+DqyVq9+MAss4f5diQkQvK7CJCcC?=
 =?us-ascii?Q?rzxF00ahFqGP3WE80ZXywL+6/e1XrIqJBU1xPv6FruV9NfUFm35n+U1Ttl+I?=
 =?us-ascii?Q?V/NExZp71B0ZRCHeF5WB7TmjsxaAdiFJN2dsS1ygEm7gd59EpTdrO9zVrFBb?=
 =?us-ascii?Q?nIUovSNhrf6Xpx4A0Iv3+Jw2qNZl/LR8NIp2fwxIbDVplBKFId6EkDyscHt+?=
 =?us-ascii?Q?gMNXxY30p/Ond/tTR5JBhqUyQGrLATs+wvf1cdU10eb/JOr8EE24ttSs5swz?=
 =?us-ascii?Q?uDlCvxLx0hHKe7CBybnXom1iAK85L4BDfNpc5hprCgJ7ZwhhAwk/FhOuYHSG?=
 =?us-ascii?Q?Uo3TtglLz402cO4YZjbNi2baKrOhz/uyM4PWAkJ2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8097f27-90cb-4c21-7f70-08dc2d94e5d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 19:41:11.3967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8MGMu1Gur+O0f+2M8d0LEr4UqQHloVR1Kptm7Ia01g4NQWgzheI5udtIDrdfeZuUzcGSFGaZJE9OrKzfS2ZcM5EiKHvurthLUwTcAgtihCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707939676; x=1739475676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/yyLrxwXyBp1bWtAfP/WV3mjNGLMopgeR8ziuNUlu1k=;
 b=Num6IaqHE+AfvaY7WmdSp3yy9LaY8KLw7pOgnnoXKn5XGUzsKpZtBAvW
 O1wmJG8gZXLvSpKHRPh904Ky+x5FGDIBRS0yU1JN7NFPSQdkxwAHUkGrN
 +cCKpynowxFDEQ1DVsnZbnwGYabVAfeyjcW5htDow3gkgQNZfQ0AwJGGP
 Ff9SNgIStX/lBAdja0FYXy2RgGLnrufU6fZJCBV1dqpQoXfR6k6q7QEEj
 +5+ZTdg9PV33uBQkLU4WihGj95+QQ+0N5IEK/2XcVCCk1+ODd1GvcqMXX
 kcxZOaT8EyvBwkoNXk7K7nPAa5F5xr7jO2w3rC9R/q1myMvMS5TyUdkJ9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Num6IaqH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 07/15] ice: add auxiliary device
 sfnum attribute
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jiri Pirko <jiri@resnulli.us>
> Sent: Wednesday, February 14, 2024 12:45 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej <maciej.fijalkowski@intel.=
com>;
> Samudrala, Sridhar <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Drewek, Wojciech
> <wojciech.drewek@intel.com>; pio.raczynski@gmail.com; Piotr Raczynski
> <piotr.raczynski@intel.com>
> Subject: Re: [iwl-next v1 07/15] ice: add auxiliary device sfnum attribut=
e
>=20
> Tue, Feb 13, 2024 at 11:04:00PM CET, jacob.e.keller@intel.com wrote:
> >
> >
> >On 2/13/2024 3:55 AM, Michal Swiatkowski wrote:
> >> On Tue, Feb 13, 2024 at 12:29:40PM +0100, Jiri Pirko wrote:
> >>> Tue, Feb 13, 2024 at 10:53:50AM CET, michal.swiatkowski@linux.intel.c=
om
> wrote:
> >>>> On Tue, Feb 13, 2024 at 09:59:14AM +0100, Jiri Pirko wrote:
> >>>>> Tue, Feb 13, 2024 at 08:27:16AM CET, michal.swiatkowski@linux.intel=
.com
> wrote:
> >>>>>> From: Piotr Raczynski <piotr.raczynski@intel.com>
> >>>>>>
> >>>>>> Add read only sysfs attribute for each auxiliary subfunction
> >>>>>> device. This attribute is needed for orchestration layer
> >>>>>> to distinguish SF devices from each other since there is no
> >>>>>> native devlink mechanism to represent the connection between
> >>>>>> devlink instance and the devlink port created for the port
> >>>>>> representor.
> >>>>>>
> >>>>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >>>>>> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >>>>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.=
com>
> >>>>>> ---
> >>>>>> drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31
> +++++++++++++++++++++
> >>>>>> 1 file changed, 31 insertions(+)
> >>>>>>
> >>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >>>>>> index ab90db52a8fc..abee733710a5 100644
> >>>>>> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> >>>>>> @@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device
> *device)
> >>>>>> 	kfree(sf_dev);
> >>>>>> }
> >>>>>>
> >>>>>> +static ssize_t
> >>>>>> +sfnum_show(struct device *dev, struct device_attribute *attr, cha=
r *buf)
> >>>>>> +{
> >>>>>> +	struct devlink_port_attrs *attrs;
> >>>>>> +	struct auxiliary_device *adev;
> >>>>>> +	struct ice_sf_dev *sf_dev;
> >>>>>> +
> >>>>>> +	adev =3D to_auxiliary_dev(dev);
> >>>>>> +	sf_dev =3D ice_adev_to_sf_dev(adev);
> >>>>>> +	attrs =3D &sf_dev->dyn_port->devlink_port.attrs;
> >>>>>> +
> >>>>>> +	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
> >>>>>> +}
> >>>>>> +
> >>>>>> +static DEVICE_ATTR_RO(sfnum);
> >>>>>> +
> >>>>>> +static struct attribute *ice_sf_device_attrs[] =3D {
> >>>>>> +	&dev_attr_sfnum.attr,
> >>>>>> +	NULL,
> >>>>>> +};
> >>>>>> +
> >>>>>> +static const struct attribute_group ice_sf_attr_group =3D {
> >>>>>> +	.attrs =3D ice_sf_device_attrs,
> >>>>>> +};
> >>>>>> +
> >>>>>> +static const struct attribute_group *ice_sf_attr_groups[2] =3D {
> >>>>>> +	&ice_sf_attr_group,
> >>>>>> +	NULL
> >>>>>> +};
> >>>>>> +
> >>>>>> /**
> >>>>>>  * ice_sf_eth_activate - Activate Ethernet subfunction port
> >>>>>>  * @dyn_port: the dynamic port instance for this subfunction
> >>>>>> @@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port
> *dyn_port,
> >>>>>> 	sf_dev->dyn_port =3D dyn_port;
> >>>>>> 	sf_dev->adev.id =3D id;
> >>>>>> 	sf_dev->adev.name =3D "sf";
> >>>>>> +	sf_dev->adev.dev.groups =3D ice_sf_attr_groups;
> >>>>>
> >>>>> Ugh. Custom driver sysfs files like this are always very questionab=
le.
> >>>>> Don't do that please. If you need to expose sfnum, please think abo=
ut
> >>>>> some common way. Why exactly you need to expose it?
> >>>>
> >>>> Uh, hard question. I will drop it and check if it still needed to ex=
pose
> >>>> the sfnum, probably no, as I have never used this sysfs during testi=
ng.
> >>>>
> >>>> Should devlink be used for it?
> >>>
> >>> sfnum is exposed over devlink on the port representor. If you need to
> >>> expose it on the actual SF, we have to figure it out. But again, why?
> >>>
> >>>
> >
> >I vaguely remember some internal discussion about orchestration software
> >wanting to know which subfunction was associated with which auxiliary
> >device. However, I think a much better solution would be to expose the
> >auxiliary device ID out of devlink_port instead, through devlink port.
> >
> >I can't find any notes on this and it was quite some time ago so maybe
> >things have changed.
> >
> >If we enable support for user-space configurable sfnum, then we can just
> >have the orchestration software pick its sfnum (or check the netlink
> >return value from the port add), so probably this is not that useful.
>=20
> This is already solved by nested devlink. When you properly call
> devl_port_fn_devlink_set(), you link the SF devlink instance with the
> eswitch port representor. Then the user sees:
>=20
> $ devlink port
> pci/0000:08:00.1/98304: type eth netdev eth4 flavour pcisf controller 0 p=
fnum 1
> sfnum 109 splittable false
>   function:
>     hw_addr 00:00:00:00:00:00 state active opstate attached roce enable
>       nested_devlink:
>         auxiliary/mlx5_core.sf.2
>=20

Excellent. That looks to resolve this entirely then.

Thanks,
Jake

