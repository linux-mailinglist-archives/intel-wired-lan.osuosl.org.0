Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE3D63C2D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 15:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6E4441721;
	Tue, 29 Nov 2022 14:41:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6E4441721
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669732876;
	bh=EVIlWWwPVPyE6U9ntLCPDGSurFQTA/pIQuC57WNVmsA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=faWlx/wkmd5CDd5s+ed/7PWep9ZEFvjRDdRTyQEKo1tiJLaeWE1rSmWo2q4kO50hv
	 UH1XX3vPd3w59N57MQ+gWYQ+tCo7M2MDKgkJjjiSZzdyeDQeUAdBkn28uReXoar/I/
	 /cCYjHvaPESPxwPb4S+CM7XLbiIrcKu1M2+KnStlOra6ons33dCr/tXoid33F+NhvB
	 SmmI+fG04hsLjeS5A6HVm1d2bR/6Z1B4HZfDogY8HdxRNV7R8N2IPNo+CjL4fo29vi
	 xQCahAjBzZtMBy42thz3HuIGEP1R+rzwNxJm1XXf2GLOcNZeBfWXupwemtKsOTdelp
	 cC1E7Z1qAzwYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2SCqmk95o5a; Tue, 29 Nov 2022 14:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5465C41714;
	Tue, 29 Nov 2022 14:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5465C41714
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3421BF429
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 14:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0498D40441
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 14:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0498D40441
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFn_AdomQqnK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 14:41:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B2D240195
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B2D240195
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 14:41:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="294815911"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="294815911"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 06:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="674640886"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="674640886"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 29 Nov 2022 06:41:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 06:41:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 06:41:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 06:41:04 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 06:41:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g64pbgsveBKrg3orMOHiMrBf9669VNabJ06EE8xIwQoJ36DdLtwbez4SV6J5VPcQEIynRojRU0zW+QB21kc9TD5RNwMaSFpMydweXaE21Stg4UekIDuKLg8uvHyYyxOAB6Phjv7loZIRKu1zJqEG9zLPH724kszLNy0AQNHNkRQX/iwfFNfKwqYbiqPRMgHcBFnNfdvXP9cpnQK2hD2//wQ18QxDx5Sqp3wdexgKQFGlmk0vY68Vu/xvce73C1znR/eZzigEyUvMGuaqXRM8mnO0P94PZRkc4FUUq4MyKDCvdICt8CB3+2Roz1e/WA0o5P3XDqkm/WjWYMktfw8CxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlEbECNwsTnRomQ+Ftq0Szhpr/yJNBjIjLMc+etdXDw=;
 b=Ch5DRvEXkvRfQrz+u7zb1Haut4FQcaLF3Is1Zm6CX2+xnqONRCUyjWVMAwsC5ic/YCdrL7punpmSYnSgAwcRV8mk3Ap3pP/Td+YaZxMNubjo0vq+MC3L1POBPidc94gFBlbJBDrHX7VyUDDcvk6PJP4BAZ/FMP+ebgfAa1AqFSnvLxzV2JUO33r2cX36l+zfOjiKuUfb6Pw13tKschLAIKCIKLQgZmVGDi7vvSShKEcs6jwOJ87SmN2jxxP0NhKw90quAtUynqHLBXVlwoNzHO7Jfoqufqz8eBasqbBxcLAQD5oowo/JE2aevWYZt+Em/N8it0Onawtvzq5vUB65Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY5PR11MB6115.namprd11.prod.outlook.com (2603:10b6:930:2c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Tue, 29 Nov
 2022 14:41:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 14:41:02 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Akihiko Odaki <akihiko.odaki@daynix.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] igb: Allocate MSI-X vector when
 testing
Thread-Index: AQHZANI65tHc8YIWGUO076whpgIGrK5V/1Nw
Date: Tue, 29 Nov 2022 14:41:02 +0000
Message-ID: <BYAPR11MB336772D78CBD1F38C8054636FC129@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221125133031.46845-1-akihiko.odaki@daynix.com>
In-Reply-To: <20221125133031.46845-1-akihiko.odaki@daynix.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CY5PR11MB6115:EE_
x-ms-office365-filtering-correlation-id: 30e2224e-c6c0-42c9-e3ed-08dad217bd15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eOjZiefESzbhuxq+QTKnidxV8f895+SOn5gDtZG5DAjLXVQFU6LykD+PMBSDTKHL0fEfCiI6T01QacjgfaR8S3G0EgzkCYH1mRDpTqQGllck73HyT6uiDL1sYYER2w0Z7Z7O+VEA35/53n9a8tRyXZnX0RXEHXsv2yraAHJXumDR1d9KvvsuxO7T8gEojHFqPGVRQBooClKDY3DrQWcXtTjFQSUaddofWhKAvJiti9bjHlBA7x0k4dUXHC065vODR76wXvM4tEwX6hhEJmAsW2WQw88knuxdSUKj6Ptu7GAfHPkXLGbI2g2tY6hW2eU/hZSvlBA+wKqT1En7E82VOTNob5dUMuv/voV7jJSoDIGpLwDixSvosuwsudpNPQR66g+ODSYDxHcwt5YwnP4FRbVS8fkvL496+64nE2o9bZHENA1OzCEzeu6a1ElPey4k719gHYny4Tsu1YbyWBmZuI70Y+frJopUqmPjdnGViSU+8ATKGa3E9MbWa44E9jGgYXA8mRXWuyGikpU8A6CLVDGO6y7vGMhGWTpdQtBvM8Qbt7hwT0nDnPtAvZiuezxtXgn2qKh0P+ZAJeWTk7xA8fEwvYPh4WHe3ZYJtD6hMDv3D/+AWtaagCqPVQCy1MhCL8XRLMuBnTPF2WtrIaU+MNN4dkxM2F3BRTGd+I8YyuHZ5Na4U4VnU8a0MrxrCtYliUsua6YtXhya3yJJKNKLGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(376002)(366004)(396003)(451199015)(54906003)(83380400001)(186003)(2906002)(26005)(7696005)(6916009)(316002)(6506007)(9686003)(33656002)(478600001)(86362001)(55016003)(71200400001)(7416002)(64756008)(66556008)(8676002)(66476007)(5660300002)(66446008)(41300700001)(4326008)(52536014)(8936002)(76116006)(122000001)(82960400001)(38070700005)(66946007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LWttWkPrTwKoCpzoOydKaBURjzlzCAbFWe6sFp7thQgN4PWcGhEP3YoctK6P?=
 =?us-ascii?Q?xebrn3yOADgKWl0D169N9d6HMAHGZaPUqUcJGcJRhhPM7+uS7Wx4GoGy+9V4?=
 =?us-ascii?Q?CxJbszBlRWql1diBLbfdKUyGM/zE8LKhhZmrGCm3r5UIN1F3GyRKL/KHFFlF?=
 =?us-ascii?Q?8BL49KFqpReCS8OFW323iEzogCm92awx+Gh38xqaXclEknuz3JB1qN+kjCkC?=
 =?us-ascii?Q?BEt3kfgbvuxjW+lqZoKoW+S/rvvkrTRA/ZfSyZq/441OOTuTOs/g5UjggiR6?=
 =?us-ascii?Q?zv1PeXkDCGAKte9h6viUKV9rrlqRWocW4fyVMpjxOshgCDxTqBwiupnAx71Z?=
 =?us-ascii?Q?pV+ozurn5Xsxyw2aZgxzozwzFCuLxRduL6hu+XoxxT80QJECKu0WFger9iNL?=
 =?us-ascii?Q?p1wadBpPbmQMamNCA8Sh0FBUNyiWtaO5nVbexPhZHt5HdruUKBJHSJhnZYP/?=
 =?us-ascii?Q?i+VFre9Qg38XodzO11ONSN4V6gbiQjxESFWrXkGGrWFrdhHXafImUbINjWSg?=
 =?us-ascii?Q?g7QvK0lcDYSn83e1zALN/07NgA0Qbi0NZrZFwac3Ly11/tpUL6qgbOvcs30R?=
 =?us-ascii?Q?94paaNOBK8mxjwS73pp2X8txjp2ZPyIZ0UCKQFUmT3zNiu4Df2DzJep3WuKy?=
 =?us-ascii?Q?fbr4GGJdWForGVRRnBHRqWYQerQlo5vudCQgvExRTCiWUh2jDZGRGiRcahKQ?=
 =?us-ascii?Q?NX4iOouRrBn+Pn/NS7kmPUr4uzc6qqyDQq9lGwrzRAQDsLtOSIV5NiA0gqya?=
 =?us-ascii?Q?WPCFHIdMGuvXxTLnhMlfWW/osnA5AvY6gi692Diroiil+h3KxLLUG9VQmKQX?=
 =?us-ascii?Q?qlWSKJG5nQC/knnYx7S6hU6Qwiq5sV3o8EwB7QM8vPuvOOF3MyCoiI8HM/eN?=
 =?us-ascii?Q?HocAoYMtdb2KhuhUOz0u1VAn705DVFLC/UATt95fVtgu1KNhbAoYzpWXPqXa?=
 =?us-ascii?Q?QgqVJApvJrPCxBNdQaVZH9q1lMLiLmryumb+GvDkM9j0MLAkx1LzXg+DQCy+?=
 =?us-ascii?Q?5VfS6CR31WHzDtDziyWwF2D+NdS8HrKtb8at4FK9SHdc0fz5MlXBGS7pu+Rk?=
 =?us-ascii?Q?h5Ec7pN6WL06PZ+9IuSp+qILBWxKi6BkcKxWLBzeJz3CNrMgs260wEB3W/mk?=
 =?us-ascii?Q?IkSmPGQIFzyxGOpo7X0JRWTKN+8gau7t9MHf5jSwKEsL4YG43KlLGdSvIjTI?=
 =?us-ascii?Q?rM8C+oHUJi+5bOQ69S72dIwtBpyyvwtRnZADeQaapu8HXcXjFhzfCfh+7MrB?=
 =?us-ascii?Q?IkEBHceiZ2st4FABbYqMRHvKetD6tT/6Rz1rGE0ENmRIUn4ql6He0sfteWrC?=
 =?us-ascii?Q?srpayMMuqJpO5k7NV+Te5xr7Ogalbzq3Ouyw72ffMIZquDroxGkc0eMWu6ii?=
 =?us-ascii?Q?DphXJlEuhuM98Wg1tRsjxSbpPA9LKeoX4kiqF0ZA97hORatbJJsuvP7ySDMF?=
 =?us-ascii?Q?/z0esHMIy+zokUCzpq9X88m3RWDRxGUQ77FwL0Su6s4ToGFz99AIYfZyvi+m?=
 =?us-ascii?Q?G94NMCAQaVjjFAwih62utUCauPD9uqJZNKwm9VFO3TSrht5LOzbMmTWGpCjm?=
 =?us-ascii?Q?DS4cFckTG+zpJdixCZ/X7ZqwqnMbpr3fqzBjrl6K?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e2224e-c6c0-42c9-e3ed-08dad217bd15
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 14:41:02.4599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a5vXraSo2u0vqMTc9qvGdJk+X86J7wym8E6vite7ZNmMxZaNp4NhjMKF14Etp3eyW9CGBt+BBrMQDnWAKpSjhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6115
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669732866; x=1701268866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Czjti7ZRgm4dDMJ2KAISr+athsk4Ebdq4ZcUByffXLg=;
 b=YO8aQJTKUK0qh0kWw7lUzsn7o/rhl70bzvxojLe9UNABNxv29k5xKgHM
 5D71obSlGO2vqru0xYIi3uK2upQcbvSKwnQKY7L/J5qrzI+Egmw2tmGOY
 o7Z657ngjakJOp9S8iy69oa037xc5cPJKbgdkThhufFt9NFKuAaFEA7dg
 XqY4oKy3ucolrq185kQNcMyKqF0BHJsxFWDWdjESEQXrXmOUXth/fXkXF
 XQ3ekj42lDNjHi/MnTI4faORASu5Be5HuHKsFce4sIND7Gagtz/TGtpCo
 Qo9JJkg2WnLSwjw/lDO2+1CuXjZLNkT4BvA/wzMa5c+HA6VulNr3+jpKi
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YO8aQJTK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] igb: Allocate MSI-X vector
 when testing
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Yuri
 Benditovich <yuri.benditovich@daynix.com>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Akihiko Odaki
> Sent: Friday, November 25, 2022 7:01 PM
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Yuri Benditovich
> <yuri.benditovich@daynix.com>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Yan Vugenfirer <yan@daynix.com>; intel-
> wired-lan@lists.osuosl.org; Paolo Abeni <pabeni@redhat.com>; David S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net v4] igb: Allocate MSI-X vector when
> testing
> 
> Without this change, the interrupt test fail with MSI-X environment:
> 
> $ sudo ethtool -t enp0s2 offline
> [   43.921783] igb 0000:00:02.0: offline testing starting
> [   44.855824] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Down
> [   44.961249] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps
> Full Duplex, Flow Control: RX/TX
> [   51.272202] igb 0000:00:02.0: testing shared interrupt
> [   56.996975] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps
> Full Duplex, Flow Control: RX/TX
> The test result is FAIL
> The test extra info:
> Register test  (offline)	 0
> Eeprom test    (offline)	 0
> Interrupt test (offline)	 4
> Loopback test  (offline)	 0
> Link test   (on/offline)	 0
> 
> Here, "4" means an expected interrupt was not delivered.
> 
> To fix this, route IRQs correctly to the first MSI-X vector by setting
> IVAR_MISC. Also, set bit 0 of EIMS so that the vector will not be masked. The
> interrupt test now runs properly with this change:
> 
> $ sudo ethtool -t enp0s2 offline
> [   42.762985] igb 0000:00:02.0: offline testing starting
> [   50.141967] igb 0000:00:02.0: testing shared interrupt
> [   56.163957] igb 0000:00:02.0 enp0s2: igb: enp0s2 NIC Link is Up 1000 Mbps
> Full Duplex, Flow Control: RX/TX
> The test result is PASS
> The test extra info:
> Register test  (offline)	 0
> Eeprom test    (offline)	 0
> Interrupt test (offline)	 0
> Loopback test  (offline)	 0
> Link test   (on/offline)	 0
> 
> Fixes: 4eefa8f01314 ("igb: add single vector msi-x testing to interrupt test")
> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
> ---
> V3 -> V4: Added Fixes: tag
> 
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
