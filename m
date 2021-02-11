Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391B318395
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 03:31:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68E9886ACC;
	Thu, 11 Feb 2021 02:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RAhIP9KJ7XXP; Thu, 11 Feb 2021 02:30:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AA958689B;
	Thu, 11 Feb 2021 02:30:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBEE31BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 02:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA52D874C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 02:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLl1X9A+7DsQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Feb 2021 02:30:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 407E3874C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 02:30:55 +0000 (UTC)
IronPort-SDR: 0AjUtZ4vzMQvUC8z8Laa5krZ0N9+ejwBG1SyVxqNEWOvaIC6fs93GnHC236NL84FO7lNn4Hlgm
 pj2cL6beHYYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="179626496"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="179626496"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 18:30:54 -0800
IronPort-SDR: CEgGsJCRwIcAeuiMbJv2RcZdqJwLLJ5D/9rFicRFWgTz4xkS9ddWgXs/w1yCdEi5ZYIfKYHFpN
 ZbsCCHUp63UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="362357161"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 10 Feb 2021 18:30:54 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 18:30:53 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 18:30:53 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 18:30:53 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.51) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 18:30:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScSurg4doQzApJnFqpMLh0uWphqgCMJ/YIibIPD5sMf3oPxLtV0afC2IkC7Bvugx4H2iNQJKFolUh3lmEQlmAkvrW/d1YkOak4QaJsJS7FGeu00qKInJS9RtdB2ASlobn+mRoULjvReGpqiey1vbmOue+OoYuFGvVZEIn0AhW9URcO01RHZ0yxIEJuboyFK2pOiqLKBqMRCtNk4PvdGqzP905xa3L5xSspnWXbvz9iNpp0/JqVCvqOfeEX9CGte6YJxArHjVVgPEb5plhNZsgnniwkHPw2USLAnIeV+KwhPfwIH3+j+R72cyUH+y+M70psGceKlLIB/Xf4MgKUIdDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UMdRFftaUxrHGWGgNCZX0fY4He1nN4HuOwM+0cjFvMg=;
 b=YDnpqzQ2tUiN3EIHTPIhcPvf3thoNzisU7Ucy3sJxCGmaPixAJTi4a4si9r5N+EYxHbIzeTSk4xemle6qPhe/mCt11HQpg2ShOnhAcP+I3fIMEjY1pIh4YubApSPi6BbPaUZP1erRS6TsB+ngRKVHD/0ft21oZBJp0S5t6ndsppIg7AggMBWS2CAzKx9ZuOwd58JzgwYiPFmEoZkRbrKyEviJ9lUNGritPKDAi0Piv+vq79wZwg8TtKuRGjEB+rUIMlahTZkPqqwqHjhUIrMgqH/gMCX6SWZ9nT5XSWtYMxbj2SEnYBvKEeV2u9oa8PTMPDmJgcqoTF3hkORLP6dzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UMdRFftaUxrHGWGgNCZX0fY4He1nN4HuOwM+0cjFvMg=;
 b=Mc4VGonLq9pFPB5zt5cbXFTnoPuVFUJViwogB312zjoZBHPBqTCwIboiK2v/A3PEJe3k05EmtjLylxYs1oeZ226qVGVydvRl0HNr2WmL3dGTLKzwjPSaB0fq6iGsp6hhghnhiBRLiIX3ntPsjK3XnPWnC8iGcpKIl3f+wKGhC4Y=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Thu, 11 Feb
 2021 02:30:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3846.027; Thu, 11 Feb 2021
 02:30:37 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jdtxs00@gmail.com" <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9LewUlcrP4wEaA2Op8Pq1zuKpSO+MA
Date: Thu, 11 Feb 2021 02:30:37 +0000
Message-ID: <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
In-Reply-To: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfd67849-0ca8-4460-9b2f-08d8ce35048f
x-ms-traffictypediagnostic: SN6PR11MB3133:
x-microsoft-antispam-prvs: <SN6PR11MB3133EAF3A8C7931D05081EA3C68C9@SN6PR11MB3133.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o4EEP6SjO453W6M8oQ0bjRegrFAJLDVOl61kiqbM+nqOdE73uPzXC/BTJYhav5uta5UjB8CdactNsECbubtihg4Ej9MPHTVzfaW3rpPxVAXxv4Dd8swAvSAR8WiwwT37A+se27IRhjvCnAlipHJ6YPeDQim/OWy4s92QKEJJ3prxPF0O6yiLyuRHjkv+1XCVLiHTf3Ru//qJDA11Mf16Z24dOyO1yTV343eeyVnxkohpJ7sOIs4RO3JRaZ9GZOxtv7vU3WeRVdTmRxbn5aJWmEgavgHz7OXwtnRHVDhECxtEexzb8ACi29JfBsqt/xpRflCk2AgooXkpaJToHF57EnIrRkxVslExFQ4SHNSt/XM1mJNMhq4F/xvu57s7Os/NzcjNB5ieHrGxqgJVkIt1vm+ZKbKjFFVoJLrIlKpOfaoUaGDUMTEGTcfq847B/zQTnYB8TSqipGo/x1Ox5qZrMX9prlB7NrFe+An8SokE2bZEPKq9m+B6X4CdOc1paVJlr+GAMjCXPoEL6UZtw/2tZAYYdp6eM6e2plXBiZtR1/nV5KRTZgM+/lWvER7Qj/t0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(136003)(39860400002)(346002)(8676002)(5660300002)(86362001)(2906002)(66946007)(2616005)(478600001)(64756008)(66556008)(316002)(71200400001)(6506007)(186003)(26005)(91956017)(66446008)(83380400001)(6486002)(110136005)(36756003)(6512007)(66476007)(8936002)(76116006)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?T1FaWDFPMFp0a1VEV0U4OWFGV2FkRmZnZjgybFlBRVM3cm04MTJpTlpEeWw2?=
 =?utf-8?B?d2t6Qm9YQmtWeldRTlBpdGM2VW0rVkVJNTdEQitZdXZMOHNSZ0F4V3I1Yzls?=
 =?utf-8?B?MjN6dVdVQUI4YmZMalFRUW5WbDlSVHQ1Q2lza1U2K3d4OUR1RjBNUXlXZWw3?=
 =?utf-8?B?alBnZTBtYkxBUjhhM25GMFdQRXczNk9KdzZRZXZEWHpXUVpaZW9ZL2JxR2tm?=
 =?utf-8?B?OTdja3U5dDc0d3pwUWNPdmpEWFNJSWE2WVVOQ1hpNXNHS28wMU1lc2c1NGdU?=
 =?utf-8?B?MW0wNXRkcmM0L1RiSTVodk0yMnYzQ0tEZTJUdnRFdXVVcEpWWlM5elBGNkIr?=
 =?utf-8?B?Ulc5UVZVd2FZTU5vaHVZWmNvQlZqNnNsa0cxMW95aThPNS9yZmx4MzhITkZ4?=
 =?utf-8?B?TGJCWmYrRUdKWTlJVUwwcFpRakRySTVGdDAyVnM3SHRyQ05JaStXdmtKcDl2?=
 =?utf-8?B?Y1JzV3U5cVdvYTVPdVZlaGNWUHFHYzE2YWhlbUtaMVJPaU4vVDJYU09mTXJN?=
 =?utf-8?B?TUhtQWwxUmpwdHEwdnBHd1JFb2kxUm9mcWRXcHZ1YWpsSnBnOFlHZmhHVUFp?=
 =?utf-8?B?VERMYlA2dmxCVmVLVm54dkxtWDZ4NG44R2Y1SGlYbjdhc3B2cHNwTzFUU3Jl?=
 =?utf-8?B?UlZqSk9QdmhuUTFMMFB0K3V3anU4K3pua043aklMTEtaMUtkU0FCRU9wYnBl?=
 =?utf-8?B?TlprbWN6cmdLMEJBUVU4Z0ZTb0hNMkNVd01GRVp5WU1xVG91VFY0MVdNY3Qv?=
 =?utf-8?B?SkUxY0dYU1l0M0dxNy9Ra1FLYjl0YW9VOGZPcU1qdVlVUnBBSzlYVDRtOWxj?=
 =?utf-8?B?UVptdUYzYm1LR3lIVkNvTjU4QmRmcDNycXNtZ2VCUGd4cTlQUFRDV3ZQOHdp?=
 =?utf-8?B?VHZRekdxbG8zY1liTGl2ZTdUWHF1T2VLWFB0Y0VhMkYzaUU4OGgyd0R6dzlZ?=
 =?utf-8?B?NHA2VmdLWXIvVkxVTm5BTEtTYlprN09mQUs2eHk5NmlHdGhmcGc3WHRjYnBJ?=
 =?utf-8?B?WVBrMjRhd0JnNGowK3NxQ0s2S09qWTBDcEV3RUtOUVExRyt1WEg4emptSXp4?=
 =?utf-8?B?VTV4RWEwb0hPTisxQzZuQ3BZVTFaOExaS1JxTThuQ0ZKdWNUTFJHQ3lzbWNN?=
 =?utf-8?B?aEhJZWJ6UnZaaUJHaWxLOWRyQXZ3OWxGcUE1UVpzZlFIdVJmUVJCbER5V1VU?=
 =?utf-8?B?SFM1TGVIYXlNT1FWNTdUa1NocGdGREdNa1JmSEYzSmViL3hjSHplZkRJcWl0?=
 =?utf-8?B?ZHpZb0ZqWUJEZUIyUVh3Z3RWNTNOaUFpV3U4Q1UwU01DS0FodHlXb3dJU2lB?=
 =?utf-8?B?Q1A0QTY2MWM0T3lSSFlkL2ZoeklzZmg5TEgzNHdOeGV6RmxUNkxWOWM2T21O?=
 =?utf-8?B?Z0F5N0FZeFdSV2ovdHduMUE5ODNMK2FYYlFURjQ2QzFKWWFMWWJTOTl6dTBa?=
 =?utf-8?B?NmNpZjN4OC9mTDQ1cWVjcHdnL1U5QTM0T2NsTzFVT1pxbDlJWm1NOEoxOWNM?=
 =?utf-8?B?NTBFczJxbVN2b2U2dE1hQWhObVovQjZuTTg1dzdYNEY1NjZtb1RyTEpXaFR2?=
 =?utf-8?B?WTA2aWE3N2NuSXpoejVKZWF1L2ZiN3NJK2NNVDRqdFpoOW9zaVI0WHg5M3No?=
 =?utf-8?B?OURoeGF4M3lrUGZQVEVCTmZIbGlEbkN4aEwxUmNZOEQrQkovd01ROWtQQUFr?=
 =?utf-8?B?cmRQdXFrT1pYQldGT0VtaVBvdTRTTlhtb1ZjTGo2eHdXUVErWTlJMFNMZjhT?=
 =?utf-8?B?cEhwWGxwNkFaQTJhTzl3akMzaWNNdmI5SWhtbW1CWGpqSEp1ZXZpSUtCUWFv?=
 =?utf-8?B?U21iZUM0b21FNlQ0RFJXUT09?=
x-ms-exchange-transport-forked: True
Content-ID: <63CB29B1C53F74419761C185B3DC4A26@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd67849-0ca8-4460-9b2f-08d8ce35048f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2021 02:30:37.6814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iZvZXe7+oPQNWt8AkgJLmEn9L+PsgOCidxUT9tJO4ZIoEvBqWKkk1BDgiRsPC8gRPLVTAgiSoCAvsjPucxJ8EB9bcb1TEkOoS1mhhKrBErw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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

On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> Hello,
> 
> I've encountered a NIC driver bug that leads to null packets being
> transmitted and arbitrary/OOB memory reads by the iavf driver.
> 
> I'm unfortunately not sure how the issue starts, but it has been
> happening across many different AMD servers and virtual machines.
> 
> Running a tcpdump (tcpdump -i bond0 -nne ether host
> 00:00:00:00:00:00)
> on bond0 results in these packets being produced at a high rate:
> 
> 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, length
> 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, ctrl
> 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], length
> 144
>         0x0000:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0010:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0020:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0030:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0040:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0050:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0060:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0070:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0080:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
> 
> 
> As you can see, they have a dest/src ether of 00:00:00:00:00:00 and
> are completely null.  This doesn't happen on every virtual machine,
> some return absolutely nothing.
> 
> If I filter the tcpdump command to ignore empty packets (all dots),
> some other interesting items begin to appear:
> 
>         0x0500:  0000 0000 0000 0029 0100 071b 0473
> 656c  .......).....sel
>         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f
> 626a  inuxsystem_u:obj
>         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> 0000  ect_r:bin_t:s0..
> [...]
>         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> 6572  ../usr/lib64/per
>         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> 2f46  l5/vendor_perl/F
>         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e
> 706d  ile/Spec/Unix.pm
> 
> To me, that looks like it's reading data from memory and attempting
> to
> send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> 
> If I run that same tcpdump on a different servers exhibiting the null
> packets, completely different items show up which also appear to be
> from memory.
> 
> Keeping a tcpdump results in the same items from memory being
> repeated
> infinitely with no observable variation.
> 
> So, it seems like the iavf driver is encountering some bug with
> memory
> management and ends up transmitting null packets or arbitrary data
> from memory over bond0.
> 
> How/why did I notice this behavior? The VM's seem to perform worse
> over the network when this occurs. They usually exhibit small amounts
> of packet loss, or poor SSH responsiveness. Oddly, I have seen this
> bug in the past, and it resulted in dmesg on the parent printing
> Spoofed packet warnings for the i40e driver. Now it does not, yet the
> null packets still occur.
> 
> I would like to help in any way I can to resolve this in the
> iavf/i40e
> driver. I'm happy to provide information from the servers if it's
> needed.
> 
> For reference, here is the setup on every single AMD server:
> VM:
> CentOS 7.9
> NIC driver: iavf 4.0.1
> Kernel 4.19.163
> 
> KVM parent:
> CentOS 7.9
> NIC driver: i40e 2.12.6
> Kernel: 4.19.163
> 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> Vendor: Supermicro Network Adapter AOC-S25G-i2S
> Firmware version: 7.20 0x800082b3 1.2585.0
> MOBO: Supermicro H11DSU-iN
> CPU: AMD EPYC 7352
> 
> And here is the dmesg log (grepped for iavf) from a server that has
> the issue:
> iavf: loading out-of-tree module taints kernel.
> iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver -
> version 4.0.1
> iavf 0000:00:06.0: Multiqueue Enabled: Queue pair count = 4
> iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39
> iavf 0000:00:06.0: GRO is enabled
> iavf 0000:00:05.0: Multiqueue Enabled: Queue pair count = 4
> iavf 0000:00:05.0: MAC address: 52:54:00:a6:3e:62
> iavf 0000:00:05.0: GRO is enabled
> iavf 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex
> iavf 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> 

Hi JD,

I will check and see we're aware of this issue or have any information
about it. If not, I'll see if we can work on a reproduction.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
