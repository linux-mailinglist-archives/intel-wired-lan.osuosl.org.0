Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB773B088A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 17:17:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B73DB40535;
	Tue, 22 Jun 2021 15:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcOLPXB1x2OI; Tue, 22 Jun 2021 15:17:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D9D440529;
	Tue, 22 Jun 2021 15:17:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5700F1BF29E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 15:17:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43CC54052A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 15:17:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYbN2Gjq_ZLT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jun 2021 15:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3FE640529
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jun 2021 15:17:48 +0000 (UTC)
IronPort-SDR: 4gPxku0EHoRBBT7JxjjTqab5Z/3Oy5qhEoCMYx1vIKlnwi72xlzq5CHNtjAOCl9mnyqVwzJzS3
 VpeYA1fb09Lg==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="268215601"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="268215601"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 08:17:47 -0700
IronPort-SDR: nkgqXVezfSrVXidT1r9lfrP4iEOWzgW/jO7K7eK0RCW/ebCwO7so05/9epM8TZkWsgmEiml0cC
 1NFbKQZpAGMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="405995423"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 22 Jun 2021 08:17:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 08:17:04 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 22 Jun 2021 08:16:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 22 Jun 2021 08:16:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 22 Jun 2021 08:14:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eyEV9tfXcDq1d0LNjk+a6uWZnRRh33Ai6uBJc3RlFLkjNLYKunnrvcBX53H9CCkNb3vSkzyTmmbbcpc2K380uQ0j7A8rzAhHZsj2pRkdx6XuU6JwKYIOIFCl3qVl8fEpiT6+a9jAoI6e+p/cdIZraCYRWUkf6QsXp0RnOb3TI9FJMgtoPuHNuMUknTH015zZUod2jL3BRvt4w0UDnag4VTUtvTOZ/1n6ne6FAFuvN0Ih3cN2Gm6lcCtkg2pzE4SPN4W693wOO3C/0tGYIiSG2wk17U1Y9bnK48cEuxR9alhXI60w2QyXXHBMznjmu+Ssm+dirBdoaHHbLx2RRZfJSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PyXpnqw853vPvURNQOt7kqMn61Q5MkgTW8NNyyx1wPM=;
 b=Z8Fi8BaXxYZ9vjqL9X+Q2FpbMc9JKGlQnT/5DVOCgc/aLnKOBbTDCyXKY41HFbu9U7M4lSNQEwvQtyZYDOPrFlQaU80xQAhiX0SnF6P94oa9QlVcfHOmsVjUwxgo+yVYftMd7TsUL38iR0dZAcmt0E91nNMOBRwe/fft505G4XmfT7UiGeWj6QNGt1j0S7ixf03KheYNcQgXb08i8sYSULUHoUnKsEYIH+c6dI6WxkYNZeSXJIxohXb0ThCQAJEu75t/Rkk7IYd5/qtH+cNxzD4n6sFK7WAxy7ZpcUZnPncDTS33rTd6ble8wW01hQIKiDOcdgFl4DgOPZSWawuz8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PyXpnqw853vPvURNQOt7kqMn61Q5MkgTW8NNyyx1wPM=;
 b=SxzPBZO2bWWCfOcK6pweF7oJT6AhhDLsZ0ApT+wGAI1JzpGvCWB2reEpK1Tgn3Zkc/ahwcrcRSfSiSMZovVi9zeYM3qMEfuSaurWNj48CJ/p0yD43Cj5fefXIoOQngml0IrbrHHSjY/dz3mVt65uTgIY9vDauUZ2cqjMWfi3zOU=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2541.namprd11.prod.outlook.com (2603:10b6:805:57::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Tue, 22 Jun
 2021 15:14:58 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4264.018; Tue, 22 Jun 2021
 15:14:58 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 07/12] ice: setting and
 releasing switchdev environment
Thread-Index: AQHXZBJFG0J7TioTP0ucNyLEF8yerqsezRYAgABnzYCAAAwcAIAA6mEA
Date: Tue, 22 Jun 2021 15:14:58 +0000
Message-ID: <6b4044c85a27076d4ce8a0a4f96a04e72abcc63a.camel@intel.com>
References: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
 <20210617234413.104069-8-michal.swiatkowski@linux.intel.com>
 <a6a0b9064847e6106cca2ae4a9669b84f4322926.camel@intel.com>
 <YNEwV42hOSAhtbiX@localhost.localdomain>
 <YNE6gDaubIydNmGz@localhost.localdomain>
In-Reply-To: <YNE6gDaubIydNmGz@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b9a48cf-cf97-4b77-12eb-08d935907fc0
x-ms-traffictypediagnostic: SN6PR11MB2541:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2541C856F90B4F8387A1E79AC6099@SN6PR11MB2541.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IXEy+3zhMO/QXJIIUnLCPb9EWYxQsp2/ygkIrIhhNnyLY8bqYbYtaBgTvImRhbugNe0z+q98Yu54TxJTrshi2PgB9J0huoaPuKd1qkOy+8sWuWODOVPQW+YrOFO8a1bIVnQvlX+cBnDUNghSlKn9MumvL59R0dlR5bgh5ZWqAL7sp7JxAV8MHfH1bN1eb1dSG6MrHgttSdvVL2SNeBkGW28fNSfT1MIC5gIynYPkVO9E41Edseeay4QZJjVHrv9AkYC42S3U25fkOrk0ws8Df+doLzg+xiBAmDuxc4ZLQdymnrZqHX4Jer3rDSmb37FtI2xVDu5KUrzseaZQE03cnycLYC0xn+oeMALWwIhDhQfBYsxFOWnjYg+qVMhY5MNiDLyjNGGelzPtCibJi3ekDGbXrEohiXjOV4FhJ6h3qGy/dK00zz3lLrFSalfz+Bs/pka2Qhf+Q8bJMtfK3tE8cEDtnyl73luW8FnSELp0aqhv2VEQZJpmJh1hjjnhCpww9jVu8Jze7Kci4reNHtGx9OpjpbeF0ogvYjisg5WPGaxdHaSCQYRLvTnRPAz/ExDdNDNjv60uqifLRGPomfRwGBOiTZMSjhFQQQHBkoqBw50Ld+NN6Faf6c+DROqJ1kHHBjX7EzHg7O40nZkL5zy3YyPN4rJsrOt0V2BP6Em5MCAZ4L23RpCPBF12dyT1yxNMrvgSanWzfEMCYIlpdB64j0t6HnA10d7oN4sf2ApP8Fk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(396003)(376002)(39860400002)(6916009)(38100700002)(122000001)(64756008)(5660300002)(36756003)(2616005)(316002)(478600001)(66556008)(6512007)(66446008)(966005)(91956017)(8676002)(54906003)(66946007)(8936002)(66476007)(2906002)(71200400001)(86362001)(6506007)(4326008)(76116006)(83380400001)(6486002)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDdKRzhDYmlvMm9tNjRmUTRzVG5Vb2RJNEZBS01OQ2xGYkxhd0VlYzN0RG5X?=
 =?utf-8?B?amE1UlVqTHF4UXlxbkRoZUhjUTQ1eTY1SUY0MUJiTTVxSWdoVk4wMDJWYXJX?=
 =?utf-8?B?ajgyejNKMzJmYllhYzJaYWNHQTZGakRFcUwva1FlRXhVWGlOVHZPWnBMM3Za?=
 =?utf-8?B?dG5RL0U1YnphL2w5emhHK1k4bHBaU1hBWkliQTJmS21IV0hiQzZJN3pnV0JE?=
 =?utf-8?B?dHVRaDhyRE14S1JEc0RPQzYvaENoa3RXZjZWb0xGSUo2RG43YTJwZ0xMODNL?=
 =?utf-8?B?eVZCa1A4dFA2R0pacDN3eUFTZG5FZ1JWQzZXTzM2M3hWZnBmRlgyUnVyWDNH?=
 =?utf-8?B?dTlTYkl5UXord2FTcHlldk9KRi8vNEJNeVhUcVQ5TEV0MU9Jc3ZmOEVLY0c0?=
 =?utf-8?B?SzZjUVEyNkhUUWl3TDJvanIwWFh1aEF0V3h1Zk1ENWRUano5cnEzV2tlQVlR?=
 =?utf-8?B?cGJyV2xsMXhUMjYwV0dWVU4wSkI3WkxseUpZcEhVNzBNZTBabHltbGpCZis1?=
 =?utf-8?B?d091VDgvTUhCVkhCRklyM2IzV1NKU0s3UUtFV1RSRVJuTG03dnJNOVd4T0Rw?=
 =?utf-8?B?M2syd2g0dUE0c1lObVBNSzBobDFKaEtJTEdCU0JwalcxRTg5b0tNOGxzTkFv?=
 =?utf-8?B?MnRGWUFIUTdSUGhZeWt2RkNaSkdJbkJ4ZDRZN29NVnpkZTFUbkV6ZHJWSlA2?=
 =?utf-8?B?RjBYNjhYTHpDYzFpbXptL01WQlNTalhQWEtuRENIS0h2UW8rODdBLzAzTTY2?=
 =?utf-8?B?SVhpMkNsWDl4MVFTVjI1dnZLc3l6YmpsZUFKNEZKRmZ1OU1ZMmEwNGJKeWlk?=
 =?utf-8?B?MGtvbHNPY3B4R2VQcEU4VDNGUk9SS1JZdDVSb2FuQ1pCOTVuYnArWktKY1Zo?=
 =?utf-8?B?bHAvcS9UREFYcWZXT0d4b25SYWlrQnQzc1BDZEFsWVR1NXFmTUtLZE0xSXVJ?=
 =?utf-8?B?bzM2Z0dQY3Q0SWdwS3UrYm5pNVVCRnJMc1llay9ONmJ4dkE1S0QvQ29JUFQ0?=
 =?utf-8?B?MlllbnBia0NjTnFpLzNqVEJtTmZHbXVRU2h6OUIwaGZIdlZaUm56bmpPUHJF?=
 =?utf-8?B?Q0VTbWY5dzRnZlB1NFZleTlzVXRkelR2TWs5WjcwTTFrQitFZWFZVnJGTmox?=
 =?utf-8?B?M3hOK3lrNCtiOGZ5MnB3Q1ZvN0VwMzRSLzQ4M2RGZHhQTm91WnZUQm9EZTUx?=
 =?utf-8?B?WnZqWDdFbmt6ditGUjN5SlI1WXNtcTVxS1E4VFM1d3NnUU1EaVZFMEN6VFVH?=
 =?utf-8?B?a1pNVXlhaGYwUjZkVllzSkdzWlpiR2IyajNpZ1piZGxPOFM2MmZPL2QrRDVy?=
 =?utf-8?B?ZExCN0I2WFdSRGxDSzhlS0F4OEZLNzJWYVlBY3lNZFhMTDVvZEx4UXhCSkRR?=
 =?utf-8?B?YTRpd0pnVTRDSGgzaE9NL25wRWhNN2p1QXFiT1V0TG1HS1puUEpFQkcxMkVq?=
 =?utf-8?B?RWs1UzNJcWhzY2tlYjE0cjZMTWtVdDhlUkE0eTU0ZzhYUUhGVVZVejRveU5t?=
 =?utf-8?B?ME9odWVkVXFxQ04zTC85Wk10WUJyWFljaTRPbVhDRzZZMWE3c0hPV2dPbHE0?=
 =?utf-8?B?Q0pzOE8zNXJVR0kycCtyUUtERC9TaGNtNmwwOFNyQUtqV255VUlkQ1U0V1J5?=
 =?utf-8?B?NDNaaU14MlhqcFhrT09aN0hYTk80VjdZd1ppa0xwWnRLamxXQ3FCV1pSb3Fq?=
 =?utf-8?B?U2JNTGpPZVRhZmk3Z3ZtbDE3TlVpZWxsR0JaQ3ZtODlZckpsdTRVZ2pkOTBl?=
 =?utf-8?B?MjBIb256NmxjTkh1U1JTY1NwU3ZmSFlwaFhIZlJveE8vb0pkcWJ6czQ2VnlB?=
 =?utf-8?B?Sy9hSldlNU1lb09qeDRDQT09?=
Content-ID: <A3A5E947F74B6749B0D34523EB39ACA0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b9a48cf-cf97-4b77-12eb-08d935907fc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2021 15:14:58.3523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P1Ptoj8sSgeFxxt+n/25Um5KoaJI5BwEGXrzk93Aq5vwehsSFdqHLzkrpnENS/DjijYpNp0mWxcaSNk+FWwE//C4O3CWxCDTMy0JxJ/DNMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2541
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/12] ice: setting and
 releasing switchdev environment
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-06-21 at 21:18 -0400, Michal Swiatkowski wrote:
> On Mon, Jun 21, 2021 at 08:35:35PM -0400, Michal Swiatkowski wrote:
> > On Mon, Jun 21, 2021 at 06:21:15PM +0000, Nguyen, Anthony L wrote:
> > > On Fri, 2021-06-18 at 01:44 +0200, Michal Swiatkowski wrote:
> > > > From: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > > > 
> > > > Switchdev environment has to be set up when user create VFs
> > > > and eswitch mode is switchdev. Release is done when user
> > > > delete all VFs.
> > > > 
> > > > Data path in this implementation is based on control plane VSI.
> > > > This VSI is used to pass traffic from port representors to
> > > > coresponfing VFs and vice versa. Default TX rule has to be
> > > > added to forward packet to control plane VSI. This will
> > > > redirect
> > > > packets from VFs which don't match other rules to control plane
> > > > VSI.
> > > > 
> > > > On RX site default rule is added on uplink VSI to receive all
> > > > traffic that doesn't match other rules. When setting switchdev
> > > > environment all other rules from VFs should be removed. Packet
> > > > to
> > > > VFs will be forwarded by control plane VSI.
> > > > 
> > > > As VF without any mac rules can't send any packet because of
> > > > antispoof mechanism, VSI antispoof should be turned off on each
> > > > VFs.
> > > > 
> > > > To send packet from representor to correct VSI, destintion VSI
> > > > field in TX descriptor will have to be filled. Allow that by
> > > > setting destination override bit in control plane VSI security
> > > > config.
> > > > 
> > > > Packet from VFs will be received on control plane VSI. Driver
> > > > should decide to which netdev forward the packet. Decision is
> > > > made based on src_vsi field from descriptor. There is a target
> > > > netdev list in control plane VSI struct which choose netdev
> > > > based on src_vsi number.
> > > > 
> > > > Co-developed-by: Michal Swiatkowski <
> > > > michal.swiatkowski@linux.intel.com>
> > > > Signed-off-by: Michal Swiatkowski <
> > > > michal.swiatkowski@linux.intel.com
> > > > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > > > ---
> > > 
> > > <snip>
> > > 
> > > > +/**
> > > > + * ice_eswitch_vsi_setup - configure switchdev control VSI
> > > > + * @pf: pointer to PF structure
> > > > + * @pi: pointer to port_info structure
> > > > + */
> > > > +static struct ice_vsi *
> > > > +ice_eswitch_vsi_setup(struct ice_pf *pf, struct ice_port_info
> > > > *pi)
> > > > +{
> > > > +	return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> > > > ICE_INVAL_VFID);
> > > 
> > > This doesn't build; the switchdev VSI doesn't get introduced
> > > until the
> > > next patch. 
> > > 
> > 
> > Sorry, I missed that, will fix it in next version.
> > 
> 
> This patchset is already on your dev-queue branch, what should I do
> in
> this case? You will reveret this, or I should send fixed version
> without
> applying it on top of the dev-queue?

I forgot to drop the patches from dev-queue. Everything should be clear
now.

> 
> > > drivers/net/ethernet/intel/ice/ice_eswitch.c: In function
> > > ice_eswitch_vsi_setup:
> > > drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: error:
> > > ICE_VSI_SWITCHDEV_CTRL undeclared (first use in this function)
> > >   263 |  return ice_vsi_setup(pf, pi, ICE_VSI_SWITCHDEV_CTRL,
> > > ICE_INVAL_VFID);
> > >       |                               ^~~~~~~~~~~~~~~~~~~~~~
> > > drivers/net/ethernet/intel/ice/ice_eswitch.c:263:31: note: each
> > > undeclared identifier is reported only once for each function it
> > > appears in
> > > drivers/net/ethernet/intel/ice/ice_eswitch.c:264:1: error:
> > > control
> > > reaches end of non-void function [-Werror=return-type]
> > >   264 | }
> > > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
