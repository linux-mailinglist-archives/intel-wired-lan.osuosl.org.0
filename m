Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065F5620D5E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Nov 2022 11:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ED15408AF;
	Tue,  8 Nov 2022 10:35:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ED15408AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667903703;
	bh=ukJKfFNS3V96LCLFNxpfQqzPDM2jZ02vDMznXkx8FMA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1+oBRcDAZY3/wHA35ScjlS5Nf0tOJC8fGRvmQN8ZUb0QeOR5LNPbObgWW6Xv88Ogm
	 MER6fLiGN36uHUMwjreTrp0gV+yK48IWqAxQGbRQaIY6xmZV7ookztg0BJItRn5wrS
	 LdtCwBDaYG2fyQPGOaOochJFGqao5RsUSPXULR8T3VPqOHLSG1pdBHB4wxL8zO4+bS
	 IRJGbfPF9r3QERUAb2OhVC8b4z6g2H/ZaA/zHw4uew5x38yx75yi8s9//dgKJLy7fD
	 0dyAW67AAUyQU9eD/7CW4creNyRDm0vH9ipcq0XWHEaXcY3xSvoGpt/a00tQy3obNG
	 JMEWbfeXpA/jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXtW7FqF3swe; Tue,  8 Nov 2022 10:35:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74971408B7;
	Tue,  8 Nov 2022 10:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74971408B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 074F41BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D170181255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D170181255
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LanYp8v2QtUB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Nov 2022 10:34:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7740680FAE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7740680FAE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:34:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="294032790"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="294032790"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:34:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614233100"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="614233100"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 08 Nov 2022 02:34:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 02:34:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 02:34:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 8 Nov 2022 02:34:54 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 8 Nov 2022 02:34:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lv3HJngPHWa90I/gDaNbPVNvY+1umr915ONLI7X5eeA7B/X1kmH9WUBiBv9ehBnInhjjx3+CuCwTAoxGkCNxgmKmMX7tkjG6c2oJopSFV9On9CaDOwyNCUI11bFgxXCq+cehQiCAfiupFEqnY0O9qi5InjSRJUKHwtNeGva6griMGHtFNRR/H5WCS/ktSrdMpi438C42jj5EKG47VL9nen9aUOlyQEoA//574Gm3G97bbii5S5UfUaiikZKPWGcQQjAk0KJy1ITRYaVtLkPJOjegg1r/6735lc+CC4spCOJwGn0m1Ip0+PAFEfGXQ3noOKD5Un5JPLWuFug3xPTRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+eVGKDmUQXgUnLnNAbZ2qNaqsdwDFnAla3mD2jxrqI=;
 b=EzEo3WVQ5RGx6eOm9A8KTOYMHbifsFYPNC4DLIsGHd6UheZNta8H0/Ju44b/rTVc5VhqEK1Z+NRCU5oWysn0mE3pwytYFTImVlPhi/oquxkr8Cn90F0c3WBhFtMKzZ9ZLZpcP6MJtunE4NoCBLuqQUX8K45l3c4imzA41VFY+nUxJ40U/m5f8K00WMZUba7HXKpm/pvE+8eZiMe1Eo6i6217paWjDFm9dLbTQDwHr1Ev1odOT1iIgBEhbDr2Rh8yWt7aamTPg31HaVb87ZotekFl0k0U+6yZoO/11e/kPvSFB4Qx1GdWql9gV+zNsDMndB6mvPLv+DPrRBz9k2O7hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6202.namprd11.prod.outlook.com (2603:10b6:a03:45b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Tue, 8 Nov
 2022 10:34:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5791.025; Tue, 8 Nov 2022
 10:34:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v3 2/2] ice: Accumulate ring
 statistics over reset
Thread-Index: AQHY6hldOLa5FTm9p0OeRfw7XJTScq405wdw
Date: Tue, 8 Nov 2022 10:34:47 +0000
Message-ID: <BYAPR11MB3367740F4E112B49D45286BEFC3F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
 <20221027152401.30801-3-benjamin.mikailenko@intel.com>
In-Reply-To: <20221027152401.30801-3-benjamin.mikailenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6202:EE_
x-ms-office365-filtering-correlation-id: 78ee04b8-f059-4593-ea7e-08dac174dbe3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vNICuDq6w/UsClKQJNa7fZDpm79oixgqx9g6qdSJVF1VEQVq5Vbmagv9kkcZ7zTKkjv9qJt9b1kGHv3RNqR62c88AD5Nj7k6Gt5ptztotRlT4UepJfVM99xMcHDPu1us4QmhPXdH7GVGj60jSSmGhvkooXZN5nEcY9USzxIVmkZbqHVpYVdDHB9isgW6dcnlnCswUYx8jJ+hF1lFzGsxDAIcJDCWbAxjqXOth0/g9UoWcDA7B1bndYuk0y2TbvLz4rjG2g9Uaf9RdlAPEu/qB5QQm8sQqZhiOZzNlmDvDNGC99Vjp+DjL/iAjdOpK9cS5EHPsS1NiD0nkDfm/0lvF7Yurds97plZr9nupRS3HAYErX/hchRtlz9O55oc4uXBVnKWpY45w1YZugr4lyZhYmz/Eh7OOXZzUq6ZE3ivHLv1RCjgzCdkq5U56qgafqd49B/OVe0lQfPtaW7dtEG3q27WoZ8QW6UqBFBPKBcUEi7zl9OedRafV46kwslm6BSfyhm42QdGluQ5nTCCtExHx+gqHBJawbrlHyjmsicM/9s9Yqoi8AspPejX3QPYmlppkSOvFgRqAvqcR8v9cuG+TYVVg/Py6NxoXPNDLcR+Ae96v+taSNGCTRIwJtXdRG4NPTAQeyydPFik5dLGD1iLTfEchAmkXwOHr5FB8nlYM3y08JkkH7lldO2CdxRJDaydzYzZDjsm9y4LGp23yAiu5YIiUd3oRFQOEWO+8II+vYoJd5b0Y1z/XhxglEDy7FqT+AHz5OL1qTd4NaHBXJJNzQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199015)(38100700002)(38070700005)(6506007)(76116006)(107886003)(186003)(7696005)(66476007)(5660300002)(53546011)(66946007)(122000001)(86362001)(33656002)(2906002)(4326008)(82960400001)(41300700001)(83380400001)(9686003)(316002)(26005)(66446008)(64756008)(66556008)(71200400001)(110136005)(52536014)(8676002)(55016003)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A+XT+4iWzew+7sAYqjS1r9slJmA4kOPpJyHBhOdwt5K2vz9cLFXJUK08mZAt?=
 =?us-ascii?Q?EKmoruZYc+1zjh2i503WLxjtseDeB0of9N+Lm8p9i3703h8ZPdvlVlUectcW?=
 =?us-ascii?Q?XIaLXnrpyI7+PQv7Q1AoEN2TDXig6S52GJ87jsqTfxyr+J0w4vyI06jN5cdF?=
 =?us-ascii?Q?FDZ28RQs2p6klVsyt/uDcyj1wU2jQX1VsEYRedeFTAPcu/AP8E8zwoTuYXIk?=
 =?us-ascii?Q?kSMgsv3EaGYPXSn7UdAjUsGnaX4iU/kIMWjhjOiFzwvIBGORPWvDHfzEtLa/?=
 =?us-ascii?Q?5mbLVgLWXl/1a2ZnSxac3Z1RH4uIHf6qIROpgQA5/ajqk6DS/nA0ZdvSfL3P?=
 =?us-ascii?Q?Pq+q9cIVyinm7mIAfwvug25DWjF/qAGhBA8jEaUre2i4QFcrY5DRgRTtSKqy?=
 =?us-ascii?Q?MH68VgGK2sQxgE/qYL1LCBJAWV+zu0wyE6Ovkekzp5KrLbk8hUHwYphQoVsQ?=
 =?us-ascii?Q?SZRaoUG73JmHkLZaDbIT1yyRgxuURHJdDqSeo6n0REU93iKvC55Lb2J5dq2G?=
 =?us-ascii?Q?MTVf1eR98m6ByBMSHnSOcgjoi04LdzKIgi34y6UqmJahCaJTz2s7IZ85BRo7?=
 =?us-ascii?Q?KDmsQVHkkIPzHjrRZWNnr+v35KR1mARyPycbqKoJUpefCmpvt8424p8SBZdb?=
 =?us-ascii?Q?HVLt+gODAdqfF9ZM3to4octbEv1hiAa6OHaqon338Z/p/6bd+hPiQHvI6RwM?=
 =?us-ascii?Q?Dr6vE+QfaLCqGtbHB8XNb7WnnirhWyf0ybD25Br3PneuaE78mRIYo0LmIG8O?=
 =?us-ascii?Q?LVj6TBxaPHRpnXJhRUbtVGdY1Nl/qD9P6vUkNBIIr3gKRYvHDwax2HyolMRh?=
 =?us-ascii?Q?8TROJnhkP3ZjbyYIq9rLVmdN3WUEQIN2sflDraGv18bis7SIBdLhdiXeJA0a?=
 =?us-ascii?Q?vFdgkQEwp/4cor9ljXTCEMtWp2K22TkCmi7ye+l0LiNQyFbuadsJqRSog1nc?=
 =?us-ascii?Q?GOLQ0eNSCt3CbXz3eqSDG1oK3yOTFKLBCHsmxxpaALvoqhGvAuB2jylmSmAg?=
 =?us-ascii?Q?Icami4cnTi8n1vtgJPMKN4zPkFZNcmwWNp/QfksRHlXnhxHSQncHfFnacFip?=
 =?us-ascii?Q?sp/3xjIzocx/aFPlVvHMY9Z9ThmIgUq+uodae3ZxRhRxFMQnoIutcDlVzxYd?=
 =?us-ascii?Q?+7Dj7H7ewvvKmj70y2Ku5FB8smomMFDst0OR+58SHxkFrPvlaVkDvbXjhs27?=
 =?us-ascii?Q?UUW3F/RCvap3m0Dxi74WyU6W9yCYTD1aX3kFrxPwU1LpMhVN3Vh88SXc2Glq?=
 =?us-ascii?Q?jrLstpwZ6tb6ZCmThgScW4r+53KYKnGLqWpheV3Sye+YT+K59im7bu+yZH/+?=
 =?us-ascii?Q?ycnoXsgLMZ+bvl8gcPeVKhpP9+4NEivPsZQFvqFegFq9kiQLUmQuA4AqO0n3?=
 =?us-ascii?Q?Bdadl6so3oqgZHy+q4PBY7kKgq8I3FVj+fUFG/ol0JapWFnMiVrbYVcBk7iQ?=
 =?us-ascii?Q?hXrbJAv5yALq/m/MFKdX8T+iEhhRVftn54wBYTAChf0DmbsB+/r//bTgNDnP?=
 =?us-ascii?Q?X9+pCCJugfux0yFPfK6Ybefm/vuCFLq+MCf1VR0LIpO2h9l28fPr9zEc8rrE?=
 =?us-ascii?Q?zwbyfTVtQQw2kJYatZuvaYnAOM74J7DjPj1m1OHk?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ee04b8-f059-4593-ea7e-08dac174dbe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2022 10:34:47.5548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +dO2jNlr6gJn4t4TQDKZTCJtsKclPBGLiClFRGBERWWU5bnGbZmc6G07I14LNKZH/Oev5znOYl36AzdokN1uXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667903696; x=1699439696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SAyPdPyROOaI+Wzq6GxN1F8I02NtjLohGl61b6wlM14=;
 b=PkmsROLquXblBTgP4SOjR2qWpJLT0RzBfE1cZiFZexVxMZQAdkk9RvBr
 bmHhX7EUSHtyfnuoHN/S9DCguPcjW1Ydv3ZrBz4EnJaDsjm17L4K9pKAu
 h/1IuavvQcdlnDovsMpevIzY7EB/nRX3VCVzLEWiUibYslYp3sVUrB7Z1
 7vO+5NTGcgPQ6uZttH2arpb2aha6p6LbRy379UC46pyMGj8lzhIkKiGQZ
 HkszxhY+ov/9MKQmlfLQZs/FhzI+HaR4l+BIAldBLbTZoX0recSkvikj5
 9Ow3vZUQOf6TyfywI5Zs+ZINI3/2cM9WbeVZQmy+i1XswS7NfHEpojyb1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PkmsROLq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v3 2/2] ice: Accumulate ring statistics over reset
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: Thursday, October 27, 2022 8:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [net-next, v3 2/2] ice: Accumulate ring statistics
> over reset
> 
> Resets may occur with or without user interaction. For example, a TX hang or
> reconfiguration of parameters will result in a reset. During reset, the VSI is
> freed, freeing any statistics structures inside as well. This would create an
> issue for the user where a reset happens in the background, statistics set to
> zero, and the user checks ring statistics expecting them to be populated.
> 
> To ensure this doesn't happen, accumulate ring statistics over reset.
> 
> Define a new ring statistics structure, ice_ring_stats. The new structure lives
> in the VSI's parent, preserving ring statistics when VSI is freed.
> 
> 1. Define a new structure vsi_ring_stats in the PF scope 2. Allocate/free stats
> only during probe, unload, or change in ring size 3. Replace previous ring
> statistics functionality with new structure
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 256 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  68 ++++-
>  drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
>  9 files changed, 377 insertions(+), 60 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
