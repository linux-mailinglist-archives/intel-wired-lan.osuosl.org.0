Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE49D3DF938
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Aug 2021 03:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E5194064F;
	Wed,  4 Aug 2021 01:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZ8MbZ3mHje2; Wed,  4 Aug 2021 01:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F003140580;
	Wed,  4 Aug 2021 01:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD551BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 23:25:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A1414057E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 23:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dth2277nif5r for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 23:25:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A92C2404D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 23:25:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213792464"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="213792464"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 16:25:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="511539947"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Aug 2021 16:25:45 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 16:25:44 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 16:25:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 3 Aug 2021 16:25:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 16:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCBckqfbDIx42SZ4UbCQM8Xh2J9I3qqJmO5LU3RPZeaC/SAG79ZBxqw7+3nGRDDMnWqqHMhftU2vQQ6S9Uhnna1JpZprI6mxH63ISxEOkcMHubJezXBSSvtzj4OD/ghGcga9/DmC0sX6kAUJcJeQUW7SJFsZZSQCOG/wcxtEUIhQj49/df0PQylqhfnFXE0DPsT3x52OfHZD0/ztFYKVwFG7HbcSqJr4QWvCtwH6OehJFOSdtJuXVMeeJlp7my7KNua0OPgaW8k7W4zBfcDxgx9bT5s2+2ETZFpvuA89ibXEMD9ueJX7UPOsjSiRFTThuiqhLp4cJtoCA63i+nXpgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/N4WGp0EenZtIATxPsX9WF5Yi5r7YWRej09zR3AXF+s=;
 b=T+sP3MXrcn+YqZQy3sTfCycK+PsNvUTI4D6lORSrCu5l3S5L4r1vEPHQKf6Vf9tETSR6pUM49uSE5NYbz0mglrBUR+ElPSS784oyp8XtIFU3IYQPEEbQYgY5+G47rCFhQI1tuXX8a5vqco5nAWdSee1OgNi8c/V15RdVnm8hLSGEO44SDia2kVCpGQgQ1ii5y8IRmeG5bSzBc79uvhwRdgtvnRU52lLhq3ab9VQzQgi+cVKkrhmypd9ddksKroYeqlJJsImHaE79iUu++T0sbswfQzLBO0Y784l51ZUJsu0kDsNYPV48L7KFAauJ+/jw+NIjVk3UvXFOMZRiKsgiRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/N4WGp0EenZtIATxPsX9WF5Yi5r7YWRej09zR3AXF+s=;
 b=fpEgA4ibBWRM+hsqNs7X5VGhaB2QriGEv2JeE9Ohq+YJo5WtIrPW69o++QHTlr0ox8CZNcX67CjczGpKHCi0G/S+U4R9FYQeG+ov6PmfrE34pLLPkDcujqBy3S/VkcZMT+K7P3WEaIIzS23P8mJ43CEDjbh/yLyNyFKJyl0ygbw=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1886.namprd11.prod.outlook.com (2603:10b6:300:110::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Tue, 3 Aug
 2021 23:25:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 23:25:43 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Thread-Topic: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
Thread-Index: AQHXh68Y1owt0G/CUEakzTAdq+RvtqtgbT+AgAAzuICAADaFgIAAgzoAgACWAgCAAAU1AIAADOyAgAAEIGCAABQFAIAAUvdg
Date: Tue, 3 Aug 2021 23:25:42 +0000
Message-ID: <CO1PR11MB5089B32E93853E4723B02819D6F09@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <20210802230921.GA13623@hoboy.vegasvil.org>
 <CAK8P3a2XjgbEkYs6R7Q3RCZMV7v90gu_v82RVfFVs-VtUzw+_w@mail.gmail.com>
 <20210803155556.GD32663@hoboy.vegasvil.org>
 <20210803161434.GE32663@hoboy.vegasvil.org>
 <CAK8P3a2Wt9gnO4Ts_4Jw1+qpBj8HQc50jU2szjmR8MmZL9wrgQ@mail.gmail.com>
 <CO1PR11MB50892EAF3C871F6934B85852D6F09@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com>
In-Reply-To: <CAK8P3a06enZOf=XyZ+zcAwBczv41UuCTz+=0FMf2gBz1_cOnZQ@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: df7c117f-50bf-4991-ed47-08d956d60374
x-ms-traffictypediagnostic: MWHPR11MB1886:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB18866077A9DEB5CE00244E9ED6F09@MWHPR11MB1886.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mlEJROriHuNekVnPNOAEr6APpoG48UB3PtqlxbtCHU5P55d0jm9/jkm15hNlq12L1xKaAIFtyLir9kvNppTP+N0IO5M8oxbZuCJ5krBHjRF5bVPfzeVH02xNdIWYPHX8nlQK+m0o8tcKvoshXOj0J+tCgaW5kTaQ77LX4+YA+vYUilkznqTsl9uAkR34xya2K+2/jb9TIe3s9BHySQjSPVorQJqpRhsTh641UYSHlDvtcHWlUqal3Fuc3aiGla4zq+/K9yMbTx0GRqjzpPJTHGDTw7TIQQcU7EjPF7Sfsj/WKp+MqCKmv8ZLW+SqWnagGRjSJrNqJxxhTwgYKe27qwvMmnD9TXbNOpiU/6fa9PnjTVAl8BHFOG0e+obkBUQ0zBG1ye7g/AakN1dcYXiyWksM9uFQwmhHl7tVOTcrll80gLeXVvM+fXJoWI/oy9Q+yQDS7Tn4bgwNHR7OPehiVIympYguhxwy8y3BCWSiREUh6Sg7x8gaAyBIHjFdWaYl2XXOVYSZY4eDlSAE8BUYi2SY1JTGqXPBvf3g5ryGcJFx/o4CnBMpls5iMSMLT2urdMf1zQHGKgC/+fHx8pO5Z3xJtunW9zZiDzCnl7x6eRvW0cz4nHoLb9GYxhsbqCCgOURDhJ/0WExYAiga9zDCT/Gz1TCXe4RHfMGXSENcsa2LtCZoLOv52O4bulWOBdA2VKRLnCEnEPgqelGLkyOlKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39860400002)(376002)(396003)(366004)(2906002)(66476007)(76116006)(66556008)(33656002)(478600001)(66446008)(66946007)(64756008)(5660300002)(71200400001)(6916009)(52536014)(8676002)(7696005)(54906003)(8936002)(9686003)(7416002)(83380400001)(86362001)(55016002)(26005)(122000001)(186003)(53546011)(316002)(4326008)(6506007)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzF2ak1TZXM1eHBTQTRiQWNrYXVqaGZpUC9CQ1Jsb3gyTDc3SEpFSVNlbCtk?=
 =?utf-8?B?bHoyUkZ3NVhSVm9NeloxZTVCQlRiV2VySENhaDhzdDllTVl4UVdNSDNIbDBS?=
 =?utf-8?B?WFRxU2VScFpoWFVjcU5WNEpua3BQL01tUVpYUWtQRjZENGc0SitrbVBBOFpw?=
 =?utf-8?B?U2N0c0U5OFNsWHRFR1RHaVR3YW5iLytmV21QQmt2dW14RjNtcXVaYm5kME9x?=
 =?utf-8?B?cnhzZUN1eHczTVlob1R1R2ZWc2NMMTdFQm9HUEhJVEZ5aGVLajNmZXBoZm15?=
 =?utf-8?B?M1hDUTFqaHNYUnhPeHM0Z3pSSVd0dkcrR1ZWMnl3aWJwYi9BM0F1bXdhTnZy?=
 =?utf-8?B?a2J0N0lGWDU0RWpWUUUxS3B5YmI4TElNUnhxTFpvelhOcXhMdTRaY2g2dVhU?=
 =?utf-8?B?VEdGTkpsWnlRTkxLcW5LRFRQa0NBNmVWb28wY0pWTm94NFNvSit1dWxaaGh4?=
 =?utf-8?B?RGNtVjUyWGw5dGQ5SUtRTW5BMWs4YTRBYnhveWZqTTZ3Z1NDUk9MckFoeU1v?=
 =?utf-8?B?ZzhnTksxK1BSS3A1Kzk2dXQ0UE0xWnUyWlk1UC9Kak5Gdk9ydUkreFhVbk5H?=
 =?utf-8?B?U1ovbWE1dEFxYnlzRndjQXNoMHJtcFNCU0F0eFB6cHd5NjlLMGMvTHgrUENj?=
 =?utf-8?B?VWxmajhaZWtVSmdUaW1Hb2RLaDA0OWZobC9Hbnk2Z09nMUo5dDdKNDBTQ3VY?=
 =?utf-8?B?UVVzWFpkVWhrb3FSZkZEUlRhS2lyRmpaNmVibFRTa2ZxREQ2OGpBeFZmLytQ?=
 =?utf-8?B?ejdkb2VpNHN2VWYrOFFPVERvbVNDbDJ2OHpDQk5sa0Q0Z0RVVlFyVWt6K2Fp?=
 =?utf-8?B?WHpBNGVXbk1ZSVFDTk5xU3BmTkx5UkVySFJnNWUxajFBKzdkaElibFZjTDNx?=
 =?utf-8?B?bEFhckEwVVdQcXRrV2ZwUXFRUU9HMEtEODF0MDhEQm9mOGNBWW5NRVVacDZj?=
 =?utf-8?B?eUdjYnNBV1BKRUJhKzIrZnJLVDVCbWZCMkozZ2w1dnVSa0xLR3Z2Qk1JVUZh?=
 =?utf-8?B?TE5TSE5xN21ZdDZ1TFRkMGNHN3l6Z2ZDa0dXREMyZGc4Z0FVdkhLekRrZy80?=
 =?utf-8?B?U0NuNmp4MVJXcWVTUm1qbW9UQURKUm45WE40TjdFUTVwck9sUWJQK3RQUWRa?=
 =?utf-8?B?c05LajlVTDFxTnhFdWhLYkhkN1lBV3lVTEVBcGwvbWVBQXJveFExRUtrL25E?=
 =?utf-8?B?bkJxQnZJTTJPVUJON1dHdHB6SzRzQ3luWnFOU2ttOStvck5GUWx2UktHNkNS?=
 =?utf-8?B?Y3JFWW11bTBaSi9rdnlWeWIvU2ZRUXFSUVBuSWI4UWpvT2FVS1Q1RS9mNnh3?=
 =?utf-8?B?dW5uLzluTVkyRXE3eDFmazd1UDMweUdqTnBsMkwyUU9FNU82NHN0S043Q0M2?=
 =?utf-8?B?blY5RWdUY04rejJudDZyWEpjN0xCcXB1V0IrdjlTaXhwRU1jTXVad0lMQUpN?=
 =?utf-8?B?dnRnRVdkSVRrVlMrS2hRWlVydHVTVUsvVC95dkZka1F6eTNoZkZuWWZhK2Q5?=
 =?utf-8?B?SmsrckxlMWRZSVRWT1FDSjhGN2FybG5FUW1tbDBTdUE4SW1ST2tvR1poQ0pr?=
 =?utf-8?B?eHBCRE5kZSt2NVR0a1RXRmxqU0tDbjJJa0xJdDU3bTdTTGZZY1h6UWx3NlZB?=
 =?utf-8?B?SCtoUDNmOTBNN3ByUUV4YWxpL1UzM1dEaEhBSStiSWZBaktHRkxDdGpKNlNo?=
 =?utf-8?B?Z0s4bFhBdlhVQTBPVCtuU25TTTJ4a2MxOHEzV1RtRlQvaFp6Y3BOY3pqQm9P?=
 =?utf-8?Q?52A9GMf7PxTBGsB09M=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df7c117f-50bf-4991-ed47-08d956d60374
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 23:25:42.9943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jyu8g9mM3qkFv3iuwgiuojkmnQYsBonUYwNcDJNYhAHOJmCE1S/iO+QS9vLKejvbTLevBnM+LOiY/sOw7M4ZZ8rTXTERItmphteOjRREN8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1886
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Tuesday, August 03, 2021 11:27 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Richard Cochran <richardcochran@gmail.com>; Nicolas Pitre
> <nico@fluxnic.net>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Arnd Bergmann
> <arnd@arndb.de>; Kurt Kanzenbach <kurt@linutronix.de>; Saleem, Shiraz
> <shiraz.saleem@intel.com>; Ertman, David M <david.m.ertman@intel.com>;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
> dependencies
> 
> On Tue, Aug 3, 2021 at 7:19 PM Keller, Jacob E <jacob.e.keller@intel.com> wrote:
> > > On Tue, Aug 3, 2021 at 6:14 PM Richard Cochran
> <richardcochran@gmail.com> wrote:
> 
> > There is an alternative solution to fixing the imply keyword:
> >
> > Make the drivers use it properly by *actually* conditionally enabling the feature
> only when IS_REACHABLE, i.e. fix ice so that it uses IS_REACHABLE instead of
> IS_ENABLED, and so that its stub implementation in ice_ptp.h actually just silently
> does nothing but returns 0 to tell the rest of the driver things are fine.
> 
> I would consider IS_REACHABLE() part of the problem, not the solution, it makes
> things magically build, but then surprises users at runtime when they do not get
> the intended behavior.
> 
>       Arnd

Fair enough. I am also fine with just "depends". We can make most of the drivers simply always enable it, and if a specific driver is used in some embedded setup that has requirements on minimizing things that driver can be setup to use a 2nd config symbol, and all of the other drivers that aren't used can be disabled (as that minimizer is probably already doing!)

I think we've found the best route to go then!

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
