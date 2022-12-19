Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C70C265119F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 19:16:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30505819E6;
	Mon, 19 Dec 2022 18:16:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30505819E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671473774;
	bh=yGDlsONdMNVZW06Lh/6O4Vhp94BVHMwXjNKv8X6yBwI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ijpXjesrMZ7bTaRxBkxw/R6oxqDFGgGezVmDxNAcqQYkcxCqabgV1x5pLq9ayI2PX
	 mxZRuXUSiNUmpFKhV+11QUEwGlnwbY/a/RUyAF6XrMMXgr9HfcYQFB5SFc9NZsJFfY
	 6A6LpM1fJMgxGWR9brqrxbGiLr5YCi0KW9fZLPan+PnMWIEDkvwUnyXGOi7vvMIJFO
	 xhwNGyOYEp4HNTrKVI8CizvpUlQSa8AAw3v/kTWRdX7eJMdJNn2DzX0FcCMR//3G6I
	 J4lfNtrVYNn5362IPStTlJMtmf6HkxX9nPcgVF0lAWa51gUje/Atw/IgDQG6i5uE8H
	 oQjkVSMHOd0IA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OxdAxOnCN1Lx; Mon, 19 Dec 2022 18:16:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A833814A9;
	Mon, 19 Dec 2022 18:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A833814A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE2B21BF295
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 16:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2975812A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 16:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2975812A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sY8iDwhUKMxG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 16:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E0AD8129D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E0AD8129D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 16:52:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="299729833"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="299729833"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 08:52:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="824907787"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="824907787"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 19 Dec 2022 08:52:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 08:52:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 08:52:21 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 08:52:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgnzs+mQWpN/0xCjO6qL+HFgQv3dgm0YMhWC/wvebYm3Nq7efTwzPM9Xb13bd1cS+BnePkFD7HzFoa6edtieL+7R44jkukqMIuRTNxVXWg0X9a8elXyLOk80abmHl+MB3cIo2s+nbVyQY/y97voUwWMAAmPTPHEpcrls+aJY6nWQW5X5KsIQ5XWn6UcqEsj4/u3mcRXOfGIAX9SPpyDDJY99sLLXSpompMks5CVbypc/q2LmkVN4HP59CGWAGAmMkH2GNygkB5DXVUAgLk9jWtk6e6V6VCxiU6S0uFC7eNPaz+hoGKVxjkRu/SaXDo7XYzgpjV7JI5+BYDW4UhN9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raH0dVZkwoe4kUtGj9sR9Rji21ZVr5/6KirAEz/9akM=;
 b=cYjsH9cGPyFHLUtce1QNlHgbhy/RYdhSy0SA41Gj4/UXCZjy+retZNr+yfzyjwYfVaIAal8dM37/LN6zAJEQ/meN3lVZyZ6Isnx8tT8q0Mqu72x6tB03E1bxsgB8XD9WwyApuklxohwpb/z4sHT4rtBTr3vDK+whpT3G/YVg9/twI9HC0nC0/mmOVeDcrJQ4w2hUDeW4ThNRzVwMWy4RUAzkeCKwpSXjUuhm9qusTlkRZ0iwFs8WK7KJBQ3H23yhAX5WWAIy1FsqvpfoLUEiRmdBcQFYX0gSgv9RU2K/tdi7yo934npXxNc/9RTTgJCLDkF00u83dLeTSRQOBky+Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4681.namprd11.prod.outlook.com (2603:10b6:303:57::14)
 by DM4PR11MB6549.namprd11.prod.outlook.com (2603:10b6:8:8e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Mon, 19 Dec 2022 16:52:19 +0000
Received: from MW3PR11MB4681.namprd11.prod.outlook.com
 ([fe80::130f:a28c:91cf:c23]) by MW3PR11MB4681.namprd11.prod.outlook.com
 ([fe80::130f:a28c:91cf:c23%7]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 16:52:19 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
Thread-Index: AQHZEmJLUFelhSsVgkqmt7zpX6N+xa51brQAgAAASsA=
Date: Mon, 19 Dec 2022 16:52:19 +0000
Message-ID: <MW3PR11MB4681800D27A5E379D6677DDF80E59@MW3PR11MB4681.namprd11.prod.outlook.com>
References: <20221217220947.3232247-1-sergey.temerkhanov@intel.com>
 <Y6CV5GkmIE+dM3cH@boxer>
In-Reply-To: <Y6CV5GkmIE+dM3cH@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4681:EE_|DM4PR11MB6549:EE_
x-ms-office365-filtering-correlation-id: 74df32c5-8f36-4bcd-ed78-08dae1e16479
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h4lGlU+8i/uuDt+3VcPLLWMJ7lg3HvuNXiqBTznOcR7hb+YwOUPiwUydTaGKRQPGDAONvB7u2J4+xUzX5In18TP1TvtEuxGwWm6//U3dAm3Zk3Qmc7hvGCi/JxBd4SIKwZUezqRL1rpqMUR7G1urSI90MKwq29oytd18WiJah0hwQei/0A7RiLsLP1VJJyCkQRIKZEXQ0J9IPaIzWrP5AqxUTqFXhH8NwrYkX8Rujp4zYCp1ezH7SQzq0XUtsu8hpuqPReMLrj8baT9g9FcUPM/XrteTQKr21MItPM1VBea7aLg121XSiR1YuKI7lRp9EwhoSzMoENXCuxT+y24FeKvZT8o0LtwYmzDSDraM9dq5Bov7Q/fVBixoZwcmw9a931Ww9TvhQRUqkJN2oSRXTExac0tIX9GnixbqmvUTlN3JX8RbfhMQx9SPNhn9bN5dxu7YZl3alwXcGAoKlYw3hYfEKmkFFHRu5wqaXPCpbinrGrYDaj6tLydIm7FNHkXQ3ERUiyQmdOYmqmH2jnl1Wi7rUZtdxt+jkhclqouIDgU6+zwPEjDN+rbLRubzircXwdJ9RHrBbEm6jE3eHiXdfcu216s0UxUt3QE8amZreC79CR3fvdElHJeW1GgBlikiuXrdwsEP49o+SaF5xmJ78AWl3+m0KkGAFXTFV3gloHvjsg4xgE4UGYUQ5I2tglxlSIh2Wt1PecW/C3ZBbxwC7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4681.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(366004)(346002)(39860400002)(451199015)(5660300002)(86362001)(53546011)(7696005)(6506007)(26005)(316002)(71200400001)(38070700005)(6636002)(83380400001)(186003)(478600001)(9686003)(122000001)(2906002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(8676002)(41300700001)(4326008)(33656002)(55016003)(82960400001)(52536014)(8936002)(6862004)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9cRJHtP+MqdpE14qvo7TfD2qz3QcoyUc3qxkVNBhaOv4dCGNBxJpd5x2AHCw?=
 =?us-ascii?Q?C4DIysUH/3Ear8m6PEHvohQaQk254eU5gmWzee5d1QZxCIS4Nq5K87XRzjIP?=
 =?us-ascii?Q?uGjaCt+l589YOz5L7i/rLImQrZyg2Ikamq4sMhh/zXWAPFjI+nqhaRhUcWYv?=
 =?us-ascii?Q?ZNnHdNd/Pz16XpJddcwVS3USWYeaC+hczvEBgwGIWJaYBq89wqAcdqPQW2KM?=
 =?us-ascii?Q?NI14OKwXaSpstiWX2KrnXrl7yK4ysxNV93wNTvbimy5YMXQhs3V3E/sSd1i+?=
 =?us-ascii?Q?TUFuo3i7MwTcUqnpmE1jv4FlIFrJvEUv6Nn4A7MpUkopq9bFX+qY+wAkiE5P?=
 =?us-ascii?Q?QXCwSVVaFRGFDMkY/sEkNe9aK7NLOq4QuaizLMMLIGWii2f+VNbJPPuPbvmc?=
 =?us-ascii?Q?cE/H3dsd3YKn63++6HdkyR8Nx5tBWVZDjHr0iooYu9GGmQr0WQNw3CAsixQ3?=
 =?us-ascii?Q?XLidNUhYOLw/HPZ+4qvhpa3oh366OWtNGpSelam+ETLLlV7OI3r+/nkjX2j3?=
 =?us-ascii?Q?egU+mlEI7CklnCCncKGAAIFDsYRGp/YXv0ctK3khrF8/XnTWGzKKWYjnWVsS?=
 =?us-ascii?Q?msSTqZSeZGs+tyM3OEW6gwbHOZKFmFCD12i9L83M+PXH0t5+yyCJHEGKdn7F?=
 =?us-ascii?Q?xSAR6CPMXgn2HDA/eDKcECvjxSpIsMRaB1R9sOiTcKZHo+bD8Uh/1y1Zw0Wv?=
 =?us-ascii?Q?xFcf+5jJFgtUPrBUdkr5u3OVS19gH8rIn1FiwJglLMGuQuhlOqbWZQOsosXj?=
 =?us-ascii?Q?bzk5rk3tqtZnZjRI2WnpraELkwljFEbntYfPOrkIhPnQQ1sq6avgWNCcl9pW?=
 =?us-ascii?Q?iacgZM400Y9bRy/y4LIMx/Mtudy78IujkFfJHO32F1SIQncxO+m3XmXGNUkO?=
 =?us-ascii?Q?GroP/6dEkIU7x6cJlu5wl0M/37ex6t605brMWm+MjaPeKdG6r4SebsTLZzcf?=
 =?us-ascii?Q?qj8sUtRYuRD30GiTyA75zZbbSR5XB1Qw41jPkIBhiB3TYNFWv0SekOzYVveu?=
 =?us-ascii?Q?Pan3kEHXU1lHas0rBgXjxarGoP6iOH38+XmAG0EAxWzV/Zyx3d9FjrHmqJm/?=
 =?us-ascii?Q?YyBGWkgyGl9w+wRbyUnseeC6m0o4+9deznQ731qXWasBvnQgWBJgRskLJX3+?=
 =?us-ascii?Q?V6lKwcsSfOm0ojLTZs65ZoYTf4od02+3BWR+aMPHdtjD7YlyKary8cHgsbDR?=
 =?us-ascii?Q?yOOOZiMGEu7xctslMiyVJGINJ4c7mEKILQwAQFdmsQQcFxCdpwJCjA7DngJ2?=
 =?us-ascii?Q?jifs0/rLctrHO2oWgriksSiwtSZOm4eFpHsuy6Cgtbcb7hNJOmMH0YiawHGq?=
 =?us-ascii?Q?HN2GXltcsMZ1WnpSz/6zpzROUjJKRJbLtT+9hyYuW+p7GpEp6FtKrSiX8Hd3?=
 =?us-ascii?Q?j8HInC3Dx5BhtpYgLuLFcvBsj2v75qnctL5Tsmb9uyVFWyjD6ikqdFDz19CN?=
 =?us-ascii?Q?l2yMyMPR1eyUp8Hc5zQOx5bQo0HLDe3rcO8uVfg8lLybZkCc0YytEOpScNOo?=
 =?us-ascii?Q?0mu/6jbByApauQ1CMYKV3l32eqdjAzPOwtRV5y7Y8LUIi9cF+gOaKdvBBMj/?=
 =?us-ascii?Q?f99ao6x4OxupdXA6IuODkzTeGu1uowglKoJeOUea4mO6M+vLqafliZSSWWgp?=
 =?us-ascii?Q?OQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4681.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74df32c5-8f36-4bcd-ed78-08dae1e16479
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 16:52:19.5637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8URD9N5tVPYRMG8OVWGFfxs6qkl+RgFxayU9gdgRoNl8/wNRZvpGrwhQmrQw6EbDWsLvpeAk4nd7W2NAl2jszfYaJaujZhmA2P8aevIB3+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6549
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 19 Dec 2022 18:16:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671468744; x=1703004744;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=ylC01AouNo+EQdYvtwEk9EvuHoWA7Optg7t8i1PnMjo=;
 b=dT/g17Xyevf2HjngXxm4FHX++VWQB7n3MbjdRxM0XUzkysRJJnzKLUxh
 cW1No4O/capZQYUDgwyIeqGH9B2JrtXv4zKbn+HeLoi1bSSX6M9sLPLRo
 L5ajwTEQGg+G0s5UZ9IbmIH9MS/ZW41paD+1DtWxeyTkUkZGe7Ywl9Lny
 5jUIB/y/bri2O2sWVRBjPh6WqwgAiHVkcQOSKjK5e44Gk0TqMaymeqK6I
 ea6vDZ2EeSI/XMV1S+hxFSHhj3JN5zAOFqeK3ATA9epeT/1Cdy3Q1sMv5
 4mBqjg9fUfLTwCLwHwY6+pi1ExpMHGGVg8sCZVoQPPiupqE9X5oRSAJE/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dT/g17Xy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Sent: Monday, December 19, 2022 5:49 PM
> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code
> out of ice_flex_pipe.c
> 
> On Sat, Dec 17, 2022 at 11:09:47PM +0100, Sergey Temerkhanov wrote:
> > Currently, ice_flex_pipe.c includes the DDP loading functions and has
> > grown large. Although flexible processing support code is related to
> > DDP loading, these parts are distinct.
> > Move the DDP loading functionality from ice_flex_pipe.c to a seperate
> > file.
> >
> > V2: Incorporate latest changes
> 
> Hi Sergey,
> 
> two things: versioning for single patches should go below --- line, second
> thing is that this description tells us nothing. What are the 'latest changes' ? :)
> I probably have to dig review on v1 to get the idea.

That essentially means the latest changes from ice_flex_pipe.c, this patch itself does not change any functionality
> 
> >
> > Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile       |    1 +
> >  drivers/net/ethernet/intel/ice/ice_ddp.c      | 1919 +++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_ddp.h      |  449 ++++
> >  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 1904 ----------------
> >  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   69 -
> >  .../net/ethernet/intel/ice/ice_flex_type.h    |  328 +--
> >  6 files changed, 2370 insertions(+), 2300 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/ice/ice_ddp.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.h
> >
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w transakcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
