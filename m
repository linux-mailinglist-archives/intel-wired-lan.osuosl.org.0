Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 237A43A07B0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 01:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F9E4828A5;
	Tue,  8 Jun 2021 23:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6S2NTSP9H-J; Tue,  8 Jun 2021 23:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F9E482792;
	Tue,  8 Jun 2021 23:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02BF81BF414
 for <intel-wired-lan@osuosl.org>; Tue,  8 Jun 2021 23:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F28196063E
 for <intel-wired-lan@osuosl.org>; Tue,  8 Jun 2021 23:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBhQUIicpIlZ for <intel-wired-lan@osuosl.org>;
 Tue,  8 Jun 2021 23:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03960600BA
 for <intel-wired-lan@osuosl.org>; Tue,  8 Jun 2021 23:19:16 +0000 (UTC)
IronPort-SDR: C/B1ihii3OPQ0IbH/AzOJ5ppQtd9dtesRb68AmtHNp/tbh4DC1dZA6MxKfCVCK8gc+0X27gGQp
 LgILYfVyVOJQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="184654158"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="184654158"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 16:19:15 -0700
IronPort-SDR: Pv6ajRimeK4SM9FZHHYv+foRE4bjwcRcIh2Le4fe9eohi8x7NkBzhYghuT3b9mZYBGWE6gXtq9
 cVLoa2w0dBfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="449725154"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jun 2021 16:19:15 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 16:19:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 8 Jun 2021 16:19:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 8 Jun 2021 16:19:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hkB7hOI0Q5GffaysXDdHHAyyWh8v1Pdvt9dXImUFXxUggNIVW62iWl3X2sj0yIYYZbrzJXt4E58YAyweUnOwZmRzpvaFys/Ddrrse0z8hjwBaqF6nUaEeXrfGhLBgzknGcPQkMps8NLORQ8ycvm59ZQg36n3DN2d2QcuHMKeYe4aIbbJJb/Fwi21DhdEf4EAJ+QslUBu4LoVJw8iKiTI89fPcJ7HdLcffXA0aG2QWT1gTjjyfF5AyUXHAkPWvfcf5ERHrhKo0HowzkJcE5104mhxzM1AEA1bWMkblqlk2RvjgvFUAyc/ijzYVkLzYoL4EFYiOL5lcPtOyHbS7Vw3VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjEblaSqnytazrxm5RDBSs04NL9BoIbSYrj74/DopQ4=;
 b=LJ6pbMKSbAjWTu/XQmhP8hrA/RM7p5U2RDisZjzQ4YB7seLfaTtIkY0exVtzBtDE/cHQoDia9EvFnebxjx7nyJBAF29x4Jlb2qXc9K5msdy8e0qpxClfj6EVO3JlWyeaP1vwtEfD6qKbt1mTLn4Y0zEUtGPs5dbB1CL+ax1kONPxcyMsC4T8JaiVuyAKYPGKR3An0K4o6DWPcRukph1ZMz9hRDB/zMTwnWOmYhi6s3CeRxd+Dipk8eMBgXOZxd8LOtNilV8koWKUtNJTHV8KmO9g8KP/BlHAPCtN0Sj9lPhKlFW26Q/TiwfpdXAaIqKDlAQomJ8rOpvvsEm+C8qyUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjEblaSqnytazrxm5RDBSs04NL9BoIbSYrj74/DopQ4=;
 b=XlozdM1KqyzZs1he/2mdDkPUfsZBJqlsr9bqoAT8oqrVKJw+EbCULjNgH4yDZDRRqqyL5XzUH1R4IcgJn0LPXXcrYjSu+gNjz3AB7wbxniV6xRi4EkaZT9jfd7W88iGL+D+WOZHzPxw7u38I0RDaWrhI5diPbr76JSWW77P5Eq8=
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by BYAPR11MB3669.namprd11.prod.outlook.com (2603:10b6:a03:f7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.25; Tue, 8 Jun
 2021 23:19:13 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::816a:83b8:7e41:5cb]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::816a:83b8:7e41:5cb%6]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 23:19:13 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "mantykuma@gmail.com" <mantykuma@gmail.com>
Thread-Topic: [Intel-wired-lan] igb: Random NIC down for 3-4 seconds and then
 UP
Thread-Index: AQHXW6Ry3ajiNQ24U0yKbj/qAhF9KqsKwtcA
Date: Tue, 8 Jun 2021 23:19:13 +0000
Message-ID: <6b36112fc1548f06a737bc7a1febaac06f799b6a.camel@intel.com>
References: <CAB6A5-B6kH6hiOJHZ-8JY0H8PqXeab07vUGMdBvfCgGPR8QzBw@mail.gmail.com>
In-Reply-To: <CAB6A5-B6kH6hiOJHZ-8JY0H8PqXeab07vUGMdBvfCgGPR8QzBw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe8a3bb6-5059-44cd-af34-08d92ad3d442
x-ms-traffictypediagnostic: BYAPR11MB3669:
x-microsoft-antispam-prvs: <BYAPR11MB36693B8F094C172090DC03E2C6379@BYAPR11MB3669.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3EY8R44TjfeBQZeBujI0Sa3VhyrE/+fCzpUp4ZSbAGJ9mf99oUd00FkyyQlMxdVrhME069kIRWLas//GEgC2ru6zzq91AXJ2NLViUyXGxDSx5YqtBRjoIyLGJpxIrG6Mk4jFddSmQa9PdIjenc3nrC3TUwx1wWJgytm+HgKXx539/qDJWUIzupUIkcMtX1Dmb/jVGZ06okmSG5bU/M2H1uIh9cujWiX//BIB90KZduXwqnbi/VPwtuE8R6fXtEh/vW8UIWyEOeHo+/kK4zvXlToHWD+J+H3dJjYPcQXnTzNezuUZ/QbZu4+vwut/Kq/3zF+pWX2c5oeTX+ZTnF85J/td+e5hLWTWQU77oWiQQYVayouK+ZD0CqyY1fFLNcc8uwBfociyNdWOrtSzGnWy7N4nmTdztlfD3jBqNcv6rv4tsmTOP9HkjDgD2ILN5OVCTfX1or4VAaNYjcdC7JcdvzZBMfs7OMLWYlPnZd6cL+Cwn7ZPl6XBqcS2GNRX5q1tzMvgEnKoqhoFpFR22MU3rc0QPEp0pH/vqLy7wzM/uw0RZQFj2U+NOlNjxOwPdeNpUBevmF5HDMWR8pVVNyixXN8D1AXdLN/qULnIj08jTbr6QDfeb+Q4v+iNg2aW4PzL/8oYoYoJr4KuN5AUL0VJK1zpGP2TYOWFHxtkYcjxjN+vTQUcVBelUBksdGw0zPPO7pwlNO3WavA2UALPcs6uizEbrIa7buL+Yf3RvGpxK24=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(376002)(396003)(346002)(136003)(478600001)(966005)(6506007)(83380400001)(122000001)(71200400001)(86362001)(5660300002)(8936002)(6486002)(76116006)(8676002)(316002)(26005)(36756003)(66556008)(64756008)(66476007)(66446008)(66946007)(38100700002)(110136005)(6512007)(2906002)(186003)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTA2cEtnS2R0RkxHOW9ZRUc3WnFmUWx4QnBhV3NtOUhrL1RRZmxMY2twbHNa?=
 =?utf-8?B?eFR0YkRHQWZ0eVlCUU9hczV4TGlsZTM0ekJ2Z05TYmhGNGk2UElFM2pDNzhL?=
 =?utf-8?B?L0ZKMzBOM0Rvd2VTTWZ4emo1bW1kcTNFVHJscnhJUkFiSldadWZCTXBnNjgv?=
 =?utf-8?B?QTFyOXdRaUFxZmJjbHQvNnMxU3JQMklRbXFiU0s0ck44N1B0dzRXSHZXbVo2?=
 =?utf-8?B?a21xMVg4TTd4YVlEY2xRdDVaMGR6aEhrOEtPT0l2WXdyK3NsMTJBQ09LbWJI?=
 =?utf-8?B?aWdrRE9KMURiK2VNU0pCd3h0SmRFV3NjQXNTS1BNWmlrZWQzQ1F4UDByUVJx?=
 =?utf-8?B?Vkw5QzcvNWNCRG85VnN3NllIYkZSZXlyOHpucHI1MHUydXhtdmJUSm5RQ2Qv?=
 =?utf-8?B?K2s3QW9sb1NTbllObjdUeVozWTJreCtFZC9mMEdvKy82clRhb09zZmN2Q291?=
 =?utf-8?B?Y2srMUxmbFBBNFVDbDNwMWsySSs2R0M5cFNPMEJKUXBZTGloa1hKQjFEdnNt?=
 =?utf-8?B?WHVGVVpTcHYxeVZjSDhqd0FWMGFrWmdzQ3dpQXJvaW5nOWpWaUhoTTFjV1lo?=
 =?utf-8?B?MHpqRlMxekQ0c1RIZCtuVUhkbnBpOTVTc3htcHpOak9VRldyelo2TkpGakhW?=
 =?utf-8?B?cDdwbkVXbkFLZzFITG1kR2h0RWM1WlJqR29DL2dzNWdxZ3owUmE2VFN3a045?=
 =?utf-8?B?cGRPdWZMUjRETWFjamxHSmFldk1OMGNzeGUzdjRUY1owcTJoN2NCaFpvdHcy?=
 =?utf-8?B?eE1kNWY0UWtzR0p5YjhIQy9iYlMvRkM3eGZQWkdLMFRCR3h2UFY3cWtXclhj?=
 =?utf-8?B?MldJaVBsWnZ5ZGdRbGdHQS9XM2RuTllaQUtUc0Rmelc1OWxTNUFFTEFiVlZl?=
 =?utf-8?B?d3p5cWZTYUNTazNseGxNb2p6RkxhQTh0QkRnMHNaM0dCOWsvUzlWYk5pUjNO?=
 =?utf-8?B?WWd0RlAxdTBVd25TVzZuTnFKRWg5eVY0S21kWFQvUEY5ajc4SG1KbjZQMlZC?=
 =?utf-8?B?RysxNUxHUW9yZkcrZFJaTHFBR2t5Umkvck12M0thMUZHY1FpMTM0MFZHcTFs?=
 =?utf-8?B?a3dUMmZKQ1pTbnFCTGlzeHd3OXRzNGZhWUZtQ09pa3Y4RUtydEJXSGlxajMz?=
 =?utf-8?B?MVIwOXR5Yk1RNVdvb0xiWXBocHRzVjd1TGYySzRjVk9odFVIUUVTU2k3dWlv?=
 =?utf-8?B?OUJqbkJ4RTN0R2NydURuTWxJZG9nakRkV1hKOUxrOFZmMHNKVEovNTZoaGRY?=
 =?utf-8?B?MzRyd09uZHpmdERlRDl3QUdJdSttNC9ESFErWTlUSnBReHRnSWdjR2FpMElt?=
 =?utf-8?B?bUZkd2RnbnhhT08rcElnQ1NiWGNLNEhlWksxaEIwUFMzdzBiZ0EyYjNzK3Bv?=
 =?utf-8?B?T3MzNHpJeEd0N0R2NTQzNGtQVGY0aWFwTkhVd1JoWWIzNVQ1WEtEdmFZVXhH?=
 =?utf-8?B?ZThJbWpYc3RCaW5ORmdkY3YrdzBjd2loRHErTWt2dUpheUkrQWxsRjVwTlE0?=
 =?utf-8?B?T2tuS1ErTVFpdTBnUGQ4OUVXcUl1MCs3TWkwZWtPQW85ak56NEhSaWRvcS84?=
 =?utf-8?B?UUYzaWlac2xPQkVSMzRkQkhoL2dpaDlHWG1UdUxOei81L1FYUnBQZ0xyVnda?=
 =?utf-8?B?bFZJN2FXZW9ndXBqbmFSdGl5V2pLakNsUmhjR3R5Ui96Q2lvd1A1d2N2OGFC?=
 =?utf-8?B?OVJXWWFRQXBXUXMvUHFLQ1RPY0F2alZRK25xZTJ5OUZVc1dUdVNrUG9FczJP?=
 =?utf-8?B?UnJvczROUmp3b3A0TVF5NHBCMlJLeWVzbU5Lb3pVNXQvTmZZVlIyVVJFWUQw?=
 =?utf-8?B?aWJRTmpQQ0pUV0RrNnF1Zz09?=
x-ms-exchange-transport-forked: True
Content-ID: <9720B37FF05B8D46883CB23B0F3C9BAD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe8a3bb6-5059-44cd-af34-08d92ad3d442
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 23:19:13.6022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2GrxTGtYUCVxw5r9S88OFc67Jyn2yfOqZryyRBhVCN4qgjpvj2Od1/Ao0GuDZxCDB/DpIJTrJuSxjXX+mFcucvgTpSmT5peu9+vMmv3jjAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3669
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] igb: Random NIC down for 3-4 seconds and then
 UP
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

On Fri, 2021-06-04 at 14:42 +0900, manty kuma wrote:
> We see random NIC down like shown below. It lasts for a few seconds
> and then the connection is back up.
> 
> From kernel Log:
> ```
> [ 3306.560431] igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Down
> [ 3309.532558] igb 0000:03:00.0 enp3s0: igb: enp3s0 NIC Link is Up
> 1000 Mbps Full Duplex, Flow Control: RX\/TX
> 
> [ 3337.380117] igb 0000:02:00.0 enp2s0: igb: enp2s0 NIC Link is Down
> [ 3341.672189] igb 0000:02:00.0 enp2s0: igb: enp2s0 NIC Link is Up
> 100 Mbps Half Duplex, Flow Control: None
> ```
> Steps to reproduce: Unknown. Happens randomly
> Frequency: once in a couple of weeks so far.
> 
> Kernel: 5.10
> Firmware version: 3.25, 0x800005cf
> driver: igb
> 
> Is it a known issue?
> What can we do to better understand the reason for this behavior and
> fix it?

Hi Manty,

I'm not aware of this as a known issue, but I've filed an internal bug
so that it can be looked into further. Could you provide the lspci info
for the device? Also, if you have any info that might be helpful such
as occuring under traffic or when idle, etc.

Thanks,
Tony

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
