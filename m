Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C07B76AC602
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Mar 2023 16:56:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE89281747;
	Mon,  6 Mar 2023 15:56:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE89281747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678118197;
	bh=Y6rW6PVV1G5veXO1Fc6TocCyafGr8krF1MP3M2tpSXQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QeCm7/DhvJKeFaINFNFhehSBKqi1I5ONjRMBxv67LjxQu12CPshnMA6vUreah+ZOd
	 MVLKxw6AgNgCW8NQrnLieYihEaVgwdX+xHmtq0KUoQSxx7Ymw0xZSVquDzgGQMIWpx
	 P/APT2bXPNKcKgHox62np0jy8UvNQefBM1T4IJIpPJKLTK90gNRmhjeabMrOa0MJE1
	 w/fKdPN2186TQ7lDA8fM7h47iN7GOS5nlG+vTdSjO7Dvg6G3/NmdPepn73EWI5RTp1
	 dVdqnw1RbUEO2wx1D5JkHlej8t1Pq9ckdLTrG8hbjRlIsVRy6ZZKoprmJ4SwQYU95w
	 pRVzwfhmYNCCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPWkqPZsmFf0; Mon,  6 Mar 2023 15:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B693680FA2;
	Mon,  6 Mar 2023 15:56:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B693680FA2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AEB441BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 11:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87BBE409B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 11:03:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87BBE409B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wx9U2xfMSlTx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Mar 2023 11:03:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C5FF405A2
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C5FF405A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Mar 2023 11:03:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="334241553"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="334241553"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 03:03:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="850253017"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="850253017"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 06 Mar 2023 03:03:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 03:03:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 03:03:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 03:03:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iptj68QN7nWQSRRnthLSFiQU79fZIY3ExfgC/1qr5wYXvKZPfUnncwDVgVZlFrAUnlb0fH4hhs7aCVdSZUhOj6IAQY1UyAl5KKp6zqxkUOVBIrL5riE2qM9w36Awislt2jYhedqNvem6iyaz6GFj+rGLNvUhVCjFf5uQbzI++0giaK4Z117FavI97o9S6pNI+cDuMC1kRlfjWB871neHX90loWeCI4MLuMyArEIYX9ky/PaH+hY3YsmNn0wqzSb9xskagqipFZp1qN3Mpt2fuXKOYeOH3/t5kSU+38iUlsa0y7XXua/TOCC+hi/YBVA3p5MjuSGN/wvdMAeum4j+qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kfCoboe/uAzVmX3LGYhEkUWwJQVzQ8ZbS/57R7oDtvA=;
 b=F+1xpATVffDmR3y5fn9WNqfaURyvuG+silMaukCJE6pTwKSqtMiEyG/W6fAnGQxTmfDGE0yjsFDPBdgOv7sOiC6yleT1L24pnD3E2T3DsuZYbqhHGmppbysoU/kxExHb0Mibhg/qcjZtdJnsmvSxpPEaAwO7aymNe4eG4oD3lmbNsWHMQ14Qk/8VFLsgAWNflrG1yyvvRECJ7sfOGPM19+PXEQDMefwtBFUHNT/V1EXd72gPtYJlwFEi1c3Jw3TBjDopUZzgvhH0GwCN0rGi9fZO8pu3A4TnEHwKMuKaUPW3lVvyaGqHQNIplxZOmBgoQ1gMw1LiJbWykRdX/cv5YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by CH0PR11MB5476.namprd11.prod.outlook.com (2603:10b6:610:d7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 11:03:18 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%8]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 11:03:18 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
Thread-Index: AQHZQXI3cXxfRjv1A0280t1Bl8lZ167tsK1g
Date: Mon, 6 Mar 2023 11:03:18 +0000
Message-ID: <BN9PR11MB5354D0F178ECE5F14781175180B69@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
In-Reply-To: <20230215191757.1826508-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|CH0PR11MB5476:EE_
x-ms-office365-filtering-correlation-id: c62187e8-8daa-402d-0fc9-08db1e326435
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oM7SRy9YpB+xtlrXplOYQ8+zUQCBWK3ADqhcwU9702Oc51VFber73vOsM6czFcrLryz+eyFMBpZCNzeWTJMnqdCOJPrutFmzwvfLf+/U1k/hs5Zw17Xr8NGIo+OJTxc74iuPJMVmMrKYne4ei0qz/AwvcJqnwyVNid/s8h+heEJ1j7eiqj6EhR9fvcl0rqNUinI+6s2lAiILMEZv3HawQ4ruic4cJAZwrJp0dFCW5b8CzeKn3kQ5PZaheb8x9yqNUntNgCjzPh+d7E0c5Nl14QWVAIbI+RoP7J/aWJr88aRSj7/Jy79Hu/3Z5Z9bUDMJPPrruRAnAUARP47cqjjRiSxY7JZqdIs2Z+KudYHmfySuoAmTZbmFUo/qWUCjfjwNYQyDu4V905LXNkuO/IftuJTF4pcDuEAq6MDtdPt1wbwNg9QGoKowX9sjxkHI9ICqDX9ExYoYt14bFbvPL4XAsRuXDF66gLF77+Uttdm5mXLyoDbZB/39aAoo7YD31oc4IjHOIKqRZX2MRmqxTY31CttTuhqKbR57wFD2x76RsDyEzHp0d5O9DJkd+3nF2yQuBJl6jI5rkTo7njkY/OBXwUOuzUIAjP4l7YXFamvyW6bRNH6tuNC1KtAse9e6HOZH3qVgoX1hSxrTMp1NU+CnVuj70YCxa78T7keFa3n5G3eYqLe5rEUjURuAuL06PtbF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(346002)(136003)(396003)(376002)(451199018)(8936002)(5660300002)(52536014)(66446008)(76116006)(66476007)(66556008)(66946007)(2906002)(8676002)(64756008)(4326008)(110136005)(316002)(478600001)(71200400001)(7696005)(6506007)(966005)(53546011)(26005)(41300700001)(122000001)(86362001)(33656002)(82960400001)(83380400001)(38070700005)(186003)(55016003)(38100700002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vtvWVwwz32N76CPjpA1+gKqdkhqOz7fJbLNv0cw6wVTwkuCF5VX9llhtsZ+L?=
 =?us-ascii?Q?qkwzFdjwW5+nsImN128vJg2lcd92b7QJWMK3CW86gSirC9dRxk7hFb+GFnhN?=
 =?us-ascii?Q?JBRDzLAzcpdeVyNBzfmq1tROrmOa26YntxwRWurEiOf5yZ5XUkJrHmaDO5Aa?=
 =?us-ascii?Q?o3EussKiPvI7z8rXwdjTtaw7kEvM7XADxB7K2hGUpdfZ0i9+F4CEirS7ukyb?=
 =?us-ascii?Q?uwAZksk50awz86X8VQiyno8jUcQSptqADrDrbTjKg4dDjpVUuoOlvoM32ndq?=
 =?us-ascii?Q?FjbuFee9u1n7MYHhTwlAaesi3cisXBfhcU23sMUA4s2zpkLVWOgONcVsSEEO?=
 =?us-ascii?Q?vvkJfrruuZRLmBXQnBge2S1s2uXiOTGIZFfDwoefjtj+lFvSw7RNILNrLy6S?=
 =?us-ascii?Q?3sPtewH15B9sUFOSyiZH2LbRAc0ftXTFJ7Xcxh5iXzYu+Kl36Csw1U3ci5gq?=
 =?us-ascii?Q?vQDz4/8hSjI8vRS8xuLS6n9ov/c0DFVjivv6P3fw3cXarCVL4upWgVbZGits?=
 =?us-ascii?Q?y/xL9jlFRn9JZSQtZJv4aIiRecxN/znCAnHZWRnA56vtM0jRb+6HkNNqwvVK?=
 =?us-ascii?Q?97x4c/pqm5tHnnjtnJhNDvwRz8GWP9rmwUeJfPlldFkg+bwnGcj11729XwAr?=
 =?us-ascii?Q?uED+9CtFW6lbdvhVM7ZHcFWpw55VC1461rbG2HMWhrDxnO0i6S4MRP/z4cny?=
 =?us-ascii?Q?PbGxRIwBy0ee6IQB2SIvvh/5NnuwwNYBSa1uaKxad1lRA+DM8p1KFeNPRiYv?=
 =?us-ascii?Q?ZTUu2uKBpFjkrtrkTclmrHE7t/GwmMc91SMX6esirCLqXGn2Z/ubWSYWh+g+?=
 =?us-ascii?Q?w288gPtPh2sa7i+aItLj8eYYGuAnBQqaQS2yl01sebl07+/xZE+B8zmzXCUg?=
 =?us-ascii?Q?mPH27idVoiJvbYhe5Q85TcB1WTmQ+m4iAxhmC/1MWc6EYFQnpSNQW3oT6Il+?=
 =?us-ascii?Q?+XEqsn9WGitcujKbxNngqLYmBn8/GJ8RCLllMhQ0aR2TV1ew4D+49HO5iAaW?=
 =?us-ascii?Q?UW5c3rBiwWCuwXVc8J3ExHfInSikQpCxUzgZcI1xEhb0UhwBcpg36vf025AW?=
 =?us-ascii?Q?oMfdaqdcFoCNvHov+JsLK4l0qXlKSmtvL/q9TXtzGtAg9lHeugqjwrSoKT4f?=
 =?us-ascii?Q?9j1oIsVZ31RK3NLxesOnzI06+J6llzqT3gpeL0Wj8/dSuD7xHyNXChPMANwR?=
 =?us-ascii?Q?xrk7HiuTt7yB66TIrad4/L0jLiFbElJMlA4TC7g7q47e25Lm5mOpM7mxSxV9?=
 =?us-ascii?Q?JtfEEicHI+0TAA38KND2KaBYP4PHMd2ZS2uk8aQ74NUctYWRbXe63ZiwS2aw?=
 =?us-ascii?Q?EuGim85WipeXkIxEwkQzdBCu9bmZSNppoigo3OmztokJWdOoqni31m3KEN0Y?=
 =?us-ascii?Q?kXwJLFxKB7twTaDb33k519kVduQ8SPDoYZg0nJE5O9zD0FU/+kmEOiCbxXPx?=
 =?us-ascii?Q?4TYZpujpB7kk7MrxD2YXnbiwitW6UFhbqLYWDAkgegC0PHtQlmw2S/83WHcx?=
 =?us-ascii?Q?YEkyBIcpnid9/0Pyvi0CwoZfS6npz0EyswEJKZGPlofLU3IGM6QUoJ17R/oc?=
 =?us-ascii?Q?V/bqcyxhD3yojC5sGdQvGq1gUFp1D32QJf1RoBLH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c62187e8-8daa-402d-0fc9-08db1e326435
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 11:03:18.1141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gGskj3e3jgqlpHJXCKiNzAaUWEwSlblKIBfJ9yusNwxhgamfRqVEvYpP7VIY/EXOiXl5OLcH7gjrpbxkRzkw8Kdj330T8fl14TLcF6m49Yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5476
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 06 Mar 2023 15:56:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678100601; x=1709636601;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TrWqQYCUzclq51Rzb3eNVYVgBWUh/ntbvmJDD6QrVV4=;
 b=FA8GRZAwX7bakGBpbdV8HqQVn4F6BkEUaVvtGI6dircLUu99/QgP4cqr
 Jn4fZth+kb/KoRU8Zyo1TFJpPo5VNp2g8b1kbkoNUgFf6/NwdiovaMUAH
 PzKixe3bhn7x7FlBSFSCVcPbeN8VZXlDCpNIK4YkhGF1d+denXwttNo7F
 54Hj/ZAGWtpcXLWH6WkRBtM4banLwBriRKhxdtRE6zv3FppA1ijtdlEEb
 /o1Sgd1E/Qy3pkw4Du35im5sn2I5ijnBmQiIsPuwYBTbXXCdr3pNl63W8
 Hw9NLScnswHszEB4pmoEAqhVGvAZrhKpveHdHTG2iY/2b4dwhB8q4g9vB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FA8GRZAw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ertman, David M
> Sent: Thursday, February 16, 2023 12:48 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing auxiliary plug/unplug under RTNL lock
>
> RDMA is not supported in ice on a PF that has been added to a bonded interface. To enforce this, when an interface enters a bond, we unplug the auxiliary device that supports RDMA functionality.  This unplug currently happens in the context of handling the netdev bonding event.
> This event is sent to the ice driver under RTNL context.  This is causing a deadlock where the RDMA driver is waiting for the RTNL lock to complete the removal.
>
> Defer the unplugging/re-plugging of the auxiliary device to the service task so that it is not performed under the RTNL lock context.
>
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-0487c95e395d@leemhuis.info/
> Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
> Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> Changes since v1:
> Reversed order of bit processing in ice_service_task for PLUG/UNPLUG
>
>  drivers/net/ethernet/intel/ice/ice.h      | 14 +++++---------
>  drivers/net/ethernet/intel/ice/ice_main.c | 19 ++++++++-----------
>  2 files changed, 13 insertions(+), 20 deletions(-)
>
Tested-by: Arpana Arland < arpanax.arland@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
