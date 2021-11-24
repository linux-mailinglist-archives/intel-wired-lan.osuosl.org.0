Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFF845BE27
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 13:42:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 859D2615F2;
	Wed, 24 Nov 2021 12:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rI0KHtlwwEWO; Wed, 24 Nov 2021 12:42:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BA2160618;
	Wed, 24 Nov 2021 12:42:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1811BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 842874040E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:42:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S82ZuKi9l-Pm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 12:42:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B72F0401C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:42:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="259155598"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="259155598"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 04:42:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="740977838"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 24 Nov 2021 04:42:07 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 04:42:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 04:42:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 04:42:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 04:42:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fdvE4nnA537VqpzMX3Ss/a7YEsPUsZ793iR7qn14sqIf6JciJtPdb2yITl7X7WoM0i5XRU9CQ5llFzNlbcA8ZFDRM4RAYf20ueqx4FVlXNrbqX4c0OBjBpZmtTJisypp+mC/IB0L/s0gwdPhPczttt5BICphxqKrAsdq0JpuoAPZfSNgCATsS/xYcIDFfM4Yn/02MTGwUQx3uM3Xsc/3yHDIzGFHvO9XTmXR2V9dxlPT7n+o5YHscQrKEaLfEwcqD1JzgQMRrIEKlMisBboaur/lJdituVIYXokhAMKhsC+eGWrZVKFCuj8dQOtOV1mazAYI1nmatvdV7ceQKco0JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/2rZHXJVC9QloiohtUN6OZQzfJXSJ0AKoeO4Wf6WN9E=;
 b=HfTayD9xQXF5bwSo/ZSwsZSR6YNAOvvoz5K8eM0xDmicOqNMPrLYD92yYfzZIS6N4ovWy9G4zIVz8Zz+07lfjIT1Dp51pGcSBWalQhva1l7Wox4PM1EZOWKWL2UiOan4nU7Xz+fubRzzS9yrinvgS+wXbcLchj5V+PdkVQ6F8vCkbOrFY9AxuWIfFuIePQ1yBnkc2rypOEDFqZ1+fsi3fT75zZMKzN4vyMWoSVgpQGANuRAwcgzmyOb/U0aI0dvFQnGX4YBEFF2gawQPr6s45sPB42GYRr4UVsBaM1zqQl61qc23pH2RyJcdy2945Qn7rnh6uX6wiDJQ8RDN27msSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/2rZHXJVC9QloiohtUN6OZQzfJXSJ0AKoeO4Wf6WN9E=;
 b=RWh7KH0WvWi953yRomgh6xGIHsxhAt2vkAIwhctRs9r8VTFf431nmtqg/gWhDMjQnF9lrx/CIGYpccFsvR6rPIrYhV5sRI/db1CQRRo18NjI0oKgiIk8U5RGtySHdoR0qjbppUjlZcxXAgX4A8xQo8cu5G0UHsuKSLMuL8H0wv0=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2614.namprd11.prod.outlook.com (2603:10b6:a02:cc::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Wed, 24 Nov
 2021 12:42:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 12:42:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove unused
 ICE_FLOW_SEG_HDRS_L2_MASK
Thread-Index: AQHX3A6lYueojbewyE69DeN4iR7LIqwSqSJQ
Date: Wed, 24 Nov 2021 12:42:05 +0000
Message-ID: <BYAPR11MB33679AA7BE742C57FB46F8FCFC619@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211117235505.70783-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20211117235505.70783-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9c997f1-5e1d-4efb-8f57-08d9af47d238
x-ms-traffictypediagnostic: BYAPR11MB2614:
x-microsoft-antispam-prvs: <BYAPR11MB26148202A084649F02EA9B6EFC619@BYAPR11MB2614.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Crp8FHqey50xnVk4BgjipzTvj6iWs7vN+aX4N9e9ZlcfQe2azZCFmlUWSswSZWtCBP0Seccw3/mB46MDNfC9WyEYM4/Pbp4umlIadJ9QuMPmvkZs6uyqKebIsH6WGSvULho+dWT0g2tTuDPSHCyhY+0yAAtlddRVAfWwUnfFq90lkSRJSZgJ4Qyj4ucPeMXTtQvDeXfKGrrjmlxaTnQ4Fn/aiicstm8PwCUWJu8QCvcCRyutqn19WxlE36QRyqvmUX/j+8lsjvYUtsohvjVxfqrLM2NNMStMSnz2P13ViMwcvdYZ562ArYqCDN+NZRfL09ky5KfBfYgI0i70dtPyvELy+99WANGy8IkCNVBUsnzUQXN6GIXxoNDigrNb4GfDDNSXoyuKcq9V5VkNgjpOlXx+t9YI0jenIYsFvjdJ043qbB9pHIKBKHAUOiHU77vxcHfm4i0VWBo3uwEzea6IAD8mrIN+1xWgW2/BLY8Axv5eM3gdyeyogCO/HJ/tltRv11QH5uoLZh9JxH4xJ7CmQ4+iRCis8o6NSmw2HHlkXA5FprjQxMu/IvwIndu++Hm5Exi7S1AulemPXKKIFec3bp2Wt+MdUO3Yv/gfxJ4B+AUI+4qM2ZNVnQTEkAYqJ4k3Qjm8wH7da7MowuQXvpu+I+LHBnBK266Cn1NkRjQx8GH2AX6GTC6w3LhkLl0ewGjJfv/EyihVYIE6KcHIDxJ37w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(4744005)(76116006)(7696005)(38100700002)(26005)(508600001)(122000001)(110136005)(316002)(55016003)(66556008)(52536014)(186003)(66446008)(86362001)(83380400001)(66946007)(64756008)(2906002)(66476007)(71200400001)(82960400001)(33656002)(6506007)(38070700005)(8936002)(5660300002)(53546011)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DGtq05AH/ss3lmovN0MIOUWHWp9kk18es2Q6PtLqc/JdHNSAAA/hY92mVeeH?=
 =?us-ascii?Q?mfBCXxS2yViJzs+ArJgcKAvINzz5BuIgOFg413pzI6+RG+D9aIQtZ4RBEnvK?=
 =?us-ascii?Q?q6s9Wzzuv+OiKK3bq3Mug77Wpu1zNAMviC7t8BHsU9m3RwpTeSlm20NQ0oP8?=
 =?us-ascii?Q?pBl1UOseUXXjASlaIDX3NrH1XzVoztj2O51iD4lopWn5e787xTrq2cKw7JYy?=
 =?us-ascii?Q?1VSdIH24skPgCZ+Ijjs4jAxuYnhQUFCgzYHH6Y5IO98XhpvQ1gQjrXGU0VX3?=
 =?us-ascii?Q?07PcvEXxLcQeXUwTXQaa+1wS+gOxOC42OadDzL8G/YhUanVRKFAsn4nYrXIF?=
 =?us-ascii?Q?wfqBpt7DDYCSTpiNvqUd/L7DVmkEraUkE/CvM/OmY6Zw0vqGpN3XA+KqMcmB?=
 =?us-ascii?Q?Kd+WQ7yFgbOjLiPmmP4LXjlzTaPccNoFrcogBBCeMQmJsWJm9+kXgj0hOiZk?=
 =?us-ascii?Q?nKQhwf+oti5wod3Ah3ETBxJetn8WzNpzAw0I6fhHeRWkB8N77iaB0GSnVdRJ?=
 =?us-ascii?Q?SkNoK1whxXMr1+McIzsVCcjIEhmQ6QFGOS86KE34PJzuHHlHQopUrzn8UlF2?=
 =?us-ascii?Q?hwXY9bDnCI5oHxGAQxk6ly95QhUAe+RTcbjABYOOjzny3LjIOmEcjceM3TXA?=
 =?us-ascii?Q?Xp5TDYXcNtmqumFDZ4CJfW558DYcnHyjq2VUAR8u0D3g/rkVVNtvtNs+yZAP?=
 =?us-ascii?Q?yFlvIPJJX4PNdrhRwaZ1B9cJn3Tqq/pGz79UKRmyuDnbp5CSRR562yEMrZIW?=
 =?us-ascii?Q?s+n2LGKLj0MZJYl7EL5t+fp+NNf348b7ow/s5X4s+N7xxMP85pCPHvk63sqo?=
 =?us-ascii?Q?m4JKBC/Qq/xxSTJpku156szJKF6gXnoRg1+xMLQ2v1+pQi+S3qApK2Nl/Hqx?=
 =?us-ascii?Q?UX6Ui8wWTR+DJe/jegciLqqdqGIo6LRA8akjWst72+9TIUyi8RzsEepscsIC?=
 =?us-ascii?Q?Sn0jFwNuyfhYecthLYlf/lThKEIYIDnen6bwLCnmeSMFvcKNWN5bBz+KYvJC?=
 =?us-ascii?Q?0143oM8iudeltzl9ehwM805/BG664ktrw2Xvyv7noywNlYvmjJ5MGvu5hIyT?=
 =?us-ascii?Q?XJiDFEPL0KePiTNHctJ6FbTcl5NN93iDOlHarRIjoeD5cZM2/4bA8jhV8UB9?=
 =?us-ascii?Q?lCfgEkDre5EQK4uZDcRrMHJkXixqv4llN8+uwCexbx+Sn39nwTHdjuW+9+B9?=
 =?us-ascii?Q?cu+O8AHD6on+o2408PXTUQpF0ll3g1YqZjaD6W78jNx8/DRKeyVZF+H2j95P?=
 =?us-ascii?Q?3EK+jBnplYmuhoCb2+oUcLFeLBF2dTW8/IFZlWWPs0mdq+5AWdYieLyR/RfJ?=
 =?us-ascii?Q?e5E5vU7fduoFAdCyd2etmCBKkPXTweLT6kpCxYw9sLhJbwhYTVKh0MpvILRl?=
 =?us-ascii?Q?IX9d2m+eXuxaSP2UTCl9qO2rWsnn+/MLD5dPKaQCVAihCUJs01qpTOpNfuQJ?=
 =?us-ascii?Q?Rn2vsZSGZaE4QA/RuL1d8BoqTCCXwqStNXhoeHXZl7YWLWyDGmoXjkckIAm7?=
 =?us-ascii?Q?JqRFtaRbcp5e8czy7SbEP5f1ZTsiXHoSOk/jtC+xnWLd3OfhjCjTwoSuCkAW?=
 =?us-ascii?Q?XSiKuuHFHKE0V5W5HbZEzeT9rOjtaTERpcnVviUmxHMjaxpO3MGFZ8pCFMmc?=
 =?us-ascii?Q?rtOtnawlMWHKjANlNynhY5g=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c997f1-5e1d-4efb-8f57-08d9af47d238
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 12:42:05.2467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DrveCyXe8fxzjIApS7Jy4BBjYn0kOX4DX0kl3p7ljsjTHdLVni9ldnsFvy3wq8vhPhgcU5/NU1KECtuj8KrD1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2614
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove unused
 ICE_FLOW_SEG_HDRS_L2_MASK
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, November 18, 2021 5:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove unused
> ICE_FLOW_SEG_HDRS_L2_MASK
> 
> Remove the unused define ICE_FLOW_SEG_HDRS_L2_MASK.
> 
> Reported-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2: Reword title and description to be imperative
> 
>  drivers/net/ethernet/intel/ice/ice_flow.c | 2 --
>  1 file changed, 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
