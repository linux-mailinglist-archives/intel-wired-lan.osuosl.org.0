Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A169B6A2193
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Feb 2023 19:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A92461248;
	Fri, 24 Feb 2023 18:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A92461248
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677263662;
	bh=VlDerhYbH8dDbBSOjL/LcmHYoxny0HAHroDEdEl8P8E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ho8Iv53/EAh7XyDV+7BD5iKD7O61g3d5ljqKsslYNIBXVRDPppZsPoOiPH4lnK+jx
	 r5UNb/G+ZMaSU6smwgpHv3mxs/u9IhYuQuUA7d8Z3uCdTM3kkYevl7MtiPpHEoN1Jr
	 LsTiIptWdTbUn37w5ae9x8sScpYY8/GEY54q/IFlDpVacLU0xABYL0BMqEk1Ew59ir
	 CA/91YONISt7fY+JkxCxsRjnBNVxiq2v1wU70LyxOcFmyXRXYmBqLgyWMe48ZVjSpv
	 IdkRAgGWgQaPcAR1xVmHSPvib65yKLZofm74BSnmF8Nnt1Y8z4IBPq3SoBEeWQGPg4
	 ormC6R/mfjlWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TPR_4I_0qgFL; Fri, 24 Feb 2023 18:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBC5861238;
	Fri, 24 Feb 2023 18:34:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBC5861238
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D4BD1BF376
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 18:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 226644179C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 18:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 226644179C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZt2kRb6EH9L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Feb 2023 18:34:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 940BA4182B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 940BA4182B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Feb 2023 18:34:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="321750021"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="321750021"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 10:33:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="918526453"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="918526453"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 24 Feb 2023 10:33:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 10:33:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 10:33:51 -0800
Received: from outbound.mail.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 10:33:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ch0m9xcrNMABT+1G8xYpdSuuHxWAWuFs6GwpGLo7rEkVG0f1XYSvmnFh0lGmDhznJUkf0vN4QHn8FrsClsJgr80nLOx0m7K4Eey2epURCMhKCoywleVcjnWUnTXXs27GEDeh1LBDQhCWqgy2LUCPom/hftB7SarfOYZ39suejp9HzGeQraH3yAwdy/6SMADZFnaQH+UF5F1Ai7vqVseWeWIPngHssxshs/uhI+KOjToWW1wjiBn2WSHITWq6LIFlS37/8smMLrxnf3hDwOqJhGI31OFkgBqC9KgjK4/gIhwf1z1wEw8kp+0TdCG9zm7bZt4a4GcAYIedwh4xk0Fkcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPAfZBzySdWU7J0jzIHiI499yO20RnaqcMk+BZ5DHJM=;
 b=ezDi849SAIuy11Ry5s6CMl3jgzR2Flq1sWZQHOXwK3qhBzIa8TDvBvM5jAuFpsOrAF10cz+Lvsm1pvsabe8nnq/SwNg7pV3f84UCitWXw4gAnFIVf3ZVOPXfQmgPje1UzYpaOBVBZJJsLjaQA9cCrtRtlV+9vYrqm86fsHuYPwwPQWHLsF/5myTH1Na9psr1hq8M1FV8HHE5SyqR73CDdA5ZGdXn4WaptED1rS9fs3h7xbcdeQRabqYwn1xDvjgsYtAGaFmd6foC7JIHQV9MkFmLAOrVR2YwhCFfEo5ai1NrV5iTaxh6NGxKU8xW9T28Eu/u+98aH6T2n8qIfycMng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by SJ0PR11MB5940.namprd11.prod.outlook.com (2603:10b6:a03:42f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 18:33:44 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::1100:179:1e1a:9924]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::1100:179:1e1a:9924%4]) with mapi id 15.20.6111.020; Fri, 24 Feb 2023
 18:33:44 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Linus Heckemann <git@sphalerite.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
Thread-Index: AQHZQXI3XzZA56SgGU+7VzslhW1Ahq7R1CWAgAylTBA=
Date: Fri, 24 Feb 2023 18:33:44 +0000
Message-ID: <MW5PR11MB5811C3D002B5A5FB3A8806F4DDA89@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
 <ygay1oxikvo.fsf@localhost>
In-Reply-To: <ygay1oxikvo.fsf@localhost>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|SJ0PR11MB5940:EE_
x-ms-office365-filtering-correlation-id: e6563495-75ee-4af1-b446-08db1695a8d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZMq7bQ1nEiCIz739Q1hhvc/JfLahLUwI6c+/gMFfuV5O+hzchdAZ9JWH5iNeyWiMcl3xNeEAXm8cApItTNmq93oe5rbu5W0UkZvTFlUHKlyEE2ww9tnQksWDqcGaIuJSu0c3491LQRmqQhaSOKN5M8mjDRmECLDLvy5qn373wVPoljZd/ikyfLUmHpIbOkBInVkbHy2njxJ3oL+ij65SJRAhPqDl/CdtZAT88VIwe+psGLh2PkBm6gr8nyOYbpIva/FlufPNTisiu0Qu/OczqNJSWGtcitn4gqU1PqHrDJeOBcIiHGPcLwlupt3EmYgD83dHAbI6JTV4JiPu52wa3h7EyohcHfjbcpgqXSdhnQa6N8lLDJiqEO3h35btogruoYtHMMfQl5Wp3/tODmWAwzfgY3JswTdTtxQo8C+g45nMvQKsRPKB9uPgYQWGHrzEP4mS8yHqJ5zNI8sdA3a/QNX6UUCIwzBcWjgkeaidN69C15SrUyhOANRcDy4yhdgjC0WHHbQo+kJ9IK9roOqLQMYPwds5DMUt7r80bcrrPH+Omykedq7b14NGRKas16NsY8yw7QHYGIjITgkRsK4nn/WhYU+vo4caNVvyiFWJFrHXhmQIGBZI1y8Y7zDXCz+G7AOV41oWGnQ2z2t78h56+MsPZd+IiMmOlMIAJS3cq2geyJisZWSJ9JNyMnmz6rId
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(346002)(366004)(376002)(136003)(451199018)(41300700001)(8676002)(316002)(4326008)(86362001)(38070700005)(110136005)(82960400001)(5660300002)(66446008)(76116006)(8936002)(64756008)(52536014)(66476007)(66946007)(66556008)(7696005)(478600001)(122000001)(38100700002)(2906002)(966005)(9686003)(6506007)(33656002)(186003)(71200400001)(55016003)(26005)(53546011)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wqlnxdJ6qQ7Ma87ZXg58cyAtIVmWv1+1LGz+EINZ5oXZSO8jx3zRgbjNAvRR?=
 =?us-ascii?Q?arnSOuqApJtuxdmnWzMNmrYafR8IROV2mxkZRK2d/N9dxyeugL2ypI+MFKTP?=
 =?us-ascii?Q?bm+hmVP4kbX2osuJia8hDer6Hg0HQ+6y7GPzY7GKJp5en8v8BvbA+NiAYL+z?=
 =?us-ascii?Q?Xp4EXlaRbj0xmVHpjJII/sx1VeWhkgfpNcdf2IslCmQEaoQBbIqhoO1W0elk?=
 =?us-ascii?Q?/Xnl2GfID4M6dUAV9RJdLqjvGhOV9eMgIm8e1HEPY3ypZf0FdFTE41DSL8Ob?=
 =?us-ascii?Q?d3ENSn3b4hvDauoKMRm0DM2YkLNjh6O7Jx6Spzss6ckt7BxY6fWs9ARD65wl?=
 =?us-ascii?Q?NPjOypgW9yX7r/FY227EbX/+hohqjkKZqtehLiIJ5gqJaD1C8lkkTIsgWjDn?=
 =?us-ascii?Q?2NPxW8Q5oK8nh7X8SA9lWiw/k4b6l98Nw6pm85fhWWuHsc2JdVT1oPd6Y3MC?=
 =?us-ascii?Q?NV2GR3cnvpHJaxaYsjJH06/Ap3YCyDY4/lxZl5WNZXBbMSaKtermoGcKX46p?=
 =?us-ascii?Q?cyPEeP40X+36MMlUVEY1K0oety01udy8P+jsEJk5pj0d43S8h4NTLmr9FhCP?=
 =?us-ascii?Q?lXKQUWouujGcSMCAp/I2uAEfJC6GliM5xBRQUbZRNpTRcjEm9wBiyE8rZEp7?=
 =?us-ascii?Q?J7R4o8O6s/rV11kQ0okqFjNUSkdh402YM+jKyMNXFsDmf5M0CDOLtrYugFbz?=
 =?us-ascii?Q?B+iL8vtRFaZha9trvCPxBWawshnrgzpYXWHGNqssct3hmklmBCZ1nYVR0IUx?=
 =?us-ascii?Q?mDZlCWrvSdfcKkx+k/oWtjCNxXLktCySE+iNu9IKSItLqe8VpIvdjMlX2PK2?=
 =?us-ascii?Q?wAgJW831jhpzhWADq9wdV8IB6Rrfc7XHY2MesTfrW6qaoiPbNznSStEdN42p?=
 =?us-ascii?Q?635u8aRdLtcbTsbEB/9SZcOdG5j4w5n+R6uT45O+HHfMgCorPKzDrwjBMYMD?=
 =?us-ascii?Q?uypi19UXbWHj6De3Ue3tc3lKfoUnGnlLngajWgNgxwnvKFH444SVVxbkDyeX?=
 =?us-ascii?Q?yCCq5iiTbrrlPlarB0CHANqOOvimxdKu9WhvS1lpk6/cy3zIBZ4yOJx/MVS/?=
 =?us-ascii?Q?IcdHS7mP9I4mDxn46tsRlKtHhTcadnlT2wM98cjKSGxna6NKAYn0sJ0cXtB/?=
 =?us-ascii?Q?WBf7yMXyMF1ntH9DXyq7rOByVbkRUK6NtsOWamvSUvVg8TXt/mlIVxz8dNlL?=
 =?us-ascii?Q?O03UF4UbrOhTGMhvlYKnZWb7aViLygo8Owvxk6T2ItW2ClybSLhdCn2yySuU?=
 =?us-ascii?Q?4STfcU41U0S/heuUICve9LrpzoSOHxR3waCuzd+EcnOs3DXQ+gIhvAkKYiJe?=
 =?us-ascii?Q?1ylfqZpePtEapqWgtcy/xVS2MF5efnZ+ogu8FCom9iC9MOr2zTpkSxYZrScP?=
 =?us-ascii?Q?1x9Zi03pOo4OyHdTPg7eGEKFS7NtHFNQV7p7z0Wsl5TOELWtb8hNpJkhFYmn?=
 =?us-ascii?Q?pVDVi1U2OW8LFXiG1pxDeYrZ3/bC5OJSHVyyZ1l0PrLUOGXm6uTv935IVLfa?=
 =?us-ascii?Q?KF7bsgD/DpLj80Wu3Ye2yfrNaL2Pkybd66EYP31zo6jWmVGUHX89dvIy223N?=
 =?us-ascii?Q?+U7WNtjPkwfI8TctI45kQasEFzrh9rx1ldq3I3Ep?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6563495-75ee-4af1-b446-08db1695a8d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2023 18:33:44.1194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bUjWoQO06hsWcBpziyP4Lyr3/y66Bgn+DU4Rtm5aN4IHG2dzDQjFEqclYtPz6dnD7fbM41y0L9QuKVHxWkKZKWAwLFmrOApseIedld3FNg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5940
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677263654; x=1708799654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MYPJu1tms4kA4AVovQF7hfUDPYPoumNlCImTUAI0pYc=;
 b=G00908caq+aRTBLMwP5h+Y8sBVHW4pvRFT0Vx86ePJEU1ayZRgns9Haa
 hOMlxiO9roAR6/0WXq1mQEpBDTU6qFhrXaaXZR2JLw/MVleN/r2j1SikF
 KgeQYs4UPR+iHhl2OIyuCZliuLPE5VLYMEvsvhkcqDJDfKfIF6HaBooyS
 yIGj2k+vux2VWE9GneUc0iEYTofFFw3OA7WOsXPtTsH4shSqFW6Wk1Acx
 ARr7LO7JloHO/lJ1as4V0wnwB9wd044tQWdekZhvyhsgFVj9zG8a9AIae
 zeAKNtSfQfwGvSNc41RuyEZDvYzdjXAP0BXy7tjLsbZGZp3+7esMNlZtt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G00908ca
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Linus Heckemann <git@sphalerite.org>
> Sent: Thursday, February 16, 2023 9:24 AM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
> auxiliary plug/unplug under RTNL lock
> 
> Dave Ertman <david.m.ertman@intel.com> writes:
> > RDMA is not supported in ice on a PF that has been added to a bonded
> > interface. To enforce this, when an interface enters a bond, we unplug
> > the auxiliary device that supports RDMA functionality.  This unplug
> > currently happens in the context of handling the netdev bonding event.
> > This event is sent to the ice driver under RTNL context.  This is causing
> > a deadlock where the RDMA driver is waiting for the RTNL lock to complete
> > the removal.
> >
> > Defer the unplugging/re-plugging of the auxiliary device to the service
> > task so that it is not performed under the RTNL lock context.
> >
> > Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> > Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-
> 0487c95e395d@leemhuis.info/
> > Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
> > Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> > Changes since v1:
> > Reversed order of bit processing in ice_service_task for PLUG/UNPLUG
> 
> Hi Dave,
> 
> Thanks for your continued work on this! We've tested this on a system
> affected by the original issue (with 8086:1593 cards) and, unlike v1 of
> the patch, it appears not to resolve it:

Hi Linus,

This error confuses me.  The only difference between v1 and v2 of this patch
is the order in which we process state bits in the service task thread.  They are
still being processed outside of RTNL context.

Can you provide the steps you used to reproduce this issue? 

Thanks,
DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
