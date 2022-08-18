Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85623598028
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 10:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D56454112C;
	Thu, 18 Aug 2022 08:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D56454112C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660811709;
	bh=byHJljaGQtLFmRy6DUivIyWm3rwiF2Zsg+3f9GOsiJg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JeLSAYnIIe6qKvxIHvzaXrLPlwqEgwavVlK7Jojm+3sWifxAIuJRcrK9jMWT8/UH+
	 mPZSta+sA/6B63qQkVzJYj7hugzM4wKu83XL0XhzWFD3LiKBlrsD47UNf9hfRep+HH
	 MOd99uaex01XUya5TzuAVJ4a6m6YpyOmCi060a+NkRDqT4WqOnIfH2GCB24CFCTxnl
	 JtdllkSg73CXTwzYneIB8h5reFVA2zSyLlSn35Fz4my5TgzKiXlFXi5xocnVMM6E6l
	 H+0R8yPFk4vNJzghyuaJpzEtpI5hTv7vFQyTLfhCWEdEOmmMV1873KGk5AjiT8qDds
	 qTjWuggGyvjOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBebLLOvXa6K; Thu, 18 Aug 2022 08:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0D4F40168;
	Thu, 18 Aug 2022 08:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0D4F40168
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C5771BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 08:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1541A61142
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 08:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1541A61142
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6oT9GWwo6cLa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Aug 2022 08:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4281960D5D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4281960D5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 08:35:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="272469969"
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="272469969"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 01:34:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="668008969"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 18 Aug 2022 01:34:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 01:34:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 01:34:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 01:34:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 01:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CX62RPhNoW9iL9PbrjDrpeZjD8jex8R/Qwke5Yb9pITnTX9298MqzbACLTrWwEbSG3miVC0CGmgsapwajgCh6lgNvlDmKRb9X+zi/1u+USBscjIUBiCQFucwmnBg4FKoMBptKPO3cil+/ek1jKbyn0V15dD8zxQCx/3nCQL53V+5OOpeNRqx3z/7nLeUBlZt8p1HJ1mIqsgUgc1iugg+Hmop6WvpaXSoXChYmuvzH/SPF+/2DkXLqIrssXL2f33iMcub7v3TrjYOI7sm6wZMyWSLhKZ5OCwVGLsA64rgI1QRrovLSpF1jdKLOWEYtyiaETMYrxrbwrk3kLUJ+ghbBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dYgABamwfmoTTkokjK6QZMxKMkGkdmOrr9vHXGYbteA=;
 b=DSdWtRmy/7Xfs7zZ0BS0uAD4LX/HBFg5Kpg0F5vXyX003Pm6cg3kOPg5kLCwHZxPR8PBktnExT5u2epdgrVOrVfzPYGtRE3OrzIw3NhqM9B4ckvu0WQaph7FTJ3l/CFr4YM7ghKY9eCpXATce6oomql936jfBqNQFD4j9Z6e1xX7JOe+46pHZo5QOFwIE33U9JIRkxiXcO9utWeGC2MbyEvFG7RxZniF2NgR+Sg051obJ6jAPFTHdhxqGxPGzSsCs6kKX1QGFm8yM4foRzIXonqG7T+n8S+WzYoWsg8RKu90S1ehBEJ9rsMfUNkd8qhxWhQAxjWL+4Wdf+41+Q6iUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN8PR11MB3570.namprd11.prod.outlook.com (2603:10b6:408:90::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Thu, 18 Aug
 2022 08:34:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Thu, 18 Aug 2022
 08:34:49 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Barsehyan, Mikael" <mikael.barsehyan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: Allow 100M speeds for
 some devices
Thread-Index: AQHYrljsIiP+NS/Zm0SylzB05ZB2O620XY8Q
Date: Thu, 18 Aug 2022 08:34:49 +0000
Message-ID: <BYAPR11MB3367399F53BD620524E850A9FC6D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220812143607.65332-1-mikael.barsehyan@intel.com>
In-Reply-To: <20220812143607.65332-1-mikael.barsehyan@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d4e96b1-e216-4f7a-64a1-08da80f4838c
x-ms-traffictypediagnostic: BN8PR11MB3570:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a1QWESXUeUzHMbDf8awVZZHJzU9X1JSFvIrEX0EFglEmbmg18BxlftR8mqTa9G+Pbt56eEuU6O1hGlIXmOmMl7KiV0v4uG+LvnqXBHl6XXnK/n1arcSWfNVPV+Cj3Q3zdX8iunRRxTWHdoLF+nEdyom8wquM+jQmrSCteyytTVtCWe9u6ir4yiofVKSBCejBKWHAuJiBC4F5sscyqIIg9t0DIOqMPd8X9BI/1V6ZLTZaOrVHpK9qwpk1NLRZCjWJGh5RNgLZW0NHGGvWgABFM+LN/lph06I9DpCeIjJdkTLCQY44C/pjYB6BHXbW4oUIQWZiOhY0+/wKui4OLwEDPgStMDilMvd3/Q38n4oQyohExDqYH4MXktb2OVcw0Y6BierNmbYOW9PbMA1MkKiApnYsd6t85Cur+CzxAb0xz6bW/2mcnv3e61BfhXHhYw64/iw7sKJk/lU191Ncp/kWVisRXLGbP25enR/PR7bQlJj51VarwTBA4eNZre7XMO/CAObqjhKHpBuu9e9UE5mtcpLbzMElZCdvjzKisaunROaQG1otSzDrt+prPCBwDrIVyU8PB7XnuK3vyJkaTSPeowYm1U2PfkC1kCNJ5PhSUvNTt+CZYaPHpOuQ4G5qqD94Fu0rqdzSXQRx6+xJ/yPqsLX2VLT6KT30uwoHNHruWf5XNIFWyBJ/R8XkBV3lRvL1WsjErG83bC4uB/rjOhAr6noPDAFE/caYLHTLYwDItn8y93kIi9b/46qBfeoPu6jxLVQhB426vUifMi6XMELC3A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(346002)(396003)(376002)(39860400002)(26005)(82960400001)(9686003)(122000001)(38100700002)(4744005)(53546011)(71200400001)(52536014)(8936002)(478600001)(33656002)(86362001)(7696005)(38070700005)(6506007)(5660300002)(66446008)(83380400001)(66556008)(2906002)(66946007)(8676002)(76116006)(66476007)(64756008)(55016003)(41300700001)(4326008)(316002)(107886003)(54906003)(110136005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?60g7CVYSdg3S8mWI7wY/rB3TYirkai2rrszP1W/Hc2eWyAB6szp07wDpUdDD?=
 =?us-ascii?Q?LbGmQ4AqhKhm78oHW4MgIm7kZpSOCiLriwApv/nm65UATH1N8D4XeVPN+Sfp?=
 =?us-ascii?Q?TJnKhb5jU4xmlT713xjKfxZsrzbAO8zYfbKWMtLMMgGnGp4FGjQNp647PAoA?=
 =?us-ascii?Q?qXkQRh9JWJO58yJQ4HzM7bMqH5UdDuaoP3U9w3ZLSr43VGNrYAZXDDFXohGd?=
 =?us-ascii?Q?/zHMbsqR6Gun6bQrik9cwmOVxpAIuMc+4tg7HpVBWwgIgclOn9kTdb0eVrLv?=
 =?us-ascii?Q?TFJevzNDyhn7DwIehWmaf+3q2KKjPPLT/csI9Z+whMpCW6bXrFT6/IXKNVbi?=
 =?us-ascii?Q?ajv5kT701w5Jp6OMJk5dvNmOMSO6qTZKpwiTsHXB/Dxq2d5xFAZD3B3OCdn6?=
 =?us-ascii?Q?DpCfLds5F9eyw7oW+SbhDmwCC5eP0s4QS/g55qYEE19MuSnufU6QkzEfAN/A?=
 =?us-ascii?Q?3NMy6ySnjkYfmvxZSc4uxgx4F3DQDqxJNeYWAy8tq5+LXw2tnUdOWPnwZSev?=
 =?us-ascii?Q?ADygDOWILMK594PkAOOUGFUapUBDI7tJYsPtWFoilgCtCigvyhcoj2A2KKwV?=
 =?us-ascii?Q?IsZHk5Bvh9FSN6S2r6LlIVc1JUWkCQGQumbl7dG0uj4wcj4weWGKmfMkroR5?=
 =?us-ascii?Q?RNRXS4c+mTfa1HOB6pVEAnRbRsq0w3jNYGNpQV+GvjzunQsT9Z/oO2jturTJ?=
 =?us-ascii?Q?b8hquIHnxTcKB6nLvLctWKqOt5fqofzdWK8l8Yl/Ib9BR5PQTzwcFNS/zTUx?=
 =?us-ascii?Q?/GT7kuIlUhrXtnNBNgd8Q1VMwNU889q8r6KF5/uqH2HVWV3k7/yGhxf4BSgU?=
 =?us-ascii?Q?mgLCHMg1xBII0GfPkYEzIBCjyy/iVkYxvZndrJvproyaItsRDwSOuoBnFTIN?=
 =?us-ascii?Q?/S2erJpAt/3HkDhpGl+Kc01kyq/fYlZsOacxp6P2Y7GG2Dtc7YerN3TFFzCy?=
 =?us-ascii?Q?+AvEGhE9IaDi7nX3tw/72tCdh/7gY0W4gEiAvMuIs51Ar6t0zduLpABF0nSt?=
 =?us-ascii?Q?NSMtasPIzuyAaAu3OOEI097R+2ajGYTrS/s+zUJb3QbDmi0Mc+BSanz3aeqs?=
 =?us-ascii?Q?IA2SlJgO7OuZEfpIVBneQEsvAiPnH7e1OZY++na/RlCpo8rYzSgcTaOmJRwD?=
 =?us-ascii?Q?moOkmS0sUYNysh56GyVE806TyRDOGJ7H8Iwk9RN2+ll7JBfzhwg/d3ERPu8q?=
 =?us-ascii?Q?iCE76MlBgP9UWPhWWAlzSBbRODTzwVzhr7e69XixJrexmwJOz0thku49SLH7?=
 =?us-ascii?Q?+zuY6f9c8ea/TNGBpS5X5Jjb+9zftJAGlBRygh9vYJQeQAHMoHutMhV0EiLV?=
 =?us-ascii?Q?CD9o/RcloEBdAMspXVALDwa1DV6/QQOpNErESLKjJ8AT5xQytBEu/wCUQOn8?=
 =?us-ascii?Q?wz4FfLU9BwfYYYoxSIwdA0ZC6l8pJMjIC914PGVf+fYkPNuA/R9HmGJ4NCay?=
 =?us-ascii?Q?tqJEeFwkKYmDD274B2S0EWXkuTw5Zsc6KOuiZ5P3VLTgGOnR5DxAeQlNPj0N?=
 =?us-ascii?Q?EITMmPx/bxApxzbkt0LR8N+VwExNIjponOPEKa8J+hHfZV7oEjMTsinBYut5?=
 =?us-ascii?Q?IBpdHm3edA/6pncAm/qgFuqD1VIYy1D9ZVwBvHQ1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4e96b1-e216-4f7a-64a1-08da80f4838c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2022 08:34:49.3425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 25/+XwtcAY90894ZzoPOaFTgix8LP9NlwwPk+KBdgbhFFQRXOXpuAX7lnEFqa0yhack8ttgn/W2bo4HTdyELmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660811703; x=1692347703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jx5mbWcgS/TyilCZPSA7b2Tr+8xyvI4KqW8upClQK1c=;
 b=XL9nOo3DLOByG618CsxRGHecowj9rpGTqQx05WZYlSzyhZ5AXxjOpgIs
 HnSelqgvwS4tpQ9CViblb9D22SFKYWPCJFmwIKwmh85vrBKF+Gh5lNF50
 MfsRTiFEnKlMJ9JA9b+P/U9g72AIR5QRd3WDLJKCkgd4UZPbLabNfbxW8
 9/HSsSl9p84eFdN4ctC/r5hKXihHs+l1sFxOjjykL7QxhndXC37pY/Rs5
 3mN5h+DsYu5Rx+CepSIoaKazYrRFBqE+K2J+HlTlKlKHXNTwXDplUxxZb
 jA53iMmSUkbOoz8L4XspdP5NL0EIIQoeF0t9kzLOse+wCHUdNykimfpIF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XL9nOo3D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Allow 100M speeds
 for some devices
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
Cc: "Cao, Chinh T" <chinh.t.cao@intel.com>, "Barsehyan,
 Mikael" <mikael.barsehyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mikael Barsehyan
> Sent: Friday, August 12, 2022 8:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Cao, Chinh T <chinh.t.cao@intel.com>; Barsehyan, Mikael
> <mikael.barsehyan@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] ice: Allow 100M speeds for
> some devices
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> For certain devices, 100M speeds are supported. Do not mask off 100M
> speed for these devices.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Co-developed-by: Chinh T Cao <chinh.t.cao@intel.com>
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> Signed-off-by: Mikael Barsehyan <mikael.barsehyan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  | 20
> ++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_common.h  |
> 1 +  drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++----
>  3 files changed, 28 insertions(+), 4 deletions(-)
> 

Tested-by: Kavya AV <kavyax.av@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
