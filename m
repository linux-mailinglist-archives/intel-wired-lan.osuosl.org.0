Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA9E4BA807
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 19:20:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B43180A59;
	Thu, 17 Feb 2022 18:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uq_PqFowicI6; Thu, 17 Feb 2022 18:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16B2180A06;
	Thu, 17 Feb 2022 18:20:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECC9D1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 18:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D979680A06
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 18:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eEaq5DG1Eqvl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 18:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FEA380A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 18:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645122006; x=1676658006;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/6AP5zoYSv2mMMeo77YDhbvLv+NFIV7fYWW16NCB4zg=;
 b=QkLz5efYGLKITR3g9dATWHKM+d7hbHMhh8puI8b8nbzlX96qL3e9GehV
 5jKmQknbo3R/c6KtbyVeIaJ6DkDMDM78KRx6gVCZvnWhwUa34tvbaONKd
 Ya+mcsNKcIV2SyCfjehQbjCCCVuaJ0Y6xsDzOk7pWkgJ54L4AN+JcjPZ/
 8kPOm72CMqD+EAQXrlRCaJIC/dnrxPBkfoe/4qB+siL7H8Vw9Hg3dAr5R
 ZyDFRDbhAUc7XiCAj6AEA173UCN+YaKTkKu5+dGE7Poi612s3UvAx2+T0
 AgnXHi2v64uLHPV9G9pJ832tGX3mHC+lFk/tvz1XRcuxaQdMJhwHrmGhz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="234472300"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="234472300"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="589630573"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 17 Feb 2022 10:20:05 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 17 Feb 2022 10:20:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 17 Feb 2022 10:20:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 17 Feb 2022 10:20:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hWPbWFezXXKW6Q0nzybZdbNL03+dqiEl4CWSuSoKE52VCr+jGIQ5Y/FbeUow8dnxoh0DY1qNo8doj2wkmBwBMqWM45ADw94asStlQtBbybnsXT+dT4nDXQL2UGmWsUnfgc5fukHINq26r5RQchV7CR81QRWRg5nmyEeqBk4zM0bAriCGTcYMGpx7iSu4FJzOIcIJmjvjW+Yq2D9to0VlimTuMJv8TYrsrYGS43kMaRQq/gm3hmsTniwyLL2iC+pFQPZarKfTqoiUj1daM0mWBAILu7KS6aP5TKw0V64nHu6cmLJsNxuCnixzuSTgBY9Uh2wr4DROhezxy5kX5LJJQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6AP5zoYSv2mMMeo77YDhbvLv+NFIV7fYWW16NCB4zg=;
 b=BrYQXWOy+lWf7vVQgvegaHbIo5T/nB6ErlTXZZFzlSKM6op94sW8Qt+InNne5cPXYgUUss5G2JuD6aWCE4RUbrYLDqx7bf0cKwAgtgMZpI7ryOfXEXEVZ6c+PyJwOwKru5uQuH/k4+htePPHYj4SJRzGGmQyrVGvds6GGkor7b5XZgUM81VlPPlHChqmgrsOZNBUKL8iIdQ/LzISgcL/v2y6QoUjm6/s/Zqq2umfCxPSulXbAh9qtzfO3Zhpxq/+an9Br3RDNI9JeZgDe/WdX7Ik2Xw7lSfV576OlZxmzKe5eWpcXtkzFlNaN5j0eDP9m7FetFHuAAb5CZDCpy9pHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14; Thu, 17 Feb
 2022 18:20:03 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd9e:6244:4757:615a%9]) with mapi id 15.20.4995.015; Thu, 17 Feb 2022
 18:20:03 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due to
 PF error responses
Thread-Index: AQHYI5iK777Pa9gdY0aGfcBeBbZW2ayX/18AgAAPBLA=
Date: Thu, 17 Feb 2022 18:20:03 +0000
Message-ID: <CO1PR11MB508942C5C881BB130EF6A8BFD6369@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220217005136.75627-1-jacob.e.keller@intel.com>
 <20220217005136.75627-3-jacob.e.keller@intel.com>
 <043ae533aa1225387da24e35578da76029be08cd.camel@intel.com>
In-Reply-To: <043ae533aa1225387da24e35578da76029be08cd.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97ba07d6-6315-40e0-9735-08d9f2421dde
x-ms-traffictypediagnostic: CO6PR11MB5636:EE_
x-microsoft-antispam-prvs: <CO6PR11MB5636879FF8CF8E98CF4A019AD6369@CO6PR11MB5636.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EAnsJ6i+ZxySORGqp3EF5WbtEmNjUmxCLLNdrohxG8u3O2T/xIIthq/Znpp0npNy2VA6QBjal7nnDf0WyIZm5FBqrppBlN5yjqhjMiNNfZl0UONkKN6HFm3zuBGJswGjCVMDmTkVmjkUbi5j5jb5pZWbGxB3i8A9jRk6gYPDFeAjBZMt4N7Tj8ycCWsqnxRnZZBQsOsl9d3XiMYllKN8ovxcY8afClU0tqLeZN2uTxlb/iJhoUY3SGGspcnmruVWBrUoxuVHfa+VTnXJOXfGK09GEt28yQKdedc9a/b/B9D1NSic6lUcIHLDujHhvTzG1jxhUKogt7NwcqPb6vUE+QlWJ3/O15I9Fnm2wYEapNBJ5P7clwC9wclIAW4lQXW1AfwVPcW3vfefEtmVkc/pVQsKfU3zkt7M7OLEX2vRb1KFjOxkMfsZXcGTKpMJGYhK57I0x3d/nZrOaqs6d/281bER6D7AEoITqxQzivRlQIxJBfuXg5vWcWeFNy9uV8buVliwe/XkkcaOJzL0IkmD6Bqa6TDr/M4UKaM2T4iIP807UxS9t7/lwTpeA9IOb0Xm7inYwuwMA133H6xLxffItDN0uPQM2j/KbADdg4USfH5VIl6pCaeF9KDNh4slamH2ZDMta2b395Se0G+M7PX07UB8BDLRUvonLhmEY3UtBzORQa+FgYU4L2O0KAD77YMR8Trk7rFCCI89WAlY4wxwDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(5660300002)(71200400001)(8936002)(52536014)(83380400001)(2906002)(26005)(186003)(86362001)(316002)(6506007)(9686003)(7696005)(508600001)(38070700005)(110136005)(82960400001)(38100700002)(55016003)(122000001)(64756008)(8676002)(53546011)(76116006)(66476007)(66946007)(66446008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0wwc1JCb2k0NDIvdFhUMHJDSyt5Q090VStkN2RRTHdPVEpZVFFZRlRFN2ZR?=
 =?utf-8?B?L2VNcURZc3duV3VkZXQwK3JNVEoxaEFrZ0tJcjhJS3MxOERsMDFNbzFSeHYz?=
 =?utf-8?B?SitXZ2tiMkRGeTFWZGhuSlhkWWV5WWZhK3pSVmpobzA3cC8xWlZmeEVIOUlV?=
 =?utf-8?B?TDFWcE5XTU8yWGUwdTUrRy9VUTBGV2FiQVRCUm8ySzVhc2dhK1FqVmtCT0Uw?=
 =?utf-8?B?RWxtanJBRWQ4dXBrZ3E2UXpSdjllVC9zSlpvRzZNelk4MWtLbmxobGRVWFNz?=
 =?utf-8?B?ZVdpRkYzZlFSbFJpTktuK0JtVHpnZ2lVN3JhQ2J1QzcveERFRE9LNVRuYVow?=
 =?utf-8?B?SjFhY1lKN1ZWajdENXUrVGY0R1hJZXBEZlFzM1ZjaHlwdldmc2R1dHphbWpP?=
 =?utf-8?B?b1JXekpMaGJiMmZDSWNHanpqaWwrS1NpQnhHa1Fpa2UzVW1NcCt1U1ovSmRC?=
 =?utf-8?B?Q2xjYldEY09WNy9iTW8xbmxGaFJRWXlnSDUvUUsrcE54U1JDRSs4UnVudEtW?=
 =?utf-8?B?U0pGL3lCOGRlK2Z4aVNJRXYwTTIxbjhod25jWG9NSlVrTG44bFdqVXdMaHU4?=
 =?utf-8?B?eERSK09NWkZrbE1aT2lVVXowT0xnei82a3RWSWZQbEZsMlJ4M3prQXBtWDJW?=
 =?utf-8?B?Z0RNRlN2Y0ozSGFTbk9qWGp1MWRZRFQrSUIrZCtUNzlGbFoxWnlrYlg0YUNM?=
 =?utf-8?B?SjR6K1hoQnpWaW1KWW50VHJKeTlmMHNLNkQyQWo0Q2xqRFJtYXJiSTB3TFV0?=
 =?utf-8?B?WGl4MW95cXIwUWlCU2luT2ZkcFpkZTBPNjBtYURNeXR2YjlRdVY0YWEybXpz?=
 =?utf-8?B?akNPQUpjQVllUkIybngzVXdpRkNmczNITDU5UVZaK1hEZVhpdzI5SkdiYVdF?=
 =?utf-8?B?dW5GV1dSTHdkUWdPbm1oYVRDbFhyaU5qajNickdkNmZUd051QVozUHcrdmMv?=
 =?utf-8?B?N0NYZ3plUHpPTi90SzZYZkJSdDV3MHlEb3FsV0s3ei9jc3hTSy9SVUUxNzVV?=
 =?utf-8?B?THFnTUxwbEJrd1h2SFE4Sm9wUlBoMldiNmYrVWdqNnFVcWdQMWpzZURXL0pu?=
 =?utf-8?B?bjB0MVZvOTBDNitHK1lWeTQyZHFwQzN0MnIyRkNGbVlvU1pwVU02c3FLV0R2?=
 =?utf-8?B?clNMMUQ4dDJLWEtyR2lJRW5GREtRcGJGaFQ0bnZqYTltQkNyZWFGdElRTW42?=
 =?utf-8?B?WUcrSlE1RFBITjNMQWxPZnFCZGFTeFM3aWNoa3BUY0RIeHBnQlhRalMwMjZN?=
 =?utf-8?B?SWpWajArZGRNb2dabVRhVUxDRWRIaTJhdkI4dzlTN0FVVTFrbTllY3kzRk5B?=
 =?utf-8?B?UkxESkdscXhSN0JKb2wzZ2E5dHZCWThFS0ZuSlYzRGYvV2FXSFRKSGd2ZkNy?=
 =?utf-8?B?VzB2TWRHVUNQSnB5ZDMzTWs1U05sQ0c2M3Z0YTBQUEFrWTBLdVVrcHF0Nnhh?=
 =?utf-8?B?Vld2c05DazcvbS83ZnhTbW01R0RBZFd3SFlrSEhzT1g0MDRNUlJIVVVadjI5?=
 =?utf-8?B?ODE5b2NzRm9sVlB2RUhUOHZtQUcxdWpvTTZ3ODA1Z3NRVzBxNEFXTlhRVEV4?=
 =?utf-8?B?VE1ieWF5N1V0T0duMmx0YWM0eUQzeXhlRFg1dmRQYnVPTVIzTklDWmtZd3h0?=
 =?utf-8?B?TUg4N0NEbWZQMi94Ym5COUZ5Z1Z0Mkh0aHR4emRGRUFpdjY5dFJzYnVjWkF4?=
 =?utf-8?B?ZGtxZ1E5WU4xT3JWeXRUME9EWE1kNEg1UmVIQ0NMMm5TczR1QW9kTGxyUmxm?=
 =?utf-8?B?Mll0aERPb054azFPalh3dzZBdXcvcUhpYS9Zc0RRTnpUWktxcWlpNS83dFk3?=
 =?utf-8?B?K1hWWkNCZXRUYXVQdWxyN1h3N0l3UkFsQnRQM2ZvS3lZazFCeXdyZHFKMUFK?=
 =?utf-8?B?R2lVTFJXU3ZoYkxRVEhiR2x4cmI0MEJ2aEZDaEF2Z1lHMWh1UjE2Z0RldnV0?=
 =?utf-8?B?UDZ4ZEJ2enhFZXZCZDlwdllqdHVsSmhISGlvQ0tINkxKcGhWQXZjOXpoZVJU?=
 =?utf-8?B?alB5R0VnZkk4czFsLzhGY3hHdVluVDZWaXlsY0c1YTRTWWQ3SnVITFFSM05z?=
 =?utf-8?B?RVNVY1JJTDlLY2hYdnFUVW5TR1E0TUhSQWMrTnNDSFRuM2ZhemJ3cnF1ZFFV?=
 =?utf-8?B?MTN4WDBTdlhIV1ZsSXFjM21zYUZ5MitTZHNCSjh1QU5RZm91NU1jeFRCMDl5?=
 =?utf-8?B?ell3dE1jV0N4RjBHN3MyMzJtVHdDaVBCSEdEYk40V29QYzlNUnhqVkx1V29t?=
 =?utf-8?B?T3NSekZEMTlxNTlpUGJ5cXB5K3ZRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ba07d6-6315-40e0-9735-08d9f2421dde
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2022 18:20:03.1745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KwO8bKl5EWh9giTKqYOLdq906offH6XObeXCG12HWXAxDNORQf8YWWck8zkZTmo800J/L/ldY5xokYfbl0Tqs6rmm6u39kD987Y5iA/aQLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5636
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due
 to PF error responses
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
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Thursday, February 17, 2022 9:25 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [net PATCH 2/2] ice: stop disabling VFs due to PF
> error responses
> 
> On Wed, 2022-02-16 at 16:51 -0800, Jacob Keller wrote:
> > The ice_vc_send_msg_to_vf function has logic to detect "failure"
> > responses being sent to a VF. If a VF is sent more than
> > ICE_DFLT_NUM_INVAL_MSGS_ALLOWED then the VF is marked as disabled.
> > Almost identical logic also existed in the i40e driver.
> >
> > This logic was added to the ice driver in commit 1071a8358a28 ("ice:
> > Implement virtchnl commands for AVF support") which itself copied
> > from
> > the i40e implementation in commit 5c3c48ac6bf5 ("i40e: implement
> > virtual
> > device interface").
> >
> > Neither commit provides a proper explanation or justification of the
> > check. In fact, later commits to i40e changed the logic to allow
> > bypassing the check in some specific instances.
> >
> > The "logic" for this seems to be that error responses somehow
> > indicate a
> > malicious VF. This is not really true. The PF might be sending an
> > error
> > for any number of reasons such as lack of resources, etc.
> >
> > Additionally, this causes the PF to log an info message for every
> > failed
> > VF response which may confuse users, and can spam the kernel log.
> >
> > This behavior is not documented as part of any requirement for our
> > products and other operating system drivers such as the FreeBSD
> > implementation of our drivers do not include this type of check.
> >
> > In fact, the change from dev_err to dev_info in i40e commit
> > 18b7af57d9c1
> > ("i40e: Lower some message levels") explains that these messages
> > typically don't actually indicate a real issue. It is quite likely
> > that
> > a user who hits this in practice will be very confused as the VF will
> > be
> > disabled without an obvious way to recover.
> >
> > We already have robust malicious driver detection logic using actual
> > hardware detection mechanisms that detect and prevent invalid device
> > usage. Remove the logic since its not a documented requirement and
> > the
> > behavior is not intuitive.
> >
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> If this is for net, it should have a Fixes: as well.
> 
> Thanks,
> Tony

Fixes: 1071a8358a28 ("ice: Implement virtchnl commands for AVF support")

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
