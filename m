Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BC120695F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 03:16:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28B0689076;
	Wed, 24 Jun 2020 01:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQy7jDSlB8JF; Wed, 24 Jun 2020 01:16:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C71789128;
	Wed, 24 Jun 2020 01:16:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F2D71BF477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B0C789076
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UpodPctwr6Q2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 01:16:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 558F888F8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:16:02 +0000 (UTC)
IronPort-SDR: 6II3IVYAiIOg9d4Nhtink6ah810wuJlGhFyPezOHVkMoP6yghA85d8U8HSP6/NbT/bWog2ClHj
 kyx28+PJoIUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="123955767"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="123955767"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 18:16:01 -0700
IronPort-SDR: pg7LvISqeJbkS6TO9HkEcH4I32DFxIWEaG6Nr5Qumb+kNY68m1wPniW1U0sdY9dByHsaFf3252
 dUztm3tavZNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="423207602"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 23 Jun 2020 18:16:01 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:16:01 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:16:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 23 Jun 2020 18:16:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X75PB6NIqWrqJ/wWV+4odcGf8fQ24/y4SYGzf7B50GWiVQmwrFzO3zLBeBe9ZOy+r+LWIduR/NZxZaFlje2+XSc+XSfnJ8XMjnBToyUWXGO09fMPJ9WVAjHVtdF15gfFc0Msk6Rbcfqcyd7sBFZAYC+h8yBEKUuH9y/P2MvkpHxfJW8AjkMOTBST6LDNTK5EkWQPQiWIO71IZE9cmNBB8hjyS33ORcM7z/IdVql95PNkuRRns1hVYMbtZlT7oRlTP4WvdsabKfKbO08hIlkL8S9sJ9n5lKZvRQroRI/xDHYNv1zi6JXICSJP5FJpJDG033xkGzAADqQ0MbdEH4NpVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFfNMRye9FTbddQal3xjIBDXat8U8VzvllYtcWooMQ4=;
 b=GcMwCYhKiRz4HrItUpqwly3dsSwwe7McvgvM1Z7Wy1hydYxv+qnqcNfOv22BT4aBEovHnDqjlb3TzL7TJerp+o0DL08iwxmegx9zdq6C7MryvRBCsxr5XJM9V0pvjxEGP9/lA0dOWGCx7GUXGNrInSZByXu26fgILx1E2DFQpOrq1S/Qer00WXWsW8G4efJuJFYv+OZeMPBz5++AoBS3c0C7C9ngZury8rnLUoAkjwXsahfOokHFUVUOi8D9l5EJ5NMDX39EJcfuYqDbcWb75DGqlokq8B6KM92sxe/q6K7NtNn+nqinDXaPgBoa/w21DTnFCHn6ALsZgPUcS3P7/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFfNMRye9FTbddQal3xjIBDXat8U8VzvllYtcWooMQ4=;
 b=Ahy+Zjgm7rhGKHNLv96Gf9VZdYIrOF9dBenIMRcrOPucdl/WRMWVbOSBJ6zO/6JhXi1Xpjhvvx22f/YYHEiED5MSBRokYnhy0/G+PdmVdSBeOka8nbkTLdabAtwE2wt5TsUblI+g+amHI2eWvyE3Xj40YyLYBqxpWbrn5DHdz7M=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3499.namprd11.prod.outlook.com (2603:10b6:5:61::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20; Wed, 24 Jun 2020 01:15:59 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 01:15:59 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation TX
 fail counter
Thread-Index: AQHWPKjlruhgUDIgcUS5iWfNvEsWfajnD6aQ
Date: Wed, 24 Jun 2020 01:15:59 +0000
Message-ID: <DM6PR11MB2890FCA0CC2C4D5BB701DB3ABC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200607085127.29281-1-sasha.neftin@intel.com>
In-Reply-To: <20200607085127.29281-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12b2fc42-0041-449c-a342-08d817dc2756
x-ms-traffictypediagnostic: DM6PR11MB3499:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3499B1917DCA90D77CA7CBB5BC950@DM6PR11MB3499.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:88;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qvlEYOYskrD1JkZ6a+PcHPYDvrGkoJaOpp1wfJI7VQGqF3mjDaTww9NFbG37TUtOR1zPqp/Dm/pTKlqsh5xeo+1Q35hDz/uqhf57G79MM3DOjitIOspS51tVHQYG7dlNjrSk9p+hBiauRj0mo6Yyv4dlhkHrw2IKazvEv/6XXLLlOisOi126ld5DAvDBdugDSEaJdMFNZZNq2GLgzLAJcC5r2wEOiDZMPzrN4O6tVIrxQQ9/zV2aUBwIVTtreEFF/2Of/wLrgLm3lSWgY+RkH+T0aUNbkn96o4hpdpEZ0Jc4dvXfXbgv5w0wf/eJee19DB8LckVOV6R+ykIVHA49J03ohMPB7gWoV1pYZlDQUdiaMLQf3+WOSE7RSnzShWW31Kp+QiTPG5p11q1oRf+YWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(5660300002)(110136005)(53546011)(966005)(6506007)(33656002)(71200400001)(7696005)(9686003)(2906002)(55016002)(478600001)(8936002)(66946007)(52536014)(86362001)(76116006)(8676002)(186003)(26005)(316002)(66476007)(64756008)(66556008)(83380400001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rNfIw/DwwLVnF51INGpN3ffI2Jen7N/ZlTOh9v7P0jXK2JQ8EVF0Dnp0SeNjLft9cphZp/BbrkpN6v1ARjAv6dp31Ynxvoh8G0/M+cqMHHzG51v6fe6R0t8IL4OC+x2Pj0UKk5un9czRge8j613L2zBwtjsa0rlIwZqF9iSUkWRjZIwtvhdTF07SWXdSito8LYquHSxlPz0KXZvnftl7FOjYOfqYPy1zBTsmGnzAOsARuaRk0iPzXds50yFjXuLCeDQFJJ8W2ApvZuZkaAfNocYgWJCoMwCWkriA8713ZnPLmqFTjTSmKMrsMCcsSZ19LAhRWmW9VN6T8V3CElScNiy4l82s2zxIpInJyZAMC+eMlay75n2606K9Eu1Zlyw3ME+n7LT9TH7JSHHlmgSEQa9xfAiNrl3EtD6Vq39djkg+DEDvJ60czmexJry5EJ6s0bS46hjhadzY4rmULbjo2AL3pWP21+UJgJ4KgEXGZ8w=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12b2fc42-0041-449c-a342-08d817dc2756
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 01:15:59.2328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IjxsSP5mF7GmcXv11JpO+SpUMxMsGZF6ITNc2+zipIyhIBt4gTFBrn0AhFpxqhP+r+Fc80yZBKxls05j+xHhjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation
 TX fail counter
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
> Sasha Neftin
> Sent: Sunday, June 7, 2020 1:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation TX
> fail counter
> 
> TCP segmentation TX context fail counter is not
> applicable for i225 devices.
> This patch comes to clean up this counter.


With this patch include I am seeing what appears to be the removed counter when I look at ethtool stats.
----
u1322:[0]/usr/src/kernels/next-queue> ethtool -S eth1|grep seg
     tx_tcp_seg_good: 857
     tx_tcp_seg_failed: 0
u1322:[0]/usr/src/kernels/next-queue>
----

Does something need to be done to strip the counter display?  Or am I just looking at a similar counter.

> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>  drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
>  3 files changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c
> b/drivers/net/ethernet/intel/igc/igc_mac.c
> index f3f7717b6233..9a5e44ef45f4 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -289,7 +289,6 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
>  	rd32(IGC_TNCRS);
>  	rd32(IGC_HTDPMC);
>  	rd32(IGC_TSCTC);
> -	rd32(IGC_TSCTFC);
> 
>  	rd32(IGC_MGTPRC);
>  	rd32(IGC_MGTPDC);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index b92e7e20ce78..5d70751e8ab3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -3740,7 +3740,6 @@ void igc_update_stats(struct igc_adapter
> *adapter)
>  	adapter->stats.algnerrc += rd32(IGC_ALGNERRC);
> 
>  	adapter->stats.tsctc += rd32(IGC_TSCTC);
> -	adapter->stats.tsctfc += rd32(IGC_TSCTFC);
> 
>  	adapter->stats.iac += rd32(IGC_IAC);
>  	adapter->stats.icrxoc += rd32(IGC_ICRXOC);
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
> b/drivers/net/ethernet/intel/igc/igc_regs.h
> index eb3e8e70501d..1c46cec5a799 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -181,7 +181,6 @@
>  #define IGC_MPTC	0x040F0  /* Multicast Packets Tx Count - R/clr */
>  #define IGC_BPTC	0x040F4  /* Broadcast Packets Tx Count - R/clr */
>  #define IGC_TSCTC	0x040F8  /* TCP Segmentation Context Tx - R/clr */
> -#define IGC_TSCTFC	0x040FC  /* TCP Segmentation Context Tx Fail - R/clr
> */
>  #define IGC_IAC		0x04100  /* Interrupt Assertion Count */
>  #define IGC_ICTXPTC	0x0410C  /* Interrupt Cause Tx Pkt Timer Expire
> Count */
>  #define IGC_ICTXATC	0x04110  /* Interrupt Cause Tx Abs Timer Expire
> Count */
> --
> 2.11.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
