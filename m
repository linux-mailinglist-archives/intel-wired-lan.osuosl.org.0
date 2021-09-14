Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7DE40BC5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 01:50:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2A6F606CB;
	Tue, 14 Sep 2021 23:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUOjamcw7pwJ; Tue, 14 Sep 2021 23:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C04C0605F6;
	Tue, 14 Sep 2021 23:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28ED61BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:50:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 238A880D15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id goktf4-yfSTQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 23:50:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A22580D11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:50:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="244520695"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="244520695"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="698017696"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2021 16:50:35 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:50:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 16:50:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 16:50:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWi5G+KGmloLpRO89eDJIBv627U40I/jT4/oh5ay6nW74dSOhOhoJAdVqrHLoxWzeqZ4XHW4I477NL9zczZunMKk6D+FU2j4/cXPa32j0QaiOlZeeDGID14nzSub/mlnK5Bmw2r7C5Chat5yKew5zJWxLVqHmvqmq/XPCkZlu3jqYmZksGDhMYe7i7G9drFI86iYi8l+ySu3CaxYYYYkG1yS4T3MREAS93LUNG+PA9t1InTVDY9Zz/UF+6z+lTjTnGzhZKeQREUiasG2u59e6fROlT6YQ0ihE4LCvsURC1G/HKDtj8KuB0Wc3+2ffHaA5tx5Kukqvpb9NkgEQ0T61g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=RPz1+dkuMwujs2J2TgH0K5G8E6ChsLeXt8zfaUH3CzU=;
 b=fMtx3sBZ3UeY96LHuNocI53NDKxa/mWEpbcYGhmtUq9TOZ9GLExT0x16jr7Nqjgrvpru9ILEwjIOd4/bl0F+PJODBx7Nezf0k9i/rLqMdTrtklt2iqzF+jL0VhwEGUcVtCqGga4reEeyp/oPG/8F/1sjP9N6Xl6ZxquhOIBsyiQWKbZcDdHF/wBJuBR0EvAgNgMyo7p9cQJ0CT8LaPFVWRasak4WVE7XjAdvIcb/7Q4Zt58sbj6ES7fzscbJoBpNolY5s51uLz2orTU9lVwiIA5ddrelbvTpxW9tGi1G8Lqjyw/A5dgvW0QNBFwa+Moz/JpCDExa0KpKXp6GJqQ4BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RPz1+dkuMwujs2J2TgH0K5G8E6ChsLeXt8zfaUH3CzU=;
 b=B7gNZQPgCns5nQAuvKIn7KzEt+o41eUUL3/nthb3PDBaXy0S+nffegLTM6NVMUfI78Z3j8Q3mHYZLg2HsPb0+90kYcPGwkN9TUslkyjDAwrW31YsjRCUxx9DAtmxFdA1a0g9MpSJvlvlmk9LzzQA1b5ooBdfP0OtP/LxcXiSrrs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 23:50:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 23:50:33 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix promiscuous mode
 configuration flow messages
Thread-Index: AQHXqTP95sA2+rIrN0m3f1AEaPpfjaukNVKA
Date: Tue, 14 Sep 2021 23:50:32 +0000
Message-ID: <6ee88bc8f34dedbddd528272f67704f2d62e49a3.camel@intel.com>
References: <20210914064346.3376-1-karen.sornek@intel.com>
In-Reply-To: <20210914064346.3376-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38730306-8455-4303-3891-08d977da70f9
x-ms-traffictypediagnostic: SA2PR11MB4859:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4859AB780B23D320CEF70B0FC6DA9@SA2PR11MB4859.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8y0Km+b/OUX24aS5zUoSsr/hRH/9KuUf/bJXo5cjIz8XXo5Uc7RMBhkQ/QvMFIYIB1eQo+xN/rFhOLYN3r8AoO3lKqWTkVDULfroiJ8IfZfS1Qrb6/4wztaSrRFVVxC9rMaUYxnCjgQBfyDBQq77KmJ+OHUO5qqwp5d7LMWzbaFBeIXZs85uPqi89mw69ib/Fxpdyuv93Cywm4nw51ITFMO5shlZndcqHXE+xPEqa9l73fQ1sAZXU3+nx04jcY9piVzpTVO+pPFjncXhBMhSOpkLQy9yyHQemCsn7blAXguGxygqT/kPH6fNW3ERHP+Ooe6XRxX6N1FQvCXuDAdKID4GsRj5dASHv8ZHMlCcEw69mNZDnCprrw0F+GeMN5stTYvnBd1pNVVI/duqHFA5bz6DtXFj3YKao+BUVMj5D64QnMe3jtpa5YdoxLx16UR0Beq/EwRX1JSoOX3yy+H6g5R97HPuzyD2COPxaLnW2hes5PJB5KYvLOfTwI5NLseNwN56Pp5zdiov4Sy0tQqlsIjU8QdWuKhCOwAwDvR/bURwZ1xjGFyiDoDk5SWq8BlRiD3QZraBN5IzzttvP3PKyBKPd3mMNN+Ty1QTMauEZjVGNzMnA6/UlI+2mZo8fjvbPtqZCP09O4cnp9zj3MgpYiJ8N9onsR6PCzp8H/3YvFs7tFRMbxwrfTeiAz8kyT0ubXNsfHSaVeCjlbckoaLlVDuhZJlxWirNL4udXgI5kPV/VGI2n2eIbSxuzIorsGiJ8na9xn8g1r8p7dufKkYARd5GkxVazapawNiXjAxNcm8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(91956017)(2906002)(66476007)(6486002)(76116006)(6506007)(66556008)(71200400001)(66946007)(64756008)(316002)(8936002)(110136005)(6512007)(8676002)(26005)(478600001)(122000001)(83380400001)(36756003)(38100700002)(186003)(66446008)(966005)(2616005)(86362001)(38070700005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnJpNDlBSW1TVThvUFQvNzN2ZlRUY2V3TXp1OEhTRk5aR3loakRNZVdQWVk1?=
 =?utf-8?B?eGVpcWZ0Rk5PQU9vYndoMWZzOWtUamkwSHF0TGZPc1NQallnK2toTDlJK3hi?=
 =?utf-8?B?NmwxaGYvcUJEOEtVUlZkMTBaNkNrZkVVM2pqU25mbmptaGxTd2Q3NkpqUC9q?=
 =?utf-8?B?aGdMWHBlQlRpRDZwUzNBQ0J6VGRmVjVrZkhlU2UrVkovYTZmRlVjdHA1N29x?=
 =?utf-8?B?TnJMYkJ0TDJyZkVyWk43QTBhRXpuSTZjOS9BK2lnT0lGTmkzVE1OV1A0QlVR?=
 =?utf-8?B?TG83S2pUZjdFaHR4QklwYitVejFSWGw5WXNCZ0ZjTzlyQTJ3cW1jNzZaQzNP?=
 =?utf-8?B?SFJZOTNHQTFRRnp5dno5ZVQxZ3Y5cTFVS2tsa3RSd2JCR2pqcTJMNGhhK05q?=
 =?utf-8?B?TUJQbUVaaVV5QzJOWHkxMVBxanFrZ1lWaGI4RTl6enRsUVpnaHQvemJYbzNJ?=
 =?utf-8?B?U0NMNUc1VTcrTVR3Ykw2NDZReWszclE5NStmaVpBRlpmaW10MUl5VnlpQ01o?=
 =?utf-8?B?eEZRZlpabVF5U1V6VmlUMTFwU2dYdmlJTTQ0TGFPWE55T25OTXd3SjdlVGNO?=
 =?utf-8?B?R3pteHl6TjJFVWI3b0NDcmxOd3o2bGNsNVk0RHVaSzIvOXM5Q3YveWIxRVFz?=
 =?utf-8?B?UGROdDJIakY0cmxiVlNFUmIwbHJBNHkyeGp4VkxoWStMYTRuTGVVdDFKRitt?=
 =?utf-8?B?WEd2b3k0dWxZd2tPb213QTRFaGppMVMzalhNYkF5QVZaOGttNjJKY1VUemxX?=
 =?utf-8?B?QnlvZGZXR1NJSTRHZUpNZGpnTS85K29OVUhpQ29zaE9HNzdIVVFDMVZMQm5a?=
 =?utf-8?B?VU8rNFU1TTYzZDFVejNRcGRJZUxtbDRWaEN0cUJkU0Rmd1JCNks4ZVliTUhi?=
 =?utf-8?B?bk9ZQmVhK2xuOGpzNWFQMmFSUGF1Y0xCOEFHWmJVUEMyU0htWmpqQ3YzRzRq?=
 =?utf-8?B?SFBqeTl3bjNnZHNEZkJScTM2ZjhNMHgxYXFHTlNZQ2dYQzE2YWZCaHZmMzlB?=
 =?utf-8?B?VVJ5aUxlY3JxRit5WGRTZWF0MERhYkZxaGFjTi9pK1JHRysrRjRDdmFMQ2xR?=
 =?utf-8?B?cGp2dXhGYmkwRVpsOG1xLzE4b1RYb21HKy95clJYNEJMZGx5ZXp1U0VkY0ZI?=
 =?utf-8?B?SlZXd3VLdkpvUE5GenFkekRudjFXYkFHM2twd0dkSXVOTFo5aFNOQWtmaXVR?=
 =?utf-8?B?cytoZFh0QjAyUlJaV2hpbzNjZlNiTUdPQlNoZ1N6dC9TZnFTN3ZjQnVPeE1m?=
 =?utf-8?B?eHNhelVDN3BtWUsxUy9BUWhtRXYzeUpqVG9vSXgzMTZ5UWNSV2QzNzZ1Rkxz?=
 =?utf-8?B?VWdjL3I2NnRyUlFQbmJkN2VlbU5Ja0VqejJmWG92dTB3U1VSWTI0VmdDQ0tp?=
 =?utf-8?B?KzBLdkV2U3dURkRMa3owWjdXdTZ2Y08zRnY3cDNnNy9CMERmQkNyMHFPUzFz?=
 =?utf-8?B?Rkg2a3RmSEVaOFFxazUyam9FbTd2ZGRtRGFaRE1uN2ZBRG9lVDc0Zm5uYXJR?=
 =?utf-8?B?cHlCY2FLQnp4cmdYUXNKRUFEdnkrME0rWGJyUFFkUjhFekpESmdaMG9yVU81?=
 =?utf-8?B?WUUyUFNXbHJ6Rkx6MW9Rb0ZCbWI5TlRRYUR4aE5qUzFhZXl2dHBhbjB1eTJY?=
 =?utf-8?B?ay91cGpOUGFkU0YwRUF3TXFEQzBtcEt2WUxweXRTV0dOTXJEWS9DNlBnRWZ3?=
 =?utf-8?B?b0xkK3BzR1pEMVROdUxkczJPVVJidTNiNXNUREp0ZlZUMWRlWFRKRFB0Q1Nu?=
 =?utf-8?B?ZlpxOE9sNmlvNTVMb1VIK3JNYVRqT2xkQlhYQnlaUHhJWG1iaEZTYlBjNyti?=
 =?utf-8?B?bGIrbnk2WlF2RnYyeU1OZz09?=
Content-ID: <455CE5350CEBDF41A3C1D07A6978E2BB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38730306-8455-4303-3891-08d977da70f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2021 23:50:33.0233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yur287W7Gi57J9NCW7J87eDUoyIXiw2i0lbD+CYPonBbqYanIwtmbQlN//nkxGvmJ9J3LOoHsCqq1wQnNSxXOb10/rEmbMZcjS38YlZ6UoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix promiscuous mode
 configuration flow messages
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

On Tue, 2021-09-14 at 08:43 +0200, Karen Sornek wrote:
> Currently when configuring promiscuous mode on the AVF we detect a
> change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
> determine whether or not we need to request/release promiscuous mode
> and/or multicast promiscuous mode. The problem is that the AQ calls
> for
> setting/clearing promiscuous/multicast mode are treated separately.
> This
> leads to a case where we can trigger two promiscuous mode AQ calls in
> a row with the incorrect state. To fix this make a few changes.
> 
> Use IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE instead of the previous
> IAVF_FLAG_AQ_[REQUEST|RELEASE]_[PROMISC|ALLMULTI] flags.
> 
> In iavf_set_rx_mode() detect if there is a change in the
> netdev->flags in comparison with adapter->flags and set the
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE aq_required bit. Then in
> iavf_process_aq_command() only check for
> IAVF_FLAG_CONFIGURE_PROMISC_MODE
> and call iavf_set_promiscuous() if it's set.
> 
> In iavf_set_promiscuous() check again to see which (if any)
> promiscuous mode bits have changed when comparing the netdev->flags
> with
> the adapter->flags. Use this to set the flags which get sent to the
> PF
> driver.
> 
> Add a spinlock that is used for updating current_netdev_promisc_flags
> and only allows one promiscuous mode AQ at a time.
> 
> [1] Fixes the fact that we will only have one AQ call in the
> aq_required
> queue at any one time.
> 
> [2] Streamlines the change in promiscuous mode to only set one AQ
> required bit.
> 
> [3] This allows us to keep track of the current state of the flags
> and
> also makes it so we can take the most recent netdev->flags
> promiscuous
> mode state.
> 
> [4] This fixes the problem where a change in the netdev->flags can
> cause
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE to be set in iavf_set_rx_mode(),
> but cleared in iavf_set_promiscuous() before the change is ever made
> via
> AQ call.


This patch still doesn't apply.

Were there any changes made or is this a resend of the same patch[1]?
Please include proper tags, revisions, and/or changelogs to make
reviews easier.

> Fixes: 129cf89e5856 ("iavf: rename functions and structs to new
> name")
> Signed-off-by: Brett Creeley brett.creeley@intel.com
> Signed-off-by: Karen Sornek karen.sornek@intel.com
> 
[1] https://patchwork.ozlabs.org/project/intel-wired-
lan/patch/20210902124436.162039-1-karen.sornek@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
