Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D971F1B6311
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 20:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A8998831B;
	Thu, 23 Apr 2020 18:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zWRx4LHYL7k9; Thu, 23 Apr 2020 18:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB4248851F;
	Thu, 23 Apr 2020 18:12:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D0151BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 18:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78D438838C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 18:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HuhBf7urnDzB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 18:12:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4CD78831B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 18:12:45 +0000 (UTC)
IronPort-SDR: CWQTSSMrPIlhVFO69U3qy3zdtSKWmGNV/i1sR+Nk7vVrTxDeXQHuHyP04+iEeO/aWVmIwKKzAy
 3G1t6aDE1OMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 11:12:45 -0700
IronPort-SDR: f1veD+drB02GU9zu5pbBRJTpdVfCsGlEXcqdLMsqiTWBkazsDEYLAQD3tVPbKmQrwlK/75y9K7
 yWTLrY9oParg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="457594639"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 23 Apr 2020 11:12:45 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 11:12:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Apr 2020 11:12:13 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 23 Apr 2020 11:12:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 23 Apr 2020 11:12:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kdrxJR0aDJjEim2Wa+V51W2xqmNnebAQaHuV2O7xZBEZmi1wutxdnmtQ+p4YtM2rsCOOOwF3GUCIe8iQhRuwBvsj1L+e5Ipx0Wo9M/50YfApIG8VlfIipJhDtgceRumRjXXgI6sOcWZ9LzOIpkRNdFyJCRK5YvUPzbvA1awvdWxJsLDKV9jKwyShVyYpOv93U9SQOad8MQiEJExNG+gT59BAVzbpQnJc88U6bEXIWBQ6GjxKUj56AOMWwMJCTH+qvLPb3/XxJFdpKoWwbeHu/+qr5bHTYJnJNzvw/KCNLpHUgaXWb7/YInmpn/6uCuqkTcJjFVT/lNtMWtIdNIZjjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qh2wqONXrqOaoRj15+/k4yHkjGWq1VuQV/KDGAkuESE=;
 b=mWrxAwRfwjWulkH0pwGuo3jlPm0NUp4CuZCIsaqUxAOZSSj3w6+JJB4P3lraXTq3UCfI716pcEQTtP9ycV0Ejns0xxp1SCmnVS21D8n0/JXGmFhg7P6T0yF4lheiYO7PZXh0wzy9eHyGtTlRjxeZXLTdlzGoIsDLzUV3lAUKvaU8pBUxp2itbXagtpPfo20pABx3sefpSYLqLpYPzfN51Zih/fqzLjl/bOvVESHIi5qWKieUF6Iy+Q7a+kcPLnF3ZgOm/aPDeCinWxCG8VCcBzmWWhCBsCuIJy0rHbF9Fp4VN+sWgQGpQmLU7XXkDMRnGtM/HChD2zaK7VT95KFa2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qh2wqONXrqOaoRj15+/k4yHkjGWq1VuQV/KDGAkuESE=;
 b=i0ZWHCK6s6L1QF8XaQIOvX1dHx3x0JQ0NmDFJ2gvv7jrbXf/5iHXBXbXfZCV1Go3udCuHREdo7kIjhC6HKhHAAPs5nZames0pD0Zk0EMFL81vXDphZMFcfxDF2EPnx3DyHx6rX9wDWw43DA9nE6zBAna7hB4sjaxpi1ARzBiY2E=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3833.namprd11.prod.outlook.com (2603:10b6:5:144::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Thu, 23 Apr 2020 18:12:05 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 18:12:05 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/5] igc: Remove duplicated IGC_RXPBS
 macro
Thread-Index: AQHWDSCOn/ZXvx5uaEKXwVen3/ZRgKiHGv3A
Date: Thu, 23 Apr 2020 18:12:05 +0000
Message-ID: <DM6PR11MB289041C9760BB6F1AFC9ADBBBCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
 <20200407210711.24371-2-andre.guedes@intel.com>
In-Reply-To: <20200407210711.24371-2-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [134.134.136.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 935dd4d3-e4cd-44ef-8494-08d7e7b1d461
x-ms-traffictypediagnostic: DM6PR11MB3833:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3833B715402EB61A64427929BCD30@DM6PR11MB3833.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(39860400002)(396003)(366004)(376002)(346002)(136003)(478600001)(81156014)(86362001)(8676002)(4744005)(76116006)(55016002)(5660300002)(9686003)(186003)(66946007)(66476007)(66446008)(64756008)(66556008)(71200400001)(33656002)(110136005)(2906002)(7696005)(52536014)(316002)(26005)(53546011)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: At6M8wiATPcOAwoLVTFFB093NppMLY153wb0LqM+88M91nWfCJdmK9aYM/oAXydpjWyP07HkPyKfZ/0xnbwOOO3DiqklNYsjMHHmk0ZfM8XARkdrI2Gs5HfR8Q/i6NA1vjyAeN726gmRaryT7smkUBUr+UYk/38pFva2vsIOjALLG2Hr7R3gmt15nzNBMxI7WCYW2nds7saydLlBPNM/Z39u1Sg0lie7rJ8RBu23djrum7wFF+V9SmeM1hWqIbqFQx/SfpN6q0ttjfRZXf2PXsFrj3XJV+9JSV5hShnDgDvezaCNmpEs/xKVRXifpEauy1sQz14vuB3Mewfg1i1PHN6dS/rSAcCcitblnzBQudGzimbW+UB3pTItaPZEJCo7YzZY8X5sEj7bZHn2GXkWqWe8SFtQaImwF5oBfyXox+5MQPHeGzeemezRyjr3Smi+
x-ms-exchange-antispam-messagedata: yzv5NupqrKvvA5EX6PZjNn2bf6stG09biZZdXoOzL5MU4RO9P4Syq4+Z5WXQ1BUqoA7jjkjK52S4YVoDvMdB3kMgpUcQ43n4I/wKRPwsDvNStf4mo3AspgdMkNXoRWyAgUFiOvTyr5NOFpFYbCbwSw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 935dd4d3-e4cd-44ef-8494-08d7e7b1d461
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 18:12:05.3303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kr88Vd4BWTBGd1zdF8ZTmuZobK6RAbi7e07mufNRjFXAV+fVhQH154FCouybDUnjVWT3FIkNHC/J3Yvhcqi+pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3833
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/5] igc: Remove duplicated IGC_RXPBS
 macro
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Tuesday, April 7, 2020 2:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/5] igc: Remove duplicated IGC_RXPBS
> macro
> 
> This patch remove the IGC_RXPBS macro defined in line 233 since it is
> already defined in line 18 with the exactly same value.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_regs.h | 2 --
>  1 file changed, 2 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
