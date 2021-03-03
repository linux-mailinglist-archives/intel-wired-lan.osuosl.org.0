Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9615132ACAF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 02:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F40FD4321B;
	Wed,  3 Mar 2021 01:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sxZskom-vKYC; Wed,  3 Mar 2021 01:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 096E743214;
	Wed,  3 Mar 2021 01:07:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61B741BF476
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 01:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FB6843215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 01:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UgaRcUA9qUjU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 01:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6208643200
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 01:07:16 +0000 (UTC)
IronPort-SDR: KKFw895ctpzuh3C81IZJq7zm15OI3nGe+E9a8Bz4lq/xyl2ouKRDSbhDwr/xPEyz+bAa6BsGAq
 ZXHjhAW91Vag==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="248461941"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="248461941"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:14 -0800
IronPort-SDR: Kfxp84k+gqQiRPARCo9uT5mTihp1ehGEbXxBCs0b1LIJPyBfDS1BrlkLSBhQawJLdDNKCMJHTL
 LOAL8BG846/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="445022226"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2021 17:07:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 17:07:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 2 Mar 2021 17:07:14 -0800
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.54) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 2 Mar 2021 17:07:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxyNdImN5JhOf/KVGBu2oRCSkMRcvhtRqOVlvDTyebWygLPb+PQr0o++W73Sm49uxBX0nZW+XJaFar4o7LAu4cCAZd2ym8vudxzep/xM7N8+ZZEPZdXU5VYMrR6AP664kcMKzdJuq8UERAhNVX/kWIygaLn5p2U7Ew7Wvb+6BF0FQtAyNDgUukPLn7JCikQUuBUn4mYnr4RCQvGaPs4nQk2bDBlNdOwcbnU0RIsWT4OlUsWCex8LUfuhsDdhYY+g4iaaUQ0x+7aX3CLdknKdjfYmJmv42YJsswSqug8hk2tYjhQzmuOsyXMYia2hQZXicKMxRjC0yCSxz+YA3hGDlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58l7B3teBMJoyF/MAGorZuOfYJ+JRXoWFMT7LhBEcSE=;
 b=QE1eVbgrg+juHipsJV3AJC1IuNewiJuaGgnzqspkGLOnVfQJoJCctRnxbF70vt2t2KtumOx6Zlzj6VTMFJR2wgVpSDXEQcym0xPUMiLTx3HwxAS8yjtDY4bK0B8rQ2xGGGQyyQSydJfhyDE8NbOYKDiWg9gs8KZ77MRp+gzdXGTrcbc2UzmTYRxfmEfLqDk9z+wdtBe/0gj2WY4GPsln5qwui2POWeFco9UrE1GQ0dHPTi4kdN/NCrcvs1zKTD1bdegba4Gk3PdBeV1uP4z60HXpEoG7HbNlpdMM3bDrwGyZhx1IO6c2oRxmXCg0Y8MNTBG9BQ+GtG4JsfjEkBmEEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58l7B3teBMJoyF/MAGorZuOfYJ+JRXoWFMT7LhBEcSE=;
 b=EnqzLLzaqE2vR7y16C1XRrNW/XhtDi48YXyuwq1BccHZtexcqO+dauWUAaAfUL0JuUiPr3oBycbpvasnNVxeV9+bqCzWWgy12DXBDzKkXJVMoJZRNwUAIRqJLg7QjB/TTQJUajMp9zzR91STUnzDyMAq4hLslrXdD+MiRIvdM2o=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3376.namprd11.prod.outlook.com (2603:10b6:805:c7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Wed, 3 Mar
 2021 01:07:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3890.028; Wed, 3 Mar 2021
 01:07:10 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix to not show opcode
 msg on unsuccessful VF MAC change
Thread-Index: AQHXD3eG6D9jbV6Gr0qjlH94V8irq6pxdCEA
Date: Wed, 3 Mar 2021 01:07:09 +0000
Message-ID: <215932bb6dc3c90f003ce1fa1d6b52e105a5126b.camel@intel.com>
References: <20210302151904.13288-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210302151904.13288-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57d27506-f3ed-496d-7460-08d8dde0ac37
x-ms-traffictypediagnostic: SN6PR11MB3376:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3376120E931551271F88A8E4C6989@SN6PR11MB3376.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ySRCgQCvQ49yE9BDVJX3DNpk5Bc+0rEjkf6LodwS0DzpNirHGEeqN0taoJBUwqBu5KuC7+lCLIvnzZzf0tG4m+/DgeutkI0FUcAn7sOrluGzHc68vqcxDfcFjdTh2mjBljLVNeBzrlp3l4KCdWnihJDwkgYy9xxMjfbSHvC+etbHomv8r7Vucfz3iRCg8ZsldM6h31dW1V69BoGKmVKjXfz0axmAMvqIHtoJ8MxS6JRqvC/tJ+HCU+Hs0tIykTFq4NiteDnUFGJ+7jTp5WD8WT4pKI1dNPfGwuPLiPcfvIzmM3lgsSMfVa8B60xYJisjrshyq+1CW8JSw2wNE+dxgz73OMb4WZ1PAsHcy70c8ImuHcd+2h8ehjNekHDrxaAj6xlC2UkznUipvPfy0oWsj3jrsf0eH+2vuirJbR600Qwg+SQ/ws+8IGODPJvC6brI01uziA/d7E4lY559VMie+hmUhRFnoTK05Adz0hQK9LGl+4IZuxS/iAU2MBCP4nz1s3mW5k0bGtriCit7MHAuLNZeCcLgoz74Fn68wunLGApBDFroFsqo0BOsxko3zzAq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(136003)(396003)(39860400002)(366004)(6486002)(66446008)(316002)(6512007)(4744005)(5660300002)(2906002)(64756008)(83380400001)(6636002)(66556008)(6506007)(8936002)(66476007)(91956017)(110136005)(71200400001)(186003)(26005)(86362001)(66946007)(2616005)(478600001)(8676002)(36756003)(76116006)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?eXFFTXZsa3d0SnRnbU1BQmF5Z2pqeGNvbXgvdUQwUi9zNHJ1d2Qwb1djYnBm?=
 =?utf-8?B?VllyVDJRbmZIRmhRdWJvMWRoVnJrNW1tQ0pKTXU4T21OeTR0dGZlWWVaTkhI?=
 =?utf-8?B?bUdQVnBQZUNRdFJBU3cvaGx0ZWh1Z2tBWGw3enU3N3ozMW9rSWhzQThXT2ZM?=
 =?utf-8?B?ejcyVU1rcEJIRWcrcjk0RzBvNEhSSXhaTnJmcmZlUHdsaEVvcVVZOHJBdU5i?=
 =?utf-8?B?aUVCRWoyOTUrMkk2d2JXR1pOMTlXT3RlUWFkTmNncXNLdk14SUdSWEQ4SHZN?=
 =?utf-8?B?NjY3YnpzYXNtMWFYUzZCQnpqc3NpcHo1L3VTVVdGc2E2QndBMGtSSURWNXQy?=
 =?utf-8?B?NzRkdUhHZExZYmJWR0RuT0svVXpMdWFVaEFNcnMvbzdENXFpTTUwTGNZQS90?=
 =?utf-8?B?QUdqQlJScDNWZmVweVdjQjlNTWlMeml3R3BDbUdxd29GRjQ5RmhkbXdqcyta?=
 =?utf-8?B?dmpZa0d2clVuZndkUEdPZWlSVllqQWRUKzk0cCsxVGlVRVZJeWV5UTlwcmF2?=
 =?utf-8?B?a1A1aDg4ZmI3V0lUUnZGZ3lzeUdqTFpjdHFURnlYMWEzdVdtWlpON2NJTlR0?=
 =?utf-8?B?QTV2ZXFSOFZXOHVseURjKytBcHdSUEZWQU1MUDZ5UjlmQUQ0bEU1UHM2cmZr?=
 =?utf-8?B?c3ZRZWl0UHBHY3pXVFBwN0FTaDRlc1BqM2RKSmFjdEtDSWFuRjRJd0ZQYXIz?=
 =?utf-8?B?cDFNY2RwRUVjOFFDS1p3WkJQSmVITjUybWRvbW1sbU52Wit2M1p2eU9JNjl4?=
 =?utf-8?B?QWRhaDBENzRDWXBTbzdta1E1cXk3ekorMWR1YUZleGZER29wSGF5VGRBK0ha?=
 =?utf-8?B?TEw4ZWNYUGtyNDBjWmYzNkZiMGNabHBMYkluUnBSYkFEcGJCWit0QVlJcnBh?=
 =?utf-8?B?SjJjZ3BFV3gwV2RrMldaMmVKM3k5cEdFUFB3SVJsS2NRcU12TE9KV1RzaXMv?=
 =?utf-8?B?bHRDTzFHTS8zV1MvdkFwNmpRYlVLMDFqWEJBVFZXc2VOZDNlQlhCT0lYWW51?=
 =?utf-8?B?US90dDViUS9jbTE3TW5RRm1UdmlEcmdhMGVyN1I1VEFUUnk3V1VOSVhXbmZo?=
 =?utf-8?B?Qzg5VlRJdjFVaTYzanJHaU00SWE3ZTZBaitPd0h6c2VIYjhWVExCMk1pRnFC?=
 =?utf-8?B?ald2b2h0bmZRZnk2Tk80R0JqdHhKNUk0dDB0Vy91VWZjd3F0SVhObXR0Ulgy?=
 =?utf-8?B?cmNRdngzMlhFVW9GZFljSGM5N3ZNK2ZPVW5LNVNXaUhrSGFpNXFvTDZzS2hS?=
 =?utf-8?B?dml6MGZUb0w1YkprMnhwRTk0TmoxZXc2cEkrand2bmtpcG9OMVZpeE1XM0x1?=
 =?utf-8?B?QVRqWnNhTGxZaUc2WXhOS1V3RmhEaU1JN1NaMXFNU2ZRdnpUeE1FbjhCekZO?=
 =?utf-8?B?WG1lZkY5dUNEdkJ0Tkhhci82TUJhbW5CeEhrUTlGQXRjQ04ydlMvSE1kS0xB?=
 =?utf-8?B?cnZONVpjVFFueXl6ZVRMY2FnSUxLZkhVQkkySTY1SDFZV3h1cFFJd1loTjM0?=
 =?utf-8?B?dnY4bWdYV1p0L2tvVkw3elNmbE9xV0VRaUlZMHp4b2NJdmpwQVF4WU53Sk1B?=
 =?utf-8?B?a3VVcFFDUEtTRGI3R1dIcWNFNXlqODZMb2wxQXpkc20vTUJ2VFd6UVhyM0FN?=
 =?utf-8?B?QjJhQ0pseExwYnV4RVhXRER3elpYVkJ2VkZrU2FJVnowVmJ0L1NCazRtZ2RC?=
 =?utf-8?B?T1dqOWM1cm5qZ09LUGRtQUh1M3FUbzhNdHovMXc4NCtVU1hhUFNWUXFYWGY1?=
 =?utf-8?B?elFjYVNFeXRvR290aXIxQUdjUUEyYktHUUVpektUd3pmOStpVXpUeU0rWVVL?=
 =?utf-8?B?bmc3WnBJYXFrS25tWVA1Zz09?=
Content-ID: <03015FDDECF8204595682C6DA4AE0B8F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d27506-f3ed-496d-7460-08d8dde0ac37
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2021 01:07:10.3394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fCGdjhTpReePpJ0YuyB16gjj2bXl0MzHcmPfMFZcLMEVvsrrGABPuJIN6bmeb6T9a6pO/kY4/hEjP44aXn4cAjO80DlSRjxa/q6i2XBTLjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3376
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix to not show opcode
 msg on unsuccessful VF MAC change
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

On Tue, 2021-03-02 at 15:19 +0000, Mateusz Palczewski wrote:
> Hide i40e opcode information sent during response to VF in case when
> untrusted VF tried to change MAC on the VF interface.
> 
> This is implemented by adding an additional parameter 'hide' to the
> response sent to VF function that hides the display of error
> information, but forwards the error code to VF.
> 
> Previously it was not possible to send response with some error code
> to VF without displaying opcode information.
> 
> Fixes: 5c3c48ac6bf5("i40e: implement virtual device interface")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

ERROR: Missing Signed-off-by: line by nominal patch author 'Mateusz
Palczewski <mateusz.palczewski@intel.com>'

> Reviewed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Please include a revision history of what changed between versions.

>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 44 +++++++++++++++
> ----
>  1 file changed, 35 insertions(+), 9 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
