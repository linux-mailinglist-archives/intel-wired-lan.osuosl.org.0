Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E5741C9DC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 18:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82A044218D;
	Wed, 29 Sep 2021 16:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ooHiO_QZXCA; Wed, 29 Sep 2021 16:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EEE94218B;
	Wed, 29 Sep 2021 16:12:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D897F1BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 16:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C497C83367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 16:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tdtrp_ILdTPI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 16:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2628083336
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 16:12:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225016799"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="225016799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 09:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="486978662"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 29 Sep 2021 09:12:22 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 09:12:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 09:12:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 09:12:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MeHmMrcWJ/36Qwyb+EAKC09eG6oed1dcNsdijLlkwhnQPTSZhPyzMyZjLnROVq+EzxhL0U5qa23qprVIKlu2i9ffTS4j7wz7H7KEnuVS+E2PtUCcsEPTko11E1bdwlSVW37A4uF9JfdoCyxgIKMJThQCXol6T2q8xfKppZoqLwgHFcfyYBHmxUkHBnYQYb7+Jr0+rV/3DqggbeYWcMkQIIPixfQFatwaV+sVbUIw6YEIcqjCrovLuAOdFFNqXl5dBNqLU1nq96WgNKo/o5XOtAhczrZgrst6YqUS/tmzwXvwuDFY2//13NtSVxEG9Y7bm9LrmAdSXJKbP5J/kZZIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=gRqwCYGveqjbbeuvP74AQyUcna1P2Oos1CwyAuA0+dA=;
 b=m/ihXIkwTXoJ9FWFXehW4Aiy77Bc4qUvAOIqdzFxJopvJTgYg6dW0jBJ6o5+uJyAL8YvI8e0YSjoOxOzBVG7PfZ1jiv4f1Z+nKKKQEUodnhWv+qXFM1XNNMQ8OGD4EqcdJPvEjuVDal3237aqtI9V/xT41/xTjHefZXHZraGt0ovDQnXJNtIMdhloNsFkfqKfHnXOVMSu/px7dr/ll+Ej19nlsb27BuUnJaK3B8ReRfzxbUuELrPuXcBlaog3IyS3EOj43c5W5SrOU8VhT80Z5JzwAvYNXmX84HjXy9OWoeQjRrLDj+g3Hyg+Erg1JsX9yfuIGn9r3pXvNGSV19OGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRqwCYGveqjbbeuvP74AQyUcna1P2Oos1CwyAuA0+dA=;
 b=dgEV0LkvIj1gpekNi1LUI4rz0IEgXYtFia40B2XIxeYQUxJzYChyfSGewlB7bWzRhVNBv3Xx813BUrq2M9wymWQNQpfjUhC/2c0vhyvAD4JqAcnVYEbPWkv1f4qCjFiGMt5ienjr3IkIhQYB+VGoqp46hWq4Rp3iG0xMRMJgO2E=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2544.namprd11.prod.outlook.com (2603:10b6:805:5d::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.13; Wed, 29 Sep
 2021 16:12:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4566.015; Wed, 29 Sep 2021
 16:12:19 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "yang.lee@linux.alibaba.com" <yang.lee@linux.alibaba.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [PATCH -next] intel: Simplify bool conversion
Thread-Index: AQHXtP8uZnwa1o12TUK8YCX0sGVS0qu7MLoA
Date: Wed, 29 Sep 2021 16:12:19 +0000
Message-ID: <572f388c1678cbd8354f8788fbb0243396ec76d9.camel@intel.com>
References: <1632898586-96655-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1632898586-96655-1-git-send-email-yang.lee@linux.alibaba.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7120b479-0d9a-4b2e-e9ad-08d98363e9a6
x-ms-traffictypediagnostic: SN6PR11MB2544:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB25442E4E5A9225DE7062C620C6A99@SN6PR11MB2544.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IAxDCyU2v7uAue4dK0rRBXXVrZOAb1h4LMug67DHhUTjBtG4Xkli6TFM0fHkf4ui+f8E/5kOkDWtWOLmlb3I36gvHPXPR5PFBqGq8wDIM+eD8Ycx43BURr5TqRPAV3zGJp4DoXFw4I64ONEpGtL9oW3mhB97xEorqtviAQuysQHr6j8x+0bU/uLCFtJnlris+X42ryVx97OmTFPc4AqQm/YCbx3M3WftiL5/A8x6hL7zYPkF9AMIdjvZrBAtwsKJANj9RUsjTMYhUy4qZLMooGiLoysricxj8MM3Ov22f+O3nQOJAe49vcxyqEwoObQ0lRAHBOoiwByswu1SgK0eZg57HgkqBothoR4afPFO9skqoFMVrhpjdYkPwvKllwvZh/PjLKai4u90hglkgvfC2BtwsxdKpmLXeTnNXra8rLeDIyD3z9Zt2j1GIQc3b721dezs1JyPi4SH7q1yvAx4OykJbVpsREPQ+FNzc05EGAGeBj8yr0DNeLRG+YjF39ee1Fk7vG/v1cTE6ctnT3itshGg133xP3CELpQhcdoeQWbUKQzNEPbpJrztKpBPTB0ICso1CvsJ1hy293t/wiRSNW3jq6yrfkZ/G8RxrZ6hu3goFOh8uEOAkva32mZ8PwSSzsQVWntG6MfAt8oer+mt2rtpTicCacjTNB7haemVDhc4uC+LUPR3ULx9JfK2I4fVo9NGC3sYgYFeJNx5xSP9Ozl2T8RIhsuVcdzuoPpf+i431P4wcjFC4myiHz+uPwj9Z8oskbi91So7ZZlbrYqr74ZuKz2CYqqcfifdARf2ULk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(6512007)(36756003)(8676002)(86362001)(2906002)(71200400001)(83380400001)(66476007)(66446008)(6486002)(66556008)(966005)(64756008)(122000001)(316002)(38100700002)(110136005)(54906003)(26005)(5660300002)(76116006)(508600001)(91956017)(66946007)(6506007)(38070700005)(2616005)(4326008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anFGaElQS0lFaklnK2pyY2dHOGg4UHBYS2oxRTV5ZjdmY3NQQndrRGJlRUh2?=
 =?utf-8?B?VmMzMFBkRGJyeDNOaXdIYXRUTEdMWVlRTS9NaHFmaVRzM1plcGZkanZ6QXBp?=
 =?utf-8?B?RTZPaVhVZzVnRmY5eXBNUEJueHBKSjlFVnBGcUx3U0dKOFd1MXphRUJkTk1n?=
 =?utf-8?B?Z3BZK3RwUHJHdWpSRnlPT1krN3liUXRGbzM3TTBtNVBodUZPRlBac0JHcmV3?=
 =?utf-8?B?aVo5eFIrc051aHhXZ3ptM2RTcU9walNvRFYrV0pxcVBBeklSR3U2RHYrWDhh?=
 =?utf-8?B?VjZ2MzA1NXJPQ1VJZ281d1N0ODBvTzNlM3gzWGRhNkQ3QmVCbVRBUjhheSth?=
 =?utf-8?B?OHRIL2tHZXpNbkdwdDd0QTFYanQvR0xvbXNnRWZlSU5hUFJoTU1nbC9uUVR6?=
 =?utf-8?B?akxhM3VqaXFpcWVTdEgraTk2SzRtSDIvVUlwK2tQVll1VEkyS3hlanB2VXg2?=
 =?utf-8?B?dGpOZTBzTHkvTWRvWXppbWZWWG1VaXE5YkpVNS9VVXdaZVo0QnlSZFE0RGNn?=
 =?utf-8?B?ZnBXS3p4SWp6YldnNkhLakx5ZndjZ09WTkVxMkR4NzJPRGk4eDVrakJIQkdD?=
 =?utf-8?B?OGdIT3pkaXJSMGlieFRrVTcvbU9EaTZFS0s0QWJ5Y2hpNU9weE43ME1YNFRR?=
 =?utf-8?B?UVpxMXgxTGRWcmZ4U2tNdnNadGxEYnljYVEvWjNtS2MxTEJTeHVhTUZKYTlV?=
 =?utf-8?B?YU5TYmk0Myt3VTVMbWdvcEtWdkxoVUIyUUhsUStpOXpMZnJCUVpUR1Z2R2hw?=
 =?utf-8?B?VitsSU4yNXlYVks1czFDZldRS25kV2h1cXRxdDZnVWM5SGp4OUtoZ0Z3dkJa?=
 =?utf-8?B?SkpHTGhWL1BOQzhzVk5ZOU5la2xKNVo0TU83UXM5QmN0bVRTS1p2MmRURko1?=
 =?utf-8?B?Rm9WMzM3RTF4ZS9aeDltU1ZybVRCdmNWSHc3T2lzTVEvUkZVSS9PcEl2cDl3?=
 =?utf-8?B?bFA2b2FraFVVR3dYb0h5eHVUdzVad2dxRmpjN0pEd1o2MUNCVDY5SVgwbEJw?=
 =?utf-8?B?VDhaOWZjMndYR1d0TVBmcytKUWovWVNoU2FNWUhjVmNMUmdkMER6NW1GTm80?=
 =?utf-8?B?aktzV3o3WWtDN3B0MkVVaUNYYmYxWTdCOVM0QzVyT09JK0RBVXNSb0EwM2Iy?=
 =?utf-8?B?eHRhOFNPanZXNVlvN1c2cVBXVldYcG9XSytOdW5La0EwREpVdHhpVng4VEQ4?=
 =?utf-8?B?c1UvdXFvN1lXT1p5UVhjOGIvMm5VTm1ydU4wK3hBcjMrcmt6T2hZNXRWYkpp?=
 =?utf-8?B?RCtxYW9kOHZ1Q3p0UnEwZWowZkNnNy9CblhIVllPM2FpQXhPY255TkxyL1ZU?=
 =?utf-8?B?QlZoZk4rTWk0WU1BSDBMUXNLTXJxRS9ISnhaL2RwY0lWZjFTbmVrVFdCRXZL?=
 =?utf-8?B?ZDJUYk9tcXNISk0weUVhcjh1RWdiZHc5Nmt5Tm9BRmhyc3BhNE1jb1c2cnYy?=
 =?utf-8?B?WGU3eVN0b1F4SU5Gdk1rMG0yd0RGZVpTTSs1cGVBSExGU0JKck10Q2tHNk5P?=
 =?utf-8?B?bGo5VDljalNtK1J3bUxpQWhaVmRrczJsRzdCWmo2dGJxdEkyclFFN00wQUo3?=
 =?utf-8?B?NEVFWXlLdDV5VGtKTnlTcmtOcjAycVdQcjlBV3lwcDJsSGUrUEp2WU5TclMz?=
 =?utf-8?B?ZEczWStpSXgxa2ttYmRKK3luT0UzZldwYmIwbTl4dGNNWjBwOEJvL00rM0to?=
 =?utf-8?B?YUc3Y2hBaWdwQXh1V0t2aW5nMXJnNFRtSnZwSS9ab1c4RDNkTWdYSTZaeDF1?=
 =?utf-8?B?TmFPV3BkSzVRVXArZ3RYRDNVSktzeW9IdUtQU3VZaFAwQ1FjTjM0MERjck9a?=
 =?utf-8?B?TzdBZ2x1UlBIc0gya0JzQT09?=
Content-ID: <D9FF39C523C9734489C47D8DB0BA7F4B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7120b479-0d9a-4b2e-e9ad-08d98363e9a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2021 16:12:19.3997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHWOWzObOMCjwdyAJn3AL9SLIXrD1LFrjGhrnAcm2f2GG4UxKaYGhf4/qb2RwXmbYNdFViKYK0PDWqa47iwqaSZ4oGAeFFtJzsO4HfcGSV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH -next] intel: Simplify bool conversion
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-09-29 at 14:56 +0800, Yang Li wrote:
> Fix the following coccicheck warning:
> ./drivers/net/ethernet/intel/i40e/i40e_xsk.c:229:35-40: WARNING:
> conversion to bool not needed here
> ./drivers/net/ethernet/intel/ice/ice_xsk.c:399:35-40: WARNING:
> conversion to bool not needed here
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Acked-by: Tony Nguyen <anthony.l.nguyen@intel.com>

This applies to patches that went through BPF[1] and aren't on the
Intel wired LAN yet. BPF - did you want to pick this up?

[1]
https://patchwork.kernel.org/project/netdevbpf/list/?series=550775&stat
e=*

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 6f85879..ea06e95 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -226,7 +226,7 @@ bool i40e_alloc_rx_buffers_zc(struct i40e_ring
> *rx_ring, u16 count)
>  	rx_desc->wb.qword1.status_error_len = 0;
>  	i40e_release_rx_desc(rx_ring, ntu);
>  
> -	return count == nb_buffs ? true : false;
> +	return count == nb_buffs;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c
> b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 7682eaa..35b6e81 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -396,7 +396,7 @@ bool ice_alloc_rx_bufs_zc(struct ice_ring
> *rx_ring, u16 count)
>  	rx_desc->wb.status_error0 = 0;
>  	ice_release_rx_desc(rx_ring, ntu);
>  
> -	return count == nb_buffs ? true : false;
> +	return count == nb_buffs;
>  }
>  
>  /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
