Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AD158EA76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 12:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7B348244D;
	Wed, 10 Aug 2022 10:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7B348244D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660127511;
	bh=3PFPPdrTfSuPsJN2YAIdeG5DGfiKS3x0/5D/omhBEwQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bp/qpxgyfxtzJ2dFEHq0uQHowjnJoXbekSdZLukjvwa9b7swWkPOB2w2cJfeX0LcB
	 d0Gk/9gxA8syUkRDRawWzmBGZdh8916V58s1TLXlIZ2t1EjNbgsD39C/tnxPG17LUW
	 TntsDftMGCFZfyF52sUDWNpPdUjllVqQNkgnf2dRVHkV9ovB2FHjfJuoqSqG0pL+kx
	 DK1u0O5H3dqCqi8ELpIXlBrb2MS3hb7TC/RT/W+SfBjET+yV+tm83ROIOyqDxPbICL
	 xPJ2sjawYET8wLm2ENIDsa9nWwIMvyarTtPadl+MJ2smsCOZBVUQOiNUyeCPkQsXwj
	 GEyN/N9hGy1Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2scoBxz23Ah; Wed, 10 Aug 2022 10:31:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2DA382438;
	Wed, 10 Aug 2022 10:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2DA382438
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E83CD1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 10:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CED8240B99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 10:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CED8240B99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pWQKmp0vRB15 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 10:31:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D8E54056E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D8E54056E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 10:31:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="291051272"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="291051272"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 03:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664840514"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 10 Aug 2022 03:31:44 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 03:31:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 03:31:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 03:31:43 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 03:31:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WlZ4nQFnYtbjdZ5OADMNJCHTdDZCmHMfCseYJQP3EAGHVz+JFD0IUlK4t+llPk4APSQklu9MhQRg4ZDUHZcLytuZjXyBEU1RLluJOfJ1U1jr8bVJvwHRsaQf0K5bHh1bBUpQidh/vxd49jhzdgO+4kf6oYTH2rAa+oGUHp/6OcpxKTJlF+nkBnLNl5dPgIR5uMjeu1xz/4+kyvIFWSGbVoYPFYA8sHKZu22SroUtYX43kcqo27hvu2oHmPuleh6z89BcOAdQVxtHii6V27meomcRCbqQ9xA51j3Y7y/lWxfvCIpVR7bvlUDLcDc3njaPbRhDMKQRIvcncqJgeYxGCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=34/mBMa7jYS6WbgBCG6Cy7VJEuJorTvqFeBYooQy1aE=;
 b=caPqceCrcXvjTTm0Qp6YJFGRj5yV5RZotfrr4buvJCZfV6cnud4KOTCIDvqjNj5ippw2/x0+xKUCbQZ3/DPMAxAHb4/p0cgEbLz8mpF2S/RMZZzpNM+eQDIc9qeq/qQVarZNgfgCU0glBiC8Fa3lB81dY4NkpqFeV7lbXv2hOBb/vzDLA4drqes0lTvAg84AWw85EI84KBXCyM9qBhsCUYayuWcMkxUslusQuX9KkNtacNj8GlvdjTqKq3O4Rl+gO96gANXKjWhEVZzmjKh1wVJ03q8RA5+kASvxqAUDLM0pfYHShpknSl1+K4CcCZnF0TfE6Zsnic9jMnV2ndFpxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH2PR11MB4358.namprd11.prod.outlook.com (2603:10b6:610:39::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 10 Aug
 2022 10:31:40 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 10:31:40 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 3/6] ice: track Tx timestamp
 stats similar to other Intel drivers
Thread-Index: AQHYog71khrJnn9L2E2YAy+wn4qQw62oBH5g
Date: Wed, 10 Aug 2022 10:31:39 +0000
Message-ID: <BYAPR11MB33671BB1EEB967AB9DC74115FC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
 <20220727231602.1625980-4-jacob.e.keller@intel.com>
In-Reply-To: <20220727231602.1625980-4-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 579fbeef-bf23-4e81-cc89-08da7abb82ea
x-ms-traffictypediagnostic: CH2PR11MB4358:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 03oHAnaaSPHGxYrFblwfNFlClJUOoPYCx7lGbTb2S60t8JYo9IROjqovJDbA+vj2YIjjn3BXFmlpkdE4WSlJRux+jUy7PfGQB8NBHhKTU1he6UK1Ckmt2ihP1Y6i0ZAHHMBRXsLyugnUdZIEwNS01/+muIlCj5mCikkTvUBg/IN6USprU020KicPMDia1Q49dLYCdsLsAaR2MzXUNKPnEiEUxAz2yIUUdJQGJV92WojqmD4jWDpW1JH/wfbAvnakERfY8eukpSzGyXxRO3o92lS8IHbXbhO+zrOis2vz9W6+kUv/3O7c0XRKP60ohxfENA1dRZTZfKIcX6GKxjBW9D4BzPYWOLO5U35nXMUQ8vXyxpR1YvxHLjW4OI7iqd/f4dE3RyaYIDK1ssMlntwjURNNLz0ZhtE74/kadl8+P1SGMNhtfCbVv4Xq5gLtiqnzI1zzYdpgGv6t7CK2Q3jbeTTlw21D/T7MUGXdzZVRLZOpnbXY9VxKskGQgTGcdGsIeo7PVeAsSwFg8jvE30feNkxGTh8NfgJeM2X5rVBvlhoWnaLeTwcH7tveCffLSzulOa+uXu/liHhV2NsENJF8W/FXDipec8hapVQh1Aq5+gpERwH0pLYsS+2aXhCfU9A0I1rotImunRSK40uvQ+e1lQOyYugIRN1PWNjZWVZsR3sMgUGQcsG3Jcd7RfhFdC76PKIeb2F5H4MLFK6ZjmeBrCWVOKnEtXr8JDZ/ETH5mc3vSE12Cy3LAL9IqGfXZB13yjGPIKlgbcCLWKvNYj+iqk/aQm8LELONXMDIrpGadkZlgm67GJHJyLNV9ZVTNQjx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(396003)(346002)(376002)(366004)(122000001)(53546011)(186003)(83380400001)(38100700002)(5660300002)(52536014)(8936002)(76116006)(66946007)(66556008)(66476007)(9686003)(66446008)(64756008)(8676002)(55016003)(2906002)(478600001)(71200400001)(6506007)(26005)(41300700001)(316002)(7696005)(110136005)(82960400001)(86362001)(38070700005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8xMZA1nWeMpyr/Y8iQcZ5YbXSfcFGyjCTfNC5QrGg5EKziPoqeHuTr+Q0V3k?=
 =?us-ascii?Q?ZcVaBzN3MVcF+aN54YWysxXaZ4jre0FA3myFL0X136aSStpmsUBztHeBGOBr?=
 =?us-ascii?Q?QoMaiawF6JkOwT0Jd64MhE46+dE8HvsGDdbACfxEKqpSdgm9Qe1yGtYEO7C6?=
 =?us-ascii?Q?mmMIqQ911KLdmfQBoevhP6Ujfwd7olrtZurHu1q2jIR25eAB8XjDcNUMHukT?=
 =?us-ascii?Q?NGrHcMBjGsKS4KmDphKvDWWF09bWYJpezZT6DGG6svg1gtlU+lIg5warkdxd?=
 =?us-ascii?Q?bvnRQ+5jhAEwanI0YBKc6np5+2btwtnvO0N+l8SLl2c1UhiX6x5Sesr/Fawo?=
 =?us-ascii?Q?JWusLD2vm859Buq83/JxUudQWJ+tcSA+m3zrAlQV6sDhaX4Mc2EYED6xlCh0?=
 =?us-ascii?Q?LbcCd/oCEC920qzX9HNYTx9gm/fqb2v4Q2lwCnYJ+RDgaeQRQdk+MXW9FSos?=
 =?us-ascii?Q?Y93IoijMTxDWbxnpMvCe94lRxC0Dy4wuhO+vZB1No7WmJ2bxRfopx85P51TZ?=
 =?us-ascii?Q?EIwBbfsMDyjkaqSZ9GMfmYTrBLDOrZ/nyNByBKfRYK8Teid4MG/0NMsWIf7C?=
 =?us-ascii?Q?9m8Ff5QiXolnSep6WrzmRLo1fswXXwnaNbQVauUaN3uqc06q3oBh73lbP5fM?=
 =?us-ascii?Q?fsW9unolN0MPFYlcPPqpaSS0frvm2fb4ftOe0WcY2MeDUe9xm61kvYhWmcpC?=
 =?us-ascii?Q?X2TP6iQL+uK4CcndyDEezC/bTs45i2fr7qQo1ehgTGuXe0jbyqizAHwaK1+l?=
 =?us-ascii?Q?RBGxavXMIPJeLsQU7t0WEXAX/wL2mVgebwEcCs0sqpYEMVvSNF1EbbhtEABk?=
 =?us-ascii?Q?AMzi4QCZ+JVerymAtSW2FQV+dATUwMfpv2ikzJfGepNPMpG/sPhckkLzkswH?=
 =?us-ascii?Q?HkJenApojYtIf2ux/EoodjmIp6OMEsF+zxaQTq8Pg6aGaXVu+yrHugsoPjHr?=
 =?us-ascii?Q?uqzQtBTVtqaMsaXPOGHXBpOEmy7h4qcj2fuJt+X/GD3+a4XBsXTW5J4Ibkqa?=
 =?us-ascii?Q?2Mo5VFdZ0SW4tdfDQ0HYi+PNDW1RUErCC1NFzc3Z2XAEL7zlvwt26UBrq7h4?=
 =?us-ascii?Q?GSEB/VhtDUt7xiHUDokxOChbxINtsr4DOxduDkESxEKLHWyAgFCtYl+Z3It5?=
 =?us-ascii?Q?Wi1Tl5fhdh5Ubu8foI1hPgQWoJcR+5ATNlHbW9RV8SfTq1jAeW80OiFqFjv3?=
 =?us-ascii?Q?CnOgYfa3zP8TcCsYa5eOnrO5ZxcejS0pCuXH/Yx9Dydbrxi5+SBNJLTWlALw?=
 =?us-ascii?Q?H+la675u52iNx+bfyvOWWjTtPhqu+yfHxdPMEGfhAx8cD64SEQu0bwOimFQ5?=
 =?us-ascii?Q?iGEU49m6MFjhUfnIvuaTSNmk4CH0+wzf0obHbrsE3s99EKHP454pr6kg7BbD?=
 =?us-ascii?Q?NsBgQwCWi3hl16A6ZyDEbEzM1W67jJ2hfnbUWPkA9TGSuUI89NE9DV0tQUqd?=
 =?us-ascii?Q?aeJecPu++GI4x0A62bOcoSeie7N3wkkZBE0MoKEJo9moeFVUmijZTDHA+X5d?=
 =?us-ascii?Q?+1yVtzmh6hilTWEipQf/w9O169oFKwTTv8ZMSqf1IYSlBe5/jiUIdPYfNaxq?=
 =?us-ascii?Q?6+2whyOTKOS7FGr9lpcR3pQGT135e3Cclnci11AQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 579fbeef-bf23-4e81-cc89-08da7abb82ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 10:31:39.9932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +UoDwoMjcdsdf7Wd90C/M0t02yJDZuVsxbr506zTuEYYvCuRG3tzlN/r194yDglOHqZ3loOPRaAF7qMlFr/WEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4358
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660127505; x=1691663505;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kf9msmGSXITHAbU015Ec16SGnTF5epn7v1yEROFQKNM=;
 b=U/Yi7Hs+YSVcNd3JMG1tzKaNe5U/Lq7jqfiMw1hXBIE8ltYx6kCcHVSB
 elLyBW6j1f0IELcQTnTkzdbntPdhlRM35pZhmRUfEvqi4xPV3Sl4LBRMb
 Dlz+CJMqr8X3wAdPvO0FaLwY7yytTBvgDLQI0CMCVxEfMA67XPBJg7z5m
 /EPC7sMzG0xD5+agK1A815q5OewdE+VXWsJHKgW6+eLuECFcdzHnczTh/
 EQS4WZ4iD54ZbW6QQ2eoeTkLZ917ACtRB8fYCxByTRvy5WmknW8He14oj
 HTsOu7plJSBNCcEs4F3/cpMygwVeT965dk2fnYclSGbYdfDDDQUk9hUOQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U/Yi7Hs+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 3/6] ice: track Tx timestamp
 stats similar to other Intel drivers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, July 28, 2022 4:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v2 3/6] ice: track Tx timestamp stats
> similar to other Intel drivers
> 
> Several Intel networking drivers which support PTP track when Tx
> timestamps are skipped or when they timeout without a timestamp from
> hardware. The conditions which could cause these events are rare, but it can
> be useful to know when and how often they occur.
> 
> Implement similar statistics for the ice driver, tx_hwtstamp_skipped,
> tx_hwtstamp_timeouts, and tx_hwtstamp_flushed.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  3 +++
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 11 ++++++++---
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |  6 ++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c    |  4 +++-
>  4 files changed, 20 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
