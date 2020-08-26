Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE17253A06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CDDF88052;
	Wed, 26 Aug 2020 22:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHe+pZIMKS9Y; Wed, 26 Aug 2020 22:03:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B0E58805A;
	Wed, 26 Aug 2020 22:03:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63A441BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 56C56228CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BWvh6auzbfZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 22:03:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id CC4C920408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:03:06 +0000 (UTC)
IronPort-SDR: xuPj+L1MX94vE061S2F7FojgUsmmrSQplAlBrCF2SpW2jns6WBaJWg34Sn1hcfGGweNNHR36lF
 rUXozOYuzR1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="217939542"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="217939542"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:03:06 -0700
IronPort-SDR: woxkJucGQ5ZXJqwrxULaWdGrduVi/gw0UVrAI8oV2aqix9i17yc5Uqjzq+872/WiEBOx/vMZDa
 uvhZ15Mxrduw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="329371152"
Received: from fmsmsx601-2.cps.intel.com (HELO fmsmsx601.amr.corp.intel.com)
 ([10.18.84.211])
 by orsmga008.jf.intel.com with ESMTP; 26 Aug 2020 15:03:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 15:02:03 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 15:02:03 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.50) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 26 Aug 2020 15:02:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UI6FDsoIoqIj4P3QCpLGMhf+DhKpFho8Xu/YSzWJ4DN95V6zP96Fg0miTfsq8m2b+mDX25v5A4G0zBdDneolTxA6vLgzH0+LU3+lJSTLC7d4cdnBcfE57IKA3wK+8XcVOYCnyvBljuwp4LUKbxEoxdhHsLQ/WUaZMtS7cgTomdzyXWjVyoYuHlg+4e+xp/AGgIhtBF21ZwjTs+yBJ16gtou2VDWdaS7Ex1MVhJ7vk97GDhx4KCwWFbrr2TDLzuX0Em0BeWjOeGv1jlGRa5+QaFiUKr1OjVZM+d4l/3r9WkNXX54G/9OIgFSGmNnc3uQ9sbiaSFulnTnD4Z7e3412BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jCG/6EN3HQkqnPjFowvlEkAWGMF2PW1Yy4gpKzxWHPA=;
 b=Z6RckXaLsQ6pdfadwsIrDOTs0AL+uxOvkaG74+gOhirjcVWiC8YeglWTbcQUW6yp2WsMmuSMpOOVBM9GXf2H5odTp0Zu6zK2WedI+Dy71GAk/boThcR9Kc/yJhz4WX732LJOrcUQ0hynn0WQ+dAFzhngrINSxfRhyRT0tigFkQZ96YQGZDMz4WF7/Wx5vNwTjbqKVb5Xa0TFKJXHKegmhjHFEZVunuwVePvuV9kJ8f2ZuEQBO6j9DT/WOv5DUtGNK+xlVd9ojYlfpic26UeI4pwcQKnSJiLP3aGhlie3/J9LMYlT/ROrFVcDXVC5mxpt8DgAVytuT7jL6jHIeG6h7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jCG/6EN3HQkqnPjFowvlEkAWGMF2PW1Yy4gpKzxWHPA=;
 b=s/GABwZUYMwygfvXWWSbkg9eq28BEmDdfv4xUrch0l03zJFA6Tx55XIyAUEw0ScYDISZbjALzzG/68sDgLLsaIOLpmcXQr1hM0ZBLnpSPQQdU+X8PRIcW9M06XkmqBEsEcY0oN4xEzSp0hC5kd+C73mpUeE6zWy2uhCaEYulFwg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB2012.namprd11.prod.outlook.com (2603:10b6:3:10::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.26; Wed, 26 Aug 2020 22:02:01 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 22:02:01 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] igc: Fix wrong timestamp latency
 numbers
Thread-Index: AQHWdOv9wW445IJ4lEy5H+gQJzX9RqlK/xEw
Date: Wed, 26 Aug 2020 22:02:01 +0000
Message-ID: <DM6PR11MB2890E0EB7546D20AC94A87F3BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200817231231.2971207-1-vinicius.gomes@intel.com>
In-Reply-To: <20200817231231.2971207-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43a333e0-a865-4c4b-46bd-08d84a0ba8ff
x-ms-traffictypediagnostic: DM5PR11MB2012:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2012463D0AA564E4D84B69AABC540@DM5PR11MB2012.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QyvLlJD34uXRMI/ivRxD70KVJkGPW5MobVQxbN7kWrsgEptqhBKk8eszvIbKVgqNSSpSIEphNulAxtaFGtzPRyP7lRjnFgy8JjgtrF6rjmkO+P68qSyoXeAbUaa3lq+Epp4BzqR5KUzbQE7p7tTR9EnuJzPgE6mX5cUqDADO7+DKDPoqORZAiTQpnFoh+Ast7QkygTHXabr5HIhtJJOfcDXFsADOB3tm9nWH6i+8fEVr9HzCcQUM6cjtdt6DkKNAGx3Ho46nAf0o+4ZEzcb0g4xhqPHPCXRhjhovCwRCt/WxV5S5sEDc8RLfUcXsxtSTdJWbTgVDfo54r7jhP2VLSg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(71200400001)(6506007)(4744005)(66446008)(76116006)(478600001)(110136005)(5660300002)(66946007)(26005)(66476007)(64756008)(2906002)(66556008)(53546011)(4326008)(33656002)(9686003)(86362001)(55016002)(83380400001)(52536014)(8676002)(186003)(7696005)(107886003)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZzoSR+zcQO6ZXnUrz5jUgIUirp7bpFMNxUudRWV/GTZYSA7SsNB1r62jPoF8HqL3su/9ELftHER13SimTkI7GlnPnvn9amrtLoKLqj3owXjgys1LlGeWcdW638HNFQ6/wSHjyDvEfmT1WtJsaaGkOvxtoFr7KXFiTOeyoh83Slz27eg9bC5r8wrv0ql44btTng6lyWWiG8ksMOWJSPNgulF4H4TrKC+4W6wPQrkjPgVFWcwZ8nLLmd9tKGqfGM7QUSdJ6a8jLNjX4JJ7r01woOK2foCNNjcmBU+cieplEv8TKh8ckJJAK23pyn3ddj348JPGiJfdfdAZdDYH0Uev+23kN1go1YrXOJrtJD7hPY/suRmPip2HijswVg7+77d1R/9SZzwLAKgNYV/Mpdrhxs8UJqjzUMrz1q+gu2gDCKUXaGngkxVaRLBHrz/uX4EQs3dzGP60Jxr9EBvCKvwhiQ/v90ts7mLI01GE95eQgeYjwY+NQaZ7s1R7Rt8Bjr/dzhLA831+oFZMJc7D6mX871ZIJiujAj4FpnQhxG8jJN7Kkx+s+WnFlspuW1wEuaI5OlVrf5acrRKb9o/Wa6yGz7aFpa0UGHoiLbESSfS3QbnX8aPwWUblgfNd49a4n/hbDtoUOOUgwe1jzYPHb5o9Yg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43a333e0-a865-4c4b-46bd-08d84a0ba8ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 22:02:01.3053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ARxLZN5f02ff4AYcUA3i+6EG8fhWV25TXh+r7o3/VfzxmDDi5n1ltJma8DPBM4/QuqmZty7lrQZSaMq2i8vuhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2012
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Fix wrong timestamp latency
 numbers
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Monday, August 17, 2020 4:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH 1/2] igc: Fix wrong timestamp latency numbers
> 
> The previous timestamping latency numbers were obtained by
> interpolating the i210 numbers with the i225 crystal clock value. That
> calculation was wrong.
> 
> Use the correct values from real measurements.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
