Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D597589BF3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 14:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2405182862;
	Thu,  4 Aug 2022 12:54:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2405182862
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659617653;
	bh=Cr1ae4Q17Y9TsugMgndiQH72ja4eUWk4YNCx/MT1XLw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NuORuJJWNYszmXRwLQDDTamU/egGpxTKoiaVWuqdDSzShZBwwwIRsPJNefq2z3gfD
	 i5T39Hsw+pGW6tIjkCLMmzOIeifpkmz/3h/DmR2J6HzW7+9hTQUfmxLfmP+eCSg3a4
	 0KnrikZvHSwWTLIgKlF/Yn3wuYQLtZyWaT//sHaKCPW6kYxZa47s266hKk7IVJOHrc
	 h9+BowrXw/QIHat/Q0vhE5pJrVPILrysjwlcMk528JFsfnggH7IKlNtGOp1YcPJ4fS
	 o10Sb16gbhlZGlfsxqKa3NhApJl0VCFXg8t1IcTU0C/bdFkEg6l2Jj47dKxLtJ2zCS
	 iWtT7g7R0HmeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S3t_PVsxVqHQ; Thu,  4 Aug 2022 12:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C2F682861;
	Thu,  4 Aug 2022 12:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C2F682861
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0C181BF30E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 12:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A37E82861
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 12:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A37E82861
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fABFT3qvTvJS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 12:54:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A28482784
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A28482784
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 12:54:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="287486930"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="287486930"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 05:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="729579380"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2022 05:54:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 05:54:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 05:54:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 05:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QygraVTch9Rbe2F4c2smufCHxJBXoHCUYs0ACd5aoihlluczJX1B8eI3MAgMphr5FDOQkwVKfiePsciNpKS5Z9HkSAzopHaWNHsxfv+ZZYUriQIHsfqwucJeiIFIFooCKj+RFSdC2Hi3oOXxeyUqgARhCZMKQuCUtC7XFLpoYaB6vpkR+oqX/lCT/utZ/G1cC6+RsJTpIUcy+EIIxarbpxWnlzyet1Y9iFXAH9m0VG9Rl4oBW51Ur8Jw+DkILRWKnJfA3MK5ZRa17rTBmpTvSt4Nt1YUE8k3Uo3vOka0f6s18GwNM3drAdbvmRcCuFBuq9jiYCTnR6oRRiMAzH8+Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hAN9II9paxihWFFejoGMNnBI94A3JTRLhu0h2kZ1N1I=;
 b=BHx1KcGmbFEdQRXsdqBKHYmjPVDhEue/nHmK4HaXKu5K0jT7aj2BFyZl+elm9UJ+eJnYAA6YEdaq2TQjV1+lFoh9YAQH9BFfZCCKjgio4Jyvyl2ENAbFGOmfS5pxtijnS8lN4danLELXQFl0QxDe5u5luhgvzjWZzIj86THUt/xPGMFALJBgadlNg77Ny5bq2rV4TGsF2d9NadJZoB+MJ0bXMs6wxKB93tjx8FkGVCbdBqITWOF8wI8kAzX/txTx7kWjmf4K6aYm0Pfh1M5Q1eZZqfAwhp1fB8ldNGYDqzjughApNjhfzBA0epu3KUaWDiBCTVymFKx7pZEyUdAt2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL1PR11MB5239.namprd11.prod.outlook.com (2603:10b6:208:31a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Thu, 4 Aug
 2022 12:53:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.014; Thu, 4 Aug 2022
 12:53:56 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
Thread-Index: AQHYi8qqEhC7uGL1skKc8LIYqnadyK2e6oNg
Date: Thu, 4 Aug 2022 12:53:55 +0000
Message-ID: <BYAPR11MB3367DD6AC06593E589092ED2FC9F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
In-Reply-To: <20220629085836.18042-1-fmdefrancesco@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 174daddc-a627-4616-304c-08da76186444
x-ms-traffictypediagnostic: BL1PR11MB5239:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /zZf3VwlmargIlCXWeQDHWYkRmHY+Py2jzzO1UAsENlxmbE9VjOjtmIllKlU96G3NbQjetPEnF2fD3IVkXwSAanGYP19IPVeFv4SMErMgH5QoB+ozAqKHpMavv3z482ZvI+LwIbamp1QI1ZiZxNnIbs0gI0vJiLPeVndkB00yq8KxyqQnZZQABzBECybqAM6ID4qIN1XVYL3kOQ+Mbnt38MzTky9uyowWVe8QZEturAVgrHWCFHkgtwkcgN/9kFMhCOkbu3TX/MLkS3r4CYsmohJan90J28pATpwUwe/W6VLIXg+7nUudjmo3mRB74zLYcCVl8UJiQwabfTP7/CYXtWyXk8CN9/QZ9W+quxqJFiDA8ihTK35fEFz4vcG4PHtuomSh6BbMbUwsSXGlAo9ZG2T4NCiTbpP9+2gqWSWVkvIIh/Arr/7uFqsT3paBNJ4avS2Exx1wMC6AqRsV39VLvG4G9C02l5MIn4IQLtqz91NQzrkdPXcN1Nnd235n+dOmwiYLNQtzJU2EsA2UgWP/q7T/1dHakOkKu2cp7WoStcKytxaqXBCngKZW6kzxSguIqVLRe/Z15tJSZX2FtuMpIu6R+F48kifaxrjsAMiC76vM66yQTLTGUJzBsoneQWqZDxf+52dqGSi0NXGh6TL8uWzXO8ykXcjm+e/teFc0c1f6nyg8Zzlj8wcq7NqF35Le6HjMGQc/+usBI6tucCT9uZBBMxLxrj37e7sqRLs8zKhwtstZOeHyXUV0Z/QkqDRNY6EWbKkNXVvlHDalbei6PWYxKIeSO/StDO4va8XNL43a7jOOrGVeo4WD7c+zaRMdJcURMvhfVHfLm25YE0vTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(136003)(346002)(366004)(122000001)(71200400001)(38100700002)(186003)(107886003)(83380400001)(2906002)(33656002)(5660300002)(7416002)(478600001)(8936002)(921005)(55016003)(316002)(86362001)(52536014)(110136005)(9686003)(7696005)(6506007)(53546011)(26005)(41300700001)(82960400001)(38070700005)(66476007)(66446008)(8676002)(4326008)(64756008)(66556008)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1tJ8NSnRHfEI6B0bZwq/nRzj3xqG/RdCB3ysuaPasA1iQljSv7T8uFH8jNPi?=
 =?us-ascii?Q?8B1qTvFkRUNlKU9xGPKka+i3LiqhzFpolOb8A4bHlzXd2idwUPoL8x7LXjjA?=
 =?us-ascii?Q?4UUKPdR59yc5oq2Gtfz7XFRSo3rstsnJxGBsW3322YK/0ViYp3rrhzTYwRcO?=
 =?us-ascii?Q?qBGYwnoh1xfE0BXlwuvfqsXTWNEjmMvDa02K2ZSfxiL9AW4F73/6ErfprGoo?=
 =?us-ascii?Q?H4fZz2dK4ycQz989RCXGL/qz3M3EBBRg/PCrGV/jpFQgvDnL7THV7eEtYAr1?=
 =?us-ascii?Q?9x0Jprhsr/zL+RvabJyjnAvQWLjv9uLIFrgqbu0SXaUOo/c7eMqv/K9Tj3fV?=
 =?us-ascii?Q?IYkdNQUD+cXyHjrM7FMqi1uR3PLbrsTDP9nNpWwv73RQhXgekBaxNbp+VxvA?=
 =?us-ascii?Q?JMzR8F2+phQJaF0WyOEG6Akn1qx77LSsAgyWVYmByc3X4AFa6AWblyrXIIG5?=
 =?us-ascii?Q?nrhDEA+doQoQ41T6lL4tgPv/WFEJy5lOb0O4BbiS8ffDeKfw09JSygHX8Nqt?=
 =?us-ascii?Q?YDg1Kgqkak/yiQRxPdQZMN6iAPJFevxfbjUlBKTZuCqCtrFMOcX+iOkwafAj?=
 =?us-ascii?Q?RQ6Bv79D4YE4Xq4aKiET9AF73ZXZ3gCDl+zH1Z95ZW1rinjyhPKy2hw0K+w8?=
 =?us-ascii?Q?0q2wDXq3ET3M+93SjJaRK6gVadcLebzN3WVmiSSwze8yALPQJ9TsbGcYG30y?=
 =?us-ascii?Q?SotGFDmrw21B8TbDtorOyL/zGsz88kM1jIX4LX4RozGoS/lHX1w979vPTuwk?=
 =?us-ascii?Q?xPsJBCpZGcFo3Ew6uc/k2s47FON1SGOi59SHWhFQc3NC8SCeY1+p2E/fJDCp?=
 =?us-ascii?Q?cWoBRj2f8qkh2E+dauTutjmDlSqDzEVedB5dWjO3WcUTffmGoV2VLTajXgFc?=
 =?us-ascii?Q?u5ftB1LeONPlW2HuRMMaN5PtyUNhREvM5YlsJHYdcZFPaV2HNM56o0GgJw7D?=
 =?us-ascii?Q?3j2n5Kj4Pfffh9/whlTOhtFanKzpVmyuKIJr5Ivqo5TZN0kh36COMFTcDaZB?=
 =?us-ascii?Q?hCRhBFk8u5++KaHcsAAs4an8xNw7znVu3Nn/KwVPcQdi/IIlnSJDPFpb4wNQ?=
 =?us-ascii?Q?PkIphM28deZL0/Lzq+ZKtU7rbAyP7N9WiirGNwgpgp24P19TzBUmL7R8tcVA?=
 =?us-ascii?Q?040vYNU6h6xIJhT8irm1nKujW5YN31uNCXoHnFrpZe8TCTJO5OY+p8+85TBJ?=
 =?us-ascii?Q?O/S9qmUgNlMlpOVLoO6eSsMb7Vge2SxwsIg8DT4MqfhecPV/D961zepPjtyC?=
 =?us-ascii?Q?1M6QztUgXzI+AKjbhhlIZQOJf9+C+r5afR3M2sXXD/+NTAygeyK236fISw6d?=
 =?us-ascii?Q?CT7Bbx2dLGMRnXD7gYsSewJ5KYSAM90/NPV9lCav15/GaVg3gwv35QY+xj8h?=
 =?us-ascii?Q?Wg+laEkLV8t6BcmdxQANK20M2cMAmNomRS5orsLzFf2Ah6i2m3gK5dO+PaOH?=
 =?us-ascii?Q?pfuS0naVTt1giY/yr7sx+x5gzh60P5O5l7G40crpV9WzpadrtuRrvGreu/qL?=
 =?us-ascii?Q?iywVHumGJwa7b7dA8/NOYut2jLgeie2foDRDj1xGGinPf7i4PoV0WtMYYQAp?=
 =?us-ascii?Q?i5ffnwGzZwPCqVFByrJM3pbUJf4Gq/wVplML0w4H?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 174daddc-a627-4616-304c-08da76186444
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 12:53:55.9517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 71gLqE66xnscU00lFe+hYE7w3qqseyJWXi5OESpVq+SMn/atNLfHhqXCg0MsvsGCwm2bBoqW98ezFoSzgasO3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5239
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659617646; x=1691153646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=55gLq/Evz7860X870V3xMl8C7NdTHRdmbsUo5zw4ovk=;
 b=CsEGQiXV44HoVcquHSmtx4HR8rS4mSO9D+Kot8SMRjt/h20mmFkJmNKJ
 UtEXaYvVfo1NIMIxu8A0jh7yptO/46SC0tCw4ThvRcHBY4vP7UCRaH2kw
 0NomtoIljRxXjkitX+x3uU+nyB5VUnbtn+sSORVqASMf7jKjec3+gexM6
 JLDomkdF97iYVFtoCEbVmwmi4X1BQziLVqgpwPHt3YAoS9Hp19RchQhPs
 8MXc4SBjOch4ccmCGvuLVX/fB2AI0ddpCujDG9CeA5u7mgeUinXxoWV1f
 hHn/l/binttaIZIUdMzkhgi7nYqH5H/RVvNaVcP6rSB4gb06bm2QRciPX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CsEGQiXV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: "Weiny, Ira" <ira.weiny@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Fabio M. De Francesco
> Sent: Wednesday, June 29, 2022 2:29 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>; intel-
> wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; bpf@vger.kernel.org
> Cc: Weiny, Ira <ira.weiny@intel.com>; Fabio M. De Francesco
> <fmdefrancesco@gmail.com>
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
> ixgbe_check_lbtest_frame()
> 
> The use of kmap() is being deprecated in favor of kmap_local_page().
> 
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible. Furthermore, the mapping can be acquired from any context
> (including interrupts).
> 
> Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
> this mapping is per thread, CPU local, and not globally visible.
> 
> Suggested-by: Ira Weiny <ira.weiny@intel.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
