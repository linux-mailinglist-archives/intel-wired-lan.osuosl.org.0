Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3302421AD67
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 05:18:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2D578795A;
	Fri, 10 Jul 2020 03:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Zdf6HLqK70R; Fri, 10 Jul 2020 03:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B96AF87477;
	Fri, 10 Jul 2020 03:18:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10E551BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 09045897F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id by+bZcztrVQI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 03:18:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 56C1B897C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:18:03 +0000 (UTC)
IronPort-SDR: NZxBJ7H9xHZlkTcB1Tn9bWf0PYqXIXYA1ITwkyu3/NjJC9iJccrr6wfdBYjH3hJaAEKncCbxK3
 FLA7rI1jaM7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="233010021"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="233010021"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 20:18:02 -0700
IronPort-SDR: QgGMwLuTAbqLTxKXeOXl9tN3sZJsJobNA7v8LIaQyqYZWeaDcYYJULCknw8MM9e8hiEQu3c3px
 MffQ80iDa7yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="324439347"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 09 Jul 2020 20:18:02 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jul 2020 20:17:53 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jul 2020 20:17:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 9 Jul 2020 20:17:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m4do4FLz8oiUSNn5cErtu60wgTbEV+E8YszNfh/ioi5yAbQlMjdUSoE5u6OaQD3nm+l91n/zg3xgXvV3uJaKjG4VOrdKH6SGXVCO977lY/eVYRkkWOo0vYti3KusJze/lU1w54XeqUbWfKN/ddXbM9akoJ0ymmjbfQ/9msNNBoUdzAocmelDTw7oOHU+JbPQc3DJrLO+Yt/VFVgf0VHGxYHlL0elJAC5jHtUgeuLx0h4SYm8XMXpOpoWjag5rLFlL3KODuWlpcM4SdLHZP2ikwTJ7rtaeR6tolmbE2RaUhdTTDdWyk1Ejw+qVB2x3q8boe+20FETcgXVUlZw2G4Rxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RQ8H+3YsRoK1EGyBhYsZD3AuqL7rAf7amzIw+IcLFk=;
 b=Oq41WcS8EhJT8SuNXwsAo10ajHEqKJQvCkx194KcC8yiG2tg06tzWy8VFQUA7QLD9Niu4+MrdJVPtdmlYKif5RqSEdXBLd4y4BY2C9/UwqZofywk/IhbugsbfDJZf2upR+HfUt5vJFkom5wsymrtuzwvigvSFkSi/QzThVJXKtVCAsAtl0Rtjgt65Togj2h84QI4pRzKaDuYUPqTrxN1wEZa3MEKipCWr3zJx1pyD8xf2lmOA0j/YKIKuC7Ds2/QFoXbhWCtuVZ01GaqKJJGUPlmUW1g5J73yJYJ78YarTyGnhWEymG+1kPvfZlps3Bh5kyqk6/W0mDMzTb+gI9JBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7RQ8H+3YsRoK1EGyBhYsZD3AuqL7rAf7amzIw+IcLFk=;
 b=bkdVCc3u1eLIbfbHIzrRaJse0XFC0FlA7TJqUWHj0iYX0/CW5alLzOpqMnutg3pe8kXbMMGr5nuW/2X8cmnr0GevpFO74ZivPYI3CN6eX2AI6794yvca9MGJJ9GjRaIGpPIH+gB12xiYuEnJCWSL89brmLsKtGhVsqk/6HO27ug=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM6PR11MB2921.namprd11.prod.outlook.com (2603:10b6:5:70::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 03:17:41 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 03:17:41 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 3/5] ice: support to get the VSI
 mapping
Thread-Index: AQHWVl55TWHQEcQVnk+0sr5EIYA5wakAJHMg
Date: Fri, 10 Jul 2020 03:17:41 +0000
Message-ID: <DM6PR11MB39003E65C8ACDFDA3222B8CEF8650@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-4-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-4-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95d7f3ad-bbe1-4dc1-bb65-08d8247fce49
x-ms-traffictypediagnostic: DM6PR11MB2921:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB292138E1A993AD4D33426CCAF8650@DM6PR11MB2921.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8sDD++pIOtSEWKBT/z2KNl952zYZ0AVsxGKGpsDDZ4+tIJdQqLLTUCDIiKGOJfWfDDAVN2y3ptGJ9t5Ce+2yrADb8QOfeE0P0QHm9k04dS4C0Ci94PsKLDGZ9bQHIHPvm9rvt+8ejoNeXZiHd5vz3YyN2zk9MN3nBTku562HW45egzaCz19i1Zjw+CyMgg+IWZ2N4XwAnV2PZb21X7NnijJtpNC9avz3Ds31K8u2rDLstMbWv0W9jrpM1FXQawM9NaAC4Rvudz+beLEF64Sbr7ePO3+NxucWhfO++OKZkPoUihN1sN+6p6TJbc8DemIzcXmDYbsEDnmo4cBB0WP4RddbhoKO1pl2J+5RjKCyHsaRWq/7ul+mkFxoKFnMuTC1rvK7axLs3nvfI53irvkHGPTUSpqnNPOgnWlJPnEvOgUkRWjLdl/24oTU54+qLsSh/G6+VX9X1X5+nTGvjSY/cQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(33656002)(66556008)(4744005)(71200400001)(86362001)(4326008)(83380400001)(7696005)(6506007)(53546011)(966005)(107886003)(55016002)(2906002)(478600001)(316002)(110136005)(9686003)(5660300002)(66476007)(26005)(52536014)(186003)(66446008)(64756008)(8676002)(66946007)(76116006)(8936002)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iHdouw7QCZTCzDsJfw6fNfb10cgh71Ej9s8WqjMoFjJ1+V/cwyN907vu6ok1as3RWKGELTwrA/+C2mvauYW82OxY8e/zUrbgiw5bf01NZkiq8P++LQeFxlgEAVgv4GmzjG87g+CiFqxKVxhqRK2HQkaiFU2O49w4Ly5Ea7cX2KIrL6LO9/yYMxu3iuNxmZiett07L+xYY2OMqLtGnIGPLx+QZVsQbGmqmtHY0CVUI1Y1/eDNfSN9xmo0z4RepovgoRdXrJXqa9Nnn8pKSUsxuo8eRQSCeWVoayJ9N3Eslsrdujfa5kXYMbxaLzA/REzOTAkxyRzPynIW9y75xMz1RG/tQO6F2IkM4NnnLtkvPzDq7pWnSIbDJtX+k1iFFGXU6ffnG3y6E1XKaUuEluR8lA00ipCsaxmDtQlaQ1NDWnl9vn2hGg93AcXZqU1ZH4H/d4n9IaHmz9oymhm8sbgCvNO5Pl2e5BVDLLFSXqkDnTGCkAoD/XhuCo49SDwTxoFv
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3900.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95d7f3ad-bbe1-4dc1-bb65-08d8247fce49
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 03:17:41.2790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stdeZmEOgMuYrDobXUajpruV8TrcG3F/AMMxsatW5c4DY7OWyrc/puAr6wR2va8meHM30UeEC6eMaSpLFrkidw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 3/5] ice: support to get the VSI mapping
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
Cc: "Xing, Beilei" <beilei.xing@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Friday, July 10, 2020 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 3/5] ice: support to get the VSI mapping
> 
> The DCF needs the mapping information of the VF ID to logical hardware VSI ID,
> so that it can create the switch flow rules for other VFs.
> 
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 61 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 21 +++++++
>  2 files changed, 82 insertions(+)
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
