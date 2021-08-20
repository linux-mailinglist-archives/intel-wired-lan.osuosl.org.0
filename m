Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CCC3F3275
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 19:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1EB5406D1;
	Fri, 20 Aug 2021 17:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkzOp7vIBqxH; Fri, 20 Aug 2021 17:49:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24BD2406DE;
	Fri, 20 Aug 2021 17:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10F8F1BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 17:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C73160718
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 17:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o0tf_Z9jkYom for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 17:49:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E60A360623
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 17:49:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="203959178"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="203959178"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 10:49:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="442733978"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 20 Aug 2021 10:49:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 10:49:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 20 Aug 2021 10:49:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 20 Aug 2021 10:49:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CM1/HcZaRUaUo0v0so8SzK+Pd/1PlqArnWz0VLS6X0xq+9hvSdOmTwtRFBTCgHMB84rE/GY39eLeMoA2QUk94Je8jLrUq6RvYWc2954ISBAE1CsE+irtS6MBisIZrhahB2O7OtDdK6MAblq8VhhZn18CAgdVYRvXAj+3VkJJBUAPkSbttqI/UqZPALsk4YmsyJ7czwKqF2XhwklyXNVv+9AmLAcZvOJ7GcvHkwB9kPQvF+BskXs1JIZ3xTnXT+KAvnnynKx20uJ1TJycgXZ7buiLXmdQ/2EuN17Erij0+f47eF4azbKDtYhkdJ+ITpV2eo2Dl5ikseHVipPljOsUCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4KuBBBpcucFNHzw1XQ1YhlTX/w7pLPGpSXJHgpsm3s=;
 b=L1uqSCWlkKE0vBqu/slZ6++TNGLv2MYRUOmR41lv35nwbIWLy62c1nlc5jLbDBl8F9Gj8kPX5OXaJ5u5lFLOFPVLajSgnfqGxkK+WJZyZj9/xHsg+ZrmvALJxfUUTDG9k1lsUOtxAMGFDxv/WykAB4e8E9lCj/0ulTQDNs+EhewdNlzuWo3yARWfO+4TT0rB5Gb8+TD1f8wsfaPTD8v0F+E0vd215gKJmqN40CiZnVCuit/VS/uchUbbMee6ziKQAHP+sZ4e8/d6tdZpvW8tT5P+yYi646J1rWh/17mO3UV68Q7woS6V+llJsOWM4ZdClPU3a6vT0xeNqTfppzYY3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4KuBBBpcucFNHzw1XQ1YhlTX/w7pLPGpSXJHgpsm3s=;
 b=ixnj9eVUJ3Ene8oNFcK0aNLqzzYziAxJmUsh8t9UBzUaumRGfn4ltK+fcxJZ9/TZ4ofstaTHhK/PdVivcNcmKjXejghOvZVMUN3cc1r1q4lvrzIEpMdbAV8HrMsHZypGmP6OVTKecJ8KtI5Gl3OplVFVVTl8F+MJrDWNYBAg+iM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4752.namprd11.prod.outlook.com (2603:10b6:806:99::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Fri, 20 Aug
 2021 17:49:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4436.021; Fri, 20 Aug 2021
 17:49:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 0/3] iavf: Fix init and
 watchdog state machines
Thread-Index: AQHXlNbxQHEO1nG4AU2TGa4Sy6E496t8rrCA
Date: Fri, 20 Aug 2021 17:49:08 +0000
Message-ID: <c8d26943460bf9370a7116519be67fdbb27fc6f8.camel@intel.com>
References: <20210819084731.2344-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210819084731.2344-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9c9ae3d-4845-444e-7999-08d96402cfba
x-ms-traffictypediagnostic: SA0PR11MB4752:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB47523CF9FC0BA8E1FE403007C6C19@SA0PR11MB4752.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qiOb69FSAPs0PC+/KSksNbpW2a7wDWcvi2KlCpbll/Zfb9CP6V/oMeWhgKmyKKobCcos4rrkxmmhAv8weTI0DWrzZBmcD7qNs2zmwulPHyHxr7JAt3nzmQcCZf+RBuhlZMuEYn8cM6vZzI0kckWNKD1AR0ZSU6J6v3kWYiq1W4HDksyGH/R6uCEd3UFdVrbZALVRt39SmBnHi5XAR0B2KW6X2X5yuWWGyDkhoYRxt2IGzlsmYCwdmhUYl8JCRxQ8mVN6QJ/O18YivpNF8QappbiVdXagpwW9JfxfJpqplRwyP9QdFhe0bC1NCkMixyG1kJvwA3kr6cfUYYHqcfoKl9yXJgnP/HVV8ry49gMpomIQObdimZ7OSDTxm2C6zsofmoGfYvUnQqDkIAFVnk8NM+XXr1veLV40fkwlUjG452WPazhsNEhxPPSXDg3R+9vryO7TQKCPzrCguoEfbjh/6gXrvkJURxh4aaOLPc33lTrdLGSRYF9nE7Kj9YgtONu7lx2Fnh2HRPwQad0ZeWbIMTLjOpyViZjot4y1mw4O1QO97dLqjoN4V3zSvW6Yxwzjjci6FFqcOyTIPbZXLx/9VC62eVKl4Pfq2ERqgf22Z0P1VhMEeXuFbmR4qLPprFqe8gxd6hBr8cwYNkdkp13gZkRphjoAmRVr05xGEvRscRpf/QfGrsLq2LTLEstTqSA3SuQTCL9cYhd/cOoIEcqigg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(376002)(39860400002)(366004)(346002)(316002)(6512007)(2906002)(8676002)(26005)(64756008)(4744005)(86362001)(36756003)(122000001)(38070700005)(71200400001)(110136005)(6486002)(478600001)(38100700002)(66946007)(66476007)(91956017)(66446008)(76116006)(66556008)(6506007)(2616005)(5660300002)(186003)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXNtQlRacHR0NlUzV2lKL28wa1gvQWxYVVY5dWVHcytEbkczbVdlVHhhYVVp?=
 =?utf-8?B?cjZ0R0VxSk5SbU9XRG5pcHpDOWdlMjV6MGpoQXNVWmFpdmhHcjVaNlRXeVE4?=
 =?utf-8?B?Rzk2SzFqVS9sNWpYYzVRNGpNakZOVW9WVXlpVDVlTmFRekZZQXN3Nmtpdk5V?=
 =?utf-8?B?ZlhnSVNodlNQZ0JDTkszQTFwd1pSSHJPNDBlWlJEYmFqZXlqSWpOUnhPR2hP?=
 =?utf-8?B?WFQ0dlF0QjQwNlg4b0pKcTVkU283aWZiSUx0SW1ELzhvWVZMWEYwaGVBYnZN?=
 =?utf-8?B?K1hpSE5UTDRUaDdvczh0NDZGTitEYXZ1TksvdlUvczgrekY3MkJhVkl5YXdO?=
 =?utf-8?B?L3V6bkxxZlV4Sm9tQ3Z2WmpWWlpMalBGY2FlUGFUR3o3cUVQUE15QVVyeWlY?=
 =?utf-8?B?KytBdDk1TjBXLy9Md1BaeFhYU3NCK1A5UUt1VzZtWkI0Nm1WaTJpdFoyS0dF?=
 =?utf-8?B?N3JYZHBicWZWNjEyMGZIWGVPUFNZVEUzT3M2c2RrVTI3MWpYWGV6SlZpYTQ0?=
 =?utf-8?B?L0dxMlNCTnNBcWFDRUZMR3M5NGVockI0QVcvdWNJL0k3bE94blVuWHljT0Z4?=
 =?utf-8?B?emZiSU41MlNCb3RDa080T3h4OHVVYnE2NVhoQzkvbTdWdFQrNkxMTTBRN21q?=
 =?utf-8?B?aVNBcWpXV3Y1QXlueERkdG9OMnNOeEtRZW5YamNQcUZleXQ3TDYzNzVPSGpI?=
 =?utf-8?B?VGRsbnZnZXBGcHhWZ0FWaWxEZE9YYUNHT3lFZDVHaVBBaGMzazBWd0NlUHpw?=
 =?utf-8?B?Umx2RThQME1ldmxwR2VxRFowUTFna2ZjY0NWYlFtcWdDQzA5QTJJeTJQTDdS?=
 =?utf-8?B?V0VoV29nUXE4Y0pNb0dZaVFSek9OOWxQR2tSTW01Y1pMODlhQmlvNEtFUFIz?=
 =?utf-8?B?NSt3Y1hmQ0JCdVBxOXVEZ2VqMy9LMC9mZHZyMytPQStkUGVEOE5QUVJPK1hJ?=
 =?utf-8?B?S2pjSGtSOGFTejNQK3Z3SWx1TllZZm1mQkMvYUhhaHpGUFlIRENqa2Q4N2lo?=
 =?utf-8?B?MjdGc1dGd2dpKzZxR2pucWNVK2ZqeFhkWXhnYWgwUkpmVGhOcUU5NTBnRVF4?=
 =?utf-8?B?d2tEM3Z3RGJ0TFAvU2dDb2JjYlpBbm16ZlJrN1prVmVBQU5NaFZrWlhXeXUz?=
 =?utf-8?B?SFVOMUYxbzJiRk1LbTZWUklUWFdaYXVvTEpwaVZEWEN4Q0NiK2F6U29hVE16?=
 =?utf-8?B?UldKcDVLc0ZiejRTaHhpdjlVTnRTQ3gxaFUwdEREUCtkV3IrN3B0ZXpjSzB0?=
 =?utf-8?B?eGlXNU1SR0J2Z2h6SWdubFd6NzlYVFVIRldsZFROWE12REdRMkVkdHdtdTRB?=
 =?utf-8?B?czdMZ2V3QU5uUDRYNUE2VElTZ3d4YmxHQkxCYzJINGxnS0sxY3FOWDVwc0Rw?=
 =?utf-8?B?bDJYbXljOXpoLzdSMlRpc3lKUEczdUFHaVZJT1VPOUZLcHI5U2hjUDFMNXBk?=
 =?utf-8?B?QnMvV05wM0ovZzd5cU5qajVuZnl3WmhXcFpPUWZLb2IrcjVrbHArYXdTK1Nj?=
 =?utf-8?B?WkUyeWR2emNqTXY0MGRoYmx3alpxOTNSVVNEMFcyMXIwMW5LVmQyZ21QdGsr?=
 =?utf-8?B?OXJvVDRTUWljbHF6M0wzd0pYNmdxWWV3cEwvMCszbmh3NlpjancvTFZnaDVR?=
 =?utf-8?B?OUltS21oNjFQV3QzaUhYRkltM2c5UzB3K0JEY0lIcGhvT0tzK1hTamt0dUpm?=
 =?utf-8?B?VEF5citaQ2ZXYmlsWDkwMnA0azNrNVFmNHJ1SXNaSk1UbmtxSGtqbm00NzdB?=
 =?utf-8?B?V2h5aG95QUg3RlJieDZnQnVha2lCSGRQYUw5QVFSRGtZTDFvUHZSUlBQUXg4?=
 =?utf-8?B?eEpZMjg3S2NwbktpMGl0QT09?=
Content-ID: <3DC6FB0140363449A3E970363593B309@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c9ae3d-4845-444e-7999-08d96402cfba
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2021 17:49:08.6403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XzG+Vu4itj8054GObh7al1CfEZiWxBEdCOvuuN+GrMKnWi+aArMx7Ba2plxzNnJeIgH3sesjFenRXHykJ8cyAQtlTeMgISHEPYbXMaRuvus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4752
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/3] iavf: Fix init and
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

On Thu, 2021-08-19 at 08:47 +0000, Mateusz Palczewski wrote:
> Use single state machine for driver initialization
> and for service initialized driver. The init state
> machine implemented in init_task() is merged
> into the watchdog_task(). The init_task() function
> is removed.

I've applied this, however, I've removed the fixes tags. It's not clear
to me how or what the refactor or single state machine is fixing. If
you disagree, please resubmit with explanations of the current problem
and how this fixes it in the descriptions.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
