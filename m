Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5DA63354D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 07:28:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D423A81302;
	Tue, 22 Nov 2022 06:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D423A81302
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669098533;
	bh=+mprOFLowmKn4zpL+8cSf7VGpdhejnSzTNpmHqn34+o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FZu0ZwfqwXtL6/B63HDw2f/Jiq6E12tB2lJKyo/7Abjc231R6tHBdJ44X9phlb+VN
	 JPJXntnPCWLzH63ACGOoxMzjLuFSRptrOvUdesn6lfi+kzfr76I63OIa0xn+zwiEWF
	 poiJfTiDN6zECzjEYI5ldOO4xTdc7CY6OWhR9+VygbX3xgnjt2AsFHZnM6I+LexnYf
	 5a8kKFjDuS6aRsWbh0ojCKRUPyvaQ5z1XT27UlAe8CpkK3KOoJQ+IQegbDeTal/Pln
	 Q3YTa+9Bs+7HiBF++uzj4pffKzRM5kPQN2oNXKCj92KyVKugo6BkPvZxk9afRVqNlC
	 6L8VLOEzNlgcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcUtZh4ldzW2; Tue, 22 Nov 2022 06:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D073C812D4;
	Tue, 22 Nov 2022 06:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D073C812D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77BFC1BF333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E245812D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E245812D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmVFskAFXRF7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 06:28:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F820812CE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F820812CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:28:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="297100828"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="297100828"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 22:28:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="635440977"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="635440977"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 21 Nov 2022 22:28:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 22:28:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 22:28:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 22:28:45 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 22:28:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TssBzxZnoZxXcm+BT1axGP670wDbOBMw/a7g0uOvPuNg1lJ6YW/MrsWt1/RY6VQfbj2gpBdfiYO/C/qSMJf1QitY3euKzBGZf6FcKnG5WL8cJdE9UprAJovBBvd7Bqo6alwrWMfzscw33wSQ4iY5S7rM/pKedMjA4UOTYE8U3wA9qq1kBcmiXFumevZjHZ8Sw/Rm3It3P2NejGTvejrjKPdPCH46dyy/ngBbUjTePiopfPUrjgrG1bg0Vr4aXOs53X+wr1I9jX4tEX6zj9G8TCqTdOlVqSZuwoeGW09UnjQthAm3PjeFyPGDOF6Cm/jNRebibH503m0yNtkocRfbXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AER8AH1WT8T6W546Bj9r4ClcOVz/YB90vpWor1u8HVk=;
 b=F/FJEA1M/QGZy5kzWCohmcql8/jebnMHxfaeS1zCsyIH/d5iCAqg03gzjwYnKnBYZO4aWcpZZQTcwC/mUNp/JtfYp+koyhAqdht4jQwYF7NqWNGyc0UHF5N8QYQQKiMZEjSwenpVyKP4v8L15u5O4GSp8vEN+qhOxRYuNTcdP02RurIxC7g6yeccn+bgbUeIla3NHmaKIAguyxiW+0ylIGW6c5MuKdLn1lP5942IGzTn3EMC4UWg8luxbbjdHcmcpf8lwtdYPAXNoikXpVvNC2BeJCQNCm+J4dJ9SgYAtvV8YrlW9NrpAzjqGMJXxKlTOSdvzlC7AfB5OPq480ZcFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH0PR11MB5412.namprd11.prod.outlook.com (2603:10b6:610:d3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 06:28:44 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 06:28:44 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 2/2] ice: Accumulate ring
 statistics over reset
Thread-Index: AQHY+5UE0UpDNHxFl0+vZLzObLqoQ65Kf9/Q
Date: Tue, 22 Nov 2022 06:28:44 +0000
Message-ID: <BYAPR11MB3367FF69C973362917FBDE62FC0D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221118212002.17023-1-benjamin.mikailenko@intel.com>
 <20221118212002.17023-3-benjamin.mikailenko@intel.com>
In-Reply-To: <20221118212002.17023-3-benjamin.mikailenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH0PR11MB5412:EE_
x-ms-office365-filtering-correlation-id: c0372d69-20da-46ae-0678-08dacc52ce04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k1j3ivwdGqD3+NP9BgLEKanWsQl/zj8+KxuFPz32H+aSGleEZPEuMda48XYMduFolnUp5NdOMwBZA38zABtgWMMWRPOPpWMpB10irz525YBmBAgqhwL8ol70ziT/sc+8ZiB0o+xVGQ5ug55kFPdcWAwC+SxceYjEg1/sGrZGcnHDVpH2UJ9lWzKyd9q+9JiQJs7WXwqmzbakrZ6QQx4Y0SEpP2uXiQpqJ6zTpBBfjWA86EhwL4qmKrmp7MC+XWrrMDsgl3uBpAGVmGrPsgp5LAzHIEnNei/fGNFSJieUImM26kjsHI1nQKwinkSmbuLMzqZKnxwJvqjdMCgh2yH+yEsVCGVkgp/JNYz62ailaVO+bfzVXjXqIoGllz/ebQV1xdvr2F7bWAk6ZxbOABFKNBvMLT/6xj2gG/9Muhn+FZreF/IILNjI5zJfIYhGnlVPkE+k3qpFgY95l5MEaS16JQLcYNWfYZvKet2Wkr9Ext+tuJGyf9edLpRNg+3lM/1ihFXE8Ae9+viCg0bp+qQCYh8YwUwo9kxAb40/oZe9xLVqUY+oxrsGkTuxNZ6RepV9HrQ6/wjzo8k4/AGjBs5KHUVUohL7oKo+jL3qnvINKMOftcByK7di/yN6dyMODJUrdgwV7y3m09XiltNb9HyTyjzxXp5ygnNiZuGzo1tttLo1OnqlxL7FsIzJHp1tG1pmJDrt0UfxzuqGJBRV5dToOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(136003)(366004)(396003)(451199015)(5660300002)(33656002)(82960400001)(7696005)(83380400001)(55236004)(6506007)(53546011)(316002)(76116006)(66476007)(8676002)(110136005)(9686003)(66446008)(66946007)(41300700001)(4326008)(64756008)(26005)(66556008)(52536014)(186003)(8936002)(122000001)(38070700005)(38100700002)(2906002)(55016003)(86362001)(71200400001)(107886003)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bndq2rcbLgorN6hz0KNx1tuJ5Xu67FrZny++L0/ZMKjvtIiR5VpL/UKAGN1Y?=
 =?us-ascii?Q?rfFiYwSvdF9n+JqBAG/CgEw9OZ9N67pMLhjsA4U9JDc41c8ZmINjPvQE33hr?=
 =?us-ascii?Q?4V5x0AMdSWVfo9IPsD/3yC7u2JQJssp6ueVHPpyu0X3sVdyAXuykh8itZ1dC?=
 =?us-ascii?Q?ilAUVh6/tiOBw97oH1uM5jGnUHrnqglKysl+eeVoaq3CpO2dSM6aZVc7tEyc?=
 =?us-ascii?Q?CUjqtPedlQxdDAowcKYKaCDrSXyHzILE9cLSl8cm+rfoZ2u8MkE0DsV1/FiT?=
 =?us-ascii?Q?CO+jfuNW8VpGY9dntFgqXB43scaqPNVDUdnTSbN20hJ92y9WLOmGmLQc5LcP?=
 =?us-ascii?Q?mLbjuUpm5EOXKuPqU0DXig8j831PfCvSAGjZaoHTcnCvJZ/dvnAWafahOXkq?=
 =?us-ascii?Q?UC5OCbtvwgApAlD0KMiN3BQ92bf19zl3gqsSbYr9KI70+mtR8kBR2c+iIwRb?=
 =?us-ascii?Q?6iVuYKkzkfqp7f80otRtTvsDTa8qqRaOVhCCF0hZS8YfqlHJk+BULzjsF9kn?=
 =?us-ascii?Q?wC8M30usb3vYGX4Ul4pul/nD+VnGdnUCnFhbKaCuwxNsbAUoYtuYnRZOY+wn?=
 =?us-ascii?Q?LH2C3B321KJgYTY1ts4ZhT7BzFKQlvfs9AjtsRlgiaBshIialWusMcm3q+uJ?=
 =?us-ascii?Q?F2Snq10lL7n3yLFdiiGifXyNK5g/OWKZiqaD1stes4QrA4tffor6LVSY3GGI?=
 =?us-ascii?Q?wlQ9Ea60BghFbqkjVwzQnHTfghrMhEyYK0OSwwNJwgSAzNIhPTMa1WeNQrWP?=
 =?us-ascii?Q?IqDh4oI7OPMlNdA9Ze/kpF+TZoOqMYD4xjkgBH4+FtIcMFIbV26o9jaifDtN?=
 =?us-ascii?Q?2lRxEIFuihk1LFd0bLtPDwUrKV9xZ4AiG+J7H2lWKB4C3cu0Po2VczriHLxl?=
 =?us-ascii?Q?z/0LPT0vMEd71211YP8ji4n7qZV2D40JKwQbitBW2Ysb+nBBFpbGUAOU2bJ6?=
 =?us-ascii?Q?DPGGuPh6JGdBD4z6NBBcr3ElXMaEbsn3KMq8nEbZWJ4qX9E5KMHB0kV1woKV?=
 =?us-ascii?Q?BAihMkElFX55FwPJf6cQX5BXZt56CDMxsARr1b2Bkd5wI9kGs3SflC+88flI?=
 =?us-ascii?Q?9B+ErMuaQPKFfrUAcCh4/21fTdFK7aPDNdO4SjKt9zM1yrH48XE4NpXmBb/p?=
 =?us-ascii?Q?+B+g8BJDGgpjY4p1jeo5zLpSby6bKJe44Vfo8Yl9qIxpyMqvAn6wywhYnz3a?=
 =?us-ascii?Q?j/pjQ6ivwellSMjJau00fU8c/HMUkUv17u5j0w3Vboso74K+fiGL/5gKVdo4?=
 =?us-ascii?Q?P9PbCIqDTjsDrNukZ/J80gnSwQozCahaXXzzmTJ26+7nZbDFqCErImAlmssW?=
 =?us-ascii?Q?VpVEz2RnIfclDiFcOJGN8h8etozbRb3rlgG3ZuZWOT3mNS6c/iDGL1Orp/Lm?=
 =?us-ascii?Q?CEoF/joxxohZDiq3YljRXJnDkt1CxEO0NYATHBC+X8GB9tgotztGvIXfkUDE?=
 =?us-ascii?Q?DwzG36xLtuSFaaQxM5eq21NJJJX0cfDtS5F/TkiFRv4gz6WSToQtMJgVVZq6?=
 =?us-ascii?Q?QXtnStn+1XPWIuhYWn33mvYFHiWH+dTvD9FVjZyVJV1M1ss5PqNtxp+0Q89t?=
 =?us-ascii?Q?nDR/fMHyGDcR387+FLWqiHKQHMilewbb/xl6BBXI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0372d69-20da-46ae-0678-08dacc52ce04
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 06:28:44.1788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DVMGCKz8EHya/GPrYg8KsMmmAT/omrKFnNRCH5vcsvyfbDwXGWMRvkcETXD5CLUHbMZp/HHsD6QIR/X9Ri/Xpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669098527; x=1700634527;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LzB9v/8D8QwImY7+kwE9Vj2tNFG2V8+kyc9i5BpA1JI=;
 b=ho7mGD3XHzknjOSV/4KA7e9GnLPFxfBphLbuqEJRdDZOnE9mnO5yJV14
 Tpsnq87uWTInkEUM5F1jPCvz5v39+LN2tATeoCAA5sr1dPD1dXj6AEEyj
 rRKu8Nk8zkzPKXr7PGaIaWztUfUzGfTclaylRiVB5v0gNv34PdaXvS6xQ
 mpi2j9U7Kfr1RwnJGQwfYtGgjUmPX/zl1roHW5L3Iz09cfXLIOvwFzvqM
 0gMD0jkqBBwxVTIvD2j1iQZDSLRQI/7+RDYhZKD3IaiJj8wERE1mDG/Zz
 2LTxE+rxEa36wZL7lY5dZLodGfxWh0m6ItNJV7cOaDBFsJ0yoRTVNlzl0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ho7mGD3X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v8 2/2] ice: Accumulate ring statistics over reset
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: Saturday, November 19, 2022 2:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 2/2] ice: Accumulate ring statistics
> over reset
> 
> Resets may occur with or without user interaction. For example, a TX hang or
> reconfiguration of parameters will result in a reset. During reset, the VSI is
> freed, freeing any statistics structures inside as well. This would create an
> issue for the user where a reset happens in the background, statistics set to
> zero, and the user checks ring statistics expecting them to be populated.
> 
> To ensure this doesn't happen, accumulate ring statistics over reset.
> 
> Define a new ring statistics structure, ice_ring_stats. The new structure lives
> in the VSI's parent, preserving ring statistics when VSI is freed.
> 
> 1. Define a new structure vsi_ring_stats in the PF scope 2. Allocate/free stats
> only during probe, unload, or change in ring size 3. Replace previous ring
> statistics functionality with new structure
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 233 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  66 +++--
>  drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 +--
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
>  9 files changed, 351 insertions(+), 61 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
