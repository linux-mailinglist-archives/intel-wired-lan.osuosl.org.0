Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2DC60EFF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Oct 2022 08:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADCF280BEC;
	Thu, 27 Oct 2022 06:17:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADCF280BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666851446;
	bh=k2RK7lTKrorS1zcvEATVNcGr72iw2xD5/UUB1VRfDJo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e+I037jsofqHmnfrGIGbFR/UtU6QVBz3D0W0eMj9YO26nXVlZm9QOWL6eD54SuPMW
	 M/1uSyGkS0ZU1/iZd7hu33aHpsQ5/I5+e7YtU6acZd2bwbqhbZt895RdPQAyZTyeFT
	 UrbvlyoIyFL+V9hnoyimC6gxYNjlYzDI0pBJKid1IP8fBuw9ThoaRdKyHfFDWZmz/D
	 HdxRvNBLJPnN5nu1oRWy8nYJqHH+kRmEGJ2vg4VmPFasZxjbyEQj43a51nMo/wwuyd
	 dXGc3CFyuF5+bg6RnMddBz5HyaWlqJ54d94a+wb80a2P6WIo7xIkgjLt4PXTRHaDuq
	 jwefZAmbbwqxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MB0e5TZOCGxe; Thu, 27 Oct 2022 06:17:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A137B80BDF;
	Thu, 27 Oct 2022 06:17:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A137B80BDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A9CA1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 06:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7069D40573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 06:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7069D40573
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyjMY1Gltyn8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Oct 2022 06:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8D974055A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8D974055A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Oct 2022 06:17:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="372352881"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="372352881"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 23:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="634781203"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="634781203"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2022 23:17:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 23:17:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 23:17:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 23:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dNp8RnDpWTCmgdaavbvCQ8zD/a13x7JpmATSmemDgd4cVWTIZqB0OhVNb6rMcGHbBraM0W9XaDCkDs2BdBBITX8Z1Sk3UykwD8WqVQliQI7eLjKQOKUIglbV6VSHxeS7X72H3CMy+rJBZAm6XENbCB0Jh3alBhAb5fwCasQQ4c5Qlhmm38XHGBznJxw5d4F/p8L7jDxrEZE1XhODtaB0ZTig4ldoUiSoJ4Mjl4zvfs3b5KF0dwid/kRq4insfPozLdWeNoOy7j7ddYU8WrA3L6EwFHOZUWU46vDJiJ9cN3cvLajr+hDkIg8NWtrJFuTYWZYG69Z1jywf6HlyeOFdvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SZejpWGczoM4ZgJ9xCAzIXc6XTPLNRSfX83oGz9hdZE=;
 b=RQAtrE7Bjx+gUsETrWVeDA8foWdH/kpJ009mtXT/CgAMOQDFLj9SdDiFkVi5G0eBer8nw87iAqS/6sRCKMHLO0mNnJV8Z/NtLswIw2v9pn+3lXe22BeLECfFfoghNsWlFLz+4efIqgYZhKdkEhUEpe0jIIMf7hALX2gxppq4YNH2x/eG3Ywi/q/nzOMTHvKGWNYLiRPkwZVcODCUssVSQyofYG84Rm/1cLjZ2YxCLbnRHCUU/soAOKHIAL990H5K7qr58pA9w0/OTjR63IlW2aQXSbf12VAPlaVj5x/YtRiYNMLxgPkir/LEQJPhqgWL9mm9h3QwpeYD7L9rpXyINg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MN0PR11MB6207.namprd11.prod.outlook.com (2603:10b6:208:3c5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Thu, 27 Oct
 2022 06:17:06 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::977b:a628:9adf:469e]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::977b:a628:9adf:469e%6]) with mapi id 15.20.5746.021; Thu, 27 Oct 2022
 06:17:06 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "yexingchen116@gmail.com" <yexingchen116@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-next v2] iavf: Replace
 __FUNCTION__ with __func__
Thread-Index: AQHY48R1Qi+SpmS0Ck+UxZdiu4oWZK4hz8ng
Date: Thu, 27 Oct 2022 06:17:06 +0000
Message-ID: <DM8PR11MB5621427504D14C631C07F458AB339@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221018015204.371685-1-ye.xingchen@zte.com.cn>
In-Reply-To: <20221018015204.371685-1-ye.xingchen@zte.com.cn>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|MN0PR11MB6207:EE_
x-ms-office365-filtering-correlation-id: b222b079-fd2c-47c4-2345-08dab7e2df68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CaZd6H0tAXenUNvO1sl8Y0LiaaZNcducziVwHrbweYJaoOZV/gPaAM4e77hKelDFi8OkNT/5EMK1y4JG8YTgEne2QSFmp8m1/GNZKWTR9UBNX2pRKWqh+W43MMpCyeEktK1Of4UV3N84eF3TUdrwaCQrHZnK+O2YjRZK8LgWts8GCkVu3UQPKty0SqbLne+lhwIDimEDD86g7P7Bk8Oi08T1t2EIoE1IyIEJYlJ54m3ckKLZMGqRcEYMuHeM52z8Ec/onDBMuFM/ABf9pFEGLCXT3+ieg2qpf9Tm5QpfRkqI4aV8Wumj9oP/1geARwtLgkxgTdrRlEcte8kBgKVY+3aKXt6oRnGzhNdckZz9YjaGnqRhnNb+NdcwiPUdGqnKsp1gv0s3nhMtz6YLgI/R8mcem47k7dLe+gm3UZjHnFW7KCVoMnIWOhPSXbG1aVZ6z/ZWZ/NYRRJTUGYbuMqroMtv7HbeaChzIMGZWJqEg+aDevj1rkeBxsTup771JpC/iF8Trz29/+egCrKZY2Lkhz7XngXkbTkCymFG0tLSaUsylzsUZ/acv7YkXVBAnpjW7qoO0WHDotIPlq0XoRBlQhW8rO+ZHTPyGsS+Dznn+g3WuacJIAQaVSyoQEFrPU3UoD6j0GzsMRLfq1s4BvVRwbRASCw/irIGhQF2wr4EFiC3BzP9d0xga2zYeCZK4eX/DJgklH9aNsJKd+PWIfOWqouwVwmVr2LJPbC8IUed+aAOf1iVmfKYsuPytQqcTFqBd/VzPtf8JVGtCn54rn5LOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(39860400002)(366004)(396003)(451199015)(83380400001)(33656002)(66446008)(8936002)(38100700002)(66556008)(82960400001)(7416002)(38070700005)(66946007)(66476007)(86362001)(5660300002)(76116006)(52536014)(8676002)(4326008)(54906003)(41300700001)(2906002)(6506007)(122000001)(7696005)(53546011)(26005)(110136005)(71200400001)(6636002)(316002)(186003)(478600001)(9686003)(55016003)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NRJ9C85MkIH3S76WSFWZTgYGuMCPy9pACF35rfG2Itxc7Npb2SVsIWy0Tmhd?=
 =?us-ascii?Q?mOrY+pqSqP3I3y5xCD/go9ZJttBCQdyuGBMV6CHiytHBi6zzKrKXxO2xvLgi?=
 =?us-ascii?Q?KdEHaWjkxAtPVr+JZm3Zfcgr6FJUu9M7lFqbdt2PNOFgP3NGnuR7LDymVI02?=
 =?us-ascii?Q?xsWLdUT2YDRsd9M1CIQ3i4Qix7KzkIt/BH0ov3wvj1DNwWUUF4sbR4lLWofe?=
 =?us-ascii?Q?jrHuw/KsiUyvTcqB4wSRekhJ4Q3hGTypOKcGaZn/tthrNheVVbRSReTLiWlA?=
 =?us-ascii?Q?sE0afMPY60WfrlTtcLsj46kZTpWlj/ASMr6ZIfElbqOQDDCBT+l0GgzRg7l4?=
 =?us-ascii?Q?oKKcPKyI6QyLPXoeRtelFZEg0QK4HSN4sknhkGU1Loams975hbfT8/4lVGSJ?=
 =?us-ascii?Q?8WjxHLNVzwhAh8pUruCpLpeZdn5wHQIwDKWYmf3hOF1ll2ZJszbFknREjssY?=
 =?us-ascii?Q?GvmemYlVqr384LGEfV4HmQAPNXCU1MfkM1seKIzwA8pA0R1Pn1miseOWNuNo?=
 =?us-ascii?Q?/0jzqA82AveIYsyfIyjulXMuhAnRIHCwPH2M6b28aO0aSC1poAXo+N+P2OSt?=
 =?us-ascii?Q?xTJ2YFp8RMUma8pktpvDQhKJ6dujsRjKP5eYL/CwyEr9+/izXNCfTTGqwYG9?=
 =?us-ascii?Q?4lrKViI38739U6mDacdfxgWwvvtTQl1LhEimR/BgPY99GEkMZ7EWS13j1uTJ?=
 =?us-ascii?Q?/y1BNJzHSDNaWmVv3QggV09NUVbIhoOTPg0pEgmX4EHxBcJKGxkQYkbGThIp?=
 =?us-ascii?Q?kOVTo8YVXtY5M6GjDKVZhPZHi4P9jw4073YkY6hvvIXfoEfEam19ZIBbF+zV?=
 =?us-ascii?Q?S4mvK8QxI36RyXeTTPR62O4a53FJT8vse7THBah5J6DuayK5KqpXJbsSJOWt?=
 =?us-ascii?Q?dX7SOTkkctlJV8X7hmyiXNg3LxvnKEhUtORL/+EfditGl4w/hmLEJ1n+e2LL?=
 =?us-ascii?Q?kLmgmttHCMNe8ycxm2tsccvcxNCC8HmzmRgaBa8jCqaJQoxVsogAPxDRXL1w?=
 =?us-ascii?Q?DZjemlBrDd/yqJVBORf+v8KcNs6tXG8QkJU4RgRXdFeKrZkXXb7B4xpwSFFn?=
 =?us-ascii?Q?6EUwPCIw3Zq8ry/2DoR619fRkU4nbXipp3+1nz5HGEw9KgbN1fpeEscd8mT5?=
 =?us-ascii?Q?D9Qwca8ide6cZCaTgGsWLj543W98wOYJTwCbcNJf51P6mNttAiCnLZAnx0rg?=
 =?us-ascii?Q?4VcKetiUObQJVIe8KUK1vd4qTX2urKRwLlNigMz2oNNcIJFqjOxkldA0sGow?=
 =?us-ascii?Q?yfWfT8tcFi4sxL/dauaKb0GdrWm2Z7M7Pg4DTdJ+k1G6pp+LYZI4d9P/1Kw6?=
 =?us-ascii?Q?CbJ/87T6VTLebg9GowzJ2HAY0jp50a/fpZ9NAJo0Dmmp/IXPhJDuiJTi4yLy?=
 =?us-ascii?Q?9qG5glgdkUmIal+weNptZtPkZwzxpKycNjanM6coAVCw6HemrdD9QgQ7gUkp?=
 =?us-ascii?Q?teBP+NT9CGKLWK5gzINCefwly5fmGBnlucgnRxglHJOg89HiV9nUpkmNJp+e?=
 =?us-ascii?Q?n8MBSjWMNrwuUrN3X7okhYQczJKFlxBJ7ttq9f+Ulx0v0PKoStj056NqFiLX?=
 =?us-ascii?Q?CJlepOlfv3XEsn7Tkb88S9FP9ombkAOskkJxUDHf2hIZyh60TyPFCFRyT4Yy?=
 =?us-ascii?Q?cA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b222b079-fd2c-47c4-2345-08dab7e2df68
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 06:17:06.4826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +g14QR89Gyjjtdn9cKucoR2LuqispS/GFFotGXr8XD8WCMNEWg+XLkpInp0++ToCOYLaI726is+Jmso7X+RGb8J+Qqgye2XabFDQQdyf6tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6207
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666851439; x=1698387439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b8NA7XnTADLkHS718vT8MkTrqS7aVWY1m10iaC2XyNE=;
 b=KLo/7Lkxbp7esLsSXz/A8XF4fC6wF7n7u+YMdtLl0DiE1T7MTd8B4O+2
 v518Mv8udV7By54HtxiYvLMM9IskBzIVUymtOEXc7Fif+fPqruTLEnhJq
 0BtAKObQ/pd1Ps6pfmfqMRdii3fCvoj/9UyIrRVGhxjaHoFeS12JAZieh
 C4w/w979Uhv0MgsGts94p/cqvkakXSb1ElgwkK7LafT5vclAlaXejF0ss
 bwHNqImTJCozBrhpRBbbZTzTUl8k4KUdSQhc66jn6IgFK9y+JSVPCDhCh
 jJ/eU1PWhz6pztc4Kc/VEwUjnLdwQsYgl0WB2sh1hbI52Cb5OzI+QJQKj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KLo/7Lkx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-next v2] iavf: Replace
 __FUNCTION__ with __func__
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
Cc: ye xingchen <ye.xingchen@zte.com.cn>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "joe@perches.com" <joe@perches.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> yexingchen116@gmail.com
> Sent: Tuesday, October 18, 2022 3:52 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org;
> joe@perches.com; edumazet@google.com; ye xingchen
> <ye.xingchen@zte.com.cn>; netdev@vger.kernel.org; kuba@kernel.org;
> pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH linux-next v2] iavf: Replace __FUNCTION__ with
> __func__
> 
> From: ye xingchen <ye.xingchen@zte.com.cn>
> 
> __FUNCTION__ exists only for backwards compatibility reasons with old gcc
> versions. Replace it with __func__.
> 
> Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v1 -> v2
> Fix the message up to use ("message in %s\n", __func__)
> drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 3fc572341781..efa2692af577 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
