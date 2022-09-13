Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3A65B69DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Sep 2022 10:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 785854090D;
	Tue, 13 Sep 2022 08:50:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 785854090D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663059007;
	bh=Yh/KoBXP8aps33q94OTfL1cqG+smkQlX8ulsefZ3cvs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PY9drY30io0hfWkSYUVjef5vqMPC4pWmJ8PUdmyEo/5gB7m5CwjQwdAGuN6erqSYo
	 Ow3OmHuyNrkZdOpJk4f74INMI+wLUzxWf6FTVe6XtBz6j4uQWMCn4CAujGkdwjEGbS
	 QEL18evFvCI/Mpvzp4co5cu4Bd/tOkaOwyJ8EqAUAfvUYW+N+xcJYQFOxmnZUl0gM6
	 QPZaUTJ0ZULapFxZUOWo7DVIgejbvpxEehXeV+78I24RDZ0tx/PKwNRmd9ikRx3gTv
	 GJYFE822coWE9aellIMnPbeHO7fJf85o1AZOvi4FxNcUYmFSR7N+tlh5geRWD5r9g8
	 hGlWi3l/ySv8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJPRm2SGs5Sm; Tue, 13 Sep 2022 08:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 044124090E;
	Tue, 13 Sep 2022 08:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 044124090E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED59B1BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 08:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0B48408FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 08:50:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0B48408FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X_AwV2Z-DPxx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Sep 2022 08:49:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87BB440470
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87BB440470
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Sep 2022 08:49:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="299422760"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="299422760"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 01:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="616381025"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 13 Sep 2022 01:49:57 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 01:49:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 01:49:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 01:49:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=njhFFzB/5p0HtiBi1gpDD1nxfne+hY1KQZCCNpqWInf0iA9T0SQZK+girM90i+p/KTd0VAoDoZeqppEGXl4yhfxmRLh27xL/1PS8pFlbE845vwGTZsqij9pqjQDLL4Kr7iav3PLAsib8uOHCEFsWa25kUuJnLVHNw4AP9nRx6kBOzz2AlhyYzRl9e+s+Gv+x1o0G22xVLWr3QO2Wf5NYgd1e6wfG+Cf9PxnGwrIXprePwV82cvGBA2OwIXRFfsc4an8Ji9blhkbM1s7xY70pcRNjhRWBDyJi//h0udNq6XeBj+oNTWCBENQw/Wz5As3PTfTQh5l3yeHuEtnTI9jXFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bTuDQSbvxx3+LA1xAdHVeHv2ygbCk7mhSWBAGv0wCIE=;
 b=d9xadsLdD9jxiubWfCpEecYxFV3bOQhZjztq3dOPQ8kzdfH1gkeAx4xbMi1Wkbr1Si7mPvkgZ4DGVeyK/5XunnLgZ99Mqa6YiykSZNNb35NG+lys08lcDO6jDbrVRYkHCVROJnj4ghsb24P/eTIMOyIZa+kaIrrGp8bUYErbw0lz+5I8JsTOifFNF82QBA7ckaE+xU1PjpYEjdubhuqpdXxhExTbJ7h2qqncvlr/H3r0f5OIZZKKY5IpAcVmuC0X4PvT5P8gt1oaPwAhPaa0r03zIUihwco3Hb6YVV0QWzly3VslF5ISdtP+3QkalADq+Xs89Gb8xBSGrA/GxI3UHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.14; Tue, 13 Sep 2022 08:49:50 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::c0f3:ba37:dbe1:3cf7]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::c0f3:ba37:dbe1:3cf7%4]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 08:49:50 +0000
From: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski, Jan"
 <jan.sokolowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
Thread-Index: AQHYxCab/EFu9T5A4kWIcXgyQhNB7a3caaqAgACpXIA=
Date: Tue, 13 Sep 2022 08:49:49 +0000
Message-ID: <DM4PR11MB6117E945DB38C11B280596D082479@DM4PR11MB6117.namprd11.prod.outlook.com>
References: <20220909083326.344027-1-jan.sokolowski@intel.com>
 <c31c8400-a71c-4489-a5d1-3482be590c8f@intel.com>
In-Reply-To: <c31c8400-a71c-4489-a5d1-3482be590c8f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6117:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: fe192ffb-2a44-432d-4c0a-08da9564eb11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oxThvkQXUlqYBtLr2LLB6R652Q5miXD6WIajHY2aFJ2QDZA2/ybZWPWK+8cl0w0IBNk9SS7R0UJlqhA6TWTvj4pDsdgCWuzuvU0wNmQPEAzaIr3KLR/deWwgTOb4PQbrd6/NU2/ep/F47GSlM2gjusCWGeMl9xj10UqzUpiCZYENbibWd4t5RTTHFmYMrmDa5/yL5DxT7ZYqPTjdGNitC434bZdcsBpIC2lhT1WbmNvewJDYMCobVLVrg21/JAL1eaGSYCvWW9wH+DznruwIE75DOcu2i3igKWfPevzZYr2LsotA5BsbAKNmPFBWg/nYul1hOE7/UXP+4wkS6nsD071aZyjVEZph3KowZJh1uriT2G9AmNPNHYV/UGJV8owS7uv+3z8x7BZ3Pwh8uKZ9LLibuwqrd0bHTq4v4WB+aNyakCUL2TLwycbTBKEoqe5OT1F93gltLmcwhx79/yxM2DF86RT0DEBLhpKje78nzhqygOtR7es9sXBBrBE54AcXjvKCjMO4tNi7YG97sFYpKYCT/dud2qpEgmmBHdpEACPNxdzkrdwQLsl3ZvDpZoKMUp1tJYogJZgO9Lxjkmh+Cw3UtKFPD1gTkFOcKqJe0UlQReVlZik9H99try/OcfOrCHeUlfkxZLesaO8Bivv8EvHr7dqAhs5CneLSuzSgH6eg9FDafdY6m2lu+NaijFyjWGAVMIt0VugmhVkifwSIBa0+f8+k8QJ4RT7pV9izmTmgzROBWVK4AMI24Dd2lo4WnY4PV95+z17Qd2GkOT8C6w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199015)(53546011)(122000001)(110136005)(30864003)(66476007)(66556008)(66446008)(64756008)(4326008)(186003)(38100700002)(6506007)(7696005)(26005)(9686003)(316002)(83380400001)(33656002)(82960400001)(71200400001)(38070700005)(55016003)(66946007)(76116006)(478600001)(41300700001)(2906002)(8676002)(107886003)(52536014)(8936002)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGl1Mlpxa1RDZjJjQ3lSbmFVOVJJdGowV0IzcStiby9TYVdocVZhbHlhelZW?=
 =?utf-8?B?blNyQnlXcEFTZ2NoUE5uSk5KRVdETUZJN2s5cW1XYTN5MUxMZmh2OUwwQXV0?=
 =?utf-8?B?ZW9ra00zbDAzVUhERGtFaE5BZDU4SklWT2FkSVN2R1VLcEpTVElDdnRJSlBl?=
 =?utf-8?B?S0NjMnNrQlo2VWtlNHVJMFQvTmFWSHg4VlNvcWFLbEU4Y1k1UFhSdnJqSUtt?=
 =?utf-8?B?NjlVOHdydVVLZjdKTk5tZDJDeFpFdGJHeWNkLzJMVHd2WXpVTVJVNEFiVlpJ?=
 =?utf-8?B?N21jZ1U5Vlo4WDhieDNlN3F2bHlrQ05sZUVWRmtnTGdjWmpoTlJ3cWw4b09j?=
 =?utf-8?B?dUUwSlRHNW9SdXBzUFE2QW42Z1hISVhPVE5hbGYzSVBIaklOOHZTSkVmM2Vo?=
 =?utf-8?B?bXozTituZnNxUmh6T0t6VFJOalFXV0RxY0JYN3IvV1ZZY3h1ek9ZckNWa2d1?=
 =?utf-8?B?ckRiTUV5MjFFMDBIOUhIS0ZsVkUydC9MWVU0MEVwVVFKS21MeGh3Y2hhZWZE?=
 =?utf-8?B?SmltUm1LWmR4QkNKQ2NpLzVQNHNVMElsa1RpdHhnd1Z2RE1GOVRXRW5FalBv?=
 =?utf-8?B?OGx5by8zR1Uzd3NvK2lITVlsOWRsLy9OZWsycGJlbXFYR0FNV1BLMmJvVHhS?=
 =?utf-8?B?Ny9sQ09SMzlEZXE4TXNiYnBrcmxYYWZqMXVnSXV6aXNZcDlOdGRSS09EbHhj?=
 =?utf-8?B?MFFKN3Z2cW1QS1BIOWVBak0zK1pLM2JCZW1tbVU3Z0ZvZld4ZnNjL1ZEUThS?=
 =?utf-8?B?ZE9RaHNwSlVMRU9pR01hWG1mQzJpNGMwTk9jSjByTWpoZ3kzM3owc25kR25N?=
 =?utf-8?B?RCtUVHF6TXUwQ29iZGFwZzFHY2cxeGV3Skw2YXpadGt2YngzOE9Wc3EzVzdV?=
 =?utf-8?B?ZGxhQS85VjIrNEJJY1p2bXJDcVE5bjcvNlF0NHYvMGNKaTNYK09xWDErYkxQ?=
 =?utf-8?B?Ymo5NXlvdFdXeE54ZVBDOUFoYkY5ZjJ3aFJwQ2ZiRXY5TlpTZG03YmlZaDJ2?=
 =?utf-8?B?RFB2ZkdFSExNdVJVNmZsUEo3bEIrS05RY3RSZXlCOWdwYnJ2RkwvZTh4MXQr?=
 =?utf-8?B?ampMOWIrcGZ0VTB1N3NCazhYamIxcHpZblJJZ1BQSVRjdFVqcGVHWnJZbmIz?=
 =?utf-8?B?c2VodkZtd0lKL3JGMXc4S0txbmhNOE1xYkpIRzNHQ2haVm02VTFyZzFudXAx?=
 =?utf-8?B?Wk5nMThHU0s3bW1yazhpQWt1RE0zcnRWS1dhN2xYWWhyb0Q3amxhcno1SXZn?=
 =?utf-8?B?S3Fxd3NmWTNDUTFja0ZFOUlkVXV2am5lYzNTckgyRlp2VU1za0MrbG5zeC9a?=
 =?utf-8?B?ZkkzOUd5ODIvS0FBVHczY24rUDRCMzNYMXBvNmtHRGtCNkg4dWFNSWRkT1VI?=
 =?utf-8?B?VEtZa21tMkY3VWdoZVMrNlBpeUVDSEh3RjdabUtiL1FUVjVPaUtXZGZRTGpP?=
 =?utf-8?B?T08xZEc4SkNLWUg1OG9wSjNFRzJIa2tFK1ZxT0JJSTlWZjhETkJUaG9MemFr?=
 =?utf-8?B?UUpCQWw3OFJzNGprcXRMc2RWSmlqaDAzS1R0Si9SRXc3KzE3bEszSDdZR0FN?=
 =?utf-8?B?bUxUbFVYcWlLOGdsVFczaWtPN3ZaVWdUK1o5RFNhMUdiellUbmZEZGlzVUxJ?=
 =?utf-8?B?OUNHNW0yYlZnU1V0RlVXc0tYc0pnT2E4cUpaenpGeFMzK1dYSXB1aVF1OG1J?=
 =?utf-8?B?eUw5Nm9XQk51RXA4WHRESkRYYmc1bGExQjZTa2lIbjE3SmxrWERwUEgyMW5P?=
 =?utf-8?B?MmJzd3I0ZENBbGxJTytRbkQyZ2RvQ3dDc3Y3SUVtbU9pSG8wclpaOXZCTEQ3?=
 =?utf-8?B?OU90MGIrbG1vajlvYmxKZExRZVlRNk1PNlRjV1B0NEFUR0lzUG1XbzFYeHhN?=
 =?utf-8?B?bzFTTEJ4c2ovcXlIZm5DUEZLa0QvOHhuNTNyYXhMOXVWdjZycGprRGRxUGt4?=
 =?utf-8?B?TFNMVkhzb3NkeElRQUh1RVJ4RmdsT1pwY05qS1pxdWRFWkxjbk1Bb2RpWFVp?=
 =?utf-8?B?TVZkNDZCUHExdDZiSGNZeTVuM3FNWmNWcjAvWDUwTGlEZ0dZTFdtWU05WEJ6?=
 =?utf-8?B?SmhDR3FlZlRaY1NlK2cyYWlvY2dEZkdwWXkzTStaaUREMmZOY0E5M1I3OENt?=
 =?utf-8?B?cUJjZmZ3Wmc5VFFwWG5vaVE1dnl5L3pBRG5TeTJKYzFCb2ZFUUNCVEprbk5B?=
 =?utf-8?B?WGc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe192ffb-2a44-432d-4c0a-08da9564eb11
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 08:49:49.9237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n+uztQTzG6K22FgvsmCJxQDvR9D0GdwCAP8O8DkL6YahTcXS2TiLNflhyBDo2cSERw4RyNrFUb3hK3zKnaf01/aaJKlFfIc9IAWWlho1PuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663058998; x=1694594998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bTuDQSbvxx3+LA1xAdHVeHv2ygbCk7mhSWBAGv0wCIE=;
 b=JjL1MZbQ1GYpR/nLwrviJChmXdgyL32p5IbZJ8kOjxP7O+wioa0T+Bwx
 asbs+F9ZTq8gZlElaKXoBACRAoBZ85dIge1Is1Mk3aR0pRKo1B8/F2h8g
 9LXDRix/NAwe6kaf9YrebIKbOAS3qV2gp6rH0kp6TKrNzj6CXGXXNXqV+
 oDDTDDKtDrgKwrv9RlxZQpm/iuUSMsREmDUoWOjwhQ3mHupTDZSty9cpC
 hUUnkGKfM1tv1LYtWG48QuG/eDP61nC91oVILb651iI4ANRYCqrCnycG8
 BflzhrjlNumS9yWcG8vUy6Oak1DsFtDQtYz2p6VXfkqQ+LhWp9W+IVCOF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JjL1MZbQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix DMA mappings leak
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> 
> Adding Maciej in case he wants to review.

Przemek, is it really broken on i40e as well or is this patch a blind port from ice?

> 
> On 9/9/2022 1:33 AM, Sokolowski, Jan wrote:
> > From: Jan Sokolowski <jan.sokolowski@intel.com>
> >
> > During reallocation of RX buffers, new DMA mappings are created for
> > those buffers. New buffers with different RX ring count should
> > substitute older ones, but those buffers were freed in
> > i40e_configure_rx_ring and reallocated again with i40e_alloc_rx_bi,
> > thus kfree on rx_bi caused leak of already mapped DMA.
> >
> > In case of non XDP ring, do not free rx_bi and reuse already existing
> > buffer, move kfree to XDP rings only, remove unused i40e_alloc_rx_bi
> > function.
> >
> > steps for reproduction:
> > while :
> > do
> > for ((i=0; i<=8160; i=i+32))
> > do
> > ethtool -G enp130s0f0 rx $i tx $i
> > sleep 0.5
> > ethtool -g enp130s0f0
> > done
> > done
> >
> > v2: Fixed improper kerneldoc that resulted in a warning
> > v3: Applied commit msg fixes reported during a review
> 
> These should be after the '---'
> 
> >
> > Fixes: be1222b585fd ("i40e: Separate kernel allocated rx_bi rings from AF_XDP
> rings")
> > Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> > ---
> >   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 -
> >   drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 ++--
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 14 ++--
> >   drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 -
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 70 ++++++++++++++++---
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  2 +-
> >   6 files changed, 74 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index e518aaa2c0ca..0f2042f1597c 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -2181,9 +2181,6 @@ static int i40e_set_ringparam(struct net_device
> *netdev,
> >   			 */
> >   			rx_rings[i].tail = hw->hw_addr + I40E_PRTGEN_STATUS;
> >   			err = i40e_setup_rx_descriptors(&rx_rings[i]);
> > -			if (err)
> > -				goto rx_unwind;
> > -			err = i40e_alloc_rx_bi(&rx_rings[i]);
> >   			if (err)
> >   				goto rx_unwind;
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index e3d9804aeb25..ad15749a2dd3 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -3565,12 +3565,8 @@ static int i40e_configure_rx_ring(struct i40e_ring
> *ring)
> >   	if (ring->vsi->type == I40E_VSI_MAIN)
> >   		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
> >
> > -	kfree(ring->rx_bi);
> >   	ring->xsk_pool = i40e_xsk_pool(ring);
> >   	if (ring->xsk_pool) {
> > -		ret = i40e_alloc_rx_bi_zc(ring);
> > -		if (ret)
> > -			return ret;
> >   		ring->rx_buf_len =
> >   		  xsk_pool_get_rx_frame_size(ring->xsk_pool);
> >   		/* For AF_XDP ZC, we disallow packets to span on
> > @@ -3588,9 +3584,6 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
> >   			 ring->queue_index);
> >
> >   	} else {
> > -		ret = i40e_alloc_rx_bi(ring);
> > -		if (ret)
> > -			return ret;
> >   		ring->rx_buf_len = vsi->rx_buf_len;
> >   		if (ring->vsi->type == I40E_VSI_MAIN) {
> >   			ret = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > @@ -13304,6 +13297,11 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct
> bpf_prog *prog,
> >   		i40e_reset_and_rebuild(pf, true, true);
> >   	}
> >
> > +	if (!i40e_enabled_xdp_vsi(vsi) && prog)
> > +		i40e_realloc_rx_bi_zc(vsi, true);
> > +	else if (i40e_enabled_xdp_vsi(vsi) && !prog)
> > +		i40e_realloc_rx_bi_zc(vsi, false);
> > +
> >   	for (i = 0; i < vsi->num_queue_pairs; i++)
> >   		WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
> >
> > @@ -13536,6 +13534,7 @@ int i40e_queue_pair_disable(struct i40e_vsi *vsi, int
> queue_pair)
> >
> >   	i40e_queue_pair_disable_irq(vsi, queue_pair);
> >   	err = i40e_queue_pair_toggle_rings(vsi, queue_pair, false /* off */);
> > +	i40e_clean_rx_ring(vsi->rx_rings[queue_pair]);
> >   	i40e_queue_pair_toggle_napi(vsi, queue_pair, false /* off */);
> >   	i40e_queue_pair_clean_rings(vsi, queue_pair);
> >   	i40e_queue_pair_reset_stats(vsi, queue_pair);
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index 69e67eb6aea7..c5a7e3819ce2 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -1457,14 +1457,6 @@ int i40e_setup_tx_descriptors(struct i40e_ring
> *tx_ring)
> >   	return -ENOMEM;
> >   }
> >
> > -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
> > -{
> > -	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
> > -
> > -	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
> > -	return rx_ring->rx_bi ? 0 : -ENOMEM;
> > -}
> > -
> >   static void i40e_clear_rx_bi(struct i40e_ring *rx_ring)
> >   {
> >   	memset(rx_ring->rx_bi, 0, sizeof(*rx_ring->rx_bi) * rx_ring->count);
> > @@ -1593,6 +1585,12 @@ int i40e_setup_rx_descriptors(struct i40e_ring
> *rx_ring)
> >
> >   	rx_ring->xdp_prog = rx_ring->vsi->xdp_prog;
> >
> > +	WARN_ON(rx_ring->rx_bi);
> > +	rx_ring->rx_bi =
> > +		kcalloc(rx_ring->count, sizeof(*rx_ring->rx_bi), GFP_KERNEL);
> 
> This will overwrite, and, presumably, leak rx_ring->rx_bi for non-null
> values.
> 
> > +	if (!rx_ring->rx_bi)
> > +		return -ENOMEM;
> > +
> >   	return 0;
> >   }
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > index 41f86e9535a0..768290dc6f48 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
> > @@ -469,7 +469,6 @@ int __i40e_maybe_stop_tx(struct i40e_ring *tx_ring, int
> size);
> >   bool __i40e_chk_linearize(struct sk_buff *skb);
> >   int i40e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
> >   		  u32 flags);
> > -int i40e_alloc_rx_bi(struct i40e_ring *rx_ring);
> >
> >   /**
> >    * i40e_get_head - Retrieve head from head writeback
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 6d4009e0cbd6..ba33b3b7a2bf 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -10,14 +10,6 @@
> >   #include "i40e_txrx_common.h"
> >   #include "i40e_xsk.h"
> >
> > -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
> > -{
> > -	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
> > -
> > -	rx_ring->rx_bi_zc = kzalloc(sz, GFP_KERNEL);
> > -	return rx_ring->rx_bi_zc ? 0 : -ENOMEM;
> > -}
> > -
> >   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring)
> >   {
> >   	memset(rx_ring->rx_bi_zc, 0,
> > @@ -29,6 +21,58 @@ static struct xdp_buff **i40e_rx_bi(struct i40e_ring
> *rx_ring, u32 idx)
> >   	return &rx_ring->rx_bi_zc[idx];
> >   }
> >
> > +/**
> > + * i40e_realloc_rx_xdp_bi - reallocate for either XSK or normal buffer
> > + * @rx_ring: Current rx ring
> > + * @pool_present: is pool for XSK present
> > + *
> > + * Try allocating memory and return ENOMEM, if failed to allocate.
> > + * If allocation was successful, substitute buffer with allocated one.
> > + * Returns 0 on success, negative on failure
> > + */
> > +static int i40e_realloc_rx_xdp_bi(struct i40e_ring *rx_ring, bool pool_present)
> > +{
> > +	size_t elem_size = pool_present ? sizeof(*rx_ring->rx_bi_zc) :
> > +					  sizeof(*rx_ring->rx_bi);
> > +
> 
> no newline here
> 
> > +	void *sw_ring = kcalloc(rx_ring->count, elem_size, GFP_KERNEL);
> 
> newline here.
> 
> > +	if (!sw_ring)
> > +		return -ENOMEM;
> > +
> > +	if (pool_present) {
> > +		kfree(rx_ring->rx_bi);
> > +		rx_ring->rx_bi = NULL;
> > +		rx_ring->rx_bi_zc = sw_ring;
> > +	} else {
> > +		kfree(rx_ring->rx_bi_zc);
> > +		rx_ring->rx_bi_zc = NULL;
> > +		rx_ring->rx_bi = sw_ring;
> > +	}
> > +	return 0;
> > +}
> > +
> > +/**
> > + * i40e_realloc_rx_bi_zc - reallocate xdp queue pairs
> > + * @vsi: Current VSI
> > + * @zc: is zero copy set
> > + *
> > + * Reallocate buffer for rx_rings that might be used by XSK.
> > + * XDP requires more memory, than rx_buf provides.
> > + * Returns 0 on success, negative on failure
> > + */
> > +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc)
> > +{
> > +	struct i40e_ring *rx_ring;
> > +	unsigned long q;
> > +
> > +	for_each_set_bit(q, vsi->af_xdp_zc_qps, vsi->alloc_queue_pairs) {
> > +		rx_ring = vsi->rx_rings[q];
> > +		if (i40e_realloc_rx_xdp_bi(rx_ring, zc))
> > +			return -ENOMEM;
> > +	}
> > +	return 0;
> > +}
> > +
> >   /**
> >    * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
> >    * certain ring/qid
> > @@ -69,6 +113,10 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
> >   		if (err)
> >   			return err;
> >
> > +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> > +		if (err)
> > +			return err;
> > +
> >   		err = i40e_queue_pair_enable(vsi, qid);
> >   		if (err)
> >   			return err;
> > @@ -107,12 +155,16 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi,
> u16 qid)
> >   		err = i40e_queue_pair_disable(vsi, qid);
> >   		if (err)
> >   			return err;
> > +
> 
> Why this change?
> 
> >   	}
> >
> >   	clear_bit(qid, vsi->af_xdp_zc_qps);
> >   	xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
> >
> >   	if (if_running) {
> > +		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
> > +		if (err)
> > +			return err;
> >   		err = i40e_queue_pair_enable(vsi, qid);
> >   		if (err)
> >   			return err;
> > @@ -131,7 +183,7 @@ static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16
> qid)
> >    * This function enables or disables a buffer pool to a certain ring.
> >    *
> >    * Returns 0 on success, <0 on failure
> > - **/
> > + */
> 
> Also, this one. I don't mind this, but seems unrelated to the patch.
> 
> >   int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
> >   			u16 qid)
> >   {
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > index bb962987f300..821df248f8be 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> > @@ -32,7 +32,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int
> budget);
> >
> >   bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
> >   int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
> > -int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring);
> > +int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
> >   void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> >
> >   #endif /* _I40E_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
