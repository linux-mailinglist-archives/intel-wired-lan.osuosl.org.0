Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8734524AD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 12:53:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 891A760F39;
	Thu, 12 May 2022 10:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fvlaSnaJyyeY; Thu, 12 May 2022 10:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9016A60D4C;
	Thu, 12 May 2022 10:53:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF5AE1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 10:53:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D75FB402BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 10:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A70iK3uxLPCN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 10:53:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A818840025
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 10:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652352804; x=1683888804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ifFaegiTB9Q0i3bgblKyi5ZOfuvn61D6W5A4GL/iY0=;
 b=A1/F1zIhoF3QJmCPLc+WdjUM7t2qhsgjk10CwrsS8bWgyqcqtQOg3Txi
 PWAOG7IiY23B4oxQv26osavAd6+sDFdObRI1Wjvc4BXKt31e6eysTYQjB
 ZzCri2L5e6sQP3ygKedtsrORTwTzmIYtHjEVgcq6Q4lWbPeU9f9Gwk+TA
 IvuTgSRfKi6n+UKUOhV4HvUTmYCUGzFcKvHy6Zep+jE+pQAqU7+LUrrny
 Gs2hNa3wVQBzGWQnAdvgj/csRcXhkMilp6X2e+x1XVlCRiBysZ2kLIkDN
 jR91A7ECdp22J1sCYIrIgYY2aPAlNEknOyupHbYmHSLNK0NOxKwTSkPgr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="270094332"
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="270094332"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 03:53:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="711871629"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 12 May 2022 03:53:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 03:53:22 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 03:53:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 12 May 2022 03:53:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 12 May 2022 03:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XzTlW/YLaHbu7DVuJEAXqNpoH/WPKqprH3EVdjdvwaCiwlDVg6Lic4DjaKbgYJLveu2fCB1TOfXCQTESAptfp4UU7cyFoVDS6NqqCYl8l9r2dGosVgEQrxKkwo5ev+ukfUWi5HOiyXLzwjU2JGbuQ3Wx+Z7Bg3HiCu4iaYp4D1guoJAnr8lL/q3lwUuhA1oIs+H78W2HR/yYezwB3ipvCkc44+esPolUvNyKXJD29rkgolLYvxxN9uTgmQh3LPtWy6joG4adV8SW6CgQEwPKLU2ZIuA2j5yHxHNYchJB42Aary1tJYQhTtH5dxTMWj2cXWAX2fQq4HscxQ/BKvoCSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ifFaegiTB9Q0i3bgblKyi5ZOfuvn61D6W5A4GL/iY0=;
 b=BZ0oBLQN56WRY+bUisy0RImPAlYLJvd0O5WeaGpfcOYkEMrstb4Ns5uNLy2UDSyeYC6aI4NtIoiyl8RsGvvqCcy6O/x8JafyDycOEr7EKoTS7MgBeT782vuQH0035q0vg6q+6VUqLzL48U7w8pHt7QwEu6bOpOnlVWZ4FNlSI1fS2OF9YA3YkKQPeJ75f/ITFEXrlD+CKnejRyypzjYg5o10bjOzsYh2hEabTsBZRr+CUPYot7HG2kTR7e6+3IGM4kIXhuK+jBWs9Nbgj698d7McEl35FEGSYkPtTzFu1kXG7QHK/Z5O8NRHfUDyyKJpyG6FbMWESpjsv0xCz5ZPRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BYAPR11MB2583.namprd11.prod.outlook.com (2603:10b6:a02:c6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Thu, 12 May
 2022 10:53:20 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%5]) with mapi id 15.20.5250.014; Thu, 12 May 2022
 10:53:19 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: add xdp frags
 support to ndo_xdp_xmit
Thread-Index: AQHYWW/TiqvSVLq/qEegoKpFJzMLna0bKaoA
Date: Thu, 12 May 2022 10:53:19 +0000
Message-ID: <MW3PR11MB455432D1387610945334C1BF9CCB9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <e36724d3cdfbedf9af1a2a7f47ebd60aa7932f83.1650978540.git.lorenzo@kernel.org>
In-Reply-To: <e36724d3cdfbedf9af1a2a7f47ebd60aa7932f83.1650978540.git.lorenzo@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc21545f-e86e-4779-72a2-08da3405a08a
x-ms-traffictypediagnostic: BYAPR11MB2583:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2583AD2E19F3830A5D6450259CCB9@BYAPR11MB2583.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I9OQZ5f6sIJla2HmH6ipV7yxBmp8F3GY43GrGg7bnl9O7Tjo5lkjmN73mSBHPvB/NJh6CpJIb1LItRzDiQaq8YIS3aAzhoAK/UI5MOfRnXK0fputm/6drhe/R9/fcauDHr5t6gKcpLcaN+LHkulblV5VtmV1UQoGyPXiIyYHgJTHzFGQm5ppYTWk0+JByGNN6HLa3N08Pu7rssKPHWDaDFJgvada9nLgY0egmns/q05Z8iu0M8aHPb4bRS5sS1/g8RrVD5HsVuTKWMJvDHmSs2OfveJk6BYeHOGuF7Cx4EMEKijMhjQ3MQTj7wqGTJ14m2D+U1iLmvIQTXcnXomnz2NCDKAcO7mObEPttz0TAImuwIwSgPhxPRmv/SSPz8kzR/UWlXfbsih0uw0xRHtgiqEek3AALqcq3QFiuGlJRo39cIdrQz3BdYq3RL6hdU9p2kClorPc4Eyk59ngYIIF5Lan328LrvLPWB2raliyYSwTqS5F+RThX6g9IWJrp7b2iNtR9Mr/DNIgpsqYMkjx2GIZGU46UJImFsi7RgM32vY4X+R97ii4ZscBhvs360weIzxyHf2nUxXZ+WeY5ChaMRyym4dbGQV8Ksv9WQjF+I4SOt3lmgyXvrEs0V7L8Iu583HFj49UD398yoYwiY/9hv7kadPyCq0UXKsBWyLEyfpZD9gZxUmiXlJUsAgHMFH34tjmMjk36ccvWMoTbevDtg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(6506007)(55016003)(2906002)(86362001)(316002)(33656002)(5660300002)(186003)(107886003)(4744005)(66476007)(66556008)(66446008)(8936002)(76116006)(83380400001)(66946007)(7696005)(54906003)(8676002)(26005)(64756008)(4326008)(82960400001)(7416002)(110136005)(71200400001)(38070700005)(508600001)(38100700002)(122000001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RccQEym2rCt8SAttp2rG9/5TXrqfHkLqJKSMzepHj/i5jf6uhUiBrLVCIgr9?=
 =?us-ascii?Q?09oois7ysWRMdEPSqWmfPzf5kLSVFKX1GJgXP2WrDZlqLx15batVtg7DPrF3?=
 =?us-ascii?Q?ycxNcpLsrK/VNQFqhFz9tK+1nfflnnNijCdbOSkhC9DnMq6Id9PvZ28yE7E3?=
 =?us-ascii?Q?ecAEBMZEau2A5HORAyMa6SCPmwYhyiCsMbCKRlRtaGTsuejX72EQyDjs7zQa?=
 =?us-ascii?Q?oHqldx+kl7U+/HNsHQ7gzE/YiR1x3lxj7/ONoosKR9IRNwhoE3eo9Q0D11s4?=
 =?us-ascii?Q?PWMPfJAzsA7fBQl/58gJMobNFiae4KerX6sNitksF0+BnCWQR4OetM9Ty06U?=
 =?us-ascii?Q?kiVWulEjgt90ecPPdhhldh3zhimM4n5zhLHDPZ9hV7iAJeM4OmR4iBb1To0V?=
 =?us-ascii?Q?ZjccADO9xL867RJhwhOwGP3IC0jhcUGR6zeRIAxK8daQ56yg0LX1cZZaDdRK?=
 =?us-ascii?Q?AhFARxMjETzI/shDkmKNw7TMzVsd4SH13okXkKvcmp4ypSqHOtpqLtq+riS4?=
 =?us-ascii?Q?D9pc5w+7K3BYXSDnBVYwSePqYvDcMkRPVFNZRGVbqUgu2+eIQxtjdX7WAVke?=
 =?us-ascii?Q?f+aHsTO7Ms7StkeK3kUexrJvRS3sYwYmN+8awl4AQ50Rn/3vMVp7Xl0ZedJi?=
 =?us-ascii?Q?FBPEq60Tsl0FlxwFlRBRpmUa+xkOX5atRnZwH3pfPnbNB1uTQgELZTxUQ62y?=
 =?us-ascii?Q?npTpDMM/nIRLoHii5C52tvJi4GSniTEI+Bf7o/DqDX+8zBdZULo3cVA9iIzI?=
 =?us-ascii?Q?J9KoFd+23JFDSH2rnCTXWeQWHwbiBnFQQRqknfLMuajTH0GYf15ZeSW46mYo?=
 =?us-ascii?Q?eudo29SHAps9EDTQKKvpVUnSdai2hza8jqzTrU9UssPem7yDfzSh7Aa9RxtN?=
 =?us-ascii?Q?gp8hv5Z6Yp6+lGqCF/jIn53ECYgCHCI8cR9sSKLuSvyqaW0IHDGyMMQG8K1r?=
 =?us-ascii?Q?CaOFzYu8UEray5pzfFV5XqXH6F9UkNoOHRvZVinIyrKx+f5n/DNHT2t5exsQ?=
 =?us-ascii?Q?jkiBV1wN+N/zERSW2TGQ04n0DeNUX/j/ytm5vqDMY42l6XAiI2phxQGWX3K9?=
 =?us-ascii?Q?XXTYrzcGRjggz2z8eDvKVjy8jliR9zeLJhsRuBWtlvQFzTYVTrYlI/5mmz6U?=
 =?us-ascii?Q?u1/VYXMBm9wj7JoplBHDVQYKr9DyFEhjKXsirwINImLvRyQNezK6IROhZlYI?=
 =?us-ascii?Q?kl0UlrstZsziOPINse5cX/135WZ4qHZI7eXZQx8MbDY2aoEj5/ykNlQqhbz1?=
 =?us-ascii?Q?kwms1Sap1p7wz4SmrkZi+E/b3nsVdAMiffxpIr8dRqSZMPO6XtBRfNXljVGi?=
 =?us-ascii?Q?JgtbwxUwpANjzfRPF+OFmwfNMVgOOT2GfW7OPqR3ptEJnZ6NiND09AOMM4PJ?=
 =?us-ascii?Q?EbsbH4CVdKhZPEmn5WwJJ/NQyusNgVUaCZ2uj7ckhVR2zLR2INNSbVm75s9T?=
 =?us-ascii?Q?HseFqGWDcFN5MvwtG9N+qeKuirbWOCi8kAhBOKlyzvKK0UsJsi0kcrqJ16oc?=
 =?us-ascii?Q?7m6xC8lxOvPcVaJle4rbaeYwvZ9zSQ2QtjZAFxvBN2exNuJsYU3tAkppkMvm?=
 =?us-ascii?Q?VG8+zJuV4xPK8Cn5o+TEo7C81/ZvmHq47cPaF1amJNt7CNDp6IrWhrF5FDmv?=
 =?us-ascii?Q?kDsdb6JhlnIfeldBrIBbTR8SiubrPnO7bVfFMuLZvAQvM/ULbSu3nox9ghvH?=
 =?us-ascii?Q?OZt4+gtwGl2qUgnxrAUo8bM3Jdt48OT+SputWwfxvScetnRkgIuPHZ7Fi4tb?=
 =?us-ascii?Q?1O9KvXeOTP/u4I7eWB+zBNUUaqHW+HQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc21545f-e86e-4779-72a2-08da3405a08a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2022 10:53:19.8630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kIyOtfvVVd5bjVk0VyzvnW5fpxCGDULq/vlblrXwdLbxRwzDhVpCrOqoOeBrwzH6wSnVlxIqztZ5t1KVLN/6TBJWT3lPZ2Miym3yf9HEXXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2583
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: add xdp frags
 support to ndo_xdp_xmit
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
Cc: "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "toke@redhat.com" <toke@redhat.com>, "ast@kernel.org" <ast@kernel.org>,
 "jbrouer@redhat.com" <jbrouer@redhat.com>,
 "andrii@kernel.org" <andrii@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Lorenzo Bianconi
>Sent: Tuesday, April 26, 2022 6:45 PM
>To: netdev@vger.kernel.org
>Cc: daniel@iogearbox.net; intel-wired-lan@lists.osuosl.org;
>toke@redhat.com; ast@kernel.org; andrii@kernel.org; jbrouer@redhat.com;
>kuba@kernel.org; bpf@vger.kernel.org; pabeni@redhat.com;
>davem@davemloft.net; Karlsson, Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: add xdp frags support to
>ndo_xdp_xmit
>
>Add the capability to map non-linear xdp frames in XDP_TX and ndo_xdp_xmit
>callback.
>
>Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>---
>Changes since v1:
>- rebase on top of net-next
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 99 ++++++++++++-------
> 1 file changed, 63 insertions(+), 36 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
