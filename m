Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B14206DD8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:36:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F9C786C40;
	Wed, 24 Jun 2020 07:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kxb9i3TE13EQ; Wed, 24 Jun 2020 07:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD3348715A;
	Wed, 24 Jun 2020 07:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B68041BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B280E8815C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:36:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wH6zRUo3TTJs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:36:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1DFD087F94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:36:09 +0000 (UTC)
IronPort-SDR: knV8BfKNjtDaUbHUfpw1CV70qolsaswVHlt7PV9EhODLpvY/X11qCV5wdNZdZFc9ryXzyAnguw
 P6Cn20BYcaWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="131798316"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="131798316"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:36:08 -0700
IronPort-SDR: QrnEAcLWOgwXrAc/VLC2wLlkwCRvKwRBGzFo0RiES7ITgEbigrfGei/DUcCBYvEqWox5Zs8E+F
 dP8A/sy7TNDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="319370717"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jun 2020 00:36:08 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:36:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 24 Jun 2020 00:36:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 24 Jun 2020 00:36:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 24 Jun 2020 00:36:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwJun01nFkocSaksS4Z/vPy2HLqPO3vo76Xzin3Wah1I4oUGhPzKRnt0BpA9DI9Gujc665eoE32T67FZIHMbI6O32o4pdmARESwkUnaSUqjMMvP958p6wu8MLj2AV6Ub6vT43c28ksGLXKiO9OdOtw5l4ScDcEUmbLQgR5s9fHNht69XK5zMlfyhux0KEvzm2pGtiAHy9ZRcglE74rWrFDHZn98tncMnHiZFfV5ZRqwGAuF9dR/aZO+B34w87DXcyXHyedEIiHsSmeHyDnz2nE9CuZ8keZf6jDLGWFJbfmBItd6xTACX2AwWlJLlWiPx8ruWJ3mZDP4ZzGUkVGErgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rr0MmebO0hWQZpWvS0BLNF0Mllk7c3fwXQqa5GwnLiw=;
 b=DUJdJrEhCEViAIA76EBXXLTCIo8ir9VXOsmHZpyMAtDkbxffAmbZkOejYE7iav6n277goNB2fzQmAsvRbnn84xo5iw6hCuwt/nlz4OLhrRjPPfq6IGMy88QPDZeY3oCICqksYDNT3lxMNdEP6k9fU9zEqgVmRVB2H0t72A4gnwdUhYTR5kI6gm/cOaIvf7ojVMF+CDYSL6U195QC7uhwgDPfHS0HdSuR/2rBG/uhz5ZrvOBljuFYStJmC9n7aiw3lbIcG1AiGqSvL54IFpB3dHJwZKji3Jdd79D90FkqIc9xijh6P1JtJ1yAD+yWdxOB3TjCW/Iiq4mnR1runQHaOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rr0MmebO0hWQZpWvS0BLNF0Mllk7c3fwXQqa5GwnLiw=;
 b=TPx52wXnxn+DlYYeTRFpp1dBkrWGXeAVkRZv4ETfoF4HSpIfjGmhr0qhowvM5CM+Gz/9gf0NI6hmRqe5UwsCXbfGPYyg6BYUy0M3AqpoLgI97NWVMLxsA8cra3UShZd1d3Cn+tEPd3SBzW9T0K0GPMz0MTK/BCm5DERUrSr+cwM=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR1101MB2089.namprd11.prod.outlook.com (2603:10b6:4:54::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 24 Jun
 2020 07:36:04 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:36:04 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Wang, Haiyue" <haiyue.wang@intel.com>
Thread-Topic: Re: [Intel-wired-lan] [PATCH v3 2/5] ice: add DCF cap
 negotiation and state machine
Thread-Index: AdZJ+gDkqhRglTHbSbugCz2Nzu5wxw==
Date: Wed, 24 Jun 2020 07:36:03 +0000
Message-ID: <DM6PR11MB3900A92DBD94B244F49C17FDF8950@DM6PR11MB3900.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fe7286a-8962-48a2-97c5-08d818114010
x-ms-traffictypediagnostic: DM5PR1101MB2089:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB208980C4BC4486AD34A603CEF8950@DM5PR1101MB2089.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DCkY2F8vVvsNP4dGMDzG1wKgaePgXks3bRwyfLDgM9l1TWrsS9yCuq/mqUaysusLuIE12PKd6OtbbNuv0kM9v0JCL3ccsKxGS+KyXB1wtE1WqdKDGJIkyW7uTzFcnHr6hnw6u0lbqh7W6m16WU+mt9+l4uc8YW03V0RxGDjlvhyV3l6OXWlsKarBlVkrBN2wk33ixhbGP8VTHDg7BK9dI3ww5etw6c19joZBW8p9P0xSvc1VE8Ue5qDklTCCY7qnALeBRpBI97rF472+MBZNQGTBii53iJKuqFrHgbw3I+4Ew38A5safRPPekXpftu7H
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(366004)(376002)(39860400002)(396003)(83380400001)(86362001)(33656002)(2906002)(53546011)(6636002)(6506007)(186003)(26005)(7696005)(5660300002)(52536014)(8676002)(55016002)(478600001)(66476007)(66556008)(64756008)(110136005)(9686003)(316002)(66946007)(8936002)(71200400001)(66446008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: hDeQck0Jo/L3TVYND0OZq4YOQtzKehs1gmtjqmj2vVdFIvGuldChUYxD/h0625LcQbh3fDlVkAWLZ+SHAybVLd4XJZIgUFiLwVtdng4SqEE48lrHs/QKcGLnQZonySnW1aAy4/DGV9o/1tXQNK/KiZShHjfK5BG0D9YANqNKgiYHzqRmYvVdELlZacWeooq4pT8+j/ImyX1pudHnNqoKD1isVcJpWY6Mzod3sekIN6IutiaPlIPDqPgPJOO/8V51blgYS/sgc9zuOoh3grfzinwdz9MtjEZLpVKQJb/bj24gDzu4AL+q7Qc8NAEd9z1vCXm7Yavls52mnWMHDtAulsI/88CcWIGeACZsvwaxPPoEBLD8wPFL95uHJ0dCBbTEEMu9icsvVMOrChu8vJyMeiAkXlccwQ/Vf4tyQ6Jz/3Ev/Wkii8gB9kqv3jglflqfWo3SaGw2GN2RDNio4nUp4BGSCDwDf28uNd2uLcs6pg2Nj2tWAE/Rn+h+eo7VVMzB
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fe7286a-8962-48a2-97c5-08d818114010
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:36:04.0075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D4u64MuLcuLg/4RpnYEu229EMkgzsXwEeHnHkUTUH4MfmX8yE+dkU0qeJ76tzJ3J9OSXlbbZy1s0i7k7A+Ij/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2089
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 2/5] ice: add DCF cap negotiation
 and state machine
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
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Wednesday, June 24, 2020 10:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wang, Haiyue <haiyue.wang@intel.com>; Li, Xiaoyun <xiaoyun.li@intel.com>
> Subject: [PATCH v3 2/5] ice: add DCF cap negotiation and state machine
> 
> The trust VF0 needs to negotiate the DCF capability firstly. Then the PF
> driver may allow this VF to enter into DCF "ON" state if various checks
> are passed. In DCF "ON" state, the VF0 can send the AdminQ command to do
> advanced switch rules creation for other VFs.
> 
> If one of the VFs resets, its hardware VSI number may be changed, so the
> VF0 will enter into the DCF "BUSY" state immediately to avoid adding the
> wrong rule. After the reset is done, the DCF state is changed to "PAUSE"
> mode, and a DCF_VSI_MAP_UPDATE event will be sent to the VF0. This event
> notifies the VF0 to restart negotiating the DCF capability again.
> 
> Also the VF0 can exits the DCF service gracefully by issuing the virtual
> channel command OP_DCF_DISABLE.
> 
> The system administrator can disable the DCF service by changing the
> trust mode to untrusted.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 77 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      | 24 ++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 85 ++++++++++++++++++-
>  include/linux/avf/virtchnl.h                  |  9 ++
>  4 files changed, 194 insertions(+), 1 deletion(-)
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
