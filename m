Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 420C3649863
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 05:29:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6541D40888;
	Mon, 12 Dec 2022 04:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6541D40888
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670819363;
	bh=fpzYhYsZGbcqmK8fFVZXi2uXmzW/fMywqfshRfAb19k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TkIsQzNMT8FEIsrGP1meQ1jYCJeA9mm9DxbM8XiFiiQMpY/bI6gyehFDtXOaAOhiq
	 EyehBT1MAWTWSWLH7CsZ6lHvr4Oi2k39BYZHZCm7AWFNdk40K03Av63e35are+Luuk
	 cGwHr6Fwiafwlj7hHb5Qamq4bUsWS4xeCOI4FrynWsO8l672u3KUzOsC1lJl2e/bt0
	 SSkvZzyaf/zU50Rqbmt8XuWHpHLR9z8nPlijI1BZW1Ca86VGpOOZtZv7Va+bD4UOkc
	 W7AtxcLnRTOErg4I6/CLADCSIB0e24n59y+QyjOFz0y+igTZ/uSfHvjah3ThpvrBKX
	 XA/MBx+TSTGLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ncqW3p2wqG7; Mon, 12 Dec 2022 04:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28A7E40580;
	Mon, 12 Dec 2022 04:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28A7E40580
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA4AC1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 04:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B658E40580
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 04:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B658E40580
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PlxvoSsfhf7N for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 04:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BEEE40332
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BEEE40332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 04:29:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="382073995"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="382073995"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2022 20:29:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="822353857"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="822353857"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2022 20:29:13 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 11 Dec 2022 20:29:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 11 Dec 2022 20:29:12 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 11 Dec 2022 20:29:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 11 Dec 2022 20:29:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dkd9vwLu8t0bO5ojusfburn7A9YXlKAHgDCp4Une/K6ZAeVGrOem1AP/OQbknVR7BVsHl2o/1G2x/WpuPkWyZBHR9U8VnbuEsCU60iOegNMH9IO85EjnxnmH8rGguK/BImdxsrHbcYl9qgfo643K84QoobCMVIlVn8263bJQPZh9TODo2ijnS+XNCezAdY/u7H/tB4LrZdswVP2Q6ioHh2WkJsLpj5u4YKVAkD9hiSmkiMVVAXv5f2EUYCpZ8x1UXkr/aLhgX4UYjUF03WPYVScmekt35AyVV0NeTY4IMRGLPi9h4k0MBMC49bqzrM8ZQGmqZ3h9Fk9SNm8rM0MRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/J3UIqx3FSqk+lFNim3P1N5QRFIZhXPDW85Da9vo0m4=;
 b=LX+CQU2fH+kjOAnRwNf85nLk73+58w5Scjjo6j0kGd1NLPVDfI6tqr74X4Tn2ZKlnYwOTnvFYILX9hvllcQRZfrTrtarhGKvi/zUISrRwO00dEXsKLQWHRNoGZ7LpTa00GwYBtiy0u4TukxE9/zsdbPlqjxKm7kiIExaXK3EOEx7vYVwFy7/oPS8yg+cu2cqqr4dZct7wPut7b+aH++1dIOYAGAcRkS9Q68n+GWlvVog3xDrChhtFHnuWiUA/IbEHtzYn/+qJ3/Yj1RHCxdOPfsutGdC+OmT0CZjbYAG5GGdiykVz8soE4e337QqhE1yseGI5p6C2BGU7HTRAnstsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by SJ0PR11MB5200.namprd11.prod.outlook.com (2603:10b6:a03:2df::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Mon, 12 Dec
 2022 04:29:10 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::39f1:b5ed:24d2:fa46]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::39f1:b5ed:24d2:fa46%6]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 04:29:10 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ixgbe: XDP: fix checker
 warning from rcu pointer
Thread-Index: AQHY/sz/Sv8jARlexke/JNO44GSTHK5MpgYAgB0ewFA=
Date: Mon, 12 Dec 2022 04:29:10 +0000
Message-ID: <MN2PR11MB404525CB9B0F77A01D9C9413EAE29@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20221122234825.3360663-1-jesse.brandeburg@intel.com>
 <Y34+won6ZEU1uxal@boxer>
In-Reply-To: <Y34+won6ZEU1uxal@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4045:EE_|SJ0PR11MB5200:EE_
x-ms-office365-filtering-correlation-id: 1dd21421-2152-450c-8444-08dadbf96a55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IhQatVnEyxxPnFCaR+I7j5UxrOOatl0XyIEwrZNphH1YthQrkuFy8isaJwhSJBx126c2mMAXA2OlBYi/jOAdUicR2lgupSTPAf6qOg22159H4mZ13rgfG6aEMRQExzK577OwzS+cmV2u3f+rya4q8jX3R5TrwFRK896sc9Eq1AeoSsZw0SDK/kcQq6UEG1HuBpEC7JFCN9pd9QQ6/8RgSRJbD7lyl0vW+aSi/jsdXPiaC2p7KFS3kvNUn0fE5YiqlAm+C2hgg24mquY1L1iqwt+KmFkhYWeh/y4kiQFjlXg1tM99Z4UYmaR92BnckV3mp9eR8/bp9TmBhZfAlEZYADwFEnPkPQ6w0zul/zGPwahGdtKsdoni5nK3JLpor1rIgXYgDJ32Q9XBoblMZTfMyKHhNPWvOnokI9yg1MkKwuRNntQFAyounGBQYs/Ai1fqgkoUsFzFHL2UT2YQcpZg7enO6AHZV96wYwhGMuFZdB7SJfyLOYpMrtB7Qe7CPd1Jc+vprIgHA9fWj/Cdo/5STV6wi13UABFbNVw2zLYSKaDBPY/OeJYlbkilvp8baHUCAQUm6q5r+HGjcopqD+JqWRWFf3mlJRi+01jUuOoQqmt2SqDEC0Hlkjg3BxsPRwxbxPdeQId73MDF/xEcuDdhLfr8wh7SiJWH3ZqMgOBnZcHkJn0L8P8aHBb6y1zEf90vCQDGFgaWOzO+phW+ye1BXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(376002)(346002)(396003)(451199015)(86362001)(2906002)(33656002)(6916009)(54906003)(83380400001)(186003)(66946007)(66556008)(64756008)(8936002)(55016003)(8676002)(76116006)(66446008)(52536014)(5660300002)(66476007)(4326008)(38070700005)(316002)(38100700002)(478600001)(71200400001)(9686003)(107886003)(122000001)(41300700001)(82960400001)(6506007)(53546011)(26005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1iFGmzv2nf+HopJTMeAJL5hksptlLUH9p5EocjOruvc0dBQKx2g3qqw2aXK7?=
 =?us-ascii?Q?+pCrzxKvxxQg0qd8CHVR+30HSWaRXiyo2e1kPWKv2yRNK798/B4JPvYWJr02?=
 =?us-ascii?Q?O2aflmu3SDWWOQyC8ByO6eOSHarmpMdRhOBH9Z6q1kAhE0oqQIbnQ8ankgD4?=
 =?us-ascii?Q?WN3CTc9ygVGxV5U6nzwEADRq3ogy1DVxGKNxUamGd+RjMW5CxceIhkdvRuBG?=
 =?us-ascii?Q?UHkM7s7ajqmzJ0WhesgHSoCBxP2mBW+5V34Wpzg5TPnHSGKrLo6RFIgHez/O?=
 =?us-ascii?Q?j3nqs4uaIoATerSluco7lT5hoGCW6BivbPaUjtmc2LiPVtY8Atp+G3/sskco?=
 =?us-ascii?Q?2N+2+QY6/thnLVOfmgmEOBwfnuYPwhr7UVPkkCBlWC647139MbV8oP+YAe10?=
 =?us-ascii?Q?+wrEGYCmQRabEYDI2jeDHDP2m/qW+qA9zXbSbuKWoq3hvx/dTzWLXeNT1w9Z?=
 =?us-ascii?Q?H7rP8bDDEZLnJ32zOKc30GmZTBhvWqAkio2O6a3zuhWwJiOYhqCbEt3k7mgD?=
 =?us-ascii?Q?tbJkNsEN/QB11hawqxegkEsmAPdm43oRgDYAhWpmBPQHxC3Pal+Z2GxuEWts?=
 =?us-ascii?Q?4jo4D8+YklX1BTOF7tdsqFLlb77nzPqxEgLYxtx93fIZBtx/NJW1FBuSHFkr?=
 =?us-ascii?Q?cdTjuDB/igfUk3V6cTe0nmD72JNDQefJSeOVzRRXYS8PH0a33D8FntnFnpnm?=
 =?us-ascii?Q?qOaCk3FNF69/eklqUS5KO5sRt4kJ+2dMUMPuiC9vapQOXXA3wdG4Qfmatjnn?=
 =?us-ascii?Q?Mm9aNLVRuMNOOuZ4GdzFCnWD34samfw/gHOljWJdH9VVHivrzCmrH0muBvkm?=
 =?us-ascii?Q?pvh3KEPdZgH+qE8y/k4wKWAGaS1ZbE69lXJ2RaLipaYgJxbNUoRwkMncpqEE?=
 =?us-ascii?Q?ke4GjyBiyAobZMiDJ0XFvagxwCmxVyzDxpugIxvKgIeLNe+L1GRwJvpZ8t1D?=
 =?us-ascii?Q?FrvMUx+J0cRe7duDlvSoqyK24RoXISwSTNSyr8hg98UA8oOpCYtwBab5cDcU?=
 =?us-ascii?Q?nATC68CH9DWmXXg4ps1UeWlpNezRItsI0sLbLo0yYhDbTKuNfsD3WU22iuV6?=
 =?us-ascii?Q?X4dpp8xnltudIjEz7VS2EApbylkMul2QrZetlryf3HhPSojGe1zaNX8R1mrc?=
 =?us-ascii?Q?l1kI8jpfb3PIqMJVRNQZpxd1Gf7/miAxsKk6XnsC/BxjTpr75O95Kb6boTV1?=
 =?us-ascii?Q?ldBWooYA3cw1HmDATyDN4kYqwjj75Utr9xW84S1uEcq3pUtLJ+FGORhkw7Zf?=
 =?us-ascii?Q?flVr+JAAKzwORzL3sJYw3RDG18tWEoDYPzqAoJh94JxXaN/0uDigpc/hlpk5?=
 =?us-ascii?Q?Yj3FrlHvaxd0cMjRVv8WPUVQwQQcXP6atYYTu6sRzLxFtwDaRZ4atRNzKITu?=
 =?us-ascii?Q?x7tuNCGrrtP8NC26+vzxrBLkKUy2yiA20de6q+e6M0I3vSaPGZziX6u7Olz5?=
 =?us-ascii?Q?pA0K2qLJxXH5FB6r3zA0pq3JAAIu+xvtlu0k1RaZuhalfem+jyBkG1JgPOiJ?=
 =?us-ascii?Q?8y1WHIvcJvFCl2p11eT6kKIfQ0WSwPC8iSi/hHjvbc6xXsW7Tkvf7qorukBm?=
 =?us-ascii?Q?WhQH+0YVFrelaod7/+xx53sTkbf7EdBcot0+oYYw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dd21421-2152-450c-8444-08dadbf96a55
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2022 04:29:10.3362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dGg6JcWz7w8Rrt9880wHUPCg5N9MW82+MqteEQh25Y2SKzrqYiiBiMXEioe3FjTZ5Y6jyTNFRA4HGJPORiuC8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5200
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670819354; x=1702355354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ok1tR0JvsYpBRkKTKWlwXZ8B7vHwx5FQVXWEB5Qu3Tw=;
 b=n9awxlWfHxXRJd22KpZ/xKgl+kzhXe0iT1VyMevAwpZQJPSuVFjYdiUu
 2cnKBrJqDlEPRQu0EVWNHqfOqX8GfD+LJSvFjK4yQ1LmuXlHlTm1t1lj8
 PoqspmZQT6zX80oGF1PAQgFeJP7qHlk/A6E5yWfJapqJDaSjwtOx4pVgz
 pOVS9lQK7mhCHWkKiPZZ4gp+q6+aNClNSYvC185phCnZUDDl3tSwaK7KH
 USPN+Tm8KwCiYiKTU22sR3N5aJg0iVwkW6lgcWUnXw3QABZNqI7Z0seRA
 8u0E8APrQxA2pF/qngmHQ20wO0eAJzjKn2Jh+ojmfsNWjzi607KyuGUl6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n9awxlWf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: XDP: fix checker
 warning from rcu pointer
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Fijalkowski, Maciej
Sent: 23 November 2022 21:10
To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; Karlsson, Magnus <magnus.karlsson@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: XDP: fix checker warning from rcu pointer

On Tue, Nov 22, 2022 at 03:48:25PM -0800, Jesse Brandeburg wrote:
> The ixgbe driver uses an older style failure mode when initializing 
> the XDP program and the queues. It causes some warnings when running 
> C=2 checking builds (and it's the last one in the ethernet/intel tree).
> 
> $ make W=1 C=2 M=`pwd`/drivers/net/ethernet/intel modules
> .../ixgbe_main.c:10301:25: error: incompatible types in comparison expression (different address spaces):
> .../ixgbe_main.c:10301:25:    struct bpf_prog [noderef] __rcu *
> .../ixgbe_main.c:10301:25:    struct bpf_prog *
> 
> Fix the problem by removing the line that tried to re-xchg "the 
> old_prog pointer" if there was an error, to make this driver act like 
> the other drivers which return the error code without "pointer restoration."
> 
> Also, update the "copy the pointer" logic to use WRITE_ONCE as 
> many/all the other drivers do, which required making a change in two 
> separate functions that write the xdp_prog variable in the ring.
> 
> The code here was modeled after the code in i40e/i40e_xdp_setup().
> 
> NOTE: Compile-tested only.

Giving samples/bpf/xdp1 a spin wouldn't hurt :P

Otherwise, this LGTM, shouldn't break anything:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> 
> CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> CC: Magnus Karlsson <magnus.karlsson@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
