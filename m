Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7629E6999AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 17:17:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECE2761373;
	Thu, 16 Feb 2023 16:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECE2761373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676564232;
	bh=zO1eg/x1YoOqlUOGXFRAGbYwCFtEu8tZ4JpzstR++Zo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z0NLCxfuZJLrI7ZYzTM3qBzg+F86CBehlL3ExbJTQxFI9/BKcKM+afYmA/geevS8M
	 DC53N1r/Q+5I9jPEwiDaKmSXWrQYTX2O2uJxvlE694h62TpVXmdrFaHHygbq8yLMy3
	 Ha2m6/l/b//p6kd6vjOYyask4S+L1wZcbMpKT/DbAYzpAg9qWtWfEuZY9kkoFC9HLn
	 EVODSIDoaKSls9x0F3PfacMUuxBf5gKpJZTkwZdW5mLgbUP/X8qM/0n1quGhonycO0
	 VbvssyLSvZy8rABnzYf7mZA6864I0yNdG190ykeB3a6oQAM+7xq2JfmwlZMbwS/Egt
	 9MQlMbZ6wEqWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a7nd2mePIDNG; Thu, 16 Feb 2023 16:17:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F21BA61223;
	Thu, 16 Feb 2023 16:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F21BA61223
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56D581BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E69560A6F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E69560A6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niSgV-wvpn5r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 14:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 470BC60812
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 470BC60812
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 14:00:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="333047612"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="333047612"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 06:00:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="812971069"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="812971069"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 16 Feb 2023 06:00:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 06:00:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 06:00:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 06:00:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQUZgoXJf6gGYTPmRzDCmCFt2sgmBBnoIjy85zBH2k17d/bLLtap978gq07Apotln/XjTY0kWhaWCQJ7Pjj4wGkW37ledxC9adlDHQr3B/M20wqjRlSg9foTEEl9Kl/9SmsQeBXw6qHd0qP44HJsgMh+Czo6WPo/Iff639468BdFtPQhR0PtY5q/FjwHv69mnFbWQ4Wu3R/6h3vVesxhhx8fq8sTWHitN/mkoNdaezdKLhKoFN69saKBbrQuHUcoAu8PmG2P7YuhwksNELKW89aB5Y2oOCPRcDYCIC37VrieKJNxLwV7TFEeJzR5RQPPuOeCjNPxr4HXXDomu72iMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGOXPY2FlBwUvE/zkUlGyPsif3/2/JtzPWsG4UUU/6o=;
 b=EFoSBxcEbFrsJ0z1eN0v28aMuQhQSO+x6XvVAm79oWvVM2gHIG+lcXk5rNYz4SJAlqTtg0MQusVJ8ixMh34qMO0Ga5uc963FJ9h8wgMpCGojkI2qaGPLvELQKgLBH/FVhXYSEYq5NlJXBjdKvdq6Q6wMP6MyTYM1WcnwXrbMIe5wRaSVUra4mXts2Ud76fx5L86m4jOH692sOjRttbvKwnAcuDAG/GC3YDeBDZtuIEUFfOmoW+1zTkDSsNC4vDLaF4ciJoLee+uVTECl1NixtZfJ/KlaYWC5brfMVQUDZ3RYKiRvFCE5N0bLYcSwKoIKXLYd/JWwW2KURa2CHwvUVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2360.namprd11.prod.outlook.com (2603:10b6:903:b9::9)
 by PH8PR11MB7023.namprd11.prod.outlook.com (2603:10b6:510:221::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 14:00:05 +0000
Received: from CY4PR1101MB2360.namprd11.prod.outlook.com
 ([fe80::ca4b:b3ce:b8a0:f0da]) by CY4PR1101MB2360.namprd11.prod.outlook.com
 ([fe80::ca4b:b3ce:b8a0:f0da%11]) with mapi id 15.20.6111.013; Thu, 16 Feb
 2023 14:00:04 +0000
From: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [PATCH intel-next v3 8/8] i40e: add support for XDP multi-buffer
 Rx
Thread-Index: AQHZQHImdH8aDiB8C0qjnCvdyK/ZYK7OqxGAgADAfzCAAhHfAIAAHdGA
Date: Thu, 16 Feb 2023 14:00:04 +0000
Message-ID: <CY4PR1101MB2360FB8FB19B6342536FDB7090A09@CY4PR1101MB2360.namprd11.prod.outlook.com>
References: <20230214123018.54386-1-tirthendu.sarkar@intel.com>
 <20230214123018.54386-9-tirthendu.sarkar@intel.com> <Y+u+aUJJ2EQYEdJB@boxer>
 <CY4PR1101MB2360B76C18FDEECAFE3169EE90A39@CY4PR1101MB2360.namprd11.prod.outlook.com>
 <Y+4cYNvEYKOb8Kzp@boxer>
In-Reply-To: <Y+4cYNvEYKOb8Kzp@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2360:EE_|PH8PR11MB7023:EE_
x-ms-office365-filtering-correlation-id: 8c07134a-0b84-4747-7d2f-08db10261ace
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S2wULZKFLKkox8Ek6ycsP86Yk2G1J9PzZW6o31o9RfoWaPGXyDQOK5vQtUXmVA9l3j7wI4kZHKIEaziICwYYKkEGoVttVYFF/2x13SmGGERzSMMqxW2v3jvreqKmtiSOGmhywwxmMHnxPERUTxWrBo3gj1bJ3WE1R8UeByYLpPbR1+GgJkCAygqly+gYv1SXS0yE0Rru61ESS2dEiAKxYzgcuL1Iuv5DbFDlcjrJSy0FhUoZj4ZGLGnxFMJSPcUmOtCOV6UXSK+uXwGc+ayggntyuANVaFJcdv3RDzU+dxtUvggk3D2o4YpMFCa+EUy0R27W/PPhJr9ODvUSNOyIkS3X6y6TB/Pfg8otNwrgcpM0ciRACAuJQ7Tkxp2V3TZXym2rugORz0ZJ4Cood4C3Bs+P8WTuanSw0tywCqaFmnR4jVH4w/ryvbrqPlnryciGSHo8fkf4TI4vULeC2RarVS0xxTfg3DOIl3uqMQoKMGKk7pDsewARKJskEeaZ2hEWKxFQcTHz1/eYP2n+vupP17xoOagaZKhVyNg0DMkJ+sp2LzX7CsM3sQRP1U9vvC4Si+Y9VzatlicJ6pSL/q4+x5B+6fGA6eDTcaG17kLFF95sQXS7wVkx83sT4FbmNOTNIlRsSZGz06YCp21aePl62GxspI9RcGKZuG7sPVAdPSc2Tu5jN5DOMsZ21oefebzsH7A7ZuS4KsI+7fs7LLFUoqgIfkkj408clrIRYuYv2MU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199018)(38070700005)(82960400001)(33656002)(38100700002)(86362001)(55016003)(71200400001)(6636002)(7696005)(316002)(54906003)(107886003)(26005)(186003)(6506007)(9686003)(478600001)(6862004)(5660300002)(8936002)(41300700001)(2906002)(122000001)(66446008)(64756008)(8676002)(4326008)(66556008)(76116006)(52536014)(66476007)(66946007)(83323001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EiN6FcPRngQSks1PbAoABZW1z/p86/7MkNadxhnDEGBiKCoyLbMYGL1VqWM5?=
 =?us-ascii?Q?0y0CF3JuJZNWBjxuwvLlwwn+OtKM71AILZfMc2wzHHm95zwnuOCVqVzHURPs?=
 =?us-ascii?Q?U9pgCdr3ocVeRlElbVyvV4etCxkyLFUgsNV4EVvAdgrhXQnRBuMLKi9bjPlU?=
 =?us-ascii?Q?kclY1gmSJuyOaM0K8t8zmIlpKCvKGIw9s6WcLsmi9pJLtlw5NiZkO6QN8ptl?=
 =?us-ascii?Q?wqNAEFjNWSfRz03ffP8Tb9R79gDlZufkE0h59vp8/tB/HySZop0f9cZrLDvw?=
 =?us-ascii?Q?iJzeheyGZY3f/K/5Hir2VwnZlMfnWaSkC+C2pkMX0DHT/rheedA0oNwjyt6/?=
 =?us-ascii?Q?8rAVK7VAZd0MLwYlfGej/sOoAMjSHVOMs4XYc5fRKNag1jx37atBUMZCc0CB?=
 =?us-ascii?Q?JD/p8aYLYNaLhwo4EVwv/jWwCYNWd4zxUh53nK2NP5te25gUJsIwEVEaWsz4?=
 =?us-ascii?Q?LQ4EB5emBzOZKjXrNNOcKnOR3NCB64wHmhgX6jRMIXYwVAUCjcRuMbIY1ezw?=
 =?us-ascii?Q?+jd1TSAgsvjnFxYqVRAVKwfZ8iSToG//wSseAJ7L+l8MegTWWQi5VIGkmspo?=
 =?us-ascii?Q?ihKSD3dynUCgFFvLyRAIsX7X4thQozTvSpAp3tesRXivmQba7VQPdqkMc0jd?=
 =?us-ascii?Q?V2pZCLc2ZsjYuL4SHSP/wgYH9FRJ9BflS1/uAiJ+RdpNlvbO+sU6SA+8xZRw?=
 =?us-ascii?Q?TXzYmr3OJtsm8KIEgmnXOdxex81hcff73yKwICGZzk8c/XdirbNVWNEnPlAs?=
 =?us-ascii?Q?rau0qgX7ZgP/ifJOnn1rfr+bRdnZmcJ9Z0hHo3Nw5A9adxbKyK+H36Z5b63X?=
 =?us-ascii?Q?gLWs8BfITX2azl6tZRutE2M5qjt7h0PFfmHqeWcxW5RJmOwn7exogiBOv8+T?=
 =?us-ascii?Q?oKZSGvibFHijS98Iz+cQgqJJxCC37gMAMW5/4LQjRDV8no/JgJjcJkCbnJVk?=
 =?us-ascii?Q?iYJfhhdOaitCy5kkngXy5WAyr/2iJ7uPe5CwB8MOsKcqtC6WgK4qhjV0YD+Z?=
 =?us-ascii?Q?9HmM5714TsixULiEvncDcW5d/u2ri1Z8K+NejKfSTwJyt1tt+atq6CjrrSAW?=
 =?us-ascii?Q?aklYB+DkSQ0stdHbvQkm1IanTsCEK5d6s9LFz7T0ACFSXJwT/shX2gwDk20z?=
 =?us-ascii?Q?x4R7xrFf+IDLQNg+wPpMAXptrcHxXubSn6hHeYzxy+AlenD10ag/Lg+e4H+C?=
 =?us-ascii?Q?41J/wy6U6tZpJ7jDt0Mwb+URZC+uvEbVdtaG6WQOX5jlhwnOBUcy1xOvBXA4?=
 =?us-ascii?Q?e6gV5S8sJwKd16UAGMiXAc6Amr06pOPXFFNaWxUBZJhazg4dPO97apE54VWx?=
 =?us-ascii?Q?U+ERDTnHGN9jRFiZdcuCsAnLmHSKK1OBsuG5HRGE5GmJo3pevCvIHZXZGRjU?=
 =?us-ascii?Q?U21FFA13RNbt3hKXlCDnANYuqYRqlEDmCDA8hyh4RscUpipiLPXyl76CXgha?=
 =?us-ascii?Q?+XUsTXAMey/FvWd9EiRkokJZ7xQWk9ZVBbjC34QdYVPWT/HnmTvrco8fRJck?=
 =?us-ascii?Q?VTGqnt31tU+zYqmpN6W9SxH9fQu/+DKlAcHKD+kH0tU4yhQxCvDCOZV40uxe?=
 =?us-ascii?Q?2A4lzDxn9Hc5LKLGzYnyEpymcq4pKsoCaIfK6Z8FfGIc7kVgsAf4cGd3MB+Q?=
 =?us-ascii?Q?LA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c07134a-0b84-4747-7d2f-08db10261ace
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2023 14:00:04.7130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5m6MDiuWvdXxOox9xvlzqEEt03PtnCrunmX15eH0Vj2MybhkcPCf12MfcvwIWfDhy6Tc4BvLWRzojT1nnRpBXpDdymAxhPCJxUYr27smJbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7023
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 16 Feb 2023 16:16:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676556020; x=1708092020;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NHIgfwbepSz23MvjOcpxQaEhKUWjB4fgBnBAva6kNFA=;
 b=HEsaNXmVGENc+HWmClLwufAxwuGc1B0/12t02gma/E72jc9RH9coogw+
 HtQMVgE2+jlwLvFnW8vpGldoioyPZ6GxxPkNUSmheoz1mvIVHhZe+8iUw
 znbZzJUeXp/53KA8ABBJvTaWnd0D/30DAGF7g5YTLSFDAmeEZ8VmXF+ag
 9bOxMQtyIHnFbMJ37xkjQDeN/j7XHS+H5TosaCiAl6WuL0GgFdtkr5w9m
 rCJaZuGa0enWNfVJonWnD/zsFGV1zZHkCzMiYrfN3Reezml8+UIfuESCF
 ijZ2TzzNIaKz6Men1TOQJdY7w2WhGQOERTwDrY1WYTY1BVoCLcp1IajKP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HEsaNXmV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v3 8/8] i40e: add support
 for XDP multi-buffer Rx
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Sent: Thursday, February 16, 2023 5:37 PM
 
[...]

> > > > +		xdp_res = i40e_run_xdp(rx_ring, xdp, xdp_prog);
> > > > +
> > > >  		if (xdp_res) {
> > > > -			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
> > > > -				xdp_xmit |= xdp_res;
> > > > +			xdp_xmit |= xdp_res & (I40E_XDP_TX |
> > > I40E_XDP_REDIR);
> > >
> > > what was wrong with having above included in the
> > >
> > > 	} else if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
> > >
> > > branch?
> > >
> >
> > For multi-buffer packets, only the first 'if' branch will be executed. We
> need to set
> > xdp_xmit for both single and multi-buffer packets.
> 
> maybe pass xdp_xmit to i40e_process_rx_buffs and use it for buf_flip
> initialization? also you trimmed the code, but in there please don't
> define on-stack variables smaller than u32 (u16 next)
> 

xdp_xmit may have been set by the xdp_res of a preceding packet in the current 
napi call. We want to consume or flip the buffer based on only the xdp_res of current packet.

ACK for u16 -> u32.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
