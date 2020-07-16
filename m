Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF984222A62
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 621388737C;
	Thu, 16 Jul 2020 17:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DMi4ujUtLMRB; Thu, 16 Jul 2020 17:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7943187378;
	Thu, 16 Jul 2020 17:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAC121BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6DBA87357
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3a-uZI4Yn9Fa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C04187317
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:15 +0000 (UTC)
IronPort-SDR: O5Z2j/wGcE2gJaACO5Bq6QXH31jeFTo9vJ1w6ahFgij+q1DA8nVhI11WoaFu89Fb58O383o6sK
 p9Uh0w9brj4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="148615303"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="148615303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:49:14 -0700
IronPort-SDR: wk9OsuqWeMUGPy4R8yMKLsOn+e24O/1fFwTWFXnBFLcKvVVFJUAJnJLqK7/uUixAlzM2sQtk4+
 GqpdxZT9NKbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="308717250"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jul 2020 10:49:14 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:14 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 10:49:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Am/RGU8Wo8Rl1yZTz5SCOsXQr0MxCeiWKlKV5u0qVHViog2aWNzPHy0ek0XJVmHA/vWBNXnfoli4GsJuuPVtFRY0kD/8Ji8Bkw2e6A79Pw4VACpngj5uFY0SaDzwFA83EKSAXxiN0d8qPYvUbDVsSd74uEgYWtd5raGuaTyjgUZ1EHe362G7/bj5VnKUNoKhhqLHwkMZJhCDHzp5EwAAd6sYvBwhYfz2JxEUgMxqPAICK28HMis7xz0u9zH3t4WxKawwf9Zr0e9OJdvbKC02e4O8Cp+5JuSpEP2FZm5GRRvjcABf8zHUo+mCZ3e49rtiONpZ0uWhTx7PYpm+EWXdyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Dt+fyfGHjUBn3LvEOUNfQs8r+E2zYx5g74WfzhD2mw=;
 b=IUxcFi8c/zT0thZyKv4cKR1XC1cG1YnPhjUsLpxTCnc7cLXsbiFgtSm5zup3ZK7lSaRGZ8JWegehY8/lF8zmRcAn3Bz9sJ5LthAI2p92J37i2qAZpk5f1TL+hLNPJ2I+3A8iJDkLyqs8zgqtCBUkPc5/xMp/od3Kx4pioU2AlZA2WhQ57tjoJThv/+1o7152HOX54ST1MYQOUwkqzUhr/T3Zfun482bCVvbI2hhMeg4D334NjkNpZ4q+YVbnVpQy54Q43Ba6kX8Y2lx9WE2aHFp7mkbINi57hw7Cu13bohXk+ioVSuvxS93c9OVr/bM+zOsEcShFh64gu/zCsv5IkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Dt+fyfGHjUBn3LvEOUNfQs8r+E2zYx5g74WfzhD2mw=;
 b=MhE6zPmMCpQ4zU+SiqNQVTXBizU36HxHC2yDuE6+IZa2YGL1qocInV9dlbtTEB3X5RxEZrAETZdWNdn5piKwRou15L01APyCKAC6sHvyF+3YTQ8/2E0aVJ0fwmjClAQdt48VFGjN/vWpVdHaXxS5nQJARPt9fwIS2rX5QR0gz3E=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1332.namprd11.prod.outlook.com
 (2603:10b6:404:48::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Thu, 16 Jul
 2020 17:49:12 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:49:12 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 10/15] ice: need_wakeup flag might
 not be set for Tx
Thread-Index: AQHWWVg+URyjpvXqK0+ns+uuQnBVJakKgA1Q
Date: Thu, 16 Jul 2020 17:49:12 +0000
Message-ID: <BN6PR1101MB2145E3E2CA3C7A69CF49C37C8C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f2779f8-d4ae-48b1-d526-08d829b08cae
x-ms-traffictypediagnostic: BN6PR11MB1332:
x-microsoft-antispam-prvs: <BN6PR11MB1332BCFCAFF54013D621B4628C7F0@BN6PR11MB1332.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DdqK9FH/KJ+aMgg2njEf/7aXh3SLI4Foa37bNjOw+XfY+V19AHH1YLI3xCemjfIFAkHo7zWPA3ShvyzhwklakLArtOEItmd/SiiSs5IGj3i/w/lSzvk5Nvsrj1jO/24Q/fSoVHOn+cT5rL+x83f0U+2rEBSom1xn3MeTGJ199CM9qrD5ETepDChANUf3/3tsjmq/qXVytJPxniCEPi9qtfYE7akTZwXChcW1QONrP6vAz1iD7XpKVED1GNSzBPC6Uzwhyj5XHLsJYrdywF5KRzfGdEE4hY58rlGWG4fv9plEOdM+8Ervx9e7aQ+/3GPnpkeZmhbBkfQKD9jWgylSXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(8676002)(8936002)(66476007)(33656002)(9686003)(5660300002)(26005)(52536014)(66446008)(66556008)(316002)(53546011)(55016002)(6506007)(83380400001)(64756008)(186003)(71200400001)(86362001)(6916009)(2906002)(478600001)(66946007)(76116006)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rfTQANNe3422YU4fwK5wJa2ch7Femt2bTJvR4P4PiXxE+huZLd616zrzpzwBOE5rb3n4Lp/lFO1BRb4qG/WmnWi800hEqygU4Ymvu6xWOGbpPK7mMMG2V3yHgRk8/9mIzyzySHcoDfbw8Nf+7p5ttW2lyIL6rHvpRhh9CqnTNXcdwdY+1MoweGC4vafhH8ZRUZiy4sTaM3q1Y2zFfP2vEXhLO+FS5Z5UCuGaBV0oWJKLkc6NaMHWvKZnf1ZrEdPjqnSQMgoFd7+HDUAOs+kq9FXPPhaNJz8cadc+JuiCDeW941Os9aLC3Q9sVVKRGOwuj2izwPSBqKPbxHVRXC5OfG0R544XOOFttVW34LMvMnUCLk3HkYwMAXNC/sGy9+8QRUEuk3tzcAUSJ+OMc+jEinmHuc54rCZCyY7wOAZU1SoAeViCtaxbVcP2m2dcOcG7klpqc2OKELWQMsQoVtoD6bX4fwsFluXjkqr/QEMHXuY/65kLn+DnGVRHS8o01KYT
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2779f8-d4ae-48b1-d526-08d829b08cae
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:49:12.3726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VgGrhZ0y0l2sy24vXdsjETvo9lvVWGILr338uwIh6aZMcQOFX7NoG9tuK4VewB4vpjCbysutKEoWE4YHwj5NCx0Ytsfx8IvP70FykjJZ3CY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 10/15] ice: need_wakeup flag might
 not be set for Tx
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 10/15] ice: need_wakeup flag might
> not be set for Tx
> 
> From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> 
> This is a port of i40e commit 705639572e8c ("i40e: need_wakeup flag might
> not be set for Tx").
> 
> Quoting the original commit message:
> 
> "The need_wakeup flag for Tx might not be set for AF_XDP sockets that are
> only used to send packets. This happens if there is at least one outstanding
> packet that has not been completed by the hardware and we get that
> corresponding completion (which will not generate an interrupt since
> interrupts are disabled in the napi poll loop) between the time we stopped
> processing the Tx completions and interrupts are enabled again.
> In this case, the need_wakeup flag will have been cleared at the end of the
> Tx completion processing as we believe we will get an interrupt from the
> outstanding completion at a later point in time. But if this completion
> interrupt occurs before interrupts are enable, we lose it and should at that
> point really have set the need_wakeup flag since there are no more
> outstanding completions that can generate an interrupt to continue the
> processing. When this happens, user space will see a Tx queue
> need_wakeup of 0 and skip issuing a syscall, which means will never get into
> the Tx processing again and we have a deadlock."
> 
> As a result, packet processing stops. This patch introduces a fix for this issue,
> by always setting the need_wakeup flag at the end of an interrupt
> processing. This ensures that the deadlock will not happen.
> 
> Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
