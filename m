Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633523DE0F3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 22:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B510400ED;
	Mon,  2 Aug 2021 20:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r19xXkMAV-Cn; Mon,  2 Aug 2021 20:46:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BD7E401FE;
	Mon,  2 Aug 2021 20:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 664F91BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 60398401C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sUN0aA_R8al3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 20:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5489D401B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 20:46:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="210424873"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="210424873"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 13:46:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="440832474"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2021 13:46:03 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 2 Aug 2021 13:46:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 2 Aug 2021 13:46:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 2 Aug 2021 13:46:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 2 Aug 2021 13:46:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsmrOFOiIXbZFEr4+0ut0ykPhIcsUWQjMVMp4fawOFOWiRGPS4A3N0VOTXcZM2tAJa6vASS3rwW/H42lXcIheUmdINXv2giO9UE8HSG8O6i/utDUKPy5puvyK84cLOwsBL8vElKoMTyWYxD56ejEX1XsDb4nn+KbTObEy9M/q9muh6JsMHj4YqELLUDl7G8i4Tcxep1Zqd4JqRD+gy5weMvEacRs/UdM6IVDOw/DHo/3kOVV+j/ryfq78HhKpYeYOW+hztjQiAsluGpzUpMNiwu2ANjSp982xRM5ZTk/38fZ/aCZanQz30WPeZS7WViqGN5CfXUP2xz7+X2ItigyvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sxb6G1FuaRxJ9ncyLvGzhekHKpfh1AIvttwzeqKE+5U=;
 b=a2PhljtVhvosKil5u1dbi8JlVNqiHjOmZsUAnk3nKe9qcrELhvoz8f4/xIx+bOVrFqv98zvm3PjEYcqN0/hC07SvQJ8WI2Kg/1oWOlcxAWIg8hFIqTzlWJBjfSqfzMTcHlm8CJ89KGUvoV05LZVGczcYFzVL26ckK+y4KV8TCBtzuJpSMFb/nJSf2NS/kgr2Hkf6799tcYif7I7ykdtttHxPUpkE69SvgQD8Zsdr/G/Eduw6o94OXouh/+GEbZph4EEM8zRsmr6IPQfrLYEsAA6+99lByAR7LJngWPuNekHUAd1Vx8MxoSfdD+E8Vlwop91Wmw4gCOxp/snWaKZdTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sxb6G1FuaRxJ9ncyLvGzhekHKpfh1AIvttwzeqKE+5U=;
 b=eNPX3Hyb369YxkkuhVMMlhdZa+1eGT9YNCArzVCrD/oxVn9tKtauKQx2VluItOMzTHdREFbPdV9CBkU2IJjDnop5ZfnNfwC9U/kmGgtFW+31a/uTO7er65fzc96B68SUc9Rr2aum/wmMKwbIvxG5bkA5ooJFOtVQIqAG5/xBBT4=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1360.namprd11.prod.outlook.com (2603:10b6:300:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Mon, 2 Aug
 2021 20:46:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 20:46:00 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Thread-Topic: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
Thread-Index: AQHXh68Y1owt0G/CUEakzTAdq+RvtqtgbT+AgAAzuICAAAqYAIAAAkng
Date: Mon, 2 Aug 2021 20:46:00 +0000
Message-ID: <CO1PR11MB50892367410160A8364DBF69D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
In-Reply-To: <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: dd99532c-88f2-4dcb-427d-08d955f689b0
x-ms-traffictypediagnostic: MWHPR11MB1360:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1360505143A6B38363486C7DD6EF9@MWHPR11MB1360.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L/8kJRVHq+aJp3aHeeCzfeTBAzl9GhjRQkx44+yrtXyR0arCNTc0WsQGWn8UfX2oN7m0QnNCYigMTXHiXclzjx+A0NbBBXN1WuSHguMYNUmfqEXfpmouhrfjKCjzrORzaC1jTwh5BJlj/9vcTnBc9FSOiJUq37/pkKrbW3fS71nAsDszqliudj2y7ntIGffYS1Fsxpikr0SWNiEJXvD2cNwVW8sd87Z0j0HUZrsAnjTYUAiwovUQG2mwckBJJbTah+TgkC/B2eplZpSA1Zkj3c/jRN34Dn5LKrNUjN4EUNh4lM3VvwWoRyNdQipRP+E76NbImln/0rljImLnM7nG3RHHAEctbzW6On3aQXXBOUZkAxun0O9KEA58DWwPyAVLnjQ8lM65Q34gZWI/Xq1JJkjQ3VuPH7flmrMYr8gDcr5+xy7fXKLwvNynDgw+AJWkqVOlKDW+HSIc7fQWSVAIVn/0tyPIgQ035mZXrdFyR5Nxn3BSmunIAZ3ud0rlinpJuIyP8lZX2WCWwfuKCS3qlOrgPNsHVb3l3AlO4n6zTrf8DuMTx4hXMxuumRD9kqIwLOUT4Dwzh8/zmup9hMnxxAPaigkJXPH9aqL/UNiAfVy2bqL720HhTzDQybYLkzCNCTNy70sM/buKAtGTA6oenCT9IIKPsEHfmF9EO5PvwahIdUGvqsOGI401EgO+GU36QShANJ/pe7+pXdBF1lzEIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(53546011)(7696005)(186003)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(6506007)(71200400001)(26005)(4326008)(52536014)(86362001)(33656002)(83380400001)(38070700005)(8936002)(8676002)(5660300002)(38100700002)(7416002)(6916009)(9686003)(54906003)(55016002)(316002)(478600001)(2906002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2twNUNJU3BlRUZtQ3Y5bm5hK29UWGtMT3U1aE03elBQUHdJSFpIMlIwV0dv?=
 =?utf-8?B?VzUvb3FrbWQ4TGVTZUp2RVhvOGY3c2M1WEtGODFrUDg3SGFEN2Q3d0k2WTF0?=
 =?utf-8?B?QUtNUXJSRDJ2dFcyc1lnUmVQMkc1TzNCYzYyWmNTejcwbXkyUUJXWW42R1ZB?=
 =?utf-8?B?NDNiVmJ6V2VUdFdnRmgydGJMQWVxeXp1M2JxRzZkZ3FlVWxud1YrbENjMzBs?=
 =?utf-8?B?clFIRExqWkUyMmFPM00xR1VqeTlLckNJY2VHU2Y2UUVTYWhjQ3A4Q2NHQU9j?=
 =?utf-8?B?aE00bTZ1K3J1WmtJVGxheklDVTNROW9pVHdZNlBScFc4SUZObnNUWjY2TzlZ?=
 =?utf-8?B?T3RMdkh3Z0QxSDMrQWdTOXRZYmZUeWFxM3pZbmptUmp1dnNhU3g2ajRIbHBw?=
 =?utf-8?B?eHR2WTBLUXk1N2hnS0V1eGQvNzdMTnk0Y1NESWswVDFydmMwcWYwYWRxQis2?=
 =?utf-8?B?OUdJdm10bnZrV0tEenlpRElVTTBLcDRvQ2NQK1B1SENxVXN2enNmSmtWZStK?=
 =?utf-8?B?R01NanEzcEI3Q3JkMDlQU1liZGlDUnkvZXR0WndmeFF3UXpwWnFHVTNyMWdx?=
 =?utf-8?B?bXkzQzBmM3BqMEtmYmhiNzRCRlU5ZHBJb290WmJSTEJGTHBtd2FvaDFRNkVB?=
 =?utf-8?B?RTJiWmFOTE56dEk0bWZ4NlZwb1FDNWZLc1VFRkc1SnN2MTg3TE9ld21nWlhz?=
 =?utf-8?B?L3o4eThVaUtRaUVWcGdwYXBUdHVnR0dULzk3ZWl5dFZKSmJiVDlxelB5RDBF?=
 =?utf-8?B?NmRFRW1ka2NDOThURmwveDIxQU0zZE5FMUkwRm9aSHJJcHl0a25Hci9CSWtl?=
 =?utf-8?B?eFNQV0dGVnRrbXFPSDFHVzJNRGFDSjJCV0ROdEtNQjZPaVYxUXJ4enQ0dGVH?=
 =?utf-8?B?WG5ScElkaDdWTGNaZFpGaWZzVG1sVCt4RXdpSExpZEpKUjVZTVR3OTBsRzBo?=
 =?utf-8?B?RHNpVEJKdGJETktBYTlTMUwrREQxSnBzVENjd2I1MURqRy9DWmtMZGJCb09a?=
 =?utf-8?B?cXI2dURrQXJIQ1ZSa3pxL3BVd1FoMHBzZGNNdE0yYUZIcXNMYWRtOWdGcFdz?=
 =?utf-8?B?dDM5Y2NqSXVnNnFUdzU0MDRBUGhrZmRPdjRBVHJ2MU5VVkdoSHIvVUFnb01U?=
 =?utf-8?B?ekpCd2V5Mm5abG5vU0NjbHBnUUk1NmJsdVpseVRvUS81dFhUdE5ZYzA3M2V2?=
 =?utf-8?B?S1k2ZXdpbDNzVG9wYVp3UkVNczNmNEZnN3pFL0ZZRFdQL0FJTTNTM2tBODFR?=
 =?utf-8?B?aUJlUzZLaVZEaDBaWkMxdUZkOTJpMFJJQVA4L3psSzhtT2p2R3ZSS1hIbnps?=
 =?utf-8?B?ei9tNEFPUXFVaFBjS21mUldNaUZGZ1BQdEtGK2ZEOFMyTTgxZDc0SStDUE5C?=
 =?utf-8?B?Mm8xTmpTMlNsZnRXNTBRUWlFZE5FeG5raVJUUXlieWpyeTUrekZ1dDV0bTdH?=
 =?utf-8?B?dDF1UTBKR1VjWmdSRjUrTDZvVEVDMFRkNVF1WjZNWGZrWDRLaTdLbnpZQVZ3?=
 =?utf-8?B?TnpCb2tveU9YQTRCU3YwY0U1dXNiek5VVjV5cjdBbytpZEd3TFBXenB4cHBO?=
 =?utf-8?B?MGhtcW1wemlYdmhDNzJNYlN3R25zNTlvS1ZsNmp0YjlXbTZrZUZKTDFLWHg3?=
 =?utf-8?B?OXVhaVN1NGtOTUNTY1haKzQzc0Y5dkZXV3JpQXJRaWZPOW9vSXNTUlJhaDZm?=
 =?utf-8?B?TmJOZ25adC80Tlo1L0JLczI2c3dMbGovWDdPeG51VFRzWVhsS3FPa2srWHVh?=
 =?utf-8?Q?5KoxbNoYkWl+wqwpPo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd99532c-88f2-4dcb-427d-08d955f689b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 20:46:00.7771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BJN1dWlWzLdb65EBRkWgkX60xQqKocFLZzhQwMqGn4yfw44/nnKf2Ekr1T+uwolNVmYx02wGhZ+DHQnz34so/23bQeJEqTG1tJbXMqFuQ/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1360
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
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
> Sent: Monday, August 02, 2021 1:32 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Richard Cochran <richardcochran@gmail.com>; Nicolas Pitre
> <nicolas.pitre@linaro.org>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Arnd Bergmann
> <arnd@arndb.de>; Kurt Kanzenbach <kurt@linutronix.de>; Saleem, Shiraz
> <shiraz.saleem@intel.com>; Ertman, David M <david.m.ertman@intel.com>;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
> dependencies
> 
> On Mon, Aug 2, 2021 at 9:54 PM Keller, Jacob E <jacob.e.keller@intel.com>
> wrote:
> >
> > So go back to "select"?
> >
> > It looks like Arnd proposed in the thread a solution that did a sort of
> > "please enable this" but still let you disable it.
> >
> > An alternative (unfortunately per-driver...) solution was to setup the
> > drivers so that they gracefully fall back to disabling PTP if the PTP
> > core support is not reachable.. but that obviously requires that drivers
> > do the right thing, and at least Intel drivers have not tested this
> > properly.
> >
> > I'm definitely in favor of removing "implies" entirely. The semantics
> > are unclear, and the fact that it doesn't handle the case of "i'm
> > builtin, so my implies can't be modules"...
> >
> > I don't really like the syntax of the double "depends on A || !A".. I'd
> > prefer if we had some keyword for this, since it would be more obvious
> > and not run against the standard logic (A || !A is a tautology!)
> 
> I think the main reason we don't have a keyword for it is that nobody
> so far has come up with an English word that expresses what it is
> supposed to mean.
> 

Right. I don't have a great example that's a single word either.

> You can do something like it for a particular symbol though, such as
> 
> config MAY_USE_PTP_1588_CLOCK
>        def_tristate PTP_1588_CLOCK || !PTP_1588_CLOCK
> 
>  config E1000E
>         tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
>         depends on PCI && (!SPARC32 || BROKEN)
> +       depends on MAY_USE_PTP_1588_CLOCK
>         select CRC32
> -       imply PTP_1588_CLOCK

What about "integrates"?

Or.. what if we just changed "implies" to also include the dependencies automatically? i.e. "implies PTP_1588_CLOCK" also means the depends trick which ensures that you can't have it as module if this is built-in.

I.e. we still get the nice "this will turn on automatically in the menu if you enable this" and we enforce that you can't have it as a module since it would be a dependency if it's on"?

> 
> 
>           Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
