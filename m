Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E55589D20
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 15:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A46B40B59;
	Thu,  4 Aug 2022 13:57:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A46B40B59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659621453;
	bh=jXol2/Q75P6xpTC/qB9TcPrzcoBrZdy9eFETUjq5PA8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X7gfBIRGgTDEmS5Q61CQb/ATC1bhCGKBocY4lcT16VL9HBBOboqJGSXgJl39uhCjZ
	 lNDbMbo3TqhvcXNQLDgFzSYQNN9IYyhKUvDj9BHMIbOfIPAVUBmxwoQ6OlWR7/Le5Q
	 /7GQy3P6Trb0BccJ+psvMt/ppAXevExNUCsv01mbByaGBghVigcAAc/6+CYRrCO0gO
	 EEassVJTm5T6LdGdphb0Y3QcMCqUhKx5CUDK8mgclk/OwJH5wkGCca/Bqzy2wjf83x
	 5flGUPQpQoUqufw9hS6Oraw9xfWZr8a1hEGd0+8+a4d7Pdu74XI5kpSM4wHnC+Ky1u
	 mTvkfgLPz/QmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UgnY6lglgPE; Thu,  4 Aug 2022 13:57:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2753B40AFA;
	Thu,  4 Aug 2022 13:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2753B40AFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5D431BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 06:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8558640383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 06:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8558640383
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1AWkWqVUKYQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 06:02:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97F4840160
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97F4840160
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 06:02:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="270228640"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="270228640"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 23:02:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="848841253"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2022 23:02:27 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 23:02:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 23:02:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 23:02:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 23:02:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SYdIzeQjdcQaYAPK9eFTRBr3bXrp53jpK2aRt4U4FnMDYEYofgQjQTWGYQK8XOOuf8xZ6MRHADrehBglLnQoJepvMYtqMxnGW8ONc0e5tmAwKqUiNuJqmXVmF0RFw80IN5VhbYGTJIvKKGgowfeRrHomSiIdyqO2f3xD6qCjv8+aGlPVdBBLLY5We+xgFGV9EVHbRM7vg4YgXi1gWcmqAoBFFPZLYvo8aP+skt7IKdS9vq7NCjd+HEjeIpBY4dzow87MJM/iKa1WAYVtllLX49hrnkwRhEZBAmO0ff4i4AsRrCYPui8m0O2YjDuFTEcp2Tro4amxdu7JsslaAuQhZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kNaFGgZj1qYooxdqGNHS/uUF2WYUZD1VJrCVOqY8MnY=;
 b=GhNOAYRTPce8WtUAIsTntlA3mxA9FmGXWCluy3vLTw2BS6YOcwowtYOYwa0HcikgJxioYJfIjca5gAhjmrVl4EPXJxwNpOEJbfukU6PphJ4378RbR9UYb0EBIcJNeFFxpT+gioY9pojxtcxs/UnkoArTvSVPlauVxle2ekvynsyilYkTuyVftPWVpD6YpzpsCY6iEmPGuQPATjMTXgtfyTr4WUfgCMM0Rof0+H8dxAFcYE1upAjalENK3xmiPNvyCwlelU745K0vtbWJvINlj7abMhkS8rim3dcQM4GvIp+GpYsThK5/clslZzcdTZuQuzEAjJsOHVjZnlUBy32hIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH2PR11MB4503.namprd11.prod.outlook.com (2603:10b6:610:46::15)
 by BYAPR11MB3846.namprd11.prod.outlook.com (2603:10b6:a03:f5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.12; Thu, 4 Aug
 2022 06:02:19 +0000
Received: from CH2PR11MB4503.namprd11.prod.outlook.com
 ([fe80::8c77:f00e:8ea1:4e87]) by CH2PR11MB4503.namprd11.prod.outlook.com
 ([fe80::8c77:f00e:8ea1:4e87%7]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 06:02:18 +0000
From: "Mordi, Sadashiv" <sadashiv.mordi@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: prevent low-core machines
 crashing on DCB config
Thread-Index: AQHYYXPKj9F2YtnO3kqPoNdpM/JNwa2eynUQ
Date: Thu, 4 Aug 2022 06:02:18 +0000
Message-ID: <CH2PR11MB4503CE05C4B69906C92DA83E8F9F9@CH2PR11MB4503.namprd11.prod.outlook.com>
References: <20220506180410.309280-1-david.m.ertman@intel.com>
In-Reply-To: <20220506180410.309280-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7915312-ebca-4b57-7d60-08da75dee342
x-ms-traffictypediagnostic: BYAPR11MB3846:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UI1jje94CnFuJo2Znro91zazG2WmCRVw2nSTzYoCJSK/jwWI41nMGyWByr7EcPSiRTUG7XB0yI1VWSiAJbA/2n7Z7mqj0GQPeaKVK9JiY5yjqYrylyqLOw/azLfEXUQGzojAeW8VS/5eQCkGapyJpEuI5V3ge9DdgA3z6xTXXIrEBdNMApoMoLKqvRAjuGXoY5cqfDOkx4diRdlFMhrckyRj7XakHOCQuMJoieLxtw/DinbesPpZKabNZuWxs7y0Zimgw9ANkdWP0BQchD1mrOuS/nR+xIKEk4kUa5QzZOZGcyxv4PBzmWy/aAiAk1m07D3qXW2g42x7hUQlFiEVM2LFQ4zca4qgoPz5db0ogXd+KDXa11JRNVM7fFXuAweMZ9tL6BeCRncD8TrdHAWweDHRmDc7T0zpdFz4wKDvVljgFnGTxfNplOGNLbDmo7sQxzBtEp1aXxB7y8Sh776/L/z1pp7cTcx6AeT9EsewNCKH6EzFaOzjFPDa5Pr6M+UXO9+MzHC2CpS4P4a6sYu+F6m27l06aCRFQ2f1y3s5xebwUpuk88JN2DQ9wgpQhxBVDtLSRBula0ami9hiZFxemkyzZ7ZalxnVe20LGK270OF6ywU9cl9WoBx6NGIfb3bphKvEh6sz42ZVGFewNRVIlgzDpADjvnZCVpolqKUm6bcIgw4q8dNoo04q0H3vZRBxSq8Tua344y164yQEWfzRpuGRdcSoOOUmH1zZQVaLHPjIO1DFGf2ktXJVnYIfoZ8PAZB8Rc7y+v+RAfHeLD9PI9enWEMi+BviOO4xvy+xvR1HAjRH2bPfgVRu42Z1ppx6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR11MB4503.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(366004)(396003)(346002)(39860400002)(316002)(5660300002)(8936002)(52536014)(186003)(83380400001)(64756008)(8676002)(66946007)(66556008)(33656002)(66446008)(2906002)(66476007)(76116006)(55016003)(71200400001)(478600001)(110136005)(53546011)(7696005)(6506007)(26005)(9686003)(86362001)(41300700001)(38100700002)(122000001)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z3RYk9V4eFT+ueLcM3HE6qQup/HsL4qkgPbnr1zwEtY0kj4sy4WxBfNOzHGL?=
 =?us-ascii?Q?LyMGBl6BIYecFcVPr2ZLwvB6aGqq5pkGBsVFUkvdDWLR2b31ABlgWXtMw1Ns?=
 =?us-ascii?Q?g8GcrlNwtu5T+1ZUPL7Loyi0IjaoERFjAu5dg3ipnxuf6YhIFNK/HPbP06j3?=
 =?us-ascii?Q?slIkj9uH3IlbQR8+6cY+4I28RnQcOBkHdgoVu8FJ7vd/msV05KmAXTjtR0Rl?=
 =?us-ascii?Q?LeepE9cRKC7p8OJNZAmuqrCPZpFrn/lkweK9tYYF0YLTear5eM4CNhfkvs2C?=
 =?us-ascii?Q?wIbFO4zjqUmg9z9DHTo6TFtzq+3+SW8SdOpisseK1PjkOdxSCt0WKtcdwq2Q?=
 =?us-ascii?Q?mc7nPzLYVb+HRILGMvjH2Hocc+Ctnh9OGBpqdXIlULxnK5Cp5MKU45Hucqd8?=
 =?us-ascii?Q?GQDlMDHhBWXqVU+YKQOOWytLYSRfefvEZCNGfXGSTzqlBfyiqrNZPupkf5VG?=
 =?us-ascii?Q?/yCwBKG1qwmWmFs/ZFd8TfMUGG/NmDUO5r7n5NnlRdArkcr4wZ1Qoo8DM39W?=
 =?us-ascii?Q?n4E/tbvOz9ZQ7zdRLlkF5L20NGy1CpqdOLT3PYfH/7p5tvsHiJgjV/xfyqsY?=
 =?us-ascii?Q?7iUU/c95wG+YT0Y3UqrQBUP2EqZGYY9xLGYqxSw8lJLfa8+Dqmzp/1pS8qYy?=
 =?us-ascii?Q?s8EyHcn8E4uQP2+6qryQN/B5+cZFj4h8novSehNGdC9w5gZxBf8t0OuCjtoE?=
 =?us-ascii?Q?qxL1d5/jDhwwzeVdNdCjZli/i0VniKCOklMW9K9qJL4uBtoczDAvzNWZauq3?=
 =?us-ascii?Q?5ZHnYVk9VRQ/E/5XqCC8JLV3RbirQw5djqcbo5ntwVELApB/1v8xeIT2qxMt?=
 =?us-ascii?Q?40IBej9Zbgf5Pz6DxY71OmF8rGtXafD+8IRiU+9y+ovq3RYVWlUIL1q4QUbr?=
 =?us-ascii?Q?LKruclVf6Fa13NHzzMszaL4a/VQ0u+8SRc7gyN+8e8AwDKerW5JCv2bR6PZq?=
 =?us-ascii?Q?Wmacp7dpixuogw+PUeDIR0d+XASHc+rp3tf62wzCJDn0XBirl1wyrRpNe/H0?=
 =?us-ascii?Q?D4nq/oquAyBhskxjIeggbS2SLAqdYytJC9NsaR5aPIQTdJbDp5PZOjX65iyV?=
 =?us-ascii?Q?G14ULF3pxnDr+4C2xfO1n/laUQzcsgJzsYhqkI93MwnJjCzFK8LOkP9wcxs4?=
 =?us-ascii?Q?g2Rt8XONirQ0CMoxC6A7v5ZuJQ2W6YCfO1YoFI1LPPGU/csItKPda78eRf/V?=
 =?us-ascii?Q?qoDbOR0f/DiPJwxAEo+HKpW0IStMvzfHNYmKOi5SZjadV9cc5ELKokLikY7R?=
 =?us-ascii?Q?SS8qTjBaEecSPmmVkg3TVrxbgns+0RAgbXosBR+iayAQi4Rs+6LrBNXMC1QN?=
 =?us-ascii?Q?h4DFHBaTr70sQXeOX3P+39dLvS2eoQu5kXvOPLCBkSOg3nHdq4eaalCYjEwO?=
 =?us-ascii?Q?nV7yDYpxJCAWFApLfErJbb1jSd3nGFJLwJ1REhusIQJ2Yg0mUwiCbrJhV7QE?=
 =?us-ascii?Q?NOK5z9yNpAZufnMqWTvFt+sLMJy8D50AlT4NW0k2qTqBVhR295Zo3Qms3s1Q?=
 =?us-ascii?Q?cRFVr+SsS+0WhlYWOFy3I17IIlBGDWRkmxtyVfD1Y1PDZN8WMznWr01IBj3N?=
 =?us-ascii?Q?p7MWK2a8G0/fcxnZkq/pwEgJfgxg/lMsP38RR8Ko?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH2PR11MB4503.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7915312-ebca-4b57-7d60-08da75dee342
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 06:02:18.2165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fmTjdB12qBBfjlS9ccu+9HNfhBK45u0tRHfO6Me6G3eMTqgNy3EC1EXhccc4I8aPO7zaJ+gB6FNBp2aSLVC+kb6/RjmJajDmI9ntvrwIOe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3846
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 04 Aug 2022 13:57:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659592956; x=1691128956;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MnFyMcvtY1Q29JEk3WIcdsSmoMx6/DK3bBwTBbqBAqQ=;
 b=RXXhTuZf15wyOenGHARq4/xWBfCS11rIgz3DkJeP8mf1/csw1pAp1Gd5
 spCYOG0Ztdrt9tXtuyYN2+yF5Q5jo59ZDbZl8A41qUtMoL8i7AfXUyAEL
 ZDejDfXY4akVs/vCqhM57K8D4eij9sf3IHMSMcXaak6M7XVerv+cbZIX/
 bPdcU5rutWl5mo8OAM8BFTvGxy85rP+s+BkMNu5+uM2UzykZ+3ahYr4Ne
 dDXwlm0S/PzKAjZklBpHhOpjh4O3aJYqJIgCYvMmzbiKzSNgoZgS8cQ2i
 1B74lIvM7NOMH7/MNhk1dH2oFwf3TthJO2lYIrKPeWm8Wa4I9wrxv8SfR
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RXXhTuZf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: prevent low-core machines
 crashing on DCB config
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

> After decreasing the CPU cores from BIOS and I have disabled CPU from OS level and after applying DCB configuration system getting crash.
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ertman, David M
> Sent: Friday, May 6, 2022 11:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: prevent low-core machines crashing on DCB config
>
> In the case where the driver is loaded on a low-core (< 8) core system, and then a DCB config applied with the number of traffic classes greater than the number of queues defined at probe time, there is a chance to run into a NULL pointer dereference error in the queue mapping code.
>
> Put in a check and an error message that will stop the NULL pointer dereference and notify the user that the VSI is in an indeterminate state.
>
> Fixes: 3a858ba392c3 ("ice: Add support for VSI allocation and deallocation")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_base.c    | 22 ++++++++++++++------
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  2 ++
> 2 files changed, 18 insertions(+), 6 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
