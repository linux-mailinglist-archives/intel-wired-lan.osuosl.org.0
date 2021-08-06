Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB533E308A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 22:46:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 860C660A78;
	Fri,  6 Aug 2021 20:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CuNF9zgo1qyF; Fri,  6 Aug 2021 20:46:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A41D560755;
	Fri,  6 Aug 2021 20:46:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A0221BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 20:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D2944046E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 20:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxS_kJ-AoYZK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 20:46:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71E7B403F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 20:46:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10068"; a="214469930"
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="214469930"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 13:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="504134742"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 06 Aug 2021 13:46:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 13:46:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 13:46:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 13:46:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 13:46:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SLqN9KImqh3zJZpxqHu5kbZhXuwldeHDRVjRKY6XBJivZC+WjGq3s5EW4PFik+iibTVWkwsiMVDxjDDKP+9V71xzcay66B/lHzkYzio2cvfGJ3qnuu6mgADSe7VFfJRP2Kb+pvJMPMc/yc6/R+i/+xC6+XA9xnQbvZMpdkNxFui3ibNOQDY39ThG/0WG1d6o0mM+vEphnM2KdMx7pSafgVOMdtOOznyPRUnOZywerBSKd22i1PpJE07soXlFPlv6qWWxuCaIi7TvHL8Y268GJAd7dUTUjlpT6fUlUyW64FsBQV/EXsHvqX9C+GlT8RgL5SsLQiXJEoADLDhar85UaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdxWFdVgaCKvPBk+OLiCF0SC4bBfq9nit4rTY26qgZg=;
 b=gUaLlAmbBsDTVsdksZ8BcIVsXE6S7iv+ACACNnHdxI65kxeAOuLp7ijObykHHsIq2OeDLNFen8ytr0l410Xn2WpzCVViYqzMIYlW+VCZaZJnb9ruxtRXIY8kM2dd/vZK2Dc0nmIJuoqVOVCBTs9522qxekgOryt8buIt3uSKW3PAGYJScxnipNrSYQJ/feIzyg35ahQHb6vkrN46K5NXPw8kyZg0SBRmcPle0VR4Zy/HoMWVOjWqCk8UFkvhAB10BdTQ42SdIQ6kr8mCgjPTozAllpGO0TSmNlrEonp5+ZtNBDokOVUlFvALQ6VMAOsHG7RHQBnZb6+tLGC9PmdykA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdxWFdVgaCKvPBk+OLiCF0SC4bBfq9nit4rTY26qgZg=;
 b=c2ZbzGgJPARIqtlE2xE1jqOPbp+XWw/pXbVqJTMqCLNsoFuR7vCMHkJMJXb/lIPx50CFwsl0glEcSngtgiLZEe7+eKekT5gHocL1FbWLqAv929tt7kkkmdnzQ8+krh7d852owYHA88wk6OfwHq5ZHtWF6T8bnH/1BzdsUPifxtY=
Received: from SA2PR11MB4844.namprd11.prod.outlook.com (2603:10b6:806:f9::6)
 by SN6PR11MB3471.namprd11.prod.outlook.com (2603:10b6:805:c1::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.19; Fri, 6 Aug
 2021 20:46:07 +0000
Received: from SA2PR11MB4844.namprd11.prod.outlook.com
 ([fe80::cd73:847d:f9b6:be55]) by SA2PR11MB4844.namprd11.prod.outlook.com
 ([fe80::cd73:847d:f9b6:be55%4]) with mapi id 15.20.4394.018; Fri, 6 Aug 2021
 20:46:07 +0000
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v3 intel-next 1/6] ice: split ice_ring onto Tx/Rx
 separate structs
Thread-Index: AQHXik+iBp0vBhgd8ECUK9EgcjMmQKtm8deA
Date: Fri, 6 Aug 2021 20:46:07 +0000
Message-ID: <43a691ebd8d1672a138a17dfd356f1451e8099ac.camel@intel.com>
References: <20210805230046.28715-1-maciej.fijalkowski@intel.com>
 <20210805230046.28715-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20210805230046.28715-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c342f387-0ab8-4883-5afe-08d9591b3777
x-ms-traffictypediagnostic: SN6PR11MB3471:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3471A6B308E74EDA2B21A1CAF5F39@SN6PR11MB3471.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zX2W6ljEH5UbmbFqNu35wX0PjscmjsPrkkysqxQZf2kkHzjinwmLtkmHH4pxrm04hCPWMZ3BU4xC4iahKXCEnm5oDVKfqPw+YfBNKlt1QVMDIyx6sV6HPSG6SM5K1Iv2Kj1p195dvGQ41yaQqs56olRoh8XJcL1VWIvZYzY8BKNTpJV6DWeqTUgfaIvZFOVtqmzlFYF1ITyoEOpqsl76KF51TKJw0DEjU2zJTFzy5sIOGwOaw3Dsx8aCTI/6CsqLDGcpFO2A6d9LbysBRpEcO019LpOgBMG7T1+lgQNN1ncbBmL802qy02XesCbWzhQSiQhLt6TutGYVQ31REIKIHjuGq9AmS/bDTgicVUKzsOA7r2iBF5jBLMXpEMIhMwKte/umRQhp7NtXq1vjuVj7yVtQ/bDQCFmbIigDwqPpLDya/t+Tyn35Tf2KqclF+xuoybKCtHO0t4iuf2K+Ef2TbvGZigpG75zblDosMkSEIgFoYn4r3sJcWlixbChupjnL7mHhvGzHko9kfruPfVB/NCn+QOR5leJmqg1vpucJqGwNWdySvYtMYqJStI/nfanFlI0H142rPfbT6knADQhgEkG4iC40wR5daAYM1JrvN0K4krJdgr9S8SQ23hZmrSltqS36W3TM8v2grS06JpL3OplOvZLGFuhST3xDezjsvdlWDfwnZW3OWg2i70dEhJKMwTibM1xEqs1COYjCIfadH5QDOmB1+CDvPI8gTsSZCaY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4844.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(38100700002)(122000001)(5660300002)(186003)(478600001)(38070700005)(4326008)(6486002)(6506007)(26005)(86362001)(36756003)(71200400001)(110136005)(83380400001)(91956017)(8676002)(76116006)(8936002)(54906003)(66446008)(66946007)(2616005)(66476007)(64756008)(66556008)(30864003)(6512007)(316002)(2906002)(579004)(559001)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHNTTURyTGZ5cnRPdzA1U3BTcXdzV2l6dFordnl5dml2Rk1qRXdzUVEvN016?=
 =?utf-8?B?bHpBdnRyNVRzSGtWTUYyTkRiU055bDdkZ2FTZWx0b2d5SjFrc0xyaThsYitJ?=
 =?utf-8?B?QWhSRVRWYlRBMUdUOGV1WUJiVDFzeWc1NHFKY0VhaWgwQ05vR3Q2RzMvN3h5?=
 =?utf-8?B?cXkvK0pOUHdCc0p6OUZyakJrUFdjZFQ0ZHFPZzdpT2QwOHhvMjJsdUZMV3Jl?=
 =?utf-8?B?TVVQd1hvK0FaS1hvYlh6VFdNQTZBWGc4N2xrcHRoU3BLR20zZjAzNWxhR0Za?=
 =?utf-8?B?aW5nRmdtNmV6Um82ZWh4RU8wVHFHS0FWeVNjdFROY0w3clozN0hYdjBVOTY3?=
 =?utf-8?B?a0ZsSklEeWtrQXROQmRxem1Ed0RUWEdiY2JQT3FrbFc0eFo1Vkp1RGNNOHlY?=
 =?utf-8?B?cmx4V1RyTHNnbUtFaDE0NS9td2FaSmZtYWNwSDFQdmt1RWViY3hVaGJTWkNL?=
 =?utf-8?B?dkxQbUNRNzhsZDNqOXVuTWt5MXR6dlgwaENoT2JvbVdyMnl6Mk51TlFCeGpP?=
 =?utf-8?B?MVh2T243MGxjdElYa0dhY1JFT1dwT1dOeEg4NmRIclFRbjI3NUxaQUFIUGVC?=
 =?utf-8?B?NkNpWUtVeGNwUDlFREZFL2xtYmM5aFBnQzhnU0IrQzBZWDA2MjNFaUxrSEJm?=
 =?utf-8?B?eTVsTDV2WWJ1L2Z4c0FqdU1aY09kSkZnQjZNR3JqODZGZHp5VW9xQTFzVWtm?=
 =?utf-8?B?UFMvN2JhTC9YbXZDUy9zQ1lZd2FhQ1UzWU0zTE9kMHFVYTI5UVQ3NjhkdzFP?=
 =?utf-8?B?bHM0SmxOaGVnMjNreU9OOVBBa05QcWlpRk9qQks0WlV3azdaSURlNi93emhM?=
 =?utf-8?B?bGdKb2V3QTEzdFN1MDdWNWFJV3BPMS9DUkVpdHYzVUJmQ1RGV0d5bEs2bVhO?=
 =?utf-8?B?MkQ5d0RJTmZBaWV3ZytIVHEra3Z3S0JYWWczWWdPb2xCMzE2TDVpejhRTlNl?=
 =?utf-8?B?OUQyQW9LK1ZZR3dCc01ZUTFYZVhFdFJ5Ty9WT1MrVENJNmxjODV3bHZ3VE1U?=
 =?utf-8?B?RXR0Ym4xRFZtUWdXQjNzWjFtQ0M0OGNJR1Zac0NiRDZyK0JDK2JGVUZWOU1J?=
 =?utf-8?B?VjRlOVB1OHpNVmxYdmwyM3J4eHhpa1JHdHlRU1UxQ1RUaHE3NWVpbFR5Q0FO?=
 =?utf-8?B?VTU3QU1LV3lFYktzb3VxUzhzMnMwUXgxWERDbFNVNkxSYVNFVU0waTlWNUZi?=
 =?utf-8?B?MGl4R0pQSlFEMGJwN0dha2JIWElacWJiM3RQRnBOM2IvditYUWtxVFFqMjNU?=
 =?utf-8?B?Rm5pWXVhSFl6bTVCVms2aDIzcWVxdy9IbUhvTDljd0JvanNtMW9RVkV2b1Qw?=
 =?utf-8?B?c0pEVnZMQjZrSWVzeExSeGVIbnJ6L1BrSTFXcXBrcG9SWDhleHFpVXBNY3Zq?=
 =?utf-8?B?bnQ0TUlRd1FTT0Ryd203cmpoOVBsN2N5QWNkU240dEE5OHBwSGttMVI3UEJj?=
 =?utf-8?B?U0Q3L043cGw2OVhyMldibkNldTJCVHFJWkFBLzBlMjZ2YXUrakNQNzFCQ2Y4?=
 =?utf-8?B?dGFDYTc4WGNJVjlTM0F1djIyaEsxZUNSM2VSRGJaRkpCMVFjKzgzZStFTmtU?=
 =?utf-8?B?My8vR1NYc2JJcFFiRnUrNHhkbGcrZEpWY3F4Zjg3ZXdwUG00UURpQWpGcVJo?=
 =?utf-8?B?RFZyeGNySTFsNEtpVXJhdUlNSmhvclhONFlZSzJ1NlVZUUZMTlhaRnAvNjlk?=
 =?utf-8?B?ZnZVRXErb0hMVXdNLytyU2J2eXhJNCs5QURZQTJOblFsK1NvU3BOcWZSY2Rm?=
 =?utf-8?B?eUdOWFFqaDV3QnlnVG1XT1pJRjIvb3dpN2dJYyswQ3kwa296WHNaU0MxTnNi?=
 =?utf-8?B?NEg5OVAxL2ZQMWhBb3dmZz09?=
Content-ID: <B789E7180FDC0340AA1C38E7B31B0962@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4844.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c342f387-0ab8-4883-5afe-08d9591b3777
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 20:46:07.7302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w0Nvp3XoftM2c0g/ab5na6Qq4Zn3JMqqFCWPmuJDrPcJs106dIVpjfPUbee0fXATRmg3xHT/bZATGejme4DZ5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3471
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 intel-next 1/6] ice: split ice_ring
 onto Tx/Rx separate structs
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
Cc: "joamaki@gmail.com" <joamaki@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "toke@redhat.com" <toke@redhat.com>, "bjorn@kernel.org" <bjorn@kernel.org>,
 "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-08-06 at 01:00 +0200, Maciej Fijalkowski wrote:
> While it was convenient to have a generic ring structure that served
> both Tx and Rx sides, next commits are going to introduce several
> Tx-specific fields, so in order to avoid hurting the Rx side, let's
> pull out the Tx ring onto new ice_tx_ring struct and let the ice_ring
> handle the Rx rings only.

I like this change. It makes a lot of sense because the Rx/Tx rings
have diverged so much.

I don't see any changes in the coalesce code. I'm pretty sure there
should be some changes in ice_set_rc_coalesce() at the very least
based on these changes.

> 
> Make the union out of the ring container within ice_q_vector so that
> it
> is possible to iterate over newly introduced ice_tx_ring.
> 
> Remove the @size as it's only accessed from control path and it can
> be
> calculated pretty easily.
> 
> Remove @ring_active as it's not actively used anywhere.
> 
> Change definitions of ice_update_ring_stats and
> ice_fetch_u64_stats_per_ring so that they are ring agnostic and can
> be
> used for both Rx and Tx rings.
> 
> Sizes of Rx and Tx ring structs are 256 and 192 bytes, respectively.
> In
> Rx ring xdp_rxq_info occupies its own cacheline, so it's the major
> difference now.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 27 ++++--
>  drivers/net/ethernet/intel/ice/ice_base.c     | 27 +++---
>  drivers/net/ethernet/intel/ice/ice_base.h     |  6 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  5 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  6 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 17 ++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 28 +++---
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 47 +++++-----
>  drivers/net/ethernet/intel/ice/ice_trace.h    |  8 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 87 ++++++++++-------
> -
>  drivers/net/ethernet/intel/ice/ice_txrx.h     | 90 ++++++++++++-----
> --
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  6 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  8 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      | 29 +++---
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |  8 +-
>  17 files changed, 233 insertions(+), 172 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index a450343fbb92..2e15e097bc0f 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -266,7 +266,7 @@ struct ice_vsi {
>  	struct ice_pf *back;		 /* back pointer to PF */
>  	struct ice_port_info *port_info; /* back pointer to port_info
> */
>  	struct ice_ring **rx_rings;	 /* Rx ring array */

If you are doing this, we should be explicit for Rx rings too and
rename ice_ring to ice_rx_ring.

Obviously this would generate some more work here, but I think
it's necessary with this change.

> -	struct ice_ring **tx_rings;	 /* Tx ring array */
> +	struct ice_tx_ring **tx_rings;	 /* Tx ring array */
>  	struct ice_q_vector **q_vectors; /* q_vector array */
>  
>  	irqreturn_t (*irq_handler)(int irq, void *data);
> @@ -343,7 +343,7 @@ struct ice_vsi {
>  	u16 qset_handle[ICE_MAX_TRAFFIC_CLASS];
>  	struct ice_tc_cfg tc_cfg;
>  	struct bpf_prog *xdp_prog;
> -	struct ice_ring **xdp_rings;	 /* XDP ring array */
> +	struct ice_tx_ring **xdp_rings;	 /* XDP ring array */
>  	unsigned long *af_xdp_zc_qps;	 /* tracks AF_XDP ZC enabled
> qps */
>  	u16 num_xdp_txq;		 /* Used XDP queues */
>  	u8 xdp_mapping_mode;		 /*
> ICE_MAP_MODE_[CONTIG|SCATTER] */
> @@ -555,14 +555,14 @@ static inline bool ice_is_xdp_ena_vsi(struct
> ice_vsi *vsi)
>  	return !!vsi->xdp_prog;
>  }
>  
> -static inline void ice_set_ring_xdp(struct ice_ring *ring)
> +static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
>  {
>  	ring->flags |= ICE_TX_FLAGS_RING_XDP;
>  }
>  
>  /**
>   * ice_xsk_pool - get XSK buffer pool bound to a ring
> - * @ring: ring to use
> + * @ring: Rx ring to use
>   *
>   * Returns a pointer to xdp_umem structure if there is a buffer pool
> present,
>   * NULL otherwise.
> @@ -572,8 +572,23 @@ static inline struct xsk_buff_pool
> *ice_xsk_pool(struct ice_ring *ring)
>  	struct ice_vsi *vsi = ring->vsi;
>  	u16 qid = ring->q_index;
>  
> -	if (ice_ring_is_xdp(ring))
> -		qid -= vsi->num_xdp_txq;
> +	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi-
> >af_xdp_zc_qps))
> +		return NULL;
> +
> +	return xsk_get_pool_from_qid(vsi->netdev, qid);

Is this a bug fix? It seems like before we
> +}
> +
> +/**
> + * ice_tx_xsk_pool - get XSK buffer pool bound to a ring
> + * @ring: Tx ring to use
> + *
> + * Returns a pointer to xdp_umem structure if there is a buffer pool
> present,
> + * NULL otherwise. Tx equivalent of ice_xsk_pool.
> + */
> +static inline struct xsk_buff_pool *ice_tx_xsk_pool(struct
> ice_tx_ring *ring)
> +{
> +	struct ice_vsi *vsi = ring->vsi;
> +	u16 qid = ring->q_index - vsi->num_xdp_txq;

RCT. Should just assign the qid variable after to keep RCT
ordering. Probably not strictly necessary though because it
makes sense this way since you have to deref the vsi first.

>  
>  	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi-
> >af_xdp_zc_qps))
>  		return NULL;
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index c36057efc7ae..838ee4b8d96f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -146,6 +146,7 @@ static void ice_free_q_vector(struct ice_vsi
> *vsi, int v_idx)
>  {
>  	struct ice_q_vector *q_vector;
>  	struct ice_pf *pf = vsi->back;
> +	struct ice_tx_ring *tx_ring;
>  	struct ice_ring *ring;
struct ice_rx_ring *rx_ring; would be much more clear here
>  	struct device *dev;
>  
> @@ -156,8 +157,8 @@ static void ice_free_q_vector(struct ice_vsi
> *vsi, int v_idx)
>  	}
>  	q_vector = vsi->q_vectors[v_idx];
>  
> -	ice_for_each_ring(ring, q_vector->tx)
> -		ring->q_vector = NULL;
> +	ice_for_each_tx_ring(tx_ring, q_vector->tx)
> +		tx_ring->q_vector = NULL;

It seems like if we used a "void *ring" in the ice_ring_container
it would simplify some of this and we wouldn't need a
differnt "for_each" for loop.

The only downfall is we would have to cast to the correct ring
type based on context when we want to dereference it.

>  	ice_for_each_ring(ring, q_vector->rx)
>  		ring->q_vector = NULL;
Then it would be more explicit:

ice_for_each_rx_ring(ring, q_vector->rx)
	rx_ring->q_vector = NULL;
>  
> @@ -206,7 +207,7 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
>   * @ring: ring to get the absolute queue index
>   * @tc: traffic class number
>   */
> -static u16 ice_calc_q_handle(struct ice_vsi *vsi, struct ice_ring
> *ring, u8 tc)
> +static u16 ice_calc_q_handle(struct ice_vsi *vsi, struct ice_tx_ring
> *ring, u8 tc)

should this be ice_calc_txq_handle()? Seems like it should have always
been called that, but your change made it more obvious.

>  {
>  	WARN_ONCE(ice_ring_is_xdp(ring) && tc, "XDP ring can't belong
> to TC other than 0\n");
>  
> @@ -224,7 +225,7 @@ static u16 ice_calc_q_handle(struct ice_vsi *vsi,
> struct ice_ring *ring, u8 tc)
>   * This enables/disables XPS for a given Tx descriptor ring
>   * based on the TCs enabled for the VSI that ring belongs to.
>   */
> -static void ice_cfg_xps_tx_ring(struct ice_ring *ring)
> +static void ice_cfg_xps_tx_ring(struct ice_tx_ring *ring)
>  {
>  	if (!ring->q_vector || !ring->netdev)
>  		return;
> @@ -246,7 +247,7 @@ static void ice_cfg_xps_tx_ring(struct ice_ring
> *ring)
>   * Configure the Tx descriptor ring in TLAN context.
>   */
>  static void
> -ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx
> *tlan_ctx, u16 pf_q)
> +ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx
> *tlan_ctx, u16 pf_q)
>  {
>  	struct ice_vsi *vsi = ring->vsi;
>  	struct ice_hw *hw = &vsi->back->hw;
> @@ -258,7 +259,7 @@ ice_setup_tx_ctx(struct ice_ring *ring, struct
> ice_tlan_ctx *tlan_ctx, u16 pf_q)
>  	/* Transmit Queue Length */
>  	tlan_ctx->qlen = ring->count;
>  
> -	ice_set_cgd_num(tlan_ctx, ring);
> +	ice_set_cgd_num(tlan_ctx, ring->dcb_tc);
>  
>  	/* PF number */
>  	tlan_ctx->pf_num = hw->pf_id;
> @@ -660,16 +661,16 @@ void ice_vsi_map_rings_to_vectors(struct
> ice_vsi *vsi)
>  		tx_rings_per_v = (u8)DIV_ROUND_UP(tx_rings_rem,
>  						  q_vectors - v_id);
>  		q_vector->num_ring_tx = tx_rings_per_v;
> -		q_vector->tx.ring = NULL;
> +		q_vector->tx.tx_ring = NULL;
>  		q_vector->tx.itr_idx = ICE_TX_ITR;
>  		q_base = vsi->num_txq - tx_rings_rem;
>  
>  		for (q_id = q_base; q_id < (q_base + tx_rings_per_v);
> q_id++) {
> -			struct ice_ring *tx_ring = vsi->tx_rings[q_id];
> +			struct ice_tx_ring *tx_ring = vsi-
> >tx_rings[q_id];
>  
>  			tx_ring->q_vector = q_vector;
> -			tx_ring->next = q_vector->tx.ring;
> -			q_vector->tx.ring = tx_ring;
> +			tx_ring->next = q_vector->tx.tx_ring;
> +			q_vector->tx.tx_ring = tx_ring;
>  		}
>  		tx_rings_rem -= tx_rings_per_v;
>  
> @@ -711,7 +712,7 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
>   * @qg_buf: queue group buffer
>   */
>  int
> -ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
> +ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>  		struct ice_aqc_add_tx_qgrp *qg_buf)
>  {
>  	u8 buf_len = struct_size(qg_buf, txqs, 1);
> @@ -870,7 +871,7 @@ void ice_trigger_sw_intr(struct ice_hw *hw,
> struct ice_q_vector *q_vector)
>   */
>  int
>  ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src
> rst_src,
> -		     u16 rel_vmvf_num, struct ice_ring *ring,
> +		     u16 rel_vmvf_num, struct ice_tx_ring *ring,
>  		     struct ice_txq_meta *txq_meta)
>  {
>  	struct ice_pf *pf = vsi->back;
> @@ -927,7 +928,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum
> ice_disq_rst_src rst_src,
>   * are needed for stopping Tx queue
>   */
>  void
> -ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_ring *ring,
> +ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>  		  struct ice_txq_meta *txq_meta)
>  {
>  	u8 tc;
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.h
> b/drivers/net/ethernet/intel/ice/ice_base.h
> index 20e1c29aa68a..2ce777eb53b0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.h
> +++ b/drivers/net/ethernet/intel/ice/ice_base.h
> @@ -15,7 +15,7 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);
>  void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
>  void ice_vsi_free_q_vectors(struct ice_vsi *vsi);
>  int
> -ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring,
> +ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>  		struct ice_aqc_add_tx_qgrp *qg_buf);
>  void ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector);
>  void
> @@ -25,9 +25,9 @@ ice_cfg_rxq_interrupt(struct ice_vsi *vsi, u16 rxq,
> u16 msix_idx, u16 itr_idx);
>  void ice_trigger_sw_intr(struct ice_hw *hw, struct ice_q_vector
> *q_vector);
>  int
>  ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src
> rst_src,
> -		     u16 rel_vmvf_num, struct ice_ring *ring,
> +		     u16 rel_vmvf_num, struct ice_tx_ring *ring,
>  		     struct ice_txq_meta *txq_meta);
>  void
> -ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_ring *ring,
> +ice_fill_txq_meta(struct ice_vsi *vsi, struct ice_tx_ring *ring,
>  		  struct ice_txq_meta *txq_meta);
>  #endif /* _ICE_BASE_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index 926cf748c5ec..2507223bfdc7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -194,7 +194,8 @@ u8 ice_dcb_get_tc(struct ice_vsi *vsi, int
> queue_index)
>   */
>  void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi)
>  {
> -	struct ice_ring *tx_ring, *rx_ring;
> +	struct ice_tx_ring *tx_ring;
> +	struct ice_ring *rx_ring;
>  	u16 qoffset, qcount;
>  	int i, n;
>  
> @@ -814,7 +815,7 @@ void ice_update_dcb_stats(struct ice_pf *pf)
>   * tag will already be configured with the correct ID and priority
> bits
>   */
>  void
> -ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
> +ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
>  			      struct ice_tx_buf *first)
>  {
>  	struct sk_buff *skb = first->skb;
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> index 261b6e2ed7bc..a5bdf47cd34a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
> @@ -28,7 +28,7 @@ void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi);
>  int ice_init_pf_dcb(struct ice_pf *pf, bool locked);
>  void ice_update_dcb_stats(struct ice_pf *pf);
>  void
> -ice_tx_prepare_vlan_flags_dcb(struct ice_ring *tx_ring,
> +ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
>  			      struct ice_tx_buf *first);
>  void
>  ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
> @@ -49,9 +49,9 @@ static inline bool ice_find_q_in_range(u16 low, u16
> high, unsigned int tx_q)
>  }
>  
>  static inline void
> -ice_set_cgd_num(struct ice_tlan_ctx *tlan_ctx, struct ice_ring
> *ring)
> +ice_set_cgd_num(struct ice_tlan_ctx *tlan_ctx, u8 dcb_tc)
>  {
> -	tlan_ctx->cgd_num = ring->dcb_tc;
> +	tlan_ctx->cgd_num = dcb_tc;

Seems like this change isn't 100% necessary as part of this patch,
but I guess you would have had to update it to use ice_tx_ring,
so this does make sense to just pass the dcb_tc.

>  }
>  
>  static inline bool ice_is_dcb_active(struct ice_pf *pf)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index d95a5daca114..644ce9f3494d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -584,7 +584,7 @@ static bool ice_lbtest_check_frame(u8 *frame)
>   *
>   * Function sends loopback packets on a test Tx ring.
>   */
> -static int ice_diag_send(struct ice_ring *tx_ring, u8 *data, u16
> size)
> +static int ice_diag_send(struct ice_tx_ring *tx_ring, u8 *data, u16
> size)
>  {
>  	struct ice_tx_desc *tx_desc;
>  	struct ice_tx_buf *tx_buf;
> @@ -676,9 +676,10 @@ static u64 ice_loopback_test(struct net_device
> *netdev)
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
>  	struct ice_pf *pf = orig_vsi->back;
> -	struct ice_ring *tx_ring, *rx_ring;
>  	u8 broadcast[ETH_ALEN], ret = 0;
>  	int num_frames, valid_frames;
> +	struct ice_tx_ring *tx_ring;
> +	struct ice_ring *rx_ring;
>  	struct device *dev;
>  	u8 *tx_frame;
>  	int i;
> @@ -1318,6 +1319,7 @@ ice_get_ethtool_stats(struct net_device
> *netdev,
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
> +	struct ice_tx_ring *tx_ring;
>  	struct ice_ring *ring;
>  	unsigned int j;
>  	int i = 0;
> @@ -1336,10 +1338,10 @@ ice_get_ethtool_stats(struct net_device
> *netdev,
>  	rcu_read_lock();
>  
>  	ice_for_each_alloc_txq(vsi, j) {
> -		ring = READ_ONCE(vsi->tx_rings[j]);
> +		tx_ring = READ_ONCE(vsi->tx_rings[j]);
>  		if (ring) {

This should be "if (tx_ring)"

> -			data[i++] = ring->stats.pkts;
> -			data[i++] = ring->stats.bytes;
> +			data[i++] = tx_ring->stats.pkts;
> +			data[i++] = tx_ring->stats.bytes;
>  		} else {
>  			data[i++] = 0;
>  			data[i++] = 0;
> @@ -2667,9 +2669,10 @@ ice_get_ringparam(struct net_device *netdev,
> struct ethtool_ringparam *ring)
>  static int
>  ice_set_ringparam(struct net_device *netdev, struct
> ethtool_ringparam *ring)
>  {
> -	struct ice_ring *tx_rings = NULL, *rx_rings = NULL;
> +	struct ice_tx_ring *tx_rings = NULL;
> +	struct ice_ring *rx_rings = NULL;
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
> -	struct ice_ring *xdp_rings = NULL;
> +	struct ice_tx_ring *xdp_rings = NULL;

RCT got a little messed up here.

>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
>  	int i, timeout = 50, err = 0;
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index dde9802c6c72..ac0d7a52406b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -379,12 +379,12 @@ static irqreturn_t ice_msix_clean_ctrl_vsi(int
> __always_unused irq, void *data)
>  {
>  	struct ice_q_vector *q_vector = (struct ice_q_vector *)data;
>  
> -	if (!q_vector->tx.ring)

I don't think this function would have changed if we used a "void
*ring" in the ice_ring_container.

> +	if (!q_vector->tx.tx_ring)
>  		return IRQ_HANDLED;
>  
>  #define FDIR_RX_DESC_CLEAN_BUDGET 64
>  	ice_clean_rx_irq(q_vector->rx.ring, FDIR_RX_DESC_CLEAN_BUDGET);
> -	ice_clean_ctrl_tx_irq(q_vector->tx.ring);
> +	ice_clean_ctrl_tx_irq(q_vector->tx.tx_ring);
>  
>  	return IRQ_HANDLED;
>  }
> @@ -1286,7 +1286,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi
> *vsi)
>  	dev = ice_pf_to_dev(pf);
>  	/* Allocate Tx rings */
>  	for (i = 0; i < vsi->alloc_txq; i++) {
> -		struct ice_ring *ring;
> +		struct ice_tx_ring *ring;
>  
>  		/* allocate with kzalloc(), free with kfree_rcu() */
>  		ring = kzalloc(sizeof(*ring), GFP_KERNEL);
> @@ -1296,7 +1296,6 @@ static int ice_vsi_alloc_rings(struct ice_vsi
> *vsi)
>  
>  		ring->q_index = i;
>  		ring->reg_idx = vsi->txq_map[i];
> -		ring->ring_active = false;
>  		ring->vsi = vsi;
>  		ring->tx_tstamps = &pf->ptp.port.tx;
>  		ring->dev = dev;
> @@ -1315,7 +1314,6 @@ static int ice_vsi_alloc_rings(struct ice_vsi
> *vsi)
>  
>  		ring->q_index = i;
>  		ring->reg_idx = vsi->rxq_map[i];
> -		ring->ring_active = false;
>  		ring->vsi = vsi;
>  		ring->netdev = vsi->netdev;
>  		ring->dev = dev;
> @@ -1710,7 +1708,7 @@ int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi,
> u16 q_idx)
>  	return ice_vsi_cfg_rxq(vsi->rx_rings[q_idx]);
>  }
>  
> -int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_ring
> **tx_rings, u16 q_idx)
> +int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring
> **tx_rings, u16 q_idx)
>  {
>  	struct ice_aqc_add_tx_qgrp *qg_buf;
>  	int err;
> @@ -1766,7 +1764,7 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
>   * Configure the Tx VSI for operation.
>   */
>  static int
> -ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings, u16
> count)
> +ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings,
> u16 count)
>  {
>  	struct ice_aqc_add_tx_qgrp *qg_buf;
>  	u16 q_idx = 0;
> @@ -1818,7 +1816,7 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
>  		return ret;
>  
>  	for (i = 0; i < vsi->num_xdp_txq; i++)
> -		vsi->xdp_rings[i]->xsk_pool = ice_xsk_pool(vsi-
> >xdp_rings[i]);
> +		vsi->xdp_rings[i]->xsk_pool = ice_tx_xsk_pool(vsi-
> >xdp_rings[i]);
>  
>  	return ret;
>  }
> @@ -2057,7 +2055,7 @@ int ice_vsi_stop_all_rx_rings(struct ice_vsi
> *vsi)
>   */
>  static int
>  ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src
> rst_src,
> -		      u16 rel_vmvf_num, struct ice_ring **rings, u16
> count)
> +		      u16 rel_vmvf_num, struct ice_tx_ring **rings, u16
> count)
>  {
>  	u16 q_idx;
>  
> @@ -3357,10 +3355,10 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8
> ena_tc)
>   *
>   * This function assumes that caller has acquired a u64_stats_sync
> lock.
>   */
> -static void ice_update_ring_stats(struct ice_ring *ring, u64 pkts,
> u64 bytes)
> +static void ice_update_ring_stats(struct ice_q_stats *stats, u64
> pkts, u64 bytes)
>  {
> -	ring->stats.bytes += bytes;
> -	ring->stats.pkts += pkts;
> +	stats->bytes += bytes;
> +	stats->pkts += pkts;

This is a nice little clean up.

>  }
>  
>  /**
> @@ -3369,10 +3367,10 @@ static void ice_update_ring_stats(struct
> ice_ring *ring, u64 pkts, u64 bytes)
>   * @pkts: number of processed packets
>   * @bytes: number of processed bytes
>   */
> -void ice_update_tx_ring_stats(struct ice_ring *tx_ring, u64 pkts,
> u64 bytes)
> +void ice_update_tx_ring_stats(struct ice_tx_ring *tx_ring, u64 pkts,
> u64 bytes)
>  {
>  	u64_stats_update_begin(&tx_ring->syncp);
> -	ice_update_ring_stats(tx_ring, pkts, bytes);
> +	ice_update_ring_stats(&tx_ring->stats, pkts, bytes);
>  	u64_stats_update_end(&tx_ring->syncp);
>  }
>  
> @@ -3385,7 +3383,7 @@ void ice_update_tx_ring_stats(struct ice_ring
> *tx_ring, u64 pkts, u64 bytes)
>  void ice_update_rx_ring_stats(struct ice_ring *rx_ring, u64 pkts,
> u64 bytes)
>  {
>  	u64_stats_update_begin(&rx_ring->syncp);
> -	ice_update_ring_stats(rx_ring, pkts, bytes);
> +	ice_update_ring_stats(&rx_ring->stats, pkts, bytes);
>  	u64_stats_update_end(&rx_ring->syncp);
>  }
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h
> b/drivers/net/ethernet/intel/ice/ice_lib.h
> index d5a28bf0fc2c..2a69666db194 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -14,7 +14,7 @@ void ice_update_eth_stats(struct ice_vsi *vsi);
>  
>  int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx);
>  
> -int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_ring
> **tx_rings, u16 q_idx);
> +int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring
> **tx_rings, u16 q_idx);
>  
>  int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
>  
> @@ -93,7 +93,7 @@ void ice_vsi_free_tx_rings(struct ice_vsi *vsi);
>  
>  void ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena);
>  
> -void ice_update_tx_ring_stats(struct ice_ring *ring, u64 pkts, u64
> bytes);
> +void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts,
> u64 bytes);
>  
>  void ice_update_rx_ring_stats(struct ice_ring *ring, u64 pkts, u64
> bytes);
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index ef8d1815af56..cbcb4ad60852 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -61,7 +61,7 @@ bool netif_is_ice(struct net_device *dev)
>   * ice_get_tx_pending - returns number of Tx descriptors not
> processed
>   * @ring: the ring of descriptors
>   */
> -static u16 ice_get_tx_pending(struct ice_ring *ring)
> +static u16 ice_get_tx_pending(struct ice_tx_ring *ring)
>  {
>  	u16 head, tail;
>  
> @@ -101,7 +101,7 @@ static void ice_check_for_hang_subtask(struct
> ice_pf *pf)
>  	hw = &vsi->back->hw;
>  
>  	for (i = 0; i < vsi->num_txq; i++) {

Interesting that this isn't using ice_for_each_txq()

> -		struct ice_ring *tx_ring = vsi->tx_rings[i];
> +		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
>  
>  		if (tx_ring && tx_ring->desc) {
>  			/* If packet counter has not changed the queue
> is
> @@ -2363,7 +2363,7 @@ static int ice_xdp_alloc_setup_rings(struct
> ice_vsi *vsi)
>  
>  	for (i = 0; i < vsi->num_xdp_txq; i++) {
>  		u16 xdp_q_idx = vsi->alloc_txq + i;
> -		struct ice_ring *xdp_ring;
> +		struct ice_tx_ring *xdp_ring;
>  
>  		xdp_ring = kzalloc(sizeof(*xdp_ring), GFP_KERNEL);
>  
> @@ -2372,7 +2372,6 @@ static int ice_xdp_alloc_setup_rings(struct
> ice_vsi *vsi)
>  
>  		xdp_ring->q_index = xdp_q_idx;
>  		xdp_ring->reg_idx = vsi->txq_map[xdp_q_idx];
> -		xdp_ring->ring_active = false;
>  		xdp_ring->vsi = vsi;
>  		xdp_ring->netdev = NULL;
>  		xdp_ring->dev = dev;
> @@ -2381,7 +2380,7 @@ static int ice_xdp_alloc_setup_rings(struct
> ice_vsi *vsi)
>  		if (ice_setup_tx_ring(xdp_ring))
>  			goto free_xdp_rings;
>  		ice_set_ring_xdp(xdp_ring);
> -		xdp_ring->xsk_pool = ice_xsk_pool(xdp_ring);
> +		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
>  	}
>  
>  	return 0;
> @@ -2460,11 +2459,11 @@ int ice_prepare_xdp_rings(struct ice_vsi
> *vsi, struct bpf_prog *prog)
>  		q_base = vsi->num_xdp_txq - xdp_rings_rem;
>  
>  		for (q_id = q_base; q_id < (q_base + xdp_rings_per_v);
> q_id++) {
> -			struct ice_ring *xdp_ring = vsi-
> >xdp_rings[q_id];
> +			struct ice_tx_ring *xdp_ring = vsi-
> >xdp_rings[q_id];
>  
>  			xdp_ring->q_vector = q_vector;
> -			xdp_ring->next = q_vector->tx.ring;
> -			q_vector->tx.ring = xdp_ring;
> +			xdp_ring->next = q_vector->tx.tx_ring;
> +			q_vector->tx.tx_ring = xdp_ring;
>  		}
>  		xdp_rings_rem -= xdp_rings_per_v;
>  	}
> @@ -2534,14 +2533,14 @@ int ice_destroy_xdp_rings(struct ice_vsi
> *vsi)
>  
>  	ice_for_each_q_vector(vsi, v_idx) {
>  		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
> -		struct ice_ring *ring;
> +		struct ice_tx_ring *ring;
>  
> -		ice_for_each_ring(ring, q_vector->tx)
> +		ice_for_each_tx_ring(ring, q_vector->tx)
>  			if (!ring->tx_buf || !ice_ring_is_xdp(ring))
>  				break;
>  
>  		/* restore the value of last node prior to XDP setup */
> -		q_vector->tx.ring = ring;
> +		q_vector->tx.tx_ring = ring;
>  	}
>  
>  free_qmap:
> @@ -5615,19 +5614,18 @@ int ice_up(struct ice_vsi *vsi)
>   * that needs to be performed to read u64 values in 32 bit machine.
>   */
>  static void
> -ice_fetch_u64_stats_per_ring(struct ice_ring *ring, u64 *pkts, u64
> *bytes)
> +ice_fetch_u64_stats_per_ring(struct u64_stats_sync *syncp, struct
> ice_q_stats stats,
> +			     u64 *pkts, u64 *bytes)
>  {
>  	unsigned int start;
>  	*pkts = 0;
>  	*bytes = 0;
>  
> -	if (!ring)
> -		return;
>  	do {
> -		start = u64_stats_fetch_begin_irq(&ring->syncp);
> -		*pkts = ring->stats.pkts;
> -		*bytes = ring->stats.bytes;
> -	} while (u64_stats_fetch_retry_irq(&ring->syncp, start));
> +		start = u64_stats_fetch_begin_irq(syncp);
> +		*pkts = stats.pkts;
> +		*bytes = stats.bytes;
> +	} while (u64_stats_fetch_retry_irq(syncp, start));
>  }
>  
>  /**
> @@ -5637,18 +5635,19 @@ ice_fetch_u64_stats_per_ring(struct ice_ring
> *ring, u64 *pkts, u64 *bytes)
>   * @count: number of rings
>   */
>  static void
> -ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi, struct ice_ring
> **rings,
> +ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi, struct ice_tx_ring
> **rings,
>  			     u16 count)
>  {
>  	struct rtnl_link_stats64 *vsi_stats = &vsi->net_stats;
>  	u16 i;
>  
>  	for (i = 0; i < count; i++) {
> -		struct ice_ring *ring;
> +		struct ice_tx_ring *ring;
>  		u64 pkts, bytes;
>  
>  		ring = READ_ONCE(rings[i]);
> -		ice_fetch_u64_stats_per_ring(ring, &pkts, &bytes);
> +		if (ring)
> +			ice_fetch_u64_stats_per_ring(&ring->syncp,
> ring->stats, &pkts, &bytes);
>  		vsi_stats->tx_packets += pkts;
>  		vsi_stats->tx_bytes += bytes;
>  		vsi->tx_restart += ring->tx_stats.restart_q;
> @@ -5689,7 +5688,7 @@ static void ice_update_vsi_ring_stats(struct
> ice_vsi *vsi)
>  	ice_for_each_rxq(vsi, i) {
>  		struct ice_ring *ring = READ_ONCE(vsi->rx_rings[i]);
>  
> -		ice_fetch_u64_stats_per_ring(ring, &pkts, &bytes);
> +		ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, 
> &pkts, &bytes);
>  		vsi_stats->rx_packets += pkts;
>  		vsi_stats->rx_bytes += bytes;
>  		vsi->rx_buf_failed += ring->rx_stats.alloc_buf_failed;
> @@ -6036,7 +6035,7 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi)
>  	}
>  
>  	ice_for_each_txq(vsi, i) {
> -		struct ice_ring *ring = vsi->tx_rings[i];
> +		struct ice_tx_ring *ring = vsi->tx_rings[i];
>  
>  		if (!ring)
>  			return -EINVAL;
> @@ -6962,7 +6961,7 @@ ice_bridge_setlink(struct net_device *dev,
> struct nlmsghdr *nlh,
>  static void ice_tx_timeout(struct net_device *netdev, unsigned int
> txqueue)
>  {
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
> -	struct ice_ring *tx_ring = NULL;
> +	struct ice_tx_ring *tx_ring = NULL;
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
>  	u32 i;
> diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h
> b/drivers/net/ethernet/intel/ice/ice_trace.h
> index 9bc0b8fdfc77..f230ff435f26 100644
> --- a/drivers/net/ethernet/intel/ice/ice_trace.h
> +++ b/drivers/net/ethernet/intel/ice/ice_trace.h
> @@ -115,7 +115,7 @@ DEFINE_EVENT(ice_tx_dim_template,
> ice_tx_dim_work,
>  
>  /* Events related to a vsi & ring */
>  DECLARE_EVENT_CLASS(ice_tx_template,
> -		    TP_PROTO(struct ice_ring *ring, struct ice_tx_desc
> *desc,
> +		    TP_PROTO(struct ice_tx_ring *ring, struct
> ice_tx_desc *desc,
>  			     struct ice_tx_buf *buf),
>  
>  		    TP_ARGS(ring, desc, buf),
> @@ -135,7 +135,7 @@ DECLARE_EVENT_CLASS(ice_tx_template,
>  
>  #define DEFINE_TX_TEMPLATE_OP_EVENT(name) \
>  DEFINE_EVENT(ice_tx_template, name, \
> -	     TP_PROTO(struct ice_ring *ring, \
> +	     TP_PROTO(struct ice_tx_ring *ring, \
>  		      struct ice_tx_desc *desc, \
>  		      struct ice_tx_buf *buf), \
>  	     TP_ARGS(ring, desc, buf))
> @@ -192,7 +192,7 @@ DEFINE_EVENT(ice_rx_indicate_template,
> ice_clean_rx_irq_indicate,
>  );
>  
>  DECLARE_EVENT_CLASS(ice_xmit_template,
> -		    TP_PROTO(struct ice_ring *ring, struct sk_buff
> *skb),
> +		    TP_PROTO(struct ice_tx_ring *ring, struct sk_buff
> *skb),
>  
>  		    TP_ARGS(ring, skb),
>  
> @@ -210,7 +210,7 @@ DECLARE_EVENT_CLASS(ice_xmit_template,
>  
>  #define DEFINE_XMIT_TEMPLATE_OP_EVENT(name) \
>  DEFINE_EVENT(ice_xmit_template, name, \
> -	     TP_PROTO(struct ice_ring *ring, struct sk_buff *skb), \
> +	     TP_PROTO(struct ice_tx_ring *ring, struct sk_buff *skb), \
>  	     TP_ARGS(ring, skb))
>  
>  DEFINE_XMIT_TEMPLATE_OP_EVENT(ice_xmit_frame_ring);
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 6ee8e0032d52..fca5aca1ffae 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -32,7 +32,7 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct
> ice_fltr_desc *fdir_desc,
>  	struct ice_tx_buf *tx_buf, *first;
>  	struct ice_fltr_desc *f_desc;
>  	struct ice_tx_desc *tx_desc;
> -	struct ice_ring *tx_ring;
> +	struct ice_tx_ring *tx_ring;
>  	struct device *dev;
>  	dma_addr_t dma;
>  	u32 td_cmd;
> @@ -106,7 +106,7 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct
> ice_fltr_desc *fdir_desc,
>   * @tx_buf: the buffer to free
>   */
>  static void
> -ice_unmap_and_free_tx_buf(struct ice_ring *ring, struct ice_tx_buf
> *tx_buf)
> +ice_unmap_and_free_tx_buf(struct ice_tx_ring *ring, struct
> ice_tx_buf *tx_buf)
>  {
>  	if (tx_buf->skb) {
>  		if (tx_buf->tx_flags & ICE_TX_FLAGS_DUMMY_PKT)
> @@ -133,7 +133,7 @@ ice_unmap_and_free_tx_buf(struct ice_ring *ring,
> struct ice_tx_buf *tx_buf)
>  	/* tx_buf must be completely set up in the transmit path */
>  }
>  
> -static struct netdev_queue *txring_txq(const struct ice_ring *ring)
> +static struct netdev_queue *txring_txq(const struct ice_tx_ring
> *ring)
>  {
>  	return netdev_get_tx_queue(ring->netdev, ring->q_index);
>  }
> @@ -142,8 +142,9 @@ static struct netdev_queue *txring_txq(const
> struct ice_ring *ring)
>   * ice_clean_tx_ring - Free any empty Tx buffers
>   * @tx_ring: ring to be cleaned
>   */
> -void ice_clean_tx_ring(struct ice_ring *tx_ring)
> +void ice_clean_tx_ring(struct ice_tx_ring *tx_ring)
>  {
> +	u32 size;
>  	u16 i;
>  
>  	if (ice_ring_is_xdp(tx_ring) && tx_ring->xsk_pool) {
> @@ -162,8 +163,10 @@ void ice_clean_tx_ring(struct ice_ring *tx_ring)
>  tx_skip_free:
>  	memset(tx_ring->tx_buf, 0, sizeof(*tx_ring->tx_buf) * tx_ring-
> >count);
>  
> +	size = ALIGN(tx_ring->count * sizeof(struct ice_tx_desc),
> +		     PAGE_SIZE);
>  	/* Zero out the descriptor ring */
> -	memset(tx_ring->desc, 0, tx_ring->size);
> +	memset(tx_ring->desc, 0, size);
>  
>  	tx_ring->next_to_use = 0;
>  	tx_ring->next_to_clean = 0;
> @@ -181,14 +184,18 @@ void ice_clean_tx_ring(struct ice_ring
> *tx_ring)
>   *
>   * Free all transmit software resources
>   */
> -void ice_free_tx_ring(struct ice_ring *tx_ring)
> +void ice_free_tx_ring(struct ice_tx_ring *tx_ring)
>  {
> +	u32 size;
> +
>  	ice_clean_tx_ring(tx_ring);
>  	devm_kfree(tx_ring->dev, tx_ring->tx_buf);
>  	tx_ring->tx_buf = NULL;
>  
>  	if (tx_ring->desc) {
> -		dmam_free_coherent(tx_ring->dev, tx_ring->size,
> +		size = ALIGN(tx_ring->count * sizeof(struct
> ice_tx_desc),
> +			     PAGE_SIZE);
> +		dmam_free_coherent(tx_ring->dev, size,
>  				   tx_ring->desc, tx_ring->dma);
>  		tx_ring->desc = NULL;
>  	}
> @@ -201,7 +208,7 @@ void ice_free_tx_ring(struct ice_ring *tx_ring)
>   *
>   * Returns true if there's any budget left (e.g. the clean is
> finished)
>   */
> -static bool ice_clean_tx_irq(struct ice_ring *tx_ring, int
> napi_budget)
> +static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int
> napi_budget)
>  {
>  	unsigned int total_bytes = 0, total_pkts = 0;
>  	unsigned int budget = ICE_DFLT_IRQ_WORK;
> @@ -329,9 +336,10 @@ static bool ice_clean_tx_irq(struct ice_ring
> *tx_ring, int napi_budget)
>   *
>   * Return 0 on success, negative on error
>   */
> -int ice_setup_tx_ring(struct ice_ring *tx_ring)
> +int ice_setup_tx_ring(struct ice_tx_ring *tx_ring)
>  {
>  	struct device *dev = tx_ring->dev;
> +	u32 size;
>  
>  	if (!dev)
>  		return -ENOMEM;
> @@ -345,13 +353,13 @@ int ice_setup_tx_ring(struct ice_ring *tx_ring)
>  		return -ENOMEM;
>  
>  	/* round up to nearest page */
> -	tx_ring->size = ALIGN(tx_ring->count * sizeof(struct
> ice_tx_desc),
> -			      PAGE_SIZE);
> -	tx_ring->desc = dmam_alloc_coherent(dev, tx_ring->size,
> &tx_ring->dma,
> +	size = ALIGN(tx_ring->count * sizeof(struct ice_tx_desc),
> +		     PAGE_SIZE);
> +	tx_ring->desc = dmam_alloc_coherent(dev, size, &tx_ring->dma,
>  					    GFP_KERNEL);
>  	if (!tx_ring->desc) {
>  		dev_err(dev, "Unable to allocate memory for the Tx
> descriptor ring, size=%d\n",
> -			tx_ring->size);
> +			size);
>  		goto err;
>  	}
>  
> @@ -373,6 +381,7 @@ int ice_setup_tx_ring(struct ice_ring *tx_ring)
>  void ice_clean_rx_ring(struct ice_ring *rx_ring)
>  {
>  	struct device *dev = rx_ring->dev;
> +	u32 size;
>  	u16 i;
>  
>  	/* ring already cleared, nothing to do */
> @@ -417,7 +426,9 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
>  	memset(rx_ring->rx_buf, 0, sizeof(*rx_ring->rx_buf) * rx_ring-
> >count);
>  
>  	/* Zero out the descriptor ring */
> -	memset(rx_ring->desc, 0, rx_ring->size);
> +	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
> +		     PAGE_SIZE);
> +	memset(rx_ring->desc, 0, size);
>  
>  	rx_ring->next_to_alloc = 0;
>  	rx_ring->next_to_clean = 0;
> @@ -432,6 +443,8 @@ void ice_clean_rx_ring(struct ice_ring *rx_ring)
>   */
>  void ice_free_rx_ring(struct ice_ring *rx_ring)
>  {
> +	u32 size;
> +
>  	ice_clean_rx_ring(rx_ring);
>  	if (rx_ring->vsi->type == ICE_VSI_PF)
>  		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> @@ -441,7 +454,9 @@ void ice_free_rx_ring(struct ice_ring *rx_ring)
>  	rx_ring->rx_buf = NULL;
>  
>  	if (rx_ring->desc) {
> -		dmam_free_coherent(rx_ring->dev, rx_ring->size,
> +		size = ALIGN(rx_ring->count * sizeof(union
> ice_32byte_rx_desc),
> +			     PAGE_SIZE);
> +		dmam_free_coherent(rx_ring->dev, size,
>  				   rx_ring->desc, rx_ring->dma);
>  		rx_ring->desc = NULL;
>  	}
> @@ -456,6 +471,7 @@ void ice_free_rx_ring(struct ice_ring *rx_ring)
>  int ice_setup_rx_ring(struct ice_ring *rx_ring)
>  {
>  	struct device *dev = rx_ring->dev;
> +	u32 size;
>  
>  	if (!dev)
>  		return -ENOMEM;
> @@ -469,13 +485,13 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
>  		return -ENOMEM;
>  
>  	/* round up to nearest page */
> -	rx_ring->size = ALIGN(rx_ring->count * sizeof(union
> ice_32byte_rx_desc),
> -			      PAGE_SIZE);
> -	rx_ring->desc = dmam_alloc_coherent(dev, rx_ring->size,
> &rx_ring->dma,
> +	size = ALIGN(rx_ring->count * sizeof(union ice_32byte_rx_desc),
> +		     PAGE_SIZE);
> +	rx_ring->desc = dmam_alloc_coherent(dev, size, &rx_ring->dma,
>  					    GFP_KERNEL);
>  	if (!rx_ring->desc) {
>  		dev_err(dev, "Unable to allocate memory for the Rx
> descriptor ring, size=%d\n",
> -			rx_ring->size);
> +			size);
>  		goto err;
>  	}
>  
> @@ -526,7 +542,7 @@ static int
>  ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
>  	    struct bpf_prog *xdp_prog)
>  {
> -	struct ice_ring *xdp_ring;
> +	struct ice_tx_ring *xdp_ring;
>  	int err, result;
>  	u32 act;
>  
> @@ -576,7 +592,7 @@ ice_xdp_xmit(struct net_device *dev, int n,
> struct xdp_frame **frames,
>  	struct ice_netdev_priv *np = netdev_priv(dev);
>  	unsigned int queue_index = smp_processor_id();
>  	struct ice_vsi *vsi = np->vsi;
> -	struct ice_ring *xdp_ring;
> +	struct ice_tx_ring *xdp_ring;
>  	int nxmit = 0, i;
>  
>  	if (test_bit(ICE_VSI_DOWN, vsi->state))
> @@ -1247,9 +1263,9 @@ static void ice_net_dim(struct ice_q_vector
> *q_vector)
>  	if (ITR_IS_DYNAMIC(tx)) {
>  		struct dim_sample dim_sample = {};
>  		u64 packets = 0, bytes = 0;
> -		struct ice_ring *ring;
> +		struct ice_tx_ring *ring;
>  
> -		ice_for_each_ring(ring, q_vector->tx) {
> +		ice_for_each_tx_ring(ring, q_vector->tx) {
>  			packets += ring->stats.pkts;
>  			bytes += ring->stats.bytes;
>  		}
> @@ -1387,6 +1403,7 @@ int ice_napi_poll(struct napi_struct *napi, int
> budget)
>  {
>  	struct ice_q_vector *q_vector =
>  				container_of(napi, struct ice_q_vector,
> napi);
> +	struct ice_tx_ring *tx_ring;
>  	bool clean_complete = true;
>  	struct ice_ring *ring;
>  	int budget_per_ring;
> @@ -1395,10 +1412,10 @@ int ice_napi_poll(struct napi_struct *napi,
> int budget)
>  	/* Since the actual Tx work is minimal, we can give the Tx a
> larger
>  	 * budget and be more aggressive about cleaning up the Tx
> descriptors.
>  	 */
> -	ice_for_each_ring(ring, q_vector->tx) {
> -		bool wd = ring->xsk_pool ?
> -			  ice_clean_tx_irq_zc(ring, budget) :
> -			  ice_clean_tx_irq(ring, budget);
> +	ice_for_each_tx_ring(tx_ring, q_vector->tx) {
> +		bool wd = tx_ring->xsk_pool ?
> +			  ice_clean_tx_irq_zc(tx_ring, budget) :
> +			  ice_clean_tx_irq(tx_ring, budget);
>  
>  		if (!wd)
>  			clean_complete = false;
> @@ -1462,7 +1479,7 @@ int ice_napi_poll(struct napi_struct *napi, int
> budget)
>   *
>   * Returns -EBUSY if a stop is needed, else 0
>   */
> -static int __ice_maybe_stop_tx(struct ice_ring *tx_ring, unsigned
> int size)
> +static int __ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned
> int size)
>  {
>  	netif_stop_subqueue(tx_ring->netdev, tx_ring->q_index);
>  	/* Memory barrier before checking head and tail */
> @@ -1485,7 +1502,7 @@ static int __ice_maybe_stop_tx(struct ice_ring
> *tx_ring, unsigned int size)
>   *
>   * Returns 0 if stop is not needed
>   */
> -static int ice_maybe_stop_tx(struct ice_ring *tx_ring, unsigned int
> size)
> +static int ice_maybe_stop_tx(struct ice_tx_ring *tx_ring, unsigned
> int size)
>  {
>  	if (likely(ICE_DESC_UNUSED(tx_ring) >= size))
>  		return 0;
> @@ -1504,7 +1521,7 @@ static int ice_maybe_stop_tx(struct ice_ring
> *tx_ring, unsigned int size)
>   * it and the length into the transmit descriptor.
>   */
>  static void
> -ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
> +ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>  	   struct ice_tx_offload_params *off)
>  {
>  	u64 td_offset, td_tag, td_cmd;
> @@ -1840,7 +1857,7 @@ int ice_tx_csum(struct ice_tx_buf *first,
> struct ice_tx_offload_params *off)
>   * related to VLAN tagging for the HW, such as VLAN, DCB, etc.
>   */
>  static void
> -ice_tx_prepare_vlan_flags(struct ice_ring *tx_ring, struct
> ice_tx_buf *first)
> +ice_tx_prepare_vlan_flags(struct ice_tx_ring *tx_ring, struct
> ice_tx_buf *first)
>  {
>  	struct sk_buff *skb = first->skb;
>  
> @@ -2146,7 +2163,7 @@ static bool ice_chk_linearize(struct sk_buff
> *skb, unsigned int count)
>   * @off: Tx offload parameters
>   */
>  static void
> -ice_tstamp(struct ice_ring *tx_ring, struct sk_buff *skb,
> +ice_tstamp(struct ice_tx_ring *tx_ring, struct sk_buff *skb,
>  	   struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  {
>  	s8 idx;
> @@ -2181,7 +2198,7 @@ ice_tstamp(struct ice_ring *tx_ring, struct
> sk_buff *skb,
>   * Returns NETDEV_TX_OK if sent, else an error code
>   */
>  static netdev_tx_t
> -ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
> +ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring
> *tx_ring)
>  {
>  	struct ice_tx_offload_params offload = { 0 };
>  	struct ice_vsi *vsi = tx_ring->vsi;
> @@ -2282,7 +2299,7 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb,
> struct net_device *netdev)
>  {
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_vsi *vsi = np->vsi;
> -	struct ice_ring *tx_ring;
> +	struct ice_tx_ring *tx_ring;
>  
>  	tx_ring = vsi->tx_rings[skb->queue_mapping];
>  
> @@ -2299,7 +2316,7 @@ netdev_tx_t ice_start_xmit(struct sk_buff *skb,
> struct net_device *netdev)
>   * ice_clean_ctrl_tx_irq - interrupt handler for flow director Tx
> queue
>   * @tx_ring: tx_ring to clean
>   */
> -void ice_clean_ctrl_tx_irq(struct ice_ring *tx_ring)
> +void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring)
>  {
>  	struct ice_vsi *vsi = tx_ring->vsi;
>  	s16 i = tx_ring->next_to_clean;
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h
> b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index 1e46e80f3d6f..d4ab3558933e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -154,7 +154,7 @@ struct ice_tx_buf {
>  
>  struct ice_tx_offload_params {
>  	u64 cd_qw1;
> -	struct ice_ring *tx_ring;
> +	struct ice_tx_ring *tx_ring;
>  	u32 td_cmd;
>  	u32 td_offset;
>  	u32 td_l2tag1;
> @@ -267,16 +267,11 @@ struct ice_ring {
>  	struct ice_vsi *vsi;		/* Backreference to
> associated VSI */
>  	struct ice_q_vector *q_vector;	/* Backreference to
> associated vector */
>  	u8 __iomem *tail;
> -	union {
> -		struct ice_tx_buf *tx_buf;
> -		struct ice_rx_buf *rx_buf;
> -	};
> +	struct ice_rx_buf *rx_buf;
>  	/* CL2 - 2nd cacheline starts here */
> +	struct xdp_rxq_info xdp_rxq;
> +	/* CL3 - 3rd cacheline starts here */
>  	u16 q_index;			/* Queue number of ring */
> -	u16 q_handle;			/* Queue handle per TC */
> -
> -	u8 ring_active:1;		/* is ring online or not */

Seems like "ring_active" could be removed as a separate patch since
it doesn't seemed to be used at all. Am I missing something here?

> -
>  	u16 count;			/* Number of descriptors */
>  	u16 reg_idx;			/* HW register index of the
> ring */
>  
> @@ -284,38 +279,61 @@ struct ice_ring {
>  	u16 next_to_use;
>  	u16 next_to_clean;
>  	u16 next_to_alloc;
> +	u16 rx_offset;
> +	u16 rx_buf_len;
>  
>  	/* stats structs */
> +	struct ice_rxq_stats rx_stats;
>  	struct ice_q_stats	stats;
>  	struct u64_stats_sync syncp;
> -	union {
> -		struct ice_txq_stats tx_stats;
> -		struct ice_rxq_stats rx_stats;
> -	};
>  
>  	struct rcu_head rcu;		/* to avoid race on free */
> -	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State
> */
> +	/* CL4 - 3rd cacheline starts here */
>  	struct bpf_prog *xdp_prog;
>  	struct xsk_buff_pool *xsk_pool;
> -	u16 rx_offset;
> -	/* CL3 - 3rd cacheline starts here */
> -	struct xdp_rxq_info xdp_rxq;
>  	struct sk_buff *skb;
> -	/* CLX - the below items are only accessed infrequently and
> should be
> -	 * in their own cache line if possible
> -	 */
> -#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> +	dma_addr_t dma;			/* physical address of ring
> */
>  #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
> +	u64 cached_phctime;
> +	u8 dcb_tc;			/* Traffic class of ring */
> +	u8 ptp_rx;
>  	u8 flags;
> +} ____cacheline_internodealigned_in_smp;
> +
> +struct ice_tx_ring {
> +	/* CL1 - 1st cacheline starts here */
> +	struct ice_tx_ring *next;	/* pointer to next ring in q_vector
> */
> +	void *desc;			/* Descriptor ring memory */
> +	struct device *dev;		/* Used for DMA mapping */
> +	u8 __iomem *tail;
> +	struct ice_tx_buf *tx_buf;
> +	struct ice_q_vector *q_vector;	/* Backreference to
> associated vector */
> +	struct net_device *netdev;	/* netdev ring maps to */
> +	struct ice_vsi *vsi;		/* Backreference to
> associated VSI */
> +	/* CL2 - 2nd cacheline starts here */
>  	dma_addr_t dma;			/* physical address of ring
> */
> -	unsigned int size;		/* length of descriptor ring
> in bytes */
> +	u16 next_to_use;
> +	u16 next_to_clean;
> +	u16 count;			/* Number of descriptors */
> +	u16 q_index;			/* Queue number of ring */
> +	struct xsk_buff_pool *xsk_pool;
> +
> +	/* stats structs */
> +	struct ice_q_stats	stats;
> +	struct u64_stats_sync syncp;
> +	struct ice_txq_stats tx_stats;
> +
> +	/* CL3 - 3rd cacheline starts here */
> +	struct rcu_head rcu;		/* to avoid race on free */
> +	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State
> */
> +	struct ice_ptp_tx *tx_tstamps;
>  	u32 txq_teid;			/* Added Tx queue TEID */
> -	u16 rx_buf_len;
> +	u16 q_handle;			/* Queue handle per TC */
> +	u16 reg_idx;			/* HW register index of the
> ring */
> +#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> +	u8 flags;
>  	u8 dcb_tc;			/* Traffic class of ring */
> -	struct ice_ptp_tx *tx_tstamps;
> -	u64 cached_phctime;
> -	u8 ptp_rx:1;
> -	u8 ptp_tx:1;
> +	u8 ptp_tx;
>  } ____cacheline_internodealigned_in_smp;
>  
>  static inline bool ice_ring_uses_build_skb(struct ice_ring *ring)
> @@ -333,14 +351,17 @@ static inline void
> ice_clear_ring_build_skb_ena(struct ice_ring *ring)
>  	ring->flags &= ~ICE_RX_FLAGS_RING_BUILD_SKB;
>  }
>  
> -static inline bool ice_ring_is_xdp(struct ice_ring *ring)
> +static inline bool ice_ring_is_xdp(struct ice_tx_ring *ring)
>  {
>  	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
>  }
>  
>  struct ice_ring_container {
>  	/* head of linked-list of rings */
> -	struct ice_ring *ring;
> +	union {
> +		struct ice_ring *ring;
> +		struct ice_tx_ring *tx_ring;
> +	};
>  	struct dim dim;		/* data for net_dim algorithm */
>  	u16 itr_idx;		/* index in the interrupt vector */
>  	/* this matches the maximum number of ITR bits, but in usec
> @@ -363,6 +384,9 @@ struct ice_coalesce_stored {
>  #define ice_for_each_ring(pos, head) \
>  	for (pos = (head).ring; pos; pos = pos->next)
>  
> +#define ice_for_each_tx_ring(pos, head) \
> +	for (pos = (head).tx_ring; pos; pos = pos->next)
> +
>  {
>  #if (PAGE_SIZE < 8192)
> @@ -378,16 +402,16 @@ union ice_32b_rx_flex_desc;
>  
>  bool ice_alloc_rx_bufs(struct ice_ring *rxr, u16 cleaned_count);
>  netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device
> *netdev);
> -void ice_clean_tx_ring(struct ice_ring *tx_ring);
> +void ice_clean_tx_ring(struct ice_tx_ring *tx_ring);
>  void ice_clean_rx_ring(struct ice_ring *rx_ring);
> -int ice_setup_tx_ring(struct ice_ring *tx_ring);
> +int ice_setup_tx_ring(struct ice_tx_ring *tx_ring);
>  int ice_setup_rx_ring(struct ice_ring *rx_ring);
> -void ice_free_tx_ring(struct ice_ring *tx_ring);
> +void ice_free_tx_ring(struct ice_tx_ring *tx_ring);
>  void ice_free_rx_ring(struct ice_ring *rx_ring);
>  int ice_napi_poll(struct napi_struct *napi, int budget);
>  int
>  ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc
> *fdir_desc,
>  		   u8 *raw_packet);
>  int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget);
> -void ice_clean_ctrl_tx_irq(struct ice_ring *tx_ring);
> +void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring);
>  #endif /* _ICE_TXRX_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index 171397dcf00a..74519c603872 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -217,7 +217,7 @@ ice_receive_skb(struct ice_ring *rx_ring, struct
> sk_buff *skb, u16 vlan_tag)
>   * @size: packet data size
>   * @xdp_ring: XDP ring for transmission
>   */
> -int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring
> *xdp_ring)
> +int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring
> *xdp_ring)
>  {
>  	u16 i = xdp_ring->next_to_use;
>  	struct ice_tx_desc *tx_desc;
> @@ -269,7 +269,7 @@ int ice_xmit_xdp_ring(void *data, u16 size,
> struct ice_ring *xdp_ring)
>   *
>   * Returns negative on failure, 0 on success.
>   */
> -int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_ring
> *xdp_ring)
> +int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring
> *xdp_ring)
>  {
>  	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
>  
> @@ -294,7 +294,7 @@ void ice_finalize_xdp_rx(struct ice_ring
> *rx_ring, unsigned int xdp_res)
>  		xdp_do_flush_map();
>  
>  	if (xdp_res & ICE_XDP_TX) {
> -		struct ice_ring *xdp_ring =
> +		struct ice_tx_ring *xdp_ring =
>  			rx_ring->vsi->xdp_rings[rx_ring->q_index];

Probably me not understanding XDP, but this looks a little strange.

>  
>  		ice_xdp_ring_update_tail(xdp_ring);
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> index 05ac30752902..6989070ae2e2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> @@ -37,7 +37,7 @@ ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned
> int size, u64 td_tag)
>   *
>   * This function updates the XDP Tx ring tail register.
>   */
> -static inline void ice_xdp_ring_update_tail(struct ice_ring
> *xdp_ring)
> +static inline void ice_xdp_ring_update_tail(struct ice_tx_ring
> *xdp_ring)
>  {
>  	/* Force memory writes to complete before letting h/w
>  	 * know there are new descriptors to fetch.
> @@ -46,9 +46,9 @@ static inline void ice_xdp_ring_update_tail(struct
> ice_ring *xdp_ring)
>  	writel_relaxed(xdp_ring->next_to_use, xdp_ring->tail);
>  }
>  
> -void ice_finalize_xdp_rx(struct ice_ring *rx_ring, unsigned int
> xdp_res);
> -int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_ring
> *xdp_ring);
> -int ice_xmit_xdp_ring(void *data, u16 size, struct ice_ring
> *xdp_ring);
> +void ice_finalize_xdp_rx(struct ice_ring *xdp_ring, unsigned int
> xdp_res);
> +int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring
> *xdp_ring);
> +int ice_xmit_xdp_ring(void *data, u16 size, struct ice_tx_ring
> *xdp_ring);
>  void ice_release_rx_desc(struct ice_ring *rx_ring, u16 val);
>  void
>  ice_process_skb_fields(struct ice_ring *rx_ring,
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 2826570dab51..0ee694960e51 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -3326,7 +3326,7 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf,
> u8 *msg)
>  		q_map = vqs->tx_queues;
>  
>  		for_each_set_bit(vf_q_id, &q_map,
> ICE_MAX_RSS_QS_PER_VF) {
> -			struct ice_ring *ring = vsi->tx_rings[vf_q_id];
> +			struct ice_tx_ring *ring = vsi-
> >tx_rings[vf_q_id];
>  			struct ice_txq_meta txq_meta = { 0 };
>  
>  			if (!ice_vc_isvalid_q_id(vf, vqs->vsi_id,
> vf_q_id)) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c
> b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 5a9f61deeb38..bcf0f8e2ba6e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -104,12 +104,13 @@ ice_qvec_cfg_msix(struct ice_vsi *vsi, struct
> ice_q_vector *q_vector)
>  	u16 reg_idx = q_vector->reg_idx;
>  	struct ice_pf *pf = vsi->back;
>  	struct ice_hw *hw = &pf->hw;
> +	struct ice_tx_ring *tx_ring;
>  	struct ice_ring *ring;
>  
>  	ice_cfg_itr(hw, q_vector);
>  
> -	ice_for_each_ring(ring, q_vector->tx)
> -		ice_cfg_txq_interrupt(vsi, ring->reg_idx, reg_idx,
> +	ice_for_each_tx_ring(tx_ring, q_vector->tx)
> +		ice_cfg_txq_interrupt(vsi, tx_ring->reg_idx, reg_idx,
>  				      q_vector->tx.itr_idx);
>  
>  	ice_for_each_ring(ring, q_vector->rx)
> @@ -144,8 +145,9 @@ static void ice_qvec_ena_irq(struct ice_vsi *vsi,
> struct ice_q_vector *q_vector)
>  static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
>  {
>  	struct ice_txq_meta txq_meta = { };
> -	struct ice_ring *tx_ring, *rx_ring;
>  	struct ice_q_vector *q_vector;
> +	struct ice_tx_ring *tx_ring;
> +	struct ice_ring *rx_ring;
>  	int timeout = 50;
>  	int err;
>  
> @@ -171,7 +173,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16
> q_idx)
>  	if (err)
>  		return err;
>  	if (ice_is_xdp_ena_vsi(vsi)) {
> -		struct ice_ring *xdp_ring = vsi->xdp_rings[q_idx];
> +		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
>  
>  		memset(&txq_meta, 0, sizeof(txq_meta));
>  		ice_fill_txq_meta(vsi, xdp_ring, &txq_meta);
> @@ -201,8 +203,9 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16
> q_idx)
>  static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>  {
>  	struct ice_aqc_add_tx_qgrp *qg_buf;
> -	struct ice_ring *tx_ring, *rx_ring;
>  	struct ice_q_vector *q_vector;
> +	struct ice_tx_ring *tx_ring;
> +	struct ice_ring *rx_ring;
>  	u16 size;
>  	int err;
>  
> @@ -225,7 +228,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16
> q_idx)
>  		goto free_buf;
>  
>  	if (ice_is_xdp_ena_vsi(vsi)) {
> -		struct ice_ring *xdp_ring = vsi->xdp_rings[q_idx];
> +		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
>  
>  		memset(qg_buf, 0, size);
>  		qg_buf->num_txqs = 1;
> @@ -233,7 +236,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16
> q_idx)
>  		if (err)
>  			goto free_buf;
>  		ice_set_ring_xdp(xdp_ring);
> -		xdp_ring->xsk_pool = ice_xsk_pool(xdp_ring);
> +		xdp_ring->xsk_pool = ice_tx_xsk_pool(xdp_ring);
>  	}
>  
>  	err = ice_vsi_cfg_rxq(rx_ring);
> @@ -462,8 +465,8 @@ static int
>  ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
>  {
>  	int err, result = ICE_XDP_PASS;
> +	struct ice_tx_ring *xdp_ring;
>  	struct bpf_prog *xdp_prog;
> -	struct ice_ring *xdp_ring;
>  	u32 act;
>  
>  	/* ZC patch is enabled only when XDP program is set,
> @@ -618,7 +621,7 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring,
> int budget)
>   *
>   * Returns true if cleanup/transmission is done.
>   */
> -static bool ice_xmit_zc(struct ice_ring *xdp_ring, int budget)
> +static bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, int budget)
>  {
>  	struct ice_tx_desc *tx_desc = NULL;
>  	bool work_done = true;
> @@ -669,7 +672,7 @@ static bool ice_xmit_zc(struct ice_ring
> *xdp_ring, int budget)
>   * @tx_buf: Tx buffer to clean
>   */
>  static void
> -ice_clean_xdp_tx_buf(struct ice_ring *xdp_ring, struct ice_tx_buf
> *tx_buf)
> +ice_clean_xdp_tx_buf(struct ice_tx_ring *xdp_ring, struct ice_tx_buf
> *tx_buf)
>  {
>  	xdp_return_frame((struct xdp_frame *)tx_buf->raw_buf);
>  	dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
> @@ -684,7 +687,7 @@ ice_clean_xdp_tx_buf(struct ice_ring *xdp_ring,
> struct ice_tx_buf *tx_buf)
>   *
>   * Returns true if cleanup/tranmission is done.
>   */
> -bool ice_clean_tx_irq_zc(struct ice_ring *xdp_ring, int budget)
> +bool ice_clean_tx_irq_zc(struct ice_tx_ring *xdp_ring, int budget)
>  {
>  	int total_packets = 0, total_bytes = 0;
>  	s16 ntc = xdp_ring->next_to_clean;
> @@ -757,7 +760,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32
> queue_id,
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_q_vector *q_vector;
>  	struct ice_vsi *vsi = np->vsi;
> -	struct ice_ring *ring;
> +	struct ice_tx_ring *ring;
>  
>  	if (test_bit(ICE_DOWN, vsi->state))
>  		return -ENETDOWN;
> @@ -826,7 +829,7 @@ void ice_xsk_clean_rx_ring(struct ice_ring
> *rx_ring)
>   * ice_xsk_clean_xdp_ring - Clean the XDP Tx ring and its buffer
> pool queues
>   * @xdp_ring: XDP_Tx ring
>   */
> -void ice_xsk_clean_xdp_ring(struct ice_ring *xdp_ring)
> +void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring)
>  {
>  	u16 ntc = xdp_ring->next_to_clean, ntu = xdp_ring->next_to_use;
>  	u32 xsk_frames = 0;
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h
> b/drivers/net/ethernet/intel/ice/ice_xsk.h
> index ea208808623a..2cf26372aefd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.h
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
> @@ -12,12 +12,12 @@ struct ice_vsi;
>  int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool
> *pool,
>  		       u16 qid);
>  int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget);
> -bool ice_clean_tx_irq_zc(struct ice_ring *xdp_ring, int budget);
> +bool ice_clean_tx_irq_zc(struct ice_tx_ring *xdp_ring, int budget);
>  int ice_xsk_wakeup(struct net_device *netdev, u32 queue_id, u32
> flags);
>  bool ice_alloc_rx_bufs_zc(struct ice_ring *rx_ring, u16 count);
>  bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
>  void ice_xsk_clean_rx_ring(struct ice_ring *rx_ring);
> -void ice_xsk_clean_xdp_ring(struct ice_ring *xdp_ring);
> +void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
>  #else
>  static inline int
>  ice_xsk_pool_setup(struct ice_vsi __always_unused *vsi,
> @@ -35,7 +35,7 @@ ice_clean_rx_irq_zc(struct ice_ring __always_unused
> *rx_ring,
>  }
>  
>  static inline bool
> -ice_clean_tx_irq_zc(struct ice_ring __always_unused *xdp_ring,
> +ice_clean_tx_irq_zc(struct ice_tx_ring __always_unused *xdp_ring,
>  		    int __always_unused budget)
>  {
>  	return false;
> @@ -61,6 +61,6 @@ ice_xsk_wakeup(struct net_device __always_unused
> *netdev,
>  }
>  
>  static inline void ice_xsk_clean_rx_ring(struct ice_ring *rx_ring) {
> }
> -static inline void ice_xsk_clean_xdp_ring(struct ice_ring *xdp_ring)
> { }
> +static inline void ice_xsk_clean_xdp_ring(struct ice_tx_ring
> *xdp_ring) { }
>  #endif /* CONFIG_XDP_SOCKETS */
>  #endif /* !_ICE_XSK_H_ */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
