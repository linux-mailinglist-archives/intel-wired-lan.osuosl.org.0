Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0533E0998
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 22:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36ECF40164;
	Wed,  4 Aug 2021 20:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XHs7zOQaq0kz; Wed,  4 Aug 2021 20:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC7D4400D9;
	Wed,  4 Aug 2021 20:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 294EE1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 20:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 165964066E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 20:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8asOnE2jt6D for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Aug 2021 20:45:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19CF4405F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Aug 2021 20:45:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="275061095"
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="275061095"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:45:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="637112944"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 04 Aug 2021 13:45:30 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 4 Aug 2021 13:45:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 4 Aug 2021 13:45:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 4 Aug 2021 13:45:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D7i5tarLiy7zpVXppMWvFuZf2oayz18a4mpYSqRyRBSTQKZUzQINgqHGF3bEgv++IFjBw9ZPc3RuQz0OVTD7VxVK6Xpen/9rT39LPUjD01maCOG8dCDQTCw80aazI/hDFVYas1xon1ShMVHWx9UA9/CQLAEv2tm9ctl1KtD0XcctoLvgh1UpoAfvp3WAcsnKDfXppwBHCEhQaCuthSctxmjr4beBiZIMHlQGJtcZ0/Yzc7D/63b5ONp367To0cj+ypZPyRSA/6ygKi7GhljXQzzHvAJhnJ/CmcW6wxI/A/ybz0+pNJSeuMvDQ+AiQwNGsG0W9no9GTepCSP6SZPh5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YI+PlVjw9hThbkoMmcp6LYrdFGiyInzLXv1ODvvsurI=;
 b=FudOf+kM/2yAjGtLIDvocSN/35fqtDbOtalXCW486N1Pdh9ESAvE5pRdlZFpmfUZ52kwxGX+Xbz91TcFrnGJ27U5I/VLdnGTfA4bDV1aboQ/ilmXPhTlHMNPjz9bL9zvlvdSkNHRJz8/CKfFiQSGI2E3eVpC7FTvNnR6C5gGYi6sthhjhTmi7hHU39PDSjccVs7GHveBw0l8BzDWTPZyrnw86+rD0jI4VKkEJkOLcMqrLtfC7WrJkMfWjxVgGm0H00N94/XcU5/vp9rmcl5/7vQbbUfxWnWsVbkQIobI2ODq0Cpa97+IAhoTUc4NC8hguRp7/naYi86lpvTwWnmsCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YI+PlVjw9hThbkoMmcp6LYrdFGiyInzLXv1ODvvsurI=;
 b=l/9KloEPGsiyIcP+jvrnUe2B21nygAZ07htgrd0FVsxnUXmc5qBrafhSWfKyMyObJaXB1OqLUF+befdtrcgZpIoiRk62kq2Wy2SiGbIuOHcLBCKmWweWfmvKMUQrvlwvn46Wdsz+1bkk4/ScxmX26N0EKWd4wpFKdwvt9GIksGQ=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4761.namprd11.prod.outlook.com (2603:10b6:303:53::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Wed, 4 Aug
 2021 20:45:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.027; Wed, 4 Aug 2021
 20:45:28 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH net-next v3] ethernet: fix PTP_1588_CLOCK dependencies
Thread-Index: AQHXiSosUCoOA3E2bUW3hSCJKNRp/KtjZ5YAgAAOxICAAFp7MA==
Date: Wed, 4 Aug 2021 20:45:28 +0000
Message-ID: <CO1PR11MB50895017B516FB92DB9CD165D6F19@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210804121318.337276-1-arnd@kernel.org>
 <20210804142814.GB1645@hoboy.vegasvil.org>
 <CAK8P3a1EBwd+DvqnQSHL03zqaoRz_bhxj6TGw2ivpWLDT7jorw@mail.gmail.com>
In-Reply-To: <CAK8P3a1EBwd+DvqnQSHL03zqaoRz_bhxj6TGw2ivpWLDT7jorw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 584fb085-7ddf-4747-81fe-08d95788cb62
x-ms-traffictypediagnostic: MW3PR11MB4761:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB47617559E4BA2C2E2529C182D6F19@MW3PR11MB4761.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e6PUHyjEeimaUUYDmiu1IqpQZCAlMgYOxxk7UApQ1Zvx/sj0wp0uCBfCGz3RtoleajqeqP13TPqWFd2FyK21C5+rx92tJtHhYrErjGopADS9w+YGycIO9EVk+qhIYbT8v0ndSJhxOUsc6pDeem27EtEu9kxZv9SVrByvV2q7+pPGqzs4oW+46YU1CFO6NHrJu9yYfNILIwzK43iR0Esbyiq2AoUWNo6sjB79Zs3SWkf3qF92vMUG8fz42QQUVIZhfEBShkOOaVfdKuicYYBXbYkh9+5sMRao7NZJu+qnebZIkcQaMHyNryM2MF9bmnVff7tYykGdm7gfBK4zBw3L+ILEK6sCqGAZ+Mkozdn6698t3okCCsbh7Sao1J1Q5a/W4uS6ZzpqPpRi2KBwQOm9wr/yWNv2vH3BudB+mjetET9fdwjBCfChgAmidF7jR/SvZnrj4rGlLXrxIQwaeqddefbZJu/fOM2E/U90f5iwQL8s9mMroN4IZpxmlOBKKUSaCOuo7ZNuf+QjNlbxnrrp7nc8/hrGXdUyJCHlX/beiKfBKT3eHfue/+diju3Ls8oXFEF4dfrTYxjhyUicjTEuP+qUFRV9cYil6u3d3mFzI6/Dq35RMqLHaHsmeHEoWknzRb1QurMK5c5RmI3rFrV7sumDgdNx/bgLWhqEfBkkubBuK2S/Nz21GOyBkCC1tA6/qN+c3t7LRkP+mK11aJWLXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(66556008)(53546011)(64756008)(52536014)(6506007)(110136005)(8936002)(38070700005)(66446008)(7416002)(7406005)(76116006)(71200400001)(33656002)(4326008)(7696005)(55016002)(66476007)(5660300002)(2906002)(316002)(478600001)(9686003)(38100700002)(122000001)(83380400001)(186003)(54906003)(66946007)(26005)(8676002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTF0eGdZbnhuLzhqTnlGYXl5UXFXRVpYS2xTaDRiU1FFNlZkZnpkdXZXZ0Ny?=
 =?utf-8?B?bmlpS1lJL0FIOElZMStTbWxZZ09obEs3alc2aFBJYWIrWGh0NEFvcUVtaE1t?=
 =?utf-8?B?MzA2TVJFaUF0Qk5YbTVQc09PdW5VTEJlZStCalFCTnRVU2NrcnpaV093ZGxk?=
 =?utf-8?B?UWwwT1hPTjZGVXE5TGM2eVd4OEh2cWJDVFN1dXMveDJrUmZaYUtNREhsSmNq?=
 =?utf-8?B?MWFuWVJnRTdsNDJjZGs5bWZMbHBZdUpMUU5iUlB0TmcxQ0IwS2pZUjU5WWZt?=
 =?utf-8?B?ZVRKYkcrNTlNK0p0UFFrbC9zQjJ0elRmM2xBY3hWUmJpMGdzU1NBT2hrNFZ4?=
 =?utf-8?B?clZCb0UvWUlDb3VsVWh2VmVUTzZtVE9wQnk1TFl3Wkp5SlBYNFhLSFd3TDFp?=
 =?utf-8?B?K2FLQTRuSDRpMjhVUUUvME1QMzdtNzFWdlNYcWpBeVFRazVzZTVlOUJaZkkv?=
 =?utf-8?B?L1Jsa3NkcFJDQitrU0Jqb2x6eXJKT3owbTA0ZTZYdTZTc0tEeXRRRmJndm94?=
 =?utf-8?B?bkFwM3YwZUwxQ2xZUXpPSFlrb2hxRkl5c1R3N1U3RmdtTXN4ZDBtMnBlQ0F3?=
 =?utf-8?B?Wmt3NFVIMnpkTXc2Mm55U2Q4cmtnTjNmaEorRFhQSDZ6ZVRSOGh0eDRKYU1N?=
 =?utf-8?B?dmV0U3pSR3BUcnVSZWxFM2V5aDBqWU5COUNnWTNJMzNoVitZWC9UZ0dnbkZv?=
 =?utf-8?B?b0dSV0Qrc2h3RFRiZDR3cjhINVFxd0sxSDRFMlVTTlNFRmxtVzlqYXFBTU5i?=
 =?utf-8?B?RHArOGRmVjZxdDUzN1RxTWJRMFRGM0crWTRFdTdyNlRKQTUwM0FtakcwNkdC?=
 =?utf-8?B?SVRjdmlCZDE5Znk4aU1GZTBFb08yZWlqQ0hmTS9FUDNWRjZ0TFZXMlp1ODNI?=
 =?utf-8?B?VDhhU2lKTWFTZGdsejlHb3hNZnRTVW9XenNTaDRrVzJ3U3R1NlpQazVnNWF0?=
 =?utf-8?B?UHk0bTU1VVZEbHNHTDhQNm9xeWtGTTdFbGpVZDFOa2piOUZCMXlOOTdZdEFN?=
 =?utf-8?B?a1BKTlIvMUJyN0lRL1oyS3RhdDNrTS8xUC84Q2w0UUdoR2ozdm40V0ZxNnN0?=
 =?utf-8?B?VjVpaDdhYmpQSDQ0OXUyTTIvalJYbktxVm84NWJuc1M2NGtoSjJEU0xiajhW?=
 =?utf-8?B?T2NGV01IK3E1eTdIR2RZZlM2dTFzRURIdVNla1FxZWplcEEzL2pKY0Nib1NE?=
 =?utf-8?B?V2FTSjAwMS9MS0drWGtheWNyV2VoYnJlOXlzVmdVYnRBcXArZ2hNTmlUamNY?=
 =?utf-8?B?b3ZXMXFDTktCWHNOTUV1VTlBYzR1UzZPQm10S0NCN0N6empzS3N4QSt5bnQ1?=
 =?utf-8?B?SXBEQkJhanZhSTQwK0NlVnZ0R2NucDFCTTd5WUJMU2tRNzhwdWY2aC9VWWMr?=
 =?utf-8?B?ZW9WeUprNkxVbkFXZks5KzhLb1VlWUl5REpSQkZTN0s3Y2hmNkFkdXMzUjlk?=
 =?utf-8?B?SU95VUk3eUJEcnU0aGw2VzJ6UUkrS3pmSDEwRWgzdlFiem5ieEFkMFRZekkr?=
 =?utf-8?B?YUN2K1hocS8weUdRUjlMTDE5V3ltcjN1bmllRk5JNUJsV0Z3cXE4bDVUY1Fx?=
 =?utf-8?B?NEQ5alhZZ3dRU2RYRTJUZW44b2pqMnpTYUJPV1BLTE1ZM21zZ3FpVkFuOUJW?=
 =?utf-8?B?YVg1UTYzWG1GQWRQb3VFSm9WaDh6eG9kdFJ4OEtUaS9CSzdqZ0FYaFR2TkhE?=
 =?utf-8?B?K0NPVjN6ZEwrbis4dlEvY0RJeVY0TGlDV1pNZnhNZ2tlYlNJdUVNR3FjeXlJ?=
 =?utf-8?Q?Y9185Q8YTN1sAShn6Q=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 584fb085-7ddf-4747-81fe-08d95788cb62
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2021 20:45:28.6944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SIRyD7n6K5SssdywNz3Nc4OTXCI0wn533emOKJP56N8z8UfR6DjRim+E3zwLKZmeRmCxp1hJR+0kJS59ovhCnq88UMKShXPlc3NPJsp2Jb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ethernet: fix
 PTP_1588_CLOCK dependencies
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Leon Romanovsky <leon@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <simon.horman@netronome.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ido Schimmel <idosch@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Jiri Pirko <jiri@nvidia.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 Salil Mehta <salil.mehta@huawei.com>, Vladimir Oltean <olteanv@gmail.com>,
 Networking <netdev@vger.kernel.org>, Randy
 Dunlap <rdunlap@infradead.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Edward Cree <ecree.xilinx@gmail.com>,
 Sergei Shtylyov <sergei.shtylyov@gmail.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Martin Habets <habetsm.xilinx@gmail.com>, Shannon Nelson <snelson@pensando.io>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Wednesday, August 04, 2021 8:21 AM
> To: Richard Cochran <richardcochran@gmail.com>
> Cc: David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Arnd Bergmann <arnd@arndb.de>;
> Andrew Lunn <andrew@lunn.ch>; Vivien Didelot <vivien.didelot@gmail.com>;
> Florian Fainelli <f.fainelli@gmail.com>; Vladimir Oltean <olteanv@gmail.com>;
> Claudiu Manoil <claudiu.manoil@nxp.com>; Alexandre Belloni
> <alexandre.belloni@bootlin.com>; Microchip Linux Driver Support
> <UNGLinuxDriver@microchip.com>; Nicolas Ferre
> <nicolas.ferre@microchip.com>; Claudiu Beznea
> <claudiu.beznea@microchip.com>; Yisen Zhuang <yisen.zhuang@huawei.com>;
> Salil Mehta <salil.mehta@huawei.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Tariq Toukan <tariqt@nvidia.com>; Saeed
> Mahameed <saeedm@nvidia.com>; Leon Romanovsky <leon@kernel.org>; Jiri
> Pirko <jiri@nvidia.com>; Ido Schimmel <idosch@nvidia.com>; Shannon Nelson
> <snelson@pensando.io>; drivers@pensando.io; Sergei Shtylyov
> <sergei.shtylyov@gmail.com>; Edward Cree <ecree.xilinx@gmail.com>; Martin
> Habets <habetsm.xilinx@gmail.com>; Giuseppe Cavallaro
> <peppe.cavallaro@st.com>; Alexandre Torgue <alexandre.torgue@foss.st.com>;
> Jose Abreu <joabreu@synopsys.com>; Heiner Kallweit <hkallweit1@gmail.com>;
> Russell King <linux@armlinux.org.uk>; Yangbo Lu <yangbo.lu@nxp.com>; Randy
> Dunlap <rdunlap@infradead.org>; Simon Horman
> <simon.horman@netronome.com>; Networking <netdev@vger.kernel.org>;
> Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: Re: [PATCH net-next v3] ethernet: fix PTP_1588_CLOCK dependencies
> 
> On Wed, Aug 4, 2021 at 4:28 PM Richard Cochran <richardcochran@gmail.com>
> wrote:
> > > @@ -87,8 +87,8 @@ config E1000E_HWTS
> > >  config IGB
> > >       tristate "Intel(R) 82575/82576 PCI-Express Gigabit Ethernet support"
> > >       depends on PCI
> > > -     imply PTP_1588_CLOCK
> > > -     select I2C
> > > +     depends on PTP_1588_CLOCK_OPTIONAL
> > > +     depends on I2C
> >
> > This little i2c bit sneaks in, but I guess you considered any possible
> > trouble with it?
> 
> Good catch!
> 
> I did need this with v2, as it was causing a circular dependency against
> (IIRC) CONFIG_MLXSW_I2C, but I'm fairly sure it's not needed any
> more after everything else uses 'depends on' now.
> 
> I'm happy to resend a v4 without that change, as it doesn't belong in here,
> or we just leave it because it is correct after all, depending on what the Intel
> ethernet people prefer.
> 

I'm fine with keeping it in.

> > Acked-by: Richard Cochran <richardcochran@gmail.com>
> 
> Thanks,
> 
>       Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
