Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE09591222
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 16:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49F0B40C0C;
	Fri, 12 Aug 2022 14:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49F0B40C0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660314289;
	bh=2/mKMcUpFfvGRFFriPGuCbodm3MQU6WGN2idkP0nimw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=34QQnMu1xefigA4qGwQZXKcf2H1zngEyT4yT3XzVBDHuQgQ+xFeQRlDeHt9O5rpGr
	 gkublz/IstKeo5amjTUq/NbD9ZUDFH8vCBNdV3ol7ztTVhXFenK/JmaElLWUGv9SRR
	 OEgVMPma+HudzBSGDu8J1sckndBYiayFq9OCAGF256ucA7BOv9RKNAPlb9Upa9/wP/
	 AlVCsZHnNLpHChaWrPMUnBKQhZsHv7vDP8tcS12JTG8+IkxFy1SB8zOFomcSCmLcSW
	 3vuO+LYXoI4PL+kwLcsTdN7jWP2PrEVnxLcxHvnAjt/2kHYtapoLDLNWLYieMDNGAB
	 E4BWkTpTn+pEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fB4lorSAi25O; Fri, 12 Aug 2022 14:24:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39F3D40C5B;
	Fri, 12 Aug 2022 14:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39F3D40C5B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45FDF1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BF1A61151
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BF1A61151
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QQ_gO0NtK3HR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 14:24:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 413846114F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 413846114F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 14:24:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="317573884"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="317573884"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 07:24:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="933729813"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 12 Aug 2022 07:24:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 12 Aug 2022 07:24:23 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 12 Aug 2022 07:24:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 12 Aug 2022 07:24:22 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 12 Aug 2022 07:24:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ar4WgT+1yBUiB4TAbxsoSbcBUkpDH1wlakYaPOQyZ+qgLpGtIB1m642SRlBoSZnH8DQUob8VBbJbnJxYj73hgjlX70/1W2/nn5ldq4L7XU8uY3fB/s0O6pdvRJo6F2jJVRCT+8m05DRufDKYKAhjUg8rTlkvLZ4/CnlcgqirnWNNVdLLv00xEvTZlHIkraaH7cRbcKeOlkcDYQHgvkOvKRvNZaHPXsbMqaOB4MKybQ9MQYHLCDKNeTxggmWojY9I43XzXjS2MZH0UWJYS/DsrjDlMNTc0A3EgEvmbYDq2wvuonGDsJiUdz3cScm5xaQvNs3/cLG6nCOGLtV2mC19Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCnr7yon4tL57X/fMWh3nT1kq0d0Abx48FmSJPKllT0=;
 b=gLcqXbkIE5HfXRuaX+G9acxONZLF6jPf8ta5s5Pk2S9mlYWLNBs1aiw5u58RemO/c3SWIMmYMX4fXh+moTgAj7BE8lusNr46zHtGUQ6Gp4QSfm2LNDec+D3LHBZpQFmgoqMZ5rclSeGfIhSs5BZECiX4AeSUdjD2NwvPYWv+tlusM9h3c5twwtgpp4hWYMgFoh3F7Esv5HfUQHUArzCPTv3nDCo2CdMyBXhgloz8O54veEj3g71Zl0YROqKdhbJPyURXUAw/nAN59DgeyAi3k7TW4YlBUg/l43kAEAFsHIeQFKAUzEe+Wmk6eEYngn2WREp3KGnSVkoMdivO5K3U0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL1PR11MB5351.namprd11.prod.outlook.com (2603:10b6:208:318::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Fri, 12 Aug
 2022 14:24:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 14:24:21 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
 timestamp read
Thread-Index: AQHYpoBZ3umBmyO52kGoCvLsgJi2V62rYEKQ
Date: Fri, 12 Aug 2022 14:24:21 +0000
Message-ID: <BYAPR11MB336750978C0D843C222A09B2FC679@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220802145757.273270-1-karol.kolacinski@intel.com>
In-Reply-To: <20220802145757.273270-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69945f9c-969e-4f5b-d5f9-08da7c6e593c
x-ms-traffictypediagnostic: BL1PR11MB5351:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GL4gHZ8VKxWYti+6l+FzgbtdZ6PIYi+6TS5aNHs4WsvoR3J5Y1nzd9xGmVYuDOzdpekBPA20JAI0Vh0jW2z3nRXsTq1KI5v6mTTL29k7Ty/PvCnDdMFwarDx4uVTvhyQ8d0NKbt8PWHSZZdiJMFnbR1745sDHXZE0qtI38Q0zeG5qg4hqjHSMTG0v+YIoEDfY3ygxsU3kq68jb/9NCJN5itwl0Ol+nDePoc+bwAj74vYeQtFuXpSORdKskFfvqYP7lolHW9kXJTEomcFT74IXtAb/vW3haVV2/9G2VLp9beTANzmcX6Yuqto4NLoTTjsCOdauBgLfgsBAiob6HXALkMpzI83KsL/V/9C4THFVxoiiLaWrRoRsJI/9X41E2TrNjmrWVgReZE0OI7ZHHzp6mcYOtSTptG9KuRZg+D3qsAZELAW2dCdQEdUUlciZAStmf/cXhQaOjLmgDCB1Mc5kkuGlvIIBiUBeXhFCcHxyPmVY4OvTVJelJ6iEM76j/pGbnu/KXXaa2WSa3tBF5z+fpW6JgkozcOXA7D1ZI4cYCWRLqJJOtxQZhvDmio/rVTjPXL3Rgmw+TGsUBLlTf2itKSifZYS/CZRfROlCO8kP3WmJTcieaipxrTWyFH2ASMxqpcqzQH8Nnz4yoFGObWlKJAGHiUJ2s7FjiVkmlpQ9ki7lxc/m4T0eKubF7yHZ7RijsFzTD7h94EZ593XzujRrpZ/uyJzrvR3nLOC668YJOBylI1oVf27Nbdcr09i+J6ZPrGkqdZe3WIV9zB1Lsk3e5Qh1EVWfHFjOBwkFAz3TnCur81BxgBGvXYqnFMcslRI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(396003)(376002)(83380400001)(478600001)(5660300002)(64756008)(186003)(52536014)(107886003)(86362001)(55016003)(110136005)(8936002)(41300700001)(33656002)(71200400001)(38070700005)(82960400001)(122000001)(316002)(38100700002)(76116006)(9686003)(66556008)(4744005)(66476007)(2906002)(66946007)(66446008)(26005)(4326008)(8676002)(7696005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/DKrnZ1h3Jwzhe3PpeydIUqVuf4CPTFaSBrmUpcTnFPm63+LTeTEFeYVQGxh?=
 =?us-ascii?Q?eSjyv198N71ZcBkZWNPGwS+Iq3duJdYFTOc771wZ6bFg/VxInI353Ta2NsUw?=
 =?us-ascii?Q?m+6JOydVeWX9bPB4iCGy2aZNO52O343G5iVMrpeuCvwSHGFIVCTJR0hZaurN?=
 =?us-ascii?Q?Gi52ERZE9Uofr5KzsFv+P9v2tDymzoDvoYa06GqYOirxfU4yegOmVEOI3BEG?=
 =?us-ascii?Q?fF6n1sPowUlwQfOeFlTJ7KrCtvXHjk837flV67/QFSA97CFzN21xRAoaibPc?=
 =?us-ascii?Q?oUNuPFSO9cUH4/AYpaG5paduXvfukvQ94+l35dt5i4I2zpOORQgw3iuQfaSC?=
 =?us-ascii?Q?yehTejlvS2uiA6Vr6s1VwEog75eviUncMQIwLsFMxl+/CKigBXdDIMD5BjL4?=
 =?us-ascii?Q?wfkNSomVweVMudOe+6+0Lj4ThCkrRD1NHG2c/m+I6mYR/H+8CAgEp6wFktNy?=
 =?us-ascii?Q?9ZKQXefKfozFIRIA5XFtUKjdVAMgdpqEqpOVCe5+jfr3VWRzVyc4AnC9bM8Z?=
 =?us-ascii?Q?w7hLyBqTakAnFYLg7S+lTxQLAe16xKONAgNWYFubxeVhZwxBiu1Upy/WA4Ju?=
 =?us-ascii?Q?0AwYUVB4EGvdwHq5QitUCQiMHlQEvlvHb5o8CZHYW0gYCgjiy1zY8fOkduC2?=
 =?us-ascii?Q?8IDQGeAhcuvfyuZp+crv2bwDEvivxBuHd3as8Li8O8QfHxQmfqj9p4DYAZUE?=
 =?us-ascii?Q?zdCCmLxi81KWEtPJxqamzOk6X1jxpb1nze+TJjLKLHBhnR5P1JdNYEwTPSqC?=
 =?us-ascii?Q?m6SyM94DDURkPOyc1f8B+57Vj95NJJpChs29E21HfvKjSov4pOLHNH5wSANB?=
 =?us-ascii?Q?I02kuCk9nezFtCqByphvCK86rIaFgBA4RaKfAs3z3IQ3JNmRYT64r8YwaoQ1?=
 =?us-ascii?Q?TSbCDNQWjj5bYttJD83toHl63cDyZOF95S18hwJuwbKATbzyGHOiEIsZowfV?=
 =?us-ascii?Q?vXEb/QK8IYpywsW4YwqKhZoSZhhDkOCVDKevGaDJ9PFIBv5rJC6DNjDU2DLA?=
 =?us-ascii?Q?SLOpB199A3EuHyonBIpvCft37k1h/9PVfLlwki6b9vnRxKuqTzVWZJGSCvVF?=
 =?us-ascii?Q?7V4Re/rie6zvNWsrO6F6ZyGhoALDYni8LXSYzf6AXvNHXhj92lJ03o/WndOR?=
 =?us-ascii?Q?mNsutuo0BAmeBFuTPwoGwOLd1inYPosxRr9FhUJj85fJ7Nf+tW6hyz7ubcxk?=
 =?us-ascii?Q?tCvjC+S4dyOdUwgQBNkqsZ/0oe41/Igk5uKeWvLnqQpcAzcwnc8YUVsYkP4d?=
 =?us-ascii?Q?9HLBn2ovOqDHsFjTW5WthVhp7NZJAMRh+Ytqy8kDul2dsAzVAzd8MVjueCtd?=
 =?us-ascii?Q?HEBbAYQWfbwCm8bnOY3MCIDVewvS3Xlw/RQKi4cV6Zd5dGBKu37aNzOprFtQ?=
 =?us-ascii?Q?G/u3ZerCJjf/TaVVLC1YrZfGBVAxJQRXt8ouOZbWTNPQ7W9ou3h1LkuWI5PO?=
 =?us-ascii?Q?aegtor5tDQQdFUR+EF7CuetgmjdWZGScbZIgWTo8Y049aMQDWuVlGhyL1UKA?=
 =?us-ascii?Q?KmzdGUyqpZveaf991SgaIkHdgarTPNrjsDvvc2vxK6mLHMSB+VV4O8KlkAj4?=
 =?us-ascii?Q?pczGXmUGgl9IMlK23tkQ8cvlsGev+RoGLJqWcbJ6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69945f9c-969e-4f5b-d5f9-08da7c6e593c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 14:24:21.1596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nyBlIr7ISGanCgOYJBNb3xGByMLZlCVqr7pyR6FgvE4a2eXPW/zCq67FDBMYR8DR2XViwzvwN4RG11Tzgq+2VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660314281; x=1691850281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VCnr7yon4tL57X/fMWh3nT1kq0d0Abx48FmSJPKllT0=;
 b=dzuEvvvZyhrPwbdy4lODqbQ1Frd2F03jy9T/WhqShp4qJ6aLdmEcwW/t
 Ch8aCH0ju48UPaWYsZbPNIaIQAkHEVcR9Hhlfw2j79X5TYAyb8N4pUWNX
 zFa58MbHIj4Aby2uO9xhmFDVUHzpJbUZDfPe0ltkiwj/qVZoBRfy679d0
 bkADcTSw2ysCIDXHbqqgwLuEwa0NqgwbFPNfmiABUhnPB2Fsgj0ENpVJI
 let6fk4l1RyFg9Jud6yKRnXAIbYUa69UIy10Am0DCEdaws+XJZFgdigZ1
 t0YILC6g9F7vXnVnYKEm4gMNiEaiJAxWVBx5uZI2/NmNbfzX7pD7Sh5pr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dzuEvvvZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
 timestamp read
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Tuesday, August 2, 2022 8:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 net-next] ice: Add low latency Tx
> timestamp read
> 
> E810 products can support low latency Tx timestamp register read.
> This requires usage of threaded IRQ instead of kthread to reduce the kthread
> start latency (spikes up to 20 ms).
> Add a check for the device capability and use the new method if supported.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---

If the tx_timestamp_timeout < 15ms then we are observing the send sync failed messages as below. 

ptp4l 47370.160 timed out while polling for tx timestamp
ptp4l 47370.160 increasing tx_timestamp_timeout may correct this issue, but it is likely caused by a driver bug
ptp4l 47370.160 port 2: send sync failed

But PTP applications require reliable low latency timestamps <10 ms
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
