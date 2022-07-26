Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0E858135F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 14:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E20584070;
	Tue, 26 Jul 2022 12:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E20584070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658839700;
	bh=2E1CjgrFmvVh1CgxdQveExBzUaZkj1Xmcw/WRoY4GxU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=72/TtIxwyX2VwI4WInnZLZRTXckuDJsZjgi3q3Kxk7mRP0ZAEDJmWoJ3lJNsWGRdO
	 ic3VjVBDFP1xnvqC2z7zuszXymKT3EYoQy7rl9dak8euap2zdsLA6VAeAO/UJrkq6q
	 xHF22mdQEXzpG0hBb0Y4UVGPJc/AG5WopIAVig6KYVP9gepMXY63lDvPfFTFzsorxj
	 gaILh01P/XMsFZwb6Ae67rf1ojrzafCwzzRVfX0d1s90+yWTAO3FlJRZuvJGJOmXaH
	 NuI3sacGR7/B8fJH0UYO+1esmLcBbo4xDaZgaQIWcUMCom2Cx5nkRbz7zK201JtFmx
	 Eas9V4apgczig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6-FtCI7I71G; Tue, 26 Jul 2022 12:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A9E482E22;
	Tue, 26 Jul 2022 12:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A9E482E22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0A51BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 12:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11A8140362
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 12:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11A8140362
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2SQ_6Y0Fpnfg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 12:48:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF1CC4035F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF1CC4035F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 12:48:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="349644455"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="349644455"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 05:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="742219840"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jul 2022 05:48:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 05:48:10 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 05:48:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 05:48:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 05:48:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G0ba0Cuphb8817PwLTHQjUbZr75kGo6RvtDcFBAYqoEyKb+LxgSECxMnxUlEInEQtzxFMsdG7Y/VECWfkIvRvIibfg+EElQHOtJu6HmnBHJiUOOVQGAeKEgk+wV8EKSNfIoejwCA3LvWFe/UtVq+WyEejabZF0vXHyov4+PaI/1j0RN6VmBHz4LUUNp/u0kGTNlsFIXPMZMRpSX2PN3OOSPFvpT0lE480eqLJdhq3Ddxl3CeYIfQKSD8/NAVxSaj9o0m+5Ud1dG7oWOsqU+2ElOrzzSff7on6IcBH/ckl+8OXDOyT4ZUHQWIX/cC9lD7iU2VVSc6jGdwB+hj5dKo5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZOGMR0FlPj/sb6lvv7IJOGQACYi8eFkGZRXSTkY5yv0=;
 b=JD32mBt4ZbARQxaigv+jdZC4PfsnAan7lpZAAElBap1VZvao+m45NP4NAv/CupxiPffYAxMO1ETHfPxK83kZW8N/9K8tJ4JleNtmrcVQzfz8NXVOruCiZb+Z9hIThLt0fhTacHSdNYaW/RPJIEdrv8c+icIEpo8LJ0hXoOy71VxcsZdBc4qR2jm5tjIHd4bdy3oPHhDial4tJNiuev7ccMInIiX6Nv0MQy2L6Qlo0YG+QrKU+x5Ta8ddctmljjO6/cZk/56o5LzY0LnzmopsYSZKnm+NE6QCLV+wheIArt8CMwxjk82lYhQ/dZbVnQeF2cotTiorzAtYRsrP7ebSSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN8PR11MB3650.namprd11.prod.outlook.com (2603:10b6:408:8f::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 12:48:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 12:48:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 1/7] ice: implement adjfine
 with mul_u64_u64_div_u64
Thread-Index: AQHYnUknvGZAmm6UwEKuk776vQQgBq2QoTFQ
Date: Tue, 26 Jul 2022 12:48:05 +0000
Message-ID: <BYAPR11MB3367B0D86E6C29F2E7928B58FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-2-jacob.e.keller@intel.com>
In-Reply-To: <20220721213001.2483596-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ae5499c-3854-48b8-aa4e-08da6f05156b
x-ms-traffictypediagnostic: BN8PR11MB3650:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M+BhLSbalwpPF/1cx/UMoAFE7D8yytmFI9kU0D4GcL0W8l9HUJl8Xk7sRUup/dlgK5QtN457uDo5dZnKZa9zSSlK9+tSLEZdf5gpOrhABU9P2HtwhQFakjxscTYKjXlZbn4YvQ77L99dtaevR/mXm3RGfceR3FhjlJs36fK3O2NIUdwGoOc1auwKfij7+mS2i8buAjBHrcmixuQeHy+3w67nBdeOv2n2JzzmlNWP5NHZqteV3nRunv8FX1oPDYQzV2JlPqGPP7TP6scNB5mHJvCJ9qfe65KXozjK9S2xp0Vul4xR90uX+yPpPbUtVrJX11Y47BACeGYmyd0ViN07OfBX+rkEVob164oZbRc/aqwwSVslxFGeAt3a74Kyin9BiGuC4fvMtNun7QteU5ToXWJM5WhTabs6+B0e8vYIOJx0ADb+OyqFa7q4eKcGPAOFbhdYZmQT370eoskzICiQrCA4AvuUfwG9tjMRm5GPaHxwlp+nlc2sxpijRbxUZaT9s1yX9+AnQhSd2yoM7VFaYDlJDqiwDIAI+/8bEd4PhwPsRTMQ/6jqdMZe0DmBdsxkoMTMKasG6L6UmAzz5KkQw1rJOPZPu1nKBQmdXh0S4yFph9W9NnSY872gw2NrCUOYK+hZiafMTa1sieueHkt9blNV974TyWJgQlZsGMRiMtuxPgXcl3E/KGGBoZtkwpV432xuk7k72NRs1J7M6URGNziHnZeWRA9PN0tkDKeGJGSiRTKvJbXSH25oVMvSNvGpGDKUXI35urgKo4mrk3kOD6o1cMjne3IVbUJ7yD3YTlM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(346002)(376002)(366004)(39860400002)(136003)(8676002)(64756008)(6506007)(7696005)(66556008)(66476007)(66946007)(66446008)(76116006)(2906002)(41300700001)(86362001)(71200400001)(5660300002)(9686003)(33656002)(8936002)(82960400001)(26005)(478600001)(52536014)(55016003)(38070700005)(53546011)(83380400001)(316002)(122000001)(110136005)(186003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mNRm8VBi9EPC/n6xcitcFwPgKQcxs9aExsq7NrsOYF77FCb8JRyw61KPwRzD?=
 =?us-ascii?Q?nZH5/R9FM2sbiXrgsnJTnfCNmopvxy7lk3M3E3yQKCKrpAvqW/B3j/T7n7Qw?=
 =?us-ascii?Q?iaTwYy6G9GpaUp+MVVJTHROMfnfIIOQWxzATxFkpBYSlp2vtFYboVqtVsPoV?=
 =?us-ascii?Q?04IFymEZ2F8t+O1Yha19D6zZ9prQo6kKga6L6OeRg6M8wLzRvvOVr6/V/lSH?=
 =?us-ascii?Q?mxm51X9mrxNVO8bKwz8P43ST0NqSLvB/L7GNjylAZQysWX2SsIqgNpf9TMot?=
 =?us-ascii?Q?PmcYf+WYAGEckk5ixVNkb5mVswbZNOHwrnKIh4bhvt3MF8eW+2mti7tO3Q56?=
 =?us-ascii?Q?txOaR5xVxOra9FFUJzURVfAmH0SgfGqEtQj7wwXIFiuJyqXHs4GntyfowS2q?=
 =?us-ascii?Q?YHSXrVa29ETLW24wq1DPn4wizKjlRuqev9xpeoeTMYQXxYzMPEMHc8D9mNeP?=
 =?us-ascii?Q?SLmQJv2y1RRTHuhTPWabHW6/1U2UNS7a9MLHSVxJfCSa5DzNABw00cHyE0Gh?=
 =?us-ascii?Q?ji298SHwDbOjaOooKJ570o4RDwle0YD/e+tLoi9MKNFaFIO+nIg8niCHpD33?=
 =?us-ascii?Q?T75ivjuyFbITqgM6ZTaUS21eHNylSNdsgY1tGG6Zo9D5SzpUbZkpRt09J1br?=
 =?us-ascii?Q?pCPObLwHa8mP3njwnL/q/93OfCMCoIpXjtb/swiamlroN9CIc+IgrRc4mcGZ?=
 =?us-ascii?Q?Rtt0LBiwSlm+t/l4l08+UBB+3dS2D8z96LnR64bYYXDtSGmKubrH3aIJBuiO?=
 =?us-ascii?Q?wTwk0m8jyYST48MLKBgiIAiBTF9m7XquDUMHGyMXgOCJ/1myQoGIMvz1rmSi?=
 =?us-ascii?Q?2Iti3WQH/9GmR8GLbEGw7zwDLMqKq6s7Wp0S1Ywe8JqFkIJW9XRjEYhYaARe?=
 =?us-ascii?Q?ubh0S0dypK+78oG3xbQEHbZ1umUeWPaL+zHiaWXKjEuTy+n1oXTBT8Ydvhbo?=
 =?us-ascii?Q?JM50gJOfyh7EtfjcgST9oKz4EMuZGbdMtC+nY3bhGp8QcggaT8v6u8KBHAc6?=
 =?us-ascii?Q?TdpR4QZYXxP1e9p3+tgAWopVxFl84/0mwl+wJj20gCMKuoTMdxURF/qYkBjW?=
 =?us-ascii?Q?sXpTsc6uM8tCbkbLu4vNPfrxHHHdxuSGBlDZDD1G0xoXlbYtaj8UaBQANdDT?=
 =?us-ascii?Q?R77fVwGPzwaXm5DsgfYK+yL9c/BbElKAam58hQWfaloeg3mzquPEXJE88rmW?=
 =?us-ascii?Q?XR+wG1M/9shNoP4bvmCpO7pqiyHIyQ79OPeYZF2AkkDXKgWmtHYmsu5E/zC7?=
 =?us-ascii?Q?ohMJGyTcglFZOrJwpyy8b6bfpeqomDDH0Qj/ny+cft2ZYPGNcrhtMshs2Y7U?=
 =?us-ascii?Q?MYjydW+xwHSCSVc0f9npumOR4bFZ2dGsrsS/pFXDTsQZOR3HHDQBSi6KPbGn?=
 =?us-ascii?Q?T33q6Vse+TdUhX48mi2wWVRzt4BOwV3vpFyoLRJ9DcAjuaQqd5hp9ykzUTp9?=
 =?us-ascii?Q?+h4e+9x6pqr7mUIDvGrq2P0HLO5ZvTx+jyZP4WJjFjTPq7fZCOfYofHHYICa?=
 =?us-ascii?Q?lm+3o1kv4as8y+yCkkbuTGKNk8+YKPKJJ2Zw3muc+FeNO+M5hWRQlLOFWI+u?=
 =?us-ascii?Q?5a/ukmpMUbFd+r20vn7aSc6/TYn34r+ei4oPfa/N?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ae5499c-3854-48b8-aa4e-08da6f05156b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 12:48:05.0774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rS2r76BeLzoqDUgG4YzJTIthhtp/j4lRiUSz6Aiuh+VvF3I01wY/lE93mbh/v9kER+47EQQrkgPjGUDd+jTl0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3650
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658839692; x=1690375692;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=98nC1v5dKGE649To5YvY+h0BGLOLRLxTFzBjugO9hcw=;
 b=GTyF1eQuifCoc0FLrqYRZSTvmAn8j0yct7BXZ8hzr9yhUoAcH8fQTpjp
 qRJYWd6IrtDcx5x2/ayGUiqeba093zBu9hE5J/fgPvTC4iAtzrkgVdt3j
 ou5qtYn9uRkHcs1lOdcZ3uijk+Bi7mie+jPq2XcNJ3LR53HWNSz/5kw0O
 6GfMU18uB6LGLkKxSYUXtBqoBfEPkZ3m4xZ83/O0doEw8XO1QvpWBpDG+
 K3gBWWTGb7OouW/bELm6+P+jSKw4VALlI1N3zFtvuREAC1gQCXJMEt21U
 5mlvSG9itM0IHWeDO5LNOTZv0QNafMxJ+6J4r1J4ktlyAMN4dVS+qs9iz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GTyF1eQu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next PATCH 1/7] ice: implement adjfine
 with mul_u64_u64_div_u64
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
> Sent: Friday, July 22, 2022 3:00 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 1/7] ice: implement adjfine with
> mul_u64_u64_div_u64
> 
> The PTP frequency adjustment code needs to determine an appropriate
> adjustment given an input scaled_ppm adjustment.
> 
> We calculate the adjustment to the register by multiplying the base
> (nominal) increment value by the scaled_ppm and then dividing by the
> scaled one million value.
> 
> For very large adjustments, this might overflow. To avoid this, both the
> scaled_ppm and divisor values are downshifted.
> 
> We can avoid that on X86 architectures by using mul_u64_u64_div_u64. This
> helper function will perform the multiplication and division with 128bit
> intermediate values. We know that scaled_ppm is never larger than the
> divisor so this operation will never result in an overflow.
> 
> This improves the accuracy of the calculations for large adjustment values on
> X86. It is likely an improvement on other architectures as well because the
> default implementation of mul_u64_u64_div_u64 is smarter than the original
> approach taken in the ice code.
> 
> Additionally, this implementation is easier to read, using fewer local variables
> and lines of code to implement.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
