Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A555583B86
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 11:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E544F40467;
	Thu, 28 Jul 2022 09:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E544F40467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659001888;
	bh=Bct4GJX7iHWkumLHTj62OBuODgcUp93hP+UhDLCB7JY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wMv5iMEG5CgbZIQ2WerdJ+bp0mpvSKtWS/E0hqdj/z8ztCUH2KfJOAkBoKfQs/yLf
	 gb9tCnZotXIozrxOEt/olz5i0NslTQJzhH3ZzrWDDMTNc4OxwMHc6sWw/TvS2UwZV7
	 /+NaswxmT4Mts0wLIEhyhh3NdVwX4WXGiMJgcmCisauPEHyZyGRRdIrT5dm/RIHQrG
	 r+Y8mEPE2k19q/sEn5b05ueC3pJvta242iAXC+H4CLHHM3fpGG69+ndFYityn5/yQ4
	 rPIjwLtnUsrnNBFHHR98o1VJ4nq9C0JMXA/ry81wR/SJzGJYJ5BjfmwK72Tg8ypog8
	 txUhuV151PjjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9XI-5pD4oX7M; Thu, 28 Jul 2022 09:51:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA77440136;
	Thu, 28 Jul 2022 09:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA77440136
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A753C1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 09:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B6DA83381
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 09:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B6DA83381
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yAqWUZP_RKky for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 09:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD19C832AA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD19C832AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 09:51:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271512749"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271512749"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 02:51:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="743036617"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2022 02:51:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 02:51:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 02:51:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 02:51:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 02:51:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oPjiIChCjapITf/3JGdLaIpTvZRh3s2JwSjhBWLTh7ndxktKqHdRPrD/HIrZT6huIeEb5kDef7ohxm37nWK/eZ5jF9vsH4lZzablyxbqx7CbrbM4hG5nDEVMSrn67B6y8WM6HdvUdFjhyPMbHJ22Vo5NBEWgxMwWQqX1agT5bwoQAnnDExvDDdqEGIsCh1QbbW62yMlQ/eU6p3sZ47T1jJd59d8MWyynTIL1TacPpH5kUauXy8uFm4m9sQSsHL44Ohog6pbyC3Z6zcRR+tFvZGcye7I3vO3CWaf38e100qMnOZeobLUB2v2IXipoC5kDb6G7QKqAuRUQflPRF9LZNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHa9uGJ7aKZLofnGVUmBIiqA1DxnW3yrwo7g7hH6YJU=;
 b=b9T//SOJr3F6sngc+h9uUdBG8opel46r2sp+wO/0G1wiOxe6W/5wBLwOEgN5EcSqG8Uxb/nX26D98/KWO2+DcRXlEf6mgisJ2VsHQuOjRIhdMEtHJ1LOWXXn68n+nSZy3o3bq6JX3leY5W2Yr5cob/9Fpt/XC3XDMfok9/Y6ILxo+09iovQS3g2ruJy5+33zsONiMQtQxbqbGMplgN24vw7SAWQQF0Rr5Y2i4kBSqrFM62O/KKOM2vycF+yNvuh9ZqEgJoyl1Js6vm6xS8qM+OravZ7FGT6GxLx2V6WzQqlEtruXdyO7/Kcr5D1edVeG3NblfRKSHyNPYQxYjepXPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3644.namprd11.prod.outlook.com (2603:10b6:5:139::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.6; Thu, 28 Jul
 2022 09:51:14 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 09:51:14 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 6/7] ixgbe: convert .adjfreq
 to .adjfine
Thread-Index: AQHYnUkxWVC3m4s7QEuJfaBqVhunGa2TlGng
Date: Thu, 28 Jul 2022 09:51:14 +0000
Message-ID: <BYAPR11MB3367B3834421AE2E11634EF4FC969@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
 <20220721213001.2483596-8-jacob.e.keller@intel.com>
In-Reply-To: <20220721213001.2483596-8-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 105f7f25-db57-4c59-ee1e-08da707eb5b3
x-ms-traffictypediagnostic: DM6PR11MB3644:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +5WgDXI9TJicIH7aZxnu+dzisvp7lHn7nlYgBBXQDgyOvHDHPvz6kERptm6b1fQcSYgd/mNDhi6321DlnHYWEaRct47saASgq57cSQVSKzWYNgIxH3Jsvkc3Q+LDPFOs276PTyw1QRhVIvHBRZkJwV4kj27hAm25OGP5F58tVr9n6C6q37vPK+mrvqCAEYTsE/oYn1QSHf8bw3vYIClFKYsxqZzxGlDJXbf5+h7Hm9742kSZxNNjCY0146yLtic9p4lzZAOV0+XcTefIyF38jEssrE8e+zqKxVHTQjExx+hGOSRtV6ZnTMce/UYogaDoIwqLjDxFA62J20pK0spc9DQMSP5mTEaKpfBReE8c900F56gQbhxrsQGd08M9Dw6ceZxhbWeBcbYEyLkd6B0bu5A5QuAL5k6LzouM9SunUQu6MqwljTNqN2XU+LBsVAF1WBGZe6IkkQfHbSfCMkCrIvtykRwekqDtjuqDwxRBtDPAjdTFB8Lqbmkl+ou7gDVBTTAz3S9iXigF8eYiy9bfcIfSlB7Vht1Kru7VLKCazrLDNu5nQccXRFtoIGVV5sMGZFKZTWY/ODupeoti5uq5JTEkohM844NLcwUZTnp8hJWW7wsMXIW22K1USUGcX9DVsIXmbKdnrc9zipqwsRFjRmvd6LU/4M34ZhUxMOIVybQNe4HjHvWk7V9Vx3zAes3ZWLMY/OtYSmL1GaC1toXfXqfXNvDrSbwgr1pisNS7zhQELzey7JhPuor7asJEEwQN606d/+VaUYTDrfFQwZHw8K54R01tjnAnTzXqawzfZthmaXvrVCc1ZNJgFsSGmaP/zELMwSHW28X7FdHIlemMjKjOguT4/oOxFTAMAwUzi7pTAXD7bvYR/LBstY3M/bL+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(346002)(396003)(376002)(55016003)(478600001)(66946007)(8676002)(71200400001)(76116006)(52536014)(66446008)(8936002)(83380400001)(66476007)(66556008)(64756008)(5660300002)(110136005)(316002)(2906002)(33656002)(7696005)(41300700001)(186003)(86362001)(53546011)(26005)(38070700005)(82960400001)(122000001)(6506007)(38100700002)(9686003)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lab7DhLTe2rxdIt9m6TVg6tc+CMV5NJU2znYLkrDY5BrtwZ5HQrTxNaT2Rvw?=
 =?us-ascii?Q?rz4HGHCJpNQIv8XnPSvAVYeZfJWvn3LMaWS6slSrb71mR4QGpmoUEa+VmzBv?=
 =?us-ascii?Q?rO1tS7NV6g4iLbh9s29s3ucij6ASdtkNtDVgCCyw7NKtB/bBjDZIvcvq40CE?=
 =?us-ascii?Q?UfxdGajEEV3autHghKFMSt0wl0XiYnXeNq/Yip1ScabFhnNipkJK4dAAj6Bi?=
 =?us-ascii?Q?vxi60nz7pDaPq0DgD3jBuXZYsJjv6DjdQHUOWPHZrY7bjHK4Md2lqeKV55QZ?=
 =?us-ascii?Q?QcPQpzJBl3G43oUY6WYLsiqeDbW176eQ4hNcc2zdz1JGG5K2NTbvXkh/RchW?=
 =?us-ascii?Q?BJFtZJBv0oVRFD7H/ZsMxoyM6WdL4DGCw5K16pgPxfFpjI+6Ix5UDGzLuPgs?=
 =?us-ascii?Q?+strMUULA3KVMcRcIfTDAvbge2+a6c91UkztAE6UdNqlEf5Na8I3G+atQBhV?=
 =?us-ascii?Q?YB+iye5pGkfpT5ZJnbfkrDfEt6gRc7krCh4TP/D9ivPJcJ1T9XGeHgSTPtHA?=
 =?us-ascii?Q?E9k175eYNfycJvsf8AniC89mVRVBnTxWLXIzeiVOhc5GEAnfgiSH3Q4JHP0e?=
 =?us-ascii?Q?vJlDBtBOt4YLk5fF9JalgdpdycquzD2b8V0AXeksNukioPu/lxmg+xuA5Mtr?=
 =?us-ascii?Q?s2TS9CR8b+UgKmS6GoIHxgrsJnJNi5hxcsfNX73geJqTAgGorFq44b+4vat1?=
 =?us-ascii?Q?w9Dzm270qiChyx2c/8MTTZotI2UFPgDBRN0amFIU97UTnnuP8+1L2w3Xix6c?=
 =?us-ascii?Q?y/ecMP8B3Y568nGpx0yB8e6TjqUOL9Bk5nUUUd64YbH/4GsFyTOwaRoBMyr/?=
 =?us-ascii?Q?Awz9BDzHy5o/p1gw1DPpi/dju6LfRVgoN/Qeru84ak9VI8Tww07nRMNuosB4?=
 =?us-ascii?Q?G9T5fPErSc2yKAa1TjNDH4N63gxNe9xxBmWVvfjxT3QCxOQMOrK8jPHlJlwP?=
 =?us-ascii?Q?KMpLmO2yMEWKOt2uanSwvzpKEWL9gj4HK+73O+Xujmoy7MCN04DVD1GE0Uze?=
 =?us-ascii?Q?/Yw55KehbJ7mt5YW2eeFER4I+x2gr4KkhY+qknibEmyn9I3EPs5dwOgGxry0?=
 =?us-ascii?Q?w1FBu4FxhL2qSHFqXEuBBf0oxVxKHnCJCGd9mZQzNVPXq/Q7td0MSTwl7vDj?=
 =?us-ascii?Q?c1Q5oDpAqHswSskh6QZ2J1dEe+fUtAh8klFS0KC7RsTWm/H9AmImX1ozW3nz?=
 =?us-ascii?Q?gZQxUgOW3h9Nt8uulLBbKvzqbCENgSFbLZsgZEEw7xwwiU7HDBPg5criTNwT?=
 =?us-ascii?Q?E+9nX4mU3z0KDBGJyPSdcfvrRYxyFiNn0352psUbphCwfXy4UHmbWgvo41kR?=
 =?us-ascii?Q?2/w5epNqEkrMW7ixGDPIf0zqH7/BW8oL3OAyct7cHgSV9zAK+Vzue+6RDAM/?=
 =?us-ascii?Q?cZ7AaVg5AKBF1FeM+atlsv1gzJNczbLGVNvyGHRFzd8xoQSo8QTNo4ceZ633?=
 =?us-ascii?Q?NQAi8y1kWUUqmg0ePHGebxdGfEELf/37TfTnGa1gIUV2brDqClpc4PyxbPQY?=
 =?us-ascii?Q?tu2OyB9Yh7tPi+UHAUiXV00+IeBlgn3Lb3Pv1npOiImooBASXH6NHpdnl0OU?=
 =?us-ascii?Q?ajDiHMZZvA29NCXsJbpKyfG8x4LQR6kP5OhwuliD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 105f7f25-db57-4c59-ee1e-08da707eb5b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 09:51:14.2379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bIxElUVLfk0cxNj8NPmezxvXRAXPp3g07/A3uLbpsPnJDOFMyjj+Yakmdh6Sl1eR623Cb5zcdTPB+1omuSBjFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3644
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659001881; x=1690537881;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sAhSa7cem4iKVlOWRRMRQNtRkQcRr9fNyan373TSs0Y=;
 b=YlAxy5GLIXxY5PErmt5b9qpbaLSs56ivl0BcqIWkX/jGMFz5VwQ77X2r
 zoFXgnIZgpdZQXgQrUy67/dkJdjvWPHa0zunnNI7WV7iCa+T6HJnQdOQt
 Gfu4/pLlGxvDROre2Yyph65Bdmx654hZIIjSobfUvOHD8GxfTUkVNnq4C
 LAV/Ji9uQx3tZKCVozRxnf69WyjemP+hzelQtJVyFDPgFXsU73hODz8wE
 gTdaNYbxPvTmI3DERbyPlY8+BTVHQdOck/BwlBQe+jhwC1B7ZQSpfeAqi
 rHCMmZ+D/J/Xw3hELetbNssZ96mfJw7XBsfBfUFHAeIZ25shHGfBGDfhg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YlAxy5GL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next PATCH 6/7] ixgbe: convert .adjfreq
 to .adjfine
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
> Subject: [Intel-wired-lan] [net-next PATCH 6/7] ixgbe: convert .adjfreq to
> .adjfine
> 
> Convert the ixgbe PTP frequency adjustment implementations from .adjfreq
> to .adjfine. This allows using the scaled parts per million adjustment from the
> PTP core and results in a more precise adjustment for small corrections.
> 
> To avoid overflow, use mul_u64_u64_div_u64 to perform the calculation. On
> X86 platforms, this will use instructions that perform the operations with
> 128bit intermediate values. For other architectures, the implementation will
> limit the loss of precision as much as possible.
> 
> This change slightly improves the precision of frequency adjustments for all
> ixgbe based devices, and gets us one driver closer to being able to remove
> the older .adjfreq implementation from the kernel.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 73 +++++++++++---------
>  1 file changed, 40 insertions(+), 33 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
