Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 963D05ACD9D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Sep 2022 10:24:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BB1D60F21;
	Mon,  5 Sep 2022 08:24:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BB1D60F21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662366254;
	bh=XaYLrOPBCIfdN842VtgxfVt/i7NfsozuFDh75p/5Pic=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vz+loVcZ27ZtIdfTd4JYm7v+HAQinfB53yY7gwlF+MFVDtT7OIfLnjLXmah8uTat/
	 qxH+inxLJ5P8X65amTr0vfPzZOU1QkR7QJ1jOA321JUFKz2s2V5HzDgOgIG+h8vfBC
	 G5vtvO2qE6p6o45kn+ByBSQkdHmtDruKK4g4fXzbHfDVL1vS47qQm72LT+zzHJEY+B
	 9053dA67hLZbwH65Bz6mAF28xqoovMz3+yiiscxFnE37DjARb35EwGcpqvfaS0mtws
	 /q0++JpIRZ25UcxG+Jdab9udknUG5CpIEklbryTnXx4nm8YyVgOMqm3LizEgmWhjAh
	 KyC6+PgnqRodw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KNnNj0jSwBZk; Mon,  5 Sep 2022 08:24:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D930F60706;
	Mon,  5 Sep 2022 08:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D930F60706
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C4EF1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Sep 2022 08:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24E2E81352
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Sep 2022 08:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24E2E81352
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUVZBc7FJrJf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Sep 2022 08:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0677D81351
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0677D81351
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Sep 2022 08:24:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="297648348"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="297648348"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 01:23:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="613701724"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 05 Sep 2022 01:23:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 5 Sep 2022 01:23:44 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 5 Sep 2022 01:23:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 5 Sep 2022 01:23:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 5 Sep 2022 01:23:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PfM5LSERMefuqRNWvMyQXjXDkC3ewZqQd8GrrYqhMVGOI7DWp4nAK2aVhVoBNvpK509bs/nWzxgkbC2cOrihEcbuV5BAPpwNlt2Jkd4Yv3dGg9Oqpz2ae9EOqLYLXPqlWqtDNj/TEfiX3aqEd3IQVVWkL9YQ0gyc21ZOyTaSeRBnbWhHfkufY+tJdydCWMwSCsa45PD2zVR5vnbWNOs1ZCEDMwrR9SaZq4m3XBpwILQBAE9MEqRMFl+ye+1m66zNNIMIHbEi27yA8in4Gj1scxP1mgNItogVi/Ca3wj45qaW+W/E2vKpfcOk3HQUocb3hsUHxBeq9rU2+TQ5VtgE7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ieZ559pAe97KYtDCIkwW+Xu3qx4V7x2aGzApZVz1bjU=;
 b=JoFuc8SVqdwuQRSj7eHl0aBKVOphBfqftf74wue5ioYGfAZFsyW0oVwdPDZ2rP8JM/lmyu587m06QR7ya3FMdorSBrVfAI/ugPqhNKyjoGuerEuGvGh5ynTuI3qGZOpE0J0t9kztBXWU/cnCtg+Sgsn9l7WkCaYrdd9zsGVqI+K2JnlqR3H964AuUGvFy2Jz5DLgofti1RjTie+SKBREMVPn4GaUs8gUrS6pUJdiKosNdnHsSe62EcDXjo3OVtoMC50Wpc0TSDPojhf4jx1WVn42w2UgTFRpFzgidNOgxE4sVxuCPbzph0nN1IraxO/b+ZvOTVl42u8E58q2C5XvlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Mon, 5 Sep
 2022 08:23:42 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5588.017; Mon, 5 Sep 2022
 08:23:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Allow operation with
 reduced device MSI-X
Thread-Index: AQHYtlkRbAK4De/lYUiZxj7fcvrYva3Qk8Yg
Date: Mon, 5 Sep 2022 08:23:42 +0000
Message-ID: <BYAPR11MB336736FDFE818FC33FB6669EFC7F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220822185654.59145-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220822185654.59145-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63a95540-4c51-465a-2517-08da8f17f16e
x-ms-traffictypediagnostic: CO1PR11MB5121:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uXkC1dpeKkggPwRBhablTCWTiRqcNsd0lQ80U5JCfoqifQKNreFXpF2anv5DO/0VhyICKnp6ttrX+a/EkHPekNyMeQLtUg9xFR3aim2fbxNBJm9+oLBzdqv2V5K8HF/SUtcZcCIIMtZn+/0rMZjkgnDrxNzLNJDV9R0Ju9x1K1MAsVtTpsfW5dUmbyEVQREjOJKxognhx6nzhosS+PVk9UYiYKV3axg+CUOKbB/MHO/FQRdt98tlXQeO0sT5f72xMq2Pw6+J3XqUdmGuD0W9JZmZylpIhfIC7k+xpYgwnLy1SBbffE2Wr7m4dLK9wimGIN7qFJRsMnLJ4j/7XPqvnZpHlNyRt8e4Q0TrDNYqP2yIRevIaUDpwELKIo/oQ3uRX+L4iApQ+AvL5E14OJnSPv0Hja6wmT2iUgMM2yrN6pgDSDPsbjz70HNqcZitf5neHMptuxcXfym+P8Qv3Xo+vVvwSnxACLpDnV9otpqUEoyHKJ8mK8PDpjTRk5Vfp7aE02DUBiO89PrrmGTx3b1Q6CISOMyVd9rUmZn+Vo3ooisXxJ2jhJcRmVt2cLkldJ7MT0Ot4oIpPBJak2HvQZ/z2mtmNHhbkbExiBMzeWH0zn4D78UUCIG+/x4SYAC/sLMLd03gSOjE2SaT6ImMG6XCVrKncNefBGAKXWuCm3fGcUk1UTtsnr+AFJIxcewvhPlyEuB55Er9XywxjahDPHHZAivKa26VTcO697GwYu4fwUXlmM75/HbyUxwGGE8p1DegbCsjyNuzO3syNVCRaNZDsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(376002)(366004)(136003)(39860400002)(55016003)(316002)(9686003)(86362001)(110136005)(82960400001)(38070700005)(2906002)(122000001)(38100700002)(8936002)(5660300002)(66446008)(64756008)(8676002)(33656002)(83380400001)(66476007)(66946007)(76116006)(71200400001)(41300700001)(186003)(6506007)(52536014)(66556008)(478600001)(26005)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lo0hxEsC2hJ4cD3dgeIqSnRDBhxKsQBCyKR0Tdg/zfn6OgJp9LVonpCdW6/S?=
 =?us-ascii?Q?/W9slxcetzM2lMaaOUb7Ywx2JfEks40tzXAY15scaDLglyXcJkugLIaJKX2X?=
 =?us-ascii?Q?0Gg/tlh19fbjFNJcSqDXkfbN7giMT7WuP66RMy6+qNhVjCuGs0nzczzIiDi6?=
 =?us-ascii?Q?Pxeml0O/hlw4WKZSHYIRP7hU3ty5aMnNSR0ZIeqBJ/OCsG3Ah7SgnyXI3n3o?=
 =?us-ascii?Q?sypDgL2EK/sHEmHN9+bRP3C3H0Br1nYwZTXgquM4Nry6UltqURF+FwEsYCA1?=
 =?us-ascii?Q?UF/pIIhIqKmBEEg52LB/E7SXOrW2lMEZPvfkbpZDqDWxaF3hd+y0KTSQSXbR?=
 =?us-ascii?Q?S6prvZ8Eh5wjhmJvwbwkPBW+U0W+PF4TV3JsEFK+eU2uPbJ+kxuQhRcZMjaD?=
 =?us-ascii?Q?pqVoLZJKnyOjBI6PnPtE6RgzE4Z5ugJoeze8CTPmonKLsfHNmO2GoHjvqkFo?=
 =?us-ascii?Q?GK98A/CwMFPh0Znk7hbByl8dSOparXge7Pks8dMSzsVQ5shwdDqQCdA2CL9L?=
 =?us-ascii?Q?Vnrt1HlDi1rC9gm02OLlxXBOHQtzGfKWtrBTfAI8iyg5uHz1R7TXiBWT0Fni?=
 =?us-ascii?Q?aOjd74tj/x4EbNrMwo2E0fPNDGG7aJHsQdWWNeHS7V4A8JodxnXEGPjWA3Fv?=
 =?us-ascii?Q?ArD3+gS/Lb1V0xoNMt39gsc4EMzVntgHyFhsjTNNUXGsfi4W1jjcClz7Ra7L?=
 =?us-ascii?Q?+IG7B4sdScqqc6sIRRbuwCvH95famNYa398BhYpxFi6q79oeNC757b/GrTNl?=
 =?us-ascii?Q?cgWNQ+UxIZAO6/YF/j3LmX2NUnH4jWz2lM3UDo5VA2GEksEm3Sgy4gz1gUMa?=
 =?us-ascii?Q?g2NppAOvoNVhs9fehGjHlQV+9BRdzwEyaYXLvmdrMwRs86+fg7w02MxbR9gr?=
 =?us-ascii?Q?exZG6DiXVlcV6eWc+PSsRatD8DDcLzUA4IxYqzVREzVv0epiNcHF4RNR5OyB?=
 =?us-ascii?Q?y3cie8ccYZrgrbc+kTDCb1UJgNjmzwlamJMZtLLIwRFwMgNsSa7ySzCTLhLA?=
 =?us-ascii?Q?0JpD9bkJ183bjvG8LHpHTMg/t8pX/mofcBS5bHciX32i7b3PbMyigo4rSr6T?=
 =?us-ascii?Q?CTIei+WS4pYYQsaFVwogHzMmULFaZsfnRbt0r3VgeS80AEX57ievroBq6NML?=
 =?us-ascii?Q?JRQbtQ9h0TZ9cL7A+VjY5t/dgdQlXF8EG4b2lrWJuLIwqs9cDw1jRxWErE8v?=
 =?us-ascii?Q?kwhMy+/8753xyU6eeLEyc85OKdDI1uk7c9Tg50MOKjTEKf3zKEhxGnPlpKzG?=
 =?us-ascii?Q?ILHC1ILn8iZeJzh4hmZmshj689FqZjKbEjbOCktQEca/nyPtBoDo1e6rAoby?=
 =?us-ascii?Q?zoo2pfW4soCty60o95eSRI+CCOVgoeqk84K4kNdSx3dPh1w4Gs1PHEdV9hAQ?=
 =?us-ascii?Q?/Mq0U8l7QHTrseo/5spUAW2JyhFANRbrI4liE//QICj/BXaSQGh4Bp2lmf0Q?=
 =?us-ascii?Q?c9jWGRYlwQGxulHOaR8k9o+ss21D0oJ62cyecRBG8wZ9gV0FiJ3GMta5Iner?=
 =?us-ascii?Q?67zpQSFFZDI6HUVSDINxurhLlNRnkUmnrylYftgHc9ek6Bf1oxcf4YZxhkx8?=
 =?us-ascii?Q?nlbgEnMDcQPFf+PIpHZxbYQkxosxTmfn1ockj24d?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63a95540-4c51-465a-2517-08da8f17f16e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2022 08:23:42.3581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 948Ubn+BtJeg/ITI0BTfjOXwxykCHmYzZoquQgqL+YxOtlVpvGGYxN4s2pL81hKfYsqSg95i2uUcCTl64QkMqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662366246; x=1693902246;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KOUkr5HEzjXBPF5j6sPKEGpiY5KI5D3w3/v3zbUqAPE=;
 b=MZWkkoGGRIOziFKsDY9hwmCggBRfd3a9pjSUT+joNHvFi3NqXb71xk6B
 UUb18OC0bPv74lezgJdEr/DVrsvkNSqsQofJq53Zw4k3uUk5Du/5krPEX
 t2rMv1BA4Nfls8U8DR5BFEKc1mKcz3hSF7FXA9GFEj8uSwb4CQ0IuUbsk
 Dvfb1W61foNKjiACVc/ylRuF0BJe5vDZ8uN9y/MjZOMiFMabXpGUSlfRC
 uj+raiSXEO/z3U0shM6kpRil/Eh9GFD5SumliyVR4mw9jPxkjOS7tR60l
 TK/Y+wXDZ4s1swXF3yYwzMm69qSJn9yGH+46W+imeduURpdoE9Kal3GDh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MZWkkoGG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Allow operation with
 reduced device MSI-X
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
> Tony Nguyen
> Sent: Tuesday, August 23, 2022 12:27 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Allow operation with
> reduced device MSI-X
> 
> The driver currently takes an all or nothing approach for device MSI-X
> vectors. Meaning if it does not get its full allocation, it will fail and not load.
> There is no reason it can't work with a reduced number of MSI-X vectors.
> Take a similar approach as commit 741106f7bd8d ("ice: Improve MSI-X
> fallback logic") and, instead, adjust the MSI-X request to make use of what is
> available.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 187 ++++++++++++----------
>  1 file changed, 102 insertions(+), 85 deletions(-)
> 

Based on the below test results, marking this as tested
1.Verify the traffic between the SUT and TG with variable ping and variable payload of TCP/UDP
2.Verified ITR count
3.Kept regression for 5-6 hours with basic payload.
4.Driver reload test tried 10-15 times but couldn't find any issue on dmesg logs
5.Transferred the packets on multiple port
6.Reduce the no of online CPU cores. Then reload the driver multiple times and make the cpu cores online.
7.Split the Tacoma rapids single port into 4 ports through devlink split command and observe any changes. The devlink split command wasn't supporting to split the NIC into 8 ports.

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
