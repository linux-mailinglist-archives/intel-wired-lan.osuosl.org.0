Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5EA1EEAF5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 21:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F63124F56;
	Thu,  4 Jun 2020 19:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAQfuYO3u3ez; Thu,  4 Jun 2020 19:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFABC24F0C;
	Thu,  4 Jun 2020 19:12:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEB371BF386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DA3E1886A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-vuglYDplHh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 19:12:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BD21883B2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:12:44 +0000 (UTC)
IronPort-SDR: fjf1mbZ3yjEX70SukbgMzSRYKii0/Y+S0/HH/usPjgSdXfGz+kXIg7g9QpA8LrGbjehSmBrMS/
 QDAkQL1Ts0lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:12:43 -0700
IronPort-SDR: 7kLNSiDEgBBzNBkVHbzUx8H6rlGJgheFWUGbwvVCtN+dmNnRrnIpYwo/aU4r90dlVMIKZDB99y
 WrFXonfjgIyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="378507227"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2020 12:12:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:12:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 4 Jun 2020 12:12:42 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 4 Jun 2020 12:12:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 4 Jun 2020 12:12:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1jg8KtHdkwoLnZ68z5dheIx18q1r842VuDqrE/1SA4wDPJJSHtsL2sM4H9IEUrrKjszBu/45GaHr0z0/glHWcgngq9atlrz9QtVE0lATyryI/mTEUyeUOkv57DL4DAk5r+rPWUh9d1lCPOe3fquTh8ewda5oA+VZ7sS1S0cC+3LrMcQNpCk1SqPjQkGp6hjK0Upe5o7Xse90xBjdSa4gKOyGy8FeYeHOSE8j2k1UKtT5G/zr8Dzy8/ftpyWd7SFk6WhBotN046JnEY7MAmu8amVnfZh4DblsQKzVKNnTpXQZShugMKcMwMZf8bTj9d3CMwhWWoke83gN9mlBtafGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iyfqeR/hACETj34vrWi98LPny5QNG9tkbQbMINTNmCI=;
 b=fGqX+qxk6e3jyHKeK+23ik+NoZhXLX0Nzlhysj23GUtO8EhReRbW3dGfb6MlEM0cq9tX2R9hSih5HT1AHM3vS0DeSn18n4r6NyqDXnYVaHAvLbgMpplouNg5gZpQnNRcyLp2mNCzCkTw0saSz4ifNzRJhm79Q6FoyWJikdObEa8RpEii6N1g7d5dGzt8jCLsFKwzFP1btmDnRUFAlsY/phW83GmALnvzB4QGixVcS2B4Pt4dsTArGiYGkmn9Ab1QkleOayQU79VY0uxauJX457SXcIS9j/c4xWznCvgo6fxWa5fNlx9oaFpe4ENhEjiChcmFf2MIO1r1HA+o1WK5Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iyfqeR/hACETj34vrWi98LPny5QNG9tkbQbMINTNmCI=;
 b=mTG1jxqysuT5He1bpMDDBCilRYrLT4VQ3/pIEC/qH00bZQ7wd45D8AR4pNqz/5qLTFGQ3/b/9Ct0/FQ4BHibyEmlvVH3Mren/JHZX/BW9ZfnbMm6IBjPudtPkOd3Zb2+AJ1W/2lC0UcVZIq2btwOj43ZKaxdm/LV1LHJnxP2V3s=
Received: from MWHPR11MB1663.namprd11.prod.outlook.com (2603:10b6:301:d::15)
 by MWHPR11MB0078.namprd11.prod.outlook.com (2603:10b6:301:67::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Thu, 4 Jun
 2020 19:12:18 +0000
Received: from MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30]) by MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30%12]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 19:12:18 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2] i40e: detect and log info
 about pre-recovery mode
Thread-Index: AQHWNGuKsEET11juOE60jWoyx+Cg+6jI3zOw
Date: Thu, 4 Jun 2020 19:12:18 +0000
Message-ID: <MWHPR11MB166348EE43A83D499760C3AA8C890@MWHPR11MB1663.namprd11.prod.outlook.com>
References: <20200527211204.234642-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200527211204.234642-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfbf15c5-bc4c-41f2-24b3-08d808bb3341
x-ms-traffictypediagnostic: MWHPR11MB0078:
x-microsoft-antispam-prvs: <MWHPR11MB0078189E8FB9EE877E9DC9AB8C890@MWHPR11MB0078.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eFLlFb3l/cYJedCbhpQGya7yl8qEg3XKob2KUWYlntEePeWoOZkLohdp5XHjwRDFYVkGtWlk74JeprE4N971/YL3iaa1+dN4OSi1CkYuWFv6S2Q+bzb2EgtKWrjylZGRrvA0bT+Vj0oYrOi/MsD7FkLObeLtOrxxBdeA1qdVr03azST1qswbfdXkPLotPCYOhERxl3UTrV+bJoGDS6J446E6ERr5K8lHKwE1jruwYMvuw964ZvRDufLmpwCeyvcdk/GoWSQEREucTcSARYvKMimtQHYBrv6siE49KOW/eACgLSr0SMlOL8ZuyUibJQorDKLxviq6ryux+sW6OiQS8w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1663.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(2906002)(55016002)(71200400001)(7696005)(9686003)(316002)(478600001)(6916009)(83380400001)(66446008)(26005)(52536014)(66476007)(53546011)(186003)(8676002)(6506007)(66946007)(86362001)(76116006)(64756008)(5660300002)(8936002)(33656002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: O2k+XnZpoxkB53gJnx91EbRvSJ5TUlGNGv4E8DPdf0xoiZlpTunpTw41bOHAa2bVQTa6nNwY2jKEETR7JZw3FfV46eXm+yN9JUT5GDP/UG3ni0NMMy7oD2Q6LGYFinCbNBxlMYob8v1o9wjnWtdPRLyA00BAubYWgs1cN04uCffrl+pNdEDwEoVsw3rh9EDe1hvODzJRaQMAsrdLUu+E+jx22NxXmqa89QD5nVQ0RM0WlSBK9l4jS66UL8pkLDj5sqsViowfltbGDVinjDT0hTg7lOXFFWFm5HBJ9MPoHsfUap8hksykO6uPCa1unJ5ma6n5T3OJ2GpAuiXQpePNv0RYtVhmAor4JEFw3QkEhQG0nStwcVjAYboYBsqQksuGU9dZ9vSY2+pA7wCyLYnbYEg0AYvzY1U2Kb9kd7TtoLd4BhelCtEYoFMyXwzHGeDkiEVoH0eewoMBnV9exIxJvz3bCtJOw1e55JCDgc6Njjk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cfbf15c5-bc4c-41f2-24b3-08d808bb3341
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 19:12:18.2709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2rSmq22G5ESB0vn6wmYwyVtcbgms7eyZjXT4uuXiWmmS0czrrPmN9I+5FhaqXwvsp1TWnADns3nwwBvCChPGxR65CY1Bz4lZ5ArU4SmmRGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2] i40e: detect and log info
 about pre-recovery mode
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
> Jeff Kirsher
> Sent: Wednesday, May 27, 2020 2:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [next-queue v2] i40e: detect and log info about
> pre-recovery mode
> 
> From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> 
> Detect and log information about pre-recovery mode when firmware
> transitions to a recovery mode.
> When a firmware transitions to a recovery mode it stores a number of
> unexpected EMP resets in one of its registers. The number of EMP resets
> ranging from 0x21 to 0x2A indicates that FW transitions to recovery mode.
> Use these values to emit log entry about transition process. Previously the
> pre-recovery mode may not have been detected and there was no log entry
> when NIC was in pre-recovery mode.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v2: Fixed conflicts when trying to apply to next-queue tree
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 72 +++++++++++++------
>  .../net/ethernet/intel/i40e/i40e_register.h   |  2 +
>  2 files changed, 52 insertions(+), 22 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
