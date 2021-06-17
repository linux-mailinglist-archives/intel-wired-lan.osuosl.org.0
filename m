Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 860A03AB631
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 16:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1104440204;
	Thu, 17 Jun 2021 14:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NgmvjIIWSwEU; Thu, 17 Jun 2021 14:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7207A40300;
	Thu, 17 Jun 2021 14:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D934D1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 14:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3E7A60640
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 14:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zyH49STrBX_L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 14:40:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F20B760612
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 14:40:11 +0000 (UTC)
IronPort-SDR: 6decB1kIxhMs5kBw5GrHzj5UgC1YgiN2uiDALSu8Y/i0i0PntDmqJR5WkivJLGDE7WVtcAqfpV
 bELRVLeioM9g==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="206200682"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="206200682"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 07:40:10 -0700
IronPort-SDR: 0BWeczipJ3y7UjxuNx5OONRZnXW8HCaqGql4dzKCqDGD/+Dysis33ZWJ/8GvnzbQugdEGdIcIz
 LeKeLkr6TBJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="472432271"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jun 2021 07:40:09 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 07:40:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 07:40:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 17 Jun 2021 07:40:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 17 Jun 2021 07:40:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khpNndsqaV9Ej8sVMR/yqKN5dnGPwKIhlz8CyiYNdYyNxyaRRCNSxmSmI0vMeY3CrAEjjrwmX+UlstHBl68gZce3m4TOV0zAR+jnR0JXaJA4w/AWQCDqRsaFo2QaAKYxrrwEvRpgjVt7pho8ud9aRAsd5SKEr8QBQDs2i4tR38uvCjMcChDd8g2BVAWJE6SjVz13LXoGrA+dbZ2001IJVy9V5eEBSa7ZNtY2Ql8sIq0a9FUJzzCpQhFmHE9gKFbks6U2CkiVzPwBN7KVrtJQgxk7O4jaJafR7Pyic3P0cMAPY3nSTO/if2DRA/lELSdDswHL7b4DRDPWbYKzkFwdZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jO66h3EFYzV/gN1QiUBSZkfl6gZjdA4cPk4zbfcIDQk=;
 b=GhSiuPS9sH2LNkmiq7ONjVaadIL3jELPcVeCS+AcsHhf+TrD0ATTgP8NXJrPNzeYuoeqqDtmf7wR9UNkA4wKnqOgWfjgH5YudNcDMNX14ZOaUvXSBPqU9o5WYz0Q93Z396APkvsUS3xyBuv/hCRfx0o+3fqS8vq6OYSSyqUZM43Sic39ampahZuTfvHcCUlQpkii8DvIJy8kVXnVHaNV4/RlDDpVFLyd5I4BNIAuOrhHMFTl8E4Ztapnc9NJ3zUsXdmJjGOZSgaGccq+lptnfjadIorK5gWvRsfcO5p5t4VC0fegRtMYVxTNevxIFmgNYXUdds6c2WtimBBH8hXRqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jO66h3EFYzV/gN1QiUBSZkfl6gZjdA4cPk4zbfcIDQk=;
 b=hEEgpH2Hw/bhEPX8z/g1P6hKizOnnEGrl9QJYz9pbyuAuhdcUT2Br5w0l1ddOI2AJOeX7sWn1vHuKmjtRPj7IC+Eef3T8DvSm1D09ZikfS58mbunOGd+8tp8n7m1IRwizvB4YW7Kw4dXw5UbbQAjgZEnwspyNSWwCTcj2fpVpjU=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2589.namprd11.prod.outlook.com (2603:10b6:805:53::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Thu, 17 Jun
 2021 14:40:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4242.021; Thu, 17 Jun 2021
 14:40:06 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "xuanzhuo@linux.alibaba.com" <xuanzhuo@linux.alibaba.com>
Thread-Topic: [PATCH net] xdp, net: fix for construct skb by xdp inside xsk zc
 rx
Thread-Index: AQHXYZfOvzh/jyT6d0a7qBgkeeL6G6sYMOkAgAATGYCAAAbngA==
Date: Thu, 17 Jun 2021 14:40:05 +0000
Message-ID: <7d2c9a96d7f1a77b6eea9cdbbee8dea56b1f287a.camel@intel.com>
References: <1623939489.313177-1-xuanzhuo@linux.alibaba.com>
In-Reply-To: <1623939489.313177-1-xuanzhuo@linux.alibaba.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 980a15a2-416f-4401-edb2-08d9319dcca5
x-ms-traffictypediagnostic: SN6PR11MB2589:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB25894888049935D9415FD948C60E9@SN6PR11MB2589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 03TBE1gHjtvsDSKufF+EdmY3KgGjaMYWylNgEKS7cCA1Atg7oTBNsr47aCnzqv4fnfSsx3rmpekdPvZZajpi919/tQ+ObslAwvFIiX/7YCFXQurih4fMMcKMiy5fE88WI8n4sTag7WhaGYkp4xYiAFmzE1b5Y8mjJr071WkPeg6Jk5iOrP01Z2MC+S1luWH4N4vJX9/WpHtvPZ6DHTLCTwn3H78x4gfER2zbVRsgtlef0PXb6jQlGwbGQTkCnKY3vpODFdQFnVsFo8Udzl0RKiyv6Yt94WFK/Vw5w9g3kdGPwT2dbyc0aO5LfY/Fczo3KjKV/FBqde6HpFSmvbGCseXrnYRoig8BUtpxvJnGGHRzWkahQnNMg3uJjiTlrFW2vZ55r6jqKVJ41SahxF6TNz4pMmk6kMAjDOKS6l2z6S+j65DN4w5BwqmNSqiIhDvvj2FuTbZkhG+dPkOcGZbv8WmdJn90k/jmGxNebMoXhfHpvsSgP32+BgslLM9mqbHbJhYZZX/xp8wWSRwF+g04LTlyunOfR7Nb2rVfIKAgBiPqraiPenGqgw1gNIpo36MVGKNKjRjWf3U6+sQqN0bbt0oakjg8r7TesZM39ThToxV1LbWMD0ijrfFB7R4lBkU89rt1HOMoI3mGVVMH/iDyRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(39860400002)(136003)(376002)(396003)(54906003)(5660300002)(186003)(478600001)(91956017)(316002)(38100700002)(122000001)(26005)(66946007)(66476007)(66556008)(64756008)(66446008)(110136005)(76116006)(8676002)(7416002)(8936002)(6506007)(6512007)(6486002)(2906002)(2616005)(4326008)(86362001)(71200400001)(36756003)(83380400001)(83323001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2FPSGZwRU9iZFlnaTFsUVhVSnQvQmwxUzF5R1A2KzJ4L0xneDczK01OdzJi?=
 =?utf-8?B?SnB2Y3NWZE14MmxHQkdiaUZpRDN1WFprQVk1ei9TVk9sNVIxaHRzN1FIVW1t?=
 =?utf-8?B?RVVRWFkrajBOV3BPdWNZQk5FS2tRdGJhckZRNDBib1RuUGQrcXM3UUhiU2JD?=
 =?utf-8?B?anRJVFFaZEh5MTdFK1hVZ1NOY0p6eVBRVEc4eElBOEdpbE1iL3l2UUdDeGVI?=
 =?utf-8?B?UllDODVmem5YcnJpY1ZDbmdIdmFKTGMyZWRuRytVL280N3I0NkVKblNxalky?=
 =?utf-8?B?aFdaU21zR3lzbEZBbXJjcDE0b3oreFFodnYvVmVOSmwvR20yNGkzc0phcm9B?=
 =?utf-8?B?UEVYVStFQ1dQZ0R4NHptNk5rd05RLzU2elVEamQ3NEJ1YkNVMTk1QzFqejZE?=
 =?utf-8?B?TDJvMTM4ZUh1bmVtenR0ZkVCeE1idHVJRllvWnhnY21QZ2tHTWRLSDkwV2tN?=
 =?utf-8?B?cWorRU1mNWQ3V2RmUkRBdGRlM0RhU2hBeTg5YTJ1cXFyTEJxOG5HZXRhSU1v?=
 =?utf-8?B?NWVwTjBRZDhEWTVEekUzN1doWlZCT3BLMEhranNib21DZExFWHpVQW83ODVE?=
 =?utf-8?B?QWN0SWJKYUNKWDJCS0E5M3B3OEZSZGxId2xTYTlSd3ovUzhkV1Z4Skk3dEFR?=
 =?utf-8?B?VCtHbWtHY1VrM2xMN29maHdDV0w3VnkvUUxMM2VZVVZ1MEJpbzRvSnNzRDg1?=
 =?utf-8?B?TGwvRUM0TTVtUlloS3ZobFhTL1dTNW81Y3R6SkhzNVExaDFhQm85QXFBZmZ1?=
 =?utf-8?B?L05adGpyYmlsT1I5RDFIaUpSUUxpWUpmWVVYU1FldG5MRy9uZUt0RmZ5L2pK?=
 =?utf-8?B?Y1BJSFFYcWxqOCtSY0xRNCtNUWh5YVdVY2JGc3BxeWt2Q2R6ZUY5ZXRUcXQw?=
 =?utf-8?B?Z0w4bTN3MGlGYjFiRkpNOU13YnRnMmY4Z1Z5MTNwNnJXLzZJbURBTUNmczVQ?=
 =?utf-8?B?K0gxSHZCV3lxdzl5RTlzcG9DeFc3RUt3cHE5amVlUjh5MEp3d0EwbStMOUov?=
 =?utf-8?B?TkZaK3UwaWtUdnJwOE0yajQ4VjlDWDVsanlkTlVkbkt5Mis2TTd0TUpXcnR5?=
 =?utf-8?B?bVlaeG9idVp1MXhYc1ZUVWtiYXgxTHRITDdTWkRMOVBnNXRreEJ4RFg3NW5Q?=
 =?utf-8?B?YTJoSzdQZnFrVTJ6WmJSKzA3RjB1RW80NGhDMVpLQ1pVMnNya3RRQlFwQ0pS?=
 =?utf-8?B?UisvQmxkdXlVUk9ZOUcycUlSKzcwUU9VSmRyQUtUdEMrSFdQRVB6ZXphdWRC?=
 =?utf-8?B?bU1pY2F6bDFmclc2TVpINkY5emJvQXN2MHhNWGZLNnVzNE1kTXdrL0xVT1B0?=
 =?utf-8?B?YVFVWFZkMDFCdUJ6Q2oxN3RnZThFbnJkLzBBWVJBT0w1OStWT3JtUTdrTk5i?=
 =?utf-8?B?OFVza3UvQVM4SVB1V0VJMzA3dkhudjhFR2I0YWx6SUE4MithaWZqdjhYbWcy?=
 =?utf-8?B?RzNXUDVsMXp3Uk1HclR1dnNId3FFcTcrcVBVRnI5NEc3R0Z4NUU3UlFKeG1y?=
 =?utf-8?B?VkYzbS8vUU9mR1FXK3F3NWtkTkMyUVh4QjJTYmxLV1RrZEo4YmNLbVlIUXZO?=
 =?utf-8?B?VERFejIxditlLy9lT2Yvb0NUYlZFR1B4aTN1OUNnVXNOcHlnM2ZRZkVlbGZQ?=
 =?utf-8?B?MmVnVUNVOXpOSVJ4TC9KRmJtMFYzQStBSjdKZVRXV2NzYlRUYlp6S1JSZFpQ?=
 =?utf-8?B?RnIrMmk5aVBRTHZKN0JiTHRQcDA3cjJHS0hoejVyVXoydU1PenNSc09QQzZx?=
 =?utf-8?B?SHllb2drY1NiRXFKejM5L0pKREo3ZUxTeEg2TEg1aUpvMkNVYUNPOHJ4eVlH?=
 =?utf-8?B?ZzJnZFBhK1BqMG5uTXhMUT09?=
Content-ID: <A734CEC578DB164CA25C51355736BB88@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 980a15a2-416f-4401-edb2-08d9319dcca5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2021 14:40:05.9260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ObLVd/3jkdAsKiQhNuAhiBym+ERcacDcYr3J9RPYbtXL6hIkLWLDHjw8/oHxxWBTHVYx5BFunb/J96+DMe706UmxLXlLJNSSQIJ1C6K1x9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] xdp,
 net: fix for construct skb by xdp inside xsk zc rx
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
Cc: "ast@kernel.org" <ast@kernel.org>, "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "krzysztof.kazimierczak@intel.com" <krzysztof.kazimierczak@intel.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "maximmi@nvidia.com" <maximmi@nvidia.com>,
 "bjorn@kernel.org" <bjorn@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-06-17 at 22:18 +0800, Xuan Zhuo wrote:
> On Thu, 17 Jun 2021 15:09:48 +0200, Maciej Fijalkowski <
> maciej.fijalkowski@intel.com> wrote:
> > On Tue, Jun 15, 2021 at 11:37:19AM +0800, Xuan Zhuo wrote:
> > > When each driver supports xsk rx, if the received buff returns
> > > XDP_PASS
> > > after run xdp prog, it must construct skb based on xdp. This
> > > patch
> > > extracts this logic into a public function xdp_construct_skb().
> > > 
> > > There is a bug in the original logic. When constructing skb, we
> > > should
> > > copy the meta information to skb and then use __skb_pull() to
> > > correct
> > > the data.
> > > 
> > > Fixes: 0a714186d3c0f ("i40e: add AF_XDP zero-copy Rx support")
> > > Fixes: 2d4238f556972 ("ice: Add support for AF_XDP")
> > > Fixes: bba2556efad66 ("net: stmmac: Enable RX via AF_XDP zero-
> > > copy")
> > > Signed-off-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
> > > ---
> > > 
> > > This patch depends on the previous patch:
> > >     [PATCH net] ixgbe: xsk: fix for metasize when construct skb
> > > by xdp_buff
> > 
> > That doesn't make much sense if you ask me, I'd rather squash the
> > patch
> > mentioned above to this one.
> 
> I saw that the previous patch was put into net-queue, I don't know
> whether to
> merge it into the current patch, so I posted this patch, I hope
> someone can tell
> me how to deal with this situation.

The previous patch was to the Intel Wired LAN tree since it was just
ixgbe driver. I will drop this from Intel Wired LAN tree since it
hasn't been submitted to netdev and with these changes it makes more
sense as a single squashed patch.

> > Also, I wanted to introduce such function to the kernel for a long
> > time
> > but I always head in the back of my head mlx5's AF_XDP ZC
> > implementation
> > which I'm not sure if it can adjust to something like Intel drivers
> > are
> > doing.
> 
> I have this question too.
> 
> Thanks
> 
> > Maxim? :)
> > 
> > >  drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 16 +---------
> > >  drivers/net/ethernet/intel/ice/ice_xsk.c      | 12 +-------
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 14 +--------
> > >  .../net/ethernet/stmicro/stmmac/stmmac_main.c | 23 +----------
> > > ---
> > >  include/net/xdp.h                             | 30
> > > +++++++++++++++++++
> > >  5 files changed, 34 insertions(+), 61 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > index 68f177a86403..81b0f44eedda 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > @@ -246,23 +246,9 @@ bool i40e_alloc_rx_buffers_zc(struct
> > > i40e_ring *rx_ring, u16 count)
> > >  static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring
> > > *rx_ring,
> > >  					     struct xdp_buff *xdp)
> > >  {
> > > -	unsigned int metasize = xdp->data - xdp->data_meta;
> > > -	unsigned int datasize = xdp->data_end - xdp->data;
> > >  	struct sk_buff *skb;
> > > 
> > > -	/* allocate a skb to store the frags */
> > > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> > > -			       xdp->data_end - xdp->data_hard_start,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > -	if (unlikely(!skb))
> > > -		goto out;
> > > -
> > > -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > > -out:
> > > +	skb = xdp_construct_skb(xdp, &rx_ring->q_vector->napi);
> > >  	xsk_buff_free(xdp);
> > >  	return skb;
> > >  }
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > index a1f89ea3c2bd..f95e1adcebda 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > > @@ -430,22 +430,12 @@ static void ice_bump_ntc(struct ice_ring
> > > *rx_ring)
> > >  static struct sk_buff *
> > >  ice_construct_skb_zc(struct ice_ring *rx_ring, struct ice_rx_buf
> > > *rx_buf)
> > >  {
> > > -	unsigned int metasize = rx_buf->xdp->data - rx_buf->xdp-
> > > >data_meta;
> > > -	unsigned int datasize = rx_buf->xdp->data_end - rx_buf->xdp-
> > > >data;
> > > -	unsigned int datasize_hard = rx_buf->xdp->data_end -
> > > -				     rx_buf->xdp->data_hard_start;
> > >  	struct sk_buff *skb;
> > > 
> > > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize_hard,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > +	skb = xdp_construct_skb(rx_buf->xdp, &rx_ring->q_vector->napi);
> > >  	if (unlikely(!skb))
> > >  		return NULL;
> > > 
> > > -	skb_reserve(skb, rx_buf->xdp->data - rx_buf->xdp-
> > > >data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), rx_buf->xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > >  	xsk_buff_free(rx_buf->xdp);
> > >  	rx_buf->xdp = NULL;
> > >  	return skb;
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > index ee88107fa57a..123945832c96 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > > @@ -203,24 +203,12 @@ bool ixgbe_alloc_rx_buffers_zc(struct
> > > ixgbe_ring *rx_ring, u16 count)
> > >  static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring
> > > *rx_ring,
> > >  					      struct ixgbe_rx_buffer
> > > *bi)
> > >  {
> > > -	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
> > > -	unsigned int datasize = bi->xdp->data_end - bi->xdp->data_meta;
> > >  	struct sk_buff *skb;
> > > 
> > > -	/* allocate a skb to store the frags */
> > > -	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
> > > -			       bi->xdp->data_end - bi->xdp-
> > > >data_hard_start,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > +	skb = xdp_construct_skb(bi->xdp, &rx_ring->q_vector->napi);
> > >  	if (unlikely(!skb))
> > >  		return NULL;
> > > 
> > > -	skb_reserve(skb, bi->xdp->data_meta - bi->xdp-
> > > >data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), bi->xdp->data_meta, datasize);
> > > -	if (metasize) {
> > > -		__skb_pull(skb, metasize);
> > > -		skb_metadata_set(skb, metasize);
> > > -	}
> > > -
> > >  	xsk_buff_free(bi->xdp);
> > >  	bi->xdp = NULL;
> > >  	return skb;
> > > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > index c87202cbd3d6..143ac1edb876 100644
> > > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > @@ -4729,27 +4729,6 @@ static void stmmac_finalize_xdp_rx(struct
> > > stmmac_priv *priv,
> > >  		xdp_do_flush();
> > >  }
> > > 
> > > -static struct sk_buff *stmmac_construct_skb_zc(struct
> > > stmmac_channel *ch,
> > > -					       struct xdp_buff *xdp)
> > > -{
> > > -	unsigned int metasize = xdp->data - xdp->data_meta;
> > > -	unsigned int datasize = xdp->data_end - xdp->data;
> > > -	struct sk_buff *skb;
> > > -
> > > -	skb = __napi_alloc_skb(&ch->rxtx_napi,
> > > -			       xdp->data_end - xdp->data_hard_start,
> > > -			       GFP_ATOMIC | __GFP_NOWARN);
> > > -	if (unlikely(!skb))
> > > -		return NULL;
> > > -
> > > -	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> > > -	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
> > > -	if (metasize)
> > > -		skb_metadata_set(skb, metasize);
> > > -
> > > -	return skb;
> > > -}
> > > -
> > >  static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32
> > > queue,
> > >  				   struct dma_desc *p, struct dma_desc
> > > *np,
> > >  				   struct xdp_buff *xdp)
> > > @@ -4761,7 +4740,7 @@ static void stmmac_dispatch_skb_zc(struct
> > > stmmac_priv *priv, u32 queue,
> > >  	struct sk_buff *skb;
> > >  	u32 hash;
> > > 
> > > -	skb = stmmac_construct_skb_zc(ch, xdp);
> > > +	skb = xdp_construct_skb(xdp, &ch->rxtx_napi);
> > >  	if (!skb) {
> > >  		priv->dev->stats.rx_dropped++;
> > >  		return;
> > > diff --git a/include/net/xdp.h b/include/net/xdp.h
> > > index a5bc214a49d9..561e21eaf718 100644
> > > --- a/include/net/xdp.h
> > > +++ b/include/net/xdp.h
> > > @@ -95,6 +95,36 @@ xdp_prepare_buff(struct xdp_buff *xdp,
> > > unsigned char *hard_start,
> > >  	xdp->data_meta = meta_valid ? data : data + 1;
> > >  }
> > > 
> > > +static __always_inline struct sk_buff *
> > > +xdp_construct_skb(struct xdp_buff *xdp, struct napi_struct
> > > *napi)
> > > +{
> > > +	unsigned int metasize;
> > > +	unsigned int datasize;
> > > +	unsigned int headroom;
> > > +	struct sk_buff *skb;
> > > +	unsigned int len;
> > > +
> > > +	/* this include metasize */
> > > +	datasize = xdp->data_end  - xdp->data_meta;
> > > +	metasize = xdp->data      - xdp->data_meta;
> > > +	headroom = xdp->data_meta - xdp->data_hard_start;
> > > +	len      = xdp->data_end  - xdp->data_hard_start;
> > > +
> > > +	/* allocate a skb to store the frags */
> > > +	skb = __napi_alloc_skb(napi, len, GFP_ATOMIC | __GFP_NOWARN);
> > > +	if (unlikely(!skb))
> > > +		return NULL;
> > > +
> > > +	skb_reserve(skb, headroom);
> > > +	memcpy(__skb_put(skb, datasize), xdp->data_meta, datasize);
> > > +	if (metasize) {
> > > +		__skb_pull(skb, metasize);
> > > +		skb_metadata_set(skb, metasize);
> > > +	}
> > > +
> > > +	return skb;
> > > +}
> > > +
> > >  /* Reserve memory area at end-of data area.
> > >   *
> > >   * This macro reserves tailroom in the XDP buffer by limiting
> > > the
> > > --
> > > 2.31.0
> > > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
