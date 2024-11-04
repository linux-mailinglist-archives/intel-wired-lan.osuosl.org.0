Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F99BB1BB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 11:54:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5110606E1;
	Mon,  4 Nov 2024 10:54:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jA3eVxg4ZKUc; Mon,  4 Nov 2024 10:54:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 150BE606E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730717696;
	bh=gT1Oitr5AEBQGqoWpj1uull2b8Xs+pJgyaqSu/5pxZU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vXXiQ+RR2hVskAikEtYqrqeCu9ia6MUk5PdKd49y0t6QX6YpWQPgdtX0NEqnkOMzN
	 ayt9rBhiO04d7e4Zhg0mDJgfPUXtjrLkM3F8GOoSfy6DyKsBgkYtMAvgBForajhTcC
	 XZLtUKBHJASkKQnsrAXkwYKXKpShkh7O5EF4zsFJgdjvB48MSwTUFDPSLlZUttAQMo
	 4+rZFCaoaHo3Fif1ztClZy/28+AUodWuORol00lOc0bW2YIIv7jGl3RtGi19LdOzO5
	 5f01s9nKCuiNXvjPoDxBzEUb/8AHzo18iAn80VU3bH2sRWkWamnoONuusIlogCtCx5
	 2kgL8EPI8kDgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 150BE606E3;
	Mon,  4 Nov 2024 10:54:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 265B8B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 050E64039D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nUvukxVzsfLx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 10:54:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10F2E403A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10F2E403A6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10F2E403A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:54:53 +0000 (UTC)
X-CSE-ConnectionGUID: rwnKQmwbShO/6EZwJa116g==
X-CSE-MsgGUID: WRdjKMDYT/qZH6RTU2S7uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30573049"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30573049"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:54:54 -0800
X-CSE-ConnectionGUID: RuqwrhC3QLC4BPfXUDiuJg==
X-CSE-MsgGUID: QbZsCvA8SbmnMVcODx9pdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83149236"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:54:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:54:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:54:52 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:54:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xmEj3B8Ldv8M2AZJBZNcCGwmTAFa8RGW92/VxdKYUlMKR3qx3LdPtkZLIezn2Iety0G7OP5avarmvu+0zHlp9qUhkUFMeIYFgMkv2MYPviQx7/nALb3oT7zR3e6L2JKuQ0qJSRbIeA11ZcaZl11vJFDA7p6itLW/4Nm3nPhg5veFWfQE6ff6XJR8DmiQ29tVDBrt0cTFrTtvRxoJEXKJccQctyCi6zNFXlgEigOaRDYH2oGbEwBxNaUKkbnvgp0PcRJXgWIGNKe9uvBVaA3lkXrHnsJWzheiQRtlP3ds/8SudSqz2c2zA4Tw8mzMo3rd6GhW3VZSKwGrPo6v77gzHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gT1Oitr5AEBQGqoWpj1uull2b8Xs+pJgyaqSu/5pxZU=;
 b=OtbecIYw197Aa20MBhM42y1BUa9Y2BN6YjfJw2dwY4xrg+DB7Oru1vM31ANkHbHnWN0VJo005Mb26K3cL0nOXQctO0GJnWLA9JlpuPA7UKD5eu7Nr2J1sn4MxUycGg5CeNxvrr+I7/B13huHANyzi9qLJ9mrRF6zDLzoQJwA5KZIIgmpsl93DEdK4UFLR+p2Nr/J15fRTjNdfDSa/lKgaNAOH3pw0sZBDnFjqaZZI4WwD6xbLbjacqoAWc96ZeRBrbn4i1Mqwz0zDAdycu9opL8LlBOe60ltjcdyVcb8XHdPJARsSf91ToKZLHT7DkIsD+nzGl1kKmQtW1T4p7TjKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by IA0PR11MB7791.namprd11.prod.outlook.com (2603:10b6:208:401::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 10:54:50 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:54:50 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 05/14] iavf: negotiate PTP
 capabilities
Thread-Index: AQHbJEUfvpIA2SM/UkeC/Y0iRktuqbKnB1Bg
Date: Mon, 4 Nov 2024 10:54:50 +0000
Message-ID: <SJ0PR11MB58651811EC9A9DE1F61A37D78F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-6-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-6-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|IA0PR11MB7791:EE_
x-ms-office365-filtering-correlation-id: 16de8116-03ed-46b7-bbd9-08dcfcbf1aef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?fQH3g4QDhvTloZoCrsj83GNYSpPbTdx2i0yJipyJDIqkSwZcu+u7LbCwNp13?=
 =?us-ascii?Q?CBerthf8F/5TgSQedcT2dtW4v7Lex3PmHsIdpKX2xknEX6M6ts6wQBciE9Bo?=
 =?us-ascii?Q?4y1Sc2V2c4MuAi/kf3THpY9Uh30ZbeQ177lUlip5Vbsv7BJB7YNl6lNNnnPC?=
 =?us-ascii?Q?dr1SDdNv1tXEHG7cxobRka8GuGZ9fcWLTYDauid/+sUH7Hlukc3GxgVhNMj5?=
 =?us-ascii?Q?B7mqWZWA2NtXFChi0YCKMpvTDs3l3JUYUWtLJHnVqiBG3edfTBPUCn77yf8P?=
 =?us-ascii?Q?uNiYaLm6oPKxqiBmnvqR8vzpAWGph5Bmj5XJ16rKrNJ0f26/fs8FGn7X8HNu?=
 =?us-ascii?Q?IVrNVZHrcYoh9/jUt4+04nizFOVXbAaUOJn1vNeNOYDBtjeuefQy9BqaMu/6?=
 =?us-ascii?Q?RwCTcFjPq/prc7CCo1OaeBy53iV4OOvoC2Iek2ziH8e+MOQn9l1zL1FFdwus?=
 =?us-ascii?Q?pPabyJuepDm2T/mMnxDLHSDGVqOP6MpopL5wVG47lm687Mstb2botM+/xSa4?=
 =?us-ascii?Q?eNRfo+WLtZUPS4dCCgDcIK9k6/L7btU27rh72gYOtqlUQVC7dhTz2u5x72Lw?=
 =?us-ascii?Q?0Rq/+a31eDKluPSXbuBPQvRf4/9UeIBc7VSEZWQIw1NCMiBVNetm67H7en5F?=
 =?us-ascii?Q?nDctcV1lZ8/nuPUd1ylVYFJpkXNqlkiveaotukh4yIYaFR29u+U1EBJRzwgV?=
 =?us-ascii?Q?DqqcroBJb34bG9BcMd0+/zkRL8gHdFg9COS8HdOOAVmq3C9C1vO6//jWgk3b?=
 =?us-ascii?Q?rZceD/9GnVkvSWQ3Gqd8DiCV9eb8iC2asVZP3KN6hWL7sMIPi8TxRIwyhXRB?=
 =?us-ascii?Q?2m3quPyQwX2aAG+7ithCAf+cloB6fJkUkQvXNMb3K4GWlHGqhdy3FanhRM3V?=
 =?us-ascii?Q?kjLrz5SoFtp7LRZFXHZRKqhLSAAB1IwhEJKJ8a89FPTd75p1jI1Lw+gvIoPs?=
 =?us-ascii?Q?dxu862SyGOqviO8FsF372h6t5MsYoiilfMYXmBhARWuZ7pON1PCiH8bnZSF5?=
 =?us-ascii?Q?1lCHWPt75/THavoZEFRj7P/rBXLACB9EI+j21SaLBfHSuBlVpuN/Iss0chjV?=
 =?us-ascii?Q?++FdnRlKA6rDbgbNBFAuW3Qe/vweg++w5cI1te85BoLabX1Vq7cPAma8wJi9?=
 =?us-ascii?Q?XISdIWj5yhcxUH5P9EWPG3oapQqETMixqDP1LSKiF84aduk/786I6ni4o2gp?=
 =?us-ascii?Q?ExMvnCdX4IojRfRAda91NIT14eanSCYyhrwdZ9RykNXdN3MWsDqHTaT2BwMf?=
 =?us-ascii?Q?r/DvtOQhO6t1E1UGdjRUQBvwvjK1BB7qwYulqfbfiYH2vCk5t3evyEydH0kY?=
 =?us-ascii?Q?K7R0jLE645NgsS2zmIbOWzQOWgI5mKLV0Aw5uRwFGTJ1VnOnM+GcLg0L8HGg?=
 =?us-ascii?Q?MQ+hOhE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yvDHzQYTsC1UbSi+MwQiaP0pNgDaNQIEDVgvkcJKWhRft/1UH7LRYwr+8Ee9?=
 =?us-ascii?Q?ELGuh/XoKbQIPJMkTMMdm8RVk48ut+BdexJR2F0z96mBmiGd/gB8UDlB9Gy0?=
 =?us-ascii?Q?cwFBJ/qM9oF/4HnundAjEV8R1TiTTIxmqmlJHG9fyrSFZ/YRw1zOA2FUa+gs?=
 =?us-ascii?Q?iWHoRwQkxC5d7zrllKXPgZGefd2L4Bi86wnCN1ThBr9ju2vmMAkjqWqBzxBD?=
 =?us-ascii?Q?B73ijo6kCAWWo8bhBaA6qZqdUO6DXmAPqLuMe5vr3Q1ifNmIA5QNJTuo/s41?=
 =?us-ascii?Q?bSZI+aAWLktXT+IdxKSftJLcjqsSg8xgT3yzeeLVg3GokvoZ3tg8v5lYsVhJ?=
 =?us-ascii?Q?um94JH0ekBf0m5wOozcPiBuIXuZz4eKpMnBczWkUh8W8uN1axUgQtb0ldY8P?=
 =?us-ascii?Q?QTlOYVV9nZgzlHeDvwHw4mGAm+cJFO1XjNrYChK1yhQYSYtBTCtOf8TJVqE4?=
 =?us-ascii?Q?UUfi3y9TkEUCOrYhOmokZsLGwOyC5HZVF3XgUu2rGfEGzpWMhI9jUy+vwc25?=
 =?us-ascii?Q?vqC4CtKd4EPvUp43mzB84feM8YM0q+QAAsLpfOdkXteK9C4iPFMgG3A9AlTo?=
 =?us-ascii?Q?d+Ret3uGeHQAY1jMBuZ5gyVhhIdBgxwn5HZAujJoWivx90ZiDf7zZVeDXFoo?=
 =?us-ascii?Q?ZrizYH2JZ+SLztK/0EGXd8SlQiRxJkGD5OpfkF4iAfppSBapMWYdJQaSWL7r?=
 =?us-ascii?Q?pPreemhTuezEDVWyyn8UJ3giJk87fhKLrn7lJ+V91h26vNxRl5yDnqInpV3a?=
 =?us-ascii?Q?+v+VyTpJk5rLyGUGy+vjMRfwg84R6MjGAdiDbe0hmkWDsUkObSpOPqrPfqNS?=
 =?us-ascii?Q?FsPMZPJgeFv3v2P5ImTduMwfi8yfxHku5kgXNUVWysLH+pDPxjqdPEwXlC5z?=
 =?us-ascii?Q?Gm86/fx2xB2/jH7NBNKMNOmryDWGaa5gSPuYi59zx0gFbH1sd48jbYKd9MRm?=
 =?us-ascii?Q?DPO9iRpE3cUR1/h0RiSEfYeUwZL6VWlOSvjUcwuK78I0LeghlWbb0kg7a3mi?=
 =?us-ascii?Q?hqLZs46wyVXN3mpU7SAtQp66s1c2/7aoJTM4Hz+zfU5oYXfkyldJWOLcTDKN?=
 =?us-ascii?Q?PIEYSuKTZy5BCA8kRxO9Rb6EFzLOHeNdoHT++3+ELFV4wXGxuusFWqWMfzGV?=
 =?us-ascii?Q?TAKWcaq7uyU4k3/wfnkt+SeYcDj8V7bw9SimqhRnVqs+TxFRIU7srwGJRDsb?=
 =?us-ascii?Q?TEVFxE8n25e90qzSnKWfz98Vn4YAVO9sRbx8ElyesvMwl8DJhQpnS1daRakA?=
 =?us-ascii?Q?0e2RkaXV05J0Vz1PZ2aqRA4UABJ/WjqJNDgT8bO1TITPDwKm7mVe4scjZLCN?=
 =?us-ascii?Q?29ZRPJanRVsR6wUZHZMSbKMXyZ3ELG1bibvAhJieH6l+0OrNXoW1F/TqiJ9B?=
 =?us-ascii?Q?uyoFidw/D97BSm1dRV4QKd5cM+KVzU6nbLZXl86R45/Qx2RZLrMOdwersU1G?=
 =?us-ascii?Q?bKaa45p+4eWYF4pp93sf29bOSe9P5P/ijw46wJTDtbYMYJXc2lZlTLEJz+YI?=
 =?us-ascii?Q?C46NTztFA5qkod1eQOFuZYFm77DdzI5G5xXxDqaALHLqB/dweNfcTxci9Qbo?=
 =?us-ascii?Q?TXyFrxGM53R21HZt/Z+jnfCSDs0Xaf4Pcg6iAHdtBYJpMD3LGvLo3mQgMWJm?=
 =?us-ascii?Q?vQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16de8116-03ed-46b7-bbd9-08dcfcbf1aef
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:54:50.0513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RizdNysmsbEuqEo40lDlbfLdDui+oYtXV/xCOPEW2lcXn3EpR1cwL5OUUPcacOFnydD8DzfT+X39tyPvehVQhPVeKUNIqyGIHE/6sdtQ1L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730717694; x=1762253694;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gT1Oitr5AEBQGqoWpj1uull2b8Xs+pJgyaqSu/5pxZU=;
 b=KLawpRMAyUOluR8pb5oIUB6zwxX2CAhy9qI1IOEUdYCmK488tlVK+0RX
 gApUM7BgxhkjBYEGqpj0JaeFJmuQiHJue3ki27MdaFGscZUDINaAEqSOo
 SwbOl1+U+Yaj5HD5KcUl60rXExAvP2KrlRpJa2ahjvEnrXPuWhAXO/zfe
 WVDN1hByzkf15rxl96IOt7oM8rYfCVFfCvPKfEuIr/vAZGAgPrJ78d7ze
 mT2YfXSaOM1CbTtY2dsozfgB1Yueh2I0RZHis62oj+26wwCjRKEYKQFZs
 aV37neJ73st8xm1/szqwsHZkIN0B3Sdpj3Rn3l18hTtqmNZNAnNLFoy9y
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KLawpRMA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 05/14] iavf: negotiate
 PTP capabilities
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; D=
rewek,
> Wojciech <wojciech.drewek@intel.com>; Simon Horman <horms@kernel.org>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 05/14] iavf: negotiate PTP
> capabilities
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Add a new extended capabilities negotiation to exchange information from =
the PF
> about what PTP capabilities are supported by this VF. This requires sendi=
ng a
> VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting for the response from
> the PF. Handle this early on during the VF initialization.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

