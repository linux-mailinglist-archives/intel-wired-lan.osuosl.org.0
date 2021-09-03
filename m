Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49174007DB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Sep 2021 00:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FD9C400BF;
	Fri,  3 Sep 2021 22:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ByBhlZi6sTVS; Fri,  3 Sep 2021 22:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD118400F4;
	Fri,  3 Sep 2021 22:20:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80DB21BF366
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 22:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EE21400F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 22:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZ1k4yytCPuA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 22:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E1DB400BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 22:20:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="280543470"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="280543470"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:20:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="690029171"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 03 Sep 2021 15:20:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 15:20:38 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 15:20:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 15:20:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 15:20:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lnDvzZQ9O6EjITcImnwu6iK0AttIXxIn3pI/SajcUFQD97i3UxcIKLqMCd2+Gv3uBtfSVWlC44GQQI2YWcwbsRt9Dn5ZgW6pHD0k/3zn2j1K5gYQqmVVqartqocSnbWhzph4hPHfsTUSJzPd1oZunDJ8HDTIFA5DArgsWIHFPoYXNb0+CrpJKLfbhAiJQKJDYfqU5+EnJqDdUhJ0tCWMvY6qfW2BjTqbKDMlMKRArJe5qv7LToi7gs9kdcRGwzYAZCmvxUXr5XUJyuRBgjgNWDHQcNclfyNRghGYkiz5e0AC1krxcJ/lGVaI82SJbmRdUQt2+Kf8sdyqcWtX22noFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dflgn+uDoDT0yLLZS90oPunQstV1ZqL3KqeER7EPIvw=;
 b=oJbSNhih5helluKZJxb9lgCDpe5mbkBAj6MxYbZxdWS8r0P4Hz6A69qrUQeiZBrxXfac6qBnvdMycI6SnXvC9JsFpbEdeLBFlGXf5Sq26jQzM0MKkNV3KT6hPKzlAaEOZTfQKhlwrXROBZvUJK93jO6k124R3ZR4kQPpzzyR3AWabIUBohxCVDbLHOZkBXNuEDTpKNdf8k2pIBvHjoX0mh+hUja/ORKZl53JRJTPsePSoi8PTu9HBkntEBzTTuf7+Xy9Sqz41HjoSVqPoCU9ggtY/IPAuJADDtBkvAZuFPmqfK7Igsp6c4MZNuVQPqp4GP+Egs5BdALtHydDJhW5DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dflgn+uDoDT0yLLZS90oPunQstV1ZqL3KqeER7EPIvw=;
 b=wpa9e17lWERSzO1NZEZsvluZw/NVXx4vuQm4lc+9tzsaAW6ttO8CsjPHPZc7pwBYDmY1USgl8mTzBrMc31P5xcjOQuhCc7OWZdGKox4u9wzZG3sTq7OZuv0sdX7hiHluuQ6QkZ852M/S1rZkJCKx+py/UbN+gT8ea9JMShWKBjY=
Received: from PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5)
 by PH0PR11MB4901.namprd11.prod.outlook.com (2603:10b6:510:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Fri, 3 Sep
 2021 22:20:36 +0000
Received: from PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221]) by PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221%7]) with mapi id 15.20.4415.029; Fri, 3 Sep 2021
 22:20:36 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Thread-Topic: [PATCH net-next 1/2] rtnetlink: Add new RTM_GETEECSTATE message
 to get SyncE status
Thread-Index: AQHXoNimVzUXkjuVtUCdGyBU/1Tj8auSfRmAgABbl2A=
Date: Fri, 3 Sep 2021 22:20:36 +0000
Message-ID: <PH0PR11MB495197890322A371FDA59F3FEACF9@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <20210903091857.70bdf57a@hermes.local>
In-Reply-To: <20210903091857.70bdf57a@hermes.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: networkplumber.org; dkim=none (message not signed)
 header.d=none;networkplumber.org; dmarc=none action=none
 header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c600a7e-97d8-44c1-ba7d-08d96f290df8
x-ms-traffictypediagnostic: PH0PR11MB4901:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB490148E1E3A6964FDD5BF40DEACF9@PH0PR11MB4901.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 09ejkv15CoI+AupNMtKHMfUGTwG4Vv7cFlw2zd51nlzcp0SDbdqFQ2DQF5tDLNPSEzLiUvlzz1cH2cK9Jdw7ls9QXdS6yNet5tPOWd77iAiFJIgZLRaav6XvVYyF4cD7JUXl9xRSsO+p8jxYrXABXi8UreEvzl4Zz8ufBKtSzpcH3Xzvc5TRIy3fAt1C1NeBe8ZogIwUtSG4bkoEAIOlU9OdU8o+4wCgNeBSrEybhiSacG3QdCbqZKDJ7/qWWPO0JoDrgMQl2JJuxep9f4q6vQ11WFakXUzP+9iM8Ua2769Q+7hkndqVtZY6YaDNswyCz6h8IF2B77uEhSnY9gKbZe9Gs7okYFYb3OU5Ai7/5c1m7BhVTI0TUH3Kb9fxaTlc3fmRy+0eNmNM5sVU7rsA+V12f3Di5rHa0kO2LTOA36JhKpUXPkiPZ8wtr5nr4NvL8zoH2tO2By+MJiOKYTpF5YP9/IzyuIc2B6NkgEIvb/dDM2x3W5iI2xTXDYQqI66csX9Ix89j7tr+bldarc8SFMF44I6yEt5flqvmNACQNBtEXP/G2phTr2qxEaiK3/jOuvJeF0ueohebm2kNVvLAciLb3xC4q3Ew6MH98ouAg9mLUQYbA+qp8pplCYBIUOsW2MztH8447u+xob7vgtbLE1y8U9F3m4jdCYXfeNXCeKzCQdE1PqWhojYXAARLFWw9YmJFMt6qiYUWMwtmsD2cng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(376002)(396003)(346002)(9686003)(54906003)(4326008)(2906002)(122000001)(478600001)(66946007)(33656002)(83380400001)(55016002)(26005)(86362001)(66476007)(64756008)(66556008)(76116006)(52536014)(186003)(15650500001)(7696005)(71200400001)(5660300002)(6506007)(316002)(8676002)(6916009)(38070700005)(53546011)(38100700002)(66446008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xa18oWTdduCobTZQmt3wygtrUqqjBPcUBo5mpvUTRhgcLnRR9UuV2pfDxYc4?=
 =?us-ascii?Q?/0cOq1NBUdvhZAmESm5WPputdHVb69mKT3l33PsVCMY4LRBOCnMN+k6CwElt?=
 =?us-ascii?Q?xXhcAlixZqcKg394xzLO4+2Ix3HAaTvqDkahfzFbmSvIyC/VH8dL1sYINCqQ?=
 =?us-ascii?Q?Nbrf7AGuycX4+r6P0ZmIz+UE6P/O0IXhihIeBiioVaSD+YaUbwTGn51dte6r?=
 =?us-ascii?Q?JlFkmDECbQqej1txQu4aD++EIf9i6Nah0O7Rku6RnS1QiI+d1tb/3/g4oBEK?=
 =?us-ascii?Q?Zh219ycox20tiUVabSrLxFmtTnNFCCwrPxxdQzIILcNNHBqmbXmv+OuG0UDO?=
 =?us-ascii?Q?LE0EmRb6XIoKc7dY5J52WPT6gxst7VeTM6FG+C8mjyS+FGwRe0biiSrHtioS?=
 =?us-ascii?Q?mSY9+G5YOliIserpLPlDz1I/GXIfKi57KJfGWlK+kklN3/cRnMZNefKNpQJQ?=
 =?us-ascii?Q?xEEOpR/mumhGcDf8OKXVPIsnCT8EU9MrTdtNMm/QpXWEr66g7LR7tBUs8sxs?=
 =?us-ascii?Q?SpYTg2mA5NMkY1f6Z7S+H6DECv0UOjb6FjuGAD3m2ufbBG/4gm03AKgZ976s?=
 =?us-ascii?Q?9Dl5KpciwX8nQ9N/ibRYd1p7V90aSalEOGWDjOlQDHf9RiFIBhDvQ6gEC6fS?=
 =?us-ascii?Q?ua8qgJcgmjTX6/KOHT8oEwGm0OKzduGUpOmqdHI10uqA+exA8ITPJ+Z3cydo?=
 =?us-ascii?Q?pWnMMaFf2ryQQSp5UcabRX4M7U+eJczKnacKIOP44idMpu5Cq2JlA9hORqfM?=
 =?us-ascii?Q?VCSHugAbzLRJW9l5BPlL/jyV/Zk970pd8tWVDExAKF/e6sP/X19ccK9CKu1Z?=
 =?us-ascii?Q?83+9kqEvGDhro0ir+GzYjiBGaiFM+RcHga+DSby+kSed5C9vtUyaakFDwL+1?=
 =?us-ascii?Q?E34JeyUKt+CxBSwrvRD7Z+ualbE2LGCnBHnGkYxGLjCtNTZyjIGsg7vC3wau?=
 =?us-ascii?Q?tiLRVGNSJ1WiAoimEDHHq2MN9zpaZSPo9dlMdQVw/T/X3PjCLoxJFNzxwZ7Q?=
 =?us-ascii?Q?es+A0/vfYsXZqxOu2l9YspjbZQEQJlXKTzaCi5nvi204b4MXMchYwJUgxBA7?=
 =?us-ascii?Q?f48Fin2AxwvzGL4hM49/RIgyC0JbSIjjk6XL4EVMJ/GJkFHtk4ymvRWcr9f/?=
 =?us-ascii?Q?NlxS1eVfII02kQ8Y4+mh/uKelrfJtrpExOxgu5cCna67SjeeaSK+RHFqOZlh?=
 =?us-ascii?Q?EfrcLMMuTzFxFLh9EjRLP5T2M6Ox9ppyza1l9yRo7cOh+KKm6iraunPMpoNY?=
 =?us-ascii?Q?sqgqSrER1dwaVxvBU1FCT9lNykBJl6Nc7S53+qbPwLtVSWHEzuLjqjcOL5L4?=
 =?us-ascii?Q?rVM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c600a7e-97d8-44c1-ba7d-08d96f290df8
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 22:20:36.6819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BR914S5KMB6R3gsB2fYmb2dvziLTpAoW7rDcOP7NiyIyBnUXgiSsQUi+AKjZ36UnZrd+uJeWZytuFRGLcX2mAyy+0StuvIUWfEJ0lisCdWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Stephen Hemminger <stephen@networkplumber.org>
> Sent: Friday, September 3, 2021 6:19 PM
> Subject: Re: [PATCH net-next 1/2] rtnetlink: Add new RTM_GETEECSTATE
> message to get SyncE status
> 
> On Fri,  3 Sep 2021 17:14:35 +0200
> Maciej Machnikowski <maciej.machnikowski@intel.com> wrote:
> 
> > This patch series introduces basic interface for reading the Ethernet
> > Equipment Clock (EEC) state on a SyncE capable device. This state gives
> > information about the state of EEC. This interface is required to
> > implement Synchronization Status Messaging on upper layers.
> >
> > Initial implementation returns SyncE EEC state and flags attributes.
> > The only flag currently implemented is the EEC_SRC_PORT. When it's set
> > the EEC is synchronized to the recovered clock recovered from the
> > current port.
> >
> > SyncE EEC state read needs to be implemented as a ndo_get_eec_state
> > function.
> >
> > Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> 
> Is there a simpler way to do this? Seems like you are adding
> a lot for a use case specific to a small class of devices.
> For example adding a new network device operation adds small
> amount of bloat to every other network device in the kernel.

Hi!

I couldn't find any simpler way. Do you have something specific in mind?
A function pointer is only U64. I can hardly think of anything smaller.

Regards
Maciek

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
