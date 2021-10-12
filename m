Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E725942AEEF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 23:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 025E2823AB;
	Tue, 12 Oct 2021 21:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IP5Fu2EF_Adf; Tue, 12 Oct 2021 21:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C71CB81D35;
	Tue, 12 Oct 2021 21:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D8AB1BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 21:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0AE6440188
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 21:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5tS1pljAFkad for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 21:30:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D94C40150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 21:30:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="288148828"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="288148828"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 14:30:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="486610856"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 12 Oct 2021 14:30:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 14:30:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 14:30:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 14:30:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJ4tLHBcIll5nzyy8QJ8TIguCQ6lxygzv1ZoUrUacWpzc2eMu0fumeiPR9+rqkiaGF5whP4k9TZgheyvUk0En4S2AWICJyoALI5mShryGv37UGUbBK7hIYL4D9jyCVCjOMwkE5AYe7i+LUN00Vm15N+u8YPUli/+GuP0DvsjTNacEIAlA6B790Hy+m8rtLXQsa8p5TnXnOw96SzSnktrdXJPvz3IY9daAQEKsFPYnq6uAWG/DQylAhADZ7i1ibkBdoC0f00ZFesYWHomPZqZSWevPSh/lTxwYsSIYnmM5WY5K6J0giCa2G27mBB7oMc7DkDmtfS8ktuJkkQ6gobrlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qk4XBn3ARwWOwDBaF9sZA48uTwSuJ9LYw4neSqp3J8w=;
 b=ErtvsB70k9NFpVAzf6BRh4eE7bNSs6X+hhCoX6gavz+3P+ucnHu25i+2tuU5mcxAnA5kjH7VyBZvSuMqDpwovXdg91i+oBNDLhi3xDjU2NS7RHZQHIa+0561l0e7c4puvW8b7jXDCkVDkWel8KJOPP1zppXlpOnm4boAR1WuwAA7jPxH521Bh332VXTlErZ0IHe1MkSUncbOH5pDneBSE6fPXb8Cq5WHfUeCU9/AiebN4HmYHauRRnpOi7N8QS+oGIz6cU7MIMqBE93oYsMwG6Ac3GJINfGqDxPI0/ZVp4eEvAX4xElgH0iE3lIDB8JS/R++REaNu4q/hlJhUW+lIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qk4XBn3ARwWOwDBaF9sZA48uTwSuJ9LYw4neSqp3J8w=;
 b=dtEaQDA8AtWJIzY0RoJ7lDsUgnhPDhmz+XOjZclPk1ulHXOk+2C3YhHMCE8Dma7yA5i0sF36lLFYSqjGA+cDI0vA1z3rKWbx9+JGZIK/UXljFr+hXv/uzFxcU2EF4bjp+Sp4acL+isXbbiqg/kO30DNPhvSW/tBou7qnznim+mw=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1823.namprd11.prod.outlook.com (2603:10b6:300:10e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Tue, 12 Oct
 2021 21:29:58 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273%6]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 21:29:58 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-next PATCH v2 0/9] implement support for PTP on E822
 hardware
Thread-Index: AQHXvwWcKLM7NZ6BeUK2yzxKwYMmDavP4o8A
Date: Tue, 12 Oct 2021 21:29:57 +0000
Message-ID: <a461d675-7451-e2af-c7ed-9e7cfe80121e@intel.com>
References: <20211012010715.1684027-1-jacob.e.keller@intel.com>
In-Reply-To: <20211012010715.1684027-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2633e1e2-7d92-4750-47eb-08d98dc770d4
x-ms-traffictypediagnostic: MWHPR11MB1823:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1823E0B2E97FFD43910A90DFD6B69@MWHPR11MB1823.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: My2yJFObR2d0Nvxq0iqqb2H4lhe/ORAycgmR0a6zoR2O5FWwz9I392quPiAL8hDNx3uqgnCT5jcpem6zSRJao5hbzBUZc09WFVxJg+2VTsWDCii6IPYMCLhEnZ5NcDdT12J0XdR6Qke5Uk0cVnkZrraT7ajVB+5oKhBqY/VdSI9W3Ic9vHO9SfrUp3eKtfWNDFPBwLnVUzNDVQp40cFXeA0y4nuOHg/ANbpcQ07hzwdnfiBSL5tFluSmW6Ynjs8nqbOOcVRTlEthkPSmOLbexfWLZ7nGmMUI8Q1fsszNs3xyHDJkUYh2Ot6WrIf4wE8/87idrPmIafNW21mgCUREIet3pFpqvGWwaHyV/EZcQzznwwvV9VHPHk6MopxIVN/iqM681SfRVSsXJddmlmE9P1X8U4dfSZPmP/5ZlsinKiKVKbFj/j3H2fFwL3Fo1WbbPmxxj9aVyAyhBjtIp35wKSdP/JeK+7VhniCFLg8loZVrFHCyoRhFC96iJM9DX2JDdgCdV4xrdbyifAj2U3BQXbZpj1qfO6jec8IbxyrlXUqpSMxUsvDRZvsw2pv5ebfS/XN+52WEo98s2iZqIquEfu9lES00XSrpqU7uRr+0RRbd1/Vo9BY8D0w3ObcrNOE9ud657C9lZsngVjzEJXSrJ13VLWGInjH5PtNoGSoaMSDroDRBqGhUieuGbta0uCQQ1Cu9P/p55TeH+u1q35YaapsfHCRc9rHG4GxfgGN1WW/zWZjxxE19XjI70WSPoyjjDbJznXi8sI73hAR35qBrXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66476007)(2616005)(38070700005)(8676002)(110136005)(5660300002)(71200400001)(186003)(6486002)(64756008)(66946007)(66446008)(66556008)(8936002)(86362001)(26005)(316002)(83380400001)(53546011)(31686004)(6512007)(6506007)(76116006)(508600001)(36756003)(31696002)(38100700002)(122000001)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXJIakJFVE8xSkFJYVR1ODRIcGFXMFl0SjV4ZXltak1MaHJNQ1MreXFmUVlT?=
 =?utf-8?B?VmF4ampBSzdPeWUxOHRrY1ZhOTg1Z1JGMHRxY0VValJ6eitqd0JVTUtTcXhO?=
 =?utf-8?B?VGJxZXozM0ZzNSt5dHJkYVlLcVRNdHVxcTl0T2xWMGg0T2U0ZGNCLy9BTEYw?=
 =?utf-8?B?Mzlobm44cXFycHNZcVpkNi9HRndEVFhCSEFXbmlnTGwxMG1HdlgveGorL0gx?=
 =?utf-8?B?S09WYUpzR2NOYXdvbUFVbkZRT2dkbnFiMFpPSEZYWkMzS3QzMkcrRlJvb1JO?=
 =?utf-8?B?M3cvS0ZIcTRpY2MyekQ4KzJRMGZGOWtmZnllcVR3djdQMG9wRWduTzkxcGtC?=
 =?utf-8?B?ZHBKb0N2OXAyVE82WDE2VDNrQTYzUkd0MnNCdzA0Q3hHa3d1RjZBdHdNaDNy?=
 =?utf-8?B?RzE5dkpYNUFvNFZ5K01idzZjU20xdVdVSTZkNmcrSXNEcEtvVkhId0twMStm?=
 =?utf-8?B?M3ZZSkFxRE14RXZmVEdYdGJxWHZJRVhXSC9xV2Q1dVk4OWhqYjJhOFlubGtz?=
 =?utf-8?B?aURoMGVtTkM2cHh4dm1GU1pVM01hTlRHZnlud3ZhWjl3eXBmL3pJSlJ5QWFn?=
 =?utf-8?B?d0ViYmF0djlqKzN3bGpBVzAxWStyUmxMSU41YmF6YkdFQVZTcTVUWEduQWxP?=
 =?utf-8?B?ekRnbkx1ekNEbG5TWDJnYnBDdU0xckJoQ2U1M200SUhjeHc3N1AzYXRLcFc0?=
 =?utf-8?B?Wm05TTBLcG9WcGw5OSs2TmJubSs0bWtkVEF6d0VaT1Iza0xaZ2dXbjY1OWd5?=
 =?utf-8?B?WnRYN2pUYWE5YmZlYTcwZ2JiODNtVEJWejVFSVJmbnROUTFlU0NqOFI3Ny9t?=
 =?utf-8?B?OGQrVjBLelJUbkt3c2lnNlRadHlsTGVMK3RxK3ZTOG4xYW9wZ3RlcjkxdWlW?=
 =?utf-8?B?YnM3YWl6TDArOUtpdUp3cytjZUJaeGJjSCtzbUFoTVpVdDBBZ0xMTllxUENZ?=
 =?utf-8?B?MmdDNFBGTDVSUnlkYnVsMmJkRU1HWEwwR1FsSWtsNmdSQ2QrWVY3UUViL1NF?=
 =?utf-8?B?QmM0VXdWMUtkbCtxMXNobmZzT1NpMFBacnFKaGEwR25XRlFvTUFJOUhNVjk1?=
 =?utf-8?B?QkFWeGxxT1J4cWVtajlmejMxcUVXY2ZpYjI5Ny9xWGJ5NVl6YjlCNUtPSTJT?=
 =?utf-8?B?THkwYUx4bEpnYmhKSnNhWFN5SFppc2NlemNtcDBUM3Z3OVpnaVBkenZWekpq?=
 =?utf-8?B?eFNoUW5UTnRLVm9pTHFKZVpQSk41elBEMDVKaWc2MzdrVVZSN0tOUXMrMktQ?=
 =?utf-8?B?anJkZjdKZEo1c1lIMlFYcEQrYWpqbzZjYW0weUNXUW1ObGdqVWxiN01zaHZa?=
 =?utf-8?B?MkZ2YkxNazJOcXEvcVdsZGhoVUhaSVlTOGJDM1lSdmNHSm5CUDZqOG5HckRJ?=
 =?utf-8?B?L1FqOGJhbGh1TVhCS25IZSt4SEprcUlGckFqcjlDQ1FUd096QkZtazA3alc5?=
 =?utf-8?B?bUw1aWxPcDVlbXhKY2tjd3ByZEpDRWRHKzVoSHdBSW44L0dUZEc0ZS95QWNK?=
 =?utf-8?B?QWxJK2JMZ2lpRkk0T0FiZUdQc0l6MGxua1p4dHBOQ1FEckZIallqSkpzWlF3?=
 =?utf-8?B?Y3ozU2Z4b1JiM2V1OTJ3Q2xTekVza05WOXVkaWp0UGI1RjZUMzZjQ0tyWkJP?=
 =?utf-8?B?NzFTY3lJZ1N3SWxlNFhVbDU0TmFpdnBrRTBtdEwvU0lTRUdvNUJZSFZGTVFx?=
 =?utf-8?B?eWNBZk9QSWxONTdpUHdrbFJyek4zVUgvZU1IS2Zrcit0a3ZaSGRGSzBpcHFS?=
 =?utf-8?Q?XSBJFFUqvyk2HtrxBk=3D?=
Content-ID: <503D7941FF11E445A727AE633E7841DD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2633e1e2-7d92-4750-47eb-08d98dc770d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 21:29:57.9359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VE3VkHfgpt1q65mhRiWrzVqkpcUr1QRGXPu72w8qIH/zoS9UOEHwwz4PGsR0lsNy5UjxTthS/vOBIg9qRLNuFtOHRhH2KYfK+Q3E1+XMIZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1823
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 0/9] implement support for
 PTP on E822 hardware
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

On 10/11/2021 6:07 PM, Keller, Jacob E wrote:
> Extend the ice driver implementation to support PTP for the E822 based
> devices.
> 
> This includes a few cleanup patches, that fix some minor issues spotted
> while preparing them. In addition, there are some slight refactors to ease
> the addition of E822 support, followed by adding the new hardware
> implementation ice_ptp_hw.c.
> 
> There are a few major differences with E822 support compared to E810
> support:
> 
> *) The E822 device has a Clock Generation Unit which must be initialized in
> order to generate proper clock frequencies on the output that drives the PTP
> hardware clock registers
> 
> *) The E822 PHY is a bit different and requires a more complex
> initialization procedure which must be rerun any time the link configuration
> changes.
> 
> *) The E822 devices support enhanced timestamp calibration by making use of
> a process called Vernier offset measurement. This allows the hardware to
> measure phase offset related to the PHY clocks for Serdes and FEC, reducing
> the inaccuracy of the timestamp relative to the actual packet transmission
> and receipt. Making use of this requires data gathered from the first
> transmitted and received packets, and waiting for the PHY to complete the
> calibration measurements. This is done as part of a new kthread, ov_work.
> Note that to avoid delay in enabling timestamps, we start the PHY in
> 'bypass' mode which allows timestamps to be captured without the Vernier
> calibration measurement. Once the first packets have been sent and received,
> we then complete the calibration setup and exit bypass mode and begin using
> the more precise timestamps. According to the datasheet, timestamps without
> calibration data can be incorrect relative to actual receipt or transmission
> by up to 1 clock cycle (~1.25 nanoseconds), while calibrated timestamps
> should be correct to within 1/8th of a clock cycle (~0.15 nanoseconds).
> 
> *) E822 devices support crosstimestamping via PCIe PTM, which we enable when
> available on the platform.
> 
> There is a fair amount of logic required to perform PHY and CGU
> initialization, which is the vast majority of the new code, but it is fairly
> self contained within ice_ptp_hw.c, with the exception of monitoring for
> offset validity being handled by a kthread.
> 
> Changes since v1 resend:
> * Restore the ICE_HWTS config that got dropped when regenerating the series.
> 
> Changes since previous submission (v3):
> * Fix a bug with SIOCSHWTSTAMP failing to update returned filter to
>   HWTSTAMP_FILTER_ALL
> * Fix an issue with the Tx timestamp slot assignment using modulo instead
>   of division
> * Rebased on top of Intel Wired LAN dev-queue
> * Dropped the patches which were previously applied as fixes
> 
> Changes since v2:
> * introduced helper functions to enable and disable clock outputs
> 
> Changes since v1:
> * Fixed build against non-X86 arch for the PCIe PTM support
> 
> 
> Jacob Keller (9):
>   ice: introduce ice_base_incval function
>   ice: PTP: move setting of tstamp_config
>   ice: use 'int err' instead of 'int status' in ice_ptp_hw.c
>   ice: introduce ice_ptp_init_phc function
>   ice: convert clk_freq capability into time_ref
>   ice: implement basic E822 PTP support
>   ice: ensure the hardware Clock Generation Unit is configured
>   ice: exit bypass mode once hardware finishes timestamp calibration
>   ice: support crosstimestamping on E822 devices if supported
> 
>  drivers/net/ethernet/intel/Kconfig            |   10 +
>  drivers/net/ethernet/intel/ice/ice_cgu_regs.h |  116 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |   12 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |    9 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |    7 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  655 +++-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   30 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  374 +++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 2794 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  345 ++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   23 +-
>  11 files changed, 4174 insertions(+), 201 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> 
> 
> base-commit: 2d82122b64363fe17521f26b63a7c89b204d17eb
> 

Due to a rebasing error, this series still has a few ice_status mixups.
I've fixed these and double checked everything and am re-sending a v3
with also the small fixups noted by Paul Menzel! Thanks for the review!

Regards,
Jake

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
