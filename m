Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11CF3EF44D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 22:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 303164078A;
	Tue, 17 Aug 2021 20:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CxfURYwPW5tm; Tue, 17 Aug 2021 20:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACE90407B2;
	Tue, 17 Aug 2021 20:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF2CE1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 20:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C0EF80C42
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 20:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvD952a86OQu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 20:59:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93E0A80BE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 20:59:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="213072982"
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="213072982"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 13:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="531228981"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2021 13:59:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 13:59:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 17 Aug 2021 13:59:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 17 Aug 2021 13:59:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZqb3n63QPdnTstctdljvodR9HU0wDzYxzWsXklo6hmjAMroZQ5yMROhO4Sl+COcRSg4ZYNJjkkUzSrdoCRaipuWo1DICvmJJnzQ2M9dk33gcnsVQIH96zY19y+e9YsTRgnoJBgY7L03BK51Ru84/lGsI/pr55xZopHEmijQgE6wKM6Jjr+IJy8rxfV2Epf/8ERVg/Ww7rbHmlmr0bzma8UA6ueyxjfhP/WfXL4ZDPdA/vok7KSU6VDq4hXHAUlGfbEOcwhNINB1Dw2ihBEV+VZZRajCb2K+/c3FweHbuR3+RlaffINj+jJeQVlfjNIWwJhxvkVqGixt8NPHSsfF+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96H3BExsgYA0UuCwgOUSj7Zi8nAZ4k34jybGmCBnqLo=;
 b=C/eFYCYydkA9l9x6EfhbtP4fGaz8Rl+U5KnPGX9uBaxZHP4pusRHAqwiv35S1U/4vhtAfNUkv4pnhLODTi3g9bCh33sucSTN/JRtcnzWw7+lZtNIL6sEaBc1487uAmGRdyYV0zDp9w9soOwH3jaHuxOrWl5bf3bJtXuk3yDSKrfH5OHPv2chwJdPtPP6Lfe5ozzbx7R/yp6ECmYWhZI0RUKy9loN2ahs2RKhTa0Pzks9VHGl9I1xDGQpr6Mlb0ZQoFsCR57XGStKHv+3muIaHbWyQK2KFQSOBTqCcuHdh5VR2nlHPttZB3ZpnZp/cZSfjhuhmdhABw7qg4Ab5OLXEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96H3BExsgYA0UuCwgOUSj7Zi8nAZ4k34jybGmCBnqLo=;
 b=TY6CJYxDpltiVyubCLqaBMG5ssZSPkvJl3lvWZ/6vgeVTatAr2wEl64Kx6yXZIAAB5yEFDdIn5W91DA+amSidS0qn4p4oGAwbB8UwuPEfZWyKiH3sH2R3WJ2AmgD0svmh14PQHTLxi3ivcE0Z+ZCkzSVufHI5eCbQCXnT+eyxeo=
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by SJ0PR11MB5008.namprd11.prod.outlook.com (2603:10b6:a03:2d5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Tue, 17 Aug
 2021 20:59:01 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::98b:d3a5:6818:3194]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::98b:d3a5:6818:3194%7]) with mapi id 15.20.4415.022; Tue, 17 Aug 2021
 20:59:01 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v5 intel-next 0/9] XDP_TX improvements for ice
Thread-Index: AQHXkRfjDVbd1gn2WEuU98SZhzox96t4NDsA
Date: Tue, 17 Aug 2021 20:59:01 +0000
Message-ID: <86e7bcc04d8211fe5796bd7ecbea9458a725ad03.camel@intel.com>
References: <20210814140812.46632-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20210814140812.46632-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5059676-93c2-43b6-7f16-08d961c1d73d
x-ms-traffictypediagnostic: SJ0PR11MB5008:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB50080BFDF6DE3199DA3655EFC6FE9@SJ0PR11MB5008.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5WN5G6xWCcaNAodae5NLH3w0ihlKRrUmpIZFrLAAG/omWDKOwji0jzQd1cy4jk/c1DN/YpUji5ajWVwTmWkqN/HjXMnqkieCrs3+c157QFaj61Hacz3wCLqno+WPbACNXYX4unl3QrmRHMGqWgMgf6DRDI+QQgsOWWHV47kaXSPCH9AufdzyHu4bVeZMf+NwZpau4/OY+QEOtcVqi+YK/Ddht8b5TO99peeGRemqkKHeGios+MHDdntfyE67ucwuKMVQO69dgBSx+NlfGGeGr9V0p+FgAHkGfLxGHLGGIh73FUnTnZXLtIYi7gG8ymmB0ZdHoGrbhXrmDEYdp5ty2FCYu8I4eAggu6PS5MXZZa7eINFh8oJyg1DVCm0TL19DmytGpfyXymlWxEF0btdaCljx69DHBpeEm+Yi1DwbNX2xlOxcrY4/UjRC8/ladqx4JZxh8hHXL9h64aqWjbXiODFbY9221d1U/9L6xXObTFHvXrphMdlUC/5npgBnhDwlfAmUW8LScCfhuLJK5roWyU6hw2fU1aG3H1E+ldjeGgYR/VIO4V7I/7YmrkxQB5Idfs4NUa9q9CxpOraZOgFNVFYscR/eChCWyeJh8okWJ0LviDpQcn1mzo/Q43LB+yHCklRXlf7R6NwY0cKtVldu0RTQOoypXE5gO0ctgMg/aTUSxTvkfxrNjAzmxC2f01BTTEq0ZnVOTP0H0qvD4RFTF7jITJKiq58l9w9Hh+15hoqQQqx4x01HLYRS2yfcNhTP1tqzhZVwr+FEm37OAqOZoN4Rq5Q/3gdabEEdUjZKwcwLbiYkDbjTetunvW9VKNzM045BUWipLKjD6RIjYe/cew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(8676002)(8936002)(2616005)(316002)(66556008)(6506007)(478600001)(966005)(38070700005)(110136005)(26005)(54906003)(5660300002)(36756003)(71200400001)(6486002)(83380400001)(66446008)(86362001)(6512007)(64756008)(91956017)(38100700002)(186003)(2906002)(4326008)(122000001)(66946007)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bU9rSTdzUFZVbkw5cmtmSEl2eVBEWU15SXE0RktJMTkvQ3RzT21FTFNiSENY?=
 =?utf-8?B?eWNBK0w0ZGtseVNxRkNyT1JoaVRYaklMN05GUkFST1hBQTF0ZmxjZWVjd1ZY?=
 =?utf-8?B?K3ZBcGhhcG1XaU9KaTVMVnRPUnoybk9XVjhCNDNqRmZITGNZNng1Z2E0d0d3?=
 =?utf-8?B?Y1ROcWZlSThqVVFBQ2ZhOW94bmF5enE5V0NHOTQyRTE2QWl0TTcvdzVFRzhh?=
 =?utf-8?B?aFN0RUJtSWhJUFRZdUhJZkJEeEJIVVRnazNNVy9qTXpuUXZOeC9VclVPRUZl?=
 =?utf-8?B?Vm4wSm5FSmV2cUNYWENHMHY3WHNtdXNxNHorM1NxSDU5TzhzeFVYVGRDTU9i?=
 =?utf-8?B?MnpMQjFZaG9YVS91R3dsc1BUOVRtQnFxWHQ3SlJpNllHSTZmVVdiLzkvYjRO?=
 =?utf-8?B?SEhuQTNuU09lUkpxVTJSUUJZc1RuUXkyZ0tOekxaS0NlQUV6RjRybHJSTW43?=
 =?utf-8?B?VHFTalYzRGhzVG9OVjJhbHVKbG9rZUllWit6M0IrYnB5dy9nWGJFZUQrcXBz?=
 =?utf-8?B?eWE4V0RDRElHOWtkVGdmMDd2elhINnNMQWN1TWtnOXYvT3ZTN1dPc3ptbmhF?=
 =?utf-8?B?M1I2K2EzZHBhK09EMFluWlMzcU9LTnVoSWwzZnlhaWVVNHZScTgrY2JFV1B0?=
 =?utf-8?B?eEI4Q01uZXBjTmthT1JYdHhaTVh2WU56NlNGMzBDc2ppM2I0aXEwZ1UxbmZG?=
 =?utf-8?B?Mkx0VUlnaXcyMVhmWnU5TkhkRXpXTkVyeHljRFpDN3NYZUpGTHBYMnBGT2w2?=
 =?utf-8?B?elM2R1ZqRXFBSWJ4eVRDdk5TYU5VejJ5Qllqc1NHOHRoQ2QyMzlTQSt3ZGps?=
 =?utf-8?B?eXBwTVI3U1dIbEtIdkw5azczNGFtcjk4MElLNDFtYzZqdzV4QStJNFJSTDJK?=
 =?utf-8?B?U2laWGNsMUVJdVZNc3lMbnJUeE5zUFN4ME9zMWs4NCs1RURDdnhMU0VQSzN2?=
 =?utf-8?B?SlJJdFF1bEFOWEhrWS9zREtyQnlJZzJRZ1VrUVZIVllYeWs2eEN1YSt1QXpT?=
 =?utf-8?B?S0U3MmNtK01MUE5jTzZXbFk5S0Nxblo4WG91eDhVRmp6TUNRSnI5cU1ZTDJu?=
 =?utf-8?B?ajlDYU56SjZWMjZONkZpak1FUy84VVFSU2Y0S2dMcmtmRS9VSFNIa01UYWZO?=
 =?utf-8?B?VzhVVHliNGJwem5PQStwMmhJelNUeDRMM2pQWDNnSUxFcUtJT0VsVnVqL1kr?=
 =?utf-8?B?NDZDNlJIdHdXeGdyOUo4aS9VZWswM3dyQ25haW1GR2IvQ04wTHNIOFZ1cjhC?=
 =?utf-8?B?aXM1VkxqdHVFdCt2UytLUXFTeWE3aXkwZmZGYXBWa2kwSnl0NndwTExKYlZz?=
 =?utf-8?B?ZEZOUFRnVUlkcVlvVjBNMTdCa1FtNXVBYzZienlzM3VBNVhMZ1hmd0pDNkVK?=
 =?utf-8?B?VzZueHhlZXl4cnIvc0xQMmcrODcveGdxYXZsYUNlY1VkQWpUVitYQVhOMGJ3?=
 =?utf-8?B?blFTMk05QWtVUExreDlSaXVTYVlxdE1rNXNySHE4ZFI1b0ZFMlRyNUs4V2pD?=
 =?utf-8?B?bSt0Q3ZiaGlPZ0dtbGdjV2xtRjMwUHArRDRhbndWSHRMTjlKMEtzNTNVUEsv?=
 =?utf-8?B?QkV2S2lxTW1SN3czQnVMeDkrOE4wTnUxeVVpN1VWR0JFTG96Q285TlhPenBk?=
 =?utf-8?B?OW96SXpxRnA1Sm43bFlmbVRNMUhSTGw2c0NUMEJJV3VuTTVRYk05Rlp0MWZk?=
 =?utf-8?B?NTlIZjlBSkRLbE83Y2YrbWhNWUdqcy9FdDNENzA1NFN1M1NOdldBWXl3Z1V0?=
 =?utf-8?B?U01SNDlDNm41OVdyTXJSNXVuKzlzMHJucVpmczZ5ZVYva1VzQ2orK2Zwc2tm?=
 =?utf-8?B?TjVIMEEyTFdyYzdyTExhUT09?=
Content-ID: <2361AC1E2187A04E99D248DD2297F13A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5059676-93c2-43b6-7f16-08d961c1d73d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2021 20:59:01.5620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vWDYIX1tCVbVVx+3+PyQ2v1hQy9EKmU4SOGPhqCLFQoGW+YAnlI9iW+kF0gTcdkUhAQRy2rElgk4byuhUxdnlfL4wfR4mwynEh6tvbUuHLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5008
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v5 intel-next 0/9] XDP_TX improvements
 for ice
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
Cc: "joamaki@gmail.com" <joamaki@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "toke@redhat.com" <toke@redhat.com>, "bjorn@kernel.org" <bjorn@kernel.org>,
 "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 2021-08-14 at 16:08 +0200, Maciej Fijalkowski wrote:
> With the v5, I think it's time for a proper change log.

This isn't applying to the Intel-wired-LAN tree. If you want it to go
through there, could you base the patches on that tree?

Also, looking at NIPA, it looks like patches 2 and 3 have kdoc issues.

Thanks,
Tony

> v4->v5:
> * fix issues pointed by lkp; variables used for updating ring stats
>   could be un-inited
> * s/ice_ring/ice_rx_ring; it looks now symmetric given that we have
>   ice_tx_ring struct dedicated for Tx ring
> * go through the code and use ice_for_each_* macros; it was spotted
> by
>   Brett that there was a place around that code that this set is
>   touching that was not using the ice_for_each_txq. Turned out that
> there
>   were more such places
> * take care of coalesce related code; carry the info about type of
> ring
>   container in ice_ring_container
> * pull out getting rid of @ring_active onto separate patch, as
> suggested
>   by Brett
> 
> v3->v4:
> * fix lkp issues;
> 
> v2->v3:
> * improve XDP_TX in a proper way
> * split ice_ring
> * propagate XDP ring pointer to Rx ring
> 
> v1->v2:
> * try to improve XDP_TX processing
> 
> v4 : 
> https://lore.kernel.org/bpf/20210806095539.34423-1-maciej.fijalkowski@intel.com/
> v3 : 
> https://lore.kernel.org/bpf/20210805230046.28715-1-maciej.fijalkowski@intel.com/
> v2 : 
> https://lore.kernel.org/bpf/20210705164338.58313-1-maciej.fijalkowski@intel.com/
> v1 : 
> https://lore.kernel.org/bpf/20210601113236.42651-1-maciej.fijalkowski@intel.com/
> 
> Thanks!
> Maciej
> 
> Maciej Fijalkowski (9):
>   ice: remove ring_active from ice_ring
>   ice: move ice_container_type onto ice_ring_container
>   ice: split ice_ring onto Tx/Rx separate structs
>   ice: unify xdp_rings accesses
>   ice: do not create xdp_frame on XDP_TX
>   ice: propagate xdp_ring onto rx_ring
>   ice: optimize XDP_TX workloads
>   ice: introduce XDP_TX fallback path
>   ice: make use of ice_for_each_* macros
> 
>  drivers/net/ethernet/intel/ice/ice.h          |  41 +++-
>  drivers/net/ethernet/intel/ice/ice_arfs.c     |   2 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     |  51 ++---
>  drivers/net/ethernet/intel/ice/ice_base.h     |   8 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   9 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  93 +++++----
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  88 +++++----
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   6 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 142 +++++++++-----
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
>  drivers/net/ethernet/intel/ice/ice_trace.h    |  28 +--
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 183 +++++++++++-----
> --
>  drivers/net/ethernet/intel/ice/ice_txrx.h     | 126 +++++++-----
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  98 ++++++++--
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  70 ++++---
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |  20 +-
>  20 files changed, 607 insertions(+), 390 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
