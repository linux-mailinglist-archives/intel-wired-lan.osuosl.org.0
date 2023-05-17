Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F211670647A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 11:46:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61A1E40C1D;
	Wed, 17 May 2023 09:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61A1E40C1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684316778;
	bh=0nA/1ef+iMh8XwakTpj0jM3m5XNjP09c+CUQi54Q92w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bc1hlPk778Fi+sY9jv0og+F3Zba6RT5YoMS/keoR2aup/RjWfNzhUThBG/NIW+cTH
	 WgB0rAmn22Nhmuy3sY1N8YUWVTsQLPuHPYMnDlbitHRNmaoNwc5+pjp1YfrquDPr7Z
	 08F0YaM7sBZn39QLahEaIun6lB2i0oJvHhUOyVd7a3xt/u99piEiF6IrYXhgvfENEQ
	 JUsduQLs1t7HAnVvL6LTVELs2ath94pj3qsXbVUhJCDCiYl3dgrCXZxtH6cU/ZTM31
	 ZI9o0JREcrn/gWkJ71tc8hdF6fyAtdLqxM7UZd0qYbTl+ryO8v6szf+dLSFp4VztJr
	 0/hZKpKTF5yCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bl-rOuaCa5AH; Wed, 17 May 2023 09:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33E624015A;
	Wed, 17 May 2023 09:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33E624015A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 53D011BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29D9C4170E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29D9C4170E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDhzUgpUEA8z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 09:46:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4288B416CE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4288B416CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="331330321"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="331330321"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 02:46:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="846046681"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="846046681"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 17 May 2023 02:46:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 02:46:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 02:46:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LH+kJ3wVfbCLJNtHqJjqAg+KqGtB+CSQd9ovnnMpmH3KSNB1P/6HT1lg5rryMmCslPkXXlOqIqy76llPiJsZUUrbC3Fwn5jF+YVd4CsvryybYps+bZw076T92mDpVjyeUHiizVwOYd46gBGzS8SQeZ6dD2eMC4E37rBzQ2SLptTnuv4wL4G3MRCIZy1VIPbvyzNQZn38dn9Egev4Yoi5sGeFXubaaTOctuAY+J+6Bnwe0e7gxubpzRrvAIH7TP7cDZwfoOKM19gJzGujoye0EJi5LGSSnewQmcIemxrERn4t1L1OrJP9b1y/ZvchtYLghddegv8MEdkx7ytS86Xdow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PuWdz5TWblag/dsGwtLOddDfp+maGZpSExj4bgTQTFk=;
 b=n5Al/5hIyIzj9eZXEcwosf4I5nhpx9nZ0HiideQYkiQn00mABtFWP89qBUjjhARhwwOegh6ut9DbcVKK5/jFn1QB+ISIiBwtZQzbp6O4WFrk3l3nex0FkulW2xVhdTJZBYzfgx5xDjQ2buk6I4kjt90joTiHfatRlrDga/6gB2aAbFQqo64y/x4TDXkce0VoYjduRtIUcG+VSWXtEr98SvRpH60lhEI+v753xQVx2jOaUU8XgKrySIUAzZLqu3/vilPmJ2pCcP9w72H8z5sX/e1g6ycF7c4JfXKyQ4OEFCMk63PN7L2HqYVlpwJs6Kq2a+kvfCPjM0QLhhEnp5SoBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Wed, 17 May
 2023 09:46:03 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Wed, 17 May 2023
 09:46:02 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v11 2/5] ice: Adjust the
 VSI/Aggregator layers
Thread-Index: AQHZXMAdqG2lZjRAcE2JYoSnqVGy269egAHQ
Date: Wed, 17 May 2023 09:46:02 +0000
Message-ID: <BL0PR11MB312201D0C236735E603F08F2BD7E9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
 <20230322131227.244687-3-michal.wilczynski@intel.com>
In-Reply-To: <20230322131227.244687-3-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CYYPR11MB8386:EE_
x-ms-office365-filtering-correlation-id: 4e6acda3-dcca-4bc0-5f68-08db56bb86eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L22OVxaQpa0Y9RMpMjwp+hMv8QPFmAinbWj0V/ptcmtzkpPmgqoJA6ch99AuZTcp+VTWB3YJBQxhqQXccS8qdxC4KtQoMFiSYKp+Z6AVAM83WCBquccXeI7pVn96E6zuvHC+muDSsb88tTbXkII7zmIFTKvrGdRZZqqUMovLg9EZIncMsAg9UIWJwzU6vMZIC+2dqy0pV/KFlm8ZSRyPy14gES7rqECoEZU1fUMH2U2CgzLZoprWejZ9vlbXs9gMOerEp5e2M1NWN8TwFcHhdMcFOcboQn/a89JWQg+ThlyO9GKpNP3d0adV6kXGO6oN1wtug2e4Xv4me4IqQc/5l0rGXl+D0LZpAEzGrY3PFxTx7Pn9W0JF8JRDcvNjPMt0vYdVj8poBM1ZfTq0WMSr4KFXnA2NXCfUKZQVLLJoptgDjzuzctZiqhQwwnLyLfIJx/5d/NE9yie4BsfefIx7aZUmdNKl494ZqFm4BsP/6ElLLIOOkYCs2GhAgayiqnIZ/U3cr6x5PZtll8Jd/c9t57a0qNIQdXy2q3I7Mv3+S+ZrC6gWMCTrbiV87b2owFBOTE5hcbRjsGFYTbs6o0d8M6h81lfONPqfaTF8J5KlbQdox0UPhkQ/EPSYYfJ3Gaz5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(5660300002)(52536014)(8676002)(8936002)(186003)(9686003)(6506007)(83380400001)(107886003)(53546011)(82960400001)(122000001)(38100700002)(26005)(38070700005)(7696005)(71200400001)(478600001)(33656002)(110136005)(55016003)(316002)(66476007)(66556008)(41300700001)(66446008)(66946007)(64756008)(86362001)(76116006)(4326008)(2906002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k6aVvmeiWeiPS6VQtM7yfIv7Pdt94D4u8QMEK2pxjLbmlnEpTCZDbZ1D1RWP?=
 =?us-ascii?Q?JxGVJYFE5vK8igU2JcMs/GKqlu6w2ElrJCH7v4TTEvHZeP+HQa8teigo/cX6?=
 =?us-ascii?Q?OcQuwdzG2JAPgtTk3VRwQlFOFSARu8ncxK3GxbPEMB2EIwdWr6gmM1+dkcw6?=
 =?us-ascii?Q?TlyY5hbCSsPpan09HCZN/EvUVOv6GxVEOP9xmqcIamEGxgaSfuO/DePMEyj3?=
 =?us-ascii?Q?UoM1D+rx4W3ZsbM8CY0Xttk6NSdy/50RFO/5HmCpkZABMiyzYUT1Egj5q7FA?=
 =?us-ascii?Q?iJFbIFjI+m9YDQAqjuIQoL/9Zsc66pjqQKnJ92OQEIC6sMyCKcuhq4g4+8Lj?=
 =?us-ascii?Q?QzXSKpvKZchXB+C94XG5aB91lESLLplau2B2qZBqI0Z7shHUUMBTYh9Viqzc?=
 =?us-ascii?Q?3CzZIoVZZe4hZHwLBvetJ/N1K2VB+OFogV70LhtzeZ/aSQuD8AZ7w1hZfYgA?=
 =?us-ascii?Q?CZSNiM8kA0Ioc7Cs8dV04vjYj0PBBP2P7XJVNxoccfAzlN14WFlUtKJM7Mce?=
 =?us-ascii?Q?M+AqYy0CbmrwFtVsu8KYX3ixub0p8uNvj2X5vultWoToXnp90tJi7xXoP1N4?=
 =?us-ascii?Q?EMbyOnnWKqS+lzUwtt+5mIWnxAQBt40FR/F19N6VRRe133peQ5oj2uKD3W3W?=
 =?us-ascii?Q?Il0wmu/O+UJxVgyekIweWsUacbqmruimKa4gJRwVfSYl6OkPA0ywv8mnDDIc?=
 =?us-ascii?Q?/tD4NZ72h1bMmJ6rP/nbiP8s9qT7Y/KNNIoQ/Y3MicWpIIYdpmHsAzWmXgA/?=
 =?us-ascii?Q?2HOzzn1QZsHj0/wb4MtxXnsJXOgaBpXbKKQ46d5/X2BfzQbh4z3K5b6DgtQ+?=
 =?us-ascii?Q?kMmySWahIxCyRxW4TGAvC+c2VmmzhuYUCpYLSk5XWK6QczdURWhrV+I1Z3H0?=
 =?us-ascii?Q?CBBkNsrVOKxHQjpy+3UWQs3GVgcw9r1KmyA6A5IPtAYsNASse/S1yh9dZzDl?=
 =?us-ascii?Q?YnKmGf0fyozZhGwu9gn1H0a87pAY8s51FMefb1vXr6DLXOvW+pDBVqxRZZxp?=
 =?us-ascii?Q?vGFNb9ZsALpXoEkgFVOObuha+q0MxhpJcl/+PLDRVFlcKLPd6WSrNSnhXDZ2?=
 =?us-ascii?Q?8Qfxn47zj5b03eQ5h0sKOwp3a1QYc579NqJCC1N7d0WQZVemyRJb25Wuqt7m?=
 =?us-ascii?Q?PbOnnfy1dPpjiMfz1fO1+aDoilWGmxwLZaJwnPoadgadnQlNlYisFekR06iY?=
 =?us-ascii?Q?1iOjkVw3rie7aZpPOF0F3d/nIdrJdXcli06gVGTCpBemElDzGMi9M8WDmFmf?=
 =?us-ascii?Q?Y0jdjXq4RyMOKaqVRtM1Ip0ux7AyLIR5kzA9Bpauu6v7kUJtWjy0iCZcFQry?=
 =?us-ascii?Q?5Xf5B+lOFnlMtycgYNg9KJkozw+L35uGtBQAgk3+pK9gLOpXoLoCw4HotQ69?=
 =?us-ascii?Q?4uiJnL/tpRxLcER07dUDVMYFww1v0+zT9xbfp3n4cY4Gsc/iGOG9lkQAT7PG?=
 =?us-ascii?Q?Yu9Oc2srXcU1rp6AY+Dr6e7STGf20IwnnbwYdgtiZv8Sl/CJhxSzXc8XXWpr?=
 =?us-ascii?Q?TuljgP1qWzihHyYzagPEWYDT9s7aMB1y+6W0f+Ip07RNE4TsPDuAHZVpa9x5?=
 =?us-ascii?Q?0KeyZz2NKHoPKvDvc76JiaAT/70IJIvW5//ww2Br5ke9XqWvEU4lqMNoZa/3?=
 =?us-ascii?Q?1Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e6acda3-dcca-4bc0-5f68-08db56bb86eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 09:46:02.5205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zJN/LN13Kimk1QJFQUjCMHruqH0iErC3iHBEmTFY0wwZ1YC+nYcJ7j5UACX069vTJe0KTnTMNBEQUGvs52PHnln3POBaYGDifzfEgN1uNS9Z8kjnpHecgUwymbQn3BSQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684316771; x=1715852771;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PuWdz5TWblag/dsGwtLOddDfp+maGZpSExj4bgTQTFk=;
 b=VNr3QZHk0yLENDsZEi09pGNB24gno1jIWcRXP3EwtaIbq4PO7j6BH2uB
 1Kqs+dZFMDzGM4iCQEK9aB2eHt4J2kZxCr9OHTdNZwIv7CjwYVG2lQdEi
 VA8JFHKZQeX4M788nusZu6EjNpThQOIoSZYDBMUJrp+VTJsS73twl/xKk
 yFehTNrpQYyxLMGdj1qz3OL+pdQGbc9b1flQY8efSyINZ0ny9evTnVVb8
 woKF/CHKtLQp7C7lp+iyPXwO29mKi9BCZtdyB1Hf5YV+LwYmPYrak++RS
 CMdMhk9VP7UNmOyDqaJpGykJ1If/IOBZPXhRCmNipW6WSq3mT4FYQrLnf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VNr3QZHk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 2/5] ice: Adjust the
 VSI/Aggregator layers
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
Cc: "Raj, Victor" <victor.raj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Wilczynski, Michal
> Sent: Wednesday, March 22, 2023 6:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v11 2/5] ice: Adjust the VSI/Aggregator layers
>
> From: Raj Victor <victor.raj@intel.com>
>
> Adjust the VSI/Aggregator layers based on the number of logical layers supported by the FW. Currently the VSI and aggregator layers are fixed based on the 9 layer scheduler tree layout. Due to performance > reasons the number of layers of the scheduler tree is changing from
> 9 to 5. It requires a readjustment of these VSI/Aggregator layer values.
>
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_sched.c | 34 +++++++++++-----------
> 1 file changed, 17 insertions(+), 17 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
