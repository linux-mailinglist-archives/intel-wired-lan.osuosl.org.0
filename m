Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 084363B33CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 18:21:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98D0883DB8;
	Thu, 24 Jun 2021 16:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jTfEcfv9CS32; Thu, 24 Jun 2021 16:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A73318248F;
	Thu, 24 Jun 2021 16:21:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 510621BF35F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 16:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3EEB3404BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 16:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7SyLSNDSS9Vx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 16:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8516D404CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 16:21:08 +0000 (UTC)
IronPort-SDR: pzNdPSs0GzDHp5OiK0JGnGA7AxQQoDrWgr6m2TIWOSPqXomLEluQNoj01jLJWkHwZfPX3ITuJZ
 5YKtFFyj3C0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="207325047"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207325047"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 09:21:07 -0700
IronPort-SDR: GHLt2U16p2iTrfbFRFefMnJg3o+RYj3tgJPTjGNkKw9F9ePeLY3b/8FReIxXFfCV9uDygQj8S7
 81mS29zETxSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="455123327"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jun 2021 09:21:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 24 Jun 2021 09:21:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 24 Jun 2021 09:21:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 24 Jun 2021 09:21:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TcskUlwKfGuJ4JTAYYaSO2+6J4igjeQ1xX9tkCWo378d1P/gkuFDOGSnTy0ISpAprrVxD8X4S8doHwIxdMwL+OfFNj6Xnkxlpl6zVR8PHK9ECuXUCx212ro/I4UhRsCpAueJHHjkfhv0guc5d+WwerSnpKTNv0hedZxU6LqJLa6JmQeNw6Lxwdo8uWegxTDphKM8ForAZXbXwQ8bP23MHOQ++37iHRTgkp+JYyiJmYk2G/2qvj4tv02VFnQQbHSBbrD9f5jrhWXFN6zNpMxDhdGpxr8QMWjGe6RNGt3E+MaskTpA7Q4sXBy24e4CcqAX98cWe/PpslFxwRjNUgRV7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PwyUNbQ9ou0vbojIbshaltThCUTCUN1LCrvAnZ8BtPE=;
 b=InOrEmecidKwAifkUWfzhPkc8/08SROTgl2KATZV2/wTMkHDPj1M8FdK3Ki8CyjsIDPcgJLtCXoP6jCpb7tVBSASWGNonfi66PN/TpAJYfXvnbWJ18PWwb+vAzU2YlcyLhAeOJy5TTFM0Yrtf7Iktk/JKAPdMwPMsxshHwePzj+gB1lA6VSJrS/1NshvIDRW3/UUm/K0A11qDrSxUDh2fd0Qj7sVBynHyre00k3ILFAQQcvtWD7RfukJpgpoEIDlBmCvmU7Km41Tu5tGZkzYsISL4OD2ufPwV8miOw1baWquFFP61ADYOWr4meWWVnJYw1MthN+mIhUdKyH+2m5zHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PwyUNbQ9ou0vbojIbshaltThCUTCUN1LCrvAnZ8BtPE=;
 b=UTpw+SbUFweG/ZTNdZpgu50vsInYVDOWoL6s0rfaTun1IfICKOiuEWuOgp+BOuFkNDpgA6tPvtqKN+UdohKsXHidppNxsNiyYccYhyqwUnY2QEKuOkX/8IwVyz5zNIeGkTp7IcYWwm6W5ryhbRw/TEOYtuwDQWNWIFhuztbjMwo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2589.namprd11.prod.outlook.com (2603:10b6:805:53::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Thu, 24 Jun
 2021 16:21:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4264.018; Thu, 24 Jun 2021
 16:21:06 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 0/3] iavf: Fix init and
 watchdog state machines
Thread-Index: AQHXaBe3uCS0JvFaOECUTQTyAJ1qRasjWnqA
Date: Thu, 24 Jun 2021 16:21:06 +0000
Message-ID: <5eba665754ec14ab0817f4392780978964245eb8.camel@intel.com>
References: <20210623100739.10708-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210623100739.10708-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d2db314-f8a7-4095-fdf0-08d9372c1198
x-ms-traffictypediagnostic: SN6PR11MB2589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2589DF6A34BDDEBA99AB64C9C6079@SN6PR11MB2589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 36TvV6qqqoyWNHNTeP5OaNt3s0UK4LUeZGbK/FVVJ7ZA38+1zGyL2ZsQu6qYINt4s2QqrpzDo7hh55W3lfb/ukeY0PUZmIPL1TidzoD/Qys/XyAqrZxAESyAwmtKJUlnk3Xy/Msp/uBxWj5KGw9FRJj9v47lSuGOPDV2WPjvaqWbvPRYKomV1JDIz5JCn4uALc2pFYUF/CJXW3IqKEMu5CYPcc+aE/V+AV5rumXfqLBR4oB9IyRFkRjHfhBE1EFExy+o7JD46mr8juicxxOG29ERx898i3DzOJDBXDznPwZHLEKF3kdrwMrLVxKaGsAccrTpEggNifomkLItjZQThwW1cAZpOL1lLQ7Wc4qF9tmgAqlHMcbxd+3V1BYDT5JfV02rhWI3rvXYQ3ihYbIJxdj/DPTIll/RMgsc7GMq91ohEUdmvnhUsrIhzSeATaQFk5wwqSY2c2PvF7+P8jwEXA/J0DHP5eqIkM3dVtQ2+bJnXzGWuCujUQqgNHPvSww3FcoHp9kk6rp64yCApfKT2ERH8cvRr9QoeB4y3S3CO27TFi7NycKZ6hFtp4M4JRdylpO7e6d2Qedx15xM4Usfyv6Wlj++9r1198PSWn9XBiCVDlpqEmhNqS8OeF8Pk+EdJQlwC51rkkUSqtwRE7TNGw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(39860400002)(396003)(376002)(346002)(478600001)(2906002)(6486002)(4744005)(110136005)(36756003)(2616005)(38100700002)(122000001)(316002)(8936002)(86362001)(91956017)(76116006)(6512007)(5660300002)(66946007)(66556008)(66446008)(26005)(186003)(6506007)(8676002)(71200400001)(83380400001)(64756008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXN4eXVYV2o0OXlQRjhDa01xQ1B1ZzZCZEVlRktRTmRxYUNPYXc4ZFEyTllm?=
 =?utf-8?B?VkxTOVlaYTliNHY4NGtPdXBOR3Y0Vyt6V0N1UUpncVcxem5vQnFmVmVHN29P?=
 =?utf-8?B?d0o1cFJDOUl2RitWakdDdldHSHYyZmFGM01NQndqRjY2QmthRkdxN28rMXQr?=
 =?utf-8?B?NkZ5VWMzOVY1ZVkrbXBMZWJVODB0YTBjNE5JZDNsRUtMREVoZ24vc1Q0RWsv?=
 =?utf-8?B?akMwWlM5emNyV2RTVmpNSjhIZXFTd1R2S2o0UldzdERWbmlOZlNmMWNnU2Mr?=
 =?utf-8?B?bDROd0sxSGJtdm9OajJwUGVrMW9GMDVOZk5LY2RsT2lJcUxtZ01ZY1RibWY5?=
 =?utf-8?B?Ylc3NkNkQ1YwK0JnTW9ZYzR3NlJMVk1Rc0dlWC91UlovZTFrQUlpQUZCd3hq?=
 =?utf-8?B?OGU3dkQ3RTk5RjlCUXpHN3VyODcrcHlOeU9hQXhpWEFkalRQVUFaM3ZkdVo2?=
 =?utf-8?B?czl5MUd5MlAwTlc4Vmx0M3ZTVHdZQTdCbVRIcklwUFcrMmQrUjJ3K0ZjdmN4?=
 =?utf-8?B?WkNyTTEyTXZrczFnN3FtZ3RobUhMaTF5bUNPZGQ2UGJlR2lZOGZFcmpBM2Qw?=
 =?utf-8?B?aU9kZzBmZTE3Sm90SzZwVHgzMDVNN0E1b2o4YVkwb28wbmk0MVlsd0JuU2Vr?=
 =?utf-8?B?WFI2dDR5U0tHRnJXK2JBMVdKejkzeHF4YmxzR0dYbnBzMmVPb2Q0ZzhBbGZh?=
 =?utf-8?B?T3c4WVVQaTk0cWZYZWdlbk1iL0VGZ3hmRS92YmpSR1dRZXVNclByZkJtUCtF?=
 =?utf-8?B?cWYvWTFmV1dldHNiUUVrY1dEbjlOL1UrT2poWHJWd0JNQzdHM3ZFTEFkS1B0?=
 =?utf-8?B?R0RYdW14ZHhPeGNabXJIUkFCTlBROE5HdW9tTjJxTmM1WGRPbXoxc3lhWjh2?=
 =?utf-8?B?b2VDdHVlYlBtNkN2WktERkhJRGhwT3NlSmNzTldzZCtDV1E4bkxxbWJjdlh6?=
 =?utf-8?B?bFBzYzhUbnJxWDdVRmRYdWdBb3VpS3VHdDZyVGdqNFhweTVzR0xaNTMyZ1dW?=
 =?utf-8?B?TkdTYzBOb2lZUFpWbWg1QXNvdjJKS25MSS81Q3BDNzRaS0RreHg2Q0pCOGR3?=
 =?utf-8?B?dFE0OGNNNHhQV0psYTdVbk90VXpzTzBLUFc2UTlVOE9Hd3d1L0l2QnJHNmZG?=
 =?utf-8?B?RFpIVjg2ZjhtdnlUd09aNUdQaGhsdlBOTTNHcFA5c3JLMGVTUXdYWGdnRnNs?=
 =?utf-8?B?RkxSckgyaHVLdkVLTnBoaWFaQ29UU1hYanE3cjdPbkgrWitQUlNVSytDOE9n?=
 =?utf-8?B?OUZEK2dKZnNHelYzaFBkNks4R0hNejlxdnBpRldRWitnMmMzS0JIN2JyYlll?=
 =?utf-8?B?b0p5dXJXaUVzN2RDKzcwN0lOam9BRjlaQmQ1VTRpd1h5REh3eW5jT0xDTnIx?=
 =?utf-8?B?ZzMxRUR3QUdoWWlMempabUdGRXk0TVJQeWtNWlJjbFVDWTVFYXRHazZZV3k3?=
 =?utf-8?B?d04vVEVlK3lEQTduR3llYTJnV1ZFaDZoNldBdU9tc1ZHYzVhVWg4WXNmQUF5?=
 =?utf-8?B?Ry9sOW1IUlE0T0RhQy83Z3NJb3ZSaW5acjhXeE5nUFZXSDhYWWpma2dvc21a?=
 =?utf-8?B?VlFTVDZFTmc4WUFzQ3JzaEN6VXlEaHJ3eEhkZW1LWEg3V28zNGViRnN2ZE8v?=
 =?utf-8?B?dWllR3M1VW44d251bjErbkR6dnBHZkpNYk1vTnNBWXVGY1BEYUxDN0lreDB3?=
 =?utf-8?B?UEtkcWJhWk5VNityMHZpMS9EcmtnK1kxUEd6VTc4azdiQWtWRVlvTmcxLzJo?=
 =?utf-8?B?Q01YbGpmN1JndklONnRWVlFTRmYwSTllRXNnSGR4cVBBeHcxRUh1TzkvMno4?=
 =?utf-8?B?TnNLRVZLTzhad0k0QnV0UT09?=
Content-ID: <5EEB8A21BBD95C43B3D82DB107788A48@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d2db314-f8a7-4095-fdf0-08d9372c1198
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2021 16:21:06.2334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tD3nHOZB31DuOgfbySQY4f07+Ls+Fvg8P26W6l2UWVyYF1QApdUworMf0yLN4uJgXRJEgXYnKNjXg5AFJHW92TutC5LdtY6khfcs7oSANoc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/3] iavf: Fix init and
 watchdog state machines
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

On Wed, 2021-06-23 at 10:07 +0000, Mateusz Palczewski wrote:
> Use single state machine for driver initialization
> and for service initialized driver. The init state
> machine implemented in init_task() is merged
> into the watchdog_task(). The init_task() function
> is removed.

This series does not apply. Can you rebase and resend?

> ---
> v4: Removed unnecessary line
> v3: Added new file to patch series
> v2: Splitted the patch into 2 to make them smaller
> ---
> 
> Jan Sokolowski (3):
>   iavf: Refactor iavf state machine tracking
>   iavf: Add __IAVF_INIT_FAILED state
>   iavf: Fix init and watchdog state machines
> 
>  drivers/net/ethernet/intel/iavf/iavf.h        |  12 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 195 ++++++++------
> ----
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +-
>  3 files changed, 103 insertions(+), 106 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
