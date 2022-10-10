Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D1B5F9D23
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Oct 2022 12:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FBC160E16;
	Mon, 10 Oct 2022 10:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FBC160E16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665399308;
	bh=q+hGRhCvrsDve59KSw2i7FrU5gG7+CNxHGlYvuojEQk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YlG0uvV/HCzYsgD6Nzv2Ci0VLe0FMAA1tYaYA72aFOCAtynycbW/a09jKC7SyVUSJ
	 CdLszO6yDqYI7EiABD6FUn6BDbhV0WxKPRMQ2AK4Z3CQnijLngWjjWMlyfbkjl3hJc
	 pibo1sYGjK5H6mRyqN73CLeA0YvlSQMT1Q+kmCy0svnGdrB6il7Pxe/B9l/MbIuWFC
	 7SvDHtHLPNeoSze5B8DuPXdBRVoN0ipFVCBP5j4XEnV7fn5d1cADjcEIKjuTKxjNVG
	 7VZWPF7nI5f4jkNJ9nySxk/i0VOE5gz32u7lWD5y8Th/93EGUMxtK/mGEiMcbOpvEg
	 /e2n94JDfLNrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IIaXDL-VWQsc; Mon, 10 Oct 2022 10:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AF4A60D74;
	Mon, 10 Oct 2022 10:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AF4A60D74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94E431BF406
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Oct 2022 10:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C82D408F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Oct 2022 10:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C82D408F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xhyM_nRyrEuZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Oct 2022 10:55:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81659408E0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81659408E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Oct 2022 10:55:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="301806988"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="301806988"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 03:55:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="954874590"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="954874590"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2022 03:55:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 03:55:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 03:55:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 03:55:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQHOh/fciON27I4izL3zPRe/yV7sl+OHFK7fgrViedSEQsY/TAdxt3Y+7L3jHcy4uuQ0ZAf9xraZQPoKF0122k7kmZ+Haa+YngWMRJ8FBwK7RB8wDrxEfUuiJrOS8MHF9ajSmh90R2qJ6ZAQ6Mi/d8YrN8FQVaWcudUD+fus3iPB8cYOtb5mfJE6DUD2i3YgNode9JUTrRwCh5PRearvYmbhtbHkOH0IauBAe8tCLz/c1gFlF2BsK2Bf8pY0po2olb47exQC4IMWb68nnMz5PuXEqvHh21CorfaX0CAISjBRZRtrgNQCl0KVe0KZLIctuY45cD8h7JmxMW5kt6rUSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbN7KU87/8mSf2ji1N15hA7u6oEXpSRr8wnSHNR+ykQ=;
 b=lkmWhlEIFmI299nWla4NldjLtO2PqvfZJbJHwtJOClplaqEukvDECY78878tyrMKFmLS2azsfDXWQsmSUiofZJz91eQp0+GDXe6V4iYLGIv88WN3Y5ZllZd/8xb/E+WMs90vewpMfL4DlH6QTqa+1O321vXRpkXhIb75Ytijbb3R8aFPg4QO9dAYzB3GkRdaI6RbpRC6loKmC7ZPhVfs8ShbS/9pa7Nu5BJKv4w1OwnrAgc2BzWZsipB7dRbH9jmqypIxCZ2J8UDYtb2x7qER7fdihBKt+0YR55LZWQMC76YqpRxbjPt9hP1RV3bcJbI9e543L+cLx/sKJPzbXpv4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Mon, 10 Oct
 2022 10:54:58 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead%6]) with mapi id 15.20.5676.028; Mon, 10 Oct 2022
 10:54:58 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove local variable
Thread-Index: AQHY04vur9M8x1dKI0WoB3FhSRHXB64HhjGA
Date: Mon, 10 Oct 2022 10:54:58 +0000
Message-ID: <BYAPR11MB3367CA6F0118432D5A6B07F9FC209@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220928224210.813061-1-anirudh.venkataramanan@intel.com>
In-Reply-To: <20220928224210.813061-1-anirudh.venkataramanan@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ0PR11MB5165:EE_
x-ms-office365-filtering-correlation-id: e8e76a49-fa59-44c2-957a-08daaaaddfae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I9B8FwA5rDU4SEGAUjKITyqztWxN4SuYTicDnuOVQPvX1fPCBSlkUxfpQxvoZDRL48z0h5lasgOwiZJNksNAARZSAFbaVSq2j0RiKpLX9NaamVB7jBJ96MxU9LOTEt9wv3AKdUfsVIUtLJODsyYVdcZerR8xzNJGfFlRJntC3MRgHwXWjGpyZw2OnZO5D3Yph+bg93QArAquqv+yb/OMEAYOxhRMos3Py/4D8ifGMk81vAg5knMsddHQsfOtQgac6v0R6tQzZiWEecrVZ6GD+rXatLkVtnFGZ51m8F3r9XM4ZzLQhP1cyzEANVWboDSrTOONe+up5EVaDzDHUoL61LopYSZnNU4rvdDec19Y5hcaKnC9+NSHUXWRc7aVlFxfOeSZdtLy6ZgE3AgBySU/24wQto7tLFJbAbA/jW0IUdOYXiN7Iq/7VDQqBB7/wyGrkhBqMpxUJ64xAmDqTocrpOhyyHJkBa1gRswBV+2aP2yIKvMydkmIDgOCgd8WfX3K7+xMc1/iXvVAPnGzJGaqn8Ur01eL4zLOcLEyGpScm7l8jDL77vhqTKwDsecSkD6kBMtQTO0wyIbPKAOtvK0kJlsk7hrD3GtE9XeXjiU+GolVazWJnsCenQO4DEmEQI9bZ2L7jvUEdvuizWkhiMu2i0nTbpPybP9x7vGpu3ZIq1rJBsk8JdGsMgStAtnJpTqi3GbMIkA1+oV1notutLBDP8h4uj4CK/+CQhjgXqm/XBUEyVV9IYxzztcNImYOomUnSV+oD//ssUxvnfDNomLsWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199015)(86362001)(122000001)(33656002)(38070700005)(38100700002)(82960400001)(66556008)(66476007)(66946007)(71200400001)(64756008)(66446008)(8676002)(76116006)(316002)(110136005)(2906002)(55016003)(8936002)(41300700001)(52536014)(5660300002)(4744005)(186003)(83380400001)(478600001)(9686003)(6506007)(26005)(55236004)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hl6Npca/HqzE5oSZCq9NyDnWioapy/Ho09RWC6C4T5/Err9I2zQSIUcDQrXl?=
 =?us-ascii?Q?dQbs3ci8wGa01J+tbDqMa9pJZpv+C8LegIDvRDzq/oaNbGCJuerMiByWR4vf?=
 =?us-ascii?Q?/fqo9RvERzyez+Wb53sGfBgS6grfsaqEiWlVepMRRBs0XwqC/DZEQVmQynmJ?=
 =?us-ascii?Q?ZyNiCOxHpOXIoemlhxCRZUOeJZXvGBXEU+HL6e+0kBDI2CHLsqvBy1vYVdOm?=
 =?us-ascii?Q?k/Ww6F5BNal7+R+/6EPvopXmjZ3OzD86yfDRUOuoH5WxbTO84uiX3SxlNHmB?=
 =?us-ascii?Q?Wdpq8U4T0ODgzYi24RiVjudeoqKFV4E/ME3I+b4o8CqLXEA8wiXElZm7qGgf?=
 =?us-ascii?Q?/RBRT4S3HXmawTAYpLqc4A3oU2vjwnzEYTL/DD8c0wK3Gkz4YHsN3UCjRW4f?=
 =?us-ascii?Q?OkAEJQcHzR60ObZOeDbHk3x1RIj1HrATh6xVDGA3rQZ8JCU4HgN4A5sEQWez?=
 =?us-ascii?Q?CRrrBAZjTqgk/Xo5aiy8kyfPkI2DU2kZss0R8pIpNwpDpEbr/u8X2qVIwg9x?=
 =?us-ascii?Q?sdOZ+yaWmFwAEo9k2Vp2sG+cWedUXG8PxwBARekz9UPZ/aW86fwq0L3k/spe?=
 =?us-ascii?Q?ZZqu46/BTE7AiQpNh4Mv1R3RBiuSC1lZNG0/0HnSmw5WUsIXYqtsuqpZOtao?=
 =?us-ascii?Q?GARtnrgW4R275wsxSzE+kl1lDWr1ooAXTbz+jLjvrfT9GVA1fGdBiaG3l12h?=
 =?us-ascii?Q?6oJyf0MK83Uli5/hOPYe0GimfGYlO8B/humL6VbtVzMy8JxbcBZvRqkkS68u?=
 =?us-ascii?Q?PvJU8JIhXic2X6IQXxmS/4F9kVT0nmdaqM4+adlzE/7pVTKfXdsY+3VR9bnI?=
 =?us-ascii?Q?AuyULr3eDIEU37nh5W/8tE9DS8vn8a7/ysUXnnRbVu/ypIVhzsulcW+9MiwF?=
 =?us-ascii?Q?92UQo0L6yEGl8cNDGdthfJbPf+Zhff0TRWchaclgrX3ELyDyQWOKG2q50rHo?=
 =?us-ascii?Q?8Bwl5vzk3bXj8q69CNP//CtfT88ZeRSv9PEgbhJL1VM5NjObmiSqdvAbjbfI?=
 =?us-ascii?Q?hKLlYKzlKLXRRZg+MCnrSZm6AkygWp343yd8rn5Hk6GcXnJ2T1xP13rgkc+e?=
 =?us-ascii?Q?r09OaZjTTQk3u81A/dBYRjuETiRqVjISDkNyjRkGWcTZumg31SgfKctwEHIC?=
 =?us-ascii?Q?WXWZI3vODBWIvF9RSatQbw1SVHBjSAEFkxAYriSzr6Ey0scZqNyZnc5nhQRl?=
 =?us-ascii?Q?wz2yL8VycYvaG4BlscUGUQKijEy4D0SP0+MV5eSUvcuFFNSS1gcr8Lk6cRHb?=
 =?us-ascii?Q?PQojmn3pWOHW5VRqHqgN11zV7vkuIrY02a9w2x9maixKwtdJKk8n1jfsPhjx?=
 =?us-ascii?Q?qlwF/vGHNFVDAkr2Oi0DNzzs0NHUwnnVB8bayri/b/eItMtIy2Z7GOPr2y+W?=
 =?us-ascii?Q?G9lGCQRBNEVVyMbth1kQwO3hePF90YmeTkXeCrJN0ZeJkbZ861OvW2uPgyxI?=
 =?us-ascii?Q?Vw+lXBOtK3erQKQcbh16PbEFcGnCclLCuKQWdHgO2Onuzkhahg7gkeQCEKFi?=
 =?us-ascii?Q?005vAEnPMxvLEmAYcDR/6WpJB/W19sPQBGhQlZt2QE+/t0OWaf7rJ8H8OEvx?=
 =?us-ascii?Q?TJrdTRw1kORHd7kJhYoXwzTSGkfFkgXeZlgZMeGe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e76a49-fa59-44c2-957a-08daaaaddfae
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2022 10:54:58.5015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uH99tU9vWWbrtMNvJ2zEmPXkmW98f4a76cRQV6gEfbReDBNQ63UrZTp2u0rLry3D8+ncaxWOuOTZrq376RWSqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665399301; x=1696935301;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c7+wuiYW3NlqG45K8i0HJHU0CXsVCZqeCxTzZUkoYfE=;
 b=RRi81N7cN00356KKhQlb+G0aVP5nPVQAkycn50LIy4PumEvrgFpA9y+z
 ejkahKgSIpBNVlAfDHN8wx9KlFQowvrHKhwXW2jzQwHWNuRkwd6y6bklg
 EBKeXss+VozGQ7QST49X0nMTumQzGyh+RBN1jWyu/jaeZwM3tnl+Bq4vL
 rbqoHIWDMkzWGehGcqMarDAXBKTu78W3MNxnwnpDtprEfUOGiwueCpJkz
 aJp9/21MufAFInVmD5XctT1eM5s8bPb0Ms9t8BSQKDXFkvEPXABd+kuVw
 PZ+CfKx+IVuYES9RsPymOdu4zT+qMF3SrIsmfjgl2oq2VUy9v3yUw04WZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RRi81N7c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove local variable
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anirudh Venkataramanan
> Sent: Thursday, September 29, 2022 4:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove local variable
> 
> Remove local variable "match" and directly return evaluated conditional
> instead.
> 
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
