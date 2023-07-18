Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC66D75736C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 07:51:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 648B260BD6;
	Tue, 18 Jul 2023 05:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 648B260BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689659511;
	bh=P5QZbA5+t4f5EguTkCz/Pj/YcvcuZWxZB9dCABLWOjM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GPm0UXiQHYh+VrbZyyaQ1EKyEQwmGmsxz0ikRemJ3fd+8M7FAPkqy75nVWdW54mps
	 tfHbNfBq8MFhIIdTc4j8glKIHU3LVKOQRTRESaSYS4eS6oDzsxrsmQYekfog7uYZ+e
	 GkVb2MqjhJqS1q8MguFXWfpN2CFAcD/N90l9hoXVmMeC1H26/YAH1NDJwlr1QJTR8O
	 sdLWkVgLodcGsIUhyEd9W22EKu8y1/TnCS6SrSUSRWEo21a++e+R0Hu/HAFf27E/dY
	 Wo0uZRsjOdHcZYhFztjSYV6KQ3WpqHnxiSPMpO9GSX/Gp6JYvtaLZWOd7O2rEsHboe
	 2PpkFw5/VqQ+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TY4RScQd7O0d; Tue, 18 Jul 2023 05:51:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 385D460BAF;
	Tue, 18 Jul 2023 05:51:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 385D460BAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E3CD1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74E0560BAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:51:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74E0560BAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P1nCzJR6B_wf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 05:51:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CB3960B16
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7CB3960B16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:51:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="346420999"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="346420999"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:49:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="897449588"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="897449588"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2023 22:49:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:49:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:49:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 22:49:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 22:49:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuwqSxiwVa/nOItk2fhLBknTH3x6JBettHpD8vwLYKKzJhjCxIc/MvcNO494jgTPvuBHhDOmAGJMBsy+0jMYc0x31lj1DNFo751dDoWpDty514enmyKQlADz7ENea9dOA/6BbU0XrwivJzOjFgUZMB0unLc3LllN2KX9sCpSX2R0JUJtelZEujSChxIfZSGBezXexEGx6DwSEnNC/DDGQ26hrYybYCAqXmVAFUdX4M8xN3Y0xINrLdMEKWLibeAETC8nfFs/JhOYVHP5RmPg6lAYxu5NmefB5NINfocQcXXtPmGtMATJPJOEyJgf3P7DgA5feDlhTTBlGtUfnmk8og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JVHGxhNiIIR4O2oM0GhM5PeQlWrlgYO1PxRJqg/JBdU=;
 b=mE8W46+fpJReqZRJjjhMrKbl4SbydTktTGkzKrHwsYbyK6oD+Z/Nf9HI7kBJR8xCO0SfNGiODtRwdsRtX6qFmloQdKNrdVX38mB9TxkZskhvcOqxmYM+2t0NCeTms4pbFKKsqS2eDGpgzKOaP0PAp+lyHMMVHnNWEwdMMVnov2Wt8/SS2VI+ufhpPbFq/62W1w6y1/orUQ1Y4sa2+4O9/9Usy79W0EIKF8n/3CpbQKARC6v2adk9zqHEhHDHKVbfVWBgPqfJ/C937Jlhat6yWCMSLQa0/M3KAII8/RbazoImObBkO0TX09PPkuCTrFhkEE7ZIModV2cQ8fCdi6quXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Tue, 18 Jul
 2023 05:49:41 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b%2]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 05:49:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v14 4/5] ice: add ability to
 read FW log data and configure the number of log buffers
Thread-Index: AQHZtdlJIZ04sCEUhkG+pB+6EhNke6+/CqMw
Date: Tue, 18 Jul 2023 05:49:40 +0000
Message-ID: <SN6PR11MB3133CE5D24C752999E8A4E1FBD38A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
 <20230713222558.142-5-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230713222558.142-5-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|DM6PR11MB4737:EE_
x-ms-office365-filtering-correlation-id: 15a29bd8-e9e1-4e8f-99f9-08db8752c76e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7jeroxQsYB7beh39rwsmTPDHL3Kuiuq6U43e4D3kdfWu0PnOiD4vUcbkihGsmaQV0kzXTQ7LDxZNvvLsMWxUosqOxqpgCSv7Un5AdriXUAPmQC1N54SpwJ2qyLxNkgPeG5jN+RasUycg0xXNppipfPHnU51ynaH54pDryNMMC4WEEC4oicnspNrqr/xwRT4AWd/n7VK4iqZhmImdRIGRoXaBHpVgI6Bu1JUkZ1oS3tAIMZ36cWMsUvZZlimz7cl3xurRKf3QBtYRGX+9k1/RlxVj994UFAgQ/Qz1sYSQbClHOrf2yoNI0Q7SCtTW8q1Kp2UWMbEX6+w2txMOMR431NifKA2hCoNicaXOaaJQ/c43rTnzFlv5o28rTWyK4FLJG09yzw9bd9YqfQOrIIhzDQn6wDQSjesVsBRz2Ms7vfbbTCvJtWql4EEo6MJVAxe3bkuNzZvjFkOduZyw68FyDE1e1WhgSjz/ra+jmBs7pIySXZhGV9RcaBXLTrjrLCWZQy+CKgS9e6eqbLPTN4q1li7VFuQuCC6mMcFQyTaPcyBNZMrqaSp+mdFQPuoIWmcGNsNsTelQzxQyIYad3TGwu7XI4HcrK8nkPTsXkW8qPnO+52y4Rasu9HUKRWpUmUmf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(86362001)(2906002)(33656002)(38070700005)(55016003)(186003)(83380400001)(9686003)(26005)(6506007)(53546011)(38100700002)(82960400001)(7696005)(110136005)(122000001)(71200400001)(66446008)(316002)(64756008)(5660300002)(76116006)(478600001)(66946007)(66556008)(66476007)(41300700001)(8936002)(52536014)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cv8lkbBlHvWbZcvBeBPWVlCCkSgP4UzTvtTIE4J+t5QHREXfSYKsYTTPe2FV?=
 =?us-ascii?Q?laEfiudxj+J7EJFXDU4w8bZ1+X97apwli9bM4b5qJwj7pBiJeebkCpCvbs+o?=
 =?us-ascii?Q?lRIgk19qAK0u9WmrrxTNhIGv2usDJlaaU5fY+G7EURE82x2mhmwAQMBO/7GB?=
 =?us-ascii?Q?GKsYyDTKrJx7CkQzfqdARtSsLF8b0b3qJsvcg8S+AsHRyf6qdvdaN+YtVR5e?=
 =?us-ascii?Q?12S6o/ttHM9DteXrnrdPbZ2FIQYiyXEVpo2z/XcrJtY1g5Uew7L37fwi2HGb?=
 =?us-ascii?Q?PrrK6d1Sn97KsUpXgW5XHbMY9sSSobgoFvh7d4dBlhlhQ7kw9Ul0Hr6ZsxP6?=
 =?us-ascii?Q?Dbw26MPeQk8xme3RvRZcSXULyS3rBxZtDyBqGMFPXmtwvpoFB2NP1P8BIgHq?=
 =?us-ascii?Q?RD53ALvLFf++ByM4QT5xUTjfSJkKatYZuGs7jUdON1tW3rTjcTP17MzYiX3z?=
 =?us-ascii?Q?mm7KX34MrRf50pz3zjBUsqz72jyGn7NKCOAYl85fta0Oz3sfhPyFoALcaMFA?=
 =?us-ascii?Q?4ts71FsqAtEKkI86bEnRHcT3dGbqyapbrOkOG7ol/PQs1t25Qwfyexf6Cxyn?=
 =?us-ascii?Q?64J2A4B6gKhVw38d+sGqyjdtFByxbpgbb5GA2iK2is8/5ESrf6nciLEuGpWE?=
 =?us-ascii?Q?3InvYKDke8xeCOSvuIFMblufX7U4hLDp2AiU1NwWkq/e09PC62qyON1cRn2b?=
 =?us-ascii?Q?BMOub0MnHjmKgM7l7vKypoirv2Xi6CdvVLiUG93JoBat0hjFoMr2GPttKtEW?=
 =?us-ascii?Q?J33xMZOfU3iEtikAMmeptMK4aRWhtJFkfRgWN075SZAwDpYMufYMwit0+gNo?=
 =?us-ascii?Q?RprFQXewGwgPfD3OSIArY1jmJ2tfMyAJ8n46+650DsWI87xWyqI5ZaED51Zx?=
 =?us-ascii?Q?PHyP7dQiZmjngZmsgzD1woISPLwggPFc3w1EkQqe4MlNH1W72lr6HNFmJoDx?=
 =?us-ascii?Q?GE3DRz+ecSA5HdJHYPT6Cv646xgxBDKdcIhP83oxtlrAXhYewTPqc0tAMR6z?=
 =?us-ascii?Q?rtq6MvhrITm/zHAqfUcZEkl7xhxuLd1t89XcusaXjsZKSVe6/8Sq0Mirj2hz?=
 =?us-ascii?Q?Po+mW/391uCr3trxpTbHBTrRT7rizypHVk6dpLuDUiw81I1kNFLs6fQDUZ2H?=
 =?us-ascii?Q?f15tlT5zg1dfcjv70zGt+NsvJtueOtebhwDIe5DX9CBKZk+k4mBdBU5WV0kW?=
 =?us-ascii?Q?yzlFkcT8Qy0p+lhWWKlwPnwfbI6YEIMfnQJcrU0888Os+y4XWCFx6fuW/48/?=
 =?us-ascii?Q?MIvhZpnPLYiJtCGfKH8DDmEuw9bqD+rz9IM/xBNcYByZzWi0DOSGcp7gyz4u?=
 =?us-ascii?Q?G7f1ov7anjpsX2a9MW3RAVGMVQFM0NJMrPzx6MCifhuE32rJ7U/TyqvAj45w?=
 =?us-ascii?Q?xvRex2H9b0UWGFIjSY7OoyKGTNh1rU88Nu4o/AwvU+3nxdcPUm21xsgcJYyG?=
 =?us-ascii?Q?rwwGLqxjPiJT5IJsUYQvT/WhBkptEFP4cjMpvA1lXNADk1O/wJVnkfHcm96V?=
 =?us-ascii?Q?yfm9Iw5CvfD7m/+HOCkuPtb1gEjSlQ/YPYDoNfRlMNsUKoD+Kt9G5kONAmC5?=
 =?us-ascii?Q?uJBi8LGgFkZAJn6S4JSYddrQgAFvRv/cmSNcjvGFKQqFO6Teaz7/OgQ3P2d+?=
 =?us-ascii?Q?gw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a29bd8-e9e1-4e8f-99f9-08db8752c76e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 05:49:40.5702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ks7Stx41ikvuGBva3BU4rHJ6LEQ99c3Z1u85jlZnMWVnf4MB+prrba1WEnuCXQW8t/HSzznCsZe7pNzGqIl1OEAIvcX0D6W0VAb9/B4P+oxiiq2okJT7eY8HfBHxLWvT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689659503; x=1721195503;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xbXPVzMedyiLOhcuckCdGRKg7tIa7Po8/8QuTIl2ESU=;
 b=VV/WyIHA3IaThpk0nMPx5xBaqeifysDdPCX4plX7db6oNXZ2aoZ+GJNA
 +UcKn5l+EQ8WiwtsD/gzzpIvEhXMIPTf9fBj+XK6SPutYEHAX/SfV9KsN
 ptDHSLDJRgGOZl1ti00un6GP0rFjMfgJlJqL/Rjhdxt4h0ZSIYvYw77I4
 u8nZrG2b6rdU/7juFwzh55a6WzclGUOl30YPDwprRQNS1nu9oHn3n5aWK
 4sOln3ASaqiAXJeTzA5PGQZdvQ8arKoNNXEdMaJOUFZEayEtsOHg7UKiG
 mKqSftKJTJjwPTQAnkLG+YlYsQpdcHXMe4dOyXTLapjoTCO8u1QenxxnA
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VV/WyIHA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v14 4/5] ice: add ability to
 read FW log data and configure the number of log buffers
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Friday, July 14, 2023 3:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v14 4/5] ice: add ability to read FW log data and configure the number of log buffers
>
> Once logging is enabled the user should read the data from the 'data'
> file. The data is in the form of a binary blob that can be sent to Intel for decoding. To read the data use a command like:
>
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > log_data.bin
>
> If the user wants to clear the FW log data that has been stored in the driver then they can write a 0 to the 'data' file and that will clear the data.
>
> In addition to being able to read the data the user can configure how many buffers can be used to store the FW logs within the driver. This allows the user to increase/decrease the number of buffers used based on the users situation. The buffers are used as a ring so if the driver runs out of buffers then it will overwrite data. To change the number of buffers the user can write to the 'nr_buffs' file like this:
>
> echo 128 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_buffs
>
> The value written to the file must be a power of 2 value between 1 (not
> recommended) and 512.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v13->v14: fixed an issue where 0 was an accepted value to nr_buffs
> v12->v13:
> - moved 'enable' file addition to the correct patch
> - added comment to header file about inclusion of 0xFF33 command
> - added linux/vmalloc.h header file in ice_fwlog.c
> - removed NULL check before freeing ring->data
> v11->v12:
> - added fwlog/data file for reading and clearing data
> - added fwlog/nr_buffs to change the number of data buffers to store log
>  data in
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
> drivers/net/ethernet/intel/ice/ice_debugfs.c  | 242 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_fwlog.c    | 130 +++++++++-
> drivers/net/ethernet/intel/ice/ice_fwlog.h    |  20 ++
> drivers/net/ethernet/intel/ice/ice_main.c     |  29 +++
> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> 6 files changed, 423 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
